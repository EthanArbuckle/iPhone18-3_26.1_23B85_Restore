uint64_t sub_2696B6AD0(uint64_t result, uint64_t a2)
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

  sub_26980E0A0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
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

  result = sub_26968E61C((v9 + 16 * a2), v11 - a2, v10);
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

uint64_t sub_2696B6BAC(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_2696B6C90()
{
  v0 = sub_269851BE4();
  v22 = *(v0 - 8);
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269854EB4();
  v4 = MEMORY[0x277D84F90];
  v5 = (MEMORY[0x277D84F90] + 32);
  sub_2696B6FF4();
  v6 = 0;
  while (1)
  {
    sub_2698550E4();
    if (!v24)
    {
      (*(v22 + 8))(v3, v0);
      result = sub_269698048(&v23, &qword_280322F88, qword_26985AB90);
      v18 = v4[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v6);
        v20 = v19 - v6;
        if (v17)
        {
          goto LABEL_25;
        }

        v4[2] = v20;
      }

      return v4;
    }

    result = sub_269694FFC(&v23, v25);
    if (!v6)
    {
      v8 = v4[3];
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F90, &qword_269858E10);
      v11 = swift_allocObject();
      v12 = (_swift_stdlib_malloc_size(v11) - 32) / 32;
      v11[2] = v10;
      v11[3] = 2 * v12;
      v13 = (v11 + 4);
      v14 = v4[3];
      v15 = v14 >> 1;
      if (v4[2])
      {
        if (v11 != v4 || v13 >= &v4[4 * v15 + 4])
        {
          memmove(v11 + 4, v4 + 4, 32 * v15);
        }

        v4[2] = 0;
      }

      v5 = (v13 + 32 * v15);
      v6 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

      v4 = v11;
    }

    v17 = __OFSUB__(v6--, 1);
    if (v17)
    {
      break;
    }

    sub_269694FFC(v25, v5);
    v5 += 2;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2696B6F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2696B6FF4()
{
  result = qword_281571B30;
  if (!qword_281571B30)
  {
    sub_269851BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571B30);
  }

  return result;
}

