void sub_1E377881C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v62 = v3;
  v5 = v4;
  v6 = sub_1E41FE5D4();
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v61 = v9 - v8;
  sub_1E32AE9B0(v5);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v10 = 0;
  v64 = v5 & 0xC000000000000001;
  v65 = v5;
  v63 = v5 + 32;
  while (1)
  {
    OUTLINED_FUNCTION_113_0();
    if (v10 == v11)
    {
      goto LABEL_50;
    }

    sub_1E34AF4E4(v10, v64 == 0, v65);
    if (v64)
    {
      v12 = MEMORY[0x1E6911E60](v10, v65);
    }

    else
    {
      v12 = *(v63 + 8 * v10);
    }

    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (v13)
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_99();
    (*(v15 + 1096))();
    if (!v16)
    {
      goto LABEL_49;
    }

    v17 = v16;
    v18 = *(v2 + 128);
    OUTLINED_FUNCTION_112();

    v72 = v17;
    v19 = sub_1E376EDF8(isUniquelyReferenced_nonNull_native, v17, v18);
    v21 = v20;
    v22 = v19;

    if (!v22)
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_1_54();
    v71 = v22;
    v25 = sub_1E3782E00(v23, v21, v24);
    if (((*(*v12 + 1176))(v25) & 1) == 0)
    {

LABEL_48:

LABEL_49:

LABEL_50:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v82 = v12;
    v26 = qword_1EE295000;

    if (v26 != -1)
    {
      OUTLINED_FUNCTION_4_23();
      swift_once();
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v66 = v14;
    if (byte_1EE2AAB30 != 1)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_99();
    v27 += 84;
    v28 = *v27;
    v29 = (*v27)();
    v28();
    *(&v78 + 1) = &type metadata for ViewModelKeys.Sports;
    v79 = &off_1F5D7BC68;
    LOBYTE(v77) = 9;
    sub_1E3F9F164(&v77);

    if (!v81)
    {
      __swift_destroy_boxed_opaque_existential_1(&v77);
      sub_1E325F7A8(&v80, &unk_1ECF296E0);
LABEL_30:
      v34 = 0;
      goto LABEL_32;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v77);
      goto LABEL_30;
    }

    v30 = v75;
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v31 = *(v75 + 16);
    if (v31)
    {
      break;
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_32:
    ViewModelKeys.Sports.rawValue.getter(9);
    v48 = v47;
    v50 = v49;
    if (v34)
    {
      *(&v78 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0);
      *&v77 = v34;
      sub_1E329504C(&v77, &v80);
      swift_isUniquelyReferenced_nonNull_native();
      v75 = v29;
      sub_1E32A87C0(&v80, v48, v50);
    }

    else
    {
      v51 = OUTLINED_FUNCTION_13_8();
      v53 = sub_1E327D33C(v51, v52);
      if (v54)
      {
        v55 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v80 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        sub_1E4207644();
        v56 = v80;

        sub_1E329504C((*(v56 + 56) + 32 * v55), &v77);
        sub_1E4207664();
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
      }

      sub_1E325F7A8(&v77, &unk_1ECF296E0);
    }

    type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
    OUTLINED_FUNCTION_99();
    (*(v57 + 624))();
    sub_1E3F90D40();
    if (v58)
    {
      v59 = v58;

      v82 = v59;
      goto LABEL_41;
    }

LABEL_40:
    v59 = v12;
LABEL_41:

    sub_1E3774448(v71, &v82, v2);

    if (v62)
    {

      sub_1E41FE594();
      type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
      OUTLINED_FUNCTION_119();
      sub_1E376EEB0(v59, 2, v61);

      isUniquelyReferenced_nonNull_native = v72;
      sub_1E377073C(v60);
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_157();
    }

    else
    {
    }

    v10 = v66;
  }

  *&v80 = MEMORY[0x1E69E7CC0];
  v73 = v31;
  sub_1E377FD10(0, v31, 0);
  v32 = v73;
  v33 = 0;
  v34 = v80;
  v74 = v75 + 32;
  v70 = v2;
  v69 = v12;
  v68 = v29;
  v67 = v75;
  while (v33 < *(v30 + 16))
  {
    v35 = *(v74 + 8 * v33);
    v36 = *(v35 + 16);
    if (v36)
    {
      v76 = MEMORY[0x1E69E7CC0];

      sub_1E377FD30(0, v36, 0);
      v37 = v76;
      v38 = (v35 + 40);
      do
      {
        v39 = *(v38 - 1);
        v40 = *v38;
        *&v77 = 96;
        *(&v77 + 1) = 0xE100000000000000;

        MEMORY[0x1E69109E0](v39, v40);

        v41 = v77;
        v75 = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        if (v43 >= v42 >> 1)
        {
          v44 = OUTLINED_FUNCTION_35(v42);
          sub_1E377FD30(v44, v43 + 1, 1);
        }

        *(v37 + 16) = v43 + 1;
        *(v37 + 16 * v43 + 32) = v41;
        v38 += 2;
        --v36;
      }

      while (v36);

      v2 = v70;
      v12 = v69;
      v29 = v68;
      v30 = v67;
      v32 = v73;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    *&v80 = v34;
    isUniquelyReferenced_nonNull_native = *(v34 + 16);
    v45 = *(v34 + 24);
    if (isUniquelyReferenced_nonNull_native >= v45 >> 1)
    {
      v46 = OUTLINED_FUNCTION_35(v45);
      sub_1E377FD10(v46, isUniquelyReferenced_nonNull_native + 1, 1);
      v32 = v73;
      v34 = v80;
    }

    ++v33;
    *(v34 + 16) = isUniquelyReferenced_nonNull_native + 1;
    *(v34 + 8 * isUniquelyReferenced_nonNull_native + 32) = v37;
    if (v33 == v32)
    {

      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_1E3779020()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v4 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E37790A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_7();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_58_5();
  a18 = v20;

  v23 = sub_1E41FFC94();
  v24 = sub_1E42067D4();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = *(v20 + 24);
    v25 = *(v20 + 32);
    v27 = OUTLINED_FUNCTION_100();
    a9 = OUTLINED_FUNCTION_164_1();
    *v27 = 136315650;
    *(v27 + 4) = sub_1E3270FC8(*(v26 + 72), *(v26 + 80), &a9);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1E3270FC8(*(v26 + 32), *(v26 + 40), &a9);
    *(v27 + 22) = 2080;
    v28 = (*(*v25 + 1136))();
    if (v28)
    {
      v29 = v28;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
      MEMORY[0x1E6910C30](v29, v30);
      OUTLINED_FUNCTION_137_0();
    }

    v31 = OUTLINED_FUNCTION_135();
    v34 = sub_1E3270FC8(v31, v32, v33);

    *(v27 + 24) = v34;
    _os_log_impl(&dword_1E323F000, v23, v24, "updating scoreboard %s for event: %s with canonical update: %s", v27, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_65_0();
  }

  if ((sub_1E376D5D8(*(v20 + 32)) & 1) == 0)
  {

    v35 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_92_2();

    if (os_log_type_enabled(v35, v23))
    {
      v36 = *(v20 + 24);
      v37 = OUTLINED_FUNCTION_6_21();
      v38 = OUTLINED_FUNCTION_100();
      a9 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1E3270FC8(*(v36 + 72), *(v36 + 80), &a9);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

void sub_1E3779330()
{
  OUTLINED_FUNCTION_31_1();
  v75 = v1;
  v3 = v2;
  v4 = sub_1E41FE5D4();
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v71 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v82 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  v15 = sub_1E32AE9B0(v3);
  v85 = v0;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v16 = 0;
  v17 = v3 & 0xC000000000000001;
  v81 = v3 & 0xFFFFFFFFFFFFFF8;
  v70 = v3;
  v18 = v3 + 32;
  v74 = v15;
  v73 = v17;
  v72 = v18;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        if (v16 == v15)
        {
          OUTLINED_FUNCTION_25_2();
          return;
        }

        if (v17)
        {
          v19 = MEMORY[0x1E6911E60](v16, v70);
        }

        else
        {
          if (v16 >= *(v81 + 16))
          {
            goto LABEL_43;
          }

          v19 = *(v18 + 8 * v16);
        }

        v20 = v19;
        if (__OFADD__(v16++, 1))
        {
          goto LABEL_42;
        }

        v22 = sub_1E3780EC0(v19);
        if (v23)
        {
          break;
        }
      }

      v87 = v20;
      v24 = *(v85 + 128);
      if (*(v24 + 16))
      {
        break;
      }
    }

    v25 = v22;
    v26 = v23;

    v80 = v25;
    v27 = sub_1E327D33C(v25, v26);
    if (v28)
    {
      break;
    }
  }

  v78 = v26;
  v79 = v16;
  v29 = *(*(v24 + 56) + 16 * v27);

  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_1_54();
  v30 = OUTLINED_FUNCTION_142();
  sub_1E3782E00(v30, v31, v32);
  v77 = v29;
  if ((v29 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    type metadata accessor for AnyScoreboardUpdateable();
    OUTLINED_FUNCTION_3_22();
    sub_1E3780CD4(&qword_1EE25E368, v33, v34);
    OUTLINED_FUNCTION_32_0();
    sub_1E4206664();
    v29 = v94;
    v16 = v95;
    v35 = v96;
    v17 = v97;
    v36 = v98;
  }

  else
  {
    v16 = v29 + 56;
    v35 = ~(-1 << *(v29 + 32));
    OUTLINED_FUNCTION_61_3();
    v36 = v37 & v38;

    v17 = 0;
  }

  v76 = v35;
  v39 = (v35 + 64) >> 6;
  v83 = v29;
  v84 = v16;
  if (v29 < 0)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v40 = v17;
    v41 = v17;
    if (!v36)
    {
      break;
    }

LABEL_21:
    OUTLINED_FUNCTION_40_7();
    v44 = v43 & v42;
    v46 = *(*(v29 + 48) + ((v41 << 9) | (8 * v45)));

    if (!v46)
    {
LABEL_35:
      sub_1E34AF4DC();

      if (v75)
      {
        v65 = v87;
        v66 = v87;
        v67 = v71;
        sub_1E41FE594();
        type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
        v17 = OUTLINED_FUNCTION_119();
        sub_1E376EEB0(v65, 1, v67);

        sub_1E377073C(v68);
      }

      else
      {
        OUTLINED_FUNCTION_140_1();
      }

      v15 = v74;
      OUTLINED_FUNCTION_105_1();
      v18 = v72;
      goto LABEL_2;
    }

    while (1)
    {
      v86 = v44;
      v48 = sub_1E4206474();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
      sub_1E4206434();
      v52 = v85;

      v53 = v87;
      v54 = sub_1E4206424();
      OUTLINED_FUNCTION_89();
      v55 = swift_allocObject();
      v55[2] = v54;
      v55[3] = MEMORY[0x1E69E85E0];
      v55[4] = v52;
      v55[5] = v46;
      v55[6] = v53;
      v56 = v14;
      v57 = v82;
      sub_1E378249C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v48);

      if (EnumTagSinglePayload == 1)
      {
        sub_1E325F7A8(v57, &unk_1ECF2C400);
      }

      else
      {
        sub_1E4206464();
        (*(*(v48 - 8) + 8))(v57, v48);
      }

      v59 = v55[2];
      swift_unknownObjectRetain();

      v14 = v56;
      if (v59)
      {
        swift_getObjectType();
        v60 = sub_1E42063B4();
        v62 = v61;
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      v16 = v84;
      v63 = v86;
      v64 = swift_allocObject();
      *(v64 + 16) = &unk_1E429B0F8;
      *(v64 + 24) = v55;
      if (v62 | v60)
      {
        v90 = 0;
        v91 = 0;
        v92 = v60;
        v93 = v62;
      }

      v29 = v83;
      swift_task_create();

      sub_1E325F7A8(v14, &unk_1ECF2C400);

      v17 = v41;
      v36 = v63;
      if ((v29 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_23:
      v47 = sub_1E42073C4();
      if (v47)
      {
        v88 = v47;
        type metadata accessor for AnyScoreboardUpdateable();
        OUTLINED_FUNCTION_165_0();
        v46 = v89;
        v41 = v17;
        v44 = v36;
        if (v89)
        {
          continue;
        }
      }

      goto LABEL_35;
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {
      goto LABEL_35;
    }

    ++v40;
    if (*(v16 + 8 * v41))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_1E37799DC()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v4 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3779A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_7();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_58_5();
  a18 = v21;
  v24 = *(v21 + 32);

  v25 = v24;
  v26 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_92_2();

  if (os_log_type_enabled(v26, v20))
  {
    v28 = *(v21 + 24);
    v27 = *(v21 + 32);
    v29 = OUTLINED_FUNCTION_100();
    a9 = OUTLINED_FUNCTION_164_1();
    *v29 = 136315650;
    *(v29 + 4) = sub_1E3270FC8(*(v28 + 72), *(v28 + 80), &a9);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1E3270FC8(*(v28 + 32), *(v28 + 40), &a9);
    *(v29 + 22) = 2080;
    v30 = sub_1E3780DC4(v27);
    if (v30)
    {
      v31 = v30;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
      v33 = MEMORY[0x1E6910C30](v31, v32);
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_1E3270FC8(v33, v35, &a9);

    *(v29 + 24) = v36;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v37, v38, v39, v40, v41, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

  if ((sub_1E376D654(*(v21 + 32)) & 1) == 0)
  {

    v42 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_92_2();

    if (os_log_type_enabled(v42, v20))
    {
      v43 = *(v21 + 24);
      v44 = OUTLINED_FUNCTION_6_21();
      v45 = OUTLINED_FUNCTION_100();
      a9 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_1E3270FC8(*(v43 + 72), *(v43 + 80), &a9);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
}

uint64_t sub_1E3779CB0(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);

  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  v8 = 0;
  v9 = (v4 + 63) >> 6;
  while (v6)
  {
    v10 = v6;
LABEL_10:
    v6 = (v10 - 1) & v10;
    v12 = *(v2 + 128);
    if (*(v12 + 16))
    {

      v13 = OUTLINED_FUNCTION_146();
      v15 = sub_1E327D33C(v13, v14);
      v17 = v16;

      if (v17)
      {
        v18 = (*(v12 + 56) + 16 * v15);
        v20 = *v18;
        v19 = v18[1];
        swift_retain_n();

        OUTLINED_FUNCTION_1_54();
        result = sub_1E3782E00(v20, v19, v21);
        if (v19)
        {
          v22 = *v19;
          if (*(v19 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type))
          {
            if (*(v19 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type) == 1)
            {
              v23 = v22[21](result);
              if (!v23)
              {
                goto LABEL_22;
              }

              v24 = v23;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1E4298880;
              *(inited + 32) = v24;
              v26 = v24;
              sub_1E3779330();

              swift_setDeallocating();
              result = sub_1E377D458();
            }

            else
            {
              v29 = v22[24](result);
              if (!v29)
              {
                goto LABEL_22;
              }

              v30 = v29;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
              v31 = swift_initStackObject();
              *(v31 + 16) = xmmword_1E4298880;
              *(v31 + 32) = v30;

              sub_1E377881C();

              swift_setDeallocating();
              result = sub_1E377D458();
            }
          }

          else
          {
            v27 = v22[18](result);
            if (v27)
            {
              v28 = v27;
              sub_1E3774B68();
            }

LABEL_22:
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
    }

    v10 = *(v3 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3779FAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  sub_1E4206474();
  v5 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_5_10();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;

  v10 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v10, v11, v4, v12, v9);
}

uint64_t sub_1E377A08C()
{
  OUTLINED_FUNCTION_24();
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 72) = [v1 isFullscreenPlaybackUIBeingShown];

  *(v0 + 24) = objc_opt_self();
  *(v0 + 32) = sub_1E4206434();
  *(v0 + 40) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v2 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E377A158()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 24);

  *(v0 + 48) = [v1 sharedApplication];
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E377A1D8()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v1 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E377A250()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 48);

  *(v0 + 64) = [v1 applicationState];

  v2 = OUTLINED_FUNCTION_116();

  return MEMORY[0x1EEE6DFA0](v2, v3, 0);
}

uint64_t sub_1E377A2CC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = sub_1E377A4DC();
  v4 = *(v0 + 16);
  if (!v3 || (v2 & 1) != 0 || v1)
  {
    v5 = sub_1E377A3B4;
  }

  else
  {
    v5 = sub_1E377A35C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E377A35C()
{
  OUTLINED_FUNCTION_24();
  sub_1E377A688();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E377A3B4()
{
  OUTLINED_FUNCTION_24();
  sub_1E377A510();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E377A4DC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(*(v0 + 128) + 16);
}

uint64_t sub_1E377A510()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_139();
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_104(v6))
  {
    v7 = OUTLINED_FUNCTION_125_0();
    *v7 = 0;
    _os_log_impl(&dword_1E323F000, v5, v6, "pausing scoreboard updates", v7, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  sub_1E41FE624();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_identifier;
  OUTLINED_FUNCTION_11_3();
  sub_1E37813BC(v1, v2 + v12);
  swift_endAccess();
  if (*(v2 + 152))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E42064D4();
  }

  OUTLINED_FUNCTION_168_1(OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__demandCanceller);
  return OUTLINED_FUNCTION_168_1(OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__timer);
}

void sub_1E377A688()
{
  v0 = sub_1E41FFC94();
  v1 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_104(v1))
  {
    v2 = OUTLINED_FUNCTION_125_0();
    *v2 = 0;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v3, v4, v5, v6, v2, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  sub_1E377114C();

  sub_1E3771470();
}

uint64_t sub_1E377A724()
{

  sub_1E325F7A8(v0 + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_identifier, &qword_1ECF29408);

  v1 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_logger;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E377A80C()
{
  sub_1E377A724();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E377A854()
{
  if (_MergedGlobals_146 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }
}

uint64_t sub_1E377A8A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SportsKitScoreboardManager(0);

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

void sub_1E377A8DC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v159 - v13;
  v184 = sub_1E4205834();
  OUTLINED_FUNCTION_0_10();
  v183 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v182 = v18 - v17;
  OUTLINED_FUNCTION_138();
  v195 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v188 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  *&v191 = &v159 - v25;
  if (!v2)
  {
    goto LABEL_29;
  }

  v176 = v11;
  v26 = v2;
  v177 = v0;
  v27 = sub_1E4205014();
  v29 = v28;
  v30 = sub_1E3780EC0(v26);
  if (!v31)
  {

    goto LABEL_29;
  }

  v179 = v26;
  if (v27 == v30 && v31 == v29)
  {

    if (!v4)
    {
LABEL_28:
      OUTLINED_FUNCTION_113_0();

      goto LABEL_29;
    }
  }

  else
  {
    v33 = sub_1E42079A4();

    if ((v33 & 1) == 0 || !v4)
    {
      goto LABEL_28;
    }
  }

  v34 = sub_1E39C2CD0();
  if (!v35)
  {
    goto LABEL_28;
  }

  v36 = v34;
  v37 = v35;
  v38 = v179;
  v39 = sub_1E3780F24(v179);
  if (!v39)
  {

    v200 = 0u;
    v201 = 0u;
LABEL_26:
    sub_1E325F7A8(&v200, &unk_1ECF296E0);
    goto LABEL_29;
  }

  v40 = v39;
  ViewModelKeys.Sports.rawValue.getter(6);
  v196 = v41;
  v197 = v42;
  sub_1E4207414();
  v43 = OUTLINED_FUNCTION_97_2();
  sub_1E375D7E8(v43, v40, v44);

  sub_1E375D84C(&v198);
  if (!*(&v201 + 1))
  {

    OUTLINED_FUNCTION_113_0();

    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F350);
  if ((OUTLINED_FUNCTION_163() & 1) == 0)
  {

    goto LABEL_28;
  }

  v164 = v36;
  v165 = v37;
  v162 = v14;
  v160 = v7;
  v161 = v5;
  v45 = 0;
  v46 = v198;
  v47 = MEMORY[0x1E69E7CC0];
  v180 = *(v198 + 16);
  v187 = v198;
  while (v180 != v45)
  {
    if (v45 >= *(v46 + 16))
    {
      goto LABEL_163;
    }

    v48 = *(v46 + 8 * v45 + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_98_1();
      OUTLINED_FUNCTION_20_18();
      sub_1E377D4A0();
      v47 = v50;
    }

    v46 = *(v47 + 16);
    v49 = *(v47 + 24);
    v38 = v46 + 1;
    if (v46 >= v49 >> 1)
    {
      OUTLINED_FUNCTION_35(v49);
      OUTLINED_FUNCTION_20_18();
      sub_1E377D4A0();
      v47 = v51;
    }

    *(v47 + 16) = v38;
    *(v47 + 8 * v46 + 32) = v48;
    ++v45;
    OUTLINED_FUNCTION_94_3();
  }

  v171 = 0;
  v54 = 0;
  v170 = 0;
  v185 = 0;
  v55 = 0;
  v56 = *(v47 + 16);
  v57 = MEMORY[0x1E69E6158];
  while (v56 != v55)
  {
    if (v55 >= *(v47 + 16))
    {
      goto LABEL_164;
    }

    v58 = *(v47 + 8 * v55 + 32);
    ViewModelKeys.rawValue.getter(7);
    OUTLINED_FUNCTION_29_5(v59, v60);
    sub_1E4207414();
    v61 = OUTLINED_FUNCTION_97_2();
    sub_1E375D7E8(v61, v58, v62);
    sub_1E375D84C(&v198);
    if (!*(&v201 + 1))
    {
      sub_1E325F7A8(&v200, &unk_1ECF296E0);
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_153_0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_52;
    }

    v38 = v54;
    v46 = v196;
    v63 = v197;
    ViewModelKeys.Sports.rawValue.getter(23);
    OUTLINED_FUNCTION_29_5(v64, v65);
    sub_1E4207414();
    v66 = OUTLINED_FUNCTION_97_2();
    sub_1E375D7E8(v66, v58, v67);
    sub_1E375D84C(&v198);
    if (!*(&v201 + 1))
    {

      sub_1E325F7A8(&v200, &unk_1ECF296E0);
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_153_0();
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_51:
      OUTLINED_FUNCTION_94_3();
      v54 = v38;
LABEL_52:

      v38 = v54;
      goto LABEL_53;
    }

    v68 = v171;
    if (v196)
    {
      v68 = v46;
    }

    v171 = v68;
    if (v196)
    {
      v69 = v63;
    }

    else
    {
      v69 = v38;
    }

    v70 = v170;
    if (!v196)
    {
      v70 = v46;
    }

    v170 = v70;
    if (v196)
    {
      v71 = v185;
    }

    else
    {
      v71 = v63;
    }

    v185 = v71;
    v54 = v69;
    OUTLINED_FUNCTION_94_3();
LABEL_53:

    ++v55;
  }

  v72 = sub_1E4205024();
  v175 = sub_1E32AE9B0(v72);
  v73 = 0;
  v168 = 0;
  v166 = 0;
  v174 = v72 & 0xC000000000000001;
  v173 = v72 & 0xFFFFFFFFFFFFFF8;
  v163 = v72;
  v172 = v72 + 32;
  LODWORD(v194) = *MEMORY[0x1E69D3D48];
  v192 = v20 + 8;
  v193 = v20 + 104;
  v169 = 1;
  v167 = 1;
  v178 = v54;
  while (1)
  {
    while (1)
    {
      if (v73 == v175)
      {

        if (_MergedGlobals_146 != -1)
        {
          goto LABEL_169;
        }

        goto LABEL_114;
      }

      if (v174)
      {
        v74 = MEMORY[0x1E6911E60](v73, v163);
      }

      else
      {
        if (v73 >= *(v173 + 16))
        {
          goto LABEL_166;
        }

        v74 = *(v172 + 8 * v73);
      }

      if (__OFADD__(v73++, 1))
      {
        goto LABEL_165;
      }

      v181 = v73;
      v186 = v74;
      if (v54)
      {
        v76 = sub_1E4205964();
        sub_1E42054D4();
        OUTLINED_FUNCTION_152();

        v54 = v178;
        if (v38 == v171 && v178 == v76)
        {

          OUTLINED_FUNCTION_140_1();
LABEL_68:
          v78 = sub_1E4205A34();
          v38 = sub_1E4205794();

          v54 = sub_1E32AE9B0(v38);
          v73 = 0;
          v189 = v38 & 0xFFFFFFFFFFFFFF8;
          v190 = v38 & 0xC000000000000001;
          while (1)
          {
            if (v54 == v73)
            {

              OUTLINED_FUNCTION_94_3();
              OUTLINED_FUNCTION_105_1();
              v74 = OUTLINED_FUNCTION_140_1();
              goto LABEL_82;
            }

            if (v190)
            {
              v90 = OUTLINED_FUNCTION_39_3();
              v79 = MEMORY[0x1E6911E60](v90);
            }

            else
            {
              if (v73 >= *(v189 + 16))
              {
                goto LABEL_152;
              }

              v79 = *(v38 + 8 * v73 + 32);
            }

            v80 = v79;
            if (__OFADD__(v73, 1))
            {
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:

              goto LABEL_29;
            }

            v81 = sub_1E4205AD4();
            v82 = sub_1E4205BA4();
            v84 = v83;

            v46 = v191;
            v85 = OUTLINED_FUNCTION_144_1();
            v86(v85);
            v78 = v46;
            sub_1E4205B84();
            v87 = OUTLINED_FUNCTION_88_5();
            v88(v87);
            if (v82 == v57 && v84 == v46)
            {
              break;
            }

            OUTLINED_FUNCTION_143_0();
            v57 = sub_1E42079A4();

            if (v57)
            {
              goto LABEL_105;
            }

            ++v73;
          }

LABEL_105:

          v168 = sub_1E4205AE4();

          OUTLINED_FUNCTION_166();
          v105 = &v199;
LABEL_110:
          *(v105 - 64) = 0;
          goto LABEL_111;
        }

        OUTLINED_FUNCTION_67_0();
        v38 = sub_1E42079A4();

        v74 = OUTLINED_FUNCTION_140_1();
        if (v38)
        {
          goto LABEL_68;
        }
      }

LABEL_82:
      v91 = v185;
      if (v185)
      {
        break;
      }
    }

    v54 = sub_1E4205964();
    sub_1E42054D4();
    OUTLINED_FUNCTION_152();

    if (v38 == v170 && v91 == v54)
    {
      break;
    }

    OUTLINED_FUNCTION_67_0();
    v38 = sub_1E42079A4();

    if (v38)
    {
      goto LABEL_91;
    }

    OUTLINED_FUNCTION_166();
LABEL_111:
    OUTLINED_FUNCTION_94_3();
    OUTLINED_FUNCTION_105_1();
  }

LABEL_91:
  v93 = sub_1E4205A34();
  v94 = sub_1E4205794();

  v54 = sub_1E32AE9B0(v94);
  v73 = 0;
  v189 = v94 & 0xFFFFFFFFFFFFFF8;
  v190 = v94 & 0xC000000000000001;
  while (1)
  {
    if (v54 == v73)
    {
      OUTLINED_FUNCTION_166();

      goto LABEL_111;
    }

    if (v190)
    {
      v95 = MEMORY[0x1E6911E60](v73, v94);
    }

    else
    {
      if (v73 >= *(v189 + 16))
      {
        goto LABEL_162;
      }

      v95 = *(v94 + 8 * v73 + 32);
    }

    v96 = v95;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    v97 = sub_1E4205AD4();
    v98 = sub_1E4205BA4();
    v38 = v99;

    v46 = v188;
    v100 = OUTLINED_FUNCTION_144_1();
    v101(v100);
    sub_1E4205B84();
    v102 = OUTLINED_FUNCTION_88_5();
    v103(v102);
    if (v98 == v57 && v38 == v46)
    {

LABEL_109:

      v166 = sub_1E4205AE4();

      OUTLINED_FUNCTION_166();
      v105 = &v197 + 4;
      goto LABEL_110;
    }

    v57 = sub_1E42079A4();

    if (v57)
    {
      v38 = v94;
      goto LABEL_109;
    }

    ++v73;
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_169:
    OUTLINED_FUNCTION_2_23();
LABEL_114:
    v106 = (*(*qword_1EE2AAB28 + 224))();
    v107 = v182;
    sub_1E4205854();

    v108 = sub_1E376D170();
    v110 = v109;
    (*(v183 + 8))(v107, v184);
    if ((v169 | v167))
    {
      goto LABEL_126;
    }

    v111 = HIBYTE(v110) & 0xF;
    if ((v110 & 0x2000000000000000) == 0)
    {
      v111 = v108 & 0xFFFFFFFFFFFFLL;
    }

    if (!v111)
    {
      goto LABEL_126;
    }

    v192 = v108;
    v112 = 0;
    v113 = MEMORY[0x1E69E7CC0];
    while (v180 != v112)
    {
      if (v112 >= *(v46 + 16))
      {
        goto LABEL_167;
      }

      v114 = *(v46 + 8 * v112 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_98_1();
        OUTLINED_FUNCTION_20_18();
        sub_1E377D4A0();
        v113 = v116;
      }

      v46 = *(v113 + 16);
      v115 = *(v113 + 24);
      if (v46 >= v115 >> 1)
      {
        OUTLINED_FUNCTION_35(v115);
        OUTLINED_FUNCTION_20_18();
        sub_1E377D4A0();
        v113 = v117;
      }

      *(v113 + 16) = v46 + 1;
      *(v113 + 8 * v46 + 32) = v114;
      ++v112;
      OUTLINED_FUNCTION_94_3();
    }

    v193 = v110;

    v119 = 0;
    v194 = 0;
    v195 = 0;
    v120 = 0;
    v121 = 0;
    v122 = *(v113 + 16);
    v46 = MEMORY[0x1E69E6370];
LABEL_128:
    if (v122 != v121)
    {
      if (v121 >= *(v113 + 16))
      {
        continue;
      }

      v123 = *(v113 + 8 * v121 + 32);
      ViewModelKeys.Sports.rawValue.getter(23);
      OUTLINED_FUNCTION_29_5(v124, v125);
      sub_1E4207414();
      v126 = OUTLINED_FUNCTION_97_2();
      sub_1E375D7E8(v126, v123, v127);
      sub_1E375D84C(&v198);
      if (*(&v201 + 1))
      {
        OUTLINED_FUNCTION_153_0();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_144;
        }

        v128 = v196;
        ViewModelKeys.Sports.rawValue.getter(13);
        OUTLINED_FUNCTION_29_5(v129, v130);
        sub_1E4207414();
        v131 = OUTLINED_FUNCTION_97_2();
        sub_1E375D7E8(v131, v123, v132);
        sub_1E375D84C(&v198);
        if (*(&v201 + 1))
        {
          OUTLINED_FUNCTION_153_0();
          if (swift_dynamicCast())
          {
            if (v128)
            {
              v133 = v196;
            }

            else
            {
              v133 = v194;
            }

            if (v128)
            {
              v120 = v197;
            }

            v134 = v195;
            if (!v128)
            {
              v134 = v196;
            }

            v194 = v133;
            v195 = v134;
            if (!v128)
            {
              v119 = v197;
            }

            goto LABEL_145;
          }

LABEL_144:

LABEL_145:

          ++v121;
          goto LABEL_128;
        }
      }

      sub_1E325F7A8(&v200, &unk_1ECF296E0);
      goto LABEL_144;
    }

    break;
  }

  if (!v120)
  {
LABEL_126:

    OUTLINED_FUNCTION_113_0();

    goto LABEL_29;
  }

  v78 = v179;
  v135 = v193;
  if (!v119)
  {
    goto LABEL_153;
  }

  v136 = [v179 isVersus];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396E0);
  v137 = swift_allocObject();
  v191 = xmmword_1E4299720;
  *(v137 + 16) = xmmword_1E4299720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  v138 = swift_allocObject();
  *(v138 + 16) = v191;
  if (v136)
  {
    *(v138 + 32) = v194;
    *(v138 + 40) = v120;
    OUTLINED_FUNCTION_141_1(&v198);
    OUTLINED_FUNCTION_75();
    v139 = sub_1E4207944();
    v141 = OUTLINED_FUNCTION_124_0(v139, v140);
    *(v141 + 16) = v191;
    *(v141 + 32) = v195;
    *(v141 + 40) = v119;
    OUTLINED_FUNCTION_141_1(&v196);
    OUTLINED_FUNCTION_75();
  }

  else
  {
    *(v138 + 32) = v195;
    *(v138 + 40) = v119;
    OUTLINED_FUNCTION_141_1(&v196);
    v142 = sub_1E4207944();
    v141 = OUTLINED_FUNCTION_124_0(v142, v143);
    *(v141 + 16) = v191;
    *(v141 + 32) = v194;
    *(v141 + 40) = v120;
    OUTLINED_FUNCTION_141_1(&v198);
  }

  *(v141 + 48) = sub_1E4207944();
  *(v141 + 56) = v144;
  v145 = v161;
  v146 = v160;
  *(v137 + 40) = v141;
  sub_1E4205044();
  v147 = v176;
  (*(v146 + 104))(v176, *MEMORY[0x1E69D3B78], v145);
  OUTLINED_FUNCTION_15_24();
  sub_1E3780CD4(v148, 255, v149);
  v150 = sub_1E4205E84();
  v151 = *(v146 + 8);
  v151(v147, v145);
  v152 = OUTLINED_FUNCTION_75();
  (v151)(v152);
  if (v150)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
    v153 = swift_allocObject();
    *(v153 + 16) = xmmword_1E4297BE0;
    *(v153 + 32) = v192;
    *(v153 + 40) = v135;
    v155 = *(v137 + 16);
    v154 = *(v137 + 24);
    if (v155 >= v154 >> 1)
    {
      OUTLINED_FUNCTION_35(v154);
      sub_1E377D4A0();
      v137 = v158;
    }

    *(v137 + 16) = v155 + 1;
    *(v137 + 8 * v155 + 32) = v153;
  }

  sub_1E4205044();
  v156 = v179;
  sub_1E377BAB8();

  v157 = OUTLINED_FUNCTION_75();
  (v151)(v157);
LABEL_29:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E377BAB8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v50 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v49 = v10 - v9;
  OUTLINED_FUNCTION_138();
  v11 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  sub_1E4205CB4();
  v21 = OUTLINED_FUNCTION_142();
  v22(v21);
  v23 = (*(v13 + 88))(v20, v11);
  if (v23 != *MEMORY[0x1E69D3B68] && v23 != *MEMORY[0x1E69D3B78])
  {
    v47 = v3;
    v48 = v5;
    *&v53 = sub_1E4205F14();
    *(&v53 + 1) = v25;
    sub_1E4207414();
    v54 = MEMORY[0x1E69E6370];
    LOBYTE(v53) = 1;
    sub_1E329504C(&v53, v52);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_122_2();
    sub_1E375D84C(v55);
    v26 = sub_1E3E37F30();
    (*(v50 + 16))(v49, v26, v6);
    v27 = v1;
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067D4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v45 = v28;
      v31 = v30;
      v46 = swift_slowAlloc();
      v55[0] = v46;
      *v31 = 136315394;
      v43 = v29;
      v32 = sub_1E4205014();
      v34 = sub_1E3270FC8(v32, v33, v55);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      sub_1E4205044();
      sub_1E4205744();
      OUTLINED_FUNCTION_145();
      v35 = *(v13 + 8);
      v44 = v6;
      v35(v17, v11);
      v36 = OUTLINED_FUNCTION_57();
      sub_1E3270FC8(v36, v37, v38);
      OUTLINED_FUNCTION_38();

      *(v31 + 14) = v17;
      v39 = v45;
      _os_log_impl(&dword_1E323F000, v45, v43, "Suppressing scorecard for event %s due to invalid progressStatus %s", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_6_0();

      (*(v50 + 8))(v49, v44);
    }

    else
    {

      (*(v50 + 8))(v49, v6);
      v35 = *(v13 + 8);
    }

    v35(v20, v11);
    v3 = v47;
    v5 = v48;
  }

  *&v53 = sub_1E4205F14();
  *(&v53 + 1) = v40;
  sub_1E4207414();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0);
  *&v53 = v3;
  sub_1E329504C(&v53, v52);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_122_2();
  v41 = v51;
  sub_1E375D84C(v55);
  sub_1E377BF84(v41);
  OUTLINED_FUNCTION_50();

  if (qword_1EE295000 != -1)
  {
    OUTLINED_FUNCTION_4_23();
    swift_once();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (byte_1EE2AAB30 == 1)
  {
    sub_1E377C2BC(46, 0xE100000000000000);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E377BF84(uint64_t a1)
{
  v4 = [v1 dictionaryRepresentation];
  v5 = sub_1E4205C64();

  OUTLINED_FUNCTION_71_7();
  v7 = v6 >> 6;

  v8 = 0;
  while (v2)
  {
LABEL_7:
    v10 = __clz(__rbit64(v2));
    v2 &= v2 - 1;
    v11 = v10 | (v8 << 6);
    sub_1E374E74C(*(a1 + 48) + 40 * v11, v37);
    sub_1E328438C(*(a1 + 56) + 32 * v11, &v38);
    if (!v5[2])
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_157();
    swift_bridgeObjectRetain_n();
    sub_1E375D924(v37);
    v13 = v12;

    if (v13)
    {
      sub_1E378249C();
      sub_1E378249C();
      sub_1E329504C(&v34, v32);
      swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_1E375D924(v35);
      v28 = v16;
      if (__OFADD__(v5[2], (v16 & 1) == 0))
      {
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0);
      if (sub_1E4207644())
      {
        v17 = sub_1E375D924(v35);
        v19 = v28;
        if ((v28 & 1) != (v18 & 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v17 = v29;
        v19 = v28;
      }

      if (v19)
      {
        v30 = (v5[7] + 32 * v17);
        __swift_destroy_boxed_opaque_existential_1(v30);
        sub_1E329504C(v32, v30);

        OUTLINED_FUNCTION_90();
        sub_1E325F7A8(v20, v21);
      }

      else
      {
        v5[(v17 >> 6) + 8] |= 1 << v17;
        v31 = v17;
        sub_1E374E74C(v35, v5[6] + 40 * v17);
        sub_1E329504C(v32, (v5[7] + 32 * v31));

        OUTLINED_FUNCTION_90();
        sub_1E325F7A8(v22, v23);
        v24 = v5[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_24;
        }

        v5[2] = v26;
      }

      sub_1E375D84C(v35);
      sub_1E375D84C(v33);
      __swift_destroy_boxed_opaque_existential_1(&v36);
    }

    else
    {

LABEL_10:
      OUTLINED_FUNCTION_90();
      sub_1E325F7A8(v14, v15);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      sub_1E3280A90(0, &qword_1EE23AF68);
      OUTLINED_FUNCTION_38();
      return sub_1E37766C4();
    }

    v2 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v2)
    {
      v8 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E377C2BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_112();
  v5 = sub_1E3780DC4(v4);
  if (!v5)
  {
    v10 = 0;
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    sub_1E4205F14();
    sub_1E4207414();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8E0);
    *(inited + 72) = v10;
    v29 = sub_1E4205CB4();
    v30 = sub_1E377BF84(v29);

    return v30;
  }

  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v37 = MEMORY[0x1E69E7CC0];
  result = sub_1E377FD10(0, v7, 0);
  v9 = 0;
  v10 = v37;
  v32 = v6;
  v33 = v6 + 32;
  v31 = v7;
  while (v9 < *(v6 + 16))
  {
    v11 = *(v33 + 8 * v9);
    v12 = *(v11 + 16);
    if (v12)
    {
      v34 = v9;
      v35 = v10;
      v36 = MEMORY[0x1E69E7CC0];

      sub_1E377FD30(0, v12, 0);
      v13 = v36;
      v14 = (v11 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;

        MEMORY[0x1E69109E0](v15, v16);

        v18 = *(v36 + 16);
        v17 = *(v36 + 24);
        if (v18 >= v17 >> 1)
        {
          v20 = OUTLINED_FUNCTION_35(v17);
          sub_1E377FD30(v20, v18 + 1, 1);
        }

        *(v36 + 16) = v18 + 1;
        v19 = v36 + 16 * v18;
        *(v19 + 32) = v2;
        *(v19 + 40) = a2;
        v14 += 2;
        --v12;
      }

      while (v12);

      v9 = v34;
      v10 = v35;
      v7 = v31;
      v6 = v32;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v38 = v10;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_35(v21);
      OUTLINED_FUNCTION_133_1();
      v24 = v23;
      result = sub_1E377FD10(v25, v26, v27);
      v9 = v24;
      v10 = v38;
    }

    ++v9;
    *(v10 + 16) = v22 + 1;
    *(v10 + 8 * v22 + 32) = v13;
    if (v9 == v7)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1E377C574()
{
  v1 = sub_1E3780DC4(v0);
  if (!v1)
  {

    return v58;
  }

  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_95;
  }

  v65 = MEMORY[0x1E69E7CC0];
  v60 = *(v1 + 16);
  result = sub_1E377FD10(0, v3, 0);
  v5 = v60;
  v6 = 0;
  v61 = v2 + 32;
  v7 = v65;
  v59 = v2;
  while (1)
  {
    if (v6 >= *(v2 + 16))
    {
      goto LABEL_101;
    }

    v8 = *(v61 + 8 * v6);
    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v51 = *(v7 + 16);
    v50 = *(v7 + 24);
    if (v51 >= v50 >> 1)
    {
      v52 = OUTLINED_FUNCTION_35(v50);
      v54 = v53;
      result = sub_1E377FD10(v52, v51 + 1, 1);
      v6 = v54;
      v5 = v60;
    }

    ++v6;
    *(v7 + 16) = v51 + 1;
    *(v7 + 8 * v51 + 32) = v11;
    if (v6 == v5)
    {

LABEL_95:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v66 = sub_1E4205F14();
      v67 = v56;
      sub_1E4207414();
      *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0);
      *(inited + 72) = v7;
      v57 = sub_1E4205CB4();
      sub_1E377BF84(v57);
      OUTLINED_FUNCTION_50();

      return v58;
    }
  }

  v62 = v6;
  v63 = v7;
  v64 = MEMORY[0x1E69E7CC0];

  result = sub_1E377FD30(0, v9, 0);
  v10 = 0;
  v11 = v64;
  while (v10 < *(v8 + 16))
  {
    v12 = (v8 + 32 + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
    v15 = HIBYTE(v13) & 0xF;
    v16 = *v12 & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v17 = *v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      goto LABEL_78;
    }

    if ((v13 & 0x1000000000000000) == 0)
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v66 = v14;
        v67 = v13 & 0xFFFFFFFFFFFFFFLL;
        if (v14 == 43)
        {
          if (!v15)
          {
            goto LABEL_99;
          }

          if (v15 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_59_2();
              if (!v21 & v20)
              {
                break;
              }

              OUTLINED_FUNCTION_19_15();
              if (!v21)
              {
                break;
              }

              v19 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v14 == 45)
        {
          if (!v15)
          {
            goto LABEL_97;
          }

          if (v15 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_59_2();
              if (!v21 & v20)
              {
                break;
              }

              OUTLINED_FUNCTION_19_15();
              if (!v21)
              {
                break;
              }

              v19 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v15)
        {
          v19 = 0;
          v33 = &v66;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v15)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        if ((v14 & 0x1000000000000000) != 0)
        {
          result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          OUTLINED_FUNCTION_135();
          result = sub_1E4207524();
          v16 = v49;
        }

        v18 = *result;
        if (v18 == 43)
        {
          if (v16 < 1)
          {
            goto LABEL_98;
          }

          if (v16 != 1)
          {
            v19 = 0;
            if (!result)
            {
              goto LABEL_71;
            }

            while (1)
            {
              OUTLINED_FUNCTION_59_2();
              if (!v21 & v20)
              {
                break;
              }

              OUTLINED_FUNCTION_19_15();
              if (!v21)
              {
                break;
              }

              v19 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v18 == 45)
        {
          if (v16 < 1)
          {
            goto LABEL_100;
          }

          if (v16 != 1)
          {
            v19 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_59_2();
                if (!v21 & v20)
                {
                  goto LABEL_72;
                }

                OUTLINED_FUNCTION_19_15();
                if (!v21)
                {
                  goto LABEL_72;
                }

                v19 = v23 - v22;
                if (__OFSUB__(v23, v22))
                {
                  goto LABEL_72;
                }

                OUTLINED_FUNCTION_132();
                if (v21)
                {
                  goto LABEL_73;
                }
              }
            }

LABEL_71:
            v24 = 0;
LABEL_73:
            v68 = v24;
            if (v24)
            {
              goto LABEL_78;
            }

            goto LABEL_74;
          }
        }

        else
        {
          if (!v16)
          {
            goto LABEL_72;
          }

          v19 = 0;
          if (!result)
          {
            goto LABEL_71;
          }

          while (1)
          {
            v31 = *result - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_71;
            }
          }
        }
      }

LABEL_72:
      v19 = 0;
      v24 = 1;
      goto LABEL_73;
    }

    v45 = OUTLINED_FUNCTION_135();
    v19 = sub_1E37801A4(v45, v46, 10);
    v48 = v47;

    if (v48)
    {
      goto LABEL_78;
    }

LABEL_74:
    v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      goto LABEL_102;
    }

    v37 = result;
    v38 = sub_1E37814B4(v36, 0x6C616D69636564, 0xE700000000000000, 48, 0xE100000000000000, 12333, 0xE200000000000000, 0, result);

    if (!v38)
    {

LABEL_78:

      v40 = v13;
      goto LABEL_79;
    }

    v14 = sub_1E4205F14();
    v40 = v39;

LABEL_79:

    v42 = *(v64 + 16);
    v41 = *(v64 + 24);
    if (v42 >= v41 >> 1)
    {
      v44 = OUTLINED_FUNCTION_35(v41);
      result = sub_1E377FD30(v44, v42 + 1, 1);
    }

    ++v10;
    *(v64 + 16) = v42 + 1;
    v43 = v64 + 16 * v42;
    *(v43 + 32) = v14;
    *(v43 + 40) = v40;
    if (v10 == v9)
    {

      v6 = v62;
      v7 = v63;
      v2 = v59;
      v5 = v60;
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

void sub_1E377CB5C()
{
  v1 = OUTLINED_FUNCTION_112();
  v2 = sub_1E3780DC4(v1);
  v3 = v21;
  if (!v2)
  {
    goto LABEL_17;
  }

  sub_1E377CE6C();
  if ((v6 & 1) != 0 || (v7 = v4, v8 = v5, v25 = v2, v22 = 0, LOBYTE(v23) = 0, v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0), OUTLINED_FUNCTION_46(), sub_1E32752B0(v10, v11), sub_1E38D2054(&v22, &v24), (v12 = v24) == 0))
  {
LABEL_16:

    v3 = v21;
LABEL_17:

    v19 = v3;
    return;
  }

  v25 = v2;
  v22 = 1;
  LOBYTE(v23) = 0;
  sub_1E38D2054(&v22, &v24);
  v13 = v24;
  if (!v24)
  {

    goto LABEL_16;
  }

  if (!v0)
  {
    if (!(v7 | v8))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (!v7 || !v8)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_8:
  v14 = sub_1E377D130(v12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1E3780BB8();
    v2 = v20;
  }

  if (v2[2])
  {
    v2[4] = v14;

    v15 = sub_1E377D130(v13);
    if (v2[2] >= 2uLL)
    {
      v2[5] = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v22 = sub_1E4205F14();
      v23 = v17;
      sub_1E4207414();
      *(inited + 96) = v9;
      *(inited + 72) = v2;
      v18 = sub_1E4205CB4();
      sub_1E377BF84(v18);
      OUTLINED_FUNCTION_50();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E377CDC8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 userInterfaceLayoutDirection];

  if (v1 == 1)
  {

    sub_1E377CB5C();
  }

  else
  {

    v2 = v3;
  }
}

void sub_1E377CE6C()
{
  OUTLINED_FUNCTION_31_1();
  v26 = sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v5 = sub_1E3780DC4(v0);
  if (v5)
  {
    v6 = v5;
    v30 = v5;
    v27 = 0;
    LOBYTE(v28) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0);
    OUTLINED_FUNCTION_46();
    sub_1E32752B0(v7, v8);
    sub_1E38D2054(&v27, &v29);
    v9 = v29;
    if (v29)
    {
      v24 = v6;
      v10 = 0;
      v11 = *(v29 + 16);
      v12 = (v3 + 8);
      for (i = (v29 + 40); ; i += 2)
      {
        if (v11 == v10)
        {

          goto LABEL_9;
        }

        if (v10 >= *(v9 + 16))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }

        v14 = *i;
        v27 = *(i - 1);
        v28 = v14;

        sub_1E41FDEA4();
        sub_1E32822E0();
        OUTLINED_FUNCTION_25();
        sub_1E42071B4();
        v16 = v15;
        v17 = *v12;
        (*v12)(v1, v26);

        if (v16)
        {
          break;
        }

        ++v10;
      }

      v30 = v24;
      v27 = 1;
      LOBYTE(v28) = 0;
      sub_1E38D2054(&v27, &v29);

      v18 = v29;
      if (!v29)
      {
        goto LABEL_10;
      }

      v19 = 0;
      v25 = *(v29 + 16);
      for (j = (v29 + 40); v25 != v19; j += 2)
      {
        if (v19 >= *(v18 + 16))
        {
          goto LABEL_20;
        }

        v21 = *j;
        v27 = *(j - 1);
        v28 = v21;

        sub_1E41FDEA4();
        OUTLINED_FUNCTION_25();
        sub_1E42071B4();
        v23 = v22;
        v17(v1, v26);

        if (v23)
        {
          break;
        }

        ++v19;
      }
    }

LABEL_9:
  }

LABEL_10:
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E377D130(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_11;
    }

    v8 = *(v1 + 2);
    if (v4 >= v8)
    {
      break;
    }

    if (v6 >= v8)
    {
      goto LABEL_14;
    }

    v10 = *&v1[v3 + 32];
    v9 = *&v1[v3 + 40];
    v12 = *&v1[i - 8];
    v11 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1E3780C00(v1);
    }

    v13 = &v1[v3];
    *(v13 + 4) = v12;
    *(v13 + 5) = v11;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v14 = &v1[i];
    *(v14 - 1) = v10;
    *v14 = v9;

LABEL_11:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1E377D244()
{
  v1 = sub_1E3780DC4(v0);
  if (!v1)
  {
    goto LABEL_12;
  }

  sub_1E377CE6C();
  if (v4)
  {

LABEL_12:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v5 = v1[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 >= *(v1[4] + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v3;
  v7 = v1[5];

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 < *(v7 + 16))
  {

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1E377D34C()
{
  v1 = [v0 dictionaryRepresentation];
  v2 = sub_1E4205C64();

  *&v7 = sub_1E4205F14();
  *(&v7 + 1) = v3;
  sub_1E4207414();
  sub_1E375D7E8(v6, v2, &v7);

  sub_1E375D84C(v6);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1E325F7A8(&v7, &unk_1ECF296E0);
  }

  return 0;
}

uint64_t sub_1E377D458()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1E377D4A0()
{
  OUTLINED_FUNCTION_151_2();
  if (v4)
  {
    v5 = v0[3];
    v6 = v5 >> 1;
    if ((v5 >> 1) < v2)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      if ((v5 & 0xFFFFFFFFFFFFFFFELL) <= v2)
      {
        v6 = v2;
      }
    }
  }

  else
  {
    v6 = v2;
  }

  v7 = v0[2];
  if (v6 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v7;
    v9[3] = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 8 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_67_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12);
    swift_arrayInitWithCopy();
  }
}

size_t sub_1E377D5C0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E377D6AC(v8, v7);
  v10 = *(type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E377D7A8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E377D6AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29430);
  v4 = *(type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E377D7A8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1E377D87C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_155();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_53(), __swift_instantiateConcreteTypeFromMangledNameV2(v8), OUTLINED_FUNCTION_2(), v4 + *(v9 + 72) * v3 <= a3))
  {
    v10 = OUTLINED_FUNCTION_53();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10);
    OUTLINED_FUNCTION_67_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_67_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

void (*sub_1E377D954(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1E377F45C(v6);
  v6[9] = sub_1E377F228(v6 + 4, a2, a3);
  return sub_1E377D9EC;
}

void sub_1E377D9EC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1E377DA4C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1E4207394();

    if (v8)
    {

      type metadata accessor for AnyScoreboardUpdateable();
      swift_dynamicCast();
      result = 0;
      *a1 = v17;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v13 = sub_1E377E2C0(v7, result + 1);
        if (*(v13 + 24) <= *(v13 + 16))
        {
          sub_1E377E6F0();
        }

        sub_1E377E93C(v14, v13);

        *v3 = v13;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for AnyScoreboardUpdateable();
    sub_1E4207B44();
    sub_1E376D6D0();
    v10 = sub_1E4207BA4();
    v11 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v6 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v2;

        sub_1E377E9E0(v16, v12, isUniquelyReferenced_nonNull_native);
        *v2 = v18;
        goto LABEL_16;
      }

      if (sub_1E376D710())
      {
        break;
      }

      v10 = v12 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

uint64_t sub_1E377DC48(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF363E0);
  result = sub_1E4207464();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1E4207B44();

    sub_1E4206014();
    result = sub_1E4207BA4();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1E42079A4() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E377DDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294B8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

_OWORD *sub_1E377DF14(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E375D924(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E375D924(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v14);

    return sub_1E329504C(a1, v14);
  }

  else
  {
    sub_1E374E74C(a2, v16);
    return sub_1E377E1F8(v9, v16, a1, v13);
  }
}

uint64_t sub_1E377E054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E327D33C(a3, a4);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294B0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1E327D33C(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
  }

  else
  {
    sub_1E377E274(v13, a3, a4, a1, a2, v17);
  }
}

unint64_t sub_1E377E1B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_1E377E1F8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1E329504C(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1E377E274(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1E377E2C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294A8);
    v2 = sub_1E4207454();
    v14 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      type metadata accessor for AnyScoreboardUpdateable();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1E377E6F0();
      }

      v2 = v14;
      sub_1E4207B44();
      sub_1E376D6D0();
      result = sub_1E4207BA4();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E377E494()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF363E0);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1E373CBF0(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1E4207B44();
    sub_1E4206014();
    result = sub_1E4207BA4();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E377E6F0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294A8);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_1E4207B44();
    sub_1E376D6D0();
    result = sub_1E4207BA4();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1E377E93C(uint64_t a1, uint64_t a2)
{
  sub_1E4207B44();
  sub_1E376D6D0();
  sub_1E4207BA4();
  result = sub_1E4207324();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1E377E9E0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E377E6F0();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E377F004();
LABEL_10:
      v12 = *v3;
      sub_1E4207B44();
      sub_1E376D6D0();
      result = sub_1E4207BA4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for AnyScoreboardUpdateable();
        if (sub_1E376D710())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E377EC80();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1E377EB28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF363E0);
  v2 = *v0;
  v3 = sub_1E4207434();
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

void *sub_1E377EC80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294A8);
  v2 = *v0;
  v3 = sub_1E4207434();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_1E377EDD0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF363E0);
  result = sub_1E4207444();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1E4207B44();

        sub_1E4206014();
        result = sub_1E4207BA4();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E377F004()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294A8);
  result = sub_1E4207444();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_1E4207B44();

        sub_1E376D6D0();
        result = sub_1E4207BA4();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void (*sub_1E377F228(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v8;
  v8[3] = a3;
  v8[4] = v3;
  v8[2] = a2;
  v9 = *v3;
  v10 = sub_1E327D33C(a2, a3);
  *(v8 + 48) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294B0);
  if (sub_1E4207644())
  {
    v14 = sub_1E327D33C(a2, a3);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[5] = v12;
  if (v13)
  {
    v16 = (*(*v4 + 56) + 16 * v12);
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  *v8 = v17;
  v8[1] = v18;
  return sub_1E377F370;
}

void sub_1E377F370(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = *(*a1 + 48);
  if (v2)
  {
    v5 = v1[5];
    v6 = *v1[4];
    if (v4)
    {
      v7 = (v6[7] + 16 * v5);
      *v7 = v2;
      v7[1] = v3;
    }

    else
    {
      sub_1E377E274(v5, v1[2], v1[3], v2, v3, v6);
    }
  }

  else if ((*a1)[6])
  {
    sub_1E3782C70(*(*v1[4] + 48) + 16 * v1[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294C0);
    OUTLINED_FUNCTION_75();
    sub_1E4207664();
  }

  v8 = OUTLINED_FUNCTION_57();
  sub_1E3782C2C(v8);
  OUTLINED_FUNCTION_1_54();
  v9 = OUTLINED_FUNCTION_75();
  sub_1E3782E00(v9, v10, v11);

  free(v1);
}

uint64_t (*sub_1E377F45C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E377F484;
}

uint64_t sub_1E377F490(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v40[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a1;
  v5 = 0;
  v40[0] = a1;
  v6 = sub_1E32AE9B0(a1);
  v39 = v4 & 0xC000000000000001;
  v36 = v4 + 32;
  v7 = v3 + 56;

  v8 = -1;
  v32 = 0;
  v38 = v6;
LABEL_3:
  if (v5 != v6)
  {
    v9 = v39;
    sub_1E34AF4E4(v5, v39 == 0, v4);
    if (v39)
    {
      v10 = MEMORY[0x1E6911E60](v5, v4);
    }

    else
    {
      v10 = *(v36 + 8 * v5);
    }

    v11 = __OFADD__(v5++, 1);
    if (v11)
    {
      __break(1u);
    }

    else
    {
      sub_1E4207B44();
      sub_1E376D6D0();
      v12 = sub_1E4207BA4();
      v13 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v12 & v13;
        v8 = (v12 & v13) >> 6;
        v2 = 1 << (v12 & v13);
        if ((v2 & *(v7 + 8 * v8)) == 0)
        {

          v6 = v38;
          v8 = -1;
          goto LABEL_3;
        }

        type metadata accessor for AnyScoreboardUpdateable();
        if (sub_1E376D710())
        {
          break;
        }

        v12 = v9 + 1;
      }

      v40[1] = v5;

      v15 = *(v3 + 32);
      v33 = ((1 << v15) + 63) >> 6;
      v10 = 8 * v33;
      if ((v15 & 0x3Fu) <= 0xD)
      {
LABEL_14:
        v34 = &v32;
        MEMORY[0x1EEE9AC00](v14);
        v16 = &v32 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v16, (v3 + 56), v10);
        v17 = *(v3 + 16);
        v18 = *&v16[8 * v8] & ~v2;
        v37 = v16;
        *&v16[8 * v8] = v18;
        v35 = v17 - 1;
        v38 = sub_1E32AE9B0(v4);
        while (1)
        {
LABEL_15:
          if (v5 == v38)
          {
            v3 = sub_1E377FB08(v37, v33, v35, v3);
            goto LABEL_29;
          }

          v19 = v39;
          sub_1E34AF4E4(v5, v39 == 0, v4);
          if (v19)
          {
            MEMORY[0x1E6911E60](v5, v4);
          }

          else
          {
          }

          v11 = __OFADD__(v5++, 1);
          if (v11)
          {
            break;
          }

          v20 = v4;
          sub_1E4207B44();
          sub_1E376D6D0();
          v21 = sub_1E4207BA4();
          v22 = ~(-1 << *(v3 + 32));
          do
          {
            v23 = v21 & v22;
            v24 = (v21 & v22) >> 6;
            v25 = 1 << (v21 & v22);
            if ((v25 & *(v7 + 8 * v24)) == 0)
            {

              v4 = v20;
              goto LABEL_15;
            }

            v26 = sub_1E376D710();
            v21 = v23 + 1;
          }

          while ((v26 & 1) == 0);

          v27 = v37[v24];
          v37[v24] = v27 & ~v25;
          v4 = v20;
          if ((v27 & v25) != 0)
          {
            v28 = v35 - 1;
            if (__OFSUB__(v35, 1))
            {
              __break(1u);
            }

            --v35;
            if (!v28)
            {
              goto LABEL_33;
            }
          }
        }

        __break(1u);
LABEL_33:

        v3 = MEMORY[0x1E69E7CD0];
        goto LABEL_29;
      }
    }

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v30 = swift_slowAlloc();
      v31 = sub_1E377FA80(v30, v33, (v3 + 56), v33, v3, v9, v40);

      MEMORY[0x1E69143B0](v30, -1, -1);

      return v31;
    }

    goto LABEL_14;
  }

LABEL_29:

  return v3;
}

uint64_t sub_1E377F8B8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = sub_1E32AE9B0(*a5);
    v11 = a5[1];
    if (v11 == v10)
    {

      return sub_1E377FB08(a1, a2, v26, a3);
    }

    v12 = *a5;
    v13 = *a5 & 0xC000000000000001;
    sub_1E34AF4E4(a5[1], v13 == 0, *a5);

    v15 = a5[1];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    a5[1] = v17;
    sub_1E4207B44();
    sub_1E376D6D0();
    v18 = sub_1E4207BA4();
    v19 = ~(-1 << *(a3 + 32));
    do
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = 1 << (v18 & v19);
      if ((v22 & *(v9 + 8 * v21)) == 0)
      {

        goto LABEL_3;
      }

      type metadata accessor for AnyScoreboardUpdateable();
      v23 = sub_1E376D710();
      v18 = v20 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = a1[v21];
    a1[v21] = v24 & ~v22;
    if ((v24 & v22) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_19;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E377FA80(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1E377F8B8(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1E377FB08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294A8);
  result = sub_1E4207464();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1E4207B44();

    sub_1E376D6D0();
    result = sub_1E4207BA4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_1E377FD10(void *a1, int64_t a2, char a3)
{
  result = sub_1E377FDD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E377FD30(char *a1, int64_t a2, char a3)
{
  result = sub_1E377FF00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E377FDD0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E377FF00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1E3780008()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_151_2();
  if (v4)
  {
    v5 = *(v0 + 24);
    v6 = v5 >> 1;
    if ((v5 >> 1) < v2)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      if ((v5 & 0xFFFFFFFFFFFFFFFELL) <= v2)
      {
        v6 = v2;
      }
    }
  }

  else
  {
    v6 = v2;
  }

  v7 = *(v0 + 16);
  if (v6 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  v9 = OUTLINED_FUNCTION_67_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_8_0(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v16 = _swift_stdlib_malloc_size(v15);
  if (!v12)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 - v14 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_24;
  }

  v15[2] = v7;
  v15[3] = 2 * ((v16 - v14) / v12);
LABEL_19:
  v18 = OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18);
  OUTLINED_FUNCTION_81();
  if (v1)
  {
    sub_1E377D87C(v0 + v19, v7, v15 + v19);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_25_2();
}

unsigned __int8 *sub_1E37801A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1E4206174();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E378072C();
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
      result = sub_1E4207524();
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

uint64_t sub_1E378072C()
{
  v0 = sub_1E3780798();
  v4 = sub_1E37807CC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1E37807CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1E4207134();
    if (!v9 || (v10 = v9, v11 = sub_1E327885C(v9, 0), v12 = sub_1E378092C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1E4206004();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E4206004();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1E4207524();
LABEL_4:

  return sub_1E4206004();
}

unint64_t sub_1E378092C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1E3780B3C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E42060F4();
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
          result = sub_1E4207524();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1E3780B3C(v12, a6, a7);
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

    result = sub_1E42060C4();
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

uint64_t sub_1E3780B3C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E4206114();
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
    v5 = MEMORY[0x1E6910A30](15, a1 >> 16);
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

uint64_t sub_1E3780C14(void *a1)
{
  v2 = [a1 contentMetadata];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

void sub_1E3780C8C(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_1E3780CD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3780D3C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E376FDAC();
}

uint64_t sub_1E3780DC4(void *a1)
{
  v1 = [a1 scores];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  v3 = sub_1E42062B4();

  return v3;
}

id sub_1E3780E30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1E4205ED4();

  v6 = sub_1E42062A4();

  v7 = [a4 invokeMethod:v5 withArguments:v6];

  return v7;
}

uint64_t sub_1E3780EC0(void *a1)
{
  v1 = [a1 canonicalId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3780F24(void *a1)
{
  v1 = [a1 leagueContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205C64();

  return v3;
}

void sub_1E378100C()
{
  sub_1E32AA210();
  if (v0 <= 0x3F)
  {
    sub_1E41FFCB4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E3781120(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_17_7(*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_17_7(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }
}

uint64_t sub_1E378115C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_123(result, -a2);
    }
  }

  return result;
}

uint64_t sub_1E37811DC()
{
  result = sub_1E41FE5D4();
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

_BYTE *storeEnumTagSinglePayload for SportsKitScoreboardManager.SportingEventUpdate.SportingEventUpdateType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3781368()
{
  result = qword_1ECF458C0[0];
  if (!qword_1ECF458C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF458C0);
  }

  return result;
}

uint64_t sub_1E37813BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E378142C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_56_1(v3);

  return sub_1E377A070(v5, v6, v7, v1);
}

id sub_1E37814B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = sub_1E4205ED4();

  v12 = sub_1E4205ED4();

  v13 = sub_1E4205ED4();

  v14 = [a9 formatLocalizedNumber:a1 style:v11 postiveFormat:v12 negativeFormat:v13 currencyCode:a8];

  return v14;
}

uint64_t sub_1E3781598(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1E378168C;

  return v5(v2 + 16);
}

uint64_t sub_1E378168C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *(v1 + 32);
  v5 = *v0;
  *v3 = *v0;

  v6 = *(v2 + 24);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v6;
  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1E37817F4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1E4207314();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E3781874()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_156();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E37774DC();
}

uint64_t sub_1E3781918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E378197C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1E3781A70;

  return v5(v2 + 16);
}

uint64_t sub_1E3781A70()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1E3781B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3781BF8()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  v3 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  OUTLINED_FUNCTION_8_0(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_14_3(v8);
  *v9 = v12;
  v9[1] = sub_1E327C238;

  return sub_1E3777CD4(v2, v10, v11, v0 + v5, v7);
}

uint64_t sub_1E3781CF0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_96();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3781D80(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1E3781D98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29448);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_81();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1E377863C(v2, v3);
}

uint64_t sub_1E3781E00(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29448);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  if (*(a1 + 17))
  {
    sub_1E3781F38();
    swift_allocError();
    *v6 = v4;
    *(v6 + 8) = v3;
    *(v6 + 16) = v5;
    v7 = OUTLINED_FUNCTION_13_8();
    sub_1E3781F8C(v7, v8, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29448);
    return sub_1E42063C4();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_13_8();
    sub_1E3781FA4(v10, v11, v5, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29448);
    sub_1E42063D4();
  }
}

unint64_t sub_1E3781F38()
{
  result = qword_1EE288228;
  if (!qword_1EE288228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288228);
  }

  return result;
}

uint64_t sub_1E3781F8C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1E3781FA4(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {

    return sub_1E3781F8C(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_1E3782004()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

void sub_1E3782068()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29468);
  OUTLINED_FUNCTION_8_0(v0);

  sub_1E37763B0();
}

unint64_t sub_1E3782114()
{
  result = qword_1ECF459D0;
  if (!qword_1ECF459D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF459D0);
  }

  return result;
}

id sub_1E3782168(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29468);
  OUTLINED_FUNCTION_8_0(v7);
  v10 = *(v5 + ((*(v9 + 64) + ((*(v8 + 80) + 16) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  result = sub_1E32AE9B0(a3);
  if (!result)
  {
    v23 = 0u;
    v24 = 0u;
LABEL_17:
    sub_1E325F7A8(&v23, &unk_1ECF296E0);
LABEL_18:
    sub_1E3782114();
    v19 = swift_allocError();
    *v20 = 1;
    *&v23 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29468);
    sub_1E42063C4();
    result = [objc_opt_self() valueWithUndefinedInContext_];
    v18 = result;
    if (result)
    {
      return v18;
    }

    goto LABEL_22;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1E6911E60](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v12 = *(a3 + 32);
  }

  v13 = v12;
  v14 = [v12 toObject];

  if (v14)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F350);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(v21 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v25 = v4;
    *&v23 = MEMORY[0x1E69E7CC0];
    sub_1E4207574();
    sub_1E3280A90(0, &qword_1EE23AF68);
    v17 = v21 + 32;
    do
    {
      v17 += 8;

      sub_1E37766C4();
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      --v15;
    }

    while (v15);
    v16 = v23;
  }

  *&v23 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29468);
  sub_1E42063D4();
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v18 = result;

    return v18;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E378249C()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E37824F4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_130_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_11(v1);

  return sub_1E3773A2C();
}

uint64_t sub_1E3782580()
{
  OUTLINED_FUNCTION_27_2();
  v1 = sub_1E41FE624();
  OUTLINED_FUNCTION_17_2(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30_0(v6);
  *v7 = v10;
  v7[1] = sub_1E327C238;

  return sub_1E37737EC(v7, v8, v9, v4, v5, v0 + v3);
}

uint64_t sub_1E3782650()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_150();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_38_5(v3);

  return sub_1E3772258(v5, v6, v7, v8, v9, v1, v0);
}

uint64_t sub_1E37826EC()
{
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E377254C();
}

uint64_t sub_1E37827A0()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_150();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_38_5(v1);

  return sub_1E3772A5C();
}

uint64_t sub_1E378283C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_38_5(v1);

  return sub_1E3772F80();
}

uint64_t sub_1E37828D4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1E37828E8(uint64_t a1, char a2)
{
  if (a2 != 254)
  {
    return sub_1E37828FC(a1, a2);
  }

  return a1;
}

uint64_t sub_1E37828FC(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1E3782910()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_96();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

void sub_1E37829A0()
{
  v1 = *(v0 + 16);
  if ((sub_1E376D4D8(*(v0 + 24)) & 1) == 0)
  {

    oslog = sub_1E41FFC94();
    v2 = sub_1E42067D4();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = OUTLINED_FUNCTION_6_21();
      v4 = OUTLINED_FUNCTION_100();
      v6 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_1E3270FC8(*(v1 + 72), *(v1 + 80), &v6);
      _os_log_impl(&dword_1E323F000, oslog, v2, "%s ignored sportskit update", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    else
    {
    }
  }
}

uint64_t sub_1E3782AB4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_130_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_11(v1);

  return sub_1E37799DC();
}

uint64_t objectdestroy_90Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));
  a1(*(v1 + 40));

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t sub_1E3782BA0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_130_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_11(v1);

  return sub_1E3779020();
}

uint64_t sub_1E3782C2C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1E3782CC4()
{
  result = qword_1EE23AD10;
  if (!qword_1EE23AD10)
  {
    sub_1E3280A90(255, &qword_1EE23AD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23AD10);
  }

  return result;
}

uint64_t sub_1E3782D34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E3782D74()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_130_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_11(v1);

  return sub_1E3771864();
}

uint64_t sub_1E3782E00(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (result)
  {

    return a3(a2);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E3782EA8()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E37713C0();
}

uint64_t sub_1E3782F3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_17_7(*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    return OUTLINED_FUNCTION_17_7(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }
}

uint64_t sub_1E3782F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_123(result, -a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsKitScoreboardManager.PollError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *storeEnumTagSinglePayload for SportsKitScoreboardManager.PollError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3783130()
{
  result = qword_1ECF459D8[0];
  if (!qword_1ECF459D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF459D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_4(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CF8];

  return sub_1E3782E00(a1, a2, v3);
}

void (*OUTLINED_FUNCTION_79_3(uint64_t a1, ...))(void *a1)
{
  va_start(va, a1);

  return sub_1E376FA4C(va, v2, v1);
}

id OUTLINED_FUNCTION_84_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v7 + 2040)];
}

_OWORD *OUTLINED_FUNCTION_122_2()
{
  *(v1 - 200) = v0;

  return sub_1E377DF14((v1 - 192), v1 - 128);
}

uint64_t OUTLINED_FUNCTION_127()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_128_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = v2;
}

void OUTLINED_FUNCTION_160_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return sub_1E34AF4DC();
}

uint64_t OUTLINED_FUNCTION_162_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_163()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_165_0()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_166()
{
  v2 = *(v0 - 280);
}

uint64_t OUTLINED_FUNCTION_167_1()
{

  return swift_getObjectType();
}

uint64_t sub_1E3783428@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294D0);
  (*(*(v13 - 8) + 16))(a6, a1, v13);
  v14 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294D8) + 36));
  *v14 = sub_1E37836F0;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
}

uint64_t sub_1E3783540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  sub_1E42038E4();
  v10 = a1;
  v11 = a2;

  MEMORY[0x1E690DE70](v9, a3, &type metadata for FirstAppearanceModifier, a4);
}

