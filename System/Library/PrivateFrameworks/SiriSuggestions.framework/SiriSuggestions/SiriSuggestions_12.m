uint64_t sub_2312C4C7C()
{
  v31 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[9];
  sub_231369150();
  sub_231369EE0();
  v4 = v1;
  v5 = sub_2313698A0();
  v6 = sub_23136A3B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = v0[12];
    v29 = v0[13];
    v9 = v0[11];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = MEMORY[0x23192A860](v10, MEMORY[0x277D837D0]);
    v14 = sub_2311CFD58(v12, v13, &v30);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v0[7] = v7;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v16 = sub_23136A010();
    v18 = sub_2311CFD58(v16, v17, &v30);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_2311CB000, v5, v6, "Unable to get app categories for appIds %s. error: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v8 + 8))(v29, v9);
  }

  else
  {
    v20 = v0[12];
    v19 = v0[13];
    v21 = v0[11];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[17];
  sub_2313692F0();
  v23 = sub_231369EC0();

  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[10];

  v27 = v0[1];

  return v27(v23);
}

unint64_t sub_2312C4F18()
{
  result = qword_280F7CA60;
  if (!qword_280F7CA60)
  {
    sub_231367D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA60);
  }

  return result;
}

uint64_t sub_2312C4F70(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_17_13(a1);
  if (v3)
  {
    sub_2311D38A8(v2, v20);
    v4 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_20();
    sub_231259AD0(v5, v6, v7, v8);

    *v1 = v19;
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    sub_2311D1F18(v10, v11, v12);
    v13 = OUTLINED_FUNCTION_27_13();
    sub_2312D0260(v13, v14, v15);

    OUTLINED_FUNCTION_12_18();
    return sub_2311D1F18(v16, v17, v18);
  }

  return result;
}

uint64_t sub_2312C5010(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_17_13(a1);
  if (v3)
  {
    sub_2312250F8(v2, &v16);
    v4 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v1;
    sub_231259D04();

    *v1 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    sub_2311D1F18(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_27_13();
    sub_2312D035C(v9, v10, v11);

    OUTLINED_FUNCTION_12_18();
    return sub_2311D1F18(v12, v13, v14);
  }

  return result;
}

uint64_t sub_2312C50C8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_17_13(a1);
  if (v3)
  {
    sub_2311D38A8(v2, v20);
    v4 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_20();
    sub_231259FE4(v5, v6, v7, v8);

    *v1 = v19;
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    sub_2311D1F18(v10, v11, v12);
    v13 = OUTLINED_FUNCTION_27_13();
    sub_2312D0444(v13, v14, v15);

    OUTLINED_FUNCTION_12_18();
    return sub_2311D1F18(v16, v17, v18);
  }

  return result;
}

uint64_t sub_2312C5168(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E661C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2312D079C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2312C51D4(uint64_t *a1)
{
  v2 = *(sub_231368090() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6750(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2312D08A0(v7);
  *a1 = v3;
  return result;
}

uint64_t SiriRemembersDataService.__allocating_init(storeProvider:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SiriRemembersDataService.init(storeProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_2312C52C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312C52E8()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  sub_231366A90();
  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t SiriRemembersDataService.createDataProvider(candidates:generationId:environment:)()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v1[36] = v4;
  v1[37] = v0;
  v5 = sub_231369050();
  v1[38] = v5;
  v6 = *(v5 - 8);
  v1[39] = v6;
  v7 = *(v6 + 64) + 15;
  v1[40] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  v1[41] = v8;
  v9 = *(v8 - 8);
  v1[42] = v9;
  v10 = *(v9 + 64) + 15;
  v1[43] = swift_task_alloc();
  v11 = swift_task_alloc();
  v1[44] = v11;
  *v11 = v1;
  v11[1] = sub_2312C54E4;

  return sub_2312C64E0(v3, sub_2312C61D0, 0);
}

uint64_t sub_2312C54E4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 352);
  *v2 = *v0;
  *(v1 + 360) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312C55D0()
{
  v79 = v0;
  v1 = *(v0 + 360);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 336);
    v70 = *(v0 + 328);
    v71 = *(v0 + 344);
    v4 = *(v0 + 312);
    v76 = MEMORY[0x277D84F90];
    sub_2311F5B10(0, v2, 0);
    v5 = v76;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v68 = *(v3 + 72);
    v69 = (v4 + 16);
    v67 = (v4 + 8);
    do
    {
      v73 = v5;
      v74 = v2;
      v7 = *(v0 + 344);
      v8 = *(v0 + 320);
      v9 = *(v0 + 304);
      v72 = v6;
      sub_2311E66F0(v6, v7, &qword_27DD43570, &qword_23136CAB0);
      v10 = *(v71 + 88);
      v11 = *(v71 + 96);
      v12 = *(v71 + 104);
      v13 = *(v71 + 112);
      v14 = v7 + *(v70 + 56);
      v15 = *v14;
      v75 = *(v14 + 8);
      (*v69)(v8, v7 + *(v70 + 64), v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23136B670;
      sub_23136A650();

      v77 = 0xD000000000000011;
      v78 = 0x800000023137DF90;
      sub_231369040();
      OUTLINED_FUNCTION_45_7();

      *(inited + 32) = 0xD000000000000011;
      *(inited + 40) = 0x800000023137DF90;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446B8, &unk_231375050);
      *(inited + 48) = v12;
      *(inited + 56) = v13;
      v17 = sub_231369EC0();
      if (v11)
      {
        v18 = *(v0 + 320);

        sub_23136A650();

        v78 = 0x800000023137DF50;
        sub_231369040();
        OUTLINED_FUNCTION_45_7();

        *(v0 + 248) = sub_2313692F0();
        *(v0 + 224) = v11;
        sub_2312250F8((v0 + 224), (v0 + 256));
        swift_isUniquelyReferenced_nonNull_native();
        v77 = v17;
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_30_13();
        if (__OFADD__(v21, v22))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v23 = v19;
        v24 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        OUTLINED_FUNCTION_28_14();
        v17 = v77;
        if (sub_23136A700())
        {
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_26_16();
          if (!v26)
          {
            goto LABEL_37;
          }

          v23 = v25;
        }

        if (v24)
        {
          v27 = (v77[7] + 32 * v23);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          sub_2312250F8((v0 + 256), v27);
        }

        else
        {
          v77[(v23 >> 6) + 8] |= 1 << v23;
          v28 = (v17[6] + 16 * v23);
          *v28 = 0xD000000000000013;
          v28[1] = 0x800000023137DF50;
          sub_2312250F8((v0 + 256), (v17[7] + 32 * v23));
          v29 = v17[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_47;
          }

          v17[2] = v31;
        }
      }

      if (v10)
      {
        v32 = *(v0 + 320);

        sub_23136A650();

        v78 = 0xEF5F6C616E676953;
        sub_231369040();
        OUTLINED_FUNCTION_45_7();

        *(v0 + 184) = sub_2313692F0();
        *(v0 + 160) = v10;
        sub_2312250F8((v0 + 160), (v0 + 192));
        swift_isUniquelyReferenced_nonNull_native();
        v77 = v17;
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_30_13();
        if (__OFADD__(v35, v36))
        {
          goto LABEL_45;
        }

        v37 = v33;
        v38 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        OUTLINED_FUNCTION_28_14();
        v17 = v77;
        if (sub_23136A700())
        {
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_26_16();
          if (!v26)
          {
            goto LABEL_37;
          }

          v37 = v39;
        }

        if (v38)
        {
          v40 = (v77[7] + 32 * v37);
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          sub_2312250F8((v0 + 192), v40);
        }

        else
        {
          OUTLINED_FUNCTION_10_22();
          sub_2312250F8((v0 + 192), v41);
          v42 = v77[2];
          v30 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v30)
          {
            goto LABEL_48;
          }

          v77[2] = v43;
        }
      }

      v44 = *(v0 + 320);
      if ((v75 & 1) == 0)
      {
        sub_23136A650();

        v78 = 0x800000023137DF70;
        sub_231369040();
        OUTLINED_FUNCTION_45_7();

        *(v0 + 120) = MEMORY[0x277D839F8];
        *(v0 + 96) = v15;
        sub_2312250F8((v0 + 96), (v0 + 128));
        swift_isUniquelyReferenced_nonNull_native();
        v77 = v17;
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_30_13();
        if (__OFADD__(v47, v48))
        {
          goto LABEL_46;
        }

        v49 = v45;
        v50 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        OUTLINED_FUNCTION_28_14();
        v17 = v77;
        if (sub_23136A700())
        {
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_26_16();
          if (!v26)
          {
LABEL_37:
            OUTLINED_FUNCTION_34_11();

            return sub_23136A970();
          }

          v49 = v51;
        }

        if (v50)
        {
          v52 = (v77[7] + 32 * v49);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          sub_2312250F8((v0 + 128), v52);
        }

        else
        {
          OUTLINED_FUNCTION_10_22();
          sub_2312250F8((v0 + 128), v53);
          v54 = v77[2];
          v30 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v30)
          {
            goto LABEL_49;
          }

          v77[2] = v55;
        }
      }

      (*v67)(*(v0 + 320), *(v0 + 304));
      sub_2311D1F18(*(v0 + 344), &qword_27DD43570, &qword_23136CAB0);
      v5 = v73;
      v57 = *(v73 + 16);
      v56 = *(v73 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_2311F5B10(v56 > 1, v57 + 1, 1);
        v5 = v73;
      }

      *(v5 + 16) = v57 + 1;
      *(v5 + 8 * v57 + 32) = v17;
      v6 = v72 + v68;
      v2 = v74 - 1;
    }

    while (v74 != 1);
  }

  *(v0 + 368) = sub_231367730();

  v58 = sub_231369EE0();
  v77 = sub_23122AB7C(v58);
  sub_231369EE0();
  sub_2312C5168(&v77);

  if (qword_280F7C8A0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v61 = sub_2313698C0();
  __swift_project_value_buffer(v61, qword_280F8E510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43558, &qword_231374890);
  sub_231369890();

  v62 = swift_task_alloc();
  *(v0 + 376) = v62;
  *v62 = v0;
  v62[1] = sub_2312C5E1C;
  v63 = *(v0 + 360);
  v64 = *(v0 + 296);
  OUTLINED_FUNCTION_34_11();

  return sub_2312C6884(v65);
}

uint64_t sub_2312C5E1C()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *(v4 + 376);
  *v6 = *v1;

  v8 = *(v4 + 360);
  if (v0)
  {

    v9 = sub_2312C6080;
  }

  else
  {

    *(v5 + 384) = v3;
    v9 = sub_2312C5F64;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2312C5F64()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[40];
  v6 = v0[36];
  v5 = v0[37];
  v7 = OUTLINED_FUNCTION_39_11();
  sub_2312C748C(v7, v8, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43578, &qword_23136CAB8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23136C1C0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v1;
  sub_231367730();
  OUTLINED_FUNCTION_38_9();

  v10 = type metadata accessor for SiriRemembersDataProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v6[3] = v10;
  v6[4] = &off_2845F5E80;
  *v6 = v11;

  OUTLINED_FUNCTION_56_0();

  return v12();
}

uint64_t sub_2312C6080()
{
  v1 = MEMORY[0x277D837D0];
  v2 = sub_231369EC0();
  v3 = v0[46];
  v4 = v0[43];
  v5 = v0[40];
  v7 = v0[36];
  v6 = v0[37];
  v8 = OUTLINED_FUNCTION_39_11();
  sub_2312C748C(v8, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43578, &qword_23136CAB8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23136C1C0;
  *(v10 + 32) = v3;
  *(v10 + 40) = v2;
  sub_231367730();
  OUTLINED_FUNCTION_38_9();

  v11 = type metadata accessor for SiriRemembersDataProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v7[3] = v11;
  v7[4] = &off_2845F5E80;
  *v7 = v12;

  OUTLINED_FUNCTION_56_0();

  return v13();
}

uint64_t sub_2312C61EC()
{
  OUTLINED_FUNCTION_8();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446C0, &qword_231375120) - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312C6280()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446C8, &qword_231375128);
  OUTLINED_FUNCTION_44_10(v4);
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x277D60B20] + 4);

  v7 = swift_task_alloc();
  v0[7] = v7;
  type metadata accessor for RankedCandidateSuggestion();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  *v7 = v0;
  v7[1] = sub_2312C63A0;
  v8 = v0[5];
  v9 = v0[2];
  OUTLINED_FUNCTION_43_11();

  return MEMORY[0x2821C6B00](v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2312C63A0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = v3[7];
  v5 = v3[6];
  v6 = v3[5];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  sub_2311D1F18(v6, &qword_27DD446C0, &qword_231375120);

  OUTLINED_FUNCTION_14();

  return v9(v2);
}

uint64_t sub_2312C64E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44700, &qword_2313751E0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312C6580, 0, 0);
}

uint64_t sub_2312C6580()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44708, &qword_2313751E8);
  OUTLINED_FUNCTION_44_10(v4);
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x277D60B20] + 4);

  v7 = swift_task_alloc();
  v0[7] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  *v7 = v0;
  v7[1] = sub_2312C66AC;
  v8 = v0[5];
  v9 = v0[2];
  OUTLINED_FUNCTION_43_11();

  return MEMORY[0x2821C6B00](v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2312C66AC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = v3[7];
  v5 = v3[6];
  v6 = v3[5];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  sub_2311D1F18(v6, &qword_27DD44700, &qword_2313751E0);

  OUTLINED_FUNCTION_14();

  return v9(v2);
}

uint64_t sub_2312C67EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136C1C0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_2311D1D6C(a3, v6 + 64);
  sub_231369EE0();
  return v6;
}

uint64_t sub_2312C6884(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = sub_231368090();
  v2[33] = v3;
  v4 = *(v3 - 8);
  v2[34] = v4;
  v5 = *(v4 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v6 = sub_231367D80();
  v2[37] = v6;
  v7 = *(v6 - 8);
  v2[38] = v7;
  v8 = *(v7 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v9 = sub_231366AA0();
  v2[41] = v9;
  v10 = *(v9 - 8);
  v2[42] = v10;
  v11 = *(v10 + 64) + 15;
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312C6A14, 0, 0);
}

uint64_t sub_2312C6A14()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[32];
  v0[44] = sub_2312C877C(v0[31]);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v9 = (v2 + *v2);
  v4 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[45] = v5;
  *v5 = v6;
  v5[1] = sub_2312C6B08;
  v7 = v0[43];

  return v9(v7);
}

uint64_t sub_2312C6B08()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 368) = v0;

  if (v0)
  {
    v9 = *(v3 + 352);

    v10 = sub_2312C73F8;
  }

  else
  {
    v10 = sub_2312C6C10;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2312C6C10()
{
  v101 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v99 = sub_231369EC0();
  v6 = sub_2312C8CCC(v3, v5, v2);
  if (v1)
  {
    v7 = *(v0 + 352);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

    v17 = *(v0 + 344);
    v18 = *(v0 + 312);
    v19 = *(v0 + 320);
    v21 = *(v0 + 280);
    v20 = *(v0 + 288);

    OUTLINED_FUNCTION_56_0();

    return v22();
  }

  else
  {
    v8 = v6;
    v10 = *(v0 + 344);
    v9 = *(v0 + 352);
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);

    sub_2312C9DA0(v8, &v99);
    v13 = *(v8 + 16);

    *(v0 + 16) = v13;
    *(v0 + 40) = MEMORY[0x277D83B88];
    sub_2312250F8((v0 + 16), (v0 + 48));
    v14 = v99;
    swift_isUniquelyReferenced_nonNull_native();
    v100 = v14;
    sub_231259D04();
    v99 = v100;
    v15 = sub_2312CA260(v12, v10);
    v16 = *(v0 + 344);
    v24 = *(v0 + 320);
    v25 = *(v0 + 304);
    v26 = *(v0 + 256);
    v95 = *(v0 + 296);
    v97 = *(v0 + 248);
    sub_2312C9DA0(v15, &v99);

    v27 = *MEMORY[0x277D607E0];
    v28 = sub_231367020();
    OUTLINED_FUNCTION_11(v28);
    v93 = v27;
    v91 = *(v29 + 104);
    v91(v24, v27, v28);
    v30 = *MEMORY[0x277D60BA0];
    v31 = *(v25 + 104);
    v31(v24, *MEMORY[0x277D60BA0], v95);
    v32 = sub_2312CA870(v24, v16, v97);
    v34 = v33;
    v88 = v31;
    v35 = *(*(v0 + 304) + 8);
    v35(*(v0 + 320), *(v0 + 296));
    if (v34)
    {
      v36 = v99;
    }

    else
    {
      v37 = *(v0 + 312);
      v38 = *(v0 + 296);
      v91(v37, v93, v28);
      v88(v37, v30, v38);
      sub_231254010();
      v35(v37, v38);
      *(v0 + 200) = MEMORY[0x277D83B88];
      *(v0 + 176) = v32;
      sub_2312250F8((v0 + 176), (v0 + 208));
      v39 = v99;
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v39;
      sub_231259D04();

      v36 = v100;
    }

    v40 = *(v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
    result = sub_23136A770();
    v41 = result;
    v42 = 0;
    v43 = v36 + 64;
    v44 = 1 << *(v36 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v36 + 64);
    v47 = (v44 + 63) >> 6;
    v82 = (v40 + 8);
    v87 = result;
    v89 = result + 64;
    v85 = v47;
    v86 = v36;
    v83 = v36 + 64;
    v84 = v40;
    if (v46)
    {
      while (1)
      {
        v48 = __clz(__rbit64(v46));
        v90 = (v46 - 1) & v46;
LABEL_19:
        v51 = v48 | (v42 << 6);
        v52 = (*(v36 + 48) + 16 * v51);
        v53 = v52[1];
        v92 = *v52;
        v96 = v51;
        sub_2311D1D6C(*(v36 + 56) + 32 * v51, v0 + 80);
        sub_2311D1D6C(v0 + 80, v0 + 144);
        v94 = v53;
        sub_231369EE0();
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
        if (swift_dynamicCast())
        {
          v55 = *(v0 + 264);
          v56 = *(v0 + 240);
          v57 = *(v56 + 16);
          v58 = sub_2312D2660(&qword_280F7C9C8, MEMORY[0x277D60D90]);
          v59 = MEMORY[0x23192A9E0](v57, v55, v58);
          v100 = v59;
          v60 = *(v56 + 16);
          if (v60)
          {
            v61 = v56 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
            v98 = *(v40 + 72);
            v62 = *(v40 + 16);
            do
            {
              v63 = *(v0 + 280);
              v64 = *(v0 + 264);
              v62(*(v0 + 288), v61, v64);
              sub_23122EA10();
              (*v82)(v63, v64);
              v61 += v98;
              --v60;
            }

            while (v60);

            v65 = v100;
            v43 = v83;
            v40 = v84;
          }

          else
          {
            v65 = v59;
          }

          v66 = *(v65 + 16);
          if (v66)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43478, &qword_23136C9B0);
            v67 = *(v40 + 72);
            v68 = (*(v40 + 80) + 32) & ~*(v40 + 80);
            v69 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v69);
            if (!v67)
            {
              goto LABEL_44;
            }

            if (result - v68 == 0x8000000000000000 && v67 == -1)
            {
              goto LABEL_46;
            }

            v69[2] = v66;
            v69[3] = 2 * ((result - v68) / v67);
            sub_231251A60();
            v72 = v71;
            result = sub_2311D3BBC();
            if (v72 != v66)
            {
              goto LABEL_45;
            }
          }

          else
          {

            v69 = MEMORY[0x277D84F90];
          }

          v36 = v86;
          v41 = v87;
          v47 = v85;
          *(v0 + 136) = v54;
          *(v0 + 112) = v69;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
        }

        else
        {
          sub_2312250F8((v0 + 80), (v0 + 112));
        }

        *(v89 + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v96;
        v73 = (v41[6] + 16 * v96);
        *v73 = v92;
        v73[1] = v94;
        result = sub_2312250F8((v0 + 112), (v41[7] + 32 * v96));
        v74 = v41[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          break;
        }

        v41[2] = v76;
        v46 = v90;
        if (!v90)
        {
          goto LABEL_14;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
LABEL_14:
      v49 = v42;
      while (1)
      {
        v42 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v42 >= v47)
        {
          break;
        }

        v50 = *(v43 + 8 * v42);
        ++v49;
        if (v50)
        {
          v48 = __clz(__rbit64(v50));
          v90 = (v50 - 1) & v50;
          goto LABEL_19;
        }
      }

      v77 = *(v0 + 320);
      v78 = *(v0 + 312);
      v80 = *(v0 + 280);
      v79 = *(v0 + 288);
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

      OUTLINED_FUNCTION_14();

      return v81(v41);
    }
  }

  return result;
}

uint64_t sub_2312C73F8()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[46];
  v2 = v0[43];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];

  OUTLINED_FUNCTION_56_0();

  return v7();
}