uint64_t sub_2696B7058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E10, &qword_269858A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_11_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_2696B726C()
{
  OUTLINED_FUNCTION_1_5();
  v4 = v1 == 0xD000000000000018 && v3 == v2;
  if (v4 || (v5 = v2, v6 = v1, (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v10 = v6 == 0xD000000000000019 && v9 == v5;
  if (v10 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v12 = v6 == 0xD000000000000010 && v11 == v5;
  if (v12 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v14 = v6 == 0xD000000000000013 && v13 == v5;
  if (v14 || (OUTLINED_FUNCTION_0_8() & 1) != 0)
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v16 = v6 == 0xD000000000000011 && v15 == v5;
  if (v16 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v18 = v6 == 0xD00000000000001BLL && v17 == v5;
  if (v18 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v20 = v6 == 0xD00000000000001ELL && v19 == v5;
  if (v20 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v22 = v6 == 0xD000000000000026 && v21 == v5;
  if (v22 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v24 = v6 == 0xD000000000000019 && v23 == v5;
  if (v24 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v26 = *(v0 + 80);
    v25 = *(v0 + 88);
LABEL_56:

    return sub_2696B7F0C();
  }

  OUTLINED_FUNCTION_1_5();
  v28 = v6 == 0xD000000000000014 && v27 == v5;
  if (v28 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v32 = v6 == 0xD000000000000015 && v31 == v5;
  if (v32 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v34 = *(v0 + 112);
    v33 = *(v0 + 120);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v36 = v6 == 0xD000000000000013 && v35 == v5;
  if (v36 || (OUTLINED_FUNCTION_0_8() & 1) != 0)
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v38 = *(v0 + 128);
    v37 = *(v0 + 136);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v40 = v6 == 0xD000000000000016 && v39 == v5;
  if (v40 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v42 = v6 == 0xD000000000000022 && v41 == v5;
  if (v42 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v44 = v6 == 0xD00000000000001DLL && v43 == v5;
  if (v44 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v46 = *(v0 + 160);
    v45 = *(v0 + 168);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v48 = v6 == 0xD00000000000001BLL && v47 == v5;
  if (v48 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v50 = *(v0 + 176);
    v49 = *(v0 + 184);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v52 = v6 == 0xD000000000000013 && v51 == v5;
  if (v52 || (OUTLINED_FUNCTION_0_8() & 1) != 0)
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v54 = *(v0 + 192);
    v53 = *(v0 + 200);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v56 = v6 == 0xD000000000000013 && v55 == v5;
  if (v56 || (OUTLINED_FUNCTION_0_8() & 1) != 0)
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v58 = *(v0 + 208);
    v57 = *(v0 + 216);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v60 = v6 == 0xD000000000000017 && v59 == v5;
  if (v60 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v62 = *(v0 + 224);
    v61 = *(v0 + 232);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v64 = v6 == 0xD000000000000014 && v63 == v5;
  if (v64 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v66 = *(v0 + 240);
    v65 = *(v0 + 248);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v68 = v6 == 0xD00000000000002ALL && v67 == v5;
  if (v68 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v70 = v6 == 0xD000000000000038 && v69 == v5;
  if (v70 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v72 = v6 == 0xD000000000000033 && v71 == v5;
  if (v72 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v74 = v6 == 0xD00000000000002FLL && v73 == v5;
  if (v74 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v76 = v6 == 0xD000000000000030 && v75 == v5;
  if (v76 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v78 = v6 == 0xD000000000000030 && v77 == v5;
  if (v78 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v80 = v6 == 0xD000000000000032 && v79 == v5;
  if (v80 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v82 = v6 == 0xD000000000000030 && v81 == v5;
  if (v82 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v84 = v6 == 0xD00000000000002FLL && v83 == v5;
  if (v84 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v86 = v6 == 0xD000000000000017 && v85 == v5;
  if (v86 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v88 = v6 == 0xD000000000000010 && v87 == v5;
  if (v88 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v90 = *(v0 + 336);
    v89 = *(v0 + 344);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v92 = v6 == 0xD00000000000001ALL && v91 == v5;
  if (v92 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v94 = v6 == 0xD000000000000023 && v93 == v5;
  if (v94 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v96 = v6 == 0xD000000000000016 && v95 == v5;
  if (v96 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v98 = *(v0 + 368);
    v97 = *(v0 + 376);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v100 = v6 == 0xD000000000000017 && v99 == v5;
  if (v100 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v102 = v6 == 0xD000000000000013 && v101 == v5;
  if (v102 || (OUTLINED_FUNCTION_0_8() & 1) != 0)
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v104 = v6 == 0xD000000000000019 && v103 == v5;
  if (v104 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v106 = *(v0 + 400);
    v105 = *(v0 + 408);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v108 = v6 == 0xD000000000000016 && v107 == v5;
  if (v108 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  return 0;
}

id sub_2696B7F0C()
{
  v0 = sub_269854A64();

  v1 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v1;
}

uint64_t sub_2696B7F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *(v47 + 16) = a9;
  *(v47 + 24) = a10;
  *(v47 + 32) = a11;
  *(v47 + 40) = a12;
  *(v47 + 48) = a13;
  *(v47 + 56) = a14;
  *(v47 + 64) = a15;
  *(v47 + 72) = a16;
  *(v47 + 80) = a1;
  *(v47 + 88) = a2;
  *(v47 + 96) = a3;
  *(v47 + 104) = a4;
  *(v47 + 112) = a5;
  *(v47 + 120) = a6;
  *(v47 + 128) = a7;
  *(v47 + 136) = a8;
  *(v47 + 144) = a17;
  *(v47 + 152) = a18;
  *(v47 + 160) = a19;
  *(v47 + 168) = a20;
  *(v47 + 176) = a21;
  *(v47 + 184) = a22;
  *(v47 + 192) = a23;
  *(v47 + 200) = a24;
  *(v47 + 208) = a25;
  *(v47 + 216) = a26;
  *(v47 + 224) = a27;
  *(v47 + 232) = a28;
  *(v47 + 240) = a29;
  *(v47 + 248) = a30;
  *(v47 + 256) = a31;
  *(v47 + 272) = a32;
  *(v47 + 288) = a33;
  *(v47 + 304) = a34;
  *(v47 + 320) = a35;
  *(v47 + 328) = a36;
  *(v47 + 336) = a37;
  *(v47 + 344) = a38;
  *(v47 + 352) = a39;
  *(v47 + 360) = a40;
  *(v47 + 368) = a41;
  *(v47 + 376) = a42;
  *(v47 + 384) = a43;
  *(v47 + 392) = a44;
  *(v47 + 400) = a45;
  *(v47 + 408) = a46;
  *(v47 + 416) = a47;
  return v47;
}

void *sub_2696B8058()
{
  v1 = v0[11];

  v2 = v0[13];

  v3 = v0[15];

  v4 = v0[17];

  v5 = v0[21];

  v6 = v0[23];

  v7 = v0[25];

  v8 = v0[27];

  v9 = v0[29];

  v10 = v0[31];

  v11 = v0[43];

  v12 = v0[47];

  v13 = v0[51];

  return v0;
}

uint64_t sub_2696B80D8()
{
  sub_2696B8058();

  return MEMORY[0x2821FE8D8](v0, 424, 7);
}

uint64_t sub_2696B8130()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    sub_2696B81B8();
    v1 = v2;
    swift_unownedRelease();
    swift_unownedRelease();
    v3 = *(v0 + 40);
    *(v0 + 40) = v1;
  }

  return v1;
}

void sub_2696B81B8()
{
  v0 = *(swift_unownedRetainStrong() + 16);
  swift_unknownObjectRetain();

  v1 = sub_269854A64();
  v2 = [v0 featureValueForName_];

  if (v2)
  {
    swift_unknownObjectRelease();
    v3 = [v2 dictionaryValue];

    sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    v4 = sub_2698549E4();

    sub_2696B82C0(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2696B82C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FC0, qword_269859000);
    v2 = sub_2698553C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_12:
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_2696B8A68(*(a1 + 48) + 40 * v11, v30);
    v32 = *(*(a1 + 56) + 8 * v11);
    v26 = v30[0];
    v27 = v30[1];
    v28 = v31;
    v12 = v32;
    swift_dynamicCast();
    v24 = 0;
    v25 = 1;
    result = MEMORY[0x26D645CF0](v12, &v24);
    if (v25)
    {
      break;
    }

    v13 = v24;

    v14 = v29;
    v15 = *(v2 + 40);
    result = sub_269855664();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
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
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_22;
        }
      }

LABEL_26:
      __break(1u);
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v2 + 48) + 8 * v19) = v14;
    *(*(v2 + 56) + 8 * v19) = v13;
    ++*(v2 + 16);
    if (!v5)
    {
LABEL_8:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v10);
        ++v9;
        if (v5)
        {
          v9 = v10;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2696B85A0()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_269854E44();

  return v2;
}

id sub_2696B85F8()
{
  v1 = *(v0 + 16);
  v2 = sub_269854A64();
  v3 = [v1 featureValueForName_];

  return v3;
}

id sub_2696B8660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_269854A94();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_2696B86DC(uint64_t a1)
{
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_2696B86F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_2696B871C()
{
  sub_2696B86F4();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_2696B8774(unint64_t a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FB0, &unk_2698667F0);
    sub_269855364();
  }

  else
  {

    sub_269855594();
  }

  sub_26969329C(0, &qword_280322FB8, 0x277CBFEB0);
  v6 = sub_2697E3918();
  v7 = *(v2 + 16);
  v24[0] = 0;
  v8 = [v7 predictionsFromBatch:v6 options:a2 error:v24];
  v9 = v24[0];
  if (v8)
  {
    v10 = v8;
    v24[0] = MEMORY[0x277D84F90];
    v11 = sub_26975004C(a1);
    v12 = v9;
    sub_26980E09C(v11);
    v9 = v24[0];
    v13 = [v10 count];
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v14 = v13;
    if (v13)
    {
      v22 = v6;
      v23 = v3;
      v15 = 0;
      do
      {
        v16 = [v10 featuresAtIndex_];
        type metadata accessor for PlayMediaAppSelectionOutput();
        v17 = swift_allocObject();
        *(v17 + 32) = 1;
        *(v17 + 40) = 0;
        *(v17 + 16) = v16;
        *(v17 + 24) = 0;
        swift_unknownObjectRetain();

        MEMORY[0x26D645B90](v18);
        if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        ++v15;
        sub_269854CF4();

        swift_unknownObjectRelease();
      }

      while (v14 != v15);
      v9 = v24[0];
      v6 = v22;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v24[0];
    sub_269851BD4();

    swift_willThrow();
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_2696B8A0C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return sub_269855584();
}

id sub_2696B8B00()
{
  type metadata accessor for BaseDialogProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280322FD0 = result;
  return result;
}

uint64_t sub_2696B8B54()
{
  OUTLINED_FUNCTION_2_7();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = sub_2698543C4();
  v0[10] = v4;
  v5 = *(v4 - 8);
  v0[11] = v5;
  v6 = *(v5 + 64) + 15;
  v0[12] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2696B8C10()
{
  sub_2698543A4();
  if (qword_280322430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = qword_280322FD0;
  sub_269854354();
  v3 = sub_269854344();
  *(v0 + 104) = v3;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_2698543B4();
  v4 = *(MEMORY[0x277D55CE0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_2696B8D48;
  v6 = *(v0 + 96);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  return MEMORY[0x2821B8050](v2, v9, v7, v8, v3, v0 + 16, v6);
}

uint64_t sub_2696B8D48(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  v7 = v4[14];
  v8 = v4[13];
  v9 = *v2;
  *v6 = *v2;
  v5[15] = v1;

  (*(v4[11] + 8))(v4[12], v4[10]);
  sub_2696B9D80((v5 + 2), &qword_280322FE8, &qword_2698590A0);
  if (v1)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {

    v13 = v9[1];

    return v13(a1);
  }
}

uint64_t sub_2696B8F1C()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_7_7();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_2696B8F78()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v0;
  v1[6] = v3;
  v1[7] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v1[3] = v6;
  v7 = sub_2698548D4();
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2696B905C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  sub_2698532A4();
  *v6 = v0;
  v6[1] = sub_2696B9164;
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2696B9164()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  v2[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    v12 = v2[10];
    v11 = v2[11];

    OUTLINED_FUNCTION_7_7();

    return v13();
  }
}

uint64_t sub_2696B9290()
{
  v29 = v0;
  v1 = v0[11];

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = __swift_project_value_buffer(v5, qword_281571B38);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_2698548B4();
  v9 = sub_269854F24();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[13];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v0[2] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v17 = sub_269854AE4();
    v19 = sub_26974F520(v17, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_269684000, v8, v9, "Error while executing dialog: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D647170](v15, -1, -1);
    MEMORY[0x26D647170](v14, -1, -1);

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[8];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[13];
  v24 = v0[10];
  swift_willThrow();

  OUTLINED_FUNCTION_7_7();
  v26 = v0[13];

  return v25();
}

uint64_t sub_2696B94D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v18 = a1;
  v19 = a2;
  v22 = sub_2698543C4();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FE0, &qword_269859098);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_269854384();
  if (qword_280322430 != -1)
  {
    swift_once();
  }

  sub_269854354();
  v13 = sub_269854344();
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  (*(v9 + 16))(v12, v18, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  sub_2698543B4();
  sub_269854364();

  (*(v4 + 8))(v7, v22);
  return sub_2696B9D80(v23, &qword_280322FE8, &qword_2698590A0);
}

uint64_t sub_2696B975C(uint64_t a1)
{
  v2 = sub_2698532A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FF0, &qword_2698590A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v12 - v9);
  sub_2696B9DD4(a1, v12 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FE0, &qword_269859098);
    return sub_269854D44();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FE0, &qword_269859098);
    return sub_269854D54();
  }
}

uint64_t sub_2696B98F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696B9908()
{
  OUTLINED_FUNCTION_2_7();
  sub_2696A73F8(*(v0 + 64), v0 + 16);
  v1 = *(MEMORY[0x277D5BDC0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_4_6(v2);

  return MEMORY[0x2821BB3C8](v3);
}

uint64_t sub_2696B99A0()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v2 + 80) = v0;

  sub_2696B9D80(v2 + 16, &qword_280322FD8, &qword_269859088);
  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v11();
  }
}

uint64_t sub_2696B9AD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696B9AE4()
{
  OUTLINED_FUNCTION_2_7();
  sub_2696A73F8(*(v0 + 64), v0 + 16);
  v1 = *(MEMORY[0x277D5BCE0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_4_6(v2);

  return MEMORY[0x2821BAEE8](v3);
}

uint64_t sub_2696B9B80()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v2 + 80) = v0;

  sub_2696B9D80(v2 + 16, &qword_280322FD8, &qword_269859088);
  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v11();
  }
}

uint64_t sub_2696B9CB0()
{
  OUTLINED_FUNCTION_7_7();
  v1 = *(v0 + 80);
  return v2();
}

uint64_t sub_2696B9D04(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FE0, &qword_269859098) - 8) + 80);

  return sub_2696B975C(a1);
}

uint64_t sub_2696B9D80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2696B9DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FF0, &qword_2698590A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2696B9F2C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_2696B9F80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 424) = v18;
  *(v8 + 432) = v19;
  *(v8 + 408) = a7;
  *(v8 + 416) = a8;
  *(v8 + 392) = a5;
  *(v8 + 400) = a6;
  *(v8 + 361) = a4;
  *(v8 + 376) = a2;
  *(v8 + 384) = a3;
  *(v8 + 368) = a1;
  v9 = sub_2698548D4();
  *(v8 + 440) = v9;
  v10 = *(v9 - 8);
  *(v8 + 448) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640) - 8) + 64);
  *(v8 + 480) = OUTLINED_FUNCTION_4_7();
  v13 = sub_2698532A4();
  *(v8 + 488) = v13;
  v14 = *(v13 - 8);
  *(v8 + 496) = v14;
  v15 = *(v14 + 64);
  *(v8 + 504) = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2696BA0F8, 0, 0);
}

uint64_t sub_2696BA0F8()
{
  v1 = *(v0 + 400);
  if (v1)
  {
    v38 = *(v0 + 408);
    v39 = *(v0 + 416);
    v37 = *(v0 + 361);
    v36 = *(v0 + 392);
    sub_2696A73F8(*(v0 + 384), v0 + 128);
    v2 = *(v0 + 152);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 128, v2);
    v3 = *(v2 - 8);
    v4 = *(v3 + 64);
    v5 = OUTLINED_FUNCTION_4_7();
    *(v0 + 512) = v5;
    (*(v3 + 16))();
    v6 = *v5;
    v7 = type metadata accessor for BaseDialogProvider();
    *(v0 + 192) = v7;
    *(v0 + 200) = &off_287A3DBA0;
    *(v0 + 168) = v6;
    type metadata accessor for VideoLiveTuneInDialogProvider();
    inited = swift_initStackObject();
    *(v0 + 520) = inited;
    v9 = *(v0 + 192);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 168, v9);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    v13 = OUTLINED_FUNCTION_4_7();
    (*(v11 + 16))(v13, v10, v9);
    v14 = *v13;
    inited[5] = v7;
    inited[6] = &off_287A3DBA0;
    inited[2] = v14;
    __swift_destroy_boxed_opaque_existential_0((v0 + 168));

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
    *(v0 + 328) = v36;
    *(v0 + 336) = v1;
    *(v0 + 344) = v38;
    *(v0 + 352) = v39;
    *(v0 + 360) = v37;
    v15 = swift_task_alloc();
    *(v0 + 528) = v15;
    *v15 = v0;
    v15[1] = sub_2696BA4B0;
    v16 = *(v0 + 504);

    return sub_2696C3DCC(v16, v0 + 328);
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v19 = *(v0 + 448);
    v18 = *(v0 + 456);
    __swift_project_value_buffer(*(v0 + 440), qword_28033D910);
    v20 = OUTLINED_FUNCTION_2_8();
    v21(v20);
    v22 = sub_2698548B4();
    v23 = sub_269854F24();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_269684000, v22, v23, "createInstallAppViews missing appName", v24, 2u);
      MEMORY[0x26D647170](v24, -1, -1);
    }

    v26 = *(v0 + 448);
    v25 = *(v0 + 456);
    v27 = *(v0 + 440);

    (*(v26 + 8))(v25, v27);
    sub_2696BAE9C();
    v28 = swift_allocError();
    OUTLINED_FUNCTION_3_7(xmmword_2698590B0, v28, v29);
    v30 = *(v0 + 504);
    v32 = *(v0 + 472);
    v31 = *(v0 + 480);
    v34 = *(v0 + 456);
    v33 = *(v0 + 464);

    OUTLINED_FUNCTION_7_7();

    return v35();
  }
}

uint64_t sub_2696BA4B0()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_2696BAC44;
  }

  else
  {
    v3 = sub_2696BA5C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2696BA5C4()
{
  if (*(v0 + 361) == 1)
  {
    v2 = *(v0 + 496);
    v1 = *(v0 + 504);
    v3 = *(v0 + 480);
    v70 = *(v0 + 520);
    v72 = *(v0 + 488);
    v5 = *(v0 + 368);
    v4 = *(v0 + 376);
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_269852CA4();
    v7 = sub_269853234();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
    v8 = sub_2698538F4();
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;
    v9 = MEMORY[0x277D5C1D8];
    v5[3] = v8;
    v5[4] = v9;
    __swift_allocate_boxed_opaque_existential_1(v5);
    sub_2698530B4();

    sub_269698048(v0 + 288, &qword_280323028, qword_26985AD20);
    sub_269698048(v3, &qword_280323010, &unk_26985B640);
    (*(v2 + 8))(v1, v72);
LABEL_6:
    v24 = *(v0 + 504);
    v23 = *(v0 + 512);
    v26 = *(v0 + 472);
    v25 = *(v0 + 480);
    v28 = *(v0 + 456);
    v27 = *(v0 + 464);

    OUTLINED_FUNCTION_7_7();
    goto LABEL_18;
  }

  if (*(v0 + 432))
  {
    sub_2696A73F8(*(v0 + 376), v0 + 208);
    type metadata accessor for LocUtil();
    inited = swift_initStackObject();
    sub_26968E5D4((v0 + 208), inited + 16);
    sub_269830114();
    if (v12)
    {
      v68 = *(v0 + 504);
      v69 = *(v0 + 520);
      v13 = *(v0 + 480);
      v71 = *(v0 + 496);
      v73 = *(v0 + 488);
      v15 = *(v0 + 368);
      v14 = *(v0 + 376);
      v16 = sub_2696BACFC(*(v0 + 424), *(v0 + 432), v11, v12);

      v17 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      sub_269852CA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_2698590C0;
      *(v18 + 32) = v16;
      v19 = sub_269853234();
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
      v20 = sub_2698538F4();
      *(v0 + 248) = 0u;
      *(v0 + 264) = 0u;
      *(v0 + 280) = 0;
      v21 = MEMORY[0x277D5C1D8];
      v15[3] = v20;
      v15[4] = v21;
      __swift_allocate_boxed_opaque_existential_1(v15);
      v22 = v16;
      sub_2698530B4();

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 16));

      sub_269698048(v0 + 248, &qword_280323028, qword_26985AD20);
      sub_269698048(v13, &qword_280323010, &unk_26985B640);
      (*(v71 + 8))(v68, v73);
      goto LABEL_6;
    }

    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v47 = *(v0 + 472);
    v48 = *(v0 + 440);
    v49 = *(v0 + 448);
    v50 = __swift_project_value_buffer(v48, qword_28033D910);
    (*(v49 + 16))(v47, v50, v48);
    v51 = sub_2698548B4();
    v52 = sub_269854F24();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_269684000, v51, v52, "createInstallAppViews error localizing string APP_STORE_PUNCHOUT_BUTTON_TEXT", v53, 2u);
      MEMORY[0x26D647170](v53, -1, -1);
    }

    v54 = *(v0 + 520);
    v55 = *(v0 + 512);
    v74 = *(v0 + 504);
    v56 = *(v0 + 488);
    v57 = *(v0 + 496);
    v58 = *(v0 + 472);
    v60 = *(v0 + 440);
    v59 = *(v0 + 448);

    (*(v59 + 8))(v58, v60);
    sub_2696BAE9C();
    swift_allocError();
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
    *v61 = 7;
    *(v61 + 24) = 3;
    swift_willThrow();
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((v54 + 16));
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 16));
    (*(v57 + 8))(v74, v56);
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v30 = *(v0 + 464);
    v31 = *(v0 + 448);
    __swift_project_value_buffer(*(v0 + 440), qword_28033D910);
    v32 = OUTLINED_FUNCTION_2_8();
    v33(v32);
    v34 = sub_2698548B4();
    v35 = sub_269854F24();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_269684000, v34, v35, "createInstallAppViews missing appStoreUrl", v36, 2u);
      MEMORY[0x26D647170](v36, -1, -1);
    }

    v37 = *(v0 + 520);
    v39 = *(v0 + 504);
    v38 = *(v0 + 512);
    v40 = *(v0 + 488);
    v41 = *(v0 + 496);
    v42 = *(v0 + 464);
    v43 = *(v0 + 440);
    v44 = *(v0 + 448);

    (*(v44 + 8))(v42, v43);
    sub_2696BAE9C();
    v45 = swift_allocError();
    OUTLINED_FUNCTION_3_7(xmmword_2698590D0, v45, v46);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((v37 + 16));
    (*(v41 + 8))(v39, v40);
  }

  v62 = *(v0 + 504);
  v63 = *(v0 + 472);
  v64 = *(v0 + 480);
  v66 = *(v0 + 456);
  v65 = *(v0 + 464);

  OUTLINED_FUNCTION_7_7();
LABEL_18:

  return v29();
}

uint64_t sub_2696BAC44()
{
  v1 = v0[65];
  v2 = v0[64];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  v3 = v0[67];
  v4 = v0[63];
  v6 = v0[59];
  v5 = v0[60];
  v8 = v0[57];
  v7 = v0[58];

  OUTLINED_FUNCTION_7_7();

  return v9();
}

id sub_2696BACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  sub_2696BAEF0();
  v10 = sub_2696CD66C(1);
  sub_269851C64();
  v11 = sub_269851C74();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    v12 = sub_269851C24();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  [v10 setPunchOutUri_];

  v13 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
  sub_2696BAF34(a3, a4, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2698590C0;
  *(v14 + 32) = v10;
  sub_2696BAF8C(v14, v13);
  return v13;
}

unint64_t sub_2696BAE9C()
{
  result = qword_280323018;
  if (!qword_280323018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323018);
  }

  return result;
}

unint64_t sub_2696BAEF0()
{
  result = qword_280323038;
  if (!qword_280323038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323038);
  }

  return result;
}

void sub_2696BAF34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setText_];
}

void sub_2696BAF8C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803230A0, qword_2698590F0);
  v3 = sub_269854CA4();

  [a2 setCommands_];
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_7(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u64[0] = 0;
  a3[1].n128_u8[8] = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_task_alloc();
}

uint64_t sub_2696BB094()
{
  OUTLINED_FUNCTION_2_7();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_2698548D4();
  OUTLINED_FUNCTION_8_4(v5);
  v1[23] = v6;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696BB148, 0, 0);
}

uint64_t sub_2696BB148()
{
  v47 = v0;
  if (sub_269688478([*(v0 + 160) code], &unk_287A391A0))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2698580D0;
    OUTLINED_FUNCTION_0_11();
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v7 = sub_2696CB408();
    v8 = MEMORY[0x277D837D0];
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    OUTLINED_FUNCTION_4_8(v10);
    v11 = INSearchForMediaIntentResponseCodeGetName();
    v12 = sub_269854A94();
    v14 = v13;

    *(inited + 120) = v8;
    *(inited + 96) = v12;
    *(inited + 104) = v14;
    v15 = sub_269854A04();
    v16 = *OUTLINED_FUNCTION_12_3(v15);
    v17 = swift_task_alloc();
    *(v0 + 208) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_3_8(v17);
    OUTLINED_FUNCTION_7_8();

    return sub_2696B8F78();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v21 = *(v0 + 184);
    v20 = *(v0 + 192);
    __swift_project_value_buffer(*(v0 + 176), qword_281571B38);
    v22 = OUTLINED_FUNCTION_11_4();
    v23(v22);
    v24 = sub_2698548B4();
    v25 = sub_269854F24();
    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    if (v26)
    {
      swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_13_1();
      v46 = v30;
      *v29 = 136315138;
      v31 = INSearchForMediaIntentResponseCodeGetName();
      v32 = sub_269854A94();
      v45 = v27;
      v34 = v33;

      v35 = sub_26974F520(v32, v34, &v46);

      *(v29 + 4) = v35;
      OUTLINED_FUNCTION_14_2(&dword_269684000, v36, v37, "INSearchForMedia.HandleIntentFlowStrategy.makeFailureHandlingIntentResponse() called with unexpected response code %s");
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v28 + 8))(v45);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    sub_26969329C(0, &qword_2815718C8, 0x277CD4030);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_2696BBEF8(ObjCClassFromMetadata);
    if (v39)
    {
      sub_2696BAE9C();
      v40 = swift_allocError();
      OUTLINED_FUNCTION_6_8(v40, v41);
      v42 = *(v0 + 192);

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_7_8();

      __asm { BRAA            X1, X16 }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2696BB484(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return MEMORY[0x2822009F8](sub_2696BB4A8, 0, 0);
}

uint64_t sub_2696BB4A8()
{
  v2 = v0[15];
  v1 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  *(inited + 32) = 1651664246;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1684957542;
  *(inited + 56) = 0xE400000000000000;
  OUTLINED_FUNCTION_0_11();
  *(v4 + 64) = v5;
  *(v4 + 72) = v6;
  v7 = sub_2696CB408();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (v8)
  {
    v10 = v8;
  }

  *(inited + 80) = v9;
  *(inited + 88) = v10;
  v11 = sub_269854A04();
  v12 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v0[17] = sub_2697D1A74(v11);

  v13 = *v12;
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_2696BB618;
  v15 = v0[14];

  return sub_2696B8F78();
}

uint64_t sub_2696BB618()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_2696BB718()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBFF8;

  return sub_2696BB094();
}

uint64_t sub_2696BB7D4(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = type metadata accessor for BaseDialogProvider();
  result = swift_allocObject();
  *a2 = v7;
  *a3 = &off_287A3DBA0;
  *a4 = result;
  return result;
}

uint64_t sub_2696BB830()
{
  OUTLINED_FUNCTION_2_7();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_2698548D4();
  OUTLINED_FUNCTION_8_4(v5);
  v1[23] = v6;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696BB8E4, 0, 0);
}

uint64_t sub_2696BB8E4()
{
  v47 = v0;
  if (sub_269688478([*(v0 + 160) code], &unk_287A391D8))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2698580D0;
    OUTLINED_FUNCTION_0_11();
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v7 = sub_2696CB408();
    v8 = MEMORY[0x277D837D0];
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    OUTLINED_FUNCTION_4_8(v10);
    v11 = INPlayMediaIntentResponseCodeGetName();
    v12 = sub_269854A94();
    v14 = v13;

    *(inited + 120) = v8;
    *(inited + 96) = v12;
    *(inited + 104) = v14;
    v15 = sub_269854A04();
    v16 = *OUTLINED_FUNCTION_12_3(v15);
    v17 = swift_task_alloc();
    *(v0 + 208) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_3_8(v17);
    OUTLINED_FUNCTION_7_8();

    return sub_2696B8F78();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v21 = *(v0 + 184);
    v20 = *(v0 + 192);
    __swift_project_value_buffer(*(v0 + 176), qword_281571B38);
    v22 = OUTLINED_FUNCTION_11_4();
    v23(v22);
    v24 = sub_2698548B4();
    v25 = sub_269854F24();
    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    if (v26)
    {
      swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_13_1();
      v46 = v30;
      *v29 = 136315138;
      v31 = INPlayMediaIntentResponseCodeGetName();
      v32 = sub_269854A94();
      v45 = v27;
      v34 = v33;

      v35 = sub_26974F520(v32, v34, &v46);

      *(v29 + 4) = v35;
      OUTLINED_FUNCTION_14_2(&dword_269684000, v36, v37, "INPlayMedia.HandleIntentFlowStrategy.makeFailureHandlingIntentResponse() called with unexpected response code %s");
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v28 + 8))(v45);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    sub_26969329C(0, &qword_2815718F0, 0x277CD3EC0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_2696BBEF8(ObjCClassFromMetadata);
    if (v39)
    {
      sub_2696BAE9C();
      v40 = swift_allocError();
      OUTLINED_FUNCTION_6_8(v40, v41);
      v42 = *(v0 + 192);

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_7_8();

      __asm { BRAA            X1, X16 }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2696BBC20()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  v5 = *(v2 + 208);
  v6 = *v1;
  *v4 = *v1;

  v7 = *(v2 + 200);
  if (v0)
  {

    v8 = *(v3 + 192);
  }

  else
  {
    v10 = *(v3 + 192);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_2696BBD64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBE14;

  return sub_2696BB830();
}

uint64_t sub_2696BBE14()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_2696BBEF8(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_2696BBF5C(uint64_t a1, int a2)
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

uint64_t sub_2696BBF9C(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_4_8@<X0>(uint64_t a1@<X8>)
{
  v4[6] = a1;
  v4[7] = v1;
  v4[9] = v3;
  v4[10] = 1701080931;
  v4[11] = 0xE400000000000000;
  return v2;
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v2;
  *(a2 + 24) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1)
{
  *(v1 + 176) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void *OUTLINED_FUNCTION_12_3(uint64_t a1)
{
  *(v2 + 200) = a1;
  v4 = v1[3];

  return __swift_project_boxed_opaque_existential_1(v1, v4);
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2696BC148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_2698548D4();
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696BC210, 0, 0);
}

uint64_t sub_2696BC210()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_2698580D0);
  v5 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_7_9();
  v8 = 0xE000000000000000;
  if (!v9)
  {
    v8 = v6;
  }

  inited[3].n128_u64[0] = v7;
  inited[3].n128_u64[1] = v8;
  inited[4].n128_u64[1] = v5;
  inited[5].n128_u64[0] = 0x6574656D61726170;
  inited[7].n128_u64[1] = v5;
  inited[5].n128_u64[1] = 0xE900000000000072;
  inited[6].n128_u64[0] = v2;
  inited[6].n128_u64[1] = v1;

  v0[26] = sub_269854A04();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v11 = v0[24];
  v10 = v0[25];
  __swift_project_value_buffer(v0[23], qword_281571B38);
  v12 = OUTLINED_FUNCTION_11_4();
  v13(v12);
  v14 = sub_2698548B4();
  v15 = sub_269854F14();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    OUTLINED_FUNCTION_15_2(&dword_269684000, v17, v18, "executing dialog VideoThirdParty#UnsupportedParameterValue");
    MEMORY[0x26D647170](v16, -1, -1);
  }

  v20 = v0[24];
  v19 = v0[25];
  v22 = v0[22];
  v21 = v0[23];

  (*(v20 + 8))(v19, v21);
  v23 = *__swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v24 = swift_task_alloc();
  v0[27] = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_14_3(v24);

  return sub_2696B8F78();
}

uint64_t sub_2696BC43C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_2696BC564(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BC57C()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v6 = 0xE000000000000000;
  if (!v7)
  {
    v6 = v4;
  }

  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = v6;
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_9();
  v8 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v8);
  v9 = *v1;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_9(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_10(v11);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BC678(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BC690()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v6 = 0xE000000000000000;
  if (!v7)
  {
    v6 = v4;
  }

  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = v6;
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_9();
  v8 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v8);
  v9 = *v1;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_9(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_10(v11);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BC78C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BC7A4()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v6 = 0xE000000000000000;
  if (!v7)
  {
    v6 = v4;
  }

  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = v6;
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_9();
  v8 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v8);
  v9 = *v1;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_9(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_10(v11);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BC8A0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2696BC9A8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BC9C0()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v6 = 0xE000000000000000;
  if (!v7)
  {
    v6 = v4;
  }

  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = v6;
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_9();
  v8 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v8);
  v9 = *v1;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_9(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_10(v11);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BCABC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BCAD4()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v6 = 0xE000000000000000;
  if (!v7)
  {
    v6 = v4;
  }

  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = v6;
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_9();
  v8 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v8);
  v9 = *v1;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_9(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_10(v11);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BCBD0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BCBE8()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v6 = 0xE000000000000000;
  if (!v7)
  {
    v6 = v4;
  }

  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = v6;
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_9();
  v8 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v8);
  v9 = *v1;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_9(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_10(v11);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BCCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_2698548D4();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696BCDA8, 0, 0);
}

uint64_t sub_2696BCDA8()
{
  v1 = v0[19];
  v2 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_2698580D0);
  v4 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_7_9();
  v7 = 0xE000000000000000;
  if (!v8)
  {
    v7 = v5;
  }

  inited[3].n128_u64[0] = v6;
  inited[3].n128_u64[1] = v7;
  inited[4].n128_u64[1] = v4;
  inited[5].n128_u64[0] = 0x707954616964656DLL;
  inited[5].n128_u64[1] = 0xE900000000000065;
  type metadata accessor for INMediaItemType(0);
  inited[7].n128_u64[1] = v9;
  inited[6].n128_u64[0] = v2;
  v0[25] = sub_269854A04();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v11 = v0[23];
  v10 = v0[24];
  __swift_project_value_buffer(v0[22], qword_281571B38);
  v12 = OUTLINED_FUNCTION_11_4();
  v13(v12);
  v14 = sub_2698548B4();
  v15 = sub_269854F14();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    OUTLINED_FUNCTION_15_2(&dword_269684000, v17, v18, "executing dialog VideoThirdParty#UnsupportedMediaItemsUnsupportedMediaType");
    MEMORY[0x26D647170](v16, -1, -1);
  }

  v20 = v0[23];
  v19 = v0[24];
  v22 = v0[21];
  v21 = v0[22];

  (*(v20 + 8))(v19, v21);
  v23 = *__swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v24 = swift_task_alloc();
  v0[26] = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_14_3(v24);

  return sub_2696B8F78();
}