unint64_t sub_1E37835F0()
{
  result = qword_1EE298E20[0];
  if (!qword_1EE298E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE298E20);
  }

  return result;
}

uint64_t sub_1E3783644(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E3783684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E37836F0()
{
  v1 = *(v0 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  if (v4)
  {
  }

  sub_1E4203904();

  return v1(v3);
}

unint64_t sub_1E37837AC()
{
  result = qword_1EE289AC8;
  if (!qword_1EE289AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF294D8);
    sub_1E3783838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AC8);
  }

  return result;
}

unint64_t sub_1E3783838()
{
  result = qword_1EE288960;
  if (!qword_1EE288960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF294D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288960);
  }

  return result;
}

uint64_t sub_1E37838C4()
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](0);
  return sub_1E4207BA4();
}

uint64_t sub_1E3783910()
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](0);
  return sub_1E4207BA4();
}

BOOL TVAppExtensionSource.Values.init(rawValue:)()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

uint64_t sub_1E3783A04()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3783A90()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

BOOL sub_1E3783AF0@<W0>(_BYTE *a1@<X8>)
{
  result = TVAppExtensionSource.Values.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t sub_1E3783B4C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = j__swift_bridgeObjectRelease(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_1E3783B88(uint64_t a1)
{
  v2 = sub_1E3783D14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E3783BC4(uint64_t a1)
{
  v2 = sub_1E3783D14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TVAppExtensionSource.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3783D14();
  sub_1E4207C14();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E3783D14()
{
  result = qword_1ECF45AE0[0];
  if (!qword_1ECF45AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF45AE0);
  }

  return result;
}

unint64_t sub_1E3783D94()
{
  result = qword_1ECF294F0;
  if (!qword_1ECF294F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF294F0);
  }

  return result;
}

unint64_t sub_1E3783DEC()
{
  result = qword_1ECF294F8;
  if (!qword_1ECF294F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF294F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarouselViewLayout.CarouselLayoutKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
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

_BYTE *sub_1E3783EE0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1E3783F98()
{
  result = qword_1EE29C7B0;
  if (!qword_1EE29C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE29C7B0);
  }

  return result;
}

unint64_t sub_1E3783FF0()
{
  result = qword_1EE29C7B8;
  if (!qword_1EE29C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE29C7B8);
  }

  return result;
}

__objc2_class **sub_1E378404C()
{
  result = (*(**v0 + 392))();
  if (result)
  {
    if (*result != _TtC8VideosUI26SearchLockupListCellLayout)
    {

      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchLockupListCell()
{
  result = qword_1EE29CB70;
  if (!qword_1EE29CB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3784124()
{
  OUTLINED_FUNCTION_31_1();
  v24[1] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29500);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29508);
  OUTLINED_FUNCTION_0_10();
  v24[0] = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  sub_1E3784378();
  v11 = *(v0 + 208);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29510);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29518);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29520);
  v15 = sub_1E378838C();
  v25 = v14;
  v26 = v15;
  OUTLINED_FUNCTION_8_28();
  v16 = OUTLINED_FUNCTION_16_8();
  v25 = v13;
  v26 = v16;
  OUTLINED_FUNCTION_3_16();
  v17 = OUTLINED_FUNCTION_16_8();
  v25 = v12;
  v26 = v17;
  OUTLINED_FUNCTION_26_14();
  v18 = OUTLINED_FUNCTION_16_8();
  sub_1E4187EA8(v11, v2, v18);
  (*(v4 + 8))(v7, v2);
  v19 = sub_1E378404C();
  v25 = v2;
  v26 = v18;
  OUTLINED_FUNCTION_3_8();
  v20 = OUTLINED_FUNCTION_16_8();
  LOBYTE(v2) = j__OUTLINED_FUNCTION_18();
  LOBYTE(v7) = j__OUTLINED_FUNCTION_18();
  v21 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v19, v2 & 1, v7 & 1, 1, v21 & 1, v8, v20);

  v22 = OUTLINED_FUNCTION_74();
  v23(v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3784378()
{
  OUTLINED_FUNCTION_9_4();
  v31 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29520);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29518);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29510);
  OUTLINED_FUNCTION_0_10();
  v29 = v12;
  v30 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  sub_1E37846D4();
  if (sub_1E378404C())
  {
    OUTLINED_FUNCTION_30();
    v17 = (*(v16 + 792))();
  }

  else
  {
    v17 = 11;
  }

  memset(v36, 0, sizeof(v36));
  v37 = 1;
  v18 = sub_1E378838C();
  sub_1E3A6929C(v17, 0, 0, 1, v36, v1, v18);
  sub_1E325F69C(v4, &qword_1ECF29520);
  if (sub_1E378404C())
  {
    OUTLINED_FUNCTION_30();
    v20 = (*(v19 + 744))();
  }

  else
  {
    v20 = 0;
  }

  v34[0] = v1;
  v34[1] = v18;
  OUTLINED_FUNCTION_8_28();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_46_4();
  sub_1E39B87A4(v22);

  (*(v7 + 8))(v10, v5);
  if (sub_1E378404C())
  {
    OUTLINED_FUNCTION_30();
    (*(v23 + 552))(v34);

    if ((v35 & 1) == 0)
    {
      v24 = OUTLINED_FUNCTION_6();
      sub_1E3952BE8(v24, v25, v26, v27);
    }
  }

  v32 = v5;
  v33 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_3_16();
  swift_getOpaqueTypeConformance2();
  v28 = v30;
  sub_1E3E361E8();
  (*(v29 + 8))(v15, v28);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37846D4()
{
  OUTLINED_FUNCTION_9_4();
  v45 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v43 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29568);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v43 - v6;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29590);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v43[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29538);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - v10;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  type metadata accessor for SearchLockupListCell();
  sub_1E3746E10(v15);
  v16 = sub_1E3B02A04();
  v17 = OUTLINED_FUNCTION_39_3();
  v18(v17);
  if (v16)
  {
    sub_1E3784ABC(v11);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v19, v20, v21);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_24_5();
    sub_1E3788514(v22, &qword_1ECF29538, &unk_1E429B620, v23);
    OUTLINED_FUNCTION_27_8();
    sub_1E3788514(v24, v25, v26, v27);
    sub_1E4201F44();
    v28 = OUTLINED_FUNCTION_32_0();
  }

  else
  {
    sub_1E3784C8C();
    OUTLINED_FUNCTION_3();
    *v4 = sub_1E4201D44();
    *(v4 + 1) = 0;
    v4[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29598);
    sub_1E3786448();
    v30 = sub_1E4202734();
    v31 = &v4[*(v1 + 36)];
    *v31 = v30;
    OUTLINED_FUNCTION_11_4(v31);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_23_3();
    sub_1E42015C4();
    sub_1E3741EA0(v4, v7, &qword_1ECF29578);
    memcpy(&v7[*(v44 + 36)], v46, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v32, v33, v34);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_24_5();
    sub_1E3788514(v35, v36, v37, v38);
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_21_1();
    sub_1E3788514(v39, v40, v41, v42);
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E325F69C(v28, v29);
  OUTLINED_FUNCTION_10_3();
}

