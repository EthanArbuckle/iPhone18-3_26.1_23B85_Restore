uint64_t sub_2311E3364()
{
  OUTLINED_FUNCTION_8();
  v1[49] = v2;
  v1[50] = v0;
  v1[47] = v3;
  v1[48] = v4;
  v5 = sub_2313698C0();
  v1[51] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[52] = v6;
  v8 = *(v7 + 64);
  v1[53] = OUTLINED_FUNCTION_67();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F78, &qword_23136B898);
  OUTLINED_FUNCTION_40_0(v9);
  v11 = *(v10 + 64);
  v1[56] = OUTLINED_FUNCTION_43();
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2311E3450()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_21_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F80, &qword_23136B8A0);
  OUTLINED_FUNCTION_35_1(v2);
  v3 = OUTLINED_FUNCTION_74_0();
  sub_2311E66F0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_71_0();
  sub_2311CF324(v0, v1 + 96);
  OUTLINED_FUNCTION_73();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_5_0(v7);
  v8 = *(MEMORY[0x277D60B28] + 4);
  v9 = swift_task_alloc();
  *(v1 + 464) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
  OUTLINED_FUNCTION_47_0();
  *v9 = v10;
  v9[1] = sub_2311E356C;
  v11 = *(v1 + 448);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821C6B08](v12, v13, v14, v15, v16, v17, v18, v19);
}

void sub_2311E356C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 464);
  *v4 = *v1;
  v3[59] = v7;
  v3[60] = v0;

  if (v0)
  {
  }

  else
  {
    v8 = v3[57];
    sub_2311D1F18(v3[56], &qword_27DD42F78, &qword_23136B898);

    OUTLINED_FUNCTION_13();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_2311E36B0()
{
  v126 = v2;
  OUTLINED_FUNCTION_33_1();
  sub_231369EE0();
  sub_2311E1BB0(v125, v0);
  if (v1)
  {

    OUTLINED_FUNCTION_52_0();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    v4 = v125[0];
    sub_2313690F0();

    v5 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_84();

    v6 = OUTLINED_FUNCTION_64_0();
    v7 = v2[55];
    v9 = v2[51];
    v8 = v2[52];
    if (v6)
    {
      v121 = v2[55];
      OUTLINED_FUNCTION_37_0();
      v10 = OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_41(v10);
      *v9 = 136315394;
      v11 = v4;
      v12 = MEMORY[0x23192A860](v4, &type metadata for ProviderKey);
      v14 = sub_2311CFD58(v12, v13, v125);

      *(v9 + 4) = v14;
      *(v9 + 14) = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_9_1(&dword_2311CB000, v15, v16, "Determined ordered provider keys as: %s for %s");
      OUTLINED_FUNCTION_19_2();
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_15();

      v17 = *(v8 + 8);
      v19 = v120;
      v18 = v121;
    }

    else
    {
      v11 = v4;

      v17 = *(v8 + 8);
      v18 = v7;
      v19 = v9;
    }

    v115 = v17;
    v17(v18, v19);
    v20 = v2[50];
    v119 = v20[8];
    if (v119)
    {
      v124 = MEMORY[0x277D84FA0];
      v21 = *(v11 + 16);
      v116 = v20[9];
      if (!v21)
      {

        v25 = MEMORY[0x277D84F90];
        goto LABEL_60;
      }

      v22 = v20[2];
      v23 = v11 + 32;

      v24 = 0;
      v114 = v21 - 1;
      v25 = MEMORY[0x277D84F90];
      while (v24 < *(v11 + 16))
      {
        v26 = *(v23 + 8 * v24);
        v27 = *(v22 + 16);

        if (v27 && (v28 = sub_2312160A8(), (v29 & 1) != 0))
        {
          v30 = *(*(v22 + 56) + 8 * v28);
          sub_231369EE0();
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        if (*(v30 + 16))
        {
          OUTLINED_FUNCTION_27_0();
          do
          {
            if (v23 >= *(v30 + 16))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_66(v31, v32, v33, v34, v35, v36, v37, v38, v109, v110, v111, v112, v113, v114, v115, v116, v117);
            v39 = OUTLINED_FUNCTION_76();
            v40(v39);
            if (*(v124 + 16))
            {
              v41 = *(v124 + 40);
              sub_23136A5D0();
              OUTLINED_FUNCTION_55_0();
              while (1)
              {
                OUTLINED_FUNCTION_54_1(v42);
                if ((v43 & 1) == 0)
                {
                  break;
                }

                OUTLINED_FUNCTION_80_0();
                v44 = MEMORY[0x23192AC90](v2 + 27, v2 + 22);
                sub_2311E57D4((v2 + 27));
                v42 = v11 + 1;
                if (v44)
                {
                  sub_2311E57D4((v2 + 22));
                  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 17);
                  goto LABEL_31;
                }
              }
            }

            sub_2311E5778((v2 + 22), (v2 + 37));
            sub_23122E0DC((v2 + 32), (v2 + 37));
            sub_2311E57D4((v2 + 32));
            sub_2311CF324((v2 + 17), (v2 + 42));
            v45 = v121;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = *(v121 + 16);
              OUTLINED_FUNCTION_23();
              sub_23126DD64();
              v45 = v57;
            }

            v46 = *(v45 + 24);
            if (*(v45 + 16) >= v46 >> 1)
            {
              OUTLINED_FUNCTION_59(v46);
              sub_23126DD64();
              v121 = v58;
            }

            else
            {
              v121 = v45;
            }

            sub_2311E57D4((v2 + 22));
            __swift_destroy_boxed_opaque_existential_1Tm(v2 + 17);
            v11 = v2[45];
            v30 = v2[46];
            __swift_mutable_project_boxed_opaque_existential_1((v2 + 42), v11);
            OUTLINED_FUNCTION_58();
            v48 = *(v47 + 64);
            OUTLINED_FUNCTION_43();
            OUTLINED_FUNCTION_75();
            v49();
            v50 = OUTLINED_FUNCTION_53_1();
            sub_23120FF64(v50, v51, v52, v53, v54);
            __swift_destroy_boxed_opaque_existential_1Tm(v2 + 42);

LABEL_31:
            OUTLINED_FUNCTION_72();
          }

          while (!v55);
          OUTLINED_FUNCTION_85();

          v11 = v113;
          v55 = v114 == v24;
          v22 = v111;
          v21 = v112;
          v24 = v109;
          v23 = v110;
          if (v55)
          {
LABEL_37:

LABEL_60:
            v86 = v2[53];
            v87 = v2[50];

            sub_2313690F0();

            sub_231369EE0();
            v88 = sub_2313698A0();
            v89 = sub_23136A3A0();

            v90 = os_log_type_enabled(v88, v89);
            v92 = v2[52];
            v91 = v2[53];
            v93 = v2[51];
            if (v90)
            {
              v123 = v2[51];
              v94 = v25;
              v95 = v2[50];
              v96 = OUTLINED_FUNCTION_45();
              v125[0] = OUTLINED_FUNCTION_44();
              *v96 = 136315394;
              v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43020, &qword_23136BD80);
              MEMORY[0x23192A860](v94, v97);
              OUTLINED_FUNCTION_69();
              v98 = OUTLINED_FUNCTION_57_2();
              sub_2311CFD58(v98, v99, v100);

              OUTLINED_FUNCTION_48();
              *(v96 + 14) = sub_2311CFD58(*(v95 + 32), *(v95 + 40), v125);
              OUTLINED_FUNCTION_36_1(&dword_2311CB000, v101, v102, "dedupping keys to: %s for %s");
              OUTLINED_FUNCTION_62();
              OUTLINED_FUNCTION_29();
              OUTLINED_FUNCTION_29();
              sub_2311D8D2C(v119);

              v85 = v123;
              v84 = v118;
            }

            else
            {
              sub_2311D8D2C(v119);

              v84 = v91;
              v85 = v93;
            }

LABEL_64:
            v115(v84, v85);
            v104 = v2[55];
            v103 = v2[56];
            v106 = v2[53];
            v105 = v2[54];

            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_52_0();

            __asm { BRAA            X2, X16 }
          }
        }

        else
        {
          ++v24;
          OUTLINED_FUNCTION_85();

          if (v21 == v24)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
    }

    else
    {
      v59 = 0;
      v60 = *(v11 + 16);
      v61 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v60 == v59)
        {
          OUTLINED_FUNCTION_81();
          sub_2313690F0();

          sub_231369EE0();
          v75 = sub_2313698A0();
          sub_23136A3A0();
          OUTLINED_FUNCTION_84();
          v76 = OUTLINED_FUNCTION_64_0();
          v78 = v2[51];
          v77 = v2[52];
          if (v76)
          {
            v122 = v2[54];
            v79 = v2[50];
            OUTLINED_FUNCTION_45();
            v80 = OUTLINED_FUNCTION_17_1();
            OUTLINED_FUNCTION_41(v80);
            *v78 = 136315394;
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43020, &qword_23136BD80);
            MEMORY[0x23192A860](v20, v81);
            OUTLINED_FUNCTION_68_0();
            OUTLINED_FUNCTION_63_0();

            OUTLINED_FUNCTION_49();
            *(v78 + 14) = sub_2311CFD58(*(v79 + 32), *(v79 + 40), v125);
            OUTLINED_FUNCTION_9_1(&dword_2311CB000, v82, v83, "Not dedupping keys to: %s for %s");
            OUTLINED_FUNCTION_19_2();
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_15();

            v85 = v120;
            v84 = v122;
          }

          else
          {

            v84 = OUTLINED_FUNCTION_57_2();
          }

          goto LABEL_64;
        }

        if (v59 >= *(v11 + 16))
        {
          break;
        }

        if (*(v20[2] + 16))
        {
          v62 = *(v11 + 8 * v59 + 32);

          v63 = sub_2312160A8();
          v64 = MEMORY[0x277D84F90];
          if (v65)
          {
            OUTLINED_FUNCTION_70(v63);
          }
        }

        else
        {
          v64 = MEMORY[0x277D84F90];
        }

        v66 = *(v64 + 16);
        v67 = *(v61 + 16);
        if (__OFADD__(v67, v66))
        {
          goto LABEL_70;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v67 + v66 > *(v61 + 24) >> 1)
        {
          OUTLINED_FUNCTION_78();
          sub_23126DD64();
          v61 = v68;
        }

        if (*(v64 + 16))
        {
          v69 = *(v61 + 16);
          v70 = *(v61 + 24);
          OUTLINED_FUNCTION_51_0();
          if (v71 != v72)
          {
            goto LABEL_72;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43020, &qword_23136BD80);
          OUTLINED_FUNCTION_34();

          if (v66)
          {
            v73 = *(v61 + 16);
            v72 = __OFADD__(v73, v66);
            v74 = v73 + v66;
            if (v72)
            {
              goto LABEL_73;
            }

            *(v61 + 16) = v74;
          }
        }

        else
        {

          if (v66)
          {
            goto LABEL_71;
          }
        }

        ++v59;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }
}

uint64_t sub_2311E3E90(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t sub_2311E3ED8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43008, &unk_23136B8E0);
  swift_allocBox();
  v5 = v4;
  v6 = sub_231367D80();
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 16))(v5, a1);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = OUTLINED_FUNCTION_28_0();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_23120FA10();
}

uint64_t sub_2311E3F9C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43008, &unk_23136B8E0);
  v4 = swift_allocBox();
  v6 = v5;
  v7 = sub_231367D80();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_2311E410C(a2, v4 | 0x8000000000000000);
}

uint64_t sub_2311E4054(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v4 = swift_allocBox();
  v6 = v5;
  v7 = sub_231367C70();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_2311E410C(a2, v4);
}

uint64_t sub_2311E410C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2313698C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313690F0();
  sub_2311CF324(a1, &v50);
  v11 = a2 & 0x1FFFFFFFFFFFFFFFLL;

  v12 = sub_2313698A0();
  v13 = sub_23136A3A0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v43 = a1;
    v15 = v14;
    v42 = swift_slowAlloc();
    *&v45 = v42;
    *v15 = 136315650;
    sub_2311CF324(&v50, &v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F60, &qword_23136BD60);
    v16 = sub_23136A010();
    v44 = a2 & 0x1FFFFFFFFFFFFFFFLL;
    v17 = v16;
    v41 = v6;
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    v20 = sub_2311CFD58(v17, v19, &v45);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_23120EB78();
    v23 = sub_2311CFD58(v21, v22, &v45);

    *(v15 + 14) = v23;
    v11 = v44;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_2311CFD58(v3[16], v3[17], &v45);
    _os_log_impl(&dword_2311CB000, v12, v13, "adding %s against %s for provider of type %s", v15, 0x20u);
    v24 = v42;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v24, -1, -1);
    v25 = v15;
    a1 = v43;
    MEMORY[0x23192B930](v25, -1, -1);

    (*(v7 + 8))(v10, v41);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  v26 = v3[14];
  sub_231369EE0();
  v27 = sub_2312177D0(a2, v26);

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  sub_2311CF324(a1, &v50);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = *(v28 + 16);
    sub_23126DC44();
    v28 = v38;
  }

  v29 = *(v28 + 16);
  if (v29 >= *(v28 + 24) >> 1)
  {
    sub_23126DC44();
    v28 = v39;
  }

  *(v28 + 16) = v29 + 1;
  sub_2311D38A8(&v50, v28 + 40 * v29 + 32);
  swift_beginAccess();
  v30 = v3[14];
  swift_isUniquelyReferenced_nonNull_native();
  *&v47 = v3[14];
  sub_231259B10();
  v3[14] = v47;
  swift_endAccess();
  if (a2 >> 61 == 6)
  {
    v31 = *(v11 + 24);
    sub_231210ACC(&v50, *(v11 + 16));
    sub_231210ACC(&v47, v31);
    v32 = type metadata accessor for JointProviderKeyExtractor();
    v33 = swift_allocObject();
    v34 = v51;
    *(v33 + 16) = v50;
    *(v33 + 32) = v34;
    v35 = v48;
    *(v33 + 56) = v47;
    *(v33 + 48) = v52;
    *(v33 + 72) = v35;
    *(v33 + 88) = v49;
    *(&v51 + 1) = v32;
    v52 = &off_2845F5A70;
    *&v50 = v33;
  }

  else
  {
    sub_231210ACC(&v50, a2);
  }

  sub_2311E66F0(&v50, &v45, &qword_27DD43018, &qword_23136B8F0);
  if (v46)
  {
    sub_2311D38A8(&v45, &v47);
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    sub_23120E294();
    sub_2311D1F18(&v50, &qword_27DD43018, &qword_23136B8F0);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  }

  else
  {
    sub_2311D1F18(&v50, &qword_27DD43018, &qword_23136B8F0);
    return sub_2311D1F18(&v45, &qword_27DD43018, &qword_23136B8F0);
  }
}

uint64_t sub_2311E45E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F28, &qword_23136B838) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311E468C, 0, 0);
}

uint64_t sub_2311E468C()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F30, &qword_23136B840);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);
  v8 = OUTLINED_FUNCTION_74_0();
  sub_2311CF324(v8, v9);
  OUTLINED_FUNCTION_71_0();
  v10 = swift_allocObject();
  *(v0 + 152) = v10;
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v3;
  sub_2311D38A8((v0 + 16), (v10 + 5));
  sub_2311D38A8((v0 + 56), (v10 + 10));
  v11 = *(MEMORY[0x277D60B28] + 4);

  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  v13 = type metadata accessor for RankedCandidateSuggestion();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F38, &qword_23136B858);
  *v12 = v0;
  v12[1] = sub_2311E4804;
  v17 = *(v0 + 144);
  v18 = *(v0 + 96);

  return MEMORY[0x2821C6B08](v18, v17, &unk_23136B850, v10, v13, v14, v15, v16);
}

void sub_2311E4804()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[21] = v0;

  if (v0)
  {
  }

  else
  {
    v11 = v5[18];
    v12 = v5[19];
    v5[22] = v3;
    sub_2311D1F18(v11, &qword_27DD42F28, &qword_23136B838);

    OUTLINED_FUNCTION_13();

    MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_2311E4948()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[21];
  v2 = v0[18];
  v3 = sub_2311E1B18(v0[22]);
  sub_23122AAF8(v3);

  v4 = OUTLINED_FUNCTION_6();

  return v5(v4);
}

uint64_t sub_2311E49BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  return MEMORY[0x2822009F8](sub_2311E49E4, 0, 0);
}

uint64_t sub_2311E49E4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 168);
  (*(v0 + 160))(*(v0 + 144));
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_2311E4AA4;
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);

  return sub_2311E1C4C(v0 + 16, v3, v4);
}

uint64_t sub_2311E4AA4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 192);
  *v3 = *v0;
  *(v2 + 200) = v6;

  sub_2311D1F18(v2 + 16, &qword_27DD42F50, &qword_23136D440);
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2311E4BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_79();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F58, &unk_23136B880);
  v30 = swift_allocObject();
  v31 = v30;
  *(v30 + 16) = xmmword_23136B670;
  v32 = *(v29 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    a10 = v30;
    a14 = MEMORY[0x277D84F90];
    sub_2311F4E34();
    v33 = a14;
    v34 = v29 + 32;
    do
    {
      OUTLINED_FUNCTION_71_0();
      sub_2311CF324((v26 + 7), (v26 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F60, &qword_23136BD60);
      v35 = sub_23136A010();
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_1Tm(v26 + 7);
      a14 = v33;
      v38 = *(v33 + 16);
      if (v38 >= *(v33 + 24) >> 1)
      {
        sub_2311F4E34();
        v33 = a14;
      }

      *(v33 + 16) = v38 + 1;
      v39 = v33 + 16 * v38;
      *(v39 + 32) = v35;
      *(v39 + 40) = v37;
      v34 += 40;
      --v32;
    }

    while (v32);
    v31 = a10;
  }

  a14 = v33;
  sub_231369EE0();
  sub_231255C38(&a14);
  v40 = v26[25];
  v41 = v26[18];

  v26[17] = a14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
  sub_2311E5648();
  v42 = sub_231369F50();
  v44 = v43;

  v31[4] = v42;
  v31[5] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F08, &unk_23136B800);
  v45 = type metadata accessor for RankedCandidateSuggestion();
  OUTLINED_FUNCTION_0(v45);
  v47 = *(v46 + 72);
  v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_23136B670;
  sub_2311E1984(v41, v50 + v49);
  v31[6] = v40;
  v31[7] = v50;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, 1, 2, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2311E4E50(uint64_t a1, id *a2)
{
  result = sub_231369FB0();
  *a2 = 0;
  return result;
}

uint64_t sub_2311E4EC8(uint64_t a1, id *a2)
{
  v3 = sub_231369FC0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2311E4F58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2311E69E0();
  *a1 = result;
  return result;
}

uint64_t sub_2311E4F88()
{
  v0 = sub_231369FD0();
  v1 = MEMORY[0x23192A770](v0);

  return v1;
}

uint64_t sub_2311E4FC8()
{
  sub_231369FD0();
  sub_23136A060();
}