uint64_t sub_2696BCFD0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6();
}

uint64_t OUTLINED_FUNCTION_1_7(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656D614E707061;
  a1[2].n128_u64[1] = 0xE700000000000000;

  return sub_2696CB408();
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{
  *(v1 + 104) = a1;
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return sub_269854A04();
}

unint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_2697D1A74(v0);
}

void OUTLINED_FUNCTION_15_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2696BD220(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BD234()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_16_3(*(v1 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0x73656369766564;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  *(inited + 48) = v2;

  *(v1 + 112) = sub_269854A04();
  v4 = *v0;
  v5 = swift_task_alloc();
  *(v1 + 120) = v5;
  *v5 = v1;
  v5[1] = sub_2696BD374;
  OUTLINED_FUNCTION_24_0();

  return sub_2696B8B54();
}

uint64_t sub_2696BD374()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_28_0();
  v3 = *(*v2 + 120);
  v4 = *(*v2 + 112);
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2696BD488(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2696BD510()
{
  sub_269855674();
  MEMORY[0x26D646580](0);
  return sub_2698556C4();
}

uint64_t sub_2696BD584()
{
  sub_269855674();
  MEMORY[0x26D646580](0);
  return sub_2698556C4();
}

uint64_t sub_2696BD5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696BD488(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2696BD610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696BD508();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2696BD63C(uint64_t a1)
{
  v2 = sub_2696C2768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696BD678(uint64_t a1)
{
  v2 = sub_2696C2768();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2696BD6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323158, &qword_2698596D0);
  OUTLINED_FUNCTION_8(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v32 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_2696C2768();
  sub_2698556F4();
  sub_2698554C4();
  (*(v26 + 8))(v31, v24);
  OUTLINED_FUNCTION_44();
}

void sub_2696BD7D4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323168, &qword_2698596D8);
  OUTLINED_FUNCTION_8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696C2768();
  sub_2698556E4();
  if (!v1)
  {
    sub_269855414();
    (*(v5 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  OUTLINED_FUNCTION_50();
}

void sub_2696BD91C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2696BD7D4(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_2696BD964()
{
  OUTLINED_FUNCTION_2_7();
  v9 = *MEMORY[0x277D85DE8];
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696BD9F0()
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_16_3(*(v1 + 96));
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C221C();
  v4 = sub_269851AB4();
  v6 = v5;
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  v7 = sub_269851C84();
  *(v1 + 64) = 0;
  v8 = OUTLINED_FUNCTION_41(v7, sel_JSONObjectWithData_options_error_);

  v9 = *(v1 + 64);
  if (v8)
  {
    v10 = v9;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_42())
    {
      sub_2696C1F3C(v4, v6);
      v8 = *(v1 + 72);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v9;
    v12 = sub_269851BD4();

    v8 = v12;
    swift_willThrow();
  }

  sub_269854A04();
  v13 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v13, v14);
LABEL_8:
  *(v1 + 104) = v8;
  v15 = *v0;
  v16 = swift_task_alloc();
  *(v1 + 112) = v16;
  *v16 = v1;
  OUTLINED_FUNCTION_37(v16);
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(23);

  return sub_2696B8B54();
}

uint64_t sub_2696BDC68()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 112);
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 104);

  OUTLINED_FUNCTION_35();
  v7 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2696BDDBC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BDDD4()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_16_3(*(v1 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0x656D614E707061;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  *(v1 + 120) = sub_269854A04();
  v5 = *v0;
  v6 = swift_task_alloc();
  *(v1 + 128) = v6;
  *v6 = v1;
  v6[1] = sub_2696BDF10;
  OUTLINED_FUNCTION_24_0();

  return sub_2696B8B54();
}

uint64_t sub_2696BDF10()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_28_0();
  v3 = *(*v2 + 128);
  v4 = *(*v2 + 120);
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2696BE024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E65746E6F63 && a2 == 0xEC000000656C7469;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73616573 && a2 == 0xE600000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65646F73697065 && a2 == 0xE700000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D61536E497369 && a2 == 0xEC0000006D6F6F52;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6563697665447369 && a2 == 0xEE007065656C7341)
          {

            return 5;
          }

          else
          {
            v11 = sub_269855584();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2696BE220(char a1)
{
  result = 0x54746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73616573;
      break;
    case 2:
      result = 0x65646F73697065;
      break;
    case 3:
      v3 = 0x614E6D6F6F72;
      goto LABEL_6;
    case 4:
      v3 = 0x61536E497369;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 5:
      result = 0x6563697665447369;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2696BE2E8()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323138, &qword_2698596C0);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  sub_2696C26C0();
  OUTLINED_FUNCTION_20_1();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_5_9();
  sub_2698554E4();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_5_9();
    sub_2698554E4();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_5_9();
    sub_2698554E4();
    v12 = v1[6];
    v13 = v1[7];
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_5_9();
    sub_2698554E4();
    v14 = *(v1 + 64);
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    v15 = *(v1 + 65);
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
  }

  v16 = OUTLINED_FUNCTION_27_0();
  v17(v16);
  OUTLINED_FUNCTION_50();
}

void sub_2696BE474()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323178, &qword_2698596E8);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2696C26C0();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v31[0]) = 0;
    v10 = sub_269855464();
    v29 = v11;
    OUTLINED_FUNCTION_6_9(1);
    v12 = sub_269855464();
    v14 = v13;
    v27 = v12;
    v28 = v4;
    OUTLINED_FUNCTION_6_9(2);
    v15 = sub_269855464();
    v17 = v16;
    v25 = v15;
    v26 = v10;
    OUTLINED_FUNCTION_6_9(3);
    v18 = sub_269855464();
    v20 = v19;
    v24 = v18;
    OUTLINED_FUNCTION_6_9(4);
    v34 = sub_269855474();
    v21 = sub_269855474();
    v34 &= 1u;
    v22 = OUTLINED_FUNCTION_12_5();
    v23(v22);
    v30[0] = v26;
    v30[1] = v29;
    v30[2] = v27;
    v30[3] = v14;
    v30[4] = v25;
    v30[5] = v17;
    v30[6] = v24;
    v30[7] = v20;
    LOBYTE(v30[8]) = v34;
    BYTE1(v30[8]) = v21 & 1;
    sub_2696C2824(v30, v31);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v31[0] = v26;
    v31[1] = v29;
    v31[2] = v27;
    v31[3] = v14;
    v31[4] = v25;
    v31[5] = v17;
    v31[6] = v24;
    v31[7] = v20;
    v32 = v34;
    v33 = v21 & 1;
    sub_2696C285C(v31);
    memcpy(v28, v30, 0x42uLL);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2696BE7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696BE024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696BE7FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696BE218();
  *a1 = result;
  return result;
}