void sub_2312C748C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_231368260();
  v91 = *(v6 - 8);
  v7 = *(v91 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_231368090();
  v100 = *(v94 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231366860();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a1;
  v110 = a2;
  sub_231369EE0();
  MEMORY[0x23192A730](10, 0xE100000000000000);
  MEMORY[0x23192A730](0xD000000000000045, 0x8000000231380100);
  v17 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v17 setDateStyle_];
  [v17 setTimeStyle_];
  sub_231366820();
  v18 = sub_2313667F0();
  (*(v13 + 8))(v16, v12);
  v82 = v17;
  [v17 setLocale_];

  v106 = sub_231259380(a3);
  sub_2312C5168(&v106);
  v19 = v106;
  v20 = *(v106 + 16);
  if (v20)
  {
    v21 = 0;
    v84 = v106 + 32;
    v96 = v100 + 16;
    v95 = (v100 + 32);
    v89 = v91 + 32;
    v88 = (v91 + 8);
    v87 = xmmword_23136B670;
    v90 = v9;
    v80 = v106;
    v81 = v20;
    while (v21 < *(v19 + 16))
    {
      sub_2311E66F0(v84 + 48 * v21, &v106, &qword_27DD43558, &qword_231374890);
      v22 = v106;
      v104[0] = v106;
      v104[1] = v107;
      v85 = v107;
      sub_2312250F8(&v108, &v105);
      sub_2311E66F0(v104, &v103, &qword_27DD43558, &qword_231374890);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
      v23 = swift_dynamicCast();
      v86 = v21;
      if (v23)
      {
        v83 = v22;
        v24 = v102;
        v25 = MEMORY[0x277D84F98];
        v103 = MEMORY[0x277D84F98];
        v101 = *(v102 + 16);
        if (v101)
        {
          v26 = 0;
          v92 = *(v100 + 80);
          v98 = (v92 + 32) & ~v92;
          v99 = v102 + v98;
          v27 = v94;
          v28 = v93;
          v97 = v102;
          do
          {
            if (v26 >= *(v24 + 16))
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v29 = *(v100 + 72);
            (*(v100 + 16))(v28, v99 + v29 * v26, v27);
            sub_231368060();
            v31 = sub_231216480();
            v32 = v25[2];
            v33 = (v30 & 1) == 0;
            if (__OFADD__(v32, v33))
            {
              goto LABEL_44;
            }

            v34 = v30;
            if (v25[3] < v32 + v33)
            {
              sub_2312B4D28();
              v25 = v103;
              v35 = sub_231216480();
              if ((v34 & 1) != (v36 & 1))
              {
                sub_23136A970();
                __break(1u);

                __break(1u);
                return;
              }

              v31 = v35;
            }

            if (v34)
            {
              v37 = v6;
              (*v88)(v9, v6);
              v38 = v25[7];
              v39 = *(v38 + 8 * v31);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v38 + 8 * v31) = v39;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_23126E388(0, *(v39 + 16) + 1, 1, v39);
                v39 = v51;
                *(v38 + 8 * v31) = v51;
              }

              v42 = *(v39 + 16);
              v41 = *(v39 + 24);
              if (v42 >= v41 >> 1)
              {
                sub_23126E388(v41 > 1, v42 + 1, 1, v39);
                v39 = v52;
                *(v38 + 8 * v31) = v52;
              }

              v6 = v37;
              v24 = v97;
              *(v39 + 16) = v42 + 1;
              v28 = v93;
              v27 = v94;
              (*v95)(v39 + v98 + v42 * v29, v93, v94);
              v9 = v90;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43478, &qword_23136C9B0);
              v43 = v9;
              v44 = v6;
              v45 = v98;
              v46 = swift_allocObject();
              *(v46 + 16) = v87;
              v47 = v46 + v45;
              v6 = v44;
              v9 = v43;
              (*v95)(v47, v28, v27);
              v25[(v31 >> 6) + 8] |= 1 << v31;
              (*(v91 + 32))(v25[6] + *(v91 + 72) * v31, v43, v6);
              *(v25[7] + 8 * v31) = v46;
              v48 = v25[2];
              v49 = __OFADD__(v48, 1);
              v50 = v48 + 1;
              if (v49)
              {
                goto LABEL_45;
              }

              v25[2] = v50;
              v24 = v97;
            }

            ++v26;
          }

          while (v101 != v26);
        }

        v20 = v81;
        if (qword_280F7C8A0 != -1)
        {
          swift_once();
        }

        v58 = sub_2313698C0();
        v101 = __swift_project_value_buffer(v58, qword_280F8E510);
        v59 = v25[2];
        if (v59)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446D0, &unk_231375158);
          v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC8, &unk_231370720) - 8);
          v61 = *(v60 + 72);
          v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
          v63 = swift_allocObject();
          v64 = _swift_stdlib_malloc_size(v63);
          if (!v61)
          {
            goto LABEL_47;
          }

          if (v64 - v62 == 0x8000000000000000 && v61 == -1)
          {
            goto LABEL_49;
          }

          v63[2] = v59;
          v63[3] = 2 * ((v64 - v62) / v61);
          v66 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC8, &unk_231370720) - 8) + 80);
          sub_231251A78();
          v68 = v67;
          v69 = sub_2311D3BBC();
          if (v68 != v59)
          {
            goto LABEL_48;
          }
        }

        else
        {
        }

        MEMORY[0x28223BE20](v69);
        *(&v79 - 2) = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC8, &unk_231370720);
        v55 = sub_231369870();
        v57 = v70;

        v19 = v80;
      }

      else
      {
        if (qword_280F7C8A0 != -1)
        {
          swift_once();
        }

        v53 = sub_2313698C0();
        v54 = __swift_project_value_buffer(v53, qword_280F8E510);
        MEMORY[0x28223BE20](v54);
        *(&v79 - 2) = v104;
        v55 = sub_231369870();
        v57 = v56;
      }

      v21 = v86 + 1;
      MEMORY[0x23192A730](v55, v57);

      MEMORY[0x23192A730](2570, 0xE200000000000000);
      sub_2311D1F18(v104, &qword_27DD43558, &qword_231374890);
      if (v21 == v20)
      {
        goto LABEL_38;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_38:

  if (qword_280F7C8A0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v71 = sub_2313698C0();
  __swift_project_value_buffer(v71, qword_280F8E510);
  v73 = v109;
  v72 = v110;
  sub_231369EE0();
  v74 = sub_2313698A0();
  v75 = sub_23136A390();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v106 = v77;
    *v76 = 136315138;
    v78 = sub_2311CFD58(v73, v72, &v106);

    *(v76 + 4) = v78;
    _os_log_impl(&dword_2311CB000, v74, v75, "%s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    MEMORY[0x23192B930](v77, -1, -1);
    MEMORY[0x23192B930](v76, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2312C8084(uint64_t a1, void *a2)
{
  v67 = a2;
  v66 = sub_231366750();
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_231368090();
  v68 = *(v64 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC8, &unk_231370720);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v55 - v14;
  v57 = v13;
  v58 = a1;
  v69 = *(a1 + *(v13 + 48));
  sub_231369EE0();
  sub_2312C51D4(&v69);
  v16 = sub_2312C8634(3, v69);
  v63 = v18;
  v20 = v19 >> 1;
  v21 = (v19 >> 1) - v17;
  if (__OFSUB__(v19 >> 1, v17))
  {
    goto LABEL_16;
  }

  v56 = v12;
  if (v21)
  {
    v22 = v17;
    v55[1] = v16;
    v69 = MEMORY[0x277D84F90];
    sub_2311F4E34();
    if ((v21 & 0x8000000000000000) != 0)
    {
LABEL_17:
      __break(1u);

      __break(1u);
      return result;
    }

    v55[0] = v15;
    v23 = v69;
    v60 = (v3 + 8);
    v61 = v68 + 16;
    v59 = v68 + 8;
    v24 = v62;
    while (v22 < v20)
    {
      v25 = v68;
      v26 = v64;
      (*(v68 + 16))(v24, v63 + *(v68 + 72) * v22, v64);
      sub_231368050();
      v27 = v65;
      sub_2313666D0();
      v28 = sub_231366700();
      (*v60)(v27, v66);
      v29 = [v67 stringFromDate_];

      v30 = sub_231369FD0();
      v32 = v31;

      (*(v25 + 8))(v24, v26);
      v69 = v23;
      v33 = *(v23 + 16);
      v21 = v33 + 1;
      if (v33 >= *(v23 + 24) >> 1)
      {
        sub_2311F4E34();
        v23 = v69;
      }

      *(v23 + 16) = v21;
      v34 = v23 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v32;
      if (v20 == ++v22)
      {
        swift_unknownObjectRelease();
        v15 = v55[0];
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRelease();
  v23 = MEMORY[0x277D84F90];
LABEL_11:
  v69 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
  sub_2311E5648();
  v35 = sub_231369F50();
  v37 = v36;

  sub_2311E66F0(v58, v15, &qword_27DD43DC8, &unk_231370720);
  v38 = *(*&v15[*(v57 + 48)] + 16);

  v39 = sub_231368260();
  v40 = *(v39 - 8);
  v41 = *(v40 + 8);
  v41(v15, v39);
  if (v38 <= 3)
  {
    v67 = v37;
    v68 = v35;
  }

  else
  {
    v69 = 0x202E2E2E20;
    v70 = 0xE500000000000000;
    MEMORY[0x23192A730](v35, v37);

    v67 = v70;
    v68 = v69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v42 = swift_allocObject();
  v43 = MEMORY[0x277D837D0];
  *(v42 + 16) = xmmword_23136D290;
  *(v42 + 56) = v43;
  *(v42 + 32) = 32;
  *(v42 + 40) = 0xE100000000000000;
  v44 = v58;
  sub_2311E66F0(v58, v15, &qword_27DD43DC8, &unk_231370720);
  v45 = v57;
  v46 = *&v15[*(v57 + 48)];

  *(v42 + 88) = v39;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v42 + 64));
  (*(v40 + 32))(boxed_opaque_existential_1, v15, v39);
  v48 = v44;
  v49 = v56;
  sub_2311E66F0(v48, v56, &qword_27DD43DC8, &unk_231370720);
  v50 = *(*(v49 + *(v45 + 48)) + 16);

  v51 = MEMORY[0x277D83B88];
  *(v42 + 96) = v50;
  *(v42 + 152) = MEMORY[0x277D837D0];
  v52 = v67;
  v53 = v68;
  *(v42 + 120) = v51;
  *(v42 + 128) = v53;
  *(v42 + 136) = v52;
  v41(v49, v39);
  return v42;
}

int64_t sub_2312C8634(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2312F0B84(v3, -result, 0, a2);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_2312F0AC0(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312C86CC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 16) = xmmword_23136C1C0;
  *(v3 + 56) = v4;
  *(v3 + 32) = 32;
  *(v3 + 40) = 0xE100000000000000;
  sub_2311E66F0(a2, &v6, &qword_27DD43558, &qword_231374890);

  sub_2312250F8(&v7, (v3 + 64));
  return v3;
}

size_t sub_2312C877C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v44 - v4;
  v54 = sub_231368180();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_231369050();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v48);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  v17 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v20 = (&v44 - v19);
  v21 = MEMORY[0x277D84FA0];
  v60 = MEMORY[0x277D84FA0];
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v24 = (v8 + 16);
    v25 = *(v18 + 72);
    v45 = v8;
    v26 = (v8 + 8);
    v50 = (v5 + 8);
    v51 = v25;
    v27 = v48;
    v58 = v24;
    v49 = v26;
    do
    {
      sub_2311E66F0(v23, v20, &qword_27DD43570, &qword_23136CAB0);
      v28 = v20 + *(v52 + 64);
      v56 = *v24;
      v56(v14, v28, v27);
      sub_23122E89C();
      v57 = *v26;
      v57(v16, v27);
      v29 = v20[4];
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      sub_2313682A0();
      v30 = v16;
      v31 = v53;
      sub_2313676F0();
      sub_231368110();
      (*v50)(v31, v54);
      v32 = v59[3];
      sub_2311D1F18(v59, &qword_27DD43E50, &unk_2313708D8);
      if (v32)
      {
        v55 = type metadata accessor for EngagementService();
        v33 = v20[4];
        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        v34 = sub_2313682F0();
        sub_23134AF10(v34);

        v35 = v47;
        sub_231368FF0();
        static EngagementService.getAction(for:using:appId:)();
        v27 = v48;

        sub_2311D1F18(v35, &qword_27DD43F08, &qword_231370CD0);
        v56(v46, v30, v27);
        sub_23122E89C();

        v36 = v49;
        v37 = v57;
        v57(v14, v27);
        v37(v30, v27);
        v16 = v30;
        v26 = v36;
      }

      else
      {

        v16 = v30;
        v26 = v49;
      }

      sub_2311D1F18(v20, &qword_27DD43570, &qword_23136CAB0);
      v23 += v51;
      --v22;
      v24 = v58;
    }

    while (v22);
    v21 = v60;
    v8 = v45;
  }

  v38 = *(v21 + 16);
  if (!v38)
  {
    goto LABEL_11;
  }

  v39 = sub_231250348(*(v21 + 16), 0);
  v40 = *(v8 + 80);
  sub_231251A48();
  v42 = v41;
  sub_2311D3BBC();
  if (v42 != v38)
  {
    __break(1u);
LABEL_11:

    return MEMORY[0x277D84F90];
  }

  return v39;
}

uint64_t sub_2312C8CCC(uint64_t a1, uint64_t a2, void (**a3)(char *, void, void (**)(char *, uint64_t)))
{
  v136 = a3;
  v146 = a2;
  v142 = sub_2313669F0();
  v125 = *(v142 - 8);
  v4 = *(v125 + 64);
  MEMORY[0x28223BE20](v142);
  v141 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_231366AE0();
  v144 = *(v157 - 8);
  v6 = *(v144 + 64);
  MEMORY[0x28223BE20](v157);
  v140 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231368BC0();
  v124 = *(v8 - 1);
  v9 = *(v124 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  v145 = *(v152 - 8);
  v12 = *(v145 + 64);
  v13 = MEMORY[0x28223BE20](v152);
  v122 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v130 = &v120 - v16;
  MEMORY[0x28223BE20](v15);
  v158 = &v120 - v17;
  v18 = sub_231366A80();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v129 = &v120 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v134 = &v120 - v27;
  MEMORY[0x28223BE20](v26);
  v148 = &v120 - v28;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446F8, &qword_231375188);
  v128 = *(v139 - 8);
  v29 = *(v128 + 64);
  MEMORY[0x28223BE20](v139);
  v127 = (&v120 - v30);
  v31 = sub_2313669A0();
  v150 = *(v31 - 8);
  v151 = v31;
  v32 = *(v150 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v126 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v138 = &v120 - v36;
  MEMORY[0x28223BE20](v35);
  v132 = &v120 - v37;
  v155 = sub_231369050();
  v38 = *(v155 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v155);
  v121 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v120 - v42;
  v44 = *(a1 + 16);
  v45 = MEMORY[0x277D84F90];
  v149 = v18;
  v147 = v8;
  v133 = v38;
  v131 = v19;
  v135 = v23;
  if (v44)
  {
    v123 = v11;
    v161[0] = MEMORY[0x277D84F90];
    sub_2311F4E34();
    v45 = v161[0];
    v46 = v38 + 16;
    v154 = *(v38 + 16);
    v47 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v153 = *(v46 + 56);
    v156 = v46;
    v48 = (v46 - 8);
    do
    {
      v49 = v45;
      v50 = v155;
      v154(v43, v47, v155);
      v51 = sub_231369040();
      v53 = v52;
      (*v48)(v43, v50);
      v45 = v49;
      v161[0] = v49;
      v54 = *(v49 + 16);
      if (v54 >= *(v45 + 24) >> 1)
      {
        sub_2311F4E34();
        v45 = v161[0];
      }

      *(v45 + 16) = v54 + 1;
      v55 = v45 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v53;
      v47 += v153;
      --v44;
    }

    while (v44);
    v8 = v147;
    v11 = v123;
  }

  v56 = v45;
  if (qword_280F7C8A0 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v57 = sub_2313698C0();
    __swift_project_value_buffer(v57, qword_280F8E510);
    sub_231369EE0();
    v58 = sub_2313698A0();
    v59 = sub_23136A3A0();

    v60 = os_log_type_enabled(v58, v59);
    v156 = v56;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v161[0] = v62;
      *v61 = 136315138;
      v63 = MEMORY[0x23192A860](v56, MEMORY[0x277D837D0]);
      v65 = sub_2311CFD58(v63, v64, v161);

      *(v61 + 4) = v65;
      v8 = v147;
      _os_log_impl(&dword_2311CB000, v58, v59, "Querying Siri Remembers for logging ids: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x23192B930](v62, -1, -1);
      MEMORY[0x23192B930](v61, -1, -1);
    }

    v66 = v150;
    v67 = v139;
    v68 = v128;
    v69 = v126;
    sub_231366990();
    v139 = sub_231366DE0();
    sub_231366DB0();
    sub_231366980();

    v70 = *(v66 + 8);
    v70(v69, v151);
    v71 = v127;
    *v127 = v156;
    (*(v68 + 104))(v71, *MEMORY[0x277D5FF28], v67);
    v72 = v138;
    sub_231366970();
    (*(v68 + 8))(v71, v67);
    v154 = v70;
    v150 = v66 + 8;
    v70(v72, v151);
    v73 = v129;
    sub_231366A70();
    v74 = v134;
    sub_231366A00();
    v76 = v131 + 8;
    v75 = *(v131 + 8);
    v77 = v149;
    v75(v73, v149);
    v78 = v148;
    sub_231366A20();
    v75(v74, v77);
    v79 = v135;
    sub_231366A00();
    v80 = v137;
    sub_231366A10();
    if (v80)
    {
      break;
    }

    v156 = 0;
    v131 = v76;
    v137 = v75;
    v75(v79, v77);
    swift_getKeyPath();
    v153 = sub_231367A70();

    v82 = 0;
    v138 = *(v146 + 16);
    v136 = (v124 + 104);
    LODWORD(v135) = *MEMORY[0x277D61110];
    v134 = (v124 + 8);
    v129 = MEMORY[0x277D84F90];
    while (v138 != v82)
    {
      v83 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v84 = *(v145 + 72);
      sub_2311E66F0(v146 + v83 + v84 * v82, v158, &qword_27DD43570, &qword_23136CAB0);
      v85 = *(v152 + 52);
      (*v136)(v11, v135, v8);
      sub_2312D2660(&qword_280F7C970, MEMORY[0x277D61128]);
      sub_23136A140();
      sub_23136A140();
      if (v161[0] == v159 && v161[1] == v160)
      {
        v88 = v11;
        (*v134)(v11, v8);

LABEL_21:
        sub_2312D26A8(v158, v130);
        v89 = v129;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v162 = v89;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2311F5AF0(0, *(v89 + 2) + 1, 1);
          v89 = v162;
        }

        v11 = v88;
        v92 = *(v89 + 2);
        v91 = *(v89 + 3);
        if (v92 >= v91 >> 1)
        {
          sub_2311F5AF0(v91 > 1, v92 + 1, 1);
          v89 = v162;
        }

        ++v82;
        *(v89 + 2) = v92 + 1;
        v129 = v89;
        sub_2312D26A8(v130, &v89[v83 + v92 * v84]);
        v8 = v147;
      }

      else
      {
        v87 = sub_23136A900();
        v88 = v11;
        (*v134)(v11, v8);

        if (v87)
        {
          goto LABEL_21;
        }

        sub_2311D1F18(v158, &qword_27DD43570, &qword_23136CAB0);
        ++v82;
        v8 = v147;
      }
    }

    v93 = v129;
    v94 = *(v129 + 2);
    if (v94)
    {
      v161[0] = MEMORY[0x277D84F90];
      sub_2311F5A98(0, v94, 0);
      v95 = v161[0];
      v96 = &v93[(*(v145 + 80) + 32) & ~*(v145 + 80)];
      v158 = *(v145 + 72);
      v97 = (v133 + 16);
      v147 = (v133 + 32);
      v98 = v122;
      v99 = v155;
      v100 = v121;
      do
      {
        sub_2311E66F0(v96, v98, &qword_27DD43570, &qword_23136CAB0);
        (*v97)(v100, v98 + *(v152 + 64), v99);
        sub_2311D1F18(v98, &qword_27DD43570, &qword_23136CAB0);
        v161[0] = v95;
        v102 = *(v95 + 16);
        v101 = *(v95 + 24);
        if (v102 >= v101 >> 1)
        {
          sub_2311F5A98(v101 > 1, v102 + 1, 1);
          v98 = v122;
          v95 = v161[0];
        }

        *(v95 + 16) = v102 + 1;
        (*(v133 + 32))(v95 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v102, v100, v99);
        v96 += v158;
        --v94;
      }

      while (v94);
      v155 = v95;
    }

    else
    {

      v155 = MEMORY[0x277D84F90];
    }

    v11 = v148;
    v103 = v149;
    v104 = 0;
    v161[0] = MEMORY[0x277D84F90];
    v56 = v154;
    v158 = *(v153 + 16);
    v152 = v144 + 16;
    v146 = v144 + 8;
    v147 = (v125 + 8);
    v105 = v151;
    v8 = v137;
    while (1)
    {
      if (v158 == v104)
      {

        (v8)(v11, v103);
        v56(v132, v105);
        return v161[0];
      }

      if (v104 >= *(v153 + 16))
      {
        break;
      }

      v106 = v144;
      v107 = v140;
      (*(v144 + 16))(v140, v153 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v104++, v157);
      v108 = sub_231366AB0();
      v109 = sub_231366DA0();
      v111 = sub_2312177D8(v109, v110, v108);

      if (v111)
      {
        v112 = v111;
      }

      else
      {
        v112 = MEMORY[0x277D84F90];
      }

      v113 = v141;
      sub_231366AC0();
      sub_2313669B0();
      v114 = v113;
      v103 = v149;
      (*v147)(v114, v142);
      v8 = v137;
      sub_231366D90();
      v115 = sub_23136A0B0();

      MEMORY[0x28223BE20](v116);
      v117 = v156;
      *(&v120 - 4) = v155;
      *(&v120 - 24) = v115 & 1;
      v118 = v143;
      *(&v120 - 2) = v107;
      *(&v120 - 1) = v118;
      sub_2312E39AC(sub_2312D2718, (&v120 - 6), v112);
      v156 = v117;

      v119 = *(v106 + 8);
      v11 = v148;
      v56 = v154;
      v119(v107, v157);
      v105 = v151;
      sub_2312673FC();
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  v75(v79, v77);
  v75(v78, v77);
  return (v154)(v132, v151);
}

uint64_t sub_2312C9DA0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_231368090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v49 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return result;
  }

  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v53 = (*(v14 + 64) + 32) & ~*(v14 + 64);
  v16 = a1 + v53;
  v55 = *(v14 + 56);
  v56 = v15;
  v54 = (v14 - 8);
  v51 = v14;
  v52 = (v14 + 16);
  v50 = &v49 - v11;
  while (1)
  {
    v56(v12, v16, v4);
    v17 = sub_231368080();
    *&v61 = 0x6E6F697463615F5FLL;
    *(&v61 + 1) = 0xEA00000000005F73;
    MEMORY[0x23192A730](v17);

    v18 = *a2;
    v19 = *(*a2 + 16);
    v57 = v61;
    if (v19 && (v20 = sub_231215F6C(v61, *(&v61 + 1)), (v21 & 1) != 0))
    {
      sub_2311D1D6C(*(v18 + 56) + 32 * v20, &v59);
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
    }

    v58[0] = v59;
    v58[1] = v60;
    if (*(&v60 + 1))
    {
      sub_2312250F8(v58, &v61);
    }

    else
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
      *&v61 = MEMORY[0x277D84F90];
      sub_2311D1F18(v58, &qword_27DD443C0, &unk_23136E000);
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*v54)(v12, v4);

      goto LABEL_26;
    }

    v23 = v59;
    v56(v9, v12, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126E388(0, *(v23 + 16) + 1, 1, v23);
      v23 = v47;
    }

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_23126E388(v24 > 1, v25 + 1, 1, v23);
      v23 = v48;
    }

    *(v23 + 16) = v25 + 1;
    v26 = v9;
    v27 = v9;
    v28 = v4;
    (*v52)(v23 + v53 + v25 * v55, v27, v4);
    v62 = v22;
    *&v61 = v23;
    sub_2312250F8(&v61, &v59);
    v29 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v30 = a2;
    *&v58[0] = *a2;
    v31 = *&v58[0];
    v32 = sub_231215F6C(v57, *(&v57 + 1));
    if (__OFADD__(*(v31 + 16), (v33 & 1) == 0))
    {
      break;
    }

    v34 = v32;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
    if (sub_23136A700())
    {
      v36 = v57;
      v37 = sub_231215F6C(v57, *(&v57 + 1));
      if ((v35 & 1) != (v38 & 1))
      {
        goto LABEL_30;
      }

      v34 = v37;
    }

    else
    {
      v36 = v57;
    }

    v39 = *&v58[0];
    if (v35)
    {
      v40 = (*(*&v58[0] + 56) + 32 * v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      sub_2312250F8(&v59, v40);
    }

    else
    {
      *(*&v58[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v41 = (v39[6] + 16 * v34);
      v42 = *(&v57 + 1);
      *v41 = v36;
      v41[1] = v42;
      sub_2312250F8(&v59, (v39[7] + 32 * v34));
      v43 = v39[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_29;
      }

      v39[2] = v45;
    }

    v46 = v50;
    result = (*v54)(v50, v28);
    a2 = v30;
    v4 = v28;
    *a2 = v39;
    v9 = v26;
    v12 = v46;
LABEL_26:
    v16 += v55;
    if (!--v13)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_23136A970();
  __break(1u);
  return result;
}

char *sub_2312CA260(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v36[0] = a2;
  v46 = sub_231367D80();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v40 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v48 = v36 - v15;
  MEMORY[0x28223BE20](v14);
  v49 = v36 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v50 = (v36 - v20);
  v51 = MEMORY[0x277D84F90];
  v21 = *(a1 + 16);
  if (!v21)
  {
    return v51;
  }

  v22 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v45 = (v3 + 104);
  v23 = *(v19 + 72);
  v41 = v13;
  v42 = v23;
  v24 = *MEMORY[0x277D607E0];
  v37 = (v3 + 32);
  v39 = (v3 + 8);
  v43 = *MEMORY[0x277D60BA0];
  v44 = v24;
  while (1)
  {
    v25 = v50;
    sub_2311E66F0(v22, v50, &qword_27DD43570, &qword_23136CAB0);
    v26 = v25[4];
    v27 = v49;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_2313682C0();
    v28 = sub_231367020();
    v29 = v48;
    (*(*(v28 - 8) + 104))(v48, v44, v28);
    v30 = v46;
    (*v45)(v29, v43, v46);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
    v31 = *(v47 + 48);
    sub_2311E66F0(v27, v8, &qword_27DD42F18, &unk_23136B810);
    sub_2311E66F0(v29, &v8[v31], &qword_27DD42F18, &unk_23136B810);
    if (__swift_getEnumTagSinglePayload(v8, 1, v30) == 1)
    {
      break;
    }

    v32 = v41;
    sub_2311E66F0(v8, v41, &qword_27DD42F18, &unk_23136B810);
    if (__swift_getEnumTagSinglePayload(&v8[v31], 1, v30) == 1)
    {
      sub_2311D1F18(v48, &qword_27DD42F18, &unk_23136B810);
      sub_2311D1F18(v49, &qword_27DD42F18, &unk_23136B810);
      (*v39)(v32, v30);
      goto LABEL_8;
    }

    (*v37)(v40, &v8[v31], v30);
    sub_2312D2660(&qword_280F7CA50, MEMORY[0x277D60BA8]);
    v38 = sub_231369F60();
    v33 = *v39;
    (*v39)(v40, v30);
    sub_2311D1F18(v48, &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v27, &qword_27DD42F18, &unk_23136B810);
    v33(v41, v30);
    sub_2311D1F18(v8, &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v50, &qword_27DD43570, &qword_23136CAB0);
    if (v38)
    {
      goto LABEL_13;
    }

LABEL_10:
    v22 += v42;
    if (!--v21)
    {
      return v51;
    }
  }

  sub_2311D1F18(v29, &qword_27DD42F18, &unk_23136B810);
  sub_2311D1F18(v49, &qword_27DD42F18, &unk_23136B810);
  if (__swift_getEnumTagSinglePayload(&v8[v31], 1, v30) != 1)
  {
LABEL_8:
    sub_2311D1F18(v8, &qword_27DD437F0, &unk_23136DFE0);
    sub_2311D1F18(v50, &qword_27DD43570, &qword_23136CAB0);
    goto LABEL_10;
  }

  sub_2311D1F18(v8, &qword_27DD42F18, &unk_23136B810);
  sub_2311D1F18(v50, &qword_27DD43570, &qword_23136CAB0);
LABEL_13:
  v35 = v36[2];
  result = sub_2312CC340(v36[0], 7);
  if (!v35)
  {
    sub_2312673FC();
    return v51;
  }

  return result;
}

uint64_t sub_2312CA870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a2;
  v103 = a1;
  v93 = sub_231367D80();
  v92 = *(v93 - 8);
  v4 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446D8, &qword_231375168);
  v94 = *(v95 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v90 = &v86 - v7;
  v97 = sub_231366A80();
  v100 = *(v97 - 8);
  v8 = *(v100 + 64);
  v9 = MEMORY[0x28223BE20](v97);
  v91 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = &v86 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v96 = &v86 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v86 - v16;
  MEMORY[0x28223BE20](v15);
  v88 = &v86 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446E0, &unk_231375170);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v86 - v20;
  v101 = sub_231366750();
  v99 = *(v101 - 8);
  v21 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v98 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_231367C70();
  v23 = *(v122 - 8);
  v24 = v23[8];
  MEMORY[0x28223BE20](v122);
  v121 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  v112 = *(v26 - 8);
  v113 = v26;
  v27 = v112[8];
  MEMORY[0x28223BE20](v26);
  v111 = (&v86 - v28);
  v29 = 0;
  v114 = a3;
  v123 = *(a3 + 16);
  v115 = *MEMORY[0x277D60E68];
  v116 = *MEMORY[0x277D60DC0];
  v117 = *MEMORY[0x277D60E18];
  v119 = *MEMORY[0x277D60AC0];
  v118 = v23 + 13;
  v120 = (v23 + 1);
  do
  {
    if (v123 == v29)
    {
      return 0;
    }

    v30 = v111;
    sub_2311E66F0(v114 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + v112[9] * v29, v111, &qword_27DD43570, &qword_23136CAB0);
    v126 = v29 + 1;
    v124 = *(v113 + 60);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    v31 = *(v110 + 48);
    v32 = sub_231368270();
    v33 = *(v32 - 8);
    v34 = v121;
    v108 = *(v33 + 104);
    v109 = v32;
    v107 = v33 + 104;
    v108(v121, v115);
    v35 = sub_2313681A0();
    v36 = (*(v35 - 8) + 104);
    v106 = *v36;
    v106(v34, v116, v35);
    v37 = sub_231368210();
    v38 = *(v37 - 8);
    v39 = *(v38 + 104);
    v40 = v38 + 104;
    v39(&v34[v31], v117, v37);
    v41 = *v118;
    v42 = v122;
    (*v118)(v34, v119, v122);
    LODWORD(v124) = sub_231367C60();
    v43 = v34;
    v29 = v126;
    v44 = v42;
    v45 = *v120;
    (*v120)(v43, v44);
    sub_2311D1F18(v30, &qword_27DD43570, &qword_23136CAB0);
  }

  while ((v124 & 1) == 0);
  v111 = v45;
  v112 = v41;
  v113 = v40;
  v114 = v39;
  v123 = v37;
  v124 = v36;
  v126 = v35;
  v47 = v108;
  v46 = v109;
  v48 = v110;
  v49 = v102;
  v50 = v105;
  sub_2312CD614(v104, v102);
  if (!v50)
  {
    v52 = v101;
    if (__swift_getEnumTagSinglePayload(v49, 1, v101) == 1)
    {
      sub_2311D1F18(v49, &qword_27DD446E0, &unk_231375170);
      if (qword_280F7C8A0 != -1)
      {
        swift_once();
      }

      v53 = sub_2313698C0();
      __swift_project_value_buffer(v53, qword_280F8E510);
      v54 = v92;
      v55 = v89;
      v56 = v93;
      (*(v92 + 16))(v89, v103, v93);
      v57 = sub_2313698A0();
      v58 = sub_23136A3A0();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v125[0] = v60;
        *v59 = 136315138;
        v61 = sub_231367D40();
        v62 = v55;
        v64 = v63;
        (*(v54 + 8))(v62, v56);
        v65 = sub_2311CFD58(v61, v64, v125);

        *(v59 + 4) = v65;
        _os_log_impl(&dword_2311CB000, v57, v58, "[getSiriInitiatedAction] No record of deliveryVehicle %s. Returning nil siriInitiatedAction count", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x23192B930](v60, -1, -1);
        MEMORY[0x23192B930](v59, -1, -1);
      }

      else
      {

        (*(v54 + 8))(v55, v56);
      }

      return 0;
    }

    else
    {
      (*(v99 + 32))(v98, v49, v52);
      v66 = v86;
      sub_231366A70();
      sub_231366A00();
      v67 = *(v100 + 8);
      v100 += 8;
      v67(v66, v97);
      v68 = v67;
      sub_231366DE0();
      v103 = sub_231366DC0();
      v105 = 0;
      v69 = *(v48 + 48);
      v70 = v121;
      v47(v121, v115, v46);
      v106(v70, v116, v126);
      v114(&v70[v69], v117, v123);
      v71 = v122;
      (v112)(v70, v119, v122);
      v72 = sub_231367C50();
      v74 = v73;
      (v111)(v70, v71);
      v125[0] = v72;
      v125[1] = v74;
      v35 = v97;
      v75 = v87;
      v76 = v96;
      sub_231366A40();

      v68(v76, v35);
      v77 = v68;
      v78 = v90;
      (*(v99 + 16))(v90, v98, v101);
      v79 = v94;
      v80 = v95;
      (*(v94 + 104))(v78, *MEMORY[0x277D5FF08], v95);
      v81 = v88;
      sub_231366A50();
      (*(v79 + 8))(v78, v80);
      v77(v75, v35);
      v82 = v91;
      sub_231366A00();
      v83 = v105;
      v84 = sub_231366A60();
      if (v83)
      {
        v77(v82, v35);
        v77(v81, v35);
        (*(v99 + 8))(v98, v101);
      }

      else
      {
        v85 = v84;
        v77(v82, v35);
        v77(v81, v35);
        (*(v99 + 8))(v98, v101);
        v35 = *(v85 + 16);
      }
    }
  }

  return v35;
}

uint64_t sub_2312CB494(uint64_t a1)
{
  v2 = sub_2313669F0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_231366AD0();
}

uint64_t sub_2312CB55C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_231369EE0();
  return sub_2313669C0();
}