uint64_t sub_2311E5024@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_46_5();
  *a1 = result;
  return result;
}

uint64_t sub_2311E504C()
{
  v1 = OUTLINED_FUNCTION_22_1();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_2311E5074@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2311E50B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_231311890();
}

uint64_t sub_2311E50C4@<X0>(_BYTE *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

void sub_2311E50F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2311E5124();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_2311E5138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_231369FA0();

  *a2 = v5;
  return result;
}

uint64_t sub_2311E5180()
{
  OUTLINED_FUNCTION_22_1();
  result = sub_2313414C8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2311E51A8(uint64_t a1)
{
  v2 = sub_2311E6908(&qword_27DD430B8, type metadata accessor for URLResourceKey);
  v3 = sub_2311E6908(&unk_27DD430C0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2311E5264()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_16();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30(v4);
  *v5 = v6;
  v5[1] = sub_2311E5310;
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_86();

  return sub_2311E49BC(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2311E5310()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return v6(v5);
}

uint64_t sub_2311E53F4(uint64_t a1, char a2, void *a3)
{
  v3 = a3;
  v5 = 0;
  v31 = *(a1 + 16);
  v6 = (a1 + 48);
  while (1)
  {
    if (v31 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v33 = v6;
    v34 = v5;
    v7 = *(v6 - 2);
    v8 = *(v6 - 1);
    v35 = *v6;
    v9 = *v3;
    sub_231369EE0();
    sub_231369EE0();
    sub_231369EE0();
    v11 = sub_231215F6C(v7, v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_18;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F48, &qword_23136B868);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B3CEC(v14);
      v16 = *v3;
      v17 = sub_231215F6C(v7, v8);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

      v11 = v17;
    }

    v19 = *v3;
    if (v15)
    {
      v20 = (v19[7] + 16 * v11);
      v21 = *v20;
      if (*(*v20 + 16) != *(v35 + 16))
      {
        goto LABEL_19;
      }

      v36 = v20[1];
      sub_231369EE0();
      sub_231369EE0();
      sub_231369EE0();
      sub_231267048();

      v22 = (v19[7] + 16 * v11);
      v24 = *v22;
      v23 = v22[1];
      *v22 = v21;
      v22[1] = v36;
    }

    else
    {
      v19[(v11 >> 6) + 8] |= 1 << v11;
      v25 = (v19[6] + 16 * v11);
      *v25 = v7;
      v25[1] = v8;
      *(v19[7] + 16 * v11) = v35;
      v26 = v19[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_20;
      }

      v19[2] = v28;
    }

    v6 = v33 + 2;
    v5 = v34 + 1;
    a2 = 1;
    v3 = a3;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_23136A970();
  __break(1u);
  return result;
}

unint64_t sub_2311E5648()
{
  result = qword_280F7C820;
  if (!qword_280F7C820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD42F68, &qword_23136B890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C820);
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

uint64_t sub_2311E56F4()
{
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_23120DF98(v3, v4, v5, v6);
}

uint64_t sub_2311E5828(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_23136A8A0();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_23136A230();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_2311E5A7C(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_2311E5960(0, v4, 1, a1, a2);
  }
}

uint64_t sub_2311E5960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = a1 - a3;
    while (2)
    {
      v21 = a3;
      v9 = *(v6 + 8 * a3);
      v19 = v8;
      v20 = v7;
      do
      {
        v10 = *v7;
        v12 = *(a5 + 48);
        v11 = *(a5 + 56);

        v13 = v12(v9);
        v14 = v12(v10);

        if (v14 >= v13)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v16 = *v7;
        v9 = v7[1];
        *v7 = v9;
        v7[1] = v16;
        --v7;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v21 + 1;
      v7 = v20 + 1;
      v8 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_2311E5A7C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    swift_retain_n();
    v7 = MEMORY[0x277D84F90];
LABEL_97:
    v118 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    OUTLINED_FUNCTION_38_2();
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_99:
      v99 = v7 + 16;
      v100 = *(v7 + 2);
      for (i = v7; ; v7 = i)
      {
        if (v100 < 2)
        {
        }

        v101 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v102 = &v7[16 * v100];
        v103 = *v102;
        v104 = &v99[2 * v100];
        v105 = v104[1];
        v106 = (v101 + 8 * *v102);
        v122 = (v101 + 8 * *v104);
        v7 = (v101 + 8 * v105);

        sub_2311E61DC(v106, v122, v7, v118, a5);
        if (v123)
        {
          break;
        }

        if (v105 < v103)
        {
          goto LABEL_125;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_126;
        }

        *v102 = v103;
        *(v102 + 1) = v105;
        v107 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_127;
        }

        v100 = *v99 - 1;
        memmove(v104, v104 + 2, 16 * v107);
        *v99 = v100;
      }
    }

LABEL_134:
    v7 = sub_2311E6430(v7);
    goto LABEL_99;
  }

  swift_retain_n();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v113 = v7;
      v7 = *(*a3 + 8 * v9);
      v10 = v6;
      v11 = (*a3 + 8 * v6);
      v13 = *v11;
      v12 = v11 + 2;
      v14 = v6 + 1;
      v15 = *(a5 + 48);
      v16 = *(a5 + 56);

      v118 = v15(v7);
      v9 = v14;
      v116 = v15(v13);

      v110 = v10;
      v17 = v10 + 2;
      while (1)
      {
        v18 = v17;
        v19 = v9 + 1;
        if (v19 >= v5)
        {
          break;
        }

        v7 = *(v12 - 1);
        v20 = *v12;
        v21 = v5;
        v22 = v19;
        v24 = *(a5 + 48);
        v23 = *(a5 + 56);

        v25 = v24(v20);
        v26 = v24(v7);

        v27 = v26 < v25;
        v9 = v22;
        v5 = v21;
        v28 = !v27;
        v29 = (v116 < v118) ^ v28;
        ++v12;
        v17 = v18 + 1;
        if ((v29 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v9 = v5;
LABEL_12:
      if (v116 >= v118)
      {
        v7 = v113;
        v8 = v110;
      }

      else
      {
        v8 = v110;
        if (v9 < v110)
        {
          goto LABEL_131;
        }

        if (v110 >= v9)
        {
          v7 = v113;
        }

        else
        {
          if (v5 >= v18)
          {
            v30 = v18;
          }

          else
          {
            v30 = v5;
          }

          v31 = v30 - 1;
          v32 = v110;
          v7 = v113;
          do
          {
            if (v32 != v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_138;
              }

              v34 = *(v33 + 8 * v32);
              *(v33 + 8 * v32) = *(v33 + 8 * v31);
              *(v33 + 8 * v31) = v34;
            }

            v27 = ++v32 < v31--;
          }

          while (v27);
        }
      }
    }

    v35 = a3[1];
    if (v9 < v35)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_130;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_44:
    if (v9 < v8)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = *(v7 + 2);
      OUTLINED_FUNCTION_23();
      sub_23126DB78();
      v7 = v97;
    }

    v50 = *(v7 + 2);
    v51 = v50 + 1;
    if (v50 >= *(v7 + 3) >> 1)
    {
      sub_23126DB78();
      v7 = v98;
    }

    *(v7 + 2) = v51;
    v52 = v7 + 32;
    v53 = &v7[16 * v50 + 32];
    *v53 = v8;
    *(v53 + 1) = v9;
    v118 = *a1;
    if (!*a1)
    {
      goto LABEL_139;
    }

    v121 = v9;
    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        v55 = &v52[16 * v51 - 16];
        v56 = &v7[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v7 + 4);
          v58 = *(v7 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_64:
          if (v60)
          {
            goto LABEL_116;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_119;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_124;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        if (v51 < 2)
        {
          goto LABEL_118;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_79:
        if (v75)
        {
          goto LABEL_121;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_123;
        }

        if (v82 < v74)
        {
          goto LABEL_93;
        }

LABEL_86:
        if (v54 - 1 >= v51)
        {
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
          goto LABEL_133;
        }

        v86 = *a3;
        if (!*a3)
        {
          goto LABEL_136;
        }

        v87 = &v52[16 * v54 - 16];
        v88 = *v87;
        v89 = v54;
        v90 = &v52[16 * v54];
        v91 = *(v90 + 1);
        v92 = (v86 + 8 * *v87);
        v93 = (v86 + 8 * *v90);
        v94 = (v86 + 8 * v91);

        sub_2311E61DC(v92, v93, v94, v118, a5);
        if (v123)
        {
        }

        if (v91 < v88)
        {
          goto LABEL_111;
        }

        v95 = *(v7 + 2);
        if (v89 > v95)
        {
          goto LABEL_112;
        }

        *v87 = v88;
        *(v87 + 1) = v91;
        if (v89 >= v95)
        {
          goto LABEL_113;
        }

        v51 = v95 - 1;
        memmove(v90, v90 + 16, 16 * (v95 - 1 - v89));
        *(v7 + 2) = v95 - 1;
        v52 = v7 + 32;
        if (v95 <= 2)
        {
          goto LABEL_93;
        }
      }

      v61 = &v52[16 * v51];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_114;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_115;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_117;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_120;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_128;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_64;
    }

LABEL_93:
    v6 = v121;
    v5 = a3[1];
    if (v121 >= v5)
    {
      goto LABEL_97;
    }
  }

  v36 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_132;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v8)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v9 == v36)
  {
    goto LABEL_44;
  }

  v114 = v7;
  v37 = *a3;
  v38 = (*a3 + 8 * v9 - 8);
  v111 = v8;
  v39 = v8 - v9;
  v40 = a5;
  v117 = v36;
LABEL_35:
  v120 = v9;
  v41 = *(v37 + 8 * v9);
  v42 = v39;
  v118 = v38;
  while (1)
  {
    v43 = *v38;
    v44 = *(v40 + 48);
    v45 = *(v40 + 56);

    v46 = v44(v41);
    v47 = v44(v43);

    if (v47 >= v46)
    {
      v40 = a5;
LABEL_42:
      v9 = v120 + 1;
      v38 = v118 + 8;
      --v39;
      if (v120 + 1 == v117)
      {
        v9 = v117;
        v7 = v114;
        v8 = v111;
        goto LABEL_44;
      }

      goto LABEL_35;
    }

    if (!v37)
    {
      break;
    }

    v48 = *v38;
    v41 = *(v38 + 1);
    *v38 = v41;
    *(v38 + 1) = v48;
    v38 -= 8;
    v49 = __CFADD__(v42++, 1);
    v40 = a5;
    if (v49)
    {
      goto LABEL_42;
    }
  }

  OUTLINED_FUNCTION_38_2();

  __break(1u);
LABEL_136:
  OUTLINED_FUNCTION_38_2();

  __break(1u);
LABEL_137:

  __break(1u);
LABEL_138:
  OUTLINED_FUNCTION_38_2();

  __break(1u);
LABEL_139:
  OUTLINED_FUNCTION_38_2();

  __break(1u);
LABEL_140:
  OUTLINED_FUNCTION_38_2();

  __break(1u);
  return result;
}

uint64_t sub_2311E61DC(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 8;
  v10 = (a3 - a2) / 8;
  if (v9 < v10)
  {
    sub_2311DDD00(a1, (a2 - a1) / 8, a4);
    v11 = &v5[8 * v9];
    for (i = v11; ; v11 = i)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v13 = *v7;
      v14 = *v5;
      v16 = *(a5 + 48);
      v15 = *(a5 + 56);

      v17 = v16(v13);
      v18 = v16(v14);

      if (v18 >= v17)
      {
        break;
      }

      v19 = v7;
      v20 = v8 == v7;
      v7 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 8;
    }

    v19 = v5;
    v20 = v8 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v19;
    goto LABEL_13;
  }

  sub_2311DDD00(a2, (a3 - a2) / 8, a4);
  v11 = &v5[8 * v10];
  v35 = v8;
  v36 = v5;
LABEL_15:
  v21 = v7 - 8;
  v6 -= 8;
  v38 = v7;
  while (v11 > v5 && v7 > v8)
  {
    v23 = v11;
    v24 = *(v11 - 1);
    v11 -= 8;
    v25 = v21;
    v26 = *v21;
    v28 = *(a5 + 48);
    v27 = *(a5 + 56);

    v29 = v28(v24);
    v30 = v28(v26);

    v31 = v6 + 8;
    if (v30 < v29)
    {
      v7 = v25;
      v8 = v35;
      v11 = v23;
      v5 = v36;
      if (v31 != v38)
      {
        *v6 = *v25;
        v7 = v25;
      }

      goto LABEL_15;
    }

    if (v23 != v31)
    {
      *v6 = *v11;
    }

    v6 -= 8;
    v8 = v35;
    v5 = v36;
    v7 = v38;
    v21 = v25;
  }

LABEL_28:
  v32 = (v11 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v32])
  {
    memmove(v7, v5, 8 * v32);
  }

  return 1;
}

char *sub_2311E6448(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2311E6474(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F90, &qword_231370D60);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2311E66F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroy_71Tm()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_2311E6874(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2311E6908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2311E69E0()
{
  sub_231369FD0();
  v0 = sub_231369FA0();

  return v0;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{
  *(v1 + 456) = a1;
  v3 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 48);
  sub_2311D38A8((v1 + 56), a1 + 56);

  return sub_2311D38A8((v1 + 96), a1 + 96);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_3()
{
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[42];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[36];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[26];
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return sub_2311CFD58(v0, v1, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_65_0()
{
  v2 = v0[59];
  v3 = v0[55];
  v4 = v0[50];
}

uint64_t OUTLINED_FUNCTION_68_0()
{
}

uint64_t OUTLINED_FUNCTION_69()
{
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_2311CF324(v1, v0 + 56);
}

void OUTLINED_FUNCTION_77(uint64_t a1@<X8>)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(v2[13] + 16);
}

uint64_t OUTLINED_FUNCTION_80_0()
{
  v4 = *(v0 + 48) + 40 * v2;

  return sub_2311E5778(v4, v1 + 216);
}

uint64_t OUTLINED_FUNCTION_81()
{
  v2 = *(v0 + 432);
  v3 = *(v0 + 400);
}

uint64_t OUTLINED_FUNCTION_84()
{
}

uint64_t OUTLINED_FUNCTION_85()
{
}

uint64_t sub_2311E6D3C()
{
  v1 = v0;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000002DLL, 0x800000023137C160);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = *(v2 + 8);
  sub_23136A8D0();
  MEMORY[0x23192A730](0x7372656E776F202CLL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43200, &qword_23136BC90);
  sub_23136A6F0();
  return 0;
}

void *sub_2311E6E20(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t *a6, uint64_t *a7, __int128 *a8)
{
  v14 = *a6;
  v15 = *a7;
  sub_2311D38A8(a1, (v8 + 2));
  sub_2311D38A8(a2, (v8 + 7));
  sub_2311D38A8(a3, (v8 + 12));
  v8[17] = a4;
  sub_2311D38A8(a5, (v8 + 18));
  v8[23] = v14;
  v8[24] = v15;
  sub_2311D38A8(a8, (v8 + 25));
  return v8;
}

uint64_t sub_2311E6EB4()
{
  OUTLINED_FUNCTION_8();
  v1[40] = v0;
  v2 = sub_2313698C0();
  v1[41] = v2;
  v3 = *(v2 - 8);
  v1[42] = v3;
  v4 = *(v3 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2311E6F74()
{
  v32 = v0;
  v1 = v0[44];
  v2 = v0[40];
  sub_231369100();

  v3 = sub_2313698A0();
  v4 = sub_23136A390();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[44];
    v6 = v0[41];
    v7 = v0[42];
    v8 = v0[40];
    OUTLINED_FUNCTION_17();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_29_0();
    v31 = v10;
    *v9 = 136315138;
    sub_2311CF388(v8 + 56, (v0 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43200, &qword_23136BC90);
    v11 = sub_23136A010();
    v13 = sub_2311CFD58(v11, v12, &v31);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2311CB000, v3, v4, "Loading wrapped domain definitions %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v14 = *(v7 + 8);
    v15 = OUTLINED_FUNCTION_28_0();
    v16(v15);
  }

  else
  {
    v17 = v0[44];
    v18 = v0[41];
    v19 = v0[42];

    v20 = *(v19 + 8);
    v21 = OUTLINED_FUNCTION_28_0();
    v22(v21);
  }

  v23 = v0[40];
  v24 = v23[11];
  __swift_project_boxed_opaque_existential_1(v23 + 7, v23[10]);
  v29 = (OUTLINED_FUNCTION_38() + 8);
  v30 = (*v29 + **v29);
  v25 = (*v29)[1];
  v26 = swift_task_alloc();
  v0[45] = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_34_0(v26);
  v27 = OUTLINED_FUNCTION_28_0();

  return v30(v27);
}

uint64_t sub_2311E71D8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 368) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311E72C0()
{
  v1 = v0[46];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2311F583C();
    v3 = v19;
    v4 = v1 + 32;
    do
    {
      sub_2311CF388(v4, (v0 + 12));
      v5 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      v6 = *(v5 + 8);
      OUTLINED_FUNCTION_14_1();
      sub_231367AD0();
      v7 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      OUTLINED_FUNCTION_14_1();
      sub_231367DE0();
      v8 = v0[20];
      v9 = v0[21];
      __swift_project_boxed_opaque_existential_1(v0 + 17, v8);
      v0[10] = v8;
      v0[11] = *(v9 + 8);
      __swift_allocate_boxed_opaque_existential_1(v0 + 7);
      OUTLINED_FUNCTION_26_0(v8);
      (*(v10 + 16))();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_37(v11);
        sub_2311F583C();
      }

      *(v19 + 16) = v12 + 1;
      memcpy((v19 + 80 * v12 + 32), v0 + 2, 0x50uLL);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v0[47] = v3;
  v13 = v0[40];
  v14 = v13[17];
  v0[37] = v13[23];
  v0[38] = v13[24];
  sub_231369EE0();
  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v15[1] = sub_2311E74E4;
  v16 = v0[46];
  v17 = v0[40];

  return sub_2311E7AE8(v16, v14, v0 + 37, v0 + 38, (v13 + 25));
}

uint64_t sub_2311E74E4()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v4 = v1[48];
  v5 = v1[46];
  v6 = *v0;
  OUTLINED_FUNCTION_46();
  *v7 = v6;
  *(v9 + 392) = v8;

  v10 = v1[38];

  v11 = OUTLINED_FUNCTION_32_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2311E760C()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[40];
  type metadata accessor for SignalGeneratorFactory();
  v4 = sub_23132C538(v1);
  v0[50] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F0, &unk_23136BC80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23136B670;
  sub_2311CF388((v3 + 12), (v0 + 22));
  sub_2311CF388((v3 + 18), (v0 + 27));
  v6 = type metadata accessor for OwnerDispatcherGenerator();
  OUTLINED_FUNCTION_30_0();

  v7 = sub_23135F080(v2, v0 + 22, v0 + 27, v4);
  *(v5 + 56) = v6;
  *(v5 + 64) = sub_2311EB350(qword_280F80810, 255, type metadata accessor for OwnerDispatcherGenerator);
  *(v5 + 32) = v7;
  v0[39] = v5;
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v13 = (OUTLINED_FUNCTION_38() + 16);
  v14 = (*v13 + **v13);
  v9 = (*v13)[1];
  v10 = swift_task_alloc();
  v0[51] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_34_0(v10);
  v11 = OUTLINED_FUNCTION_28_0();

  return v14(v11);
}

uint64_t sub_2311E7828()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 408);
  *v2 = *v0;
  *(v1 + 416) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311E7910()
{
  v25 = v0;
  v1 = v0[52];
  v2 = v0[43];
  sub_231267390();
  sub_231369100();
  v3 = v0[39];
  sub_231369EE0();
  v4 = sub_2313698A0();
  v5 = sub_23136A390();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[49];
  v7 = v0[50];
  v10 = v0[42];
  v9 = v0[43];
  v11 = v0[41];
  if (v6)
  {
    OUTLINED_FUNCTION_17();
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_29_0();
    v24 = v13;
    *v12 = 136315138;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
    v15 = MEMORY[0x23192A860](v3, v14);
    v23 = v11;
    v17 = sub_2311CFD58(v15, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2311CB000, v4, v5, "Loaded wrapped generator definitions %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v10 + 8))(v9, v23);
  }

  else
  {
    v18 = v0[50];

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[43];
  v19 = v0[44];

  OUTLINED_FUNCTION_14();

  return v21(v3);
}

uint64_t sub_2311E7AE8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5[115] = a5;
  v5[114] = a2;
  v5[113] = a1;
  v8 = sub_2313698C0();
  v5[116] = v8;
  v9 = *(v8 - 8);
  v5[117] = v9;
  v10 = *(v9 + 64) + 15;
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = *a3;
  v5[121] = *a4;

  return MEMORY[0x2822009F8](sub_2311E7BDC, 0, 0);
}

uint64_t sub_2311E7BDC()
{
  v25 = v0;
  v1 = v0[113];
  v2 = *(v1 + 16);
  v0[122] = v2;
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_2311CF388(v3, (v0 + 12));
      v5 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      OUTLINED_FUNCTION_25_1();
      sub_231367DE0();
      v6 = v0[26];
      __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
      v7 = *(*(v6 + 8) + 8);
      sub_231369510();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43208, &qword_23136BC98);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v0[21] = 0;
        *(v0 + 19) = 0u;
        *(v0 + 17) = 0u;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
      sub_2311EB398((v0 + 17), (v0 + 27), &qword_27DD43210, &qword_23136BCA0);
      if (v0[30])
      {
        sub_2311D38A8((v0 + 27), (v0 + 82));
        sub_2311CF388((v0 + 82), (v0 + 87));
        v8 = v0[15];
        v9 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
        v0[95] = v8;
        v0[96] = *(v9 + 8);
        __swift_allocate_boxed_opaque_existential_1(v0 + 92);
        OUTLINED_FUNCTION_26_0(v8);
        (*(v10 + 16))();
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);
        sub_2311D38A8((v0 + 87), (v0 + 2));
        sub_2311D38A8(v0 + 46, (v0 + 7));
      }

      else
      {
        *(v0 + 4) = 0u;
        *(v0 + 5) = 0u;
        *(v0 + 2) = 0u;
        *(v0 + 3) = 0u;
        *(v0 + 1) = 0u;
      }

      OUTLINED_FUNCTION_28_3((v0 + 17));
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
      if (v0[5])
      {
        memcpy(__dst, v0 + 2, sizeof(__dst));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = OUTLINED_FUNCTION_27_1();
          sub_23126DE2C(v13, v14, v15, v16);
          v4 = v17;
        }

        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          v18 = OUTLINED_FUNCTION_37(v11);
          sub_23126DE2C(v18, v12 + 1, 1, v4);
          v4 = v19;
        }

        *(v4 + 16) = v12 + 1;
        memcpy((v4 + 80 * v12 + 32), __dst, 0x50uLL);
      }

      else
      {
        sub_2311EB450((v0 + 2), &qword_27DD43218, &qword_23136BCA8);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[123] = v4;
  v20 = *(v0[114] + 16);
  OUTLINED_FUNCTION_33_2();

  v21 = swift_task_alloc();
  v0[124] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_34_0(v21);

  return v23(v20);
}