uint64_t sub_2696BE824(uint64_t a1)
{
  v2 = sub_2696C26C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696BE860(uint64_t a1)
{
  v2 = sub_2696C26C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2696BE89C(void *a1@<X8>)
{
  sub_2696BE474();
  if (!v1)
  {
    memcpy(a1, __src, 0x42uLL);
  }
}

uint64_t sub_2696BE900()
{
  OUTLINED_FUNCTION_2_7();
  v8 = *MEMORY[0x277D85DE8];
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2696BE988()
{
  OUTLINED_FUNCTION_49();
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 136);
  OUTLINED_FUNCTION_16_3(*(v2 + 144));
  memcpy((v2 + 16), v3, 0x42uLL);
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C2174();
  OUTLINED_FUNCTION_53();
  if (v1)
  {

    v4 = sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_45();
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v5 = sub_269851C84();
  *(v2 + 120) = 0;
  v4 = OUTLINED_FUNCTION_38(v5, sel_JSONObjectWithData_options_error_);

  v6 = *(v2 + 120);
  if (v4)
  {
    v7 = v6;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_52())
    {
      v8 = OUTLINED_FUNCTION_18_3();
      sub_2696C1F3C(v8, v9);
      v4 = *(v2 + 128);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    OUTLINED_FUNCTION_22_1();
    v11 = sub_269851BD4();

    v4 = v11;
    swift_willThrow();
  }

  sub_269854A04();
  v12 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v12, v13);
LABEL_10:
  *(v2 + 152) = v4;
  v14 = *v0;
  v15 = swift_task_alloc();
  *(v2 + 160) = v15;
  *v15 = v2;
  OUTLINED_FUNCTION_37(v15);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(25);

  return sub_2696B8B54();
}

uint64_t sub_2696BEBE4()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 160);
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 152);

  OUTLINED_FUNCTION_35();
  v7 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2696BED38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E65746E6F63 && a2 == 0xEC000000656C7469;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73616573 && a2 == 0xE600000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65646F73697065 && a2 == 0xE700000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2696BEEA0(char a1)
{
  result = 0x54746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73616573;
      break;
    case 2:
      result = 0x65646F73697065;
      break;
    case 3:
      result = 0x656D614E707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2696BEF28()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323128, &qword_2698596B8);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  sub_2696C266C();
  OUTLINED_FUNCTION_20_1();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_17_3();
  sub_2698554E4();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_17_3();
    sub_2698554E4();
    v10 = v0[4];
    v11 = v0[5];
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_17_3();
    sub_2698554E4();
    v12 = v0[6];
    v13 = v0[7];
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_17_3();
    sub_2698554C4();
  }

  v14 = OUTLINED_FUNCTION_27_0();
  return v15(v14);
}

void sub_2696BF088()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323180, &qword_2698596F0);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2696C266C();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    OUTLINED_FUNCTION_29_0();
    v14 = sub_269855464();
    v16 = v15;
    LOBYTE(v33[0]) = 1;
    OUTLINED_FUNCTION_29_0();
    *&v28 = sub_269855464();
    *(&v28 + 1) = v17;
    LOBYTE(v33[0]) = 2;
    OUTLINED_FUNCTION_29_0();
    *&v27 = sub_269855464();
    *(&v27 + 1) = v18;
    OUTLINED_FUNCTION_29_0();
    v19 = sub_269855414();
    v20 = v12;
    v22 = v21;
    (*(v7 + 8))(v20, v5);
    *&v29 = v14;
    *(&v29 + 1) = v16;
    v23 = v28;
    v30 = v28;
    v31 = v27;
    *&v32 = v19;
    *(&v32 + 1) = v22;
    sub_2696C288C(&v29, v33);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v33[0] = v14;
    v33[1] = v16;
    v34 = v23;
    v35 = v27;
    v36 = v19;
    v37 = v22;
    sub_2696C28C4(v33);
    v24 = v30;
    *v4 = v29;
    v4[1] = v24;
    v25 = v32;
    v4[2] = v31;
    v4[3] = v25;
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2696BF314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696BED38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696BF33C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696BEE98();
  *a1 = result;
  return result;
}

uint64_t sub_2696BF364(uint64_t a1)
{
  v2 = sub_2696C266C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696BF3A0(uint64_t a1)
{
  v2 = sub_2696C266C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2696BF3DC@<D0>(_OWORD *a1@<X8>)
{
  sub_2696BF088();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_2696BF438()
{
  OUTLINED_FUNCTION_2_7();
  v8 = *MEMORY[0x277D85DE8];
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2696BF4C0()
{
  OUTLINED_FUNCTION_49();
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 128);
  OUTLINED_FUNCTION_16_3(*(v2 + 136));
  v4 = v3[3];
  v6 = *v3;
  v5 = v3[1];
  *(v2 + 48) = v3[2];
  *(v2 + 64) = v4;
  *(v2 + 16) = v6;
  *(v2 + 32) = v5;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C2120();
  OUTLINED_FUNCTION_53();
  if (v1)
  {

    v7 = sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_45();
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v8 = sub_269851C84();
  *(v2 + 112) = 0;
  v7 = OUTLINED_FUNCTION_38(v8, sel_JSONObjectWithData_options_error_);

  v9 = *(v2 + 112);
  if (v7)
  {
    v10 = v9;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_52())
    {
      v11 = OUTLINED_FUNCTION_18_3();
      sub_2696C1F3C(v11, v12);
      v7 = *(v2 + 120);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v9;
    OUTLINED_FUNCTION_22_1();
    v14 = sub_269851BD4();

    v7 = v14;
    swift_willThrow();
  }

  sub_269854A04();
  v15 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v15, v16);
LABEL_10:
  *(v2 + 144) = v7;
  v17 = *v0;
  v18 = swift_task_alloc();
  *(v2 + 152) = v18;
  *v18 = v2;
  OUTLINED_FUNCTION_37(v18);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(17);

  return sub_2696B8B54();
}

uint64_t sub_2696BF71C()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 152);
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 144);

  OUTLINED_FUNCTION_35();
  v7 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2696BF870(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x59657361656C6572 && a2 == 0xEB00000000726165;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000026987C8F0 == a2;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E69746152736168 && a2 == 0xE900000000000067;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x776F68537369 && a2 == 0xE600000000000000;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6843776F68537369 && a2 == 0xEB00000000646C69)
          {

            return 5;
          }

          else
          {
            v11 = sub_269855584();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2696BFA70(char a1)
{
  result = 0x59657361656C6572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x754E6E6F73616573;
      break;
    case 3:
      result = 0x6E69746152736168;
      break;
    case 4:
      result = 0x776F68537369;
      break;
    case 5:
      result = 0x6843776F68537369;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2696BFB40()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323148, &qword_2698596C8);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  sub_2696C2714();
  OUTLINED_FUNCTION_20_1();
  v6 = *v1;
  v7 = *(v1 + 8);
  OUTLINED_FUNCTION_5_9();
  sub_2698554D4();
  if (!v0)
  {
    v8 = v1[2];
    v9 = *(v1 + 24);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_5_9();
    sub_2698554D4();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_5_9();
    sub_2698554C4();
    v12 = *(v1 + 48);
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    v13 = *(v1 + 49);
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    v14 = *(v1 + 50);
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
  }

  v15 = OUTLINED_FUNCTION_27_0();
  v16(v15);
  OUTLINED_FUNCTION_50();
}

void sub_2696BFCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323170, &qword_2698596E0);
  OUTLINED_FUNCTION_8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v20);
  v54 = 1;
  v21 = v12[3];
  v22 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v21);
  sub_2696C2714();
  sub_2698556E4();
  if (v10)
  {
    OUTLINED_FUNCTION_26_0();
    __swift_destroy_boxed_opaque_existential_0(v12);
    v42 = 0;
    v43 = 1;
    *v44 = *(&a10 + 1);
    *&v44[3] = HIDWORD(a10);
    v45 = 0;
    v46 = v54;
    *v47 = *v53;
    *&v47[3] = *&v53[3];
    v48 = v17;
    v49 = v14;
    v50 = v21;
    v51 = v22;
    v52 = 0;
    sub_2696C27BC(&v42);
  }

  else
  {
    LOBYTE(v42) = 0;
    v37 = sub_269855444();
    v55 = v23 & 1;
    OUTLINED_FUNCTION_7_10(1);
    v36 = sub_269855444();
    v35 = v14;
    v54 = v24 & 1;
    OUTLINED_FUNCTION_7_10(2);
    v25 = sub_269855414();
    v27 = v26;
    OUTLINED_FUNCTION_7_10(3);
    v28 = sub_269855474() & 1;
    OUTLINED_FUNCTION_7_10(4);
    v29 = sub_269855474() & 1;
    v41 = 5;
    v30 = sub_269855474();
    v31 = OUTLINED_FUNCTION_8_6();
    v32(v31);
    *&v38 = v37;
    BYTE8(v38) = v55;
    *&v39 = v36;
    v33 = v54;
    BYTE8(v39) = v54;
    *v40 = v25;
    *&v40[8] = v27;
    v40[16] = v28;
    v40[17] = v29;
    v40[18] = v30 & 1;
    sub_2696C27EC(&v38, &v42);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v42 = v37;
    v43 = v55;
    v45 = v36;
    v46 = v33;
    v48 = v25;
    v49 = v27;
    v50 = v28;
    v51 = v29;
    v52 = v30 & 1;
    sub_2696C27BC(&v42);
    v34 = v39;
    *v35 = v38;
    *(v35 + 16) = v34;
    *(v35 + 32) = *v40;
    *(v35 + 47) = *&v40[15];
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2696C005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696BF870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696C0084(uint64_t a1)
{
  v2 = sub_2696C2714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C00C0(uint64_t a1)
{
  v2 = sub_2696C2714();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2696C00FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2696BFCD8(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!v9)
  {
    *a9 = v13;
    *(a9 + 16) = v14;
    result = *v15;
    *(a9 + 32) = *v15;
    *(a9 + 47) = *&v15[15];
  }

  return result;
}

uint64_t sub_2696C0164()
{
  OUTLINED_FUNCTION_2_7();
  v8 = *MEMORY[0x277D85DE8];
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2696C01EC()
{
  OUTLINED_FUNCTION_49();
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 120);
  OUTLINED_FUNCTION_16_3(*(v2 + 128));
  v5 = v3[1];
  v4 = v3[2];
  v6 = *v3;
  *(v2 + 63) = *(v3 + 47);
  *(v2 + 32) = v5;
  *(v2 + 48) = v4;
  *(v2 + 16) = v6;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C21C8();
  OUTLINED_FUNCTION_53();
  if (v1)
  {

    v7 = sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_45();
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v8 = sub_269851C84();
  *(v2 + 104) = 0;
  v7 = OUTLINED_FUNCTION_38(v8, sel_JSONObjectWithData_options_error_);

  v9 = *(v2 + 104);
  if (v7)
  {
    v10 = v9;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_52())
    {
      v11 = OUTLINED_FUNCTION_18_3();
      sub_2696C1F3C(v11, v12);
      v7 = *(v2 + 112);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v9;
    OUTLINED_FUNCTION_22_1();
    v14 = sub_269851BD4();

    v7 = v14;
    swift_willThrow();
  }

  sub_269854A04();
  v15 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v15, v16);
LABEL_10:
  *(v2 + 136) = v7;
  v17 = *v0;
  v18 = swift_task_alloc();
  *(v2 + 144) = v18;
  *v18 = v2;
  OUTLINED_FUNCTION_37(v18);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(25);

  return sub_2696B8B54();
}

uint64_t sub_2696C0450()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 144);
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 136);

  OUTLINED_FUNCTION_35();
  v7 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2696C05A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x800000026987C850 == a2;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000026987C870 == a2;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000026987C890 == a2;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x800000026987C8B0 == a2;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x800000026987C8D0 == a2;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1701667182 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_269855584();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2696C07E0(unsigned __int8 a1)
{
  sub_269855674();
  MEMORY[0x26D646580](a1);
  return sub_2698556C4();
}