uint64_t sub_2312CB59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v51 = a4;
  v52 = a6;
  v10 = sub_2313669F0();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_231366AE0();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_231366B10();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  if (sub_231218128(sub_2312D273C, v53, a2) || (a3 & 1) == 0)
  {
    sub_231366AC0();
    v39 = sub_231366AF0();
    sub_2312CBAE4(v13, v39, v40, v52);

    return (*(v49 + 8))(v13, v50);
  }

  else
  {
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v23 = sub_2313698C0();
    __swift_project_value_buffer(v23, qword_280F8E510);
    (*(v19 + 16))(v22, a1, v18);
    v25 = v47;
    v24 = v48;
    (*(v47 + 16))(v17, v51, v48);
    v26 = sub_2313698A0();
    LODWORD(v51) = sub_23136A3A0();
    if (os_log_type_enabled(v26, v51))
    {
      v27 = swift_slowAlloc();
      v46 = v6;
      v28 = v27;
      v45 = swift_slowAlloc();
      v55 = v45;
      *v28 = 136315394;
      v44 = v26;
      v29 = sub_231366AF0();
      v31 = v30;
      (*(v19 + 8))(v22, v18);
      v32 = sub_2311CFD58(v29, v31, &v55);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      sub_231366AC0();
      v33 = sub_2313669B0();
      v35 = v34;
      (*(v49 + 8))(v13, v50);
      (*(v25 + 8))(v17, v48);
      v36 = sub_2311CFD58(v33, v35, &v55);

      *(v28 + 14) = v36;
      v37 = v44;
      _os_log_impl(&dword_2311CB000, v44, v51, "Skipping fetching shadow interaction because this is a enabled suggestion (not a donotShow) %s and shadow interaction has id %s", v28, 0x16u);
      v38 = v45;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v38, -1, -1);
      MEMORY[0x23192B930](v28, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v17, v24);
      (*(v19 + 8))(v22, v18);
    }

    v42 = sub_231368090();
    return __swift_storeEnumTagSinglePayload(v52, 1, 1, v42);
  }
}

uint64_t sub_2312CBA4C()
{
  v0 = sub_231369040();
  v2 = v1;
  if (v0 == sub_231366AF0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23136A900();
  }

  return v5 & 1;
}

uint64_t sub_2312CBAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a2;
  v89 = a3;
  v90 = a4;
  v5 = sub_231366750();
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2313669F0();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = &v76 - v16;
  v17 = sub_231367D80();
  v79 = *(v17 - 8);
  v80 = v17;
  v18 = *(v79 + 64);
  MEMORY[0x28223BE20](v17);
  v78 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_231368260();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v76 - v26;
  v28 = a1;
  v29 = sub_2313669D0();
  v31 = v30;
  sub_231366DE0();
  if (v29 == sub_231366D80() && v31 == v32)
  {

    goto LABEL_15;
  }

  v34 = sub_23136A900();

  if (v34)
  {
LABEL_15:
    v58 = MEMORY[0x277D60E38];
    goto LABEL_16;
  }

  v77 = a1;
  v93 = sub_2313669D0();
  v94 = v35;
  v91 = sub_231366D70();
  v92 = v36;
  sub_231207C1C();
  v37 = sub_23136A520();

  if ((v37 & 1) == 0)
  {
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v61 = sub_2313698C0();
    __swift_project_value_buffer(v61, qword_280F8E510);
    v47 = v83;
    v46 = v84;
    v62 = v28;
    v49 = v85;
    (*(v84 + 16))(v83, v62, v85);
    v63 = sub_2313698A0();
    v64 = sub_23136A3B0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v93 = v66;
      *v65 = 136315138;
      v67 = sub_2313669D0();
      v69 = v68;
      (*(v46 + 8))(v47, v49);
      v70 = sub_2311CFD58(v67, v69, &v93);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_2311CB000, v63, v64, "Not able to extract ObservedActionType from SiriRemembers.Interaction.Type value: %s. Returning nil ObservedActionDTO", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x23192B930](v66, -1, -1);
      MEMORY[0x23192B930](v65, -1, -1);

      goto LABEL_24;
    }

LABEL_23:
    (*(v46 + 8))(v47, v49);
    goto LABEL_24;
  }

  v38 = v77;
  v93 = sub_2313669D0();
  v94 = v39;
  v91 = 95;
  v92 = 0xE100000000000000;
  v40 = sub_23136A4E0();

  sub_231334188(v40);
  v42 = v41;

  if (!v42)
  {
LABEL_10:
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v45 = sub_2313698C0();
    __swift_project_value_buffer(v45, qword_280F8E510);
    v46 = v84;
    v47 = v82;
    v48 = v38;
    v49 = v85;
    (*(v84 + 16))(v82, v48, v85);
    v50 = sub_2313698A0();
    v51 = sub_23136A3B0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v93 = v53;
      *v52 = 136315138;
      v54 = sub_2313669D0();
      v56 = v55;
      (*(v46 + 8))(v47, v49);
      v57 = sub_2311CFD58(v54, v56, &v93);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_2311CB000, v50, v51, "Not able to extract ObservedActionType from SiriRemembers.Interaction.Type value: %s. Returning nil ObservedActionDTO", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x23192B930](v53, -1, -1);
      MEMORY[0x23192B930](v52, -1, -1);

LABEL_24:
      v60 = 1;
      v59 = v90;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v43 = v81;
  sub_231367D70();
  v44 = v80;
  if (__swift_getEnumTagSinglePayload(v43, 1, v80) == 1)
  {
    sub_2311D1F18(v43, &qword_27DD42F18, &unk_23136B810);
    goto LABEL_10;
  }

  v73 = v78;
  v74 = v43;
  v75 = *(v79 + 32);
  v75(v78, v74, v44);
  v75(v27, v73, v44);
  v58 = MEMORY[0x277D60E30];
LABEL_16:
  (*(v21 + 104))(v27, *v58, v20);
  sub_231369EE0();
  sub_2313669E0();
  sub_2313666E0();
  (*(v86 + 8))(v8, v87);
  (*(v21 + 16))(v25, v27, v20);
  v59 = v90;
  sub_231368070();
  (*(v21 + 8))(v27, v20);
  v60 = 0;
LABEL_25:
  v71 = sub_231368090();
  return __swift_storeEnumTagSinglePayload(v59, v60, 1, v71);
}

char *sub_2312CC340(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v175 = a1;
  v173 = sub_2313669F0();
  v143 = *(v173 - 8);
  v3 = *(v143 + 64);
  MEMORY[0x28223BE20](v173);
  v172 = v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446F0, &unk_231375D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v142 - v7;
  v9 = sub_231368090();
  v164 = *(v9 - 8);
  v10 = *(v164 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v171 = v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v170 = v142 - v13;
  v180 = sub_231366B10();
  v152 = *(v180 - 8);
  v14 = *(v152 + 64);
  MEMORY[0x28223BE20](v180);
  v166 = v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_231366AE0();
  v158 = *(v160 - 8);
  v16 = *(v158 + 64);
  v17 = MEMORY[0x28223BE20](v160);
  v165 = v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v178 = v142 - v20;
  MEMORY[0x28223BE20](v19);
  v177 = v142 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446D8, &qword_231375168);
  v167 = *(v22 - 8);
  v168 = v22;
  v23 = *(v167 + 64);
  MEMORY[0x28223BE20](v22);
  v163 = (v142 - v24);
  v161 = sub_231367D80();
  v159 = *(v161 - 8);
  v25 = *(v159 + 64);
  MEMORY[0x28223BE20](v161);
  v156 = v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_231366A80();
  v148 = *(v27 - 8);
  v28 = *(v148 + 8);
  v29 = MEMORY[0x28223BE20](v27);
  v162 = v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v174 = v142 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v155 = v142 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v157 = v142 - v36;
  MEMORY[0x28223BE20](v35);
  v147 = v142 - v37;
  v151 = sub_231366750();
  v150 = *(v151 - 8);
  v38 = *(v150 + 64);
  v39 = MEMORY[0x28223BE20](v151);
  v41 = v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = v142 - v42;
  sub_2313690A0();
  __swift_project_boxed_opaque_existential_1(v182, v182[3]);
  sub_231368F20();
  if ((a2 * 86400) >> 64 != (86400 * a2) >> 63)
  {
    goto LABEL_51;
  }

  v145 = v27;
  v179 = v9;
  v169 = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v182);
  sub_2313666D0();
  if (qword_280F7C8A0 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v44 = sub_2313698C0();
    v45 = __swift_project_value_buffer(v44, qword_280F8E510);
    v46 = v150;
    v47 = *(v150 + 16);
    v149 = v43;
    v48 = v151;
    v154 = v150 + 16;
    v153 = v47;
    (v47)(v41, v43, v151);
    v142[1] = v45;
    v49 = sub_2313698A0();
    v50 = sub_23136A3A0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v182[0] = v52;
      *v51 = 136315138;
      v53 = sub_231366730();
      v55 = v54;
      v144 = *(v46 + 8);
      v144(v41, v48);
      v56 = sub_2311CFD58(v53, v55, v182);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_2311CB000, v49, v50, "Querying for SiriHintSpoken instances starting from date %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x23192B930](v52, -1, -1);
      MEMORY[0x23192B930](v51, -1, -1);
    }

    else
    {

      v144 = *(v46 + 8);
      v144(v41, v48);
    }

    v57 = v174;
    sub_231366A70();
    v58 = v155;
    sub_231366A00();
    v59 = v148 + 8;
    v146 = *(v148 + 1);
    v60 = v145;
    v146(v57, v145);
    v61 = sub_231366DE0();
    v62 = *MEMORY[0x277D607E0];
    v63 = sub_231367020();
    v64 = v156;
    (*(*(v63 - 8) + 104))(v156, v62, v63);
    v65 = v159;
    v66 = v161;
    (*(v159 + 104))(v64, *MEMORY[0x277D60BA0], v161);
    v174 = v61;
    sub_231366D60();
    (*(v65 + 8))(v64, v66);
    v67 = v157;
    sub_231366A30();

    v68 = v146;
    v146(v58, v60);
    v69 = v163;
    (v153)(v163, v149, v151);
    v70 = v59;
    v71 = v60;
    v73 = v167;
    v72 = v168;
    (*(v167 + 104))(v69, *MEMORY[0x277D5FF18], v168);
    v74 = v147;
    sub_231366A50();
    (*(v73 + 8))(v69, v72);
    v68(v67, v71);
    v75 = v162;
    sub_231366A00();
    v76 = v176;
    v77 = sub_231366A10();
    if (v76)
    {
      v68(v75, v71);
      v68(v74, v71);
      v144(v149, v151);
      return v70;
    }

    v43 = v77;
    v78 = v75;
    v79 = v71;
    v68(v78, v71);
    sub_231369EE0();
    v80 = sub_2313698A0();
    v81 = sub_23136A3A0();

    v82 = os_log_type_enabled(v80, v81);
    v157 = v43;
    v148 = v70;
    v142[0] = 0;
    if (v82)
    {
      LODWORD(v167) = v81;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = v84;
      v182[0] = v84;
      *v83 = 136315138;
      v86 = *(v43 + 2);
      v87 = MEMORY[0x277D84F90];
      if (v86)
      {
        v161 = v84;
        v162 = v83;
        v163 = v80;
        v181 = MEMORY[0x277D84F90];
        sub_2311F4E34();
        v87 = v181;
        v175 = *(v158 + 16);
        v88 = &v43[(*(v158 + 80) + 32) & ~*(v158 + 80)];
        v176 = *(v158 + 72);
        v168 = (v158 + 16);
        v89 = (v158 + 8);
        do
        {
          v90 = v177;
          v91 = v87;
          v92 = v160;
          v93 = v175;
          v175(v177, v88, v160);
          v93(v178, v90, v92);
          v94 = sub_23136A010();
          v96 = v95;
          (*v89)(v90, v92);
          v87 = v91;
          v181 = v91;
          v97 = *(v91 + 16);
          if (v97 >= *(v91 + 24) >> 1)
          {
            sub_2311F4E34();
            v87 = v181;
          }

          *(v87 + 16) = v97 + 1;
          v98 = v87 + 16 * v97;
          *(v98 + 32) = v94;
          *(v98 + 40) = v96;
          v88 = &v176[v88];
          --v86;
        }

        while (v86);
        v79 = v145;
        v101 = v143;
        v43 = v157;
        v80 = v163;
        v83 = v162;
        v85 = v161;
      }

      else
      {
        v101 = v143;
      }

      v181 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
      sub_2311E5648();
      v102 = sub_231369F50();
      v104 = v103;

      v105 = sub_2311CFD58(v102, v104, v182);

      *(v83 + 4) = v105;
      _os_log_impl(&dword_2311CB000, v80, v167, "Got spoken interactions as: \n%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x23192B930](v85, -1, -1);
      MEMORY[0x23192B930](v83, -1, -1);

      v41 = v166;
      v99 = v160;
      v100 = v165;
    }

    else
    {

      v41 = v166;
      v99 = v160;
      v100 = v165;
      v101 = v143;
    }

    v156 = *(v43 + 2);
    if (!v156)
    {
      break;
    }

    v106 = 0;
    v155 = &v43[(*(v158 + 80) + 32) & ~*(v158 + 80)];
    v154 = v158 + 16;
    v175 = (v152 + 16);
    v107 = (v152 + 8);
    v168 = (v101 + 8);
    v167 = v164 + 32;
    v163 = (v164 + 16);
    v162 = (v164 + 8);
    v153 = (v158 + 8);
    v178 = MEMORY[0x277D84F90];
    while (v106 < *(v43 + 2))
    {
      v108 = *(v158 + 72);
      v161 = v106;
      (*(v158 + 16))(v100, &v155[v108 * v106], v99);
      v109 = sub_231366AB0();
      v110 = sub_231366DA0();
      if (*(v109 + 16) && (v112 = sub_231215F6C(v110, v111), (v113 & 1) != 0))
      {
        v114 = *(*(v109 + 56) + 8 * v112);
        sub_231369EE0();
      }

      else
      {
        v114 = MEMORY[0x277D84F90];
      }

      v115 = *(v114 + 16);
      if (v115)
      {
        v116 = (*(v152 + 80) + 32) & ~*(v152 + 80);
        v159 = v114;
        v117 = v114 + v116;
        v118 = *(v152 + 72);
        v176 = *(v152 + 16);
        v177 = v118;
        while (1)
        {
          (v176)(v41, v117, v180);
          v119 = sub_231366B00();
          v121 = v120;
          if (v119 == sub_231366DB0() && v121 == v122)
          {
            break;
          }

          v124 = sub_23136A900();

          if (v124)
          {
            goto LABEL_34;
          }

          (*v107)(v41, v180);
LABEL_41:
          v117 += v177;
          if (!--v115)
          {

            v99 = v160;
            goto LABEL_45;
          }
        }

LABEL_34:
        v125 = v172;
        sub_231366AC0();
        v126 = sub_231366AF0();
        v127 = v41;
        v128 = v169;
        sub_2312CBAE4(v125, v126, v129, v169);

        (*v168)(v125, v173);
        v130 = v179;
        if (__swift_getEnumTagSinglePayload(v128, 1, v179) == 1)
        {
          (*v107)(v127, v180);
          sub_2311D1F18(v128, &qword_27DD446F0, &unk_231375D70);
          v41 = v127;
        }

        else
        {
          v131 = *v167;
          v132 = v170;
          (*v167)(v170, v128, v130);
          (v163->isa)(v171, v132, v130);
          v133 = v178;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23126E388(0, *(v133 + 16) + 1, 1, v133);
            v133 = v139;
          }

          v135 = *(v133 + 16);
          v134 = *(v133 + 24);
          if (v135 >= v134 >> 1)
          {
            sub_23126E388(v134 > 1, v135 + 1, 1, v133);
            v178 = v140;
          }

          else
          {
            v178 = v133;
          }

          v136 = v164;
          v137 = v179;
          (*(v164 + 8))(v170, v179);
          v41 = v166;
          (*v107)(v166, v180);
          v138 = v178;
          *(v178 + 2) = v135 + 1;
          v131(&v138[((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v135], v171, v137);
          v100 = v165;
        }

        goto LABEL_41;
      }

LABEL_45:
      v106 = v161 + 1;
      (*v153)(v100, v99);
      v43 = v157;
      if (v106 == v156)
      {

        v79 = v145;
        v70 = v178;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  v70 = MEMORY[0x277D84F90];
LABEL_48:
  v146(v147, v79);
  v144(v149, v151);
  return v70;
}

uint64_t sub_2312CD614@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v81 = a1;
  v73 = a2;
  v88 = sub_231366750();
  v77 = *(v88 - 8);
  v2 = *(v77 + 8);
  v3 = MEMORY[0x28223BE20](v88);
  v84 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v83 = v69 - v5;
  v6 = sub_2313669F0();
  v85 = *(v6 - 8);
  v7 = *(v85 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446E8, &qword_231375180);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v71 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v69 - v16;
  v75 = sub_231366A80();
  v17 = *(v75 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v75);
  v80 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v69 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v69 - v25;
  MEMORY[0x28223BE20](v24);
  v74 = v69 - v27;
  sub_231366DE0();
  v28 = sub_231366D70();
  v30 = v29;
  v31 = sub_231367D40();
  v33 = v32;
  v86 = v28;
  v87 = v30;
  sub_231369EE0();
  MEMORY[0x23192A730](v31, v33);

  sub_231366A70();
  sub_231366A00();
  v36 = *(v17 + 8);
  v34 = v17 + 8;
  v35 = v36;
  v37 = v23;
  v38 = v75;
  v36(v37, v75);
  v39 = v74;
  sub_231366A30();
  v40 = v80;

  v36(v26, v38);
  sub_231366A00();
  v41 = v82;
  v42 = sub_231366A60();
  if (v41)
  {
    v35(v40, v38);
    return (v35)(v39, v38);
  }

  else
  {
    v82 = v42;
    v44 = v40;
    v45 = v77;
    v69[0] = v35;
    v69[1] = 0;
    v47 = v72;
    v46 = v73;
    v48 = v88;
    v35(v44, v38);
    v81 = *(v82 + 16);
    v69[2] = v34;
    if (v81)
    {
      v49 = v85;
      v51 = (v85 + 16);
      v50 = *(v85 + 16);
      v52 = v47;
      v78 = v82 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v79 = v50;
      result = (v50)(v47);
      v53 = (v45 + 8);
      v80 = v51;
      v76 = (v51 + 16);
      v77 = v51 - 8;
      for (i = 1; ; ++i)
      {
        v56 = v83;
        v55 = v84;
        if (v81 == i)
        {

          v64 = v70;
          (*v76)(v70, v52, v6);
          __swift_storeEnumTagSinglePayload(v64, 0, 1, v6);
          v65 = v73;
          v66 = v88;
          goto LABEL_13;
        }

        if (i >= *(v82 + 16))
        {
          break;
        }

        v79(v10, v78 + *(v49 + 72) * i, v6);
        sub_2313669E0();
        sub_2313669E0();
        v57 = sub_231366710();
        v58 = v55;
        v59 = v6;
        v60 = *v53;
        v61 = v88;
        (*v53)(v58, v88);
        v62 = v61;
        v49 = v85;
        v60(v56, v62);
        v63 = *(v49 + 8);
        if (v57)
        {
          v63(v52, v59);
          result = (*v76)(v52, v10, v59);
        }

        else
        {
          result = (v63)(v10, v59);
        }

        v6 = v59;
      }

      __break(1u);
    }

    else
    {

      v64 = v70;
      __swift_storeEnumTagSinglePayload(v70, 1, 1, v6);
      v49 = v85;
      v65 = v46;
      v66 = v48;
LABEL_13:
      v67 = v71;
      sub_2311E66F0(v64, v71, &qword_27DD446E8, &qword_231375180);
      if (__swift_getEnumTagSinglePayload(v67, 1, v6) == 1)
      {
        sub_2311D1F18(v64, &qword_27DD446E8, &qword_231375180);
        (v69[0])(v74, v75);
        sub_2311D1F18(v67, &qword_27DD446E8, &qword_231375180);
        v68 = 1;
      }

      else
      {
        sub_2313669E0();
        sub_2311D1F18(v64, &qword_27DD446E8, &qword_231375180);
        (v69[0])(v74, v75);
        (*(v49 + 8))(v67, v6);
        v68 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v65, v68, 1, v66);
    }
  }

  return result;
}

uint64_t SiriRemembersDataService.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SiriRemembersDataService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_24_3();

  return swift_deallocClassInstance();
}

uint64_t sub_2312CDD5C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311D05C8;

  return SiriRemembersDataService.createDataProvider(candidates:generationId:environment:)();
}

