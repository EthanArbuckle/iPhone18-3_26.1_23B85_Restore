uint64_t sub_231DF1B98(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(void), uint64_t (*a7)(uint64_t), uint64_t (*a8)(void))
{
  v85 = a8;
  v98 = a7;
  v97 = sub_231E0F950();
  v14 = OUTLINED_FUNCTION_24(v97);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_139();
  v96 = v19;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_5();
  v95 = v21;
  v22 = OUTLINED_FUNCTION_3_0();
  v103 = a5(v22);
  v23 = *(*(v103 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v103);
  v94 = v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v24);
  v100 = v84 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v31 = a2 - a1 == 0x8000000000000000 && v30 == -1;
  if (v31)
  {
    goto LABEL_61;
  }

  v32 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_62;
  }

  v34 = a6;
  v35 = a2;
  v36 = (a2 - a1) / v30;
  v106 = a1;
  v105 = a4;
  v92 = (v16 + 8);
  v93 = (v27 + 16);
  v91 = (v27 + 8);
  v37 = v32 / v30;
  if (v36 >= v32 / v30)
  {
    v102 = a1;
    sub_231DEFA6C(a2, v32 / v30, a4, v34);
    v88 = a4;
    v61 = a4 + v37 * v30;
    v62 = -v30;
    v63 = v61;
    v64 = v98;
    v87 = -v30;
LABEL_37:
    v89 = v35 + v62;
    v84[0] = v63;
    v101 = v35;
    while (1)
    {
      if (v61 <= v88)
      {
        v106 = v35;
        v104 = v63;
        goto LABEL_59;
      }

      if (v35 <= v102)
      {
        break;
      }

      v86 = v63;
      v99 = a3 + v62;
      v65 = v61 + v62;
      v66 = v61;
      v67 = *v93;
      v68 = v64;
      v69 = v103;
      v90 = a3;
      v67(v100, v65, v103);
      v70 = v94;
      v71 = (v67)(v94, v89, v69);
      v72 = v95;
      v73 = v68(v71);
      v74 = v96;
      v68(v73);
      LOBYTE(v68) = sub_231E0F8E0();
      v75 = *v92;
      v76 = v74;
      v77 = v97;
      (*v92)(v76, v97);
      v75(v72, v77);
      v78 = *v91;
      (*v91)(v70, v69);
      v78(v100, v69);
      if (v68)
      {
        v61 = v66;
        a3 = v99;
        if (v90 < v101 || v99 >= v101)
        {
          v35 = v89;
          OUTLINED_FUNCTION_28_13();
          swift_arrayInitWithTakeFrontToBack();
          v63 = v86;
          v62 = v87;
          v64 = v98;
        }

        else
        {
          v82 = v86;
          v63 = v86;
          v83 = v89;
          v35 = v89;
          v64 = v98;
          v62 = v87;
          if (v90 != v101)
          {
            OUTLINED_FUNCTION_28_13();
            swift_arrayInitWithTakeBackToFront();
            v35 = v83;
            v63 = v82;
          }
        }

        goto LABEL_37;
      }

      v79 = v99;
      if (v90 < v66 || v99 >= v66)
      {
        OUTLINED_FUNCTION_28_13();
        swift_arrayInitWithTakeFrontToBack();
        a3 = v79;
        v61 = v65;
        v63 = v65;
        v64 = v98;
        v35 = v101;
        v62 = v87;
      }

      else
      {
        v63 = v65;
        v31 = v66 == v90;
        a3 = v99;
        v61 = v65;
        v64 = v98;
        v35 = v101;
        v62 = v87;
        if (!v31)
        {
          OUTLINED_FUNCTION_28_13();
          swift_arrayInitWithTakeBackToFront();
          a3 = v79;
          v61 = v65;
          v63 = v65;
        }
      }
    }

    v106 = v35;
    v104 = v84[0];
  }

  else
  {
    sub_231DEFA6C(a1, (a2 - a1) / v30, a4, v34);
    v89 = v30;
    v90 = a4 + v36 * v30;
    v104 = v90;
    v38 = a2;
    v99 = a3;
    while (a4 < v90 && v38 < a3)
    {
      v101 = v38;
      v102 = a1;
      v40 = *v93;
      v41 = v100;
      v42 = v103;
      (*v93)(v100, v38, v103);
      v43 = v94;
      v44 = (v40)(v94, a4, v42);
      v45 = v95;
      v46 = v98;
      v47 = v98(v44);
      v48 = v96;
      v46(v47);
      v49 = sub_231E0F8E0();
      v50 = *v92;
      v51 = v48;
      v52 = a4;
      v53 = v97;
      (*v92)(v51, v97);
      v50(v45, v53);
      v54 = *v91;
      (*v91)(v43, v42);
      v54(v41, v42);
      if (v49)
      {
        v55 = v89;
        v56 = v102;
        v57 = v101 + v89;
        v58 = v102 < v101 || v102 >= v57;
        a4 = v52;
        if (v58)
        {
          OUTLINED_FUNCTION_19_13();
          swift_arrayInitWithTakeFrontToBack();
          v38 = v57;
          a3 = v99;
        }

        else
        {
          a3 = v99;
          if (v102 != v101)
          {
            OUTLINED_FUNCTION_19_13();
            swift_arrayInitWithTakeBackToFront();
          }

          v38 = v57;
        }
      }

      else
      {
        v38 = v101;
        v56 = v102;
        v55 = v89;
        a4 = v52 + v89;
        v59 = v102 < v52 || v102 >= a4;
        v60 = v52;
        if (v59)
        {
          OUTLINED_FUNCTION_19_13();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v99;
        }

        else
        {
          a3 = v99;
          if (v102 != v60)
          {
            OUTLINED_FUNCTION_19_13();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v105 = a4;
      }

      a1 = v56 + v55;
      v106 = a1;
    }
  }

LABEL_59:
  sub_231DF21EC(&v106, &v105, &v104, v85);
  return 1;
}

uint64_t sub_231DF21EC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  result = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  v12 = v5 + (v6 - v5) / v10 * v10;
  if (v4 < v5 || v4 >= v12)
  {
    OUTLINED_FUNCTION_48();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_48();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_231DF22C0(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_231CE0B9C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

size_t sub_231DF2340(int64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v13 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!result || a1 > *(v13 + 24) >> 1)
  {
    if (*(v13 + 16) <= a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = *(v13 + 16);
    }

    result = sub_231DEF7F0(result, v15, a2 & 1, v13, a3, a4, a5, a6);
    *v6 = result;
  }

  return result;
}

uint64_t sub_231DF248C(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_231CC1784(0, a3, a4);
  v8 = sub_231E11870();

  return v8;
}

uint64_t sub_231DF2500(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231DF2664@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v9 = *a1;
  v5 = sub_231E120D0();
  MEMORY[0x23837CC20](v5);

  MEMORY[0x23837CC20](47, 0xE100000000000000);
  v6 = sub_231E10690();
  MEMORY[0x23837CC20](v6);

  *a2 = 14960;
  a2[1] = v8;
  return result;
}

size_t OUTLINED_FUNCTION_16_15()
{

  return sub_231DEBB9C(v0, sub_231DF2400, v1, v2 + 144);
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_13()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

void OUTLINED_FUNCTION_22_11()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_25_10()
{
  v8 = v0[28];
  v9 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  return type metadata accessor for AssetManager();
}

void OUTLINED_FUNCTION_26_12()
{
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 216);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 160);
  *(v1 - 128) = *(v0 + 176);
  v13 = *(v0 + 144);
}

uint64_t OUTLINED_FUNCTION_31_16()
{
  v6 = *(v3 + 272);
  v7 = *(v3 + 256);
  *(v1 + 16) = v2;
  return v1 + v0 + v5 * v4;
}

uint64_t OUTLINED_FUNCTION_34_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 24);
  v8[27] = *(v9 + 16);
  v8[28] = v11;
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a3;
  v8[22] = a4;
  v8[19] = a1;
  v8[20] = a2;

  return sub_231E10E30();
}

void OUTLINED_FUNCTION_36_12()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
}

id OUTLINED_FUNCTION_39_8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{

  return [a10 a2];
}

__n128 OUTLINED_FUNCTION_50_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  *(v14 - 96) = a1;
  result = a13;
  *v13 = a13.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_56_13()
{
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[26];
}

uint64_t OUTLINED_FUNCTION_69_7(uint64_t a1)
{
  *(v1 + 312) = a1;

  return sub_231E115F0();
}

uint64_t OUTLINED_FUNCTION_70_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71_6(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(void))
{
  v8 = *(v6 - 272);
  v9 = *(v6 - 264);

  return sub_231DF1B98(a1, a2, a3, a4, a5, a6, v8, v9);
}

uint64_t OUTLINED_FUNCTION_72_6(uint64_t a1)
{
  *(v1 + 304) = a1;

  return sub_231E115F0();
}

uint64_t sub_231DF2ACC(uint64_t a1, uint64_t a2)
{
  v3 = sub_231E0F950();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_231E10980();
  sub_231E0F870();
  v7 = v6;
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_8();
  v10(v9);
  sub_231E0F880();
  if (v11 - sub_231D11D54() <= v7)
  {
    sub_231E10910();
    if (v12)
    {
      v13 = sub_231E108E0();
      if (v13 == 2 || (v13 & 1) == 0)
      {
        type metadata accessor for AssetManager();
        sub_231D45A8C();
        v15 = v14;
        v16 = OUTLINED_FUNCTION_8();
        sub_231DAA834(v16, v17);
        v19 = sub_231DF2D54(v18, v15, sub_231D2D2D4, &type metadata for AppCategoryID, sub_231D2D328);

        if (v19)
        {

          return OUTLINED_FUNCTION_8();
        }

        sub_231D45D9C();
        v21 = v20;
        v22 = OUTLINED_FUNCTION_8();
        v24 = sub_231D24924(v22, v23, v21);

        if (v24)
        {
          return OUTLINED_FUNCTION_8();
        }
      }

      if (sub_231DF2D54(0, a2, sub_231D2D37C, &type metadata for SummarizationManager.Option, sub_231D2D3D0))
      {
        v25 = *sub_231D70008();

        sub_231D70048();
      }
    }
  }

  return OUTLINED_FUNCTION_8();
}

BOOL sub_231DF2D54(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v7 = *(a2 + 40);
  a3();
  v8 = sub_231E11550();
  v9 = ~(-1 << *(a2 + 32));
  do
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(a2 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v15 = *(*(a2 + 48) + v10);
    a5();
    v13 = sub_231E115D0();
    v8 = v10 + 1;
  }

  while ((v13 & 1) == 0);
  return v12;
}

uint64_t sub_231DF2E4C@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v128 = sub_231E107F0();
  v8 = OUTLINED_FUNCTION_24(v128);
  v111 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  v127 = v13 - v12;
  v126 = sub_231E10EE0();
  v14 = OUTLINED_FUNCTION_24(v126);
  v129 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v20 = v19 - v18;
  v21 = sub_231E0F950();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_4_1();
  v116 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v114 = v109 - v27;
  v124 = sub_231E10400();
  v28 = OUTLINED_FUNCTION_24(v124);
  v113 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_1();
  v112 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74448, &unk_231E171C0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v110 = v109 - v40;
  MEMORY[0x28223BE20](v39);
  v119 = v109 - v41;
  v42 = sub_231E11090();
  v43 = OUTLINED_FUNCTION_24(v42);
  v122 = v44;
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v43);
  v118 = v109 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = v109 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = v109 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = v109 - v55;
  v130[0] = 0;
  sub_231DF3B40(&qword_2814CAFF8);
  v121 = v56;
  v123 = v42;
  sub_231E122B0();
  v57 = sub_231E10900();
  if (v57 != 2 && (v57 & 1) != 0)
  {
    sub_231E11080();
    OUTLINED_FUNCTION_4_30();
    v58 = OUTLINED_FUNCTION_2_34();
    v42(v58);
    v59 = v5;
    v5 = v4;
    (v42)(v54, v59);
  }

  v60 = sub_231E10950();
  if (v60 != 2 && (v60 & 1) != 0)
  {
    sub_231E11070();
    OUTLINED_FUNCTION_4_30();
    v61 = OUTLINED_FUNCTION_2_34();
    v42(v61);
    v62 = v5;
    v5 = v4;
    (v42)(v54, v62);
  }

  v63 = sub_231E108E0();
  v117 = a3;
  v120 = v38;
  v115 = v20;
  if (v63 != 2 && (v63 & 1) != 0)
  {
    goto LABEL_11;
  }

  v64 = sub_231E10910();
  if (v65)
  {
    v66 = v64;
    v67 = v65;
    type metadata accessor for AssetManager();

    sub_231D46268();
    v69 = v68;
    v130[0] = v66;
    v130[1] = v67;
    MEMORY[0x28223BE20](v68);
    v107 = v130;
    v70 = sub_231D162D0(sub_231D163AC, v106, v69);
    swift_bridgeObjectRelease_n();

    if (v70)
    {
LABEL_11:
      sub_231E11060();
      OUTLINED_FUNCTION_4_30();
      v71 = *(v122 + 8);
      v72 = v51;
      v73 = v123;
      v71(v72, v123);
      v71(v54, v73);
    }
  }

  v74 = sub_231E113F0();
  v75 = v119;
  __swift_storeEnumTagSinglePayload(v119, 1, 1, v74);
  v76 = sub_231E10930();
  v77 = v114;
  sub_231D177B0(v76, v114);

  v78 = v124;
  if (__swift_getEnumTagSinglePayload(v77, 1, v124) == 1)
  {
    sub_231CC154C(v77, &dword_27DD73FA0, &dword_231E13460);
    v79 = v115;
    v80 = v125;
  }

  else
  {
    v81 = v113;
    v82 = *(v113 + 32);
    v109[1] = 0;
    v83 = v5;
    v84 = v112;
    v82(v112, v77, v78);
    v85 = v110;
    v86 = v125;
    (*(*a1 + 168))(v84, v125);
    v87 = v84;
    v5 = v83;
    (*(v81 + 8))(v87, v78);
    sub_231CC154C(v75, &qword_27DD74448, &unk_231E171C0);
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v74);
    v80 = v86;
    sub_231CE4738(v85, v75, &qword_27DD74448, &unk_231E171C0);
    v79 = v115;
  }

  v88 = sub_231E10A20();
  v113 = v89;
  v114 = v88;
  (*(v122 + 16))(v118, v121, v123);
  sub_231DF3AD0(v75, v120);
  v90 = sub_231E10970();
  MEMORY[0x28223BE20](v90);
  v107 = a1;
  v108 = v80;
  v112 = sub_231CD1BA8(sub_231CD1B30, v106, v90);

  v91 = sub_231E10920();
  v92 = *(v91 + 16);
  if (v92)
  {
    v110 = v5;
    v130[0] = MEMORY[0x277D84F90];
    sub_231CD25B8(0, v92, 0);
    v93 = v111 + 16;
    v125 = *(v111 + 16);
    v94 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v111 = v91;
    v95 = v91 + v94;
    v124 = *(v93 + 56);
    v96 = v130[0];
    do
    {
      v97 = v127;
      v98 = v128;
      v125(v127, v95, v128);
      sub_231DC4964();
      (*(v93 - 8))(v97, v98);
      v130[0] = v96;
      v100 = *(v96 + 16);
      v99 = *(v96 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_231CD25B8(v99 > 1, v100 + 1, 1);
        v96 = v130[0];
      }

      *(v96 + 16) = v100 + 1;
      (*(v129 + 32))(v96 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v100, v79, v126);
      v95 += v124;
      --v92;
    }

    while (v92);
  }

  sub_231E10980();
  LODWORD(v128) = sub_231E10940();
  v129 = sub_231E10910();
  sub_231E10A00();
  sub_231E109C0();
  v101 = sub_231E109F0();
  v103 = v102;
  v107 = sub_231E109B0();
  v108 = v104;
  v106[0] = v101;
  v106[1] = v103;
  sub_231E110A0();
  sub_231CC154C(v119, &qword_27DD74448, &unk_231E171C0);
  return (*(v122 + 8))(v121, v123);
}

uint64_t sub_231DF37E8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75960, &qword_231E23108);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = sub_231E11090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *(v11 + 16);
  v27 = v2;
  v18(v15, v2, v10);
  v25 = sub_231DF3B40(&qword_27DD75968);
  sub_231E11CA0();
  sub_231DF3B40(&qword_27DD75970);
  v26 = a2;
  v19 = sub_231E115D0();
  v29 = v4;
  v20 = *(v4 + 48);
  *v9 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v11 + 32))(&v9[v20], v17, v10);
  }

  else
  {
    (*(v11 + 8))(v17, v10);
    v21 = v26;
    v18(&v9[v20], v26, v10);
    v18(v15, v21, v10);
    sub_231E11CB0();
  }

  v22 = v28;
  sub_231CE4738(v9, v28, &qword_27DD75960, &qword_231E23108);
  v23 = *v22;
  (*(v11 + 32))(v30, &v22[*(v29 + 48)], v10);
  return v23;
}

uint64_t sub_231DF3AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74448, &unk_231E171C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231DF3B40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_231E11090();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231DF3B84@<X0>(char a1@<W0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v18 = *MEMORY[0x277CC3018];
      sub_231E11620();
      OUTLINED_FUNCTION_3_12();
      v19 = *MEMORY[0x277CC3020];
      sub_231E11620();
      OUTLINED_FUNCTION_5_31();
      v20 = *MEMORY[0x277CC3010];
      v10 = sub_231E11620();
      v12 = v21;
      v13 = MEMORY[0x277CC3028];
      break;
    case 2:
      v14 = *MEMORY[0x277CC2FA0];
      sub_231E11620();
      OUTLINED_FUNCTION_3_12();
      v15 = *MEMORY[0x277CC2FA8];
      sub_231E11620();
      OUTLINED_FUNCTION_5_31();
      v10 = 0;
      v12 = 0xE000000000000000;
      v13 = MEMORY[0x277CC2FC0];
      break;
    case 3:
      v16 = *MEMORY[0x277CC23C8];
      sub_231E11620();
      OUTLINED_FUNCTION_3_12();
      v17 = *MEMORY[0x277CC23D0];
      sub_231E11620();
      OUTLINED_FUNCTION_5_31();
      v10 = 0;
      v12 = 0xE000000000000000;
      v13 = MEMORY[0x277CC23E8];
      break;
    default:
      v7 = *MEMORY[0x277CC24C0];
      sub_231E11620();
      OUTLINED_FUNCTION_3_12();
      v8 = *MEMORY[0x277CC24C8];
      sub_231E11620();
      OUTLINED_FUNCTION_5_31();
      v9 = *MEMORY[0x277CC24B0];
      v10 = sub_231E11620();
      v12 = v11;
      v13 = MEMORY[0x277CC24E0];
      break;
  }

  v22 = *v13;
  result = sub_231E11620();
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v10;
  a2[5] = v12;
  a2[6] = result;
  a2[7] = v24;
  return result;
}

void sub_231DF3D04(uint64_t a1, void *a2)
{
  v83 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v71 - v6;
  v82 = sub_231E10400();
  v73 = *(v82 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x28223BE20](v82);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v71 - v10;
  v11 = [v2 attributeSet];
  OUTLINED_FUNCTION_2_35();

  v12 = sub_231E115F0();

  v13 = OUTLINED_FUNCTION_7_27();
  v15 = [v13 v14];

  if (v15)
  {
    OUTLINED_FUNCTION_10_23();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
  }

  OUTLINED_FUNCTION_1_33();
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    if (OUTLINED_FUNCTION_0_39())
    {
      v17 = v95;
      goto LABEL_9;
    }
  }

  else
  {
    sub_231CE1118(v98, &dword_27DD741E0, &qword_231E15D70);
  }

  v17 = MEMORY[0x277D84F90];
LABEL_9:
  v18 = OUTLINED_FUNCTION_3_35(v17);
  OUTLINED_FUNCTION_2_35();

  v19 = sub_231E115F0();

  v20 = OUTLINED_FUNCTION_7_27();
  v22 = [v20 v21];

  if (v22)
  {
    OUTLINED_FUNCTION_10_23();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
  }

  OUTLINED_FUNCTION_1_33();
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    if (OUTLINED_FUNCTION_0_39())
    {
      v24 = v95;
      goto LABEL_17;
    }
  }

  else
  {
    sub_231CE1118(v98, &dword_27DD741E0, &qword_231E15D70);
  }

  v24 = MEMORY[0x277D84F90];
LABEL_17:
  v25 = OUTLINED_FUNCTION_3_35(v24);
  OUTLINED_FUNCTION_2_35();

  v26 = sub_231E115F0();

  v27 = OUTLINED_FUNCTION_7_27();
  v29 = [v27 v28];

  if (v29)
  {
    OUTLINED_FUNCTION_10_23();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
  }

  OUTLINED_FUNCTION_1_33();
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    if (OUTLINED_FUNCTION_0_39())
    {
      v31 = v95;
      goto LABEL_25;
    }
  }

  else
  {
    sub_231CE1118(v98, &dword_27DD741E0, &qword_231E15D70);
  }

  v31 = MEMORY[0x277D84F90];
LABEL_25:
  v32 = OUTLINED_FUNCTION_3_35(v31);
  OUTLINED_FUNCTION_2_35();

  v33 = sub_231E115F0();

  v34 = OUTLINED_FUNCTION_7_27();
  v36 = [v34 v35];

  if (v36)
  {
    OUTLINED_FUNCTION_10_23();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
  }

  v37 = v90;
  v38 = v89;
  OUTLINED_FUNCTION_1_33();
  if (!v39)
  {
    sub_231CE1118(v98, &dword_27DD741E0, &qword_231E15D70);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  if ((OUTLINED_FUNCTION_0_39() & 1) == 0)
  {
LABEL_32:
    v40 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v40 = v95;
LABEL_33:
  v41 = *(v37 + 16);
  v42 = *(v74 + 16);
  v43 = *(v40 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74AB0, &unk_231E1C220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231E138E0;
  v85 = *(v38 + 16);
  *(inited + 32) = v85;
  v87 = v41;
  v86 = v42;
  v88 = v43;
  v45 = sub_231DF4754(v41, v42, v43, inited);
  swift_setDeallocating();
  if (v45 < 0)
  {
    goto LABEL_80;
  }

  if (!v45)
  {
LABEL_75:

    return;
  }

  v46 = 0;
  v47 = 0;
  v76 = *MEMORY[0x277CBD098];
  v75 = *MEMORY[0x277CBCFC0];
  v77 = (v73 + 32);
  v72 = (v73 + 16);
  v71 = v73 + 8;
  v48 = MEMORY[0x277D84F90];
  v79 = v40;
  v78 = v45;
  while (1)
  {
    OUTLINED_FUNCTION_9_23(&v102);
    if (!v63)
    {
      v50 = 0;
      v51 = 0;
      goto LABEL_40;
    }

    if (v47 >= *(v40 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_11_23(v40 + v46);
    v50 = OUTLINED_FUNCTION_12_20();
    v51 = v49;

LABEL_40:
    OUTLINED_FUNCTION_9_23(&v101);
    v93 = v51;
    if (v63)
    {
      if (v47 >= *(v37 + 16))
      {
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_11_23(v37 + v46);
      v94 = OUTLINED_FUNCTION_12_20();
      v40 = v52;
    }

    else
    {
      v94 = 0;
      v40 = 0;
    }

    OUTLINED_FUNCTION_9_23(&v100);
    v92 = v50;
    if (v63)
    {
      if (v47 >= *(v74 + 16))
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_11_23(v74 + v46);
      v54 = OUTLINED_FUNCTION_12_20();
      v55 = v53;
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    OUTLINED_FUNCTION_9_23(&v99);
    v91 = v48;
    if (v63)
    {
      if (v47 >= *(v38 + 16))
      {
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_11_23(v38 + v46);
      v57 = OUTLINED_FUNCTION_12_20();
      v58 = v56;
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    v60 = v83[3];
    v59 = v83[4];
    __swift_project_boxed_opaque_existential_0(v83, v60);
    v61 = (*(v59 + 56))(v60, v59);
    if (v62)
    {
      if (v40)
      {
        v63 = v61 == v94 && v62 == v40;
        if (!v63)
        {
          sub_231E12100();
        }
      }

      v64 = v84;

      if (v55)
      {
LABEL_63:

        goto LABEL_64;
      }
    }

    else
    {
      v64 = v84;
      if (v55)
      {
        goto LABEL_63;
      }
    }

    if (!v58)
    {
      goto LABEL_65;
    }

    v54 = v57;
    v55 = v58;
LABEL_64:
    v98[0] = v54;
    v98[1] = v55;
    v96 = 64;
    v97 = 0xE100000000000000;
    sub_231CE11D8();

    sub_231E11C60();

    sub_231E11620();
LABEL_65:
    v65 = v82;
    sub_231E103D0();
    if (__swift_getEnumTagSinglePayload(v64, 1, v65) == 1)
    {
      sub_231CE1118(v64, &dword_27DD73FA0, &dword_231E13460);
      OUTLINED_FUNCTION_8_21();
      v48 = v91;
    }

    else
    {
      v66 = *v77;
      v67 = v80;
      (*v77)(v80, v64, v65);
      (*v72)(v81, v67, v65);
      v48 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_231CFDF64(0, *(v48 + 16) + 1, 1, v48);
      }

      OUTLINED_FUNCTION_8_21();
      v69 = *(v48 + 16);
      v68 = *(v48 + 24);
      if (v69 >= v68 >> 1)
      {
        v48 = sub_231CFDF64(v68 > 1, v69 + 1, 1, v48);
      }

      v70 = v73;
      (*(v73 + 8))(v80, v65);
      *(v48 + 16) = v69 + 1;
      v66((v48 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69), v81, v65);
    }

    ++v47;
    v46 += 16;
    v37 = v90;
    v38 = v89;
    if (v64 == v47)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

uint64_t sub_231DF4754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v4 <= a3)
  {
    result = a3;
  }

  else
  {
    result = v4;
  }

  v6 = *(a4 + 16);
  if (v6)
  {
    v7 = (a4 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 > result)
      {
        result = v8;
      }

      --v6;
    }

    while (v6);
  }

  return result;
}

unint64_t sub_231DF478C()
{
  result = qword_27DD75978;
  if (!qword_27DD75978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75978);
  }

  return result;
}

_BYTE *_s11ContactKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 OUTLINED_FUNCTION_1_33()
{
  result = *(v0 - 176);
  *(v0 - 160) = *(v0 - 192);
  *(v0 - 144) = result;
  v2 = *(v0 - 136);
  return result;
}

id OUTLINED_FUNCTION_3_35@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return [v2 (v3 + 116)];
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return sub_231E11C80();
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return sub_231E116D0();
}

uint64_t sub_231DF4938(uint64_t a1, uint64_t a2)
{
  v80 = sub_231E106A0();
  v4 = OUTLINED_FUNCTION_24(v80);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v78 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v72 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v79 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v72 - v20;
  v22 = sub_231E10370();
  v23 = OUTLINED_FUNCTION_24(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_1();
  v30 = v29 - v28;
  sub_231E104E0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v77 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_231D6F4D8(v21);
  }

  else
  {
    (*(v25 + 32))(v30, v21, v22);
    v32 = sub_231E10480();
    if (v33)
    {
      MEMORY[0x28223BE20](v32);
      OUTLINED_FUNCTION_4_32();
      *(v34 - 16) = v30;
      *(v34 - 8) = a2;
      v36 = sub_231DF52C4(sub_231DF72F4, v35, a1);

      (*(v25 + 8))(v30, v22);
      goto LABEL_8;
    }

    (*(v25 + 8))(v30, v22);
  }

  v37 = sub_231E10560();
  if (!v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E30, &qword_231E1CB80);
    v42 = *(v6 + 72);
    v43 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_231E138E0;
    v45 = v44 + v43;
    v41 = v80;
    (*(v6 + 16))(v45, a2, v80);
    v86[0] = a1;

    sub_231DF5480(v44, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);

    sub_231DF559C(v86);

    v36 = v86[0];
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_32();
  *(v39 - 16) = a2;
  v36 = sub_231DF52C4(sub_231DF71D4, v40, a1);

LABEL_8:
  v41 = v80;
LABEL_10:
  v46 = *(v36 + 16);
  if (!v46)
  {
    goto LABEL_27;
  }

  v73 = v36;
  v74 = v6;
  v47 = v6 + 16;
  v48 = *(v6 + 16);
  v75 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v49 = v36 + v75;
  v83 = *(v47 + 56);
  v84 = v48;
  v85 = v47;
  v82 = (v47 - 8);
  v50 = MEMORY[0x277D84F90];
  v51 = v36 + v75;
  do
  {
    v84(v17, v51, v41);
    v52 = sub_231E10530();
    v54 = v53;
    v81 = *v82;
    v81(v17, v41);
    if (v54)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_231CE0B9C(0, *(v50 + 2) + 1, 1, v50);
      }

      v56 = *(v50 + 2);
      v55 = *(v50 + 3);
      if (v56 >= v55 >> 1)
      {
        v50 = sub_231CE0B9C((v55 > 1), v56 + 1, 1, v50);
      }

      *(v50 + 2) = v56 + 1;
      v57 = &v50[16 * v56];
      *(v57 + 4) = v52;
      *(v57 + 5) = v54;
      v41 = v80;
    }

    v51 += v83;
    --v46;
  }

  while (v46);
  v58 = *(v73 + 16);
  if (v58)
  {
    v76 = v50;
    v87 = MEMORY[0x277D84F90];
    sub_231D56E94(0, v58, 0);
    v59 = v87;
    v74 += 4;
    do
    {
      v60 = v77;
      v61 = v84;
      v84(v77, v49, v41);
      v62 = v78;
      v61(v78, v60, v41);
      v86[0] = sub_231E10690();
      v86[1] = v63;
      MEMORY[0x28223BE20](v86[0]);
      *(&v72 - 2) = v86;
      LOBYTE(v61) = sub_231D162D0(sub_231D163AC, (&v72 - 4), v76);

      if (v61)
      {
        sub_231E10690();
        sub_231E10540();
      }

      v64 = v60;
      v65 = v80;
      v81(v64, v80);
      v66 = *v74;
      v67 = v79;
      (*v74)(v79, v62, v65);
      v87 = v59;
      v69 = *(v59 + 16);
      v68 = *(v59 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_231D56E94(v68 > 1, v69 + 1, 1);
        v67 = v79;
        v59 = v87;
      }

      *(v59 + 16) = v69 + 1;
      v70 = v83;
      v66((v59 + v75 + v69 * v83), v67, v65);
      v49 += v70;
      --v58;
      v41 = v65;
    }

    while (v58);
  }

  else
  {
LABEL_27:

    return MEMORY[0x277D84F90];
  }

  return v59;
}

uint64_t sub_231DF502C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_231E10400();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_4_1();
  v12 = sub_231E10370();
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v20 = v19 - v18;
  v30[0] = a2;
  v30[1] = a3;
  v30[4] = sub_231E10690();
  v30[5] = v21;
  sub_231CE11D8();
  LOBYTE(a3) = sub_231E11C60();

  v22 = sub_231E106A0();
  OUTLINED_FUNCTION_12(v22);
  result = (*(v23 + 16))(a5, a1);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75948, &qword_231E230F0);
    v25 = *(sub_231E10760() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_231E138E0;
    (*(v15 + 16))(v20, a4, v12);
    sub_231E104F0();
    sub_231E10730();
    v29 = sub_231E105A0();
    sub_231DF5480(v28, &qword_27DD75948, &qword_231E230F0, MEMORY[0x277D423C0], MEMORY[0x277D423C0]);
    return v29(v30, 0);
  }

  return result;
}