void *sub_1E3784ABC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29548);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &__src[-v5];
  if (sub_1E378404C())
  {
    OUTLINED_FUNCTION_30();
    (*(v7 + 1152))();
  }

  sub_1E3784C8C();
  OUTLINED_FUNCTION_9_10();
  *v6 = sub_1E4201D54();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A0);
  sub_1E3784D14(v1, &v6[*(v8 + 44)]);
  v9 = sub_1E4202734();
  v10 = &v6[*(v3 + 36)];
  *v10 = v9;
  OUTLINED_FUNCTION_15_3(v10);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v6, a1, &qword_1ECF29548);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29538);
  return memcpy((a1 + *(v11 + 36)), __src, 0x70uLL);
}

void sub_1E3784C8C()
{
  if (sub_1E378404C() && (OUTLINED_FUNCTION_30(), (*(v0 + 176))(&v5), , (v6 & 1) == 0))
  {
    v1.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v1, v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }
}

uint64_t sub_1E3784D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v165 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v147 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  v175 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v147 - v15;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8);
  v30 = OUTLINED_FUNCTION_17_2(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_34_1();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v147 - v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295C8);
  v48 = v47 - 8;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v147 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295D0);
  v53 = OUTLINED_FUNCTION_17_2(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25_3();
  v167 = v55;
  sub_1E3785CDC();
  sub_1E37860F8();
  v56 = *(v48 + 44);
  v168 = v51;
  *&v51[v56] = 256;
  v166 = a1;
  v57 = *(a1 + 216);
  v176 = v9;
  v152 = v20;
  if (v57)
  {

    v58 = v8;
    v59 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v60 = v174;
    sub_1E3883AF4(v59);
    v61 = *(v165 + 8);
    v148 = v58;
    v61(v58, v60);
    sub_1E4202744();
    v62 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v63)
    {
      v62 = sub_1E4202774();
    }

    if (v59)
    {
      v64 = *(*v59 + 152);

      v64(&v181, v65);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    OUTLINED_FUNCTION_42_14();
    v69(v2, v16, v176);
    v67 = v158;
    v70 = (v2 + *(v158 + 36));
    *v70 = v62;
    OUTLINED_FUNCTION_15_3(v70);
    v16 = v149;
    sub_1E3741EA0(v2, v149, &qword_1ECF295B0);
    sub_1E3741EA0(v16, v3, &qword_1ECF295B0);
    v66 = 0;
    v68 = v165;
    v8 = v148;
  }

  else
  {
    v66 = 1;
    v67 = v158;
    v68 = v165;
  }

  OUTLINED_FUNCTION_49_8(v3, v66);
  v71 = sub_1E4202744();
  v72 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v71)
  {
    v72 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v3, v45, &qword_1ECF295B8);
  OUTLINED_FUNCTION_43_7();
  v74 = &v45[v73];
  *v74 = v72;
  OUTLINED_FUNCTION_15_3(v74);
  sub_1E3741EA0(v45, v169, &qword_1ECF295C0);
  v75 = v166;
  if (*(v166 + 224))
  {

    v76 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_0_21();
    v77 = v174;
    sub_1E3883AF4(v76);
    (*(v68 + 8))(v8, v77);
    sub_1E4202744();
    v78 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v63)
    {
      v78 = sub_1E4202774();
    }

    if (v76)
    {
      v79 = *(*v76 + 152);
      v16 = (*v76 + 152);

      v79(&v182, v80);
      v75 = v166;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    OUTLINED_FUNCTION_42_14();
    v83 = v150;
    v84(v150, v161, v176);
    v85 = (v83 + *(v67 + 36));
    *v85 = v78;
    OUTLINED_FUNCTION_15_3(v85);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v86, v87, v88);
    v82 = v154;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v89, v90, v91);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v82 = v154;
  }

  OUTLINED_FUNCTION_49_8(v82, v81);
  sub_1E4202744();
  v92 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  v93 = v164;
  if (!v63)
  {
    v92 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v94 = v153;
  sub_1E3741EA0(v82, v153, &qword_1ECF295B8);
  OUTLINED_FUNCTION_43_7();
  v96 = (v94 + v95);
  *v96 = v92;
  OUTLINED_FUNCTION_15_3(v96);
  sub_1E3741EA0(v94, v170, &qword_1ECF295C0);
  if (*(v75 + 240))
  {

    v97 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_45_6();
    (*(v68 + 8))(v8, v16);
    sub_1E4202744();
    v98 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v63)
    {
      v98 = sub_1E4202774();
    }

    if (v97)
    {
      v16 = *(*v97 + 152);

      (v16)(&v183, v99);
      v75 = v166;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    OUTLINED_FUNCTION_42_14();
    v93 = v151;
    v101(v151, v162, v176);
    v102 = (v93 + *(v67 + 36));
    *v102 = v98;
    OUTLINED_FUNCTION_15_3(v102);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v103, v104, v105);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v106, v107, v108);
    v100 = 0;
  }

  else
  {
    v100 = 1;
  }

  OUTLINED_FUNCTION_49_8(v93, v100);
  sub_1E4202744();
  v109 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v63)
  {
    v109 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v110 = v155;
  sub_1E3741EA0(v93, v155, &qword_1ECF295B8);
  OUTLINED_FUNCTION_43_7();
  v112 = (v110 + v111);
  *v112 = v109;
  OUTLINED_FUNCTION_11_4(v112);
  sub_1E3741EA0(v110, v171, &qword_1ECF295C0);
  v113 = *(v75 + 248);
  if (v113)
  {

    v114 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_45_6();
    (*(v68 + 8))(v8, v16);
    sub_1E4202744();
    v115 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v63)
    {
      v115 = sub_1E4202774();
    }

    v116 = v176;
    v117 = v152;
    if (v114)
    {
      v118 = *(*v114 + 152);

      v118(&v184, v119);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    (*(v175 + 32))(v117, v163, v116);
    v122 = (v117 + *(v67 + 36));
    *v122 = v115;
    OUTLINED_FUNCTION_11_4(v122);
    v113 = &qword_1ECF295B0;
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v123, v124, v125);
    v121 = v157;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v126, v127, v128);
    v120 = 0;
  }

  else
  {
    v120 = 1;
    v121 = v157;
  }

  OUTLINED_FUNCTION_49_8(v121, v120);
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v129, v130, v131);
  v180[0] = v113;
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v132, v133, v134);
  v180[1] = v113;
  v135 = v169;
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v136, v137, &qword_1ECF295C0);
  v180[2] = v113;
  v138 = v170;
  v139 = v156;
  sub_1E3743538(v170, v156, &qword_1ECF295C0);
  v180[3] = v139;
  v140 = v171;
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v141, v142, &qword_1ECF295C0);
  v180[4] = v113;
  v143 = v159;
  sub_1E3743538(v121, v159, &qword_1ECF295B8);
  v178 = 0;
  v179 = 0;
  v180[5] = v143;
  v180[6] = &v178;
  sub_1E378632C(v180, v160);
  sub_1E325F69C(v121, &qword_1ECF295B8);
  OUTLINED_FUNCTION_50_3(v140);
  OUTLINED_FUNCTION_50_3(v138);
  OUTLINED_FUNCTION_50_3(v135);
  sub_1E325F69C(v168, &qword_1ECF295C8);
  sub_1E325F69C(v167, &qword_1ECF295D0);
  sub_1E325F69C(v143, &qword_1ECF295B8);
  OUTLINED_FUNCTION_50_3(v113);
  OUTLINED_FUNCTION_50_3(v139);
  OUTLINED_FUNCTION_50_3(v173);
  sub_1E325F69C(v172, &qword_1ECF295C8);
  OUTLINED_FUNCTION_46_4();
  return sub_1E325F69C(v144, v145);
}

