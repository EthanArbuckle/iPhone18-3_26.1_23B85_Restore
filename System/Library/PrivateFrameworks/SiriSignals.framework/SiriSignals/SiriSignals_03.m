void sub_2314D0350(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 8 * v1);

    v8 = sub_2314D045C(v7);
    ++v1;
    if (v9)
    {
      v11 = v8;
      v12 = v9;
      v13 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v4 + 16);
        sub_2314F15A4();
        v4 = v17;
      }

      v14 = *(v4 + 16);
      if (v14 >= *(v4 + 24) >> 1)
      {
        sub_2314F15A4();
        v4 = v18;
      }

      *(v4 + 16) = v14 + 1;
      v15 = (v4 + 24 * v14);
      v15[4] = v11;
      v15[5] = v12;
      v15[6] = v13;
      v1 = v5;
    }
  }
}

uint64_t sub_2314D045C(uint64_t a1)
{
  sub_2315868E4();
  sub_231566B94(v9, a1, v10);
  sub_2314D5E98(v9);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v2 = 0x4449656C646E7562;
      sub_2314B676C();
      v3 = 0;
      v9[0] = sub_2315860F4();
      while (v3 != 7)
      {
        v10[0] = *(&unk_284610900 + v3 + 32);
        sub_2314D348C(v9, v10, a1);
        ++v3;
      }

      return v2;
    }
  }

  else
  {

    sub_2314A2910(v10, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v4 = sub_231585FF4();
  __swift_project_value_buffer(v4, qword_280D72248);
  v5 = sub_231585FE4();
  v6 = sub_2315865E4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_231496000, v5, v6, "No bundleID", v7, 2u);
    MEMORY[0x231931280](v7, -1, -1);
  }

  return 0;
}

uint64_t sub_2314D0694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v73[1] = a1;
  v73[2] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B330, &qword_231589378);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_11_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v73 - v13;
  v15 = type metadata accessor for BiomeQueriesNowPlaying.CachedCountsAggregation(0);
  v16 = OUTLINED_FUNCTION_8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_231585884();
  v74 = OUTLINED_FUNCTION_4_1(v22);
  v75 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = *(v4 + 64);
  v30 = *(v4 + 72);
  v31 = v28;
  v29();
  v32 = OBJC_IVAR____TtC11SiriSignals22BiomeQueriesNowPlaying_cacheCountAggregation;
  swift_beginAccess();
  sub_2314A1D9C(v5 + v32, v14, &qword_27DD5B330, &qword_231589378);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2314A2910(v14, &qword_27DD5B330, &qword_231589378);
LABEL_16:
    v39 = sub_2314D2E7C(v76, a4, 4476481);
    v41 = v74;
    if (v40 || !a4)
    {
      v42 = sub_2314CF730(v39, v40);

      (*(v75 + 16))(v11, v31, v41);
      v43 = (v11 + *(v15 + 20));
      *v43 = v76;
      v43[1] = a4;
      *(v11 + *(v15 + 24)) = v42;
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
      swift_beginAccess();

      sub_2314D5EEC(v11, v5 + v32);
      swift_endAccess();
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v44 = sub_231585FF4();
      OUTLINED_FUNCTION_1_4(v44, qword_280D72248);

      v45 = sub_231585FE4();
      v46 = sub_2315865D4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = v31;
        v48 = OUTLINED_FUNCTION_22();
        v49 = OUTLINED_FUNCTION_47();
        v77 = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_2314A22E8();
        OUTLINED_FUNCTION_26();
        _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        OUTLINED_FUNCTION_37();
        v56 = v47;
LABEL_25:
        v55(v56, v41);
        return v42;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2E8, &unk_23158B460);
      sub_2314B676C();
      v42 = sub_2315860F4();
    }

    OUTLINED_FUNCTION_37();
    v56 = v31;
    goto LABEL_25;
  }

  sub_2314D5F5C(v14, v21, type metadata accessor for BiomeQueriesNowPlaying.CachedCountsAggregation);
  v33 = (v21 + *(v15 + 20));
  v34 = v33[1];
  if (v34)
  {
    if (!a4)
    {
      goto LABEL_15;
    }

    v35 = *v33 == v76 && v34 == a4;
    if (!v35 && (sub_231586C44() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (a4)
  {
LABEL_15:
    OUTLINED_FUNCTION_14_2();
    sub_2314D5FBC(v21, v38);
    goto LABEL_16;
  }

  if (qword_280D6F480 != -1)
  {
    swift_once();
  }

  v36 = qword_280D6F488;
  sub_231585864();
  if (fabs(v37) > v36)
  {
    goto LABEL_15;
  }

  v58 = v21;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v59 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v59, qword_280D72248);

  v60 = sub_231585FE4();
  v61 = sub_2315865D4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = v31;
    v63 = OUTLINED_FUNCTION_22();
    v64 = OUTLINED_FUNCTION_47();
    v77 = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_2314A22E8();
    OUTLINED_FUNCTION_26();
    _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    OUTLINED_FUNCTION_37();
    v71 = v62;
  }

  else
  {

    OUTLINED_FUNCTION_37();
    v71 = v31;
  }

  v70(v71, v74);
  v42 = *(v58 + *(v15 + 24));

  OUTLINED_FUNCTION_14_2();
  sub_2314D5FBC(v58, v72);
  return v42;
}

uint64_t sub_2314D0C64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = 0;
  v5 = sub_2314D0694(0x676E69726F6373, 0xE700000000000000, a1, a2);
  if (*(v5 + 16))
  {
    goto LABEL_17;
  }

  v6 = MEMORY[0x277D84F90];

  v117 = v6;
  sub_23152D658();
  v7 = 0;
  v8 = v6;
  v9 = *(v3 + 16);
  v10 = *(v9 + 16);
  v107 = (v9 + 40);
  v109 = v10;
  do
  {
    v11 = byte_28460FCD0[v7 + 32];
    if (v10)
    {
      v114 = byte_28460FCD0[v7 + 32];
      v111 = v8;
      v116 = v6;
      sub_23152D678();
      v12 = v116;
      v13 = v107;
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v116 = v12;
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_23152D678();
          v12 = v116;
        }

        *(v12 + 16) = v17 + 1;
        v18 = (v12 + 24 * v17);
        v18[4] = v14;
        v18[5] = v15;
        v18[6] = 0;
        v13 += 2;
        --v10;
      }

      while (v10);
      v4 = 0;
      v6 = MEMORY[0x277D84F90];
      v8 = v111;
      goto LABEL_11;
    }

    if (*(v6 + 16))
    {
      v114 = byte_28460FCD0[v7 + 32];
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
      v19 = sub_231586AE4();
      v11 = v114;
      goto LABEL_12;
    }

    v19 = MEMORY[0x277D84F98];