uint64_t sub_231DF52C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_231E106A0();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_231D56E94(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_231D56E94(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

int64_t sub_231DF5480(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v7 = *(a1 + 16);
  v8 = *(*v5 + 16);
  result = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231DF7140(result, 1, a2, a3, a4);
  v11 = *v5;
  if (!*(a1 + 16))
  {

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  result = a5(0);
  v13 = *(result - 8);
  if (v12 < v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = *(v13 + 72);
  swift_arrayInitWithCopy();

  if (!v7)
  {
LABEL_8:
    *v5 = v11;
    return result;
  }

  v16 = *(v11 + 16);
  v17 = __OFADD__(v16, v7);
  v18 = v16 + v7;
  if (!v17)
  {
    *(v11 + 16) = v18;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231DF559C(uint64_t *a1)
{
  v2 = *(sub_231E106A0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231DF0654(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_231DF5910(v7);
  *a1 = v3;
  return result;
}

size_t sub_231DF5644(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_231DF5754(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_231DF5850(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_231DF5754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231DF5850(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_12(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231DF5910(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_231E120B0();
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
        sub_231E106A0();
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231E106A0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_231DF5DD8(v8, v9, a1, v4);
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
    return sub_231DF5A40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231DF5A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_231E0F950();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_231E106A0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = a3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v13);
        v32 = v13;
        v33 = v59;
        v31(v59, v26, v32);
        sub_231E105C0();
        v34 = v61;
        sub_231E105C0();
        v64 = sub_231E0F8E0();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v13 = v32;
        (*v54)(v39, v32);
        result = v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return result;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        swift_arrayInitWithTakeFrontToBack();
        result = v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v49 + 1;
      v26 = &v48[v44];
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_231DF5DD8(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v159 = sub_231E0F950();
  v8 = *(v159 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v159);
  v158 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v157 = &v132 - v12;
  v13 = sub_231E106A0();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v138 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v149 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v132 - v21;
  result = MEMORY[0x28223BE20](v20);
  v160 = &v132 - v23;
  v144 = a3;
  v24 = a3[1];
  v139 = v14;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_101:
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v125 = (v26 + 16);
      v126 = *(v26 + 16);
      while (v126 >= 2)
      {
        if (!*v144)
        {
          goto LABEL_139;
        }

        v127 = v26;
        v128 = (v26 + 16 * v126);
        v129 = *v128;
        v130 = &v125[2 * v126];
        v26 = v130[1];
        sub_231DF69CC(*v144 + v139[9] * *v128, *v144 + v139[9] * *v130, *v144 + v139[9] * v26, v161);
        if (v5)
        {
          break;
        }

        if (v26 < v129)
        {
          goto LABEL_127;
        }

        if (v126 - 2 >= *v125)
        {
          goto LABEL_128;
        }

        *v128 = v129;
        v128[1] = v26;
        v131 = *v125 - v126;
        if (*v125 < v126)
        {
          goto LABEL_129;
        }

        v126 = *v125 - 1;
        result = memmove(v130, v130 + 2, 16 * v131);
        *v125 = v126;
        v26 = v127;
      }
    }

LABEL_136:
    result = sub_231CF1D4C(v26);
    v26 = result;
    goto LABEL_103;
  }

  v133 = a4;
  v25 = 0;
  v153 = (v8 + 8);
  v154 = v14 + 2;
  v151 = v14 + 4;
  v152 = (v14 + 1);
  v26 = MEMORY[0x277D84F90];
  v155 = v13;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v134 = v26;
      v29 = v25;
      v136 = v25;
      v145 = v5;
      v146 = v25 + 1;
      v30 = *v144;
      v161 = v30;
      v31 = v14;
      v32 = v14[9];
      v147 = v24;
      v148 = v32;
      v33 = v30 + v32 * v28;
      v34 = v13;
      v35 = v31[2];
      v35(v160, v33, v13);
      v36 = v156;
      v142 = v35;
      v35(v156, v30 + v32 * v29, v34);
      v5 = v157;
      v26 = v160;
      sub_231E105C0();
      v37 = v158;
      sub_231E105C0();
      LODWORD(v143) = sub_231E0F8E0();
      v38 = *v153;
      v39 = v159;
      (*v153)(v37, v159);
      v141 = v38;
      (v38)(v5, v39);
      v40 = v139[1];
      v40(v36, v34);
      v140 = v40;
      result = (v40)(v26, v34);
      v41 = v147;
      v42 = v136 + 2;
      v43 = v161 + v148 * (v136 + 2);
      while (1)
      {
        v44 = v42;
        if (++v146 >= v41)
        {
          break;
        }

        v5 = v160;
        v45 = v155;
        v46 = v142;
        v161 = v42;
        (v142)(v160, v43, v155);
        v26 = v156;
        v46(v156, v33, v45);
        v47 = v157;
        sub_231E105C0();
        v48 = v158;
        sub_231E105C0();
        LOBYTE(v150) = sub_231E0F8E0() & 1;
        LODWORD(v150) = v150;
        v49 = v48;
        v50 = v159;
        v51 = v141;
        (v141)(v49, v159);
        v51(v47, v50);
        v52 = v140;
        v140(v26, v45);
        result = (v52)(v5, v45);
        v44 = v161;
        v41 = v147;
        v43 += v148;
        v33 += v148;
        v42 = v161 + 1;
        if ((v143 & 1) != v150)
        {
          goto LABEL_9;
        }
      }

      v146 = v41;
LABEL_9:
      if (v143)
      {
        v28 = v146;
        v27 = v136;
        v13 = v155;
        if (v146 < v136)
        {
          goto LABEL_133;
        }

        if (v136 >= v146)
        {
          v5 = v145;
          v14 = v139;
          v26 = v134;
          goto LABEL_32;
        }

        if (v41 >= v44)
        {
          v53 = v44;
        }

        else
        {
          v53 = v41;
        }

        v54 = v148 * (v53 - 1);
        v55 = v148 * v53;
        v56 = v136;
        v57 = v136 * v148;
        v5 = v145;
        v14 = v139;
        do
        {
          if (v56 != --v28)
          {
            v58 = v5;
            v59 = *v144;
            if (!*v144)
            {
              goto LABEL_140;
            }

            v161 = *v151;
            (v161)(v138, v59 + v57, v13);
            v60 = v57 < v54 || v59 + v57 >= v59 + v55;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v161)(v59 + v54, v138, v13);
            v5 = v58;
            v14 = v139;
          }

          ++v56;
          v54 -= v148;
          v55 -= v148;
          v57 += v148;
        }

        while (v56 < v28);
        v26 = v134;
      }

      else
      {
        v5 = v145;
        v14 = v139;
        v26 = v134;
        v13 = v155;
      }

      v28 = v146;
      v27 = v136;
    }

LABEL_32:
    v61 = v144[1];
    if (v28 < v61)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_132;
      }

      if (v28 - v27 < v133)
      {
        break;
      }
    }

LABEL_48:
    if (v28 < v27)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_231CF0DE4(0, *(v26 + 16) + 1, 1, v26);
      v26 = result;
    }

    v82 = *(v26 + 16);
    v81 = *(v26 + 24);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      result = sub_231CF0DE4((v81 > 1), v82 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 16) = v83;
    v84 = (v26 + 32);
    v85 = (v26 + 32 + 16 * v82);
    *v85 = v27;
    v85[1] = v28;
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_141;
    }

    v146 = v28;
    if (v82)
    {
      v150 = (v26 + 32);
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = (v26 + 16 * v83);
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v26 + 32);
          v90 = *(v26 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_69:
          if (v92)
          {
            goto LABEL_118;
          }

          v104 = *v88;
          v103 = v88[1];
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_121;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_126;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v83 < 2)
        {
          goto LABEL_120;
        }

        v111 = *v88;
        v110 = v88[1];
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_84:
        if (v107)
        {
          goto LABEL_123;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_125;
        }

        if (v114 < v106)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v86 - 1 >= v83)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v144)
        {
          goto LABEL_138;
        }

        v118 = &v84[16 * v86 - 16];
        v119 = *v118;
        v120 = v86;
        v121 = &v84[16 * v86];
        v122 = *(v121 + 1);
        sub_231DF69CC(*v144 + v14[9] * *v118, *v144 + v14[9] * *v121, *v144 + v14[9] * v122, v161);
        if (v5)
        {
        }

        if (v122 < v119)
        {
          goto LABEL_113;
        }

        v145 = 0;
        v5 = v14;
        v123 = v26;
        v26 = *(v26 + 16);
        if (v120 > v26)
        {
          goto LABEL_114;
        }

        *v118 = v119;
        *(v118 + 1) = v122;
        if (v120 >= v26)
        {
          goto LABEL_115;
        }

        v83 = v26 - 1;
        result = memmove(v121, v121 + 16, 16 * (v26 - 1 - v120));
        *(v123 + 16) = v26 - 1;
        v124 = v26 > 2;
        v26 = v123;
        v14 = v5;
        v5 = v145;
        v84 = v150;
        if (!v124)
        {
          goto LABEL_98;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_116;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_117;
      }

      v100 = v88[1];
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_119;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_122;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_130;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v24 = v144[1];
    v25 = v146;
    if (v146 >= v24)
    {
      goto LABEL_101;
    }
  }

  v62 = (v27 + v133);
  if (__OFADD__(v27, v133))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v144[1];
  }

  if (v62 < v27)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v28 == v62)
  {
    goto LABEL_48;
  }

  v134 = v26;
  v145 = v5;
  v63 = *v144;
  v64 = v14[9];
  v150 = v14[2];
  v65 = v63 + v64 * (v28 - 1);
  v147 = -v64;
  v136 = v27;
  v66 = (v27 - v28);
  v148 = v63;
  v137 = v64;
  v67 = (v63 + v28 * v64);
  v140 = v62;
LABEL_41:
  v146 = v28;
  v141 = v67;
  v142 = v66;
  v143 = v65;
  v68 = v65;
  while (1)
  {
    v69 = v160;
    v70 = v150;
    (v150)(v160, v67, v13);
    v71 = v156;
    (v70)(v156, v68, v13);
    v72 = v157;
    sub_231E105C0();
    v73 = v158;
    sub_231E105C0();
    LODWORD(v161) = sub_231E0F8E0();
    v74 = *v153;
    v75 = v73;
    v76 = v159;
    (*v153)(v75, v159);
    v77 = v72;
    v13 = v155;
    v74(v77, v76);
    v78 = *v152;
    (*v152)(v71, v13);
    result = v78(v69, v13);
    if ((v161 & 1) == 0)
    {
LABEL_46:
      v28 = v146 + 1;
      v65 = v143 + v137;
      v66 = v142 - 1;
      v67 = &v141[v137];
      if ((v146 + 1) == v140)
      {
        v28 = v140;
        v5 = v145;
        v14 = v139;
        v26 = v134;
        v27 = v136;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v148)
    {
      break;
    }

    v79 = *v151;
    v80 = v149;
    (*v151)(v149, v67, v13);
    swift_arrayInitWithTakeFrontToBack();
    v79(v68, v80, v13);
    v68 += v147;
    v67 += v147;
    v60 = __CFADD__(v66++, 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

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
  return result;
}

uint64_t sub_231DF69CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = a4;
  v81 = sub_231E0F950();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v11;
  v85 = sub_231E106A0();
  v12 = *(*(v85 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v85);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v83 = &v69 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v89 = a1;
  v88 = v86;
  v76 = (v7 + 8);
  v77 = (v16 + 16);
  v75 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v44 = v86;
    sub_231DF5850(a2, v21 / v19, v86, MEMORY[0x277D42368]);
    v45 = v44 + v24 * v19;
    v46 = -v19;
    v47 = v45;
    v84 = a1;
    v71 = v46;
LABEL_36:
    v48 = a2 + v46;
    v49 = a3;
    v69 = v47;
    v50 = v47;
    v72 = a2 + v46;
    v73 = a2;
    while (1)
    {
      if (v45 <= v86)
      {
        v89 = a2;
        v87 = v50;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v70 = v50;
      v82 = v49 + v46;
      v51 = v45 + v46;
      v52 = v45;
      v53 = *v77;
      v54 = v48;
      v55 = v85;
      v56 = v49;
      (*v77)(v83, v45 + v46, v85);
      v57 = v78;
      v53(v78, v54, v55);
      v58 = v79;
      sub_231E105C0();
      v59 = v80;
      sub_231E105C0();
      LODWORD(v74) = sub_231E0F8E0();
      v60 = *v76;
      v61 = v59;
      v62 = v81;
      (*v76)(v61, v81);
      v60(v58, v62);
      v63 = *v75;
      (*v75)(v57, v55);
      v63(v83, v55);
      if (v74)
      {
        v45 = v52;
        a3 = v82;
        if (v56 < v73 || v82 >= v73)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v70;
          v46 = v71;
          a1 = v84;
        }

        else
        {
          v67 = v70;
          v46 = v71;
          v47 = v70;
          v20 = v56 == v73;
          v68 = v72;
          a2 = v72;
          a1 = v84;
          if (!v20)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v68;
            v47 = v67;
          }
        }

        goto LABEL_36;
      }

      v64 = v82;
      if (v56 < v52 || v82 >= v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = v64;
        v45 = v51;
        v50 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
      }

      else
      {
        v50 = v51;
        v20 = v52 == v56;
        v49 = v82;
        v45 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = v64;
          v45 = v51;
          v50 = v51;
        }
      }
    }

    v89 = a2;
    v87 = v69;
  }

  else
  {
    v25 = v86;
    sub_231DF5850(a1, (a2 - a1) / v19, v86, MEMORY[0x277D42368]);
    v73 = v19;
    v74 = v25 + v23 * v19;
    v87 = v74;
    v82 = a3;
    while (v86 < v74 && a2 < a3)
    {
      v84 = a1;
      v27 = *v77;
      v28 = v83;
      v29 = v85;
      (*v77)(v83, a2, v85);
      v30 = v78;
      v27(v78, v86, v29);
      v31 = v79;
      sub_231E105C0();
      v32 = v80;
      sub_231E105C0();
      v33 = sub_231E0F8E0();
      v34 = a2;
      v35 = *v76;
      v36 = v32;
      v37 = v81;
      (*v76)(v36, v81);
      v35(v31, v37);
      v38 = *v75;
      (*v75)(v30, v29);
      v38(v28, v29);
      if (v33)
      {
        v39 = v73;
        a2 = v34 + v73;
        v40 = v84;
        if (v84 < v34 || v84 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v39 = v73;
        v42 = v86 + v73;
        v40 = v84;
        if (v84 < v86 || v84 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
          a2 = v34;
        }

        else
        {
          a3 = v82;
          a2 = v34;
          if (v84 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = v42;
        v86 = v42;
      }

      a1 = v40 + v39;
      v89 = a1;
    }
  }

LABEL_58:
  sub_231DF7060(&v89, &v88, &v87);
  return 1;
}

uint64_t sub_231DF7060(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_231E106A0();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_231DF7140(int64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if (!result || a1 > *(v11 + 24) >> 1)
  {
    if (*(v11 + 16) <= a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = *(v11 + 16);
    }

    result = sub_231DF5644(result, v13, a2 & 1, v11, a3, a4, a5, a5);
    *v5 = result;
  }

  return result;
}

uint64_t sub_231DF71D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v16[0] = v2[2];
  v16[1] = v5;
  v16[4] = sub_231E10690();
  v16[5] = v7;
  sub_231CE11D8();
  v8 = sub_231E11C60();

  v9 = sub_231E106A0();
  OUTLINED_FUNCTION_12(v9);
  result = (*(v10 + 16))(a2, a1);
  if (v8)
  {
    v12 = sub_231E10640();
    v14 = v13;
    v15 = sub_231E10630();
    MEMORY[0x23837CC20](v12, v14);

    return v15(v16, 0);
  }

  return result;
}

BOOL sub_231DF7334()
{
  sub_231E11F20();
  OUTLINED_FUNCTION_10_1();
  return v0 != 0;
}

uint64_t sub_231DF7394()
{
  sub_231E12220();
  sub_231E116E0();
  return sub_231E12250();
}

uint64_t sub_231DF7410()
{
  sub_231E12220();
  sub_231E116E0();
  return sub_231E12250();
}

BOOL sub_231DF7464@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231DF7334();
  *a2 = result;
  return result;
}

unint64_t sub_231DF7498@<X0>(void *a1@<X8>)
{
  result = sub_231DF7374();
  *a1 = 0xD00000000000001ELL;
  a1[1] = v3;
  return result;
}

uint64_t sub_231DF74E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ConversationDeletionInfo(0) + 20);
  v7 = sub_231E0F950();
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 32);

  return v9(&a4[v6], a3);
}

uint64_t sub_231DF7564()
{
  OUTLINED_FUNCTION_399();
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x80uLL);
  return v1;
}

uint64_t sub_231DF75A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF75C0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 32);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_36_13(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_4_33(v7);

  return sub_231DF7654();
}

uint64_t sub_231DF7654()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_231E10E30();
  v0[8] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231DF7700()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v3 = OUTLINED_FUNCTION_123();
  v0[11] = v3;
  OUTLINED_FUNCTION_88_9(v3, xmmword_231E138E0);
  v4 = *MEMORY[0x277CC3168];
  v5 = sub_231E11620();
  v7 = OUTLINED_FUNCTION_49_11(v5, v6);
  v0[12] = v7;
  OUTLINED_FUNCTION_47_9(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  *(v16 + 32) = v2;
  *(v16 + 40) = v1;

  v17 = swift_task_alloc();
  v0[13] = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_20_18(v17);
  OUTLINED_FUNCTION_117_7();

  return sub_231D5F05C(v18, v19, v20, v21, v22, v23);
}

uint64_t sub_231DF77F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = v3[13];
  v5 = v3[12];
  v6 = v3[11];
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v10 + 112) = v9;

  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231DF7914()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (sub_231CBA138(*(v0 + 112)))
    {
      v2 = *(v0 + 112);
      if ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23837D2A0](0, v1);
      }

      else
      {
        OUTLINED_FUNCTION_83_7(v2);
        if (!v3)
        {
          __break(1u);
          return;
        }

        v4 = *(v1 + 32);
      }

      v5 = v4;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_231E11860();

        goto LABEL_10;
      }
    }
  }

LABEL_10:
  v6 = *(v0 + 80);

  OUTLINED_FUNCTION_18_6();

  v7(0);
}

uint64_t sub_231DF7BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF7C08()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
  }

  else
  {
    v5 = v0[8];
    v6 = v5[6];
    v1 = v5[7];
    v3 = v5[8];
    v2 = v5[9];
  }

  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v2;
  v3;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_6_25(v7);
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_97_3();

  return sub_231DF7654();
}

uint64_t sub_231DF7CDC()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 = v3[12];
  v5 = v3[11];
  v6 = v3[10];
  v7 = v3[9];
  v8 = *v0;
  OUTLINED_FUNCTION_4();
  *v9 = v8;

  OUTLINED_FUNCTION_18_6();

  return v10(v2);
}

uint64_t sub_231DF7E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF7E38()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
  }

  else
  {
    v5 = v0[8];
    v6 = v5[10];
    v1 = v5[11];
    v3 = v5[12];
    v2 = v5[13];
  }

  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v2;
  v3;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_6_25(v7);
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_97_3();

  return sub_231DF7654();
}

uint64_t sub_231DF7F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF7F2C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
  }

  else
  {
    v5 = v0[8];
    v6 = v5[14];
    v1 = v5[15];
    v3 = v5[16];
    v2 = v5[17];
  }

  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v2;
  v3;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_6_25(v7);
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_97_3();

  return sub_231DF7654();
}

uint64_t sub_231DF8000(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF8018()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 32);
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_36_13(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_33(v7);

  return sub_231DF80AC(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_231DF80AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF80C8()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v3 = OUTLINED_FUNCTION_123();
  v4 = OUTLINED_FUNCTION_97_6(v3);
  OUTLINED_FUNCTION_88_9(v4, xmmword_231E138E0);
  v5 = *MEMORY[0x277CC3110];
  v6 = sub_231E11620();
  v8 = OUTLINED_FUNCTION_49_11(v6, v7);
  v0[9] = v8;
  OUTLINED_FUNCTION_47_9(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  *(v17 + 32) = v2;
  *(v17 + 40) = v1;

  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_20_18(v18);
  OUTLINED_FUNCTION_117_7();

  return sub_231D5F05C(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_231DF81BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = v3[10];
  v5 = v3[9];
  v6 = v3[8];
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v10 + 88) = v9;

  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231DF82D8()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 88);
  if (v2)
  {
    if (sub_231CBA138(*(v1 + 88)))
    {
      v3 = *(v1 + 88);
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23837D2A0](0, v2);
      }

      else
      {
        OUTLINED_FUNCTION_83_7(v3);
        if (!v4)
        {
          __break(1u);
          return;
        }

        v5 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_399();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_231E11860();
      }
    }

    else
    {
    }

    LOBYTE(v2) = 0;
  }

  OUTLINED_FUNCTION_18_6();

  v6(v2 & 1);
}