uint64_t sub_2311E7EF4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 992);
  *v2 = *v0;
  *(v1 + 1000) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311E7FDC()
{
  OUTLINED_FUNCTION_39();
  if (!*(v0 + 976))
  {
LABEL_16:
    OUTLINED_FUNCTION_2_1();
    goto LABEL_17;
  }

  for (i = 0; ; i = *(v0 + 1008) + 1)
  {
    *(v0 + 1008) = i;
    sub_2311CF388(*(v0 + 904) + 40 * i + 32, v0 + 256);
    v2 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
    OUTLINED_FUNCTION_14_1();
    sub_231367DE0();
    v3 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
    OUTLINED_FUNCTION_13_1();
    sub_231369510();
    OUTLINED_FUNCTION_31_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_4_0();
      v18 = *(v0 + 640);
      *(v0 + 1016) = v18;
      v19 = __swift_project_boxed_opaque_existential_1((v0 + 616), v18);
      OUTLINED_FUNCTION_1_7(v19);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_8_1();
    sub_2311D1D6C(v0 + 808, v0 + 872);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43228, &qword_23136BCC8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
      v10 = OUTLINED_FUNCTION_12_0();
      sub_2311EB450(v10, &qword_27DD43230, &qword_23136BCD0);
      goto LABEL_13;
    }

    sub_2311D38A8((v0 + 456), v0 + 416);
    OUTLINED_FUNCTION_10_1();
    v4 = sub_231368D40();
    v5 = OUTLINED_FUNCTION_24_4(v4);
    if (v6)
    {
      break;
    }

LABEL_12:

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
LABEL_13:
    v12 = *(v0 + 976);
    v13 = *(v0 + 1008) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
    if (v13 == v12)
    {
      goto LABEL_16;
    }
  }

  v7 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_42_0(v5, v7);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_41_0();
    if (*(v0 + 600))
    {
      break;
    }

    OUTLINED_FUNCTION_28_3(v0 + 576);
    v8 = *(v0 + 1048);
    v9 = *(v0 + 1056) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
    if (v9 == v8)
    {
      v11 = *(v0 + 1040);
      goto LABEL_12;
    }

    v5 = OUTLINED_FUNCTION_23_0();
  }

  OUTLINED_FUNCTION_0_4();
LABEL_17:
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2311E8230()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[129];
  v2 = v0[127];
  v3 = v0[125];
  v4 = *(v0[128] + 8);
  sub_23120FF7C();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 77);
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2311E82AC()
{
  OUTLINED_FUNCTION_39();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
  while (1)
  {
    sub_2311D1D6C(v0 + 808, v0 + 872);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43228, &qword_23136BCC8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
      v9 = OUTLINED_FUNCTION_12_0();
      sub_2311EB450(v9, &qword_27DD43230, &qword_23136BCD0);
      goto LABEL_11;
    }

    sub_2311D38A8((v0 + 456), v0 + 416);
    v1 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
    OUTLINED_FUNCTION_25_1();
    v2 = sub_231368D40();
    v3 = OUTLINED_FUNCTION_24_4(v2);
    if (v4)
    {
      break;
    }

LABEL_10:

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
LABEL_11:
    v11 = *(v0 + 976);
    v12 = *(v0 + 1008) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
    if (v12 == v11)
    {
      OUTLINED_FUNCTION_2_1();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_35_2();
    sub_2311CF388(v14 + 40 * v13 + 72, v0 + 256);
    v15 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
    OUTLINED_FUNCTION_25_1();
    sub_231367DE0();
    v16 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
    OUTLINED_FUNCTION_13_1();
    sub_231369510();
    OUTLINED_FUNCTION_31_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_4_0();
      v21 = *(v0 + 640);
      *(v0 + 1016) = v21;
      v22 = __swift_project_boxed_opaque_existential_1((v0 + 616), v21);
      OUTLINED_FUNCTION_1_7(v22);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_8_1();
  }

  v5 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_42_0(v3, v5);
    v6 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
    sub_231368D50();
    if (*(v0 + 600))
    {
      break;
    }

    OUTLINED_FUNCTION_28_3(v0 + 576);
    v7 = *(v0 + 1048);
    v8 = *(v0 + 1056) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
    if (v8 == v7)
    {
      v10 = *(v0 + 1040);
      goto LABEL_10;
    }

    v3 = OUTLINED_FUNCTION_23_0();
  }

  OUTLINED_FUNCTION_0_4();
LABEL_15:
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2311E8514()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[135];
  v2 = v0[133];
  v3 = v0[125];
  v4 = *(v0[134] + 8);
  sub_23120FF7C();

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2311E8588()
{
  OUTLINED_FUNCTION_39();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  while (1)
  {
    v1 = *(v0 + 1048);
    v2 = *(v0 + 1056) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
    if (v2 == v1)
    {
      v3 = *(v0 + 1040);
      while (2)
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
        while (1)
        {
          v4 = *(v0 + 976);
          v5 = *(v0 + 1008) + 1;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
          if (v5 == v4)
          {
            OUTLINED_FUNCTION_2_1();
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_35_2();
          sub_2311CF388(v7 + 40 * v6 + 72, v0 + 256);
          v8 = *(v0 + 288);
          __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
          OUTLINED_FUNCTION_14_1();
          sub_231367DE0();
          v9 = *(v0 + 328);
          __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
          OUTLINED_FUNCTION_13_1();
          sub_231369510();
          OUTLINED_FUNCTION_31_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_4_0();
            v16 = *(v0 + 640);
            *(v0 + 1016) = v16;
            v17 = __swift_project_boxed_opaque_existential_1((v0 + 616), v16);
            OUTLINED_FUNCTION_1_7(v17);
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_8_1();
          sub_2311D1D6C(v0 + 808, v0 + 872);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43228, &qword_23136BCC8);
          if (swift_dynamicCast())
          {
            break;
          }

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
          v10 = OUTLINED_FUNCTION_12_0();
          sub_2311EB450(v10, &qword_27DD43230, &qword_23136BCD0);
        }

        sub_2311D38A8((v0 + 456), v0 + 416);
        OUTLINED_FUNCTION_10_1();
        v11 = sub_231368D40();
        v12 = OUTLINED_FUNCTION_24_4(v11);
        if (!v13)
        {
          continue;
        }

        break;
      }

      v14 = 0;
    }

    else
    {
      v12 = OUTLINED_FUNCTION_23_0();
    }

    *(v0 + 1056) = v14;
    sub_2311CF388(v12 + 40 * v14 + 32, v0 + 496);
    OUTLINED_FUNCTION_10_1();
    v15 = OUTLINED_FUNCTION_41_0();
    if (*(v0 + 600))
    {
      break;
    }

    OUTLINED_FUNCTION_28_3(v0 + 576);
  }

  OUTLINED_FUNCTION_0_4(v15);
LABEL_16:
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2311E87DC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 1000);
  *(v0 + 1088) = sub_2311E9B44();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2311E883C()
{
  v44 = v0;
  v1 = v0[136];
  v2 = v0[123];
  v3 = v0[119];
  type metadata accessor for PipelineConfigurationSignalExtractorProvider();
  v4 = OUTLINED_FUNCTION_30_0();
  v0[137] = v4;
  *(v4 + 16) = v1;
  sub_231369150();
  sub_231369EE0();
  v5 = sub_2313698A0();
  v6 = sub_23136A390();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[123];
    v41 = v0[119];
    v8 = v0[117];
    v9 = v0[116];
    OUTLINED_FUNCTION_17();
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_29_0();
    v43 = v11;
    *v10 = 136315138;
    v12 = sub_231367BB0();
    v14 = sub_2311CFD58(v12, v13, &v43);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_43_0(&dword_2311CB000, v15, v16, "Loaded subscribers as:\n%s");
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v17 = *(v8 + 8);
    v17(v41, v9);
  }

  else
  {
    v18 = v0[119];
    v19 = v0[117];
    v20 = v0[116];

    v17 = *(v19 + 8);
    v17(v18, v20);
  }

  v21 = v0[118];
  sub_231369150();

  v22 = sub_2313698A0();
  v23 = sub_23136A390();

  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[118];
  v26 = v0[117];
  v27 = v0[116];
  if (v24)
  {
    OUTLINED_FUNCTION_17();
    v42 = v27;
    v28 = swift_slowAlloc();
    v29 = OUTLINED_FUNCTION_29_0();
    v43 = v29;
    *v28 = 136315138;
    v30 = sub_23132EE74();
    v32 = sub_2311CFD58(v30, v31, &v43);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2311CB000, v22, v23, "Using Signal Extractors as %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v33 = v25;
    v34 = v42;
  }

  else
  {

    v33 = v25;
    v34 = v27;
  }

  v17(v33, v34);

  v35 = swift_task_alloc();
  v0[138] = v35;
  *v35 = v0;
  v35[1] = sub_2311E8B5C;
  v36 = v0[123];
  v37 = v0[121];
  v38 = v0[120];
  v39 = v0[115];

  return sub_2311EA290(v36, v4, v38, v37, v39);
}

uint64_t sub_2311E8B5C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = v3[138];
  v5 = v3[137];
  v6 = v3[123];
  v7 = *v0;
  OUTLINED_FUNCTION_9();
  *v8 = v7;
  *(v10 + 1112) = v9;

  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2311E8C7C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[137];
  v2 = v0[125];
  v3 = v0[119];
  v4 = v0[118];

  OUTLINED_FUNCTION_14();
  v6 = v0[139];

  return v5(v6);
}

uint64_t sub_2311E8D24()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_33_2();
  sub_231369EE0();
  sub_231369EE0();
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_34_0(v4);

  return v6(v3, v2);
}

uint64_t sub_2311E8DDC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v0;
  OUTLINED_FUNCTION_9();
  *v8 = v7;
  *(v9 + 32) = v2;

  return MEMORY[0x2822009F8](sub_2311E8ECC, v2, 0);
}

uint64_t sub_2311E8ECC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_14();
  v3 = *(v0 + 32);

  return v2(v3);
}

uint64_t *sub_2311E8F28()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v2 = v0[24];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  return v0;
}

uint64_t sub_2311E8F78()
{
  sub_2311E8F28();

  return swift_deallocClassInstance();
}

uint64_t sub_2311E8FD0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E9060;

  return sub_2311E6EB4();
}

uint64_t sub_2311E9060()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_9();
  *v6 = v5;

  OUTLINED_FUNCTION_14();

  return v7(v2);
}

uint64_t sub_2311E9170(uint64_t a1, uint64_t a2)
{
  result = sub_2311EB350(qword_280F7E860, a2, type metadata accessor for OwnerWrappedGeneratorProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2311E91C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43270, &qword_23136BD18);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2311E9D20(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2311E9260(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2311CF388(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432A0, &qword_23136BD48);
  if (swift_dynamicCast())
  {
    sub_2311D38A8(v13, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    OUTLINED_FUNCTION_21();
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v10 + 16))(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_23136A5F0();
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_2311EB450(v13, &qword_27DD432A8, &unk_23136BD50);
    sub_2311CF388(a1, v16);
    v16[0] = sub_23136A010();
    v16[1] = v12;
    return sub_23136A5F0();
  }
}

void *sub_2311E940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v10[2] = a1;
  v10[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a9, a10);
  v10[4] = OUTLINED_FUNCTION_44_1();
  v10[5] = v15;
  v10[6] = a3;
  v10[7] = a4;
  v10[8] = a5;
  v10[9] = a6;
  return v10;
}

uint64_t sub_2311E9508(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2311E9528, 0, 0);
}

uint64_t sub_2311E9528()
{
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43290, &qword_23136BD40);
  swift_allocObject();
  v1 = sub_2311E98BC();
  *(v0 + 96) = v1;

  return MEMORY[0x2822009F8](sub_2311E95BC, v1, 0);
}

uint64_t sub_2311E95BC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  v4 = *(v2 + 112);
  *(v2 + 112) = v3;

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = v0[11] + 32;
    do
    {
      v7 = v0[12];
      sub_2311CF388(v6, (v0 + 2));
      v8 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_23120E294();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v9 = v0[11];
  v10 = v0[12];

  OUTLINED_FUNCTION_14();
  v12 = v0[12];

  return v11(v12);
}

void *sub_2311E96AC()
{
  swift_defaultActor_initialize();
  v0[18] = sub_2311EB4AC;
  v0[19] = 0;
  v0[20] = sub_2311E9490;
  v0[21] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D0, &unk_23136BD90);
  sub_2311EB3FC();
  v0[14] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
  v0[15] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43020, &qword_23136BD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432C8, &qword_23136BD88);
  v0[16] = OUTLINED_FUNCTION_44_1();
  v0[17] = v1;
  return v0;
}

void *sub_2311E97B4()
{
  swift_defaultActor_initialize();
  v0[18] = sub_2311EB4AC;
  v0[19] = 0;
  v0[20] = sub_2311E94B8;
  v0[21] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432B8, &qword_23136BD70);
  sub_2311EB3FC();
  v0[14] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
  v0[15] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F60, &qword_23136BD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432B0, &qword_23136BD68);
  v0[16] = OUTLINED_FUNCTION_44_1();
  v0[17] = v1;
  return v0;
}

void *sub_2311E98BC()
{
  swift_defaultActor_initialize();
  v0[18] = sub_2311EB4AC;
  v0[19] = 0;
  v0[20] = sub_2311E94E0;
  v0[21] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43298, &qword_231377FE0);
  sub_2311EB3FC();
  v0[14] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
  v0[15] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43288, &qword_23136BD30);
  v0[16] = OUTLINED_FUNCTION_44_1();
  v0[17] = v1;
  return v0;
}

void *sub_2311E99C4()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 120);
  sub_231369EE0();
  v3 = sub_231369EE0();
  sub_23122AB24(v3);
  OUTLINED_FUNCTION_22_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432C0, &qword_23136BD78);
  swift_allocObject();

  v4 = sub_2311D8D9C(v1);
  return OUTLINED_FUNCTION_6_0(v4, v5, v6, v7, v8, v9, &qword_27DD43020, &qword_23136BD80, &qword_27DD432C8, &qword_23136BD88);
}

void *sub_2311E9A84()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 120);
  sub_231369EE0();
  v3 = sub_231369EE0();
  sub_23122AB24(v3);
  OUTLINED_FUNCTION_22_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43000, &qword_23136B8D8);
  swift_allocObject();

  v4 = sub_2311D8D9C(v1);
  return OUTLINED_FUNCTION_6_0(v4, v5, v6, v7, v8, v9, &qword_27DD42F60, &qword_23136BD60, &qword_27DD432B0, &qword_23136BD68);
}