double sub_2312CDE08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_231215F6C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_2311D1D6C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2312CDEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(type metadata accessor for RankedCandidateSuggestion() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = sub_231369050();
  v3[25] = v5;
  v6 = *(v5 - 8);
  v3[26] = v6;
  v7 = *(v6 + 64) + 15;
  v3[27] = swift_task_alloc();
  v8 = sub_231367C70();
  v3[28] = v8;
  v9 = *(v8 - 8);
  v3[29] = v9;
  v10 = *(v9 + 64) + 15;
  v3[30] = swift_task_alloc();
  v11 = sub_231367F40();
  v3[31] = v11;
  v12 = *(v11 - 8);
  v3[32] = v12;
  v13 = *(v12 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v14 = sub_2313676B0();
  v3[35] = v14;
  v15 = *(v14 - 8);
  v3[36] = v15;
  v16 = *(v15 + 64) + 15;
  v3[37] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v18 = sub_231368BC0();
  v3[40] = v18;
  v19 = *(v18 - 8);
  v3[41] = v19;
  v20 = *(v19 + 64) + 15;
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312CE164, 0, 0);
}

uint64_t sub_2312CE164()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 184);
  (*(v0 + 176))(*(v0 + 168));
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 344) = v2;
  swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 352) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_22_7(v3);

  return sub_23132C6C8();
}

uint64_t sub_2312CE220()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 352);
  v5 = *(v3 + 344);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 360) = v8;

  swift_unknownObjectRelease();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312CE324()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 368) = v1;
  swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_22_7(v2);

  return sub_23132D44C();
}

uint64_t sub_2312CE3CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 376);
  v5 = *(v3 + 368);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 384) = v8;

  swift_unknownObjectRelease();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312CE4D0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[49] = v1;
  v0[50] = v2;
  v0[51] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v3 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CE550()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  v4 = v0[42];
  sub_231369400();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312CE5BC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[52] = v1;
  v0[53] = v2;
  v0[54] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v3 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CE63C()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  *(v0 + 136) = sub_23126C0B8();
  *(v0 + 144) = v4;
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312CE6AC()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 280);
  OUTLINED_FUNCTION_35_12();
  v5 = OUTLINED_FUNCTION_28_0();
  sub_2311E66F0(v5, v6, v7, v8);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v9 = *(v0 + 312);
LABEL_10:
    sub_2311D1F18(v9, &qword_27DD432D8, &unk_23136BED0);
    goto LABEL_11;
  }

  v10 = *(v0 + 296);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  (*(*(v0 + 288) + 32))(v10, *(v0 + 304), *(v0 + 280));
  sub_231367680();
  v15 = *MEMORY[0x277D60D30];
  v16 = OUTLINED_FUNCTION_37_14();
  v17(v16);
  OUTLINED_FUNCTION_28_0();
  sub_231367F30();
  v18 = OUTLINED_FUNCTION_36_11();
  v1(v18);
  (v1)(v11, v13);
  v19 = *(v0 + 312);
  v20 = *(v0 + 288);
  v21 = *(v0 + 280);
  if ((v10 & 1) == 0)
  {
    v33 = OUTLINED_FUNCTION_18_19();
    v34(v33);
    v9 = v19;
    goto LABEL_10;
  }

  v22 = *(v0 + 296);
  v23 = COERCE_DOUBLE(sub_2313676A0());
  v25 = v24;
  v26 = OUTLINED_FUNCTION_18_19();
  v27(v26);
  v28 = sub_2311D1F18(v19, &qword_27DD432D8, &unk_23136BED0);
  if ((v25 & 1) == 0)
  {
    if ((~*&v23 & 0x7FF0000000000000) != 0)
    {
      if (v23 > -1.0)
      {
        if (v23 < 1.84467441e19)
        {
          v31 = 0;
          v32 = v23;
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return MEMORY[0x2821C6E58](v28, v29, v30);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
  v32 = 0;
  v31 = 1;
LABEL_12:
  *(v0 + 480) = v31;
  *(v0 + 440) = v32;
  OUTLINED_FUNCTION_9_4();
  v35 = *(MEMORY[0x277D60F60] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 448) = v36;
  *v36 = v37;
  v36[1] = sub_2312CE8E0;
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821C6E58](v28, v29, v30);
}

uint64_t sub_2312CE8E0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 448);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312CE9C4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v1[57] = v2;
  ObjectType = swift_getObjectType();
  v4 = *(MEMORY[0x277D61340] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v1[58] = v5;
  *v5 = v6;
  v5[1] = sub_2312CEA80;
  v7 = v1[30];

  return MEMORY[0x2821C7790](v7, ObjectType, v0);
}

uint64_t sub_2312CEA80()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 464);
  v3 = *(v1 + 456);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312CEB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  v19 = *(MEMORY[0x277D60F68] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v18 + 472) = v20;
  *v20 = v21;
  v20[1] = sub_2312CEC1C;
  v22 = *(v18 + 216);
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821C6E60](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2312CEC1C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312CED00()
{
  v2 = *(v0 + 360);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434B8, &unk_2313706C0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  OUTLINED_FUNCTION_46_1(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_33_12();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_23136B670;
  sub_2311E1984(v4, v3);
  OUTLINED_FUNCTION_40_12();
  sub_2313676D0();

  v8 = *(v0 + 384);
  if (v2)
  {
    *(v0 + 152) = *(v0 + 360);
    if (v8)
    {
      *(v0 + 160) = v8;
      sub_2313692F0();
      OUTLINED_FUNCTION_11_21();
      sub_2312D2660(v9, v10);
      OUTLINED_FUNCTION_38_9();

      v38 = sub_231369F60();
      v11 = *(v0 + 152);

      v37 = *(v0 + 384);
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }
  }

  else
  {
    v37 = *(v0 + 384);
    v38 = v8 == 0;
  }

  v35 = *(v0 + 480);
  v36 = *(v0 + 144);
  v33 = *(v0 + 440);
  v34 = *(v0 + 136);
  v13 = *(v0 + 328);
  v12 = *(v0 + 336);
  v32 = *(v0 + 360);
  v14 = *(v0 + 320);
  v39 = *(v0 + 312);
  v40 = *(v0 + 304);
  v41 = *(v0 + 296);
  v42 = *(v0 + 272);
  v43 = *(v0 + 264);
  v15 = *(v0 + 232);
  v30 = *(v0 + 216);
  v31 = *(v0 + 224);
  v16 = *(v0 + 208);
  v28 = *(v0 + 240);
  v29 = *(v0 + 200);
  v17 = *(v0 + 192);
  v18 = v44 + v1;
  sub_2311CF324(v0 + 56, v18 + v5[12]);
  v19 = OUTLINED_FUNCTION_21_18(v5[13]);
  v20(v19, v12, v14);
  OUTLINED_FUNCTION_21_18(v5[15]);
  OUTLINED_FUNCTION_9_23();
  v21();
  v22 = OUTLINED_FUNCTION_21_18(v5[16]);
  v23(v22, v30, v29);
  sub_2311E18C4(v17, v18);
  sub_2311D38A8((v0 + 96), v18 + v5[7]);
  *(v18 + v5[8]) = v38 & 1;
  *(v18 + v5[9]) = v37;
  *(v18 + v5[10]) = v32;
  v24 = v18 + v5[11];
  *v24 = v33;
  *(v24 + 8) = v35;
  v25 = v18 + v5[14];
  *v25 = v34;
  *(v25 + 8) = v36 & 1;
  (*(v16 + 8))(v30, v29);
  (*(v15 + 8))(v28, v31);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  (*(v13 + 8))(v12, v14);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v26(v44);
}

uint64_t sub_2312CF0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = sub_231369050();
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  v7 = sub_231367C70();
  v3[32] = v7;
  v8 = *(v7 - 8);
  v3[33] = v8;
  v9 = *(v8 + 64) + 15;
  v3[34] = swift_task_alloc();
  v10 = sub_231367F40();
  v3[35] = v10;
  v11 = *(v10 - 8);
  v3[36] = v11;
  v12 = *(v11 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v13 = sub_2313676B0();
  v3[39] = v13;
  v14 = *(v13 - 8);
  v3[40] = v14;
  v15 = *(v14 + 64) + 15;
  v3[41] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v17 = sub_231368BC0();
  v3[44] = v17;
  v18 = *(v17 - 8);
  v3[45] = v18;
  v19 = *(v18 + 64) + 15;
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312CF338, 0, 0);
}

uint64_t sub_2312CF338()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 208));
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 376) = v2;
  swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_22_7(v3);

  return sub_23132C6C8();
}

uint64_t sub_2312CF3F4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 384);
  v5 = *(v3 + 376);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 392) = v8;

  swift_unknownObjectRelease();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312CF4F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 400) = v1;
  swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 408) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_22_7(v2);

  return sub_23132D44C();
}

uint64_t sub_2312CF5A0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 408);
  v5 = *(v3 + 400);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 416) = v8;

  swift_unknownObjectRelease();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312CF6A4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[53] = v1;
  v0[54] = v2;
  v0[55] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v3 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CF724()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[46];
  sub_231369400();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312CF790()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[56] = v1;
  v0[57] = v2;
  v0[58] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v3 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CF810()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  *(v0 + 176) = sub_23126C0B8();
  *(v0 + 184) = v4;
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312CF880()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 312);
  OUTLINED_FUNCTION_35_12();
  v5 = OUTLINED_FUNCTION_28_0();
  sub_2311E66F0(v5, v6, v7, v8);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v9 = *(v0 + 344);