void sub_1E3785CDC()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  if (sub_1E39C408C(39))
  {
    type metadata accessor for ImageViewModel();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = 0.0;
      v8 = 0.0;
      if (sub_1E378404C())
      {
        OUTLINED_FUNCTION_30();
        *&v10 = COERCE_DOUBLE((*(v9 + 304))());
        v12 = v11;

        if ((v12 & 1) == 0)
        {
          v8 = *&v10;
        }
      }

      if (sub_1E378404C())
      {
        OUTLINED_FUNCTION_30();
        (*(v13 + 176))(&v44);

        if (LOBYTE(v47))
        {
          v7 = 0.0;
        }

        else
        {
          v7 = *&v44;
        }
      }

      if (sub_1E378404C())
      {
        OUTLINED_FUNCTION_30();
        (*(v14 + 176))(&v53);

        OUTLINED_FUNCTION_32_1();
        if (!v17)
        {
          v15 = v16;
        }
      }

      else
      {
        v15 = 0.0;
      }

      v23 = v8 - v7 - v15;
      v24 = j__OUTLINED_FUNCTION_51_1();
      j__OUTLINED_FUNCTION_18();
      v43 = j__OUTLINED_FUNCTION_18() & 1;
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_46_5(0, v24 & 1, &v53, 0, 1, 0, 1, v41, v42, SHIBYTE(v42), v43);
      v44 = v53;
      v49 = v56;
      *v50 = *v57;
      *&v50[14] = *&v57[14];
      v45 = v54;
      v46 = 0;
      v47 = v23;
      v48 = 256;
      v51 = 1;
      v52 = v58;
      v25 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v6, &v44, 0, v25 & 1, 0, 0, v0);
      v26 = sub_1E4203D64();
      v28 = v27;
      v29 = sub_1E378404C();
      if (v29 && (v30 = v29, swift_beginAccess(), v31 = v30[13], , v32 = , (v31->isa[4].cache)(&v53, v32), , (v55 & 1) == 0))
      {
        v33.n128_f64[0] = OUTLINED_FUNCTION_6();
        j_nullsub_1(v33, v34, v35, v36);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
      }

      OUTLINED_FUNCTION_3();
      v37 = v0 + *(v3 + 36);
      *v37 = sub_1E4201D54();
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E8);
      sub_1E3787CD4();
      v38 = sub_1E4202734();
      sub_1E375C31C(&v44);

      v39 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F0) + 36));
      *v39 = v38;
      OUTLINED_FUNCTION_11_4(v39);
      v40 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F8) + 36));
      *v40 = v26;
      v40[1] = v28;
      sub_1E3741EA0(v0, v2, &qword_1ECF295E0);
      __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
      OUTLINED_FUNCTION_10_3();
      return;
    }
  }

  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void sub_1E37860F8()
{
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Monogram();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v3 = (v2 - v1);
  v4 = sub_1E39C408C(41);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E378404C();
    if (v6)
    {
      swift_beginAccess();
      v7 = v6[14];

      v6 = (v7->isa[7].vtable)(v8);
      v10 = v9;

      if (v10)
      {
        v6 = 0;
      }
    }

    v11 = j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    v26 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_46_5(v6, v11 & 1, &v27, 0, 1, 0, 1, v24, v25, SHIBYTE(v25), v26);
    v33 = v27;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v34 = v28;
    v35 = v6;
    v36 = v6;
    v37 = 256;
    sub_1E3BD63E4(v5, 0, &v33, 0, 0, 0, 0, 0, v3);
    v12 = OUTLINED_FUNCTION_74();
    sub_1E3788908(v12, v13, v14);
    OUTLINED_FUNCTION_35_9();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

uint64_t sub_1E378632C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF295D0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295D8);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF295C8);
  sub_1E3743538(a1[2], a2 + v4[16], &qword_1ECF295C0);
  sub_1E3743538(a1[3], a2 + v4[20], &qword_1ECF295C0);
  sub_1E3743538(a1[4], a2 + v4[24], &qword_1ECF295C0);
  result = sub_1E3743538(a1[5], a2 + v4[28], &qword_1ECF295B8);
  v6 = a2 + v4[32];
  v7 = a1[6];
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *v6 = v8;
  *(v6 + 8) = v7;
  return result;
}