void *sub_2311E9B44()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 120);
  sub_231369EE0();
  v3 = sub_231369EE0();
  sub_23122AB24(v3);
  OUTLINED_FUNCTION_22_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43280, &qword_23136BD28);
  swift_allocObject();

  v4 = sub_2311D8D9C(v1);
  return OUTLINED_FUNCTION_6_0(v4, v5, v6, v7, v8, v9, &qword_27DD43028, &qword_23136B920, &qword_27DD43288, &qword_23136BD30);
}

uint64_t sub_2311E9C64(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2311E9D20(uint64_t a1, char a2, void *a3)
{
  v6 = sub_231367E10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v58 = &v49 - v14;
  v57 = *(a1 + 16);
  if (!v57)
  {
  }

  v15 = v7;
  v16 = 0;
  v17 = *(v12 + 48);
  v55 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v56 = v17;
  v59 = (v15 + 32);
  v51 = v15;
  v52 = v13;
  v50 = (v15 + 8);
  v53 = a3;
  v54 = a1;
  while (v16 < *(a1 + 16))
  {
    v18 = v58;
    sub_2311EB398(v55 + *(v13 + 72) * v16, v58, &qword_27DD43248, &qword_23136BCF0);
    v19 = *v59;
    v20 = v6;
    (*v59)(v60, v18, v6);
    v21 = *(v18 + v56);
    v22 = *a3;
    v24 = sub_231216104();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_31;
    }

    v27 = v23;
    if (v22[3] >= v25 + v26)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43278, &qword_23136BD20);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B3EBC();
      v28 = *a3;
      v29 = sub_231216104();
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_37;
      }

      v24 = v29;
    }

    v31 = *a3;
    if (v27)
    {
      v32 = v31[7];
      v33 = *(v32 + 8 * v24);
      v34 = *(v21 + 16);
      v35 = *(v33 + 16);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_33;
      }

      v37 = *(v32 + 8 * v24);
      sub_231369EE0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v36 > *(v33 + 24) >> 1)
      {
        if (v35 <= v36)
        {
          v39 = v35 + v34;
        }

        else
        {
          v39 = v35;
        }

        sub_23126F4A0(isUniquelyReferenced_nonNull_native, v39, 1, v33);
        v33 = v40;
      }

      v6 = v20;
      if (*(v21 + 16))
      {
        if ((*(v33 + 24) >> 1) - *(v33 + 16) < v34)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v34)
        {
          v41 = *(v33 + 16);
          v42 = __OFADD__(v41, v34);
          v43 = v41 + v34;
          if (v42)
          {
            goto LABEL_36;
          }

          *(v33 + 16) = v43;
        }
      }

      else
      {

        if (v34)
        {
          goto LABEL_34;
        }
      }

      (*v50)(v60, v20);
      v46 = v31[7];
      v47 = *(v46 + 8 * v24);
      *(v46 + 8 * v24) = v33;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v6 = v20;
      v19((v31[6] + *(v51 + 72) * v24), v60, v20);
      *(v31[7] + 8 * v24) = v21;
      v44 = v31[2];
      v42 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v42)
      {
        goto LABEL_32;
      }

      v31[2] = v45;
    }

    ++v16;
    a2 = 1;
    a3 = v53;
    a1 = v54;
    v13 = v52;
    if (v57 == v16)
    {
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_2311EA154(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for LookupConfiguratorProvider();
  v10 = sub_2311EB350(qword_280F7FC50, 255, type metadata accessor for LookupConfiguratorProvider);
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_2311D38A8(&v8, v6 + 40 * a1 + 32);
}

uint64_t sub_2311EA1F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2311D38A8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_2311EA290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[70] = a5;
  v5[69] = a4;
  v5[68] = a3;
  v5[67] = a2;
  v5[66] = a1;
  v7 = sub_231367E10();
  v5[71] = v7;
  v8 = *(v7 - 8);
  v5[72] = v8;
  v9 = *(v8 + 64) + 15;
  v5[73] = swift_task_alloc();
  v10 = sub_2313698C0();
  v5[74] = v10;
  v11 = *(v10 - 8);
  v5[75] = v11;
  v12 = *(v11 + 64) + 15;
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43238, &qword_23136BCE0) - 8) + 64) + 15;
  v5[79] = swift_task_alloc();
  v14 = type metadata accessor for PipelineConfigurationSignalExtractorProvider();
  v5[80] = v14;
  v5[25] = v14;
  v15 = sub_2311EB350(&qword_280F7CE68, 255, type metadata accessor for PipelineConfigurationSignalExtractorProvider);
  v5[81] = v15;
  v5[26] = v15;
  v5[22] = a2;

  return MEMORY[0x2822009F8](sub_2311EA470, 0, 0);
}

uint64_t sub_2311EA470()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[79];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43240, &qword_23136BCE8);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = *(MEMORY[0x277D60B28] + 4);
  v4 = swift_task_alloc();
  v0[82] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0);
  *v4 = v0;
  v4[1] = sub_2311EA56C;
  v8 = v0[79];
  v9 = v0[66];

  return MEMORY[0x2821C6B08](v9, v8, &unk_231377EE8, 0, &type metadata for OwnedSignalSubscriber, v5, v6, v7);
}

void sub_2311EA56C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v8 = *(v7 + 656);
  v9 = *v1;
  OUTLINED_FUNCTION_9();
  *v10 = v9;
  v5[83] = v0;

  if (v0)
  {
  }

  else
  {
    v11 = v5[79];
    v5[84] = v3;
    sub_2311EB450(v11, &qword_27DD43238, &qword_23136BCE0);
    v12 = OUTLINED_FUNCTION_32_0();

    MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_2311EA6A8()
{
  v131 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 576);
  v3 = sub_2311E91C8(*(v0 + 672));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43250, &qword_23136BCF8);
  OUTLINED_FUNCTION_38();
  result = sub_23136A770();
  v5 = result;
  v6 = 0;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v116 = result + 64;
  v114 = result;
  v115 = v10;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v121 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v6 << 6);
      v124 = *(v2 + 72) * v14;
      (*(v2 + 16))(*(v0 + 584), *(v3 + 48) + v124, *(v0 + 568));
      v126 = v14;
      v15 = *(*(v3 + 56) + 8 * v14);
      v16 = *(v15 + 16);
      if (v16)
      {
        v130[0] = MEMORY[0x277D84F90];
        sub_231369EE0();
        sub_2311F57DC(0, v16, 0);
        v17 = v130[0];
        v18 = v15 + 32;
        do
        {
          sub_2311EB19C(v18, v0 + 16);
          v130[0] = v17;
          v20 = *(v17 + 16);
          v19 = *(v17 + 24);
          if (v20 >= v19 >> 1)
          {
            v22 = OUTLINED_FUNCTION_37(v19);
            sub_2311F57DC(v22, v20 + 1, 1);
            v17 = v130[0];
          }

          *(v0 + 240) = &type metadata for OwnedCandidateSuggestionConfigurator;
          *(v0 + 248) = sub_2311EB1F8();
          v21 = swift_allocObject();
          *(v0 + 216) = v21;
          sub_2311EB19C(v0 + 16, v21 + 16);
          *(v17 + 16) = v20 + 1;
          sub_2311D38A8((v0 + 216), v17 + 40 * v20 + 32);
          sub_2311EB24C(v0 + 16);
          v18 += 80;
          --v16;
        }

        while (v16);

        v5 = v114;
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      v23 = *(v0 + 584);
      v24 = *(v0 + 568);
      type metadata accessor for StaticConfiguratorProvider();
      v25 = OUTLINED_FUNCTION_30_0();
      *(v25 + 16) = v17;
      *(v116 + ((v126 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v126;
      result = (*(v2 + 32))(v5[6] + v124, v23, v24);
      *(v5[7] + 8 * v126) = v25;
      v26 = v5[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v5[2] = v28;
      v10 = v115;
      v9 = v121;
      if (!v121)
      {
        goto LABEL_5;
      }
    }

LABEL_45:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v6 >= v10)
      {
        break;
      }

      v13 = *(v3 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v121 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v29 = *(v0 + 624);

    sub_231369100();

    v30 = sub_2313698A0();
    v31 = sub_23136A390();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 624);
    v34 = *(v0 + 600);
    v35 = *(v0 + 592);
    if (v32)
    {
      v127 = *(v0 + 624);
      v36 = *(v0 + 568);
      OUTLINED_FUNCTION_17();
      v37 = swift_slowAlloc();
      v38 = OUTLINED_FUNCTION_29_0();
      v130[0] = v38;
      *v37 = 136315138;

      sub_23122AC54(v39);
      v40 = sub_231367BB0();
      v42 = v41;

      v43 = sub_2311CFD58(v40, v42, v130);

      *(v37 + 4) = v43;
      OUTLINED_FUNCTION_43_0(&dword_2311CB000, v44, v45, "Determined static signal subscriptions keys as:\n%s");
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v46 = *(v34 + 8);
      v47 = v127;
    }

    else
    {

      v46 = *(v34 + 8);
      v47 = v33;
    }

    v128 = v46;
    v46(v47, v35);
    v48 = *(v0 + 528);
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = v48 + 32;
      v51 = MEMORY[0x277D84F90];
      do
      {
        sub_2311EB2A0(v50, v0 + 96);
        v52 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        sub_231367FA0();
        sub_2311EB2FC(v0 + 96);
        if (*(v0 + 320))
        {
          sub_2311D38A8((v0 + 296), v0 + 256);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v130[0] = v51;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_27_1();
            sub_23126DDE4();
            v51 = v64;
            v130[0] = v64;
          }

          v55 = *(v51 + 16);
          v54 = *(v51 + 24);
          if (v55 >= v54 >> 1)
          {
            OUTLINED_FUNCTION_37(v54);
            sub_23126DDE4();
            v51 = v65;
            v130[0] = v65;
          }

          v56 = *(v0 + 280);
          v57 = *(v0 + 288);
          v58 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v56);
          OUTLINED_FUNCTION_21();
          v60 = v59;
          v62 = *(v61 + 64) + 15;
          v63 = swift_task_alloc();
          (*(v60 + 16))(v63, v58, v56);
          sub_2311EA1F8(v55, v63, v130, v56, v57);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
        }

        else
        {
          sub_2311EB450(v0 + 296, &qword_27DD43258, &unk_23136BD00);
        }

        v50 += 80;
        --v49;
      }

      while (v49);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    v66 = *(v0 + 616);
    *(v0 + 520) = v51;
    sub_231369100();
    v67 = sub_2313698A0();
    v68 = sub_23136A390();
    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 616);
    v71 = *(v0 + 600);
    v72 = *(v0 + 592);
    if (v69)
    {
      OUTLINED_FUNCTION_17();
      v73 = swift_slowAlloc();
      v74 = OUTLINED_FUNCTION_29_0();
      v130[0] = v74;
      *v73 = 136315138;
      sub_231369EE0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43268, &qword_23136BD10);
      v75 = sub_231367BB0();
      v125 = v70;
      v77 = v76;

      v78 = sub_2311CFD58(v75, v77, v130);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_2311CB000, v67, v68, "Determined dynamic signal subscriptions as:\n%s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v79 = v125;
    }

    else
    {

      v79 = v70;
    }

    v128(v79, v72);
    v80 = *(v0 + 608);
    sub_23134A360();
    v82 = v81;

    type metadata accessor for LookupConfiguratorProvider();
    v83 = OUTLINED_FUNCTION_30_0();
    *(v83 + 16) = v82;
    swift_beginAccess();
    sub_2311E9C64(sub_23126DDE4);
    v84 = *(*(v0 + 520) + 16);
    sub_231259280(v84);
    sub_2311EA154(v84, v83, (v0 + 520));
    v85 = *(v0 + 520);
    swift_endAccess();
    v86 = type metadata accessor for UnionConfiguratorProvider();
    v87 = OUTLINED_FUNCTION_30_0();
    *(v87 + 16) = v85;
    sub_231369EE0();
    sub_231369100();
    sub_2311CF388(v0 + 176, v0 + 336);
    v88 = sub_2313698A0();
    v89 = sub_23136A390();
    v90 = os_log_type_enabled(v88, v89);
    v91 = *(v0 + 608);
    v92 = *(v0 + 600);
    v93 = *(v0 + 592);
    if (v90)
    {
      OUTLINED_FUNCTION_17();
      v94 = swift_slowAlloc();
      v122 = v87;
      v95 = OUTLINED_FUNCTION_29_0();
      v130[0] = v95;
      *v94 = 136315138;
      v119 = v91;
      v96 = *__swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
      v97 = sub_23132EE74();
      v99 = v98;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
      sub_2311CFD58(v97, v99, v130);
      OUTLINED_FUNCTION_38();

      *(v94 + 4) = v97;
      _os_log_impl(&dword_2311CB000, v88, v89, "Using signalExtractorProvider: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      v87 = v122;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v128(v119, v93);
    }

    else
    {

      v128(v91, v93);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    }

    v100 = *(v0 + 632);
    v118 = *(v0 + 624);
    v120 = *(v0 + 616);
    v123 = *(v0 + 608);
    v129 = *(v0 + 584);
    v101 = *(v0 + 560);
    v102 = *(v0 + 552);
    v103 = *(v0 + 544);
    v104 = *(v0 + 536);
    *(v0 + 440) = v86;
    *(v0 + 448) = sub_2311EB350(qword_280F80000, 255, type metadata accessor for UnionConfiguratorProvider);
    *(v0 + 416) = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
    v105 = sub_231367D80();
    OUTLINED_FUNCTION_21();
    v107 = v106;
    v109 = *(v108 + 72);
    v110 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_23136B670;
    v117 = *(v0 + 640);
    (*(v107 + 104))(v111 + v110, *MEMORY[0x277D60B98], v105);
    sub_231368E90();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
    sub_2311CF388(v101, v0 + 456);
    type metadata accessor for SignalKeyProvider();
    v112 = swift_allocObject();
    *(v112 + 80) = v117;
    *(v112 + 56) = v104;
    sub_2311D38A8((v0 + 376), v112 + 16);
    *(v112 + 96) = v103;
    *(v112 + 104) = v102;
    sub_2311D38A8((v0 + 456), v112 + 112);

    sub_231369EE0();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

    OUTLINED_FUNCTION_14();

    return v113(v112);
  }

  return result;
}

unint64_t sub_2311EB1F8()
{
  result = qword_280F7D1E8[0];
  if (!qword_280F7D1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7D1E8);
  }

  return result;
}

uint64_t sub_2311EB350(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2311EB398(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_26_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2311EB3FC()
{
  result = qword_280F84D28[0];
  if (!qword_280F84D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F84D28);
  }

  return result;
}

uint64_t sub_2311EB450(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_26_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t result)
{
  *(v1 + 1040) = result;
  *(v1 + 1048) = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1)
{

  return sub_2311EB450(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_23136A010();
}

uint64_t sub_2311EB588()
{
  sub_231369B30();
  v2 = sub_231369B20();
  if (v1)
  {
    type metadata accessor for SuggestionsToolDatabaseManager();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v2;
  }

  return v0;
}

uint64_t sub_2311EB5F8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2311EB654()
{
  OUTLINED_FUNCTION_8();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0) - 8) + 64);
  v1[24] = OUTLINED_FUNCTION_43();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810) - 8) + 64);
  v1[25] = OUTLINED_FUNCTION_43();
  v6 = sub_2313694E0();
  v1[26] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[27] = v7;
  v9 = *(v8 + 64);
  v1[28] = OUTLINED_FUNCTION_43();
  v10 = sub_231367490();
  v1[29] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[30] = v11;
  v13 = *(v12 + 64);
  v1[31] = OUTLINED_FUNCTION_43();
  v14 = sub_2313698C0();
  v1[32] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[33] = v15;
  v17 = *(v16 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E0, &unk_23136BEE0) - 8) + 64);
  v1[37] = OUTLINED_FUNCTION_43();
  v19 = sub_231367A00();
  v1[38] = v19;
  OUTLINED_FUNCTION_0(v19);
  v1[39] = v20;
  v22 = *(v21 + 64);
  v1[40] = OUTLINED_FUNCTION_43();
  v23 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2311EB890()
{
  v1 = *(v0 + 168);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_231367830();
  *(v0 + 328) = v3;
  if (!v3)
  {
    v18 = *(v0 + 272);
    sub_2313690F0();
    v10 = sub_2313698A0();
    v11 = sub_23136A3A0();
    v19 = os_log_type_enabled(v10, v11);
    v15 = *(v0 + 264);
    v13 = *(v0 + 272);
    v14 = *(v0 + 256);
    if (v19)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "InAppMiniTipGenerator: No intent found from interaction, returning no candidate";
      goto LABEL_7;
    }

LABEL_8:

    (*(v15 + 8))(v13, v14);
    goto LABEL_9;
  }

  v4 = v3;
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 184);
  sub_2311EC5B8(*(v0 + 168), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    v8 = *(v0 + 296);
    v9 = *(v0 + 280);

    sub_2311D1F18(v8, &qword_27DD432E0, &unk_23136BEE0);
    sub_2313690F0();
    v10 = sub_2313698A0();
    v11 = sub_23136A3A0();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 280);
    v14 = *(v0 + 256);
    v15 = *(v0 + 264);
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "InAppMiniTipGenerator: No InAppDetails found. Returning no candidates";
LABEL_7:
      _os_log_impl(&dword_2311CB000, v10, v11, v17, v16, 2u);
      MEMORY[0x23192B930](v16, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v22 = *(v0 + 288);
  (*(*(v0 + 312) + 32))(*(v0 + 320), *(v0 + 296), *(v0 + 304));
  sub_2313690F0();
  v23 = sub_2313698A0();
  v24 = sub_23136A3A0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2311CB000, v23, v24, "InAppMiniTipGenerator: All necessary information received. Generating candidate", v25, 2u);
    MEMORY[0x23192B930](v25, -1, -1);
  }

  v26 = *(v0 + 288);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);

  (*(v28 + 8))(v26, v27);
  v29 = *(v4 + 16);
  *(v0 + 336) = v29;
  if (v29)
  {
    v30 = *(v0 + 176);
    v32 = *(v0 + 240);
    v31 = *(v0 + 248);
    v33 = *(v32 + 16);
    v32 += 16;
    v34 = *(v32 + 64);
    *(v0 + 464) = v34;
    *(v0 + 344) = *(v32 + 56);
    *(v0 + 352) = v33;
    v35 = *MEMORY[0x277D61380];
    *(v0 + 468) = v35;
    v36 = *MEMORY[0x277D60B90];
    *(v0 + 472) = v36;
    v37 = MEMORY[0x277D84F90];
    *(v0 + 360) = 0;
    *(v0 + 368) = v37;
    v38 = *(v0 + 320);
    v39 = *(v0 + 224);
    v41 = *(v0 + 208);
    v40 = *(v0 + 216);
    v42 = *(v0 + 200);
    v66 = *(v0 + 192);
    v33(v31, *(v0 + 328) + ((v34 + 32) & ~v34), *(v0 + 232));
    v43 = OUTLINED_FUNCTION_14_2();
    v44(v43, v35, v41);
    sub_2313679F0();
    v45 = sub_231367D80();
    OUTLINED_FUNCTION_11(v45);
    (*(v46 + 104))(v42, v36, v45);
    v47 = OUTLINED_FUNCTION_16_0();
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v47);
    v48 = *(MEMORY[0x277D61138] + 4);
    v49 = swift_task_alloc();
    *(v0 + 376) = v49;
    *v49 = v0;
    OUTLINED_FUNCTION_2_2(v49);
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2821C73A0]();
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
    *(v0 + 392) = MEMORY[0x277D84F90];
    v52 = *(v0 + 328);

    v53 = *(v51 + 16);
    *(v0 + 400) = v53;
    if (!v53)
    {
      v62 = OUTLINED_FUNCTION_9_2();
      v63(v62);
      v64 = *(v0 + 392);
LABEL_9:
      OUTLINED_FUNCTION_3_4();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_7();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_15_1();
    *(v0 + 416) = OUTLINED_FUNCTION_1_5();
    *(v0 + 424) = v54;
    *(v0 + 432) = swift_getObjectType();
    v55 = OUTLINED_FUNCTION_1_5();
    v57 = OUTLINED_FUNCTION_8_2(v55, v56);
    OUTLINED_FUNCTION_11_2(v57);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2822009F8](v58, v59, v60);
  }
}