LABEL_10:
    sub_2311D1F18(v9, &qword_27DD432D8, &unk_23136BED0);
    goto LABEL_11;
  }

  v10 = *(v0 + 328);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v13 = *(v0 + 280);
  v14 = *(v0 + 288);
  (*(*(v0 + 320) + 32))(v10, *(v0 + 336), *(v0 + 312));
  sub_231367680();
  v15 = *MEMORY[0x277D60D30];
  v16 = OUTLINED_FUNCTION_37_14();
  v17(v16);
  OUTLINED_FUNCTION_28_0();
  sub_231367F30();
  v18 = OUTLINED_FUNCTION_36_11();
  v1(v18);
  (v1)(v11, v13);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 312);
  if ((v10 & 1) == 0)
  {
    v33 = OUTLINED_FUNCTION_18_19();
    v34(v33);
    v9 = v19;
    goto LABEL_10;
  }

  v22 = *(v0 + 328);
  v23 = COERCE_DOUBLE(sub_2313676A0());
  v25 = v24;
  v26 = OUTLINED_FUNCTION_18_19();
  v27(v26);
  v28 = sub_2311D1F18(v19, &qword_27DD432D8, &unk_23136BED0);
  if ((v25 & 1) == 0)
  {
    if ((~*&v23 & 0x7FF0000000000000) != 0)
    {
      if (v23 > -1.0)
      {
        if (v23 < 1.84467441e19)
        {
          v31 = 0;
          v32 = v23;
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return MEMORY[0x2821C6E58](v28, v29, v30);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
  v32 = 0;
  v31 = 1;
LABEL_12:
  *(v0 + 512) = v31;
  *(v0 + 472) = v32;
  OUTLINED_FUNCTION_9_4();
  v35 = *(MEMORY[0x277D60F60] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 480) = v36;
  *v36 = v37;
  v36[1] = sub_2312CFAB4;
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821C6E58](v28, v29, v30);
}

uint64_t sub_2312CFAB4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312CFB98()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v1[61] = v2;
  ObjectType = swift_getObjectType();
  v4 = *(MEMORY[0x277D61340] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v1[62] = v5;
  *v5 = v6;
  v5[1] = sub_2312CFC54;
  v7 = v1[34];

  return MEMORY[0x2821C7790](v7, ObjectType, v0);
}

uint64_t sub_2312CFC54()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 496);
  v3 = *(v1 + 488);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312CFD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  v19 = *(MEMORY[0x277D60F68] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v18 + 504) = v20;
  *v20 = v21;
  v20[1] = sub_2312CFDF0;
  v22 = *(v18 + 248);
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821C6E60](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2312CFDF0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 504);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312CFED4()
{
  v2 = *(v0 + 392);
  v3 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43568, &qword_23136CAA8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  OUTLINED_FUNCTION_46_1(v41);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_33_12();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_23136B670;
  sub_2311CF324(v3, v0 + 96);
  OUTLINED_FUNCTION_40_12();
  sub_2313676D0();

  v6 = *(v0 + 416);
  if (v2)
  {
    *(v0 + 192) = *(v0 + 392);
    if (v6)
    {
      *(v0 + 200) = v6;
      sub_2313692F0();
      OUTLINED_FUNCTION_11_21();
      sub_2312D2660(v7, v8);
      OUTLINED_FUNCTION_38_9();

      v34 = sub_231369F60();
      v9 = *(v0 + 192);

      v35 = *(v0 + 416);
    }

    else
    {
      v35 = 0;
      v34 = 0;
    }
  }

  else
  {
    v35 = *(v0 + 416);
    v34 = v6 == 0;
  }

  v32 = *(v0 + 512);
  v33 = *(v0 + 184);
  v30 = *(v0 + 472);
  v31 = *(v0 + 176);
  v10 = *(v0 + 360);
  v11 = *(v0 + 368);
  v29 = *(v0 + 392);
  v12 = *(v0 + 352);
  v36 = *(v0 + 344);
  v37 = *(v0 + 336);
  v38 = *(v0 + 328);
  v39 = *(v0 + 304);
  v40 = *(v0 + 296);
  v13 = *(v0 + 264);
  v14 = *(v0 + 256);
  v27 = *(v0 + 272);
  v28 = *(v0 + 248);
  v15 = v42 + v1;
  v17 = *(v0 + 232);
  v16 = *(v0 + 240);
  sub_2311CF324(v0 + 56, v15 + 120);
  v18 = OUTLINED_FUNCTION_21_18(v41[13]);
  v19(v18, v11, v12);
  v20 = OUTLINED_FUNCTION_21_18(v41[15]);
  v21(v20, v27, v14);
  v22 = OUTLINED_FUNCTION_21_18(v41[16]);
  v23(v22, v28, v17);
  sub_2311D38A8((v0 + 96), v15);
  sub_2311D38A8((v0 + 136), v15 + 40);
  *(v15 + 80) = v34 & 1;
  *(v15 + 88) = v35;
  *(v15 + 96) = v29;
  *(v15 + 104) = v30;
  *(v15 + 112) = v32;
  v24 = v15 + v41[14];
  *v24 = v31;
  *(v24 + 8) = v33 & 1;
  (*(v16 + 8))(v28, v17);
  (*(v13 + 8))(v27, v14);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  (*(v10 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v25(v42);
}

double sub_2312D0260@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_231215F6C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E90, &unk_231375140);
    sub_23136A700();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_2311D38A8((*(v14 + 56) + 40 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
    sub_23136A720();
    *v4 = v14;
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

double sub_2312D035C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_231215F6C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
    sub_23136A700();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_2312250F8((*(v14 + 56) + 32 * v9), a3);
    sub_23136A720();
    *v4 = v14;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_2312D0444@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_231215F6C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E00, &unk_231370780);
    sub_23136A700();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_2311D38A8((*(v14 + 56) + 40 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    sub_23136A720();
    *v4 = v14;
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

uint64_t sub_2312D0588(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v12 = *v6;
  v13 = sub_231215F6C(a1, a2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v13;
  v16 = *v11;
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *v11;
  v17 = *(*v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_23136A700();
  v18 = *(*(v21 + 48) + 16 * v15 + 8);

  v19 = *(*(v21 + 56) + 8 * v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_23136A720();
  *v11 = v21;
  return v19;
}

uint64_t sub_2312D06F4()
{
  OUTLINED_FUNCTION_26();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2311DDECC;
  v5 = OUTLINED_FUNCTION_28_0();

  return sub_2312CDEB4(v5, v6, v2);
}

uint64_t sub_2312D079C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43558, &qword_231374890);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2312D0DBC(v7, v8, a1, v4);
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
    return sub_2312D09D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2312D08A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
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
        sub_231368090();
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231368090() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2312D1498(v8, v9, a1, v4);
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
    return sub_2312D0B24(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2312D09D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3;
    v6 = result - a3;
    while (2)
    {
      v32 = a3;
      v7 = v6;
      v8 = v5;
      while (1)
      {
        sub_2311E66F0(v8, v31, &qword_27DD43558, &qword_231374890);
        v9 = v8 - 3;
        sub_2311E66F0((v8 - 3), v30, &qword_27DD43558, &qword_231374890);
        if (v31[0] == v30[0] && v31[1] == v30[1])
        {
          break;
        }

        v11 = sub_23136A900();
        OUTLINED_FUNCTION_12_18();
        sub_2311D1F18(v12, v13, v14);
        OUTLINED_FUNCTION_12_18();
        result = sub_2311D1F18(v15, v16, v17);
        if (v11)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v19 = v8[1];
          v18 = v8[2];
          v20 = *v8;
          v21 = *(v8 - 2);
          *v8 = *v9;
          v8[1] = v21;
          v8[2] = *(v8 - 1);
          *v9 = v20;
          *(v8 - 2) = v19;
          v8 -= 3;
          v9[2] = v18;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_12_18();
      sub_2311D1F18(v23, v24, v25);
      OUTLINED_FUNCTION_12_18();
      result = sub_2311D1F18(v26, v27, v28);
LABEL_14:
      a3 = v32 + 1;
      v5 += 48;
      --v6;
      if (v32 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2312D0B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_231368090();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v36 - v13;
  result = MEMORY[0x28223BE20](v12);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v15 + 16);
    v48 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v44 = (v15 + 32);
    v45 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v41 = v20;
      v42 = a3;
      v39 = v22;
      v40 = v21;
      v23 = v21;
      v24 = v20;
      do
      {
        v25 = v49;
        v26 = v47;
        v47(v49, v22, v8);
        v27 = v50;
        v26(v50, v24, v8);
        sub_231368050();
        v29 = v28;
        sub_231368050();
        v31 = v30;
        v32 = *v19;
        (*v19)(v27, v8);
        result = v32(v25, v8);
        if (v29 >= v31)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return result;
        }

        v33 = *v44;
        v34 = v46;
        (*v44)(v46, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v33)(v24, v34, v8);
        v24 += v43;
        v22 += v43;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v42 + 1;
      v20 = v41 + v37;
      v21 = v40 - 1;
      v22 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2312D0DBC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_106:
    v143 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v127 = v6 + 16;
      v128 = *(v6 + 2);
      while (v128 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v129 = v6;
        v130 = &v6[16 * v128];
        v6 = *v130;
        v131 = &v127[2 * v128];
        v132 = *(v131 + 1);
        v133 = v147;
        sub_2312D1E78((*a3 + 48 * *v130), (*a3 + 48 * *v131), (*a3 + 48 * v132), v143);
        v147 = v133;
        if (v133)
        {
          break;
        }

        if (v132 < v6)
        {
          goto LABEL_132;
        }

        if (v128 - 2 >= *v127)
        {
          goto LABEL_133;
        }

        *v130 = v6;
        *(v130 + 1) = v132;
        v134 = *v127 - v128;
        if (*v127 < v128)
        {
          goto LABEL_134;
        }

        v128 = *v127 - 1;
        sub_2311E6448(v131 + 16, v134, v131);
        *v127 = v128;
        v6 = v129;
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_2311E6430(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &qword_27DD43558;
  while (1)
  {
    v8 = v5;
    v9 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v136 = v6;
      v10 = *a3;
      OUTLINED_FUNCTION_31_16(*a3 + 48 * v9, v146);
      OUTLINED_FUNCTION_31_16(v10 + 48 * v8, v145);
      OUTLINED_FUNCTION_25_14();
      v13 = v13 && v11 == v12;
      if (v13)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_23136A900();
      }

      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v14, v15, v16);
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v17, v18, v19);
      v20 = (v8 + 2);
      v138 = v8;
      v21 = v10 + 48 * v8;
      v22 = 48 * v8;
      v23 = v21 + 96;
      v24 = v22 + 48;
      v25 = v9;
      do
      {
        v9 = v20;
        v26 = v25;
        v27 = v24;
        if (v20 >= v4)
        {
          break;
        }

        v6 = v4;
        OUTLINED_FUNCTION_31_16(v23, v146);
        OUTLINED_FUNCTION_31_16(v23 - 48, v145);
        OUTLINED_FUNCTION_25_14();
        v30 = v13 && v28 == v29;
        v31 = v30 ? 0 : sub_23136A900();
        OUTLINED_FUNCTION_9_23();
        sub_2311D1F18(v32, v33, v34);
        OUTLINED_FUNCTION_9_23();
        sub_2311D1F18(v35, v36, v37);
        v38 = v143 ^ v31;
        v20 = v9 + 1;
        v23 += 48;
        v25 = v26 + 1;
        v24 = v27 + 48;
        v4 = v6;
      }

      while ((v38 & 1) == 0);
      if (v143)
      {
        v39 = v138;
        if (v9 < v138)
        {
          goto LABEL_138;
        }

        if (v138 >= v9)
        {
          v6 = v136;
          v8 = v138;
          goto LABEL_31;
        }

        v6 = v136;
        do
        {
          if (v39 != v26)
          {
            v40 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v41 = (v40 + v22);
            v42 = (v40 + v27);
            v43 = *v41;
            v44 = v41[1];
            v45 = v41[2];
            v47 = v42[1];
            v46 = v42[2];
            *v41 = *v42;
            v41[1] = v47;
            v41[2] = v46;
            v42[1] = v44;
            v42[2] = v45;
            *v42 = v43;
          }

          ++v39;
          v27 -= 48;
          v22 += 48;
          v48 = v39 < v26--;
        }

        while (v48);
      }

      else
      {
        v6 = v136;
      }

      v8 = v138;
    }

LABEL_31:
    v49 = a3[1];
    if (v9 < v49)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_137;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v9 < v8)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = *(v6 + 2);
      sub_23126DB78();
      v6 = v125;
    }

    v79 = *(v6 + 2);
    v80 = v79 + 1;
    if (v79 >= *(v6 + 3) >> 1)
    {
      sub_23126DB78();
      v6 = v126;
    }

    *(v6 + 2) = v80;
    v81 = v6 + 32;
    v82 = &v6[16 * v79 + 32];
    *v82 = v8;
    *(v82 + 1) = v9;
    v142 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v143 = v9;
    if (v79)
    {
      while (1)
      {
        v83 = v80 - 1;
        v84 = &v81[16 * v80 - 16];
        v85 = &v6[16 * v80];
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v86 = *(v6 + 4);
          v87 = *(v6 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_74:
          if (v89)
          {
            goto LABEL_123;
          }

          v101 = *v85;
          v100 = *(v85 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_126;
          }

          v105 = *(v84 + 1);
          v106 = v105 - *v84;
          if (__OFSUB__(v105, *v84))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v103, v106))
          {
            goto LABEL_131;
          }

          if (v103 + v106 >= v88)
          {
            if (v88 < v106)
            {
              v83 = v80 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v80 < 2)
        {
          goto LABEL_125;
        }

        v108 = *v85;
        v107 = *(v85 + 1);
        v96 = __OFSUB__(v107, v108);
        v103 = v107 - v108;
        v104 = v96;
LABEL_89:
        if (v104)
        {
          goto LABEL_128;
        }

        v110 = *v84;
        v109 = *(v84 + 1);
        v96 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v96)
        {
          goto LABEL_130;
        }

        if (v111 < v103)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v83 - 1 >= v80)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v115 = &v81[16 * v83 - 16];
        v116 = *v115;
        v117 = v83;
        v118 = &v81[16 * v83];
        v119 = *(v118 + 1);
        v120 = v147;
        sub_2312D1E78((*a3 + 48 * *v115), (*a3 + 48 * *v118), (*a3 + 48 * v119), v142);
        v147 = v120;
        if (v120)
        {
          goto LABEL_116;
        }

        if (v119 < v116)
        {
          goto LABEL_118;
        }

        v121 = v7;
        v122 = v81;
        v123 = v6;
        v6 = *(v6 + 2);
        if (v117 > v6)
        {
          goto LABEL_119;
        }

        *v115 = v116;
        *(v115 + 1) = v119;
        if (v117 >= v6)
        {
          goto LABEL_120;
        }

        v80 = (v6 - 1);
        sub_2311E6448(v118 + 16, &v6[-v117 - 1], v118);
        *(v123 + 2) = v6 - 1;
        v48 = v6 > 2;
        v6 = v123;
        v81 = v122;
        v7 = v121;
        if (!v48)
        {
          goto LABEL_103;
        }
      }

      v90 = &v81[16 * v80];
      v91 = *(v90 - 8);
      v92 = *(v90 - 7);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_121;
      }

      v95 = *(v90 - 6);
      v94 = *(v90 - 5);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_122;
      }

      v97 = *(v85 + 1);
      v98 = v97 - *v85;
      if (__OFSUB__(v97, *v85))
      {
        goto LABEL_124;
      }

      v96 = __OFADD__(v88, v98);
      v99 = v88 + v98;
      if (v96)
      {
        goto LABEL_127;
      }

      if (v99 >= v93)
      {
        v113 = *v84;
        v112 = *(v84 + 1);
        v96 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v96)
        {
          goto LABEL_135;
        }

        if (v88 < v114)
        {
          v83 = v80 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v5 = v143;
    v4 = a3[1];
    if (v143 >= v4)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_139;
  }

  if (&v8[a4] >= v49)
  {
    v50 = a3[1];
  }

  else
  {
    v50 = &v8[a4];
  }

  if (v50 < v8)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v9 == v50)
  {
    goto LABEL_54;
  }

  v51 = *a3;
  v52 = v8;
  v53 = *a3 + 48 * v9;
  v141 = v50;
  v143 = v9;
  v137 = v6;
  v139 = v52;
  v54 = &v52[-v9];
LABEL_41:
  v55 = v54;
  v56 = v53;
  while (1)
  {
    OUTLINED_FUNCTION_31_16(v56, v146);
    v57 = v56 - 3;
    OUTLINED_FUNCTION_31_16((v56 - 3), v145);
    OUTLINED_FUNCTION_25_14();
    if (v13 && v58 == v59)
    {
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v73, v74, v75);
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v76, v77, v78);
LABEL_52:
      v53 += 48;
      --v54;
      if (++v143 == v141)
      {
        v9 = v141;
        v6 = v137;
        v8 = v139;
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    v61 = sub_23136A900();
    OUTLINED_FUNCTION_9_23();
    sub_2311D1F18(v62, v63, v64);
    OUTLINED_FUNCTION_9_23();
    sub_2311D1F18(v65, v66, v67);
    if ((v61 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (!v51)
    {
      break;
    }

    v69 = v56[1];
    v68 = v56[2];
    v70 = *v56;
    v71 = *(v56 - 2);
    *v56 = *v57;
    v56[1] = v71;
    v56[2] = *(v56 - 1);
    *v57 = v70;
    *(v56 - 2) = v69;
    v56 -= 3;
    v57[2] = v68;
    if (__CFADD__(v55++, 1))
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_2312D1498(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a1;
  v6 = sub_231368090();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v134 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v144 = &v129 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v150 = &v129 - v13;
  MEMORY[0x28223BE20](v12);
  v149 = &v129 - v15;
  v139 = v14;
  v140 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_103:
    v150 = *v131;
    if (!v150)
    {
      goto LABEL_145;
    }

    a3 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v142;
    if (isUniquelyReferenced_nonNull_native)
    {
      v121 = a3;
LABEL_106:
      a3 = (v121 + 16);
      v122 = *(v121 + 2);
      while (v122 >= 2)
      {
        if (!*v140)
        {
          goto LABEL_142;
        }

        v123 = v121;
        v124 = &v121[16 * v122];
        v125 = *v124;
        v126 = a3 + 16 * v122;
        v127 = *(v126 + 8);
        sub_2312D2140(&(*v140)[*(v139 + 72) * *v124], &(*v140)[*(v139 + 72) * *v126], &(*v140)[*(v139 + 72) * v127], v150);
        if (v17)
        {
          break;
        }

        if (v127 < v125)
        {
          goto LABEL_130;
        }

        if (v122 - 2 >= *a3)
        {
          goto LABEL_131;
        }

        *v124 = v125;
        *(v124 + 1) = v127;
        v128 = *a3 - v122;
        if (*a3 < v122)
        {
          goto LABEL_132;
        }

        v122 = *a3 - 1;
        sub_2311E6448((v126 + 16), v128, v126);
        *a3 = v122;
        v121 = v123;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v121 = sub_2311E6430(a3);
    goto LABEL_106;
  }

  v129 = a4;
  v17 = 0;
  v147 = (v14 + 8);
  v148 = v14 + 16;
  v146 = (v14 + 32);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v17++;
    if (v17 < v16)
    {
      v20 = v19;
      v21 = *(v14 + 72);
      v22 = &(*v140)[v21 * v17];
      v145 = *v140;
      v23 = v145;
      v24 = *(v14 + 16);
      v25 = v149;
      v138 = v18;
      v141 = v16;
      v24(v149, &v145[v21 * v17], v6);
      v26 = &v23[v21 * v19];
      v27 = v150;
      v137 = v24;
      v24(v150, v26, v6);
      sub_231368050();
      v29 = v28;
      sub_231368050();
      v31 = v30;
      v32 = *(v139 + 8);
      v33 = v27;
      a3 = v147;
      v32(v33, v6);
      v136 = v32;
      v32(v25, v6);
      v34 = v141;
      v18 = v138;
      v130 = v20;
      v35 = v20 + 2;
      v143 = v21;
      v36 = &v145[v21 * (v20 + 2)];
      while (1)
      {
        v37 = v35;
        v38 = v17 + 1;
        if (v38 >= v34)
        {
          break;
        }

        LODWORD(v145) = v29 < v31;
        v39 = v149;
        v40 = v137;
        (v137)(v149, v36, v6, v18);
        v41 = v38;
        v42 = v150;
        v40(v150, v22, v6);
        sub_231368050();
        v44 = v43;
        sub_231368050();
        v46 = v45;
        v47 = v42;
        v17 = v41;
        a3 = v147;
        v48 = v136;
        (v136)(v47, v6);
        v48(v39, v6);
        v34 = v141;
        v18 = v138;
        v36 = &v143[v36];
        v22 += v143;
        v35 = v37 + 1;
        if (((v145 ^ (v44 >= v46)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v17 = v34;
LABEL_9:
      if (v29 >= v31)
      {
        v14 = v139;
      }

      else
      {
        v19 = v130;
        if (v17 < v130)
        {
          goto LABEL_136;
        }

        if (v130 >= v17)
        {
          v14 = v139;
          goto LABEL_32;
        }

        if (v34 >= v37)
        {
          v49 = v37;
        }

        else
        {
          v49 = v34;
        }

        a3 = v143 * (v49 - 1);
        v50 = v130;
        v51 = v143 * v49;
        v52 = v130 * v143;
        v53 = v17;
        do
        {
          if (v50 != --v53)
          {
            v54 = *v140;
            if (!*v140)
            {
              goto LABEL_143;
            }

            v145 = *v146;
            (v145)(v134, &v54[v52], v6, v18);
            v55 = v52 < a3 || &v54[v52] >= &v54[v51];
            if (v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v145)(&v54[a3], v134, v6);
          }

          ++v50;
          a3 -= v143;
          v51 -= v143;
          v52 += v143;
        }

        while (v50 < v53);
        v18 = v138;
        v14 = v139;
      }

      v19 = v130;
    }

LABEL_32:
    v56 = v140[1];
    if (v17 < v56)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_135;
      }

      if (v17 - v19 < v129)
      {
        break;
      }
    }

LABEL_48:
    if (v17 < v19)
    {
      goto LABEL_134;
    }

    v75 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v75;
    }

    else
    {
      v117 = v75[2];
      sub_23126DB78();
      v18 = v118;
    }

    a3 = v18[2];
    v76 = a3 + 1;
    if (a3 >= v18[3] >> 1)
    {
      sub_23126DB78();
      v18 = v119;
    }

    v18[2] = v76;
    v77 = v18 + 4;
    v78 = &v18[2 * a3 + 4];
    *v78 = v19;
    v78[1] = v17;
    v145 = *v131;
    if (!v145)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v141 = v17;
      while (1)
      {
        v79 = v76 - 1;
        v80 = &v77[2 * v76 - 2];
        v81 = &v18[2 * v76];
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v82 = v18[4];
          v83 = v18[5];
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_69:
          if (v85)
          {
            goto LABEL_121;
          }

          v97 = *v81;
          v96 = v81[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_124;
          }

          v101 = v80[1];
          v102 = v101 - *v80;
          if (__OFSUB__(v101, *v80))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v99, v102))
          {
            goto LABEL_129;
          }

          if (v99 + v102 >= v84)
          {
            if (v84 < v102)
            {
              v79 = v76 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v76 < 2)
        {
          goto LABEL_123;
        }

        v104 = *v81;
        v103 = v81[1];
        v92 = __OFSUB__(v103, v104);
        v99 = v103 - v104;
        v100 = v92;
LABEL_84:
        if (v100)
        {
          goto LABEL_126;
        }

        v106 = *v80;
        v105 = v80[1];
        v92 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v92)
        {
          goto LABEL_128;
        }

        if (v107 < v99)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v79 - 1 >= v76)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_138;
        }

        if (!*v140)
        {
          goto LABEL_141;
        }

        v17 = v18;
        a3 = &v77[2 * v79 - 2];
        v111 = *a3;
        v112 = v79;
        v113 = &v77[2 * v79];
        v114 = *(v113 + 1);
        v115 = v142;
        sub_2312D2140(&(*v140)[*(v139 + 72) * *a3], &(*v140)[*(v139 + 72) * *v113], &(*v140)[*(v139 + 72) * v114], v145);
        v142 = v115;
        if (v115)
        {
          goto LABEL_114;
        }

        if (v114 < v111)
        {
          goto LABEL_116;
        }

        v116 = *(v17 + 16);
        if (v112 > v116)
        {
          goto LABEL_117;
        }

        *a3 = v111;
        *(a3 + 8) = v114;
        if (v112 >= v116)
        {
          goto LABEL_118;
        }

        v76 = v116 - 1;
        sub_2311E6448(v113 + 16, v116 - 1 - v112, v113);
        v18 = v17;
        *(v17 + 16) = v116 - 1;
        v17 = v141;
        if (v116 <= 2)
        {
          goto LABEL_98;
        }
      }

      v86 = &v77[2 * v76];
      v87 = *(v86 - 8);
      v88 = *(v86 - 7);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_119;
      }

      v91 = *(v86 - 6);
      v90 = *(v86 - 5);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_120;
      }

      v93 = v81[1];
      v94 = v93 - *v81;
      if (__OFSUB__(v93, *v81))
      {
        goto LABEL_122;
      }

      v92 = __OFADD__(v84, v94);
      v95 = v84 + v94;
      if (v92)
      {
        goto LABEL_125;
      }

      if (v95 >= v89)
      {
        v109 = *v80;
        v108 = v80[1];
        v92 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v92)
        {
          goto LABEL_133;
        }

        if (v84 < v110)
        {
          v79 = v76 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v14 = v139;
    v16 = v140[1];
    if (v17 >= v16)
    {
      goto LABEL_103;
    }
  }

  v57 = v19 + v129;
  if (__OFADD__(v19, v129))
  {
    goto LABEL_137;
  }

  if (v57 >= v56)
  {
    v57 = v140[1];
  }

  if (v57 < v19)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v17 == v57)
  {
    goto LABEL_48;
  }

  v138 = v18;
  v58 = *v140;
  v59 = *(v14 + 72);
  v145 = *(v14 + 16);
  v60 = &v58[v59 * (v17 - 1)];
  v61 = -v59;
  v130 = v19;
  v62 = (v19 - v17);
  v143 = v58;
  v132 = v59;
  v63 = &v58[v17 * v59];
  v133 = v57;
LABEL_41:
  v141 = v17;
  v135 = v63;
  v136 = v62;
  v137 = v60;
  while (1)
  {
    v64 = v149;
    v65 = v145;
    (v145)(v149, v63, v6);
    v66 = v150;
    v65(v150, v60, v6);
    sub_231368050();
    v68 = v67;
    sub_231368050();
    v70 = v69;
    v71 = *v147;
    (*v147)(v66, v6);
    v72 = v64;
    a3 = v6;
    v71(v72, v6);
    if (v68 >= v70)
    {
LABEL_46:
      v17 = v141 + 1;
      v60 = &v137[v132];
      v62 = v136 - 1;
      v63 = &v135[v132];
      if (v141 + 1 == v133)
      {
        v17 = v133;
        v18 = v138;
        v19 = v130;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v143)
    {
      break;
    }

    v73 = *v146;
    v74 = v144;
    (*v146)(v144, v63, v6);
    swift_arrayInitWithTakeFrontToBack();
    v73(v60, v74, v6);
    v60 += v61;
    v63 += v61;
    v55 = __CFADD__(v62++, 1);
    if (v55)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_2312D1E78(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_23126F7B0(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_31_16(v6, &v45);
      OUTLINED_FUNCTION_31_16(v4, &v43);
      v12 = v45 == v43 && v46 == v44;
      if (v12)
      {
        break;
      }

      v13 = sub_23136A900();
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v14, v15, v16);
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v17, v18, v19);
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      v20 = v6;
      v12 = v7 == v6;
      v6 += 48;
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 48;
    }

    OUTLINED_FUNCTION_9_23();
    sub_2311D1F18(v21, v22, v23);
    OUTLINED_FUNCTION_9_23();
    sub_2311D1F18(v24, v25, v26);
LABEL_16:
    v20 = v4;
    v12 = v7 == v4;
    v4 += 48;
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v27 = *v20;
    v28 = *(v20 + 2);
    *(v7 + 1) = *(v20 + 1);
    *(v7 + 2) = v28;
    *v7 = v27;
    goto LABEL_18;
  }

  sub_23126F7B0(a2, (a3 - a2) / 48, a4);
  v29 = &v4[48 * v9];
  v47 = v4;
LABEL_20:
  v30 = (v6 - 48);
  v5 -= 48;
  for (i = v29 - 48; ; i -= 48)
  {
    v10 = i + 48;
    if (i + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_2311E66F0(i, &v45, &qword_27DD43558, &qword_231374890);
    v33 = v30;
    sub_2311E66F0(v30, &v43, &qword_27DD43558, &qword_231374890);
    if (v45 == v43 && v46 == v44)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_23136A900();
    }

    sub_2311D1F18(&v43, &qword_27DD43558, &qword_231374890);
    sub_2311D1F18(&v45, &qword_27DD43558, &qword_231374890);
    if (v35)
    {
      v29 = i + 48;
      v12 = v5 + 48 == v6;
      v6 = v33;
      v4 = v47;
      if (!v12)
      {
        v38 = *v33;
        v39 = *(v33 + 2);
        *(v5 + 1) = *(v33 + 1);
        *(v5 + 2) = v39;
        *v5 = v38;
        v6 = v33;
      }

      goto LABEL_20;
    }

    if (v10 != v5 + 48)
    {
      v36 = *i;
      v37 = *(i + 2);
      *(v5 + 1) = *(i + 1);
      *(v5 + 2) = v37;
      *v5 = v36;
    }

    v5 -= 48;
    v30 = v33;
    v4 = v47;
  }

LABEL_39:
  v40 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v40])
  {
    memmove(v6, v4, 48 * v40);
  }

  return 1;
}

