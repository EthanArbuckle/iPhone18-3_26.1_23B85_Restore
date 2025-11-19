void sub_2688D8F24(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v12 = sub_268B35044();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2688D9250(1, a1);
  sub_2688D95E0();
  v17 = v16;

  sub_2688D9A20(a2, a3, a4);
  v43 = a1;

  sub_268984794(v17);
  v38 = v15;
  sub_2688D9BB0();

  v18 = sub_2688EFD0C(a4);
  v41 = a6;
  v42 = a5;
  if (v18)
  {
    v19 = v18;
    if (v18 >= 1)
    {
      v20 = 0;
      v21 = MEMORY[0x277D84F90];
      while (1)
      {
        v22 = (a4 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](v20, a4) : *(a4 + 8 * v20 + 32);
        v23 = v22;
        sub_2689841C4();
        v25 = *(v24 + 16);
        v26 = *(v21 + 16);
        if (__OFADD__(v26, v25))
        {
          break;
        }

        v27 = v24;
        if (!swift_isUniquelyReferenced_nonNull_native() || (v28 = *(v21 + 24) >> 1, v28 < v26 + v25))
        {
          sub_268987774();
          v21 = v29;
          v28 = *(v29 + 24) >> 1;
        }

        if (*(v27 + 16))
        {
          v30 = v28 - *(v21 + 16);
          v31 = *(sub_268B37A94() - 8);
          if (v30 < v25)
          {
            goto LABEL_21;
          }

          v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
          v33 = *(v31 + 72);
          swift_arrayInitWithCopy();

          if (v25)
          {
            v34 = *(v21 + 16);
            v35 = __OFADD__(v34, v25);
            v36 = v34 + v25;
            if (v35)
            {
              goto LABEL_22;
            }

            *(v21 + 16) = v36;
          }
        }

        else
        {

          if (v25)
          {
            goto LABEL_20;
          }
        }

        ++v20;

        if (v19 == v20)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    v37 = v38;
    sub_268B34F94();
    v42(v37);
    (*(v39 + 8))(v37, v40);
  }
}

void sub_2688D9250(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B34DE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  if (a1 < 0)
  {
    goto LABEL_29;
  }

  if (a1)
  {
    v11 = *(a2 + 16);
    if (!v11)
    {
LABEL_25:

      return;
    }

    v12 = 0;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v15 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v16 = a2 + v15;
    v17 = *(v13 + 56);
    v38 = v14;
    v39 = v17;
    v34 = (v13 + 16);
    v30 = a2;
    v31 = (v13 + 24);
    v18 = v11 - 1;
    v19 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F90];
    v32 = a1;
    v33 = v13;
    v35 = v15;
    v36 = &v30 - v9;
    while (1)
    {
      v38(v10, v16, v4);
      v21 = *(v20 + 16);
      if (v21 < a1)
      {
        break;
      }

      if (v12 >= v21)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v25 = v39 * v12;
      v38(v37, v20 + v15 + v39 * v12, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = *(v19 + 16);
        sub_26894476C();
        v19 = v41;
      }

      v28 = *(v19 + 16);
      if (v28 >= *(v19 + 24) >> 1)
      {
        sub_26894476C();
        v19 = v41;
      }

      *(v19 + 16) = v28 + 1;
      v15 = v35;
      (*v34)(v19 + v35 + v28 * v39, v37, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2688E1654(v20);
        v20 = v29;
      }

      v10 = v36;
      if (v12 >= *(v20 + 16))
      {
        goto LABEL_28;
      }

      (*v31)(v20 + v15 + v25, v36, v4);
      ++v12;
      a1 = v32;
      if (v12 < v32)
      {
        goto LABEL_20;
      }

      if (!v18)
      {
        goto LABEL_25;
      }

      v12 = 0;
LABEL_24:
      --v18;
      v16 += v39;
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v20;
    if ((v22 & 1) == 0)
    {
      sub_26894476C();
      v20 = v40;
    }

    v23 = *(v20 + 16);
    if (v23 >= *(v20 + 24) >> 1)
    {
      sub_26894476C();
      v20 = v40;
    }

    *(v20 + 16) = v23 + 1;
    v15 = v35;
    v24 = v20 + v35 + v23 * v39;
    v10 = v36;
    (*v34)(v24, v36, v4);
LABEL_20:
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }
}

void sub_2688D95E0()
{
  OUTLINED_FUNCTION_26();
  v39 = v0;
  v40 = v1;
  v37 = v2;
  v38 = v3;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  v7 = 0;
  *(inited + 16) = xmmword_268B3BBB0;
  *(inited + 32) = 0x7473726966;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x646E6F636573;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 64) = 0x6472696874;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x687472756F66;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x6874666966;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = 0x6874786973;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = 0x68746E65766573;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = 0x687468676965;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 160) = 0x68746E696ELL;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x68746E6574;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = 0x68746E6576656C65;
  *(inited + 200) = 0xE800000000000000;
  *(inited + 208) = 0x6874666C657774;
  *(inited + 216) = 0xE700000000000000;
  OUTLINED_FUNCTION_261();
  *(v8 + 224) = v9;
  *(v8 + 232) = 0xEA00000000006874;
  OUTLINED_FUNCTION_261();
  v10[30] = v11;
  v10[31] = v12;
  v10[32] = 0x746E656574666966;
  v10[33] = 0xE900000000000068;
  v10[34] = 0x746E656574786973;
  v10[35] = 0xE900000000000068;
  v10[36] = 0x6565746E65766573;
  v10[37] = 0xEB0000000068746ELL;
  OUTLINED_FUNCTION_261();
  *(v13 + 304) = v14;
  *(v13 + 312) = v15;
  OUTLINED_FUNCTION_261();
  *(v16 + 320) = v17;
  *(v16 + 328) = v18;
  *(v16 + 336) = 0x746569746E657774;
  *(v16 + 344) = v19;
  strcpy((v16 + 352), "twenty first");
  *(v16 + 365) = 0;
  *(v16 + 366) = -5120;
  strcpy((v16 + 368), "twenty second");
  *(v16 + 382) = -4864;
  strcpy((v16 + 384), "twenty third");
  *(v16 + 397) = 0;
  *(v16 + 398) = -5120;
  strcpy((v16 + 400), "twenty fourth");
  *(v16 + 414) = -4864;
  strcpy((v16 + 416), "twenty fifth");
  *(v16 + 429) = 0;
  *(v16 + 430) = -5120;
  v41 = v16;
  v36 = v5;
  v20 = *(v5 + 16);
  v43[0] = 0;
  v21 = MEMORY[0x277D84F90];
  for (i = v20; ; v20 = i)
  {
    if (v20 == v7)
    {
      swift_setDeallocating();
      sub_268ACE684();
      OUTLINED_FUNCTION_23();
      return;
    }

    v22 = sub_268B34DE4();
    OUTLINED_FUNCTION_255(v22);
    v25 = v7;
    sub_2688DC3D0(v36 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v24 + 72) * v7, v43, v41, v20, 0x4C6F546472696874, 0xEB00000000747361, 0x6F54646E6F636573, 0xEC0000007473614CLL, 1953718636, 0xE400000000000000, v37, v38, v39, v40, i, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1], v43[2], v43[3]);
    v27 = *(v26 + 16);
    v28 = *(v21 + 16);
    if (__OFADD__(v28, v27))
    {
      break;
    }

    v29 = v26;
    if (!swift_isUniquelyReferenced_nonNull_native() || v28 + v27 > *(v21 + 24) >> 1)
    {
      sub_268987924();
      v21 = v30;
    }

    if (*(v29 + 16))
    {
      if ((*(v21 + 24) >> 1) - *(v21 + 16) < v27)
      {
        goto LABEL_17;
      }

      swift_arrayInitWithCopy();

      v31 = v25;
      if (v27)
      {
        v32 = *(v21 + 16);
        v33 = __OFADD__(v32, v27);
        v34 = v32 + v27;
        if (v33)
        {
          goto LABEL_18;
        }

        *(v21 + 16) = v34;
      }
    }

    else
    {

      v31 = v25;
      if (v27)
      {
        goto LABEL_16;
      }
    }

    v7 = v31 + 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_2688D9A20(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  result = sub_2688EFD0C(a3);
  v6 = result;
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      return v4;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v14 = OUTLINED_FUNCTION_230();
      result = MEMORY[0x26D625BD0](v14);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      result = *(a3 + 8 * i + 32);
    }

    v8 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = a1();
    v11 = v10;
    sub_268B35754();
    v12 = v8;
    v13 = sub_26894E030(v12);
    (*(v11 + 16))(v13, MEMORY[0x277D5E3B0], *v9, v11);

    MEMORY[0x26D6256C0]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_268B37D14();
    }

    OUTLINED_FUNCTION_115();
    result = sub_268B37D44();
    v4 = v16;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_2688D9BB0()
{
  OUTLINED_FUNCTION_26();
  v85 = v1;
  v86 = v2;
  v83 = v3;
  v84 = v4;
  v82 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B35664();
  v11 = OUTLINED_FUNCTION_1(v10);
  v89 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v72 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v78 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_78();
  v90 = v19;
  OUTLINED_FUNCTION_9();
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v80 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v20, qword_2802CDA10);
  v73 = *(v23 + 16);
  v75 = v28;
  v73(v0);

  v91 = v23;
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();

  v87 = v9;
  v88 = v20;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_238();
    v92[0] = OUTLINED_FUNCTION_237();
    *v31 = 136315394;
    v32 = sub_268B34DE4();
    v33 = MEMORY[0x26D6256F0](v9, v32);
    v35 = sub_26892CDB8(v33, v34, v92);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v36 = sub_268B358E4();
    v37 = MEMORY[0x26D6256F0](v7, v36);
    v39 = sub_26892CDB8(v37, v38, v92);

    *(v31 + 14) = v39;
    v20 = v88;
    _os_log_impl(&dword_2688BB000, v29, v30, "Making disambiguation context with hints: %s and task builders: %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v40 = *(v91 + 8);
  v40(v0, v20);
  sub_268B35034();
  if (sub_2688EFD0C(v7))
  {
    sub_2688DCB78();
    sub_2688DE21C(v7, v41, v42, v43, v44, v45, v46, v47, v40, v72, v73, v75, v78, v80, v82, v83, v84, v85, v86, v87);
    v74(v81, v76, v20);
    v48 = v89;
    v49 = *(v89 + 16);
    v50 = OUTLINED_FUNCTION_179();
    (v49)(v50);
    swift_unknownObjectRetain();
    v51 = sub_268B37A34();
    v52 = sub_268B37F04();
    swift_unknownObjectRelease();
    v77 = v52;
    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_238();
      v92[0] = OUTLINED_FUNCTION_237();
      *v53 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5750, &unk_268B3BDA0);
      v54 = sub_268B37C24();
      v55 = v10;
      v57 = sub_26892CDB8(v54, v56, v92);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      OUTLINED_FUNCTION_268();
      v49();
      v58 = sub_268B37C24();
      v60 = v59;
      v61 = *(v89 + 8);
      v61(v79, v55);
      v10 = sub_26892CDB8(v58, v60, v92);
      v62 = v49;

      *(v53 + 14) = v10;
      _os_log_impl(&dword_2688BB000, v51, v77, "Including SystemGaveOptions in context update: %s, NLUSysteamDialogAct: %s", v53, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      v48 = v89;
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();

      v71(v81, v88);
    }

    else
    {

      v61 = *(v89 + 8);
      v62 = v49;
      v61(v79, v10);
      v71(v81, v88);
      v55 = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62C0, &unk_268B3BD90);
    v63 = *(v48 + 72);
    v64 = *(v48 + 80);
    v65 = OUTLINED_FUNCTION_300();
    *(v65 + 16) = xmmword_268B3BBC0;
    (v62)(v65 + v10, v90, v55);
    sub_268B34FB4();
    swift_unknownObjectRelease();
    v61(v90, v55);
  }

  v66 = *v82;
  v67 = *v83;

  sub_268B34FF4();
  sub_268B34FD4();
  v68 = *v84;

  sub_268B34FE4();
  v69 = *v85;

  sub_268B35014();
  v70 = *v86;

  sub_268B35004();

  sub_268B34FA4();
  sub_268B34FC4();
  OUTLINED_FUNCTION_23();
}

void sub_2688DA200()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v65 = v3;
  OUTLINED_FUNCTION_232();
  v4 = sub_268B35664();
  v5 = OUTLINED_FUNCTION_1(v4);
  v62 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v53 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v58 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_78();
  v63 = v13;
  OUTLINED_FUNCTION_9();
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v64 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v14, qword_2802CDA10);
  v54 = *(v17 + 16);
  v56 = v22;
  v54(v0);

  v23 = sub_268B37A34();
  v24 = sub_268B37F04();

  v61 = v17;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_238();
    v66 = OUTLINED_FUNCTION_237();
    *v25 = 136315394;
    v26 = sub_268B34DE4();
    v27 = MEMORY[0x26D6256F0](v65, v26);
    v59 = v14;
    v29 = sub_26892CDB8(v27, v28, &v66);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = sub_268B358E4();
    v31 = MEMORY[0x26D6256F0](v2, v30);
    v33 = sub_26892CDB8(v31, v32, &v66);

    *(v25 + 14) = v33;
    v14 = v59;
    _os_log_impl(&dword_2688BB000, v23, v24, "Making disambiguation context with hints: %s and task builders: %s", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    v17 = v61;
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v34 = *(v17 + 8);
  v34(v0, v14);
  sub_268B35034();
  if (sub_2688EFD0C(v2))
  {
    sub_2688DD628(v2);
    sub_2688DEBF4(v2, v63);
    (v54)(v64, v56, v14);
    v35 = v62;
    v57 = *(v62 + 16);
    v57(v58, v63, v4);
    swift_unknownObjectRetain();
    v36 = sub_268B37A34();
    v37 = sub_268B37F04();
    swift_unknownObjectRelease();
    v55 = v37;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_238();
      v52 = OUTLINED_FUNCTION_237();
      v66 = v52;
      *v38 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5750, &unk_268B3BDA0);
      v39 = sub_268B37C24();
      v60 = v14;
      v40 = v4;
      v42 = sub_26892CDB8(v39, v41, &v66);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v57(v53, v58, v4);
      sub_268B37C24();
      v43 = OUTLINED_FUNCTION_289(v62);
      v58(v43, v4);
      v44 = OUTLINED_FUNCTION_100();
      v47 = sub_26892CDB8(v44, v45, v46);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_2688BB000, v36, v55, "Including SystemGaveOptions in context update: %s, NLUSysteamDialogAct: %s", v38, 0x16u);
      v4 = v52;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      v35 = v62;
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();

      v34(v64, v60);
    }

    else
    {

      v48 = OUTLINED_FUNCTION_289(v62);
      v58(v48, v4);
      v34(v64, v14);
      v40 = v4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62C0, &unk_268B3BD90);
    v49 = *(v35 + 72);
    v50 = *(v35 + 80);
    v51 = OUTLINED_FUNCTION_300();
    *(v51 + 16) = xmmword_268B3BBC0;
    v57((v51 + v4), v63, v40);
    sub_268B34FB4();
    swift_unknownObjectRelease();
    v58(v63, v40);
  }

  OUTLINED_FUNCTION_189();
  sub_268B34FF4();
  sub_268B34FD4();

  sub_268B34FE4();

  sub_268B35014();

  sub_268B35004();

  sub_268B34FA4();
  sub_268B34FC4();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688DA838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = 0xD000000000000013;
  v7[4] = 0x8000000268B56E90;
  v7[5] = 0xD000000000000025;
  v7[6] = 0x8000000268B56EB0;
  v7[7] = 0xD000000000000017;
  v7[8] = 0x8000000268B56F00;
  v7[9] = 0xD000000000000029;
  v7[10] = 0x8000000268B56710;
  v7[11] = v6;
  v7[12] = 0xD00000000000001ELL;
  v7[13] = 0x8000000268B56F20;
  v7[14] = 0xD000000000000030;
  v7[15] = 0x8000000268B56740;
  v7[16] = 0xD000000000000012;
  v7[17] = 0x8000000268B56EE0;
  v7[18] = 0xD000000000000024;
  v7[19] = 0x8000000268B566E0;
  v7[20] = a3;
  v7[21] = a4;
  v15 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2688E19C0;
  *(v8 + 24) = v7;
  v13 = &v15;
  v14 = a2;

  sub_268997240("encodeRouteIds", 14, 2, 0, sub_2688E19C4, v8, sub_2688E19F0, v12);
}

uint64_t sub_2688DAA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = 0xD000000000000013;
  v7[4] = 0x8000000268B56E90;
  v7[5] = 0xD000000000000025;
  v7[6] = 0x8000000268B56EB0;
  v7[7] = 0xD000000000000017;
  v7[8] = 0x8000000268B56F00;
  v7[9] = 0xD000000000000029;
  v7[10] = 0x8000000268B56710;
  v7[11] = v6;
  v7[12] = 0xD00000000000001ELL;
  v7[13] = 0x8000000268B56F20;
  v7[14] = 0xD000000000000030;
  v7[15] = 0x8000000268B56740;
  v7[16] = 0xD000000000000012;
  v7[17] = 0x8000000268B56EE0;
  v7[18] = 0xD000000000000024;
  v7[19] = 0x8000000268B566E0;
  v7[20] = a3;
  v7[21] = a4;
  v15 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2688EA324;
  *(v8 + 24) = v7;
  v13 = &v15;
  v14 = a2;

  sub_268997240("encodeRouteIds", 14, 2, 0, sub_2688EA334, v8, sub_2688EA0F4, v12);
}