uint64_t sub_2311EBD30(uint64_t a1)
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v6 = *(*v1 + 224);
  v7 = *(*v1 + 216);
  v8 = *(*v1 + 208);
  v9 = *(*v1 + 200);
  v10 = *(*v1 + 192);
  v15 = *v1;
  *(*v1 + 384) = a1;

  (*(v4 + 8))(v3, v5);
  sub_2311D1F18(v10, &qword_27DD432D8, &unk_23136BED0);
  sub_2311D1F18(v9, &qword_27DD42F18, &unk_23136B810);
  (*(v7 + 8))(v6, v8);
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2311EBF44()
{
  if (*(v0 + 384))
  {
    v1 = *(v0 + 384);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  v3 = *(*(v0 + 368) + 16);
  if (__OFADD__(v3, v2))
  {
    __break(1u);
    goto LABEL_26;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 368);
  if (!isUniquelyReferenced_nonNull_native || v3 + v2 > *(v5 + 24) >> 1)
  {
    v6 = *(v0 + 368);
    sub_23126DF64();
    v5 = v7;
  }

  if (*(v1 + 16))
  {
    if ((*(v5 + 24) >> 1) - *(v5 + 16) >= v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
      swift_arrayInitWithCopy();

      if (!v2)
      {
        goto LABEL_14;
      }

      v8 = *(v5 + 16);
      v9 = __OFADD__(v8, v2);
      v10 = v8 + v2;
      if (!v9)
      {
        *(v5 + 16) = v10;
        goto LABEL_14;
      }

LABEL_28:
      __break(1u);
      return MEMORY[0x2821C73A0]();
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_14:
  v11 = *(v0 + 360) + 1;
  if (v11 != *(v0 + 336))
  {
    *(v0 + 360) = v11;
    *(v0 + 368) = v5;
    v45 = *(v0 + 472);
    v22 = *(v0 + 468);
    v23 = *(v0 + 320);
    v24 = *(v0 + 224);
    v26 = *(v0 + 208);
    v25 = *(v0 + 216);
    v27 = *(v0 + 240) + 16;
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);
    v30 = *(v0 + 176);
    (*(v0 + 352))(*(v0 + 248), *(v0 + 328) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 344) * v11, *(v0 + 232));
    v31 = OUTLINED_FUNCTION_14_2();
    v32(v31, v22, v26);
    sub_2313679F0();
    v33 = sub_231367D80();
    OUTLINED_FUNCTION_11(v33);
    (*(v34 + 104))(v28, v45, v33);
    v35 = OUTLINED_FUNCTION_16_0();
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v35);
    v36 = *(MEMORY[0x277D61138] + 4);
    v37 = swift_task_alloc();
    *(v0 + 376) = v37;
    *v37 = v0;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2821C73A0]();
  }

  *(v0 + 392) = v5;
  v12 = *(v0 + 328);

  v13 = *(v5 + 16);
  *(v0 + 400) = v13;
  if (!v13)
  {
    v39 = OUTLINED_FUNCTION_9_2();
    v40(v39);
    v41 = *(v0 + 392);
    OUTLINED_FUNCTION_3_4();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_7();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_15_1();
  *(v0 + 416) = OUTLINED_FUNCTION_1_5();
  *(v0 + 424) = v14;
  *(v0 + 432) = swift_getObjectType();
  v15 = OUTLINED_FUNCTION_1_5();
  v17 = OUTLINED_FUNCTION_8_2(v15, v16);
  OUTLINED_FUNCTION_11_2(v17);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2311EC268()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  sub_231369380();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311EC2D4()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
  *(v0 + 120) = v4;
  *(v0 + 128) = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  *(v0 + 160) = MEMORY[0x277D839B0];
  *(v0 + 136) = 1;
  v8 = *(*(v2 + 8) + 8);
  v10 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_2311EC3D0, v10, v9);
}

uint64_t sub_2311EC3D0()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  sub_231369450();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311EC470()
{
  v1 = v0[51] + 1;
  if (v1 == v0[50])
  {
    v2 = OUTLINED_FUNCTION_9_2();
    v3(v2);
    v4 = v0[49];
    OUTLINED_FUNCTION_3_4();

    v5 = OUTLINED_FUNCTION_5();

    return v6(v5);
  }

  else
  {
    v0[51] = v1;
    sub_2311CF324(v0[49] + 40 * v1 + 32, (v0 + 2));
    v0[52] = OUTLINED_FUNCTION_1_5();
    v0[53] = v8;
    v0[54] = swift_getObjectType();
    v9 = OUTLINED_FUNCTION_1_5();
    v11 = OUTLINED_FUNCTION_8_2(v9, v10);
    v12 = OUTLINED_FUNCTION_11_2(v11);
    v13 = OUTLINED_FUNCTION_0_5(v12);

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_2311EC5B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432F0, &unk_23136BEF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-v6];
  v8 = sub_231368800();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_2313677E0();
  sub_231210B54(0x746E657665, 0xE500000000000000, v14);

  if (!v20)
  {
    sub_2311D1F18(v19, &qword_27DD432F8, &qword_23136DEE0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
  v15 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v7, v15 ^ 1u, 1, v8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
LABEL_5:
    sub_2311D1F18(v7, &qword_27DD432F0, &unk_23136BEF0);
    v16 = 1;
    goto LABEL_6;
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_2313687F0();
  (*(v9 + 8))(v12, v8);
  v16 = 0;
LABEL_6:
  v17 = sub_231367A00();
  return __swift_storeEnumTagSinglePayload(a2, v16, 1, v17);
}

uint64_t sub_2311EC84C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311EC8F4;

  return sub_2311EB654();
}

uint64_t sub_2311EC8F4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v5 = *v0;

  v2 = OUTLINED_FUNCTION_5();

  return v3(v2);
}

unint64_t sub_2311EC9E8()
{
  result = qword_280F81E38;
  if (!qword_280F81E38)
  {
    type metadata accessor for InAppMiniTipGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81E38);
  }

  return result;
}

unint64_t TrialNamespaces.description.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

SiriSuggestions::TrialNamespaces_optional __swiftcall TrialNamespaces.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2311ECBE8()
{
  result = qword_280F84470;
  if (!qword_280F84470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84470);
  }

  return result;
}

uint64_t sub_2311ECC54()
{
  v0 = sub_23136A7B0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2311ECCA0(char a1)
{
  result = 0x6B6361626C6C6166;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_2311ECD64@<X0>(unint64_t *a1@<X8>)
{
  result = TrialNamespaces.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2311ECD90()
{
  result = qword_27DD43308;
  if (!qword_27DD43308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43310, &qword_23136BFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrialFactors(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for TrialFactors(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TrialNamespaces(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TrialNamespaces(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2311ED06C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2311ED0F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2311ED1F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2311ECC54();
  *a2 = result;
  return result;
}

unint64_t sub_2311ED220@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2311ECCA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2311ED250()
{
  result = qword_27DD43318;
  if (!qword_27DD43318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43318);
  }

  return result;
}

unint64_t sub_2311ED2BC()
{
  v1 = v0 + OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_nextVal;
  if (*(v0 + OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_nextVal + 8))
  {
    do
    {
      swift_beginAccess();
      sub_231369500();
      sub_2311ED6A0();
      do
      {
        v2 = OUTLINED_FUNCTION_1_8();
      }

      while ((0x20000000000001 * v2) < 0x1FFFFFFFFFF801);
      v3 = (v2 * 0x20000000000001uLL) >> 64;
      do
      {
        v4 = OUTLINED_FUNCTION_1_8();
      }

      while ((0x20000000000001 * v4) < 0x1FFFFFFFFFF801);
      v5 = vcvtd_n_f64_u64(v3, 0x35uLL);
      v6 = v5 + 0.0 + v5 + 0.0 + -1.0;
      v7 = vcvtd_n_f64_u64((v4 * 0x20000000000001uLL) >> 64, 0x35uLL) + 0.0;
      swift_endAccess();
      v8 = v7 + v7 + -1.0;
      v9 = v6 * v6 + v8 * v8;
    }

    while (v9 >= 1.0 || v9 == 0.0);
    v10 = log(v6 * v6 + v8 * v8);
    v11 = sqrt(v10 * -2.0 / v9);
    *v1 = v8 * v11;
    *(v1 + 8) = 0;
    v12 = v6 * v11;
  }

  else
  {
    v12 = *v1;
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  return sub_2311ED4C8(v12 * *(v0 + OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_stdDev) + *(v0 + OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_mean));
}

void sub_2311ED450(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_2311ED618(0x20000000000001uLL);
  }
}

unint64_t sub_2311ED4C8(double a1)
{
  v1 = a1 * 1.84467441e19;
  if (v1 < 0.0)
  {
    return 0;
  }

  if (v1 >= 1.84467441e19)
  {
    return -1;
  }

  if (v1 > -1.0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t GaussianRNG.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_uniformRNG;
  v2 = sub_231369500();
  OUTLINED_FUNCTION_0_2(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t GaussianRNG.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_uniformRNG;
  v2 = sub_231369500();
  OUTLINED_FUNCTION_0_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_2311ED618(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_231369500();
    sub_2311ED6A0();
    v2 = OUTLINED_FUNCTION_1_8();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = OUTLINED_FUNCTION_1_8();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2311ED6A0()
{
  result = qword_280F7C8B8;
  if (!qword_280F7C8B8)
  {
    sub_231369500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C8B8);
  }

  return result;
}

uint64_t type metadata accessor for GaussianRNG()
{
  result = qword_27DD43340;
  if (!qword_27DD43340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2311ED74C()
{
  result = sub_231369500();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2311ED830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2311ED97C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2311ED97C()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_56_0();

  return v5();
}

uint64_t sub_2311EDA74(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43398, &qword_23136C338);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v31 - v5);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v31 = v1;
  v39 = MEMORY[0x277D84F90];
  sub_2311F5888(0, v7, 0);
  v8 = v39;
  result = sub_2311F0400(a1);
  v11 = result;
  v13 = v12;
  v14 = 0;
  v38 = a1 + 56;
  v32 = a1 + 64;
  v33 = v7;
  v36 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v38 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_26;
      }

      v37 = v10;
      v16 = *(a1 + 48);
      v17 = sub_231369990();
      (*(*(v17 - 8) + 16))(v6 + *(v35 + 48), v16 + *(*(v17 - 8) + 72) * v11, v17);
      *v6 = sub_231369970();
      v6[1] = v18;
      v39 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      v21 = v8;
      if (v20 >= v19 >> 1)
      {
        sub_2311F5888(v19 > 1, v20 + 1, 1);
        v21 = v39;
      }

      *(v21 + 16) = v20 + 1;
      result = sub_2311F0440(v6, v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, &qword_27DD43398, &qword_23136C338);
      if (v13)
      {
        goto LABEL_30;
      }

      v8 = v21;
      a1 = v36;
      v22 = 1 << *(v36 + 32);
      if (v11 >= v22)
      {
        goto LABEL_27;
      }

      v23 = *(v38 + 8 * v15);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v36 + 36) != v37)
      {
        goto LABEL_29;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v8;
        v26 = v15 << 6;
        v27 = v15 + 1;
        v28 = (v32 + 8 * v15);
        while (v27 < (v22 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_2311F0490(v11, v37, 0);
            v22 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_2311F0490(v11, v37, 0);
LABEL_19:
        v8 = v25;
        a1 = v36;
      }

      if (++v14 == v33)
      {
        return v8;
      }

      v13 = 0;
      v10 = *(a1 + 36);
      v11 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

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
LABEL_30:
  __break(1u);
  return result;
}

void sub_2311EDDB8()
{
  OUTLINED_FUNCTION_11_0();
  v95 = v0;
  v98 = v1;
  v3 = v2;
  v5 = v4;
  v93 = sub_231369990();
  v6 = OUTLINED_FUNCTION_0_0(v93);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v92 = sub_2313698C0();
  v14 = OUTLINED_FUNCTION_0_0(v92);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v97 = v20 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43350, &unk_23136C2E0);
  v21 = OUTLINED_FUNCTION_11(v80);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v91 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = v78 - v26;
  MEMORY[0x28223BE20](v27);
  v103 = v78 - v28;
  v29 = sub_231369DD0();
  v30 = OUTLINED_FUNCTION_0_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_7_4(v35);
  type metadata accessor for ResolvedParameter();
  v105[2] = sub_231369E60();
  v94 = v5;
  v36 = sub_231369920();
  v38 = *(v36 + 16);
  if (v38)
  {
    v88 = v13;
    v40 = *(v32 + 16);
    v39 = v32 + 16;
    v102 = v40;
    v41 = (*(v39 + 64) + 32) & ~*(v39 + 64);
    v78[1] = v36;
    v42 = v36 + v41;
    v101 = *(v39 + 56);
    v85 = v98 + 8;
    v84 = (v8 + 16);
    v83 = v8 + 8;
    v82 = v16 + 8;
    v100 = (v39 - 8);
    *&v37 = 136315906;
    v79 = v37;
    v89 = v3;
    v43 = v96;
    v87 = v29;
    v86 = v39;
    do
    {
      v102(v43, v42, v29);
      v44 = sub_231369DA0();
      v46 = v45;
      v47 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v47 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        v104 = v44;
        v48 = v94;
        v49 = sub_231369970();
        v50 = v103;
        (*(v98 + 8))(v43, v49, v51, v3);

        sub_231369130();
        (*v84)(v88, v48, v93);
        v52 = v90;
        sub_2311F03B0(v50, v90, &qword_27DD43350, &unk_23136C2E0);
        sub_231369EE0();
        v53 = sub_2313698A0();
        v54 = sub_23136A3A0();

        v99 = v54;
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v105[0] = v81;
          *v55 = v79;
          v56 = sub_23136AA70();
          v58 = sub_2311CFD58(v56, v57, v105);

          *(v55 + 4) = v58;
          *(v55 + 12) = 2080;
          v59 = sub_231369970();
          v61 = v60;
          v62 = OUTLINED_FUNCTION_5_1();
          v63(v62);
          v64 = sub_2311CFD58(v59, v61, v105);

          *(v55 + 14) = v64;
          *(v55 + 22) = 2080;
          *(v55 + 24) = sub_2311CFD58(v104, v46, v105);
          *(v55 + 32) = 2080;
          v65 = v91;
          sub_2311F03B0(v52, v91, &qword_27DD43350, &unk_23136C2E0);
          v66 = sub_23136A010();
          v68 = v67;
          sub_2311D1F18(v52, &qword_27DD43350, &unk_23136C2E0);
          v69 = sub_2311CFD58(v66, v68, v105);

          *(v55 + 34) = v69;
          _os_log_impl(&dword_2311CB000, v53, v99, "%s: Resolved parameterKey: %s.%s to %s", v55, 0x2Au);
          swift_arrayDestroy();
          v70 = v104;
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();

          v71 = OUTLINED_FUNCTION_3_5();
          v72(v71);
        }

        else
        {

          sub_2311D1F18(v52, &qword_27DD43350, &unk_23136C2E0);
          v73 = OUTLINED_FUNCTION_5_1();
          v74(v73);
          v75 = OUTLINED_FUNCTION_3_5();
          v76(v75);
          v65 = v91;
          v70 = v104;
        }

        v77 = v103;
        sub_2311F03B0(v103, v65, &qword_27DD43350, &unk_23136C2E0);
        v105[0] = v70;
        v105[1] = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43368, &qword_23136C2F0);
        sub_231369F10();
        sub_2311D1F18(v77, &qword_27DD43350, &unk_23136C2E0);
        v43 = v96;
        v29 = v87;
        (*v100)(v96, v87);
        v3 = v89;
      }

      else
      {
        (*v100)(v43, v29);
      }

      v42 += v101;
      --v38;
    }

    while (v38);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2311EE480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5[5] = a4;
  v5[6] = v6;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2311EE4CC, 0, 0);
}

uint64_t sub_2311EE4CC()
{
  v1 = sub_2311EDA74(v0[5]);
  v2 = sub_23127DF24(v1);
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2311EE5BC;
  v5 = v0[4];

  return sub_231312304();
}

void sub_2311EE5BC(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v6 = v4[9];
  v7 = *v2;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v5[10] = v1;

  if (v1)
  {
  }

  else
  {
    v9 = v5[7];
    v10 = v5[8];

    v5[11] = a1;

    MEMORY[0x2822009F8](sub_2311EE700, 0, 0);
  }
}

uint64_t sub_2311EE700()
{
  v1 = v0[10];
  v2 = v0[3];
  v3 = sub_2311EF4C0(v0[11]);
  SetToolParametersResolver = type metadata accessor for QuerySetToolParametersResolver();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = type metadata accessor for RetrievedContextToolParametersResolver();
  sub_23123F090(v2);
  v8 = v0[2];
  if (v7)
  {
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43370, &unk_23136C310);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23136C1C0;
    *(v10 + 56) = SetToolParametersResolver;
    *(v10 + 64) = &off_2845F2F60;
    *(v10 + 32) = v5;
    *(v10 + 96) = v6;
    *(v10 + 104) = &off_2845F4400;
    *(v10 + 72) = v9;
    sub_2311EE830(v10, v8);
  }

  else
  {
    v8[3] = SetToolParametersResolver;
    v8[4] = &off_2845F2F60;
    *v8 = v5;
  }

  OUTLINED_FUNCTION_56_0();

  return v11();
}

uint64_t sub_2311EE830@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CascadeToolParametersResolver();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = &off_2845F2F70;
  *a2 = v5;

  return sub_231369EE0();
}

void sub_2311EE8BC()
{
  OUTLINED_FUNCTION_11_0();
  v23 = v2;
  v24 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43350, &unk_23136C2E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = 0;
  v12 = *(v0 + 16);
  v13 = *(v12 + 16);
  for (i = v12 + 32; ; i += 40)
  {
    if (v13 == v11)
    {
      v18 = type metadata accessor for ResolvedParameter();
      v19 = v23;
      v20 = 1;
LABEL_8:
      __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
      OUTLINED_FUNCTION_9_0();
      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    sub_2311CF324(i, v25);
    v16 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v15 + 8))(v6, v4, v24, v16, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v17 = type metadata accessor for ResolvedParameter();
    if (__swift_getEnumTagSinglePayload(v10, 1, v17) != 1)
    {
      v21 = v23;
      sub_2311EFDC4(v10, v23);
      v19 = v21;
      v20 = 0;
      v18 = v17;
      goto LABEL_8;
    }

    ++v11;
    sub_2311D1F18(v10, &qword_27DD43350, &unk_23136C2E0);
  }

  __break(1u);
}

uint64_t sub_2311EEA4C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2311EEACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43388, &qword_23136C328) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_231369990();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311EEBC8, 0, 0);
}