void sub_1E3786448()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v76 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v69 = v5;
  v70 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  v73 = v10;
  v74 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v69 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v72 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v71 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29628);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v69 - v29;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34_1();
  if (sub_1E378404C())
  {
    OUTLINED_FUNCTION_30();
    v32 = (*(v31 + 1152))();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 1;
  }

  *v30 = sub_1E4201B84();
  *(v30 + 1) = v32;
  v30[16] = v34 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29630);
  sub_1E3786980();
  sub_1E3741EA0(v30, v0, &qword_1ECF29628);
  if (*(v2 + 248))
  {

    v35 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v36 = v70;
    sub_1E3883AF4(v35);
    (*(v69 + 8))(v8, v36);
    sub_1E4202744();
    v37 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v38)
    {
      v37 = sub_1E4202774();
    }

    if (v35)
    {
      v39 = *(*v35 + 152);

      v39(&v78, v40);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v43 = v72;
    (*(v73 + 32))(v72, v77, v74);
    v42 = v75;
    v44 = (v43 + *(v75 + 36));
    *v44 = v37;
    OUTLINED_FUNCTION_11_4(v44);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v45, v46, v47);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v48, v49, v50);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v42 = v75;
  }

  __swift_storeEnumTagSinglePayload(v24, v41, 1, v42);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v51, v52, v53);
  v54 = OUTLINED_FUNCTION_39_3();
  sub_1E3743538(v54, v55, &qword_1ECF295B8);
  v56 = v76;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v57, v58, v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29638);
  sub_1E3743538(v21, v56 + *(v60 + 48), &qword_1ECF295B8);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v61, v62);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v63, v64);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v65, v66);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v67, v68);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3786980()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29640);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29648);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295D0);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_8();
  sub_1E3785CDC();
  v28 = v17;
  sub_1E37860F8();
  *v9 = sub_1E4201D54();
  *(v9 + 1) = 0;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29650);
  sub_1E3786C80();
  v30 = v22;
  sub_1E3743538(v0, v22, &qword_1ECF295D0);
  v29 = v14;
  sub_1E3743538(v17, v14, &qword_1ECF29648);
  sub_1E3743538(v9, v6, &qword_1ECF29640);
  v24 = v22;
  v25 = v31;
  sub_1E3743538(v24, v31, &qword_1ECF295D0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29658);
  sub_1E3743538(v14, v25 + v26[12], &qword_1ECF29648);
  sub_1E3743538(v6, v25 + v26[16], &qword_1ECF29640);
  v27 = v25 + v26[20];
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_1E325F69C(v9, &qword_1ECF29640);
  sub_1E325F69C(v28, &qword_1ECF29648);
  sub_1E325F69C(v0, &qword_1ECF295D0);
  sub_1E325F69C(v6, &qword_1ECF29640);
  sub_1E325F69C(v29, &qword_1ECF29648);
  sub_1E325F69C(v30, &qword_1ECF295D0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3786C80()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29660);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v97 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  *&v110 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_8();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v97 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v97 - v34;
  v113 = v3;
  v36 = *(v3 + 216);
  v112 = v33;
  v108 = v0;
  v107 = v5;
  v111 = &v97 - v34;
  v101 = v11;
  v100 = v13;
  if (v36)
  {

    v37 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v98 = v1;
    sub_1E3883AF4(v37);
    (*(v13 + 8))(v16, v11);
    sub_1E4202744();
    v38 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v39)
    {
      v38 = sub_1E4202774();
    }

    v40 = v103;
    if (v37)
    {
      v41 = *(*v37 + 152);
      v42 = v103;

      v41(&v114, v43);
      v33 = v112;
      v40 = v42;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    (*(v110 + 32))(v25, v98, v40);
    v45 = v104;
    v46 = &v25[*(v104 + 36)];
    *v46 = v38;
    OUTLINED_FUNCTION_11_4(v46);
    v47 = v99;
    sub_1E3741EA0(v25, v99, &qword_1ECF295B0);
    v35 = v111;
    sub_1E3741EA0(v47, v111, &qword_1ECF295B0);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v45 = v104;
    v40 = v103;
  }

  v48 = 1;
  OUTLINED_FUNCTION_49_8(v35, v44);
  if (*(v113 + 224))
  {

    v49 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v50 = v101;
    sub_1E3883AF4(v49);
    (*(v100 + 8))(v16, v50);
    sub_1E4202744();
    v51 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v39)
    {
      v51 = sub_1E4202774();
    }

    if (v49)
    {
      v52 = *(*v49 + 152);

      v52(&v115, v53);
      v33 = v112;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v54 = v102;
    (*(v110 + 32))(v102, v109, v40);
    v55 = (v54 + *(v45 + 36));
    *v55 = v51;
    OUTLINED_FUNCTION_11_4(v55);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v56, v57, v58);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v59, v60, v61);
    v48 = 0;
  }

  v62 = 1;
  v63 = OUTLINED_FUNCTION_49_8(v33, v48);
  v64 = *(v113 + 256);
  v65 = 0uLL;
  if (v64)
  {
    if ((*(*v64 + 392))(v63, 0))
    {
      OUTLINED_FUNCTION_30();
      (*(v66 + 152))(&v116);
      v110 = v116;
      v68 = v117;
      v67 = v118;
      v62 = v119;

      v65 = v110;
    }

    else
    {
      v68 = 0;
      v67 = 0;
      v65 = 0uLL;
    }
  }

  else
  {
    v68 = 0;
    v67 = 0;
  }

  v120 = v65;
  v121 = v68;
  v122 = v67;
  v69 = v62 & 1;
  v123 = v69;
  if (v69)
  {
    v70 = 0;
  }

  else
  {
    v70 = v67;
  }

  v71 = sub_1E4201B84();
  v72 = v105;
  *v105 = v71;
  v72[1] = v70;
  *(v72 + 16) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29668);
  sub_1E3787570();
  v73 = v72;
  v74 = v106;
  sub_1E3741EA0(v73, v106, &qword_1ECF29660);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v75, v76, v77);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v78, v79, v80);
  v81 = v108;
  sub_1E3743538(v74, v108, &qword_1ECF29660);
  OUTLINED_FUNCTION_12_19();
  sub_1E3743538(v82, v83, v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29670);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v86, v87, v88);
  sub_1E3743538(v81, &qword_1ECF29660 + *(v85 + 64), &qword_1ECF29660);
  sub_1E325F69C(v74, &qword_1ECF29660);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v89, v90);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v91, v92);
  sub_1E325F69C(v81, &qword_1ECF29660);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v93, v94);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v95, v96);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3787570()
{
  OUTLINED_FUNCTION_9_4();
  *&v79 = v2;
  v4 = v3;
  v89 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v81 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v77 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  v85 = v11;
  v86 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v77 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v83 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v82 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v88 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29610);
  OUTLINED_FUNCTION_17_2(v24);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_26_2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29678);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29680);
  v30 = OUTLINED_FUNCTION_17_2(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_6();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v77 - v35;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v78 = v6;
    v37 = v4;
    sub_1E3787BCC(v0);
    v38 = sub_1E4202744();
    v39 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v38)
    {
      v39 = sub_1E4202774();
    }

    v40 = *(v79 + 32);
    v41 = 0uLL;
    v42 = 0uLL;
    if ((v40 & 1) == 0)
    {
      sub_1E4200A54();
      *(&v42 + 1) = v43;
      *(&v41 + 1) = v44;
    }

    v77 = v42;
    v79 = v41;
    sub_1E3741EA0(v0, v1, &qword_1ECF29610);
    v45 = v1 + *(v26 + 36);
    *v45 = v39;
    *(v45 + 24) = v77;
    *(v45 + 8) = v79;
    *(v45 + 40) = v40 & 1;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v46, v47, v48);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v49, v50, v51);
    v52 = 0;
    v6 = v78;
  }

  else
  {
    v37 = v4;
    v52 = 1;
  }

  v53 = 1;
  OUTLINED_FUNCTION_49_8(v36, v52);
  if (*(v37 + 240))
  {

    v54 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    v55 = v80;
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v56 = v84;
    sub_1E3883AF4(v54);
    (*(v81 + 8))(v55, v6);
    sub_1E4202744();
    v57 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v58)
    {
      v57 = sub_1E4202774();
    }

    if (v54)
    {
      v59 = *(*v54 + 152);

      v59(&v90, v60);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v62 = v83;
    (*(v85 + 32))(v83, v56, v86);
    v61 = v87;
    v63 = (v62 + *(v87 + 36));
    *v63 = v57;
    OUTLINED_FUNCTION_11_4(v63);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v64, v65, v66);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v67, v68, v69);
    v53 = 0;
  }

  else
  {
    v61 = v87;
  }

  __swift_storeEnumTagSinglePayload(v23, v53, 1, v61);
  sub_1E3743538(v36, v33, &qword_1ECF29680);
  v70 = v88;
  sub_1E3743538(v23, v88, &qword_1ECF295B8);
  v71 = v89;
  sub_1E3743538(v33, v89, &qword_1ECF29680);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29688);
  sub_1E3743538(v70, v71 + *(v72 + 48), &qword_1ECF295B8);
  v73 = OUTLINED_FUNCTION_39_3();
  sub_1E325F69C(v73, v74);
  v75 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v75, v76);
  sub_1E325F69C(v70, &qword_1ECF295B8);
  sub_1E325F69C(v33, &qword_1ECF29680);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3787BCC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = *(v1 + 256);
  if (v7)
  {
    v8 = *(v1 + 264);

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v7, v8, v6);
    sub_1E3788908(v6, a1, type metadata accessor for TextBadge);
    OUTLINED_FUNCTION_35_9();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_35_9();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