uint64_t sub_231DF843C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF8454()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 32);
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_36_13(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_33(v7);

  return sub_231DF80AC(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_231DF84E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF8500()
{
  OUTLINED_FUNCTION_47_0();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v8 = swift_allocObject();
  v0[16] = v8;
  *(v8 + 16) = xmmword_231E1C950;
  v9 = *MEMORY[0x277CC3168];
  *(v8 + 32) = sub_231E11620();
  *(v8 + 40) = v10;
  v11 = *MEMORY[0x277CC3170];
  *(v8 + 48) = sub_231E11620();
  *(v8 + 56) = v12;
  v13 = OUTLINED_FUNCTION_123();
  v0[17] = v13;
  *(v13 + 16) = xmmword_231E138E0;
  *(v13 + 32) = v3;
  *(v13 + 40) = v2;

  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_32(v14);

  return sub_231D5F05C(v8, v13, v5, v4, v6, v7);
}

uint64_t sub_231DF8654()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = v3[18];
  v5 = v3[17];
  v6 = v3[16];
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v10 + 152) = v9;

  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231DF8770()
{
  OUTLINED_FUNCTION_47_0();
  v2 = *(v1 + 152);
  if (v2)
  {
    if (sub_231CBA138(*(v1 + 152)))
    {
      v3 = *(v1 + 152);
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23837D2A0](0, v2);
      }

      else
      {
        OUTLINED_FUNCTION_83_7(v3);
        if (!v4)
        {
          __break(1u);
          return;
        }

        v5 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_399();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_231E11860();
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_18_6();

  v6();
}

double sub_231DF89F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_231CB51C4(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_231DF8A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v6 = v5;
  if (v4)
  {
    sub_231E0822C(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_231DF8ABC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

double sub_231DF8B68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_231CB51C4(a1 + 32 * v2, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_231DF8B88()
{
  OUTLINED_FUNCTION_18();
  v0[15] = v1;
  v0[16] = v2;
  v0[13] = v3;
  v0[14] = v4;
  v0[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  v0[17] = OUTLINED_FUNCTION_55();
  v9 = sub_231E0F950();
  v0[18] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[19] = v10;
  v12 = *(v11 + 64);
  v0[20] = OUTLINED_FUNCTION_55();
  v13 = type metadata accessor for ConversationDeletionInfo(0);
  v0[21] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[22] = v14;
  v16 = *(v15 + 64);
  v0[23] = OUTLINED_FUNCTION_55();
  v17 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_231DF8CAC()
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v1 = swift_allocObject();
  v0[24] = v1;
  *(v1 + 16) = xmmword_231E1C950;
  v2 = *MEMORY[0x277CC2770];
  *(v1 + 32) = sub_231E11620();
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x277CC2640];
  *(v1 + 48) = sub_231E11620();
  *(v1 + 56) = v5;
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_231DF8DA4;
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];

  return sub_231D5F05C(v1, v11, v9, v10, v7, v8);
}

uint64_t sub_231DF8DA4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = *(v3 + 200);
  v5 = *(v3 + 192);
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v9 + 208) = v8;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_231DF8EA4()
{
  v49 = MEMORY[0x277D84F90];
  if (v0[26])
  {
    v1 = v0[26];
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = sub_231CBA138(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = OUTLINED_FUNCTION_59();
      v5 = MEMORY[0x23837D2A0](v7);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_98_3();
      v5 = v4;
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_231E11860();
    }
  }

  v8 = *(v49 + 16);
  if (v8)
  {
    v51 = v0[22];
    v52 = v0[23];
    v50 = v0[21];
    v9 = (v49 + 32);
    v53 = (v0[19] + 32);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = *v9;
      v12 = *(*v9 + 16);
      if (v12)
      {
        sub_231CB51C4(v11 + 32, (v0 + 2));

        if (swift_dynamicCast())
        {
          if (v12 > *(v11 + 16))
          {
            goto LABEL_37;
          }

          v14 = v0[10];
          v13 = v0[11];
          v15 = v11 + 32 * v12;
          v17 = v0[17];
          v16 = v0[18];
          sub_231CB51C4(v15, (v0 + 6));

          swift_dynamicCast();
          OUTLINED_FUNCTION_32_12();
          __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
          OUTLINED_FUNCTION_73_6();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, v23, v24);
          v27 = v0[17];
          v26 = v0[18];
          if (EnumTagSinglePayload == 1)
          {
            v28 = v0[20];
            sub_231E0F890();
            OUTLINED_FUNCTION_8_17(v27, 1, v26);
            if (!v29)
            {
              sub_231CC154C(v0[17], &dword_27DD74AD0, &qword_231E16C40);
            }
          }

          else
          {
            (*v53)(v0[20], v0[17], v0[18]);
          }

          v30 = v0[23];
          v31 = v0[20];
          v32 = v0[18];
          *v30 = v14;
          *(v52 + 8) = v13;
          (*v53)(&v30[*(v50 + 20)], v31, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = *(v10 + 16);
            v41 = OUTLINED_FUNCTION_0_1();
            v10 = sub_231E01E40(v41, v42, v43, v10);
          }

          v34 = *(v10 + 16);
          v33 = *(v10 + 24);
          if (v34 >= v33 >> 1)
          {
            v44 = OUTLINED_FUNCTION_2_12(v33);
            v10 = sub_231E01E40(v44, v34 + 1, 1, v10);
          }

          v35 = v0[23];
          *(v10 + 16) = v34 + 1;
          v36 = *(v51 + 80);
          OUTLINED_FUNCTION_79();
          sub_231E07790(v39, v10 + v37 + *(v38 + 72) * v34, type metadata accessor for ConversationDeletionInfo);
        }

        else
        {
        }
      }

      ++v9;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v45 = v0[23];
  v46 = v0[20];
  v47 = v0[17];

  OUTLINED_FUNCTION_18_6();

  v48(v10);
}

void sub_231DF92AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35_1();
  a19 = v21;
  a20 = v22;
  v63 = v23;
  v25 = v24;
  v27 = v26;
  v71 = v28;
  v30 = v29;
  v67 = v31;
  v68 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_47(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v36);
  v38 = &v63 - v37;
  v39 = v25(0);
  v40 = OUTLINED_FUNCTION_24(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_139();
  v70 = v45;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_5();
  v64 = v47;
  v48 = sub_231CBA138(v27);
  v49 = 0;
  v73 = v27 & 0xC000000000000001;
  v74 = v48;
  v72 = v27 & 0xFFFFFFFFFFFFFF8;
  v65 = v42;
  v69 = (v42 + 32);
  v50 = MEMORY[0x277D84F90];
  v66 = v27;
  while (1)
  {
    if (v74 == v49)
    {
      goto LABEL_18;
    }

    if (v73)
    {
      v51 = MEMORY[0x23837D2A0](v49, v27);
    }

    else
    {
      if (v49 >= *(v72 + 16))
      {
        goto LABEL_20;
      }

      v51 = *(v27 + 8 * v49 + 32);
    }

    v52 = v51;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    a10 = v51;
    v30(&a10);
    if (v20)
    {

LABEL_18:
      OUTLINED_FUNCTION_33_0();
      return;
    }

    if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
    {
      sub_231CC154C(v38, v67, v68);
    }

    else
    {
      v53 = v30;
      v54 = *v69;
      v55 = v64;
      v56 = OUTLINED_FUNCTION_86_8();
      v54(v56);
      (v54)(v70, v55, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = *(v50 + 16);
        v62 = OUTLINED_FUNCTION_0_1();
        v50 = (v63)(v62);
      }

      v57 = *(v50 + 16);
      if (v57 >= *(v50 + 24) >> 1)
      {
        OUTLINED_FUNCTION_32_12();
        v50 = v63();
      }

      *(v50 + 16) = v57 + 1;
      v58 = *(v65 + 80);
      OUTLINED_FUNCTION_79();
      (v54)(v50 + v59 + *(v60 + 72) * v57, v70, v39);
      v27 = v66;
      v30 = v53;
    }

    ++v49;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_231DF9584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF959C()
{
  OUTLINED_FUNCTION_57_0();
  v3 = *(v1 + 40);
  v27 = *(v1 + 48);
  OUTLINED_FUNCTION_97_6([objc_allocWithZone(MEMORY[0x277CC34A0]) init]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231E1C950;
  v5 = *MEMORY[0x277CC2A80];
  *(v4 + 32) = sub_231E11620();
  *(v4 + 40) = v6;
  v7 = *MEMORY[0x277CC3168];
  *(v4 + 48) = sub_231E11620();
  *(v4 + 56) = v8;
  sub_231E11850();
  OUTLINED_FUNCTION_141();

  OUTLINED_FUNCTION_110_7(v9, sel_setFetchAttributes_);

  v10 = OUTLINED_FUNCTION_123();
  *(v10 + 16) = xmmword_231E138E0;
  *(v10 + 32) = sub_231DE8A04(0);
  *(v10 + 40) = v11;
  v12 = OUTLINED_FUNCTION_59_0();
  sub_231E076B0(v12, v13);
  OUTLINED_FUNCTION_113_4(30, 0x8000000231E38B90);
  OUTLINED_FUNCTION_27();
  v14 = swift_allocObject();
  *(v1 + 72) = v14;
  *(v14 + 16) = MEMORY[0x277D84F90];
  v15 = swift_task_alloc();
  *(v1 + 80) = v15;
  *(v15 + 16) = v3;
  *(v15 + 24) = v27;
  *(v15 + 40) = v0;
  *(v15 + 48) = v14;
  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  *(v1 + 88) = v17;
  *v17 = v1;
  v17[1] = sub_231DF97AC;
  OUTLINED_FUNCTION_13_20();

  return MEMORY[0x2822008A0](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_231DF97AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231DF98AC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_93_6();
  swift_beginAccess();
  v2 = *(v1 + 16);

  OUTLINED_FUNCTION_18_6();

  return v3(v2);
}

uint64_t sub_231DF9930()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_19();
  v4 = *(v0 + 96);

  return v3();
}

void sub_231DF99A0()
{
  OUTLINED_FUNCTION_40_6();
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_24(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_38_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_14();
  sub_231E11D70();
  v14 = *MEMORY[0x277CC2770];
  v15 = sub_231E11620();
  MEMORY[0x23837CC20](v15);

  MEMORY[0x23837CC20](0x22203D3D20, 0xE500000000000000);
  MEMORY[0x23837CC20](v7, v5);
  OUTLINED_FUNCTION_106_7();
  v16 = *MEMORY[0x277CC2640];
  v17 = sub_231E11620();
  MEMORY[0x23837CC20](v17);

  MEMORY[0x23837CC20](540884512, 0xE400000000000000);
  sub_231E0F870();
  sub_231E11A40();
  v18 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v19 = v3;
  v20 = sub_231E01CD0(v30, v31, v3);
  v34 = sub_231E08440;
  v35 = v29;
  OUTLINED_FUNCTION_3_36();
  v31 = 1107296256;
  v32 = sub_231DF9C78;
  v33 = &block_descriptor_109;
  v21 = _Block_copy(&v30);

  OUTLINED_FUNCTION_111_6(v22, sel_setFoundItemsHandler_);
  _Block_release(v21);
  v23 = OUTLINED_FUNCTION_63_11(v10);
  v24(v23);
  v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v26 = swift_allocObject();
  (*(v10 + 32))(v26 + v25, v0, v8);
  v34 = sub_231E08748;
  v35 = v26;
  v30 = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_231DF9CEC;
  v33 = &block_descriptor_115;
  _Block_copy(&v30);
  OUTLINED_FUNCTION_109_7();
  v27 = OUTLINED_FUNCTION_82();
  [v27 v28];
  _Block_release(v8);
  [v20 start];

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231DF9C78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_231E08180();
  v3 = sub_231E11870();

  v2(v3);
}

void sub_231DF9CEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_231DF9D58()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for SummarizerResult();
  OUTLINED_FUNCTION_6(v11);
  v0[2] = v12;
  v14 = *(v13 + 64);
  v0[3] = OUTLINED_FUNCTION_55();
  v15 = swift_task_alloc();
  v0[4] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_32(v15);

  return sub_231DFA158(v10, v8, v6, v4, v2);
}

uint64_t sub_231DF9E5C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  *v4 = *v1;
  v3[5] = v8;
  v3[6] = v0;

  if (v0)
  {
    v9 = v3[3];

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

void sub_231DF9F94()
{
  v1 = sub_231CBA138(v0[5]);
  if (v1)
  {
    v2 = v1;
    v23 = MEMORY[0x277D84F90];
    sub_231E02F10();
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v4 = v0[5];
      v5 = v0[2];
      v6 = v23;
      v7 = v4 & 0xC000000000000001;
      v22 = v4 & 0xFFFFFFFFFFFFFF8;
      v8 = v4 + 32;
      while (1)
      {
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v7)
        {
          v10 = MEMORY[0x23837D2A0](v3, v0[5]);
        }

        else
        {
          if (v3 >= *(v22 + 16))
          {
            goto LABEL_18;
          }

          v10 = *(v8 + 8 * v3);
        }

        v11 = v10;
        v12 = v0[3];
        sub_231DFA4CC();

        v13 = *(v23 + 16);
        if (v13 >= *(v23 + 24) >> 1)
        {
          sub_231E02F10();
        }

        v14 = v0[3];
        *(v23 + 16) = v13 + 1;
        v15 = *(v5 + 80);
        OUTLINED_FUNCTION_79();
        sub_231E07790(v17, v23 + v16 + *(v5 + 72) * v13, type metadata accessor for SummarizerResult);
        ++v3;
        if (v9 == v2)
        {
          v18 = v0[5];

          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v19 = v0[5];

    v6 = MEMORY[0x277D84F90];
LABEL_14:
    v20 = v0[3];

    OUTLINED_FUNCTION_18_6();

    v21(v6);
  }
}

uint64_t sub_231DFA158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFA174()
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v2 = swift_allocObject();
  *(OUTLINED_FUNCTION_97_6(v2) + 16) = xmmword_231E20400;
  v3 = *MEMORY[0x277CC2A80];
  v0[4] = sub_231E11620();
  v0[5] = v4;
  v5 = *MEMORY[0x277CC2770];
  v0[6] = sub_231E11620();
  v0[7] = v6;
  v7 = *MEMORY[0x277CC3168];
  v0[8] = sub_231E11620();
  v0[9] = v8;
  v9 = *MEMORY[0x277CC3160];
  v0[10] = sub_231E11620();
  v0[11] = v10;
  v11 = *MEMORY[0x277CC3158];
  v0[12] = sub_231E11620();
  v0[13] = v12;
  v13 = *MEMORY[0x277CC3150];
  v0[14] = sub_231E11620();
  v0[15] = v14;
  v15 = *MEMORY[0x277CC3170];
  v0[16] = sub_231E11620();
  v0[17] = v16;
  v17 = *MEMORY[0x277CC2CB8];
  v0[18] = sub_231E11620();
  v0[19] = v18;
  v19 = *MEMORY[0x277CC3210];
  v0[20] = sub_231E11620();
  v0[21] = v20;
  v21 = *MEMORY[0x277CC2488];
  v0[22] = sub_231E11620();
  v0[23] = v22;
  v23 = swift_task_alloc();
  v1[9] = v23;
  *v23 = v1;
  v23[1] = sub_231DFA308;
  v24 = v1[5];
  v25 = v1[6];
  v26 = v1[3];
  v27 = v1[4];
  v28 = v1[2];

  return sub_231DFA704();
}

uint64_t sub_231DFA308()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231DFA410()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_18_6();
  v3 = *(v0 + 88);

  return v2(v3);
}

uint64_t sub_231DFA470()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 80);

  return v2();
}

void sub_231DFA4CC()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  v5 = OUTLINED_FUNCTION_47(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v27 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  v16 = *v1;
  v17 = [v16 attributeSet];
  v18 = [v17 summarizationContentTopic];

  if (v18)
  {
    sub_231E0F610();
    v19 = sub_231E0F5F0();
    v20 = 0;
  }

  else
  {
    v19 = sub_231E0F5F0();
    v20 = 1;
  }

  v21 = 1;
  __swift_storeEnumTagSinglePayload(v15, v20, 1, v19);
  v22 = [v16 attributeSet];
  v23 = [v22 summarizationContentTopLine];

  if (v23)
  {
    sub_231E0F610();
    v21 = 0;
  }

  sub_231E0F5F0();
  v24 = 1;
  OUTLINED_FUNCTION_107_9(v13, v21);
  v25 = [v16 attributeSet];
  v26 = [v25 summarizationContentSynopsis];

  if (v26)
  {
    sub_231E0F610();
    v24 = 0;
  }

  OUTLINED_FUNCTION_107_9(v10, v24);
  v27[0] = xmmword_231E13680;
  memset(&v27[1], 0, 80);
  sub_231D48A80(v15, v13, v10, 2, v27, 0, v3);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DFA704()
{
  OUTLINED_FUNCTION_18();
  v0[40] = v1;
  v0[41] = v2;
  v0[38] = v3;
  v0[39] = v4;
  v0[36] = v5;
  v0[37] = v6;
  v7 = sub_231E10E30();
  v0[42] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[43] = v8;
  v10 = *(v9 + 64);
  v0[44] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231DFA7B0()
{
  v47 = v0;
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[36];
  sub_231CB4EEC();
  v8 = *(v2 + 16);
  v9 = OUTLINED_FUNCTION_82();
  v10(v9);

  v11 = v6;
  v12 = v4;
  v13 = sub_231E10E10();
  v14 = sub_231E11AC0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[41];
    v44 = v0[42];
    v45 = v0[44];
    v17 = v0[39];
    v16 = v0[40];
    v42 = v0[38];
    v43 = v0[43];
    v18 = v0[36];
    v19 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = MEMORY[0x23837CD80](v18, MEMORY[0x277D837D0]);
    v22 = sub_231CB5000(v20, v21, &v46);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v0[28] = v42;
    v0[29] = v17;
    v0[30] = v16;
    v0[31] = v15;

    v23 = v16;
    v24 = v15;
    v25 = sub_231E11680();
    v27 = sub_231CB5000(v25, v26, &v46);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_231CAE000, v13, v14, "SpotlightReader: Searching spotlight for identifiers: %s index: %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v43 + 8))(v45, v44);
  }

  else
  {
    v29 = v0[43];
    v28 = v0[44];
    v30 = v0[42];

    v31 = *(v29 + 8);
    v32 = OUTLINED_FUNCTION_25();
    v33(v32);
  }

  v34 = swift_task_alloc();
  v0[45] = v34;
  *v34 = v0;
  v34[1] = sub_231DFAA4C;
  v35 = v0[40];
  v36 = v0[41];
  v37 = v0[38];
  v38 = v0[39];
  v39 = v0[36];
  v40 = v0[37];

  return sub_231D5F05C(v40, v39, v37, v38, v35, v36);
}

uint64_t sub_231DFAA4C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 368) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231DFAB34()
{
  if (!*(v0 + 368))
  {
    goto LABEL_43;
  }

  sub_231DFF9AC(*(v0 + 368));
  v2 = v1;

  if (!v2)
  {
    goto LABEL_43;
  }

  v55 = *(v2 + 16);
  if (!v55)
  {

LABEL_43:
    v43 = *(v0 + 352);
    sub_231E077EC();
    v44 = OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_76_7(v44, v45);

    OUTLINED_FUNCTION_19();

    return v46();
  }

  v3 = 0;
  v50 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v54 = v2 + 32;
  v59 = *(v0 + 296);
  v52 = *MEMORY[0x277CC2A80];
  v51 = *MEMORY[0x277CC2770];
  v53 = v2;
  while (1)
  {
    v4 = v3;
LABEL_6:
    if (v4 == v55)
    {
      v48 = *(v0 + 352);

      OUTLINED_FUNCTION_18_6();

      return v49(v50);
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    v56 = v4 + 1;
    v5 = *(v54 + 8 * v4);

    v7 = 0;
    v8 = *(v6 + 16);
    v57 = v6 + 32;
    v58 = v6;
    v9 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v7 == v8)
      {
        v10 = 0;
        v11 = 0uLL;
        v7 = v8;
        v12 = 0uLL;
      }

      else
      {
        if (v7 >= *(v58 + 16))
        {
          goto LABEL_52;
        }

        *(v0 + 56) = v7;
        sub_231CB51C4(v57 + 32 * v7, v0 + 64);
        v11 = *(v0 + 56);
        v12 = *(v0 + 72);
        ++v7;
        v10 = *(v0 + 88);
      }

      *(v0 + 16) = v11;
      *(v0 + 32) = v12;
      *(v0 + 48) = v10;
      if (!v10)
      {
        break;
      }

      v60 = v11;
      sub_231CE1044((v0 + 24), (v0 + 160));
      if ((v60 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v60 >= *(v59 + 16))
      {
        goto LABEL_50;
      }

      v13 = (v59 + 32 + 16 * v60);
      v15 = *v13;
      v14 = v13[1];
      sub_231CB51C4(v0 + 160, v0 + 192);

      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_231CE0CA4(v15, v14);
      if (__OFADD__(v9[2], (v17 & 1) == 0))
      {
        goto LABEL_51;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74468, &qword_231E15D78);
      if (sub_231E11EA0())
      {
        v20 = sub_231CE0CA4(v15, v14);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_55;
        }

        v18 = v20;
      }

      if (v19)
      {

        v22 = (v9[7] + 32 * v18);
        __swift_destroy_boxed_opaque_existential_0(v22);
        sub_231CE1044((v0 + 192), v22);
        __swift_destroy_boxed_opaque_existential_0((v0 + 160));
      }

      else
      {
        v9[(v18 >> 6) + 8] |= 1 << v18;
        v23 = (v9[6] + 16 * v18);
        *v23 = v15;
        v23[1] = v14;
        sub_231CE1044((v0 + 192), (v9[7] + 32 * v18));
        __swift_destroy_boxed_opaque_existential_0((v0 + 160));
        v24 = v9[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_53;
        }

        v9[2] = v26;
      }
    }

    v27 = sub_231E11620();
    sub_231D1352C(v27, v28, v9, (v0 + 96));

    if (!*(v0 + 120))
    {
      sub_231CC154C(v0 + 96, &dword_27DD741E0, &qword_231E15D70);

      v2 = v53;
LABEL_35:
      v39 = 0;
      goto LABEL_38;
    }

    v2 = v53;
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_35;
    }

    v29 = *(v0 + 256);
    v30 = *(v0 + 264);
    v31 = sub_231DFFB24(v9);
    v32 = objc_allocWithZone(MEMORY[0x277CC34B8]);
    v33 = sub_231E01D34(v31);
    v34 = sub_231E11620();
    sub_231D1352C(v34, v35, v9, (v0 + 128));

    if (*(v0 + 152))
    {
      v36 = swift_dynamicCast();
      if (v36)
      {
        v37 = *(v0 + 272);
      }

      else
      {
        v37 = 0;
      }

      if (v36)
      {
        v38 = *(v0 + 280);
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      sub_231CC154C(v0 + 128, &dword_27DD741E0, &qword_231E15D70);
      v37 = 0;
      v38 = 0;
    }

    v40 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v39 = sub_231CE0AF0(v29, v30, v37, v38, v33);

LABEL_38:
    v3 = v56;

    v4 = v56;
    if (!v39)
    {
      goto LABEL_6;
    }

    MEMORY[0x23837CD40](v41);
    v42 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v42 >> 1)
    {
      OUTLINED_FUNCTION_2_12(v42);
      sub_231E11890();
    }

    OUTLINED_FUNCTION_57();
    sub_231E118C0();
    v50 = v61;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_231E12160();
  __break(1u);
  return result;
}

uint64_t sub_231DFB0B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFB0C4()
{
  OUTLINED_FUNCTION_57_0();
  v3 = v0[5];
  v2 = v0[6];
  v4 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[7] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v5 = OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_88_9(v5, xmmword_231E138E0);
  v6 = *MEMORY[0x277CC2A80];
  v5[2].n128_u64[0] = sub_231E11620();
  v5[2].n128_u64[1] = v7;
  sub_231E11850();
  OUTLINED_FUNCTION_141();

  OUTLINED_FUNCTION_110_7(v8, sel_setFetchAttributes_);

  v9 = OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47_9(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  v9[2].n128_u64[0] = sub_231DE8A04(1);
  v9[2].n128_u64[1] = v18;
  v19 = OUTLINED_FUNCTION_59_0();
  sub_231E076B0(v19, v20);
  OUTLINED_FUNCTION_113_4(31, 0x8000000231E38BF0);
  OUTLINED_FUNCTION_27();
  v21 = swift_allocObject();
  v0[8] = v21;
  *(v21 + 16) = MEMORY[0x277D84F90];
  v22 = swift_task_alloc();
  v0[9] = v22;
  v22[2] = v3;
  v22[3] = v2;
  v22[4] = v4;
  v22[5] = v21;
  v23 = *(MEMORY[0x277D85A40] + 4);
  v24 = swift_task_alloc();
  v0[10] = v24;
  *v24 = v0;
  v24[1] = sub_231DFB2A4;
  OUTLINED_FUNCTION_13_20();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_231DFB2A4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_231DFB3A4()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[8];
  OUTLINED_FUNCTION_93_6();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v4 = v0[7];
  v3 = v0[8];
  if (v2[2])
  {
    v5 = v2[4];
    v6 = v2[5];

    v7 = v0[1];
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_117_7();

    __asm { BRAA            X3, X16 }
  }

  sub_231E077EC();
  v10 = OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_76_7(v10, v11);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_117_7();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231DFB4A0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  v3 = *(v0 + 88);
  OUTLINED_FUNCTION_19();

  return v4();
}

void sub_231DFB510()
{
  OUTLINED_FUNCTION_40_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_24(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_38_13();
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v32 = 0xD000000000000023;
  v33 = 0x8000000231E38DA0;
  MEMORY[0x23837CC20](v7, v5);
  MEMORY[0x23837CC20](34, 0xE100000000000000);
  v18 = v32;
  v19 = v33;
  objc_allocWithZone(MEMORY[0x277CC3498]);
  v20 = v3;
  v21 = sub_231E01CD0(v18, v19, v3);
  v36 = sub_231E082F0;
  v37 = v1;
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_28_14();
  v34 = v22;
  v35 = &block_descriptor_100;
  v23 = _Block_copy(&v32);

  [v21 setFoundItemsHandler_];
  _Block_release(v23);
  OUTLINED_FUNCTION_96_5();
  v24(v17, v9, v10);
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = swift_allocObject();
  v27 = *(v12 + 32);
  v28 = OUTLINED_FUNCTION_65_10(v26);
  v29(v28);
  OUTLINED_FUNCTION_7_28();
  v34 = sub_231DF9CEC;
  v35 = &block_descriptor_106;
  _Block_copy(&v32);
  OUTLINED_FUNCTION_109_7();
  v30 = OUTLINED_FUNCTION_82();
  [v30 v31];
  _Block_release(v10);
  [v21 start];

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231DFB754(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFB76C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 32);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_36_13(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_33(v7);

  return sub_231DFB8E8(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_231DFB800()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  OUTLINED_FUNCTION_18_6();

  return v7(v2);
}

uint64_t sub_231DFB8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFB904()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v3 = OUTLINED_FUNCTION_123();
  v4 = OUTLINED_FUNCTION_97_6(v3);
  OUTLINED_FUNCTION_88_9(v4, xmmword_231E138E0);
  v5 = *MEMORY[0x277CC2A80];
  v6 = sub_231E11620();
  v8 = OUTLINED_FUNCTION_49_11(v6, v7);
  v0[9] = v8;
  OUTLINED_FUNCTION_47_9(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  *(v17 + 32) = v2;
  *(v17 + 40) = v1;

  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_20_18(v18);
  OUTLINED_FUNCTION_117_7();

  return sub_231D5F05C(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_231DFB9F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = v3[10];
  v5 = v3[9];
  v6 = v3[8];
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v10 + 88) = v9;

  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231DFBB14()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 88);
  if (v2)
  {
    if (sub_231CBA138(*(v1 + 88)))
    {
      v3 = *(v1 + 88);
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23837D2A0](0, v2);
      }

      else
      {
        OUTLINED_FUNCTION_83_7(v3);
        if (!v4)
        {
          __break(1u);
          return;
        }

        v5 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_399();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_231E11860();
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_18_6();

  v6();
}

uint64_t sub_231DFBC14()
{
  OUTLINED_FUNCTION_18();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75980, &qword_231E23290);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v8 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v0[10] = v8;
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  v0[11] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231DFBCC0()
{
  OUTLINED_FUNCTION_57_0();
  v2 = v0[7];
  v3 = v0[8];
  v4 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[12] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231E1D9C0;
  v6 = *MEMORY[0x277CC2A80];
  *(v5 + 32) = sub_231E11620();
  *(v5 + 40) = v7;
  v8 = *MEMORY[0x277CC2640];
  *(v5 + 48) = sub_231E11620();
  *(v5 + 56) = v9;
  v10 = *MEMORY[0x277CC3168];
  *(v5 + 64) = sub_231E11620();
  *(v5 + 72) = v11;
  sub_231E11850();
  OUTLINED_FUNCTION_141();

  OUTLINED_FUNCTION_110_7(v12, sel_setFetchAttributes_);

  v13 = OUTLINED_FUNCTION_123();
  *(v13 + 16) = xmmword_231E138E0;
  *(v13 + 32) = sub_231DE8A04(0);
  *(v13 + 40) = v14;
  v15 = OUTLINED_FUNCTION_59_0();
  sub_231E076B0(v15, v16);
  OUTLINED_FUNCTION_113_4(28, 0x8000000231E38C40);
  OUTLINED_FUNCTION_27();
  v17 = swift_allocObject();
  v0[13] = v17;
  *(v17 + 16) = MEMORY[0x277D84F90];
  v18 = swift_task_alloc();
  v0[14] = v18;
  OUTLINED_FUNCTION_47_9(v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v27[4] = v3;
  v27[5] = v4;
  v27[6] = v2;
  v27[7] = v17;
  v28 = *(MEMORY[0x277D85A40] + 4);
  v29 = swift_task_alloc();
  v0[15] = v29;
  *v29 = v0;
  v29[1] = sub_231DFBEE4;
  OUTLINED_FUNCTION_13_20();

  return MEMORY[0x2822008A0](v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_231DFBEE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (!v0)
  {
    v9 = *(v3 + 112);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_231DFBFE4()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[16];
  v2 = v0[13];
  OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_45_5();
  swift_beginAccess();
  sub_231DFCA40((v2 + 16));
  swift_endAccess();
  if (v1)
  {
    OUTLINED_FUNCTION_97_3();
    return;
  }

  v3 = v0[9];
  v4 = v0[10];
  sub_231DF8A18(*(v0[13] + 16), v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v6 = v0[12];
    v5 = v0[13];
    sub_231CC154C(v0[9], &qword_27DD75980, &qword_231E23290);
    sub_231E077EC();
    v7 = OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_76_7(v7, v8);

LABEL_10:
    v30 = v0[11];
    v31 = v0[9];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_97_3();

    v33(v32, v33, v34, v35, v36, v37, v38, v39);
    return;
  }

  v9 = v0[10];
  v10 = v0[11];
  OUTLINED_FUNCTION_30_14();
  sub_231E07790(v11, v10, v12);
  v13 = *(v10 + *(v9 + 24));
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[11];
  if (v13 != 1)
  {
    sub_231E077EC();
    OUTLINED_FUNCTION_7_5();
    *v29 = 1;
    swift_willThrow();

    sub_231E0787C(v16);

    goto LABEL_10;
  }

  v17 = v0[9];

  v18 = *v16;
  v19 = v16[1];

  sub_231E0787C(v16);

  v20 = v0[1];
  OUTLINED_FUNCTION_97_3();

  v24(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_231DFC1DC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);

  OUTLINED_FUNCTION_19();

  return v6();
}

void sub_231DFC260()
{
  OUTLINED_FUNCTION_40_6();
  v33 = v0;
  v34 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_24(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_38_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_14();
  sub_231E11D70();
  v14 = *MEMORY[0x277CC2770];
  v15 = sub_231E11620();
  MEMORY[0x23837CC20](v15);

  MEMORY[0x23837CC20](0x2A22203D3D20, 0xE600000000000000);
  MEMORY[0x23837CC20](v7, v5);
  OUTLINED_FUNCTION_106_7();
  v16 = *MEMORY[0x277CC2640];
  v17 = sub_231E11620();
  MEMORY[0x23837CC20](v17);

  MEMORY[0x23837CC20](540884512, 0xE400000000000000);
  sub_231E0F870();
  sub_231E11A40();
  v18 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v19 = v3;
  v20 = sub_231E01CD0(v35, v36, v3);
  v21 = swift_allocObject();
  *(v21 + 16) = v33;
  *(v21 + 24) = v34;
  v39 = sub_231E08290;
  v40 = v21;
  OUTLINED_FUNCTION_3_36();
  v36 = 1107296256;
  v37 = sub_231DF9C78;
  v38 = &block_descriptor_90;
  v22 = _Block_copy(&v35);

  OUTLINED_FUNCTION_111_6(v23, sel_setFoundItemsHandler_);
  _Block_release(v22);
  v24 = OUTLINED_FUNCTION_63_11(v10);
  v25(v24);
  v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v27 = swift_allocObject();
  v28 = *(v10 + 32);
  v29 = OUTLINED_FUNCTION_65_10(v27);
  v30(v29);
  OUTLINED_FUNCTION_7_28();
  v37 = sub_231DF9CEC;
  v38 = &block_descriptor_96;
  _Block_copy(&v35);
  OUTLINED_FUNCTION_109_7();
  v31 = OUTLINED_FUNCTION_82();
  [v31 v32];
  _Block_release(v8);
  [v20 start];

  OUTLINED_FUNCTION_39_5();
}

void sub_231DFC534()
{
  OUTLINED_FUNCTION_35_1();
  v78 = v0;
  v88 = v1;
  v3 = v2;
  v4 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v81 = v6;
  v82 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v80 = (v10 - v9);
  OUTLINED_FUNCTION_3_0();
  v11 = sub_231E0F950();
  v12 = OUTLINED_FUNCTION_24(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v21 = OUTLINED_FUNCTION_47(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_139();
  v79 = v24;
  OUTLINED_FUNCTION_95();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v74 - v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_5();
  v87 = v29;
  if (!(v3 >> 62))
  {
    v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_19:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  OUTLINED_FUNCTION_62_8();
  v30 = sub_231E11ED0();
  if (!v30)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v30 >= 1)
  {
    v31 = 0;
    v84 = v3 & 0xC000000000000001;
    v85 = v30;
    v76 = (v14 + 16);
    v77 = v28;
    v74 = (v14 + 32);
    v75 = (v14 + 8);
    v86 = v3;
    do
    {
      if (v84)
      {
        v32 = OUTLINED_FUNCTION_59();
        v33 = MEMORY[0x23837D2A0](v32);
      }

      else
      {
        OUTLINED_FUNCTION_98_3();
        v33 = v34;
      }

      v35 = v33;
      v36 = [v33 uniqueIdentifier];
      v37 = sub_231E11620();
      v39 = v38;

      v89[0] = v37;
      v89[1] = v39;
      MEMORY[0x28223BE20](v40);
      *(&v74 - 2) = v89;
      LOBYTE(v37) = sub_231D162D0(sub_231D163AC, (&v74 - 4), v88);

      if (v37)
      {
        v41 = [v35 attributeSet];
        v42 = [v41 contentCreationDate];

        if (v42)
        {
          v43 = v77;
          sub_231E0F910();

          v44 = v79;
        }

        else
        {
          v44 = v79;
          v43 = v77;
        }

        v45 = v35;
        OUTLINED_FUNCTION_32_12();
        __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
        v50 = v43;
        v51 = v87;
        sub_231D26298(v50, v87);
        sub_231CFE0D8(v51, v44, &dword_27DD74AD0, &qword_231E16C40);
        OUTLINED_FUNCTION_73_6();
        if (__swift_getEnumTagSinglePayload(v52, v53, v54) == 1)
        {
          sub_231E0F920();
          OUTLINED_FUNCTION_73_6();
          v58 = v11;
          v59 = v19;
          if (__swift_getEnumTagSinglePayload(v55, v56, v57) != 1)
          {
            sub_231CC154C(v44, &dword_27DD74AD0, &qword_231E16C40);
          }
        }

        else
        {
          (*v74)(v19, v44, v11);
          v58 = v11;
          v59 = v19;
        }

        v60 = [v45 uniqueIdentifier];
        v61 = sub_231E11620();
        v83 = v62;

        v63 = v82;
        v64 = v80;
        (*v76)(v80 + *(v82 + 20), v59, v58);
        v65 = [v45 attributeSet];
        v66 = [v65 summarizationStatus];

        v67 = v83;
        *v64 = v61;
        v64[1] = v67;
        *(v64 + *(v63 + 24)) = v66 == 1;
        v68 = v78;
        OUTLINED_FUNCTION_45_5();
        swift_beginAccess();
        sub_231E01DB4();
        v69 = *(*v68 + 16);
        sub_231E01E00(v69);
        *(*v68 + 16) = v69 + 1;
        v70 = *(v81 + 80);
        v71 = *(v81 + 72);
        OUTLINED_FUNCTION_30_14();
        sub_231E07790(v64, v72, v73);
        swift_endAccess();

        (*v75)(v59, v58);
        sub_231CC154C(v87, &dword_27DD74AD0, &qword_231E16C40);
        v11 = v58;
        v19 = v59;
      }

      else
      {
      }

      ++v31;
    }

    while (v85 != v31);
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_231DFCA40(size_t *a1)
{
  v2 = *(type metadata accessor for SpotlightReader.MessageWithDate(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_231E07A1C(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_231E03244(v6, type metadata accessor for SpotlightReader.MessageWithDate, sub_231E04220, sub_231E03900);
  *a1 = v3;
  return result;
}

uint64_t sub_231DFCB28(size_t *a1)
{
  v2 = *(sub_231E10BE0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_231E07A30(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_231E03244(v6, MEMORY[0x277D42490], sub_231E04A9C, sub_231E03B14);
  *a1 = v3;
  return result;
}

uint64_t sub_231DFCC10(uint64_t *a1)
{
  v2 = *(sub_231E10A30() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231DF06B4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_231E03390(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_231DFCCB8()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v4 = sub_231E10E30();
  v0[8] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231DFCD60()
{
  OUTLINED_FUNCTION_47_0();
  v3 = v0[6];
  v2 = v0[7];
  v4 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[11] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231E231D0;
  v6 = *MEMORY[0x277CC2A80];
  *(v5 + 32) = sub_231E11620();
  *(v5 + 40) = v7;
  v8 = *MEMORY[0x277CC2770];
  *(v5 + 48) = sub_231E11620();
  *(v5 + 56) = v9;
  v10 = *MEMORY[0x277CC2FD8];
  *(v5 + 64) = sub_231E11620();
  *(v5 + 72) = v11;
  v12 = *MEMORY[0x277CC24A8];
  *(v5 + 80) = sub_231E11620();
  *(v5 + 88) = v13;
  v14 = *MEMORY[0x277CC26C0];
  *(v5 + 96) = sub_231E11620();
  *(v5 + 104) = v15;
  v16 = *MEMORY[0x277CC31B0];
  *(v5 + 112) = sub_231E11620();
  *(v5 + 120) = v17;
  v18 = *MEMORY[0x277CC2638];
  *(v5 + 128) = sub_231E11620();
  *(v5 + 136) = v19;
  sub_231E11850();
  OUTLINED_FUNCTION_141();

  OUTLINED_FUNCTION_110_7(v20, sel_setFetchAttributes_);

  v21 = OUTLINED_FUNCTION_123();
  *(v21 + 16) = xmmword_231E138E0;
  v22 = sub_231CC78CC();
  v24 = *v22;
  v23 = v22[1];
  *(v21 + 32) = v24;
  *(v21 + 40) = v23;

  v25 = OUTLINED_FUNCTION_59_0();
  sub_231E076B0(v25, v26);
  OUTLINED_FUNCTION_113_4(33, 0x8000000231E38CC0);
  OUTLINED_FUNCTION_27();
  v27 = swift_allocObject();
  v0[12] = v27;
  *(v27 + 16) = MEMORY[0x277D84F90];
  v28 = swift_task_alloc();
  v0[13] = v28;
  v28[2] = v3;
  v28[3] = v2;
  v28[4] = v4;
  v28[5] = v27;
  v29 = *(MEMORY[0x277D85A40] + 4);
  v30 = swift_task_alloc();
  v0[14] = v30;
  *v30 = v0;
  v30[1] = sub_231DFCFCC;
  OUTLINED_FUNCTION_13_20();

  return MEMORY[0x2822008A0](v31, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t sub_231DFCFCC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231DFD0CC()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[15];
  v2 = v0[12];
  OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_45_5();
  swift_beginAccess();
  sub_231DFCB28((v2 + 16));
  result = swift_endAccess();
  if (!v1)
  {
    v4 = v0[11];
    sub_231DF8ABC(*(v0[12] + 16), MEMORY[0x277D42490], v0[5]);

    v5 = v0[10];

    OUTLINED_FUNCTION_19();

    return v6();
  }

  return result;
}

uint64_t sub_231DFD198()
{
  v32 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);

  v8 = sub_231CB4EEC();
  (*(v6 + 16))(v4, v8, v5);

  v9 = v1;
  v10 = sub_231E10E10();
  v11 = sub_231E11AD0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 120);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v16 = *(v0 + 64);
  if (v12)
  {
    v30 = *(v0 + 80);
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    v29 = *(v0 + 64);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = OUTLINED_FUNCTION_67();
    v31 = v21;
    *v19 = 136643075;
    *(v19 + 4) = sub_231CB5000(v17, v18, &v31);
    *(v19 + 12) = 2112;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v23;
    *v20 = v23;
    _os_log_impl(&dword_231CAE000, v10, v11, "Could not look up message notification stack for conversation: %{sensitive}s: %@", v19, 0x16u);
    sub_231CC154C(v20, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v15 + 8))(v30, v29);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v24 = *(v0 + 40);
  v25 = sub_231E10BE0();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  v26 = *(v0 + 80);

  OUTLINED_FUNCTION_19();

  return v27();
}

void sub_231DFD3DC()
{
  OUTLINED_FUNCTION_40_6();
  v41 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_24(v40);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_38_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_14();
  sub_231E11D70();
  v12 = *MEMORY[0x277CC2770];
  v13 = sub_231E11620();
  v15 = v14;

  v42[0] = v13;
  v42[1] = v15;
  MEMORY[0x23837CC20](0x22203D3D20, 0xE500000000000000);
  v16 = sub_231CC78C0();
  v17 = *v16;
  v18 = v16[1];

  MEMORY[0x23837CC20](v17, v18);

  MEMORY[0x23837CC20](0x2026262022, 0xE500000000000000);
  v19 = *MEMORY[0x277CC26C0];
  v20 = sub_231E11620();
  MEMORY[0x23837CC20](v20);

  MEMORY[0x23837CC20](0x22203D3D20, 0xE500000000000000);
  v21 = sub_231DE8A04(0);
  MEMORY[0x23837CC20](v21);

  MEMORY[0x23837CC20](0x2026262022, 0xE500000000000000);
  v22 = *MEMORY[0x277CC31B0];
  v23 = sub_231E11620();
  MEMORY[0x23837CC20](v23);

  MEMORY[0x23837CC20](0x22203D3D20, 0xE500000000000000);
  MEMORY[0x23837CC20](v6, v4);
  MEMORY[0x23837CC20](34, 0xE100000000000000);
  v24 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v25 = v2;
  v26 = sub_231E01CD0(v42[0], v15, v2);
  v27 = swift_allocObject();
  v27[2] = v41;
  v27[3] = v6;
  v27[4] = v4;
  v45 = sub_231E081C4;
  v46 = v27;
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_28_14();
  v43 = v28;
  v44 = &block_descriptor_78;
  v29 = _Block_copy(v42);

  OUTLINED_FUNCTION_111_6(v30, sel_setFoundItemsHandler_);
  _Block_release(v29);
  v31 = OUTLINED_FUNCTION_63_11(v8);
  v32(v31);
  v33 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v34 = swift_allocObject();
  v35 = *(v8 + 32);
  v36 = OUTLINED_FUNCTION_65_10(v34);
  v37(v36);
  OUTLINED_FUNCTION_7_28();
  v43 = sub_231DF9CEC;
  v44 = &block_descriptor_84_0;
  _Block_copy(v42);
  OUTLINED_FUNCTION_109_7();
  v38 = OUTLINED_FUNCTION_82();
  [v38 v39];
  _Block_release(v40);
  [v26 start];

  OUTLINED_FUNCTION_39_5();
}

void sub_231DFD718()
{
  OUTLINED_FUNCTION_118();
  v82 = v1;
  v83 = v2;
  v84 = v3;
  v5 = v4;
  v81 = sub_231E10BE0();
  v6 = OUTLINED_FUNCTION_24(v81);
  v85 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v12 = v11 - v10;
  v13 = sub_231E0F950();
  v14 = OUTLINED_FUNCTION_24(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v23 = OUTLINED_FUNCTION_47(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_139();
  v80 = v26;
  OUTLINED_FUNCTION_95();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v66 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_126_2();
  if (!(v5 >> 62))
  {
    v31 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_3;
    }

LABEL_25:
    OUTLINED_FUNCTION_113();
    return;
  }

  v31 = sub_231E11ED0();
  if (!v31)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v31 >= 1)
  {
    v32 = 0;
    v72 = *MEMORY[0x277CC24A8];
    v71 = v5 & 0xC000000000000001;
    v67 = (v16 + 32);
    v70 = (v16 + 16);
    v69 = v85 + 32;
    v68 = (v16 + 8);
    v33 = &off_278947000;
    v78 = v12;
    v79 = v5;
    v74 = v0;
    v77 = v13;
    v76 = v21;
    v75 = v30;
    v73 = v31;
    do
    {
      if (v71)
      {
        v34 = MEMORY[0x23837D2A0](v32, v5);
      }

      else
      {
        v34 = *(v5 + 8 * v32 + 32);
      }

      v35 = v33[372];
      v89 = v34;
      v36 = [v34 v35];
      v37 = [v36 attributeForKey_];

      if (v37)
      {
        sub_231E11C80();
        swift_unknownObjectRelease();
      }

      else
      {
        v90 = 0u;
        v91 = 0u;
      }

      v92[0] = v90;
      v92[1] = v91;
      v38 = v89;
      if (*(&v91 + 1))
      {
        v39 = swift_dynamicCast() ^ 1;
        v40 = v0;
      }

      else
      {
        sub_231CC154C(v92, &dword_27DD741E0, &qword_231E15D70);
        v40 = v0;
        v39 = 1;
      }

      __swift_storeEnumTagSinglePayload(v40, v39, 1, v13);
      sub_231CFE0D8(v0, v30, &dword_27DD74AD0, &qword_231E16C40);
      OUTLINED_FUNCTION_8_17(v30, 1, v13);
      v88 = v32;
      if (v41)
      {
        sub_231E0F920();
        OUTLINED_FUNCTION_8_17(v30, 1, v13);
        if (!v41)
        {
          v42 = OUTLINED_FUNCTION_86_8();
          sub_231CC154C(v42, v43, &qword_231E16C40);
        }
      }

      else
      {
        (*v67)(v21, v30, v13);
      }

      sub_231E07948([v38 v33[372]]);
      v44 = [v38 uniqueIdentifier];
      v45 = sub_231E11620();
      v86 = v46;
      v87 = v45;

      sub_231DBAF78(v38, &selRef_domainIdentifier);
      v47 = sub_231CC78CC();
      v49 = *v47;
      v48 = v47[1];
      v50 = v80;
      (*v70)(v80, v21, v13);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v13);

      sub_231DE8A04(0);
      sub_231E079AC([v38 v33[372]]);

      v51 = v78;
      sub_231E10BB0();
      v52 = v84;
      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      v53 = *v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v52 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = *(v53 + 16);
        v62 = OUTLINED_FUNCTION_0_1();
        v53 = sub_231E021B8(v62, v63, v64, v53);
        *v84 = v53;
      }

      v55 = v88;
      v57 = *(v53 + 16);
      v56 = *(v53 + 24);
      v21 = v76;
      v30 = v75;
      v0 = v74;
      if (v57 >= v56 >> 1)
      {
        v65 = OUTLINED_FUNCTION_2_12(v56);
        v53 = sub_231E021B8(v65, v57 + 1, 1, v53);
        *v84 = v53;
      }

      v32 = v55 + 1;
      *(v53 + 16) = v57 + 1;
      v58 = *(v85 + 80);
      OUTLINED_FUNCTION_79();
      (*(v60 + 32))(v53 + v59 + *(v60 + 72) * v57, v51, v81);
      swift_endAccess();

      v13 = v77;
      (*v68)(v21, v77);
      sub_231CC154C(v0, &dword_27DD74AD0, &qword_231E16C40);
      v5 = v79;
      v33 = &off_278947000;
    }

    while (v73 != v32);
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_231DFDD54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v2 = OUTLINED_FUNCTION_47(v1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_231E10B70();
  sub_231E0F950();
  v10 = OUTLINED_FUNCTION_141();
  result = OUTLINED_FUNCTION_8_17(v10, 1, v0);
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_231E10B70();
    result = OUTLINED_FUNCTION_8_17(v7, 1, v0);
    if (!v12)
    {
      OUTLINED_FUNCTION_57();
      v13 = sub_231E0F8D0();
      v14 = *(*(v0 - 8) + 8);
      v14(v7, v0);
      v14(v9, v0);
      return v13 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231DFDE98()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_231E10E30();
  v1[7] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[8] = v7;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231DFDF64()
{
  OUTLINED_FUNCTION_57_0();
  v26 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];
  v0[12] = sub_231CB4EEC();
  v0[13] = *(v3 + 16);
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = OUTLINED_FUNCTION_82();
  v6(v5);

  v7 = sub_231E10E10();
  v8 = sub_231E11AF0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[8];
  if (v9)
  {
    v13 = v0[2];
    v14 = OUTLINED_FUNCTION_9_1();
    v15 = OUTLINED_FUNCTION_67();
    v25 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x23837CD80](v13, MEMORY[0x277D837D0]);
    v18 = sub_231CB5000(v16, v17, &v25);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_231CAE000, v7, v8, "Looking up notification entities for ids: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  v19 = *(v12 + 8);
  v20 = OUTLINED_FUNCTION_25();
  v19(v20);
  v0[15] = v19;
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_231DFE130;
  v22 = v0[6];
  v23 = v0[2];

  return sub_231DFE62C(v23);
}

uint64_t sub_231DFE130()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  *(v2 + 136) = v6;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DFE230()
{
  OUTLINED_FUNCTION_57_0();
  v34 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 16);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));

  v4 = sub_231E10E10();
  v5 = sub_231E11AF0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  v8 = *(v0 + 16);
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = sub_231CBA138(v7);

    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v8 + 16);

    _os_log_impl(&dword_231CAE000, v4, v5, "Spotlight returned %ld searchable items; expected: %ld", v9, 0x16u);
    OUTLINED_FUNCTION_30();
  }

  else
  {
    v10 = *(v0 + 16);
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v31 = *(v0 + 24);
  v13 = (*(v0 + 64) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 120))(*(v0 + 80), *(v0 + 56));
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_47_9(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  sub_231DF92AC(sub_231E078E4, v14, v11, &qword_27DD74BE0, &qword_231E1CC20, MEMORY[0x277D42428], sub_231E022DC, v23, v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v34, v35, v36);
  OUTLINED_FUNCTION_10_1();

  v33[0] = v4;

  sub_231DFCC10(v33);
  if (v12)
  {
  }

  else
  {
    v25 = *(v0 + 40);

    v26 = sub_231D922EC(v25, v33[0]);
    v28 = *(v0 + 80);
    v27 = *(v0 + 88);
    v29 = *(v0 + 72);

    OUTLINED_FUNCTION_18_6();

    return v30(v26);
  }
}

uint64_t sub_231DFE49C()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 56));
  v3 = v1;
  v4 = sub_231E10E10();
  v5 = sub_231E11AD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = OUTLINED_FUNCTION_9_1();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_231CAE000, v4, v5, "Could not look up user notifications: %@", v7, 0xCu);
    sub_231CC154C(v8, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  v11 = *(v0 + 144);
  v12 = *(v0 + 120);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 56);

  v12(v13, v15);
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 72);

  OUTLINED_FUNCTION_18_6();
  v20 = MEMORY[0x277D84F90];

  return v19(v20);
}

uint64_t sub_231DFE62C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFE640()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_231E231E0;
  v3 = *MEMORY[0x277CC2A80];
  *(v2 + 32) = sub_231E11620();
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x277CC2770];
  *(v2 + 48) = sub_231E11620();
  *(v2 + 56) = v6;
  v7 = *MEMORY[0x277CC2500];
  *(v2 + 64) = sub_231E11620();
  *(v2 + 72) = v8;
  v9 = *MEMORY[0x277CC26C0];
  *(v2 + 80) = sub_231E11620();
  *(v2 + 88) = v10;
  v11 = *MEMORY[0x277CC3118];
  *(v2 + 96) = sub_231E11620();
  *(v2 + 104) = v12;
  v13 = *MEMORY[0x277CC31F0];
  *(v2 + 112) = sub_231E11620();
  *(v2 + 120) = v14;
  v15 = *MEMORY[0x277CC3148];
  *(v2 + 128) = sub_231E11620();
  *(v2 + 136) = v16;
  v17 = *MEMORY[0x277CC3208];
  *(v2 + 144) = sub_231E11620();
  *(v2 + 152) = v18;
  v19 = *MEMORY[0x277CC2640];
  *(v2 + 160) = sub_231E11620();
  *(v2 + 168) = v20;
  v21 = *MEMORY[0x277CC31B0];
  *(v2 + 176) = sub_231E11620();
  *(v2 + 184) = v22;
  v23 = *MEMORY[0x277CC2C78];
  *(v2 + 192) = sub_231E11620();
  *(v2 + 200) = v24;
  v25 = *MEMORY[0x277CC2DF8];
  *(v2 + 208) = sub_231E11620();
  *(v2 + 216) = v26;
  v27 = *MEMORY[0x277CC2E00];
  *(v2 + 224) = sub_231E11620();
  *(v2 + 232) = v28;
  v29 = *MEMORY[0x277CC2C68];
  *(v2 + 240) = sub_231E11620();
  *(v2 + 248) = v30;
  v31 = *MEMORY[0x277CC2A88];
  *(v2 + 256) = sub_231E11620();
  *(v2 + 264) = v32;
  v33 = *MEMORY[0x277CC2490];
  *(v2 + 272) = sub_231E11620();
  *(v2 + 280) = v34;
  v35 = *MEMORY[0x277CC2498];
  *(v2 + 288) = sub_231E11620();
  *(v2 + 296) = v36;
  v37 = *MEMORY[0x277CC24A0];
  *(v2 + 304) = sub_231E11620();
  *(v2 + 312) = v38;
  v39 = *MEMORY[0x277CC2488];
  *(v2 + 320) = sub_231E11620();
  *(v2 + 328) = v40;
  v41 = *MEMORY[0x277CC24E0];
  *(v2 + 336) = sub_231E11620();
  *(v2 + 344) = v42;
  v43 = *MEMORY[0x277CC24D8];
  *(v2 + 352) = sub_231E11620();
  *(v2 + 360) = v44;
  v45 = *MEMORY[0x277CC24B0];
  *(v2 + 368) = sub_231E11620();
  *(v2 + 376) = v46;
  v47 = *MEMORY[0x277CC24C8];
  *(v2 + 384) = sub_231E11620();
  *(v2 + 392) = v48;
  v49 = *MEMORY[0x277CC24C0];
  *(v2 + 400) = sub_231E11620();
  *(v2 + 408) = v50;
  v51 = *MEMORY[0x277CC3028];
  *(v2 + 416) = sub_231E11620();
  *(v2 + 424) = v52;
  v53 = *MEMORY[0x277CC3010];
  *(v2 + 432) = sub_231E11620();
  *(v2 + 440) = v54;
  v55 = *MEMORY[0x277CC3020];
  *(v2 + 448) = sub_231E11620();
  *(v2 + 456) = v56;
  v57 = *MEMORY[0x277CC3018];
  *(v2 + 464) = sub_231E11620();
  *(v2 + 472) = v58;
  v59 = v1[2];
  v60 = v1[3];
  v61 = v1[4];
  v62 = v1[5];
  v63 = swift_task_alloc();
  v64 = OUTLINED_FUNCTION_36_13(v63);
  *v64 = v65;
  OUTLINED_FUNCTION_10_24(v64);
  OUTLINED_FUNCTION_97_3();

  return sub_231DFA704();
}

uint64_t sub_231DFE938()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_37_13();

    return v14(v13);
  }
}

void sub_231DFEA64()
{
  OUTLINED_FUNCTION_118();
  v69 = v2;
  v70 = v1;
  v4 = v3;
  v72 = v5;
  v6 = sub_231E0F950();
  v7 = OUTLINED_FUNCTION_24(v6);
  v68 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v13 = v12 - v11;
  v14 = sub_231E10E30();
  v15 = OUTLINED_FUNCTION_24(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_139();
  v67 = v20;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  OUTLINED_FUNCTION_47(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  v30 = sub_231E10A30();
  v31 = OUTLINED_FUNCTION_24(v30);
  v71 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_139();
  v66 = v35;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_126_2();
  v37 = *v4;
  sub_231D1E298(v70, 1, v29);
  OUTLINED_FUNCTION_8_17(v29, 1, v30);
  if (v38)
  {
    sub_231CC154C(v29, &qword_27DD74BE0, &qword_231E1CC20);
    v39 = sub_231CB4EEC();
    (*(v17 + 16))(v23, v39, v14);
    v40 = sub_231E10E10();
    v41 = sub_231E11AD0();
    if (os_log_type_enabled(v40, v41))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      OUTLINED_FUNCTION_8_7();
    }

    (*(v17 + 8))(v23, v14);
    v47 = 1;
    v48 = v72;
    v49 = v30;
  }

  else
  {
    v50 = *(v71 + 32);
    v50(v0, v29, v30);
    sub_231E10980();
    sub_231DD19E0();
    v51 = sub_231E11590();
    (*(v68 + 8))(v13, v6);
    v49 = v30;
    if (v51)
    {
      v52 = sub_231CB4EEC();
      v53 = v67;
      (*(v17 + 16))(v67, v52, v14);
      v54 = v66;
      (*(v71 + 16))(v66, v0, v30);
      v55 = sub_231E10E10();
      v56 = sub_231E11AD0();
      if (os_log_type_enabled(v55, v56))
      {
        OUTLINED_FUNCTION_9_1();
        v70 = v30;
        v57 = OUTLINED_FUNCTION_6_1();
        v69 = v14;
        v58 = v57;
        v73 = v57;
        *v30 = 136315138;
        v59 = sub_231E10A20();
        v61 = v60;
        v62 = v54;
        v63 = *(v71 + 8);
        v63(v62, v70);
        v64 = sub_231CB5000(v59, v61, &v73);

        *(v30 + 4) = v64;
        _os_log_impl(&dword_231CAE000, v55, v56, "Date is too old during notification lookup for: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        OUTLINED_FUNCTION_30();
        v49 = v70;
        OUTLINED_FUNCTION_30();

        (*(v17 + 8))(v67, v69);
        v63(v0, v49);
      }

      else
      {

        v65 = *(v71 + 8);
        v65(v54, v30);
        (*(v17 + 8))(v53, v14);
        v65(v0, v30);
      }

      v47 = 1;
      v48 = v72;
    }

    else
    {
      v48 = v72;
      v50(v72, v0, v30);
      v47 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v48, v47, 1, v49);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DFEF7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFEF90()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_231E20410;
  v3 = *MEMORY[0x277CC2A80];
  *(v2 + 32) = sub_231E11620();
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x277CC2770];
  *(v2 + 48) = sub_231E11620();
  *(v2 + 56) = v6;
  v7 = *MEMORY[0x277CC2640];
  *(v2 + 64) = sub_231E11620();
  *(v2 + 72) = v8;
  v9 = *MEMORY[0x277CC23A8];
  *(v2 + 80) = sub_231E11620();
  *(v2 + 88) = v10;
  v11 = *MEMORY[0x277CC23A0];
  *(v2 + 96) = sub_231E11620();
  *(v2 + 104) = v12;
  v13 = *MEMORY[0x277CC32E8];
  *(v2 + 112) = sub_231E11620();
  *(v2 + 120) = v14;
  v15 = *MEMORY[0x277CC24E0];
  *(v2 + 128) = sub_231E11620();
  *(v2 + 136) = v16;
  v17 = *MEMORY[0x277CC24D8];
  *(v2 + 144) = sub_231E11620();
  *(v2 + 152) = v18;
  v19 = *MEMORY[0x277CC24B0];
  *(v2 + 160) = sub_231E11620();
  *(v2 + 168) = v20;
  v21 = *MEMORY[0x277CC24C8];
  *(v2 + 176) = sub_231E11620();
  *(v2 + 184) = v22;
  v23 = *MEMORY[0x277CC24C0];
  *(v2 + 192) = sub_231E11620();
  *(v2 + 200) = v24;
  v25 = *MEMORY[0x277CC2FC0];
  *(v2 + 208) = sub_231E11620();
  *(v2 + 216) = v26;
  v27 = *MEMORY[0x277CC2FB8];
  *(v2 + 224) = sub_231E11620();
  *(v2 + 232) = v28;
  v29 = *MEMORY[0x277CC2FA8];
  *(v2 + 240) = sub_231E11620();
  *(v2 + 248) = v30;
  v31 = *MEMORY[0x277CC2FA0];
  *(v2 + 256) = sub_231E11620();
  *(v2 + 264) = v32;
  v33 = *MEMORY[0x277CC23E8];
  *(v2 + 272) = sub_231E11620();
  *(v2 + 280) = v34;
  v35 = *MEMORY[0x277CC23E0];
  *(v2 + 288) = sub_231E11620();
  *(v2 + 296) = v36;
  v37 = *MEMORY[0x277CC23D0];
  *(v2 + 304) = sub_231E11620();
  *(v2 + 312) = v38;
  v39 = *MEMORY[0x277CC23C8];
  *(v2 + 320) = sub_231E11620();
  *(v2 + 328) = v40;
  v41 = *MEMORY[0x277CC3140];
  *(v2 + 336) = sub_231E11620();
  *(v2 + 344) = v42;
  v43 = *MEMORY[0x277CC2670];
  *(v2 + 352) = sub_231E11620();
  *(v2 + 360) = v44;
  v45 = *MEMORY[0x277CC2C98];
  *(v2 + 368) = sub_231E11620();
  *(v2 + 376) = v46;
  v47 = *MEMORY[0x277CC2D68];
  *(v2 + 384) = sub_231E11620();
  *(v2 + 392) = v48;
  v49 = *MEMORY[0x277CC2490];
  *(v2 + 400) = sub_231E11620();
  *(v2 + 408) = v50;
  v51 = *MEMORY[0x277CC2498];
  *(v2 + 416) = sub_231E11620();
  *(v2 + 424) = v52;
  v53 = *MEMORY[0x277CC24A0];
  *(v2 + 432) = sub_231E11620();
  *(v2 + 440) = v54;
  v55 = *MEMORY[0x277CC2488];
  *(v2 + 448) = sub_231E11620();
  *(v2 + 456) = v56;
  v57 = *MEMORY[0x277CC32C0];
  *(v2 + 464) = sub_231E11620();
  *(v2 + 472) = v58;
  v59 = *MEMORY[0x277CC32D0];
  *(v2 + 480) = sub_231E11620();
  *(v2 + 488) = v60;
  v61 = *MEMORY[0x277CC2D58];
  *(v2 + 496) = sub_231E11620();
  *(v2 + 504) = v62;
  v63 = *MEMORY[0x277CC2C90];
  *(v2 + 512) = sub_231E11620();
  *(v2 + 520) = v64;
  v65 = *MEMORY[0x277CC2CB0];
  *(v2 + 528) = sub_231E11620();
  *(v2 + 536) = v66;
  v67 = *MEMORY[0x277CC2C70];
  *(v2 + 544) = sub_231E11620();
  *(v2 + 552) = v68;
  v69 = *MEMORY[0x277CC2C80];
  *(v2 + 560) = sub_231E11620();
  *(v2 + 568) = v70;
  v71 = *MEMORY[0x277CC32F8];
  *(v2 + 576) = sub_231E11620();
  *(v2 + 584) = v72;
  v73 = *MEMORY[0x277CC2D60];
  *(v2 + 592) = sub_231E11620();
  *(v2 + 600) = v74;
  v75 = *MEMORY[0x277CC32D8];
  *(v2 + 608) = sub_231E11620();
  *(v2 + 616) = v76;
  v77 = *MEMORY[0x277CC2500];
  *(v2 + 624) = sub_231E11620();
  *(v2 + 632) = v78;
  v79 = *MEMORY[0x277CC2FD0];
  *(v2 + 640) = sub_231E11620();
  *(v2 + 648) = v80;
  *(v2 + 656) = 0xD00000000000001ELL;
  *(v2 + 664) = 0x8000000231E38B70;
  v81 = v1[6];
  v82 = v1[7];
  v83 = v1[8];
  v84 = v1[9];
  v85 = swift_task_alloc();
  v86 = OUTLINED_FUNCTION_36_13(v85);
  *v86 = v87;
  OUTLINED_FUNCTION_10_24(v86);
  OUTLINED_FUNCTION_97_3();

  return sub_231DFA704();
}

uint64_t sub_231DFF3A8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_37_13();

    return v14(v13);
  }
}

uint64_t sub_231DFF4D4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_231DFF530(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFF544()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_231E231F0;
  v3 = *MEMORY[0x277CC2A80];
  *(v2 + 32) = sub_231E11620();
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x277CC2770];
  *(v2 + 48) = sub_231E11620();
  *(v2 + 56) = v6;
  v7 = *MEMORY[0x277CC2640];
  *(v2 + 64) = sub_231E11620();
  *(v2 + 72) = v8;
  v9 = *MEMORY[0x277CC24E0];
  *(v2 + 80) = sub_231E11620();
  *(v2 + 88) = v10;
  v11 = *MEMORY[0x277CC24B0];
  *(v2 + 96) = sub_231E11620();
  *(v2 + 104) = v12;
  v13 = *MEMORY[0x277CC24C8];
  *(v2 + 112) = sub_231E11620();
  *(v2 + 120) = v14;
  v15 = *MEMORY[0x277CC24C0];
  *(v2 + 128) = sub_231E11620();
  *(v2 + 136) = v16;
  v17 = *MEMORY[0x277CC23A8];
  *(v2 + 144) = sub_231E11620();
  *(v2 + 152) = v18;
  v19 = *MEMORY[0x277CC31B0];
  *(v2 + 160) = sub_231E11620();
  *(v2 + 168) = v20;
  v21 = *MEMORY[0x277CC23A0];
  *(v2 + 176) = sub_231E11620();
  *(v2 + 184) = v22;
  v23 = *MEMORY[0x277CC3028];
  *(v2 + 192) = sub_231E11620();
  *(v2 + 200) = v24;
  v25 = *MEMORY[0x277CC3010];
  *(v2 + 208) = sub_231E11620();
  *(v2 + 216) = v26;
  v27 = *MEMORY[0x277CC3020];
  *(v2 + 224) = sub_231E11620();
  *(v2 + 232) = v28;
  v29 = *MEMORY[0x277CC3018];
  *(v2 + 240) = sub_231E11620();
  *(v2 + 248) = v30;
  v31 = *MEMORY[0x277CC2670];
  *(v2 + 256) = sub_231E11620();
  *(v2 + 264) = v32;
  v33 = *MEMORY[0x277CC2490];
  *(v2 + 272) = sub_231E11620();
  *(v2 + 280) = v34;
  v35 = *MEMORY[0x277CC2498];
  *(v2 + 288) = sub_231E11620();
  *(v2 + 296) = v36;
  v37 = *MEMORY[0x277CC24A0];
  *(v2 + 304) = sub_231E11620();
  *(v2 + 312) = v38;
  v39 = *MEMORY[0x277CC2488];
  *(v2 + 320) = sub_231E11620();
  *(v2 + 328) = v40;
  v41 = *MEMORY[0x277CC2C90];
  *(v2 + 336) = sub_231E11620();
  *(v2 + 344) = v42;
  v43 = *MEMORY[0x277CC2CB0];
  *(v2 + 352) = sub_231E11620();
  *(v2 + 360) = v44;
  v45 = *MEMORY[0x277CC2C70];
  *(v2 + 368) = sub_231E11620();
  *(v2 + 376) = v46;
  v47 = *MEMORY[0x277CC2D98];
  *(v2 + 384) = sub_231E11620();
  *(v2 + 392) = v48;
  v49 = *MEMORY[0x277CC2D90];
  *(v2 + 400) = sub_231E11620();
  *(v2 + 408) = v50;
  v51 = *MEMORY[0x277CC3198];
  *(v2 + 416) = sub_231E11620();
  *(v2 + 424) = v52;
  v53 = *MEMORY[0x277CC2DB0];
  *(v2 + 432) = sub_231E11620();
  *(v2 + 440) = v54;
  v55 = *MEMORY[0x277CC2DB8];
  *(v2 + 448) = sub_231E11620();
  *(v2 + 456) = v56;
  v57 = *MEMORY[0x277CC2D80];
  *(v2 + 464) = sub_231E11620();
  *(v2 + 472) = v58;
  v59 = *MEMORY[0x277CC2DA0];
  *(v2 + 480) = sub_231E11620();
  *(v2 + 488) = v60;
  v61 = *MEMORY[0x277CC2C80];
  *(v2 + 496) = sub_231E11620();
  *(v2 + 504) = v62;
  v63 = *MEMORY[0x277CC2C78];
  *(v2 + 512) = sub_231E11620();
  *(v2 + 520) = v64;
  v65 = *MEMORY[0x277CC2500];
  *(v2 + 528) = sub_231E11620();
  *(v2 + 536) = v66;
  v67 = *MEMORY[0x277CC2D88];
  *(v2 + 544) = sub_231E11620();
  *(v2 + 552) = v68;
  v69 = *MEMORY[0x277CC2E48];
  *(v2 + 560) = sub_231E11620();
  *(v2 + 568) = v70;
  v71 = *MEMORY[0x277CC2FD0];
  *(v2 + 576) = sub_231E11620();
  *(v2 + 584) = v72;
  v73 = *MEMORY[0x277CC2D38];
  *(v2 + 592) = sub_231E11620();
  *(v2 + 600) = v74;
  *(v2 + 608) = 0xD000000000000028;
  OUTLINED_FUNCTION_171_0();
  *(v2 + 616) = v75;
  OUTLINED_FUNCTION_171_0();
  *(v2 + 624) = v76 + 10;
  *(v2 + 632) = v77;
  OUTLINED_FUNCTION_171_0();
  *(v2 + 640) = v78;
  *(v2 + 648) = v79;
  *(v2 + 656) = v78 | 5;
  OUTLINED_FUNCTION_171_0();
  *(v2 + 664) = v80;
  *(v2 + 672) = v81 + 6;
  *(v2 + 680) = 0x8000000231E32140;
  *(v2 + 688) = v81 | 1;
  OUTLINED_FUNCTION_171_0();
  *(v2 + 696) = v82;
  *(v2 + 704) = v83 + 7;
  *(v2 + 712) = 0x8000000231E321F0;
  v84 = v1[10];
  v85 = v1[11];
  v86 = v1[12];
  v87 = v1[13];
  v88 = swift_task_alloc();
  v89 = OUTLINED_FUNCTION_36_13(v88);
  *v89 = v90;
  OUTLINED_FUNCTION_10_24(v89);
  OUTLINED_FUNCTION_97_3();

  return sub_231DFA704();
}

void sub_231DFF9AC(unint64_t a1)
{
  v2 = sub_231CBA138(a1);
  sub_231E02EF0(0, v2 & ~(v2 >> 63), 0);
  if (sub_231CBA138(a1))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x23837D2A0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v3 = *(a1 + 32);
    }

    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_231E11860();
    }

    else
    {
    }
  }
}

uint64_t sub_231DFFB24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757F8, &qword_231E234E0);
    v2 = sub_231E11F00();
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

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_231CB51C4(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_231CE1044(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_231CE1044(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_231CE1044(v32, v33);
    v15 = *(v2 + 40);
    result = sub_231E11D00();
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
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_231CE1044(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
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
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_231DFFDE8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v0[2] = v3;
  v4 = sub_231E106A0();
  OUTLINED_FUNCTION_6(v4);
  v0[3] = v5;
  v7 = *(v6 + 64);
  v0[4] = OUTLINED_FUNCTION_55();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_36_13(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_32(v9);

  return sub_231DFF530(v2);
}

uint64_t sub_231DFFEBC()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v5[6] = v0;

  if (v0)
  {
    v11 = v5[4];

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    v5[7] = v3;
    v14 = OUTLINED_FUNCTION_143_2();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_231E0011C()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v0[2] = v3;
  v4 = sub_231E10340();
  OUTLINED_FUNCTION_6(v4);
  v0[3] = v5;
  v7 = *(v6 + 64);
  v0[4] = OUTLINED_FUNCTION_55();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_36_13(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_32(v9);

  return sub_231DFEF7C(v2);
}

uint64_t sub_231E001F0()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v5[6] = v0;

  if (v0)
  {
    v11 = v5[4];

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    v5[7] = v3;
    v14 = OUTLINED_FUNCTION_143_2();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

void sub_231E00450()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v241 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v9);
  v217 = &v211[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A78, &unk_231E1E3E0);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v14);
  v224 = &v211[-v15];
  OUTLINED_FUNCTION_3_0();
  v216 = sub_231E10210();
  v16 = OUTLINED_FUNCTION_24(v216);
  v215 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_1();
  v223 = (v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  OUTLINED_FUNCTION_47(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v25);
  v238 = &v211[-v26];
  OUTLINED_FUNCTION_3_0();
  v230 = sub_231E10400();
  v27 = OUTLINED_FUNCTION_24(v230);
  v226 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_5();
  v225 = v32;
  OUTLINED_FUNCTION_3_0();
  v239 = sub_231E0F950();
  v33 = OUTLINED_FUNCTION_24(v239);
  v236 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_1();
  v235 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v40 = OUTLINED_FUNCTION_47(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v211[-v47];
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_5();
  v237 = v49;
  OUTLINED_FUNCTION_3_0();
  v50 = sub_231E10E30();
  v51 = OUTLINED_FUNCTION_24(v50);
  v240 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_139();
  v233 = v55;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_126_2();
  v60 = [*v4 attributeSet];
  sub_231DF3D04(0, v2);
  v62 = v61;
  sub_231DF3D04(1, v2);
  v64 = v63;
  sub_231DF3D04(2, v2);
  v66 = v65;
  sub_231DF3D04(3, v2);
  v68 = v67;
  v69 = sub_231DBAF78(v60, &selRef_uniqueIdentifier);
  if (!v70)
  {

    sub_231CB4EEC();
    v88 = v240;
    OUTLINED_FUNCTION_96_5();
    v89(v0);
    v90 = sub_231E10E10();
    v91 = sub_231E11AD0();
    if (os_log_type_enabled(v90, v91))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      OUTLINED_FUNCTION_8_7();
    }

    v97 = *(v88 + 8);
    v98 = OUTLINED_FUNCTION_41_3();
    v99(v98);
    goto LABEL_27;
  }

  v71 = v70;
  v228 = v62;
  v234 = v68;
  v231 = v66;
  v232 = v64;
  v229 = v50;
  v213 = v69;
  v72 = [v60 mailDateReceived];
  if (v72)
  {
    v73 = v72;
    v74 = v235;
    sub_231E0F910();

    v75 = *(v236 + 32);
    (v75)(v48, v74, v239);
    OUTLINED_FUNCTION_32_12();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
    v80 = v237;
    v81 = OUTLINED_FUNCTION_63_10();
    v75(v81);
    OUTLINED_FUNCTION_32_12();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
    v86 = v71;
    v87 = v80;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v239);
    v100 = v60;
    v101 = [v60 contentCreationDate];
    v86 = v71;
    if (v101)
    {
      v102 = v101;
      v103 = v227;
      sub_231E0F910();

      v104 = v103;
      v87 = v237;
    }

    else
    {
      v87 = v237;
      v104 = v227;
    }

    OUTLINED_FUNCTION_32_12();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
    sub_231D26298(v104, v87);
    OUTLINED_FUNCTION_73_6();
    OUTLINED_FUNCTION_8_17(v109, v110, v111);
    v60 = v100;
    if (!v112)
    {
      sub_231CC154C(v48, &dword_27DD74AD0, &qword_231E16C40);
    }
  }

  OUTLINED_FUNCTION_73_6();
  OUTLINED_FUNCTION_8_17(v113, v114, v115);
  v116 = v238;
  if (v112)
  {

    sub_231CC154C(v87, &dword_27DD74AD0, &qword_231E16C40);
    v117 = sub_231CB4EEC();
    v118 = v240;
    v119 = v233;
    v120 = v229;
    (*(v240 + 16))(v233, v117, v229);

    v121 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_112_6();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v122 = v86;
      v123 = OUTLINED_FUNCTION_6_1();
      *&v244[0] = v123;
      v124 = OUTLINED_FUNCTION_21_12(4.8149e-34);
      v126 = sub_231CB5000(v124, v122, v125);

      *(v87 + 4) = v126;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v127, v128, v129, v130, v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v123);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_8_7();
    }

    else
    {
    }

    (*(v118 + 8))(v119, v120);
    goto LABEL_27;
  }

  sub_231CC154C(v87, &dword_27DD74AD0, &qword_231E16C40);
  v132 = sub_231DBAF78(v60, &selRef_accountIdentifier);
  v134 = v229;
  if (!v133)
  {

    sub_231CB4EEC();
    OUTLINED_FUNCTION_99_6();
    v137 = v219;
    v140(v219);

    v139 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_112_6();
    if (OUTLINED_FUNCTION_33_8())
    {
LABEL_24:
      OUTLINED_FUNCTION_9_1();
      v141 = OUTLINED_FUNCTION_6_1();
      *&v244[0] = v141;
      v142 = OUTLINED_FUNCTION_21_12(4.8149e-34);
      sub_231CB5000(v142, v86, v143);
      OUTLINED_FUNCTION_75_6();
      *(v87 + 4) = v86;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v141);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_8_7();

LABEL_26:
      (*(v116 + 8))(v137, v134);
LABEL_27:
      v149 = 1;
      v150 = v241;
      goto LABEL_28;
    }

LABEL_25:

    goto LABEL_26;
  }

  v135 = v132;
  v87 = v133;
  v237 = v86;
  sub_231DF8ABC(v228, MEMORY[0x277D42328], v116);

  v136 = v230;
  OUTLINED_FUNCTION_8_17(v116, 1, v230);
  if (v112)
  {

    sub_231CC154C(v116, &dword_27DD73FA0, &dword_231E13460);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_99_6();
    v137 = v218;
    v138(v218);
    v86 = v237;

    v139 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_112_6();
    if (OUTLINED_FUNCTION_33_8())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v235 = v135;
  v236 = v87;
  v152 = v226;
  v153 = v225;
  (*(v226 + 32))(v225, v116, v136);
  v154 = sub_231D2E5A0();
  v155 = sub_231DBAF78(v60, &selRef_contentSnippet);
  v157 = v136;
  v158 = v237;
  if (!v156)
  {

    sub_231CB4EEC();
    v174 = v240;
    OUTLINED_FUNCTION_96_5();
    v175 = v214;
    v176 = v229;
    v177(v214);

    v178 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_112_6();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v179 = OUTLINED_FUNCTION_6_1();
      *&v244[0] = v179;
      v180 = OUTLINED_FUNCTION_21_12(4.8149e-34);
      sub_231CB5000(v180, v158, v181);
      OUTLINED_FUNCTION_75_6();
      *(v175 + 4) = v158;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v182, v183, v184, v185, v186, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v179);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_8_7();

      (*(v174 + 8))(v214, v176);
    }

    else
    {

      (*(v174 + 8))(v175, v176);
    }

    (*(v152 + 8))(v153, v230);
    goto LABEL_27;
  }

  v159 = v155;
  v160 = v156;
  v240 = v154;
  v238 = sub_231DBAF78(v60, &selRef_domainIdentifier);
  v233 = v161;
  v229 = sub_231DBAF78(v60, &selRef_bundleID);
  v228 = v162;
  v227 = sub_231CE122C(v60, &selRef_accountHandles);
  (*(v152 + 16))(v222, v153, v157);
  v163 = sub_231DBAF78(v60, &selRef_subject);
  if (v164)
  {
    v165 = v163;
  }

  else
  {
    v165 = 0;
  }

  v219 = v165;
  v166 = 0xE000000000000000;
  if (v164)
  {
    v166 = v164;
  }

  v218 = v166;
  v167 = v223;
  *v223 = v159;
  v167[1] = v160;
  v168 = *MEMORY[0x277D42280];
  (*(v215 + 104))();
  v169 = v60;
  v170 = [v60 isPartiallyDownloaded];
  if (v170)
  {
    v171 = v170;
    v172 = [v170 BOOLValue];

    v173 = v172 ^ 1;
  }

  else
  {
    v173 = 1;
  }

  LODWORD(v216) = v173;
  v187 = v221;
  v188 = v220;
  v189 = sub_231CE122C(v60, &selRef_mailboxIdentifiers);
  v190 = MEMORY[0x277D84F90];
  if (v189)
  {
    v190 = v189;
  }

  v239 = v190;
  v215 = sub_231DBAF78(v60, &selRef_mailConversationID);
  v214 = v191;
  v192 = [v60 contentCreationDate];
  if (v192)
  {
    v193 = v192;
    sub_231E0F910();

    v194 = 0;
  }

  else
  {
    v194 = 1;
  }

  v195 = 1;
  OUTLINED_FUNCTION_107_9(v188, v194);
  v196 = [v60 mailDateReceived];
  if (v196)
  {
    v197 = v196;
    sub_231E0F910();

    v195 = 0;
  }

  OUTLINED_FUNCTION_107_9(v187, v195);
  [v60 mailCategories];
  v198 = v224;
  sub_231E10060();
  v199 = sub_231E10070();
  __swift_storeEnumTagSinglePayload(v198, 0, 1, v199);
  v200 = [v60 isNew];
  if (v200)
  {
    v201 = v200;
    v212 = [v200 BOOLValue];
  }

  else
  {
    v212 = 2;
  }

  v202 = [v60 isTwoFactorCode];
  if (v202)
  {
    v203 = v202;
    [v202 BOOLValue];
  }

  v204 = [v60 isFromMe];
  if (v204)
  {
    OUTLINED_FUNCTION_82_4(v204);
  }

  OUTLINED_FUNCTION_82_4([v60 isLikelyJunk]);

  v205 = [v60 mailRead];
  if (v205)
  {
    OUTLINED_FUNCTION_82_4(v205);
  }

  v206 = [v60 mailVIP];
  if (v206)
  {
    OUTLINED_FUNCTION_82_4(v206);
  }

  v207 = [v60 mailFlagged];
  if (v207)
  {
    OUTLINED_FUNCTION_82_4(v207);
  }

  v208 = sub_231E115F0();
  v209 = [v169 attributeForKey_];

  if (v209)
  {
    sub_231E11C80();
    swift_unknownObjectRelease();
  }

  else
  {
    v242 = 0u;
    v243 = 0u;
  }

  v244[0] = v242;
  v244[1] = v243;
  if (*(&v243 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_231CC154C(v244, &dword_27DD741E0, &qword_231E15D70);
  }

  v210 = sub_231E10290();
  __swift_storeEnumTagSinglePayload(v217, 1, 1, v210);
  v150 = v241;
  sub_231E10310();

  (*(v226 + 8))(v225, v230);
  v149 = 0;
LABEL_28:
  v151 = sub_231E10340();
  __swift_storeEnumTagSinglePayload(v150, v149, 1, v151);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231E01644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231E0165C()
{
  OUTLINED_FUNCTION_50_0();
  v25 = *(v0 + 40);
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  OUTLINED_FUNCTION_47_9(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  *(v12 + 32) = v2;
  *(v12 + 40) = v1;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  *v14 = v0;
  v14[1] = sub_231E01768;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_117_7();

  return MEMORY[0x2822008A0](v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_231E01768()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231E01868()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_18_6();
  return v2();
}

uint64_t sub_231E01890()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 72);

  return v2();
}

void sub_231E018EC()
{
  OUTLINED_FUNCTION_40_6();
  v37 = v0;
  v38 = v1;
  v3 = v2;
  v36 = v4;
  v39 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8);
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v35 - v12;
  OUTLINED_FUNCTION_27();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84FA0];
  v15 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v16 = OUTLINED_FUNCTION_123();
  v35 = xmmword_231E138E0;
  *(v16 + 16) = xmmword_231E138E0;
  v17 = *MEMORY[0x277CC3208];
  *(v16 + 32) = sub_231E11620();
  *(v16 + 40) = v18;
  v19 = sub_231E11850();

  [v15 setFetchAttributes_];

  v20 = OUTLINED_FUNCTION_123();
  *(v20 + 16) = v35;
  *(v20 + 32) = v36;
  *(v20 + 40) = v3;

  v21 = OUTLINED_FUNCTION_63_10();
  sub_231E076B0(v21, v22);
  v23 = *MEMORY[0x277CC2770];
  v40 = sub_231E11620();
  v41 = v24;
  MEMORY[0x23837CC20](540884256, 0xE400000000000000);
  MEMORY[0x23837CC20](v37, v38);
  v25 = v40;
  v26 = v41;
  v27 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v38 = v15;
  v28 = sub_231E01CD0(v25, v26, v15);
  v44 = sub_231E07F58;
  v45 = v14;
  v40 = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_231DF9C78;
  v43 = &block_descriptor_15;
  v29 = _Block_copy(&v40);

  [v28 setFoundItemsHandler_];
  _Block_release(v29);
  OUTLINED_FUNCTION_96_5();
  v30(v13, v39, v6);
  v31 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v32 = swift_allocObject();
  (*(v9 + 32))(v32 + v31, v13, v6);
  *(v32 + ((v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v44 = sub_231E08078;
  v45 = v32;
  v40 = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_231DF9CEC;
  v43 = &block_descriptor_72;
  v33 = _Block_copy(&v40);

  OUTLINED_FUNCTION_111_6(v34, sel_setCompletionHandler_);
  _Block_release(v33);
  [v28 start];

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231E01C8C()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_231CE140C(v2);
  return swift_deallocClassInstance();
}

id sub_231E01CD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231E115F0();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

id sub_231E01D34(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_231E11520();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithAttributes_];

  return v3;
}

size_t sub_231E01DB4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231E02094(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_231E01E00(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_231E02094(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

size_t sub_231E01E40(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD759C8, &qword_231E23508, type metadata accessor for ConversationDeletionInfo);
  v11 = *(type metadata accessor for ConversationDeletionInfo(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, type metadata accessor for ConversationDeletionInfo);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_231E01F64(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759B0, &qword_231E234E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759B8, &qword_231E234F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_231E02094(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD759A8, &qword_231E234D8, type metadata accessor for SpotlightReader.MessageWithDate);
  v11 = *(type metadata accessor for SpotlightReader.MessageWithDate(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, type metadata accessor for SpotlightReader.MessageWithDate);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_231E021B8(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD759A0, &qword_231E234C8, MEMORY[0x277D42490]);
  v11 = *(sub_231E10BE0() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, MEMORY[0x277D42490]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_231E022DC(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD75108, &unk_231E1E570, MEMORY[0x277D42428]);
  v11 = *(sub_231E10A30() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, MEMORY[0x277D42428]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_231E02400(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368]);
  v11 = *(sub_231E106A0() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, MEMORY[0x277D42368]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_231E02524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231E02618(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_12(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231E026D8(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_231CFD55C(0, v6, v8);
    v9 = sub_231E02930(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_231E028A0(v12, v6, a2, a1);

    MEMORY[0x23837E1D0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_231E028A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_231E02930(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_231E02930(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_231E12220();

      sub_231E116E0();
      v42 = sub_231E12250();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_231E12100();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_231E02CD4(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_231E12220();

      sub_231E116E0();
      v19 = sub_231E12250();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_231E12100();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
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
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_231E02CD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75290, &qword_231E1C900);
  result = sub_231E11D50();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_231E12220();

    sub_231E116E0();
    result = sub_231E12250();
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
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

void *sub_231E02EF0(void *a1, int64_t a2, char a3)
{
  result = sub_231E02F68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_231E02F10()
{
  v1 = *v0;
  sub_231E03098();
  *v0 = v2;
}

void *sub_231E02F68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759B0, &qword_231E234E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759B8, &qword_231E234F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_231E03098()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_6(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_79();
  if (v10)
  {
    sub_231E02618(v8 + v25, v14, v21 + v25, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231E03244(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_231E120B0();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_231E118B0();
        *(v12 + 16) = v11;
      }

      v13 = (a2)(0);
      OUTLINED_FUNCTION_47(v13);
      v15 = *(v14 + 80);
      OUTLINED_FUNCTION_79();
      v17[0] = v12 + v16;
      v17[1] = v11;
      a3(v17, v18, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_231E03900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
    while (2)
    {
      v34 = v22;
      v35 = a3;
      v32 = v25;
      v33 = v24;
      do
      {
        sub_231E0822C(v25, v19);
        sub_231E0822C(v22, v15);
        v26 = *(v8 + 20);
        v27 = sub_231E0F8D0();
        sub_231E0787C(v15);
        result = sub_231E0787C(v19);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_231E07790(v25, v12, type metadata accessor for SpotlightReader.MessageWithDate);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_231E07790(v12, v22, type metadata accessor for SpotlightReader.MessageWithDate);
        v22 += v23;
        v25 += v23;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v35 + 1;
      v22 = v34 + v30;
      v24 = v33 - 1;
      v25 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_231E03B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v61 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v45 - v12;
  v13 = sub_231E10BE0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  result = MEMORY[0x28223BE20](v17);
  v23 = &v45 - v21;
  v47 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v58 = *(v22 + 16);
    v59 = v22 + 16;
    v25 = *(v22 + 72);
    v56 = (v22 + 8);
    v57 = &v45 - v21;
    v26 = v24 + v25 * (a3 - 1);
    v52 = -v25;
    v53 = (v22 + 32);
    v27 = a1 - a3;
    v54 = v24;
    v46 = v25;
    v28 = v24 + v25 * a3;
    while (2)
    {
      v50 = v26;
      v51 = a3;
      v48 = v28;
      v49 = v27;
      do
      {
        v60 = v27;
        v29 = v58;
        v58(v23, v28, v13);
        v29(v19, v26, v13);
        v30 = v62;
        sub_231E10B70();
        v31 = sub_231E0F950();
        result = __swift_getEnumTagSinglePayload(v30, 1, v31);
        if (result == 1)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }

        v32 = v61;
        sub_231E10B70();
        result = __swift_getEnumTagSinglePayload(v32, 1, v31);
        if (result == 1)
        {
          goto LABEL_13;
        }

        v33 = v13;
        v34 = v62;
        v35 = v61;
        v36 = sub_231E0F8D0();
        v37 = v19;
        v38 = *(*(v31 - 8) + 8);
        v38(v35, v31);
        v39 = v34;
        v13 = v33;
        v38(v39, v31);
        v19 = v37;
        v40 = *v56;
        (*v56)(v37, v33);
        v23 = v57;
        result = v40(v57, v33);
        v41 = v60;
        if ((v36 & 1) == 0)
        {
          break;
        }

        if (!v54)
        {
          goto LABEL_14;
        }

        v42 = *v53;
        v43 = v55;
        (*v53)(v55, v28, v13);
        swift_arrayInitWithTakeFrontToBack();
        result = (v42)(v26, v43, v13);
        v26 += v52;
        v28 += v52;
        v44 = __CFADD__(v41, 1);
        v27 = v41 + 1;
      }

      while (!v44);
      a3 = v51 + 1;
      v26 = v50 + v46;
      v27 = v49 - 1;
      v28 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_231E03ECC()
{
  OUTLINED_FUNCTION_35_1();
  v58 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v57 = sub_231E0F950();
  v11 = OUTLINED_FUNCTION_24(v57);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_139();
  v56 = v16;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_5();
  v18 = OUTLINED_FUNCTION_3_0();
  v19 = v2(v18);
  v20 = OUTLINED_FUNCTION_24(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_139();
  v50 = v23;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_0();
  v55 = v25;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_5();
  v54 = v28;
  if (v6 != v8)
  {
    v30 = *(v27 + 16);
    v29 = v27 + 16;
    v31 = *(v29 + 56);
    v52 = (v13 + 8);
    v53 = v30;
    v51 = (v29 - 8);
    v32 = *v4 + v31 * (v6 - 1);
    v47 = -v31;
    v48 = (v29 + 16);
    v33 = v10 - v6;
    v49 = *v4;
    v42 = v31;
    v34 = *v4 + v31 * v6;
    while (2)
    {
      v45 = v32;
      v46 = v6;
      v43 = v34;
      v44 = v33;
      v59 = v33;
      do
      {
        v53(v54, v34, v19);
        v35 = (v53)(v55, v32, v19);
        v36 = v58(v35);
        v58(v36);
        OUTLINED_FUNCTION_63_10();
        v60 = sub_231E0F8E0();
        v37 = *v52;
        (*v52)(v56, v57);
        v38 = OUTLINED_FUNCTION_63_10();
        v37(v38);
        v39 = *v51;
        (*v51)(v55, v19);
        v39(v54, v19);
        if ((v60 & 1) == 0)
        {
          break;
        }

        if (!v49)
        {
          __break(1u);
          return;
        }

        v40 = *v48;
        (*v48)(v50, v34, v19);
        swift_arrayInitWithTakeFrontToBack();
        v40(v32, v50, v19);
        v32 += v47;
        v34 += v47;
      }

      while (!__CFADD__(v59++, 1));
      v6 = v46 + 1;
      v32 = v45 + v42;
      v33 = v44 - 1;
      v34 = v43 + v42;
      if (v46 + 1 != v8)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_231E04220(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v104 = a1;
  v8 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v111 = *(v8 - 8);
  v9 = *(v111 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v107 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v101 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v101 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v101 - v17;
  v113 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_100:
    a3 = *v104;
    if (!*v104)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v95 = (v21 + 16);
      v96 = *(v21 + 16);
      for (i = v21; v96 >= 2; v21 = i)
      {
        if (!*v113)
        {
          goto LABEL_138;
        }

        v97 = (v21 + 16 * v96);
        v21 = *v97;
        v98 = &v95[2 * v96];
        v99 = v98[1];
        sub_231E0634C(*v113 + *(v111 + 72) * *v97, *v113 + *(v111 + 72) * *v98, *v113 + *(v111 + 72) * v99, a3);
        if (v5)
        {
          break;
        }

        if (v99 < v21)
        {
          goto LABEL_126;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_127;
        }

        *v97 = v21;
        v97[1] = v99;
        v100 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_128;
        }

        v96 = *v95 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v95 = v96;
      }
    }

LABEL_135:
    result = sub_231CF1D4C(v21);
    v21 = result;
    goto LABEL_102;
  }

  v117 = result;
  v102 = a4;
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v20 + 1;
    if (v20 + 1 < v19)
    {
      a3 = *v113;
      v23 = *(v111 + 72);
      v24 = *v113 + v23 * v22;
      i = v19;
      sub_231E0822C(v24, v18);
      v25 = v116;
      sub_231E0822C(a3 + v23 * v20, v116);
      v26 = *(v117 + 20);
      LODWORD(v110) = sub_231E0F8D0();
      sub_231E0787C(v25);
      result = sub_231E0787C(v18);
      v27 = i;
      v103 = v20;
      v28 = v20 + 2;
      v112 = v23;
      v29 = a3 + v23 * (v20 + 2);
      while (1)
      {
        v30 = v28;
        if (++v22 >= v27)
        {
          break;
        }

        sub_231E0822C(v29, v18);
        v31 = v116;
        sub_231E0822C(v24, v116);
        v32 = *(v117 + 20);
        a3 = sub_231E0F8D0() & 1;
        sub_231E0787C(v31);
        result = sub_231E0787C(v18);
        v29 += v112;
        v24 += v112;
        v28 = v30 + 1;
        v27 = i;
        if ((v110 & 1) != a3)
        {
          goto LABEL_9;
        }
      }

      v22 = v27;
LABEL_9:
      if (v110)
      {
        if (v22 < v103)
        {
          goto LABEL_132;
        }

        if (v103 >= v22)
        {
          v20 = v103;
        }

        else
        {
          i = v21;
          v101 = v5;
          if (v27 >= v30)
          {
            v33 = v30;
          }

          else
          {
            v33 = v27;
          }

          v34 = v112 * (v33 - 1);
          v35 = v112 * v33;
          v36 = v103 * v112;
          v37 = v22;
          v38 = v103;
          do
          {
            if (v38 != --v22)
            {
              a3 = *v113;
              if (!*v113)
              {
                goto LABEL_139;
              }

              sub_231E07790(a3 + v36, v107, type metadata accessor for SpotlightReader.MessageWithDate);
              v39 = v36 < v34 || a3 + v36 >= a3 + v35;
              if (v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_231E07790(v107, a3 + v34, type metadata accessor for SpotlightReader.MessageWithDate);
            }

            ++v38;
            v34 -= v112;
            v35 -= v112;
            v36 += v112;
          }

          while (v38 < v22);
          v5 = v101;
          v21 = i;
          v20 = v103;
          v22 = v37;
        }
      }

      else
      {
        v20 = v103;
      }
    }

    v40 = v113[1];
    if (v22 < v40)
    {
      if (__OFSUB__(v22, v20))
      {
        goto LABEL_131;
      }

      if (v22 - v20 < v102)
      {
        break;
      }
    }

LABEL_47:
    if (v22 < v20)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_231CF0DE4(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
    }

    a3 = *(v21 + 16);
    v53 = *(v21 + 24);
    v54 = a3 + 1;
    v112 = v22;
    if (a3 >= v53 >> 1)
    {
      result = sub_231CF0DE4((v53 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 16) = v54;
    v55 = v21 + 32;
    v56 = (v21 + 32 + 16 * a3);
    v57 = v112;
    *v56 = v20;
    v56[1] = v57;
    v110 = *v104;
    if (!v110)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      i = v21;
      while (1)
      {
        v58 = v54 - 1;
        v59 = (v55 + 16 * (v54 - 1));
        v60 = (v21 + 16 * v54);
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v61 = *(v21 + 32);
          v62 = *(v21 + 40);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_68:
          if (v64)
          {
            goto LABEL_117;
          }

          v76 = *v60;
          v75 = v60[1];
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_120;
          }

          v80 = v59[1];
          v81 = v80 - *v59;
          if (__OFSUB__(v80, *v59))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v78, v81))
          {
            goto LABEL_125;
          }

          if (v78 + v81 >= v63)
          {
            if (v63 < v81)
            {
              v58 = v54 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v54 < 2)
        {
          goto LABEL_119;
        }

        v83 = *v60;
        v82 = v60[1];
        v71 = __OFSUB__(v82, v83);
        v78 = v82 - v83;
        v79 = v71;
LABEL_83:
        if (v79)
        {
          goto LABEL_122;
        }

        v85 = *v59;
        v84 = v59[1];
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_124;
        }

        if (v86 < v78)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v58 - 1 >= v54)
        {
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v113)
        {
          goto LABEL_137;
        }

        a3 = v18;
        v90 = (v55 + 16 * (v58 - 1));
        v91 = *v90;
        v92 = v58;
        v93 = (v55 + 16 * v58);
        v21 = v93[1];
        sub_231E0634C(*v113 + *(v111 + 72) * *v90, *v113 + *(v111 + 72) * *v93, *v113 + *(v111 + 72) * v21, v110);
        if (v5)
        {
        }

        if (v21 < v91)
        {
          goto LABEL_112;
        }

        v5 = *(i + 16);
        if (v92 > v5)
        {
          goto LABEL_113;
        }

        *v90 = v91;
        v90[1] = v21;
        if (v92 >= v5)
        {
          goto LABEL_114;
        }

        v54 = v5 - 1;
        result = memmove(v93, v93 + 2, 16 * (v5 - 1 - v92));
        v21 = i;
        *(i + 16) = v5 - 1;
        v94 = v5 > 2;
        v5 = 0;
        v18 = a3;
        if (!v94)
        {
          goto LABEL_97;
        }
      }

      v65 = v55 + 16 * v54;
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_115;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_116;
      }

      v72 = v60[1];
      v73 = v72 - *v60;
      if (__OFSUB__(v72, *v60))
      {
        goto LABEL_118;
      }

      v71 = __OFADD__(v63, v73);
      v74 = v63 + v73;
      if (v71)
      {
        goto LABEL_121;
      }

      if (v74 >= v68)
      {
        v88 = *v59;
        v87 = v59[1];
        v71 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v71)
        {
          goto LABEL_129;
        }

        if (v63 < v89)
        {
          v58 = v54 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v20 = v112;
    v19 = v113[1];
    if (v112 >= v19)
    {
      goto LABEL_100;
    }
  }

  v41 = v20 + v102;
  if (__OFADD__(v20, v102))
  {
    goto LABEL_133;
  }

  if (v41 >= v40)
  {
    v41 = v113[1];
  }

  if (v41 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v22 == v41)
  {
    goto LABEL_47;
  }

  i = v21;
  v101 = v5;
  a3 = *v113;
  v42 = *(v111 + 72);
  v43 = *v113 + v42 * (v22 - 1);
  v44 = -v42;
  v103 = v20;
  v45 = v20 - v22;
  v105 = v42;
  v106 = v41;
  v46 = a3 + v22 * v42;
LABEL_40:
  v112 = v22;
  v108 = v46;
  v109 = v45;
  v110 = v43;
  v47 = v43;
  v48 = v117;
  while (1)
  {
    sub_231E0822C(v46, v18);
    v49 = v116;
    sub_231E0822C(v47, v116);
    v50 = *(v48 + 20);
    v51 = sub_231E0F8D0();
    sub_231E0787C(v49);
    result = sub_231E0787C(v18);
    if ((v51 & 1) == 0)
    {
LABEL_45:
      v22 = v112 + 1;
      v43 = v110 + v105;
      v45 = v109 - 1;
      v46 = v108 + v105;
      if (v112 + 1 == v106)
      {
        v22 = v106;
        v5 = v101;
        v21 = i;
        v20 = v103;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!a3)
    {
      break;
    }

    v52 = v115;
    sub_231E07790(v46, v115, type metadata accessor for SpotlightReader.MessageWithDate);
    v48 = v117;
    swift_arrayInitWithTakeFrontToBack();
    sub_231E07790(v52, v47, type metadata accessor for SpotlightReader.MessageWithDate);
    v47 += v44;
    v46 += v44;
    v39 = __CFADD__(v45++, 1);
    if (v39)
    {
      goto LABEL_45;
    }
  }

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
  return result;
}

uint64_t sub_231E04A9C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v144 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v165 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v172 = &v141 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v153 = &v141 - v13;
  MEMORY[0x28223BE20](v12);
  v159 = &v141 - v14;
  v15 = sub_231E10BE0();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v150 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v164 = &v141 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v141 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v171 = &v141 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v141 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v158 = &v141 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v143 = &v141 - v32;
  result = MEMORY[0x28223BE20](v31);
  v142 = &v141 - v35;
  v156 = v34;
  v157 = a3;
  v36 = *(a3 + 8);
  if (v36 >= 1)
  {
    v37 = 0;
    v168 = (v34 + 8);
    v169 = v34 + 16;
    v166 = (v34 + 32);
    v145 = MEMORY[0x277D84F90];
    v146 = a4;
    v170 = v15;
    v167 = v23;
    v151 = v28;
    while (1)
    {
      v38 = v37 + 1;
      v149 = v37;
      if (v37 + 1 < v36)
      {
        v39 = v37;
        v161 = v37 + 1;
        v162 = v36;
        v40 = *v157;
        v41 = *(v34 + 72);
        v42 = *v157 + v41 * v38;
        v43 = *(v34 + 16);
        v44 = v142;
        v43(v142, v42, v15);
        v163 = v40;
        v45 = v40 + v41 * v39;
        v46 = v143;
        v154 = v43;
        v43(v143, v45, v15);
        LODWORD(v155) = sub_231DFDD54();
        if (v160)
        {
          v140 = *v168;
          (*v168)(v46, v15);
          v140(v44, v15);
        }

        v47 = *v168;
        (*v168)(v46, v15);
        v152 = v47;
        result = (v47)(v44, v15);
        v48 = v39 + 2;
        v49 = v162;
        a3 = v163 + v41 * (v39 + 2);
        v38 = v161;
        v50 = v41;
        v163 = v41;
        while (1)
        {
          v51 = v48;
          if (v38 + 1 >= v49)
          {
            break;
          }

          v161 = v38;
          v52 = v154;
          (v154)(v158, a3, v15);
          v52(v28, v42, v15);
          v53 = v159;
          sub_231E10B70();
          v54 = sub_231E0F950();
          result = __swift_getEnumTagSinglePayload(v53, 1, v54);
          if (result == 1)
          {
            goto LABEL_147;
          }

          v55 = v51;
          v56 = v153;
          sub_231E10B70();
          result = __swift_getEnumTagSinglePayload(v56, 1, v54);
          if (result == 1)
          {
            goto LABEL_148;
          }

          v57 = v28;
          v58 = v159;
          v59 = sub_231E0F8D0() & 1;
          v60 = *(*(v54 - 8) + 8);
          v60(v56, v54);
          v60(v58, v54);
          v15 = v170;
          v61 = v152;
          v152(v57, v170);
          result = v61(v158, v15);
          v50 = v163;
          a3 += v163;
          v42 += v163;
          v38 = v161 + 1;
          v51 = v55;
          v48 = v55 + 1;
          v28 = v57;
          v49 = v162;
          if ((v155 & 1) != v59)
          {
            goto LABEL_12;
          }
        }

        v38 = v49;
LABEL_12:
        if ((v155 & 1) == 0)
        {
          a4 = v146;
LABEL_33:
          v23 = v167;
          goto LABEL_34;
        }

        v62 = v149;
        a4 = v146;
        if (v38 < v149)
        {
          goto LABEL_142;
        }

        if (v149 >= v38)
        {
          goto LABEL_33;
        }

        if (v49 >= v51)
        {
          v63 = v51;
        }

        else
        {
          v63 = v49;
        }

        v64 = v50 * (v63 - 1);
        v65 = v38;
        v66 = v50 * v63;
        v67 = v149 * v50;
        v161 = v65;
        do
        {
          if (v62 != --v65)
          {
            v68 = *v157;
            if (!*v157)
            {
              goto LABEL_151;
            }

            a3 = v68 + v67;
            v69 = *v166;
            v70 = v170;
            (*v166)(v150, v68 + v67, v170);
            v71 = v67 < v64 || a3 >= v68 + v66;
            if (v71)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v67 != v64)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v69)(v68 + v64, v150, v70);
            a4 = v146;
            v50 = v163;
          }

          ++v62;
          v64 -= v50;
          v66 -= v50;
          v67 += v50;
        }

        while (v62 < v65);
        v15 = v170;
        v23 = v167;
        v28 = v151;
        v38 = v161;
      }

LABEL_34:
      v72 = v157[1];
      if (v38 < v72)
      {
        if (__OFSUB__(v38, v149))
        {
          goto LABEL_139;
        }

        if (v38 - v149 < a4)
        {
          v73 = v149 + a4;
          if (__OFADD__(v149, a4))
          {
            goto LABEL_140;
          }

          if (v73 >= v72)
          {
            v73 = v157[1];
          }

          v74 = v165;
          if (v73 >= v149)
          {
            if (v38 == v73)
            {
              goto LABEL_54;
            }

            v75 = *v157;
            v76 = *(v156 + 72);
            v77 = *(v156 + 16);
            v78 = *v157 + v76 * (v38 - 1);
            v162 = -v76;
            v79 = (v149 - v38);
            v163 = v75;
            v147 = v76;
            a3 = v75 + v38 * v76;
            v148 = v73;
LABEL_43:
            v161 = v38;
            v152 = a3;
            v154 = v79;
            v155 = v78;
            while (1)
            {
              v77(v171, a3, v15);
              v77(v23, v78, v15);
              v80 = v172;
              sub_231E10B70();
              v81 = sub_231E0F950();
              result = __swift_getEnumTagSinglePayload(v80, 1, v81);
              if (result == 1)
              {
                goto LABEL_145;
              }

              sub_231E10B70();
              result = __swift_getEnumTagSinglePayload(v74, 1, v81);
              if (result == 1)
              {
                break;
              }

              v82 = v172;
              v83 = sub_231E0F8D0();
              v84 = *(*(v81 - 8) + 8);
              v84(v74, v81);
              v85 = v82;
              v23 = v167;
              v84(v85, v81);
              v86 = *v168;
              v15 = v170;
              (*v168)(v23, v170);
              result = (v86)(v171, v15);
              if ((v83 & 1) == 0)
              {
                v74 = v165;
LABEL_52:
                v38 = v161 + 1;
                v78 = v155 + v147;
                v79 = v154 - 1;
                a3 = v152 + v147;
                if (v161 + 1 == v148)
                {
                  v38 = v148;
                  v28 = v151;
                  goto LABEL_54;
                }

                goto LABEL_43;
              }

              if (!v163)
              {
                goto LABEL_146;
              }

              v87 = *v166;
              v88 = v164;
              (*v166)(v164, a3, v15);
              swift_arrayInitWithTakeFrontToBack();
              v87(v78, v88, v15);
              v78 += v162;
              a3 += v162;
              v71 = __CFADD__(v79++, 1);
              v74 = v165;
              if (v71)
              {
                goto LABEL_52;
              }
            }

            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          result = sub_231CF1D4C(v38);
          v38 = result;
LABEL_109:
          v131 = v38;
          v133 = *(v38 + 16);
          v38 += 16;
          for (i = v133; i >= 2; *v38 = i)
          {
            if (!*v157)
            {
              goto LABEL_150;
            }

            v134 = (v131 + 16 * i);
            v135 = *v134;
            v136 = (v38 + 16 * i);
            v137 = v136[1];
            v138 = v160;
            sub_231E067CC(*v157 + *(v156 + 72) * *v134, *v157 + *(v156 + 72) * *v136, *v157 + *(v156 + 72) * v137, a3);
            v160 = v138;
            if (v138)
            {
              break;
            }

            if (v137 < v135)
            {
              goto LABEL_134;
            }

            if (i - 2 >= *v38)
            {
              goto LABEL_135;
            }

            *v134 = v135;
            v134[1] = v137;
            v139 = *v38 - i;
            if (*v38 < i)
            {
              goto LABEL_136;
            }

            i = *v38 - 1;
            result = memmove(v136, v136 + 2, 16 * v139);
          }
        }
      }

LABEL_54:
      v89 = v145;
      if (v38 < v149)
      {
        goto LABEL_138;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_231CF0DE4(0, *(v89 + 16) + 1, 1, v89);
        v89 = result;
      }

      a3 = *(v89 + 16);
      v90 = *(v89 + 24);
      v91 = a3 + 1;
      v161 = v38;
      if (a3 >= v90 >> 1)
      {
        result = sub_231CF0DE4((v90 > 1), a3 + 1, 1, v89);
        v89 = result;
      }

      *(v89 + 16) = v91;
      v38 = v89 + 32;
      v92 = (v89 + 32 + 16 * a3);
      v93 = v161;
      *v92 = v149;
      v92[1] = v93;
      v163 = *v144;
      if (!v163)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (a3)
      {
        while (1)
        {
          v94 = v91 - 1;
          v95 = (v38 + 16 * (v91 - 1));
          v96 = (v89 + 16 * v91);
          if (v91 >= 4)
          {
            break;
          }

          if (v91 == 3)
          {
            v97 = *(v89 + 32);
            v98 = *(v89 + 40);
            v107 = __OFSUB__(v98, v97);
            v99 = v98 - v97;
            v100 = v107;
LABEL_74:
            if (v100)
            {
              goto LABEL_125;
            }

            v112 = *v96;
            v111 = v96[1];
            v113 = __OFSUB__(v111, v112);
            v114 = v111 - v112;
            v115 = v113;
            if (v113)
            {
              goto LABEL_128;
            }

            v116 = v95[1];
            v117 = v116 - *v95;
            if (__OFSUB__(v116, *v95))
            {
              goto LABEL_131;
            }

            if (__OFADD__(v114, v117))
            {
              goto LABEL_133;
            }

            if (v114 + v117 >= v99)
            {
              if (v99 < v117)
              {
                v94 = v91 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          if (v91 < 2)
          {
            goto LABEL_127;
          }

          v119 = *v96;
          v118 = v96[1];
          v107 = __OFSUB__(v118, v119);
          v114 = v118 - v119;
          v115 = v107;
LABEL_89:
          if (v115)
          {
            goto LABEL_130;
          }

          v121 = *v95;
          v120 = v95[1];
          v107 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v107)
          {
            goto LABEL_132;
          }

          if (v122 < v114)
          {
            goto LABEL_103;
          }

LABEL_96:
          if (v94 - 1 >= v91)
          {
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
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (!*v157)
          {
            goto LABEL_149;
          }

          v126 = (v38 + 16 * (v94 - 1));
          v127 = *v126;
          a3 = v38 + 16 * v94;
          v128 = *(a3 + 8);
          v129 = v160;
          sub_231E067CC(*v157 + *(v156 + 72) * *v126, *v157 + *(v156 + 72) * *a3, *v157 + *(v156 + 72) * v128, v163);
          v160 = v129;
          if (v129)
          {
          }

          if (v128 < v127)
          {
            goto LABEL_120;
          }

          v130 = *(v89 + 16);
          if (v94 > v130)
          {
            goto LABEL_121;
          }

          *v126 = v127;
          v126[1] = v128;
          if (v94 >= v130)
          {
            goto LABEL_122;
          }

          v91 = v130 - 1;
          result = memmove((v38 + 16 * v94), (a3 + 16), 16 * (v130 - 1 - v94));
          *(v89 + 16) = v130 - 1;
          v15 = v170;
          v23 = v167;
          v28 = v151;
          if (v130 <= 2)
          {
            goto LABEL_103;
          }
        }

        v101 = v38 + 16 * v91;
        v102 = *(v101 - 64);
        v103 = *(v101 - 56);
        v107 = __OFSUB__(v103, v102);
        v104 = v103 - v102;
        if (v107)
        {
          goto LABEL_123;
        }

        v106 = *(v101 - 48);
        v105 = *(v101 - 40);
        v107 = __OFSUB__(v105, v106);
        v99 = v105 - v106;
        v100 = v107;
        if (v107)
        {
          goto LABEL_124;
        }

        v108 = v96[1];
        v109 = v108 - *v96;
        if (__OFSUB__(v108, *v96))
        {
          goto LABEL_126;
        }

        v107 = __OFADD__(v99, v109);
        v110 = v99 + v109;
        if (v107)
        {
          goto LABEL_129;
        }

        if (v110 >= v104)
        {
          v124 = *v95;
          v123 = v95[1];
          v107 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v107)
          {
            goto LABEL_137;
          }

          if (v99 < v125)
          {
            v94 = v91 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_74;
      }

LABEL_103:
      v145 = v89;
      v34 = v156;
      v36 = v157[1];
      v37 = v161;
      a4 = v146;
      if (v161 >= v36)
      {
        goto LABEL_107;
      }
    }
  }

  v145 = MEMORY[0x277D84F90];
LABEL_107:
  a3 = *v144;
  if (*v144)
  {
    v38 = v145;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_109;
    }

    goto LABEL_143;
  }

LABEL_153:
  __break(1u);
  return result;
}

void sub_231E05790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_35_1();
  v173 = v24;
  v174 = v25;
  v199 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v163 = v33;
  v172 = a22;
  v171 = a21;
  v198 = sub_231E0F950();
  v34 = OUTLINED_FUNCTION_24(v198);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_139();
  v197 = v39;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_5();
  v196 = v41;
  v42 = OUTLINED_FUNCTION_3_0();
  v43 = v28(v42);
  v44 = OUTLINED_FUNCTION_24(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_0();
  v187 = v48;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10_0();
  v195 = v50;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_5();
  v194 = v53;
  v175 = v52;
  v176 = v32;
  v54 = v32[1];
  if (v54 < 1)
  {
    v56 = MEMORY[0x277D84F90];
    v57 = v22;
LABEL_100:
    v23 = *v163;
    if (!*v163)
    {
      goto LABEL_141;
    }

    v59 = v57;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v154 = v56 + 16;
      v155 = *(v56 + 2);
      v156 = v59;
      while (v155 >= 2)
      {
        if (!*v176)
        {
          goto LABEL_138;
        }

        v59 = v56;
        v157 = &v56[16 * v155];
        v56 = *v157;
        v158 = &v154[2 * v155];
        v159 = v158[1];
        OUTLINED_FUNCTION_104_5(*v176 + *(v175 + 72) * *v157, *v176 + *(v175 + 72) * *v158, *v176 + *(v175 + 72) * v159, v23, v173, v174, v152, v153, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
        if (v156)
        {
          break;
        }

        if (v159 < v56)
        {
          goto LABEL_126;
        }

        if (v155 - 2 >= *v154)
        {
          goto LABEL_127;
        }

        *v157 = v56;
        *(v157 + 1) = v159;
        v160 = *v154 - v155;
        if (*v154 < v155)
        {
          goto LABEL_128;
        }

        v155 = *v154 - 1;
        memmove(v158, v158 + 2, 16 * v160);
        *v154 = v155;
        v56 = v59;
      }

LABEL_110:

      OUTLINED_FUNCTION_33_0();
      return;
    }

LABEL_135:
    v56 = sub_231CF1D4C(v56);
    goto LABEL_102;
  }

  v161 = v30;
  v55 = 0;
  v192 = (v36 + 8);
  v190 = (v52 + 32);
  v191 = (v52 + 8);
  v56 = MEMORY[0x277D84F90];
  v193 = v43;
  v57 = v22;
  while (1)
  {
    v58 = v55;
    v59 = v55 + 1;
    if (v55 + 1 < v54)
    {
      v162 = v56;
      v177 = v57;
      v180 = v55 + 1;
      v60 = *v176;
      v200 = *v176;
      v61 = *(v52 + 72);
      v62 = v55;
      v164 = v55;
      v63 = *v176 + v61 * v59;
      v64 = *(v52 + 16);
      v65 = OUTLINED_FUNCTION_45_6();
      v183 = v66;
      v64(v65);
      v23 = v195;
      v169 = v64;
      v67 = (v64)(v195, v60 + v61 * v62, v43);
      v56 = v196;
      v68 = v199(v67);
      v199(v68);
      LODWORD(v170) = sub_231E0F8E0();
      v69 = v43;
      v70 = *v192;
      (*v192)(v197, v198);
      v168 = v70;
      v70(v196, v198);
      v71 = *(v175 + 8);
      v71(v195, v69);
      v167 = v71;
      v71(v194, v69);
      v72 = v183;
      v73 = v164 + 2;
      v185 = v61;
      v74 = v200 + v61 * (v164 + 2);
      while (1)
      {
        v75 = v73;
        if (++v180 >= v72)
        {
          break;
        }

        v23 = v194;
        v201 = v73;
        v169(v194, v74, v193);
        v76 = OUTLINED_FUNCTION_45_6();
        v77 = (v169)(v76);
        v78 = v199(v77);
        v199(v78);
        v188 = sub_231E0F8E0() & 1;
        v56 = v192;
        v70(v197, v198);
        v79 = OUTLINED_FUNCTION_59();
        (v70)(v79);
        v71(v195, v193);
        v71(v194, v193);
        v75 = v201;
        v72 = v183;
        v74 += v185;
        v63 += v185;
        v73 = v201 + 1;
        if ((v170 & 1) != v188)
        {
          goto LABEL_9;
        }
      }

      v180 = v72;
LABEL_9:
      if (v170)
      {
        v59 = v180;
        v58 = v164;
        v43 = v193;
        if (v180 < v164)
        {
          goto LABEL_132;
        }

        if (v164 >= v180)
        {
          OUTLINED_FUNCTION_89_7();
          goto LABEL_32;
        }

        if (v72 >= v75)
        {
          v80 = v75;
        }

        else
        {
          v80 = v72;
        }

        v81 = v185 * (v80 - 1);
        v82 = v185 * v80;
        v83 = v180;
        v84 = v164;
        v85 = v164 * v185;
        v57 = v177;
        v52 = v175;
        do
        {
          if (v84 != --v83)
          {
            v23 = *v176;
            if (!*v176)
            {
              goto LABEL_139;
            }

            v86 = v57;
            v202 = *v190;
            (*v190)(v166, v23 + v85, v193);
            v87 = v85 < v81 || v23 + v85 >= (v23 + v82);
            if (v87)
            {
              OUTLINED_FUNCTION_65_9();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v85 != v81)
            {
              OUTLINED_FUNCTION_65_9();
              swift_arrayInitWithTakeBackToFront();
            }

            v202(v23 + v81, v166, v193);
            v57 = v86;
            v52 = v175;
          }

          ++v84;
          v81 -= v185;
          v82 -= v185;
          v85 += v185;
        }

        while (v84 < v83);
        v56 = v162;
      }

      else
      {
        OUTLINED_FUNCTION_89_7();
        v43 = v193;
      }

      v59 = v180;
      v58 = v164;
    }

LABEL_32:
    v88 = v176[1];
    if (v59 < v88)
    {
      if (__OFSUB__(v59, v58))
      {
        goto LABEL_131;
      }

      if (v59 - v58 < v161)
      {
        break;
      }
    }

LABEL_48:
    if (v59 < v58)
    {
      goto LABEL_130;
    }

    v179 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = *(v56 + 2);
      v144 = OUTLINED_FUNCTION_0_1();
      v56 = sub_231CF0DE4(v144, v145, v146, v56);
    }

    v102 = *(v56 + 2);
    v103 = v102 + 1;
    v52 = v175;
    if (v102 >= *(v56 + 3) >> 1)
    {
      OUTLINED_FUNCTION_32_12();
      v151 = sub_231CF0DE4(v147, v148, v149, v150);
      v52 = v175;
      v56 = v151;
    }

    *(v56 + 2) = v103;
    v104 = v56 + 32;
    v105 = &v56[16 * v102 + 32];
    *v105 = v58;
    *(v105 + 1) = v59;
    v204 = *v163;
    if (!*v163)
    {
      goto LABEL_140;
    }

    v182 = v59;
    if (v102)
    {
      while (1)
      {
        v106 = v103 - 1;
        v107 = &v104[16 * v103 - 16];
        v108 = &v56[16 * v103];
        if (v103 >= 4)
        {
          break;
        }

        if (v103 == 3)
        {
          v109 = *(v56 + 4);
          v110 = *(v56 + 5);
          v119 = __OFSUB__(v110, v109);
          v111 = v110 - v109;
          v112 = v119;
LABEL_68:
          if (v112)
          {
            goto LABEL_117;
          }

          v124 = *v108;
          v123 = *(v108 + 1);
          v125 = __OFSUB__(v123, v124);
          v126 = v123 - v124;
          v127 = v125;
          if (v125)
          {
            goto LABEL_120;
          }

          v128 = *(v107 + 1);
          v129 = v128 - *v107;
          if (__OFSUB__(v128, *v107))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v126, v129))
          {
            goto LABEL_125;
          }

          if (v126 + v129 >= v111)
          {
            if (v111 < v129)
            {
              v106 = v103 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v103 < 2)
        {
          goto LABEL_119;
        }

        v131 = *v108;
        v130 = *(v108 + 1);
        v119 = __OFSUB__(v130, v131);
        v126 = v130 - v131;
        v127 = v119;
LABEL_83:
        if (v127)
        {
          goto LABEL_122;
        }

        v133 = *v107;
        v132 = *(v107 + 1);
        v119 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v119)
        {
          goto LABEL_124;
        }

        if (v134 < v126)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v106 - 1 >= v103)
        {
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v176)
        {
          goto LABEL_137;
        }

        v138 = &v104[16 * v106 - 16];
        v139 = *v138;
        v23 = v104;
        v140 = &v104[16 * v106];
        v141 = *(v140 + 1);
        OUTLINED_FUNCTION_104_5(*v176 + *(v52 + 72) * *v138, *v176 + *(v52 + 72) * *v140, *v176 + *(v52 + 72) * v141, v204, v173, v174, v100, v101, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
        if (v179)
        {
          goto LABEL_110;
        }

        if (v141 < v139)
        {
          goto LABEL_112;
        }

        v59 = v56;
        v56 = *(v56 + 2);
        if (v106 > v56)
        {
          goto LABEL_113;
        }

        *v138 = v139;
        *(v138 + 1) = v141;
        if (v106 >= v56)
        {
          goto LABEL_114;
        }

        v179 = 0;
        v103 = (v56 - 1);
        memmove(v140, v140 + 16, 16 * &v56[-v106 - 1]);
        *(v59 + 16) = v56 - 1;
        v142 = v56 > 2;
        v56 = v59;
        v52 = v175;
        v104 = v23;
        if (!v142)
        {
          goto LABEL_97;
        }
      }

      v113 = &v104[16 * v103];
      v114 = *(v113 - 8);
      v115 = *(v113 - 7);
      v119 = __OFSUB__(v115, v114);
      v116 = v115 - v114;
      if (v119)
      {
        goto LABEL_115;
      }

      v118 = *(v113 - 6);
      v117 = *(v113 - 5);
      v119 = __OFSUB__(v117, v118);
      v111 = v117 - v118;
      v112 = v119;
      if (v119)
      {
        goto LABEL_116;
      }

      v120 = *(v108 + 1);
      v121 = v120 - *v108;
      if (__OFSUB__(v120, *v108))
      {
        goto LABEL_118;
      }

      v119 = __OFADD__(v111, v121);
      v122 = v111 + v121;
      if (v119)
      {
        goto LABEL_121;
      }

      if (v122 >= v116)
      {
        v136 = *v107;
        v135 = *(v107 + 1);
        v119 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v119)
        {
          goto LABEL_129;
        }

        if (v111 < v137)
        {
          v106 = v103 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v57 = v179;
    v54 = v176[1];
    v55 = v182;
    if (v182 >= v54)
    {
      goto LABEL_100;
    }
  }

  v89 = v58 + v161;
  if (__OFADD__(v58, v161))
  {
    goto LABEL_133;
  }

  if (v89 >= v88)
  {
    v89 = v176[1];
  }

  if (v89 < v58)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v59 == v89)
  {
    goto LABEL_48;
  }

  v162 = v56;
  v178 = v57;
  v90 = *(v52 + 72);
  v189 = *(v52 + 16);
  v91 = *v176 + v90 * (v59 - 1);
  v184 = -v90;
  v164 = v58;
  v23 = v58 - v59;
  v186 = *v176;
  v165 = v90;
  v92 = *v176 + v59 * v90;
  v167 = v89;
LABEL_41:
  v181 = v59;
  v168 = v92;
  v169 = v23;
  v170 = v91;
  while (1)
  {
    v93 = OUTLINED_FUNCTION_45_6();
    v189(v93);
    v94 = (v189)(v195, v91, v43);
    v95 = v199(v94);
    v199(v95);
    v203 = sub_231E0F8E0();
    v96 = *v192;
    (*v192)(v197, v198);
    v43 = v193;
    v96(v196, v198);
    v97 = *v191;
    v98 = OUTLINED_FUNCTION_86_8();
    v97(v98);
    (v97)(v194, v193);
    if ((v203 & 1) == 0)
    {
LABEL_46:
      v59 = v181 + 1;
      v91 = v170 + v165;
      v23 = v169 - 1;
      v92 = v168 + v165;
      if (v181 + 1 == v167)
      {
        v59 = v167;
        v57 = v178;
        v58 = v164;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v186)
    {
      break;
    }

    v99 = *v190;
    (*v190)(v187, v92, v193);
    OUTLINED_FUNCTION_41_3();
    swift_arrayInitWithTakeFrontToBack();
    v99(v91, v187, v193);
    v91 += v184;
    v92 += v184;
    v87 = __CFADD__(v23++, 1);
    if (v87)
    {
      goto LABEL_46;
    }
  }

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
}

uint64_t sub_231E0634C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v9 = *(*(v53 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = v47 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v56 = a1;
  v55 = a4;
  v21 = v19 / v17;
  v47[1] = v4;
  if ((a2 - a1) / v17 >= v19 / v17)
  {
    sub_231E02618(a2, v19 / v17, a4, type metadata accessor for SpotlightReader.MessageWithDate);
    v28 = a4 + v21 * v17;
    v29 = -v17;
    v30 = v28;
    v31 = a3;
    v50 = v29;
    v51 = a4;
    v49 = a1;
LABEL_37:
    v32 = a2 + v29;
    v33 = v31;
    v47[0] = v30;
    v34 = v29;
    v52 = a2 + v29;
    while (1)
    {
      if (v28 <= a4)
      {
        v56 = a2;
        v54 = v30;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v30;
      v35 = v33 + v34;
      v36 = v28 + v34;
      v37 = v32;
      v38 = v28;
      sub_231E0822C(v28 + v34, v15);
      sub_231E0822C(v37, v12);
      v39 = *(v53 + 20);
      v40 = sub_231E0F8D0();
      v41 = v12;
      v42 = v40;
      v43 = v41;
      sub_231E0787C(v41);
      sub_231E0787C(v15);
      if (v42)
      {
        v47[0] = v38;
        v45 = v33 < a2 || v35 >= a2;
        v31 = v33 + v34;
        if (v45)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v48;
          a1 = v49;
          v12 = v43;
          v29 = v50;
          a4 = v51;
          v28 = v47[0];
        }

        else
        {
          a1 = v49;
          v30 = v48;
          v18 = v33 == a2;
          a2 = v52;
          v12 = v43;
          v29 = v50;
          a4 = v51;
          v28 = v47[0];
          if (!v18)
          {
            a2 = v52;
            v46 = v48;
            swift_arrayInitWithTakeBackToFront();
            v28 = v47[0];
            v30 = v46;
          }
        }

        goto LABEL_37;
      }

      if (v33 < v38 || v35 >= v38)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 += v34;
        v28 = v36;
        v30 = v36;
        v12 = v43;
        v34 = v50;
        a4 = v51;
        v32 = v52;
        a1 = v49;
      }

      else
      {
        v30 = v36;
        v18 = v38 == v33;
        v33 += v34;
        v28 = v36;
        v12 = v43;
        v34 = v50;
        a4 = v51;
        v32 = v52;
        a1 = v49;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v52;
          v33 = v35;
          v28 = v36;
          v30 = v36;
        }
      }
    }

    v56 = a2;
    v54 = v47[0];
  }

  else
  {
    sub_231E02618(a1, (a2 - a1) / v17, a4, type metadata accessor for SpotlightReader.MessageWithDate);
    v22 = a4 + (a2 - a1) / v17 * v17;
    v54 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_231E0822C(a2, v15);
      sub_231E0822C(a4, v12);
      v24 = *(v53 + 20);
      v25 = sub_231E0F8D0();
      sub_231E0787C(v12);
      sub_231E0787C(v15);
      if (v25)
      {
        if (a1 < a2 || a1 >= a2 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v17;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v55 = a4 + v17;
        a4 += v17;
      }

      a1 += v17;
      v56 = a1;
    }
  }

LABEL_59:
  sub_231E075D4(&v56, &v55, &v54, type metadata accessor for SpotlightReader.MessageWithDate);
  return 1;
}

uint64_t sub_231E067CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v93 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v95 = &v89 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v89 - v15;
  MEMORY[0x28223BE20](v14);
  v102 = &v89 - v16;
  v103 = sub_231E10BE0();
  v17 = *(*(v103 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v103);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v94 = &v89 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v89 - v24;
  result = MEMORY[0x28223BE20](v23);
  v101 = &v89 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
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
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_64;
  }

  v32 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_65;
  }

  v97 = a3;
  v34 = a2;
  v35 = (a2 - a1) / v30;
  v106 = a1;
  v105 = a4;
  v99 = (v27 + 8);
  v100 = (v27 + 16);
  v36 = v32 / v30;
  if (v35 >= v32 / v30)
  {
    v96 = a1;
    sub_231E02618(v34, v32 / v30, a4, MEMORY[0x277D42490]);
    v59 = a4;
    v60 = (a4 + v36 * v30);
    v61 = v34;
    v62 = -v30;
    v63 = v60;
    v64 = v97;
    v65 = v20;
    v91 = a4;
    v102 = v62;
LABEL_38:
    v66 = v61 + v62;
    v67 = v64;
    v89 = v63;
    v68 = v63;
    v92 = v61 + v62;
    while (1)
    {
      if (v60 <= v59)
      {
        v106 = v61;
        v104 = v68;
        goto LABEL_62;
      }

      if (v61 <= v96)
      {
        break;
      }

      v69 = v67;
      v90 = v68;
      v101 = v60;
      v70 = *v100;
      v97 = &v60[v62];
      v71 = v103;
      v70(v94);
      (v70)(v65, v66, v71);
      v72 = v95;
      sub_231E10B70();
      v73 = v65;
      v74 = sub_231E0F950();
      result = __swift_getEnumTagSinglePayload(v72, 1, v74);
      if (result == 1)
      {
        goto LABEL_68;
      }

      v75 = v103;
      v76 = v61;
      v77 = v93;
      sub_231E10B70();
      result = __swift_getEnumTagSinglePayload(v77, 1, v74);
      if (result == 1)
      {
        goto LABEL_69;
      }

      v78 = v69;
      v64 = &v102[v69];
      v79 = v95;
      LODWORD(v98) = sub_231E0F8D0();
      v80 = *(*(v74 - 8) + 8);
      v80(v77, v74);
      v80(v79, v74);
      v81 = *v99;
      (*v99)(v73, v75);
      v81(v94, v75);
      v65 = v73;
      if (v98)
      {
        v85 = v76;
        v86 = v78 < v76 || v64 >= v76;
        v59 = v91;
        v87 = v92;
        v60 = v101;
        if (v86)
        {
          swift_arrayInitWithTakeFrontToBack();
          v61 = v87;
          v63 = v90;
          v62 = v102;
        }

        else
        {
          v88 = v90;
          v63 = v90;
          v61 = v92;
          v62 = v102;
          if (v78 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
            v61 = v87;
            v63 = v88;
          }
        }

        goto LABEL_38;
      }

      v82 = v78 < v101 || v64 >= v101;
      v59 = v91;
      v66 = v92;
      v61 = v76;
      if (v82)
      {
        v83 = v97;
        swift_arrayInitWithTakeFrontToBack();
        v67 = v64;
        v60 = v83;
        v68 = v83;
        v62 = v102;
      }

      else
      {
        v84 = v97;
        v68 = v97;
        v67 = v64;
        v60 = v97;
        v62 = v102;
        if (v101 != v78)
        {
          swift_arrayInitWithTakeBackToFront();
          v67 = v64;
          v60 = v84;
          v68 = v84;
        }
      }
    }

    v106 = v61;
    v104 = v89;
  }

  else
  {
    sub_231E02618(a1, v35, a4, MEMORY[0x277D42490]);
    v95 = (a4 + v35 * v30);
    v104 = v95;
    v37 = v34;
    v98 = v30;
    while (a4 < v95 && v37 < v97)
    {
      v39 = *v100;
      v40 = v37;
      v41 = v37;
      v42 = v103;
      (*v100)(v101, v41, v103);
      (v39)(v25, a4, v42);
      v43 = v102;
      sub_231E10B70();
      v44 = sub_231E0F950();
      result = __swift_getEnumTagSinglePayload(v43, 1, v44);
      if (result == 1)
      {
        goto LABEL_66;
      }

      v45 = a4;
      v46 = v96;
      sub_231E10B70();
      result = __swift_getEnumTagSinglePayload(v46, 1, v44);
      if (result == 1)
      {
        goto LABEL_67;
      }

      v47 = v102;
      v48 = sub_231E0F8D0();
      v49 = v46;
      v50 = *(*(v44 - 8) + 8);
      v50(v49, v44);
      v50(v47, v44);
      v51 = *v99;
      v52 = v25;
      v53 = v25;
      v54 = v103;
      (*v99)(v53, v103);
      v51(v101, v54);
      if (v48)
      {
        v55 = v40;
        v56 = v98;
        v37 = v55 + v98;
        v57 = a1 < v55 || a1 >= v37;
        a4 = v45;
        if (v57)
        {
          swift_arrayInitWithTakeFrontToBack();
          v25 = v52;
        }

        else
        {
          v25 = v52;
          if (a1 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a4 = v45 + v98;
        v58 = a1 < v45 || a1 >= a4;
        v37 = v40;
        if (v58)
        {
          swift_arrayInitWithTakeFrontToBack();
          v25 = v52;
        }

        else
        {
          v25 = v52;
          if (a1 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v105 = a4;
        v56 = v98;
      }

      a1 += v56;
      v106 = a1;
    }
  }

LABEL_62:
  sub_231E075D4(&v106, &v105, &v104, MEMORY[0x277D42490]);
  return 1;
}

void sub_231E06F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35_1();
  a19 = v21;
  a20 = v22;
  v111 = v23;
  v124 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v123 = sub_231E0F950();
  v37 = OUTLINED_FUNCTION_24(v123);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_139();
  v122 = v42;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25_5();
  v121 = v44;
  v45 = OUTLINED_FUNCTION_3_0();
  v129 = v28(v45);
  v46 = *(*(v129 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v129);
  v120 = v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v126 = v110 - v50;
  v52 = *(v51 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v53 = v34 - v36 == 0x8000000000000000 && v52 == -1;
  if (v53)
  {
    goto LABEL_61;
  }

  v54 = v32 - v34;
  if (v32 - v34 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_62;
  }

  v56 = v26;
  v57 = v34;
  v110[1] = v20;
  v58 = (v34 - v36) / v52;
  a10 = v36;
  v131 = v30;
  v118 = (v39 + 8);
  v119 = (v49 + 16);
  v117 = (v49 + 8);
  v59 = v54 / v52;
  if (v58 >= v54 / v52)
  {
    v128 = v36;
    sub_231E02618(v34, v54 / v52, v30, v56);
    v114 = v30;
    v87 = v30 + v59 * v52;
    v88 = -v52;
    v89 = v87;
    v90 = v124;
    v113 = -v52;
LABEL_37:
    v115 = v57 + v88;
    v110[0] = v89;
    v127 = v57;
    while (1)
    {
      if (v87 <= v114)
      {
        a10 = v57;
        v130 = v89;
        goto LABEL_59;
      }

      if (v57 <= v128)
      {
        break;
      }

      v112 = v89;
      v125 = v32 + v88;
      v91 = v87 + v88;
      v92 = v87;
      v93 = *v119;
      v94 = v90;
      v95 = v129;
      v116 = v32;
      (v93)(v126, v91, v129);
      v96 = v120;
      v97 = (v93)(v120, v115, v95);
      v98 = v121;
      v99 = v94(v97);
      v100 = v122;
      v94(v99);
      LOBYTE(v94) = sub_231E0F8E0();
      v101 = *v118;
      v102 = v100;
      v103 = v123;
      (*v118)(v102, v123);
      v101(v98, v103);
      v104 = *v117;
      (*v117)(v96, v95);
      v104(v126, v95);
      if (v94)
      {
        v87 = v92;
        v32 = v125;
        if (v116 < v127 || v125 >= v127)
        {
          v57 = v115;
          OUTLINED_FUNCTION_28_13();
          swift_arrayInitWithTakeFrontToBack();
          v89 = v112;
          v88 = v113;
          v90 = v124;
        }

        else
        {
          v108 = v112;
          v89 = v112;
          v109 = v115;
          v57 = v115;
          v90 = v124;
          v88 = v113;
          if (v116 != v127)
          {
            OUTLINED_FUNCTION_28_13();
            swift_arrayInitWithTakeBackToFront();
            v57 = v109;
            v89 = v108;
          }
        }

        goto LABEL_37;
      }

      v105 = v125;
      if (v116 < v92 || v125 >= v92)
      {
        OUTLINED_FUNCTION_28_13();
        swift_arrayInitWithTakeFrontToBack();
        v32 = v105;
        v87 = v91;
        v89 = v91;
        v90 = v124;
        v57 = v127;
        v88 = v113;
      }

      else
      {
        v89 = v91;
        v53 = v92 == v116;
        v32 = v125;
        v87 = v91;
        v90 = v124;
        v57 = v127;
        v88 = v113;
        if (!v53)
        {
          OUTLINED_FUNCTION_28_13();
          swift_arrayInitWithTakeBackToFront();
          v32 = v105;
          v87 = v91;
          v89 = v91;
        }
      }
    }

    a10 = v57;
    v130 = v110[0];
  }

  else
  {
    v60 = OUTLINED_FUNCTION_41_3();
    sub_231E02618(v60, v61, v30, v62);
    v115 = v52;
    v116 = v30 + v58 * v52;
    v130 = v116;
    v63 = v34;
    v125 = v32;
    while (v30 < v116 && v63 < v32)
    {
      v127 = v63;
      v128 = v36;
      v65 = *v119;
      v66 = v126;
      v67 = OUTLINED_FUNCTION_41_3();
      v68 = v129;
      v65(v67);
      v69 = (v65)(v120, v30, v68);
      v70 = v121;
      v71 = v124;
      v72 = v124(v69);
      v73 = v122;
      v71(v72);
      v74 = sub_231E0F8E0();
      v75 = *v118;
      v76 = v73;
      v77 = v30;
      v78 = v123;
      (*v118)(v76, v123);
      v75(v70, v78);
      v79 = *v117;
      v80 = OUTLINED_FUNCTION_86_8();
      (v79)(v80);
      v79(v66, v68);
      if (v74)
      {
        v81 = v115;
        v82 = v128;
        v83 = v127 + v115;
        v84 = v128 < v127 || v128 >= v83;
        v30 = v77;
        if (v84)
        {
          OUTLINED_FUNCTION_19_13();
          swift_arrayInitWithTakeFrontToBack();
          v63 = v83;
          v32 = v125;
        }

        else
        {
          v32 = v125;
          if (v128 != v127)
          {
            OUTLINED_FUNCTION_19_13();
            swift_arrayInitWithTakeBackToFront();
          }

          v63 = v83;
        }
      }

      else
      {
        v63 = v127;
        v82 = v128;
        v81 = v115;
        v30 = v77 + v115;
        v85 = v128 < v77 || v128 >= v30;
        v86 = v77;
        if (v85)
        {
          OUTLINED_FUNCTION_19_13();
          swift_arrayInitWithTakeFrontToBack();
          v32 = v125;
        }

        else
        {
          v32 = v125;
          if (v128 != v86)
          {
            OUTLINED_FUNCTION_19_13();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v131 = v30;
      }

      v36 = v82 + v81;
      a10 = v36;
    }
  }

LABEL_59:
  sub_231E075D4(&a10, &v131, &v130, v111);
  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_231E075D4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  result = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  v12 = v5 + (v6 - v5) / v10 * v10;
  if (v4 < v5 || v4 >= v12)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_231E076B0(uint64_t a1, void *a2)
{
  v3 = sub_231E11850();

  [a2 setBundleIDs_];
}

void sub_231E0771C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231E115F0();

  [a3 setReason_];
}

void sub_231E07780()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_231DF99A0();
}

uint64_t sub_231E07790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_59_0();
  v8(v7);
  return a2;
}

unint64_t sub_231E077EC()
{
  result = qword_2814CB3F8[0];
  if (!qword_2814CB3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CB3F8);
  }

  return result;
}

void sub_231E07840()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_231DFB510();
}

void sub_231E0786C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_231DFC260();
}

uint64_t sub_231E0787C(uint64_t a1)
{
  v2 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_231E078D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_231DFD3DC();
}

void sub_231E078E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_231DFEA64();
}

void sub_231E07910(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  sub_231D164A4(v3, 1, a2);
}

uint64_t sub_231E07948(void *a1)
{
  v2 = [a1 providerDataTypeIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11870();

  return v3;
}

uint64_t sub_231E079AC(void *a1)
{
  v2 = [a1 containerIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

void sub_231E07A98()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_231E018EC();
}

unint64_t sub_231E07AA8()
{
  result = qword_27DD75988;
  if (!qword_27DD75988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75988);
  }

  return result;
}

unint64_t sub_231E07B00()
{
  result = qword_27DD75990;
  if (!qword_27DD75990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75990);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpotlightPrivateKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SpotlightReaderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231E07D04()
{
  result = sub_231E0F950();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231E0F950();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231E0F950();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231E07ED4()
{
  result = sub_231E0F950();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_231E07F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_100_8();
  a25 = v26;
  a26 = v28;
  v29 = v27;
  if (!(v27 >> 62))
  {
    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_9:
    OUTLINED_FUNCTION_102_6();
    return;
  }

  v30 = sub_231E11ED0();
  if (!v30)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v30 >= 1)
  {
    v31 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x23837D2A0](v31, v29);
      }

      else
      {
        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      v34 = [v32 uniqueIdentifier];
      v35 = sub_231E11620();
      v37 = v36;

      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      sub_231D42148(&a13, v35, v37);
      swift_endAccess();
    }

    while (v30 != v31);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231E08078(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8) - 8);
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8);
    return sub_231E11930();
  }

  else
  {
    v6 = *(v1 + ((((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
    swift_beginAccess();
    v7 = *(v6 + 16);

    sub_231DEC5AC(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8);
    return sub_231E11940();
  }
}

unint64_t sub_231E08180()
{
  result = qword_2814CAF28;
  if (!qword_2814CAF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814CAF28);
  }

  return result;
}

void sub_231E081C4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = objc_autoreleasePoolPush();
  sub_231DFD718();

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_231E0822C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_231E08290()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_25();
  sub_231DFC534();

  objc_autoreleasePoolPop(v3);
}

void sub_231E082F0()
{
  OUTLINED_FUNCTION_100_8();
  v2 = v1;
  v21 = objc_autoreleasePoolPush();
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
    objc_autoreleasePoolPop(v21);
    OUTLINED_FUNCTION_102_6();
    return;
  }

  OUTLINED_FUNCTION_62_8();
  v3 = sub_231E11ED0();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v22 = v2 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        v5 = OUTLINED_FUNCTION_59();
        v6 = MEMORY[0x23837D2A0](v5);
      }

      else
      {
        OUTLINED_FUNCTION_98_3();
        v6 = v7;
      }

      v8 = v6;
      v9 = [v6 uniqueIdentifier];
      sub_231E11620();

      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      v10 = *(v0 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 16) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = *(v10 + 16);
        v15 = OUTLINED_FUNCTION_0_1();
        v18 = sub_231CE0B9C(v15, v16, v17, v10);
        OUTLINED_FUNCTION_95_7(v18);
      }

      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        v19 = OUTLINED_FUNCTION_2_12(v12);
        v20 = sub_231CE0B9C(v19, v13 + 1, 1, v10);
        OUTLINED_FUNCTION_95_7(v20);
      }

      ++v4;
      OUTLINED_FUNCTION_105_7();
    }

    while (v3 != v4);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_231E08440()
{
  OUTLINED_FUNCTION_100_8();
  v2 = v1;
  v24 = objc_autoreleasePoolPush();
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_17:
    objc_autoreleasePoolPop(v24);
    OUTLINED_FUNCTION_102_6();
    return;
  }

  OUTLINED_FUNCTION_62_8();
  v3 = sub_231E11ED0();
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    do
    {
      if (v5)
      {
        v6 = OUTLINED_FUNCTION_59();
        v7 = MEMORY[0x23837D2A0](v6);
      }

      else
      {
        OUTLINED_FUNCTION_98_3();
        v7 = v8;
      }

      v9 = v7;
      v10 = [v7 attributeSet];
      v11 = [v10 summarizationStatus];

      if (v11)
      {
        v12 = [v9 uniqueIdentifier];
        sub_231E11620();

        OUTLINED_FUNCTION_45_5();
        swift_beginAccess();
        v13 = *(v0 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 16) = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = *(v13 + 16);
          v18 = OUTLINED_FUNCTION_0_1();
          v21 = sub_231CE0B9C(v18, v19, v20, v13);
          OUTLINED_FUNCTION_95_7(v21);
        }

        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          v22 = OUTLINED_FUNCTION_2_12(v15);
          v23 = sub_231CE0B9C(v22, v16 + 1, 1, v13);
          OUTLINED_FUNCTION_95_7(v23);
        }

        OUTLINED_FUNCTION_105_7();
      }

      ++v4;
    }

    while (v3 != v4);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t objectdestroy_80Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_12(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_231E08644(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  if (!a1)
  {
    return sub_231E11940();
  }

  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  return sub_231E11930();
}

uint64_t OUTLINED_FUNCTION_6_25(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

void OUTLINED_FUNCTION_7_28()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 144) = MEMORY[0x277D85DD0];
  *(v2 - 136) = v3;
}

__n128 OUTLINED_FUNCTION_47_9(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_11(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_62_8()
{
  if (v0 < 0)
  {
    return v0;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFFF8;
  }
}

uint64_t OUTLINED_FUNCTION_63_11@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  result = v1;
  v5 = *(v2 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_6()
{
}

uint64_t OUTLINED_FUNCTION_76_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_82_4(void *a1)
{

  return [a1 (v1 + 1144)];
}

void OUTLINED_FUNCTION_89_7()
{
  v1 = *(v0 - 224);
  v2 = *(v0 - 240);
  v3 = *(v0 - 344);
}

void OUTLINED_FUNCTION_104_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 272);
  v23 = *(v20 - 264);

  sub_231E06F9C(a1, a2, a3, a4, a5, a6, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_105_7()
{
  *(v3 + 16) = v4;
  v6 = v3 + 16 * v0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;

  return swift_endAccess();
}

void OUTLINED_FUNCTION_106_7()
{

  JUMPOUT(0x23837CC20);
}

uint64_t OUTLINED_FUNCTION_107_9(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_109_7()
{
  v2 = *(v0 - 104);
}

id OUTLINED_FUNCTION_110_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_111_6(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_112_6()
{
}

void OUTLINED_FUNCTION_113_4(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  sub_231E0771C(v4, a2, v2);
}

uint64_t sub_231E08B20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31[-v5];
  v7 = sub_231E10E30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [a1 personHandle];
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v12 type];
  if (v14)
  {
    if (v14 == 2)
    {
      v15 = MEMORY[0x277CBD098];
    }

    else
    {
      if (v14 != 1)
      {
        v17 = sub_231CB4EEC();
        (*(v8 + 16))(v11, v17, v7);
        v18 = v13;
        v19 = sub_231E10E10();
        v32 = sub_231E11AE0();
        if (os_log_type_enabled(v19, v32))
        {
          v20 = swift_slowAlloc();
          v21 = v18;
          v22 = v20;
          *v20 = 134217984;
          v23 = v21;
          *(v20 + 4) = [v21 type];

          _os_log_impl(&dword_231CAE000, v19, v32, "Unhandled person handle type: %ld", v22, 0xCu);
          MEMORY[0x23837E1D0](v22, -1, -1);
        }

        else
        {

          v19 = v18;
        }

        (*(v8 + 8))(v11, v7);
        goto LABEL_13;
      }

      v15 = MEMORY[0x277CBCFC0];
    }

    v16 = *v15;
    sub_231E11620();
  }

LABEL_13:
  v24 = [v13 value];
  if (v24)
  {
    v25 = v24;
    sub_231E11620();
  }

LABEL_17:
  v26 = [a1 displayName];
  sub_231E11620();

  sub_231E08EDC(a1);
  [a1 isMe];
  sub_231E103D0();

  v27 = sub_231E10400();
  if (__swift_getEnumTagSinglePayload(v6, 1, v27))
  {
    sub_231CC7038(v6);
    v28 = 1;
    v29 = v33;
  }

  else
  {
    v29 = v33;
    (*(*(v27 - 8) + 32))(v33, v6, v27);
    v28 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v29, v28, 1, v27);
}

uint64_t sub_231E08EDC(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231E08F74(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_231E09038(char a1)
{
  result = swift_beginAccess();
  *(v1 + 33) = a1;
  return result;
}

uint64_t sub_231E090CC()
{
  v0 = swift_allocObject();
  sub_231E0910C();
  return v0;
}

void sub_231E0910C()
{
  OUTLINED_FUNCTION_118();
  v2 = v0;
  v4 = v3;
  v49 = sub_231E10400();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v49);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  *(v2 + 32) = 0;
  v11 = *(v4 + 16);
  if (v11)
  {
    v41 = v8;
    v42 = v4;
    v43 = v2;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = v4 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v47 = *(v12 + 56);
    v48 = v13;
    v46 = (v12 - 8);
    v15 = MEMORY[0x277D84F90];
    v16 = v14;
    v17 = v11;
    v44 = v12;
    do
    {
      v18 = v49;
      v48(v10, v16, v49);
      sub_231E103B0();
      OUTLINED_FUNCTION_192();
      v45 = *v46;
      v45(v10, v18);
      if (v1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v15 + 2);
          v23 = OUTLINED_FUNCTION_0_1();
          v15 = sub_231CE0B9C(v23, v24, v25, v15);
        }

        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        if (v20 >= v19 >> 1)
        {
          v15 = OUTLINED_FUNCTION_24_13(v19);
        }

        *(v15 + 2) = v20 + 1;
        v21 = &v15[16 * v20];
        *(v21 + 4) = v12;
        *(v21 + 5) = v1;
      }

      v16 += v47;
      --v17;
      v12 = v44;
    }

    while (v17);
    v26 = sub_231D3FF4C(v15);
    v2 = v43;
    *(v43 + 16) = v26;
    v27 = MEMORY[0x277D84F90];
    v28 = v41;
    do
    {
      v29 = v49;
      v48(v28, v14, v49);
      v30 = sub_231E103F0();
      v32 = v31;
      v45(v28, v29);
      if (v32)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = *(v27 + 2);
          v37 = OUTLINED_FUNCTION_0_1();
          v27 = sub_231CE0B9C(v37, v38, v39, v27);
        }

        v34 = *(v27 + 2);
        v33 = *(v27 + 3);
        if (v34 >= v33 >> 1)
        {
          v27 = OUTLINED_FUNCTION_24_13(v33);
        }

        *(v27 + 2) = v34 + 1;
        v35 = &v27[16 * v34];
        *(v35 + 4) = v30;
        *(v35 + 5) = v32;
      }

      v14 += v47;
      --v11;
    }

    while (v11);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
    *(v2 + 16) = sub_231D3FF4C(MEMORY[0x277D84F90]);
  }

  *(v2 + 24) = sub_231D3FF4C(v27);
  OUTLINED_FUNCTION_113();
}

void sub_231E093D0()
{
  OUTLINED_FUNCTION_118();
  v3 = v1;
  v98 = v4;
  v99 = v5;
  v6 = OUTLINED_FUNCTION_25_12();
  v7 = OUTLINED_FUNCTION_0_23(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74540, &qword_231E23510);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_1_34(v16, v89);
  v18 = MEMORY[0x28223BE20](v17);
  v95 = &v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v96 = &v89 - v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_21();
  v22 = sub_231E113D0();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  v23 = sub_231E103F0();
  if (!v24)
  {
    goto LABEL_29;
  }

  v25 = v23;
  v26 = v24;
  v27 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v27 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    goto LABEL_29;
  }

  v93 = v9;
  v94 = v1;
  sub_231E103A0();
  if (!v28 || (v29 = sub_231E116D0(), v31 = v30, , !v31))
  {
    v29 = 0x726568746FLL;

    v31 = 0xE500000000000000;
  }

  v32 = *MEMORY[0x277CBCFC0];
  if (sub_231E11620() == v29 && v33 == v31)
  {

    goto LABEL_26;
  }

  v92 = v0;
  v35 = OUTLINED_FUNCTION_23_13();

  if (v35)
  {
LABEL_26:
    sub_231E0AD54(v2);

    *v2 = v25;
    v2[1] = v26;
    v43 = MEMORY[0x277D4B3A8];
LABEL_27:
    v42 = *v43;
    goto LABEL_28;
  }

  v36 = *MEMORY[0x277CBD098];
  if (sub_231E11620() == v29 && v37 == v31)
  {

    goto LABEL_44;
  }

  v39 = OUTLINED_FUNCTION_23_13();

  if (v39)
  {
LABEL_44:
    sub_231E0AD54(v2);

    *v2 = v25;
    v2[1] = v26;
    v43 = MEMORY[0x277D4B3A0];
    goto LABEL_27;
  }

  v40 = v29 == 0x726568746FLL && v31 == 0xE500000000000000;
  v41 = MEMORY[0x277D4B3B0];
  if (v40 || (OUTLINED_FUNCTION_23_13() & 1) != 0)
  {
    sub_231E0AD54(v2);

    *v2 = v25;
    v2[1] = v26;
    v42 = *v41;
LABEL_28:
    (*(*(v22 - 8) + 104))(v2, v42, v22);
    OUTLINED_FUNCTION_34_14();
    v3 = v94;
    goto LABEL_29;
  }

  v81 = sub_231CB4EEC();
  (*(v93 + 16))(v13, v81, v92);

  v82 = sub_231E10E10();
  v83 = sub_231E11AE0();

  v91 = v83;
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v90 = v82;
    v86 = v85;
    v100 = v85;
    *v84 = 136446210;
    v87 = sub_231CB5000(v29, v31, &v100);

    *(v84 + 4) = v87;
    v88 = v90;
    _os_log_impl(&dword_231CAE000, v90, v91, "Unknown handle type: %{public}s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v93 + 8))(v13, v92);
  sub_231E0AD54(v2);
  v3 = v94;
  *v2 = v25;
  v2[1] = v26;
  (*(*(v22 - 8) + 104))(v2, *MEMORY[0x277D4B3B0], v22);
  OUTLINED_FUNCTION_34_14();
LABEL_29:
  sub_231E103B0();
  if (!v44 || (sub_231E116D0(), v46 = v45, , !v46))
  {
LABEL_55:
    sub_231E103F0();
    if (!v63)
    {
      goto LABEL_72;
    }

    v64 = sub_231E116D0();
    v66 = v65;

    if (!v66)
    {
      goto LABEL_72;
    }

    v67 = sub_231E103E0();
    if (v68)
    {
      sub_231E116D0();
      v70 = v69;

      if (v70)
      {

        v71 = sub_231E103E0();
        if (!v72)
        {
LABEL_65:

          goto LABEL_72;
        }

        if (v71 == v64 && v72 == v66)
        {
        }

        else
        {
          v74 = sub_231E12100();

          if ((v74 & 1) == 0)
          {
            goto LABEL_65;
          }
        }
      }
    }

    if (((*(*v3 + 136))(v67) & 1) == 0)
    {
      (*(*v3 + 144))(1);
      v75 = v3[3];

      sub_231DEC5AC(v76);
      sub_231E09C0C();
    }

    OUTLINED_FUNCTION_59();
    sub_231E0A19C();
    v78 = v77;

    if (v78)
    {
      sub_231E116D0();
      v80 = v79;

      if (v80)
      {
        sub_231E0ACE4(v2, v95);
LABEL_73:
        sub_231E103B0();
        sub_231E103C0();
        goto LABEL_74;
      }
    }

LABEL_72:
    sub_231E103E0();
    sub_231E0ACE4(v2, v97);
    goto LABEL_73;
  }

  v47 = v3;
  v48 = sub_231E103E0();
  if (!v49)
  {
    goto LABEL_47;
  }

  sub_231E116D0();
  v51 = v50;

  if (!v51)
  {
    goto LABEL_47;
  }

  v52 = sub_231E103E0();
  v54 = v53;
  v48 = sub_231E103F0();
  if (!v54)
  {
    if (!v55)
    {
      goto LABEL_47;
    }

LABEL_45:

    goto LABEL_53;
  }

  if (!v55)
  {
    goto LABEL_45;
  }

  if (v52 == v48 && v54 == v55)
  {
  }

  else
  {
    v57 = sub_231E12100();

    if ((v57 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

LABEL_47:
  v3 = v47;
  if (((*(*v47 + 112))(v48) & 1) == 0)
  {
    (*(*v47 + 120))(1);
    v58 = v47[2];

    sub_231DEC5AC(v59);
    sub_231E09E68();
  }

  OUTLINED_FUNCTION_59();
  sub_231E0A4C0();
  if (!v60)
  {
    goto LABEL_54;
  }

  sub_231E116D0();
  v62 = v61;

  if (!v62)
  {
LABEL_53:
    v3 = v47;
LABEL_54:

    goto LABEL_55;
  }

  sub_231E0ACE4(v2, v96);
  sub_231E103C0();
LABEL_74:
  sub_231E113E0();
  sub_231E0AD54(v2);
  OUTLINED_FUNCTION_113();
}

void sub_231E09C0C()
{
  OUTLINED_FUNCTION_118();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_25_12();
  v5 = OUTLINED_FUNCTION_0_23(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_34();
  v10 = OUTLINED_FUNCTION_35_10();
  v11 = *(v34 + 16);
  if (v11 >= v10)
  {
    sub_231E0B1B8(v10, v11);
    if (!*(v34 + 16))
    {
LABEL_16:

LABEL_17:
      OUTLINED_FUNCTION_113();
      return;
    }

    v12 = objc_opt_self();
    v13 = sub_231E11850();
    v14 = [v12 predicateForContactsMatchingHandleStrings_];

    v15 = sub_231E0AA14(v14, v3);
    if (v0)
    {

      sub_231CB4EEC();
      v16 = OUTLINED_FUNCTION_18_13();
      v17(v16);
      v18 = sub_231E10E10();
      v19 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_2_36(v19))
      {
        v20 = OUTLINED_FUNCTION_16_1();
        *v20 = 0;
        OUTLINED_FUNCTION_5_32();
        _os_log_impl(v21, v22, v23, v24, v20, 2u);
        OUTLINED_FUNCTION_30();
      }

      v25 = *(v7 + 8);
      v26 = OUTLINED_FUNCTION_59();
      v27(v26);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_21_13(v15);
    if (!v28)
    {

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_33_17();
    while (1)
    {
      if (v33 == v3)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v3 >= *(v34 + 16))
      {
        break;
      }

      v29 = v13[2];
      if (v3 == v29)
      {
        goto LABEL_15;
      }

      if (v3 >= v29)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_12_21();
      v30 = *(v1 + 40);
      v1 += 40;

      v31 = OUTLINED_FUNCTION_3_37();
      v30(v31);

      v3 = (v3 + 1);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

void sub_231E09E68()
{
  OUTLINED_FUNCTION_118();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_25_12();
  v5 = OUTLINED_FUNCTION_0_23(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_34();
  v10 = OUTLINED_FUNCTION_35_10();
  v11 = *(v34 + 16);
  if (v11 >= v10)
  {
    sub_231E0B1B8(v10, v11);
    if (!*(v34 + 16))
    {
LABEL_16:

LABEL_17:
      OUTLINED_FUNCTION_113();
      return;
    }

    v12 = objc_opt_self();
    v13 = sub_231E11850();
    v14 = [v12 predicateForContactsWithIdentifiers_];

    v15 = sub_231E0AA14(v14, v3);
    if (v0)
    {

      sub_231CB4EEC();
      v16 = OUTLINED_FUNCTION_18_13();
      v17(v16);
      v18 = sub_231E10E10();
      v19 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_2_36(v19))
      {
        v20 = OUTLINED_FUNCTION_16_1();
        *v20 = 0;
        OUTLINED_FUNCTION_5_32();
        _os_log_impl(v21, v22, v23, v24, v20, 2u);
        OUTLINED_FUNCTION_30();
      }

      v25 = *(v7 + 8);
      v26 = OUTLINED_FUNCTION_59();
      v27(v26);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_21_13(v15);
    if (!v28)
    {

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_33_17();
    while (1)
    {
      if (v33 == v3)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v3 >= *(v34 + 16))
      {
        break;
      }

      v29 = v13[2];
      if (v3 == v29)
      {
        goto LABEL_15;
      }

      if (v3 >= v29)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_12_21();
      v30 = *(v1 + 48);
      v1 += 48;

      v31 = OUTLINED_FUNCTION_3_37();
      v30(v31);

      v3 = (v3 + 1);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

BOOL sub_231E0A0C4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_26_13(a1, a2, a3);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_7_29();
  v7(v6);
  if (v3)
  {
  }

  else
  {
  }

  return v3 == 0;
}

BOOL sub_231E0A130(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_26_13(a1, a2, a3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_7_29();
  v7(v6);
  if (v3)
  {
  }

  else
  {
  }

  return v3 == 0;
}

void sub_231E0A19C()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_25_12();
  v9 = OUTLINED_FUNCTION_0_23(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_34(v14, v61);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_31_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13_21();
  v17 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v18 = *(v17 + 24);
  v19 = OUTLINED_FUNCTION_10_25();
  v20(v19);
  if (v1)
  {
    v21 = sub_231CB4EEC();
    v22 = OUTLINED_FUNCTION_6_26(v21);
    v23(v22);
    v24 = sub_231E10E10();
    v25 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_2_36(v25))
    {
      v26 = OUTLINED_FUNCTION_16_1();
      *v26 = 0;
      OUTLINED_FUNCTION_5_32();
      _os_log_impl(v27, v28, v29, v30, v26, 2u);
      OUTLINED_FUNCTION_30();
    }

    v31 = OUTLINED_FUNCTION_32_13();
    v32(v31);
    v33 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_37_14(v34, xmmword_231E138E0);
    v35 = sub_231E11850();

    v36 = [v33 predicateForContactsMatchingHandleStrings_];

    OUTLINED_FUNCTION_38_14();
    if (v34)
    {
      v37 = OUTLINED_FUNCTION_22_12();
      v38(v37);
      v39 = sub_231E10E10();
      v40 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_2_36(v40))
      {
        v41 = OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_27_13(v41);
        OUTLINED_FUNCTION_5_32();
        _os_log_impl(v42, v43, v44, v45, v7, 2u);
        OUTLINED_FUNCTION_81_6();
      }

      v46 = OUTLINED_FUNCTION_28_15();
      v62(v46);
    }

    else
    {
      OUTLINED_FUNCTION_192();
      v54 = v5[3];
      v55 = v5[4];
      v56 = OUTLINED_FUNCTION_28_15();
      __swift_project_boxed_opaque_existential_0(v56, v57);
      v58 = *(v55 + 40);
      v59 = OUTLINED_FUNCTION_9_24();
      v60(v59);
    }
  }

  else
  {
    OUTLINED_FUNCTION_192();
    sub_231CB4EEC();
    v47 = OUTLINED_FUNCTION_17_12();
    v48(v47);
    v49 = sub_231E10E10();
    v50 = sub_231E11AF0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_27_13(v51);
      OUTLINED_FUNCTION_36_14(&dword_231CAE000, v52, v53, "Found resolved name for handle in cache");
      OUTLINED_FUNCTION_81_6();
    }

    (*(v11 + 8))(v2, v0);
  }

  OUTLINED_FUNCTION_113();
}

void sub_231E0A4C0()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_25_12();
  v9 = OUTLINED_FUNCTION_0_23(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_34(v14, v61);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_31_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13_21();
  v17 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v18 = *(v17 + 32);
  v19 = OUTLINED_FUNCTION_10_25();
  v20(v19);
  if (v1)
  {
    v21 = sub_231CB4EEC();
    v22 = OUTLINED_FUNCTION_6_26(v21);
    v23(v22);
    v24 = sub_231E10E10();
    v25 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_2_36(v25))
    {
      v26 = OUTLINED_FUNCTION_16_1();
      *v26 = 0;
      OUTLINED_FUNCTION_5_32();
      _os_log_impl(v27, v28, v29, v30, v26, 2u);
      OUTLINED_FUNCTION_30();
    }

    v31 = OUTLINED_FUNCTION_32_13();
    v32(v31);
    v33 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_37_14(v34, xmmword_231E138E0);
    v35 = sub_231E11850();

    v36 = [v33 predicateForContactsWithIdentifiers_];

    OUTLINED_FUNCTION_38_14();
    if (v34)
    {
      v37 = OUTLINED_FUNCTION_22_12();
      v38(v37);
      v39 = sub_231E10E10();
      v40 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_2_36(v40))
      {
        v41 = OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_27_13(v41);
        OUTLINED_FUNCTION_5_32();
        _os_log_impl(v42, v43, v44, v45, v7, 2u);
        OUTLINED_FUNCTION_81_6();
      }

      v46 = OUTLINED_FUNCTION_28_15();
      v62(v46);
    }

    else
    {
      OUTLINED_FUNCTION_192();
      v54 = v5[3];
      v55 = v5[4];
      v56 = OUTLINED_FUNCTION_28_15();
      __swift_project_boxed_opaque_existential_0(v56, v57);
      v58 = *(v55 + 48);
      v59 = OUTLINED_FUNCTION_9_24();
      v60(v59);
    }
  }

  else
  {
    OUTLINED_FUNCTION_192();
    sub_231CB4EEC();
    v47 = OUTLINED_FUNCTION_17_12();
    v48(v47);
    v49 = sub_231E10E10();
    v50 = sub_231E11AF0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_27_13(v51);
      OUTLINED_FUNCTION_36_14(&dword_231CAE000, v52, v53, "Found resolved name for identifier in cache");
      OUTLINED_FUNCTION_81_6();
    }

    (*(v11 + 8))(v2, v0);
  }

  OUTLINED_FUNCTION_113();
}

id sub_231E0A7E4(uint64_t a1, void *a2)
{
  v22 = objc_opt_self();
  v5 = [v22 descriptorForRequiredKeysForStyle_];
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_0(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231E13420;
  *(v9 + 32) = v5;
  v10 = *(v7 + 16);
  swift_unknownObjectRetain();
  v11 = a1;
  v12 = v8;
  v13 = v10(v11, v9, v6, v7);
  if (v2)
  {
    swift_unknownObjectRelease();

    return v12;
  }

  v14 = v13;

  v15 = sub_231CBA138(v14);
  if (!v15)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v16 = v15;
  for (i = 0; ; ++i)
  {
    result = v5;
    if (v16 == i)
    {
      swift_unknownObjectRelease();

      return 0;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23837D2A0](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      result = *(v14 + 8 * i + 32);
    }

    v19 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v20 = [v22 stringFromContact:result style:0];
    if (v20)
    {
      v21 = v20;

      v12 = sub_231E11620();

      swift_unknownObjectRelease();
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_231E0AA14(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 descriptorForRequiredKeysForStyle_];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_231E13420;
  *(v8 + 32) = v5;
  v9 = *(v7 + 16);
  swift_unknownObjectRetain();
  v10 = v9(a1, v8, v6, v7);

  if (v29)
  {
    swift_unknownObjectRelease();
    return v6;
  }

  result = sub_231CBA138(v10);
  if (!result)
  {

    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  if (result >= 1)
  {
    v12 = 0;
    v6 = MEMORY[0x277D84F90];
    v28 = result;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x23837D2A0](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v4;
      v16 = [v4 stringFromContact:v13 style:0];
      if (v16)
      {
        v17 = v16;
        v18 = sub_231E11620();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = v6[2];
        v25 = OUTLINED_FUNCTION_0_1();
        v6 = sub_231E0ADBC(v25, v26, v27, v6);
      }

      v22 = v6[2];
      v21 = v6[3];
      if (v22 >= v21 >> 1)
      {
        v6 = sub_231E0ADBC((v21 > 1), v22 + 1, 1, v6);
      }

      ++v12;

      v6[2] = v22 + 1;
      v23 = &v6[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v4 = v15;
    }

    while (v28 != v12);
    swift_unknownObjectRelease();

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_231E0AC88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_231E0ACB0()
{
  sub_231E0AC88();

  return swift_deallocClassInstance();
}

uint64_t sub_231E0ACE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74540, &qword_231E23510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231E0AD54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74540, &qword_231E23510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_231E0ADBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75610, &unk_231E205C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD752A0, &unk_231E1C920);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_231E0AF3C(uint64_t (*a1)(void *), uint64_t a2)
{
  v4 = a2;
  v6 = *v2;
  result = sub_231E0B0FC(a1, a2, *v2);
  if (!v3)
  {
    v30 = result;
    if (v8)
    {
      return *(v6 + 16);
    }

    else
    {
      v28 = a1;
      v26 = v2;
      v9 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        for (i = 16 * v30; ; i += 16)
        {
          v11 = *(v6 + 16);
          if (v9 == v11)
          {
            return v30;
          }

          if (v9 >= v11)
          {
            break;
          }

          v12 = v6 + i;
          v13 = *(v6 + i + 56);
          v29[0] = *(v6 + i + 48);
          v29[1] = v13;

          v14 = v4;
          v15 = v28(v29);

          if ((v15 & 1) == 0)
          {
            v16 = v30;
            if (v9 != v30)
            {
              if ((v30 & 0x8000000000000000) != 0)
              {
                goto LABEL_22;
              }

              v17 = *(v6 + 16);
              if (v30 >= v17)
              {
                goto LABEL_23;
              }

              if (v9 >= v17)
              {
                goto LABEL_24;
              }

              v18 = (v6 + 32 + 16 * v30);
              v19 = v18[1];
              v27 = *v18;
              v20 = *(v12 + 48);
              v21 = *(v12 + 56);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_231E0B2A8(v6);
              }

              v22 = v6 + 16 * v30;
              v23 = *(v22 + 40);
              *(v22 + 32) = v20;
              *(v22 + 40) = v21;

              if (v9 >= *(v6 + 16))
              {
                goto LABEL_25;
              }

              v24 = v6 + i;
              v25 = *(v6 + i + 56);
              *(v24 + 48) = v27;
              *(v24 + 56) = v19;

              *v26 = v6;
              v16 = v30;
            }

            v30 = v16 + 1;
          }

          v4 = v14;
          ++v9;
        }

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

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_231E0B0FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = (a3 + 40); ; i += 2)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

int64_t sub_231E0B1B8(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_231DF22C0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (v5 != a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_37()
{
  result = *(v0 - 144);
  v2 = *(v0 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_26(uint64_t a1)
{
  result = v2;
  *(v3 - 144) = *(v1 + 16);
  *(v3 - 136) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_25()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;
  return v0;
}

void *OUTLINED_FUNCTION_12_21()
{
  v4 = *(v1 + v0 + 40);
  *(v3 - 144) = *(v1 + v0 + 32);
  *(v3 - 136) = v0;
  v6 = *(v2 + v0 + 32);
  v5 = *(v2 + v0 + 40);
  v7 = *(v3 - 160);
  v8 = v7[4];
  return __swift_project_boxed_opaque_existential_0(v7, v7[3]);
}

uint64_t OUTLINED_FUNCTION_21_13(uint64_t result)
{
  v3 = *(result + 16);
  *(v2 - 152) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_12()
{
  result = *(v0 - 112);
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);
  return result;
}

char *OUTLINED_FUNCTION_24_13@<X0>(unint64_t a1@<X8>)
{

  return sub_231CE0B9C((a1 > 1), v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return sub_231E10E30();
}

uint64_t OUTLINED_FUNCTION_32_13()
{
  result = v0;
  *(v2 - 128) = *(v1 + 8);
  *(v2 - 120) = v1 + 8;
  return result;
}

void OUTLINED_FUNCTION_33_17()
{
  *(v3 - 176) = v2;
  *(v3 - 168) = v1;
  *(v3 - 160) = v0;
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_35_10()
{

  return sub_231E0AF3C(v0, v1 - 128);
}

void OUTLINED_FUNCTION_36_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_37_14(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 - 104);
  a1[2].n128_u64[0] = *(v2 - 96);
  a1[2].n128_u64[1] = v4;
}

id OUTLINED_FUNCTION_38_14()
{

  return sub_231E0A7E4(v0, v1);
}

uint64_t sub_231E0B568(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t sub_231E0B5B0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231DD7F7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_231E0B5EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  return result;
}

uint64_t sub_231E0B5FC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  return result;
}

__n128 sub_231E0B650@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

double sub_231E0B66C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 768;
  return result;
}

uint64_t sub_231E0B688()
{
  OUTLINED_FUNCTION_10_26();
  swift_allocObject();
  swift_defaultActor_initialize();
  return OUTLINED_FUNCTION_1_35();
}

uint64_t sub_231E0B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_231E0B6F8, v4, 0);
}

uint64_t sub_231E0B6F8()
{
  v1 = (v0 + 16);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_231E0F870();
  v5 = v4;
  v6 = *(v0 + 88);
  if (v3)
  {
    v7 = *(v6 + 176);
    v8 = *(v6 + 184);
    v9 = *(v6 + 185);
    if (v9 == 3 || (*(v6 + 168) & 1) != 0)
    {
      *&v10 = COERCE_DOUBLE(sub_231CC81C0());
      if (v11)
      {
        v12 = sub_231D12CD0();
      }

      else
      {
        v12 = *&v10;
      }

      if (v9 != 3 && (v8 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v12 = *(v6 + 160);
      if ((*(v6 + 184) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    *&v17 = COERCE_DOUBLE(sub_231CC81F0());
    if (v18)
    {
      v19 = sub_231D12B88();
LABEL_24:
      v7 = v19;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v7 = *(v6 + 144);
  v13 = *(v6 + 152);
  v14 = *(v6 + 185) << 8;
  if (v14 != 768 && (*(v6 + 136) & 1) == 0)
  {
    v12 = *(v6 + 128);
    if ((*(v6 + 152) & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    *&v17 = COERCE_DOUBLE(sub_231CC8190());
    if (v20)
    {
      v19 = sub_231D12AD8();
      goto LABEL_24;
    }

LABEL_25:
    v7 = *&v17;
    goto LABEL_26;
  }

  *&v15 = COERCE_DOUBLE(sub_231CC8068());
  if (v16)
  {
    v12 = sub_231D12C38();
  }

  else
  {
    v12 = *&v15;
  }

  if (v14 == 768 || (v13 & 1) != 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v21 = *(v0 + 64);
  v22 = *(v0 + 88);
  v23 = *(v0 + 72);
  v24 = *(v22 + 112);
  v25 = *(v22 + 186);
  sub_231D49CD8();
  v26 = *(v0 + 24);
  if (v26 == 1)
  {
    v27 = *(v0 + 72);

    v28 = 0.0;
    v1 = (v0 + 64);
    v29 = 0.0;
  }

  else
  {
    v29 = *(v0 + 40);
    v28 = *(v0 + 48);
    v25 = *(v0 + 32);
  }

  v30 = *(v0 + 56);
  v31 = v29 + (v5 - v28) / v7;
  if (v31 >= v12)
  {
    v31 = v12;
  }

  *v30 = *v1;
  *(v30 + 8) = v26;
  *(v30 + 16) = v25;
  *(v30 + 24) = v31;
  *(v30 + 32) = v5;
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_231E0B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v6 = sub_231E0F950();
  v5[40] = v6;
  v7 = *(v6 - 8);
  v5[41] = v7;
  v8 = *(v7 + 64) + 15;
  v5[42] = swift_task_alloc();
  v9 = sub_231E10E30();
  v5[43] = v9;
  v10 = *(v9 - 8);
  v5[44] = v10;
  v11 = *(v10 + 64) + 15;
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231E0BA10, v4, 0);
}

uint64_t sub_231E0BA10()
{
  v81 = v0;
  v2 = v0[38];

  if (sub_231CC8220())
  {
    v3 = v0[49];
    v4 = v0[43];
    v5 = v0[44];
    v6 = v0[36];
    sub_231CB4EEC();
    v7 = OUTLINED_FUNCTION_8_22();
    v8(v7);

    v9 = sub_231E10E10();
    LOBYTE(v5) = sub_231E11AF0();

    if (os_log_type_enabled(v9, v5))
    {
      OUTLINED_FUNCTION_6_27();
      v10 = OUTLINED_FUNCTION_12_22();
      *v6 = 136446466;
      v80 = v10;
      if (v3)
      {
        v11 = sub_231DDB1E8();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v45 = v0[44];
      v76 = v0[43];
      v77 = v0[49];
      v46 = v0[35];
      v47 = v0[36];
      v48 = sub_231CB5000(v11, v13, &v80);

      *(v6 + 4) = v48;
      *(v6 + 12) = 2082;
      *(v6 + 14) = sub_231CB5000(v46, v47, &v80);
      OUTLINED_FUNCTION_4_35(&dword_231CAE000, v49, v50, "%{public}s PowerBudget: Policies are disabled. Returning eligible. bundleId: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v45 + 8))(v77, v76);
    }

    else
    {
      v26 = v0[49];
      v27 = v0[43];
      v28 = v0[44];

      (*(v28 + 8))(v26, v27);
    }

LABEL_33:
    v67 = v0[48];
    v66 = v0[49];
    v69 = v0[46];
    v68 = v0[47];
    v70 = v0[45];
    v71 = v0[42];

    v72 = v0[1];
    OUTLINED_FUNCTION_37();

    __asm { BRAA            X4, X16 }
  }

  v14 = *(v0[39] + 184);
  v15 = (v14 & 0xFF00) == 0x300 || v14 >> 8 == 2;
  if ((v15 || (v14 & 0x100) == 0) && IOPSDrawingUnlimitedPower())
  {
    v16 = v0[48];
    v17 = v0[43];
    v18 = v0[44];
    v19 = v0[36];
    sub_231CB4EEC();
    v20 = OUTLINED_FUNCTION_8_22();
    v21(v20);

    v22 = sub_231E10E10();
    LOBYTE(v18) = sub_231E11AC0();

    if (os_log_type_enabled(v22, v18))
    {
      OUTLINED_FUNCTION_6_27();
      v1 = OUTLINED_FUNCTION_12_22();
      v80 = v1;
      *v19 = 136446466;
      if (v16)
      {
        v23 = sub_231DDB1E8();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v51 = v0[44];
      v78 = v0[43];
      v79 = v0[48];
      v53 = v0[35];
      v52 = v0[36];
      v54 = sub_231CB5000(v23, v25, &v80);

      *(v19 + 4) = v54;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_231CB5000(v53, v52, &v80);
      OUTLINED_FUNCTION_4_35(&dword_231CAE000, v55, v56, "%{public}s PowerBudget: Eligible through global and app policies because device is on power so policies are disabled. bundleId: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v51 + 8))(v79, v78);
    }

    else
    {
      v42 = v0[48];
      v43 = v0[43];
      v44 = v0[44];

      (*(v44 + 8))(v42, v43);
    }

    v0[55] = MEMORY[0x277D84F90];
    if ((sub_231CC82DC() & 1) != 0 || (v57 = *(v0[39] + 120), (v0[56] = v57) == 0))
    {
      v62 = v0[55];
      v63 = *(v62 + 16);
      if (v63)
      {
        v64 = *(v0[39] + 112);
        v65 = v62 + 32;
        do
        {
          OUTLINED_FUNCTION_3_38();
          sub_231D4A1B8(v0 + 10);
          sub_231E0CC7C((v0 + 10));
          --v63;
        }

        while (v63);
        OUTLINED_FUNCTION_15_21();
        sub_231E0F8B0();
        sub_231D4A69C();

        (*(v1 + 8))(0, v65);
      }

      else
      {
        v75 = v0[38];
      }

      goto LABEL_33;
    }

    OUTLINED_FUNCTION_37();

    return MEMORY[0x2822009F8](v58, v59, v60);
  }

  else
  {
    v29 = v0[35];
    v30 = v0[36];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759D0, &qword_231E23578);
    inited = swift_initStackObject();
    v0[50] = inited;
    *(inited + 16) = xmmword_231E1C950;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v29;
    *(inited + 56) = v30;
    v32 = MEMORY[0x277D84F90];
    v0[51] = 0;
    v0[52] = v32;
    v33 = v0[50];
    v0[53] = *(v33 + 40);
    v34 = *(v33 + 32);

    v35 = swift_task_alloc();
    v0[54] = v35;
    *v35 = v0;
    OUTLINED_FUNCTION_0_40(v35);
    OUTLINED_FUNCTION_37();

    return sub_231E0B6D0(v36, v37, v38, v39);
  }
}

uint64_t sub_231E0BF58()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_231E0C068, v2, 0);
}

uint64_t sub_231E0C068()
{
  v109 = v0;
  v1 = (v0 + 120);
  v2 = *(v0 + 120);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  if (v3 < 1.0)
  {
    v5 = *(v0 + 416);
    v6 = *(v0 + 400);
    v7 = *(v0 + 368);
    v8 = *(v0 + 344);
    v9 = *(v0 + 352);
    swift_setDeallocating();
    sub_231E0CB20();

    v10 = sub_231CB4EEC();
    (*(v9 + 16))(v7, v10, v8);

    v11 = sub_231E10E10();
    v12 = sub_231E11AF0();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_6_27();
      v108 = OUTLINED_FUNCTION_12_22();
      *v5 = 136446466;
      if (v7)
      {
        v13 = *(v0 + 304);
        v14 = sub_231DDB1E8();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      v37 = *(v0 + 352);
      v104 = *(v0 + 344);
      v107 = *(v0 + 368);
      v38 = *(v0 + 304);
      v39 = sub_231CB5000(v14, v16, &v108);

      *(v5 + 4) = v39;
      *(v5 + 12) = 2082;
      v40 = *v1;
      v41 = *(v0 + 136);
      *(v0 + 160) = *(v0 + 120);
      *(v0 + 176) = v41;
      *(v0 + 192) = *(v0 + 152);
      v42 = sub_231E11680();
      v44 = sub_231CB5000(v42, v43, &v108);

      *(v5 + 14) = v44;
      OUTLINED_FUNCTION_4_35(&dword_231CAE000, v45, v46, "%{public}s PowerBudget: Failed policy: state: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v37 + 8))(v107, v104);
    }

    else
    {
      v30 = *(v0 + 368);
      v31 = *(v0 + 344);
      v32 = *(v0 + 352);
      v33 = *(v0 + 304);

      sub_231E0CC7C(v0 + 120);

      (*(v32 + 8))(v30, v31);
    }

    v47 = *(v0 + 424);
    sub_231E0CC7C(v0 + 120);
    if (v47)
    {
      v48 = *(v0 + 424);
    }

LABEL_35:
    v94 = *(v0 + 384);
    v93 = *(v0 + 392);
    v96 = *(v0 + 368);
    v95 = *(v0 + 376);
    v97 = *(v0 + 360);
    v98 = *(v0 + 336);

    v99 = *(v0 + 8);
    OUTLINED_FUNCTION_11_24();

    __asm { BRAA            X4, X16 }
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 376);
  v19 = *(v0 + 344);
  v20 = *(v0 + 352);

  sub_231CB4EEC();
  v21 = OUTLINED_FUNCTION_8_22();
  v22(v21);
  v23 = sub_231E10E10();
  v24 = sub_231E11AC0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_6_27();
    *(v0 + 272) = swift_slowAlloc();
    *v25 = 136446466;
    v106 = v2;
    if (v18)
    {
      v26 = *(v0 + 304);
      v27 = sub_231DDB1E8();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v49 = *(v0 + 352);
    v103 = *(v0 + 344);
    v105 = *(v0 + 376);
    v50 = sub_231CB5000(v27, v29, (v0 + 272));

    *(v25 + 4) = v50;
    *(v25 + 12) = 2082;
    v51 = *v1;
    v52 = *(v0 + 136);
    *(v0 + 200) = *(v0 + 120);
    *(v0 + 216) = v52;
    *(v0 + 232) = *(v0 + 152);

    v53 = sub_231E11680();
    v55 = sub_231CB5000(v53, v54, (v0 + 272));

    *(v25 + 14) = v55;
    _os_log_impl(&dword_231CAE000, v23, v24, "%{public}s PowerBudget: Passed policy: state: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v49 + 8))(v105, v103);
    v2 = v106;
  }

  else
  {
    v34 = *(v0 + 376);
    v35 = *(v0 + 344);
    v36 = *(v0 + 352);

    (*(v36 + 8))(v34, v35);
  }

  v56 = *(v0 + 416);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(v0 + 416);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = sub_231E0CB64(0, *(v58 + 2) + 1, 1, *(v0 + 416));
  }

  v60 = *(v58 + 2);
  v59 = *(v58 + 3);
  if (v60 >= v59 >> 1)
  {
    v58 = sub_231E0CB64((v59 > 1), v60 + 1, 1, v58);
  }

  v61 = *(v0 + 152);
  v62 = *(v0 + 136);
  *(v58 + 2) = v60 + 1;
  v63 = &v58[40 * v60];
  *(v63 + 4) = v2;
  *(v63 + 5) = v4;
  v63[48] = v62;
  *(v63 + 7) = v3 + -1.0;
  *(v63 + 8) = v61;
  sub_231E0CC7C(v0 + 120);
  v64 = *(v0 + 400);
  v65 = *(v0 + 408) + 1;
  *(v0 + 408) = v65;
  *(v0 + 416) = v58;
  if (v65 == 2)
  {
    swift_setDeallocating();
    sub_231E0CB20();
    *(v0 + 440) = v58;
    if ((sub_231CC82DC() & 1) != 0 || (v66 = *(*(v0 + 312) + 120), (*(v0 + 448) = v66) == 0))
    {
      v79 = *(v0 + 440);
      v80 = *(v79 + 16);
      if (v80)
      {
        v81 = *(*(v0 + 312) + 112);
        v82 = (v79 + 32);
        do
        {
          v83 = *v82;
          v84 = v82[1];
          *(v0 + 112) = *(v82 + 4);
          *(v0 + 80) = v83;
          *(v0 + 96) = v84;
          v85 = *v82;
          v82 = (v82 + 40);
          *(v0 + 240) = v85;
          sub_231D52690(v0 + 240, v0 + 256);
          sub_231D4A1B8(v0 + 80);
          sub_231E0CC7C(v0 + 80);
          --v80;
        }

        while (v80);
        v86 = *(v0 + 440);
        v88 = *(v0 + 328);
        v87 = *(v0 + 336);
        v89 = *(v0 + 320);
        v90 = *(v0 + 296);
        v91 = *(v0 + 304);

        sub_231E0F8B0();
        sub_231D4A69C();

        (*(v88 + 8))(v87, v89);
      }

      else
      {
        v92 = *(v0 + 304);
      }

      goto LABEL_35;
    }

    OUTLINED_FUNCTION_11_24();

    return MEMORY[0x2822009F8](v67, v68, v69);
  }

  else
  {
    v71 = v64 + 16 * v65;
    *(v0 + 424) = *(v71 + 40);
    v72 = *(v71 + 32);

    v73 = swift_task_alloc();
    *(v0 + 432) = v73;
    *v73 = v0;
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_11_24();

    return sub_231E0B6D0(v74, v75, v76, v77);
  }
}

uint64_t sub_231E0C704()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 312);
  *(v0 + 456) = sub_231CE6E50();
  *(v0 + 464) = v3;
  *(v0 + 472) = v4;

  return MEMORY[0x2822009F8](sub_231E0C778, v2, 0);
}

uint64_t sub_231E0C778()
{
  v41 = v0;
  if (*(v0 + 472) == 255)
  {
    v16 = *(v0 + 440);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(*(v0 + 312) + 112);
      v19 = v16 + 32;
      do
      {
        OUTLINED_FUNCTION_3_38();
        sub_231D4A1B8(v0 + 80);
        sub_231E0CC7C(v0 + 80);
        --v17;
      }

      while (v17);
      OUTLINED_FUNCTION_15_21();
      sub_231E0F8B0();
      sub_231D4A69C();

      (*(v1 + 8))(0, v19);
      v17 = 0;
    }

    else
    {
      v24 = *(v0 + 304);
    }

    v25 = 0;
    v26 = 255;
  }

  else
  {
    v2 = *(v0 + 440);
    v4 = *(v0 + 352);
    v3 = *(v0 + 360);
    v5 = *(v0 + 344);

    v6 = sub_231CB4EEC();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_231E10E10();
    v8 = sub_231E11AF0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 304);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136446210;
      if (v9)
      {
        v12 = *(v0 + 304);
        v13 = sub_231DDB1E8();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      v27 = *(v0 + 352);
      v39 = *(v0 + 360);
      v28 = *(v0 + 344);
      v29 = *(v0 + 304);
      v30 = sub_231CB5000(v13, v15, &v40);

      *(v10 + 4) = v30;
      _os_log_impl(&dword_231CAE000, v7, v8, "%{public}s PowerBudget: Failed policy: PowerTracker", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v27 + 8))(v39, v28);
    }

    else
    {
      v21 = *(v0 + 352);
      v20 = *(v0 + 360);
      v22 = *(v0 + 344);
      v23 = *(v0 + 304);

      (*(v21 + 8))(v20, v22);
    }

    v26 = *(v0 + 472);
    v17 = *(v0 + 456);
    v25 = *(v0 + 464);
  }

  v32 = *(v0 + 384);
  v31 = *(v0 + 392);
  v34 = *(v0 + 368);
  v33 = *(v0 + 376);
  v35 = *(v0 + 360);
  v36 = *(v0 + 336);

  v37 = *(v0 + 8);

  return v37(v17, v25, v26);
}

uint64_t sub_231E0CA48()
{
  v1 = *(v0 + 186);
  v2 = *(v0 + 112);
  return sub_231D4A9F4(v1);
}

uint64_t sub_231E0CAA0()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_231E0CAD0()
{
  sub_231E0CAA0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231E0CB20()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

char *sub_231E0CB64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759F0, &qword_231E23778);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_231E0CCB0()
{
  result = qword_27DD759D8;
  if (!qword_27DD759D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD759D8);
  }

  return result;
}

unint64_t sub_231E0CD08()
{
  result = qword_27DD759E0;
  if (!qword_27DD759E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD759E8, qword_231E23628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD759E0);
  }

  return result;
}

uint64_t sub_231E0CD90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231E0CDE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      return OUTLINED_FUNCTION_13_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_231E0CE30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_231E0CE48(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_13_22(result, (a2 - 1));
  }

  return result;
}

_BYTE *sub_231E0CE70(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231E0CF48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_108(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_108(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_108(v4);
}

uint64_t sub_231E0CF98(uint64_t result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_13_22(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_231E0D018(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
  }

  if (a2 >= 0xFD && *(a1 + 58))
  {
    return OUTLINED_FUNCTION_108(*a1 + 252);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2 ? ((v3 + 2147483646) & 0x7FFFFFFF) - 1 : -2;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_108(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_108(-1);
  }
}

uint64_t sub_231E0D078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_231E0D0D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 58))
    {
      return OUTLINED_FUNCTION_108(*a1 + 253);
    }

    v3 = *(a1 + 57);
    if (v3 >= 2)
    {
      v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v4 = -2;
    }

    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_108(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_108(v4);
}

uint64_t sub_231E0D12C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_35()
{
  *(v1 + 112) = v4;
  *(v1 + 120) = v3;
  v5 = v2[1];
  *(v1 + 128) = *v2;
  *(v1 + 144) = v5;
  *(v1 + 160) = v2[2];
  *(v1 + 170) = *(v2 + 42);
  *(v1 + 186) = v0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_38()
{
  v3 = *v1;
  v4 = v1[1];
  *(v0 + 112) = *(v1 + 4);
  *(v0 + 80) = v3;
  *(v0 + 96) = v4;
  *(v0 + 240) = *v1;

  return sub_231D52690(v0 + 240, v0 + 256);
}

uint64_t OUTLINED_FUNCTION_6_27()
{
  v2 = *(v0 + 304);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return swift_slowAlloc();
}

id PSUSummarizationLogging()
{
  if (PSUSummarizationLogging__pasOnceToken2 != -1)
  {
    dispatch_once(&PSUSummarizationLogging__pasOnceToken2, &__block_literal_global_38);
  }

  v1 = PSUSummarizationLogging__pasExprOnceResult;

  return v1;
}

void __PSUSummarizationLogging_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.suggestions", "summarization");
  v2 = PSUSummarizationLogging__pasExprOnceResult;
  PSUSummarizationLogging__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

Class __getDNDModeConfigurationServiceClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!DoNotDisturbLibraryCore_frameworkLibrary)
  {
    DoNotDisturbLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("DNDModeConfigurationService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDNDModeConfigurationServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __DoNotDisturbLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DoNotDisturbLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}