uint64_t sub_2311EEBC8()
{
  v1 = v0[3];
  v2 = sub_231367470();
  v0[9] = v2;
  v0[10] = v3;
  if (!v3)
  {
LABEL_4:
    v7 = v0[2];
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
    v8 = v0[8];
    v9 = v0[5];

    OUTLINED_FUNCTION_56_0();

    return v10();
  }

  v5 = v0[5];
  v4 = v0[6];
  sub_231210BD0(v2, v3, v0[4]);
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    v6 = v0[5];

    sub_2311D1F18(v6, &qword_27DD43388, &qword_23136C328);
    goto LABEL_4;
  }

  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_2311EED34;
  v13 = v0[8];
  v14 = v0[3];

  return sub_231356014();
}

uint64_t sub_2311EED34()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 88);
  v6 = *v0;
  *(v2 + 96) = v4;

  return MEMORY[0x2822009F8](sub_2311EEE30, 0, 0);
}

uint64_t sub_2311EEE30()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[2];
  v7 = sub_2311EEF08(v0[12]);

  (*(v4 + 8))(v3, v5);
  *v6 = v2;
  v6[1] = v1;
  v6[2] = v7;
  v8 = v0[8];
  v9 = v0[5];

  OUTLINED_FUNCTION_56_0();

  return v10();
}