unint64_t sub_2696C0828(char a1)
{
  result = 0x656D614E6D6F6F72;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      return result;
    case 6:
      result = 1701667182;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

void sub_2696C0904()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323118, &qword_2698596B0);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  sub_2696C2618();
  OUTLINED_FUNCTION_20_1();
  v6 = *v1;
  OUTLINED_FUNCTION_15_3();
  sub_2698554F4();
  if (!v0)
  {
    v7 = v1[1];
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    v8 = v1[2];
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    v9 = v1[3];
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    v10 = v1[4];
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    v11 = *(v1 + 1);
    v12 = *(v1 + 2);
    OUTLINED_FUNCTION_5_9();
    sub_2698554C4();
    v13 = *(v1 + 3);
    v14 = *(v1 + 4);
    OUTLINED_FUNCTION_5_9();
    sub_2698554C4();
  }

  v15 = OUTLINED_FUNCTION_27_0();
  v16(v15);
  OUTLINED_FUNCTION_50();
}

void sub_2696C0ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  OUTLINED_FUNCTION_43();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323188, &qword_2698596F8);
  OUTLINED_FUNCTION_8(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v21);
  v22 = v13[3];
  v23 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v22);
  sub_2696C2618();
  sub_2698556E4();
  if (v11)
  {
    OUTLINED_FUNCTION_14_4();
    __swift_destroy_boxed_opaque_existential_0(v13);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = v18;
    v45 = v15;
    v46 = *(&a11 + 1);
    v47 = HIBYTE(a11);
    v48 = v23;
    v49 = v22;
    v50 = 0;
    v51 = 0;
    sub_2696C28F4(&v41);
  }

  else
  {
    v41 = 0;
    v52 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(1);
    v37 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(2);
    v36 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(3);
    v24 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(4);
    v35 = v15;
    v25 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(5);
    v26 = sub_269855414();
    v28 = v27;
    v29 = sub_269855414();
    v30 = OUTLINED_FUNCTION_23_0();
    v32 = v31;
    v33(v30, v16);
    LOBYTE(v38) = v52;
    BYTE1(v38) = v37;
    BYTE2(v38) = v36;
    BYTE3(v38) = v24;
    BYTE4(v38) = v25;
    *(&v38 + 1) = v26;
    *&v39 = v28;
    *(&v39 + 1) = v29;
    v40 = v32;
    sub_2696C2924(&v38, &v41);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v41 = v52;
    v42 = v37;
    v43 = v36;
    v44 = v24;
    v45 = v25;
    v48 = v26;
    v49 = v28;
    v50 = v29;
    v51 = v32;
    sub_2696C28F4(&v41);
    v34 = v39;
    *v35 = v38;
    *(v35 + 16) = v34;
    *(v35 + 32) = v40;
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2696C0E40()
{
  v1 = *v0;
  sub_269855674();
  MEMORY[0x26D646580](v1);
  return sub_2698556C4();
}

uint64_t sub_2696C0E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696C05A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696C0EB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696C07D8();
  *a1 = result;
  return result;
}

uint64_t sub_2696C0EDC(uint64_t a1)
{
  v2 = sub_2696C2618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C0F18(uint64_t a1)
{
  v2 = sub_2696C2618();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2696C0F54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2696C0ABC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SDWORD1(v13));
  if (!v9)
  {
    result = *&v13;
    *a9 = v13;
    *(a9 + 16) = v14;
    *(a9 + 32) = v15;
  }

  return result;
}

uint64_t sub_2696C0FB4()
{
  OUTLINED_FUNCTION_2_7();
  v8 = *MEMORY[0x277D85DE8];
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2696C103C()
{
  OUTLINED_FUNCTION_49();
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 104);
  OUTLINED_FUNCTION_16_3(*(v2 + 112));
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *(v2 + 16) = *v3;
  *(v2 + 32) = v5;
  *(v2 + 48) = v4;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C13EC();
  OUTLINED_FUNCTION_53();
  if (v1)
  {

    v6 = sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_45();
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v7 = sub_269851C84();
  *(v2 + 88) = 0;
  v6 = OUTLINED_FUNCTION_38(v7, sel_JSONObjectWithData_options_error_);

  v8 = *(v2 + 88);
  if (v6)
  {
    v9 = v8;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_52())
    {
      v10 = OUTLINED_FUNCTION_18_3();
      sub_2696C1F3C(v10, v11);
      v6 = *(v2 + 96);
      goto LABEL_10;
    }
  }

  else
  {
    v12 = v8;
    OUTLINED_FUNCTION_22_1();
    v13 = sub_269851BD4();

    v6 = v13;
    swift_willThrow();
  }

  sub_269854A04();
  v14 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v14, v15);
LABEL_10:
  *(v2 + 120) = v6;
  v16 = *v0;
  v17 = swift_task_alloc();
  *(v2 + 128) = v17;
  *v17 = v2;
  OUTLINED_FUNCTION_37(v17);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(26);

  return sub_2696B8B54();
}

uint64_t sub_2696C1298()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 128);
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 120);

  OUTLINED_FUNCTION_35();
  v7 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_2696C13EC()
{
  result = qword_2803230B0;
  if (!qword_2803230B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230B0);
  }

  return result;
}

uint64_t sub_2696C1440()
{
  OUTLINED_FUNCTION_2_7();
  v9 = *MEMORY[0x277D85DE8];
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696C14CC()
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);
  OUTLINED_FUNCTION_16_3(*(v1 + 152));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230C0, &unk_269859340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  strcpy((inited + 32), "contentTitle");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  *(v1 + 112) = sub_269854A04();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230C8, &qword_269859350);
  sub_2696C1F94();
  v6 = OUTLINED_FUNCTION_51();
  if (v5)
  {

    v8 = sub_269854A04();
    goto LABEL_10;
  }

  v9 = v6;
  v10 = v7;

  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  v11 = sub_269851C84();
  *(v1 + 120) = 0;
  v8 = OUTLINED_FUNCTION_41(v11, sel_JSONObjectWithData_options_error_);

  v12 = *(v1 + 120);
  if (v8)
  {
    v13 = v12;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_42())
    {
      sub_2696C1F3C(v9, v10);
      v8 = *(v1 + 128);
      goto LABEL_10;
    }
  }

  else
  {
    v14 = v12;
    v15 = sub_269851BD4();

    v8 = v15;
    swift_willThrow();
  }

  sub_269854A04();
  v16 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v16, v17);
LABEL_10:
  *(v1 + 160) = v8;
  v18 = *v0;
  v19 = swift_task_alloc();
  *(v1 + 168) = v19;
  *v19 = v1;
  OUTLINED_FUNCTION_37(v19);
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(23);

  return sub_2696B8B54();
}

uint64_t sub_2696C17E4()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 168);
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 160);

  OUTLINED_FUNCTION_35();
  v7 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2696C1938()
{
  OUTLINED_FUNCTION_2_7();
  v8 = *MEMORY[0x277D85DE8];
  *(v1 + 128) = v0;
  *(v1 + 152) = v2;
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2696C19C4()
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 152);
  OUTLINED_FUNCTION_16_3(*(v1 + 128));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230E0, &qword_269859360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000026987C720;
  *(inited + 48) = v2;
  *(v1 + 104) = sub_269854A04();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230E8, &qword_269859368);
  sub_2696C209C();
  v5 = OUTLINED_FUNCTION_51();
  if (v4)
  {

    v7 = sub_269854A04();
    goto LABEL_10;
  }

  v8 = v5;
  v9 = v6;

  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  v10 = sub_269851C84();
  *(v1 + 112) = 0;
  v7 = OUTLINED_FUNCTION_41(v10, sel_JSONObjectWithData_options_error_);

  v11 = *(v1 + 112);
  if (v7)
  {
    v12 = v11;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_42())
    {
      sub_2696C1F3C(v8, v9);
      v7 = *(v1 + 120);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v11;
    v14 = sub_269851BD4();

    v7 = v14;
    swift_willThrow();
  }

  sub_269854A04();
  v15 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v15, v16);
LABEL_10:
  *(v1 + 136) = v7;
  v17 = *v0;
  v18 = swift_task_alloc();
  *(v1 + 144) = v18;
  *v18 = v1;
  v18[1] = sub_2696C33DC;
  v19 = *MEMORY[0x277D85DE8];

  return sub_2696B8B54();
}

uint64_t sub_2696C1CD0(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696C1CE8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 120);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000026987C720;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(v0 + 104) = sub_269854A04();
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_2696C1E28;

  return sub_2696B8B54();
}

uint64_t sub_2696C1E28()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_28_0();
  v3 = *(*v2 + 112);
  v4 = *(*v2 + 104);
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2696C1F3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2696C1F94()
{
  result = qword_2803230D0;
  if (!qword_2803230D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803230C8, &qword_269859350);
    sub_2696C2020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230D0);
  }

  return result;
}

unint64_t sub_2696C2020()
{
  result = qword_2803230D8;
  if (!qword_2803230D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230D8);
  }

  return result;
}

unint64_t sub_2696C209C()
{
  result = qword_2803230F0;
  if (!qword_2803230F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803230E8, &qword_269859368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230F0);
  }

  return result;
}

unint64_t sub_2696C2120()
{
  result = qword_2803230F8;
  if (!qword_2803230F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230F8);
  }

  return result;
}

unint64_t sub_2696C2174()
{
  result = qword_280323100;
  if (!qword_280323100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323100);
  }

  return result;
}

unint64_t sub_2696C21C8()
{
  result = qword_280323108;
  if (!qword_280323108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323108);
  }

  return result;
}

unint64_t sub_2696C221C()
{
  result = qword_280323110;
  if (!qword_280323110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323110);
  }

  return result;
}

uint64_t sub_2696C2270(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2696C22C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2696C233C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 51))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2696C2390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_2696C240C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_2696C244C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_2696C24C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2696C2500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2696C255C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2696C25B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_2696C2618()
{
  result = qword_280323120;
  if (!qword_280323120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323120);
  }

  return result;
}

unint64_t sub_2696C266C()
{
  result = qword_280323130;
  if (!qword_280323130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323130);
  }

  return result;
}

unint64_t sub_2696C26C0()
{
  result = qword_280323140;
  if (!qword_280323140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323140);
  }

  return result;
}