uint64_t sub_2688DAC90()
{
  v0 = type metadata accessor for MediaIntent();
  OUTLINED_FUNCTION_242(*(v0 + 76));
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_2688DACC0()
{
  v0 = type metadata accessor for SettingsIntent();
  OUTLINED_FUNCTION_242(*(v0 + 80));
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_2688DACF4()
{
  v0 = type metadata accessor for MediaPlayerIntent();
  OUTLINED_FUNCTION_242(*(v0 + 92));
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_2688DAD2C()
{
  OUTLINED_FUNCTION_232();
  v0 = *(type metadata accessor for MediaIntent() + 80);
  return OUTLINED_FUNCTION_323();
}

uint64_t sub_2688DAD90()
{
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53();
  }

  type metadata accessor for MediaNLv3Intent();
  OUTLINED_FUNCTION_114();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DAE28()
{
  OUTLINED_FUNCTION_232();
  v0 = *(type metadata accessor for MediaPlayerIntent() + 96);
  return OUTLINED_FUNCTION_323();
}

uint64_t sub_2688DAE64()
{
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53();
  }

  type metadata accessor for SettingNLv3Intent();
  OUTLINED_FUNCTION_113();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DAEFC()
{
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_112();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DB014()
{
  OUTLINED_FUNCTION_232();
  v0 = *(type metadata accessor for SettingsIntent() + 88);
  return OUTLINED_FUNCTION_323();
}

uint64_t sub_2688DB050()
{
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52();
  }

  type metadata accessor for MediaNLv3Intent();
  OUTLINED_FUNCTION_114();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DB0E8()
{
  OUTLINED_FUNCTION_232();
  v0 = *(type metadata accessor for MediaPlayerIntent() + 100);
  return OUTLINED_FUNCTION_323();
}

uint64_t sub_2688DB124()
{
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52();
  }

  type metadata accessor for SettingNLv3Intent();
  OUTLINED_FUNCTION_113();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DB1BC()
{
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_112();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

void sub_2688DB254(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v40 = v13;
  v14 = sub_2688EFD0C(a3);
  v41 = v8;
  if (v14)
  {
    v15 = v14;
    v43[0] = MEMORY[0x277D84F90];

    sub_26894470C();
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v37 = v12;
    v38 = v9;
    v39 = a4;
    v16 = 0;
    v17 = v43[0];
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D625BD0](v16, a3);
      }

      else
      {
        v18 = *(a3 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = sub_26892D418(v18);
      v22 = v21;

      if (v22)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }

      if (!v22)
      {
        v22 = 0xE000000000000000;
      }

      v43[0] = v17;
      v24 = *(v17 + 16);
      if (v24 >= *(v17 + 24) >> 1)
      {
        sub_26894470C();
        v17 = v43[0];
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v23;
      *(v25 + 40) = v22;
    }

    while (v15 != v16);
    v9 = v38;
    a4 = v39;
    v8 = v41;
    v12 = v37;
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v9 + 16))(v12, v26, v8);
  sub_2688E4594(a4, v43);
  v27 = sub_268B37A34();
  v28 = sub_268B37EC4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 136315138;
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    swift_getDynamicType();
    v31 = sub_268B385B4();
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    v34 = sub_26892CDB8(v31, v33, &v42);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_2688BB000, v27, v28, "Encoding routeIds Using encryption provider: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x26D6266E0](v30, -1, -1);
    MEMORY[0x26D6266E0](v29, -1, -1);

    (*(v9 + 8))(v12, v41);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    (*(v9 + 8))(v12, v8);
  }

  v35 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_268B375A4();
}

void sub_2688DB634()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_191();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_151();
  sub_2688E451C();
  v15 = sub_268B37DB4();
  v16 = OUTLINED_FUNCTION_162();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_2688C058C(v0, &unk_2802A6460, &qword_268B3BE08);
  }

  else
  {
    sub_268B37DA4();
    OUTLINED_FUNCTION_70(v15);
    v20 = *(v19 + 8);
    v21 = OUTLINED_FUNCTION_190();
    v22(v21);
  }

  v24 = *(v2 + 16);
  v23 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v24)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2688C058C(v6, &unk_2802A6460, &qword_268B3BE08);
    v26 = swift_allocObject();
    *(v26 + 16) = v4;
    *(v26 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_268B37D84();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_268B37C44();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = v2;

  swift_task_create();

  sub_2688C058C(v6, &unk_2802A6460, &qword_268B3BE08);

LABEL_9:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688DB8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](sub_2688DB910, 0, 0);
}

uint64_t sub_2688DB910()
{
  OUTLINED_FUNCTION_158();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *(v1 + 16) = *(v0 + 64);
  v2 = *(MEMORY[0x277D5C200] + 4);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57E0, &qword_268B3BE58);
  *v3 = v0;
  v3[1] = sub_2688DB9EC;

  return MEMORY[0x2821BBDF0](v0 + 16, &unk_268B3BE50, v1, v4);
}

uint64_t sub_2688DB9EC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_89();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_2688DBAF4, 0, 0);
}

uint64_t sub_2688DBAF4()
{
  OUTLINED_FUNCTION_158();
  v1 = *(v0 + 88);
  (*(v0 + 80))(v0 + 16);
  sub_2688C058C(v0 + 16, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_222();

  return v2();
}

uint64_t sub_2688DBB6C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2688EA0F0;

  return v7(a1);
}

uint64_t sub_2688DBC64(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959E70;
  v4 = type metadata accessor for ResumeMediaIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959E50);
}

uint64_t sub_2688DBD60(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959E18;
  v4 = type metadata accessor for PauseMediaIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959DF8);
}

uint64_t sub_2688DBE5C(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959F20;
  v4 = type metadata accessor for SkipTimeIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959F00);
}

uint64_t sub_2688DBF58(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959F78;
  v4 = type metadata accessor for SkipContentIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959F58);
}

uint64_t sub_2688DC054(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959FD0;
  v4 = type metadata accessor for SetRepeatStateIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959FB0);
}

uint64_t sub_2688DC150(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_28795A028;
  v4 = type metadata accessor for SetShuffleStateIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_28795A008);
}

uint64_t sub_2688DC24C(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959EC8;
  v4 = type metadata accessor for SeekTimeIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959EA8);
}

id sub_2688DC348(uint64_t a1)
{
  v2 = v1;
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v4 = sub_268B38054();
  v5 = OUTLINED_FUNCTION_216();
  [v5 v6];

  return [v2 setDevice_];
}

void sub_2688DC3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_197();
  v122[3] = v28;
  v122[1] = v29;
  v122[2] = v30;
  v122[0] = v31;
  v134 = v32;
  v34 = v33;
  v128 = v35;
  v36 = sub_268B34DE4();
  v37 = OUTLINED_FUNCTION_1(v36);
  v132 = v38;
  v133 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v125 = v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v124 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  v123 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_78();
  v126 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5798, &qword_268B3BDE0);
  v49 = OUTLINED_FUNCTION_22(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_201();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_132();
  MEMORY[0x28223BE20](v53);
  v55 = v122 - v54;
  v56 = sub_268B34EA4();
  v57 = OUTLINED_FUNCTION_1(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_78();
  v135 = v64;
  sub_268B34DD4();
  v65 = OUTLINED_FUNCTION_257();
  if (__swift_getEnumTagSinglePayload(v65, v66, v56) == 1)
  {
    sub_268B34DB4();
    v67 = OUTLINED_FUNCTION_257();
    if (__swift_getEnumTagSinglePayload(v67, v68, v56) != 1)
    {
      sub_2688C058C(v26, &qword_2802A5798, &qword_268B3BDE0);
    }
  }

  else
  {
    (*(v59 + 32))(v55, v26, v56);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v56);
  }

  if (__swift_getEnumTagSinglePayload(v55, 1, v56) != 1)
  {
    v130 = a25;
    v131 = a26;
    v129 = a23;
    (*(v59 + 32))(v135, v55, v56);
    v72 = v128;
    v73 = *v128;
    v74 = *v128 < *(v34 + 16);
    v127 = a24;
    if (v74)
    {
      if (v73 < 0)
      {
        goto LABEL_35;
      }

      v75 = v34 + 16 * v73;
      v77 = *(v75 + 32);
      v76 = *(v75 + 40);

      sub_268B34E94();
      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_51();
      sub_268B34E64();

      OUTLINED_FUNCTION_278();
      sub_268B34E74();
      OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_51();
      sub_268B34E84();
      v78 = *(v59 + 16);
      v78(v27, v135, v56);
      v79 = OUTLINED_FUNCTION_54();
      (v78)(v79);
      OUTLINED_FUNCTION_324();

      v80 = *(v59 + 8);
      v81 = OUTLINED_FUNCTION_97();
      v82(v81);
      sub_268987924();
      v88 = v83;
      v55 = *(v83 + 16);
      v84 = *(v83 + 24);
      OUTLINED_FUNCTION_272();
      if (v85)
      {
        goto LABEL_36;
      }

      goto LABEL_10;
    }

    v88 = MEMORY[0x277D84F90];
    while (1)
    {
      if (__OFSUB__(v134, 3))
      {
        __break(1u);
      }

      else
      {
        v89 = *v72;
        if (*v72 == v134 - 3)
        {
          sub_268B34E94();
          OUTLINED_FUNCTION_118();
          OUTLINED_FUNCTION_51();
          sub_268B34E64();

          sub_268B34E74();
          OUTLINED_FUNCTION_126();
          OUTLINED_FUNCTION_51();
          sub_268B34E84();
          v90 = OUTLINED_FUNCTION_90();
          (v55)(v90);
          v91 = OUTLINED_FUNCTION_54();
          (v55)(v91);
          OUTLINED_FUNCTION_324();
          v92 = *(v59 + 8);
          v93 = OUTLINED_FUNCTION_97();
          v94(v93);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = *(v88 + 16);
            OUTLINED_FUNCTION_88();
            sub_268987924();
            v88 = v114;
          }

          v55 = *(v88 + 16);
          v95 = *(v88 + 24);
          OUTLINED_FUNCTION_272();
          if (v85)
          {
            OUTLINED_FUNCTION_111();
            sub_268987924();
            v88 = v115;
          }

          v96 = OUTLINED_FUNCTION_46();
          v97(v96, v123);
          v89 = *v72;
        }

        if (v89 == v134 - 2)
        {
          sub_268B34E94();
          OUTLINED_FUNCTION_118();
          OUTLINED_FUNCTION_51();
          sub_268B34E64();

          sub_268B34E74();
          OUTLINED_FUNCTION_126();
          OUTLINED_FUNCTION_51();
          sub_268B34E84();
          v98 = OUTLINED_FUNCTION_90();
          (v55)(v98);
          v99 = OUTLINED_FUNCTION_54();
          (v55)(v99);
          OUTLINED_FUNCTION_324();
          v100 = *(v59 + 8);
          v101 = OUTLINED_FUNCTION_97();
          v102(v101);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = *(v88 + 16);
            OUTLINED_FUNCTION_88();
            sub_268987924();
            v88 = v117;
          }

          v55 = *(v88 + 16);
          v103 = *(v88 + 24);
          OUTLINED_FUNCTION_272();
          if (v85)
          {
            OUTLINED_FUNCTION_111();
            sub_268987924();
            v88 = v118;
          }

          v104 = OUTLINED_FUNCTION_46();
          v105(v104, v124);
          v89 = *v72;
        }

        if (v89 == v134 - 1)
        {
          sub_268B34E94();
          OUTLINED_FUNCTION_118();
          OUTLINED_FUNCTION_51();
          sub_268B34E64();

          OUTLINED_FUNCTION_122();
          sub_268B34E74();
          OUTLINED_FUNCTION_126();
          OUTLINED_FUNCTION_51();
          sub_268B34E84();
          v106 = OUTLINED_FUNCTION_90();
          a22(v106);
          v107 = OUTLINED_FUNCTION_54();
          a22(v107);
          OUTLINED_FUNCTION_324();
          v109 = *(v59 + 8);
          v59 += 8;
          v108 = v109;
          v110 = OUTLINED_FUNCTION_97();
          (v109)(v110);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = *(v88 + 16);
            OUTLINED_FUNCTION_88();
            sub_268987924();
            v88 = v120;
          }

          v55 = *(v88 + 16);
          v72 = v128;
          if (v55 >= *(v88 + 24) >> 1)
          {
            OUTLINED_FUNCTION_111();
            sub_268987924();
            v88 = v121;
          }

          v108(v135, v56);
          *(v88 + 16) = v55 + 1;
          (*(v132 + 32))(v88 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v55, v125, v133);
        }

        else
        {
          v111 = *(v59 + 8);
          v59 += 8;
          v111(v135, v56);
        }

        if (!__OFADD__(*v72, 1))
        {
          ++*v72;
          OUTLINED_FUNCTION_198();
          return;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      OUTLINED_FUNCTION_111();
      sub_268987924();
      v88 = v112;
LABEL_10:
      v86 = OUTLINED_FUNCTION_46();
      v87(v86, v126);
    }
  }

  sub_2688C058C(v55, &qword_2802A5798, &qword_268B3BDE0);
  sub_268B38284();
  __break(1u);
}

void sub_2688DCB78()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B357A4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_98();
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v112 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_201();
  MEMORY[0x28223BE20](v18);
  v20 = &v97 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_74();
  v118 = v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  v26 = OUTLINED_FUNCTION_4(v105);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v117 = v29;
  OUTLINED_FUNCTION_8();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v97 - v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v34);
  v35 = MEMORY[0x277D84F90];
  v125 = MEMORY[0x277D84F90];
  v108 = v3;
  v36 = sub_2688EFD0C(v3);
  v102 = v13;
  v101 = v20;
  if (v36)
  {
    v100 = v36 - 1;
    if (v36 < 1)
    {
      __break(1u);
      return;
    }

    v113 = v36;
    v116 = v33;
    v106 = v1;
    v99 = v0;
    v37 = 0;
    v115 = v108 & 0xC000000000000001;
    v104 = v108 + 32;
    v119 = (v13 + 8);
    v120 = (v13 + 16);
    v98 = v7 + 32;
    v103 = MEMORY[0x277D84F90];
    v97 = v7 + 8;
    *(&v38 + 1) = 3;
    v114 = xmmword_268B3BBA0;
    *&v38 = 136315138;
    v109 = v38;
    v111 = v10;
    v110 = v4;
    v39 = v107;
    do
    {
      v40 = v37;
      v41 = v112;
      while (1)
      {
        if (v115)
        {
          v42 = MEMORY[0x26D625BD0](v40, v108);
        }

        else
        {
          v42 = *(v104 + 8 * v40);
        }

        OUTLINED_FUNCTION_96();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v46 = swift_allocObject();
        *(v46 + 16) = v114;
        *(v46 + 32) = v42;
        sub_268B35BD4();
        v47 = v39;
        v48 = v118;
        OUTLINED_FUNCTION_96();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
        v121 = v42;

        v53 = OUTLINED_FUNCTION_138();
        MEMORY[0x26D623520](v53);

        sub_2688C058C(v48, &unk_2802A62D0, &qword_268B3EDD0);
        v54 = v116;
        sub_268B36604();
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v55, v56, v57, v4);
        swift_beginAccess();
        sub_2688E1A30(v54, v47);
        v58 = v117;
        v39 = v47;
        swift_beginAccess();
        sub_2688E451C();
        v59 = OUTLINED_FUNCTION_162();
        OUTLINED_FUNCTION_135(v59, v60, v4);
        if (!v61)
        {
          break;
        }

        sub_2688C058C(v58, &qword_2802A5770, &unk_268B3BDC0);
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
        (*v120)(v41);
        v62 = sub_268B37A34();
        v63 = sub_268B37EE4();
        if (os_log_type_enabled(v62, v63))
        {
          OUTLINED_FUNCTION_68();
          v64 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v65 = swift_slowAlloc();
          v122 = v65;
          *v64 = v109;
          v66 = sub_268B38094();
          v68 = sub_26892CDB8(v66, v67, &v122);

          *(v64 + 4) = v68;
          v4 = v110;
          _os_log_impl(&dword_2688BB000, v62, v63, "Unable to serialize protoGraph: %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v65);
          v41 = v112;
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0](v69, v70);
          v10 = v111;
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0](v71, v72);
        }

        else
        {
        }

        (*v119)(v41, v10);
        sub_2688C058C(v39, &qword_2802A5770, &unk_268B3BDC0);
        if (v113 == ++v40)
        {
          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_146(&v124);
      v73 = v99;
      v74(v99, v58, v4);
      sub_2688EA03C(0, &qword_2802A62F0, 0x277D5F608);
      v75 = OUTLINED_FUNCTION_186();
      v76 = MEMORY[0x26D6259D0](v75);
      v77 = objc_allocWithZone(MEMORY[0x277D5F5E0]);
      v103 = [v77 initWithTask_];

      MEMORY[0x26D6256C0]();
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      v37 = v40 + 1;
      sub_268B37D44();

      OUTLINED_FUNCTION_146(&v123);
      v78(v73, v4);
      v103 = v125;
      sub_2688C058C(v39, &qword_2802A5770, &unk_268B3BDC0);
    }

    while (v100 != v40);
  }

  else
  {
    v103 = v35;
  }