uint64_t sub_2311EEF08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v69 = *(v2 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v74 = &v57 - v4;
  v73 = sub_231369D00();
  v5 = *(v73 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v73);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v57 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43390, &qword_23136C330);
  v10 = *(*(v71 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v71);
  v70 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v67 = &v57 - v15;
  v17 = a1 + 64;
  v16 = *(a1 + 64);
  v72 = MEMORY[0x277D84F98];
  v75 = MEMORY[0x277D84F98];
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v58 = v5;
  v22 = (v5 + 32);
  v23 = a1;
  v62 = v22;
  result = sub_231369EE0();
  v25 = 0;
  v66 = a1;
  v63 = v21;
  for (i = a1 + 64; v20; v21 = v63)
  {
LABEL_9:
    v27 = __clz(__rbit64(v20)) | (v25 << 6);
    v28 = (*(v23 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v23 + 56) + *(v69 + 72) * v27;
    v32 = v71;
    v33 = v67;
    sub_2311F03B0(v31, &v67[*(v71 + 48)], &qword_27DD43358, &qword_23136FA90);
    *v33 = v29;
    v33[1] = v30;
    v34 = v68;
    sub_2311F0440(v33, v68, &qword_27DD43390, &qword_23136C330);
    v35 = v74;
    sub_2311F03B0(v34 + *(v32 + 48), v74, &qword_27DD43358, &qword_23136FA90);
    if (__swift_getEnumTagSinglePayload(v35, 1, v73) == 1)
    {
      sub_231369EE0();
      sub_2311D1F18(v34, &qword_27DD43390, &qword_23136C330);
      v36 = v74;
      v17 = i;
      v23 = v66;
    }

    else
    {
      v61 = v30;
      v37 = *v62;
      v38 = v34;
      v39 = v59;
      v40 = v73;
      (*v62)(v59, v74, v73);
      sub_2311F0440(v38, v70, &qword_27DD43390, &qword_23136C330);
      v60 = v37;
      v37(v65, v39, v40);
      if (v72[3] <= v72[2])
      {
        sub_231369EE0();
        sub_2312B4368();
      }

      else
      {
        sub_231369EE0();
      }

      v41 = v75;
      v42 = *v70;
      v43 = v70[1];
      v44 = *(v75 + 40);
      sub_23136A9D0();
      sub_23136A060();
      result = sub_23136AA00();
      v45 = v41 + 64;
      v72 = v41;
      v46 = -1 << *(v41 + 32);
      v47 = result & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v41 + 64 + 8 * (v47 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v46) >> 6;
        while (++v48 != v51 || (v50 & 1) == 0)
        {
          v52 = v48 == v51;
          if (v48 == v51)
          {
            v48 = 0;
          }

          v50 |= v52;
          v53 = *(v45 + 8 * v48);
          if (v53 != -1)
          {
            v49 = __clz(__rbit64(~v53)) + (v48 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_28;
      }

      v49 = __clz(__rbit64((-1 << v47) & ~*(v41 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      v36 = v70 + *(v71 + 48);
      *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v55 = v72;
      v54 = v73;
      v56 = (v72[6] + 16 * v49);
      *v56 = v42;
      v56[1] = v43;
      v60((v55[7] + *(v58 + 72) * v49), v65, v54);
      ++v55[2];
      v23 = v66;
      v17 = i;
    }

    v20 &= v20 - 1;
    result = sub_2311D1F18(v36, &qword_27DD43358, &qword_23136FA90);
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v21)
    {

      return v72;
    }

    v20 = *(v17 + 8 * v26);
    ++v25;
    if (v20)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2311EF4C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43378, &unk_231374980);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2311EFFE0(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_2311EF558()
{
  OUTLINED_FUNCTION_11_0();
  v77 = v0;
  v78 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_2313698C0();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v68 = v10;
  v69 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_7_4(v13);
  v14 = sub_231369D50();
  v74 = OUTLINED_FUNCTION_0_0(v14);
  v75 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  v21 = sub_231369D30();
  v22 = OUTLINED_FUNCTION_0_0(v21);
  v72 = v23;
  v73 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v64 - v31;
  v33 = sub_231369D00();
  v34 = OUTLINED_FUNCTION_0_0(v33);
  v71 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_4();
  v76 = (v39 - v38);
  v40 = v7;
  v41 = sub_231369DA0();
  v43 = v42;
  v44 = *(v77 + 16);
  v70 = v5;
  v77 = v3;
  v45 = sub_2312177D8(v5, v3, v44);
  if (!v45)
  {

    __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
    goto LABEL_5;
  }

  sub_231210BB8(v41, v43, v45);

  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {

LABEL_5:
    sub_2311D1F18(v32, &qword_27DD43358, &qword_23136FA90);
LABEL_6:
    v46 = type metadata accessor for ResolvedParameter();
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v46);
    goto LABEL_7;
  }

  v65 = v41;
  v47 = v71;
  v48 = v76;
  v66 = *(v71 + 32);
  v49 = v66(v76, v32, v33);
  MEMORY[0x23192A470](v49);
  sub_231369D10();
  (*(v72 + 8))(v28, v73);
  sub_231369CC0();
  sub_2311EFA8C();
  v51 = v50;

  (*(v75 + 8))(v20, v74);
  if ((v51 & 1) == 0)
  {
    (*(v47 + 8))(v48, v33);

    goto LABEL_6;
  }

  v52 = v67;
  sub_231369130();
  sub_231369EE0();
  v53 = sub_2313698A0();
  v54 = sub_23136A3A0();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v79 = v56;
    *v55 = 136315138;
    v57 = sub_2311CFD58(v65, v43, &v79);

    *(v55 + 4) = v57;
    v48 = v76;
    _os_log_impl(&dword_2311CB000, v53, v54, "Has assigned value for parameterKey: %s. Using this as resolvedValue", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  (*(v68 + 8))(v52, v69);
  v58 = type metadata accessor for ResolvedParameter();
  v59 = *(v58 + 20);
  v60 = sub_231369DD0();
  OUTLINED_FUNCTION_11(v60);
  v62 = v78;
  (*(v61 + 16))(v78 + v59, v40);
  v66(v62 + *(v58 + 24), v48, v33);
  v63 = v77;
  *v62 = v70;
  v62[1] = v63;
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v58);
  sub_231369EE0();
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_2311EFA8C()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_231369D50();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  if (*(v1 + 16))
  {
    v11 = *(v1 + 40);
    sub_2311EFEEC(&qword_280F7C888);
    v12 = sub_231369F30();
    v13 = v1 + 56;
    v17 = v1;
    v14 = ~(-1 << *(v1 + 32));
    do
    {
      v15 = v12 & v14;
      if (((1 << (v12 & v14)) & *(v13 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v5 + 16))(v10, *(v17 + 48) + *(v5 + 72) * v15, v2);
      sub_2311EFEEC(&qword_27DD43360);
      v16 = sub_231369F60();
      (*(v5 + 8))(v10, v2);
      v12 = v15 + 1;
    }

    while ((v16 & 1) == 0);
  }

  OUTLINED_FUNCTION_9_0();
}

BOOL sub_2311EFC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_23136A9D0();
  sub_23136A060();
  v7 = sub_23136AA00();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_23136A900();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t type metadata accessor for ResolvedParameter()
{
  result = qword_27DD433A0;
  if (!qword_27DD433A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2311EFDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedParameter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2311EFE28()
{
  MEMORY[0x23192A730](*v0, v0[1]);
  MEMORY[0x23192A730](58, 0xE100000000000000);
  v1 = type metadata accessor for ResolvedParameter();
  v2 = v0 + *(v1 + 20);
  v3 = sub_231369DA0();
  MEMORY[0x23192A730](v3);

  MEMORY[0x23192A730](61, 0xE100000000000000);
  v4 = *(v1 + 24);
  sub_231369D00();
  sub_23136A6F0();
  return 0;
}

uint64_t sub_2311EFEEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_231369D50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2311EFF30(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2311ED97C;

  return sub_2311EEACC(a1, a2, v6);
}

uint64_t sub_2311EFFE0(uint64_t a1, char a2, uint64_t *a3)
{
  v56 = a3;
  v49 = sub_2313698C0();
  v5 = *(*(v49 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v49);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v52 = *(a1 + 16);
  v53 = a1;
  v48 = (v10 + 8);
  v11 = (a1 + 48);
  v6.n128_u64[0] = 136315138;
  v46 = v6;
  while (1)
  {
    if (v52 == v9)
    {
    }

    if (v9 >= *(v53 + 16))
    {
      break;
    }

    v54 = v11;
    v55 = v9;
    v12 = v8;
    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    v16 = *v56;
    sub_231369EE0();
    sub_231369EE0();
    v18 = sub_231215F6C(v13, v14);
    v19 = *(v16 + 16);
    v20 = (v17 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_20;
    }

    v21 = v17;
    if (*(v16 + 24) >= v19 + v20)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43380, &qword_23136C320);
        sub_23136A710();
      }
    }

    else
    {
      v22 = v56;
      sub_2312B432C();
      v23 = *v22;
      v24 = sub_231215F6C(v13, v14);
      if ((v21 & 1) != (v25 & 1))
      {
        goto LABEL_22;
      }

      v18 = v24;
    }

    v26 = *v56;
    if (v21)
    {
      v27 = *(v26[7] + 8 * v18);
      sub_231369EE0();
      v8 = v12;
      sub_231369130();
      sub_231369EE0();
      v28 = sub_2313698A0();
      v29 = sub_23136A3B0();

      v50 = v29;
      v51 = v28;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v57 = v47;
        *v30 = v46.n128_u32[0];
        sub_231369D00();
        v31 = sub_231369E90();
        v33 = sub_2311CFD58(v31, v32, &v57);

        *(v30 + 4) = v33;
        v34 = v51;
        _os_log_impl(&dword_2311CB000, v51, v50, "Duplicate toolId key found. Picking first value: %s", v30, 0xCu);
        v35 = v47;
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x23192B930](v35, -1, -1);
        v36 = v30;
        v8 = v12;
        MEMORY[0x23192B930](v36, -1, -1);
      }

      else
      {
      }

      (*v48)(v12, v49);

      v41 = v55;
      v42 = v26[7];
      v43 = *(v42 + 8 * v18);
      *(v42 + 8 * v18) = v27;
    }

    else
    {
      v26[(v18 >> 6) + 8] |= 1 << v18;
      v37 = (v26[6] + 16 * v18);
      *v37 = v13;
      v37[1] = v14;
      *(v26[7] + 8 * v18) = v15;
      v38 = v26[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_21;
      }

      v26[2] = v40;
      v8 = v12;
      v41 = v55;
    }

    v11 = v54 + 3;
    v9 = v41 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_2311F03B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2311F0400(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_23136A560();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2311F0440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2311F0490(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2311F04C4()
{
  result = sub_231369DD0();
  if (v1 <= 0x3F)
  {
    result = sub_231369D00();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_2311F0588@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(__src);
  if (!v2)
  {
    memcpy(v11, __src, sizeof(v11));
    v7 = v11[45];
    v8 = v11[46];
    v9 = v11[47];
    v10 = v11[48];
    sub_231369EE0();
    sub_2311F07B0(v11);
    a1[3] = &type metadata for SiriSuggestionsRuntimeConfig.IntelligenceConfig;
    a1[4] = sub_2311F0804();
    result = swift_allocObject();
    *a1 = result;
    result[2] = v7;
    result[3] = v8;
    result[4] = v9;
    result[5] = v10;
  }

  return result;
}

void *sub_2311F0640@<X0>(void *a1@<X8>)
{
  result = TrialRuntimeConfigProvider.getRuntimeConfig()(__src);
  if (!v1)
  {
    memcpy(v8, __src, sizeof(v8));
    v4 = v8[45];
    v5 = v8[46];
    v6 = v8[47];
    v7 = v8[48];
    sub_231369EE0();
    sub_2311F07B0(v8);
    a1[3] = &type metadata for SiriSuggestionsRuntimeConfig.IntelligenceConfig;
    a1[4] = sub_2311F0804();
    result = swift_allocObject();
    *a1 = result;
    result[2] = v4;
    result[3] = v5;
    result[4] = v6;
    result[5] = v7;
  }

  return result;
}

void *SuggestionsRuntimeConfigProvider.getConfig()@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = (*(a1 + 16))(__src);
  if (!v2)
  {
    memcpy(v9, __src, sizeof(v9));
    v5 = v9[45];
    v6 = v9[46];
    v7 = v9[47];
    v8 = v9[48];
    sub_231369EE0();
    sub_2311F07B0(v9);
    a2[3] = &type metadata for SiriSuggestionsRuntimeConfig.IntelligenceConfig;
    a2[4] = sub_2311F0804();
    result = swift_allocObject();
    *a2 = result;
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    result[5] = v8;
  }

  return result;
}

unint64_t sub_2311F0804()
{
  result = qword_280F850D8[0];
  if (!qword_280F850D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F850D8);
  }

  return result;
}

uint64_t SiriSuggestionsRuntimeConfig.IntelligenceConfig.appUsageOrderBy.getter()
{
  v1 = sub_2313698C0();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = *(v0 + 8);
  v11 = *(v0 + 16);
  sub_231369EE0();
  result = sub_2313696E0();
  if (result == 3)
  {
    sub_2313690F0();
    sub_231369EE0();
    v13 = sub_2313698A0();
    v14 = sub_23136A3B0();

    if (os_log_type_enabled(v13, v14))
    {
      v39 = v14;
      v15 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_2311CFD58(v10, v11, &v41);
      *(v15 + 12) = 2080;
      v16 = sub_2313696D0();
      v17 = *(v16 + 16);
      if (v17)
      {
        v35 = v15;
        v36 = v13;
        v37 = v4;
        v38 = v1;
        v40 = MEMORY[0x277D84F90];
        sub_2311F4E34();
        v18 = 32;
        OUTLINED_FUNCTION_55_1();
        OUTLINED_FUNCTION_54_2();
        do
        {
          v24 = *(v16 + v18);
          if (v24 == 1)
          {
            v25 = v20;
          }

          else
          {
            v25 = v23;
          }

          if (v24 == 1)
          {
            v26 = v19;
          }

          else
          {
            v26 = v22;
          }

          if (*(v16 + v18))
          {
            v27 = v25;
          }

          else
          {
            v27 = v21;
          }

          if (*(v16 + v18))
          {
            v28 = v26;
          }

          else
          {
            v28 = 0x800000023137C3B0;
          }

          v29 = *(v40 + 16);
          if (v29 >= *(v40 + 24) >> 1)
          {
            sub_2311F4E34();
            OUTLINED_FUNCTION_54_2();
            OUTLINED_FUNCTION_55_1();
          }

          *(v40 + 16) = v29 + 1;
          v30 = v40 + 16 * v29;
          *(v30 + 32) = v27;
          *(v30 + 40) = v28;
          ++v18;
          --v17;
        }

        while (v17);

        v4 = v37;
        v1 = v38;
        v13 = v36;
        v15 = v35;
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
      sub_2311E5648();
      v31 = sub_231369F50();
      v33 = v32;

      v34 = sub_2311CFD58(v31, v33, &v41);

      *(v15 + 14) = v34;
      _os_log_impl(&dword_2311CB000, v13, v39, "Unable to map %s to a AppUsageOrderBy value. Needs to be one of [%s]", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    (*(v4 + 8))(v9, v1);
    return 0;
  }

  return result;
}

uint64_t sub_2311F0C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for SiriSuggestionsRuntimeConfig.IntelligenceConfig;
  a5[4] = sub_2311F0804();
  v10 = swift_allocObject();
  *a5 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  return sub_231369EE0();
}

void sub_2311F0C84(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 rolloutId];
  v5 = sub_231369FD0();
  v7 = v6;

  v8 = [a1 deploymentId];
  v9 = [a1 factorPackId];
  v10 = sub_231369FD0();
  v12 = v11;

  v13 = [a1 rampId];
  if (v13)
  {
    v14 = v13;
    v15 = sub_231369FD0();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
}

SiriSuggestions::ConfigSource_optional __swiftcall ConfigSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ConfigSource.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6C61697274;
  }

  else
  {
    result = 0x43746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_2311F0E5C@<X0>(uint64_t *a1@<X8>)
{
  result = ConfigSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2311F0E84()
{
  v0 = sub_231366690();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  sub_231367320();
  static SiriSuggestions.loadRuntimeConfig(configUrl:)();
  return (*(v3 + 8))(v8, v0);
}

uint64_t DefaultRuntimeConfigProvider.__allocating_init(configDelegate:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DefaultRuntimeConfigProvider.init(configDelegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DefaultRuntimeConfigProvider.getRuntimeConfig()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t DefaultRuntimeConfigProvider.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DefaultRuntimeConfigProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t TrialRuntimeConfigProvider.__allocating_init(trialUseCase:)(char *a1)
{
  v2 = swift_allocObject();
  TrialRuntimeConfigProvider.init(trialUseCase:)(a1);
  return v2;
}

uint64_t TrialRuntimeConfigProvider.init(trialUseCase:)(char *a1)
{
  v3 = *a1;
  type metadata accessor for DefaultTrialClientProvider();
  v4 = OUTLINED_FUNCTION_48_0();
  *(v2 + 40) = v1;
  *(v2 + 48) = &off_2845F70C8;
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DefaultRuntimeConfigProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2311F0E84;
  *(v6 + 24) = 0;
  *(v2 + 80) = v5;
  *(v2 + 88) = &protocol witness table for DefaultRuntimeConfigProvider;
  *(v2 + 56) = v6;
  *(v2 + 96) = v3;
  return v2;
}

uint64_t TrialRuntimeConfigProvider.getRuntimeConfig()@<X0>(void *a1@<X8>)
{
  v3 = v1;
  v81 = a1;
  v4 = sub_231366690();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v80 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = sub_2313698C0();
  v84 = OUTLINED_FUNCTION_0_0(v12);
  v85 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_22();
  v82 = v16 - v17;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  v22 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_231343BB8(v89);
  v23 = v90;
  v24 = v91;
  __swift_project_boxed_opaque_existential_1(v89, v90);
  v25 = (*(v24 + 48))(0x6D726F6674616C70, 0xEE006769666E6F43, 0xD000000000000019, 0x800000023137A580, v23, v24);
  v26 = v83;
  v27 = static TrialUtils.getDirectoryPath(triLevel:)(v25);
  v83 = v26;
  if (v26)
  {
    v29 = v84;
    v30 = v85;
    v31 = v83;
  }

  else
  {
    v32 = v28;
    v77 = v11;
    v78 = v4;
    v79 = v25;
    if (v28)
    {
      v33 = v27;
      v34 = v21;
      sub_231369100();
      sub_231369EE0();
      v35 = sub_2313698A0();
      v36 = sub_23136A390();

      v37 = os_log_type_enabled(v35, v36);
      v38 = v84;
      if (v37)
      {
        OUTLINED_FUNCTION_17();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v88[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_2311CFD58(v33, v32, v88);
        _os_log_impl(&dword_2311CB000, v35, v36, "Using config path from trial %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      v30 = v85;
      (*(v85 + 8))(v34, v38);
      v41 = v81;
      v42 = v78;
      v29 = v38;
      v31 = v83;
      v88[0] = v33;
      v88[1] = v32;
      sub_231369EE0();
      MEMORY[0x23192A730](47, 0xE100000000000000);

      v43 = v77;
      OUTLINED_FUNCTION_56_1();
      sub_2313665C0();

      static SiriSuggestions.loadRuntimeConfig(configUrl:)();
      if (!v31)
      {
        (*(v80 + 8))(v43, v42);
        v73 = sub_231368C80();
        OUTLINED_FUNCTION_10_2(v73);
        swift_allocObject();
        sub_231368C70();
        OUTLINED_FUNCTION_24_0();
        v74 = type metadata accessor for DefaultTrialCoreAnalyticsLogger();
        OUTLINED_FUNCTION_10_2(v74);
        swift_allocObject();
        OUTLINED_FUNCTION_13_2(MEMORY[0x277D61160]);
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_60_1();
        v75 = OUTLINED_FUNCTION_4_1();
        v76(v75);
        OUTLINED_FUNCTION_50_3();
        v92 = 0;
        sub_2313024A8(&v87, 1, &v92, 0, 0);

        memcpy(v41, v86, 0x1A8uLL);
        return __swift_destroy_boxed_opaque_existential_1Tm(v89);
      }

      (*(v80 + 8))(v43, v42);
    }

    else
    {
      sub_231369100();
      v44 = sub_2313698A0();
      v45 = sub_23136A3A0();
      v46 = OUTLINED_FUNCTION_17_2();
      v48 = os_log_type_enabled(v46, v47);
      v29 = v84;
      v30 = v85;
      if (v48)
      {
        OUTLINED_FUNCTION_16_1();
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2311CB000, v44, v45, "User did not specify platform config in trial rollout/experiment, falling back to using default config", v49, 2u);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      (*(v30 + 8))(v2, v29);
      v50 = v3[10];
      v51 = v3[11];
      __swift_project_boxed_opaque_existential_1(v3 + 7, v50);
      v52 = v83;
      (*(v51 + 16))(v50, v51);
      v31 = v52;
      if (!v52)
      {

        return __swift_destroy_boxed_opaque_existential_1Tm(v89);
      }
    }

    v25 = v79;
  }

  v53 = v82;
  sub_231369100();
  v54 = v31;
  v55 = sub_2313698A0();
  v56 = sub_23136A3B0();

  if (os_log_type_enabled(v55, v56))
  {
    OUTLINED_FUNCTION_17();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    v59 = v31;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 4) = v60;
    *v58 = v60;
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
    sub_2311F4E78(v58);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  (*(v30 + 8))(v53, v29);
  v66 = sub_231368C80();
  OUTLINED_FUNCTION_10_2(v66);
  swift_allocObject();
  sub_231368C70();
  OUTLINED_FUNCTION_24_0();
  v67 = type metadata accessor for DefaultTrialCoreAnalyticsLogger();
  OUTLINED_FUNCTION_10_2(v67);
  swift_allocObject();
  OUTLINED_FUNCTION_13_2(MEMORY[0x277D61160]);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_60_1();
  v68 = OUTLINED_FUNCTION_4_1();
  v69(v68);
  OUTLINED_FUNCTION_50_3();
  v92 = 0;
  swift_getErrorValue();
  v70 = sub_23136A980();
  sub_2313024A8(&v87, 1, &v92, v70, v71);

  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(v89);
}

uint64_t TrialDenyListsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialDenyListsProvider.init()();
  return v0;
}

void *TrialDenyListsProvider.init()()
{
  type metadata accessor for DefaultTrialClientProvider();
  v2 = OUTLINED_FUNCTION_48_0();
  v1[5] = v0;
  v1[6] = &off_2845F70C8;
  v1[2] = v2;
  type metadata accessor for DefaultDenyListsProvider();
  v3 = OUTLINED_FUNCTION_48_0();
  v1[10] = v0;
  v1[11] = &protocol witness table for DefaultDenyListsProvider;
  v1[7] = v3;
  return v1;
}

uint64_t TrialDenyListsProvider.getDenyLists()@<X0>(_OWORD *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v103 = a1;
  v5 = sub_231366690();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v108 = v7;
  v109 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  v105 = (v10 - v11);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  v104 = &v97 - v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  v107 = &v97 - v15;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v16);
  v110 = &v97 - v17;
  *&v113 = sub_2313698C0();
  v18 = OUTLINED_FUNCTION_0_0(v113);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22();
  v25 = v23 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v97 - v28;
  MEMORY[0x28223BE20](v27);
  v106 = (&v97 - v30);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v31);
  v33 = &v97 - v32;
  v34 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_231343BB8(v121);
  sub_231369100();
  v35 = sub_2313698A0();
  v36 = sub_23136A3A0();
  v37 = OUTLINED_FUNCTION_17_2();
  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_16_1();
    v39 = swift_slowAlloc();
    v112 = v4;
    *v39 = 0;
    _os_log_impl(&dword_2311CB000, v35, v36, "Looking for deny lists on Trial.", v39, 2u);
    v3 = v2;
    v4 = v112;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v111 = *(v20 + 8);
  v112 = (v20 + 8);
  v111(v33, v113);
  v40 = v122;
  v41 = v123;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  v42 = (*(v41 + 48))(0x7473694C796E6564, 0xE900000000000073, 0xD00000000000001ALL, 0x800000023137A5A0, v40, v41);
  v43 = static TrialUtils.getDirectoryPath(triLevel:)(v42);
  if (v3)
  {

    v45 = v111;
    sub_231369100();
    v46 = v3;
    v47 = sub_2313698A0();
    v48 = sub_23136A3B0();

    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_17();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v3;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      OUTLINED_FUNCTION_28_2();
      _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
      sub_2311F4E78(v50);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v45(v25, v113);
    v58 = sub_231368C80();
    OUTLINED_FUNCTION_10_2(v58);
    swift_allocObject();
    sub_231368C70();
    OUTLINED_FUNCTION_24_0();
    v59 = type metadata accessor for DefaultTrialCoreAnalyticsLogger();
    OUTLINED_FUNCTION_10_2(v59);
    swift_allocObject();
    OUTLINED_FUNCTION_13_2(MEMORY[0x277D61160]);
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_60_1();
    v60 = OUTLINED_FUNCTION_4_1();
    v61(v60);
    OUTLINED_FUNCTION_50_3();
    LOBYTE(v114) = 0;
    swift_getErrorValue();
    v62 = sub_23136A980();
    sub_2313024A8(&v115, 2, &v114, v62, v63);

    swift_willThrow();
  }

  else
  {
    v100 = v42;
    if (v44)
    {
      *&v118 = v43;
      *(&v118 + 1) = v44;
      sub_231369EE0();
      MEMORY[0x23192A730](47, 0xE100000000000000);

      v65 = v107;
      OUTLINED_FUNCTION_56_1();
      sub_2313665C0();

      v66 = v110;
      sub_231366620();
      v68 = v108;
      v67 = v109;
      v101 = *(v108 + 8);
      v102 = v108 + 8;
      v101(v65, v109);
      v69 = v106;
      sub_231369100();
      v70 = v68 + 16;
      v71 = *(v68 + 16);
      v72 = v104;
      v98 = v71;
      v99 = v70;
      v71(v104, v66, v67);
      v73 = sub_2313698A0();
      v74 = sub_23136A3A0();
      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_17();
        swift_slowAlloc();
        OUTLINED_FUNCTION_43_2();
        v97 = swift_slowAlloc();
        *&v118 = v97;
        *v67 = 136315138;
        sub_2311F4EE0(qword_280F85968, MEMORY[0x277CC9260]);
        v75 = sub_23136A8B0();
        v77 = v76;
        v101(v72, v109);
        v78 = sub_2311CFD58(v75, v77, &v118);

        *(v67 + 4) = v78;
        _os_log_impl(&dword_2311CB000, v73, v74, "Loading deny lists from Trial from: %s", v67, 0xCu);
        v69 = v97;
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        v67 = v109;
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      else
      {

        v101(v72, v67);
      }

      v111(v106, v113);
      v86 = v105;
      v87 = v98;
      v98(v105, v110, v67);
      type metadata accessor for JsonSerializer();
      OUTLINED_FUNCTION_42_1();
      v88 = swift_allocObject();
      v119 = v69;
      v120 = &protocol witness table for JsonSerializer;
      *&v118 = v88;
      v89 = v107;
      v87(v107, v86, v67);
      v90 = type metadata accessor for FileBasedConfigBackingStore();
      OUTLINED_FUNCTION_10_2(v90);
      v91 = swift_allocObject();
      (*(v108 + 32))(v91 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v89, v67);
      v116 = v90;
      v117 = sub_2311F4EE0(&qword_280F85B48, type metadata accessor for FileBasedConfigBackingStore);
      *&v115 = v91;
      v101(v86, v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433B8, &qword_23136C390);
      inited = swift_initStackObject();
      sub_2311D38A8(&v115, inited + 16);
      sub_2311D38A8(&v118, inited + 56);
      sub_23127E69C();
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
      v93 = sub_231368C80();
      v113 = v114;
      OUTLINED_FUNCTION_10_2(v93);
      swift_allocObject();
      sub_231368C70();
      OUTLINED_FUNCTION_24_0();
      v94 = type metadata accessor for DefaultTrialCoreAnalyticsLogger();
      OUTLINED_FUNCTION_10_2(v94);
      swift_allocObject();
      OUTLINED_FUNCTION_13_2(MEMORY[0x277D61160]);
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_60_1();
      v95 = OUTLINED_FUNCTION_4_1();
      v96(v95);
      OUTLINED_FUNCTION_50_3();
      LOBYTE(v114) = 0;
      sub_2313024A8(&v115, 2, &v114, 0, 0);

      v101(v110, v67);
      *v103 = v113;
    }

    else
    {
      sub_231369100();
      v79 = sub_2313698A0();
      v80 = sub_23136A3A0();
      v81 = OUTLINED_FUNCTION_17_2();
      if (os_log_type_enabled(v81, v82))
      {
        OUTLINED_FUNCTION_16_1();
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_2311CB000, v79, v80, "No deny lists on trial. Falling back to using default deny lists.", v83, 2u);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      v111(v29, v113);
      v84 = v4[10];
      v85 = v4[11];
      __swift_project_boxed_opaque_existential_1(v4 + 7, v84);
      (*(v85 + 8))(v84, v85);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v121);
}

uint64_t TrialDenyListsProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_2311F2314()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2311F2384()
{
  v0 = type metadata accessor for DefaultOwnerConfigProvider(0);
  OUTLINED_FUNCTION_10_2(v0);
  swift_allocObject();
  sub_2311F248C();
  sub_2311F4EE0(qword_280F7FEB0, type metadata accessor for DefaultOwnerConfigProvider);
  return OUTLINED_FUNCTION_34_1();
}

uint64_t sub_2311F2408()
{
  v0 = type metadata accessor for TrialOwnerConfigProvider(0);
  OUTLINED_FUNCTION_10_2(v0);
  swift_allocObject();
  sub_2311F2C70();
  sub_2311F4EE0(qword_280F806C0, type metadata accessor for TrialOwnerConfigProvider);
  return OUTLINED_FUNCTION_34_1();
}

uint64_t sub_2311F248C()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_status;
  v3 = *MEMORY[0x277D611A0];
  v4 = sub_231368D70();
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 104))(v1 + v2, v3);
  sub_231367890();
  sub_231369EC0();
  OUTLINED_FUNCTION_24_0();
  v6 = sub_231367CF0();
  OUTLINED_FUNCTION_10_2(v6);
  swift_allocObject();
  OUTLINED_FUNCTION_34_1();
  *(v1 + OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_allOwnersConfigs) = sub_231367CD0();
  return v1;
}

uint64_t sub_2311F2558()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v0;
  v2 = sub_2313698C0();
  v1[6] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[7] = v3;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_231368D70();
  v1[9] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[10] = v7;
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_62_0();
  v1[12] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2311F265C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[5];
  OUTLINED_FUNCTION_58_0();
  v6 = OUTLINED_FUNCTION_47_1();
  v7(v6);
  v8 = *MEMORY[0x277D611A0];
  v9 = OUTLINED_FUNCTION_53_2();
  v10(v9);
  LOBYTE(v5) = sub_23131219C();
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_28_0();
  v11(v12);
  (v11)(v2, v3);
  if (v5)
  {
    v13 = v0[8];
    sub_231369100();
    v14 = sub_2313698A0();
    sub_23136A3B0();
    v15 = OUTLINED_FUNCTION_17_2();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_16_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_57(&dword_2311CB000, v17, v18, "attempting to access domain configs without them getting loaded. loadAllOwnerConfigs was not called");
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    v22 = *(v20 + 8);
    v23 = OUTLINED_FUNCTION_28_0();
    v24(v23);
  }

  v26 = v0[11];
  v25 = v0[12];
  v27 = v0[8];
  sub_231367890();
  sub_231369EC0();
  OUTLINED_FUNCTION_24_0();
  v28 = sub_231367CF0();
  OUTLINED_FUNCTION_10_2(v28);
  swift_allocObject();
  OUTLINED_FUNCTION_34_1();
  v29 = sub_231367CD0();

  v30 = v0[1];

  return v30(v29);
}

uint64_t sub_2311F2828()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v0;
  v2 = sub_231368D70();
  v1[6] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[7] = v3;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311F28D4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  (*(v2 + 104))(v1, *MEMORY[0x277D61198], v3);
  v5 = OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_status;
  OUTLINED_FUNCTION_59_0();
  (*(v2 + 40))(v4 + v5, v1, v3);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2311F29B0()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_status;
  v2 = sub_231368D70();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_allOwnersConfigs);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2311F2A20()
{
  sub_2311F29B0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2311F2A4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F93E8;

  return sub_2311F2558();
}

uint64_t sub_2311F2AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F93DC;

  return sub_2311F2828();
}

uint64_t sub_2311F2B70(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D60F98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = type metadata accessor for DefaultOwnerConfigProvider(0);
  v10 = sub_2311F4EE0(qword_280F7FEB0, type metadata accessor for DefaultOwnerConfigProvider);
  *v8 = v3;
  v8[1] = sub_2311F93DC;

  return MEMORY[0x2821C6F78](a1, a2, v9, v10);
}

uint64_t sub_2311F2C70()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_status;
  v3 = *MEMORY[0x277D611A0];
  v4 = sub_231368D70();
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 104))(v1 + v2, v3);
  v6 = OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnersConfigs;
  sub_231367890();
  sub_231369EC0();
  OUTLINED_FUNCTION_24_0();
  v7 = sub_231367CF0();
  OUTLINED_FUNCTION_10_2(v7);
  swift_allocObject();
  OUTLINED_FUNCTION_34_1();
  v9 = v8;
  *(v1 + v6) = sub_231367CD0();
  type metadata accessor for DefaultTrialClientProvider();
  OUTLINED_FUNCTION_42_1();
  v10 = swift_allocObject();
  v11 = (v1 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider);
  v11[3] = v9;
  v11[4] = &off_2845F70C8;
  *v11 = v10;
  type metadata accessor for DefaultAllOwnerConfigsLoaderProvider();
  OUTLINED_FUNCTION_42_1();
  v12 = swift_allocObject();
  v13 = (v1 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnerConfigsLoaderProvider);
  v13[3] = v9;
  v13[4] = &off_2845F3F98;
  *v13 = v12;
  return v1;
}

uint64_t sub_2311F2D94()
{
  v3 = v1;
  v4 = sub_231366690();
  v91 = OUTLINED_FUNCTION_0_0(v4);
  v92 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v95 = sub_2313698C0();
  v11 = OUTLINED_FUNCTION_0_0(v95);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22();
  v89 = v16 - v17;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v81 - v20;
  v22 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider), *(v0 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider + 24));
  sub_231343BB8(v99);
  sub_231369100();
  v23 = sub_2313698A0();
  sub_23136A3A0();
  v24 = OUTLINED_FUNCTION_17_2();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_16_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v93 = *(v13 + 8);
  v94 = v13 + 8;
  v31 = v93(v21, v95);
  v32 = 0;
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  v90 = v92 + 32;
  v96 = &unk_23137A540;
  v31.n128_u64[0] = 136315138;
  v81 = v31;
  v86 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
  v85 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
  v84 = "SIRI_SUGGESTIONS_PLATFORM";
  v31.n128_u64[0] = 136315394;
  v82 = v31;
  v87 = v10;
  v83 = v2;
  while (1)
  {
    v102 = v34;
    v97 = v32;
    v35 = *(&unk_2845F1138 + v33 + 32);
    v36 = v100;
    v37 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    v34 = v96;
    v38 = 0xD00000000000001FLL;
    switch(v35)
    {
      case 1:
        v34 = v86;
        break;
      case 2:
        OUTLINED_FUNCTION_38_3();
        v38 = v39 - 6;
        v34 = v85;
        break;
      case 3:
        OUTLINED_FUNCTION_38_3();
        v38 = v40 - 5;
        v34 = v84;
        break;
      default:
        break;
    }

    v41 = (*(v37 + 48))(0x6E6F4372656E776FLL, 0xEC00000073676966, v38, v34 | 0x8000000000000000, v36, v37);

    v42 = static TrialUtils.getDirectoryPath(triLevel:)(v41);
    if (v3)
    {
      break;
    }

    v44 = v43;
    if (v43)
    {
      v45 = v42;
      sub_231369100();
      sub_231369EE0();
      v46 = sub_2313698A0();
      v47 = v2;
      v48 = sub_23136A390();

      if (os_log_type_enabled(v46, v48))
      {
        v88 = 0;
        v49 = swift_slowAlloc();
        v98[0] = swift_slowAlloc();
        *v49 = v82.n128_u32[0];
        *(v49 + 4) = sub_2311CFD58(v45, v44, v98);
        *(v49 + 12) = 2080;
        v50 = v96;
        v51 = 0xD00000000000001FLL;
        switch(v35)
        {
          case 0:
            goto LABEL_20;
          case 1:
            v50 = v86;
            goto LABEL_20;
          case 2:
            OUTLINED_FUNCTION_38_3();
            v51 = v63 - 6;
            v50 = v85;
            goto LABEL_20;
          case 3:
            OUTLINED_FUNCTION_38_3();
            v51 = v64 - 5;
            v50 = v84;
LABEL_20:
            v65 = sub_2311CFD58(v51, v50 | 0x8000000000000000, v98);

            *(v49 + 14) = v65;
            _os_log_impl(&dword_2311CB000, v46, v48, "Including config path from trial %s for namespace - %s", v49, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_1();
            MEMORY[0x23192B930]();
            OUTLINED_FUNCTION_6_1();
            MEMORY[0x23192B930]();

            v2 = v83;
            OUTLINED_FUNCTION_51_1();
            v66();
            v10 = v87;
            v3 = v88;
            goto LABEL_21;
          default:
            goto LABEL_34;
        }
      }

      OUTLINED_FUNCTION_51_1();
      v61();
      v2 = v47;
LABEL_21:
      v98[0] = v45;
      v98[1] = v44;
      sub_231369EE0();
      MEMORY[0x23192A730](47, 0xE100000000000000);

      OUTLINED_FUNCTION_56_1();
      sub_2313665C0();

      v34 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126E178(0, *(v34 + 16) + 1, 1, v34);
        v34 = v75;
      }

      v67 = *(v34 + 16);
      if (v67 >= *(v34 + 24) >> 1)
      {
        OUTLINED_FUNCTION_56_1();
        sub_23126E178(v76, v77, v78, v34);
        v34 = v79;
      }

      *(v34 + 16) = v67 + 1;
      v68 = *(v92 + 80);
      OUTLINED_FUNCTION_35_0();
      (*(v70 + 32))(v34 + v69 + *(v70 + 72) * v67, v10);
    }

    else
    {
      sub_231369100();
      v52 = sub_2313698A0();
      v53 = sub_23136A390();
      v54 = OUTLINED_FUNCTION_17_2();
      if (os_log_type_enabled(v54, v55))
      {
        OUTLINED_FUNCTION_17();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v98[0] = v57;
        *v56 = v81.n128_u32[0];
        v58 = v96;
        v59 = v57;
        v60 = 0xD00000000000001FLL;
        switch(v35)
        {
          case 0:
            break;
          case 1:
            v58 = v86;
            break;
          case 2:
            OUTLINED_FUNCTION_38_3();
            v60 = v71 - 6;
            v58 = v85;
            break;
          case 3:
            OUTLINED_FUNCTION_38_3();
            v60 = v72 - 5;
            v58 = v84;
            break;
          default:
LABEL_34:
            JUMPOUT(0);
        }

        v73 = sub_2311CFD58(v60, v58 | 0x8000000000000000, v98);

        *(v56 + 4) = v73;
        _os_log_impl(&dword_2311CB000, v52, v53, "skipping trial owner config %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();

        OUTLINED_FUNCTION_51_1();
        v74();
        v10 = v87;
      }

      else
      {

        OUTLINED_FUNCTION_51_1();
        v62();
      }

      v34 = v102;
    }

    v32 = 1;
    v33 = 1u;
    if (v97)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      return v34;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  return v34;
}

uint64_t sub_2311F34DC()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v0;
  v2 = sub_2313698C0();
  v1[6] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[7] = v3;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_231368D70();
  v1[9] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[10] = v7;
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_62_0();
  v1[12] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2311F35E0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[5];
  OUTLINED_FUNCTION_58_0();
  v6 = OUTLINED_FUNCTION_47_1();
  v7(v6);
  v8 = *MEMORY[0x277D611A0];
  v9 = OUTLINED_FUNCTION_53_2();
  v10(v9);
  LOBYTE(v5) = sub_23131219C();
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_28_0();
  v11(v12);
  (v11)(v2, v3);
  if (v5)
  {
    v13 = v0[8];
    sub_231369100();
    v14 = sub_2313698A0();
    sub_23136A3B0();
    v15 = OUTLINED_FUNCTION_17_2();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_16_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_57(&dword_2311CB000, v17, v18, "attempting to access domain configs without them getting loaded. loadAllOwnerConfigs was not called. Returning empty allOwnersConfigs");
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    v22 = *(v20 + 8);
    v23 = OUTLINED_FUNCTION_28_0();
    v24(v23);
  }

  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[8];
  v28 = *(v0[5] + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnersConfigs);

  v29 = v0[1];

  return v29(v28);
}

uint64_t sub_2311F377C()
{
  OUTLINED_FUNCTION_8();
  v1[53] = v0;
  v2 = sub_231368D70();
  v1[54] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[55] = v3;
  v5 = *(v4 + 64);
  v1[56] = OUTLINED_FUNCTION_62_0();
  v1[57] = swift_task_alloc();
  v6 = sub_2313698C0();
  v1[58] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[59] = v7;
  v9 = *(v8 + 64);
  v1[60] = OUTLINED_FUNCTION_62_0();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2311F38B4()
{
  v108 = v0;
  v1 = v0;
  v2 = v0[65];
  sub_231369100();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_16_1();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2311CB000, v3, v4, "Loading domain configs", v5, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v6 = v0[65];
  v8 = v0[58];
  v7 = v0[59];
  v10 = v1[56];
  v9 = v1[57];
  v11 = v1[54];
  v12 = v1[55];
  v13 = v1[53];

  v104 = *(v7 + 8);
  v104(v6, v8);
  v14 = OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_status;
  swift_beginAccess();
  v15 = v12[2];
  v102 = v14;
  v103 = v13;
  v15(v9, v13 + v14, v11);
  v100 = v12[13];
  v100(v10, *MEMORY[0x277D611A0], v11);
  LOBYTE(v14) = sub_23131219C();
  v16 = v12[1];
  v16(v10, v11);
  v16(v9, v11);
  if ((v14 & 1) == 0)
  {
    v18 = v1[61];
    v19 = v1[53];
    sub_231369100();

    v20 = sub_2313698A0();
    v21 = sub_23136A3A0();

    v22 = os_log_type_enabled(v20, v21);
    v101 = v1[61];
    v23 = v1[58];
    v24 = v1[59];
    if (v22)
    {
      v99 = v1[58];
      v25 = v1[57];
      v96 = v1[54];
      OUTLINED_FUNCTION_17();
      swift_slowAlloc();
      OUTLINED_FUNCTION_43_2();
      v97 = swift_slowAlloc();
      *&v106 = v97;
      *v11 = 136315138;
      v15(v25, v103 + v102, v96);
      v26 = sub_231368D60();
      v28 = v27;
      v16(v25, v96);
      v29 = sub_2311CFD58(v26, v28, &v106);

      *(v11 + 4) = v29;
      _os_log_impl(&dword_2311CB000, v20, v21, "already attempted loading with status - %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v97);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v31 = v99;
      v30 = v101;
    }

    else
    {

      v30 = v101;
      v31 = v23;
    }

    v104(v30, v31);
    goto LABEL_9;
  }

  v17 = v1[53];
  v42 = sub_2311F2D94();
  v43 = v1[64];
  sub_231369100();
  sub_231369EE0();
  v44 = sub_2313698A0();
  v45 = sub_23136A3A0();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v1[64];
  v48 = v1[58];
  v49 = v1[59];
  if (v46)
  {
    OUTLINED_FUNCTION_17();
    swift_slowAlloc();
    OUTLINED_FUNCTION_43_2();
    v50 = swift_slowAlloc();
    *&v106 = v50;
    *v11 = 136315138;
    v51 = sub_231366690();
    v52 = MEMORY[0x23192A860](v42, v51);
    v98 = v48;
    v54 = sub_2311CFD58(v52, v53, &v106);

    *(v11 + 4) = v54;
    _os_log_impl(&dword_2311CB000, v44, v45, "Loading domain configs using %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v55 = v47;
    v56 = v98;
  }

  else
  {

    v55 = v47;
    v56 = v48;
  }

  v104(v55, v56);
  if (*(v42 + 16))
  {
    v57 = *__swift_project_boxed_opaque_existential_1((v1[53] + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnerConfigsLoaderProvider), *(v1[53] + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnerConfigsLoaderProvider + 24));
    sub_231227F0C(v1 + 17);
    v58 = *__swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
    v69 = sub_231228710(v42);
    v70 = v1[63];
    v71 = v1[57];
    v72 = v1[54];
    v73 = v1[55];
    v74 = v1[53];

    v75 = *(v74 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnersConfigs);
    *(v74 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnersConfigs) = v69;

    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 17);
    v100(v71, *MEMORY[0x277D61198], v72);
    OUTLINED_FUNCTION_59_0();
    (*(v73 + 40))(v103 + v102, v71, v72);
    swift_endAccess();
    v76 = sub_231368C80();
    OUTLINED_FUNCTION_10_2(v76);
    v77 = swift_allocObject();
    sub_231368C70();
    OUTLINED_FUNCTION_24_0();
    v78 = type metadata accessor for DefaultTrialCoreAnalyticsLogger();
    OUTLINED_FUNCTION_10_2(v78);
    swift_allocObject();
    v79 = MEMORY[0x277D61160];
    v1[25] = v76;
    v1[26] = v79;
    v1[22] = v77;
    sub_2311CF324((v1 + 22), (v1 + 27));
    sub_231368330();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 22);
    v80 = *__swift_project_boxed_opaque_existential_1((v74 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider), *(v74 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider + 24));
    sub_231343BB8(v1 + 32);
    v81 = v1[35];
    v82 = v1[36];
    __swift_project_boxed_opaque_existential_1(v1 + 32, v81);
    (*(v82 + 56))(&v105, v81, v82);
    v106 = v105;
    v107[0] = 0;
    sub_2313024A8(&v106, 0, v107, 0, 0);

    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 32);
    sub_231369100();
    v83 = sub_2313698A0();
    sub_23136A3A0();
    v84 = OUTLINED_FUNCTION_17_2();
    v86 = os_log_type_enabled(v84, v85);
    v87 = v1[63];
    v88 = v1[58];
    v89 = v1[59];
    if (!v86)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_16_1();
    *swift_slowAlloc() = 0;
    goto LABEL_21;
  }

  v59 = v1[62];
  v60 = v1[57];
  v61 = v1[54];
  v62 = v1[55];

  v100(v60, *MEMORY[0x277D61198], v61);
  OUTLINED_FUNCTION_59_0();
  (*(v62 + 40))(v103 + v102, v60, v61);
  swift_endAccess();
  sub_231369100();
  v83 = sub_2313698A0();
  sub_23136A3A0();
  v63 = OUTLINED_FUNCTION_17_2();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v1[62];
  v67 = v1[58];
  v68 = v1[59];
  if (v65)
  {
    OUTLINED_FUNCTION_16_1();
    *swift_slowAlloc() = 0;
LABEL_21:
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v90, v91, v92, v93, v94, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

LABEL_22:

  v95 = OUTLINED_FUNCTION_28_0();
  (v104)(v95);
LABEL_9:
  v32 = v1[65];
  v33 = v1[63];
  v34 = v1[64];
  v36 = v1[61];
  v35 = v1[62];
  v37 = v1[60];
  v39 = v1[56];
  v38 = v1[57];

  v40 = v1[1];

  return v40();
}

uint64_t sub_2311F432C()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_status;
  v2 = sub_231368D70();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider));
  v4 = *(v0 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnersConfigs);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnerConfigsLoaderProvider));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2311F43BC()
{
  sub_2311F432C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2311F43F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F4480;

  return sub_2311F34DC();
}

uint64_t sub_2311F4480()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_2311F4578()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F4604;

  return sub_2311F377C();
}