uint64_t sub_2312D2140(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v61 = a4;
  v8 = sub_231368090();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v66 = v57 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v16;
  v70 = a1;
  v69 = v61;
  v64 = (v13 + 8);
  v65 = (v13 + 16);
  v21 = v18 / v16;
  v57[1] = v4;
  if (v20 >= v18 / v16)
  {
    v62 = a1;
    sub_23126F76C(a2, v18 / v16, v61);
    v34 = v61;
    v35 = v61 + v21 * v16;
    v36 = -v16;
    v37 = v35;
    v59 = -v16;
LABEL_37:
    v63 = a2 + v36;
    v38 = a3;
    v57[0] = v37;
    v60 = a2;
    while (1)
    {
      if (v35 <= v34)
      {
        v70 = a2;
        v68 = v37;
        goto LABEL_59;
      }

      if (a2 <= v62)
      {
        break;
      }

      v58 = v37;
      v39 = v38 + v36;
      v40 = v35 + v36;
      v41 = v66;
      v42 = *v65;
      v43 = v35;
      (*v65)(v66, v35 + v36, v8);
      v44 = v67;
      v42(v67, v63, v8);
      sub_231368050();
      v46 = v45;
      sub_231368050();
      v48 = v47;
      v49 = *v64;
      (*v64)(v44, v8);
      v49(v41, v8);
      if (v46 < v48)
      {
        v53 = v38 < v60 || v39 >= v60;
        a3 = v38 + v36;
        if (v53)
        {
          v54 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v54;
          v37 = v58;
          v36 = v59;
          v34 = v61;
          v35 = v43;
        }

        else
        {
          v55 = v58;
          v36 = v59;
          v37 = v58;
          v56 = v63;
          v34 = v61;
          v35 = v43;
          a2 = v63;
          if (v38 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
            v35 = v43;
            v34 = v61;
            a2 = v56;
            v37 = v55;
          }
        }

        goto LABEL_37;
      }

      v50 = v38 < v43 || v39 >= v43;
      v51 = v38 + v36;
      v52 = v60;
      if (v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 += v36;
        v35 = v40;
        v37 = v40;
        v34 = v61;
        v36 = v59;
        a2 = v52;
      }

      else
      {
        v37 = v40;
        v17 = v43 == v38;
        v38 += v36;
        v35 = v40;
        v34 = v61;
        v36 = v59;
        a2 = v60;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v61;
          v38 = v51;
          v35 = v40;
          v37 = v40;
        }
      }
    }

    v70 = a2;
    v68 = v57[0];
  }

  else
  {
    v63 = a3;
    sub_23126F76C(a1, (a2 - a1) / v16, v61);
    v22 = v61;
    v62 = v61 + v20 * v16;
    v68 = v62;
    v23 = v67;
    while (v22 < v62 && a2 < v63)
    {
      v25 = v66;
      v26 = *v65;
      (*v65)(v66, a2, v8);
      v26(v23, v22, v8);
      sub_231368050();
      v28 = v27;
      sub_231368050();
      v30 = v29;
      v31 = *v64;
      (*v64)(v23, v8);
      v31(v25, v8);
      if (v28 >= v30)
      {
        if (a1 < v22 || a1 >= v22 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v69 = v22 + v16;
        v22 += v16;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      a1 += v16;
      v70 = a1;
    }
  }

LABEL_59:
  sub_23120C4FC(&v70, &v69, &v68);
  return 1;
}

uint64_t sub_2312D2660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2312D26A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312D275C()
{
  OUTLINED_FUNCTION_26();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2311E6A24;
  v5 = OUTLINED_FUNCTION_28_0();

  return sub_2312CF0B4(v5, v6, v2);
}

uint64_t OUTLINED_FUNCTION_44_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void sub_2312D2888(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2312D32E0(319, &qword_280F7C958);
    if (v3 <= 0x3F)
    {
      sub_2312D3288();
      if (v4 <= 0x3F)
      {
        sub_2312D3334(319, &qword_280F7C788);
        if (v5 <= 0x3F)
        {
          sub_2312D32E0(319, &qword_280F7CA18);
          if (v6 <= 0x3F)
          {
            sub_231368BC0();
            if (v7 <= 0x3F)
            {
              sub_2312D3334(319, &qword_280F7C800);
              if (v8 <= 0x3F)
              {
                sub_231367C70();
                if (v9 <= 0x3F)
                {
                  sub_231369050();
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2312D2A00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v38 = *(a3 + 16);
  v4 = *(v38 - 8);
  v5 = *(v4 + 84);
  v36 = sub_231368BC0();
  v6 = *(v36 - 8);
  v37 = *(v6 + 84);
  v39 = v5;
  if (v5 <= v37)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = v5;
  }

  v34 = sub_231367C70();
  v8 = *(v34 - 8);
  v35 = *(v8 + 84);
  if (v7 <= v35)
  {
    v7 = *(v8 + 84);
  }

  v9 = sub_231369050();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v7 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 64);
  v15 = *(v6 + 80);
  v16 = *(v8 + 80);
  v17 = *(v10 + 80);
  v18 = *(*(v9 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = v9;
  v20 = *(v6 + 64) + 7;
  v21 = v16 + 9;
  v22 = *(v8 + 64) + v17;
  v23 = a1;
  if (a2 <= v13)
  {
    goto LABEL_33;
  }

  v24 = ((v22 + ((v21 + ((v20 + ((v15 + ((((((v14 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v17) + v18;
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_15;
  }

  v28 = ((a2 - v13 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_33;
      }

LABEL_15:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_33;
      }

LABEL_23:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        switch(v30)
        {
          case 2:
            v31 = *a1;
            break;
          case 3:
            v31 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v31 = *a1;
            break;
          default:
            v31 = *a1;
            break;
        }
      }

      else
      {
        v31 = 0;
      }

      return v13 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_23;
    }
  }

LABEL_33:
  if (v39 == v13)
  {
    v11 = v39;
    v19 = v38;
    goto LABEL_35;
  }

  v32 = a1 + v14;
  if ((v12 & 0x80000000) != 0)
  {
    v23 = (v15 + ((((((v32 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v15;
    if (v37 == v13)
    {
      v11 = v37;
      v19 = v36;
    }

    else
    {
      v23 = (v21 + ((v20 + v23) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
      if (v35 == v13)
      {
        v11 = v35;
        v19 = v34;
      }

      else
      {
        v23 = (v22 + v23) & ~v17;
      }
    }

LABEL_35:

    return __swift_getEnumTagSinglePayload(v23, v11, v19);
  }

  v33 = *(((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v33 >= 0xFFFFFFFF)
  {
    LODWORD(v33) = -1;
  }

  return (v33 + 1);
}

void sub_2312D2DF0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v39 = *(a4 + 16);
  v4 = *(v39 - 8);
  v5 = *(v4 + 84);
  v37 = sub_231368BC0();
  v6 = *(v37 - 8);
  v38 = *(v6 + 84);
  if (v5 <= v38)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = v5;
  }

  v35 = sub_231367C70();
  v8 = *(v35 - 8);
  v36 = *(v8 + 84);
  if (v7 <= v36)
  {
    v7 = *(v8 + 84);
  }

  v9 = sub_231369050();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v7 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 64);
  v15 = *(v6 + 80);
  v16 = *(v6 + 64) + 7;
  v17 = *(v8 + 80);
  v18 = v17 + 9;
  v19 = *(v8 + 64);
  v20 = *(v10 + 80);
  v21 = ((v19 + v20 + ((v17 + 9 + ((v16 + ((v15 + ((((((v14 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & ~v20) + *(*(v9 - 8) + 64);
  v22 = 8 * v21;
  if (a3 <= v13)
  {
    v25 = 0;
    v23 = a1;
    v24 = a2;
  }

  else
  {
    v23 = a1;
    v24 = a2;
    if (v21 <= 3)
    {
      v29 = ((a3 - v13 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v29))
      {
        v25 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v25 = v30;
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 1;
    }
  }

  if (v13 >= v24)
  {
    v28 = ~v17;
    switch(v25)
    {
      case 1:
        v23[v21] = 0;
        if (v24)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *&v23[v21] = 0;
        if (v24)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_59:
        __break(1u);
        return;
      case 4:
        *&v23[v21] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!v24)
        {
          return;
        }

LABEL_35:
        if (v5 == v13)
        {
          v32 = v23;
          v11 = v5;
          v9 = v39;
        }

        else
        {
          v33 = &v23[v14];
          if ((v12 & 0x80000000) == 0)
          {
            v34 = (v33 + 7) & 0xFFFFFFFFFFFFFFF8;
            if ((v24 & 0x80000000) != 0)
            {
              *(v34 + 8) = 0u;
              *(v34 + 24) = 0u;
              *v34 = v24 & 0x7FFFFFFF;
            }

            else
            {
              *(v34 + 24) = (v24 - 1);
            }

            return;
          }

          v32 = (v15 + ((((((v33 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v15;
          if (v38 == v13)
          {
            v11 = v38;
            v9 = v37;
          }

          else
          {
            v32 = (v18 + ((v16 + v32) & 0xFFFFFFFFFFFFFFF8)) & v28;
            if (v36 == v13)
            {
              v11 = v36;
              v9 = v35;
            }

            else
            {
              v32 = (v19 + v20 + v32) & ~v20;
            }
          }
        }

        __swift_storeEnumTagSinglePayload(v32, v24, v11, v9);
        break;
    }
  }

  else
  {
    v26 = ~v13 + v24;
    if (v21 < 4)
    {
      v27 = (v26 >> v22) + 1;
      if (v21)
      {
        v31 = v26 & ~(-1 << v22);
        bzero(v23, v21);
        if (v21 == 3)
        {
          *v23 = v31;
          v23[2] = BYTE2(v31);
        }

        else if (v21 == 2)
        {
          *v23 = v31;
        }

        else
        {
          *v23 = v26;
        }
      }
    }

    else
    {
      bzero(v23, v21);
      *v23 = v26;
      v27 = 1;
    }

    switch(v25)
    {
      case 1:
        v23[v21] = v27;
        break;
      case 2:
        *&v23[v21] = v27;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *&v23[v21] = v27;
        break;
      default:
        return;
    }
  }
}

void sub_2312D3288()
{
  if (!qword_280F7C8F8)
  {
    sub_2313692F0();
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C8F8);
    }
  }
}

uint64_t sub_2312D32E0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2312D3334(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23136A4D0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2312D3380(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2312DB008(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2312D3418()
{
  v0 = sub_2313678D0();
  sub_231210C60(0xD000000000000017, 0x8000000231380270, v0);

  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2311D1F18(v3, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_2312D350C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v10 = a1[3];
  v9 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13);
  v17 = a2[3];
  v18 = a2[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
  v20 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21);
  v25 = a4(v15, v23, a3, v5, v10, v17, v9, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v25;
}

uint64_t ConfigurablePresentationService.getView(rankedCandidate:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[127] = v0;
  v1[126] = v2;
  v1[125] = v3;
  v1[124] = v4;
  v1[128] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_40_0(v5);
  v7 = *(v6 + 64);
  v1[129] = OUTLINED_FUNCTION_43();
  v8 = type metadata accessor for ViewDetails(0);
  v1[130] = v8;
  OUTLINED_FUNCTION_40_0(v8);
  v10 = *(v9 + 64);
  v1[131] = OUTLINED_FUNCTION_43();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44710, &qword_231375250);
  OUTLINED_FUNCTION_40_0(v11);
  v13 = *(v12 + 64);
  v1[132] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  OUTLINED_FUNCTION_40_0(v14);
  v16 = *(v15 + 64);
  v1[133] = OUTLINED_FUNCTION_67();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v17 = sub_231369090();
  v1[136] = v17;
  OUTLINED_FUNCTION_0(v17);
  v1[137] = v18;
  v20 = *(v19 + 64);
  v1[138] = OUTLINED_FUNCTION_43();
  v21 = sub_2313686B0();
  v1[139] = v21;
  OUTLINED_FUNCTION_0(v21);
  v1[140] = v22;
  v24 = *(v23 + 64);
  v1[141] = OUTLINED_FUNCTION_67();
  v1[142] = swift_task_alloc();
  v25 = sub_2313698C0();
  v1[143] = v25;
  OUTLINED_FUNCTION_0(v25);
  v1[144] = v26;
  v28 = *(v27 + 64);
  v1[145] = OUTLINED_FUNCTION_67();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v29 = sub_231368180();
  v1[150] = v29;
  OUTLINED_FUNCTION_0(v29);
  v1[151] = v30;
  v32 = *(v31 + 64);
  v1[152] = OUTLINED_FUNCTION_43();
  v33 = sub_231367C70();
  v1[153] = v33;
  OUTLINED_FUNCTION_0(v33);
  v1[154] = v34;
  v36 = *(v35 + 64);
  v1[155] = OUTLINED_FUNCTION_43();
  v37 = sub_231366860();
  v1[156] = v37;
  OUTLINED_FUNCTION_0(v37);
  v1[157] = v38;
  v40 = *(v39 + 64);
  v1[158] = OUTLINED_FUNCTION_43();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  OUTLINED_FUNCTION_40_0(v41);
  v43 = *(v42 + 64);
  v1[159] = OUTLINED_FUNCTION_43();
  v44 = sub_231367D80();
  v1[160] = v44;
  OUTLINED_FUNCTION_0(v44);
  v1[161] = v45;
  v47 = *(v46 + 64);
  v1[162] = OUTLINED_FUNCTION_67();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v48, v49, v50);
}

uint64_t sub_2312D3AA4()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1000);
  v4 = type metadata accessor for RankedCandidateSuggestion();
  *(v0 + 1320) = v4;
  v5 = *(v4 + 20);
  *(v0 + 1944) = v5;
  sub_2311CF388(v3 + v5, v0 + 16);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_54_0();
  sub_2313682C0();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v7 = *(v0 + 1160);
    sub_2311D1F18(*(v0 + 1272), &qword_27DD42F18, &unk_23136B810);
    sub_2313690F0();
    v8 = sub_2313698A0();
    v9 = sub_23136A390();
    if (OUTLINED_FUNCTION_40_1(v9))
    {
      v10 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v10);
      OUTLINED_FUNCTION_57(&dword_2311CB000, v11, v12, "[warning] PresentationService: candidate does not have delivery vehicle set. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_9_10();
    }

    v13 = *(v0 + 1160);
    v14 = *(v0 + 1152);
    v15 = *(v0 + 1144);
    v16 = *(v0 + 992);

    v17 = *(v14 + 8);
    v18 = OUTLINED_FUNCTION_28_0();
    v19(v18);
    v20 = type metadata accessor for SuggestionViewDetails(0);
    OUTLINED_FUNCTION_106_0(v16, v21, v22, v20);
    OUTLINED_FUNCTION_0_32();
    v51 = *(v0 + 1160);
    v52 = *(v0 + 1136);
    v53 = *(v0 + 1128);
    v54 = *(v0 + 1104);
    v55 = *(v0 + 1080);
    v56 = *(v0 + 1072);
    OUTLINED_FUNCTION_104_0();
    v57 = *(v0 + 1048);
    v58 = *(v0 + 1032);
    OUTLINED_FUNCTION_91_0();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X1, X16 }
  }

  v25 = *(v0 + 1312);
  v26 = *(v0 + 1304);
  v27 = *(v0 + 1288);
  v28 = *(v0 + 1280);
  v29 = *(v0 + 1264);
  v30 = *(v0 + 1008);
  v59 = *(v0 + 1000);
  (*(v27 + 32))(v25, *(v0 + 1272), v28);
  v31 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_231368320();
  v32 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_231368360();
  v33 = *(v27 + 16);
  *(v0 + 1328) = v33;
  *(v0 + 1336) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33(v26, v25, v28);
  v34 = sub_231367910();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *(v0 + 984) = sub_2313678F0();
  v37 = sub_2313672F0();
  if ((v38 & 1) == 0)
  {
    sub_2312D84B0(*&v37);
  }

  v39 = *(v0 + 40);
  v40 = *(v0 + 48);
  OUTLINED_FUNCTION_3_28();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 1344) = v41;
  swift_getObjectType();
  v42 = *(MEMORY[0x277D61340] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 1352) = v43;
  *v43 = v44;
  v43[1] = sub_2312D3E84;
  v45 = *(v0 + 1240);
  OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2821C7790](v46, v47, v48);
}

uint64_t sub_2312D3E84()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 1352);
  v3 = *(v1 + 1344);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312D3F84()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1224);
  v5 = *(v0 + 1216);
  v6 = *(v0 + 1208);
  v7 = *(v0 + 1200);
  v8 = *(v0 + 1024);
  sub_2312D8534((v0 + 16), (v0 + 56));
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_28_0();
  v11(v10);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_27();
  v13 = sub_231368320();
  v15 = v14;
  *(v0 + 1360) = v13;
  *(v0 + 1368) = v14;
  v16 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2313682A0();
  sub_2313676F0();

  sub_231368140();
  v18 = *(v6 + 8);
  v17 = v6 + 8;
  *(v0 + 1376) = v18;
  *(v0 + 1384) = v17 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19 = OUTLINED_FUNCTION_71();
  v20(v19);
  v21 = *(v0 + 128);
  v22 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v23 = *(v21 + 16);
  sub_2313688F0();
  if (*(v0 + 200))
  {
    v24 = *(v0 + 1016);
    sub_2311D38A8((v0 + 176), v0 + 136);
    v25 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v26 = swift_task_alloc();
    *(v0 + 1392) = v26;
    *v26 = v0;
    v26[1] = sub_2312D44C0;
    v27 = *(v0 + 1016);
    v28 = *(v0 + 1008);
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_33_0();

    return sub_2312DB7CC(v29, v30, v31, v32, v33, v34, v35);
  }

  else
  {
    sub_2311D1F18(v0 + 176, &qword_27DD44718, &qword_231375258);
    *(v0 + 1416) = 0u;
    OUTLINED_FUNCTION_126();
    v38 = *MEMORY[0x277D607E0];
    *(v0 + 1948) = v38;
    v39 = sub_231367020();
    *(v0 + 1432) = v39;
    OUTLINED_FUNCTION_46_0(v39);
    *(v0 + 1440) = v40;
    v41 = OUTLINED_FUNCTION_92_0(v40);
    v43 = v42(v41);
    v44 = OUTLINED_FUNCTION_68_5(v43, *MEMORY[0x277D60BA0]);
    v45(v44);
    sub_231311D04(v15, v22);
    v46 = OUTLINED_FUNCTION_79_3();
    (v38)(v46);
    if (v15)
    {
      v47 = *(v0 + 1368);
      v48 = *(v0 + 1192);
      sub_2313690F0();
      sub_231369EE0();
      v49 = sub_2313698A0();
      v50 = sub_23136A3A0();

      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 1368);
      if (v51)
      {
        OUTLINED_FUNCTION_66_5();
        OUTLINED_FUNCTION_98_0();
        v77 = OUTLINED_FUNCTION_97_0();
        v53 = OUTLINED_FUNCTION_139(4.8149e-34);

        *(v17 + 4) = v53;
        OUTLINED_FUNCTION_138(&dword_2311CB000, v54, v55, "Suggestion %s has siriHintsSpoken deliveryVehicle but does not have preambleOverride specified. Returning nil SuggestionViewDetails");
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_88_0();

        (*(v15 + 8))();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
        v57 = v73;
        v56 = v75;
      }

      else
      {
        OUTLINED_FUNCTION_116();

        v65 = *(v17 + 8);
        v66 = OUTLINED_FUNCTION_134();
        v67(v66);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
        v56 = OUTLINED_FUNCTION_28_0();
      }

      (v38)(v56, v57);
      OUTLINED_FUNCTION_118();
      type metadata accessor for SuggestionViewDetails(0);
      v68 = OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_106_0(v68, v69, v70, v71);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      OUTLINED_FUNCTION_0_32();
      OUTLINED_FUNCTION_19_17();
      OUTLINED_FUNCTION_104_0();
      v74 = *(v0 + 1048);
      v76 = *(v0 + 1032);
      OUTLINED_FUNCTION_91_0();

      OUTLINED_FUNCTION_56_0();

      return v72();
    }

    else
    {
      v58 = *(v0 + 40);
      v59 = *(v0 + 48);
      OUTLINED_FUNCTION_3_28();
      sub_231368300();
      OUTLINED_FUNCTION_90();
      *(v0 + 1496) = v60;
      swift_getObjectType();
      v61 = *(MEMORY[0x277D61350] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v0 + 1504) = v62;
      *v62 = v63;
      v64 = OUTLINED_FUNCTION_38_10(v62);

      return MEMORY[0x2821C77C0](v64);
    }
  }
}

uint64_t sub_2312D44C0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 1392);
  *v2 = *v0;
  *(v1 + 1400) = v5;
  *(v1 + 1408) = v6;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312D45AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  v4 = *(v2 + 1408);
  v5 = *(v2 + 1400);
  *(v2 + 1424) = v4;
  *(v2 + 1416) = v5;
  OUTLINED_FUNCTION_126();
  v6 = *MEMORY[0x277D607E0];
  *(v2 + 1948) = v6;
  v7 = sub_231367020();
  *(v2 + 1432) = v7;
  OUTLINED_FUNCTION_46_0(v7);
  *(v2 + 1440) = v8;
  v9 = OUTLINED_FUNCTION_92_0(v8);
  v11 = v10(v9);
  v12 = OUTLINED_FUNCTION_68_5(v11, *MEMORY[0x277D60BA0]);
  v13(v12);
  sub_231311D04(v1, v0);
  v14 = OUTLINED_FUNCTION_79_3();
  (v6)(v14);
  if ((v1 & 1) != 0 && !v4)
  {
    v15 = *(v2 + 1368);
    v16 = *(v2 + 1192);
    sub_2313690F0();
    sub_231369EE0();
    v17 = sub_2313698A0();
    v18 = sub_23136A3A0();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v2 + 1368);
    if (v19)
    {
      OUTLINED_FUNCTION_66_5();
      OUTLINED_FUNCTION_98_0();
      v47 = OUTLINED_FUNCTION_97_0();
      v21 = OUTLINED_FUNCTION_139(4.8149e-34);

      *(v3 + 4) = v21;
      OUTLINED_FUNCTION_138(&dword_2311CB000, v22, v23, "Suggestion %s has siriHintsSpoken deliveryVehicle but does not have preambleOverride specified. Returning nil SuggestionViewDetails");
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_88_0();

      (*(v1 + 8))();
      __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
      v25 = v43;
      v24 = v45;
    }

    else
    {
      OUTLINED_FUNCTION_116();

      v33 = *(v3 + 8);
      v34 = OUTLINED_FUNCTION_134();
      v35(v34);
      __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
      v24 = OUTLINED_FUNCTION_28_0();
    }

    (v6)(v24, v25);
    OUTLINED_FUNCTION_118();
    type metadata accessor for SuggestionViewDetails(0);
    v36 = OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_106_0(v36, v37, v38, v39);
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_104_0();
    v44 = *(v2 + 1048);
    v46 = *(v2 + 1032);
    OUTLINED_FUNCTION_91_0();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X1, X16 }
  }

  v26 = *(v2 + 40);
  v27 = *(v2 + 48);
  OUTLINED_FUNCTION_3_28();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v2 + 1496) = v28;
  swift_getObjectType();
  v29 = *(MEMORY[0x277D61350] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v2 + 1504) = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_38_10(v30);
  OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2821C77C0]();
}

uint64_t sub_2312D4910()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 1504);
  v3 = *(v1 + 1496);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312D4A10()
{
  sub_2312DC674((v0 + 27), (v0 + 32), &qword_27DD44720, &qword_231375260);
  if (v0[35])
  {
    v1 = v0[36];
    OUTLINED_FUNCTION_3_2(v0 + 32);
    OUTLINED_FUNCTION_29_13();
    sub_2313688D0();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  else
  {
    sub_2311D1F18((v0 + 32), &qword_27DD44720, &qword_231375260);
  }

  v2 = v0[15];
  v3 = v0[16];
  OUTLINED_FUNCTION_3_2(v0 + 12);
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_57_10();
  sub_2313688D0();
  v5 = sub_231368890();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_231368880();
  v0[189] = v8;
  sub_2312DC674((v0 + 27), (v0 + 37), &qword_27DD44720, &qword_231375260);
  if (v0[40])
  {
    v9 = v0[41];
    __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
    sub_2313688C0();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  }

  else
  {
    sub_2311D1F18((v0 + 37), &qword_27DD44720, &qword_231375260);
  }

  v10 = v0[127];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v12 = *(v11 + 16);
  sub_2313688C0();
  v13 = *(v5 + 48);
  v14 = *(v5 + 52);
  swift_allocObject();
  v0[190] = sub_231368880();

  v15 = swift_task_alloc();
  v0[191] = v15;
  *v15 = v0;
  v15[1] = sub_2312D4C4C;
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_129();

  return sub_2312DB234(v8, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_2312D4C4C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 1528);
  v5 = *(v3 + 1512);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 1536) = v8;
  *(v9 + 1544) = v10;

  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312D4D50()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[190];
  v2 = v0[127];

  v3 = swift_task_alloc();
  v0[194] = v3;
  *v3 = v0;
  v3[1] = sub_2312D4E00;
  v4 = v0[190];
  OUTLINED_FUNCTION_24_17();

  return sub_2312DB234(v8, v5, v6, (v0 + 7), v7, v2 + 56, (v0 + 123));
}

uint64_t sub_2312D4E00()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 1552);
  v5 = *(v3 + 1520);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 1560) = v8;
  *(v9 + 1568) = v10;

  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312D4F04()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[5];
  v2 = v0[6];
  OUTLINED_FUNCTION_3_28();
  v0[197] = sub_231368300();
  v0[198] = v3;
  v0[199] = swift_getObjectType();
  v4 = v0[5];
  v5 = v0[6];
  OUTLINED_FUNCTION_3_28();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[200] = v6;
  v0[201] = v7;
  v0[202] = swift_getObjectType();
  v8 = *(*(v4 + 8) + 8);
  sub_23136A260();
  v9 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312D4FB8()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[202];
  v2 = v0[201];
  v3 = v0[200];
  sub_231369380();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312D5028()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[45];
  v5 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v4);
  v0[50] = v4;
  v0[51] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 47);
  OUTLINED_FUNCTION_26_0(v4);
  (*(v6 + 16))();
  v7 = *(*(v2 + 8) + 8);
  sub_23136A260();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312D5104()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  sub_231369430();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312D51A0()
{
  OUTLINED_FUNCTION_131();
  v2 = MEMORY[0x277D84F70];
  if (!*(v1 + 880))
  {
    sub_2311D1F18(v1 + 856, &qword_27DD443C0, &unk_23136E000);
    goto LABEL_7;
  }

  v3 = MEMORY[0x277D839B0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = *(v1 + 1568);
    goto LABEL_8;
  }

  v4 = *(v1 + 1568);
  if (*(v1 + 1956) == 1 && v4)
  {
    v5 = *(v1 + 1560);
    v6 = *(v1 + 1544);
    v7 = *(v1 + 1536);
    v8 = *(v1 + 1136);
    v9 = *(v1 + 1016);
    sub_231369EE0();
    sub_231369EE0();
    sub_231368680();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23136B670;
    OUTLINED_FUNCTION_69_6();
    *(v12 + 32) = v11 | 7;
    *(v12 + 40) = v13;
    v14 = sub_2312D8A24();
    *(v10 + 72) = v3;
    *(v10 + 48) = v14 & 1;
    *(v1 + 1624) = sub_231369EC0();
    *(v1 + 1632) = *(v9 + 96);
    v15 = swift_task_alloc();
    *(v1 + 1640) = v15;
    *v15 = v1;
    v15[1] = sub_2312D5CE8;
    v16 = *(v1 + 1136);
LABEL_16:
    v46 = *(v1 + 1008);
    OUTLINED_FUNCTION_127(v16);
    OUTLINED_FUNCTION_54_9();

    return sub_2312D8A7C();
  }

LABEL_8:
  v17 = *(v1 + 1544);
  v18 = *(v1 + 1536);
  v19 = *(v1 + 1560);
  v20 = OUTLINED_FUNCTION_49_9();
  v21(v20);
  v22 = *(v2 + 88);
  v23 = OUTLINED_FUNCTION_71();
  v25 = v24(v23);
  v26 = *(v1 + 1296);
  if (v25 == v0)
  {
    v27 = OUTLINED_FUNCTION_99_0();
    v28(v27);
    v29 = *(v0 + 8);
    v30 = OUTLINED_FUNCTION_71();
    v31(v30);
    if (v4)
    {
      v32 = *(v1 + 1424);
      v33 = *(v1 + 1416);
      v34 = *(v1 + 1312);
      v35 = *(v1 + 1128);
      v36 = *(v1 + 1016);
      sub_231369EE0();
      sub_231369EE0();
      sub_231368680();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
      v37 = swift_allocObject();
      v38 = OUTLINED_FUNCTION_77_3(v37, xmmword_23136C1C0);
      v39 = MEMORY[0x277D837D0];
      v37[3].n128_u64[0] = v38;
      v37[3].n128_u64[1] = v40;
      OUTLINED_FUNCTION_69_6();
      v37[4].n128_u64[1] = v39;
      v37[5].n128_u64[0] = v42;
      v37[7].n128_u64[1] = v39;
      if (v32)
      {
        v43 = v33;
      }

      else
      {
        v43 = 0;
      }

      v44 = 0xE000000000000000;
      if (v32)
      {
        v44 = v32;
      }

      v37[5].n128_u64[1] = v41;
      v37[6].n128_u64[0] = v43;
      v37[6].n128_u64[1] = v44;
      sub_231369EE0();
      OUTLINED_FUNCTION_64();
      *(v1 + 1704) = sub_231369EC0();
      *(v1 + 1712) = *(v36 + 104);
      v45 = swift_task_alloc();
      *(v1 + 1720) = v45;
      *v45 = v1;
      OUTLINED_FUNCTION_48_8(v45);
      v16 = *(v1 + 1128);
      goto LABEL_16;
    }
  }

  else
  {
    v49 = OUTLINED_FUNCTION_136();
    v50(v49);
  }

  v252 = v17;
  *(v1 + 1792) = v17;
  *(v1 + 1784) = v18;
  *(v1 + 1776) = v4;
  *(v1 + 1768) = v19;
  v51 = *(v1 + 1488);
  v52 = *(v1 + 1480);
  v53 = *(v1 + 1472);
  v54 = *(v1 + 1464);
  OUTLINED_FUNCTION_16_23();
  OUTLINED_FUNCTION_70_6();
  v55(v19, *MEMORY[0x277D607E8]);
  v56 = OUTLINED_FUNCTION_16_7();
  (v54)(v56);
  v57 = OUTLINED_FUNCTION_26_1();
  v59 = sub_231311D04(v57, v58);
  v60 = OUTLINED_FUNCTION_54_0();
  v52(v60);
  if ((v59 & 1) != 0 && !v4)
  {
    v61 = *(v1 + 1368);
    v62 = *(v1 + 1184);
    sub_2313690F0();
    sub_231369EE0();
    v63 = sub_2313698A0();
    v64 = sub_23136A3A0();

    os_log_type_enabled(v63, v64);
    OUTLINED_FUNCTION_74_5();
    if (v65)
    {
      OUTLINED_FUNCTION_66_5();
      v246 = v66;
      v248 = v67;
      v68 = *(v1 + 1184);
      v69 = *(v1 + 1152);
      OUTLINED_FUNCTION_93_0();
      v253 = OUTLINED_FUNCTION_97_0();
      *v53 = 136315138;
      v70 = OUTLINED_FUNCTION_134();
      v73 = sub_2311CFD58(v70, v71, v72);

      *(v53 + 4) = v73;
      OUTLINED_FUNCTION_140(&dword_2311CB000, v74, v75, "Suggestion %s has siriHintsDisplay deliveryVehicle but displayDialog is nil. Returning nil SuggestionViewDetails");
      __swift_destroy_boxed_opaque_existential_1Tm(v253);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_88_0();

      (*(v69 + 8))();
      sub_2311D1F18(v1 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      v251(v248, v246);
    }

    else
    {
      OUTLINED_FUNCTION_110();

      (*(v54 + 8))(v52, v53);
      sub_2311D1F18(v1 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      v251(v62, v64);
    }

    goto LABEL_37;
  }

  v76 = *(v1 + 1488);
  v77 = *(v1 + 1480);
  v78 = *(v1 + 1472);
  v79 = *(v1 + 1464);
  OUTLINED_FUNCTION_16_23();
  v80 = *(v1 + 1948);
  OUTLINED_FUNCTION_70_6();
  v81(v19);
  v82 = OUTLINED_FUNCTION_16_7();
  (v79)(v82);
  v83 = OUTLINED_FUNCTION_26_1();
  v85 = sub_231311D04(v83, v84);
  v86 = OUTLINED_FUNCTION_54_0();
  (v77)(v86);
  if ((v85 & 1) != 0 && !v4 && !v252)
  {
    OUTLINED_FUNCTION_117();
    sub_231369EE0();
    v87 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_81_3();
    if (v88)
    {
      OUTLINED_FUNCTION_78_4();
      v89 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_124(v89);
      v90 = OUTLINED_FUNCTION_94_0(4.8149e-34);

      MEMORY[4] = v90;
      OUTLINED_FUNCTION_59_7(&dword_2311CB000, v91, v92, "Suggestion %s has siriHintsSpoken deliveryVehicle but displayDialog and spokenDialog are nil. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_24();

      (*(v85 + 8))();
      sub_2311D1F18(v1 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      v94 = v247;
      v93 = v249;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();

      v112 = OUTLINED_FUNCTION_65_6();
      v113(v112);
      sub_2311D1F18(v1 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      v93 = OUTLINED_FUNCTION_40_8();
    }

    v251(v93, v94);
LABEL_37:
    OUTLINED_FUNCTION_118();
    type metadata accessor for SuggestionViewDetails(0);
    v114 = OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_106_0(v114, v115, v116, v117);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_62_8();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_54_9();

    __asm { BRAA            X1, X16 }
  }

  v95 = *(v1 + 1016);
  v96 = *(v1 + 120);
  v97 = *(v1 + 128);
  OUTLINED_FUNCTION_3_2((v1 + 96));
  v98 = *(v97 + 16);
  OUTLINED_FUNCTION_57_10();
  sub_2313688E0();
  v99 = v95[6];
  __swift_project_boxed_opaque_existential_1(v95 + 2, v95[5]);
  v100 = *(v99 + 16);
  v101 = OUTLINED_FUNCTION_8_22();
  if (v102(v101))
  {
    sub_2312DC674(v1 + 416, v1 + 816, &qword_27DD44718, &qword_231375258);
    if (*(v1 + 840))
    {
      OUTLINED_FUNCTION_35_13();
      v103 = swift_task_alloc();
      *(v1 + 1800) = v103;
      *v103 = v1;
      OUTLINED_FUNCTION_9_24(v103);
      OUTLINED_FUNCTION_82_2();

      return sub_2312DB7CC(v104, v105, v106, v107, v108, v109, v110);
    }

    sub_2311D1F18(v1 + 816, &qword_27DD44718, &qword_231375258);
  }

  *(v1 + 1824) = 0u;
  OUTLINED_FUNCTION_6_19();
  v121 = *(v120 + 24);
  v122 = OUTLINED_FUNCTION_8_22();
  if (v123(v122))
  {
    v124 = *(v1 + 40);
    v125 = *(v1 + 48);
    OUTLINED_FUNCTION_3_28();
    v126 = sub_231368300();
    *(v1 + 1856) = OUTLINED_FUNCTION_144(v126, v127);
    v128 = *(v1 + 40);
    v129 = *(v1 + 48);
    OUTLINED_FUNCTION_3_28();
    sub_231368300();
    OUTLINED_FUNCTION_90();
    v132 = OUTLINED_FUNCTION_143(v130, v131);
    OUTLINED_FUNCTION_100(v132);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_54_9();

    return MEMORY[0x2822009F8](v133, v134, v135);
  }

  OUTLINED_FUNCTION_142();
  sub_2313698A0();
  v137 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v137))
  {
    v138 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v138);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v139, v140, "Removing icon assets as it is disabled in config");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_37_15();
  v141 = *(v77 + 8);
  v142 = OUTLINED_FUNCTION_28_0();
  v143(v142);
  v144 = sub_231368F50();
  OUTLINED_FUNCTION_32_12(v144);
  OUTLINED_FUNCTION_6_19();
  v146 = *(v145 + 8);
  v147 = OUTLINED_FUNCTION_8_22();
  if ((v148(v147) & 1) == 0)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_121();

  OUTLINED_FUNCTION_123();
  v149 = OUTLINED_FUNCTION_28_0();
  v4(v149);
  v150 = *(v1 + 600);
  v151 = *(v1 + 608);
  OUTLINED_FUNCTION_3_2((v1 + 576));
  OUTLINED_FUNCTION_29_13();
  sub_231367A60();
  v152 = __swift_destroy_boxed_opaque_existential_1Tm((v1 + 576));
  OUTLINED_FUNCTION_122(v152, v153, &qword_27DD44728, &qword_231375278);
  if (!*(v1 + 640))
  {
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
LABEL_51:
    v156.n128_f64[0] = OUTLINED_FUNCTION_41_13();
    goto LABEL_52;
  }

  v154 = *(v1 + 648);
  OUTLINED_FUNCTION_3_2((v1 + 616));
  OUTLINED_FUNCTION_42_12();
  sub_2311D1F18(v1 + 536, &qword_27DD44728, &qword_231375278);
  v156 = OUTLINED_FUNCTION_30_14();
LABEL_52:
  OUTLINED_FUNCTION_2_21(v155, v156, v157);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_33_13();
  if (v160)
  {
    v159 = 0;
  }

  else
  {
    v158 = v4;
  }

  v231 = v158;
  v233 = v159;
  v161 = OUTLINED_FUNCTION_14_24();
  v162(v161);
  v163 = OUTLINED_FUNCTION_31_17();
  v164(v163);
  v165 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0(v165);
  v167 = *(v166 + 16);
  v168 = OUTLINED_FUNCTION_112();
  v170 = v169(v168);
  v178 = OUTLINED_FUNCTION_55_8(v170, v171, v172, v173, v174, v175, v176, v177, v208, v211, v214, v217, v220, v223, v226);
  OUTLINED_FUNCTION_7_0(v178);
  v180 = *(v179 + 16);
  v181 = OUTLINED_FUNCTION_111();
  v182(v181);
  v183 = *(v79 + 24);
  v184 = *(v79 + 32);
  OUTLINED_FUNCTION_3_2(v79);
  OUTLINED_FUNCTION_148();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  v185 = sub_2313667C0();
  v193 = OUTLINED_FUNCTION_22_16(v185, v186, v187, v188, v189, v190, v191, v192, v209, v212, v215, v218, v221, v224, v227, v229, v231, v233, v235, v237, v239, v241, v243);
  v195 = v194(v193);
  OUTLINED_FUNCTION_7_19(v195, v196, v197, v198, v199, v200, v201, v202, v210, v213, v216, v219, v222, v225, v228, v230, v232, v234, v236, v238, v240, v242, v244, v245, v247, v249, v250);
  type metadata accessor for SuggestionService();
  v203 = OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_17_14(v203);
  v204 = swift_task_alloc();
  v205 = OUTLINED_FUNCTION_45_8(v204);
  *v205 = v206;
  OUTLINED_FUNCTION_1_30(v205);
  OUTLINED_FUNCTION_54_9();

  return sub_231316710();
}

uint64_t sub_2312D5CE8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 1640);
  *v2 = *v0;
  *(v1 + 1648) = v5;
  *(v1 + 1656) = v6;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312D5DD4()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[193];
  v2 = v0[127];

  v3 = swift_task_alloc();
  v0[208] = v3;
  *v3 = v0;
  v3[1] = sub_2312D5E74;
  v4 = v0[204];
  v5 = v0[203];
  OUTLINED_FUNCTION_96_0(v0[142]);

  return sub_2312D8A7C();
}

uint64_t sub_2312D5E74()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 1664);
  v5 = *(v3 + 1624);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 1672) = v8;
  *(v9 + 1680) = v10;

  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312D5F78()
{
  OUTLINED_FUNCTION_131();
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1112);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  v9 = *(v0 + 1680);
  v10 = *(v0 + 1672);
  v11 = *(v0 + 1656);
  v12 = *(v0 + 1648);
  v13 = OUTLINED_FUNCTION_49_9();
  v14(v13);
  v15 = *(v1 + 88);
  v16 = OUTLINED_FUNCTION_71();
  v18 = v17(v16);
  v19 = *(v0 + 1296);
  if (v18 == v3)
  {
    v20 = OUTLINED_FUNCTION_99_0();
    v21(v20);
    v22 = *(v3 + 8);
    v23 = OUTLINED_FUNCTION_71();
    v24(v23);
    if (v9)
    {
      v25 = *(v0 + 1424);
      v26 = *(v0 + 1416);
      v27 = *(v0 + 1312);
      v28 = *(v0 + 1128);
      v29 = *(v0 + 1016);
      sub_231369EE0();
      sub_231369EE0();
      sub_231368680();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
      v30 = swift_allocObject();
      v31 = OUTLINED_FUNCTION_77_3(v30, xmmword_23136C1C0);
      v32 = MEMORY[0x277D837D0];
      v30[3].n128_u64[0] = v31;
      v30[3].n128_u64[1] = v33;
      OUTLINED_FUNCTION_69_6();
      v30[4].n128_u64[1] = v32;
      v30[5].n128_u64[0] = v35;
      v30[7].n128_u64[1] = v32;
      if (v25)
      {
        v36 = v26;
      }

      else
      {
        v36 = 0;
      }

      v37 = 0xE000000000000000;
      if (v25)
      {
        v37 = v25;
      }

      v30[5].n128_u64[1] = v34;
      v30[6].n128_u64[0] = v36;
      v30[6].n128_u64[1] = v37;
      sub_231369EE0();
      OUTLINED_FUNCTION_64();
      *(v0 + 1704) = sub_231369EC0();
      *(v0 + 1712) = *(v29 + 104);
      v38 = swift_task_alloc();
      *(v0 + 1720) = v38;
      *v38 = v0;
      OUTLINED_FUNCTION_48_8(v38);
      v39 = *(v0 + 1008);
      OUTLINED_FUNCTION_127(*(v0 + 1128));
      OUTLINED_FUNCTION_54_9();

      return sub_2312D8A7C();
    }
  }

  else
  {
    v42 = OUTLINED_FUNCTION_136();
    v43(v42);
  }

  v245 = v11;
  *(v0 + 1792) = v11;
  *(v0 + 1784) = v12;
  *(v0 + 1776) = v9;
  *(v0 + 1768) = v10;
  v44 = *(v0 + 1488);
  v45 = *(v0 + 1480);
  v46 = *(v0 + 1472);
  v47 = *(v0 + 1464);
  OUTLINED_FUNCTION_16_23();
  OUTLINED_FUNCTION_70_6();
  v48(v12, *MEMORY[0x277D607E8]);
  v49 = OUTLINED_FUNCTION_16_7();
  (v47)(v49);
  v50 = OUTLINED_FUNCTION_26_1();
  v52 = sub_231311D04(v50, v51);
  v53 = OUTLINED_FUNCTION_54_0();
  v45(v53);
  if ((v52 & 1) != 0 && !v9)
  {
    v54 = *(v0 + 1368);
    v55 = *(v0 + 1184);
    sub_2313690F0();
    sub_231369EE0();
    v56 = sub_2313698A0();
    v57 = sub_23136A3A0();

    os_log_type_enabled(v56, v57);
    OUTLINED_FUNCTION_74_5();
    if (v58)
    {
      OUTLINED_FUNCTION_66_5();
      v239 = v59;
      v241 = v60;
      v61 = *(v0 + 1184);
      v62 = *(v0 + 1152);
      OUTLINED_FUNCTION_93_0();
      v246 = OUTLINED_FUNCTION_97_0();
      *v46 = 136315138;
      v63 = OUTLINED_FUNCTION_134();
      v66 = sub_2311CFD58(v63, v64, v65);

      *(v46 + 4) = v66;
      OUTLINED_FUNCTION_140(&dword_2311CB000, v67, v68, "Suggestion %s has siriHintsDisplay deliveryVehicle but displayDialog is nil. Returning nil SuggestionViewDetails");
      __swift_destroy_boxed_opaque_existential_1Tm(v246);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_88_0();

      (*(v62 + 8))();
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v244(v241, v239);
    }

    else
    {
      OUTLINED_FUNCTION_110();

      (*(v47 + 8))(v45, v46);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v244(v55, v57);
    }

    goto LABEL_29;
  }

  v69 = *(v0 + 1488);
  v70 = *(v0 + 1480);
  v71 = *(v0 + 1472);
  v72 = *(v0 + 1464);
  OUTLINED_FUNCTION_16_23();
  v73 = *(v0 + 1948);
  OUTLINED_FUNCTION_70_6();
  v74(v12);
  v75 = OUTLINED_FUNCTION_16_7();
  (v72)(v75);
  v76 = OUTLINED_FUNCTION_26_1();
  v78 = sub_231311D04(v76, v77);
  v79 = OUTLINED_FUNCTION_54_0();
  (v70)(v79);
  if ((v78 & 1) != 0 && !v9 && !v245)
  {
    OUTLINED_FUNCTION_117();
    sub_231369EE0();
    v80 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_81_3();
    if (v81)
    {
      OUTLINED_FUNCTION_78_4();
      v82 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_124(v82);
      v83 = OUTLINED_FUNCTION_94_0(4.8149e-34);

      MEMORY[4] = v83;
      OUTLINED_FUNCTION_59_7(&dword_2311CB000, v84, v85, "Suggestion %s has siriHintsSpoken deliveryVehicle but displayDialog and spokenDialog are nil. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_24();

      (*(v78 + 8))();
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v87 = v240;
      v86 = v242;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();

      v105 = OUTLINED_FUNCTION_65_6();
      v106(v105);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v86 = OUTLINED_FUNCTION_40_8();
    }

    v244(v86, v87);
LABEL_29:
    OUTLINED_FUNCTION_118();
    type metadata accessor for SuggestionViewDetails(0);
    v107 = OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_106_0(v107, v108, v109, v110);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_62_8();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_54_9();

    __asm { BRAA            X1, X16 }
  }

  v88 = *(v0 + 1016);
  v89 = *(v0 + 120);
  v90 = *(v0 + 128);
  OUTLINED_FUNCTION_3_2((v0 + 96));
  v91 = *(v90 + 16);
  OUTLINED_FUNCTION_57_10();
  sub_2313688E0();
  v92 = v88[6];
  __swift_project_boxed_opaque_existential_1(v88 + 2, v88[5]);
  v93 = *(v92 + 16);
  v94 = OUTLINED_FUNCTION_8_22();
  if (v95(v94))
  {
    sub_2312DC674(v0 + 416, v0 + 816, &qword_27DD44718, &qword_231375258);
    if (*(v0 + 840))
    {
      OUTLINED_FUNCTION_35_13();
      v96 = swift_task_alloc();
      *(v0 + 1800) = v96;
      *v96 = v0;
      OUTLINED_FUNCTION_9_24(v96);
      OUTLINED_FUNCTION_82_2();

      return sub_2312DB7CC(v97, v98, v99, v100, v101, v102, v103);
    }

    sub_2311D1F18(v0 + 816, &qword_27DD44718, &qword_231375258);
  }

  *(v0 + 1824) = 0u;
  OUTLINED_FUNCTION_6_19();
  v114 = *(v113 + 24);
  v115 = OUTLINED_FUNCTION_8_22();
  if (v116(v115))
  {
    v117 = *(v0 + 40);
    v118 = *(v0 + 48);
    OUTLINED_FUNCTION_3_28();
    v119 = sub_231368300();
    *(v0 + 1856) = OUTLINED_FUNCTION_144(v119, v120);
    v121 = *(v0 + 40);
    v122 = *(v0 + 48);
    OUTLINED_FUNCTION_3_28();
    sub_231368300();
    OUTLINED_FUNCTION_90();
    v125 = OUTLINED_FUNCTION_143(v123, v124);
    OUTLINED_FUNCTION_100(v125);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_54_9();

    return MEMORY[0x2822009F8](v126, v127, v128);
  }

  OUTLINED_FUNCTION_142();
  sub_2313698A0();
  v130 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v130))
  {
    v131 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v131);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v132, v133, "Removing icon assets as it is disabled in config");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_37_15();
  v134 = *(v70 + 8);
  v135 = OUTLINED_FUNCTION_28_0();
  v136(v135);
  v137 = sub_231368F50();
  OUTLINED_FUNCTION_32_12(v137);
  OUTLINED_FUNCTION_6_19();
  v139 = *(v138 + 8);
  v140 = OUTLINED_FUNCTION_8_22();
  if ((v141(v140) & 1) == 0)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_121();

  OUTLINED_FUNCTION_123();
  v142 = OUTLINED_FUNCTION_28_0();
  v9(v142);
  v143 = *(v0 + 600);
  v144 = *(v0 + 608);
  OUTLINED_FUNCTION_3_2((v0 + 576));
  OUTLINED_FUNCTION_29_13();
  sub_231367A60();
  v145 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_122(v145, v146, &qword_27DD44728, &qword_231375278);
  if (!*(v0 + 640))
  {
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
LABEL_43:
    v149.n128_f64[0] = OUTLINED_FUNCTION_41_13();
    goto LABEL_44;
  }

  v147 = *(v0 + 648);
  OUTLINED_FUNCTION_3_2((v0 + 616));
  OUTLINED_FUNCTION_42_12();
  sub_2311D1F18(v0 + 536, &qword_27DD44728, &qword_231375278);
  v149 = OUTLINED_FUNCTION_30_14();
LABEL_44:
  OUTLINED_FUNCTION_2_21(v148, v149, v150);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_33_13();
  if (v153)
  {
    v152 = 0;
  }

  else
  {
    v151 = v9;
  }

  v224 = v151;
  v226 = v152;
  v154 = OUTLINED_FUNCTION_14_24();
  v155(v154);
  v156 = OUTLINED_FUNCTION_31_17();
  v157(v156);
  v158 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0(v158);
  v160 = *(v159 + 16);
  v161 = OUTLINED_FUNCTION_112();
  v163 = v162(v161);
  v171 = OUTLINED_FUNCTION_55_8(v163, v164, v165, v166, v167, v168, v169, v170, v201, v204, v207, v210, v213, v216, v219);
  OUTLINED_FUNCTION_7_0(v171);
  v173 = *(v172 + 16);
  v174 = OUTLINED_FUNCTION_111();
  v175(v174);
  v176 = *(v72 + 24);
  v177 = *(v72 + 32);
  OUTLINED_FUNCTION_3_2(v72);
  OUTLINED_FUNCTION_148();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  v178 = sub_2313667C0();
  v186 = OUTLINED_FUNCTION_22_16(v178, v179, v180, v181, v182, v183, v184, v185, v202, v205, v208, v211, v214, v217, v220, v222, v224, v226, v228, v230, v232, v234, v236);
  v188 = v187(v186);
  OUTLINED_FUNCTION_7_19(v188, v189, v190, v191, v192, v193, v194, v195, v203, v206, v209, v212, v215, v218, v221, v223, v225, v227, v229, v231, v233, v235, v237, v238, v240, v242, v243);
  type metadata accessor for SuggestionService();
  v196 = OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_17_14(v196);
  v197 = swift_task_alloc();
  v198 = OUTLINED_FUNCTION_45_8(v197);
  *v198 = v199;
  OUTLINED_FUNCTION_1_30(v198);
  OUTLINED_FUNCTION_54_9();

  return sub_231316710();
}

uint64_t sub_2312D6984()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 1720);
  *v2 = *v0;
  *(v1 + 1728) = v5;
  *(v1 + 1736) = v6;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312D6A70()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[212];
  v2 = v0[127];

  v3 = swift_task_alloc();
  v0[218] = v3;
  *v3 = v0;
  v3[1] = sub_2312D6B10;
  v4 = v0[214];
  v5 = v0[213];
  OUTLINED_FUNCTION_96_0(v0[141]);

  return sub_2312D8A7C();
}

uint64_t sub_2312D6B10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 1744);
  v5 = *(v3 + 1704);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 1752) = v8;
  *(v9 + 1760) = v10;

  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312D6C14()
{
  v206 = v0;
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1112);

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  v202 = *(v0 + 1752);
  v198 = *(v0 + 1728);
  *(v0 + 1768) = v202;
  *(v0 + 1784) = v198;
  v8 = *(v0 + 1488);
  v9 = *(v0 + 1480);
  v10 = *(v0 + 1472);
  v11 = *(v0 + 1464);
  OUTLINED_FUNCTION_16_23();
  v12 = *(v0 + 1312);
  v13 = *(v0 + 1304);
  v14 = *(v0 + 1280);
  v15(v13, *MEMORY[0x277D607E8]);
  v11(v13, v2, v14);
  v16 = OUTLINED_FUNCTION_28_0();
  v18 = sub_231311D04(v16, v17);
  v19 = OUTLINED_FUNCTION_26_1();
  v9(v19);
  if ((v18 & 1) != 0 && !*(&v202 + 1))
  {
    v20 = *(v0 + 1368);
    v21 = *(v0 + 1184);
    sub_2313690F0();
    sub_231369EE0();
    v22 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_146();
    v23 = *(v0 + 1520);
    OUTLINED_FUNCTION_115();
    v196 = v24;
    v25 = *(v0 + 1368);
    if (v26)
    {
      v27 = *(v0 + 1360);
      v187 = *(v0 + 1280);
      v190 = *(v0 + 1312);
      v28 = *(v0 + 1152);
      v181 = *(v0 + 1144);
      v184 = *(v0 + 1184);
      swift_slowAlloc();
      v29 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_124(v29);
      *v10 = 136315138;
      v30 = sub_2311CFD58(v27, v25, v205);

      *(v10 + 4) = v30;
      OUTLINED_FUNCTION_59_7(&dword_2311CB000, v31, v32, "Suggestion %s has siriHintsDisplay deliveryVehicle but displayDialog is nil. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_24();

      (*(v28 + 8))(v184, v181);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v34 = v187;
      v33 = v190;
    }

    else
    {
      v78 = *(v0 + 1312);
      v79 = *(v0 + 1280);
      v80 = *(v0 + 1184);
      v81 = *(v0 + 1152);
      v82 = *(v0 + 1144);

      v83 = OUTLINED_FUNCTION_65_6();
      v84(v83);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v33 = v78;
      v34 = v79;
    }

    v196(v33, v34);
    goto LABEL_19;
  }

  v35 = *(v0 + 1488);
  v36 = *(v0 + 1480);
  v37 = *(v0 + 1472);
  v38 = *(v0 + 1464);
  OUTLINED_FUNCTION_16_23();
  v39 = *(v0 + 1312);
  v40 = *(v0 + 1304);
  v41 = *(v0 + 1280);
  v42(v40, *(v0 + 1948));
  v38(v40, v18, v41);
  v43 = OUTLINED_FUNCTION_28_0();
  v45 = sub_231311D04(v43, v44);
  v46 = OUTLINED_FUNCTION_26_1();
  (v36)(v46);
  if ((v45 & 1) != 0 && !*(&v202 + 1) && !*(&v198 + 1))
  {
    OUTLINED_FUNCTION_117();
    sub_231369EE0();
    v47 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_146();
    v48 = *(v0 + 1520);
    OUTLINED_FUNCTION_115();
    v199 = v49;
    v50 = *(v0 + 1368);
    if (v51)
    {
      v52 = *(v0 + 1360);
      v191 = *(v0 + 1280);
      v194 = *(v0 + 1312);
      v53 = *(v0 + 1176);
      v54 = *(v0 + 1152);
      OUTLINED_FUNCTION_93_0();
      v55 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_124(v55);
      v56 = OUTLINED_FUNCTION_94_0(4.8149e-34);

      *(v36 + 4) = v56;
      OUTLINED_FUNCTION_59_7(&dword_2311CB000, v57, v58, "Suggestion %s has siriHintsSpoken deliveryVehicle but displayDialog and spokenDialog are nil. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_24();

      (*(v54 + 8))();
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v60 = v191;
      v59 = v194;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();

      v85 = OUTLINED_FUNCTION_65_6();
      v86(v85);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v59 = OUTLINED_FUNCTION_40_8();
    }

    v199(v59, v60);
LABEL_19:
    OUTLINED_FUNCTION_118();
    type metadata accessor for SuggestionViewDetails(0);
    v87 = OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_106_0(v87, v88, v89, v90);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    OUTLINED_FUNCTION_0_32();
    v176 = *(v0 + 1160);
    v179 = *(v0 + 1136);
    v182 = *(v0 + 1128);
    v185 = *(v0 + 1104);
    v188 = *(v0 + 1080);
    v192 = *(v0 + 1072);
    OUTLINED_FUNCTION_104_0();
    v200 = *(v0 + 1048);
    v203 = *(v0 + 1032);
    OUTLINED_FUNCTION_91_0();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X1, X16 }
  }

  v61 = *(v0 + 1016);
  v62 = *(v0 + 120);
  v63 = *(v0 + 128);
  OUTLINED_FUNCTION_3_2((v0 + 96));
  v64 = *(v63 + 16);
  OUTLINED_FUNCTION_57_10();
  sub_2313688E0();
  v65 = v61[6];
  __swift_project_boxed_opaque_existential_1(v61 + 2, v61[5]);
  v66 = *(v65 + 16);
  v67 = OUTLINED_FUNCTION_8_22();
  if (v68(v67))
  {
    sub_2312DC674(v0 + 416, v0 + 816, &qword_27DD44718, &qword_231375258);
    if (*(v0 + 840))
    {
      OUTLINED_FUNCTION_35_13();
      v69 = swift_task_alloc();
      *(v0 + 1800) = v69;
      *v69 = v0;
      v70 = OUTLINED_FUNCTION_9_24(v69);

      return sub_2312DB7CC(v70, v71, v72, v73, v74, v75, v76);
    }

    sub_2311D1F18(v0 + 816, &qword_27DD44718, &qword_231375258);
  }

  *(v0 + 1824) = 0u;
  OUTLINED_FUNCTION_6_19();
  v94 = *(v93 + 24);
  v95 = OUTLINED_FUNCTION_8_22();
  if (v96(v95))
  {
    v97 = *(v0 + 40);
    v98 = *(v0 + 48);
    OUTLINED_FUNCTION_3_28();
    v99 = sub_231368300();
    *(v0 + 1856) = OUTLINED_FUNCTION_144(v99, v100);
    v101 = *(v0 + 40);
    v102 = *(v0 + 48);
    OUTLINED_FUNCTION_3_28();
    sub_231368300();
    OUTLINED_FUNCTION_90();
    v105 = OUTLINED_FUNCTION_143(v103, v104);
    OUTLINED_FUNCTION_100(v105);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_137();

    return MEMORY[0x2822009F8](v106, v107, v108);
  }

  OUTLINED_FUNCTION_142();
  sub_2313698A0();
  v110 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v110))
  {
    v111 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v111);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v112, v113, "Removing icon assets as it is disabled in config");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_37_15();
  v114 = *(v35 + 8);
  v115 = OUTLINED_FUNCTION_28_0();
  v116(v115);
  v117 = sub_231368F50();
  OUTLINED_FUNCTION_32_12(v117);
  OUTLINED_FUNCTION_6_19();
  v119 = *(v118 + 8);
  v120 = OUTLINED_FUNCTION_8_22();
  if ((v121(v120) & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_121();

  OUTLINED_FUNCTION_123();
  v122 = OUTLINED_FUNCTION_28_0();
  (v36)(v122);
  v123 = *(v0 + 600);
  v124 = *(v0 + 608);
  OUTLINED_FUNCTION_3_2((v0 + 576));
  OUTLINED_FUNCTION_29_13();
  sub_231367A60();
  v125 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_122(v125, v126, &qword_27DD44728, &qword_231375278);
  if (!*(v0 + 640))
  {
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
LABEL_33:
    v129.n128_f64[0] = OUTLINED_FUNCTION_41_13();
    goto LABEL_34;
  }

  v127 = *(v0 + 648);
  OUTLINED_FUNCTION_3_2((v0 + 616));
  OUTLINED_FUNCTION_42_12();
  sub_2311D1F18(v0 + 536, &qword_27DD44728, &qword_231375278);
  v129 = OUTLINED_FUNCTION_30_14();
LABEL_34:
  *(v0 + 1920) = v128;
  *(v0 + 1888) = v129;
  *(v0 + 1904) = v130;
  v195 = *(v0 + 1824);
  v197 = *(v0 + 1832);
  v131 = *(v0 + 1792);
  v173 = *(v0 + 1768);
  v177 = *(v0 + 1784);
  v180 = *(v0 + 1368);
  v169 = *(v0 + 1328);
  v170 = *(v0 + 1336);
  v171 = *(v0 + 1320);
  v168 = *(v0 + 1312);
  v166 = *(v0 + 1776);
  v167 = *(v0 + 1280);
  v183 = *(v0 + 1264);
  v186 = *(v0 + 1256);
  v189 = *(v0 + 1248);
  v193 = *(v0 + 1360);
  v132 = *(v0 + 1104);
  v133 = *(v0 + 1096);
  v134 = *(v0 + 1088);
  v135 = *(v0 + 1048);
  v136 = *(v0 + 1040);
  v204 = *(v0 + 1032);
  v137 = *(v0 + 1024);
  v201 = (*(v0 + 1000) + *(v0 + 1944));
  v138 = *(v0 + 1008);
  sub_2312D92AC((v0 + 16), *(v0 + 1056));
  if (v131)
  {
    v139 = v177;
  }

  else
  {
    v139 = 0;
  }

  v140 = 0xE000000000000000;
  if (v131)
  {
    v141 = v131;
  }

  else
  {
    v141 = 0xE000000000000000;
  }

  v175 = v141;
  v178 = v139;
  v142 = v173;
  if (v166)
  {
    v140 = v166;
  }

  else
  {
    v142 = 0;
  }

  v172 = v140;
  v174 = v142;
  v143 = OUTLINED_FUNCTION_14_24();
  v144(v143);
  v169(&v135[v136[9]], v168, v167);
  v145 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0(v145);
  v147 = *(v146 + 16);
  v148 = OUTLINED_FUNCTION_112();
  v149(v148);
  v150 = *(v171 + 28);
  v151 = v136[11];
  v152 = sub_231369050();
  OUTLINED_FUNCTION_7_0(v152);
  v154 = *(v153 + 16);
  v155 = OUTLINED_FUNCTION_111();
  v156(v155);
  v157 = v138[3];
  v158 = v138[4];
  OUTLINED_FUNCTION_3_2(v138);
  sub_231369EE0();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  sub_2313667C0();
  OUTLINED_FUNCTION_90();
  (*(v186 + 8))(v183, v189);
  *v135 = v178;
  *(v135 + 1) = v175;
  *(v135 + 2) = v174;
  *(v135 + 3) = v172;
  *(v135 + 4) = v195;
  *(v135 + 5) = v197;
  v159 = &v135[v136[8]];
  *v159 = v193;
  *(v159 + 1) = v180;
  v160 = &v135[v136[12]];
  *v160 = v183;
  *(v160 + 1) = v157;
  sub_2311CF388(v0 + 56, v0 + 456);
  type metadata accessor for SuggestionService();
  *(v0 + 1928) = OUTLINED_FUNCTION_20_21();
  v161 = v201[4];
  __swift_project_boxed_opaque_existential_1(v201, v201[3]);
  OUTLINED_FUNCTION_71();
  sub_2313682B0();
  v162 = swift_task_alloc();
  v163 = OUTLINED_FUNCTION_45_8(v162);
  *v163 = v164;
  OUTLINED_FUNCTION_1_30(v163);
  OUTLINED_FUNCTION_137();

  return sub_231316710();
}

uint64_t sub_2312D768C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 1800);
  *v2 = *v0;
  *(v1 + 1808) = v5;
  *(v1 + 1816) = v6;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312D7778()
{
  OUTLINED_FUNCTION_131();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 776));
  *(v0 + 1824) = *(v0 + 1808);
  OUTLINED_FUNCTION_6_19();
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_8_22();
  if (v7(v6))
  {
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    OUTLINED_FUNCTION_3_28();
    v10 = sub_231368300();
    *(v0 + 1856) = OUTLINED_FUNCTION_144(v10, v11);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    OUTLINED_FUNCTION_3_28();
    sub_231368300();
    OUTLINED_FUNCTION_90();
    v16 = OUTLINED_FUNCTION_143(v14, v15);
    OUTLINED_FUNCTION_100(v16);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_82_2();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }

  OUTLINED_FUNCTION_142();
  sub_2313698A0();
  v21 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v21))
  {
    v22 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v22);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v23, v24, "Removing icon assets as it is disabled in config");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_37_15();
  v25 = *(v1 + 8);
  v26 = OUTLINED_FUNCTION_28_0();
  v27(v26);
  v28 = sub_231368F50();
  OUTLINED_FUNCTION_32_12(v28);
  OUTLINED_FUNCTION_6_19();
  v30 = *(v29 + 8);
  v31 = OUTLINED_FUNCTION_8_22();
  if ((v32(v31) & 1) == 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_121();

  OUTLINED_FUNCTION_123();
  v33 = OUTLINED_FUNCTION_28_0();
  v2(v33);
  v34 = *(v0 + 600);
  v35 = *(v0 + 608);
  OUTLINED_FUNCTION_3_2((v0 + 576));
  OUTLINED_FUNCTION_29_13();
  sub_231367A60();
  v36 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_122(v36, v37, &qword_27DD44728, &qword_231375278);
  if (!*(v0 + 640))
  {
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
LABEL_11:
    v40.n128_f64[0] = OUTLINED_FUNCTION_41_13();
    goto LABEL_12;
  }

  v38 = *(v0 + 648);
  OUTLINED_FUNCTION_3_2((v0 + 616));
  OUTLINED_FUNCTION_42_12();
  sub_2311D1F18(v0 + 536, &qword_27DD44728, &qword_231375278);
  v40 = OUTLINED_FUNCTION_30_14();
LABEL_12:
  OUTLINED_FUNCTION_2_21(v39, v40, v41);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_33_13();
  if (v44)
  {
    v43 = 0;
  }

  else
  {
    v42 = v2;
  }

  v116 = v42;
  v118 = v43;
  v45 = OUTLINED_FUNCTION_14_24();
  v46(v45);
  v47 = OUTLINED_FUNCTION_31_17();
  v48(v47);
  v49 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0(v49);
  v51 = *(v50 + 16);
  v52 = OUTLINED_FUNCTION_112();
  v54 = v53(v52);
  v62 = OUTLINED_FUNCTION_55_8(v54, v55, v56, v57, v58, v59, v60, v61, v93, v96, v99, v102, v105, v108, v111);
  OUTLINED_FUNCTION_7_0(v62);
  v64 = *(v63 + 16);
  v65 = OUTLINED_FUNCTION_111();
  v66(v65);
  v67 = v3[3];
  v68 = v3[4];
  OUTLINED_FUNCTION_3_2(v3);
  OUTLINED_FUNCTION_148();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  v69 = sub_2313667C0();
  v77 = OUTLINED_FUNCTION_22_16(v69, v70, v71, v72, v73, v74, v75, v76, v94, v97, v100, v103, v106, v109, v112, v114, v116, v118, v120, v122, v124, v126, v128);
  v79 = v78(v77);
  OUTLINED_FUNCTION_7_19(v79, v80, v81, v82, v83, v84, v85, v86, v95, v98, v101, v104, v107, v110, v113, v115, v117, v119, v121, v123, v125, v127, v129, v130, v131, v132, v133);
  type metadata accessor for SuggestionService();
  v87 = OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_17_14(v87);
  v88 = swift_task_alloc();
  v89 = OUTLINED_FUNCTION_45_8(v88);
  *v89 = v90;
  OUTLINED_FUNCTION_1_30(v89);
  OUTLINED_FUNCTION_82_2();

  return sub_231316710();
}

uint64_t sub_2312D7A8C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[235];
  v2 = v0[234];
  v3 = v0[233];
  sub_231369380();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312D7AFC()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[232];
  v2 = v0[231];
  v3 = v0[230];
  v4 = v0[85];
  v5 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v4);
  v0[90] = v4;
  v0[91] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 87);
  OUTLINED_FUNCTION_26_0(v4);
  (*(v6 + 16))();
  v7 = *(*(v2 + 8) + 8);
  sub_23136A260();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312D7BDC()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[232];
  v2 = v0[231];
  v3 = v0[230];
  OUTLINED_FUNCTION_80_4();
  sub_231369430();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 87);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312D7C64()
{
  OUTLINED_FUNCTION_131();
  v1 = *(v0 + 1080);
  if (*(v0 + 912))
  {
    v2 = sub_231368F50();
    v3 = swift_dynamicCast() ^ 1;
    v4 = v1;
  }

  else
  {
    sub_2311D1F18(v0 + 888, &qword_27DD443C0, &unk_23136E000);
    v2 = sub_231368F50();
    v4 = v1;
    v3 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v3, 1, v2);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 984);
  sub_2312DC674(*(v0 + 1080), v5, &qword_27DD436D0, &qword_23136D3E0);
  sub_231368F50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v2);
  v8 = *(v0 + 1072);
  if (EnumTagSinglePayload == 1)
  {
    sub_2311D1F18(*(v0 + 1072), &qword_27DD436D0, &qword_23136D3E0);
    *(v0 + 920) = 0u;
    *(v0 + 936) = 0u;
  }

  else
  {
    *(v0 + 944) = v2;
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 920));
    OUTLINED_FUNCTION_26_0(v2);
    (*(v9 + 32))();
  }

  v10 = *(v0 + 1384);
  v11 = *(v0 + 1376);
  v12 = *(v0 + 1216);
  v13 = *(v0 + 1200);
  v14 = *(v0 + 1104);
  v127 = *(v0 + 1080);
  v15 = sub_2313678C0();
  OUTLINED_FUNCTION_80_4();
  sub_2312C5010(v0 + 920);
  v15(v0 + 952, 0);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  OUTLINED_FUNCTION_3_28();
  sub_2313682A0();
  sub_2313676F0();

  sub_231368140();
  v18 = OUTLINED_FUNCTION_40_8();
  v11(v18);
  v19 = *(v0 + 760);
  v20 = *(v0 + 768);
  OUTLINED_FUNCTION_3_2((v0 + 736));
  v21 = *(v20 + 8);
  sub_231367AA0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 736));
  sub_2311D1F18(v127, &qword_27DD436D0, &qword_23136D3E0);
  OUTLINED_FUNCTION_6_19();
  v23 = *(v22 + 8);
  v24 = OUTLINED_FUNCTION_8_22();
  if (v25(v24))
  {
    OUTLINED_FUNCTION_10_23();
    OUTLINED_FUNCTION_121();

    OUTLINED_FUNCTION_123();
    v26 = OUTLINED_FUNCTION_28_0();
    v13(v26);
    v27 = *(v0 + 600);
    v28 = *(v0 + 608);
    OUTLINED_FUNCTION_3_2((v0 + 576));
    OUTLINED_FUNCTION_29_13();
    sub_231367A60();
    v29 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
    OUTLINED_FUNCTION_122(v29, v30, &qword_27DD44728, &qword_231375278);
    if (*(v0 + 640))
    {
      v31 = *(v0 + 648);
      OUTLINED_FUNCTION_3_2((v0 + 616));
      OUTLINED_FUNCTION_42_12();
      sub_2311D1F18(v0 + 536, &qword_27DD44728, &qword_231375278);
      v33 = OUTLINED_FUNCTION_30_14();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
  }

  v33.n128_f64[0] = OUTLINED_FUNCTION_41_13();
LABEL_12:
  OUTLINED_FUNCTION_2_21(v32, v33, v34);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_33_13();
  if (v37)
  {
    v36 = 0;
  }

  else
  {
    v35 = v13;
  }

  v109 = v35;
  v111 = v36;
  v38 = OUTLINED_FUNCTION_14_24();
  v39(v38);
  v40 = OUTLINED_FUNCTION_31_17();
  v41(v40);
  v42 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0(v42);
  v44 = *(v43 + 16);
  v45 = OUTLINED_FUNCTION_112();
  v47 = v46(v45);
  v55 = OUTLINED_FUNCTION_55_8(v47, v48, v49, v50, v51, v52, v53, v54, v86, v89, v92, v95, v98, v101, v104);
  OUTLINED_FUNCTION_7_0(v55);
  v57 = *(v56 + 16);
  v58 = OUTLINED_FUNCTION_111();
  v59(v58);
  v60 = v10[3];
  v61 = v10[4];
  OUTLINED_FUNCTION_3_2(v10);
  OUTLINED_FUNCTION_148();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  v62 = sub_2313667C0();
  v70 = OUTLINED_FUNCTION_22_16(v62, v63, v64, v65, v66, v67, v68, v69, v87, v90, v93, v96, v99, v102, v105, v107, v109, v111, v113, v115, v117, v119, v121);
  v72 = v71(v70);
  OUTLINED_FUNCTION_7_19(v72, v73, v74, v75, v76, v77, v78, v79, v88, v91, v94, v97, v100, v103, v106, v108, v110, v112, v114, v116, v118, v120, v122, v123, v124, v125, v126);
  type metadata accessor for SuggestionService();
  v80 = OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_17_14(v80);
  v81 = swift_task_alloc();
  v82 = OUTLINED_FUNCTION_45_8(v81);
  *v82 = v83;
  OUTLINED_FUNCTION_1_30(v82);
  OUTLINED_FUNCTION_82_2();

  return sub_231316710();
}

uint64_t sub_2312D8084()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[242];
  v3 = v1[241];
  v4 = v1[171];
  v5 = v1[129];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  swift_unknownObjectRelease();
  sub_2311D1F18(v5, &qword_27DD432D8, &unk_23136BED0);
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312D81D4()
{
  v28 = *(v0 + 1920);
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1776);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1512);
  v21 = *(v0 + 1480);
  v22 = *(v0 + 1488);
  v5 = *(v0 + 1424);
  v19 = *(v0 + 1312);
  v6 = *(v0 + 1280);
  v7 = *(v0 + 1104);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);
  v26 = *(v0 + 1056);
  v20 = *(v0 + 1048);
  v23 = *(v0 + 1000);
  v10 = *(v0 + 992);
  v24 = *(v0 + 1904);
  v25 = *(v0 + 1888);

  v11 = *(v8 + 8);
  v12 = OUTLINED_FUNCTION_26_1();
  v13(v12);
  sub_2311D1F18(v0 + 416, &qword_27DD44718, &qword_231375258);
  sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v21(v19, v6);
  sub_2312DC61C(v20, v10, type metadata accessor for ViewDetails);
  v14 = type metadata accessor for SuggestionViewDetails(0);
  sub_2312DC54C(v23, v10 + v14[5], type metadata accessor for RankedCandidateSuggestion);
  sub_2311D38A8((v0 + 456), v10 + v14[6]);
  sub_2311D38A8((v0 + 496), v10 + v14[7]);
  v15 = v10 + v14[8];
  *v15 = v25;
  *(v15 + 16) = v24;
  *(v15 + 32) = v28;
  sub_2312DBEC4(v26, v10 + v14[9]);
  v16 = *(v0 + 984);

  __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_19_17();
  *&v24 = *(v0 + 1064);
  *&v25 = *(v0 + 1056);
  v27 = *(v0 + 1048);
  v29 = *(v0 + 1032);
  OUTLINED_FUNCTION_91_0();

  OUTLINED_FUNCTION_56_0();

  return v17();
}