LABEL_22:
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
  OUTLINED_FUNCTION_152();
  v79(v101);
  v80 = v103;

  v81 = sub_268B37A34();
  v82 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v82))
  {
    OUTLINED_FUNCTION_68();
    v83 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v122 = swift_slowAlloc();
    *v83 = 136315138;
    sub_2688EA03C(0, &unk_2802A5780, 0x277D5F5E0);
    OUTLINED_FUNCTION_246();
    v86 = sub_26892CDB8(v84, v85, &v122);

    *(v83 + 4) = v86;

    OUTLINED_FUNCTION_247();
    OUTLINED_FUNCTION_204(v87, v88, v89, v90);
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v91 = OUTLINED_FUNCTION_134();
    v92(v91);
  }

  else
  {

    v93 = OUTLINED_FUNCTION_134();
    v94(v93);
  }

  if (v80 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5778, &unk_268B3BDD0);
    OUTLINED_FUNCTION_148();
    sub_268B38294();
  }

  else
  {
    sub_268B38454();
  }

  v95 = objc_allocWithZone(MEMORY[0x277D5F590]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5778, &unk_268B3BDD0);
  OUTLINED_FUNCTION_148();
  v96 = sub_268B37CE4();

  [v95 initWithChoices_];

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688DD628(uint64_t a1)
{
  v2 = sub_268B357A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v71 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v87 = &v67 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  v9 = *(*(v76 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v76);
  v86 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v88 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v77 = &v67 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v67 - v24;
  v26 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  v78 = a1;
  result = sub_2688EFD0C(a1);
  v73 = v18;
  v72 = v25;
  if (result)
  {
    v70 = result - 1;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v28 = result;
    v29 = v18;
    v30 = 0;
    v84 = v78 & 0xC000000000000001;
    v75 = v78 + 32;
    v89 = (v29 + 8);
    v90 = (v29 + 16);
    v69 = (v3 + 32);
    v74 = MEMORY[0x277D84F90];
    v68 = (v3 + 8);
    *(&v31 + 1) = 3;
    v83 = xmmword_268B3BBA0;
    *&v31 = 136315138;
    v79 = v31;
    v82 = v17;
    v81 = v2;
    v85 = v14;
    v91 = v16;
    v80 = result;
    do
    {
      v32 = v30;
      while (1)
      {
        if (v84)
        {
          v33 = MEMORY[0x26D625BD0](v32, v78);
        }

        else
        {
          v33 = *(v75 + 8 * v32);
        }

        __swift_storeEnumTagSinglePayload(v16, 1, 1, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v34 = swift_allocObject();
        *(v34 + 16) = v83;
        *(v34 + 32) = v33;
        v35 = sub_268B35BD4();
        v36 = v16;
        v37 = v87;
        __swift_storeEnumTagSinglePayload(v87, 1, 1, v35);
        v92 = v33;

        MEMORY[0x26D623520](v34, v37);

        sub_2688C058C(v37, &unk_2802A62D0, &qword_268B3EDD0);
        sub_268B36604();
        __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
        swift_beginAccess();
        sub_2688E1A30(v14, v36);
        v38 = v86;
        swift_beginAccess();
        sub_2688E451C();
        if (__swift_getEnumTagSinglePayload(v38, 1, v2) != 1)
        {
          break;
        }

        sub_2688C058C(v38, &qword_2802A5770, &unk_268B3BDC0);
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v39 = __swift_project_value_buffer(v17, qword_2802CDA10);
        v40 = v88;
        (*v90)(v88, v39, v17);
        v41 = sub_268B37A34();
        v42 = sub_268B37EE4();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v93 = v44;
          *v43 = v79;
          v45 = v91;
          v46 = sub_268B38094();
          v48 = sub_26892CDB8(v46, v47, &v93);

          *(v43 + 4) = v48;
          v2 = v81;
          v49 = v42;
          v16 = v45;
          v28 = v80;
          v50 = v88;
          _os_log_impl(&dword_2688BB000, v41, v49, "Unable to serialize protoGraph: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v44);
          MEMORY[0x26D6266E0](v44, -1, -1);
          v51 = v43;
          v17 = v82;
          MEMORY[0x26D6266E0](v51, -1, -1);

          (*v89)(v50, v17);
          v52 = v16;
        }

        else
        {

          (*v89)(v40, v17);
          v16 = v91;
          v52 = v91;
        }

        sub_2688C058C(v52, &qword_2802A5770, &unk_268B3BDC0);
        ++v32;
        v14 = v85;
        if (v28 == v32)
        {
          goto LABEL_21;
        }
      }

      v53 = v71;
      (*v69)(v71, v38, v2);
      sub_2688EA03C(0, &qword_2802A62F0, 0x277D5F608);
      v54 = MEMORY[0x26D6259D0](v53);
      v74 = [objc_allocWithZone(MEMORY[0x277D5F5E0]) initWithTask_];

      MEMORY[0x26D6256C0]();
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      v30 = v32 + 1;
      sub_268B37D44();

      (*v68)(v53, v2);
      v74 = v94;
      v16 = v91;
      sub_2688C058C(v91, &qword_2802A5770, &unk_268B3BDC0);
      v14 = v85;
    }

    while (v70 != v32);
  }

  else
  {
    v74 = v26;
  }

LABEL_21:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v56 = v73;
  v57 = v72;
  (*(v73 + 16))(v72, v55, v17);
  v58 = v74;

  v59 = sub_268B37A34();
  v60 = sub_268B37F04();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v93 = v62;
    *v61 = 136315138;
    v63 = sub_2688EA03C(0, &unk_2802A5780, 0x277D5F5E0);
    v64 = MEMORY[0x26D6256F0](v58, v63);
    v66 = sub_26892CDB8(v64, v65, &v93);

    *(v61 + 4) = v66;
    v58 = v74;

    _os_log_impl(&dword_2688BB000, v59, v60, "uso disambiguate among: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    MEMORY[0x26D6266E0](v62, -1, -1);
    MEMORY[0x26D6266E0](v61, -1, -1);

    (*(v56 + 8))(v57, v17);
  }

  else
  {

    (*(v56 + 8))(v57, v17);
  }

  if (v58 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5778, &unk_268B3BDD0);
    sub_268B38294();
  }

  else
  {
    sub_268B38454();
  }

  sub_2688EA03C(0, &qword_2802A5A58, 0x277D5F590);
  return sub_2688DF798();
}

void sub_2688DE21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_268B35694();
  v29 = OUTLINED_FUNCTION_1(v28);
  v150 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v34);
  v175 = sub_268B35614();
  v35 = OUTLINED_FUNCTION_1(v175);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v164 = v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_78();
  v174 = v42;
  OUTLINED_FUNCTION_9();
  v176 = sub_268B355B4();
  v43 = OUTLINED_FUNCTION_1(v176);
  v166 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v173 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_78();
  v172 = v49;
  OUTLINED_FUNCTION_9();
  v179 = sub_268B35504();
  v50 = OUTLINED_FUNCTION_1(v179);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  v163 = v55;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_78();
  v171 = v57;
  OUTLINED_FUNCTION_9();
  v147 = sub_268B37A54();
  v58 = OUTLINED_FUNCTION_1(v147);
  v146[2] = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v66);
  v68 = v146 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5760, &unk_268B3BDB0);
  v70 = OUTLINED_FUNCTION_22(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_132();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_78();
  v165 = v75;
  v177 = v25;
  v76 = sub_2688EFD0C(v25);
  v152 = v28;
  v151 = v27;
  if (v76)
  {
    if (v76 < 1)
    {
      __break(1u);
      return;
    }

    v77 = 0;
    v78 = 0;
    v169 = v177 & 0xC000000000000001;
    v160 = v52 + 32;
    v159 = v52 + 16;
    v158 = v37 + 16;
    v157 = v166 + 16;
    v156 = v37 + 8;
    v155 = v166 + 8;
    v154 = v52 + 8;
    v153 = v166 + 32;
    v79 = MEMORY[0x277D84F90];
    v168 = xmmword_268B3BBA0;
    v80 = v165;
    v162 = v68;
    v161 = v20;
    v170 = v76;
    do
    {
      v178 = v79;
      if (v169)
      {
        v81 = MEMORY[0x26D625BD0](v77, v177);
      }

      else
      {
        v81 = *(v177 + 8 * v77 + 32);
      }

      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v179);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v85 = swift_allocObject();
      *(v85 + 16) = v168;
      *(v85 + 32) = v81;
      sub_268B35BD4();
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);

      v90 = OUTLINED_FUNCTION_103();
      MEMORY[0x26D623520](v90);

      sub_2688C058C(v68, &unk_2802A62D0, &qword_268B3EDD0);
      sub_268B35BE4();
      v91 = sub_268B35C44();
      OUTLINED_FUNCTION_245(v91);
      OUTLINED_FUNCTION_229();
      sub_268B35C34();
      sub_268B356B4();
      if (v78)
      {

        v78 = 0;
      }

      else
      {
        sub_2688C058C(v80, &unk_2802A5760, &unk_268B3BDB0);

        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v92, v93, v94, v179);
        sub_2688E43D8();
      }

      sub_2688E451C();
      v95 = OUTLINED_FUNCTION_257();
      OUTLINED_FUNCTION_135(v95, v96, v179);
      if (v97)
      {
        sub_2688C058C(v80, &unk_2802A5760, &unk_268B3BDB0);

        sub_2688C058C(v21, &unk_2802A5760, &unk_268B3BDB0);
        v79 = v178;
        v98 = v170;
      }

      else
      {
        OUTLINED_FUNCTION_146(&a17);
        v99 = v21;
        v100(v171, v21, v179);
        v101 = v172;
        sub_268B355A4();
        sub_268B35604();
        OUTLINED_FUNCTION_146(&a16);
        v102 = OUTLINED_FUNCTION_138();
        v103(v102);
        sub_268B355F4();
        OUTLINED_FUNCTION_146(&a15);
        v104 = OUTLINED_FUNCTION_228();
        v105(v104);
        sub_268B35594();
        OUTLINED_FUNCTION_146(&a14);
        v106(v173, v101, v176);
        v107 = v178;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v167 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v119 = *(v107 + 16);
          OUTLINED_FUNCTION_88();
          sub_26898784C();
          v107 = v120;
        }

        v110 = *(v107 + 16);
        v109 = *(v107 + 24);
        v111 = v107;
        OUTLINED_FUNCTION_272();
        if (v112)
        {
          sub_26898784C();
          v111 = v121;
        }

        OUTLINED_FUNCTION_146(&a13);
        v113(v174, v175);
        v114 = v166;
        v115 = v176;
        (*(v166 + 8))(v172, v176);
        OUTLINED_FUNCTION_146(&a11);
        v116(v171, v179);
        v80 = v165;
        sub_2688C058C(v165, &unk_2802A5760, &unk_268B3BDB0);
        *(v111 + 16) = v107;
        v79 = v111;
        v117 = *(v114 + 80);
        OUTLINED_FUNCTION_258();
        (*(v114 + 32))(v111 + v118 + *(v114 + 72) * v110, v173, v115);
        v68 = v162;
        v98 = v170;
        v21 = v99;
        v78 = v167;
      }

      ++v77;
    }

    while (v98 != v77);
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v147, qword_2802CDA10);
  OUTLINED_FUNCTION_152();
  v122(v146[1]);

  v123 = v79;
  v124 = sub_268B37A34();
  sub_268B37F04();
  v125 = OUTLINED_FUNCTION_71();
  if (os_log_type_enabled(v125, v126))
  {
    OUTLINED_FUNCTION_68();
    v127 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v128 = swift_slowAlloc();
    v180 = v128;
    *v127 = 136315138;
    v129 = MEMORY[0x26D6256F0](v123, v176);
    v131 = sub_26892CDB8(v129, v130, &v180);

    *(v127 + 4) = v131;

    OUTLINED_FUNCTION_169(&dword_2688BB000, v132, v133, "uso disambiguate among: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v128);
    v134 = OUTLINED_FUNCTION_34();
    MEMORY[0x26D6266E0](v134);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v135 = OUTLINED_FUNCTION_134();
    v136(v135);
  }

  else
  {

    v137 = OUTLINED_FUNCTION_134();
    v138(v137);
  }

  v139 = v152;
  v140 = v150;
  v141 = v149;
  v142 = v148;
  sub_268B35684();
  sub_268B35674();
  sub_268B35654();
  (*(v140 + 16))(v141, v142, v139);
  sub_268B35624();
  v143 = *(v140 + 8);
  v144 = OUTLINED_FUNCTION_230();
  v145(v144);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688DEBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = sub_268B35614();
  v4 = *(v115 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v115);
  v102 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v114 = &v84 - v8;
  v116 = sub_268B355B4();
  v105 = *(v116 - 8);
  v9 = *(v105 + 64);
  v10 = MEMORY[0x28223BE20](v116);
  v113 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v112 = &v84 - v12;
  v13 = sub_268B35504();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v101 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v111 = &v84 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v110 = &v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5760, &unk_268B3BDB0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v104 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v84 - v27;
  MEMORY[0x28223BE20](v26);
  v103 = &v84 - v29;
  v30 = sub_268B35694();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v85 = &v84 - v36;
  v92 = sub_268B37A54();
  v91 = *(v92 - 8);
  v37 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  result = sub_2688EFD0C(a1);
  v89 = a2;
  v88 = v30;
  v87 = v31;
  v86 = v35;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v109 = v28;
    v40 = 0;
    v107 = v117 & 0xC000000000000001;
    v100 = (v14 + 32);
    v99 = (v14 + 16);
    v98 = (v4 + 16);
    v97 = (v105 + 16);
    v96 = (v4 + 8);
    v95 = v105 + 8;
    v94 = (v14 + 8);
    v93 = v105 + 32;
    v41 = MEMORY[0x277D84F90];
    v106 = xmmword_268B3BBA0;
    v42 = v103;
    v43 = v104;
    v108 = result;
    do
    {
      v118 = v41;
      if (v107)
      {
        v44 = MEMORY[0x26D625BD0](v40, v117);
      }

      else
      {
        v44 = *(v117 + 8 * v40 + 32);
      }

      __swift_storeEnumTagSinglePayload(v42, 1, 1, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v45 = v42;
      v46 = swift_allocObject();
      *(v46 + 16) = v106;
      *(v46 + 32) = v44;
      v47 = sub_268B35BD4();
      v48 = v110;
      __swift_storeEnumTagSinglePayload(v110, 1, 1, v47);

      MEMORY[0x26D623520](v46, v48);

      sub_2688C058C(v48, &unk_2802A62D0, &qword_268B3EDD0);
      sub_268B35BE4();
      v49 = sub_268B35C44();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      sub_268B35C34();
      v52 = v13;
      v53 = v109;
      sub_268B356B4();
      sub_2688C058C(v45, &unk_2802A5760, &unk_268B3BDB0);

      __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
      sub_2688E43D8();
      v42 = v45;
      sub_2688E451C();
      v13 = v52;
      if (__swift_getEnumTagSinglePayload(v43, 1, v52) == 1)
      {
        sub_2688C058C(v45, &unk_2802A5760, &unk_268B3BDB0);

        sub_2688C058C(v43, &unk_2802A5760, &unk_268B3BDB0);
        v41 = v118;
      }

      else
      {
        v54 = v111;
        (*v100)(v111, v43, v52);
        v55 = v112;
        sub_268B355A4();
        v56 = v114;
        sub_268B35604();
        (*v99)(v101, v54, v13);
        sub_268B355F4();
        (*v98)(v102, v56, v115);
        sub_268B35594();
        v57 = v55;
        v41 = v118;
        (*v97)(v113, v57, v116);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = *(v41 + 16);
          sub_26898784C();
          v41 = v63;
        }

        v58 = *(v41 + 16);
        if (v58 >= *(v41 + 24) >> 1)
        {
          sub_26898784C();
          v41 = v64;
        }

        (*v96)(v114, v115);
        v59 = v105;
        v60 = v116;
        (*(v105 + 8))(v112, v116);
        (*v94)(v111, v13);
        v61 = v103;
        sub_2688C058C(v103, &unk_2802A5760, &unk_268B3BDB0);
        *(v41 + 16) = v58 + 1;
        v42 = v61;
        (*(v59 + 32))(v41 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58, v113, v60);
        v43 = v104;
      }

      ++v40;
    }

    while (v108 != v40);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v65 = v92;
  v66 = __swift_project_value_buffer(v92, qword_2802CDA10);
  v67 = v91;
  v68 = v90;
  (*(v91 + 16))(v90, v66, v65);

  v69 = v41;
  v70 = sub_268B37A34();
  v71 = sub_268B37F04();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v88;
  v74 = v87;
  v75 = v86;
  if (v72)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v119 = v77;
    *v76 = 136315138;
    v78 = MEMORY[0x26D6256F0](v69, v116);
    v80 = v75;
    v81 = v73;
    v82 = sub_26892CDB8(v78, v79, &v119);

    *(v76 + 4) = v82;
    v73 = v81;
    v75 = v80;

    _os_log_impl(&dword_2688BB000, v70, v71, "uso disambiguate among: %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    MEMORY[0x26D6266E0](v77, -1, -1);
    MEMORY[0x26D6266E0](v76, -1, -1);

    (*(v91 + 8))(v90, v92);
  }

  else
  {

    (*(v67 + 8))(v68, v65);
  }

  v83 = v85;
  sub_268B35684();
  sub_268B35674();
  sub_268B35654();
  (*(v74 + 16))(v75, v83, v73);
  sub_268B35624();
  return (*(v74 + 8))(v83, v73);
}

id sub_2688DF798()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5778, &unk_268B3BDD0);
  v1 = sub_268B37CE4();

  v2 = [v0 initWithChoices_];

  return v2;
}

uint64_t sub_2688DF81C()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2802CDA10);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_268B37A34();
  v7 = sub_268B37ED4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2688BB000, v6, v7, "Default metricsIsWHAIntent: nil", v8, 2u);
    MEMORY[0x26D6266E0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_2688DF9AC()
{
  v1 = sub_268B37A54();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v7 = swift_once();
  }

  OUTLINED_FUNCTION_61(v7, qword_2802CDA10);
  v8 = OUTLINED_FUNCTION_139(v4);
  v9(v8);
  v10 = sub_268B37A34();
  v11 = sub_268B37ED4();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_64();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_279(v12);
    _os_log_impl(&dword_2688BB000, v10, v11, "Default metricsMediaType: .unknown", v0, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v13 = *(v4 + 8);
  v14 = OUTLINED_FUNCTION_103();
  v15(v14);
  return 0;
}

uint64_t sub_2688DFAFC(uint64_t (*a1)(void))
{
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  v9 = a1();
  v10 = v9;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v9 = swift_once();
  }

  OUTLINED_FUNCTION_61(v9, qword_2802CDA10);
  (*(v6 + 16))(v1);
  v11 = sub_268B37A34();
  v12 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v12))
  {
    v13 = OUTLINED_FUNCTION_236();
    *v13 = 67109120;
    *(v13 + 4) = v10 & 1;
    _os_log_impl(&dword_2688BB000, v11, v12, "DeviceQueryableIntent metricsIsWHAIntent: %{BOOL}d", v13, 8u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v6 + 8))(v1, v3);
  return v10 & 1;
}

uint64_t sub_2688DFC78()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_268B18100();
  v6 = v5;
  if (v5)
  {
    v7 = sub_2688EFD0C(v5);
  }

  else
  {
    v7 = 0;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_2802CDA10);
  (*(v1 + 16))(v4, v8, v0);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v19[1] = v7;
    v20 = v6 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v13 = sub_268B37C24();
    v15 = sub_26892CDB8(v13, v14, &v21);
    v19[0] = v0;
    v16 = v7;
    v17 = v15;

    *(v11 + 4) = v17;
    v7 = v16;
    _os_log_impl(&dword_2688BB000, v9, v10, "DeviceSelectableIntent metricsEligibleDeviceCount: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x26D6266E0](v12, -1, -1);
    MEMORY[0x26D6266E0](v11, -1, -1);

    (*(v1 + 8))(v4, v19[0]);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return v7;
}

void sub_2688DFEF4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v10 = v3(v0);
  if (v10)
  {
    sub_2688EFD0C(v10);
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
  v11 = OUTLINED_FUNCTION_139(v7);
  v12(v11);
  v13 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_68();
    v26 = v4;
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v17 = sub_268B37C24();
    sub_26892CDB8(v17, v18, &v27);
    OUTLINED_FUNCTION_234();
    *(v15 + 4) = v1;
    OUTLINED_FUNCTION_170(&dword_2688BB000, v19, v20, "DeviceSelectableIntent metricsEligibleDeviceCount: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v21 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v21);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    (*(v7 + 8))(v0, v26);
  }

  else
  {

    v22 = *(v7 + 8);
    v23 = OUTLINED_FUNCTION_228();
    v25(v23, v24);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688E0100()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B37A54();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v7 = [v0 device];
  if (v7)
  {

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v7 = swift_once();
  }

  OUTLINED_FUNCTION_61(v7, qword_2802CDA10);
  v9 = OUTLINED_FUNCTION_139(v4);
  v10(v9);
  v11 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_68();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v15 = sub_268B37C24();
    sub_26892CDB8(v15, v16, &v24);
    OUTLINED_FUNCTION_234();
    *(v13 + 4) = v8;
    OUTLINED_FUNCTION_170(&dword_2688BB000, v17, v18, "SingleDeviceSelectableIntent metricsEligibleDeviceCount: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    v19 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v19);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    (*(v4 + 8))(v0, v1);
  }

  else
  {

    v20 = *(v4 + 8);
    v21 = OUTLINED_FUNCTION_103();
    v23(v21, v22);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_23();
}

void sub_2688E0310()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v8 = [v0 mediaType];
  v9 = v8;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v8 = swift_once();
  }

  OUTLINED_FUNCTION_61(v8, qword_2802CDA10);
  v10 = OUTLINED_FUNCTION_139(v5);
  v11(v10);
  v12 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_68();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v16 = NLMediaType.description.getter(v9);
    v18 = sub_26892CDB8(v16, v17, &v22);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2688BB000, v12, v1, "MediaTypeProvidingIntent metricsMediaType: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v19 = *(v5 + 8);
  v20 = OUTLINED_FUNCTION_103();
  v21(v20);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688E04D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2688E05C8;

  return v7(a1);
}

uint64_t sub_2688E05C8()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_89();
  *v4 = v3;

  OUTLINED_FUNCTION_222();

  return v5();
}