void sub_1E3787CD4()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_5();
  v5 = v4;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29608);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v12 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29610);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29618);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_34_1();
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    sub_1E3787BCC(v18);
    sub_1E3741EA0(v18, v0, &qword_1ECF29610);
  }

  OUTLINED_FUNCTION_35_9();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_1E378802C();
  sub_1E37882B0();
  sub_1E3743538(v0, v23, &qword_1ECF29618);
  v29 = v12;
  sub_1E3743538(v15, v12, &qword_1ECF29608);
  sub_1E3743538(v8, v5, &qword_1ECF29600);
  v30 = v36;
  sub_1E3743538(v23, v36, &qword_1ECF29618);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29620);
  sub_1E3743538(v29, v30 + v31[12], &qword_1ECF29608);
  v32 = v30 + v31[16];
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_1E3743538(v5, v30 + v31[20], &qword_1ECF29600);
  sub_1E325F69C(v8, &qword_1ECF29600);
  sub_1E325F69C(v15, &qword_1ECF29608);
  sub_1E325F69C(v0, &qword_1ECF29618);
  v33 = OUTLINED_FUNCTION_39_3();
  sub_1E325F69C(v33, v34);
  sub_1E325F69C(v29, &qword_1ECF29608);
  sub_1E325F69C(v23, &qword_1ECF29618);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E378802C()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_8();
  if (*(v0 + 272) && (v14 = sub_1E37605C4()) != 0)
  {
    v15 = v14;
    v16 = sub_1E37608FC();
    sub_1E3EB9BB4(v36);
    v17 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v15, v36, v16, v17 & 1, 0, 0, v10);
    sub_1E375C31C(v36);
    if (v16 && (v18 = *(*v16 + 152), v35 = v5, v19 = , v18(&v37, v19), v5 = v35, , (v38 & 1) == 0))
    {
      v25.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v25, v26, v27, v28);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v29 = sub_1E4202734();

    (*(v7 + 32))(v1, v10, v5);
    v30 = (v1 + *(v11 + 36));
    *v30 = v29;
    OUTLINED_FUNCTION_11_4(v30);
    sub_1E3741EA0(v1, v2, &qword_1ECF29240);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v31, v32, v33);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }
}