uint64_t sub_2312D84B0(double a1)
{
  v4[3] = MEMORY[0x277D839F8];
  *v4 = a1;
  v1 = sub_2313678C0();
  sub_2312C5010(v4);
  return v1(&v3, 0);
}

uint64_t sub_2312D8534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23136B670;
  strcpy((inited + 32), "invocationType");
  *(inited + 47) = -18;
  sub_231367C70();
  sub_2312DC504(&qword_280F7CA70, MEMORY[0x277D60AE8]);
  v4 = sub_23136A8B0();
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  sub_231367D80();
  sub_2312DC504(&qword_280F7CA40, MEMORY[0x277D60BA8]);
  v7 = sub_23136A8B0();
  v9 = v8;
  *(&v53 + 1) = v5;
  *&v52 = v7;
  *(&v52 + 1) = v8;
  *&v55 = 0x79726576696C6564;
  *(&v55 + 1) = 0xEF656C6369686556;
  sub_2312250F8(&v52, &v56);
  sub_231369EE0();
  sub_23126E654();
  v11 = v10;
  *(v10 + 16) = 2;
  v12 = v56;
  *(v10 + 80) = v55;
  *(v10 + 96) = v12;
  *(v10 + 112) = v57;
  *&v55 = 29545;
  *(&v55 + 1) = 0xE200000000000000;
  v13 = sub_2312D9770(v7, v9);
  v15 = v14;

  MEMORY[0x23192A730](v13, v15);

  *(&v53 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v52) = 1;
  sub_2312250F8(&v52, &v56);
  v16 = *(v11 + 16);
  v17 = v16 + 1;
  if (v16 >= *(v11 + 24) >> 1)
  {
LABEL_18:
    sub_23126E654();
    v11 = v46;
  }

  *(v11 + 16) = v17;
  v18 = (v11 + 48 * v16);
  v19 = v55;
  v20 = v57;
  v18[3] = v56;
  v18[4] = v20;
  v18[2] = v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_2313682F0();
  a1 = v22;
  v17 = v22 + 64;
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;
  sub_231369EE0();
  v16 = 0;
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    v27 = v16;
    if (!v25)
    {
      break;
    }