unint64_t sub_2696C2714()
{
  result = qword_280323150;
  if (!qword_280323150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323150);
  }

  return result;
}

unint64_t sub_2696C2768()
{
  result = qword_280323160;
  if (!qword_280323160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323160);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoDialogProvider.ConfirmRemotePlayParams.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for VideoDialogProvider.ConfirmRemotePlayParams.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DeviceSelectionInteractionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2696C2B08(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoDialogProvider.PlayContentParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for VideoDialogProvider.PlayContentParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VideoDialogProvider.RemoteDeviceNotFoundParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for VideoDialogProvider.RemoteDeviceNotFoundParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2696C2EB0()
{
  result = qword_280323190;
  if (!qword_280323190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323190);
  }

  return result;
}

unint64_t sub_2696C2F08()
{
  result = qword_280323198;
  if (!qword_280323198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323198);
  }

  return result;
}

unint64_t sub_2696C2F60()
{
  result = qword_2803231A0;
  if (!qword_2803231A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231A0);
  }

  return result;
}

unint64_t sub_2696C2FB8()
{
  result = qword_2803231A8;
  if (!qword_2803231A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231A8);
  }

  return result;
}

unint64_t sub_2696C3010()
{
  result = qword_2803231B0;
  if (!qword_2803231B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231B0);
  }

  return result;
}

unint64_t sub_2696C3068()
{
  result = qword_2803231B8;
  if (!qword_2803231B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231B8);
  }

  return result;
}

unint64_t sub_2696C30C0()
{
  result = qword_2803231C0;
  if (!qword_2803231C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231C0);
  }

  return result;
}

unint64_t sub_2696C3118()
{
  result = qword_2803231C8;
  if (!qword_2803231C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231C8);
  }

  return result;
}

unint64_t sub_2696C3170()
{
  result = qword_2803231D0;
  if (!qword_2803231D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231D0);
  }

  return result;
}

unint64_t sub_2696C31C8()
{
  result = qword_2803231D8;
  if (!qword_2803231D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231D8);
  }

  return result;
}

unint64_t sub_2696C3220()
{
  result = qword_2803231E0;
  if (!qword_2803231E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231E0);
  }

  return result;
}

unint64_t sub_2696C3278()
{
  result = qword_2803231E8;
  if (!qword_2803231E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231E8);
  }

  return result;
}

unint64_t sub_2696C32D0()
{
  result = qword_2803231F0;
  if (!qword_2803231F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231F0);
  }

  return result;
}

unint64_t sub_2696C3328()
{
  result = qword_2803231F8;
  if (!qword_2803231F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231F8);
  }

  return result;
}

unint64_t sub_2696C3380()
{
  result = qword_280323200;
  if (!qword_280323200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323200);
  }

  return result;
}

uint64_t sub_2696C33DC()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2696C0450();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_2698556F4();
}

id OUTLINED_FUNCTION_38(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_41(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return sub_269851AB4();
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_269851AB4();
}

uint64_t sub_2696C3804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65746F6D65527369 && a2 == 0xEF74736575716552)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2696C3928(char a1)
{
  if (!a1)
  {
    return 0x656D614E707061;
  }

  if (a1 == 1)
  {
    return 0x4E65636976726573;
  }

  return 0x65746F6D65527369;
}

uint64_t sub_2696C3994(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323228, &qword_269859DD8);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696C4FC0();
  OUTLINED_FUNCTION_20_1();
  v14 = *v3;
  v15 = v3[1];
  v19[15] = 0;
  OUTLINED_FUNCTION_1_8();
  sub_2698554E4();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v19[14] = 1;
    OUTLINED_FUNCTION_1_8();
    sub_2698554C4();
    OUTLINED_FUNCTION_7_11();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_2696C3AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323238, &qword_269859DE0);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2696C4FC0();
  OUTLINED_FUNCTION_10_6();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_8_7();
  sub_269855464();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_8_7();
  v11 = sub_269855414();
  OUTLINED_FUNCTION_12_6(v11, v12);
  OUTLINED_FUNCTION_8_7();
  v13 = sub_269855474();
  v14 = OUTLINED_FUNCTION_3_11();
  v15(v14);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v13 & 1;
  return result;
}

uint64_t sub_2696C3CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696C3804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696C3CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696C3920();
  *a1 = result;
  return result;
}

uint64_t sub_2696C3CF4(uint64_t a1)
{
  v2 = sub_2696C4FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C3D30(uint64_t a1)
{
  v2 = sub_2696C4FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2696C3D6C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2696C3AD4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_2696C3DCC(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2696C3E60, 0, 0);
}

uint64_t sub_2696C3E60()
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 112);
  v2 = __swift_project_boxed_opaque_existential_1((*(v0 + 120) + 16), *(*(v0 + 120) + 40));
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C4DC8();
  v5 = sub_269851AB4();
  v7 = v6;
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v8 = sub_269851C84();
  *(v0 + 88) = 0;
  v9 = OUTLINED_FUNCTION_15_4(v8, sel_JSONObjectWithData_options_error_);

  v10 = *(v0 + 88);
  if (v9)
  {
    v11 = v10;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_13_3())
    {
      sub_2696C1F3C(v5, v7);
      v9 = *(v0 + 96);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = v10;
    v13 = sub_269851BD4();

    v9 = v13;
    swift_willThrow();
  }

  sub_269854A04();
  v14 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v14, v15);
LABEL_8:
  *(v0 + 128) = v9;
  v16 = *v2;
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_2696C40EC;
  v18 = *(v0 + 104);
  v19 = *MEMORY[0x277D85DE8];

  return sub_2696B8F78();
}

uint64_t sub_2696C40EC()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 136);
  v8 = *v0;

  v3 = *(v1 + 128);

  v4 = *(v8 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_2696C4258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D61536E497369 && a2 == 0xEC0000006D6F6F52;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6563697665447369 && a2 == 0xEE007065656C7341)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2696C43C0(char a1)
{
  result = 0x4E65636976726573;
  switch(a1)
  {
    case 1:
      v3 = 0x614E6D6F6F72;
      goto LABEL_4;
    case 2:
      v3 = 0x61536E497369;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 3:
      result = 0x6563697665447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2696C445C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323218, &qword_269859DD0);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696C4F6C();
  OUTLINED_FUNCTION_20_1();
  v14 = *v3;
  v15 = v3[1];
  v20[15] = 0;
  OUTLINED_FUNCTION_1_8();
  sub_2698554E4();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v20[14] = 1;
    OUTLINED_FUNCTION_1_8();
    sub_2698554E4();
    OUTLINED_FUNCTION_7_11();
    v18 = *(v3 + 33);
    v20[12] = 3;
    sub_2698554F4();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_2696C45C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323240, &qword_269859DE8);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2696C4F6C();
  OUTLINED_FUNCTION_10_6();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_4_10();
  sub_269855464();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_4_10();
  v11 = sub_269855464();
  OUTLINED_FUNCTION_12_6(v11, v12);
  OUTLINED_FUNCTION_4_10();
  v19 = sub_269855474();
  OUTLINED_FUNCTION_4_10();
  v13 = sub_269855474();
  v14 = OUTLINED_FUNCTION_2_12();
  v15(v14);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19 & 1;
  *(a2 + 33) = v13 & 1;
  return result;
}

uint64_t sub_2696C47C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696C4258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696C47E8(uint64_t a1)
{
  v2 = sub_2696C4F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C4824(uint64_t a1)
{
  v2 = sub_2696C4F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2696C4860@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2696C45C4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_2696C48C0(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2696C4950, 0, 0);
}

uint64_t sub_2696C4950()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  v2 = __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C4D74();
  v5 = sub_269851AB4();
  v7 = v6;
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v8 = sub_269851C84();
  *(v0 + 88) = 0;
  v9 = OUTLINED_FUNCTION_15_4(v8, sel_JSONObjectWithData_options_error_);

  v10 = *(v0 + 88);
  if (v9)
  {
    v11 = v10;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_13_3())
    {
      sub_2696C1F3C(v5, v7);
      v9 = *(v0 + 96);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = v10;
    v13 = sub_269851BD4();

    v9 = v13;
    swift_willThrow();
  }

  sub_269854A04();
  v14 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v14, v15);
LABEL_8:
  *(v0 + 120) = v9;
  v16 = *v2;
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_2696C4BD4;
  v18 = *MEMORY[0x277D85DE8];

  return sub_2696B8B54();
}

uint64_t sub_2696C4BD4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 128);
  v12 = *v2;

  v6 = *(v4 + 120);

  v8 = *(v12 + 8);
  v9 = *MEMORY[0x277D85DE8];
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

unint64_t sub_2696C4D74()
{
  result = qword_280323208;
  if (!qword_280323208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323208);
  }

  return result;
}

unint64_t sub_2696C4DC8()
{
  result = qword_280323210;
  if (!qword_280323210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323210);
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

uint64_t sub_2696C4E30(uint64_t a1, int a2)
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

uint64_t sub_2696C4E70(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2696C4ED8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_2696C4F18(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2696C4F6C()
{
  result = qword_280323220;
  if (!qword_280323220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323220);
  }

  return result;
}

unint64_t sub_2696C4FC0()
{
  result = qword_280323230;
  if (!qword_280323230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323230);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoLiveTuneInDialogProvider.AppNotFoundParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VideoLiveTuneInDialogProvider.AppNotFoundParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoLiveTuneInDialogProvider.PlayServiceOnRemoteParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2696C5258()
{
  result = qword_280323248;
  if (!qword_280323248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323248);
  }

  return result;
}

unint64_t sub_2696C52B0()
{
  result = qword_280323250;
  if (!qword_280323250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323250);
  }

  return result;
}

unint64_t sub_2696C5308()
{
  result = qword_280323258;
  if (!qword_280323258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323258);
  }

  return result;
}

unint64_t sub_2696C5360()
{
  result = qword_280323260;
  if (!qword_280323260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323260);
  }

  return result;
}

unint64_t sub_2696C53B8()
{
  result = qword_280323268;
  if (!qword_280323268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323268);
  }

  return result;
}