LABEL_12:
    v116 = v19;

    sub_2314D470C(v20, 1, &v116);

    v21 = v116;
    v117 = v8;
    v23 = *(v8 + 16);
    v22 = *(v8 + 24);
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_18(v22);
      sub_23152D658();
      v8 = v117;
    }

    ++v7;
    *(v8 + 16) = v23 + 1;
    v24 = v8 + 16 * v23;
    *(v24 + 32) = v11;
    *(v24 + 40) = v21;
    v10 = v109;
  }

  while (v7 != 8);
  v5 = sub_231507610(v8);
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B308, &qword_231589338);
  v25 = sub_2315860F4();
  v26 = 0;
  v27 = v5 + 64;
  v28 = 1 << *(v5 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(v5 + 64);
  v31 = (v28 + 63) >> 6;
  v100 = v31;
  v101 = v5 + 64;
  v102 = v5;
  if (v30)
  {
LABEL_21:
    v105 = v4;
    v32 = v26;
LABEL_26:
    v33 = __clz(__rbit64(v30)) | (v32 << 6);
    v110 = *(*(v5 + 48) + v33);
    v34 = *(*(v5 + 56) + 8 * v33);
    v103 = (v30 - 1) & v30;
    v35 = v34 + 64;
    v36 = 1 << *(v34 + 32);
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & *(v34 + 64);
    v39 = (v36 + 63) >> 6;
    v106 = v34;

    v40 = 0;
    v104 = v39;
    if (v38)
    {
      goto LABEL_34;
    }

LABEL_30:
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v39)
      {

        v26 = v32;
        v4 = v105;
        v27 = v101;
        v5 = v102;
        v31 = v100;
        v30 = v103;
        if (!v103)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v38 = *(v35 + 8 * v41);
      ++v40;
      if (v38)
      {
        v40 = v41;
        while (1)
        {
LABEL_34:
          v42 = __clz(__rbit64(v38)) | (v40 << 6);
          v43 = (*(v106 + 48) + 16 * v42);
          v45 = *v43;
          v44 = v43[1];
          v108 = *(*(v106 + 56) + 8 * v42);
          v46 = *(v25 + 16);

          v112 = v45;
          if (v46 && (v47 = sub_23149C888(v45, v44), (v48 & 1) != 0))
          {
            v49 = *(*(v25 + 56) + 8 * v47);
          }

          else
          {
            sub_2314B676C();
            v49 = sub_2315860F4();
          }

          swift_isUniquelyReferenced_nonNull_native();
          v117 = v49;
          sub_231574C34(v110);
          OUTLINED_FUNCTION_5_2();
          if (__OFADD__(v52, v53))
          {
            goto LABEL_74;
          }

          v54 = v50;
          v55 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B310, &unk_231589340);
          OUTLINED_FUNCTION_41();
          if (sub_231586A64())
          {
            sub_231574C34(v110);
            OUTLINED_FUNCTION_24_1();
            if (!v57)
            {
              goto LABEL_79;
            }

            v54 = v56;
          }

          v58 = v117;
          if (v55)
          {
            *(v117[7] + 8 * v54) = v108;
          }

          else
          {
            OUTLINED_FUNCTION_6_8(&v117[v54 >> 6]);
            *(v58[6] + v54) = v110;
            *(v58[7] + 8 * v54) = v108;
            v59 = v58[2];
            v60 = __OFADD__(v59, 1);
            v61 = v59 + 1;
            if (v60)
            {
              goto LABEL_76;
            }

            v58[2] = v61;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v117 = v25;
          sub_23149C888(v112, v44);
          v62 = *(v25 + 16);
          OUTLINED_FUNCTION_17_2();
          if (__OFADD__(v65, v66))
          {
            goto LABEL_75;
          }

          v67 = v63;
          v68 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B318, &qword_23158C820);
          OUTLINED_FUNCTION_41();
          if (sub_231586A64())
          {
            sub_23149C888(v112, v44);
            OUTLINED_FUNCTION_24_1();
            if (!v57)
            {
              goto LABEL_79;
            }

            v67 = v69;
            if ((v68 & 1) == 0)
            {
LABEL_52:
              v25 = v117;
              OUTLINED_FUNCTION_6_8(&v117[v67 >> 6]);
              v70 = (*(v25 + 48) + 16 * v67);
              *v70 = v112;
              v70[1] = v44;
              *(*(v25 + 56) + 8 * v67) = v58;
              v71 = *(v25 + 16);
              v60 = __OFADD__(v71, 1);
              v72 = v71 + 1;
              if (v60)
              {
                goto LABEL_77;
              }

              *(v25 + 16) = v72;
              goto LABEL_56;
            }
          }

          else if ((v68 & 1) == 0)
          {
            goto LABEL_52;
          }

          v25 = v117;
          v73 = v117[7];
          v74 = *(v73 + 8 * v67);
          *(v73 + 8 * v67) = v58;

LABEL_56:
          v38 &= v38 - 1;
          v39 = v104;
          if (!v38)
          {
            goto LABEL_30;
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B320, &unk_231589350);
        v75 = sub_231586AC4();
        v76 = 0;
        v77 = *(v25 + 64);
        v78 = *(v25 + 32);
        OUTLINED_FUNCTION_3_0();
        v81 = v80 & v79;
        v83 = (v82 + 63) >> 6;
        v113 = v84 + 8;
        v115 = v84;
        if ((v80 & v79) == 0)
        {
LABEL_62:
          v86 = v76;
          while (1)
          {
            v76 = v86 + 1;
            if (__OFADD__(v86, 1))
            {
              goto LABEL_73;
            }

            if (v76 >= v83)
            {

              return v75;
            }

            ++v86;
            if (*(v25 + 64 + 8 * v76))
            {
              OUTLINED_FUNCTION_9_0();
              v81 = v88 & v87;
              goto LABEL_67;
            }
          }
        }

        while (1)
        {
          v85 = __clz(__rbit64(v81));
          v81 &= v81 - 1;
LABEL_67:
          v89 = v85 | (v76 << 6);
          v90 = (*(v25 + 48) + 16 * v89);
          v92 = *v90;
          v91 = v90[1];
          v93 = *(*(v25 + 56) + 8 * v89);
          type metadata accessor for Aggregation();
          swift_allocObject();

          v95 = sub_2314B53E8(v94);
          v75 = v115;
          *(v113 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
          v96 = (v115[6] + 16 * v89);
          *v96 = v92;
          v96[1] = v91;
          *(v115[7] + 8 * v89) = v95;
          v97 = v115[2];
          v60 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v60)
          {
            goto LABEL_78;
          }

          v115[2] = v98;
          if (!v81)
          {
            goto LABEL_62;
          }
        }
      }

      v30 = *(v27 + 8 * v32);
      ++v26;
      if (v30)
      {
        v105 = v4;
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_79:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314D13BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_2314D0694(0x6C61746F74, 0xE500000000000000, a1, a2);
  v12 = sub_2315860F4();
  v6 = *(v5 + 64);
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_40();

  for (i = 0; v4; i = v9)
  {
    v9 = i;
LABEL_6:
    OUTLINED_FUNCTION_22_3();
    v11 = v2;

    sub_2314D1650(&v12, &v11);
    v4 &= v4 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v3)
    {

      return v12;
    }

    v4 = *(v5 + 64 + 8 * v9);
    ++i;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2314D1500(uint64_t a1, uint64_t a2)
{
  v4 = sub_2314D0694(0x796144656E6FLL, 0xE600000000000000, a1, a2);
  v5 = sub_2314D49D0(v4);

  v12 = sub_2315860F4();
  v6 = *(v5 + 64);
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_40();

  for (i = 0; v3; i = v9)
  {
    v9 = i;
LABEL_6:
    OUTLINED_FUNCTION_22_3();
    v11 = v4;

    sub_2314D1650(&v12, &v11);
    v3 &= v3 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v2)
    {

      return v12;
    }

    v3 = *(v5 + 64 + 8 * v9);
    ++i;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2314D1650(void *a1, uint64_t a2)
{
  v3 = *a2 + 64;
  v4 = *(*a2 + 32);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v42 = v10;

  v11 = 0;
  v40 = v3;
  v41 = a1;
  v39 = v9;
  if (v7)
  {
LABEL_6:
    while (1)
    {
      v13 = __clz(__rbit64(v7)) | (v11 << 6);
      v14 = (*(v42 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v42 + 56) + 8 * v13);
      v18 = *a1;
      v19 = *(*a1 + 16);

      v43 = v15;
      if (!v19)
      {
        goto LABEL_9;
      }

      v20 = sub_23149C888(v15, v16);
      if (v21)
      {
        v22 = *(*(v18 + 56) + 8 * v20);
      }

      else
      {
LABEL_9:
        v22 = 0;
      }

      v23 = v22 + v17;
      if (__OFADD__(v22, v17))
      {
        break;
      }

      v24 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v44 = *a1;
      sub_23149C888(v43, v16);
      OUTLINED_FUNCTION_5_2();
      if (__OFADD__(v27, v28))
      {
        goto LABEL_24;
      }

      v29 = v25;
      v30 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v31 = sub_23149C888(v43, v16);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_26;
        }

        v29 = v31;
      }

      if (v30)
      {

        v33 = v44;
        *(v44[7] + 8 * v29) = v23;
      }

      else
      {
        OUTLINED_FUNCTION_27_0();
        v34 = (v33[6] + 16 * v29);
        *v34 = v43;
        v34[1] = v16;
        *(v33[7] + 8 * v29) = v23;
        v35 = v33[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_25;
        }

        v33[2] = v37;
      }

      v7 &= v7 - 1;
      v3 = v40;
      a1 = v41;
      *v41 = v33;
      v9 = v39;
      if (!v7)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v7 = *(v3 + 8 * v12);
      ++v11;
      if (v7)
      {
        v11 = v12;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314D187C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a3;
  v5 = sub_231585884();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2F0, &qword_231589310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_11_0();
  v149 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v148 - v19;
  v21 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  v22 = OUTLINED_FUNCTION_8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_0();
  v150 = v25 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v151 = v148 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v148 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v148 - v33;
  if (qword_27DD5AD20 != -1)
  {
LABEL_85:
    swift_once();
  }

  v156 = a1;
  v157 = a2;
  sub_2314D3978(a1, a2, v20);

  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v152 = v21;
    sub_2314A2910(v20, &qword_27DD5B2F0, &qword_231589310);
  }

  else
  {
    OUTLINED_FUNCTION_4_6();
    v36 = sub_2314D5F5C(v20, v34, v35);
    v37 = *(v154 + 72);
    (*(v154 + 64))(v36);
    if (qword_27DD5AD38 != -1)
    {
      swift_once();
    }

    v38 = qword_27DD5B2D0;
    sub_231585864();
    v40 = fabs(v39);
    (*(v8 + 8))(v13, v5);
    if (v40 <= v38)
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v88 = sub_231585FF4();
      OUTLINED_FUNCTION_1_4(v88, qword_280D72248);
      OUTLINED_FUNCTION_5_7();
      sub_2314D609C(v34, v32, v89);

      v90 = sub_231585FE4();
      v91 = sub_2315865D4();

      v92 = os_log_type_enabled(v90, v91);
      v93 = v153;
      if (v92)
      {
        v94 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *v94 = 136315394;
        *(v94 + 4) = sub_2314A22E8();
        *(v94 + 12) = 2080;
        sub_2314D26FC();
        OUTLINED_FUNCTION_0_10();
        sub_2314D5FBC(v32, v95);
        v96 = sub_2314A22E8();

        *(v94 + 14) = v96;
        _os_log_impl(&dword_231496000, v90, v91, "BiomeQueriesNowPlaying.getUserTimeWindows(%s) [cached]: %s", v94, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        OUTLINED_FUNCTION_0_10();
        sub_2314D5FBC(v32, v144);
      }

      OUTLINED_FUNCTION_4_6();
      v139 = v34;
      return sub_2314D5F5C(v139, v93, v138);
    }

    v152 = v21;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v41 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v41, qword_280D72248);

    v42 = sub_231585FE4();
    v43 = sub_2315865D4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_22();
      v45 = OUTLINED_FUNCTION_47();
      v159 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v42, v43, "BiomeQueriesNowPlaying.getUserTimeWindows(%s) cached but stale", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_0_10();
    sub_2314D5FBC(v34, v46);
  }

  v47 = v153;
  v159 = 0;
  v160 = 0xE000000000000000;
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000002ALL, 0x8000000231591290);
  MEMORY[0x23192FF80](0xD000000000000013, 0x80000002315912C0);
  MEMORY[0x23192FF80](0xD000000000000025, 0x80000002315912E0);
  v158 = 3000;
  v48 = sub_231586C24();
  MEMORY[0x23192FF80](v48);

  v49 = v160;
  v50 = *(v154 + 48);
  v51 = *(v154 + 56);
  __swift_project_boxed_opaque_existential_1((v154 + 24), v50);
  v52 = *(v51 + 8);
  OUTLINED_FUNCTION_23_2();
  v58 = v57(v53, v54, v55, v56);
  v5 = sub_23156A2DC(v58);
  v59 = *(v5 + 16);
  if (v59 >= 0xBB8)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v60 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v60, qword_280D72248);
    v61 = sub_231585FE4();
    v62 = sub_2315865E4();
    if (OUTLINED_FUNCTION_10_0(v62))
    {
      v63 = OUTLINED_FUNCTION_22();
      *v63 = 134217984;
      *(v63 + 4) = 3000;
      _os_log_impl(&dword_231496000, v61, v50, "BiomeQueriesNowPlaying.getUserTimeWindows reached max records limit [%ld]; results are truncated so dependent queries will be inaccurate", v63, 0xCu);
      OUTLINED_FUNCTION_10();
    }

    v59 = *(v5 + 16);
  }

  if (v59)
  {
    v159 = v5;
    v64 = *(v5 + 32);
    v13 = *(v5 + 40);
    v65 = *(v5 + 48);

    sub_2314D5D18(0, 1);
    a1 = v159;
    v66 = *(v159 + 16);
    if (v66)
    {
      v148[0] = v5;
      v148[1] = v58;
      *&v155 = v49;
      v34 = MEMORY[0x277D84F90];
      do
      {
        v67 = *(a1 + 32);
        v68 = *(a1 + 40);
        v5 = *(a1 + 48);

        if (!swift_isUniquelyReferenced_nonNull_native() || (v66 - 1) > *(a1 + 24) >> 1)
        {
          sub_2314F0DD4();
          a1 = v69;
        }

        sub_2314D5E68(a1 + 32);
        v70 = *(a1 + 16);
        memmove((a1 + 32), (a1 + 56), 24 * v70 - 24);
        *(a1 + 16) = v70 - 1;
        if (qword_27DD5AD28 != -1)
        {
          OUTLINED_FUNCTION_15_2();
          swift_once();
        }

        if (v64 + qword_27DD600C0 >= v67)
        {
          v71 = v67;
        }

        else
        {
          v71 = v64 + qword_27DD600C0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = *(v34 + 2);
          OUTLINED_FUNCTION_19_2();
          sub_2314F0CFC();
          v34 = v76;
        }

        v73 = *(v34 + 2);
        v72 = *(v34 + 3);
        if (v73 >= v72 >> 1)
        {
          OUTLINED_FUNCTION_18(v72);
          sub_2314F0CFC();
          v34 = v77;
        }

        *(v34 + 2) = v73 + 1;
        v74 = &v34[32 * v73];
        *(v74 + 4) = v13;
        *(v74 + 5) = v65;
        *(v74 + 6) = v64;
        *(v74 + 7) = v71;
        v66 = *(a1 + 16);
        v13 = v68;
        v65 = v5;
        v64 = v67;
      }

      while (v66);

      v13 = v68;
      v65 = v5;
      v64 = v67;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    if (qword_27DD5AD28 != -1)
    {
      OUTLINED_FUNCTION_15_2();
      swift_once();
    }

    v97 = qword_27DD600C0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = *(v34 + 2);
      OUTLINED_FUNCTION_19_2();
      sub_2314F0CFC();
      v34 = v146;
    }

    v98 = v64 + v97;
    v100 = *(v34 + 2);
    v99 = *(v34 + 3);
    if (v100 >= v99 >> 1)
    {
      OUTLINED_FUNCTION_18(v99);
      sub_2314F0CFC();
      v34 = v147;
    }

    *(v34 + 2) = v100 + 1;
    v101 = &v34[32 * v100];
    *(v101 + 4) = v13;
    *(v101 + 5) = v65;
    *(v101 + 6) = v64;
    *(v101 + 7) = v98;
    v20 = sub_2314D2BD0(v34);
    a2 = 0;
    v21 = -*(v20 + 2);
    v32 = MEMORY[0x277D84F90];
LABEL_51:
    v8 = a2 + 1;
    v102 = 32 * a2;
    while (v21 + v8 != 1)
    {
      a2 = v8;
      if ((v8 - 1) >= *(v20 + 2))
      {
        __break(1u);
        goto LABEL_85;
      }

      v13 = *&v20[v102 + 32];
      v5 = *&v20[v102 + 40];
      v155 = *&v20[v102 + 48];
      if (v13 == v156 && v5 == v157)
      {
        v13 = v156;
LABEL_61:

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v158 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v105 = *(v32 + 2);
          sub_23152D638();
          v32 = v158;
        }

        v107 = *(v32 + 2);
        v106 = *(v32 + 3);
        v108 = v107 + 1;
        if (v107 >= v106 >> 1)
        {
          OUTLINED_FUNCTION_18(v106);
          v111 = v110;
          sub_23152D638();
          v108 = v111;
          v32 = v158;
        }

        *(v32 + 2) = v108;
        v109 = &v32[32 * v107];
        *(v109 + 4) = v13;
        *(v109 + 5) = v5;
        *(v109 + 3) = v155;
        goto LABEL_51;
      }

      ++v8;
      v102 += 32;
      if (sub_231586C44())
      {
        goto LABEL_61;
      }
    }

    v112 = *(v32 + 2);
    v113 = v151;
    if (v112)
    {
      v158 = MEMORY[0x277D84F90];
      sub_23152D618(0, v112, 0);
      v114 = v158;
      v115 = *(v158 + 16);
      v116 = 48;
      do
      {
        v117 = *&v32[v116];
        v158 = v114;
        v118 = *(v114 + 24);
        if (v115 >= v118 >> 1)
        {
          v119 = OUTLINED_FUNCTION_18(v118);
          v155 = v120;
          sub_23152D618(v119, v115 + 1, 1);
          v117 = v155;
          v114 = v158;
        }

        *(v114 + 16) = v115 + 1;
        *(v114 + 16 * v115 + 32) = v117;
        v116 += 32;
        ++v115;
        --v112;
      }

      while (v112);
    }

    else
    {

      v114 = MEMORY[0x277D84F90];
    }

    v122 = *(v154 + 72);
    (*(v154 + 64))(v121);
    v123 = v152;
    v124 = (v113 + *(v152 + 20));
    v125 = v156;
    v126 = v157;
    *v124 = v156;
    v124[1] = v126;
    *(v113 + *(v123 + 24)) = v114;
    OUTLINED_FUNCTION_5_7();
    v127 = v149;
    sub_2314D609C(v113, v149, v128);
    __swift_storeEnumTagSinglePayload(v127, 0, 1, v123);
    swift_bridgeObjectRetain_n();

    sub_2314D3A04(v127, v125, v126);

    v93 = v153;
    v129 = v150;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v130 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v130, qword_280D72248);
    OUTLINED_FUNCTION_5_7();
    sub_2314D609C(v113, v129, v131);

    v132 = sub_231585FE4();
    v133 = sub_2315865D4();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *v134 = 136315394;
      *(v134 + 4) = sub_2314A22E8();
      *(v134 + 12) = 2080;
      sub_2314D26FC();
      OUTLINED_FUNCTION_0_10();
      sub_2314D5FBC(v129, v135);
      v136 = sub_2314A22E8();

      *(v134 + 14) = v136;
      _os_log_impl(&dword_231496000, v132, v133, "BiomeQueriesNowPlaying.getUserTimeWindows(%s) [queried]: %s", v134, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      OUTLINED_FUNCTION_0_10();
      sub_2314D5FBC(v129, v137);
    }

    OUTLINED_FUNCTION_4_6();
    v139 = v113;
    return sub_2314D5F5C(v139, v93, v138);
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v78 = MEMORY[0x277D84F90];
  v79 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v79, qword_280D72248);
  v80 = v157;

  v81 = sub_231585FE4();
  v82 = sub_2315865E4();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = OUTLINED_FUNCTION_22();
    v84 = OUTLINED_FUNCTION_47();
    v159 = v84;
    *v83 = 136315138;
    v85 = v156;
    *(v83 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v81, v82, "BiomeQueriesNowPlaying.getUserTimeWindows(%s): No records.", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    v85 = v156;
  }

  v140 = *(v154 + 72);
  (*(v154 + 64))(v86, v87);
  v141 = v152;
  v142 = (v47 + *(v152 + 20));
  *v142 = v85;
  v142[1] = v80;
  *(v47 + *(v141 + 24)) = v78;
}

uint64_t sub_2314D26FC()
{
  v1 = v0;
  sub_231586954();
  v2 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  v6 = *(*(v0 + *(v2 + 24)) + 16);
  v3 = sub_231586C24();

  MEMORY[0x23192FF80](0x73776F646E697720, 0xEE0020726F66202CLL);
  MEMORY[0x23192FF80](*(v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 8));
  MEMORY[0x23192FF80](0x656972657571202CLL, 0xED00002074612064);
  sub_23149C774();
  v4 = sub_231586C24();
  MEMORY[0x23192FF80](v4);

  return v3;
}

void sub_2314D283C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 8 * v1);

    v8 = sub_2314D2948(v7);
    ++v1;
    if (v10)
    {
      v11 = v8;
      v12 = v9;
      v13 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v4 + 16);
        sub_2314F0DD4();
        v4 = v17;
      }

      v14 = *(v4 + 16);
      if (v14 >= *(v4 + 24) >> 1)
      {
        sub_2314F0DD4();
        v4 = v18;
      }

      *(v4 + 16) = v14 + 1;
      v15 = (v4 + 24 * v14);
      v15[4] = v11;
      v15[5] = v12;
      v15[6] = v13;
      v1 = v5;
    }
  }
}

uint64_t sub_2314D2948(uint64_t a1)
{
  strcpy(v13, "sharedUserId");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  sub_2315868E4();
  sub_231566B94(v14, a1, &v15);
  sub_2314D5E98(v14);
  if (!v16)
  {

    sub_2314A2910(&v15, &qword_27DD5B218, &unk_23158A010);
    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_46() & 1) == 0)
  {

LABEL_8:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v3 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v3, qword_280D72248);
    v4 = sub_231585FE4();
    v5 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_10_0(v5))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  strcpy(v13, "eventTimestamp");
  HIBYTE(v13[1]) = -18;
  sub_2315868E4();
  sub_231566B94(v14, a1, &v15);

  sub_2314D5E98(v14);
  if (v16)
  {
    if (OUTLINED_FUNCTION_46())
    {
      return v13[0];
    }
  }

  else
  {

    sub_2314A2910(&v15, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v6 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v6, qword_280D72248);
  v4 = sub_231585FE4();
  v7 = sub_2315865E4();
  if (OUTLINED_FUNCTION_10_0(v7))
  {
LABEL_17:
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_10();
  }

LABEL_18:

  return 0;
}

uint64_t sub_2314D2BD0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v29 = a1;

  v5 = 0;
  sub_2314D52C4(&v29);
  if (*(v29 + 16))
  {
    v1 = *(v29 + 32);
    v5 = *(v29 + 40);
    v4 = *(v29 + 48);
    v3 = *(v29 + 56);

    sub_2314D5C3C(0, 1);
    v6 = *(v29 + 16);
    if (v6)
    {
      v7 = (v29 + 56);
      v2 = MEMORY[0x277D84F90];
      v8 = v3;
      v9 = v4;
      v10 = v1;
      v11 = v5;
      while (1)
      {
        v1 = *(v7 - 3);
        v5 = *(v7 - 2);
        v4 = *(v7 - 1);
        v3 = *v7;
        if (v1 != v10 || v5 != v11)
        {
          v13 = *(v7 - 3);
          v14 = *(v7 - 2);
          if ((sub_231586C44() & 1) == 0)
          {
            break;
          }
        }

        v15 = qword_27DD5AD18;

        if (v15 != -1)
        {
          swift_once();
        }

        if (vabdd_f64(v4, v8) >= *&qword_27DD5B2C0)
        {
          goto LABEL_15;
        }

        v4 = v9;
        v1 = v10;
        v5 = v11;
LABEL_22:
        v7 += 4;
        v8 = v3;
        if (!--v6)
        {
          goto LABEL_26;
        }
      }

LABEL_15:
      if (v4 < v8)
      {
        v8 = v4;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v2 + 16);
        OUTLINED_FUNCTION_19_2();
        sub_2314F0CFC();
        v2 = v20;
      }

      v17 = *(v2 + 16);
      v16 = *(v2 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_18(v16);
        sub_2314F0CFC();
        v2 = v21;
      }

      *(v2 + 16) = v17 + 1;
      v18 = v2 + 32 * v17;
      *(v18 + 32) = v10;
      *(v18 + 40) = v11;
      *(v18 + 48) = v9;
      *(v18 + 56) = v8;
      v9 = v4;
      v10 = v1;
      v11 = v5;
      goto LABEL_22;
    }

    v2 = MEMORY[0x277D84F90];
LABEL_26:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  v26 = *(v2 + 16);
  OUTLINED_FUNCTION_19_2();
  sub_2314F0CFC();
  v2 = v27;
LABEL_27:
  v23 = *(v2 + 16);
  v22 = *(v2 + 24);
  if (v23 >= v22 >> 1)
  {
    OUTLINED_FUNCTION_18(v22);
    sub_2314F0CFC();
    v2 = v28;
  }

  *(v2 + 16) = v23 + 1;
  v24 = v2 + 32 * v23;
  *(v24 + 32) = v1;
  *(v24 + 40) = v5;
  *(v24 + 48) = v4;
  *(v24 + 56) = v3;
  return v2;
}