void sub_2688E06D4()
{
  OUTLINED_FUNCTION_284();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

uint64_t sub_2688E0744(void (*a1)(void))
{
  a1();

  return sub_268B385B4();
}

void sub_2688E07B0()
{
  OUTLINED_FUNCTION_223();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_86(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A38, &qword_268B3C078);
      v8 = OUTLINED_FUNCTION_168();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_130(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_85();
        sub_268988A78(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
    OUTLINED_FUNCTION_87();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_145();
  if (!v6)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2688E0874()
{
  OUTLINED_FUNCTION_223();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_86(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A78, &unk_268B3C0B0);
      v9 = OUTLINED_FUNCTION_317();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_248();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_85();
        sub_2689882C8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
    OUTLINED_FUNCTION_87();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_145();
  if (!v7)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2688E097C()
{
  OUTLINED_FUNCTION_223();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_86(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
      v9 = OUTLINED_FUNCTION_317();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_248();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_85();
        sub_2689882A8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    OUTLINED_FUNCTION_87();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_145();
  if (!v7)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2688E0A78(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_317();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_248();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_145();
  if (!v11)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2688E0BC4()
{
  OUTLINED_FUNCTION_223();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_86(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A48, &qword_268B3C088);
      v8 = OUTLINED_FUNCTION_168();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_130(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_85();
        sub_268988A78(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A50, &qword_268B3C090);
    OUTLINED_FUNCTION_87();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_145();
  if (!v6)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2688E0CEC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_317();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_248();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_145();
  if (!v11)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2688E0DCC()
{
  OUTLINED_FUNCTION_223();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_86(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A08, &qword_268B3C048);
      v8 = OUTLINED_FUNCTION_168();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_130(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_85();
        sub_268988A78(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A10, &unk_268B3C050);
    OUTLINED_FUNCTION_87();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_145();
  if (!v6)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2688E0F08()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_49();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_145();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_19_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = v6(0);
  OUTLINED_FUNCTION_182(v25);
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_258();
  if (v10)
  {
    v4(v8 + v28, v15, v22 + v28);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688E109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_268B38444() & 1;
  }
}

uint64_t sub_2688E10E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 != a3 || a2 != a4)
    {
      return sub_268B38444() & 1;
    }

    return 1;
  }

  return v4;
}

uint64_t sub_2688E113C()
{
  v0 = sub_268B378F4();
  v19 = *(v0 - 8);
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v18 - v11;
  v13 = *(v10 + 56);
  sub_2688E451C();
  sub_2688E451C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v0) != 1)
  {
    sub_2688E451C();
    if (__swift_getEnumTagSinglePayload(&v12[v13], 1, v0) != 1)
    {
      v15 = v19;
      (*(v19 + 32))(v3, &v12[v13], v0);
      sub_2688EA07C(&qword_2802A5918, 255, MEMORY[0x277D5F9D0]);
      v14 = sub_268B37BB4();
      v16 = *(v15 + 8);
      v16(v3, v0);
      v16(v7, v0);
      sub_2688C058C(v12, &qword_2802A5908, &qword_268B3D920);
      return v14 & 1;
    }

    (*(v19 + 8))(v7, v0);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v12[v13], 1, v0) != 1)
  {
LABEL_6:
    sub_2688C058C(v12, &qword_2802A5900, &unk_268B3BED0);
    v14 = 0;
    return v14 & 1;
  }

  sub_2688C058C(v12, &qword_2802A5908, &qword_268B3D920);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_2688E1450()
{
  v0 = sub_268B37BF4();
  v2 = v1;
  if (v0 == sub_268B37BF4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_179();
    v5 = sub_268B38444();
  }

  return v5 & 1;
}

uint64_t sub_2688E1538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2688E15B4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_268B382A4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_268B381F4();
  *v1 = result;
  return result;
}

void sub_2688E16B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_167();
  sub_2688E0A78(0, v2, 0, v3, v4, v5, v6);
}

uint64_t sub_2688E176C(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_2688E1988()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2688E19C4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2688E19F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2688E1A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2688E1C2C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v33 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v33);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  if (v2)
  {
    [v2 unsupportedReason];
    sub_2688E4434();
    v32 = sub_268B380D4();
    v17 = v16;
  }

  else
  {
    v32 = 0;
    v17 = 0xE000000000000000;
  }

  sub_26894B7A0(v10);
  OUTLINED_FUNCTION_307();

  MEMORY[0x26D625650](35, 0xE100000000000000);

  v18 = sub_26894BAF4(v8);
  v20 = v19;

  MEMORY[0x26D625650](v18, v20);

  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_160();
  MEMORY[0x26D625650](v6, v4);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  sub_2688DF9AC();
  sub_268B38404();
  OUTLINED_FUNCTION_312();

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  sub_2688DF81C();
  OUTLINED_FUNCTION_183(978807080);
  MEMORY[0x26D625650]();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  OUTLINED_FUNCTION_183(v20 + 512);
  MEMORY[0x26D625650](v32, v17);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v33, qword_2802CDA10);
  v21 = OUTLINED_FUNCTION_266();
  v22(v21);

  v23 = sub_268B37A34();
  v24 = sub_268B37F04();

  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_68();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v34 = swift_slowAlloc();
    *v25 = 136315138;
    v26 = OUTLINED_FUNCTION_221();
    *(v25 + 4) = sub_26892CDB8(v26, v27, v28);
    OUTLINED_FUNCTION_309(&dword_2688BB000, v29, v30, "AnalyticsService#encodeInfo: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v31 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v31);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v13 + 8))(v0, v33);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_23();
}

void sub_2688E1FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t (*a22)(void))
{
  OUTLINED_FUNCTION_26();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_268B37A54();
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  v58 = v39;
  if (v24)
  {
    [v24 unsupportedReason];
    sub_2688E4434();
    v57 = sub_268B380D4();
    v41 = v40;
  }

  else
  {
    v57 = 0;
    v41 = 0xE000000000000000;
  }

  sub_26894B7A0(v32);
  OUTLINED_FUNCTION_307();

  MEMORY[0x26D625650](35, 0xE100000000000000);

  v42 = sub_26894BAF4(v30);
  v44 = v43;

  MEMORY[0x26D625650](v42, v44);

  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_160();
  MEMORY[0x26D625650](v28, v26);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  a21(v45);
  sub_268B38404();
  OUTLINED_FUNCTION_312();

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  sub_2688DFAFC(a22);
  OUTLINED_FUNCTION_183(978807080);
  MEMORY[0x26D625650]();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  OUTLINED_FUNCTION_183(v60 + 512);
  MEMORY[0x26D625650](v57, v41);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v58, qword_2802CDA10);
  v46 = OUTLINED_FUNCTION_266();
  v47(v46);

  v48 = sub_268B37A34();
  v49 = sub_268B37F04();

  if (os_log_type_enabled(v48, v49))
  {
    OUTLINED_FUNCTION_68();
    v50 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v59 = swift_slowAlloc();
    *v50 = 136315138;
    v51 = OUTLINED_FUNCTION_221();
    *(v50 + 4) = sub_26892CDB8(v51, v52, v53);
    OUTLINED_FUNCTION_309(&dword_2688BB000, v54, v55, "AnalyticsService#encodeInfo: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    v56 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v56);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v36 + 8))(v22, v58);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688E23F0()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  v0 = OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_19_0(v0);
  v3 = ((*(v1 + 80) + 24) & ~*(v1 + 80)) + *(v2 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v4);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = sub_268B36A54();
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_25_0();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_44(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_5_1(v13);
  OUTLINED_FUNCTION_277();

  return sub_2688F10B4(v15, v16, v17, v18, v19);
}

uint64_t sub_2688E254C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_164();

  return sub_2688DB8EC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2688E25D8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33(v3);
  *v4 = v5;
  v4[1] = sub_2688EA0F0;
  v6 = OUTLINED_FUNCTION_32();

  return v7(v6);
}

uint64_t sub_2688E2680()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33(v3);
  *v4 = v5;
  v4[1] = sub_2688EA0F0;
  v6 = OUTLINED_FUNCTION_32();

  return sub_2688DBB6C(v6, v7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_182(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

void sub_2688E2778()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v36);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v27 = OUTLINED_FUNCTION_16_1(v19, v20, v21, v22, v23, v24, v25, v26, v37);
  OUTLINED_FUNCTION_3_1(v27);
  sub_2688E45F4();
  v29 = OUTLINED_FUNCTION_6_1(v28);
  v30(v29);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v31 = OUTLINED_FUNCTION_195();
  v32 = OUTLINED_FUNCTION_12_1(v31);
  v33(v32);
  OUTLINED_FUNCTION_29(&off_287960358);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v34 = v16;
  v35 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E2964()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v36);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v27 = OUTLINED_FUNCTION_16_1(v19, v20, v21, v22, v23, v24, v25, v26, v37);
  OUTLINED_FUNCTION_3_1(v27);
  sub_2688E45F4();
  v29 = OUTLINED_FUNCTION_6_1(v28);
  v30(v29);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v31 = OUTLINED_FUNCTION_195();
  v32 = OUTLINED_FUNCTION_12_1(v31);
  v33(v32);
  OUTLINED_FUNCTION_29(&off_2879604D8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v34 = v16;
  v35 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E2B50()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v35);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_1(v19, v20, v21, v22, v23, v24, v25, v26, v36);
  sub_2688E45F4();
  v28 = OUTLINED_FUNCTION_6_1(v27);
  v29(v28);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v30 = OUTLINED_FUNCTION_195();
  v31 = OUTLINED_FUNCTION_12_1(v30);
  v32(v31);
  OUTLINED_FUNCTION_29(&off_2879604B8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v33 = v16;
  v34 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E2D50()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v36);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v27 = OUTLINED_FUNCTION_16_1(v19, v20, v21, v22, v23, v24, v25, v26, v37);
  OUTLINED_FUNCTION_3_1(v27);
  sub_2688E45F4();
  v29 = OUTLINED_FUNCTION_6_1(v28);
  v30(v29);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v31 = OUTLINED_FUNCTION_195();
  v32 = OUTLINED_FUNCTION_12_1(v31);
  v33(v32);
  OUTLINED_FUNCTION_29(&off_2879603B8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v34 = v16;
  v35 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E2F9C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_102(v5, v6, v7, v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = OUTLINED_FUNCTION_19_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_94();
  v16 = sub_268B34E24();
  v17 = OUTLINED_FUNCTION_180(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v28 = OUTLINED_FUNCTION_165(v20, v21, v22, v23, v24, v25, v26, v27, v35);
  sub_2688E4A50(v28, v0, v3);
  v37 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  OUTLINED_FUNCTION_152();
  v29(v4, v36, v2);
  sub_2688E451C();
  v30 = OUTLINED_FUNCTION_80();
  v31 = OUTLINED_FUNCTION_155(v30);
  v32(v31);
  OUTLINED_FUNCTION_215();
  sub_2688E43D8();
  OUTLINED_FUNCTION_117();

  v33 = v3;
  v34 = v1;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3180()
{
  OUTLINED_FUNCTION_26();
  v43 = v2;
  v44 = v3;
  OUTLINED_FUNCTION_14_1(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v6);
  v41 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75();
  v11 = sub_268B34E24();
  v12 = OUTLINED_FUNCTION_10_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v40 = OUTLINED_FUNCTION_166(v17, v18, v19, v20, v21, v22, v23, v24, v38);
  sub_2688E4828();
  OUTLINED_FUNCTION_9_1(v25);
  v26(v0, v42, v1);
  OUTLINED_FUNCTION_287();
  sub_2688E451C();
  v27 = (v9 + ((*(v41 + 80) + ((v16 + ((v14[80] + 32) & ~v14[80]) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v41 + 80)) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = (v27 + 11) & 0xFFFFFFFFFFFFFFF8;
  v29 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  OUTLINED_FUNCTION_23_0();
  v30 = OUTLINED_FUNCTION_195();
  v31 = OUTLINED_FUNCTION_13_1(v30);
  v32(v31);
  OUTLINED_FUNCTION_253(&off_287960318);
  sub_2688E43D8();
  *(v30 + v27) = v40;
  *(v30 + v28) = v39;
  v33 = &v29[v30];
  *v33 = v43;
  *(v33 + 1) = v44;
  OUTLINED_FUNCTION_22_0((v30 + v0));
  *(v30 + v35) = v34;

  v36 = v14;
  v37 = v39;
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_310();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3410()
{
  OUTLINED_FUNCTION_26();
  v43 = v2;
  v44 = v3;
  OUTLINED_FUNCTION_14_1(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v6);
  v41 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75();
  v11 = sub_268B34E24();
  v12 = OUTLINED_FUNCTION_10_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v40 = OUTLINED_FUNCTION_166(v17, v18, v19, v20, v21, v22, v23, v24, v38);
  sub_2688E4828();
  OUTLINED_FUNCTION_9_1(v25);
  v26(v0, v42, v1);
  OUTLINED_FUNCTION_287();
  sub_2688E451C();
  v27 = (v9 + ((*(v41 + 80) + ((v16 + ((v14[80] + 32) & ~v14[80]) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v41 + 80)) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = (v27 + 11) & 0xFFFFFFFFFFFFFFF8;
  v29 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  OUTLINED_FUNCTION_23_0();
  v30 = OUTLINED_FUNCTION_195();
  v31 = OUTLINED_FUNCTION_13_1(v30);
  v32(v31);
  OUTLINED_FUNCTION_253(&off_287960338);
  sub_2688E43D8();
  *(v30 + v27) = v40;
  *(v30 + v28) = v39;
  v33 = &v29[v30];
  *v33 = v43;
  *(v33 + 1) = v44;
  OUTLINED_FUNCTION_22_0((v30 + v0));
  *(v30 + v35) = v34;

  v36 = v14;
  v37 = v39;
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_310();

  OUTLINED_FUNCTION_23();
}

void sub_2688E36A0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v36);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v27 = OUTLINED_FUNCTION_16_1(v19, v20, v21, v22, v23, v24, v25, v26, v37);
  OUTLINED_FUNCTION_3_1(v27);
  sub_2688E45F4();
  v29 = OUTLINED_FUNCTION_6_1(v28);
  v30(v29);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v31 = OUTLINED_FUNCTION_195();
  v32 = OUTLINED_FUNCTION_12_1(v31);
  v33(v32);
  OUTLINED_FUNCTION_29(&off_2879603D8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v34 = v16;
  v35 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E388C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v36);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v27 = OUTLINED_FUNCTION_16_1(v19, v20, v21, v22, v23, v24, v25, v26, v37);
  OUTLINED_FUNCTION_3_1(v27);
  sub_2688E45F4();
  v29 = OUTLINED_FUNCTION_6_1(v28);
  v30(v29);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v31 = OUTLINED_FUNCTION_195();
  v32 = OUTLINED_FUNCTION_12_1(v31);
  v33(v32);
  OUTLINED_FUNCTION_29(&off_2879603F8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v34 = v16;
  v35 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3B38()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_102(v5, v6, v7, v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = OUTLINED_FUNCTION_19_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_94();
  v16 = sub_268B34E24();
  v17 = OUTLINED_FUNCTION_180(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v28 = OUTLINED_FUNCTION_165(v20, v21, v22, v23, v24, v25, v26, v27, v35);
  v3(v28, v0);
  v37 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  OUTLINED_FUNCTION_152();
  v29(v4, v36, v2);
  sub_2688E451C();
  v30 = OUTLINED_FUNCTION_80();
  v31 = OUTLINED_FUNCTION_155(v30);
  v32(v31);
  OUTLINED_FUNCTION_215();
  sub_2688E43D8();
  OUTLINED_FUNCTION_117();

  v33 = v3;
  v34 = v1;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3D1C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v36);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v27 = OUTLINED_FUNCTION_16_1(v19, v20, v21, v22, v23, v24, v25, v26, v37);
  OUTLINED_FUNCTION_3_1(v27);
  sub_2688E45F4();
  v29 = OUTLINED_FUNCTION_6_1(v28);
  v30(v29);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v31 = OUTLINED_FUNCTION_195();
  v32 = OUTLINED_FUNCTION_12_1(v31);
  v33(v32);
  OUTLINED_FUNCTION_29(&off_287960398);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v34 = v16;
  v35 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3F68()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v36);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v27 = OUTLINED_FUNCTION_16_1(v19, v20, v21, v22, v23, v24, v25, v26, v37);
  OUTLINED_FUNCTION_3_1(v27);
  sub_2688E45F4();
  v29 = OUTLINED_FUNCTION_6_1(v28);
  v30(v29);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v31 = OUTLINED_FUNCTION_195();
  v32 = OUTLINED_FUNCTION_12_1(v31);
  v33(v32);
  OUTLINED_FUNCTION_29(&off_287960418);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v34 = v16;
  v35 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void *sub_2688E4154(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v9)
    {
      v10 = v9;
      [v9 setTaskType_];
      sub_2688E0310();
      [v10 setMediaType_];
      [v10 setIsWholeHouseAudio_];
      v12 = sub_2688DFC78();
      v14 = sub_26898B0F0(v12, v13 & 1);
      [v10 setWholeHouseAudioDestinationContext_];

      [v8 setMediaPlayerContext_];
      return v8;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v6, v15, v2);
  v16 = sub_268B37A34();
  v17 = sub_268B37EE4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v18, 2u);
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_2688E43D8()
{
  OUTLINED_FUNCTION_185();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_123();
  v7(v6);
  return v0;
}

unint64_t sub_2688E4434()
{
  result = qword_2802A5880;
  if (!qword_2802A5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5880);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2688E44B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_229();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2688E451C()
{
  OUTLINED_FUNCTION_185();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_123();
  v7(v6);
  return v0;
}

uint64_t sub_2688E4594(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_70(v3);
  (*v4)(a2);
  return a2;
}

void sub_2688E45F4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_293();
  v13 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v15)
    {
      v16 = v15;
      v17 = v4([v15 setTaskType_]);
      [v16 setMediaType_];
      [v16 setIsWholeHouseAudio_];
      sub_2688DFEF4();
      v20 = sub_26898B0F0(v19, v18 & 1);
      v21 = OUTLINED_FUNCTION_290();
      [v21 v22];

      [v14 setMediaPlayerContext_];
      goto LABEL_10;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v13 = swift_once();
  }

  OUTLINED_FUNCTION_61(v13, qword_2802CDA10);
  (*(v10 + 16))(v0);
  v23 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_64();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_10(v25);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    v31 = OUTLINED_FUNCTION_34();
    MEMORY[0x26D6266E0](v31);
  }

  (*(v10 + 8))(v0, v7);
LABEL_10:
  OUTLINED_FUNCTION_23();
}

void sub_2688E4828()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_293();
  v13 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v15)
    {
      v16 = v15;
      [v15 setTaskType_];
      sub_2688E0310();
      [v16 setMediaType_];
      v18 = [v16 setIsWholeHouseAudio_];
      v19 = v2(v18);
      v21 = sub_26898B0F0(v19, v20 & 1);
      v22 = OUTLINED_FUNCTION_290();
      [v22 v23];

      [v14 setMediaPlayerContext_];
      goto LABEL_10;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v13 = swift_once();
  }

  OUTLINED_FUNCTION_61(v13, qword_2802CDA10);
  OUTLINED_FUNCTION_120();
  v24(v0);
  v25 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_64();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_10(v27);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    v33 = OUTLINED_FUNCTION_34();
    MEMORY[0x26D6266E0](v33);
  }

  (*(v10 + 8))(v0, v7);
LABEL_10:
  OUTLINED_FUNCTION_23();
}

void *sub_2688E4A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v15)
  {
    v3 = v15;
    v16 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v16)
    {
      v17 = v16;
      [v16 setTaskType_];
      v18 = sub_2688DF9AC();
      [v17 setMediaType_];
      [v17 setIsWholeHouseAudio_];
      sub_2688E0100();
      v21 = sub_26898B0F0(v20, v19 & 1);
      [v17 setWholeHouseAudioDestinationContext_];

      [v3 setMediaPlayerContext_];
      return v3;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v15 = swift_once();
  }

  OUTLINED_FUNCTION_61(v15, qword_2802CDA10);
  OUTLINED_FUNCTION_152();
  v22(v14);
  v23 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_64();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_279(v25);
    _os_log_impl(&dword_2688BB000, v23, v3, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", a3, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v9 + 8))(v14, v6);
  return 0;
}

void *sub_2688E4C8C(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v9)
    {
      v10 = v9;
      [v9 setTaskType_];
      v11 = sub_2688DF9AC();
      [v10 setMediaType_];
      [v10 setIsWholeHouseAudio_];
      sub_2688E0100();
      v14 = sub_26898B0F0(v13, v12 & 1);
      [v10 setWholeHouseAudioDestinationContext_];

      [v8 setMediaPlayerContext_];
      return v8;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v6, v15, v2);
  v16 = sub_268B37A34();
  v17 = sub_268B37EE4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v18, 2u);
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

void sub_2688E4FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_213(v26, v27, v28, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v39);
  v224 = sub_268B371E4();
  v40 = OUTLINED_FUNCTION_1(v224);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v44);
  v45 = sub_268B37A54();
  v228 = OUTLINED_FUNCTION_1(v45);
  v229 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v228);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_31();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9();
  v54 = sub_268B378F4();
  v55 = OUTLINED_FUNCTION_1(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v60);
  v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0) - 8);
  v62 = *(*v61 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_94();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v65 = OUTLINED_FUNCTION_19_0(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_136();
  v70 = type metadata accessor for MediaPlayerIntent();
  v233 = v70;
  OUTLINED_FUNCTION_108();
  v73 = sub_2688EA07C(v71, 255, v72);
  v234 = OUTLINED_FUNCTION_156(v73);
  __swift_allocate_boxed_opaque_existential_0Tm(v232);
  OUTLINED_FUNCTION_37();
  sub_2688E7418();
  __swift_project_boxed_opaque_existential_1(v232, v233);
  v227 = v70;
  v74 = *(v70 + 100);
  v75 = *MEMORY[0x277D5F9C0];
  v76 = OUTLINED_FUNCTION_212();
  v57(v76);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v54);
  OUTLINED_FUNCTION_250();
  v80 = &qword_2802A5908;
  sub_2688E451C();
  OUTLINED_FUNCTION_303();
  v81 = OUTLINED_FUNCTION_286();
  if (__swift_getEnumTagSinglePayload(v81, v82, v54) == 1)
  {
    sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
    OUTLINED_FUNCTION_119();
    if (!v148)
    {
      goto LABEL_8;
    }

    sub_2688C058C(v23, &qword_2802A5908, &qword_268B3D920);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_287();
  sub_2688E451C();
  OUTLINED_FUNCTION_119();
  if (v148)
  {
    sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
    v83 = OUTLINED_FUNCTION_276();
    v84(v83);
LABEL_8:
    sub_2688C058C(v23, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_9;
  }

  v121 = OUTLINED_FUNCTION_144();
  v122(v121);
  OUTLINED_FUNCTION_107();
  sub_2688EA07C(v123, 255, v124);
  OUTLINED_FUNCTION_150();
  v219 = sub_268B37BB4();
  v80 = &off_2802A5910;
  v125 = off_2802A5910;
  v126 = OUTLINED_FUNCTION_179();
  v125(v126);
  v61 = &qword_268B3D920;
  sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
  (v125)(v21, v54);
  v127 = OUTLINED_FUNCTION_115();
  sub_2688C058C(v127, v128, &qword_268B3D920);
  if (v219)
  {
LABEL_33:
    OUTLINED_FUNCTION_297();
    if (v148)
    {
LABEL_35:
      OUTLINED_FUNCTION_62(v129, qword_2802CDA10);
      v130 = OUTLINED_FUNCTION_291();
      v131(v130);
      v132 = sub_268B37A34();
      sub_268B37F04();
      v133 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v133, v134))
      {
        OUTLINED_FUNCTION_64();
        v135 = swift_slowAlloc();
        OUTLINED_FUNCTION_81(v135);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v136, v137, v138, v139, v140, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      v141 = OUTLINED_FUNCTION_131();
      v142(v141);
      OUTLINED_FUNCTION_325(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_264();
      while (1)
      {
        if (v132 == v80)
        {
          goto LABEL_81;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v150 = OUTLINED_FUNCTION_100();
          MEMORY[0x26D625BD0](v150);
        }

        else
        {
          if (v80 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          OUTLINED_FUNCTION_316();
        }

        OUTLINED_FUNCTION_281();
        if (v114)
        {
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v143 = sub_2688E176C(v61);
        v145 = v144;
        v146 = sub_268B37724();
        if (!v145)
        {
          break;
        }

        v148 = v143 == v146 && v145 == v147;
        if (v148)
        {
        }

        else
        {
          v149 = OUTLINED_FUNCTION_311();

          if ((v149 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        sub_268B38214();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
LABEL_54:
        v80 = (v80 + 1);
      }

LABEL_51:

      goto LABEL_54;
    }

LABEL_91:
    OUTLINED_FUNCTION_0_2();
    v129 = swift_once();
    goto LABEL_35;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&off_2802A5910, &unk_268B3BEE0);
  v85 = OUTLINED_FUNCTION_174();
  *(v85 + 16) = xmmword_268B3BBD0;
  v80 = (v80 + v85);
  v86 = *MEMORY[0x277D5F9A8];
  v87 = OUTLINED_FUNCTION_216();
  v57(v87);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v54);
  (v57)(v61 + v80, *MEMORY[0x277D5F9B8], v54);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v54);
  v61 = v70;
  OUTLINED_FUNCTION_208(*(v70 + 100));
  OUTLINED_FUNCTION_249();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_59();
  v97 = OUTLINED_FUNCTION_302(v95, v96);
  swift_setDeallocating();
  sub_268ACE758();
  v98 = OUTLINED_FUNCTION_275();
  v100 = sub_2688C058C(v98, v99, &qword_268B3D920);
  if (v97)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v100 = swift_once();
    }

    OUTLINED_FUNCTION_62(v100, qword_2802CDA10);
    v101 = OUTLINED_FUNCTION_291();
    v102(v101);
    v103 = sub_268B37A34();
    sub_268B37F04();
    v104 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v104, v105))
    {
      OUTLINED_FUNCTION_64();
      v106 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v106);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v107, v108, v109, v110, v111, 2u);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    v112 = OUTLINED_FUNCTION_131();
    v113(v112);
    OUTLINED_FUNCTION_325(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_264();
    while (1)
    {
      if (v103 == v80)
      {
        goto LABEL_81;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v115 = OUTLINED_FUNCTION_100();
        MEMORY[0x26D625BD0](v115);
      }

      else
      {
        if (v80 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        OUTLINED_FUNCTION_316();
      }

      OUTLINED_FUNCTION_281();
      if (v114)
      {
        break;
      }

      if (sub_268983434())
      {
        sub_268B38214();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }

      v80 = (v80 + 1);
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    __break(1u);
    goto LABEL_91;
  }

  v116 = OUTLINED_FUNCTION_305();
  if (v116[2])
  {
    OUTLINED_FUNCTION_243(MEMORY[0x277D84F90]);
    v117 = v231[0];
    do
    {
      v118 = v116[4];
      v119 = v116[5];
      sub_268B37C34();
      OUTLINED_FUNCTION_188();
      if (v120)
      {
        sub_26894470C();
        v117 = v231[0];
      }

      OUTLINED_FUNCTION_211();
    }

    while (!v148);
  }

  else
  {

    v117 = MEMORY[0x277D84F90];
  }

  sub_26893E6A8(v117);
  v152 = v151;
  OUTLINED_FUNCTION_297();
  v153 = v229;
  if (!v148)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v154 = OUTLINED_FUNCTION_82(v228, qword_2802CDA10);
  v156 = OUTLINED_FUNCTION_178(v154, v155);
  v157(v156);

  v158 = v225;
  v159 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_270();

  if (OUTLINED_FUNCTION_210())
  {
    v153 = OUTLINED_FUNCTION_238();
    v231[0] = OUTLINED_FUNCTION_237();
    *v153 = 136315394;
    v160 = sub_268B37E24();
    OUTLINED_FUNCTION_318(v160, v161);
    OUTLINED_FUNCTION_234();
    v162 = OUTLINED_FUNCTION_315();
    v163 = MEMORY[0x26D625710](v20, v162);
    OUTLINED_FUNCTION_318(v163, v164);
    OUTLINED_FUNCTION_234();
    *(v153 + 14) = 0x2802A4000;
    OUTLINED_FUNCTION_72();
    _os_log_impl(v165, v166, v167, v168, v153, 0x16u);
    swift_arrayDestroy();
    v169 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v169);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v226 = *(v229 + 8);
  v226(v225, v228);
  v61 = MEMORY[0x277D84F90];
  v231[0] = MEMORY[0x277D84F90];
  sub_2688EFD0C(v20);
  OUTLINED_FUNCTION_263();
  while (v159 != v153)
  {
    v170 = OUTLINED_FUNCTION_192();
    v158 = MEMORY[0x26D625BD0](v170);
    if (__OFADD__(v153, 1))
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_314();

    if (v230)
    {
      v158 = v231;
      MEMORY[0x26D6256C0]();
      OUTLINED_FUNCTION_251();
      if (v120)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
      v61 = v231[0];
    }

    ++v153;
  }

  if (sub_2688EFD0C(v61) <= 1)
  {
    v175 = OUTLINED_FUNCTION_157();
    v176(v175);

    v177 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_321();
    if (OUTLINED_FUNCTION_210())
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  OUTLINED_FUNCTION_235(v227[24]);
  sub_268B37034();
  v171 = OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_124(v171);
  if (v148)
  {
    sub_2688C058C(v158, &qword_2802A58F0, &unk_268B3BEC0);
    OUTLINED_FUNCTION_175(&a14);
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v224);
    goto LABEL_78;
  }

  v153 = v222;
  sub_268B36FE4();
  OUTLINED_FUNCTION_70(v159);
  v179 = *(v178 + 8);
  v180 = OUTLINED_FUNCTION_103();
  v181(v180);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_135(v182, v183, v20);
  if (v184)
  {
LABEL_78:
    sub_2688C058C(v153, &qword_2802A58F8, &unk_268B3C510);
    OUTLINED_FUNCTION_142();
    v185();

    v177 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_321();
    if (OUTLINED_FUNCTION_210())
    {
LABEL_79:
      OUTLINED_FUNCTION_68();
      v186 = swift_slowAlloc();
      OUTLINED_FUNCTION_69();
      v187 = swift_slowAlloc();
      OUTLINED_FUNCTION_283(v187);
      OUTLINED_FUNCTION_244(4.8149e-34);
      OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_322(v188, v189);
      OUTLINED_FUNCTION_241();
      *(v186 + 4) = v152;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v190, v191, v192, v193, v194, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v195 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v195);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

LABEL_80:

    v196 = OUTLINED_FUNCTION_233();
    v197(v196);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_133(&v235);
  v198 = OUTLINED_FUNCTION_225();
  v199(v198);
  OUTLINED_FUNCTION_109(&a10);
  OUTLINED_FUNCTION_142();
  v200();
  OUTLINED_FUNCTION_120();
  v201 = OUTLINED_FUNCTION_224();
  v202(v201);
  v203 = sub_268B37A34();
  sub_268B37F04();
  v204 = OUTLINED_FUNCTION_71();
  if (os_log_type_enabled(v204, v205))
  {
    OUTLINED_FUNCTION_68();
    v206 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v207 = swift_slowAlloc();
    v231[0] = v207;
    *v206 = 136315138;
    sub_268B37184();
    OUTLINED_FUNCTION_186();
    v209 = v208;
    OUTLINED_FUNCTION_140();
    v228();
    sub_26892CDB8(v223, v209, v231);
    OUTLINED_FUNCTION_186();

    *(v206 + 4) = v223;
    OUTLINED_FUNCTION_308(&dword_2688BB000, v210, v211, "Multiple devices matched. Narrowing down using device capabilities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v207);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v212 = OUTLINED_FUNCTION_294();
  }

  else
  {

    OUTLINED_FUNCTION_140();
    v213 = OUTLINED_FUNCTION_122();
    (v228)(v213);
    v212 = OUTLINED_FUNCTION_228();
  }

  (v226)(v212);
  OUTLINED_FUNCTION_249();
  MEMORY[0x28223BE20](v214);
  OUTLINED_FUNCTION_59();
  *(v215 - 16) = v221;
  OUTLINED_FUNCTION_36();
  sub_2688C8F5C(v220, v216, v61, v217);
  v218 = OUTLINED_FUNCTION_138();
  (v228)(v218);
LABEL_81:
  __swift_destroy_boxed_opaque_existential_0Tm(v232);
  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_23();
}

id sub_2688E61E8@<X0>(void **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  result = sub_2688D7E68(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2688E6514(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2688E65D0()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  v0 = OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_19_0(v0);
  v3 = ((*(v1 + 80) + 24) & ~*(v1 + 80)) + *(v2 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v4);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = sub_268B36A54();
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_25_0();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_44(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_5_1(v13);
  OUTLINED_FUNCTION_277();

  return sub_2688F10B4(v15, v16, v17, v18, v19);
}

uint64_t sub_2688E6730()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_164();

  return sub_2688DB8EC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_25Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[13];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[19];

  v11 = v0[21];

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2688E7290()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2688E7348()
{
  OUTLINED_FUNCTION_185();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_123();
  v6(v5);
  return v0;
}

uint64_t sub_2688E73C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2688E7418()
{
  OUTLINED_FUNCTION_185();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_123();
  v6(v5);
  return v0;
}

void sub_2688E7530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_213(v26, v27, v28, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v39);
  v224 = sub_268B371E4();
  v40 = OUTLINED_FUNCTION_1(v224);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v44);
  v45 = sub_268B37A54();
  v228 = OUTLINED_FUNCTION_1(v45);
  v229 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v228);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_31();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9();
  v54 = sub_268B378F4();
  v55 = OUTLINED_FUNCTION_1(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v60);
  v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0) - 8);
  v62 = *(*v61 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_94();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v65 = OUTLINED_FUNCTION_19_0(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_136();
  v70 = type metadata accessor for MediaIntent();
  v233 = v70;
  OUTLINED_FUNCTION_116();
  v73 = sub_2688EA07C(v71, 255, v72);
  v234 = OUTLINED_FUNCTION_156(v73);
  __swift_allocate_boxed_opaque_existential_0Tm(v232);
  OUTLINED_FUNCTION_35();
  sub_2688E7418();
  __swift_project_boxed_opaque_existential_1(v232, v233);
  v227 = v70;
  v74 = *(v70 + 84);
  v75 = *MEMORY[0x277D5F9C0];
  v76 = OUTLINED_FUNCTION_212();
  v57(v76);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v54);
  OUTLINED_FUNCTION_250();
  v80 = &qword_2802A5908;
  sub_2688E451C();
  OUTLINED_FUNCTION_303();
  v81 = OUTLINED_FUNCTION_286();
  if (__swift_getEnumTagSinglePayload(v81, v82, v54) == 1)
  {
    sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
    OUTLINED_FUNCTION_119();
    if (!v148)
    {
      goto LABEL_8;
    }

    sub_2688C058C(v23, &qword_2802A5908, &qword_268B3D920);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_287();
  sub_2688E451C();
  OUTLINED_FUNCTION_119();
  if (v148)
  {
    sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
    v83 = OUTLINED_FUNCTION_276();
    v84(v83);
LABEL_8:
    sub_2688C058C(v23, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_9;
  }

  v121 = OUTLINED_FUNCTION_144();
  v122(v121);
  OUTLINED_FUNCTION_107();
  sub_2688EA07C(v123, 255, v124);
  OUTLINED_FUNCTION_150();
  v219 = sub_268B37BB4();
  v80 = &off_2802A5910;
  v125 = off_2802A5910;
  v126 = OUTLINED_FUNCTION_179();
  v125(v126);
  v61 = &qword_268B3D920;
  sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
  (v125)(v21, v54);
  v127 = OUTLINED_FUNCTION_115();
  sub_2688C058C(v127, v128, &qword_268B3D920);
  if (v219)
  {
LABEL_33:
    OUTLINED_FUNCTION_297();
    if (v148)
    {
LABEL_35:
      OUTLINED_FUNCTION_62(v129, qword_2802CDA10);
      v130 = OUTLINED_FUNCTION_291();
      v131(v130);
      v132 = sub_268B37A34();
      sub_268B37F04();
      v133 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v133, v134))
      {
        OUTLINED_FUNCTION_64();
        v135 = swift_slowAlloc();
        OUTLINED_FUNCTION_81(v135);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v136, v137, v138, v139, v140, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      v141 = OUTLINED_FUNCTION_131();
      v142(v141);
      OUTLINED_FUNCTION_325(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_264();
      while (1)
      {
        if (v132 == v80)
        {
          goto LABEL_81;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v150 = OUTLINED_FUNCTION_100();
          MEMORY[0x26D625BD0](v150);
        }

        else
        {
          if (v80 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          OUTLINED_FUNCTION_316();
        }

        OUTLINED_FUNCTION_281();
        if (v114)
        {
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v143 = sub_2688E176C(v61);
        v145 = v144;
        v146 = sub_268B37724();
        if (!v145)
        {
          break;
        }

        v148 = v143 == v146 && v145 == v147;
        if (v148)
        {
        }

        else
        {
          v149 = OUTLINED_FUNCTION_311();

          if ((v149 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        sub_268B38214();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
LABEL_54:
        v80 = (v80 + 1);
      }

LABEL_51:

      goto LABEL_54;
    }

LABEL_91:
    OUTLINED_FUNCTION_0_2();
    v129 = swift_once();
    goto LABEL_35;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&off_2802A5910, &unk_268B3BEE0);
  v85 = OUTLINED_FUNCTION_174();
  *(v85 + 16) = xmmword_268B3BBD0;
  v80 = (v80 + v85);
  v86 = *MEMORY[0x277D5F9A8];
  v87 = OUTLINED_FUNCTION_216();
  v57(v87);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v54);
  (v57)(v61 + v80, *MEMORY[0x277D5F9B8], v54);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v54);
  v61 = v70;
  OUTLINED_FUNCTION_208(*(v70 + 84));
  OUTLINED_FUNCTION_249();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_59();
  v97 = OUTLINED_FUNCTION_302(v95, v96);
  swift_setDeallocating();
  sub_268ACE758();
  v98 = OUTLINED_FUNCTION_275();
  v100 = sub_2688C058C(v98, v99, &qword_268B3D920);
  if (v97)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v100 = swift_once();
    }

    OUTLINED_FUNCTION_62(v100, qword_2802CDA10);
    v101 = OUTLINED_FUNCTION_291();
    v102(v101);
    v103 = sub_268B37A34();
    sub_268B37F04();
    v104 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v104, v105))
    {
      OUTLINED_FUNCTION_64();
      v106 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v106);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v107, v108, v109, v110, v111, 2u);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    v112 = OUTLINED_FUNCTION_131();
    v113(v112);
    OUTLINED_FUNCTION_325(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_264();
    while (1)
    {
      if (v103 == v80)
      {
        goto LABEL_81;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v115 = OUTLINED_FUNCTION_100();
        MEMORY[0x26D625BD0](v115);
      }

      else
      {
        if (v80 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        OUTLINED_FUNCTION_316();
      }

      OUTLINED_FUNCTION_281();
      if (v114)
      {
        break;
      }

      if (sub_268983434())
      {
        sub_268B38214();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }

      v80 = (v80 + 1);
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    __break(1u);
    goto LABEL_91;
  }

  v116 = OUTLINED_FUNCTION_305();
  if (v116[2])
  {
    OUTLINED_FUNCTION_243(MEMORY[0x277D84F90]);
    v117 = v231[0];
    do
    {
      v118 = v116[4];
      v119 = v116[5];
      sub_268B37C34();
      OUTLINED_FUNCTION_188();
      if (v120)
      {
        sub_26894470C();
        v117 = v231[0];
      }

      OUTLINED_FUNCTION_211();
    }

    while (!v148);
  }

  else
  {

    v117 = MEMORY[0x277D84F90];
  }

  sub_26893E6A8(v117);
  v152 = v151;
  OUTLINED_FUNCTION_297();
  v153 = v229;
  if (!v148)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v154 = OUTLINED_FUNCTION_82(v228, qword_2802CDA10);
  v156 = OUTLINED_FUNCTION_178(v154, v155);
  v157(v156);

  v158 = v225;
  v159 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_270();

  if (OUTLINED_FUNCTION_210())
  {
    v153 = OUTLINED_FUNCTION_238();
    v231[0] = OUTLINED_FUNCTION_237();
    *v153 = 136315394;
    v160 = sub_268B37E24();
    OUTLINED_FUNCTION_318(v160, v161);
    OUTLINED_FUNCTION_234();
    v162 = OUTLINED_FUNCTION_315();
    v163 = MEMORY[0x26D625710](v20, v162);
    OUTLINED_FUNCTION_318(v163, v164);
    OUTLINED_FUNCTION_234();
    *(v153 + 14) = 0x2802A4000;
    OUTLINED_FUNCTION_72();
    _os_log_impl(v165, v166, v167, v168, v153, 0x16u);
    swift_arrayDestroy();
    v169 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v169);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v226 = *(v229 + 8);
  v226(v225, v228);
  v61 = MEMORY[0x277D84F90];
  v231[0] = MEMORY[0x277D84F90];
  sub_2688EFD0C(v20);
  OUTLINED_FUNCTION_263();
  while (v159 != v153)
  {
    v170 = OUTLINED_FUNCTION_192();
    v158 = MEMORY[0x26D625BD0](v170);
    if (__OFADD__(v153, 1))
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_314();

    if (v230)
    {
      v158 = v231;
      MEMORY[0x26D6256C0]();
      OUTLINED_FUNCTION_251();
      if (v120)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
      v61 = v231[0];
    }

    ++v153;
  }

  if (sub_2688EFD0C(v61) <= 1)
  {
    v175 = OUTLINED_FUNCTION_157();
    v176(v175);

    v177 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_321();
    if (OUTLINED_FUNCTION_210())
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  OUTLINED_FUNCTION_235(v227[20]);
  sub_268B37034();
  v171 = OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_124(v171);
  if (v148)
  {
    sub_2688C058C(v158, &qword_2802A58F0, &unk_268B3BEC0);
    OUTLINED_FUNCTION_175(&a14);
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v224);
    goto LABEL_78;
  }

  v153 = v222;
  sub_268B36FE4();
  OUTLINED_FUNCTION_70(v159);
  v179 = *(v178 + 8);
  v180 = OUTLINED_FUNCTION_103();
  v181(v180);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_135(v182, v183, v20);
  if (v184)
  {
LABEL_78:
    sub_2688C058C(v153, &qword_2802A58F8, &unk_268B3C510);
    OUTLINED_FUNCTION_142();
    v185();

    v177 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_321();
    if (OUTLINED_FUNCTION_210())
    {
LABEL_79:
      OUTLINED_FUNCTION_68();
      v186 = swift_slowAlloc();
      OUTLINED_FUNCTION_69();
      v187 = swift_slowAlloc();
      OUTLINED_FUNCTION_283(v187);
      OUTLINED_FUNCTION_244(4.8149e-34);
      OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_322(v188, v189);
      OUTLINED_FUNCTION_241();
      *(v186 + 4) = v152;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v190, v191, v192, v193, v194, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v195 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v195);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

LABEL_80:

    v196 = OUTLINED_FUNCTION_233();
    v197(v196);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_133(&v235);
  v198 = OUTLINED_FUNCTION_225();
  v199(v198);
  OUTLINED_FUNCTION_109(&a10);
  OUTLINED_FUNCTION_142();
  v200();
  OUTLINED_FUNCTION_120();
  v201 = OUTLINED_FUNCTION_224();
  v202(v201);
  v203 = sub_268B37A34();
  sub_268B37F04();
  v204 = OUTLINED_FUNCTION_71();
  if (os_log_type_enabled(v204, v205))
  {
    OUTLINED_FUNCTION_68();
    v206 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v207 = swift_slowAlloc();
    v231[0] = v207;
    *v206 = 136315138;
    sub_268B37184();
    OUTLINED_FUNCTION_186();
    v209 = v208;
    OUTLINED_FUNCTION_140();
    v228();
    sub_26892CDB8(v223, v209, v231);
    OUTLINED_FUNCTION_186();

    *(v206 + 4) = v223;
    OUTLINED_FUNCTION_308(&dword_2688BB000, v210, v211, "Multiple devices matched. Narrowing down using device capabilities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v207);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v212 = OUTLINED_FUNCTION_294();
  }

  else
  {

    OUTLINED_FUNCTION_140();
    v213 = OUTLINED_FUNCTION_122();
    (v228)(v213);
    v212 = OUTLINED_FUNCTION_228();
  }

  (v226)(v212);
  OUTLINED_FUNCTION_249();
  MEMORY[0x28223BE20](v214);
  OUTLINED_FUNCTION_59();
  *(v215 - 16) = v221;
  OUTLINED_FUNCTION_36();
  sub_2688C8F5C(v220, v216, v61, v217);
  v218 = OUTLINED_FUNCTION_138();
  (v228)(v218);
LABEL_81:
  __swift_destroy_boxed_opaque_existential_0Tm(v232);
  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_23();
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  v11 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  v12 = *(v0 + v7 + 8);

  v13 = *(v0 + v8 + 8);

  v14 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v4 | 7);
}

uint64_t sub_2688E901C()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_19_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return v0(v2, *(v1 + 2), v1 + 3, *(v1 + 4), *(v1 + 5), &v1[v8], *&v1[v9], *&v1[v9 + 8], *&v1[(v9 + 23) & 0xFFFFFFFFFFFFFFF8], *&v1[((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8], *&v1[(((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8]);
}

uint64_t sub_2688E9188()
{
  OUTLINED_FUNCTION_193();
  v6 = *(v0 + 96);
  return v4(v1, v2, v3);
}

uint64_t objectdestroy_13Tm()
{
  OUTLINED_FUNCTION_298();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_255(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v9 = *(v7 + 80);
  v30 = *(v10 + 64);
  v11 = *(v0 + 16);

  v12 = (v0 + v3);
  OUTLINED_FUNCTION_100();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v13 = sub_268B350F4();
    OUTLINED_FUNCTION_4(v13);
    (*(v14 + 8))(v0 + v3);
  }

  v15 = (v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v15 + 8);

  v22 = *(v0 + v16 + 8);

  v23 = *(v0 + v19);

  v24 = *(v0 + v20);

  (*(v8 + 8))(v0 + ((v9 + v20 + 8) & ~v9), v6);
  OUTLINED_FUNCTION_299();

  return MEMORY[0x2821FE8E8](v25, v26, v27);
}

uint64_t sub_2688E9428()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_19_0(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_22(v12);
  return v0(v2, *(v1 + 16), v1 + v5, *(v1 + v7), *(v1 + v7 + 8), *(v1 + v8), *(v1 + v8 + 8), *(v1 + v9), *(v1 + v10), v1 + v11, *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v1 + ((*(v13 + 80) + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v13 + 80)));
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t objectdestroy_19Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2688E96E8()
{
  OUTLINED_FUNCTION_193();
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  return v5(v1, v2, v3, v4);
}

uint64_t objectdestroy_36Tm()
{
  OUTLINED_FUNCTION_298();
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v8 = (v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v23 = sub_268B36A54();
  OUTLINED_FUNCTION_1(v23);
  v11 = v10;
  v12 = (v8 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v22 = *(v13 + 64);
  v14 = *(v0 + 16);

  (*(v3 + 8))(v0 + v4, v1);
  v15 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v15);
  (*(v16 + 8))(v0 + v8);

  (*(v11 + 8))(v0 + v12, v23);
  OUTLINED_FUNCTION_299();

  return MEMORY[0x2821FE8E8](v17, v18, v19);
}

uint64_t objectdestroy_40Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_61Tm()
{
  OUTLINED_FUNCTION_298();
  v1 = sub_268B35434();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v10 = (v6 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v1);
  v13 = *(v0 + v6 + 8);

  (*(v9 + 8))(v0 + v10, v7);
  v14 = *(v0 + v12);

  OUTLINED_FUNCTION_299();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_2688E9AC8(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v2 = sub_268B35434();
  OUTLINED_FUNCTION_19_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_19_0(v7);
  v9 = v8;
  v11 = v10;
  v12 = (v6 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + v6);
  v15 = *(v1 + v6 + 8);
  v16 = *(v1 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v4, v14, v15, v1 + v12, v1 + v13, v16);
}

uint64_t objectdestroy_68Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_58Tm()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B34E24();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v7);
  v9 = (v6 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = *(v0 + 16);

  v13 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  v14 = sub_268B34B94();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v14))
  {
    OUTLINED_FUNCTION_70(v14);
    (*(v15 + 8))(v0 + v9, v14);
  }

  v16 = (((v11 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;

  v18 = *(v0 + v17 + 8);

  v19 = *(v0 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v20, v21, v22);
}

uint64_t sub_2688EA03C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2688EA07C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_229();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 104) = a6;
  *(v7 - 96) = a7;
  *(v7 - 120) = a4;
  *(v7 - 112) = a5;
  *(v7 - 160) = a2;
  *(v7 - 88) = result;
  v8 = **(v7 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{
  *(v4 - 184) = a1;
  v5 = v1[16];
  v6 = v1[17];
  *(v4 - 144) = v5;
  *(v4 - 136) = v6;
  *(v4 - 152) = __swift_project_boxed_opaque_existential_1(v1 + 13, v5);
  v7 = *(v3 + 16);
  result = v2;
  v9 = *(v4 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  *(v0 + v2) = *(v5 - 172);
  *(v0 + v3) = *(v5 - 184);
  v7 = (v0 + v4);
  v8 = *(v5 - 112);
  *v7 = *(v5 - 120);
  v7[1] = v8;
  v9 = (v0 + v1);
  v10 = *(v5 - 96);
  *v9 = *(v5 - 104);
  v9[1] = v10;
  *(v0 + *(v5 - 160)) = *(v5 - 128);
}

void *OUTLINED_FUNCTION_9_1(uint64_t a1)
{
  *(v3 - 184) = a1;
  v4 = v1[16];
  v5 = v1[17];
  *(v3 - 144) = v4;
  *(v3 - 136) = v5;
  result = __swift_project_boxed_opaque_existential_1(v1 + 13, v4);
  *(v3 - 152) = result;
  v7 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t result)
{
  *(v1 - 216) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1)
{
  v5 = *(v4 - 88);
  *(a1 + 16) = v1;
  *(a1 + 24) = v5;
  v6 = *(v2 + 32);
  result = a1 + v3;
  v9 = *(v4 - 216);
  v8 = *(v4 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1)
{
  v5 = *(v4 - 88);
  *(a1 + 16) = v1;
  *(a1 + 24) = v5;
  v6 = *(v2 + 32);
  result = a1 + v3;
  v9 = *(v4 - 216);
  v8 = *(v4 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t result, uint64_t a2)
{
  *(v2 - 160) = a2;
  *(v2 - 88) = result;
  v3 = **(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 208) = &a9 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 - 192) = v10;

  return sub_26898ABC4(v10);
}

uint64_t OUTLINED_FUNCTION_17_1@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 168);
  v4 = *(v1 - 160);
  v5 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0@<X0>(void *a1@<X8>)
{
  result = *(v1 - 96);
  *a1 = *(v1 - 104);
  a1[1] = result;
  v3 = *(v1 - 128);
  v4 = *(v1 - 160);
  return result;
}

void OUTLINED_FUNCTION_24_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

uint64_t OUTLINED_FUNCTION_29@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + v2);
  result = *(v3 - 200);
  *v4 = *(v3 - 192);
  v4[1] = a1;
  return result;
}

void OUTLINED_FUNCTION_30()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_39@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v3 - 136) = a1;
  *(v3 - 96) = 1;
  result = v3 - 136;
  v5 = *(v3 - 152);
  v6 = *(v3 - 144);
  return result;
}

void OUTLINED_FUNCTION_41()
{
  v1 = *(v0 - 264);
  v3 = *(v0 - 256);
  v2 = *(v0 - 248);
}

uint64_t OUTLINED_FUNCTION_42@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 200) = &a2 - a1;

  return sub_268B34E24();
}

unint64_t OUTLINED_FUNCTION_46()
{
  *(v2 + 16) = v0;
  v5 = *(v3 - 112);
  v4 = *(v3 - 104);
  v6 = *(v5 + 32);
  return v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v1;
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_60()
{
  v3 = *(v0 - 152);
  v2 = *(v0 - 144);
  v4 = *(v0 - 136);

  return sub_268B36DB4();
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(*(v2 - 176), a2);
  v4 = *(*(v2 - 168) + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_80()
{
  v5 = *(*(v3 - 208) + 80);
  *(v3 - 192) = (v1 + ((v5 + ((v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v5) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v3 - 160);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_83@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  v5 = *(v3 - 216);
  **(v3 - 208) = a1;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_86(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_87()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_90()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_268B35044();
}

void OUTLINED_FUNCTION_92()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_93()
{
  v2 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_102(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 120) = a6;
  *(v7 - 112) = a7;
  *(v7 - 136) = a4;
  *(v7 - 128) = a5;
  *(v7 - 192) = a2;
  v8 = *(v7 + 40);
  *(v7 - 104) = *(v7 + 48);
  *(v7 - 96) = result;
  v9 = *(v7 + 24);
  *(v7 - 160) = *(v7 + 32);
  *(v7 - 152) = v8;
  v10 = **(v7 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_117()
{
  *(v0 + *(v5 - 192)) = *(v5 - 196);
  *(v0 + v1) = *(v5 - 216);
  v7 = (v0 + v3);
  v8 = *(v5 - 128);
  *v7 = *(v5 - 136);
  v7[1] = v8;
  v9 = (v0 + v4);
  v10 = *(v5 - 112);
  *v9 = *(v5 - 120);
  v9[1] = v10;
  *(v0 + v2) = *(v5 - 144);
}

uint64_t OUTLINED_FUNCTION_118()
{
  v3 = **(v1 - 136);
  v4 = *v0;
}

uint64_t OUTLINED_FUNCTION_121()
{
  v3 = *(v0 + 32);
  result = v1;
  v5 = *(v2 - 152);
  v6 = *(v2 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_126()
{
  v2 = **(v0 - 128);
  v3 = **(v0 - 120);
}

void OUTLINED_FUNCTION_128()
{
  v1 = *(v0 - 232);
  v2 = *(v0 - 168);
  v3 = *(v0 - 264);
  v4 = *(v0 - 256);
}

uint64_t OUTLINED_FUNCTION_130(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_142()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 208);
  v3 = *(v0 - 200);
}

void OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 72) = v8;
  *(v9 - 256) = a6;
  *(v9 - 248) = a8;
  *(v9 - 160) = a7;
  *(v9 - 264) = a5;
  *(v9 - 152) = a3;
  *(v9 - 144) = a4;
}

uint64_t OUTLINED_FUNCTION_155(uint64_t a1)
{
  v4 = *(v3 - 248);
  v5 = *(v3 - 96);
  *(a1 + 16) = *(v3 - 240);
  *(a1 + 24) = v5;
  v6 = *(v2 + 32);
  result = a1 + v1;
  v8 = *(v3 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_157()
{
  result = *(v0 - 312);
  v2 = *(v0 - 216);
  v3 = *(v0 - 208);
  v4 = *(v0 - 176);
  v5 = *(v0 - 200);
  return result;
}

void OUTLINED_FUNCTION_160()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
  *(v0 - 112) = 978219048;
  *(v0 - 104) = 0xE400000000000000;
}

uint64_t OUTLINED_FUNCTION_165(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 248) = &a9 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 - 224) = v10;

  return sub_26898ABC4(v10);
}

uint64_t OUTLINED_FUNCTION_166(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 208) = &a9 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 - 192) = v9;

  return sub_26898ABC4(v9);
}

uint64_t OUTLINED_FUNCTION_168()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_169(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_170(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_171()
{
  v2 = *(*(v0 - 144) + 16);

  return sub_268B38244();
}

uint64_t OUTLINED_FUNCTION_172(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 + 16);
  result = v2;
  *(v5 - 168) = a2;
  *(v5 - 160) = v6;
  *(v5 - 136) = v3;
  *(v5 - 152) = v4 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_173(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 256) = a4;
  *(v6 - 248) = a6;
  *(v6 - 200) = a3;
  *(v6 - 192) = a2;
  *(v6 - 224) = result;
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_174()
{
  v2 = *(v0 - 208);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_177(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t (*a22)(void))
{
  v24 = *(v22 - 264);
  v25 = *(v22 - 256);
  v26 = *(v22 - 168);

  sub_2688E1FD4(a1, 1, v24, v25, v26, a6, 0xE700000000000000, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  result = v3;
  *(v4 - 216) = a2;
  *(v4 - 208) = v5;
  *(v4 - 200) = v2 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_180(uint64_t result)
{
  *(v1 - 256) = result;
  v2 = *(result - 8);
  return result;
}

void OUTLINED_FUNCTION_184()
{

  JUMPOUT(0x26D625650);
}

void OUTLINED_FUNCTION_187()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void OUTLINED_FUNCTION_188()
{
  *(v1 - 144) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

__n128 OUTLINED_FUNCTION_193()
{
  v1 = v0[1].n128_u64[0];
  v2 = v0[1].n128_u64[1];
  v3 = v0[2].n128_u64[0];
  v4 = v0[2].n128_u64[1];
  v5 = v0[3].n128_u64[0];
  v6 = v0[3].n128_u64[1];
  v7 = v0[4].n128_u64[0];
  v8 = v0[4].n128_u64[1];
  return v0[5];
}

uint64_t OUTLINED_FUNCTION_195()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_196(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_199()
{
  v1 = *(v0 - 336);
  v2 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));
  v3 = *(v2 + 8);

  return sub_268B37834();
}

void OUTLINED_FUNCTION_200(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_2688C6D20(a1, a2, a3, a4, a5, a6, a7, a8, a9, v26, v27, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

double OUTLINED_FUNCTION_203()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

void OUTLINED_FUNCTION_204(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_205()
{
  v2 = *(v0 - 208);
  v3 = *(v0 - 264);

  return sub_268B351E4();
}

void OUTLINED_FUNCTION_206(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t (*a22)(void))
{
  v24 = *(v22 - 264);
  v25 = *(v22 - 256);
  v26 = *(v22 - 248);
  v27 = *(v22 - 160);

  sub_2688E1FD4(a1, 2, v24, v25, v27, a6, 0xE700000000000000, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_207()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_208@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 216) + a1;
  v4 = *(v1 - 200);

  return sub_2688E451C();
}

uint64_t OUTLINED_FUNCTION_209()
{
  v2 = *(v0 - 280);

  return sub_268B35184();
}

BOOL OUTLINED_FUNCTION_210()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_211()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_212()
{
  *(v2 - 224) = v0;
  v3 = *(v0 + 104);
  return v1;
}

uint64_t OUTLINED_FUNCTION_215()
{
  v3 = (v0 + v1);
  result = *(v2 - 232);
  v5 = *(v2 - 152);
  *v3 = *(v2 - 224);
  v3[1] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_222()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_231(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 168) = a6;
  *(v7 - 160) = a7;
  *(v7 - 256) = a5;
  *(v7 - 264) = a4;
  *(v7 - 152) = a2;
  *(v7 - 144) = a3;
}

uint64_t OUTLINED_FUNCTION_233()
{
  v2 = *(v1 - 168) + 8;
  result = v0;
  v4 = *(v1 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_234()
{
}

uint64_t OUTLINED_FUNCTION_235@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 240) + a1;
  v4 = *(v1 - 304);

  return sub_2688E451C();
}

uint64_t OUTLINED_FUNCTION_236()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_237()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_238()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_239()
{
  *(v1 - 112) = 978481960;
  *(v1 - 104) = v0;
  v3 = *(v1 - 136);
  v4 = *(v1 - 128);

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_240()
{
  *(v1 - 184) = v0;

  return sub_2688E451C();
}

uint64_t OUTLINED_FUNCTION_241()
{
}

uint64_t OUTLINED_FUNCTION_242@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

void OUTLINED_FUNCTION_243(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  sub_26894470C();
}

uint64_t OUTLINED_FUNCTION_244(float a1)
{
  *v1 = a1;

  return type metadata accessor for Device();
}

uint64_t OUTLINED_FUNCTION_245(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_246()
{

  JUMPOUT(0x26D6256F0);
}

uint64_t OUTLINED_FUNCTION_250()
{
  v4 = *(v1 + 56);
  *(v3 - 240) = v0;
  return v0 + v2;
}

uint64_t OUTLINED_FUNCTION_253@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + v2);
  result = *(v3 - 200);
  *v4 = *(v3 - 192);
  v4[1] = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_262(float a1)
{
  *v1 = a1;
  __swift_project_boxed_opaque_existential_1((v2 - 176), *(v2 - 152));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_265()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_269()
{
  result = v0;
  v4 = *(v1 - 200);
  v3 = *(v1 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_288()
{
  v2 = *(*(v1 - 176) + 104);
  *(v1 - 232) = v0;
  return v0;
}

uint64_t OUTLINED_FUNCTION_289@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  v3 = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_294()
{
  v1 = *(v0 - 176);
  v2 = *(v0 - 168) + 8;
  return *(v0 - 328);
}

uint64_t OUTLINED_FUNCTION_300()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_301()
{
  v2 = *(v0 - 312);

  return sub_2688E451C();
}

BOOL OUTLINED_FUNCTION_302@<W0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 - 16) = v3;
  v6 = *(v4 - 192);

  return sub_268ACD16C(v6, a1, v2);
}

uint64_t OUTLINED_FUNCTION_303()
{

  return sub_2688E451C();
}

void OUTLINED_FUNCTION_304(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_305()
{
  v3 = *(v1 - 264);
  v4 = *(v1 - 240);

  return MEMORY[0x2821C4700](v0, v3);
}

void OUTLINED_FUNCTION_306(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_307()
{
  *(v0 - 96) = 40;
  *(v0 - 88) = 0xE100000000000000;

  JUMPOUT(0x26D625650);
}

void OUTLINED_FUNCTION_308(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_309(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_310()
{
  v3 = *(v0 - 152);
  v2 = *(v0 - 144);
  v4 = *(v0 - 136);

  return sub_268B36DB4();
}

uint64_t OUTLINED_FUNCTION_311()
{

  return sub_268B38444();
}

void OUTLINED_FUNCTION_312()
{
  *(v1 - 112) = 978611496;
  *(v1 - 104) = v0;

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_313()
{
  v2 = *(v0 - 104);
  v4 = *(v0 - 184);
  v3 = *(v0 - 176);
  v5 = *(v0 - 168);

  return sub_268B36DB4();
}

id OUTLINED_FUNCTION_314()
{
  *(v2 - 152) = v0;

  return sub_2688F088C((v2 - 152), v1, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_315()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return type metadata accessor for Device();
}

id OUTLINED_FUNCTION_316()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_317()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_318(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_319()
{

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 - 176));
}

uint64_t OUTLINED_FUNCTION_320()
{

  return sub_2688E4594(v0 - 128, v0 - 176);
}

uint64_t OUTLINED_FUNCTION_321()
{
}

uint64_t OUTLINED_FUNCTION_322(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_323()
{

  return sub_2688E451C();
}

uint64_t OUTLINED_FUNCTION_324()
{

  return sub_268B34DC4();
}

uint64_t OUTLINED_FUNCTION_325@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 144) = a1;

  return sub_2688EFD0C(v1);
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

uint64_t sub_2688EBEF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2688EBF38(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2688EBF90()
{
  OUTLINED_FUNCTION_0_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_2(v1);
  sub_2689971E4("fetchContext", 12, 2, 1, sub_2688E19C4, v0, sub_2688EF4F8, &v3);
}

uint64_t sub_2688EC028(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  v9 = *MEMORY[0x277CEEFE0];
  *(inited + 32) = sub_268B37BF4();
  *(inited + 40) = v10;

  sub_268A63AD8(inited);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2688EF500;
  *(v11 + 24) = v6;
  sub_268B36B64();
}

uint64_t sub_2688EC158(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  if (a1)
  {
    v44 = v13;
    v47 = a3;
    v48 = a2;
    if (qword_2802A5030 != -1)
    {
LABEL_28:
      swift_once();
    }

    v16 = __swift_project_value_buffer(v6, qword_2802CDB30);
    v41 = v7[2];
    v42 = v16;
    v41(v12);

    v17 = sub_268B37A34();
    v18 = sub_268B37F04();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = sub_2688EFD0C(a1);

      _os_log_impl(&dword_2688BB000, v17, v18, "Got mediaContext for %ld devices", v19, 0xCu);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    else
    {
    }

    v26 = v7[1];
    v45 = ++v7;
    v46 = v6;
    v43 = v26;
    v26(v12, v6);
    v27 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
    v28 = sub_2688EFD0C(a1);
    v12 = 0;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    while (v28 != v12)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x26D625BD0](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v29 = *(a1 + 8 * v12 + 32);
      }

      v30 = v29;
      v31 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 = sub_2688EC6C0(v12, v29);

      ++v12;
      if (v7)
      {
        MEMORY[0x26D6256C0]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();
        v27 = v49;
        v12 = v31;
      }
    }

    v32 = v44;
    v33 = v46;
    (v41)(v44, v42, v46);

    v34 = sub_268B37A34();
    v35 = sub_268B37F04();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 134218242;
      *(v36 + 4) = sub_2688EFD0C(v27);

      *(v36 + 12) = 2112;
      type metadata accessor for DeviceContext();
      v38 = sub_268B37CE4();
      *(v36 + 14) = v38;
      *v37 = v38;
      _os_log_impl(&dword_2688BB000, v34, v35, "Returning %ld context(s): %@", v36, 0x16u);
      sub_2688EF38C(v37, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v37, -1, -1);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    else
    {
    }

    v39 = v48;
    v43(v32, v33);
    v39(v27);
  }

  else
  {
    if (qword_2802A5030 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v6, qword_2802CDB30);
    v21 = v6;
    (v7[2])(v15, v20, v6);
    v22 = sub_268B37A34();
    v23 = sub_268B37EE4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2688BB000, v22, v23, "Got nil context array", v24, 2u);
      MEMORY[0x26D6266E0](v24, -1, -1);
    }

    (v7[1])(v15, v21);
    return (a2)(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2688EC6C0(uint64_t a1, void *a2)
{
  v4 = sub_268B34614();
  v70 = *(v4 - 8);
  isa = v70[8].isa;
  MEMORY[0x28223BE20](v4);
  v69 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v68 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - v12;
  if (qword_2802A5030 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_2802CDB30);
  v66 = v8[2];
  v67 = v14;
  v66(v13);
  v15 = a2;
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = a1;
    v21 = v4;
    v22 = v19;
    *v18 = 134218242;
    *(v18 + 4) = v20;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v19 = v15;
    v23 = v15;
    _os_log_impl(&dword_2688BB000, v16, v17, "Mapping device context %ld: %@", v18, 0x16u);
    sub_2688EF38C(v22, &qword_2802A6420, &unk_268B3C680);
    v24 = v22;
    v4 = v21;
    MEMORY[0x26D6266E0](v24, -1, -1);
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  v25 = v8[1];
  v25(v13, v7);
  v26 = sub_2688EF060(v15, &selRef_serializedContextByKey);
  if (!v26)
  {
    __break(1u);
    goto LABEL_47;
  }

  v27 = v26;
  v28 = *MEMORY[0x277CEEFE0];
  sub_268B37BF4();
  sub_26892E0F4(v27, &v73);

  if (!v74)
  {
    sub_2688EF38C(&v73, &byte_2802A6450, &byte_268B3BE10);
    return 0;
  }

  sub_2688EF2B0(&v73, v77);
  sub_2688EF2C0(v77, &v73);
  v29 = objc_allocWithZone(MEMORY[0x277CEF2F0]);
  v30 = sub_2688EEF14(&v73);
  type metadata accessor for DeviceContext();
  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = sub_26893A824(0, 0xE000000000000000);
  [v32 setProximity_];
  v33 = [v30 nowPlayingTimestamp];
  if (v33)
  {
    v34 = v69;
    sub_268B345D4();

    v33 = sub_268B34594();
    (v70[1].isa)(v34, v4);
  }

  [v32 setNowPlayingTimestamp_];

  v35 = [v30 playbackState];
  if ((v35 - 2) < 2)
  {
    goto LABEL_21;
  }

  v36 = v35;
  if (v35 != 1)
  {
    if (v35 == 4)
    {
      v37 = v68;
      (v66)(v68, v67, v7);
      v38 = v15;
      v39 = sub_268B37A34();
      v40 = sub_268B37EE4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v70 = v39;
        v42 = v41;
        v69 = swift_slowAlloc();
        *&v73 = v69;
        *v42 = 136315138;
        v43 = sub_2688EF000(v38, &selRef_mediaRouteIdentifier);
        if (v44)
        {
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0xE000000000000000;
        }

        v46 = v40;
        v47 = sub_26892CDB8(v43, v45, &v73);

        *(v42 + 4) = v47;
        v48 = v46;
        v49 = v70;
        _os_log_impl(&dword_2688BB000, v70, v48, "Device %s is in interrupted state, treating as paused.", v42, 0xCu);
        v50 = v69;
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        MEMORY[0x26D6266E0](v50, -1, -1);
        MEMORY[0x26D6266E0](v42, -1, -1);

        v51 = v68;
      }

      else
      {

        v51 = v37;
      }

      v25(v51, v7);
LABEL_21:
      v36 = 2;
      goto LABEL_22;
    }

    v36 = 0;
  }

LABEL_22:
  [v32 setNowPlayingState_];
  v52 = sub_2688EF000(v30, &selRef_mediaType);
  [v32 setNowPlayingMediaType_];
  v26 = [v32 proximity];
  if ((v26 - 1) < 4)
  {
    goto LABEL_23;
  }

  if (!v26)
  {
    v65 = sub_268AACBE0();
    if (v65 != 7 && sub_268AD3708(v65, &unk_28794EA98))
    {
      [v32 setRouteId_];
      goto LABEL_27;
    }

LABEL_23:
    sub_2688EF000(v15, &selRef_mediaRouteIdentifier);
    if (v54)
    {
      v55 = sub_268B37BC4();
    }

    else
    {
      v55 = 0;
    }

    [v32 setRouteId_];

LABEL_27:
    sub_2688EF000(v30, &selRef_groupIdentifier);
    if (v56)
    {
      v57 = sub_268B37BC4();
    }

    else
    {
      v57 = 0;
    }

    [v32 setGroupId_];

    sub_2688EF000(v15, &selRef_roomName);
    if (v58)
    {
      v59 = sub_268B37BC4();
    }

    else
    {
      v59 = 0;
    }

    [v32 setRoomName_];

    v60 = sub_2688EF060(v15, &selRef_metricsContext);
    if (v60)
    {
      v61 = v60;
      v71 = 0x54746375646F7270;
      v72 = 0xEB00000000657079;
      sub_268B38164();
      sub_26892E294(&v73, v61, &v75);

      sub_2688EF510(&v73);
      if (*(&v76 + 1))
      {
        if (swift_dynamicCast())
        {
          v62 = sub_268B37BC4();

LABEL_40:
          [v32 setDeviceType_];

          [v30 isProxyGroupPlayer];
          v63 = sub_268B37D64();
          [v32 setSilentPrimary_];

          __swift_destroy_boxed_opaque_existential_0Tm(v77);
          return v32;
        }

LABEL_39:
        v62 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    sub_2688EF38C(&v75, &byte_2802A6450, &byte_268B3BE10);
    goto LABEL_39;
  }

LABEL_47:
  *&v73 = v26;
  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t sub_2688ECF44()
{
  OUTLINED_FUNCTION_0_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_2(v1);
  sub_26899729C("fetchQuickStopContext", 21, 2, 1, sub_2688EA334, v0, sub_2688EF174, &v3);
}

uint64_t sub_2688ECFDC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3C0C0;
  v8 = *MEMORY[0x277CEEFC0];
  *(inited + 32) = sub_268B37BF4();
  *(inited + 40) = v9;
  v10 = *MEMORY[0x277CEEFF8];
  *(inited + 48) = sub_268B37BF4();
  *(inited + 56) = v11;
  v12 = *MEMORY[0x277CEEFE0];
  *(inited + 64) = sub_268B37BF4();
  *(inited + 72) = v13;
  v14 = *MEMORY[0x277CEEFE8];
  *(inited + 80) = sub_268B37BF4();
  *(inited + 88) = v15;
  v16 = *MEMORY[0x277CEEFD8];
  *(inited + 96) = sub_268B37BF4();
  *(inited + 104) = v17;
  v18 = *MEMORY[0x277CEEFD0];
  *(inited + 112) = sub_268B37BF4();
  *(inited + 120) = v19;

  sub_268A63AD8(inited);
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2688EF17C;
  *(v21 + 24) = v6;
  sub_268B36B64();
}

uint64_t sub_2688ED16C(uint64_t a1, void (*a2)(void), unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AA0, &unk_268B3C150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - v8;
  v69 = type metadata accessor for QuickStopContext(0);
  v65 = *(v69 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](v69);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v56 - v13;
  v14 = sub_268B37A54();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v66 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  if (a1)
  {
    if (qword_2802A5030 != -1)
    {
LABEL_31:
      swift_once();
    }

    v24 = __swift_project_value_buffer(v14, qword_2802CDB30);
    v25 = *(v15 + 16);
    v57 = v24;
    v58 = v15 + 16;
    v56 = v25;
    v25(v21);

    v26 = sub_268B37A34();
    v27 = sub_268B37F04();
    v28 = os_log_type_enabled(v26, v27);
    v62 = a3;
    v63 = a2;
    if (v28)
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = sub_2688EFD0C(a1);

      _os_log_impl(&dword_2688BB000, v26, v27, "Got QuickStop context for %ld devices", v29, 0xCu);
      MEMORY[0x26D6266E0](v29, -1, -1);
    }

    else
    {
    }

    v35 = *(v15 + 8);
    v60 = v15 + 8;
    v61 = v14;
    v59 = v35;
    v35(v21, v14);
    v21 = sub_2688EFD0C(a1);
    v15 = 0;
    a2 = (a1 & 0xC000000000000001);
    v68 = MEMORY[0x277D84F90];
    v14 = &qword_2802A5AA0;
    while (v21 != v15)
    {
      if (a2)
      {
        v36 = MEMORY[0x26D625BD0](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v36 = *(a1 + 8 * v15 + 32);
      }

      v37 = v36;
      a3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_2688ED84C(v15, v36, v9);

      if (__swift_getEnumTagSinglePayload(v9, 1, v69) == 1)
      {
        sub_2688EF38C(v9, &qword_2802A5AA0, &unk_268B3C150);
        ++v15;
      }

      else
      {
        v38 = v64;
        sub_2688EF18C(v9, v64);
        sub_2688EF18C(v38, v67);
        v39 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v39 + 16);
          sub_268987AD4();
          v39 = v45;
        }

        v41 = *(v39 + 16);
        v40 = *(v39 + 24);
        v68 = v39;
        if (v41 >= v40 >> 1)
        {
          sub_268987AD4();
          v68 = v46;
        }

        v42 = v67;
        v43 = v68;
        *(v68 + 16) = v41 + 1;
        sub_2688EF18C(v42, v43 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v41);
        v15 = a3;
      }
    }

    v47 = v66;
    v48 = v61;
    v56(v66, v57, v61);
    v49 = v68;

    v50 = sub_268B37A34();
    v51 = sub_268B37F04();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 134218242;
      *(v52 + 4) = *(v49 + 16);

      *(v52 + 12) = 2112;
      v54 = sub_268B37CE4();
      *(v52 + 14) = v54;
      *v53 = v54;
      _os_log_impl(&dword_2688BB000, v50, v51, "Returning %ld QuickStop context(s): %@", v52, 0x16u);
      sub_2688EF38C(v53, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v53, -1, -1);
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    else
    {
    }

    v55 = v63;
    v59(v47, v48);
    v55(v49);
  }

  else
  {
    if (qword_2802A5030 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v14, qword_2802CDB30);
    (*(v15 + 16))(v23, v30, v14);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Got nil context array", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    (*(v15 + 8))(v23, v14);
    return (a2)(MEMORY[0x277D84F90]);
  }
}

char *sub_2688ED84C@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AA8, qword_268B3C160);
  v6 = *(*(v135 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v135);
  v134 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v118 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v121 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v131 = (&v118 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v123 = &v118 - v17;
  MEMORY[0x28223BE20](v16);
  v132 = &v118 - v18;
  v136 = sub_268B34614();
  v122 = *(v136 - 1);
  v19 = v122[8];
  v20 = MEMORY[0x28223BE20](v136);
  v119 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v120 = &v118 - v22;
  v23 = sub_268B34674();
  v24 = *(v23 - 8);
  v137 = v23;
  v138 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for QuickStopContext(0);
  v28 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_268B37A54();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5030 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v127 = a3;
    v35 = __swift_project_value_buffer(v30, qword_2802CDB30);
    (*(v31 + 16))(v34, v35, v30);
    v36 = a2;
    v37 = sub_268B37A34();
    v38 = sub_268B37F04();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 134218242;
      *(v39 + 4) = a1;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_2688BB000, v37, v38, "Mapping device context %ld: %@", v39, 0x16u);
      sub_2688EF38C(v40, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v40, -1, -1);
      MEMORY[0x26D6266E0](v39, -1, -1);
    }

    (*(v31 + 8))(v34, v30);
    result = [(SEL *)v36 identifier];
    if (!result)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v43 = result;
    sub_268B34654();

    v130 = v36;
    v44 = [(SEL *)v36 proximity];
    a1 = v128;
    v45 = v129;
    v46 = *(v129 + 24);
    v128[v46] = 0;
    v118 = v45[7];
    *(a1 + v118) = 0;
    v47 = v45[8];
    v48 = v136;
    __swift_storeEnumTagSinglePayload(a1 + v47, 1, 1, v136);
    a3 = v45[9];
    __swift_storeEnumTagSinglePayload(a1 + a3, 1, 1, v48);
    v124 = v45[10];
    *(a1 + v124) = 0;
    v126 = v45[11];
    *(a1 + v126) = 0;
    v125 = v45[12];
    *(a1 + v125) = 0;
    v49 = v45[13];
    v49[a1] = 0;
    v50 = v45[14];
    *(a1 + v50) = 0;
    (*(v138 + 32))(a1, v27, v137);
    if (v44 == 1000)
    {
      v52 = 3;
      goto LABEL_13;
    }

    if (v44 == 2000)
    {
      v52 = 2;
LABEL_13:
      v51 = v130;
      goto LABEL_15;
    }

    v51 = v130;
    if (v44 == 4000)
    {
      v52 = 0;
    }

    else
    {
      v52 = v44 == 3000 ? 1 : 4;
    }

LABEL_15:
    *(a1 + v45[5]) = v52;
    result = sub_2688EF060(v51, &selRef_serializedContextByKey);
    if (!result)
    {
      goto LABEL_78;
    }

    v53 = result;
    v54 = *MEMORY[0x277CEEFD0];
    sub_268B37BF4();
    sub_26892E0F4(v53, &v139);

    if (v140)
    {
      sub_2688EF2B0(&v139, v141);
      sub_2688EF2C0(v141, &v139);
      v55 = objc_allocWithZone(MEMORY[0x277CEF1C8]);
      v56 = sub_2688EEF14(&v139);
      if ([v56 callState] == 1)
      {
        v57 = [v56 isDropInCall];

        __swift_destroy_boxed_opaque_existential_0Tm(v141);
        if (v57)
        {
          *(a1 + v50) = 1;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v141);
      }
    }

    else
    {
      sub_2688EF38C(&v139, &byte_2802A6450, &byte_268B3BE10);
    }

    result = sub_2688EF060(v51, &selRef_serializedContextByKey);
    if (!result)
    {
      goto LABEL_79;
    }

    v58 = result;
    v59 = *MEMORY[0x277CEEFC0];
    sub_268B37BF4();
    sub_26892E0F4(v58, &v139);

    a2 = &unk_279C42000;
    if (!v140)
    {
      v67 = &byte_2802A6450;
      v68 = &byte_268B3BE10;
      v69 = &v139;
      goto LABEL_34;
    }

    sub_2688EF2B0(&v139, v141);
    sub_2688EF2C0(v141, &v139);
    v60 = objc_allocWithZone(MEMORY[0x277CEF1F0]);
    v61 = sub_2688EEF14(&v139);
    if (![v61 hasFiringAlarms])
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v141);

      goto LABEL_35;
    }

    v62 = [v61 mostRecentFiringAlarm];
    if (!v62)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v141);

      v70 = v132;
      __swift_storeEnumTagSinglePayload(v132, 1, 1, v136);
LABEL_33:
      v67 = &unk_2802A7350;
      v68 = qword_268B3FF10;
      v69 = v70;
LABEL_34:
      sub_2688EF38C(v69, v67, v68);
      goto LABEL_35;
    }

    v63 = v62;
    v64 = [v62 firedDate];

    if (v64)
    {
      v65 = v123;
      sub_268B345D4();

      __swift_destroy_boxed_opaque_existential_0Tm(v141);
      v66 = 0;
      v51 = v130;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v141);

      v66 = 1;
      v51 = v130;
      v65 = v123;
    }

    v71 = v65;
    v72 = v65;
    v73 = v136;
    __swift_storeEnumTagSinglePayload(v71, v66, 1, v136);
    v74 = v72;
    v70 = v132;
    sub_2688EF3EC(v74, v132);
    if (__swift_getEnumTagSinglePayload(v70, 1, v73) == 1)
    {
      goto LABEL_33;
    }

    v82 = v122[4];
    v123 = v49;
    v83 = a3;
    v84 = v120;
    v85 = v70;
    v86 = v136;
    v82(v120, v85, v136);
    *(a1 + v46) = 1;
    sub_2688EF38C(a1 + v47, &unk_2802A7350, qword_268B3FF10);
    v87 = v84;
    a3 = v83;
    v49 = v123;
    v82((a1 + v47), v87, v86);
    a2 = &unk_279C42000;
    __swift_storeEnumTagSinglePayload(a1 + v47, 0, 1, v86);
LABEL_35:
    result = sub_2688EF060(v51, &selRef_serializedContextByKey);
    if (!result)
    {
      goto LABEL_80;
    }

    v30 = result;
    v75 = *MEMORY[0x277CEEFF8];
    sub_268B37BF4();
    sub_26892E0F4(v30, &v139);

    if (!v140)
    {
      break;
    }

    sub_2688EF2B0(&v139, v141);
    sub_2688EF2C0(v141, &v139);
    v34 = objc_allocWithZone(MEMORY[0x277CEF208]);
    v76 = sub_2688EEF14(&v139);
    if (![v76 hasFiringTimers])
    {
      goto LABEL_48;
    }

    v77 = [v76 mostRecentFiringTimer];
    if (!v77)
    {
      a2 = v131;
      __swift_storeEnumTagSinglePayload(v131, 1, 1, v136);
LABEL_46:
      sub_2688EF38C(a2, &unk_2802A7350, qword_268B3FF10);
      goto LABEL_48;
    }

    v78 = v77;
    v79 = [v77 a2[488]];

    if (v79)
    {
      v34 = v121;
      sub_268B345D4();

      v80 = 0;
    }

    else
    {
      v80 = 1;
      v34 = v121;
    }

    v30 = 1;
    v88 = v136;
    __swift_storeEnumTagSinglePayload(v34, v80, 1, v136);
    a2 = v131;
    sub_2688EF3EC(v34, v131);
    if (__swift_getEnumTagSinglePayload(a2, 1, v88) == 1)
    {
      goto LABEL_46;
    }

    v34 = v122[4];
    v89 = v119;
    (v34)(v119, a2, v88);
    *(a1 + v118) = 1;
    sub_2688EF38C(a1 + a3, &unk_2802A7350, qword_268B3FF10);
    (v34)(a1 + a3, v89, v88);
    __swift_storeEnumTagSinglePayload(a1 + a3, 0, 1, v88);
LABEL_48:
    v123 = v49;
    v122 = v76;
    result = sub_2688EF0D0(v76);
    if (!result)
    {
      goto LABEL_84;
    }

    v90 = result + 64;
    v91 = 1 << result[32];
    v92 = -1;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    v27 = v92 & *(result + 8);
    v31 = (v91 + 63) >> 6;
    v131 = (v138 + 8);
    v132 = v138 + 16;
    v136 = result;

    v93 = 0;
    v94 = v137;
    while (v27)
    {
      v95 = v93;
LABEL_58:
      v96 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v97 = v96 | (v95 << 6);
      v98 = v136;
      v30 = v138;
      v34 = v133;
      (*(v138 + 16))(v133, v136[6] + *(v138 + 72) * v97, v94);
      v99 = *(*(v98 + 56) + 8 * v97);
      a1 = v134;
      v100 = v135;
      *&v34[*(v135 + 48)] = v99;
      sub_2688EF31C(v34, a1);
      a3 = *(a1 + *(v100 + 48));
      v101 = v99;
      a2 = [a3 state];

      sub_2688EF38C(v34, &qword_2802A5AA8, qword_268B3C160);
      (*(v30 + 8))(a1, v94);
      if (a2 == 3)
      {
        v102 = 1;
LABEL_61:
        __swift_destroy_boxed_opaque_existential_0Tm(v141);

        v81 = v127;
        a1 = v128;
        v128[v124] = v102;
        v45 = v129;
        v51 = v130;
        v49 = v123;
        goto LABEL_62;
      }
    }

    while (1)
    {
      v95 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (v95 >= v31)
      {
        v102 = 0;
        goto LABEL_61;
      }

      v27 = *&v90[8 * v95];
      ++v93;
      if (v27)
      {
        v93 = v95;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_76:
    swift_once();
  }

  sub_2688EF38C(&v139, &byte_2802A6450, &byte_268B3BE10);
  v81 = v127;
LABEL_62:
  result = sub_2688EF060(v51, &selRef_serializedContextByKey);
  if (!result)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

  v103 = result;
  v104 = *MEMORY[0x277CEEFE0];
  sub_268B37BF4();
  sub_26892E0F4(v103, &v139);

  if (v140)
  {
    sub_2688EF2B0(&v139, v141);
    sub_2688EF2C0(v141, &v139);
    v105 = objc_allocWithZone(MEMORY[0x277CEF2F0]);
    v106 = sub_2688EEF14(&v139);
    v107 = [v106 playbackState];

    __swift_destroy_boxed_opaque_existential_0Tm(v141);
    *(a1 + v126) = v107 == 1;
  }

  else
  {
    sub_2688EF38C(&v139, &byte_2802A6450, &byte_268B3BE10);
  }

  result = sub_2688EF060(v51, &selRef_serializedContextByKey);
  if (!result)
  {
    goto LABEL_82;
  }

  v108 = result;
  v109 = *MEMORY[0x277CEEFE8];
  sub_268B37BF4();
  sub_26892E0F4(v108, &v139);

  if (v140)
  {
    sub_2688EF2B0(&v139, v141);
    sub_2688EF2C0(v141, &v139);
    v110 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v111 = sub_2688EEF14(&v139);
    v112 = [v111 unsignedLongLongValue];

    __swift_destroy_boxed_opaque_existential_0Tm(v141);
    *(a1 + v125) = (v112 & 8) != 0;
  }

  else
  {
    sub_2688EF38C(&v139, &byte_2802A6450, &byte_268B3BE10);
  }

  result = sub_2688EF060(v51, &selRef_serializedContextByKey);
  if (!result)
  {
    goto LABEL_83;
  }

  v113 = result;
  v114 = *MEMORY[0x277CEEFD8];
  sub_268B37BF4();
  sub_26892E0F4(v113, &v139);

  if (v140)
  {
    sub_2688EF2B0(&v139, v141);
    sub_2688EF2C0(v141, &v139);
    v115 = objc_allocWithZone(MEMORY[0x277CEF2B8]);
    v116 = sub_2688EEF14(&v139);
    v117 = [v116 state];

    __swift_destroy_boxed_opaque_existential_0Tm(v141);
    v49[a1] = v117 == 1;
  }

  else
  {
    sub_2688EF38C(&v139, &byte_2802A6450, &byte_268B3BE10);
  }

  sub_2688EF1F0(a1, v81);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v45);
  return sub_2688EF254(a1);
}

uint64_t sub_2688EE874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10 = v3;
  v11 = a1;

  sub_2689972F8("mapDevicesToAFServiceDeviceContext", 34, 2, 0, sub_2688EA334, v7, sub_2688EEF0C, &v9);
}

uint64_t sub_2688EE928(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  v11 = *MEMORY[0x277CEEFE0];
  *(inited + 32) = sub_268B37BF4();
  *(inited + 40) = v12;

  sub_268A63AD8(inited);
  v13 = swift_allocObject();
  v13[2] = sub_2688E19F8;
  v13[3] = v8;
  v13[4] = a4;

  sub_268B36B64();
}

uint64_t sub_2688EEA6C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v30[1] = a3;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v30[0] = a2;
    v33 = MEMORY[0x277D84F90];
    v10 = sub_2688EFD0C(a1);
    v11 = v10;
    v12 = 0;
    v13 = a1 & 0xC000000000000001;
    while (v11 != v12)
    {
      sub_2688EFD10(v12, v13 == 0, a1);
      if (v13)
      {
        v14 = MEMORY[0x26D625BD0](v12, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v16 = sub_2688EF000(v14, &selRef_mediaRouteIdentifier);
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v31 = v18;
      v32 = v19;
      MEMORY[0x28223BE20](v16);
      v30[-2] = &v31;
      v20 = sub_268ACD018();

      if (v20)
      {
        sub_268B38214();
        v21 = *(v33 + 16);
        sub_268B38244();
        sub_268B38254();
        v10 = sub_268B38224();
      }

      else
      {
      }

      ++v12;
    }

    v12 = v33;
    if (qword_2802A50C0 == -1)
    {
      goto LABEL_19;
    }

LABEL_41:
    v10 = swift_once();
LABEL_19:
    v31 = qword_2802CDB48;
    v32 = unk_2802CDB50;
    MEMORY[0x28223BE20](v10);
    v30[-2] = &v31;
    if (sub_268ACD018())
    {
      for (i = 0; v11 != i; ++i)
      {
        if (v13)
        {
          v23 = MEMORY[0x26D625BD0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v23 = *(a1 + 8 * i + 32);
        }

        v24 = v23;
        if (__OFADD__(i, 1))
        {
          goto LABEL_39;
        }

        if ([v23 proximity] == 4000)
        {
          MEMORY[0x26D6256C0]();
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_268B37D14();
          }

          sub_268B37D44();
          v12 = v33;
          break;
        }
      }
    }

    (v30[0])(v12);
  }

  else
  {
    if (qword_2802A5030 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v5, qword_2802CDB30);
    (*(v6 + 16))(v9, v25, v5);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Got nil context array", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return a2(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2688EEED8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

id sub_2688EEF14(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t sub_2688EEFB4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2688EF000(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268B37BF4();

  return v4;
}

uint64_t sub_2688EF060(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268B37B64();

  return v4;
}

uint64_t sub_2688EF0D0(void *a1)
{
  v1 = [a1 timersByID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268B34674();
  sub_2688EF45C();
  sub_2688EF4A0();
  v3 = sub_268B37B64();

  return v3;
}

uint64_t sub_2688EF18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickStopContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688EF1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickStopContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688EF254(uint64_t a1)
{
  v2 = type metadata accessor for QuickStopContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_2688EF2B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2688EF2C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2688EF31C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AA8, qword_268B3C160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688EF38C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2688EF3EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2688EF45C()
{
  result = qword_2802A5AB0;
  if (!qword_2802A5AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5AB0);
  }

  return result;
}

unint64_t sub_2688EF4A0()
{
  result = qword_2802A5AB8;
  if (!qword_2802A5AB8)
  {
    sub_268B34674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5AB8);
  }

  return result;
}

uint64_t sub_2688EF500()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_268997158();
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

Swift::String_optional __swiftcall UsoTask_repeat_common_MediaItem.verb()()
{
  v0 = 0x746165706572;
  v1 = 0xE600000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

unint64_t UsoTask_repeat_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    result = sub_2688EFBD0(result);
    if (result)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v2 = *(v1 + 32);

LABEL_6:

        sub_268B35B44();

        return v3;
      }

      __break(1u);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2688EF738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2688EF78C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2688EF7E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2688EF834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2688EF888(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2688EF8DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2688EF930()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2688EF984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2688EF9E8()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2688EFA3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2688EFAA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2688EFB04()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2688EFB68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2688EFBD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_268B382A4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_2688EFBF8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2688EFC1C(uint64_t a1)
{
  result = sub_2688EFCC8(&qword_2802A5AC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2688EFCC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36134();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_skipBackward_common_MediaItem.verb()()
{
  v0 = 0x73756F6976657270;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_skipBackward_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2688EFE58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2688EFEAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2688EFF00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2688EFF54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2688EFFA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2688EFFFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2688F0050()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2688F00A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2688F0108()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2688F015C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2688F01C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2688F0224()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2688F0288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2688F02EC(uint64_t a1)
{
  result = sub_2688F0398(&qword_2802A5AD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2688F0398(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B364B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2688F050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_2802CDA10);
  OUTLINED_FUNCTION_6_2();
  v17(v16);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_64();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_8_2();
    _os_log_impl(v20, v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v11 + 8))(v16, v8);
  sub_2688F072C(type metadata accessor for Device);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A56A8, &qword_268B3BCB0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v30 = sub_268B35404();
  v31 = 0;
  a7(&v30);
}

uint64_t sub_2688F072C(void (*a1)(void))
{
  v3 = [v1 disambiguationItems];
  v4 = sub_268B37CF4();

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v7 = *(v4 + 16);
LABEL_2:
  v8 = v4 + 32 + 32 * v5;
  while (1)
  {
    if (v7 == v5)
    {

      return v6;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_2688EF2C0(v8, v12);
    v9 = sub_2688F1C54(v12, a1);
    ++v5;
    v8 += 32;
    v10 = __swift_destroy_boxed_opaque_existential_0Tm(v12);
    if (v9)
    {
      MEMORY[0x26D6256C0](v10);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
      v6 = v13;
      goto LABEL_2;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0Tm(v12);

  __break(1u);
  return result;
}

id sub_2688F088C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v41 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v42 = v12 - v11;
  v13 = *a1;
  v14 = Device.namedEntities.getter();
  v15 = *(v14 + 16);
  if (v15)
  {
    v38 = a2;
    v39 = v6;
    v40 = a3;
    v43 = MEMORY[0x277D84F90];
    sub_26894470C();
    v16 = v43;
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = sub_268B37C34();
      v22 = v21;
      v23 = *(v43 + 16);
      if (v23 >= *(v43 + 24) >> 1)
      {
        sub_26894470C();
      }

      *(v43 + 16) = v23 + 1;
      v24 = v43 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v22;
      v17 += 2;
      --v15;
    }

    while (v15);

    a3 = v40;
    v6 = v39;
    a2 = v38;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  sub_26893E6A8(v16);
  v26 = v25;

  v27 = sub_2688F20B0(v26, a2);

  v28 = *(v27 + 16);

  if (v28)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v30 = __swift_project_value_buffer(v6, qword_2802CDA10);
    (*(v41 + 16))(v42, v30, v6);
    v31 = v13;
    v32 = sub_268B37A34();
    v33 = sub_268B37F04();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v6;
      v36 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v36 = v31;
      v37 = v31;
      _os_log_impl(&dword_2688BB000, v32, v33, "User selection matched device: %@", v34, 0xCu);
      sub_2688C058C(v36, &qword_2802A6420, &unk_268B3C680);
      v6 = v35;
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    (*(v41 + 8))(v42, v6);
    *a3 = v31;
    return v31;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_2688F0BA4(uint64_t *a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_268B371E4();
  v4 = OUTLINED_FUNCTION_1(v3);
  v56 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v52 = v9 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AF0, &unk_268B3C500);
  v10 = OUTLINED_FUNCTION_4(v54);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = sub_268B37034();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v51 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v53 = &v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v51 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v51 - v39;
  v41 = *a1;
  Device.deviceType.getter(v29);
  if (__swift_getEnumTagSinglePayload(v29, 1, v15))
  {
    sub_2688C058C(v29, &qword_2802A58F0, &unk_268B3BEC0);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v3);
  }

  else
  {
    (*(v18 + 16))(v23, v29, v15);
    sub_2688C058C(v29, &qword_2802A58F0, &unk_268B3BEC0);
    sub_268B36FE4();
    (*(v18 + 8))(v23, v15);
  }

  v42 = v56;
  (*(v56 + 16))(v38, v55, v3);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v3);
  v43 = *(v54 + 48);
  sub_2688F1FA4(v40, v14, &qword_2802A58F8, &unk_268B3C510);
  sub_2688F1FA4(v38, &v14[v43], &qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_13_2(v14);
  if (!v46)
  {
    v45 = v53;
    sub_2688F1FA4(v14, v53, &qword_2802A58F8, &unk_268B3C510);
    OUTLINED_FUNCTION_13_2(&v14[v43]);
    if (!v46)
    {
      v47 = &v14[v43];
      v48 = v52;
      (*(v42 + 32))(v52, v47, v3);
      sub_2688F2004(&qword_2802A5AF8, MEMORY[0x277D5F7E0]);
      v44 = sub_268B37BB4();
      v49 = *(v42 + 8);
      v49(v48, v3);
      sub_2688C058C(v38, &qword_2802A58F8, &unk_268B3C510);
      sub_2688C058C(v40, &qword_2802A58F8, &unk_268B3C510);
      v49(v53, v3);
      sub_2688C058C(v14, &qword_2802A58F8, &unk_268B3C510);
      return v44 & 1;
    }

    OUTLINED_FUNCTION_12_2(v38);
    OUTLINED_FUNCTION_12_2(v40);
    (*(v42 + 8))(v45, v3);
LABEL_12:
    sub_2688C058C(v14, &qword_2802A5AF0, &unk_268B3C500);
    v44 = 0;
    return v44 & 1;
  }

  OUTLINED_FUNCTION_12_2(v38);
  OUTLINED_FUNCTION_12_2(v40);
  OUTLINED_FUNCTION_13_2(&v14[v43]);
  if (!v46)
  {
    goto LABEL_12;
  }

  sub_2688C058C(v14, &qword_2802A58F8, &unk_268B3C510);
  v44 = 1;
  return v44 & 1;
}

uint64_t sub_2688F10B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v5[12] = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v5[13] = OUTLINED_FUNCTION_11_1();
  v9 = sub_268B34DA4();
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v5[14] = OUTLINED_FUNCTION_11_1();
  v12 = sub_268B35374();
  v5[15] = v12;
  OUTLINED_FUNCTION_19_0(v12);
  v5[16] = v13;
  v15 = *(v14 + 64);
  v5[17] = OUTLINED_FUNCTION_11_1();
  v16 = sub_268B367A4();
  v5[18] = v16;
  OUTLINED_FUNCTION_19_0(v16);
  v5[19] = v17;
  v19 = *(v18 + 64);
  v5[20] = OUTLINED_FUNCTION_11_1();
  v20 = sub_268B37A54();
  v5[21] = v20;
  OUTLINED_FUNCTION_19_0(v20);
  v5[22] = v21;
  v23 = *(v22 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2688F1268, 0, 0);
}