unint64_t sub_2696C5410()
{
  result = qword_280323270;
  if (!qword_280323270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323270);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{
  v3 = *(v0 + 32);
  *(v1 - 67) = 2;

  return sub_2698554F4();
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return sub_2698556E4();
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;
  *(v2 - 67) = 2;
  return v2 - 67;
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_15_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_2696C5590(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2696C5618(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323280, &qword_26985A198);
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696C6DA4();
  sub_2698556F4();
  sub_2698554C4();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_2696C574C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323290, &qword_26985A1A0);
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696C6DA4();
  sub_2698556E4();
  if (!v1)
  {
    v12 = sub_269855414();
    (*(v6 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_2696C58A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696C5590(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2696C58CC(uint64_t a1)
{
  v2 = sub_2696C6DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C5908(uint64_t a1)
{
  v2 = sub_2696C6DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2696C5944@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2696C574C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2696C5970(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_2696C5618(a1);
}

uint64_t sub_2696C598C()
{
  OUTLINED_FUNCTION_2_7();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_10(v1, v2, v3);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696C5A10()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2();
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      v10 = *(v1 + 24);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v6;
    v12 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v13 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v13, v14);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_3_12(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_5_10(v16);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C5C2C()
{
  OUTLINED_FUNCTION_2_7();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_10(v1, v2, v3);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696C5CB0()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2();
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      v10 = *(v1 + 24);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v6;
    v12 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v13 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v13, v14);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_3_12(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_5_10(v16);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C5ECC()
{
  OUTLINED_FUNCTION_2_7();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_10(v1, v2, v3);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696C5F50()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2();
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      v10 = *(v1 + 24);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v6;
    v12 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v13 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v13, v14);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_3_12(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_5_10(v16);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C616C()
{
  OUTLINED_FUNCTION_2_7();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_10(v1, v2, v3);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696C61F0()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2();
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      v10 = *(v1 + 24);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v6;
    v12 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v13 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v13, v14);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_3_12(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_5_10(v16);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C640C()
{
  OUTLINED_FUNCTION_2_7();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_10(v1, v2, v3);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696C6490()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2();
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      v10 = *(v1 + 24);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v6;
    v12 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v13 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v13, v14);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_3_12(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_5_10(v16);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C66AC()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 120);
  v8 = *v0;

  v3 = *(v1 + 112);

  v4 = *(v8 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_2696C6818()
{
  OUTLINED_FUNCTION_2_7();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_10(v1, v2, v3);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696C689C()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2();
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      v10 = *(v1 + 24);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v6;
    v12 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v13 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v13, v14);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_3_12(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_5_10(v16);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

unint64_t sub_2696C6AB8()
{
  result = qword_280323278;
  if (!qword_280323278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323278);
  }

  return result;
}

uint64_t sub_2696C6B0C(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  OUTLINED_FUNCTION_6_7();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2696C6B3C()
{
  v1 = *(v0 + 128);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  strcpy((inited + 32), "showInAppleTV");
  *(inited + 46) = -4864;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(v0 + 112) = sub_269854A04();
  v4 = *v2;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_12(v5);
  *v6 = v7;
  v6[1] = sub_2696C6C88;
  v8 = *(v0 + 96);

  return sub_2696B8F78();
}

uint64_t sub_2696C6C88()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_2696C6DA4()
{
  result = qword_280323288;
  if (!qword_280323288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323288);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoWatchListDialogProvider.WatchListParams.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2696C6EA8()
{
  result = qword_280323298;
  if (!qword_280323298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323298);
  }

  return result;
}

unint64_t sub_2696C6F00()
{
  result = qword_2803232A0;
  if (!qword_2803232A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803232A0);
  }

  return result;
}

unint64_t sub_2696C6F58()
{
  result = qword_2803232A8;
  if (!qword_2803232A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803232A8);
  }

  return result;
}

uint64_t sub_2696C6FAC()
{
  OUTLINED_FUNCTION_2_7();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_4();
  v1 = *MEMORY[0x277D85DE8];

  return sub_2696C66AC();
}

void *OUTLINED_FUNCTION_1_9()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  result = __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = result;
  v4[11] = a2;
  return result;
}

id OUTLINED_FUNCTION_7_12(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_19_2()
{

  return sub_269851AB4();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_269851BD4();
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_269855154();
}

uint64_t sub_2696C7188(uint64_t a1)
{
  v3 = sub_2698542D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v40 = v7;
    v32[1] = v1;
    v45 = MEMORY[0x277D84F90];
    sub_269815018(0, v8, 0);
    v9 = v45;
    result = sub_269811248(a1);
    v13 = result;
    v14 = 0;
    v43 = a1 + 56;
    v38 = *MEMORY[0x277D5FFE8];
    v39 = v4;
    v36 = v4 + 32;
    v37 = (v4 + 104);
    v15 = v9;
    v33 = a1 + 64;
    v34 = v8;
    v35 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(a1 + 32))
      {
        v16 = v13 >> 6;
        if ((*(v43 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v11)
        {
          goto LABEL_28;
        }

        LODWORD(v42) = v12;
        v41 = v11;
        v44 = *(*(a1 + 48) + v13);
        v17 = sub_269855544();
        v18 = v40;
        *v40 = 0x7463617265746E69;
        v18[1] = 0xEF657079546E6F69;
        v18[2] = v17;
        v18[3] = v19;
        (*v37)(v18, v38, v3);
        v45 = v15;
        v20 = v3;
        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_269815018(v21 > 1, v22 + 1, 1);
          v18 = v40;
          v15 = v45;
        }

        *(v15 + 16) = v22 + 1;
        result = (*(v39 + 32))(v15 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v22, v18, v20);
        if (v42)
        {
          goto LABEL_32;
        }

        v3 = v20;
        a1 = v35;
        v23 = 1 << *(v35 + 32);
        if (v13 >= v23)
        {
          goto LABEL_29;
        }

        v24 = *(v43 + 8 * v16);
        if ((v24 & (1 << v13)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v35 + 36) != v41)
        {
          goto LABEL_31;
        }

        v25 = v24 & (-2 << (v13 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v26 = v34;
        }

        else
        {
          v42 = v15;
          v27 = v16 << 6;
          v28 = v16 + 1;
          v26 = v34;
          v29 = (v33 + 8 * v16);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              result = sub_26968E5C8(v13, v41, 0);
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_19;
            }
          }

          result = sub_26968E5C8(v13, v41, 0);
LABEL_19:
          v15 = v42;
        }

        if (++v14 == v26)
        {
          return v15;
        }

        v12 = 0;
        v11 = *(a1 + 36);
        v13 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2696C7520(char a1)
{
  result = 0x6564695679616C70;
  switch(a1)
  {
    case 1:
      result = 0x65646956646E6966;
      break;
    case 2:
      result = 0x7461576F54646461;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6576694C79616C70;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2696C75E0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6769626D61736964;
      break;
    case 2:
      result = 0x616D7269666E6F63;
      break;
    case 3:
      result = 0x656C65536F747561;
      break;
    case 4:
      result = 0x656A65526F747561;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2696C76B4(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_2696C76DC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2696C76B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2696C7708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2696C75D8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2696C7734()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v1 = OUTLINED_FUNCTION_8_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8 + 16;
  sub_269854294();
  v10 = sub_2698542A4();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_2696C96F0(v9, v6);
  v19[3] = &type metadata for SiriRemembersProvider;
  v19[4] = &off_287A41D70;
  v11 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v19, &type metadata for SiriRemembersProvider);
  *(v14 + 40) = &type metadata for SiriRemembersProvider;
  *(v14 + 48) = &off_287A41D70;
  v15 = OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_interactionStore;
  __swift_storeEnumTagSinglePayload(v14 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_interactionStore, 1, 1, v10);
  swift_beginAccess();
  sub_2696C9A50(v6, v14 + v15);
  swift_endAccess();
  v16 = (v14 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_nowProvider);
  *v16 = sub_2696C78D8;
  v16[1] = 0;
  sub_269698048(v9, &qword_280322D70, &qword_2698582E8);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14;
}

uint64_t sub_2696C78DC(void *a1, char a2, char a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v9 = OUTLINED_FUNCTION_8_9(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_269854D94();
  v14 = sub_269854DB4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 41) = a3;
  *(v15 + 48) = v3;
  *(v15 + 56) = v7;
  v16 = a1;

  sub_26983AA20();
}

uint64_t sub_2696C7A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 121) = a6;
  *(v7 + 120) = a5;
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  v8 = sub_269851D34();
  *(v7 + 32) = v8;
  v9 = *(v8 - 8);
  *(v7 + 40) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 48) = swift_task_alloc();
  v11 = sub_269851E84();
  *(v7 + 56) = v11;
  v12 = *(v11 - 8);
  *(v7 + 64) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  v14 = sub_269851B94();
  *(v7 + 80) = v14;
  v15 = *(v14 - 8);
  *(v7 + 88) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696C7B98, 0, 0);
}

uint64_t sub_2696C7B98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 120);
  v3 = *(v0 + 121);
  v4 = [objc_allocWithZone(MEMORY[0x277D61FD0]) init];
  *(v0 + 104) = v4;
  v5 = v4;
  v6 = sub_269854A64();
  [v5 _setLaunchId_];

  v7 = sub_269854604();
  sub_2696C97B8(v7, v8, v5, &selRef_setRemoteDeviceID_);
  v9 = sub_2696C7520(v2);
  sub_2696C97B8(v9, v10, v5, &selRef_setIntentType_);
  [v5 setInteractionType_];
  sub_269854644();
  if (v11)
  {
    v12 = sub_269854A64();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);
  v35 = v13;
  v36 = *(v0 + 56);
  v16 = *(v0 + 40);
  v33 = *(v0 + 96);
  v34 = *(v0 + 32);
  v31 = v14;
  v32 = *(v0 + 24);
  [v5 setRoomName_];

  sub_269851E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803232E8, &unk_26985A3A0);
  v17 = sub_269851E64();
  OUTLINED_FUNCTION_8(v17);
  v19 = v18;
  v21 = *(v20 + 72);
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_269858BB0;
  v24 = v23 + v22;
  v25 = *(v19 + 104);
  v25(v24, *MEMORY[0x277CC9988], v17);
  v25(v24 + v21, *MEMORY[0x277CC9998], v17);
  v25(v24 + 2 * v21, *MEMORY[0x277CC9968], v17);
  v25(v24 + 3 * v21, *MEMORY[0x277CC9980], v17);
  v25(v24 + 4 * v21, *MEMORY[0x277CC99A0], v17);
  v25(v24 + 5 * v21, *MEMORY[0x277CC99A8], v17);
  sub_2698318AC();
  v26 = *(v32 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_nowProvider + 8);
  (*(v32 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_nowProvider))();
  sub_269851E34();

  (*(v16 + 8))(v15, v34);
  (*(v35 + 8))(v31, v36);
  v27 = sub_269851B74();
  [v5 setRequestTime_];

  v28 = swift_task_alloc();
  *(v0 + 112) = v28;
  *v28 = v0;
  v28[1] = sub_2696C7F60;
  v29 = *(v0 + 24);

  return sub_2696C8468(v5);
}

uint64_t sub_2696C7F60()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2696C805C, 0, 0);
}

uint64_t sub_2696C805C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  (*(v3 + 8))(v1, v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2696C8108@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v50 = a2;
  HIDWORD(v49) = a1;
  v51 = a3;
  v3 = sub_2698548D4();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  v13 = OUTLINED_FUNCTION_8_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = sub_269854204();
  v19 = OUTLINED_FUNCTION_8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v26 = v25 - v24;
  v27 = sub_269854644();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v31 = sub_269854604();
    v32 = v50;
    sub_2696C84FC(v31, v33, v29, v30, SHIDWORD(v49), v50, v17);

    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      (*(v21 + 32))(v26, v17, v18);
      v41 = type metadata accessor for DeviceSelectionDonationAggregations(0);
      v42 = v41[5];

      v43 = v51;
      sub_2698541F4();
      sub_2696C93B4(v26);
      v45 = v44;
      sub_2696C93AC(v26);
      v47 = v46;
      (*(v21 + 8))(v26, v18);
      *v43 = v32;
      *(v43 + v41[6]) = v45;
      *(v43 + v41[7]) = v47;
      v39 = v43;
      v40 = 0;
      v38 = v41;
      return __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
    }

    sub_269698048(v17, &qword_280322D78, &unk_26985A370);
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    __swift_project_value_buffer(v3, qword_28033D910);
    OUTLINED_FUNCTION_6_11();
    v34(v11);
    v35 = sub_2698548B4();
    v36 = sub_269854F24();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_269684000, v35, v36, "Room Name should not be empty for querying donation selections store. Returning.", v37, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v6 + 8))(v11, v3);
  }

  v38 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  v39 = v51;
  v40 = 1;
  return __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
}

uint64_t sub_2696C8468(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2696C8488, 0, 0);
}

uint64_t sub_2696C8488()
{
  v1 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_2697B752C(v1, 1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2696C84FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  LODWORD(v172) = a5;
  v171 = a4;
  v174 = a1;
  v175 = a3;
  v177 = a2;
  v173 = a7;
  v154 = sub_269851D34();
  v8 = OUTLINED_FUNCTION_8(v154);
  v153 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v13 - v12);
  v178 = sub_2698548D4();
  v14 = OUTLINED_FUNCTION_8(v178);
  v176 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12();
  v182 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_13();
  v158 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  v23 = OUTLINED_FUNCTION_8_9(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_1(&v149 - v26);
  v183 = sub_269854204();
  v27 = OUTLINED_FUNCTION_8(v183);
  v156 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_13();
  v157 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v35 = OUTLINED_FUNCTION_8_9(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_15_1(v39);
  v181 = sub_2698542A4();
  v40 = OUTLINED_FUNCTION_8(v181);
  v164 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v45 - v44);
  v187 = sub_269854284();
  v46 = OUTLINED_FUNCTION_8(v187);
  v180 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_13();
  v188 = v52;
  v53 = sub_2698542D4();
  v54 = *(v53 - 8);
  v55 = v54;
  v56 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v59 = (v58 - v57);
  v60 = sub_2698541D4();
  v186 = v60;
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_12();
  v65 = v63 - v64;
  v67 = MEMORY[0x28223BE20](v66);
  v167 = &v149 - v68;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7_13();
  v185 = v69;
  v166 = sub_2696C7188(a6);
  v161 = 0;
  sub_2698541C4();
  sub_2698541B4();
  v184 = *(v61 + 8);
  v184(v65, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803232D8, &unk_26985A380);
  v70 = *(v54 + 72);
  v165 = v54;
  v71 = (*(v165 + 80) + 32) & ~*(v165 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_26985A2C0;
  v73 = (v72 + v71);
  v74 = sub_2696C7520(v172);
  *v73 = 0x7954746E65746E69;
  *(v73 + 1) = 0xEA00000000006570;
  v150 = v74;
  *(v73 + 2) = v74;
  *(v73 + 3) = v75;
  v151 = v75;
  v76 = *(v55 + 104);
  (v76)(v73, *MEMORY[0x277D5FFE8], v53);
  v77 = &v73[v70];
  strcpy(&v73[v70], "remoteDeviceID");
  v77[15] = -18;
  v78 = v177;
  *(v77 + 2) = v174;
  *(v77 + 3) = v78;
  v76();
  v79 = &v73[2 * v70];
  *v79 = 0x656D614E6D6F6F72;
  *(v79 + 1) = 0xE800000000000000;
  v80 = v171;
  *(v79 + 2) = v175;
  *(v79 + 3) = v80;
  v81 = v80;
  v76();
  *&v73[3 * v70] = v166;
  (v76)(&v73[3 * v70], *MEMORY[0x277D5FFE0], v53);
  *v59 = v72;
  (v76)(v59, *MEMORY[0x277D5FFD8], v53);
  v82 = v180;

  v83 = v167;
  sub_2698541A4();
  v84 = v187;
  (*(v165 + 8))(v59, v53);
  v172 = v61 + 8;
  v184(v83, v186);
  v85 = v179;
  v86 = v169;
  sub_269854274();
  v87 = v168;
  sub_269854244();
  v90 = *(v82 + 8);
  v88 = v82 + 8;
  v89 = v90;
  v90(v86, v84);
  sub_269854254();
  v91 = v170;
  v92 = v84;
  v93 = v181;
  v90(v87, v92);
  v94 = OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_interactionStore;
  swift_beginAccess();
  sub_2696C96F0(v85 + v94, v91);
  if (__swift_getEnumTagSinglePayload(v91, 1, v93) == 1)
  {
    sub_269698048(v91, &qword_280322D70, &qword_2698582E8);
    v95 = v183;
    v96 = v178;
    v97 = v176;
LABEL_5:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    __swift_project_value_buffer(v96, qword_28033D910);
    OUTLINED_FUNCTION_6_11();
    v103(v182);

    v104 = sub_2698548B4();
    v105 = sub_269854F24();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = v89;
      v107 = v85;
      v108 = swift_slowAlloc();
      *v108 = 67109120;
      v109 = v160;
      sub_2696C96F0(v107 + v94, v160);
      v110 = __swift_getEnumTagSinglePayload(v109, 1, v181) == 1;
      sub_269698048(v109, &qword_280322D70, &qword_2698582E8);
      *(v108 + 4) = v110;
      v89 = v106;
      v95 = v183;

      _os_log_impl(&dword_269684000, v104, v105, "Error while getting the history stats. Is Interaction store nil: %{BOOL}d. Returning.", v108, 8u);
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    (*(v97 + 8))(v182, v96);
    v89(v188, v187);
    v111 = OUTLINED_FUNCTION_9_9();
    v112(v111);
    v113 = 1;
    v114 = v173;
    return __swift_storeEnumTagSinglePayload(v114, v113, 1, v95);
  }

  v169 = v89;
  v98 = v164;
  v99 = v163;
  (*(v164 + 32))(v163, v91, v93);
  v100 = v93;
  v101 = v162;
  v102 = v161;
  sub_269854234();
  if (v102)
  {

    (*(v98 + 8))(v99, v100);
    v95 = v183;
    __swift_storeEnumTagSinglePayload(v101, 1, 1, v183);
    sub_269698048(v101, &qword_280322D78, &unk_26985A370);
    v96 = v178;
    v85 = v179;
    v97 = v176;
    v89 = v169;
    goto LABEL_5;
  }

  v116 = v101;
  v117 = v81;
  v180 = v88;
  v95 = v183;
  __swift_storeEnumTagSinglePayload(v116, 0, 1, v183);
  v118 = v156;
  v119 = *(v156 + 32);
  v120 = v157;
  v182 = v156 + 32;
  v179 = v119;
  v119(v157, v116, v95);
  v121 = v178;
  v122 = v176;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  __swift_project_value_buffer(v121, qword_28033D910);
  OUTLINED_FUNCTION_6_11();
  v123 = v158;
  v124(v158);
  v125 = *(v118 + 16);
  v126 = v155;
  v125();
  (v125)(v159, v120, v95);
  v127 = v117;

  v129 = sub_2698548B4();
  v130 = sub_269854F14();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v189 = v170;
    *v131 = 136316162;
    *(v131 + 4) = sub_26974F520(v174, v128, &v189);
    *(v131 + 12) = 2080;
    *(v131 + 14) = sub_26974F520(v175, v127, &v189);
    *(v131 + 22) = 2080;
    v132 = v130;
    v133 = sub_26974F520(v150, v151, &v189);

    *(v131 + 24) = v133;
    *(v131 + 32) = 2080;
    v134 = v152;
    sub_2698541F4();
    sub_2696C9760();
    v135 = v154;
    v136 = sub_269855544();
    v138 = v137;
    (*(v153 + 8))(v134, v135);
    v139 = *(v118 + 8);
    v139(v126, v183);
    v140 = sub_26974F520(v136, v138, &v189);

    *(v131 + 34) = v140;
    *(v131 + 42) = 2080;
    v141 = v159;
    sub_2698541E4();
    v142 = MEMORY[0x26D645BC0]();
    v144 = v143;

    v139(v141, v183);
    v120 = v157;
    v145 = sub_26974F520(v142, v144, &v189);

    *(v131 + 44) = v145;
    _os_log_impl(&dword_269684000, v129, v132, "For remoteDeviceID: %s, roomName: %s intentType: %s, stats are - recency: %s, frequencies %s", v131, 0x34u);
    swift_arrayDestroy();
    v95 = v183;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v176 + 8))(v158, v178);
  }

  else
  {

    v146 = *(v118 + 8);
    v146(v159, v95);
    v146(v126, v95);
    (*(v122 + 8))(v123, v178);
  }

  (*(v164 + 8))(v163, v181);
  v169(v188, v187);
  v147 = OUTLINED_FUNCTION_9_9();
  v148(v147);
  v114 = v173;
  v179(v173, v120, v95);
  v113 = 0;
  return __swift_storeEnumTagSinglePayload(v114, v113, 1, v95);
}