uint64_t sub_2314D2E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (a2)
  {
    sub_2314D187C(a1, a2, v11 - v10);
    if (*(*(v12 + *(v6 + 24)) + 16))
    {

      MEMORY[0x23192FF80](32, 0xE100000000000000);
      v13 = sub_2314D2F8C();
      MEMORY[0x23192FF80](v13);

      a1 = a3;
    }

    else
    {
      a1 = 0;
    }

    OUTLINED_FUNCTION_0_10();
    sub_2314D5FBC(v12, v14);
  }

  return a1;
}

uint64_t sub_2314D2F8C()
{
  v1 = *(v0 + *(type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0) + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_23152D598();
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      sub_231586954();
      MEMORY[0x23192FF80](0xD000000000000013, 0x8000000231591250);
      sub_2315864E4();
      MEMORY[0x23192FF80](0xD000000000000016, 0x8000000231591270);
      sub_2315864E4();
      MEMORY[0x23192FF80](41, 0xE100000000000000);
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        OUTLINED_FUNCTION_18(v6);
        sub_23152D598();
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314A7490();
  v9 = sub_231586154();
  v11 = v10;

  MEMORY[0x23192FF80](v9, v11);

  MEMORY[0x23192FF80](10528, 0xE200000000000000);
  return 8232;
}

uint64_t sub_2314D31A4()
{
  result = sub_2314A1DFC(1, 0);
  qword_280D6F488 = result;
  unk_280D6F490 = v1;
  qword_280D6F498 = v2;
  return result;
}

uint64_t sub_2314D31D4(uint64_t a1, uint64_t a2)
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000011, 0x8000000231591600);
  MEMORY[0x23192FF80](a1, a2);
  MEMORY[0x23192FF80](2113568, 0xE300000000000000);
  sub_2315864E4();
  MEMORY[0x23192FF80](93, 0xE100000000000000);
  return 0;
}

BOOL sub_2314D32B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = sub_231586C44();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_2314D33A0(uint64_t a1, uint64_t a2)
{
  sub_231586954();

  MEMORY[0x23192FF80](a1, a2);
  MEMORY[0x23192FF80](0x73746E756F63202CLL, 0xEA0000000000203ALL);
  sub_2314B676C();
  v4 = sub_2315860E4();
  MEMORY[0x23192FF80](v4);

  MEMORY[0x23192FF80](93, 0xE100000000000000);
  return 0x49656C646E75625BLL;
}

void sub_2314D348C(uint64_t *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  v15[0] = 102;
  v15[1] = 0xE100000000000000;
  v6 = sub_2314B5298(v5);
  MEMORY[0x23192FF80](v6);

  sub_2315868E4();
  sub_231566B94(v15, a3, &v16);
  sub_2314D5E98(v15);
  if (v17)
  {
    if (swift_dynamicCast())
    {
      v7 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v15[0] = *a1;
      sub_231575A34();
      *a1 = v15[0];
      return;
    }
  }

  else
  {
    sub_2314A2910(&v16, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v8 = sub_231585FF4();
  __swift_project_value_buffer(v8, qword_280D72248);

  v9 = sub_231585FE4();
  v10 = sub_2315865E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    sub_2314B5298(v5);
    v13 = sub_2314A22E8();

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    sub_231586104();
    v14 = sub_2314A22E8();

    *(v11 + 14) = v14;
    _os_log_impl(&dword_231496000, v9, v10, "No count for f%s in %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v12, -1, -1);
    MEMORY[0x231931280](v11, -1, -1);
  }
}

unint64_t sub_2314D3734(uint64_t a1, uint64_t a2)
{
  sub_231586954();

  MEMORY[0x23192FF80](a1, a2);
  MEMORY[0x23192FF80](2109216, 0xE300000000000000);
  v4 = sub_231586C24();
  MEMORY[0x23192FF80](v4);

  MEMORY[0x23192FF80](93, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_2314D3818(uint64_t a1, double a2)
{

  result = MEMORY[0x23192FF80](64, 0xE100000000000000);
  v4 = round(a2);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = sub_231586C24();
    MEMORY[0x23192FF80](v5);

    return a1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2314D38EC()
{
  result = sub_2314A1DFC(5, 0);
  qword_27DD5B2D0 = result;
  *algn_27DD5B2D8 = v1;
  qword_27DD5B2E0 = v2;
  return result;
}

BOOL sub_2314D391C()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_20_3(&qword_27DD5B2F8, &qword_231589318);

  v3 = *(v2 + 16);

  return v3 == 0;
}

uint64_t sub_2314D3978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);

  v8 = OUTLINED_FUNCTION_20_3(&qword_27DD5B2F8, &qword_231589318);

  sub_231566888(a1, a2, v8, a3);
}

uint64_t sub_2314D3A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;

  sub_231514164(sub_2314D45FC, v7);

  return sub_2314A2910(a1, &qword_27DD5B2F0, &qword_231589310);
}

uint64_t sub_2314D3A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2F0, &qword_231589310);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A1D9C(a4, &v9 - v7, &qword_27DD5B2F0, &qword_231589310);

  return sub_23155C480();
}

uint64_t sub_2314D3B5C()
{
  v1 = *(v0 + 16);

  sub_231514164(sub_2314D3BB4, 0);
}

uint64_t sub_2314D3BB4(uint64_t *a1)
{
  v2 = *a1;

  type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  result = sub_2315860F4();
  *a1 = result;
  return result;
}

uint64_t sub_2314D3C08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_2314D3C30()
{
  sub_2314D3C08();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_2314D3C64()
{
  v1 = v0;
  type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  v2 = sub_2315860F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B300, &qword_231589330);
  swift_allocObject();
  v1[2] = sub_23151FC94(v2, 0xD000000000000012, 0x8000000231591330);
  v1[3] = 0xD000000000000014;
  v1[4] = 0x8000000231589230;
  return v1;
}

void *sub_2314D3D28()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[9];

  sub_2314A2910(v0 + OBJC_IVAR____TtC11SiriSignals22BiomeQueriesNowPlaying_cacheCountAggregation, &qword_27DD5B330, &qword_231589378);
  return v0;
}

uint64_t sub_2314D3D78()
{
  sub_2314D3D28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t BiomeQueriesRecognizedUser.__allocating_init(queryProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_23149FD3C(a1, v2 + 16);
  return v2;
}

uint64_t sub_2314D3E34()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(0xD000000000000037, 0x8000000231591120, "recognizedUser.getUsers", 23, 2, sub_2314D3ED4, 0, MEMORY[0x277D837D0], v1, v2);
}

void sub_2314D3ED4(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v16 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_18;
    }

    v5 = *(v3 + 8 * v1);

    sub_2315868E4();
    if (!*(v5 + 16) || (v6 = sub_231574E10(v17), (v7 & 1) == 0))
    {

      sub_2314D5E98(v17);
      goto LABEL_15;
    }

    sub_2314A24F0(*(v5 + 56) + 32 * v6, v18);
    sub_2314D5E98(v17);

    if ((swift_dynamicCast() & 1) != 0 && (v8 = v20) != 0)
    {
      v15 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v16 + 16);
        sub_23149D588();
        v16 = v13;
      }

      v9 = *(v16 + 16);
      v10 = v9 + 1;
      if (v9 >= *(v16 + 24) >> 1)
      {
        sub_23149D588();
        v10 = v9 + 1;
        v16 = v14;
      }

      *(v16 + 16) = v10;
      v11 = v16 + 16 * v9;
      *(v11 + 32) = v15;
      *(v11 + 40) = v8;
      v1 = v4;
    }

    else
    {
LABEL_15:
      ++v1;
    }
  }
}