uint64_t sub_2311F4604()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2311F4700@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_231368D70();
  OUTLINED_FUNCTION_11(v5);
  return (*(v6 + 16))(a2, v2 + v4);
}

uint64_t sub_2311F477C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D60F98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = type metadata accessor for TrialOwnerConfigProvider(0);
  v10 = sub_2311F4EE0(qword_280F806C0, type metadata accessor for TrialOwnerConfigProvider);
  *v8 = v3;
  v8[1] = sub_2311F93DC;

  return MEMORY[0x2821C6F78](a1, a2, v9, v10);
}

uint64_t sub_2311F487C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2311F48C8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_2311F4950(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2311CFD58(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2311F49AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2311F49F8(a1, a2);
  sub_2311F4B10(&unk_2845F0F20);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2311F49F8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_23136A090())
  {
    result = sub_2311F4BF4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_23136A640();
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
          result = sub_23136A680();
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

uint64_t sub_2311F4B10(uint64_t result)
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

    result = sub_2311F4C64(result, v8, 1, v3);
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

void *sub_2311F4BF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43680, &qword_23136CBC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2311F4C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43680, &qword_23136CBC8);
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

_BYTE **sub_2311F4D58(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_2311F4D68(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_2311F4E34()
{
  v1 = *v0;
  sub_2311F6144();
  *v0 = v2;
}

uint64_t sub_2311F4E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433B0, &unk_23136EDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2311F4EE0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2311F4F24(uint64_t a1)
{
  *(a1 + 16) = sub_2311D5204();
  result = sub_2311F4F54();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_2311F4F54()
{
  result = qword_280F85A48;
  if (!qword_280F85A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A48);
  }

  return result;
}

unint64_t sub_2311F4FAC()
{
  result = qword_27DD433C0;
  if (!qword_27DD433C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD433C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfigSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2311F52DC()
{
  result = sub_231368D70();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2311F53AC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2311F53E4()
{
  result = sub_231368D70();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2311F54B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2311F54F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2311F5564(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2311F55A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2311F571C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_31_1();
  sub_2311F9244(v2, v3, v4, v5, v6, v7, v8, sub_23126F660);
  *v0 = v9;
}

void sub_2311F5764()
{
  v1 = *v0;
  sub_2311F6318();
  *v0 = v2;
}

uint64_t sub_2311F57DC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F65D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F57FC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F66E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F581C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F67F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F583C()
{
  v1 = *v0;
  sub_2311F9064();
  *v0 = v2;
}

size_t sub_2311F5888(size_t a1, int64_t a2, char a3)
{
  result = sub_2311F6908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F59B0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F6BD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F59D0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F6CF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F59F0()
{
  v1 = *v0;
  sub_2311F8AAC();
  *v0 = v2;
}

size_t sub_2311F5AF0(size_t a1, int64_t a2, char a3)
{
  result = sub_2311F6E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5B10(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F709C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F5B30()
{
  v1 = *v0;
  sub_2311F6B10();
  *v0 = v2;
}

size_t sub_2311F5B50(size_t a1, int64_t a2, char a3)
{
  result = sub_2311F71AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5B70(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F7378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F5BD4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_30_1();
  sub_2311F9244(v2, v3, v4, v5, v6, v7, v8, sub_23126F76C);
  *v0 = v9;
}

uint64_t sub_2311F5C74(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F75C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5CD8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F77B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5CF8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F78D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2311F5D18(size_t a1, int64_t a2, char a3)
{
  result = sub_2311F79E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5D38(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F7D10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5D58(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F7E28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2311F5DD0(size_t a1, int64_t a2, char a3)
{
  result = sub_2311F7F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2311F5DF0(size_t a1, int64_t a2, char a3)
{
  result = sub_2311F810C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5E10(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F82D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5E30(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F83F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5E50(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F8508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F5EC8()
{
  v1 = *v0;
  sub_2311F8620();
  *v0 = v2;
}

size_t sub_2311F5F14(size_t a1, int64_t a2, char a3)
{
  result = sub_2311F86D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F5F8C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_32_1();
  sub_2311F9244(v2, v3, v4, v5, v6, v7, v8, sub_23126F92C);
  *v0 = v9;
}

size_t sub_2311F602C(size_t a1, int64_t a2, char a3)
{
  result = sub_2311F88E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F604C()
{
  v1 = *v0;
  sub_2311F8AAC();
  *v0 = v2;
}

uint64_t sub_2311F6098(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F8C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2311F60B8(size_t a1, int64_t a2, char a3)
{
  result = sub_2311F8E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F60D8()
{
  v1 = *v0;
  sub_2311F9064();
  *v0 = v2;
}

uint64_t sub_2311F6124(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2311F911C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F6144()
{
  OUTLINED_FUNCTION_20_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
      v8 = OUTLINED_FUNCTION_63_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_18_5((v9 - 32) / 16);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_5();
        sub_23126F678(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2311F6210()
{
  OUTLINED_FUNCTION_20_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433E0, &qword_23136C900);
      v8 = OUTLINED_FUNCTION_63_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_18_5((v9 - 32) / 8);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_5();
        sub_2311DDD00(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2311F6318()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_20_1();
  if (v3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_12_1();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_19_3();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434B8, &unk_2313706C0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_5_2();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_27_2();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_18_5(v12 / v10);
LABEL_16:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  OUTLINED_FUNCTION_46_0(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_35_0();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_25_2(v17);
    sub_23126F698(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
  }

  OUTLINED_FUNCTION_64_1();
}

void sub_2311F6474()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_20_1();
  if (v3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_12_1();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_19_3();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43618, &unk_231370750);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_5_2();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_27_2();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_18_5(v12 / v10);
LABEL_16:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  OUTLINED_FUNCTION_46_0(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_35_0();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_25_2(v17);
    sub_23126F6C4(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
  }

  OUTLINED_FUNCTION_64_1();
}