uint64_t sub_1E37882B0()
{
  type metadata accessor for PlaybackStatus(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v3 = (v2 - v1);
  v4 = sub_1E39C408C(96);
  if (v4)
  {
    sub_1E413D6F4(v4, v3);
    v5 = OUTLINED_FUNCTION_74();
    sub_1E3788908(v5, v6, v7);
    OUTLINED_FUNCTION_35_9();
    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_35_9();

    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }
}

unint64_t sub_1E378838C()
{
  result = qword_1ECF29528;
  if (!qword_1ECF29528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29520);
    sub_1E3788514(&qword_1ECF29530, &unk_1ECF29538, &unk_1E429B620, sub_1E3788470);
    sub_1E3788514(&qword_1ECF29560, &unk_1ECF29568, &unk_1E429B638, sub_1E3788594);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29528);
  }

  return result;
}

unint64_t sub_1E3788470()
{
  result = qword_1ECF29540;
  if (!qword_1ECF29540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29548);
    sub_1E3788638(&qword_1ECF29550, &unk_1ECF29558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29540);
  }

  return result;
}

uint64_t sub_1E3788514(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3788594()
{
  result = qword_1ECF29570;
  if (!qword_1ECF29570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29578);
    sub_1E3788638(&qword_1ECF29580, &unk_1ECF29588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29570);
  }

  return result;
}