uint64_t BiomeQueriesRecognizedUser.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_2314D4128()
{
  sub_2314D41E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2314D41E0()
{
  if (!qword_280D6F438)
  {
    type metadata accessor for BiomeQueriesNowPlaying.CachedCountsAggregation(255);
    v0 = sub_231586774();
    if (!v1)
    {
      atomic_store(v0, &qword_280D6F438);
    }
  }
}

void sub_2314D4338()
{
  sub_231585884();
  if (v0 <= 0x3F)
  {
    sub_2314D4534(319, &qword_280D6EA20, &type metadata for BiomeQueriesNowPlaying.TimeWindow, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BiomeQueriesNowPlaying.TimeWindow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BiomeQueriesNowPlaying.TimeWindow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_2314D4474()
{
  sub_231585884();
  if (v0 <= 0x3F)
  {
    sub_2314D4534(319, &qword_280D6EA28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2314D4584();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2314D4534(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2314D4584()
{
  if (!qword_280D6EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B2E8, &unk_23158B460);
    sub_2314B676C();
    v0 = sub_231586124();
    if (!v1)
    {
      atomic_store(v0, &qword_280D6EA40);
    }
  }
}

uint64_t sub_2314D4638(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2314D46C4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_2314D470C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_231586C84();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = sub_23149C888(v7, v6);
    OUTLINED_FUNCTION_5_2();
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (*(v9 + 24) < v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      sub_231586A74();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    OUTLINED_FUNCTION_27_0();
    v21 = (v20[6] + 16 * v10);
    *v21 = v7;
    v21[1] = v6;
    *(v20[7] + 8 * v10) = v8;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_231507FFC(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_23149C888(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v10 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

uint64_t sub_2314D49D0(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_2314D4C8C(v9, v4, v2);
      MEMORY[0x231931280](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_23149BEE0(0, v4, v5);
  v6 = sub_2314D4B34(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2314D4B34(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v20 = 0;
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
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + v13);

    v16 = sub_2314CD714(v15, &unk_284610990);

    if (v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_2314D4D04(v19, a2, v20, a3);
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
      return sub_2314D4D04(v19, a2, v20, a3);
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
  return result;
}

void *sub_2314D4C8C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_2314D4B34(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2314D4D04(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B328, &qword_231589370);
  result = sub_231586AE4();
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
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + v16);
    v30 = *(v17 + 8 * v16);
    v19 = *(v9 + 40);
    sub_231586D14();

    sub_231586274();

    result = sub_231586D44();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + v23) = v18;
    *(*(v9 + 56) + 8 * v23) = v30;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2314D4FB0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v46 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B348, &qword_231589398);
  result = sub_231586AE4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v46;
  v45 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v49 = (v15 - 1) & v15;
LABEL_16:
    v23 = v19 | (v16 << 6);
    v24 = a4[7];
    v25 = (a4[6] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v47;
    v50 = *(v48 + 72);
    sub_2314D609C(v24 + v50 * v23, v47, type metadata accessor for StreamedEventsAggregator.AppEvent);
    OUTLINED_FUNCTION_13_2();
    sub_2314D5F5C(v28, v18, v29);
    v30 = *(v14 + 40);
    sub_231586D14();

    sub_231586274();
    result = sub_231586D44();
    v31 = -1 << *(v14 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      v18 = v46;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v17 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v18 = v46;
LABEL_25:
    *(v17 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v14 + 48) + 16 * v34);
    *v39 = v27;
    v39[1] = v26;
    v40 = *(v14 + 56) + v34 * v50;
    OUTLINED_FUNCTION_13_2();
    result = sub_2314D5F5C(v18, v41, v42);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v45;
    v15 = v49;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    ++v20;
    if (a1[v16])
    {
      OUTLINED_FUNCTION_9_0();
      v49 = v22 & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2314D52C4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231562AC4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2314D5330(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2314D5330(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231586C14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2315863E4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2314D549C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2314D5424(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2314D5424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 + 16))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        v12 = *(v9 + 56);
        v13 = *(v9 + 16);
        *(v9 + 32) = *v9;
        *(v9 + 48) = v13;
        *v9 = v10;
        *(v9 + 8) = v11;
        *(v9 + 16) = v7;
        *(v9 + 24) = v12;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2314D549C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v87 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 16);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 80);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6 - 16;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = *(v24 + 1);
                v29 = *v25;
                *v24 = *(v25 - 1);
                *(v24 + 1) = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9 - 32;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *(v35 + 16))
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                v38 = *(v35 + 56);
                v39 = *(v35 + 16);
                *(v35 + 32) = *v35;
                *(v35 + 48) = v39;
                *v35 = v36;
                *(v35 + 8) = v37;
                *(v35 + 16) = v33;
                *(v35 + 24) = v38;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v89 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = v8[2];
        sub_2314F0BEC();
        v8 = v85;
      }

      v41 = v8[2];
      v42 = v41 + 1;
      if (v41 >= v8[3] >> 1)
      {
        sub_2314F0BEC();
        v8 = v86;
      }

      v8[2] = v42;
      v43 = v8 + 4;
      v44 = &v8[2 * v41 + 4];
      *v44 = v7;
      v44[1] = v9;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v8[2 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = v8[4];
            v49 = v8[5];
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_56:
            if (v51)
            {
              goto LABEL_96;
            }

            v63 = *v47;
            v62 = v47[1];
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_99;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_104;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v42 < 2)
          {
            goto LABEL_98;
          }

          v70 = *v47;
          v69 = v47[1];
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_71:
          if (v66)
          {
            goto LABEL_101;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_103;
          }

          if (v73 < v65)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v45 - 1 >= v42)
          {
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
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v77 = &v43[2 * v45 - 2];
          v78 = *v77;
          v79 = &v43[2 * v45];
          v80 = v79[1];
          sub_2314D5AB8((*a3 + 32 * *v77), (*a3 + 32 * *v79), (*a3 + 32 * v80), v90);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v80 < v78)
          {
            goto LABEL_91;
          }

          v81 = v8;
          v82 = v8[2];
          if (v45 > v82)
          {
            goto LABEL_92;
          }

          *v77 = v78;
          v77[1] = v80;
          if (v45 >= v82)
          {
            goto LABEL_93;
          }

          v42 = v82 - 1;
          memmove(&v43[2 * v45], v79 + 2, 16 * (v82 - 1 - v45));
          v81[2] = v82 - 1;
          v83 = v82 > 2;
          v8 = v81;
          v5 = 0;
          if (!v83)
          {
            goto LABEL_85;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_94;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_95;
        }

        v59 = v47[1];
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_97;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_100;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_105;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v89;
      a4 = v87;
      if (v89 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_2314D598C(&v92, *a1, a3);
LABEL_89:
}

uint64_t sub_2314D598C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_231562458(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2314D5AB8((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2314D5AB8(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_2314F18F8(a1, (a2 - a1) / 32, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[2] >= v4[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_2314F18F8(a2, (a3 - a2) / 32, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v10 - 2) < *(v6 - 2))
    {
      v17 = v6 - 4;
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        v18 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      v16 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v16;
    }

    v10 -= 4;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

uint64_t sub_2314D5C3C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_23153A0B8(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2314F18F8((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2314D5D18(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_23153A0D0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2314AE120((v9 + 24 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2314D5DFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for BiomeQueriesNowPlaying.UserTimeWindowsCache();
  v10 = &off_284614040;
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_23149FD3C(&v8, v6 + 40 * a1 + 32);
}

uint64_t sub_2314D5EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B330, &qword_231589378);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314D5F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_8(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2314D5FBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_OWORD *sub_2314D6070(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2314D609C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_8(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2314D6138(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2314D6178(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2314D61C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2314D6208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2314D625C()
{
  result = qword_27DD5B350;
  if (!qword_27DD5B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B350);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_45()
{

  return sub_231585884();
}

uint64_t BiomeSQLQueryResultProvider.query<A>(using:signpostName:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v15 = MEMORY[0x231930B10]();
  sub_2314D63F0(a3, a4, a5, a1, a6, a7, a8, &v17);
  objc_autoreleasePoolPop(v15);
  return v17;
}

uint64_t sub_2314D63F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v62 = a4;
  v63 = a6;
  v65 = a8;
  v13 = type metadata accessor for SiriSignalsSignpost();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v17 = qword_280D72240;
  sub_231585FC4();
  v18 = &v16[*(v13 + 20)];
  *v18 = a1;
  *(v18 + 1) = a2;
  v18[16] = a3;
  sub_2315866D4();
  v64 = v17;
  v66 = a1;
  v67 = a2;
  sub_231585FA4();
  v19 = [objc_allocWithZone(MEMORY[0x277CF1A88]) init];
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v69 = v16;
  v20 = sub_231585FF4();
  __swift_project_value_buffer(v20, qword_280D72248);

  v21 = sub_231585FE4();
  v22 = sub_2315865D4();

  v23 = os_log_type_enabled(v21, v22);
  v68 = a3;
  v61 = a7;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = a5;
    v26 = v19;
    v27 = swift_slowAlloc();
    v71 = v27;
    *v24 = 136315138;
    *(v24 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v21, v22, "BiomeSQLQueryResultProvider: executing: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v28 = v27;
    v19 = v26;
    a5 = v25;
    MEMORY[0x231931280](v28, -1, -1);
    MEMORY[0x231931280](v24, -1, -1);
  }

  v29 = sub_2315865B4();
  v30 = [v29 error];
  if (v30)
  {
    v31 = v30;
    v32 = sub_231585FE4();
    v33 = sub_2315865E4();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v69;
    if (v34)
    {
      v36 = v19;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v31;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_231496000, v32, v33, "BiomeSQLQueryResultProvider: BiomeSQL query error: %@", v37, 0xCu);
      sub_2314BEEA4(v38);
      MEMORY[0x231931280](v38, -1, -1);
      v41 = v37;
      v19 = v36;
      MEMORY[0x231931280](v41, -1, -1);
    }

    v42 = a5(MEMORY[0x277D84F90]);
  }

  else
  {
    v60 = a5;
    v62 = v19;
    v43 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F70];
    v35 = v69;
    while ([v29 next])
    {
      v45 = [v29 row];
      if (v45)
      {
        v46 = v45;
        v47 = v44;
        v48 = sub_2315860D4();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = *(v43 + 16);
          sub_2314F1674();
          v43 = v51;
        }

        v49 = *(v43 + 16);
        if (v49 >= *(v43 + 24) >> 1)
        {
          sub_2314F1674();
          v43 = v52;
        }

        *(v43 + 16) = v49 + 1;
        *(v43 + 8 * v49 + 32) = v48;
        v44 = v47;
        v35 = v69;
      }
    }

    v42 = v60(v43);

    v53 = sub_231585FE4();
    v54 = sub_2315865D4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71 = v56;
      *v55 = 134218242;
      v57 = *(v43 + 16);

      *(v55 + 4) = v57;

      *(v55 + 12) = 2080;
      v70 = v42;
      sub_231586454();

      swift_getWitnessTable();
      sub_231586214();
      v58 = sub_2314A22E8();

      *(v55 + 14) = v58;
      _os_log_impl(&dword_231496000, v53, v54, "BiomeSQLQueryResultProvider: %ld rows, processed result: %s", v55, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x231931280](v56, -1, -1);
      MEMORY[0x231931280](v55, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  *v65 = v42;
  sub_2315866C4();
  sub_231585FB4();
  return sub_2314C1DE4(v35);
}

_BYTE *storeEnumTagSinglePayload for BiomeSQLQueryResultProvider(_BYTE *result, int a2, int a3)
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

id sub_2314D6B64@<X0>(uint64_t a1@<X8>)
{
  result = [v1 starting];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2314D6BA0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  swift_unknownObjectRetain();
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v22 = OUTLINED_FUNCTION_2_9();
    sub_2314D70F4(v22, v23);
LABEL_10:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v26 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v26, qword_280D72248);
    v27 = sub_231585FE4();
    v28 = sub_2315865E4();
    if (OUTLINED_FUNCTION_3_8(v28))
    {
      v29 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_9_6(v29);
      OUTLINED_FUNCTION_1_9(&dword_231496000, v30, v31, "ExtractedNowPlaying: incorrect event type");
      OUTLINED_FUNCTION_5_8();
    }

    goto LABEL_26;
  }

  v13 = [v12 eventBody];
  if (!v13)
  {
    v24 = OUTLINED_FUNCTION_2_9();
    sub_2314D70F4(v24, v25);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v14 = v13;
  v15 = v13;
  v16 = sub_2314D752C(v15);
  if (!v17)
  {
    swift_unknownObjectRelease();

    v32 = OUTLINED_FUNCTION_2_9();
    sub_2314D70F4(v32, v33);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v34 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v34, qword_280D72248);
    v27 = sub_231585FE4();
    v35 = sub_2315865E4();
    if (OUTLINED_FUNCTION_3_8(v35))
    {
      v36 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_9_6(v36);
      OUTLINED_FUNCTION_1_9(&dword_231496000, v37, v38, "ExtractedNowPlaying: nil bundleID");
      OUTLINED_FUNCTION_5_8();
    }

    goto LABEL_26;
  }

  v18 = v16;
  v65 = v17;
  if (qword_280D6F260 != -1)
  {
    swift_once();
  }

  v19 = [v15 absoluteTimestamp];

  if (v19)
  {
    sub_231585834();

    v20 = sub_231585884();
    v21 = 0;
  }

  else
  {
    v20 = sub_231585884();
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v2, v21, 1, v20);
  sub_2314A0710(v2, v9);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v9, 1, v20) == 1)
  {
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_2_9();
    sub_2314D70F4(v39, v40);
    sub_2314BA0FC(v9);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v41 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v41, qword_280D72248);
    v27 = sub_231585FE4();
    v42 = sub_2315865E4();
    if (OUTLINED_FUNCTION_3_8(v42))
    {
      v43 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_9_6(v43);
      OUTLINED_FUNCTION_1_9(&dword_231496000, v44, v45, "ExtractedNowPlaying: nil timestamp");
      OUTLINED_FUNCTION_5_8();
    }

LABEL_26:

    result = swift_unknownObjectRelease();
    v14 = 0;
    v18 = 0;
    v47 = 0;
    v48 = 0;
    v10 = 0;
    goto LABEL_27;
  }

  v48 = sub_23149C774();
  (*(*(v20 - 8) + 8))(v9, v20);
  if (v11 != 1)
  {
    if (v11 != 255)
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v49 = sub_231585FF4();
      OUTLINED_FUNCTION_1_4(v49, qword_280D72248);
      v50 = OUTLINED_FUNCTION_2_9();
      sub_2314A5168(v50, v51);
      v52 = sub_231585FE4();
      v53 = sub_2315865E4();
      v54 = OUTLINED_FUNCTION_2_9();
      sub_2314D70F4(v54, v55);
      if (os_log_type_enabled(v52, v53))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v64 = v53;
        v58 = v57;
        v68 = v57;
        *v56 = 136315138;
        v66 = v10;
        v67 = v11;
        v59 = v52;
        SignalValue.description.getter();
        sub_2314A5EEC(v66, v67);
        v60 = sub_2314A22E8();

        *(v56 + 4) = v60;
        _os_log_impl(&dword_231496000, v59, v64, "ExtractedNowPlaying: incorrect SignalValue [%s], assuming empty mapping", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        v61 = OUTLINED_FUNCTION_2_9();
        sub_2314D70F4(v61, v62);
      }
    }

    v10 = sub_2315860F4();
  }

  result = swift_unknownObjectRelease_n();
  v47 = v65;
LABEL_27:
  *a2 = v14;
  a2[1] = v18;
  a2[2] = v47;
  a2[3] = v48;
  a2[4] = v10;
  return result;
}

uint64_t sub_2314D70F4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2314A5EEC(a1, a2);
  }

  return a1;
}

uint64_t sub_2314D7108@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  swift_unknownObjectRetain();
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_8();
LABEL_8:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v24 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (OUTLINED_FUNCTION_3_8(v26))
    {
      v27 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_9_6(v27);
      OUTLINED_FUNCTION_1_9(&dword_231496000, v28, v29, "ExtractedNowPlaying: incorrect event type");
      OUTLINED_FUNCTION_5_8();
    }

    result = swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v13 = [v12 eventBody];
  if (!v13)
  {
    OUTLINED_FUNCTION_8_8();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v14 = v13;
  v15 = [v13 starting];
  v16 = sub_2314D752C(v14);
  if (!v17)
  {
    OUTLINED_FUNCTION_8_8();
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v31 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v31, qword_280D72248);
    v32 = sub_231585FE4();
    v33 = sub_2315865E4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_5_3();
      *v34 = 0;
      _os_log_impl(&dword_231496000, v32, v33, "ExtractedNowPlaying: nil bundleID", v34, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_24;
  }

  v18 = v16;
  v19 = v17;
  v42 = v15;
  v20 = [v14 absoluteTimestamp];
  if (v20)
  {
    v21 = v20;
    sub_231585834();

    v22 = sub_231585884();
    v23 = 0;
  }

  else
  {
    v22 = sub_231585884();
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v2, v23, 1, v22);
  sub_2314A0710(v2, v9);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
  {
    OUTLINED_FUNCTION_8_8();
    sub_2314BA0FC(v9);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v35 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v35, qword_280D72248);
    v32 = sub_231585FE4();
    v36 = sub_2315865E4();
    if (os_log_type_enabled(v32, v36))
    {
      v37 = OUTLINED_FUNCTION_5_3();
      *v37 = 0;
      _os_log_impl(&dword_231496000, v32, v36, "ExtractedInFocus: nil timestamp", v37, 2u);
      OUTLINED_FUNCTION_10();
    }

LABEL_24:

    result = swift_unknownObjectRelease_n();
LABEL_25:
    v18 = 0;
    v19 = 0;
    v38 = 0;
    v39 = 0;
    v10 = 0;
    goto LABEL_26;
  }

  v39 = sub_23149C774();

  swift_unknownObjectRelease_n();
  result = (*(*(v22 - 8) + 8))(v9, v22);
  if (v11 == 255)
  {
    v10 = MEMORY[0x277D84F98];
    v40 = v42;
  }

  else
  {
    v40 = v42;
    if (v11 != 1)
    {
      result = OUTLINED_FUNCTION_8_8();
      v10 = MEMORY[0x277D84F98];
    }
  }

  v38 = v40;
LABEL_26:
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v38;
  a2[3] = v39;
  a2[4] = v10;
  return result;
}

uint64_t sub_2314D752C(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2315861A4();

  return v3;
}

uint64_t sub_2314D7590()
{
  v2 = sub_2314D7D2C(v0);
  if (v1)
  {
    v3 = v1;
    if (qword_27DD5AD40 != -1)
    {
      swift_once();
    }

    v4 = sub_2315669BC(v2, v3, qword_27DD600D8);
    if (v5)
    {
      v6 = v4;

      return v6;
    }

    else
    {
      if (qword_27DD5AD48 != -1)
      {
        swift_once();
      }

      v2 = sub_2315669BC(v2, v3, qword_27DD600E0);
    }
  }

  return v2;
}

uint64_t sub_2314D768C()
{
  result = sub_2315860F4();
  qword_27DD600D8 = result;
  return result;
}

uint64_t sub_2314D76C8()
{
  if (qword_27DD5AD40 != -1)
  {
    swift_once();
  }

  result = sub_2314D77A4(v0, sub_2314D7D90, 0);
  qword_27DD600E0 = result;
  return result;
}

uint64_t sub_2314D7750(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a3;
}

uint64_t sub_2314D77A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B358, &qword_23158B510);
    v7 = sub_231586AE4();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;
  sub_2314D7A70(a1, a2, a3, 1, &v10);
  v8 = v10;
  if (v3)
  {
  }

  return v8;
}

uint64_t sub_2314D7854(int a1, uint64_t a2)
{
  HIDWORD(v34) = a1;
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  v35 = a2;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v32 = v6;
  v33 = v2;
  if (v5)
  {
    while (1)
    {
      v9 = v7;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = (*(v35 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(v35 + 56) + 8 * v10);

      v36 = sub_2314B6158(SBYTE4(v34));
      swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_23149C888(v13, v12);
      if (__OFADD__(*(v8 + 16), (v16 & 1) == 0))
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      v19 = sub_231586A64();
      if (v19)
      {
        v19 = sub_23149C888(v13, v12);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_22;
        }

        v17 = v19;
      }

      v5 &= v5 - 1;
      if (v18)
      {
        OUTLINED_FUNCTION_0_11(v19, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v35, v36);
      }

      else
      {
        *(v8 + 8 * (v17 >> 6) + 64) |= 1 << v17;
        v27 = (*(v8 + 48) + 16 * v17);
        *v27 = v13;
        v27[1] = v12;
        OUTLINED_FUNCTION_0_11(v19, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v35, v36);
        v28 = *(v8 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_21;
        }

        *(v8 + 16) = v30;
      }

      v7 = v9;
      v6 = v32;
      v2 = v33;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v9);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314D7A70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  sub_2314D7DCC(a1, a2, a3, v53);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v45 = v53[5];
  v46 = v53[0];
  v9 = (v53[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v52[0] = v14;
      v52[1] = v15;
      v52[2] = v17;
      v52[3] = v18;

      v45(&v48, v52);

      v19 = v48;
      v20 = v49;
      v21 = v50;
      v22 = v51;
      v23 = *v54;
      v25 = sub_23149C888(v48, v49);
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B360, &unk_231589610);
          sub_231586A74();
        }
      }

      else
      {
        v30 = v54;
        sub_231508524(v28, v47 & 1);
        v31 = *v30;
        v32 = sub_23149C888(v19, v20);
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v54;
      if (v29)
      {

        v35 = (v34[7] + 16 * v25);
        v36 = v35[1];
        *v35 = v21;
        v35[1] = v22;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v34[6] + 16 * v25);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v34[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v34[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v34[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_2314A4B70();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314D7D2C(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2315861A4();

  return v3;
}

uint64_t sub_2314D7D90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  result = sub_2314D7750(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_2314D7DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_2314D7E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v99 = 0x4449656C646E7562;
  *(&v99 + 1) = 0xE800000000000000;
  sub_2315868E4();
  sub_231566B94(v106, a1, &v103);
  sub_2314D5E98(v106);
  if (!v104)
  {
    sub_2314CC1C4(&v103, &qword_27DD5B218, &unk_23158A010);
LABEL_7:
    if (qword_280D70420 != -1)
    {
      goto LABEL_74;
    }

    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_8_9() & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = v99;
  *&v99 = a2;
  *(&v99 + 1) = a3;

  sub_2315868E4();
  sub_231566B94(v106, a1, &v103);
  sub_2314D5E98(v106);
  if (v104)
  {
    if (OUTLINED_FUNCTION_8_9())
    {
      return v8;
    }
  }

  else
  {

    sub_2314CC1C4(&v103, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v47 = sub_231585FF4();
  __swift_project_value_buffer(v47, qword_280D72248);

  v48 = sub_231585FE4();
  v3 = sub_2315865E4();

  if (os_log_type_enabled(v48, v3))
  {
    v4 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v110 = v49;
    *v4 = 136315394;
    *(v4 + 4) = sub_2314A22E8();
    *(v4 + 12) = 2080;
    v50 = *(a1 + 16);
    v51 = MEMORY[0x277D84F90];
    if (v50)
    {
      v83 = v49;
      v85 = v4;
      HIDWORD(v86) = v3;
      v88 = v48;
      v109 = MEMORY[0x277D84F90];
      sub_23152D7D4();
      v51 = v109;
      v52 = sub_23156C5C8(a1);
      v54 = v53;
      v55 = 0;
      v92 = v50;
      v94 = a1 + 64;
      OUTLINED_FUNCTION_4_8();
      while (1)
      {
        if (v52 < 0 || v52 >= v64 << *(a1 + 32))
        {
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_3_9(v56, v57, v58, v59, v60, v61, v62, v63, v83, v85, v86, v88, v89, v90, v92, v94);
        if (v31)
        {
          goto LABEL_69;
        }

        if (*(a1 + 36) != v54)
        {
          goto LABEL_70;
        }

        sub_2314D6014(*(a1 + 48) + v52 * v65, v106);
        sub_2314A24F0(*(a1 + 56) + 32 * v52, v107);
        OUTLINED_FUNCTION_7_8();
        sub_2314D6070(v107, v105);
        sub_2314D89D4(&v103, &v99);
        v95 = v99;
        v96 = v100;
        v97 = v101;
        sub_2314D6070(v102, v98);
        sub_2314D6014(&v95, v108);
        sub_2314CC1C4(&v95, &qword_27DD5B338, &qword_231589660);
        sub_2314CC1C4(&v103, &qword_27DD5B338, &qword_231589660);
        v109 = v51;
        v66 = *(v51 + 16);
        if (v66 >= *(v51 + 24) >> 1)
        {
          sub_23152D7D4();
          v51 = v109;
        }

        *(v51 + 16) = v66 + 1;
        OUTLINED_FUNCTION_0_12();
        v69 = v68 << v67;
        if (v52 >= v68 << v67)
        {
          goto LABEL_71;
        }

        if ((*(v94 + 8 * v4) & v3) == 0)
        {
          goto LABEL_72;
        }

        if (*(a1 + 36) != v54)
        {
          break;
        }

        OUTLINED_FUNCTION_6_9();
        if (v31)
        {
          OUTLINED_FUNCTION_2_0();
          while (v72 < v71)
          {
            v75 = *v73++;
            v74 = v75;
            v3 += 64;
            ++v72;
            if (v75)
            {
              v76 = OUTLINED_FUNCTION_5_9();
              v56 = sub_2314ABA68(v76, v54, v77);
              v69 = __clz(__rbit64(v74)) + v3;
              goto LABEL_55;
            }
          }

          v78 = OUTLINED_FUNCTION_5_9();
          v56 = sub_2314ABA68(v78, v54, v79);
LABEL_55:
          v64 = 1;
        }

        else
        {
          v69 = __clz(__rbit64(v70)) | v52 & 0x7FFFFFFFFFFFFFC0;
        }

        ++v55;
        v52 = v69;
        v54 = v90;
        if (v55 == v92)
        {
          v48 = v88;
          LOBYTE(v3) = BYTE4(v86);
          v4 = v85;
          goto LABEL_58;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_74:
        OUTLINED_FUNCTION_6_0();
LABEL_8:
        v9 = sub_231585FF4();
        __swift_project_value_buffer(v9, qword_280D72248);

        v10 = sub_231585FE4();
        v11 = sub_2315865E4();

        if (!os_log_type_enabled(v10, v11))
        {
          break;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = v13;
        v110 = v13;
        *v12 = 136315138;
        v15 = *(a1 + 16);
        v16 = MEMORY[0x277D84F90];
        if (!v15)
        {
LABEL_30:
          MEMORY[0x231930080](v16, MEMORY[0x277D84030]);

          v46 = sub_2314A22E8();

          *(v12 + 4) = v46;
          _os_log_impl(&dword_231496000, v10, v11, "BundleIDTimestampRecord: missing an expected column bundleID in: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v14);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
          break;
        }

        v82 = v13;
        v84 = v12;
        HIDWORD(v86) = v11;
        v87 = v10;
        v109 = MEMORY[0x277D84F90];
        sub_23152D7D4();
        v16 = v109;
        v17 = sub_23156C5C8(a1);
        v19 = v18;
        v20 = 0;
        v91 = v15;
        v93 = a1 + 64;
        OUTLINED_FUNCTION_4_8();
        while ((v17 & 0x8000000000000000) == 0 && v17 < v29 << *(a1 + 32))
        {
          OUTLINED_FUNCTION_3_9(v21, v22, v23, v24, v25, v26, v27, v28, v82, v84, v86, v87, v89, v90, v91, v93);
          if (v31)
          {
            goto LABEL_63;
          }

          if (*(a1 + 36) != v19)
          {
            goto LABEL_64;
          }

          sub_2314D6014(*(a1 + 48) + v17 * v30, v106);
          sub_2314A24F0(*(a1 + 56) + 32 * v17, v107);
          OUTLINED_FUNCTION_7_8();
          sub_2314D6070(v107, v105);
          sub_2314D89D4(&v103, &v99);
          v95 = v99;
          v96 = v100;
          v97 = v101;
          sub_2314D6070(v102, v98);
          sub_2314D6014(&v95, v108);
          sub_2314CC1C4(&v95, &qword_27DD5B338, &qword_231589660);
          sub_2314CC1C4(&v103, &qword_27DD5B338, &qword_231589660);
          v109 = v16;
          v32 = *(v16 + 16);
          if (v32 >= *(v16 + 24) >> 1)
          {
            sub_23152D7D4();
            v16 = v109;
          }

          *(v16 + 16) = v32 + 1;
          OUTLINED_FUNCTION_0_12();
          v35 = v34 << v33;
          if (v17 >= v34 << v33)
          {
            goto LABEL_65;
          }

          if ((*(v93 + 8 * v4) & v3) == 0)
          {
            goto LABEL_66;
          }

          if (*(a1 + 36) != v19)
          {
            goto LABEL_67;
          }

          OUTLINED_FUNCTION_6_9();
          if (v31)
          {
            OUTLINED_FUNCTION_2_0();
            while (v38 < v37)
            {
              v41 = *v39++;
              v40 = v41;
              v3 += 64;
              ++v38;
              if (v41)
              {
                v42 = OUTLINED_FUNCTION_5_9();
                v21 = sub_2314ABA68(v42, v19, v43);
                v35 = __clz(__rbit64(v40)) + v3;
                goto LABEL_27;
              }
            }

            v44 = OUTLINED_FUNCTION_5_9();
            v21 = sub_2314ABA68(v44, v19, v45);
LABEL_27:
            v29 = 1;
          }

          else
          {
            v35 = __clz(__rbit64(v36)) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          ++v20;
          v17 = v35;
          v19 = v90;
          if (v20 == v91)
          {
            v10 = v87;
            LOBYTE(v11) = BYTE4(v86);
            v14 = v82;
            v12 = v84;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
      }

      return 0;
    }

LABEL_58:
    MEMORY[0x231930080](v51, MEMORY[0x277D84030]);

    v80 = sub_2314A22E8();

    *(v4 + 14) = v80;
    _os_log_impl(&dword_231496000, v48, v3, "BundleIDTimestampRecord: missing an expected column %s in: %s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  return 0;
}

uint64_t sub_2314D86B0(uint64_t a1)
{
  v28 = sub_231585884();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2315860F4();
  v7 = *(a1 + 16);
  v27 = (v2 + 8);
  v8 = (a1 + 48);
  if (!v7)
  {
    return v6;
  }

  while (1)
  {
    v10 = *(v8 - 2);
    v9 = *(v8 - 1);
    v11 = *v8;

    sub_231585804();
    sub_231585784();
    v13 = round(v12);
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v13 <= -9.22337204e18)
    {
      goto LABEL_16;
    }

    if (v13 >= 9.22337204e18)
    {
      goto LABEL_17;
    }

    (*v27)(v5, v28);
    swift_isUniquelyReferenced_nonNull_native();
    v29 = v6;
    v14 = sub_23149C888(v10, v9);
    if (__OFADD__(v6[2], (v15 & 1) == 0))
    {
      goto LABEL_18;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v18 = sub_23149C888(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_20;
      }

      v16 = v18;
    }

    v20 = v13;
    v6 = v29;
    if (v17)
    {
      *(v29[7] + 8 * v16) = v20;
    }

    else
    {
      v29[(v16 >> 6) + 8] |= 1 << v16;
      v21 = (v6[6] + 16 * v16);
      *v21 = v10;
      v21[1] = v9;
      *(v6[7] + 8 * v16) = v20;
      v22 = v6[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_19;
      }

      v6[2] = v24;
    }

    v8 += 3;
    if (!--v7)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314D89D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B338, &qword_231589660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2314D8A58()
{
  result = qword_27DD5B368;
  if (!qword_27DD5B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B368);
  }

  return result;
}

uint64_t CalendarSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CalendarSignal.idSynonyms.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_231588340;
    if (qword_280D6F640 != -1)
    {
      swift_once();
    }

    v2 = &qword_280D6F648;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_231588340;
    if (qword_280D6F658 != -1)
    {
      swift_once();
    }

    v2 = &qword_280D6F660;
  }

  v3 = v2[1];
  *(v1 + 32) = *v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t static CalendarSignal.id(using:)(char *a1)
{
  v1 = *a1;
  v2 = OUTLINED_FUNCTION_0_13();
  MEMORY[0x23192FF80](v2);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  return 0;
}

uint64_t CalendarSignal.init(field:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2315859F4();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *a1;
  sub_2315859E4();
  *(a2 + 16) = v13;
  *(a2 + 24) = sub_23149A718;
  *(a2 + 32) = 0;
  v14 = type metadata accessor for CalendarSignal();
  (*(v7 + 16))(a2 + *(v14 + 28), v12, v4);
  v15 = OUTLINED_FUNCTION_0_13();
  MEMORY[0x23192FF80](v15);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  result = (*(v7 + 8))(v12, v4);
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t static CalendarSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314D9500();
}

uint64_t CalendarSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v2 = v1;
  v35 = sub_231585884();
  v3 = OUTLINED_FUNCTION_4_1(v35);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_2315859B4();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v36 = sub_2315856B4();
  v20 = OUTLINED_FUNCTION_4_1(v36);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  sub_231585984();
  v28 = *(type metadata accessor for CalendarSignal() + 28);
  v29 = *(v1 + 24);
  v30 = *(v1 + 32);
  v29();
  sub_231585964();
  (*(v5 + 8))(v10, v35);
  (*(v14 + 8))(v19, v11);
  switch(*(v2 + 16))
  {
    case 1:
      v31 = sub_231585684();
      break;
    case 2:
      v31 = sub_231585694();
      break;
    case 3:
      v31 = sub_231585674();
      break;
    default:
      v31 = sub_2315856A4();
      break;
  }

  if (v32)
  {
    v33 = -1;
  }

  else
  {
    v33 = v31;
  }

  v38 = v33;
  v39 = 0;
  a1(&v38);
  return (*(v22 + 8))(v27, v36);
}

SiriSignals::CalendarSignal::Field_optional __swiftcall CalendarSignal.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CalendarSignal.Field.rawValue.getter()
{
  result = 0x656557664F796164;
  switch(*v0)
  {
    case 1:
      result = 0x6144664F72756F68;
      break;
    case 2:
      result = 0x59664F68746E6F6DLL;
      break;
    case 3:
      result = 0x6F4D664F6B656577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2314D91CC@<X0>(uint64_t *a1@<X8>)
{
  result = CalendarSignal.Field.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2314D9210(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314D9500();
}

uint64_t type metadata accessor for CalendarSignal()
{
  result = qword_280D6F9B8;
  if (!qword_280D6F9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2314D92A0()
{
  v23 = sub_2315859F4();
  v0 = OUTLINED_FUNCTION_4_1(v23);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = type metadata accessor for CalendarSignal();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v28 = MEMORY[0x277D84F90];
  sub_23152D5B8();
  v13 = 0;
  v14 = v28;
  v15 = (v2 + 16);
  v16 = (v2 + 8);
  do
  {
    v17 = byte_28460FF00[v13 + 32];
    sub_2315859E4();
    *(v12 + 16) = v17;
    *(v12 + 24) = sub_23149A718;
    *(v12 + 32) = 0;
    (*v15)(v12 + *(v8 + 28), v7, v23);
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    v18 = OUTLINED_FUNCTION_0_13();
    MEMORY[0x23192FF80](v18);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v27 = v17;
    sub_231586A54();
    v19 = v24;
    (*v16)(v7, v23);
    *v12 = v19;
    v28 = v14;
    v20 = *(v14 + 16);
    if (v20 >= *(v14 + 24) >> 1)
    {
      sub_23152D5B8();
      v14 = v28;
    }

    ++v13;
    v25 = v8;
    v26 = &protocol witness table for CalendarSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    sub_2314D9AC8(v12, boxed_opaque_existential_1);
    *(v14 + 16) = v20 + 1;
    sub_23149FD3C(&v24, v14 + 40 * v20 + 32);
    sub_2314D9B2C(v12);
  }

  while (v13 != 4);
  return v14;
}

uint64_t sub_2314D9500()
{
  v18 = sub_2315859F4();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v18);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CalendarSignal();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x277D84F90];
  sub_23152D5B8();
  v8 = 0;
  v9 = v23;
  v10 = (v0 + 16);
  v11 = (v0 + 8);
  do
  {
    v12 = byte_28460FF00[v8 + 32];
    sub_2315859E4();
    v7[16] = v12;
    *(v7 + 3) = sub_23149A718;
    *(v7 + 4) = 0;
    v13 = v18;
    (*v10)(&v7[*(v4 + 28)], v3, v18);
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v22 = v12;
    sub_231586A54();
    v14 = v19;
    (*v11)(v3, v13);
    *v7 = v14;
    v23 = v9;
    v15 = *(v9 + 16);
    if (v15 >= *(v9 + 24) >> 1)
    {
      sub_23152D5B8();
      v9 = v23;
    }

    ++v8;
    v20 = v4;
    v21 = &protocol witness table for CalendarSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
    sub_2314D9AC8(v7, boxed_opaque_existential_1);
    *(v9 + 16) = v15 + 1;
    sub_23149FD3C(&v19, v9 + 40 * v15 + 32);
    sub_2314D9B2C(v7);
  }

  while (v8 != 4);
  return v9;
}

unint64_t sub_2314D979C()
{
  result = qword_27DD5B370;
  if (!qword_27DD5B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B370);
  }

  return result;
}

unint64_t sub_2314D97F4()
{
  result = qword_27DD5B378;
  if (!qword_27DD5B378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B380, &qword_2315897B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B378);
  }

  return result;
}

unint64_t sub_2314D9880()
{
  result = sub_2314D991C();
  if (v1 <= 0x3F)
  {
    result = sub_2315859F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2314D991C()
{
  result = qword_280D6FBE0;
  if (!qword_280D6FBE0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280D6FBE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationDonationFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarSignal.Field(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2314D9AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314D9B2C(uint64_t a1)
{
  v2 = type metadata accessor for CalendarSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClientCarplaySignal.__allocating_init()()
{
  v0 = swift_allocObject();
  ClientCarplaySignal.init()();
  return v0;
}

void *ClientCarplaySignal.init()()
{
  v0[4] = sub_231586964();
  v0[5] = v1;
  result = [objc_opt_self() keyPathForCarplayConnectedStatus];
  if (result)
  {
    v0[2] = 0;
    v0[3] = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClientCarplaySignal.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2314D9C64@<X0>(uint64_t a1@<X8>)
{
  result = sub_2314DF690(0, 0);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t ClientCarplaySignal.deinit()
{
  v0 = CoreDuetBackedSignal.deinit();
  v1 = *(v0 + 40);

  return v0;
}

uint64_t ClientCarplaySignal.__deallocating_deinit()
{
  v0 = CoreDuetBackedSignal.deinit();
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2314D9DFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2314D9E88(v2, v3);
}

uint64_t sub_2314D9E3C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2314D9E88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t ClientDaylightSignal.__allocating_init()()
{
  v0 = swift_allocObject();
  ClientDaylightSignal.init()();
  return v0;
}

void *ClientDaylightSignal.init()()
{
  v0[4] = sub_231586964();
  v0[5] = v1;
  result = [objc_opt_self() keyPathForSunriseSunsetDataDictionary];
  if (result)
  {
    v0[2] = 0;
    v0[3] = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2314D9FC0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2314DF690(0x67696C7961447369, 0xEA00000000007468);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t ClientDaylightSignal.deinit()
{
  v0 = CoreDuetBackedSignal.deinit();
  v1 = *(v0 + 40);

  return v0;
}

uint64_t ClientDaylightSignal.__deallocating_deinit()
{
  v0 = CoreDuetBackedSignal.deinit();
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2314DA1CC()
{
  result = sub_231586964();
  qword_280D6F660 = result;
  unk_280D6F668 = v1;
  return result;
}

uint64_t static ClientDayOfWeekSignal.signalName.getter()
{
  if (qword_280D6F658 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v0 = qword_280D6F660;

  return v0;
}

uint64_t ClientDayOfWeekSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ClientDayOfWeekSignal.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientDayOfWeekSignal() + 20);

  return sub_2314D9AC8(v3, a1);
}

uint64_t type metadata accessor for ClientDayOfWeekSignal()
{
  result = qword_280D6D420;
  if (!qword_280D6D420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ClientDayOfWeekSignal.instances()()
{
  v0 = sub_2315859F4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  *(v5 + 56) = type metadata accessor for ClientDayOfWeekSignal();
  *(v5 + 64) = &protocol witness table for ClientDayOfWeekSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  sub_2315859E4();
  v7 = OUTLINED_FUNCTION_0_14();
  sub_2314DA468(v7, 0, v4, boxed_opaque_existential_1);
  return v5;
}

uint64_t ClientDayOfWeekSignal.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_2315859F4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_2315859E4();
  v7 = OUTLINED_FUNCTION_0_14();
  return sub_2314DA468(v7, 0, v6, a1);
}

uint64_t sub_2314DA468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2315859F4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if (qword_280D6F658 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v14 = unk_280D6F668;
  *a4 = qword_280D6F660;
  a4[1] = v14;
  v15 = v9[2];
  v15(v13, a3, v8);
  v16 = a4 + *(type metadata accessor for ClientDayOfWeekSignal() + 20);
  v16[16] = 0;
  *(v16 + 3) = a1;
  *(v16 + 4) = a2;
  v17 = type metadata accessor for CalendarSignal();
  v15(&v16[*(v17 + 28)], v13, v8);

  MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();

  v18 = v9[1];
  v18(a3, v8);
  result = (v18)(v13, v8);
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_2314DA6FC()
{
  result = type metadata accessor for CalendarSignal();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314DA78C()
{
  result = sub_231586964();
  qword_280D6F648 = result;
  unk_280D6F650 = v1;
  return result;
}

uint64_t static ClientHourOfDaySignal.signalName.getter()
{
  if (qword_280D6F640 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v0 = qword_280D6F648;

  return v0;
}

uint64_t ClientHourOfDaySignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ClientHourOfDaySignal.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientHourOfDaySignal() + 20);

  return sub_2314D9AC8(v3, a1);
}

uint64_t type metadata accessor for ClientHourOfDaySignal()
{
  result = qword_280D6D390;
  if (!qword_280D6D390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ClientHourOfDaySignal.instances()()
{
  v0 = sub_2315859F4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  *(v5 + 56) = type metadata accessor for ClientHourOfDaySignal();
  *(v5 + 64) = &protocol witness table for ClientHourOfDaySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  sub_2315859E4();
  v7 = OUTLINED_FUNCTION_0_14();
  sub_2314DAA28(v7, 0, v4, boxed_opaque_existential_1);
  return v5;
}

uint64_t ClientHourOfDaySignal.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_2315859F4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_2315859E4();
  v7 = OUTLINED_FUNCTION_0_14();
  return sub_2314DAA28(v7, 0, v6, a1);
}

uint64_t sub_2314DAA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2315859F4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if (qword_280D6F640 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v14 = unk_280D6F650;
  *a4 = qword_280D6F648;
  a4[1] = v14;
  v15 = v9[2];
  v15(v13, a3, v8);
  v16 = a4 + *(type metadata accessor for ClientHourOfDaySignal() + 20);
  v16[16] = 1;
  *(v16 + 3) = a1;
  *(v16 + 4) = a2;
  v17 = type metadata accessor for CalendarSignal();
  v15(&v16[*(v17 + 28)], v13, v8);

  MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();

  v18 = v9[1];
  v18(a3, v8);
  result = (v18)(v13, v8);
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_2314DACD8()
{
  result = sub_231586964();
  qword_27DD5B388 = result;
  unk_27DD5B390 = v1;
  return result;
}

uint64_t static ClientInDayLightHourSignal.signalName.getter()
{
  if (qword_27DD5AD58 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  v0 = qword_27DD5B388;

  return v0;
}

uint64_t ClientInDayLightHourSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static ClientInDayLightHourSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientInDayLightHourSignal;
  *(v0 + 64) = &protocol witness table for ClientInDayLightHourSignal;
  if (qword_27DD5AD58 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  v1 = unk_27DD5B390;
  *(v0 + 32) = qword_27DD5B388;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t static ClientInDayLightHourSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DB170();
}

SiriSignals::ClientInDayLightHourSignal __swiftcall ClientInDayLightHourSignal.init()()
{
  v1 = v0;
  if (qword_27DD5AD58 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  v2 = unk_27DD5B390;
  *v1 = qword_27DD5B388;
  v1[1] = v2;

  result.id._object = v4;
  result.id._countAndFlagsBits = v3;
  return result;
}

uint64_t ClientInDayLightHourSignal.value(completion:)(void (*a1)(_BOOL8 *))
{
  v1 = sub_231585884();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_231585994();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = sub_2315859B4();
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  sub_231585984();
  (*(v13 + 104))(v18, *MEMORY[0x277CC9980], v10);
  sub_231585874();
  v28 = sub_2315859A4();
  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);
  v31 = (v28 - 8) < 0xB;
  v32 = 0;
  a1(&v31);
  return (*(v22 + 8))(v27, v19);
}

uint64_t sub_2314DB100(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DB170();
}

uint64_t sub_2314DB170()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientInDayLightHourSignal;
  *(v0 + 64) = &protocol witness table for ClientInDayLightHourSignal;
  if (qword_27DD5AD58 != -1)
  {
    swift_once();
  }

  v1 = unk_27DD5B390;
  *(v0 + 32) = qword_27DD5B388;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2314DB218(uint64_t a1, int a2)
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

uint64_t sub_2314DB258(uint64_t result, int a2, int a3)
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

uint64_t sub_2314DB2B8()
{
  result = sub_231586964();
  qword_280D6F7B8 = result;
  unk_280D6F7C0 = v1;
  return result;
}

uint64_t static ClientLanguageSignal.signalName.getter()
{
  if (qword_280D6F7B0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  return OUTLINED_FUNCTION_3_10();
}

uint64_t ClientLanguageSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_3_10();
}

uint64_t static ClientLanguageSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DB858();
}

SiriSignals::ClientLanguageSignal __swiftcall ClientLanguageSignal.init()()
{
  v1 = v0;
  v2 = sub_231585954();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (qword_280D6F7B0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v11 = unk_280D6F7C0;
  *v1 = qword_280D6F7B8;
  v1[1] = v11;

  sub_231585914();
  v12 = sub_2315858D4();
  v14 = v13;
  v15 = (*(v5 + 8))(v10, v2);
  v1[2] = v12;
  v1[3] = v14;
  result.languageString.value._object = v18;
  result.languageString.value._countAndFlagsBits = v17;
  result.id._object = v16;
  result.id._countAndFlagsBits = v15;
  return result;
}

void ClientLanguageSignal.value()(uint64_t a1@<X8>)
{
  if (v1[3])
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v1[2];
    v8 = v1[3];
    v3 = sub_2314DB528();
    v4 = -1;
    if ((v3 & 0x10000) == 0)
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
}

uint64_t sub_2314DB528()
{
  v0 = sub_2315861F4();
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_2315861E4();
  sub_2315861B4();
  v10 = v9;
  (*(v3 + 8))(v8, v0);
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3_10();
    sub_2314C2104(v12, v13);
    v14 = OUTLINED_FUNCTION_3_10();
    sub_2314DC850(v14, v15);
    v17 = *(v16 + 16);
    v18 = SipHash();

    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    LOWORD(v18) = sub_231586CF4();

    v20 = OUTLINED_FUNCTION_3_10();
    sub_2314C215C(v20, v21);
    v11 = v18;
  }

  return v11 | ((v10 >> 60 == 15) << 16);
}

uint64_t sub_2314DB698(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DB858();
}

uint64_t sub_2314DB6F4()
{
  v0 = sub_231585954();
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231588340;
  *(v9 + 56) = &type metadata for ClientLanguageSignal;
  *(v9 + 64) = &protocol witness table for ClientLanguageSignal;
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  if (qword_280D6F7B0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v11 = unk_280D6F7C0;
  v10[2] = qword_280D6F7B8;
  v10[3] = v11;

  sub_231585914();
  v12 = sub_2315858D4();
  v14 = v13;
  (*(v3 + 8))(v8, v0);
  v10[4] = v12;
  v10[5] = v14;
  return v9;
}

uint64_t sub_2314DB858()
{
  v0 = sub_231585954();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  *(v5 + 56) = &type metadata for ClientLanguageSignal;
  *(v5 + 64) = &protocol witness table for ClientLanguageSignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  if (qword_280D6F7B0 != -1)
  {
    swift_once();
  }

  v7 = unk_280D6F7C0;
  v6[2] = qword_280D6F7B8;
  v6[3] = v7;

  sub_231585914();
  v8 = sub_2315858D4();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  v6[4] = v8;
  v6[5] = v10;
  return v5;
}

uint64_t sub_2314DBA08()
{
  result = sub_231586964();
  qword_280D6F8E0 = result;
  unk_280D6F8E8 = v1;
  return result;
}

uint64_t static ClientLocaleSignal.signalName.getter()
{
  if (qword_280D6F8D8 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  return OUTLINED_FUNCTION_3_10();
}

uint64_t ClientLocaleSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_3_10();
}

uint64_t static ClientLocaleSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DBFA8();
}

SiriSignals::ClientLocaleSignal __swiftcall ClientLocaleSignal.init()()
{
  v1 = v0;
  v2 = sub_231585954();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (qword_280D6F8D8 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v11 = unk_280D6F8E8;
  *v1 = qword_280D6F8E0;
  v1[1] = v11;

  sub_231585914();
  v12 = sub_2315858C4();
  v14 = v13;
  v15 = (*(v5 + 8))(v10, v2);
  v1[2] = v12;
  v1[3] = v14;
  result.localeString.value._object = v18;
  result.localeString.value._countAndFlagsBits = v17;
  result.id._object = v16;
  result.id._countAndFlagsBits = v15;
  return result;
}

void ClientLocaleSignal.value()(uint64_t a1@<X8>)
{
  if (v1[3])
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v1[2];
    v8 = v1[3];
    v3 = sub_2314DBC78();
    v4 = -1;
    if ((v3 & 0x10000) == 0)
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
}

uint64_t sub_2314DBC78()
{
  v0 = sub_2315861F4();
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_2315861E4();
  sub_2315861B4();
  v10 = v9;
  (*(v3 + 8))(v8, v0);
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3_10();
    sub_2314C2104(v12, v13);
    v14 = OUTLINED_FUNCTION_3_10();
    sub_2314DC850(v14, v15);
    v17 = *(v16 + 16);
    v18 = SipHash();

    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    LOWORD(v18) = sub_231586CF4();

    v20 = OUTLINED_FUNCTION_3_10();
    sub_2314C215C(v20, v21);
    v11 = v18;
  }

  return v11 | ((v10 >> 60 == 15) << 16);
}

uint64_t sub_2314DBDE8(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DBFA8();
}

uint64_t sub_2314DBE44()
{
  v0 = sub_231585954();
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231588340;
  *(v9 + 56) = &type metadata for ClientLocaleSignal;
  *(v9 + 64) = &protocol witness table for ClientLocaleSignal;
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  if (qword_280D6F8D8 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v11 = unk_280D6F8E8;
  v10[2] = qword_280D6F8E0;
  v10[3] = v11;

  sub_231585914();
  v12 = sub_2315858C4();
  v14 = v13;
  (*(v3 + 8))(v8, v0);
  v10[4] = v12;
  v10[5] = v14;
  return v9;
}

uint64_t sub_2314DBFA8()
{
  v0 = sub_231585954();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  *(v5 + 56) = &type metadata for ClientLocaleSignal;
  *(v5 + 64) = &protocol witness table for ClientLocaleSignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  if (qword_280D6F8D8 != -1)
  {
    swift_once();
  }

  v7 = unk_280D6F8E8;
  v6[2] = qword_280D6F8E0;
  v6[3] = v7;

  sub_231585914();
  v8 = sub_2315858C4();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  v6[4] = v8;
  v6[5] = v10;
  return v5;
}

uint64_t sub_2314DC158()
{
  result = sub_231586964();
  qword_280D6F8C8 = result;
  unk_280D6F8D0 = v1;
  return result;
}

uint64_t static ClientRegionSignal.signalName.getter()
{
  if (qword_280D6F8C0 != -1)
  {
    OUTLINED_FUNCTION_2_10();
  }

  return OUTLINED_FUNCTION_3_10();
}

uint64_t ClientRegionSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_3_10();
}

uint64_t static ClientRegionSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientRegionSignal;
  *(v0 + 64) = &protocol witness table for ClientRegionSignal;
  *(v0 + 32) = swift_allocObject();
  ClientRegionSignal.init()();
  return v0;
}

uint64_t static ClientRegionSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DC754();
}

SiriSignals::ClientRegionSignal __swiftcall ClientRegionSignal.init()()
{
  v2 = v0;
  v3 = sub_231585934();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v9 = sub_231585954();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B398, &qword_231589B08);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v31 - v19;
  if (qword_280D6F8C0 != -1)
  {
    OUTLINED_FUNCTION_2_10();
  }

  v22 = qword_280D6F8C8;
  v21 = unk_280D6F8D0;

  sub_231585914();
  sub_231585944();
  (*(v12 + 8))(v16, v9);
  sub_231585924();
  (*(v6 + 8))(v1, v3);
  v23 = sub_231585904();
  if (__swift_getEnumTagSinglePayload(v20, 1, v23) == 1)
  {
    v24 = sub_2314DC7D8(v20);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_2315858F4();
    v29 = v30;
    v24 = (*(*(v23 - 8) + 8))(v20, v23);
  }

  *v2 = v22;
  v2[1] = v21;
  v2[2] = v28;
  v2[3] = v29;
  result.regionString.value._object = v27;
  result.regionString.value._countAndFlagsBits = v26;
  result.id._object = v25;
  result.id._countAndFlagsBits = v24;
  return result;
}

void ClientRegionSignal.value()(uint64_t a1@<X8>)
{
  if (v1[3])
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v1[2];
    v8 = v1[3];
    v3 = sub_2314DC590();
    v4 = -1;
    if ((v3 & 0x10000) == 0)
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
}

uint64_t sub_2314DC590()
{
  v1 = sub_2315861F4();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  sub_2315861E4();
  sub_2315861B4();
  v8 = v7;
  (*(v4 + 8))(v0, v1);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_10();
    sub_2314C2104(v10, v11);
    v12 = OUTLINED_FUNCTION_3_10();
    sub_2314DC850(v12, v13);
    v15 = *(v14 + 16);
    v16 = SipHash();

    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    LOWORD(v16) = sub_231586CF4();

    v18 = OUTLINED_FUNCTION_3_10();
    sub_2314C215C(v18, v19);
    v9 = v16;
  }

  return v9 | ((v8 >> 60 == 15) << 16);
}

uint64_t sub_2314DC6F8(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DC754();
}

uint64_t sub_2314DC754()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientRegionSignal;
  *(v0 + 64) = &protocol witness table for ClientRegionSignal;
  *(v0 + 32) = swift_allocObject();
  ClientRegionSignal.init()();
  return v0;
}

uint64_t sub_2314DC7D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B398, &qword_231589B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2314DC850(uint64_t a1, unint64_t a2)
{
  v5 = sub_231585764();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v11 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v13 = *(a1 + 16);
      v12 = *(a1 + 24);
      v11 = v12 - v13;
      if (!__OFSUB__(v12, v13))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v11 = BYTE6(a2);
LABEL_6:
      if (!v11)
      {
        goto LABEL_9;
      }

      sub_2314A26B0(v11, 0);
      v14 = sub_231585734();
      sub_2314BEE4C(a1, a2);
      (*(v8 + 8))(v2, v5);
      if (v14 != v11)
      {
        __break(1u);
LABEL_9:
        sub_2314BEE4C(a1, a2);
      }

      return;
  }
}

uint64_t sub_2314DC9CC()
{
  result = sub_231586964();
  qword_280D6D300 = result;
  *algn_280D6D308 = v1;
  return result;
}

uint64_t static ClientTimeRangeSignal.signalName.getter()
{
  if (qword_280D6D2F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v0 = qword_280D6D300;

  return v0;
}

uint64_t ClientTimeRangeSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static ClientTimeRangeSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientTimeRangeSignal;
  *(v0 + 64) = &protocol witness table for ClientTimeRangeSignal;
  if (qword_280D6D2F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v1 = *algn_280D6D308;
  *(v0 + 32) = qword_280D6D300;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t static ClientTimeRangeSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DCC48();
}

SiriSignals::ClientTimeRangeSignal __swiftcall ClientTimeRangeSignal.init()()
{
  v1 = v0;
  if (qword_280D6D2F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v2 = *algn_280D6D308;
  *v1 = qword_280D6D300;
  v1[1] = v2;

  result.id._object = v4;
  result.id._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2314DCBD8(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DCC48();
}

uint64_t sub_2314DCC48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientTimeRangeSignal;
  *(v0 + 64) = &protocol witness table for ClientTimeRangeSignal;
  if (qword_280D6D2F8 != -1)
  {
    swift_once();
  }

  v1 = *algn_280D6D308;
  *(v0 + 32) = qword_280D6D300;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2314DCD00(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  v7 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v16 = *v7;
      a1(&v13, &v16);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        sub_23149FD3C(&v13, v15);
        sub_23149FD3C(v15, &v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = *(v6 + 16);
          OUTLINED_FUNCTION_19_2();
          sub_2314F0CB4();
          v6 = v10;
        }

        v8 = *(v6 + 16);
        if (v8 >= *(v6 + 24) >> 1)
        {
          sub_2314F0CB4();
          v6 = v11;
        }

        *(v6 + 16) = v8 + 1;
        sub_23149FD3C(&v13, v6 + 40 * v8 + 32);
      }

      else
      {
        sub_2314CC1C4(&v13, &qword_27DD5B3A8, &qword_231589C98);
      }

      ++v7;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_2314DCE50(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = *v5;
      v18[0] = *(v5 - 1);
      v18[1] = v7;

      v19(&v16, v18);
      if (v3)
      {
        break;
      }

      v8 = v17;
      if (v17)
      {
        v9 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = *(v6 + 16);
          OUTLINED_FUNCTION_19_2();
          sub_23149D588();
          v6 = v13;
        }

        v10 = *(v6 + 16);
        if (v10 >= *(v6 + 24) >> 1)
        {
          sub_23149D588();
          v6 = v14;
        }

        *(v6 + 16) = v10 + 1;
        v11 = v6 + 16 * v10;
        *(v11 + 32) = v9;
        *(v11 + 40) = v8;
      }

      v5 += 2;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

id sub_2314DCF7C(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B3B0, &unk_231589CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v33 = type metadata accessor for StreamedEventsAggregator.Event(0);
  v30 = *(v33 - 8);
  v9 = *(v30 + 64);
  v10 = MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v28 - v12;
  result = sub_2314A7080(a3);
  v14 = result;
  v15 = 0;
  v35 = a3 & 0xC000000000000001;
  v16 = a3 & 0xFFFFFFFFFFFFFF8;
  v17 = MEMORY[0x277D84F90];
  v31 = a3;
  while (1)
  {
    if (v14 == v15)
    {
      return v17;
    }

    if (v35)
    {
      result = MEMORY[0x231930660](v15, a3);
    }

    else
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v15 + 32);
    }

    v18 = result;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v36 = result;
    v34(&v36);
    if (v3)
    {

      return v17;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v33) == 1)
    {
      result = sub_2314CC1C4(v8, &qword_27DD5B3B0, &unk_231589CA0);
    }

    else
    {
      v19 = v29;
      sub_2314DED78(v8, v29);
      sub_2314DED78(v19, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v17 + 16);
        v23 = OUTLINED_FUNCTION_19_2();
        sub_2314F10A8(v23, v24, v25, v17);
        v17 = v26;
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2314F10A8(v20 > 1, v21 + 1, 1, v17);
        v17 = v27;
      }

      *(v17 + 16) = v21 + 1;
      result = sub_2314DED78(v32, v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21);
      a3 = v31;
    }

    ++v15;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2314DD244(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      a1(&v11, v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x231930040](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2315863C4();
        }

        sub_231586404();
        v5 = v13;
      }

      v7 += 2;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t CommonSignalValuesProcessor.__allocating_init(useCase:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t sub_2314DD3A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = sub_2314DD428();
  v7 = *(v2 + 16);
  v9[2] = &v11;
  v9[3] = v4;
  v9[4] = v5;
  v10 = v7;
  result = sub_2314DD244(sub_2314DECD0, v9, v5);
  *a2 = v6;
  a2[1] = result;
  return result;
}

void *sub_2314DD428()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D58218]) init];
  if (v0)
  {
    v1 = v0;
    if (qword_280D6F7B0 != -1)
    {
      swift_once();
    }

    v2 = qword_280D6F7B8;
    v3 = unk_280D6F7C0;
    v4 = [v1 rawLanguage];
    v5 = sub_2315414E8(v2, v3, 0, 0);
    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    [v1 setRawLanguage_];
    if (qword_280D6F8D8 != -1)
    {
      swift_once();
    }

    v8 = qword_280D6F8E0;
    v9 = unk_280D6F8E8;
    v10 = [v1 rawLocale];
    v11 = sub_2315414E8(v8, v9, 0, 0);
    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    [v1 setRawLocale_];
    if (qword_280D6F8F8 != -1)
    {
      swift_once();
    }

    v14 = qword_280D6F900;
    v15 = unk_280D6F908;
    v16 = [v1 rawRequestDeviceCategory];
    v17 = sub_2315414E8(v14, v15, 0, 0);
    if (v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    [v1 setRawRequestDeviceCategory_];
    MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    sub_231586A54();
    v20 = [v1 rawClientHourOfDay];
    v21 = sub_2315414E8(0, 0xE000000000000000, 0, 0);
    v23 = v22;

    v24 = 0x7FFFFFFF;
    if (v21 < 0x7FFFFFFF)
    {
      v24 = v21;
    }

    if (v21 >= 0xFFFFFFFF80000000)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x80000000;
    }

    if (v23)
    {
      v26 = v20;
    }

    else
    {
      v26 = v25;
    }

    [v1 setRawClientHourOfDay_];
    MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    sub_231586A54();
    v27 = [v1 clientDayOfWeek];
    v28 = sub_2315414E8(0, 0xE000000000000000, 0, 0);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      if (v28 < 0xFFFFFFFF80000000)
      {
        v27 = 0x80000000;
      }

      else if (v28 >= 0x7FFFFFFF)
      {
        v27 = 0x7FFFFFFFLL;
      }

      else
      {
        v27 = v28;
      }
    }

    [v1 setClientDayOfWeek_];
    if (qword_27DD5AD58 != -1)
    {
      swift_once();
    }

    v31 = qword_27DD5B388;
    v32 = unk_27DD5B390;
    v33 = [v1 isClientDaylight];
    v34 = sub_2315414E8(v31, v32, 0, 0) != 0;
    if (v35)
    {
      v36 = v33;
    }

    else
    {
      v36 = v34;
    }

    [v1 setIsClientDaylight_];
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v37 = sub_231585FF4();
    __swift_project_value_buffer(v37, qword_280D72248);
    v38 = sub_231585FE4();
    v39 = sub_2315865E4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_231496000, v38, v39, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppIndependentSignals", v40, 2u);
      MEMORY[0x231931280](v40, -1, -1);
    }

    return 0;
  }

  return v1;
}

id CommonSignalValuesProcessor.CommonContainer.independent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CommonSignalValuesProcessor.CommonContainer.dependent.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void *sub_2314DDA64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D58210]) init];
  if (v10)
  {
    v11 = v10;
    v12 = sub_231586174();
    [v11 setAppBundleId_];

    if (qword_280D6D5F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = qword_280D6D600;
    v14 = qword_280D6D608;

    v15 = [v11 totalTimeSpentByUserInAppPerDay];
    v16 = sub_2315414E8(v13, v14, a4, a5);
    v18 = v17;

    v19 = -1;
    if (v16 < 0xFFFFFFFF)
    {
      v19 = v16;
    }

    if (v16 < 0)
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v15;
    }

    else
    {
      v20 = v19;
    }

    [v11 setTotalTimeSpentByUserInAppPerDay_];
    if (qword_27DD5AE50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = qword_27DD5C198;
    v22 = qword_27DD5C1A0;

    v23 = [v11 timeSpentByUserInAppToday];
    v24 = sub_2315414E8(v21, v22, a4, a5);
    v26 = v25;

    v27 = -1;
    if (v24 < 0xFFFFFFFF)
    {
      v27 = v24;
    }

    if (v24 < 0)
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v23;
    }

    else
    {
      v28 = v27;
    }

    [v11 setTimeSpentByUserInAppToday_];
    if (qword_280D6F020 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v29 = qword_280D6F028;
    v30 = qword_280D6F030;

    v31 = [v11 timeSinceAppLastLaunchedInSec];
    v32 = sub_2315414E8(v29, v30, a4, a5);
    v34 = v33;

    v35 = 0x7FFFFFFF;
    if (v32 < 0x7FFFFFFF)
    {
      v35 = v32;
    }

    if (v32 >= 0xFFFFFFFF80000000)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0x80000000;
    }

    if (v34)
    {
      v37 = v31;
    }

    else
    {
      v37 = v36;
    }

    [v11 setTimeSinceAppLastLaunchedInSec_];
    if (qword_280D6CE18 != -1)
    {
      swift_once();
    }

    v38 = qword_280D6CE20;
    v39 = *algn_280D6CE28;
    v40 = [v11 isForegroundApp];
    v41 = sub_2315414E8(v38, v39, a4, a5) != 0;
    if (v42)
    {
      v43 = v40;
    }

    else
    {
      v43 = v41;
    }

    [v11 setIsForegroundApp_];
    v44 = [v11 isFirstPartyBundle];
    v45 = sub_2315414E8(0xD000000000000016, 0x80000002315917D0, a4, a5) != 0;
    if (v46)
    {
      v47 = v44;
    }

    else
    {
      v47 = v45;
    }

    [v11 setIsFirstPartyBundle_];
    if (a3 != 17)
    {
      v48 = sub_2314DDF48(a1, a2, a4, a5, a3);
      if (v48)
      {
        v49 = v48;
        [v11 setAppDependentFrequencyAndRecencySignals_];
      }
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v50 = sub_231585FF4();
    __swift_project_value_buffer(v50, qword_280D72248);
    v51 = sub_231585FE4();
    v52 = sub_2315865E4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_231496000, v51, v52, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppDependentSignals", v53, 2u);
      MEMORY[0x231931280](v53, -1, -1);
    }

    return 0;
  }

  return v11;
}

void *sub_2314DDF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D58208]) init];
  if (v8)
  {
    v9 = v8;
    if (qword_280D6D6B0 != -1)
    {
      swift_once();
    }

    v10 = qword_280D6D6B8;
    v11 = unk_280D6D6C0;
    v175 = DomainUseCase.rawValue.getter();
    v177 = v12;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v10, v11);
    v13 = [v9 timeSinceAppUsedInSec];
    v14 = sub_2315414E8(v175, v177, a3, a4);
    LOBYTE(v10) = v15;

    if (v10)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    [v9 setTimeSinceAppUsedInSec_];
    if (qword_280D6CEE8 != -1)
    {
      swift_once();
    }

    v17 = qword_280D6CEF0;
    v18 = unk_280D6CEF8;
    v176 = DomainUseCase.rawValue.getter();
    v178 = v19;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v17, v18);
    v20 = [v9 recencyOrderOfAppUsed];
    v21 = sub_2315414E8(v176, v178, a3, a4);
    v23 = v22;

    v24 = 0x7FFFFFFF;
    if (v21 < 0x7FFFFFFF)
    {
      v24 = v21;
    }

    if (v21 >= 0xFFFFFFFF80000000)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x80000000;
    }

    if (v23)
    {
      v26 = v20;
    }

    else
    {
      v26 = v25;
    }

    [v9 setRecencyOrderOfAppUsed_];
    v27 = a3;
    if (qword_280D6D2E0 != -1)
    {
      swift_once();
    }

    v28 = qword_280D6D2E8;
    v29 = unk_280D6D2F0;
    DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v28, v29);
    v30 = sub_231531C44();
    HIDWORD(v174) = a5;
    v32 = v31;
    v33 = [v9 appUsageCount2Min];
    v34 = a3;
    v35 = sub_2315414E8(v30, v32, a3, a4);
    v37 = v36;

    v38 = 0x7FFFFFFF;
    if (v35 < 0x7FFFFFFF)
    {
      v38 = v35;
    }

    if (v35 >= 0xFFFFFFFF80000000)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0x80000000;
    }

    if (v37)
    {
      v40 = v33;
    }

    else
    {
      v40 = v39;
    }

    [v9 setAppUsageCount2Min_];
    v41 = sub_231531C44();
    v43 = v42;
    LODWORD(v174) = [v9 appUsageCount10Min];
    v44 = sub_2315414E8(v41, v43, a3, a4);
    v46 = v45;

    v47 = 0x7FFFFFFF;
    if (v44 < 0x7FFFFFFF)
    {
      v47 = v44;
    }

    if (v44 >= 0xFFFFFFFF80000000)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0x80000000;
    }

    if (v46)
    {
      v49 = v174;
    }

    else
    {
      v49 = v48;
    }

    [v9 setAppUsageCount10Min_];
    v50 = sub_231531C44();
    v52 = v51;
    v53 = [v9 appUsageCount1Hr];
    v54 = sub_2315414E8(v50, v52, a3, a4);
    v56 = v55;

    v57 = 0x7FFFFFFF;
    if (v54 < 0x7FFFFFFF)
    {
      v57 = v54;
    }

    if (v54 >= 0xFFFFFFFF80000000)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0x80000000;
    }

    if (v56)
    {
      v59 = v53;
    }

    else
    {
      v59 = v58;
    }

    [v9 setAppUsageCount1Hr_];
    v60 = sub_231531C44();
    v62 = v61;
    v63 = [v9 appUsageCount6Hrs];
    v64 = sub_2315414E8(v60, v62, a3, a4);
    v66 = v65;

    v67 = 0x7FFFFFFF;
    if (v64 < 0x7FFFFFFF)
    {
      v67 = v64;
    }

    if (v64 >= 0xFFFFFFFF80000000)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0x80000000;
    }

    if (v66)
    {
      v69 = v63;
    }

    else
    {
      v69 = v68;
    }

    [v9 setAppUsageCount6Hrs_];
    v70 = v9;
    v71 = sub_231531C44();
    v73 = v72;
    v74 = [v9 appUsageCount1Day];
    v75 = sub_2315414E8(v71, v73, v34, a4);
    v77 = v76;

    v78 = 0x7FFFFFFF;
    if (v75 < 0x7FFFFFFF)
    {
      v78 = v75;
    }

    if (v75 >= 0xFFFFFFFF80000000)
    {
      v79 = v78;
    }

    else
    {
      v79 = 0x80000000;
    }

    if (v77)
    {
      v80 = v74;
    }

    else
    {
      v80 = v79;
    }

    [v70 setAppUsageCount1Day_];
    v81 = sub_231531C44();
    v83 = v82;
    v84 = [v70 appUsageCount7Days];
    v85 = sub_2315414E8(v81, v83, v34, a4);
    v87 = v86;

    v88 = 0x7FFFFFFF;
    if (v85 < 0x7FFFFFFF)
    {
      v88 = v85;
    }

    if (v85 >= 0xFFFFFFFF80000000)
    {
      v89 = v88;
    }

    else
    {
      v89 = 0x80000000;
    }

    if (v87)
    {
      v90 = v84;
    }

    else
    {
      v90 = v89;
    }

    [v70 setAppUsageCount7Days_];
    v91 = sub_231531C44();
    v93 = v92;
    v94 = [v70 appUsageCount28Days];
    v95 = sub_2315414E8(v91, v93, v34, a4);
    v97 = v96;

    v98 = 0x7FFFFFFF;
    if (v95 < 0x7FFFFFFF)
    {
      v98 = v95;
    }

    if (v95 >= 0xFFFFFFFF80000000)
    {
      v99 = v98;
    }

    else
    {
      v99 = 0x80000000;
    }

    if (v97)
    {
      v100 = v94;
    }

    else
    {
      v100 = v99;
    }

    [v70 setAppUsageCount28Days_];
    v101 = sub_231531C44();
    v103 = v102;

    v104 = [v70 appUsageCountInf];
    v105 = sub_2315414E8(v101, v103, v34, a4);
    v107 = v106;

    v108 = 0x7FFFFFFF;
    if (v105 < 0x7FFFFFFF)
    {
      v108 = v105;
    }

    if (v105 >= 0xFFFFFFFF80000000)
    {
      v109 = v108;
    }

    else
    {
      v109 = 0x80000000;
    }

    if (v107)
    {
      v110 = v104;
    }

    else
    {
      v110 = v109;
    }

    [v70 setAppUsageCountInf_];
    if (qword_280D6CB18 != -1)
    {
      swift_once();
    }

    v111 = qword_280D6CB20;
    v112 = *algn_280D6CB28;
    DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v111, v112);
    v113 = sub_231531C44();
    v115 = v114;
    v116 = [v70 taskAbandonCountInUsingApp2Min];
    v117 = sub_2315414E8(v113, v115, v27, a4);
    v119 = v118;

    v120 = 0x7FFFFFFF;
    if (v117 < 0x7FFFFFFF)
    {
      v120 = v117;
    }

    if (v117 >= 0xFFFFFFFF80000000)
    {
      v121 = v120;
    }

    else
    {
      v121 = 0x80000000;
    }

    if (v119)
    {
      v122 = v116;
    }

    else
    {
      v122 = v121;
    }

    [v70 setTaskAbandonCountInUsingApp2Min_];
    v123 = sub_231531C44();
    v125 = v124;
    v126 = [v70 taskAbandonCountInUsingApp10Min];
    v127 = sub_2315414E8(v123, v125, v27, a4);
    v129 = v128;

    v130 = 0x7FFFFFFF;
    if (v127 < 0x7FFFFFFF)
    {
      v130 = v127;
    }

    if (v127 >= 0xFFFFFFFF80000000)
    {
      v131 = v130;
    }

    else
    {
      v131 = 0x80000000;
    }

    if (v129)
    {
      v132 = v126;
    }

    else
    {
      v132 = v131;
    }

    [v70 setTaskAbandonCountInUsingApp10Min_];
    v133 = sub_231531C44();
    v135 = v134;
    v136 = [v70 taskAbandonCountInUsingApp1Hr];
    v137 = sub_2315414E8(v133, v135, v27, a4);
    LOBYTE(v133) = v138;

    if ((v133 & 1) == 0)
    {
      if (v137 < 0xFFFFFFFF80000000)
      {
        v136 = 0x80000000;
      }

      else if (v137 >= 0x7FFFFFFF)
      {
        v136 = 0x7FFFFFFFLL;
      }

      else
      {
        v136 = v137;
      }
    }

    [v70 setTaskAbandonCountInUsingApp1Hr_];
    v139 = sub_231531C44();
    v141 = v140;
    v142 = [v70 taskAbandonCountInUsingApp6Hrs];
    v143 = sub_2315414E8(v139, v141, v27, a4);
    LOBYTE(v139) = v144;

    if ((v139 & 1) == 0)
    {
      if (v143 < 0xFFFFFFFF80000000)
      {
        v142 = 0x80000000;
      }

      else if (v143 >= 0x7FFFFFFF)
      {
        v142 = 0x7FFFFFFFLL;
      }

      else
      {
        v142 = v143;
      }
    }

    [v70 setTaskAbandonCountInUsingApp6Hrs_];
    v145 = sub_231531C44();
    v147 = v146;
    v148 = [v70 taskAbandonCountInUsingApp1Day];
    v149 = sub_2315414E8(v145, v147, v27, a4);
    LOBYTE(v145) = v150;

    if ((v145 & 1) == 0)
    {
      if (v149 < 0xFFFFFFFF80000000)
      {
        v148 = 0x80000000;
      }

      else if (v149 >= 0x7FFFFFFF)
      {
        v148 = 0x7FFFFFFFLL;
      }

      else
      {
        v148 = v149;
      }
    }

    [v70 setTaskAbandonCountInUsingApp1Day_];
    v151 = sub_231531C44();
    v153 = v152;
    v154 = [v70 taskAbandonCountInUsingApp7Days];
    v155 = sub_2315414E8(v151, v153, v27, a4);
    LOBYTE(v151) = v156;

    if ((v151 & 1) == 0)
    {
      if (v155 < 0xFFFFFFFF80000000)
      {
        v154 = 0x80000000;
      }

      else if (v155 >= 0x7FFFFFFF)
      {
        v154 = 0x7FFFFFFFLL;
      }

      else
      {
        v154 = v155;
      }
    }

    [v70 setTaskAbandonCountInUsingApp7Days_];
    v157 = sub_231531C44();
    v159 = v158;
    v160 = [v70 taskAbandonCountInUsingApp28Days];
    v161 = sub_2315414E8(v157, v159, v27, a4);
    LOBYTE(v157) = v162;

    if ((v157 & 1) == 0)
    {
      if (v161 < 0xFFFFFFFF80000000)
      {
        v160 = 0x80000000;
      }

      else if (v161 >= 0x7FFFFFFF)
      {
        v160 = 0x7FFFFFFFLL;
      }

      else
      {
        v160 = v161;
      }
    }

    [v70 setTaskAbandonCountInUsingApp28Days_];
    v163 = sub_231531C44();
    v165 = v164;

    v166 = [v70 taskAbandonCountInUsingAppInf];
    v167 = sub_2315414E8(v163, v165, v27, a4);
    LOBYTE(v163) = v168;

    if ((v163 & 1) == 0)
    {
      if (v167 < 0xFFFFFFFF80000000)
      {
        v166 = 0x80000000;
      }

      else if (v167 >= 0x7FFFFFFF)
      {
        v166 = 0x7FFFFFFFLL;
      }

      else
      {
        v166 = v167;
      }
    }

    [v70 setTaskAbandonCountInUsingAppInf_];
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v169 = sub_231585FF4();
    __swift_project_value_buffer(v169, qword_280D72248);
    v170 = sub_231585FE4();
    v171 = sub_2315865E4();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&dword_231496000, v170, v171, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals", v172, 2u);
      MEMORY[0x231931280](v172, -1, -1);
    }

    return 0;
  }

  return v70;
}

void *sub_2314DEC88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  result = sub_2314DDA20(*a1, a1[1], *a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2314DED78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamedEventsAggregator.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

SiriSignals::CommunicationTypeSignal::CommunicationType_optional __swiftcall CommunicationTypeSignal.CommunicationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2314DEE30@<X0>(uint64_t *a1@<X8>)
{
  result = CommunicationTypeSignal.CommunicationType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2314DEE7C()
{
  result = sub_231586964();
  qword_27DD5B3B8 = result;
  unk_27DD5B3C0 = v1;
  return result;
}

uint64_t static CommunicationTypeSignal.signalName.getter()
{
  if (qword_27DD5AD60 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v0 = qword_27DD5B3B8;

  return v0;
}

uint64_t CommunicationTypeSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CommunicationTypeSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 0;
  return a1(&v3);
}

unint64_t sub_2314DEFE8()
{
  result = qword_27DD5B3C8;
  if (!qword_27DD5B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B3C8);
  }

  return result;
}

unint64_t sub_2314DF040()
{
  result = qword_27DD5B3D0;
  if (!qword_27DD5B3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B3D8, &qword_231589D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B3D0);
  }

  return result;
}

uint64_t sub_2314DF0C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2314DF104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommunicationTypeSignal.CommunicationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CommunicationTypeSignal.CommunicationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

SiriSignals::ContactHandleTypeSignal::ContactHandleType_optional __swiftcall ContactHandleTypeSignal.ContactHandleType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2314DF2E8@<X0>(uint64_t *a1@<X8>)
{
  result = ContactHandleTypeSignal.ContactHandleType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2314DF334()
{
  result = sub_231586964();
  qword_27DD5B3E0 = result;
  *algn_27DD5B3E8 = v1;
  return result;
}

uint64_t static ContactHandleTypeSignal.signalName.getter()
{
  if (qword_27DD5AD68 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v0 = qword_27DD5B3E0;

  return v0;
}

uint64_t ContactHandleTypeSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContactHandleTypeSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 0;
  return a1(&v3);
}

unint64_t sub_2314DF4A0()
{
  result = qword_27DD5B3F0;
  if (!qword_27DD5B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B3F0);
  }

  return result;
}

unint64_t sub_2314DF4F8()
{
  result = qword_27DD5B3F8;
  if (!qword_27DD5B3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD5B400, &qword_231589ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B3F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactHandleTypeSignal.ContactHandleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t CoreDuetBackedSignal.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_2314DF690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2314DFC08();
  if (!v6)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v21 = sub_231585FF4();
    OUTLINED_FUNCTION_3_11(v21, qword_280D72248);
    v17 = sub_231585FE4();
    v22 = sub_2315865E4();

    if (os_log_type_enabled(v17, v22))
    {
      v10 = -1;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = *(v3 + 24);
      *(v23 + 4) = v25;
      *v24 = v25;
      v26 = v25;
      _os_log_impl(&dword_231496000, v17, v22, "CoreDuetBackedSignal#valueForKeyPath missing values, so no value for path: %@", v23, 0xCu);
      sub_2314CC1C4(v24, &unk_27DD5B410, &unk_2315890B0);
      OUTLINED_FUNCTION_10();
      goto LABEL_19;
    }

LABEL_20:

    return -1;
  }

  v7 = *(v2 + 24);
  v8 = sub_231566778(v7, v6);

  if (!v8 || (v9 = [v8 value], v8, !v9))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v16 = sub_231585FF4();
    OUTLINED_FUNCTION_3_11(v16, qword_280D72248);
    v17 = sub_231585FE4();
    v18 = sub_2315865D4();

    if (os_log_type_enabled(v17, v18))
    {
      v10 = -1;
      swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_2_11();
      *v3 = 138412290;
      *(v3 + 4) = v7;
      *v19 = v7;
      v20 = v7;
      _os_log_impl(&dword_231496000, v17, v18, "CoreDuetBackedSignal#valueForKeyPath missing value for path: %@", v3, 0xCu);
      sub_2314CC1C4(v19, &unk_27DD5B410, &unk_2315890B0);
      OUTLINED_FUNCTION_10();
LABEL_19:
      OUTLINED_FUNCTION_10();

      return v10;
    }

    goto LABEL_20;
  }

  *&v33 = v9;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B840, &unk_23158A000);
  if (!OUTLINED_FUNCTION_4_9())
  {
    if (a2)
    {
      *&v33 = v9;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B420, &unk_23158E0A0);
      if (OUTLINED_FUNCTION_4_9())
      {
        sub_23156682C(a1, a2, v35, &v33);

        if (!v34)
        {
          swift_unknownObjectRelease();
          sub_2314CC1C4(&v33, &qword_27DD5B218, &unk_23158A010);
          return -1;
        }

        if (swift_dynamicCast())
        {
          v10 = v35;
          if (qword_280D70420 != -1)
          {
            OUTLINED_FUNCTION_6_0();
          }

          v27 = sub_231585FF4();
          OUTLINED_FUNCTION_3_11(v27, qword_280D72248);

          v12 = sub_231585FE4();
          v28 = sub_2315865D4();

          if (!os_log_type_enabled(v12, v28))
          {
            goto LABEL_10;
          }

          swift_slowAlloc();
          v29 = OUTLINED_FUNCTION_2_11();
          v30 = swift_slowAlloc();
          *&v33 = v30;
          *v3 = 138412802;
          *(v3 + 4) = v7;
          *v29 = v7;
          *(v3 + 12) = 2080;
          v31 = v7;
          *(v3 + 14) = sub_2314A22E8();
          *(v3 + 22) = 2048;
          *(v3 + 24) = v10;
          _os_log_impl(&dword_231496000, v12, v28, "CoreDuetBackedSignal#valueForKeyPath for path: %@ and subpath: %s, received BOOL value: %ld", v3, 0x20u);
          sub_2314CC1C4(v29, &unk_27DD5B410, &unk_2315890B0);
          OUTLINED_FUNCTION_10();
          __swift_destroy_boxed_opaque_existential_1(v30);
          goto LABEL_9;
        }
      }
    }

    swift_unknownObjectRelease();
    return -1;
  }

  v10 = v35;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v11 = sub_231585FF4();
  OUTLINED_FUNCTION_3_11(v11, qword_280D72248);
  v12 = sub_231585FE4();
  v13 = sub_2315865D4();

  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_10;
  }

  swift_slowAlloc();
  v14 = OUTLINED_FUNCTION_2_11();
  *v3 = 138412546;
  *(v3 + 4) = v7;
  *v14 = v7;
  *(v3 + 12) = 2048;
  *(v3 + 14) = v10;
  v15 = v7;
  _os_log_impl(&dword_231496000, v12, v13, "CoreDuetBackedSignal#valueForKeyPath for path: %@ received BOOL value: %ld", v3, 0x16u);
  sub_2314CC1C4(v14, &unk_27DD5B410, &unk_2315890B0);
LABEL_9:
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_10();
LABEL_10:

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_2314DFC08()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_opt_self() userContext];
    if (v3)
    {
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_231588FF0;
      v6 = *(v0 + 24);
      *(v5 + 32) = v6;
      sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
      v7 = v6;
      v8 = sub_231586374();

      v9 = [v4 valuesForKeyPaths_];

      if (v9)
      {
        sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
        sub_2314DFED8();
        v1 = sub_2315860D4();
      }

      else
      {

        v1 = 0;
      }

      v14 = *(v0 + 16);
      *(v0 + 16) = v1;
    }

    else
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v10 = sub_231585FF4();
      __swift_project_value_buffer(v10, qword_280D72248);
      v11 = sub_231585FE4();
      v12 = sub_2315865E4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_231496000, v11, v12, "CoreDuetBackedSignal#valueForKeyPath Could not find user context; values are empty", v13, 2u);
        OUTLINED_FUNCTION_10();
      }

      sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
      sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
      sub_2314DFED8();
      return sub_2315860F4();
    }
  }

  return v1;
}

uint64_t CoreDuetBackedSignal.__deallocating_deinit()
{
  CoreDuetBackedSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_2314DFED8()
{
  result = qword_280D6FE70;
  if (!qword_280D6FE70)
  {
    sub_2314A207C(255, &qword_280D6FE80, 0x277CFE358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FE70);
  }

  return result;
}

uint64_t sub_2314DFF40@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_231585F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x277D5B348])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x277D5B340])
  {
    *a1 = 1;
  }

  else
  {
    *a1 = 2;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_2314E0098(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2314E00D8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2314E0124(uint64_t a1)
{
  if (qword_27DD5AD70 != -1)
  {
    swift_once();
  }

  v2 = qword_27DD600E8;
  v3 = sub_2315857C4();
  v4 = [v2 stringForObjectValue_];

  if (v4)
  {
    v5 = sub_2315861A4();
  }

  else
  {
    v5 = 0x656E696665646E75;
  }

  MEMORY[0x23192FF80](23328, 0xE200000000000000);
  sub_23149C774();
  v6 = sub_231586C24();
  MEMORY[0x23192FF80](v6);

  MEMORY[0x23192FF80](93, 0xE100000000000000);
  v7 = sub_231585884();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v5;
}

id sub_2314E029C()
{
  result = sub_2314E02BC();
  qword_27DD600E8 = result;
  return result;
}

id sub_2314E02BC()
{
  v0 = sub_2315859F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_2314E04CC(0xD000000000000015, 0x8000000231591870, v5);
  sub_2315859E4();
  v6 = sub_2315859D4();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  return v5;
}

uint64_t sub_2314E03E4()
{
  v0 = sub_231585884();
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_231585874();
  v9 = sub_23149C774();
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_2314E049C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void sub_2314E04CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231586174();

  [a3 setDateFormat_];
}

uint64_t sub_2314E0530@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_231585994();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v48 = v3;
  v49 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_2315859B4();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v45 = v11;
  v46 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  v21 = sub_2315859F4();
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = sub_231585884();
  v31 = OUTLINED_FUNCTION_4_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  sub_231585874();
  sub_2315859E4();
  v39 = sub_2315859C4();
  (*(v24 + 8))(v29, v21);
  v40 = v39;
  v42 = v48;
  v41 = v49;
  sub_231585984();
  result = (*(v42 + 104))(v8, *MEMORY[0x277CC99A8], v41);
  if (v40 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_231585974();
  (*(v42 + 8))(v8, v41);
  (*(v45 + 8))(v16, v46);
  if (__swift_getEnumTagSinglePayload(v20, 1, v30) == 1)
  {
    sub_2314BA0FC(v20);
    sub_231585874();
    return (*(v33 + 8))(v38, v30);
  }

  else
  {
    (*(v33 + 8))(v38, v30);
    return (*(v33 + 32))(v47, v20, v30);
  }
}

uint64_t sub_2314E08C8(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() defaultWorkspace];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v28[0] = 0;
  v4 = [v2 defaultApplicationForCategory:a1 error:v28];

  if (v4)
  {
    v5 = v28[0];
    v6 = sub_2314E0C98(v4);
    v8 = v7;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v9 = sub_231585FF4();
    __swift_project_value_buffer(v9, qword_280D72248);

    v10 = sub_231585FE4();
    v11 = sub_2315865D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28[0] = v13;
      *v12 = 136315138;

      v14 = sub_2314A22E8();

      *(v12 + 4) = v14;
      _os_log_impl(&dword_231496000, v10, v11, "#DefaultAppProvider#getDefaultAppId: DefaultApp: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    if (v8)
    {
      v15 = v6 == 0xD000000000000015 && v8 == 0x800000023158F920;
      if (v15 || (sub_231586C44() & 1) != 0)
      {

        v6 = 0xD000000000000017;
      }
    }
  }

  else
  {
    v16 = v28[0];
    v17 = sub_2315856D4();

    swift_willThrow();
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);
    v19 = v17;
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      v24 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
      sub_231586204();
      v25 = sub_2314A22E8();

      *(v22 + 4) = v25;
      _os_log_impl(&dword_231496000, v20, v21, "#DefaultAppProvider#getDefaultAppId: got an exception when fetching default app error: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    v6 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2314E0C98(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2315861A4();

  return v3;
}