void sub_2696C93BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2698541E4();
  sub_26977E488(a2, v3);
  v7 = v6 >> 1;
  v8 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
    goto LABEL_18;
  }

  if (!v8)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
LABEL_11:
    v15 = *(v11 + 16);
    if (!v15)
    {
LABEL_15:

      return;
    }

    v16 = 0;
    v17 = (v11 + 32);
    while (1)
    {
      v18 = *v17++;
      v19 = __OFADD__(v16, v18);
      v16 += v18;
      if (v19)
      {
        goto LABEL_17;
      }

      if (!--v15)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = v4;
  v10 = v5;
  v20 = MEMORY[0x277D84F90];
  sub_269814EA8(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = v20;
    while (v10 < v7)
    {
      v12 = *(v9 + 2 * v10);
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_269814EA8(v13 > 1, v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      *(v20 + 8 * v14 + 32) = v12;
      if (v7 == ++v10)
      {
        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2696C951C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_interactionStore, &qword_280322D70, &qword_2698582E8);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_nowProvider + 8);

  return v0;
}

uint64_t sub_2696C9570()
{
  sub_2696C951C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2696C95F0()
{
  sub_2696C9698();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2696C9698()
{
  if (!qword_2803232D0)
  {
    sub_2698542A4();
    v0 = sub_2698550A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2803232D0);
    }
  }
}

uint64_t sub_2696C96F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2696C9760()
{
  result = qword_2803232E0;
  if (!qword_2803232E0)
  {
    sub_269851D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803232E0);
  }

  return result;
}

void sub_2696C97B8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_269854A64();

  [a3 *a4];
}

uint64_t sub_2696C9844(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2696C987C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 41);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2696C995C;

  return sub_2696C7A18(a1, v4, v5, v6, v10, v9, v7);
}

uint64_t sub_2696C995C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2696C9A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for DeviceSelectionInteractionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_2696C9BC4()
{
  sub_2696C9C58();
  if (v0 <= 0x3F)
  {
    sub_269851D34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2696C9C58()
{
  if (!qword_280323300)
  {
    sub_2696C9CB4();
    v0 = sub_269854E74();
    if (!v1)
    {
      atomic_store(v0, &qword_280323300);
    }
  }
}

unint64_t sub_2696C9CB4()
{
  result = qword_280323308;
  if (!qword_280323308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323308);
  }

  return result;
}

unint64_t sub_2696C9D0C()
{
  result = qword_280323310;
  if (!qword_280323310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323310);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_9()
{
  result = *(v0 - 160);
  v2 = *(v0 - 152);
  v3 = *(v0 - 264);
  v4 = *(v0 - 168);
  return result;
}

uint64_t sub_2696C9DAC()
{
  v0 = sub_269851D34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269851D24();
  sub_269851CB4();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  v8 = round(v6 * 1000.0);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2696C9ED8(uint64_t a1, __int128 *a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_26980C0F4();
      v24 = *a2;
      sub_2696A8078(&v24);
      v23 = *(a2 + 2);
      sub_2696CA0B8(&v23);
      v22 = *(a2 + 24);
      sub_2696A8078(&v22);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
        v11 = *v10;
        v12 = v10[1];
        if (*v10 == *a2 && v12 == *(a2 + 1))
        {
          v14 = 1;
        }

        else
        {
          v14 = sub_269855584() & 1;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v8 + 16);
          sub_26977C2D8();
          v8 = v18;
        }

        v15 = *(v8 + 16);
        if (v15 >= *(v8 + 24) >> 1)
        {
          sub_26977C2D8();
          v8 = v19;
        }

        v5 &= v5 - 1;
        *(v8 + 16) = v15 + 1;
        v16 = (v8 + 24 * v15);
        v16[4] = v11;
        v16[5] = v12;
        v16[6] = v14;
      }

      while (v5);
    }
  }

  __break(1u);
}

uint64_t sub_2696CA0B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696CA120()
{
  v0 = sub_269851D84() >> 56;
  v1 = (sub_269851D84() >> 40) & 0xFF00 | v0;
  v2 = (sub_269851D84() >> 24) & 0xFF0000;
  v3 = v1 | v2 | (sub_269851D84() >> 8) & 0xFF000000;
  v4 = v3 & 0xFFFFFF00FFFFFFFFLL | ((sub_269851D84() >> 24) << 32);
  v5 = v4 & 0xFFFF00FFFFFFFFFFLL | ((sub_269851D84() >> 16) << 40);
  v6 = v5 & 0xFF00FFFFFFFFFFFFLL | ((sub_269851D84() >> 8) << 48);
  v7 = v6 | (sub_269851D84() << 56);
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  return v7;
}

unint64_t sub_2696CA210()
{
  sub_2696CA608();
  v0 = OUTLINED_FUNCTION_0_14();
  MEMORY[0x26D645A60](v0);

  v1 = sub_2696CA65C(0x10uLL, 0xD000000000000010, 0x800000026987CBB0);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_0_14();
  MEMORY[0x26D645A60](v4);

  v5 = sub_2696CA65C(0x10uLL, 0xD000000000000010, 0x800000026987CBB0);
  v7 = v6;

  v8 = sub_269771A6C(8, v1, v3);
  v68 = v10;
  v69 = v9;
  v12 = v11;
  result = sub_2698550B4();
  if (v14)
  {
    goto LABEL_11;
  }

  if (v3 >> 14 < result >> 14)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v66 = v8;
  v67 = v12;
  v15 = sub_2698550D4();
  v17 = v16;

  v18 = sub_269771A6C(4, v15, v17);
  v64 = v20;
  v65 = v19;
  v22 = v21;
  result = sub_2698550B4();
  if (v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 >> 14 < result >> 14)
  {
    goto LABEL_9;
  }

  v63 = v18;
  v24 = sub_2698550D4();
  v26 = v25;

  v27 = sub_269771A6C(4, v24, v26);
  v29 = v28;
  v60 = v30;
  v32 = v31;

  v33 = sub_269771A6C(4, v5, v7);
  v61 = v35;
  v62 = v34;
  v37 = v36;
  result = sub_2698550B4();
  if ((v38 & 1) == 0)
  {
    if (v7 >> 14 >= result >> 14)
    {
      v39 = sub_2698550D4();
      v58 = v40;
      v59 = v39;
      v57 = v41;
      v43 = v42;

      MEMORY[0x26D645A10](v66, v69, v68, v67);
      v44 = v33;

      OUTLINED_FUNCTION_1_10();
      v45 = MEMORY[0x26D645A10](v63, v65, v64, v22);
      v47 = v46;

      MEMORY[0x26D645A60](v45, v47);

      OUTLINED_FUNCTION_1_10();
      v48 = MEMORY[0x26D645A10](v27, v29, v60, v32);
      v50 = v49;

      MEMORY[0x26D645A60](v48, v50);

      OUTLINED_FUNCTION_1_10();
      v51 = MEMORY[0x26D645A10](v44, v62, v61, v37);
      v53 = v52;

      MEMORY[0x26D645A60](v51, v53);

      OUTLINED_FUNCTION_1_10();
      v54 = MEMORY[0x26D645A10](v59, v58, v57, v43);
      v56 = v55;

      MEMORY[0x26D645A60](v54, v56);

      sub_269851D44();
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_2696CA608()
{
  result = qword_280323318;
  if (!qword_280323318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323318);
  }

  return result;
}

unint64_t sub_2696CA65C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_269854B54();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_269854C04();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return MEMORY[0x2821FBF60](v2 - 96, 16, 0, v1, v0);
}

void OUTLINED_FUNCTION_1_10()
{

  JUMPOUT(0x26D645A60);
}

uint64_t sub_2696CA770@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-v6 - 8];
  v8 = sub_269853D94();
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_269853F34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323348, qword_26985A4E8);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_4_12(v7, 1);
    v18 = &qword_280323330;
    v19 = qword_26985B080;
    v20 = v7;
LABEL_6:
    sub_2696CB05C(v20, v18, v19);
    v17 = a1;
    v16 = 1;
    return OUTLINED_FUNCTION_4_12(v17, v16);
  }

  OUTLINED_FUNCTION_4_12(v7, 0);
  (*(v11 + 32))(v15, v7, v8);
  sub_2696CB0DC(0x6E6F69746361, 0xE600000000000000, v23);
  (*(v11 + 8))(v15, v8);
  if (!v24)
  {
    v18 = &unk_280323340;
    v19 = &unk_26985A4E0;
    v20 = v23;
    goto LABEL_6;
  }

  v16 = swift_dynamicCast() ^ 1;
  v17 = a1;
  return OUTLINED_FUNCTION_4_12(v17, v16);
}

uint64_t sub_2696CA970@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  sub_2696CA770(&v13 - v6);
  v8 = sub_269853D94();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2696CB05C(v7, &qword_280323330, qword_26985B080);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
LABEL_5:
    sub_2696CB05C(&v13, &qword_280323340, &qword_26985A4E0);
    v11 = a1;
    v10 = 1;
    return OUTLINED_FUNCTION_4_12(v11, v10);
  }

  sub_2696CB0DC(0x646E616D6D6F63, 0xE700000000000000, &v13);
  OUTLINED_FUNCTION_3_14(v8);
  (*(v9 + 8))(v7, v8);
  if (!*(&v14 + 1))
  {
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323348, qword_26985A4E8);
  v10 = swift_dynamicCast() ^ 1;
  v11 = a1;
  return OUTLINED_FUNCTION_4_12(v11, v10);
}