LABEL_9:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v29 = v28 | (v16 << 6);
    v30 = (a1[6] + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    sub_2311D1D6C(a1[7] + 32 * v29, &v56);
    *&v55 = v31;
    *(&v55 + 1) = v32;
    sub_231369EE0();
    sub_2312D9858(v31, v32, &v56, &v52);
    sub_2311D1F18(&v55, &qword_27DD43558, &qword_231374890);
    if (*(&v52 + 1))
    {
      v49 = v52;
      v50 = v53;
      v51 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v48 + 16);
        sub_23126E654();
        v48 = v37;
      }

      v33 = *(v48 + 16);
      v34 = v33 + 1;
      if (v33 >= *(v48 + 24) >> 1)
      {
        sub_23126E654();
        v34 = v33 + 1;
        v48 = v38;
      }

      *(v48 + 16) = v34;
      v35 = (v48 + 48 * v33);
      v35[3] = v50;
      v35[4] = v51;
      v35[2] = v49;
    }

    else
    {
      sub_2311D1F18(&v52, &qword_27DD44788, &unk_231375458);
    }
  }

  while (1)
  {
    v16 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v16 >= v26)
    {
      break;
    }

    v25 = *(v17 + 8 * v16);
    ++v27;
    if (v25)
    {
      goto LABEL_9;
    }
  }

  *&v55 = v48;
  v39 = sub_231369EE0();
  sub_231267450(v39);
  sub_2312D3380(v55);

  v40 = sub_2313688B0();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  result = sub_2313688A0();
  v44 = MEMORY[0x277D61040];
  a2[3] = v40;
  a2[4] = v44;
  *a2 = result;
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2312D8A24()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 deviceUsesCompactVoiceTrigger];

  return v1;
}

uint64_t sub_2312D8A7C()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  *(v1 + 312) = v3;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 168) = v6;
  *(v1 + 176) = v7;
  v8 = sub_2313698C0();
  *(v1 + 216) = v8;
  OUTLINED_FUNCTION_0(v8);
  *(v1 + 224) = v9;
  v11 = *(v10 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_43();
  v12 = type metadata accessor for DefaultDialogIdProvider(0);
  *(v1 + 240) = v12;
  OUTLINED_FUNCTION_40_0(v12);
  v14 = *(v13 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_43();
  v15 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2312D8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *(v16 + 240);
  v17 = *(v16 + 248);
  v19 = *(v16 + 200);
  v20 = *(v16 + 208);
  v21 = *(v16 + 312);
  v22 = *(v16 + 168);
  v23 = *(v16 + 176);
  sub_231369EE0();
  v24 = sub_231368670();
  *(v16 + 120) = MEMORY[0x277D837D0];
  *(v16 + 96) = v24;
  *(v16 + 104) = v25;
  sub_2312250F8((v16 + 96), (v16 + 128));
  swift_isUniquelyReferenced_nonNull_native();
  sub_231259D04();
  v26 = sub_2313688B0();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_2313688A0();
  *(v16 + 256) = v29;
  v30 = OBJC_IVAR____TtC15SiriSuggestions25ExampleUtteranceDecorator_platformRootLocation;
  v31 = sub_231366690();
  OUTLINED_FUNCTION_7_0(v31);
  (*(v32 + 16))(v17, &v20[v30]);
  v33 = *(v20 + 2);
  *(v16 + 264) = v33;
  v34 = *(v20 + 3);
  *(v16 + 272) = v34;
  v35 = *(v20 + 4);
  v36 = *(v20 + 5);
  v37 = (v17 + v18[8]);
  *v37 = 0xD000000000000017;
  v37[1] = 0x8000000231375410;
  v38 = (v17 + v18[5]);
  *v38 = v33;
  v38[1] = v34;
  v39 = (v17 + v18[6]);
  *v39 = v35;
  v39[1] = v36;
  *(v17 + v18[7]) = v21;
  v40 = v19[3];
  v41 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v40);
  *(v16 + 40) = v18;
  *(v16 + 48) = sub_2312DC504(&qword_280F810D8, type metadata accessor for DefaultDialogIdProvider);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v16 + 16));
  sub_2312DC54C(v17, boxed_opaque_existential_1Tm, type metadata accessor for DefaultDialogIdProvider);
  v43 = MEMORY[0x277D61040];
  *(v16 + 80) = v26;
  *(v16 + 88) = v43;
  *(v16 + 56) = v29;
  v44 = *(MEMORY[0x277D60A98] + 4);
  sub_231369EE0();
  sub_231369EE0();

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v16 + 280) = v47;
  *v47 = v48;
  v47[1] = sub_2312D8E00;
  v49 = *(v16 + 184);
  v50 = *(v16 + 192);

  return MEMORY[0x2821C69D8](v16 + 16, v16 + 56, v49, v50, v40, v41, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
}