uint64_t sub_1E3788638(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E37886CC()
{
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_39_6();
  if (!(!v2 & v1))
  {
    type metadata accessor for ContextMenuModel();
    OUTLINED_FUNCTION_39_6();
    if (!(!v2 & v1))
    {
      sub_1E37888A4(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
      OUTLINED_FUNCTION_39_6();
      if (!(!v2 & v1))
      {
        sub_1E37888A4(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
        if (v4 > 0x3F)
        {
          return v3;
        }

        else
        {
          type metadata accessor for TextBadgePresenter();
          OUTLINED_FUNCTION_39_6();
          if (!(!v2 & v1))
          {
            sub_1E37888A4(319, qword_1EE274498, type metadata accessor for ImageBadgePresenter, MEMORY[0x1E69E6720]);
            OUTLINED_FUNCTION_39_6();
            if (!(!v2 & v1))
            {
              sub_1E37888A4(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
              OUTLINED_FUNCTION_39_6();
              if (!(!v2 & v1))
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1E37888A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E3788908(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

id sub_1E3788970()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1E378ACE0(v1, v2);
  OUTLINED_FUNCTION_43();

  v3 = *(v0 + 16);

  return v3;
}

id sub_1E3788A00@<X0>(void *a1@<X8>)
{
  result = sub_1E3788970();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for TextBadgePresenter()
{
  result = qword_1EE29FEA0;
  if (!qword_1EE29FEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3788AA4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1E3280A90(0, &qword_1EE23AE20);
  v5 = v4;
  v6 = sub_1E4206F64();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_23();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_40();
    *(v9 - 16) = v2;
    *(v9 - 8) = a1;
    sub_1E3788BD4();

    OUTLINED_FUNCTION_9_21();
  }
}

void sub_1E3788BA0()
{
  OUTLINED_FUNCTION_11_25();
  v1 = *(v0 + 16);
  *(v0 + 16) = v2;
  v3 = v2;
}

uint64_t sub_1E3788BD4()
{
  OUTLINED_FUNCTION_0_22();
  sub_1E378ACE0(v0, v1);
  return sub_1E41FE8E4();
}

uint64_t sub_1E3788C7C(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_15_0();
  v4 = *(v1 + 24);
  if (!v4)
  {
    return result;
  }

  v5 = *(*v4 + 1776);

  v7 = v5(v6);
  v8 = *v4;
  if (v7 == 3)
  {
    v9 = (*(v8 + 744))();
    if (!v9)
    {
      v10 = [objc_opt_self() systemPinkColor];
LABEL_9:
      v9 = v10;
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ((*(v8 + 792))() != 11)
  {
    v10 = [objc_opt_self() clearColor];
    goto LABEL_9;
  }

  v9 = (*(*v4 + 744))();
  if (v9)
  {
LABEL_10:
    v12 = v9;
    goto LABEL_11;
  }

  v11 = [objc_opt_self() blackColor];
  v12 = [v11 colorWithAlphaComponent_];

LABEL_11:
  sub_1E3788AA4(v12);
  if (v4 != a1)
  {
    sub_1E3788EB8(0);
  }
}

uint64_t sub_1E3788E58(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;

  sub_1E3788C7C(v3);
}

void sub_1E3788EB8(void *a1)
{
  v2 = v1;
  v4 = sub_1E3789338();
  v5 = v4;
  if (!a1)
  {
    if (!v4)
    {
LABEL_27:
      OUTLINED_FUNCTION_15_25();
      return;
    }

LABEL_9:
    sub_1E37893C0(1);
    v9 = a1;
    sub_1E3789458(a1);
    OUTLINED_FUNCTION_5_0();
    if (*(v2 + 24))
    {
      OUTLINED_FUNCTION_5_0();
      if ((*(v2 + 64) & 1) == 0)
      {
        OUTLINED_FUNCTION_19();
        v36.origin.x = OUTLINED_FUNCTION_2_0();
        if (!CGRectEqualToRect(v36, v38))
        {
          OUTLINED_FUNCTION_15_0();
          if ((*(v2 + 104) & 1) == 0)
          {
            v11 = *(v2 + 88);
            v10 = *(v2 + 96);
            v13 = *(v2 + 72);
            v12 = *(v2 + 80);
            OUTLINED_FUNCTION_19();
            v37.origin.x = v13;
            v37.origin.y = v12;
            v37.size.width = v11;
            v37.size.height = v10;
            if (!CGRectEqualToRect(v37, v39))
            {
              v14 = sub_1E3789338();
              if (v14)
              {
                v15 = v14;
                if (sub_1E378A240())
                {
                  sub_1E378A314(1);
                  v16 = [objc_allocWithZone(VUIOverlayBackgroundMaterialImagesOperation) initWithSourceBackgroundImage_];
                  [v16 setResizedBackgroundImageSize_];
                  v35 = MEMORY[0x1E69E7CC0];
                  sub_1E3280A90(0, &qword_1EE23AF28);
                  OUTLINED_FUNCTION_17();
                  v17 = OUTLINED_FUNCTION_2_0();
                  v21 = [sub_1E378A374(v17 v18];
                  MEMORY[0x1E6910BF0](v21);
                  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1E42062F4();
                  }

                  sub_1E4206324();
                  sub_1E378AAC8(v35, v16);
                  sub_1E3280A90(0, &qword_1EE23B2A0);
                  OUTLINED_FUNCTION_4_0();
                  v22 = swift_allocObject();
                  swift_weakInit();
                  OUTLINED_FUNCTION_2_4();
                  v23 = swift_allocObject();
                  *(v23 + 16) = v22;
                  *(v23 + 24) = v16;
                  v24 = v16;
                  v25 = sub_1E378A448(sub_1E378AB4C, v23);
                  v26 = v24;
                  [v25 addDependency_];
                  v27 = [objc_opt_self() mainQueue];
                  [v27 addOperation_];

                  [*sub_1E41DA684() addOperation_];
                  sub_1E3789AA0(v26);
                  v28 = sub_1E37899BC();
                  if (v28)
                  {
                    v29 = v28;
                    swift_getKeyPath();
                    OUTLINED_FUNCTION_4_0();
                    swift_allocObject();
                    swift_weakInit();
                    v30 = OUTLINED_FUNCTION_13_31();
                  }

                  else
                  {
                    v30 = 0;
                  }

                  sub_1E3789CB4(v30);
                  v31 = sub_1E37899BC();
                  if (v31)
                  {
                    v32 = v31;
                    swift_getKeyPath();
                    OUTLINED_FUNCTION_4_0();
                    swift_allocObject();
                    swift_weakInit();
                    v33 = OUTLINED_FUNCTION_13_31();
                  }

                  else
                  {
                    v33 = 0;
                  }

                  sub_1E3789E64(v33);
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  sub_1E3280A90(0, &qword_1EE23AE00);
  v34 = a1;
  v6 = sub_1E4206F64();

  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_15_25();
}

void *sub_1E3789338()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1E378ACE0(v1, v2);
  OUTLINED_FUNCTION_43();

  v3 = *(v0 + 128);
  v4 = v3;
  return v3;
}