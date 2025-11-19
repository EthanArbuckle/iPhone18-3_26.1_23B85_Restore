uint64_t sub_26BD7E220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for HMTArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *(a2 + 8);
  if (*(v15 + 16) && (sub_26BD31908(*a1, a1[1]), (v16 & 1) != 0))
  {
    v17 = *(v15 + 56);
    v18 = *(v7 + 72);
    sub_26BD80504();
    sub_26BD7EEE0();
    sub_26BD80504();
    sub_26BD7CAD8(v11, a3);
    sub_26BD8055C(v14, type metadata accessor for HMTArticle);
    v19 = type metadata accessor for HMTSolution.Article();
    v20 = a3;
    v21 = 0;
  }

  else
  {
    v19 = type metadata accessor for HMTSolution.Article();
    v20 = a3;
    v21 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
}

uint64_t sub_26BD7E3EC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF90, &unk_26BDA9740);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v29 = type metadata accessor for HMTSolution.Article();
  v25 = *(v29 - 8);
  v10 = *(v25 + 64);
  v11 = MEMORY[0x28223BE20](v29);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = *(a3 + 16);
  v14 = (a3 + 40);
  v15 = MEMORY[0x277D84F90];
  v26 = a1;
  if (v13)
  {
    while (1)
    {
      v16 = *v14;
      v28[0] = *(v14 - 1);
      v28[1] = v16;

      a1(v28);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v9, 1, v29) == 1)
      {
        sub_26BD04E80(v9, &qword_28044AF90, &unk_26BDA9740);
      }

      else
      {
        sub_26BD7EEE0();
        sub_26BD7EEE0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26BD88E6C(0, *(v15 + 16) + 1, 1, v15);
          v15 = v21;
        }

        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_26BD88E6C(v17 > 1, v18 + 1, 1, v15);
          v15 = v22;
        }

        *(v15 + 16) = v18 + 1;
        v19 = v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v20 = *(v25 + 72);
        sub_26BD7EEE0();
        a1 = v26;
      }

      v14 += 2;
      if (!--v13)
      {
        return v15;
      }
    }
  }

  return v15;
}

uint64_t sub_26BD7E6A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for HMTBCSSolution(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = *(a2 + 16);
  if (*(v15 + 16) && (sub_26BD31908(*a1, a1[1]), (v16 & 1) != 0))
  {
    v17 = *(v15 + 56);
    v18 = *(v7 + 72);
    sub_26BD80504();
    sub_26BD7EEE0();
    sub_26BD80504();
    v19 = v11[1];
    *a3 = *v11;
    a3[1] = v19;
    a3[2] = 0;
    a3[3] = 0;
    a3[4] = v11[2];
    v20 = v11[6];
    a3[5] = v11[5];
    a3[6] = v20;
    v21 = v11[8];
    a3[7] = v11[7];
    a3[8] = v21;
    v22 = v11[9];
    v23 = v11[10];
    v24 = type metadata accessor for HMTSolution.Article();
    v25 = *(v24 + 36);

    sub_26BDA04E0();
    sub_26BD8055C(v14, type metadata accessor for HMTBCSSolution);
    sub_26BD8055C(v11, type metadata accessor for HMTBCSSolution);
    *(a3 + *(v24 + 40)) = 3;
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v24);
  }

  else
  {
    v27 = type metadata accessor for HMTSolution.Article();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v27);
  }
}

uint64_t sub_26BD7E8EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
  v5 = OUTLINED_FUNCTION_110(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v54 - v8;
  v55 = type metadata accessor for ProductPedigreeInfo(0);
  v9 = OUTLINED_FUNCTION_34(v55);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v14 = (v13 - v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
  v16 = OUTLINED_FUNCTION_110(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v54 - v23;
  v25 = type metadata accessor for SymptomInfo(0);
  v26 = OUTLINED_FUNCTION_34(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_57();
  v31 = (v29 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = (&v54 - v33);
  v54 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  v35 = *(v54 + 20);
  v57 = a1;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_16_1(v24);
  if (v36)
  {
    *v34 = 0;
    v34[1] = 0xE000000000000000;
    v34[2] = 0;
    v34[3] = 0xE000000000000000;
    v37 = v34 + *(v25 + 24);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_16_1(v24);
    if (!v36)
    {
      sub_26BD04E80(v24, &qword_280449CC0, &qword_26BDA4B88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    sub_26BD7EEE0();
  }

  v39 = v34[2];
  v38 = v34[3];

  OUTLINED_FUNCTION_5_3();
  sub_26BD8055C(v34, v40);
  *a2 = v39;
  a2[1] = v38;
  v41 = v57;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_16_1(v21);
  if (v36)
  {
    *v31 = 0;
    v31[1] = 0xE000000000000000;
    v31[2] = 0;
    v31[3] = 0xE000000000000000;
    v42 = v31 + *(v25 + 24);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_16_1(v21);
    if (!v36)
    {
      sub_26BD04E80(v21, &qword_280449CC0, &qword_26BDA4B88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    sub_26BD7EEE0();
  }

  v44 = *v31;
  v43 = v31[1];

  OUTLINED_FUNCTION_5_3();
  sub_26BD8055C(v31, v45);
  a2[2] = v44;
  a2[3] = v43;
  v46 = *(v54 + 24);
  v47 = v56;
  sub_26BD31AF8();
  v48 = v55;
  OUTLINED_FUNCTION_28_3(v47, 1);
  if (v36)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v14[5] = 0xE000000000000000;
    v49 = v14 + *(v48 + 28);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_28_3(v47, 1);
    if (!v36)
    {
      sub_26BD04E80(v47, &qword_280449CC8, &unk_26BDA4B90);
    }
  }

  else
  {
    sub_26BD7EEE0();
  }

  v50 = sub_26BD7ECB0();
  v52 = v51;
  sub_26BD8055C(v41, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
  result = sub_26BD8055C(v14, type metadata accessor for ProductPedigreeInfo);
  a2[4] = v50;
  a2[5] = v52;
  a2[6] = 0;
  return result;
}

uint64_t sub_26BD7ECB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF78, &qword_26BDAA1C0);
  inited = swift_initStackObject();
  v2 = 0;
  *(inited + 16) = xmmword_26BDA1A20;
  v3 = v0[1];
  *(inited + 32) = *v0;
  *(inited + 40) = v3;
  v4 = v0[3];
  *(inited + 48) = v0[2];
  *(inited + 56) = v4;
  v5 = v0[5];
  *(inited + 64) = v0[4];
  *(inited + 72) = v5;
  while (1)
  {
    v6 = v2 + 16;
    if (v2 == 48)
    {
      break;
    }

    v7 = inited + v2;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v9) & 0xF;
    }

    v2 = v6;
    if (v10)
    {

      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

uint64_t sub_26BD7ED9C(size_t *a1)
{
  v2 = *(type metadata accessor for HMTSolution.Article() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26BD804F0(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26BD7EF38(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26BD7EE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HMTSolution.Article();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD7EEE0()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BD7EF38(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26BDA0F90();
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
        type metadata accessor for HMTSolution.Article();
        v6 = sub_26BDA0CA0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HMTSolution.Article() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26BD7F2AC(v8, v9, a1, v4);
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
    return sub_26BD7F068(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BD7F068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for HMTSolution.Article();
  v8 = *(*(v33 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v33);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v26 - v11);
  result = MEMORY[0x28223BE20](v10);
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
      do
      {
        sub_26BD80504();
        sub_26BD80504();
        v23 = v16[4];
        v24 = v12[4];
        sub_26BD8055C(v12, type metadata accessor for HMTSolution.Article);
        result = sub_26BD8055C(v16, type metadata accessor for HMTSolution.Article);
        if (v23 >= v24)
        {
          break;
        }

        if (!v17)
        {
          __break(1u);
          return result;
        }

        sub_26BD7EEE0();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_26BD7EEE0();
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
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

  return result;
}

void sub_26BD7F2AC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v121 = type metadata accessor for HMTSolution.Article();
  v116 = *(v121 - 8);
  v9 = *(v116 + 64);
  v10 = MEMORY[0x28223BE20](v121);
  v113 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v106 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v106 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = (&v106 - v16);
  v117 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_100:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v100 = (v20 + 16);
      v101 = *(v20 + 16);
      for (i = v20; v101 >= 2; v20 = i)
      {
        if (!*v117)
        {
          goto LABEL_138;
        }

        v102 = (v20 + 16 * v101);
        v20 = *v102;
        v103 = &v100[2 * v101];
        v104 = v103[1];
        sub_26BD7FBC8(*v117 + *(v116 + 72) * *v102, *v117 + *(v116 + 72) * *v103, *v117 + *(v116 + 72) * v104, v5);
        if (v6)
        {
          break;
        }

        if (v104 < v20)
        {
          goto LABEL_126;
        }

        if (v101 - 2 >= *v100)
        {
          goto LABEL_127;
        }

        *v102 = v20;
        v102[1] = v104;
        v105 = *v100 - v101;
        if (*v100 < v101)
        {
          goto LABEL_128;
        }

        v101 = *v100 - 1;
        memmove(v103, v103 + 2, 16 * v105);
        *v100 = v101;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v20 = sub_26BD80048(v20);
    goto LABEL_102;
  }

  v108 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    if (v19 + 1 < v18)
    {
      v23 = *v117;
      v24 = *(v116 + 72);
      v119 = v19 + 1;
      v25 = v23 + v24 * v22;
      v26 = v23;
      v115 = v18;
      sub_26BD80504();
      v5 = v21;
      v27 = v122;
      sub_26BD80504();
      v28 = v17[4];
      v29 = *(v27 + 32);
      sub_26BD8055C(v27, type metadata accessor for HMTSolution.Article);
      sub_26BD8055C(v17, type metadata accessor for HMTSolution.Article);
      v30 = v115;
      v109 = v5;
      v31 = v5 + 2;
      i = v24;
      v32 = v26 + v24 * (v5 + 2);
      while (1)
      {
        v33 = v31;
        if (++v119 >= v30)
        {
          break;
        }

        sub_26BD80504();
        v5 = v122;
        sub_26BD80504();
        v34 = v17[4];
        v35 = *(v5 + 32);
        sub_26BD8055C(v5, type metadata accessor for HMTSolution.Article);
        sub_26BD8055C(v17, type metadata accessor for HMTSolution.Article);
        v30 = v115;
        v32 += i;
        v25 += i;
        v31 = v33 + 1;
        if (v28 < v29 == v34 >= v35)
        {
          goto LABEL_9;
        }
      }

      v119 = v30;
LABEL_9:
      if (v28 < v29)
      {
        v22 = v119;
        if (v119 < v109)
        {
          goto LABEL_132;
        }

        if (v109 >= v119)
        {
          v21 = v109;
          goto LABEL_31;
        }

        v5 = v20;
        v107 = v6;
        if (v30 >= v33)
        {
          v36 = v33;
        }

        else
        {
          v36 = v30;
        }

        v37 = i * (v36 - 1);
        v38 = i * v36;
        v39 = v109 * i;
        v40 = v109;
        do
        {
          if (v40 != --v22)
          {
            v41 = *v117;
            if (!*v117)
            {
              goto LABEL_139;
            }

            sub_26BD7EEE0();
            v42 = v39 < v37 || v41 + v39 >= (v41 + v38);
            if (v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v39 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_26BD7EEE0();
          }

          ++v40;
          v37 -= i;
          v38 -= i;
          v39 += i;
        }

        while (v40 < v22);
        v6 = v107;
        v20 = v5;
      }

      v22 = v119;
      v21 = v109;
    }

LABEL_31:
    v43 = v117[1];
    if (v22 < v43)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_131;
      }

      if (v22 - v21 < v108)
      {
        break;
      }
    }

LABEL_47:
    if (v22 < v21)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26BD88D7C(0, *(v20 + 16) + 1, 1, v20);
      v20 = v98;
    }

    v57 = *(v20 + 16);
    v56 = *(v20 + 24);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      sub_26BD88D7C(v56 > 1, v57 + 1, 1, v20);
      v20 = v99;
    }

    *(v20 + 16) = v58;
    v59 = v20 + 32;
    v60 = (v20 + 32 + 16 * v57);
    *v60 = v21;
    v60[1] = v22;
    v115 = *v110;
    if (!v115)
    {
      goto LABEL_140;
    }

    v119 = v22;
    if (v57)
    {
      i = v20;
      while (1)
      {
        v61 = v58 - 1;
        v62 = (v59 + 16 * (v58 - 1));
        v63 = (v20 + 16 * v58);
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v64 = *(v20 + 32);
          v65 = *(v20 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_68:
          if (v67)
          {
            goto LABEL_117;
          }

          v79 = *v63;
          v78 = v63[1];
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_120;
          }

          v83 = v62[1];
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_125;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v58 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v58 < 2)
        {
          goto LABEL_119;
        }

        v86 = *v63;
        v85 = v63[1];
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_83:
        if (v82)
        {
          goto LABEL_122;
        }

        v88 = *v62;
        v87 = v62[1];
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_124;
        }

        if (v89 < v81)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v61 - 1 >= v58)
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

        if (!*v117)
        {
          goto LABEL_137;
        }

        v5 = v17;
        v93 = (v59 + 16 * (v61 - 1));
        v94 = *v93;
        v95 = v61;
        v96 = (v59 + 16 * v61);
        v20 = v96[1];
        sub_26BD7FBC8(*v117 + *(v116 + 72) * *v93, *v117 + *(v116 + 72) * *v96, *v117 + *(v116 + 72) * v20, v115);
        if (v6)
        {
          goto LABEL_110;
        }

        if (v20 < v94)
        {
          goto LABEL_112;
        }

        v6 = *(i + 16);
        if (v95 > v6)
        {
          goto LABEL_113;
        }

        *v93 = v94;
        v93[1] = v20;
        if (v95 >= v6)
        {
          goto LABEL_114;
        }

        v58 = v6 - 1;
        memmove(v96, v96 + 2, 16 * (v6 - 1 - v95));
        v20 = i;
        *(i + 16) = v6 - 1;
        v97 = v6 > 2;
        v6 = 0;
        v17 = v5;
        if (!v97)
        {
          goto LABEL_97;
        }
      }

      v68 = v59 + 16 * v58;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_115;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_116;
      }

      v75 = v63[1];
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_118;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_121;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = v62[1];
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_129;
        }

        if (v66 < v92)
        {
          v61 = v58 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v18 = v117[1];
    v19 = v119;
    if (v119 >= v18)
    {
      goto LABEL_100;
    }
  }

  v44 = v21 + v108;
  if (__OFADD__(v21, v108))
  {
    goto LABEL_133;
  }

  if (v44 >= v43)
  {
    v44 = v117[1];
  }

  if (v44 < v21)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v22 == v44)
  {
    goto LABEL_47;
  }

  i = v20;
  v107 = v6;
  v45 = *v117;
  v46 = *(v116 + 72);
  v47 = *v117 + v46 * (v22 - 1);
  v48 = v21;
  v49 = -v46;
  v109 = v48;
  v50 = v48 - v22;
  v111 = v46;
  v112 = v44;
  v51 = v45 + v22 * v46;
LABEL_40:
  v119 = v22;
  v52 = v51;
  v114 = v50;
  v115 = v47;
  v53 = v47;
  while (1)
  {
    sub_26BD80504();
    v5 = v122;
    sub_26BD80504();
    v54 = v17[4];
    v55 = *(v5 + 32);
    sub_26BD8055C(v5, type metadata accessor for HMTSolution.Article);
    sub_26BD8055C(v17, type metadata accessor for HMTSolution.Article);
    if (v54 >= v55)
    {
LABEL_45:
      v22 = v119 + 1;
      v47 = v115 + v111;
      v50 = v114 - 1;
      v51 += v111;
      if (v119 + 1 == v112)
      {
        v22 = v112;
        v6 = v107;
        v20 = i;
        v21 = v109;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v45)
    {
      break;
    }

    v5 = v120;
    sub_26BD7EEE0();
    swift_arrayInitWithTakeFrontToBack();
    sub_26BD7EEE0();
    v53 += v49;
    v52 += v49;
    v42 = __CFADD__(v50++, 1);
    if (v42)
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
}

uint64_t sub_26BD7FBC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = type metadata accessor for HMTSolution.Article();
  v9 = *(*(v55 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v55);
  v12 = (v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v10);
  v15 = (v49 - v14);
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

  v18 = a2 - a1;
  v19 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v19)
  {
    goto LABEL_61;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v49[1] = v4;
  v22 = v18 / v17;
  v58 = a1;
  v57 = a4;
  v23 = v20 / v17;
  if (v18 / v17 >= v20 / v17)
  {
    v52 = v12;
    sub_26BD891D8(a2, v20 / v17, a4);
    v30 = a4 + v23 * v17;
    v31 = -v17;
    v32 = v30;
    v33 = a3;
    v53 = v31;
    v51 = a1;
LABEL_37:
    v54 = a2 + v31;
    v34 = v33;
    v49[0] = v32;
    while (1)
    {
      if (v30 <= a4)
      {
        v58 = a2;
        v56 = v32;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v32;
      v35 = a2;
      v36 = a4;
      v33 = v34 + v53;
      v37 = v30 + v53;
      v38 = v30;
      v39 = v34;
      sub_26BD80504();
      v40 = v15;
      v41 = v52;
      sub_26BD80504();
      v42 = *(v40 + 32);
      v43 = *(v41 + 32);
      v44 = v41;
      v15 = v40;
      sub_26BD8055C(v44, type metadata accessor for HMTSolution.Article);
      sub_26BD8055C(v40, type metadata accessor for HMTSolution.Article);
      if (v42 < v43)
      {
        v46 = v39 < v35 || v33 >= v35;
        a4 = v36;
        if (v46)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v50;
          a1 = v51;
          v31 = v53;
          v30 = v38;
        }

        else
        {
          v32 = v50;
          v19 = v39 == v35;
          v31 = v53;
          v47 = v54;
          a2 = v54;
          v30 = v38;
          a1 = v51;
          if (!v19)
          {
            v48 = v50;
            swift_arrayInitWithTakeBackToFront();
            v30 = v38;
            a2 = v47;
            v32 = v48;
          }
        }

        goto LABEL_37;
      }

      v45 = v39 < v38 || v33 >= v38;
      a4 = v36;
      if (v45)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v33;
        v30 = v37;
        v32 = v37;
        a2 = v35;
        a1 = v51;
      }

      else
      {
        v32 = v37;
        v19 = v38 == v39;
        v34 = v33;
        v30 = v37;
        a2 = v35;
        a1 = v51;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v33;
          v30 = v37;
          v32 = v37;
        }
      }
    }

    v58 = a2;
    v56 = v49[0];
  }

  else
  {
    sub_26BD891D8(a1, v18 / v17, a4);
    v24 = a4 + v22 * v17;
    v56 = v24;
    while (a4 < v24 && a2 < a3)
    {
      sub_26BD80504();
      sub_26BD80504();
      v26 = v15[4];
      v27 = v12[4];
      sub_26BD8055C(v12, type metadata accessor for HMTSolution.Article);
      sub_26BD8055C(v15, type metadata accessor for HMTSolution.Article);
      if (v26 >= v27)
      {
        if (a1 < a4 || a1 >= a4 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v17;
        a4 += v17;
      }

      else
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

      a1 += v17;
      v58 = a1;
    }
  }

LABEL_59:
  sub_26BD8005C(&v58, &v57, &v56);
  return 1;
}

uint64_t sub_26BD8005C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for HMTSolution.Article();
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

char *sub_26BD8013C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF80, &qword_26BDA9738);
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

size_t sub_26BD8023C(size_t result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF88, &qword_26BDA9D60);
  v10 = *(type metadata accessor for HMTSolution.Article() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HMTSolution.Article() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26BD891D8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26BD803F0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF78, &qword_26BDAA1C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26BD892AC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD80504()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BD8055C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_18_3()
{
  v1 = *(v0 - 256);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_22_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

void OUTLINED_FUNCTION_23_2(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  v3 = *(v2 - 248);
  v4 = *(v2 - 312);
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_26BDA0ED0();
}

void sub_26BD80818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_26BDA0BC0();
  v8 = MGGetStringAnswer();

  if (v8)
  {
    v9 = sub_26BDA0BD0();
    v11 = v10;

    *a4 = v9;
    *a5 = v11;
  }

  else
  {
    __break(1u);
  }
}

void sub_26BD8088C()
{
  v0 = sub_26BDA0BC0();
  v1 = MGGetBoolAnswer();

  byte_28045A000 = v1;
}

uint64_t SupportProductType.init(productId:serialNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a2 || (a1 == 0x3330304753 ? (v10 = a2 == 0xE500000000000000) : (v10 = 0), v10 || (result = sub_26BDA0FB0(), (result & 1) != 0)))
  {

    a3 = 0;
    a4 = 0;
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v12;
  return result;
}

uint64_t SupportProductType.serialNumber.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = (v0 + 16);
  }

  else
  {
    if (qword_280448F30 != -1)
    {
      swift_once();
    }

    v2 = &qword_280459FD0;
  }

  v3 = *v2;

  return v3;
}

uint64_t sub_26BD80A1C()
{
  v1 = *v0;
  if (*(v0 + 32) != 1 && !v0[1])
  {
    return 0;
  }

  v2 = v0[1];

  if ((sub_26BDA0C80() & 1) == 0)
  {

    return 0;
  }

  return v1;
}

uint64_t SupportProductType.superGroup.getter()
{
  v1 = *v0;
  if (*(v0 + 32) != 1 && !v0[1])
  {
    return 0x3330304753;
  }

  v2 = v0[1];

  if ((sub_26BDA0C80() & 1) == 0)
  {

    return 0;
  }

  return v1;
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

uint64_t sub_26BD80B3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BD80B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BD80BE8()
{
  v0 = sub_26BDA0F30();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26BD80C4C(char a1)
{
  result = 0x646F43726F727265;
  switch(a1)
  {
    case 1:
      result = 0x6B6F54726F727265;
      break;
    case 2:
      result = 0x726F727245776172;
      break;
    case 3:
      result = 0x73654D726F727265;
      break;
    case 4:
      result = 0x4974736575716572;
      break;
    case 5:
      result = 0x746954726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26BD80D38(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_26BD343C8();
}

uint64_t sub_26BD80D5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26BD80BE8();
  *a2 = result;
  return result;
}

uint64_t sub_26BD80D8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BD80C4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26BD80DC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BD80C34();
  *a1 = result;
  return result;
}

uint64_t sub_26BD80E08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BD80C38();
  *a1 = result;
  return result;
}

uint64_t sub_26BD80E30(uint64_t a1)
{
  v2 = sub_26BD8127C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BD80E6C(uint64_t a1)
{
  v2 = sub_26BD8127C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SupportServicesError.errorMessage.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SupportServicesError.requestId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SupportServicesError.errorTitle.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t SupportServicesError.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF98, &qword_26BDA97F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BD8127C();
  sub_26BDA1080();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = sub_26BDA0F60();
  OUTLINED_FUNCTION_0_11(1);
  v12 = sub_26BDA0F60();
  OUTLINED_FUNCTION_0_11(2);
  v28 = sub_26BDA0F60();
  v29 = v12;
  OUTLINED_FUNCTION_0_11(3);
  v13 = sub_26BDA0F50();
  v15 = v14;
  v27 = v13;
  OUTLINED_FUNCTION_0_11(4);
  v25 = sub_26BDA0F50();
  v26 = v11;
  v17 = v16;
  v32 = 5;
  v18 = sub_26BDA0F50();
  v19 = v9;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  v23 = v28;
  v22 = v29;
  __src[0] = v26;
  __src[1] = v29;
  __src[2] = v28;
  __src[3] = v27;
  __src[4] = v15;
  __src[5] = v25;
  __src[6] = v17;
  __src[7] = v18;
  __src[8] = v21;
  memcpy(a2, __src, 0x48uLL);
  sub_26BD8131C(__src, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v26;
  v31[1] = v22;
  v31[2] = v23;
  v31[3] = v27;
  v31[4] = v15;
  v31[5] = v25;
  v31[6] = v17;
  v31[7] = v18;
  v31[8] = v21;
  return sub_26BD81354(v31);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26BD8127C()
{
  result = qword_28044AFA0;
  if (!qword_28044AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFA0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26BD813B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_26BD813F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportServicesError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SupportServicesError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26BD815A8);
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

unint64_t sub_26BD815E4()
{
  result = qword_28044AFA8;
  if (!qword_28044AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFA8);
  }

  return result;
}

unint64_t sub_26BD8163C()
{
  result = qword_28044AFB0;
  if (!qword_28044AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFB0);
  }

  return result;
}

unint64_t sub_26BD81694()
{
  result = qword_28044AFB8;
  if (!qword_28044AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFB8);
  }

  return result;
}

void __swiftcall SupportSymptomInfo.init(categoryId:symptomId:productId:batteryServiceLevel:)(SupportServices::SupportSymptomInfo *__return_ptr retstr, Swift::String categoryId, Swift::String symptomId, Swift::String_optional productId, Swift::Int batteryServiceLevel)
{
  retstr->categoryId = categoryId;
  retstr->symptomId = symptomId;
  retstr->productId = productId;
  retstr->batteryServiceLevel = batteryServiceLevel;
}

uint64_t SupportSymptomInfo.categoryId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SupportSymptomInfo.symptomId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SupportSymptomInfo.productId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SupportSymptomInfo.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  sub_26BDA0DF0();

  strcpy(v9, "Category ID: ");
  HIWORD(v9[1]) = -4864;
  MEMORY[0x26D695B80](v1, v2);
  MEMORY[0x26D695B80](0x6F74706D7953202CLL, 0xEE00203A4449206DLL);
  MEMORY[0x26D695B80](v3, v4);
  MEMORY[0x26D695B80](0x6375646F7250202CLL, 0xEE00203A44492074);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v5)
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x26D695B80](v7, v5);

  MEMORY[0x26D695B80](41, 0xE100000000000000);
  return v9[0];
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

uint64_t sub_26BD81914(uint64_t a1, int a2)
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

uint64_t sub_26BD81954(uint64_t result, int a2, int a3)
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

uint64_t UserAgent.appName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_147();
}

uint64_t UserAgent.systemName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_147();
}

uint64_t UserAgent.systemVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_147();
}

uint64_t UserAgent.deviceModel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_147();
}

void __swiftcall UserAgent.init(appName:systemName:systemVersion:deviceModel:)(SupportServices::UserAgent *__return_ptr retstr, Swift::String appName, Swift::String systemName, Swift::String systemVersion, Swift::String deviceModel)
{
  retstr->appName = appName;
  retstr->systemName = systemName;
  retstr->systemVersion = systemVersion;
  retstr->deviceModel = deviceModel;
}

void static UserAgent.hmt.getter(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 systemName];

  v5 = sub_26BDA0BD0();
  v7 = v6;

  v8 = [v2 currentDevice];
  v9 = [v8 systemVersion];

  v10 = sub_26BDA0BD0();
  v12 = v11;

  v13 = [v2 currentDevice];
  v14 = [v13 model];

  v15 = sub_26BDA0BD0();
  v17 = v16;

  *a1 = 0xD000000000000011;
  a1[1] = 0x800000026BDAFB30;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v10;
  a1[5] = v12;
  a1[6] = v15;
  a1[7] = v17;
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

uint64_t sub_26BD81BD0(uint64_t a1, int a2)
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

uint64_t sub_26BD81C10(uint64_t result, int a2, int a3)
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

uint64_t AllSolutionsResponse.hasRepairSolutions.getter()
{
  v1 = type metadata accessor for SupportOption(0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + *(type metadata accessor for AllSolutionsResponse(0) + 20));
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v1 + 20);
  v13 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  v15 = 0;
  while (v15 < *(v10 + 16))
  {
    sub_26BD81E2C(v13 + *(v4 + 72) * v15, v8);
    v16 = *&v8[v12];
    swift_beginAccess();
    v17 = *(v16 + 16);
    if (*(v16 + 24) == 1)
    {
      if ((v17 - 2) >= 9)
      {
        if (v17)
        {
LABEL_15:

          sub_26BD81E90(v8);
        }

        else
        {
          sub_26BD81E90(v8);
LABEL_14:
        }

        return 1;
      }

      result = sub_26BD81E90(v8);
    }

    else
    {
      if (v17 == 1)
      {
        goto LABEL_15;
      }

      result = sub_26BD81E90(v8);
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    if (v11 == ++v15)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD81E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD81E90(uint64_t a1)
{
  v2 = type metadata accessor for SupportOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContactSupportOptions.firstCallSupportOptionForHMT.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for SupportOption(0);
  v3 = OUTLINED_FUNCTION_18(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v3);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = *v1;
  v13 = *(v12 + 16);
  while (1)
  {
    if (v13 == v11)
    {
      v20 = 1;
      v19 = v21;
      return __swift_storeEnumTagSinglePayload(v19, v20, 1, v2);
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    sub_26BD81E2C(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v10);
    v14 = *&v10[*(v2 + 20)];
    swift_beginAccess();
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    v17 = v15 == 4475971 && v16 == 0xE300000000000000;
    if (v17 || (sub_26BDA0FB0() & 1) != 0 || (v15 == 0x454E4F4850 ? (v18 = v16 == 0xE500000000000000) : (v18 = 0), v18 || (sub_26BDA0FB0() & 1) != 0))
    {
      v19 = v21;
      sub_26BD820B4(v10, v21);
      v20 = 0;
      return __swift_storeEnumTagSinglePayload(v19, v20, 1, v2);
    }

    result = sub_26BD81E90(v10);
    ++v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD820B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HelpMeTroubleshootError.hashValue.getter()
{
  v1 = *v0;
  sub_26BDA1050();
  MEMORY[0x26D695FC0](v1);
  return sub_26BDA1070();
}

uint64_t sub_26BD821AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
  v1 = OUTLINED_FUNCTION_110(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(0);
  v8 = OUTLINED_FUNCTION_110(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_13_4();
  sub_26BD893FC();
  v14 = sub_26BDA0510();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 2, v14);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_8;
  }

  if (EnumTagSinglePayload == 1)
  {
    sub_26BDA04E0();
    OUTLINED_FUNCTION_112(v6, 1, v14);
    if (v16)
    {
      __break(1u);
    }

    goto LABEL_8;
  }

  sub_26BDA04E0();
  v17 = OUTLINED_FUNCTION_81_1();
  result = __swift_getEnumTagSinglePayload(v17, v18, v14);
  if (result != 1)
  {
LABEL_8:
    v20 = *(*(v14 - 8) + 32);
    v21 = OUTLINED_FUNCTION_147();
    return v22(v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD82368@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
  v2 = OUTLINED_FUNCTION_110(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - v5;
  v7 = sub_26BDA0510();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v15 = (v14 - v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B098, &unk_26BDA9D80);
  v17 = OUTLINED_FUNCTION_110(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = sub_26BDA0430();
  v23 = OUTLINED_FUNCTION_18(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_44();
  v30 = v29 - v28;
  sub_26BDA0420();

  OUTLINED_FUNCTION_112(v21, 1, v22);
  if (v31)
  {
    v32 = &qword_28044B098;
    v33 = &unk_26BDA9D80;
    v34 = v21;
LABEL_8:
    sub_26BD04E80(v34, v32, v33);
LABEL_10:
    v39 = 1;
    v38 = v41;
    return __swift_storeEnumTagSinglePayload(v38, v39, 2, v7);
  }

  (*(v25 + 32))(v30, v21, v22);
  sub_26BDA0410();
  if (!v35)
  {
    (*(v25 + 8))(v30, v22);
    goto LABEL_10;
  }

  sub_26BDA0400();
  (*(v25 + 8))(v30, v22);
  OUTLINED_FUNCTION_23(v6);
  if (v31)
  {
    v32 = &qword_28044AF40;
    v33 = &qword_26BDA9580;
    v34 = v6;
    goto LABEL_8;
  }

  v37 = *(v10 + 32);
  v37(v15, v6, v7);
  v38 = v41;
  v37(v41, v15, v7);
  v39 = 0;
  return __swift_storeEnumTagSinglePayload(v38, v39, 2, v7);
}

uint64_t HelpMeTroubleshootCoordinator.__allocating_init(with:environment:allowOverrides:)(_OWORD *a1, uint64_t a2, char a3)
{
  v42 = a2;
  v5 = type metadata accessor for HTTPRequestManager();
  v6 = OUTLINED_FUNCTION_34(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_57();
  v41 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v41 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(0);
  v18 = OUTLINED_FUNCTION_110(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_57();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v41 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v41 - v28;
  v30 = a1[1];
  v46[0] = *a1;
  v46[1] = v30;
  v31 = a1[3];
  v46[2] = a1[2];
  v46[3] = v31;
  v32 = [objc_opt_self() standardUserDefaults];
  v33 = sub_26BD829F0();
  v45[3] = v33;
  v45[4] = &off_287CB0E08;
  v45[0] = v32;
  v44[0] = a3;
  if ((a3 & 1) != 0 && (__swift_project_boxed_opaque_existential_1(v45, v33), off_287CB0E10(), v34))
  {
    sub_26BD82368(v27);
    v35 = v42;
  }

  else
  {
    OUTLINED_FUNCTION_13_4();
    v35 = v42;
    sub_26BD893FC();
  }

  sub_26BD89348();
  v36 = [objc_opt_self() mainBundle];
  result = sub_26BD892D8(v36);
  if (v38)
  {
    v39 = v14 + *(v5 + 24);
    sub_26BDA0B30();
    *v14 = &unk_26BDA9F00;
    v14[1] = 0;
    v14[2] = sub_26BD90D44;
    v14[3] = 0;
    *(v14 + *(v5 + 28)) = 0;
    sub_26BD89348();
    OUTLINED_FUNCTION_13_4();
    sub_26BD893FC();
    sub_26BD893A0(v44, v43);
    sub_26BD893FC();
    v40 = sub_26BD89454(v46, v23, v43);
    sub_26BD89728(v35, type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment);
    sub_26BD89728(v16, type metadata accessor for HTTPRequestManager);
    sub_26BD89728(v29, type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment);
    sub_26BD89780(v44);
    return v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26BD829F0()
{
  result = qword_28044AFC0;
  if (!qword_28044AFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28044AFC0);
  }

  return result;
}

uint64_t HelpMeTroubleshootCoordinator.fetchHMTSolution(languageID:regionID:)()
{
  OUTLINED_FUNCTION_30_2();
  v1[46] = v2;
  v1[47] = v0;
  v1[44] = v3;
  v1[45] = v4;
  v1[42] = v5;
  v1[43] = v6;
  v7 = sub_26BDA0770();
  v1[48] = v7;
  OUTLINED_FUNCTION_38_4(v7);
  v1[49] = v8;
  v10 = *(v9 + 64);
  v1[50] = OUTLINED_FUNCTION_78_1();
  v11 = type metadata accessor for HMTSolutionResponse(0);
  OUTLINED_FUNCTION_110(v11);
  v13 = *(v12 + 64);
  v1[51] = OUTLINED_FUNCTION_79_2();
  v1[52] = swift_task_alloc();
  sub_26BDA0D10();
  v1[53] = sub_26BDA0D00();
  v15 = sub_26BDA0CC0();
  v1[54] = v15;
  v1[55] = v14;

  return MEMORY[0x2822009F8](sub_26BD82B48, v15, v14);
}

uint64_t sub_26BD82B48()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  v1 = v0[50];
  v2 = v0[46];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  OUTLINED_FUNCTION_22_2((v0[47] + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
  OUTLINED_FUNCTION_98_2(v6);
  OUTLINED_FUNCTION_112_0();

  sub_26BD9FC20(v5, v3, v2, v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  v0[56] = v7;
  *v7 = v8;
  v7[1] = sub_26BD82C38;
  v9 = v0[52];
  v10 = v0[50];
  v11 = v0[47];
  OUTLINED_FUNCTION_84_1();

  return sub_26BD82F1C(v12, v13, v14);
}

uint64_t sub_26BD82C38()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;
  v5 = v2[56];
  v6 = v2[49];
  *v4 = *v1;
  v3[57] = v0;

  (*(v6 + 8))(v2[50], v2[48]);
  v7 = *(v3 + 5);
  v8 = *(v3 + 6);
  v9 = *(v3 + 8);
  if (v0)
  {
    *(v3 + 15) = *(v3 + 7);
    *(v3 + 16) = v9;
    *(v3 + 13) = v7;
    *(v3 + 14) = v8;
    sub_26BD89830((v3 + 26));
  }

  else
  {
    *(v3 + 19) = *(v3 + 7);
    *(v3 + 20) = v9;
    *(v3 + 17) = v7;
    *(v3 + 18) = v8;
    sub_26BD89830((v3 + 34));
  }

  v10 = v3[54];
  v11 = v3[55];
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26BD82DD8()
{
  OUTLINED_FUNCTION_31_4();
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[42];

  OUTLINED_FUNCTION_259();
  sub_26BD893FC();
  sub_26BD7D1BC(v3, v5);
  sub_26BD89728(v2, type metadata accessor for HMTSolutionResponse);

  OUTLINED_FUNCTION_21_2();

  return v6();
}

uint64_t sub_26BD82E9C()
{
  OUTLINED_FUNCTION_31_4();
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];

  OUTLINED_FUNCTION_25_1();
  v6 = v0[57];

  return v5();
}

uint64_t sub_26BD82F1C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  v6 = sub_26BDA0370();
  *(v4 + 104) = v6;
  v7 = *(v6 - 8);
  *(v4 + 112) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v9 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v9;
  v10 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v10;

  return MEMORY[0x2822009F8](sub_26BD82FF4, 0, 0);
}

uint64_t sub_26BD82FF4()
{
  OUTLINED_FUNCTION_34_3();
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12] + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_requestGenerator;
  sub_26BD8B378();
  v4 = v0[15];
  v5 = v0[12];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v0 + 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  v0[17] = v7;
  *v7 = v8;
  v7[1] = sub_26BD83128;
  v9 = v0[12];
  v10 = v0[10];
  OUTLINED_FUNCTION_55_0();

  return sub_26BD86F78(v11, v12, v13);
}

uint64_t sub_26BD83128()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (!v0)
  {
    v9 = *(v3 + 128);
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD83228()
{
  OUTLINED_FUNCTION_30_2();
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_21_2();

  return v1();
}

uint64_t sub_26BD8329C()
{
  OUTLINED_FUNCTION_31_4();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_259();
  v7(v6);
  v8 = v0[18];
  v9 = v0[15];

  OUTLINED_FUNCTION_25_1();

  return v10();
}

uint64_t HelpMeTroubleshootCoordinator.fetchSolutions(for:supportSymptomInfo:languageID:regionID:)()
{
  OUTLINED_FUNCTION_31_4();
  v3 = v2;
  v5 = v4;
  *(v1 + 488) = v6;
  *(v1 + 496) = v0;
  *(v1 + 472) = v7;
  *(v1 + 480) = v8;
  *(v1 + 456) = v9;
  *(v1 + 464) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFD0, &qword_26BDA9B08);
  OUTLINED_FUNCTION_110(v11);
  v13 = *(v12 + 64);
  *(v1 + 504) = OUTLINED_FUNCTION_78_1();
  v14 = sub_26BDA0770();
  *(v1 + 512) = v14;
  OUTLINED_FUNCTION_38_4(v14);
  *(v1 + 520) = v15;
  v17 = *(v16 + 64);
  *(v1 + 528) = OUTLINED_FUNCTION_78_1();
  v18 = type metadata accessor for TriageRequest.SymptomInformation(0);
  *(v1 + 536) = v18;
  OUTLINED_FUNCTION_110(v18);
  v20 = *(v19 + 64);
  *(v1 + 544) = OUTLINED_FUNCTION_78_1();
  v21 = *(v5 + 16);
  *(v1 + 552) = *v5;
  *(v1 + 568) = v21;
  *(v1 + 425) = *(v5 + 32);
  v22 = *(v3 + 16);
  *(v1 + 336) = *v3;
  *(v1 + 352) = v22;
  *(v1 + 368) = *(v3 + 32);
  *(v1 + 384) = *(v3 + 48);
  sub_26BDA0D10();
  *(v1 + 584) = sub_26BDA0D00();
  v24 = sub_26BDA0CC0();
  *(v1 + 592) = v24;
  *(v1 + 600) = v23;

  return MEMORY[0x2822009F8](sub_26BD8349C, v24, v23);
}

uint64_t sub_26BD8349C()
{
  v1 = *(v0 + 425);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 488);
  v5 = *(v0 + 496);
  v6 = *(v0 + 472);
  v22 = *(v0 + 480);
  v23 = *(v0 + 528);
  v21 = *(v0 + 464);
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_12_3();
  sub_26BD8A2E0(v8, v9);
  v19 = *(v0 + 568);
  v20 = *(v0 + 552);
  *(v7 + 16) = v0 + 336;
  OUTLINED_FUNCTION_100_2();

  *(v0 + 392) = v20;
  *(v0 + 408) = v19;
  *(v0 + 424) = v1;
  OUTLINED_FUNCTION_22_2((v5 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
  OUTLINED_FUNCTION_98_2(v10);
  v11 = *(v0 + 384);
  OUTLINED_FUNCTION_112_0();

  sub_26BD9FC20(v21, v22, v4, v23);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 608) = v12;
  *v12 = v13;
  v12[1] = sub_26BD83640;
  v14 = *(v0 + 544);
  v15 = *(v0 + 528);
  v16 = *(v0 + 496);
  v17 = *(v0 + 456);

  return sub_26BD83988(v17, v0 + 392, (v0 + 80), v14, v11, v15);
}

uint64_t sub_26BD83640()
{
  OUTLINED_FUNCTION_31_4();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;
  v5 = v2[76];
  *v4 = *v1;
  v3[77] = v0;

  (*(v2[65] + 8))(v2[66], v2[64]);
  v6 = *(v3 + 5);
  v7 = *(v3 + 6);
  v8 = *(v3 + 8);
  if (v0)
  {
    *(v3 + 15) = *(v3 + 7);
    *(v3 + 16) = v8;
    *(v3 + 13) = v6;
    *(v3 + 14) = v7;
    sub_26BD89830((v3 + 26));
    v9 = v3[75];
    v10 = v3[74];
    v11 = sub_26BD838F4;
  }

  else
  {
    *(v3 + 19) = *(v3 + 7);
    *(v3 + 20) = v8;
    *(v3 + 17) = v6;
    *(v3 + 18) = v7;
    sub_26BD89830((v3 + 34));
    v9 = v3[75];
    v10 = v3[74];
    v11 = sub_26BD837E8;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26BD837E8()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  v1 = v0[73];
  v2 = v0[68];
  v3 = v0[66];
  v5 = v0[62];
  v4 = v0[63];
  v6 = v0[57];

  OUTLINED_FUNCTION_5_4();
  sub_26BD89728(v2, v7);
  sub_26BD893FC();
  type metadata accessor for AllSolutionsResponse(0);
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_84_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26BD838F4()
{
  OUTLINED_FUNCTION_31_4();
  v1 = v0[73];
  v2 = v0[68];
  v3 = v0[66];
  v4 = v0[63];

  OUTLINED_FUNCTION_5_4();
  sub_26BD89728(v2, v5);

  OUTLINED_FUNCTION_25_1();
  v7 = v0[77];

  return v6();
}

uint64_t sub_26BD83988(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = v6;
  *(v7 + 96) = a4;
  *(v7 + 104) = a5;
  *(v7 + 80) = a1;
  *(v7 + 88) = a3;
  v10 = sub_26BDA0370();
  *(v7 + 128) = v10;
  v11 = *(v10 - 8);
  *(v7 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v13 = *(a2 + 16);
  *(v7 + 152) = *a2;
  *(v7 + 168) = v13;
  *(v7 + 208) = *(a2 + 32);
  v14 = a3[1];
  *(v7 + 16) = *a3;
  *(v7 + 32) = v14;
  v15 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v15;

  return MEMORY[0x2822009F8](sub_26BD83A84, 0, 0);
}

uint64_t sub_26BD83A84()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v18 = *(v0 + 152);
  v19 = *(v0 + 168);
  v20 = *(v0 + 208);
  v21 = *v6;
  v22 = v6[1];
  v23 = v6[2];
  v24 = v6[3];
  sub_26BD8B998();
  v7 = *(v0 + 144);
  v8 = *(v0 + 120);
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v0 + 16;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 192) = v10;
  *v10 = v11;
  v10[1] = sub_26BD83BF0;
  v12 = *(v0 + 120);
  v13 = *(v0 + 80);
  OUTLINED_FUNCTION_55_0();

  return sub_26BD8742C(v14, v15, v16);
}

uint64_t sub_26BD83BF0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (!v0)
  {
    v9 = *(v3 + 184);
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD83CF0()
{
  OUTLINED_FUNCTION_30_2();
  (*(v0[17] + 8))(v0[18], v0[16]);

  OUTLINED_FUNCTION_21_2();

  return v1();
}

uint64_t sub_26BD83D64()
{
  OUTLINED_FUNCTION_31_4();
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_259();
  v7(v6);
  v8 = v0[25];
  v9 = v0[18];

  OUTLINED_FUNCTION_25_1();

  return v10();
}

uint64_t HelpMeTroubleshootCoordinator.createCase(for:contactType:supportSymptomInfo:context:languageID:regionID:)()
{
  OUTLINED_FUNCTION_31_4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 720) = v0;
  *(v1 + 712) = v54;
  *(v1 + 704) = v8;
  *(v1 + 696) = v9;
  *(v1 + 688) = v10;
  *(v1 + 680) = v11;
  *(v1 + 672) = v12;
  v13 = sub_26BDA0770();
  *(v1 + 728) = v13;
  OUTLINED_FUNCTION_38_4(v13);
  *(v1 + 736) = v14;
  v16 = *(v15 + 64);
  *(v1 + 744) = OUTLINED_FUNCTION_78_1();
  v17 = type metadata accessor for ExecuteResponse(0);
  *(v1 + 752) = v17;
  OUTLINED_FUNCTION_110(v17);
  v19 = *(v18 + 64);
  *(v1 + 760) = OUTLINED_FUNCTION_79_2();
  *(v1 + 768) = swift_task_alloc();
  v20 = type metadata accessor for TriageRequest.SymptomInformation(0);
  *(v1 + 776) = v20;
  OUTLINED_FUNCTION_110(v20);
  v22 = *(v21 + 64);
  *(v1 + 784) = OUTLINED_FUNCTION_78_1();
  v23 = type metadata accessor for SupportOption(0);
  *(v1 + 792) = v23;
  OUTLINED_FUNCTION_38_4(v23);
  *(v1 + 800) = v24;
  v26 = *(v25 + 64);
  *(v1 + 808) = OUTLINED_FUNCTION_79_2();
  *(v1 + 816) = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  OUTLINED_FUNCTION_110(v27);
  v29 = *(v28 + 64);
  *(v1 + 824) = OUTLINED_FUNCTION_79_2();
  *(v1 + 832) = swift_task_alloc();
  v30 = type metadata accessor for ContactSupportOptions(0);
  *(v1 + 840) = v30;
  OUTLINED_FUNCTION_110(v30);
  v32 = *(v31 + 64);
  *(v1 + 848) = OUTLINED_FUNCTION_79_2();
  *(v1 + 856) = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_110(v33);
  v35 = *(v34 + 64);
  *(v1 + 864) = OUTLINED_FUNCTION_79_2();
  *(v1 + 872) = swift_task_alloc();
  *(v1 + 880) = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFE0, &qword_26BDA9B20);
  OUTLINED_FUNCTION_110(v36);
  v38 = *(v37 + 64);
  *(v1 + 888) = OUTLINED_FUNCTION_79_2();
  *(v1 + 896) = swift_task_alloc();
  v39 = type metadata accessor for AuthResponse(0);
  *(v1 + 904) = v39;
  OUTLINED_FUNCTION_110(v39);
  v41 = *(v40 + 64);
  *(v1 + 912) = OUTLINED_FUNCTION_79_2();
  *(v1 + 920) = swift_task_alloc();
  *(v1 + 928) = swift_task_alloc();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFD0, &qword_26BDA9B08);
  OUTLINED_FUNCTION_110(v42);
  v44 = *(v43 + 64);
  *(v1 + 936) = OUTLINED_FUNCTION_78_1();
  v45 = type metadata accessor for AllSolutionsResponse(0);
  *(v1 + 944) = v45;
  OUTLINED_FUNCTION_110(v45);
  v47 = *(v46 + 64);
  *(v1 + 952) = OUTLINED_FUNCTION_78_1();
  v48 = *(v7 + 16);
  *(v1 + 960) = *v7;
  *(v1 + 976) = v48;
  *(v1 + 425) = *(v7 + 32);
  *(v1 + 426) = *v5;
  v49 = *(v3 + 16);
  *(v1 + 336) = *v3;
  *(v1 + 352) = v49;
  *(v1 + 368) = *(v3 + 32);
  *(v1 + 384) = *(v3 + 48);
  sub_26BDA0D10();
  *(v1 + 992) = sub_26BDA0D00();
  v51 = sub_26BDA0CC0();
  *(v1 + 1000) = v51;
  *(v1 + 1008) = v50;

  return MEMORY[0x2822009F8](sub_26BD84150, v51, v50);
}

void sub_26BD84150()
{
  v3 = *(v0 + 944);
  v4 = *(v0 + 936);
  v5 = *(v0 + 720);
  OUTLINED_FUNCTION_230();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(v4, 1, v3);
  if (v17)
  {
    v6 = *(v0 + 992);
    v7 = *(v0 + 936);

    sub_26BD04E80(v7, &qword_28044AFD0, &qword_26BDA9B08);
    sub_26BD89884();
    OUTLINED_FUNCTION_72_1();
    *v8 = 2;
    swift_willThrow();
LABEL_4:
    OUTLINED_FUNCTION_91_2();
    v9 = *(v0 + 928);
    v10 = *(v0 + 920);
    OUTLINED_FUNCTION_8_6();
    v113 = *(v0 + 832);
    v115 = *(v0 + 824);
    v116 = *(v0 + 816);
    v118 = *(v0 + 808);
    v120 = *(v0 + 784);
    v122 = *(v0 + 768);
    v124 = *(v0 + 760);
    v126 = *(v0 + 744);

    OUTLINED_FUNCTION_25_1();

    v11();
    return;
  }

  v12 = *(v0 + 952);
  v13 = *(v0 + 936);
  v14 = *(v0 + 904);
  v15 = *(v0 + 896);
  v16 = *(v0 + 720);
  sub_26BD89348();
  *(v0 + 1016) = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedAuthResponse;
  OUTLINED_FUNCTION_230();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(v15, 1, v14);
  if (v17)
  {
    sub_26BD04E80(*(v0 + 896), &qword_28044AFE0, &qword_26BDA9B20);
    swift_task_alloc();
    OUTLINED_FUNCTION_35_4();
    *(v0 + 1024) = v18;
    *v18 = v19;
    v18[1] = sub_26BD84938;
    v20 = *(v0 + 912);
    v21 = *(v0 + 720);

    sub_26BD85850(v20);
  }

  else
  {
    v22 = v0 + 392;
    v23 = *(v0 + 928);
    v24 = *(v0 + 920);
    v25 = *(v0 + 896);
    sub_26BD89348();
    sub_26BD89348();
    OUTLINED_FUNCTION_87_1();
    v29 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
    v30 = *(v0 + 840);
    v127 = *(v27 + v28);
    if (v26)
    {
      v31 = *(v0 + 824);
      OUTLINED_FUNCTION_230();
      sub_26BD31AF8();
      v32 = OUTLINED_FUNCTION_81_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, v33, v30);
      v35 = *(v0 + 848);
      if (EnumTagSinglePayload == 1)
      {
        v36 = *(v0 + 840);
        v37 = *(v0 + 824);
        v1 = *(v0 + 792);
        OUTLINED_FUNCTION_16_2(MEMORY[0x277D84F90]);
        v38 = v35 + v36[10];
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        v39 = OUTLINED_FUNCTION_23_3(v36[11]);
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v1);
        v42 = OUTLINED_FUNCTION_23_3(v36[12]);
        __swift_storeEnumTagSinglePayload(v42, v43, v44, v1);
        OUTLINED_FUNCTION_23(v37);
        if (!v17)
        {
          sub_26BD04E80(*(v0 + 824), &unk_280448F78, &unk_26BDA1A40);
        }
      }

      else
      {
        v60 = *(v0 + 824);
        OUTLINED_FUNCTION_7_4();
      }

      v61 = *(v0 + 848);
      v62 = *(v0 + 792);
      ContactSupportOptions.chatSupportOption.getter(*(v0 + 872));
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_151();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
LABEL_39:
      v80 = *(v0 + 880);
      v81 = *(v0 + 864);
      v82 = *(v0 + 792);
      sub_26BD898D8(*(v0 + 872), v80);
      sub_26BD31AF8();
      v83 = OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_112(v83, v84, v82);
      if (!v17)
      {
        v88 = *(v22 + 33);
        v89 = *(v0 + 864);
        v90 = *(v0 + 808);
        v91 = *(v0 + 784);
        v92 = *(v0 + 776);
        v93 = *(v0 + 720);
        v94 = *(v0 + 712);
        v123 = *(v0 + 704);
        v125 = *(v0 + 744);
        v95 = *(v0 + 696);
        v121 = *(v0 + 688);
        v117 = *(v0 + 976);
        v119 = *(v0 + 960);
        OUTLINED_FUNCTION_10_1();
        *(swift_task_alloc() + 16) = v0 + 336;
        OUTLINED_FUNCTION_12_3();
        sub_26BD8A2E0(v96, v97);
        OUTLINED_FUNCTION_39_5();
        OUTLINED_FUNCTION_100_2();

        OUTLINED_FUNCTION_22_2((v93 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
        OUTLINED_FUNCTION_69_0(v98, v110, v111, v112, v114, v117, v119);
        *(v22 + 32) = v88;
        v99 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
        OUTLINED_FUNCTION_230();
        v100 = *(v127 + v99);
        *(v0 + 1040) = v100;
        OUTLINED_FUNCTION_112_0();

        sub_26BD9FC20(v121, v123, v94, v125);
        swift_task_alloc();
        OUTLINED_FUNCTION_35_4();
        *(v0 + 1048) = v101;
        *v101 = v102;
        v103 = OUTLINED_FUNCTION_29_2(v101);

        sub_26BD85C98(v103, v104, v105, v106, v107, v108, v109, v100);
        return;
      }

      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_110_0(v80);
      sub_26BD89884();
      OUTLINED_FUNCTION_72_1();
      *v85 = 3;
      swift_willThrow();
      OUTLINED_FUNCTION_110_0(v1);
      OUTLINED_FUNCTION_3_5();
      sub_26BD89728(v82, v86);
      OUTLINED_FUNCTION_2_4();
      sub_26BD89728(v29, v87);
      goto LABEL_4;
    }

    v45 = *(v0 + 832);
    OUTLINED_FUNCTION_230();
    sub_26BD31AF8();
    v46 = OUTLINED_FUNCTION_81_1();
    v48 = __swift_getEnumTagSinglePayload(v46, v47, v30);
    v49 = *(v0 + 856);
    if (v48 == 1)
    {
      v50 = *(v0 + 840);
      v51 = *(v0 + 832);
      v52 = *(v0 + 792);
      OUTLINED_FUNCTION_16_2(MEMORY[0x277D84F90]);
      v53 = v49 + v50[10];
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      v54 = OUTLINED_FUNCTION_23_3(v50[11]);
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
      v57 = OUTLINED_FUNCTION_23_3(v50[12]);
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v52);
      OUTLINED_FUNCTION_23(v51);
      if (!v17)
      {
        sub_26BD04E80(*(v0 + 832), &unk_280448F78, &unk_26BDA1A40);
      }
    }

    else
    {
      v66 = *(v0 + 832);
      OUTLINED_FUNCTION_7_4();
    }

    v1 = 0;
    OUTLINED_FUNCTION_60_1();
    v29 = *(v2 + 16);
    while (1)
    {
      if (v29 == v1)
      {
        v78 = 1;
        goto LABEL_38;
      }

      if (v1 >= *(v2 + 16))
      {
        break;
      }

      v67 = *(v0 + 816);
      OUTLINED_FUNCTION_82_2();
      OUTLINED_FUNCTION_44_0();
      sub_26BD893FC();
      v68 = *(v67 + *(v0 + 412));
      OUTLINED_FUNCTION_230();
      v69 = *(v68 + 32);
      v70 = *(v68 + 40);
      v71 = v69 == 4475971 && v70 == 0xE300000000000000;
      if (v71 || (OUTLINED_FUNCTION_102_0() & 1) != 0 || (v69 == v49 ? (v72 = v70 == 0xE500000000000000) : (v72 = 0), v72 || (sub_26BDA0FB0() & 1) != 0))
      {
        v76 = *(v0 + 872);
        v77 = *(v0 + 816);
        OUTLINED_FUNCTION_10_1();
        v78 = 0;
LABEL_38:
        v79 = *(v0 + 856);
        __swift_storeEnumTagSinglePayload(*(v0 + 872), v78, 1, *(v0 + 792));
        OUTLINED_FUNCTION_6_4();
        v22 = v0 + 392;
        goto LABEL_39;
      }

      v73 = *(v0 + 816);
      OUTLINED_FUNCTION_4_4();
      sub_26BD89728(v74, v75);
      ++v1;
    }

    __break(1u);
  }
}

uint64_t sub_26BD84938()
{
  OUTLINED_FUNCTION_31_4();
  v2 = *v1;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v5 = v2[128];
  *v4 = *v1;
  *(v3 + 1032) = v0;

  v6 = v2[126];
  v7 = v2[125];
  if (v0)
  {
    v8 = sub_26BD8557C;
  }

  else
  {
    v8 = sub_26BD84A68;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

void sub_26BD84A68()
{
  v2 = v0 + 392;
  v3 = *(v0 + 1016);
  v4 = *(v0 + 928);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 888);
  v8 = *(v0 + 720);
  sub_26BD893FC();
  sub_26BD89348();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v12 = *(v0 + 1032);
  OUTLINED_FUNCTION_87_1();
  v15 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  v16 = *(v0 + 840);
  v113 = *(v13 + v14);
  if (v17)
  {
    v18 = *(v0 + 824);
    OUTLINED_FUNCTION_230();
    sub_26BD31AF8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v16);
    v20 = *(v0 + 848);
    if (EnumTagSinglePayload == 1)
    {
      v21 = *(v0 + 840);
      v22 = *(v0 + 824);
      v23 = *(v0 + 792);
      OUTLINED_FUNCTION_16_2(MEMORY[0x277D84F90]);
      v24 = v20 + v21[10];
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      v25 = OUTLINED_FUNCTION_23_3(v21[11]);
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
      v28 = OUTLINED_FUNCTION_23_3(v21[12]);
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v23);
      OUTLINED_FUNCTION_112(v22, 1, v21);
      if (!v56)
      {
        sub_26BD04E80(*(v0 + 824), &unk_280448F78, &unk_26BDA1A40);
      }
    }

    else
    {
      v44 = *(v0 + 824);
      OUTLINED_FUNCTION_7_4();
    }

    v45 = *(v0 + 848);
    v46 = *(v0 + 792);
    ContactSupportOptions.chatSupportOption.getter(*(v0 + 872));
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
LABEL_28:
    v65 = *(v0 + 880);
    v66 = *(v0 + 864);
    v67 = *(v0 + 792);
    sub_26BD898D8(*(v0 + 872), v65);
    sub_26BD31AF8();
    OUTLINED_FUNCTION_112(v66, 1, v67);
    if (v56)
    {
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_110_0(v65);
      sub_26BD89884();
      OUTLINED_FUNCTION_72_1();
      *v68 = 3;
      swift_willThrow();
      OUTLINED_FUNCTION_110_0(v67);
      OUTLINED_FUNCTION_3_5();
      sub_26BD89728(v66, v69);
      OUTLINED_FUNCTION_2_4();
      sub_26BD89728(v15, v70);
      OUTLINED_FUNCTION_91_2();
      v71 = *(v0 + 928);
      v72 = *(v0 + 920);
      OUTLINED_FUNCTION_8_6();
      v100 = *(v0 + 832);
      v101 = *(v0 + 824);
      v103 = *(v0 + 816);
      v105 = *(v0 + 808);
      v107 = *(v0 + 784);
      v109 = *(v0 + 768);
      v111 = *(v0 + 760);
      v112 = *(v0 + 744);

      OUTLINED_FUNCTION_25_1();

      v73();
    }

    else
    {
      v74 = *(v2 + 33);
      v75 = *(v0 + 864);
      v76 = *(v0 + 808);
      v77 = *(v0 + 784);
      v78 = *(v0 + 776);
      v79 = *(v0 + 720);
      v80 = *(v0 + 712);
      v108 = *(v0 + 704);
      v110 = *(v0 + 744);
      v81 = *(v0 + 696);
      v106 = *(v0 + 688);
      v102 = *(v0 + 976);
      v104 = *(v0 + 960);
      OUTLINED_FUNCTION_10_1();
      *(swift_task_alloc() + 16) = v0 + 336;
      OUTLINED_FUNCTION_12_3();
      sub_26BD8A2E0(v82, v83);
      OUTLINED_FUNCTION_39_5();
      sub_26BDA0A10();

      OUTLINED_FUNCTION_22_2((v79 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
      OUTLINED_FUNCTION_69_0(v84, v96, v97, v98, v99, v102, v104);
      *(v2 + 32) = v74;
      v85 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
      OUTLINED_FUNCTION_230();
      v86 = *(v113 + v85);
      *(v0 + 1040) = v86;
      OUTLINED_FUNCTION_112_0();

      sub_26BD9FC20(v106, v108, v80, v110);
      swift_task_alloc();
      OUTLINED_FUNCTION_35_4();
      *(v0 + 1048) = v87;
      *v87 = v88;
      v89 = OUTLINED_FUNCTION_29_2(v87);

      sub_26BD85C98(v89, v90, v91, v92, v93, v94, v95, v86);
    }
  }

  else
  {
    v31 = *(v0 + 832);
    OUTLINED_FUNCTION_230();
    sub_26BD31AF8();
    v32 = __swift_getEnumTagSinglePayload(v31, 1, v16);
    v33 = *(v0 + 856);
    if (v32 == 1)
    {
      v34 = *(v0 + 840);
      v35 = *(v0 + 832);
      v36 = *(v0 + 792);
      OUTLINED_FUNCTION_16_2(MEMORY[0x277D84F90]);
      v37 = v33 + v34[10];
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      v38 = OUTLINED_FUNCTION_23_3(v34[11]);
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v36);
      v41 = OUTLINED_FUNCTION_23_3(v34[12]);
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v36);
      OUTLINED_FUNCTION_112(v35, 1, v34);
      if (!v56)
      {
        sub_26BD04E80(*(v0 + 832), &unk_280448F78, &unk_26BDA1A40);
      }
    }

    else
    {
      v50 = *(v0 + 832);
      OUTLINED_FUNCTION_7_4();
    }

    v15 = 0;
    OUTLINED_FUNCTION_60_1();
    v51 = *(v1 + 16);
    while (1)
    {
      if (v51 == v15)
      {
        v63 = 1;
        goto LABEL_27;
      }

      if (v15 >= *(v1 + 16))
      {
        break;
      }

      v52 = *(v0 + 816);
      OUTLINED_FUNCTION_82_2();
      OUTLINED_FUNCTION_44_0();
      sub_26BD893FC();
      v53 = *(v52 + *(v0 + 412));
      OUTLINED_FUNCTION_230();
      v54 = *(v53 + 32);
      v55 = *(v53 + 40);
      v56 = v54 == 4475971 && v55 == 0xE300000000000000;
      if (v56 || (OUTLINED_FUNCTION_256(), (OUTLINED_FUNCTION_102_0() & 1) != 0) || (v54 == v33 ? (v57 = v55 == 0xE500000000000000) : (v57 = 0), v57 || (OUTLINED_FUNCTION_256(), (sub_26BDA0FB0() & 1) != 0)))
      {
        v61 = *(v0 + 872);
        v62 = *(v0 + 816);
        OUTLINED_FUNCTION_10_1();
        v63 = 0;
LABEL_27:
        v64 = *(v0 + 856);
        __swift_storeEnumTagSinglePayload(*(v0 + 872), v63, 1, *(v0 + 792));
        OUTLINED_FUNCTION_6_4();
        v2 = v0 + 392;
        goto LABEL_28;
      }

      v58 = *(v0 + 816);
      OUTLINED_FUNCTION_4_4();
      sub_26BD89728(v59, v60);
      ++v15;
    }

    __break(1u);
  }
}

uint64_t sub_26BD85130()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;
  v5 = v2[131];
  *v4 = *v1;
  v3[132] = v0;

  v6 = v2[130];
  v7 = v2[93];
  v8 = v2[91];
  v9 = (v2[92] + 8);

  (*v9)(v7, v8);
  v10 = *(v3 + 5);
  v11 = *(v3 + 6);
  v12 = *(v3 + 8);
  if (v0)
  {
    *(v3 + 15) = *(v3 + 7);
    *(v3 + 16) = v12;
    *(v3 + 13) = v10;
    *(v3 + 14) = v11;
    sub_26BD89830((v3 + 26));
  }

  else
  {
    *(v3 + 19) = *(v3 + 7);
    *(v3 + 20) = v12;
    *(v3 + 17) = v10;
    *(v3 + 18) = v11;
    sub_26BD89830((v3 + 34));
  }

  v13 = v3[126];
  v14 = v3[125];
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_26BD85304()
{
  v1 = v0[124];
  v2 = v0[119];
  v21 = v0[117];
  v3 = v0[116];
  v23 = v0[115];
  v24 = v0[114];
  v25 = v0[112];
  v26 = v0[111];
  v4 = v0[110];
  v27 = v0[109];
  v28 = v0[108];
  v29 = v0[107];
  v30 = v0[106];
  v31 = v0[104];
  v32 = v0[103];
  v33 = v0[102];
  v5 = v0[101];
  v6 = v0[98];
  v22 = v0[96];
  v7 = v0[95];
  v8 = v0[94];
  v34 = v0[93];
  v9 = v0[84];

  OUTLINED_FUNCTION_5_4();
  sub_26BD89728(v6, v10);
  OUTLINED_FUNCTION_4_4();
  sub_26BD89728(v5, v11);
  sub_26BD04E80(v4, &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_3_5();
  sub_26BD89728(v3, v12);
  sub_26BD89348();
  v13 = *(v7 + *(v8 + 20));
  OUTLINED_FUNCTION_230();
  v14 = v13[3];
  *v9 = v13[2];
  v9[1] = v14;
  OUTLINED_FUNCTION_230();
  v15 = v13[63];
  v9[2] = v13[62];
  v9[3] = v15;
  OUTLINED_FUNCTION_230();
  v16 = v13[70];
  v17 = v13[71];

  sub_26BD89728(v7, type metadata accessor for ExecuteResponse);
  v9[4] = v16;
  v9[5] = v17;
  OUTLINED_FUNCTION_2_4();
  sub_26BD89728(v2, v18);

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_99_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26BD8557C()
{
  v1 = v0[124];
  v2 = v0[119];

  OUTLINED_FUNCTION_2_4();
  sub_26BD89728(v2, v3);
  v8 = v0[129];
  OUTLINED_FUNCTION_91_2();
  v4 = v0[116];
  v5 = v0[115];
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_25_1();

  return v6();
}

uint64_t sub_26BD856C0()
{
  v1 = v0[124];
  v2 = v0[119];
  v3 = v0[116];
  v4 = v0[110];
  v5 = v0[101];
  v6 = v0[98];

  OUTLINED_FUNCTION_5_4();
  sub_26BD89728(v6, v7);
  OUTLINED_FUNCTION_4_4();
  sub_26BD89728(v5, v8);
  sub_26BD04E80(v4, &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_3_5();
  sub_26BD89728(v3, v9);
  OUTLINED_FUNCTION_2_4();
  sub_26BD89728(v2, v10);
  v15 = v0[132];
  OUTLINED_FUNCTION_91_2();
  v11 = v0[116];
  v12 = v0[115];
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_25_1();

  return v13();
}

uint64_t sub_26BD85850(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26BDA0370();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD85910, 0, 0);
}

uint64_t sub_26BD85910()
{
  OUTLINED_FUNCTION_31_4();
  v1 = v0[6];
  v2 = v0[3] + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_requestGenerator;
  sub_26BD8B050();
  v3 = v0[6];
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  v0[8] = v6;
  *v6 = v7;
  v6[1] = sub_26BD85A2C;
  v8 = v0[2];
  v9 = v0[3];
  OUTLINED_FUNCTION_55_0();

  return sub_26BD878E0(v10, v11, v12);
}

uint64_t sub_26BD85A2C()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD85B2C()
{
  OUTLINED_FUNCTION_30_2();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_21_2();

  return v1();
}

uint64_t sub_26BD85BA0()
{
  OUTLINED_FUNCTION_31_4();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_259();
  v7(v6);
  v8 = v0[9];
  v9 = v0[6];

  OUTLINED_FUNCTION_25_1();

  return v10();
}

uint64_t sub_26BD85C24(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a1[1];

  *a1 = v5;
  a1[1] = v4;
  v8 = a2[2];
  v7 = a2[3];
  v9 = a1[5];

  a1[4] = v8;
  a1[5] = v7;
  return result;
}

uint64_t sub_26BD85C98(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 184) = v39;
  *(v9 + 192) = v8;
  *(v9 + 168) = a7;
  *(v9 + 176) = a8;
  *(v9 + 152) = a4;
  *(v9 + 160) = a6;
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
  v12 = sub_26BDA08A0();
  *(v9 + 200) = v12;
  v13 = *(v12 - 8);
  *(v9 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  v15 = type metadata accessor for ExecuteSupportOptionRequest(0);
  *(v9 + 224) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v9 + 232) = swift_task_alloc();
  v17 = sub_26BDA04C0();
  *(v9 + 240) = v17;
  v18 = *(v17 - 8);
  *(v9 + 248) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 256) = swift_task_alloc();
  v20 = sub_26BDA0510();
  *(v9 + 264) = v20;
  v21 = *(v20 - 8);
  *(v9 + 272) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  v23 = sub_26BDA0750();
  *(v9 + 304) = v23;
  v24 = *(v23 - 8);
  *(v9 + 312) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 320) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B050, &qword_26BDA9CD0) - 8) + 64) + 15;
  *(v9 + 328) = swift_task_alloc();
  v27 = sub_26BDA03F0();
  *(v9 + 336) = v27;
  v28 = *(v27 - 8);
  *(v9 + 344) = v28;
  v29 = *(v28 + 64) + 15;
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8) - 8) + 64) + 15;
  *(v9 + 376) = swift_task_alloc();
  v31 = sub_26BDA0370();
  *(v9 + 384) = v31;
  v32 = *(v31 - 8);
  *(v9 + 392) = v32;
  v33 = *(v32 + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  v34 = a3[1];
  *(v9 + 16) = *a3;
  *(v9 + 32) = v34;
  v35 = a3[3];
  *(v9 + 48) = a3[2];
  *(v9 + 64) = v35;
  v36 = *(a5 + 16);
  *(v9 + 80) = *a5;
  *(v9 + 96) = v36;
  *(v9 + 112) = *(a5 + 32);

  return MEMORY[0x2822009F8](sub_26BD86044, 0, 0);
}

uint64_t sub_26BD86044()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_requestGenerator;
  sub_26BDA0710();
  v5 = sub_26BDA06E0();
  v6 = OUTLINED_FUNCTION_81_1();
  if (__swift_getEnumTagSinglePayload(v6, v7, v5) == 1)
  {
    sub_26BD04E80(*(v0 + 376), &qword_28044B058, &qword_26BDA9CD8);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = *(v0 + 368);
    sub_26BDA0690();
    v10 = *(*(v5 - 8) + 8);
    v11 = OUTLINED_FUNCTION_259();
    v12(v11);
    sub_26BDA03E0();

    OUTLINED_FUNCTION_0_12();
    sub_26BD88EC4(0, 1, 1, v13, v14, v15, v16, v17);
    v8 = v18;
    v19 = *(v18 + 16);
    if (v19 >= *(v18 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_12();
      sub_26BD88EC4(v87, v19 + 1, 1, v8, v88, v89, v90, v91);
      v8 = v92;
    }

    v20 = *(v0 + 368);
    v21 = OUTLINED_FUNCTION_58_2();
    v22(v21);
  }

  v23 = v3 + v4;
  v24 = *(v0 + 320);
  v25 = *(v0 + 328);
  v26 = *(v0 + 304);
  v27 = *(v0 + 312);
  v28 = *(v0 + 184);
  sub_26BDA0760();
  sub_26BDA0730();
  (*(v27 + 8))(v24, v26);
  v29 = sub_26BDA06A0();
  OUTLINED_FUNCTION_23(v25);
  if (v30)
  {
    sub_26BD04E80(*(v0 + 328), &qword_28044B050, &qword_26BDA9CD0);
  }

  else
  {
    v31 = *(v0 + 360);
    v32 = *(v0 + 328);
    sub_26BDA0690();
    (*(*(v29 - 8) + 8))(v32, v29);
    sub_26BDA03E0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = *(v8 + 16);
      OUTLINED_FUNCTION_0_12();
      sub_26BD88EC4(0, v94 + 1, 1, v8, v95, v96, v97, v98);
      v8 = v99;
    }

    v34 = *(v8 + 16);
    if (v34 >= *(v8 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_12();
      sub_26BD88EC4(v100, v34 + 1, 1, v8, v101, v102, v103, v104);
      v8 = v105;
    }

    v35 = *(v0 + 360);
    v36 = OUTLINED_FUNCTION_58_2();
    v37(v36);
  }

  v38 = *(v0 + 352);
  sub_26BD8C36C();
  sub_26BDA03E0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = *(v8 + 16);
    OUTLINED_FUNCTION_0_12();
    sub_26BD88EC4(0, v73 + 1, 1, v8, v74, v75, v76, v77);
    v8 = v78;
  }

  v39 = *(v8 + 16);
  v40 = v39 + 1;
  v116 = v0 + 16;
  v41 = v23;
  if (v39 >= *(v8 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_12();
    v79 = v8;
    v81 = v80;
    sub_26BD88EC4(v82, v80, 1, v79, v83, v84, v85, v86);
    v40 = v81;
  }

  else
  {
    v42 = v8;
  }

  v44 = *(v0 + 344);
  v43 = *(v0 + 352);
  v45 = *(v0 + 336);
  v46 = *(v0 + 288);
  v107 = *(v0 + 296);
  v108 = *(v0 + 400);
  v48 = *(v0 + 272);
  v47 = *(v0 + 280);
  v49 = *(v0 + 256);
  v106 = *(v0 + 264);
  v50 = *(v0 + 240);
  v51 = *(v0 + 248);
  v113 = *(v0 + 232);
  v114 = *(v0 + 224);
  v115 = *(v0 + 216);
  v111 = *(v0 + 160);
  v112 = *(v0 + 184);
  v52 = *(v0 + 144);
  v109 = v52;
  v110 = *(v0 + 168);
  *(v42 + 16) = v40;
  (*(v44 + 32))(v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v39, v43, v45);
  sub_26BD821AC();
  *(v0 + 120) = 0xD000000000000022;
  *(v0 + 128) = 0x800000026BDAFC60;
  (*(v51 + 104))(v49, *MEMORY[0x277CC91D8], v50);
  sub_26BD89E4C();
  sub_26BDA0500();
  (*(v51 + 8))(v49, v50);
  v53 = *(v48 + 8);
  v53(v47, v106);
  sub_26BDA04F0();
  v53(v46, v106);
  sub_26BDA0320();
  sub_26BDA0300();
  v54 = swift_task_alloc();
  *(v54 + 16) = v41;
  *(v54 + 24) = v0 + 80;
  *(v54 + 32) = v111;
  *(v54 + 40) = v109;
  *(v54 + 56) = v116;
  *(v54 + 64) = v112;
  *(v54 + 72) = v110;
  sub_26BD8A2E0(&qword_28044A568, type metadata accessor for ExecuteSupportOptionRequest);
  sub_26BDA0A10();

  sub_26BDA0890();
  sub_26BDA09C0();
  v56 = *(v0 + 400);
  v55 = *(v0 + 408);
  v57 = *(v0 + 384);
  v58 = *(v0 + 392);
  v59 = *(v0 + 232);
  v60 = *(v0 + 192);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  OUTLINED_FUNCTION_259();
  sub_26BDA0350();
  OUTLINED_FUNCTION_45_2();
  sub_26BD89728(v59, v61);
  (*(v58 + 32))(v55, v56, v57);
  v62 = swift_task_alloc();
  *(v0 + 416) = v62;
  v62[2] = v60;
  v62[3] = v55;
  v62[4] = v116;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 424) = v63;
  *v63 = v64;
  v63[1] = sub_26BD86880;
  v65 = *(v0 + 192);
  v66 = *(v0 + 136);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_99_1();

  return sub_26BD87DF8(v67, v68, v69);
}

uint64_t sub_26BD86880()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;
  *(v3 + 432) = v0;

  if (!v0)
  {
    v9 = *(v3 + 416);
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD86980()
{
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];
  v12 = v0[36];
  v13 = v0[35];
  v9 = v0[32];
  v14 = v0[29];
  v15 = v0[27];
  (*(v0[49] + 8))(v0[51], v0[48]);

  OUTLINED_FUNCTION_21_2();

  return v10();
}

uint64_t sub_26BD86AAC()
{
  v1 = v0[52];

  v17 = v0[54];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[37];
  v13 = v0[36];
  v14 = v0[35];
  v10 = v0[32];
  v15 = v0[29];
  v16 = v0[27];
  (*(v0[49] + 8))(v0[51], v0[48]);

  OUTLINED_FUNCTION_25_1();

  return v11();
}

uint64_t sub_26BD86BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *(*(sub_26BDA0880() - 8) + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD86C84, 0, 0);
}

uint64_t sub_26BD86C84()
{
  OUTLINED_FUNCTION_31_4();
  v1 = v0[13];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  OUTLINED_FUNCTION_22_2((v1 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_15_1(v3);

  return sub_26BD90EF4();
}

uint64_t sub_26BD86D48()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_28_4();
  v5 = v4;
  OUTLINED_FUNCTION_17_5();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v2;
  OUTLINED_FUNCTION_9_4();
  *v10 = v9;
  v5[17] = v1;

  if (!v1)
  {
    v5[18] = v0;
    v5[19] = v3;
  }

  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26BD86E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_95_1();
  v12 = v10[18];
  v11 = v10[19];
  v13 = v10[17];
  v14 = v10[15];
  v15 = v10[10];
  type metadata accessor for AuthResponse(0);
  OUTLINED_FUNCTION_111_1();
  sub_26BDA0860();
  v16 = sub_26BD8A2E0(&qword_2804498E0, type metadata accessor for AuthResponse);
  OUTLINED_FUNCTION_20_7(v16);
  v17 = v10[15];

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_101_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_26BD86F1C()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  OUTLINED_FUNCTION_25_1();

  return v3();
}

uint64_t sub_26BD86F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return MEMORY[0x2822009F8](sub_26BD86F9C, 0, 0);
}

uint64_t sub_26BD86F9C()
{
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for TelemetryEvent();
  OUTLINED_FUNCTION_109_0();
  v1 = sub_26BD9E71C();
  v2 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  *(v0 + 232) = v1;
  *(v0 + 240) = v2;
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_93_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD8700C()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_1_7();
  v2 = *(v0 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v1 + 264) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_1(v3);

  return v6(v5);
}

uint64_t sub_26BD870C0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26BD871BC()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_53_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  OUTLINED_FUNCTION_259();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52_2();
  if (*(v2 + 184))
  {
    sub_26BD89F78(v1);
LABEL_12:
    OUTLINED_FUNCTION_51_1();
    v22 = v1;
    v23 = sub_26BDA0B20();
    sub_26BDA0D90();
    OUTLINED_FUNCTION_108_0();
    if (OUTLINED_FUNCTION_106_1())
    {
      OUTLINED_FUNCTION_65_3();
      v24 = OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_105_0(5.7779e-34);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_2(v25);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_26BD04E80(v24, &qword_28044B070, &unk_26BDA9D00);
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_32_5();
    }

    OUTLINED_FUNCTION_104_0();

LABEL_15:
    v31 = OUTLINED_FUNCTION_64_2();
    v32 = sub_26BDA0D90();
    if (OUTLINED_FUNCTION_63_1(v32))
    {
      v33 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_56_0(v33, 3.852e-34);
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_5();
    }

    if (!v0)
    {
      sub_26BD89884();
      v39 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_57_1(v39, v40);
    }

    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_84_1();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48);
  }

  OUTLINED_FUNCTION_90_1();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v2 + 272);
  OUTLINED_FUNCTION_59_0();

  v6 = sub_26BDA0B20();
  v7 = sub_26BDA0D90();
  if (OUTLINED_FUNCTION_66_2(v7))
  {
    v8 = OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_94_1(v8);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_32_5();
  }

  v14 = *(v2 + 248);

  sub_26BD89FCC();
  v15 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_50_0(v15, v16);

  OUTLINED_FUNCTION_27_2();
  if (v3)
  {
    goto LABEL_15;
  }

  v17 = *(v2 + 232);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26BD8742C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return MEMORY[0x2822009F8](sub_26BD87450, 0, 0);
}

uint64_t sub_26BD87450()
{
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for TelemetryEvent();
  OUTLINED_FUNCTION_109_0();
  v1 = sub_26BD9E71C();
  v2 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  *(v0 + 232) = v1;
  *(v0 + 240) = v2;
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_93_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD874C0()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_1_7();
  v2 = *(v0 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v1 + 264) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_1(v3);

  return v6(v5);
}

uint64_t sub_26BD87574()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26BD87670()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_53_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  OUTLINED_FUNCTION_259();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52_2();
  if (*(v2 + 184))
  {
    sub_26BD89F78(v1);
LABEL_12:
    OUTLINED_FUNCTION_51_1();
    v22 = v1;
    v23 = sub_26BDA0B20();
    sub_26BDA0D90();
    OUTLINED_FUNCTION_108_0();
    if (OUTLINED_FUNCTION_106_1())
    {
      OUTLINED_FUNCTION_65_3();
      v24 = OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_105_0(5.7779e-34);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_2(v25);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_26BD04E80(v24, &qword_28044B070, &unk_26BDA9D00);
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_32_5();
    }

    OUTLINED_FUNCTION_104_0();

LABEL_15:
    v31 = OUTLINED_FUNCTION_64_2();
    v32 = sub_26BDA0D90();
    if (OUTLINED_FUNCTION_63_1(v32))
    {
      v33 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_56_0(v33, 3.852e-34);
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_5();
    }

    if (!v0)
    {
      sub_26BD89884();
      v39 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_57_1(v39, v40);
    }

    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_84_1();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48);
  }

  OUTLINED_FUNCTION_90_1();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v2 + 272);
  OUTLINED_FUNCTION_59_0();

  v6 = sub_26BDA0B20();
  v7 = sub_26BDA0D90();
  if (OUTLINED_FUNCTION_66_2(v7))
  {
    v8 = OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_94_1(v8);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_32_5();
  }

  v14 = *(v2 + 248);

  sub_26BD89FCC();
  v15 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_50_0(v15, v16);

  OUTLINED_FUNCTION_27_2();
  if (v3)
  {
    goto LABEL_15;
  }

  v17 = *(v2 + 232);
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26BD878E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return MEMORY[0x2822009F8](sub_26BD87904, 0, 0);
}

uint64_t sub_26BD87904()
{
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for TelemetryEvent();
  OUTLINED_FUNCTION_109_0();
  v1 = sub_26BD9E71C();
  v2 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  *(v0 + 232) = v1;
  *(v0 + 240) = v2;
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_93_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD87974()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_1_7();
  v2 = *(v0 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v1 + 264) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_1(v3);

  return v6(v5);
}

uint64_t sub_26BD87A28()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26BD87B24()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 232);

  OUTLINED_FUNCTION_21_2();

  return v2();
}

uint64_t sub_26BD87B88()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_53_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  OUTLINED_FUNCTION_259();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52_2();
  if (*(v2 + 184))
  {
    sub_26BD89F78(v1);
LABEL_12:
    OUTLINED_FUNCTION_51_1();
    v22 = v1;
    v23 = sub_26BDA0B20();
    sub_26BDA0D90();
    OUTLINED_FUNCTION_108_0();
    if (OUTLINED_FUNCTION_106_1())
    {
      OUTLINED_FUNCTION_65_3();
      v24 = OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_105_0(5.7779e-34);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_2(v25);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_26BD04E80(v24, &qword_28044B070, &unk_26BDA9D00);
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_32_5();
    }

    OUTLINED_FUNCTION_104_0();

LABEL_15:
    v31 = OUTLINED_FUNCTION_64_2();
    v32 = sub_26BDA0D90();
    if (OUTLINED_FUNCTION_63_1(v32))
    {
      v33 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_56_0(v33, 3.852e-34);
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_5();
    }

    if (!v0)
    {
      sub_26BD89884();
      v39 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_57_1(v39, v40);
    }

    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_84_1();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48);
  }

  OUTLINED_FUNCTION_90_1();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v2 + 272);
  OUTLINED_FUNCTION_59_0();

  v6 = sub_26BDA0B20();
  v7 = sub_26BDA0D90();
  if (OUTLINED_FUNCTION_66_2(v7))
  {
    v8 = OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_94_1(v8);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_32_5();
  }

  v14 = *(v2 + 248);

  sub_26BD89FCC();
  v15 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_50_0(v15, v16);

  OUTLINED_FUNCTION_27_2();
  if (v3)
  {
    goto LABEL_15;
  }

  v17 = *(v2 + 232);
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26BD87DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return MEMORY[0x2822009F8](sub_26BD87E1C, 0, 0);
}

uint64_t sub_26BD87E1C()
{
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for TelemetryEvent();
  OUTLINED_FUNCTION_109_0();
  v1 = sub_26BD9E71C();
  v2 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  *(v0 + 232) = v1;
  *(v0 + 240) = v2;
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_93_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD87E8C()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_1_7();
  v2 = *(v0 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v1 + 264) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_1(v3);

  return v6(v5);
}

uint64_t sub_26BD87F40()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26BD8803C()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_53_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  OUTLINED_FUNCTION_259();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52_2();
  if (*(v2 + 184))
  {
    sub_26BD89F78(v1);
LABEL_12:
    OUTLINED_FUNCTION_51_1();
    v22 = v1;
    v23 = sub_26BDA0B20();
    sub_26BDA0D90();
    OUTLINED_FUNCTION_108_0();
    if (OUTLINED_FUNCTION_106_1())
    {
      OUTLINED_FUNCTION_65_3();
      v24 = OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_105_0(5.7779e-34);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_2(v25);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_26BD04E80(v24, &qword_28044B070, &unk_26BDA9D00);
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_32_5();
    }

    OUTLINED_FUNCTION_104_0();

LABEL_15:
    v31 = OUTLINED_FUNCTION_64_2();
    v32 = sub_26BDA0D90();
    if (OUTLINED_FUNCTION_63_1(v32))
    {
      v33 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_56_0(v33, 3.852e-34);
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_5();
    }

    if (!v0)
    {
      sub_26BD89884();
      v39 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_57_1(v39, v40);
    }

    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_84_1();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48);
  }

  OUTLINED_FUNCTION_90_1();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v2 + 272);
  OUTLINED_FUNCTION_59_0();

  v6 = sub_26BDA0B20();
  v7 = sub_26BDA0D90();
  if (OUTLINED_FUNCTION_66_2(v7))
  {
    v8 = OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_94_1(v8);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_32_5();
  }

  v14 = *(v2 + 248);

  sub_26BD89FCC();
  v15 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_50_0(v15, v16);

  OUTLINED_FUNCTION_27_2();
  if (v3)
  {
    goto LABEL_15;
  }

  v17 = *(v2 + 232);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26BD882AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = *(*(sub_26BDA0880() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD88344, 0, 0);
}

uint64_t sub_26BD88344()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_24_2();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_15_1(v1);

  return sub_26BD90EF4();
}

uint64_t sub_26BD883DC()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_28_4();
  v5 = v4;
  OUTLINED_FUNCTION_17_5();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v2;
  OUTLINED_FUNCTION_9_4();
  *v10 = v9;
  v5[18] = v1;

  if (!v1)
  {
    v5[19] = v0;
    v5[20] = v3;
  }

  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26BD884E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_95_1();
  v11 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for HMTSolutionResponse(v11);
  OUTLINED_FUNCTION_111_1();
  sub_26BDA0860();
  v12 = sub_26BD8A2E0(&qword_280449D50, type metadata accessor for HMTSolutionResponse);
  OUTLINED_FUNCTION_20_7(v12);
  v13 = *(v10 + 128);

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_101_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_26BD885A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = *(*(sub_26BDA0880() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD88638, 0, 0);
}

uint64_t sub_26BD88638()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_24_2();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_15_1(v1);

  return sub_26BD90EF4();
}

uint64_t sub_26BD886D0()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_28_4();
  v5 = v4;
  OUTLINED_FUNCTION_17_5();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v2;
  OUTLINED_FUNCTION_9_4();
  *v10 = v9;
  v5[18] = v1;

  if (!v1)
  {
    v5[19] = v0;
    v5[20] = v3;
  }

  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26BD887D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_95_1();
  v11 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for AllSolutionsResponse(v11);
  OUTLINED_FUNCTION_111_1();
  sub_26BDA0860();
  v12 = sub_26BD8A2E0(&qword_2804491D0, type metadata accessor for AllSolutionsResponse);
  OUTLINED_FUNCTION_20_7(v12);
  v13 = *(v10 + 128);

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_101_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_26BD88894()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  OUTLINED_FUNCTION_25_1();

  return v3();
}

uint64_t sub_26BD888F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = *(*(sub_26BDA0880() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD88988, 0, 0);
}

uint64_t sub_26BD88988()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_24_2();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_15_1(v1);

  return sub_26BD90EF4();
}

uint64_t sub_26BD88A20()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_28_4();
  v5 = v4;
  OUTLINED_FUNCTION_17_5();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v2;
  OUTLINED_FUNCTION_9_4();
  *v10 = v9;
  v5[18] = v1;

  if (!v1)
  {
    v5[19] = v0;
    v5[20] = v3;
  }

  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26BD88B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_95_1();
  v11 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for ExecuteResponse(v11);
  OUTLINED_FUNCTION_111_1();
  sub_26BDA0860();
  v12 = sub_26BD8A2E0(&qword_28044A580, type metadata accessor for ExecuteResponse);
  OUTLINED_FUNCTION_20_7(v12);
  v13 = *(v10 + 128);

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_101_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t HelpMeTroubleshootCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  v2 = sub_26BDA0B40();
  OUTLINED_FUNCTION_34(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent + 8);
  v5 = *(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent + 24);
  v6 = *(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent + 40);
  v7 = *(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent + 56);

  sub_26BD89728(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_environment, type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment);
  sub_26BD89780(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_overrideManager);
  sub_26BD89728(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_requestGenerator, type metadata accessor for HelpMeTroubleshootRequestGenerator);
  sub_26BD04E80(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedAuthResponse, &qword_28044AFE0, &qword_26BDA9B20);
  sub_26BD04E80(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedSolutionsResponse, &qword_28044AFD0, &qword_26BDA9B08);
  return v0;
}

uint64_t HelpMeTroubleshootCoordinator.__deallocating_deinit()
{
  HelpMeTroubleshootCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26BD88D7C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_74_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF80, &qword_26BDA9738);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void sub_26BD88EC4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_74_0();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_26BD890E4(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_26BD891F0(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26BD88FC4(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_74_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B080, &qword_26BDA9EE0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_256();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B088, &unk_26BDA9D10);
    OUTLINED_FUNCTION_256();
    swift_arrayInitWithCopy();
  }
}

size_t sub_26BD890E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  OUTLINED_FUNCTION_38_4(v8);
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

uint64_t sub_26BD891F0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_184();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_34(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_89_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_89_1();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_26BD892AC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_26BD892D8(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26BDA0BD0();

  return v3;
}

uint64_t sub_26BD89348()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BD893FC()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BD89454(_OWORD *a1, uint64_t a2, _OWORD *a3)
{
  v5 = type metadata accessor for HTTPRequestManager();
  v30 = v5;
  v31 = &off_287CB0E98;
  __swift_allocate_boxed_opaque_existential_1(v29);
  sub_26BD89348();
  v6 = type metadata accessor for HelpMeTroubleshootCoordinator(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v30;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v14 + 16))(v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28[3] = v5;
  v28[4] = &off_287CB0E98;
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_26BD89348();
  v15 = [objc_opt_self() mainBundle];
  result = sub_26BD892D8(v15);
  if (v17)
  {
    sub_26BDA0B30();
    v18 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedAuthResponse;
    v19 = type metadata accessor for AuthResponse(0);
    __swift_storeEnumTagSinglePayload(v9 + v18, 1, 1, v19);
    v20 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedSolutionsResponse;
    v21 = type metadata accessor for AllSolutionsResponse(0);
    __swift_storeEnumTagSinglePayload(v9 + v20, 1, 1, v21);
    sub_26BD893FC();
    v22 = (v9 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v24 = a1[3];
    v22[2] = a1[2];
    v22[3] = v24;
    sub_26BD893A0(a3, v9 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_overrideManager);
    sub_26BD8A3D8(v28, v9 + 16);
    *(v9 + 80) = &type metadata for LogTelemetryReporter;
    *(v9 + 88) = &off_287CB16F0;
    __swift_destroy_boxed_opaque_existential_1(v28);
    v25 = v9 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_requestGenerator;
    sub_26BD89348();
    v26 = (v25 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator() + 20));
    v27 = a3[1];
    *v26 = *a3;
    v26[1] = v27;
    v26[2] = a3[2];
    __swift_destroy_boxed_opaque_existential_1(v29);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BD89728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_26BD89884()
{
  result = qword_28044AFE8;
  if (!qword_28044AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFE8);
  }

  return result;
}

uint64_t sub_26BD898D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BD89968()
{
  result = qword_28044B018;
  if (!qword_28044B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B018);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HelpMeTroubleshootError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26BD89A88);
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

void sub_26BD89AE8()
{
  v0 = sub_26BDA0B40();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(319);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = type metadata accessor for HelpMeTroubleshootRequestGenerator();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_26BD89CD0(319, &qword_28044B030, type metadata accessor for AuthResponse);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_26BD89CD0(319, &qword_28044B038, type metadata accessor for AllSolutionsResponse);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_26BD89CD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BDA0DA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BD89D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDA0510();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD89D94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_26BDA0510();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_26BD89DF4()
{
  v0 = sub_26BDA0510();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_26BD89E4C()
{
  result = qword_28044B060;
  if (!qword_28044B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B060);
  }

  return result;
}

uint64_t sub_26BD89ED8()
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_36_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_3(v3);

  return sub_26BD888F0(v5, v6, v7, v8, v2, v0);
}

unint64_t sub_26BD89FCC()
{
  result = qword_28044B078;
  if (!qword_28044B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B078);
  }

  return result;
}

uint64_t sub_26BD8A020()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v1 + 16) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_14_3(v4);
  OUTLINED_FUNCTION_84_1();

  return sub_26BD86BEC(v6, v7, v8, v9, v10);
}

uint64_t sub_26BD8A0C0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;

  OUTLINED_FUNCTION_25_1();

  return v5();
}

uint64_t sub_26BD8A1A0()
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_36_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_3(v3);

  return sub_26BD885A0(v5, v6, v7, v8, v2, v0);
}

uint64_t sub_26BD8A240()
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_36_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_3(v3);

  return sub_26BD882AC(v5, v6, v7, v8, v2, v0);
}

uint64_t sub_26BD8A2E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26BD8A3D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_26BD89728(v0, type metadata accessor for ContactSupportOptions);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_26BD89348();
}

void OUTLINED_FUNCTION_8_6()
{
  v1 = v0[114];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[108];
  v7 = v0[107];
  v8 = v0[106];
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return sub_26BD89348();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[32];
  v4 = v2[29];
  v5 = v2[27];
  return v2[25];
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 96);
  return *(v2 + 112);
}

void OUTLINED_FUNCTION_16_2(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = a1;
}

uint64_t OUTLINED_FUNCTION_20_7(uint64_t a1)
{

  return MEMORY[0x28217E3E8](v1, v3, v2, v4, a1);
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_22_2@<Q0>(__int128 *a1@<X8>)
{
  result = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  *(v1 + 16) = v5;
  *(v1 + 32) = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_24_2()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  *(v0 + 48) = result;
  *(v0 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_27_2()
{
  v2 = *(v1 + 256) + 1;
  *(v1 + 248) = v0;
  *(v1 + 256) = v2;
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{
  *(a1 + 8) = sub_26BD85130;
  v3 = v1[116];
  v4 = v1[101];
  v5 = v1[98];
  result = v1[96];
  v7 = v1[90];
  v8 = v1[85];
  *(v2 + 16) = v1[93];
  return result;
}

void OUTLINED_FUNCTION_32_5()
{

  JUMPOUT(0x26D6966B0);
}

void OUTLINED_FUNCTION_36_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_37_3()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[10];
  return 0;
}

uint64_t OUTLINED_FUNCTION_49_0()
{
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];
  v7 = v0[101];
  v8 = v0[98];
  v9 = v0[96];
  v2 = v0[95];
  v10 = v0[93];
}

void *OUTLINED_FUNCTION_50_0(int a1, void *__dst)
{

  return memcpy(__dst, v2, 0x51uLL);
}

void OUTLINED_FUNCTION_51_1()
{
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[24];
}

void *OUTLINED_FUNCTION_52_2()
{

  return memcpy((v0 - 88), v1, 0x51uLL);
}

id OUTLINED_FUNCTION_53_1()
{
  v2 = *(v0 + 272);
  *(v0 + 192) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = 3;
  return result;
}

unint64_t OUTLINED_FUNCTION_58_2()
{
  v4 = *(v3 + 336);
  v5 = *(v3 + 344);
  *(v0 + 16) = v1;
  v6 = *(v5 + 32);
  return v0 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2;
}

void OUTLINED_FUNCTION_60_1()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = **(v0 + 856);
}

void OUTLINED_FUNCTION_61_1()
{

  JUMPOUT(0x26D6966B0);
}

BOOL OUTLINED_FUNCTION_63_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_64_2()
{
  v2 = *(v0 + 224) + *(v0 + 240);

  return sub_26BDA0B20();
}

uint64_t OUTLINED_FUNCTION_65_3()
{
  v2 = *(v0 + 272);

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_66_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];

  return sub_26BD9E500(v2);
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_69_0@<Q0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v7[7] = a1[2];
  v7[8] = v11;
  v7[5] = v9;
  v7[6] = v10;
  result = a7;
  *v8 = a7;
  v8[1] = a6;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_77_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_85_2()
{
  v2 = v0[124];
  v3 = v0[119];
  v4 = v0[116];
  v5 = v0[110];
  v6 = v0[108];
}

void OUTLINED_FUNCTION_87_1()
{
  v2 = *(v1 + 34);
  v3 = *(v0 + 952);
  v4 = *(*(v0 + 944) + 20);
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_2()
{
  result = *(v0 + 952);
  v2 = *(v0 + 936);
  return result;
}

__n128 OUTLINED_FUNCTION_98_2@<Q0>(__int128 *a1@<X8>)
{
  result = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  *(v1 + 112) = result;
  *(v1 + 128) = v3;
  *(v1 + 80) = v5;
  *(v1 + 96) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_2()
{

  return sub_26BDA0A10();
}

uint64_t OUTLINED_FUNCTION_102_0()
{

  return sub_26BDA0FB0();
}

void OUTLINED_FUNCTION_104_0()
{
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
}

id OUTLINED_FUNCTION_105_0(float a1)
{
  *v2 = a1;

  return v1;
}

BOOL OUTLINED_FUNCTION_106_1()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_107_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_108_0()
{
}

uint64_t OUTLINED_FUNCTION_109_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_110_0(uint64_t a1)
{

  return sub_26BD04E80(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_111_1()
{

  return MEMORY[0x28217E1C0]();
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_26BD897D4(v0 + 16, v0 + 144);
}

uint64_t OUTLINED_FUNCTION_113_1()
{
  v2 = *(v0 + 232);

  return swift_willThrow();
}

uint64_t sub_26BD8AE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 32);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26BD8AEE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HelpMeTroubleshootRequestGenerator()
{
  result = qword_28044B0B8;
  if (!qword_28044B0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BD8AFDC()
{
  result = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26BD8B050()
{
  OUTLINED_FUNCTION_246();
  v28 = v0;
  v29[2] = *MEMORY[0x277D85DE8];
  v1 = sub_26BDA04C0();
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_44();
  v9 = v8 - v7;
  v10 = sub_26BDA0510();
  v11 = OUTLINED_FUNCTION_18(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_57();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_26BD821AC();
  v29[0] = 0xD000000000000016;
  v29[1] = 0x800000026BDAFD80;
  (*(v4 + 104))(v9, *MEMORY[0x277CC91D8], v1);
  sub_26BD89E4C();
  sub_26BDA0500();
  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);
  sub_26BDA0320();
  sub_26BDA0300();
  sub_26BDA0B70();
  v20 = objc_opt_self();
  v21 = sub_26BDA0B50();

  v29[0] = 0;
  v22 = [v20 dataWithJSONObject:v21 options:1 error:v29];

  v23 = v29[0];
  if (v22)
  {
    sub_26BDA05D0();

    sub_26BDA0350();
  }

  else
  {
    v24 = v23;
    sub_26BDA04B0();

    swift_willThrow();
    v25 = sub_26BDA0370();
    OUTLINED_FUNCTION_34(v25);
    (*(v26 + 8))(v28);
  }

  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_247();
}

void sub_26BD8B378()
{
  OUTLINED_FUNCTION_246();
  v80 = v0;
  v3 = v2;
  v88 = v4;
  v87 = sub_26BDA04C0();
  v5 = OUTLINED_FUNCTION_18(v87);
  v85 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30();
  v83 = v9;
  OUTLINED_FUNCTION_176();
  v86 = sub_26BDA0510();
  v10 = OUTLINED_FUNCTION_18(v86);
  v84 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_57();
  v79 = v14 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v81 = &v76 - v18;
  MEMORY[0x28223BE20](v17);
  v82 = &v76 - v19;
  OUTLINED_FUNCTION_176();
  v77 = sub_26BDA0750();
  v20 = OUTLINED_FUNCTION_18(v77);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_44();
  v27 = v26 - v25;
  v92 = sub_26BDA03F0();
  v28 = OUTLINED_FUNCTION_18(v92);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_57();
  v89 = v33 - v34;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v76 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v76 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8);
  OUTLINED_FUNCTION_110(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v44);
  v46 = &v76 - v45;
  v78 = v3;
  sub_26BDA0710();
  v47 = sub_26BDA06E0();
  if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
  {
    sub_26BD04E80(v46, &qword_28044B058, &qword_26BDA9CD8);
    v48 = MEMORY[0x277D84F90];
  }

  else
  {
    v76 = v1;
    sub_26BDA0690();
    (*(*(v47 - 8) + 8))(v46, v47);
    sub_26BDA03E0();

    sub_26BD88E98();
    v48 = v49;
    v51 = *(v49 + 16);
    v50 = *(v49 + 24);
    if (v51 >= v50 >> 1)
    {
      OUTLINED_FUNCTION_5_5(v50);
      sub_26BD88E98();
      v48 = v75;
    }

    *(v48 + 16) = v51 + 1;
    OUTLINED_FUNCTION_7_5(v30);
    v54(v48 + v52 + *(v53 + 40) * v51, v40, v92);
  }

  sub_26BDA0760();
  sub_26BDA0740();
  (*(v22 + 8))(v27, v77);
  OUTLINED_FUNCTION_15_2();
  sub_26BDA03E0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v71 = *(v48 + 16);
    OUTLINED_FUNCTION_12_4();
    sub_26BD88E98();
    v48 = v72;
  }

  v56 = *(v48 + 16);
  v55 = *(v48 + 24);
  if (v56 >= v55 >> 1)
  {
    OUTLINED_FUNCTION_16_3(v55);
    sub_26BD88E98();
    v48 = v73;
  }

  *(v48 + 16) = v56 + 1;
  v59 = *(v30 + 32);
  v58 = v30 + 32;
  v57 = v59;
  v60 = (*(v58 + 48) + 32) & ~*(v58 + 48);
  v61 = *(v58 + 40);
  v59(v48 + v60 + v61 * v56, v38, v92);
  sub_26BD8C36C();
  OUTLINED_FUNCTION_19_7();

  v63 = *(v48 + 16);
  v62 = *(v48 + 24);
  if (v63 >= v62 >> 1)
  {
    OUTLINED_FUNCTION_5_5(v62);
    sub_26BD88E98();
    v48 = v74;
  }

  *(v48 + 16) = v63 + 1;
  v57(v48 + v60 + v63 * v61, v89, v92);
  v64 = v79;
  sub_26BD821AC();
  v90 = 0xD000000000000018;
  v91 = 0x800000026BDAFDD0;
  v65 = v85;
  v66 = v83;
  v67 = v87;
  (*(v85 + 104))(v83, *MEMORY[0x277CC91D8], v87);
  sub_26BD89E4C();
  v68 = v81;
  sub_26BDA0500();
  (*(v65 + 8))(v66, v67);
  v69 = *(v84 + 8);
  v70 = v86;
  v69(v64, v86);
  sub_26BDA04F0();

  v69(v68, v70);
  sub_26BDA0320();
  sub_26BDA0300();
  OUTLINED_FUNCTION_247();
}

void sub_26BD8B998()
{
  OUTLINED_FUNCTION_246();
  v118 = v0;
  v3 = v2;
  v120 = v4;
  v119 = v5;
  v7 = v6;
  v9 = v8;
  v126 = v10;
  v11 = sub_26BDA08A0();
  v12 = OUTLINED_FUNCTION_18(v11);
  v124 = v13;
  v125 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_145(v16);
  v121 = type metadata accessor for AllSolutionsRequest(v17);
  v18 = OUTLINED_FUNCTION_34(v121);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30();
  v123 = v21;
  OUTLINED_FUNCTION_176();
  v117 = sub_26BDA04C0();
  v22 = OUTLINED_FUNCTION_18(v117);
  v116 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_145(v26);
  v115 = sub_26BDA0510();
  v27 = OUTLINED_FUNCTION_18(v115);
  v114 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_145(&v107 - v33);
  v108 = sub_26BDA0750();
  v34 = OUTLINED_FUNCTION_18(v108);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_44();
  v41 = v40 - v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B050, &qword_26BDA9CD0);
  OUTLINED_FUNCTION_110(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v45);
  v47 = &v107 - v46;
  v110 = sub_26BDA03F0();
  v48 = OUTLINED_FUNCTION_18(v110);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  v56 = &v107 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8);
  OUTLINED_FUNCTION_110(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v60);
  v62 = &v107 - v61;
  v63 = *(v9 + 16);
  v129[0] = *v9;
  v129[1] = v63;
  v130 = *(v9 + 32);
  v64 = v7[1];
  v131[0] = *v7;
  v131[1] = v64;
  v65 = v7[3];
  v131[2] = v7[2];
  v131[3] = v65;
  v132 = v3;
  sub_26BDA0710();
  v66 = sub_26BDA06E0();
  if (__swift_getEnumTagSinglePayload(v62, 1, v66) == 1)
  {
    sub_26BD04E80(v62, &qword_28044B058, &qword_26BDA9CD8);
    v67 = MEMORY[0x277D84F90];
    v68 = v110;
  }

  else
  {
    sub_26BDA0690();
    (*(*(v66 - 8) + 8))(v62, v66);
    sub_26BDA03E0();

    sub_26BD88E98();
    v67 = v69;
    v71 = *(v69 + 16);
    v70 = *(v69 + 24);
    if (v71 >= v70 >> 1)
    {
      OUTLINED_FUNCTION_16_3(v70);
      sub_26BD88E98();
      v67 = v103;
    }

    *(v67 + 16) = v71 + 1;
    OUTLINED_FUNCTION_7_5(v50);
    v74 = v56;
    v68 = v110;
    v75(v67 + v72 + *(v73 + 40) * v71, v74, v110);
  }

  sub_26BDA0760();
  sub_26BDA0730();
  (*(v36 + 8))(v41, v108);
  v76 = sub_26BDA06A0();
  if (__swift_getEnumTagSinglePayload(v47, 1, v76) == 1)
  {
    sub_26BD04E80(v47, &qword_28044B050, &qword_26BDA9CD0);
    v77 = v118;
    v78 = v109;
  }

  else
  {
    sub_26BDA0690();
    (*(*(v76 - 8) + 8))(v47, v76);
    OUTLINED_FUNCTION_15_2();
    v79 = v107;
    sub_26BDA03E0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v109;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v104 = *(v67 + 16);
      OUTLINED_FUNCTION_12_4();
      sub_26BD88E98();
      v67 = v105;
    }

    v82 = *(v67 + 16);
    v81 = *(v67 + 24);
    v77 = v118;
    if (v82 >= v81 >> 1)
    {
      OUTLINED_FUNCTION_5_5(v81);
      sub_26BD88E98();
      v67 = v106;
    }

    *(v67 + 16) = v82 + 1;
    OUTLINED_FUNCTION_7_5(v50);
    v85(v67 + v83 + *(v84 + 40) * v82, v79, v68);
  }

  sub_26BD8C36C();
  OUTLINED_FUNCTION_19_7();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v100 = *(v67 + 16);
    OUTLINED_FUNCTION_12_4();
    sub_26BD88E98();
    v67 = v101;
  }

  v87 = *(v67 + 16);
  v86 = *(v67 + 24);
  if (v87 >= v86 >> 1)
  {
    OUTLINED_FUNCTION_5_5(v86);
    sub_26BD88E98();
    v67 = v102;
  }

  *(v67 + 16) = v87 + 1;
  (*(v50 + 32))(v67 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v87, v78, v68);
  v88 = v111;
  sub_26BD821AC();
  v127 = 0xD000000000000020;
  v128 = 0x800000026BDAFDA0;
  v89 = v116;
  v90 = v113;
  v91 = v117;
  (*(v116 + 104))(v113, *MEMORY[0x277CC91D8], v117);
  sub_26BD89E4C();
  v92 = v112;
  sub_26BDA0500();
  (*(v89 + 8))(v90, v91);
  v93 = *(v114 + 8);
  v94 = v115;
  v93(v88, v115);
  sub_26BDA04F0();
  v93(v92, v94);
  v95 = v126;
  sub_26BDA0320();
  v96 = sub_26BDA0300();
  MEMORY[0x28223BE20](v96);
  *(&v107 - 6) = v77;
  *(&v107 - 5) = v129;
  *(&v107 - 4) = v119;
  *(&v107 - 3) = v131;
  *(&v107 - 2) = v120;
  *(&v107 - 1) = v132;
  sub_26BD904A4(&qword_2804491B8, type metadata accessor for AllSolutionsRequest);
  sub_26BDA0A10();

  v97 = v122;
  sub_26BDA0890();
  sub_26BDA09C0();
  (*(v124 + 8))(v97, v125);
  if (v1)
  {
    OUTLINED_FUNCTION_6_5();
    v98 = sub_26BDA0370();
    OUTLINED_FUNCTION_34(v98);
    (*(v99 + 8))(v95);
  }

  else
  {
    sub_26BDA0350();
    OUTLINED_FUNCTION_6_5();
  }

  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD8C36C()
{
  v1 = v0 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator() + 20);
  if (*v1 != 1 || (v2 = *(v1 + 32), v3 = *(v1 + 40), __swift_project_boxed_opaque_existential_1((v1 + 8), v2), (*(v3 + 8))(0xD00000000000001CLL, 0x800000026BDAFD60, v2, v3), !v4))
  {
    if (qword_280448F38 != -1)
    {
      swift_once();
    }
  }

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BD8C454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a5;
  v32 = a7;
  v42 = a6;
  v29 = a2;
  v30 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFE0, &qword_26BDA9B20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = type metadata accessor for TriageRequest.ClientContext(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TriageRequest.CaseMetaData(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v40 = a2;
  v41 = a4;
  sub_26BD904A4(&unk_280449100, type metadata accessor for TriageRequest.CaseMetaData);
  sub_26BDA0A10();
  v23 = type metadata accessor for AllSolutionsRequest(0);
  v24 = *(v23 + 20);
  sub_26BD04E80(a1 + v24, &qword_280448F68, &qword_26BDA1A30);
  sub_26BD90568(v22, a1 + v24, type metadata accessor for TriageRequest.CaseMetaData);
  __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v19);
  v25 = type metadata accessor for AuthResponse(0);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v25);
  v33 = v31;
  v34 = v32;
  v35 = v29;
  v36 = v42;
  v37 = v30;
  v38 = v14;
  sub_26BD904A4(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext);
  sub_26BDA0A10();
  sub_26BD04E80(v14, &qword_28044AFE0, &qword_26BDA9B20);
  v26 = *(v23 + 24);
  sub_26BD04E80(a1 + v26, &qword_280448F70, &qword_26BDA1A38);
  sub_26BD90568(v18, a1 + v26, type metadata accessor for TriageRequest.ClientContext);
  return __swift_storeEnumTagSinglePayload(a1 + v26, 0, 1, v15);
}

void sub_26BD8C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_246();
  v92 = v22;
  v99 = v23;
  v97 = v24;
  v112 = v25;
  v96 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v104 = a22;
  v105 = v33;
  v103 = a21;
  v34 = type metadata accessor for TriageRequest.HMTContext(0);
  v35 = OUTLINED_FUNCTION_110(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_30();
  v102 = v38;
  v39 = OUTLINED_FUNCTION_176();
  v101 = type metadata accessor for TriageRequest.Customer(v39);
  v40 = OUTLINED_FUNCTION_34(v101);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_30();
  v100 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFE0, &qword_26BDA9B20);
  OUTLINED_FUNCTION_110(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v47);
  v49 = OUTLINED_FUNCTION_145(&v92 - v48);
  v93 = type metadata accessor for TriageRequest.ClientContext(v49);
  v50 = OUTLINED_FUNCTION_34(v93);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30();
  v94 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8D8, &unk_26BDA9DC0);
  OUTLINED_FUNCTION_110(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v57);
  v59 = &v92 - v58;
  v60 = type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  v61 = OUTLINED_FUNCTION_34(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_44();
  v66 = v65 - v64;
  v67 = type metadata accessor for TriageRequest.CaseMetaData(0);
  v68 = OUTLINED_FUNCTION_34(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_57();
  v73 = v71 - v72;
  MEMORY[0x28223BE20](v74);
  v76 = &v92 - v75;
  v98 = v30;
  v109 = v30;
  v110 = v32;
  v111 = v28;
  sub_26BD904A4(&unk_280449100, type metadata accessor for TriageRequest.CaseMetaData);
  v77 = v92;
  sub_26BDA0A10();
  v106 = v96;
  v107 = v112;
  v96 = v32;
  v108 = v32;
  sub_26BD904A4(&qword_28044AC30, type metadata accessor for TriageRequest.ExecuteSupportOption);
  sub_26BDA0A10();
  v92 = v77;
  v78 = *(v67 + 20);
  v79 = *&v76[v78];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = *&v76[v78];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v82 = type metadata accessor for TriageRequest.CaseMetaData._StorageClass(0);
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    sub_26BD60B14();
    v81 = v85;
    *&v76[v78] = v85;
  }

  sub_26BD90568(v66, v59, type metadata accessor for TriageRequest.ExecuteSupportOption);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
  v86 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__supportOption;
  swift_beginAccess();
  sub_26BD8F424(v59, v81 + v86);
  swift_endAccess();
  sub_26BD90424(v76, v73, type metadata accessor for TriageRequest.CaseMetaData);
  ExecuteSupportOptionRequest.caseMetaData.setter();
  v87 = v95;
  sub_26BD90424(v112, v95, type metadata accessor for AuthResponse);
  v88 = type metadata accessor for AuthResponse(0);
  v89 = __swift_storeEnumTagSinglePayload(v87, 0, 1, v88);
  MEMORY[0x28223BE20](v89);
  v90 = v99;
  *(&v92 - 6) = v97;
  *(&v92 - 5) = v90;
  *(&v92 - 4) = v96;
  *(&v92 - 3) = 0;
  *(&v92 - 2) = v98;
  *(&v92 - 1) = v87;
  sub_26BD904A4(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext);
  sub_26BDA0A10();
  sub_26BD04E80(v87, &qword_28044AFE0, &qword_26BDA9B20);
  v91 = ExecuteSupportOptionRequest.clientContext.setter();
  MEMORY[0x28223BE20](v91);
  *(&v92 - 2) = v112;
  sub_26BD904A4(&qword_28044A668, type metadata accessor for TriageRequest.Customer);
  sub_26BDA0A10();
  ExecuteSupportOptionRequest.customer.setter();
  sub_26BD90424(v103, v102, type metadata accessor for TriageRequest.HMTContext);
  ExecuteSupportOptionRequest.hmtContext.setter();

  ExecuteSupportOptionRequest.reportingContextMap.setter();
  sub_26BD904EC(v76, type metadata accessor for TriageRequest.CaseMetaData);
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD8CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TriageRequest.SymptomInformation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TriageRequest.Product(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = a2;
  v16 = a3;
  sub_26BD904A4(&qword_28044AC48, type metadata accessor for TriageRequest.Product);
  sub_26BDA0A10();
  TriageRequest.CaseMetaData.product.setter();
  sub_26BD90424(a4, v10, type metadata accessor for TriageRequest.SymptomInformation);
  return TriageRequest.CaseMetaData.symptomInformation.setter();
}

uint64_t sub_26BD8CF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a2 + 32))
  {
    v7 = *(a2 + 24);
    if (v7)
    {
      v8 = *(a2 + 16);
      v9 = a3 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator() + 20);
      if (*v9 == 1)
      {
        v40 = v8;
        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        __swift_project_boxed_opaque_existential_1((v9 + 8), v10);
        v12 = *(v11 + 8);

        v13 = v12(0xD000000000000025, 0x800000026BDAFD30, v10, v11);
        if (v14)
        {
          v15 = v13;
          v16 = v14;

          v8 = v15;
          v7 = v16;
        }

        else
        {
          v8 = v40;
        }
      }

      else
      {
      }

      v31 = *(a1 + 72);

      *(a1 + 64) = v8;
      *(a1 + 72) = v7;
    }

    goto LABEL_23;
  }

  v17 = (a3 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator() + 20));
  v18 = *v17;
  v19 = 0x280448000uLL;
  if (v18 == 1 && (v20 = v17[4], v21 = v17[5], __swift_project_boxed_opaque_existential_1(v17 + 1, v20), (*(v21 + 8))(0xD00000000000001ELL, 0x800000026BDAFCD0, v20, v21), v19 = 0x280448000, v22))
  {
    v23 = *(a1 + 72);
  }

  else
  {
    if (*(v19 + 3888) != -1)
    {
      swift_once();
    }

    v24 = *(a1 + 72);

    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v25 = v17[4];
  v26 = v17[5];
  __swift_project_boxed_opaque_existential_1(v17 + 1, v25);
  v27 = (*(v26 + 8))(0xD00000000000001ELL, 0x800000026BDAFCD0, v25, v26);
  if (v28)
  {
    v29 = v27;
    v30 = v28;

    goto LABEL_19;
  }

  v19 = 0x280448000uLL;
LABEL_16:
  if (*(v19 + 3888) != -1)
  {
    swift_once();
  }

  v29 = qword_280459FD0;
  v30 = qword_280459FD8;

LABEL_19:
  *(a1 + 64) = v29;
  *(a1 + 72) = v30;
  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_23:

  if (sub_26BDA0C80())
  {
    v32 = *(a1 + 40);

    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
  }

  else
  {
  }

  v34 = *a2;
  v33 = *(a2 + 8);
  v35 = *(a2 + 32);
  if ((v35 & 1) == 0 && !v33)
  {
LABEL_31:
    if (v6)
    {

      goto LABEL_36;
    }

LABEL_33:
    v5 = 0x3330304753;
    v6 = 0xE500000000000000;
    goto LABEL_37;
  }

  v36 = *(a2 + 8);

  if (sub_26BDA0C80())
  {
    v37 = *(a1 + 24);

    *(a1 + 16) = v34;
    *(a1 + 24) = v33;
    if ((v35 & 1) == 0)
    {
LABEL_30:
      v5 = v34;
      v6 = v33;
      goto LABEL_31;
    }
  }

  else
  {

    if ((v35 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v5 = v34;
  v6 = v33;
LABEL_36:
  if ((sub_26BDA0C80() & 1) == 0)
  {

    goto LABEL_39;
  }

LABEL_37:
  v38 = *(a1 + 8);

  *a1 = v5;
  *(a1 + 8) = v6;
LABEL_39:
  *(a1 + 100) = 1;
  return result;
}

id sub_26BD8D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v153 = a7;
  v152 = a6;
  v151 = a5;
  v148 = a4;
  v157 = a3;
  v156 = type metadata accessor for PhoneNumber(0);
  v9 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v138 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v137 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v140 = &v135 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v142 = &v135 - v18;
  v158 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  v19 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v154 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v135 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v139 = &v135 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v146 = &v135 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v144 = &v135 - v30;
  MEMORY[0x28223BE20](v29);
  v141 = &v135 - v31;
  v159 = type metadata accessor for AuthResponse.Account(0);
  v32 = *(*(v159 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v159);
  v136 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v147 = &v135 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v145 = &v135 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v143 = &v135 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v135 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFE0, &qword_26BDA9B20);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v150 = &v135 - v45;
  v149 = type metadata accessor for AuthResponse(0);
  v46 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v155 = &v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_26BDA07C0();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v135 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v55 = &v135 - v54;
  v57 = *(a2 + 48);
  v56 = *(a2 + 56);

  TriageRequest.ClientContext.deviceName.setter();
  v163 = *(a2 + 16);
  v162 = v163;
  sub_26BD9034C(&v163, v161);
  MEMORY[0x26D695B80](32, 0xE100000000000000);
  MEMORY[0x26D695B80](*(a2 + 32), *(a2 + 40));
  TriageRequest.ClientContext.deviceOs.setter();
  sub_26BDA07B0();
  sub_26BD8E4FC();
  v58 = *(v49 + 8);
  v58(v55, v48);
  TriageRequest.ClientContext.timeZone.setter();
  sub_26BDA07B0();
  sub_26BDA0790();
  v58(v53, v48);
  TriageRequest.ClientContext.fullTimeZone.setter();
  sub_26BDA0680();
  TriageRequest.ClientContext.deviceLocale.setter();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v60 = result;
    v61 = [result isPasscodeSet];

    v62 = *(type metadata accessor for TriageRequest.ClientContext(0) + 20);
    v63 = *(a1 + v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(a1 + v62);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = type metadata accessor for TriageRequest.ClientContext._StorageClass(0);
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      swift_allocObject();
      v65 = sub_26BD65E58(v65);
      *(a1 + v62) = v65;
    }

    v69 = v156;
    v70 = v159;
    swift_beginAccess();
    *(v65 + 200) = v61;
    if (qword_280448F40 != -1)
    {
      swift_once();
    }

    TriageRequest.ClientContext.osBuildNumber.setter();
    v71 = v148 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator() + 20);
    if (*v71 != 1 || (v72 = *(v71 + 32), v73 = *(v71 + 40), __swift_project_boxed_opaque_existential_1((v71 + 8), v72), v74 = *(v73 + 8), v75 = v73, v70 = v159, v74(0xD00000000000001ELL, 0x800000026BDAFCD0, v72, v75), !v76))
    {
      if (qword_280448F30 != -1)
      {
        swift_once();
      }
    }

    TriageRequest.ClientContext.currentDeviceSerialNumber.setter();
    v77 = v151;
    v78 = *(a1 + v62);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(a1 + v62);
    if ((v79 & 1) == 0)
    {
      v81 = type metadata accessor for TriageRequest.ClientContext._StorageClass(0);
      v82 = *(v81 + 48);
      v83 = *(v81 + 52);
      swift_allocObject();
      v80 = sub_26BD65E58(v80);
      *(a1 + v62) = v80;
    }

    v84 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
    swift_beginAccess();
    *(v80 + v84) = v77;
    if ((*(v152 + 32) & 1) == 0)
    {
      v85 = *(a1 + v62);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v87 = *(a1 + v62);
      if ((v86 & 1) == 0)
      {
        v88 = type metadata accessor for TriageRequest.ClientContext._StorageClass(0);
        v89 = *(v88 + 48);
        v90 = *(v88 + 52);
        swift_allocObject();
        v87 = sub_26BD65E58(v87);
        *(a1 + v62) = v87;
      }

      swift_beginAccess();
      *(v87 + 201) = 1;
    }

    v91 = v150;
    sub_26BD0E880(v153, v150, &qword_28044AFE0, &qword_26BDA9B20);
    v92 = v149;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, 1, v149);
    v94 = v154;
    if (EnumTagSinglePayload == 1)
    {
      return sub_26BD04E80(v91, &qword_28044AFE0, &qword_26BDA9B20);
    }

    else
    {
      v95 = v91;
      v96 = v155;
      sub_26BD90568(v95, v155, type metadata accessor for AuthResponse);
      v97 = *(v96 + *(v92 + 20));
      v98 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
      swift_beginAccess();
      v99 = v141;
      sub_26BD0E880(v97 + v98, v141, &qword_280449908, &unk_26BDA9DD0);
      v100 = __swift_getEnumTagSinglePayload(v99, 1, v70);
      v101 = MEMORY[0x277D84F90];
      if (v100 == 1)
      {
        *v42 = 0;
        *(v42 + 1) = 0;
        *(v42 + 2) = 0xE000000000000000;
        *(v42 + 3) = 0;
        *(v42 + 4) = 0xE000000000000000;
        *(v42 + 5) = 0;
        *(v42 + 6) = 0xE000000000000000;
        *(v42 + 7) = 0;
        *(v42 + 8) = 0xE000000000000000;
        *(v42 + 9) = 0;
        *(v42 + 10) = 0xE000000000000000;
        *(v42 + 11) = v101;
        v42[96] = 0;
        v102 = &v42[v70[12]];
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        __swift_storeEnumTagSinglePayload(&v42[v70[13]], 1, 1, v69);
        __swift_storeEnumTagSinglePayload(&v42[v70[14]], 1, 1, v158);
        if (__swift_getEnumTagSinglePayload(v99, 1, v70) != 1)
        {
          sub_26BD04E80(v99, &qword_280449908, &unk_26BDA9DD0);
        }
      }

      else
      {
        sub_26BD90568(v99, v42, type metadata accessor for AuthResponse.Account);
      }

      v103 = v142;
      sub_26BD0E880(&v42[v70[14]], v142, &qword_280449848, &qword_26BDA36E0);
      v104 = v158;
      if (__swift_getEnumTagSinglePayload(v103, 1, v158) == 1)
      {
        *v94 = 0;
        v94[1] = 0xE000000000000000;
        v94[2] = 0;
        v94[3] = 0;
        v105 = v94 + *(v104 + 28);
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        sub_26BD904EC(v42, type metadata accessor for AuthResponse.Account);
        if (__swift_getEnumTagSinglePayload(v103, 1, v104) != 1)
        {
          sub_26BD04E80(v103, &qword_280449848, &qword_26BDA36E0);
        }
      }

      else
      {
        sub_26BD904EC(v42, type metadata accessor for AuthResponse.Account);
        sub_26BD90568(v103, v94, type metadata accessor for AuthResponse.AuthenticationToken);
      }

      v106 = v94[3];
      sub_26BD904EC(v94, type metadata accessor for AuthResponse.AuthenticationToken);
      v160 = v106;
      sub_26BDA0FA0();
      TriageRequest.ClientContext.dsID.setter();
      v107 = v144;
      sub_26BD0E880(v97 + v98, v144, &qword_280449908, &unk_26BDA9DD0);
      v108 = __swift_getEnumTagSinglePayload(v107, 1, v70);
      v109 = v145;
      v110 = v143;
      if (v108 == 1)
      {
        *v143 = 0;
        *(v110 + 1) = 0;
        *(v110 + 2) = 0xE000000000000000;
        *(v110 + 3) = 0;
        *(v110 + 4) = 0xE000000000000000;
        *(v110 + 5) = 0;
        *(v110 + 6) = 0xE000000000000000;
        *(v110 + 7) = 0;
        *(v110 + 8) = 0xE000000000000000;
        *(v110 + 9) = 0;
        *(v110 + 10) = 0xE000000000000000;
        *(v110 + 11) = MEMORY[0x277D84F90];
        v110[96] = 0;
        v111 = &v110[v70[12]];
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        __swift_storeEnumTagSinglePayload(&v110[v70[13]], 1, 1, v69);
        __swift_storeEnumTagSinglePayload(&v110[v70[14]], 1, 1, v158);
        if (__swift_getEnumTagSinglePayload(v107, 1, v70) != 1)
        {
          sub_26BD04E80(v107, &qword_280449908, &unk_26BDA9DD0);
        }
      }

      else
      {
        sub_26BD90568(v107, v143, type metadata accessor for AuthResponse.Account);
      }

      v112 = *(v110 + 7);
      v113 = *(v110 + 8);

      sub_26BD904EC(v110, type metadata accessor for AuthResponse.Account);
      TriageRequest.ClientContext.email.setter();
      v114 = v146;
      sub_26BD0E880(v97 + v98, v146, &qword_280449908, &unk_26BDA9DD0);
      if (__swift_getEnumTagSinglePayload(v114, 1, v70) == 1)
      {
        *v109 = 0;
        *(v109 + 8) = 0;
        *(v109 + 16) = 0xE000000000000000;
        *(v109 + 24) = 0;
        *(v109 + 32) = 0xE000000000000000;
        *(v109 + 40) = 0;
        *(v109 + 48) = 0xE000000000000000;
        *(v109 + 56) = 0;
        *(v109 + 64) = 0xE000000000000000;
        *(v109 + 72) = 0;
        *(v109 + 80) = 0xE000000000000000;
        *(v109 + 88) = MEMORY[0x277D84F90];
        *(v109 + 96) = 0;
        v115 = v109 + v70[12];
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        __swift_storeEnumTagSinglePayload(v109 + v70[13], 1, 1, v69);
        __swift_storeEnumTagSinglePayload(v109 + v70[14], 1, 1, v158);
        v116 = __swift_getEnumTagSinglePayload(v114, 1, v70);
        v117 = v147;
        if (v116 != 1)
        {
          sub_26BD04E80(v114, &qword_280449908, &unk_26BDA9DD0);
        }
      }

      else
      {
        sub_26BD90568(v114, v109, type metadata accessor for AuthResponse.Account);
        v117 = v147;
      }

      v118 = *v109;
      sub_26BD904EC(v109, type metadata accessor for AuthResponse.Account);
      if (v118)
      {
        v119 = v139;
        sub_26BD0E880(v97 + v98, v139, &qword_280449908, &unk_26BDA9DD0);
        if (__swift_getEnumTagSinglePayload(v119, 1, v70) == 1)
        {
          *v117 = 0;
          *(v117 + 8) = 0;
          *(v117 + 16) = 0xE000000000000000;
          *(v117 + 24) = 0;
          *(v117 + 32) = 0xE000000000000000;
          *(v117 + 40) = 0;
          *(v117 + 48) = 0xE000000000000000;
          *(v117 + 56) = 0;
          *(v117 + 64) = 0xE000000000000000;
          *(v117 + 72) = 0;
          *(v117 + 80) = 0xE000000000000000;
          *(v117 + 88) = MEMORY[0x277D84F90];
          *(v117 + 96) = 0;
          v120 = v117 + v70[12];
          _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
          v121 = v69;
          __swift_storeEnumTagSinglePayload(v117 + v70[13], 1, 1, v69);
          __swift_storeEnumTagSinglePayload(v117 + v70[14], 1, 1, v158);
          if (__swift_getEnumTagSinglePayload(v119, 1, v70) != 1)
          {
            sub_26BD04E80(v119, &qword_280449908, &unk_26BDA9DD0);
          }
        }

        else
        {
          v121 = v69;
          sub_26BD90568(v119, v117, type metadata accessor for AuthResponse.Account);
        }

        v122 = v140;
        sub_26BD0E880(v117 + v70[13], v140, &qword_280449840, &qword_26BDA36D8);
        sub_26BD904EC(v117, type metadata accessor for AuthResponse.Account);
        v123 = v70;
        v124 = __swift_getEnumTagSinglePayload(v122, 1, v121);
        sub_26BD04E80(v122, &qword_280449840, &qword_26BDA36D8);
        if (v124 != 1)
        {
          v125 = v97 + v98;
          v126 = v135;
          sub_26BD0E880(v125, v135, &qword_280449908, &unk_26BDA9DD0);
          if (__swift_getEnumTagSinglePayload(v126, 1, v123) == 1)
          {
            v127 = v136;
            *v136 = 0;
            *(v127 + 1) = 0;
            *(v127 + 2) = 0xE000000000000000;
            *(v127 + 3) = 0;
            *(v127 + 4) = 0xE000000000000000;
            *(v127 + 5) = 0;
            *(v127 + 6) = 0xE000000000000000;
            *(v127 + 7) = 0;
            *(v127 + 8) = 0xE000000000000000;
            *(v127 + 9) = 0;
            *(v127 + 10) = 0xE000000000000000;
            *(v127 + 11) = MEMORY[0x277D84F90];
            v127[96] = 0;
            v128 = &v127[v123[12]];
            _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
            __swift_storeEnumTagSinglePayload(&v127[v123[13]], 1, 1, v121);
            __swift_storeEnumTagSinglePayload(&v127[v123[14]], 1, 1, v158);
            v129 = __swift_getEnumTagSinglePayload(v126, 1, v123);
            v130 = v138;
            v131 = v137;
            if (v129 != 1)
            {
              sub_26BD04E80(v126, &qword_280449908, &unk_26BDA9DD0);
            }
          }

          else
          {
            v127 = v136;
            sub_26BD90568(v126, v136, type metadata accessor for AuthResponse.Account);
            v130 = v138;
            v131 = v137;
          }

          sub_26BD0E880(&v127[*(v159 + 52)], v131, &qword_280449840, &qword_26BDA36D8);
          if (__swift_getEnumTagSinglePayload(v131, 1, v121) == 1)
          {
            *v130 = 0;
            v130[1] = 0xE000000000000000;
            v130[2] = 0;
            v130[3] = 0xE000000000000000;
            v132 = v130 + *(v121 + 24);
            _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
            sub_26BD904EC(v127, type metadata accessor for AuthResponse.Account);
            v133 = *(v121 + 28);
            v134 = sub_26BDA07E0();
            __swift_storeEnumTagSinglePayload(v130 + v133, 1, 1, v134);
            if (__swift_getEnumTagSinglePayload(v131, 1, v121) != 1)
            {
              sub_26BD04E80(v131, &qword_280449840, &qword_26BDA36D8);
            }
          }

          else
          {
            sub_26BD904EC(v127, type metadata accessor for AuthResponse.Account);
            sub_26BD90568(v131, v130, type metadata accessor for PhoneNumber);
          }

          TriageRequest.ClientContext.phoneNumber.setter();
        }
      }

      return sub_26BD904EC(v155, type metadata accessor for AuthResponse);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BD8E4FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B0C8, &unk_26BDA9DE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_26BDA05F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BDA05E0();
  sub_26BDA0780();
  (*(v5 + 8))(v8, v4);
  if (qword_280448F50 != -1)
  {
    swift_once();
  }

  v9 = sub_26BDA0770();
  v10 = __swift_project_value_buffer(v9, qword_28044B0A0);
  (*(*(v9 - 8) + 16))(v3, v10, v9);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v9);
  v11 = sub_26BDA07A0();
  sub_26BD04E80(v3, &qword_28044B0C8, &unk_26BDA9DE0);
  return v11;
}

void sub_26BD8E6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v118 = a4;
  v120 = a3;
  v119 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v110 = &v107 - v10;
  v11 = type metadata accessor for PhoneNumber(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v113 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = &v107 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v111 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v107 = &v107 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v117 = &v107 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v116 = &v107 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v107 - v26;
  v115 = type metadata accessor for AuthResponse.Account(0);
  v28 = *(*(v115 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v115);
  v112 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v107 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v107 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v107 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v107 - v39;
  v41 = *(a2 + *(type metadata accessor for SupportOption(0) + 20));
  swift_beginAccess();
  v42 = *(v41 + 24);
  v114 = v9;
  if (v42 == 1)
  {
    *(v41 + 16);
  }

  TriageRequest.ExecuteSupportOption.solutionTypeString.setter();
  swift_beginAccess();
  v44 = *(v41 + 32);
  v43 = *(v41 + 40);

  TriageRequest.ExecuteSupportOption.solutionSubTypeString.setter();
  sub_26BD8F4AC();
  if (v45)
  {
    TriageRequest.ExecuteSupportOption.uuid.setter();
  }

  sub_26BD8F6FC();
  v46 = v11;
  v47 = v115;
  if (v48)
  {
    TriageRequest.ExecuteSupportOption.chatTransactionID.setter();
  }

  v49 = *(v120 + *(type metadata accessor for AuthResponse(0) + 20));
  v50 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
  swift_beginAccess();
  v120 = v49;
  sub_26BD0E880(v49 + v50, v27, &qword_280449908, &unk_26BDA9DD0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v47);
  v52 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload == 1)
  {
    *v40 = 0;
    *(v40 + 1) = 0;
    *(v40 + 2) = 0xE000000000000000;
    *(v40 + 3) = 0;
    *(v40 + 4) = 0xE000000000000000;
    *(v40 + 5) = 0;
    *(v40 + 6) = 0xE000000000000000;
    *(v40 + 7) = 0;
    *(v40 + 8) = 0xE000000000000000;
    *(v40 + 9) = 0;
    *(v40 + 10) = 0xE000000000000000;
    *(v40 + 11) = v52;
    v40[96] = 0;
    v53 = &v40[v47[12]];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    __swift_storeEnumTagSinglePayload(&v40[v47[13]], 1, 1, v46);
    v54 = v47[14];
    v55 = type metadata accessor for AuthResponse.AuthenticationToken(0);
    __swift_storeEnumTagSinglePayload(&v40[v54], 1, 1, v55);
    if (__swift_getEnumTagSinglePayload(v27, 1, v47) != 1)
    {
      sub_26BD04E80(v27, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v27, v40, type metadata accessor for AuthResponse.Account);
  }

  v56 = *(v40 + 7);
  v57 = *(v40 + 8);

  sub_26BD904EC(v40, type metadata accessor for AuthResponse.Account);
  TriageRequest.ExecuteSupportOption.appleID.setter();
  v58 = v116;
  sub_26BD0E880(v120 + v50, v116, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v58, 1, v47) == 1)
  {
    *v38 = 0;
    *(v38 + 1) = 0;
    *(v38 + 2) = 0xE000000000000000;
    *(v38 + 3) = 0;
    *(v38 + 4) = 0xE000000000000000;
    *(v38 + 5) = 0;
    *(v38 + 6) = 0xE000000000000000;
    *(v38 + 7) = 0;
    *(v38 + 8) = 0xE000000000000000;
    *(v38 + 9) = 0;
    *(v38 + 10) = 0xE000000000000000;
    *(v38 + 11) = MEMORY[0x277D84F90];
    v38[96] = 0;
    v59 = &v38[v47[12]];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    __swift_storeEnumTagSinglePayload(&v38[v47[13]], 1, 1, v46);
    v60 = v47[14];
    v61 = type metadata accessor for AuthResponse.AuthenticationToken(0);
    __swift_storeEnumTagSinglePayload(&v38[v60], 1, 1, v61);
    if (__swift_getEnumTagSinglePayload(v58, 1, v47) != 1)
    {
      sub_26BD04E80(v58, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v58, v38, type metadata accessor for AuthResponse.Account);
  }

  v62 = *(v38 + 1);
  v63 = *(v38 + 2);

  sub_26BD904EC(v38, type metadata accessor for AuthResponse.Account);
  TriageRequest.ExecuteSupportOption.userEnteredFirstName.setter();
  v64 = v117;
  sub_26BD0E880(v120 + v50, v117, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v64, 1, v47) == 1)
  {
    *v35 = 0;
    *(v35 + 1) = 0;
    *(v35 + 2) = 0xE000000000000000;
    *(v35 + 3) = 0;
    *(v35 + 4) = 0xE000000000000000;
    *(v35 + 5) = 0;
    *(v35 + 6) = 0xE000000000000000;
    *(v35 + 7) = 0;
    *(v35 + 8) = 0xE000000000000000;
    *(v35 + 9) = 0;
    *(v35 + 10) = 0xE000000000000000;
    *(v35 + 11) = MEMORY[0x277D84F90];
    v35[96] = 0;
    v65 = &v35[v47[12]];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    __swift_storeEnumTagSinglePayload(&v35[v47[13]], 1, 1, v46);
    v66 = v47[14];
    v67 = type metadata accessor for AuthResponse.AuthenticationToken(0);
    __swift_storeEnumTagSinglePayload(&v35[v66], 1, 1, v67);
    if (__swift_getEnumTagSinglePayload(v64, 1, v47) != 1)
    {
      sub_26BD04E80(v64, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v64, v35, type metadata accessor for AuthResponse.Account);
  }

  v68 = *(v35 + 3);
  v69 = *(v35 + 4);

  sub_26BD904EC(v35, type metadata accessor for AuthResponse.Account);
  TriageRequest.ExecuteSupportOption.userEnteredLastName.setter();
  v70 = (v118 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator() + 20));
  v71 = *v70;
  if ((v71 & 1) == 0 || (v72 = v70[4], v73 = v70[5], __swift_project_boxed_opaque_existential_1(v70 + 1, v72), (*(v73 + 8))(0xD00000000000001DLL, 0x800000026BDAFCF0, v72, v73), !v74))
  {
    v75 = v107;
    sub_26BD0E880(v120 + v50, v107, &qword_280449908, &unk_26BDA9DD0);
    if (__swift_getEnumTagSinglePayload(v75, 1, v47) == 1)
    {
      v76 = v108;
      *v108 = 0;
      *(v76 + 1) = 0;
      *(v76 + 2) = 0xE000000000000000;
      *(v76 + 3) = 0;
      *(v76 + 4) = 0xE000000000000000;
      *(v76 + 5) = 0;
      *(v76 + 6) = 0xE000000000000000;
      *(v76 + 7) = 0;
      *(v76 + 8) = 0xE000000000000000;
      *(v76 + 9) = 0;
      *(v76 + 10) = 0xE000000000000000;
      *(v76 + 11) = MEMORY[0x277D84F90];
      v76[96] = 0;
      v77 = &v76[v47[12]];
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      __swift_storeEnumTagSinglePayload(&v76[v47[13]], 1, 1, v46);
      v78 = v47[14];
      v79 = type metadata accessor for AuthResponse.AuthenticationToken(0);
      v80 = &v76[v78];
      v81 = v76;
      __swift_storeEnumTagSinglePayload(v80, 1, 1, v79);
      v82 = __swift_getEnumTagSinglePayload(v75, 1, v47) == 1;
      v83 = v75;
      v85 = v109;
      v84 = v110;
      if (!v82)
      {
        sub_26BD04E80(v83, &qword_280449908, &unk_26BDA9DD0);
      }
    }

    else
    {
      v81 = v108;
      sub_26BD90568(v75, v108, type metadata accessor for AuthResponse.Account);
      v85 = v109;
      v84 = v110;
    }

    sub_26BD0E880(&v81[v47[13]], v84, &qword_280449840, &qword_26BDA36D8);
    if (__swift_getEnumTagSinglePayload(v84, 1, v46) == 1)
    {
      *v85 = 0;
      v85[1] = 0xE000000000000000;
      v85[2] = 0;
      v85[3] = 0xE000000000000000;
      v86 = v85 + *(v46 + 24);
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      sub_26BD904EC(v81, type metadata accessor for AuthResponse.Account);
      v87 = *(v46 + 28);
      v88 = sub_26BDA07E0();
      __swift_storeEnumTagSinglePayload(v85 + v87, 1, 1, v88);
      if (__swift_getEnumTagSinglePayload(v84, 1, v46) != 1)
      {
        sub_26BD04E80(v84, &qword_280449840, &qword_26BDA36D8);
      }
    }

    else
    {
      sub_26BD904EC(v81, type metadata accessor for AuthResponse.Account);
      sub_26BD90568(v84, v85, type metadata accessor for PhoneNumber);
    }

    v89 = v85[2];
    v90 = v85[3];

    sub_26BD904EC(v85, type metadata accessor for PhoneNumber);
  }

  TriageRequest.ExecuteSupportOption.userEnteredPhoneNumber.setter();
  if (!v71 || (v91 = v70[4], v92 = v70[5], __swift_project_boxed_opaque_existential_1(v70 + 1, v91), (*(v92 + 8))(0xD00000000000001DLL, 0x800000026BDAFD10, v91, v92), !v93))
  {
    v94 = v111;
    sub_26BD0E880(v120 + v50, v111, &qword_280449908, &unk_26BDA9DD0);
    if (__swift_getEnumTagSinglePayload(v94, 1, v47) == 1)
    {
      v95 = v112;
      *v112 = 0;
      *(v95 + 1) = 0;
      *(v95 + 2) = 0xE000000000000000;
      *(v95 + 3) = 0;
      *(v95 + 4) = 0xE000000000000000;
      *(v95 + 5) = 0;
      *(v95 + 6) = 0xE000000000000000;
      *(v95 + 7) = 0;
      *(v95 + 8) = 0xE000000000000000;
      *(v95 + 9) = 0;
      *(v95 + 10) = 0xE000000000000000;
      *(v95 + 11) = MEMORY[0x277D84F90];
      v95[96] = 0;
      v96 = &v95[v47[12]];
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      __swift_storeEnumTagSinglePayload(&v95[v47[13]], 1, 1, v46);
      v97 = v47[14];
      v98 = type metadata accessor for AuthResponse.AuthenticationToken(0);
      __swift_storeEnumTagSinglePayload(&v95[v97], 1, 1, v98);
      v99 = __swift_getEnumTagSinglePayload(v94, 1, v47);
      v101 = v113;
      v100 = v114;
      if (v99 != 1)
      {
        sub_26BD04E80(v94, &qword_280449908, &unk_26BDA9DD0);
      }
    }

    else
    {
      v95 = v112;
      sub_26BD90568(v94, v112, type metadata accessor for AuthResponse.Account);
      v101 = v113;
      v100 = v114;
    }

    sub_26BD0E880(&v95[v47[13]], v100, &qword_280449840, &qword_26BDA36D8);
    if (__swift_getEnumTagSinglePayload(v100, 1, v46) == 1)
    {
      *v101 = 0;
      v101[1] = 0xE000000000000000;
      v101[2] = 0;
      v101[3] = 0xE000000000000000;
      v102 = v101 + *(v46 + 24);
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      sub_26BD904EC(v95, type metadata accessor for AuthResponse.Account);
      v103 = *(v46 + 28);
      v104 = sub_26BDA07E0();
      __swift_storeEnumTagSinglePayload(v101 + v103, 1, 1, v104);
      if (__swift_getEnumTagSinglePayload(v100, 1, v46) != 1)
      {
        sub_26BD04E80(v100, &qword_280449840, &qword_26BDA36D8);
      }
    }

    else
    {
      sub_26BD904EC(v95, type metadata accessor for AuthResponse.Account);
      sub_26BD90568(v100, v101, type metadata accessor for PhoneNumber);
    }

    v105 = *v101;
    v106 = v101[1];

    sub_26BD904EC(v101, type metadata accessor for PhoneNumber);
  }

  TriageRequest.ExecuteSupportOption.userEnteredCountryCode.setter();
}

uint64_t sub_26BD8F424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8D8, &unk_26BDA9DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD8F4AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for SupportOption.BZCHTDetails(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + *(type metadata accessor for SupportOption(0) + 20));
  swift_beginAccess();
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);

  v12 = sub_26BDA0F30();

  v13 = 0;
  if (v12 == 2)
  {
    v14 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
    swift_beginAccess();
    sub_26BD0E880(v9 + v14, v4, &qword_2804490B0, &qword_26BDA1A58);
    v15 = type metadata accessor for SupportOption.OneOf_Details(0);
    if (__swift_getEnumTagSinglePayload(v4, 1, v15) == 1)
    {
      sub_26BD04E80(v4, &qword_2804490B0, &qword_26BDA1A58);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_26BD90568(v4, v8, type metadata accessor for SupportOption.BZCHTDetails);
LABEL_8:
        v13 = *v8;
        v17 = *(v8 + 1);

        sub_26BD904EC(v8, type metadata accessor for SupportOption.BZCHTDetails);
        return v13;
      }

      sub_26BD904EC(v4, type metadata accessor for SupportOption.OneOf_Details);
    }

    *v8 = 0;
    *(v8 + 1) = 0xE000000000000000;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0xE000000000000000;
    v8[32] = 0;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0xE000000000000000;
    v16 = &v8[*(v5 + 32)];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  return v13;
}

uint64_t sub_26BD8F6FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for SupportOption.BZCHTDetails(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + *(type metadata accessor for SupportOption(0) + 20));
  swift_beginAccess();
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);

  v12 = sub_26BDA0F30();

  v13 = 0;
  if (v12 == 2)
  {
    v14 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
    swift_beginAccess();
    sub_26BD0E880(v9 + v14, v4, &qword_2804490B0, &qword_26BDA1A58);
    v15 = type metadata accessor for SupportOption.OneOf_Details(0);
    if (__swift_getEnumTagSinglePayload(v4, 1, v15) == 1)
    {
      sub_26BD04E80(v4, &qword_2804490B0, &qword_26BDA1A58);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_26BD90568(v4, v8, type metadata accessor for SupportOption.BZCHTDetails);
LABEL_8:
        v13 = *(v8 + 2);
        v17 = *(v8 + 3);

        sub_26BD904EC(v8, type metadata accessor for SupportOption.BZCHTDetails);
        return v13;
      }

      sub_26BD904EC(v4, type metadata accessor for SupportOption.OneOf_Details);
    }

    *v8 = 0;
    *(v8 + 1) = 0xE000000000000000;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0xE000000000000000;
    v8[32] = 0;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0xE000000000000000;
    v16 = &v8[*(v5 + 32)];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  return v13;
}

uint64_t sub_26BD8F94C(uint64_t *a1, uint64_t a2)
{
  v101 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v93 = &v92 - v5;
  v6 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v92 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v98 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = &v92 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v94 = &v92 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v92 - v19;
  v21 = type metadata accessor for AuthResponse.Account(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v97 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v92 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v92 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v92 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v92 - v34;
  v36 = *(a2 + *(type metadata accessor for AuthResponse(0) + 20));
  v37 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
  swift_beginAccess();
  v100 = v36;
  sub_26BD0E880(v36 + v37, v20, &qword_280449908, &unk_26BDA9DD0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
  v39 = MEMORY[0x277D84F90];
  v99 = v6;
  if (EnumTagSinglePayload == 1)
  {
    *v35 = 0;
    *(v35 + 1) = 0;
    *(v35 + 2) = 0xE000000000000000;
    *(v35 + 3) = 0;
    *(v35 + 4) = 0xE000000000000000;
    *(v35 + 5) = 0;
    *(v35 + 6) = 0xE000000000000000;
    *(v35 + 7) = 0;
    *(v35 + 8) = 0xE000000000000000;
    *(v35 + 9) = 0;
    *(v35 + 10) = 0xE000000000000000;
    *(v35 + 11) = v39;
    v35[96] = 0;
    v40 = &v35[v21[12]];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v41 = v37;
    v42 = v21[13];
    v43 = type metadata accessor for PhoneNumber(0);
    v44 = &v35[v42];
    v37 = v41;
    v6 = v99;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v43);
    __swift_storeEnumTagSinglePayload(&v35[v21[14]], 1, 1, v6);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
    {
      sub_26BD04E80(v20, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v20, v35, type metadata accessor for AuthResponse.Account);
  }

  v45 = v93;
  sub_26BD0E880(&v35[v21[14]], v93, &qword_280449848, &qword_26BDA36E0);
  v46 = __swift_getEnumTagSinglePayload(v45, 1, v6);
  v47 = v92;
  if (v46 == 1)
  {
    *v92 = 0;
    v47[1] = 0xE000000000000000;
    v47[2] = 0;
    v47[3] = 0;
    v48 = v47 + *(v6 + 28);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BD904EC(v35, type metadata accessor for AuthResponse.Account);
    if (__swift_getEnumTagSinglePayload(v45, 1, v6) != 1)
    {
      sub_26BD04E80(v45, &qword_280449848, &qword_26BDA36E0);
    }
  }

  else
  {
    sub_26BD904EC(v35, type metadata accessor for AuthResponse.Account);
    sub_26BD90568(v45, v47, type metadata accessor for AuthResponse.AuthenticationToken);
  }

  v49 = v47[3];
  sub_26BD904EC(v47, type metadata accessor for AuthResponse.AuthenticationToken);
  v102 = v49;
  v50 = sub_26BDA0FA0();
  v52 = v51;
  v53 = v101;
  v54 = v101[1];

  *v53 = v50;
  v53[1] = v52;
  v55 = v94;
  sub_26BD0E880(v100 + v37, v94, &qword_280449908, &unk_26BDA9DD0);
  v56 = __swift_getEnumTagSinglePayload(v55, 1, v21);
  v57 = MEMORY[0x277D84F90];
  if (v56 == 1)
  {
    *v33 = 0;
    *(v33 + 1) = 0;
    *(v33 + 2) = 0xE000000000000000;
    *(v33 + 3) = 0;
    *(v33 + 4) = 0xE000000000000000;
    *(v33 + 5) = 0;
    *(v33 + 6) = 0xE000000000000000;
    *(v33 + 7) = 0;
    *(v33 + 8) = 0xE000000000000000;
    *(v33 + 9) = 0;
    *(v33 + 10) = 0xE000000000000000;
    *(v33 + 11) = v57;
    v33[96] = 0;
    v58 = &v33[v21[12]];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v59 = v21[13];
    v60 = type metadata accessor for PhoneNumber(0);
    __swift_storeEnumTagSinglePayload(&v33[v59], 1, 1, v60);
    __swift_storeEnumTagSinglePayload(&v33[v21[14]], 1, 1, v99);
    if (__swift_getEnumTagSinglePayload(v55, 1, v21) != 1)
    {
      sub_26BD04E80(v55, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v55, v33, type metadata accessor for AuthResponse.Account);
  }

  v62 = *(v33 + 1);
  v61 = *(v33 + 2);

  sub_26BD904EC(v33, type metadata accessor for AuthResponse.Account);
  v63 = v101;
  v64 = v101[3];

  v63[2] = v62;
  v63[3] = v61;
  v65 = v95;
  sub_26BD0E880(v100 + v37, v95, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v65, 1, v21) == 1)
  {
    *v30 = 0;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0xE000000000000000;
    *(v30 + 3) = 0;
    *(v30 + 4) = 0xE000000000000000;
    *(v30 + 5) = 0;
    *(v30 + 6) = 0xE000000000000000;
    *(v30 + 7) = 0;
    *(v30 + 8) = 0xE000000000000000;
    *(v30 + 9) = 0;
    *(v30 + 10) = 0xE000000000000000;
    *(v30 + 11) = v57;
    v30[96] = 0;
    v66 = &v30[v21[12]];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v67 = v21[13];
    v68 = type metadata accessor for PhoneNumber(0);
    __swift_storeEnumTagSinglePayload(&v30[v67], 1, 1, v68);
    __swift_storeEnumTagSinglePayload(&v30[v21[14]], 1, 1, v99);
    v69 = __swift_getEnumTagSinglePayload(v65, 1, v21);
    v70 = v97;
    if (v69 != 1)
    {
      sub_26BD04E80(v65, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v65, v30, type metadata accessor for AuthResponse.Account);
    v70 = v97;
  }

  v72 = *(v30 + 3);
  v71 = *(v30 + 4);

  sub_26BD904EC(v30, type metadata accessor for AuthResponse.Account);
  v73 = v101;
  v74 = v101[5];

  v73[4] = v72;
  v73[5] = v71;
  v75 = v96;
  sub_26BD0E880(v100 + v37, v96, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v75, 1, v21) == 1)
  {
    *v27 = 0;
    *(v27 + 1) = 0;
    *(v27 + 2) = 0xE000000000000000;
    *(v27 + 3) = 0;
    *(v27 + 4) = 0xE000000000000000;
    *(v27 + 5) = 0;
    *(v27 + 6) = 0xE000000000000000;
    *(v27 + 7) = 0;
    *(v27 + 8) = 0xE000000000000000;
    *(v27 + 9) = 0;
    *(v27 + 10) = 0xE000000000000000;
    *(v27 + 11) = v57;
    v27[96] = 0;
    v76 = &v27[v21[12]];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v77 = v21[13];
    v78 = type metadata accessor for PhoneNumber(0);
    __swift_storeEnumTagSinglePayload(&v27[v77], 1, 1, v78);
    __swift_storeEnumTagSinglePayload(&v27[v21[14]], 1, 1, v99);
    if (__swift_getEnumTagSinglePayload(v75, 1, v21) != 1)
    {
      sub_26BD04E80(v75, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v75, v27, type metadata accessor for AuthResponse.Account);
  }

  v80 = *(v27 + 7);
  v79 = *(v27 + 8);

  sub_26BD904EC(v27, type metadata accessor for AuthResponse.Account);
  v81 = v101;
  v82 = v101[7];

  v81[6] = v80;
  v81[7] = v79;
  v83 = v98;
  sub_26BD0E880(v100 + v37, v98, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v83, 1, v21) == 1)
  {
    *v70 = 0;
    *(v70 + 8) = 0;
    *(v70 + 16) = 0xE000000000000000;
    *(v70 + 24) = 0;
    *(v70 + 32) = 0xE000000000000000;
    *(v70 + 40) = 0;
    *(v70 + 48) = 0xE000000000000000;
    *(v70 + 56) = 0;
    *(v70 + 64) = 0xE000000000000000;
    *(v70 + 72) = 0;
    *(v70 + 80) = 0xE000000000000000;
    *(v70 + 88) = v57;
    *(v70 + 96) = 0;
    v84 = v70 + v21[12];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v85 = v21[13];
    v86 = type metadata accessor for PhoneNumber(0);
    __swift_storeEnumTagSinglePayload(v70 + v85, 1, 1, v86);
    __swift_storeEnumTagSinglePayload(v70 + v21[14], 1, 1, v99);
    if (__swift_getEnumTagSinglePayload(v83, 1, v21) != 1)
    {
      sub_26BD04E80(v83, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v83, v70, type metadata accessor for AuthResponse.Account);
  }

  v88 = *(v70 + 72);
  v87 = *(v70 + 80);

  sub_26BD904EC(v70, type metadata accessor for AuthResponse.Account);
  v89 = v101;
  v90 = v101[9];

  v89[8] = v88;
  v89[9] = v87;
  return result;
}

uint64_t sub_26BD903A8()
{
  v0 = sub_26BDA0770();
  __swift_allocate_value_buffer(v0, qword_28044B0A0);
  __swift_project_value_buffer(v0, qword_28044B0A0);
  return sub_26BDA0670();
}

uint64_t sub_26BD90424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_34(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_147();
  v8(v7);
  return a2;
}

uint64_t sub_26BD904A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BD904EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26BD90568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_34(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_147();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_26BD904EC(v0, type metadata accessor for AllSolutionsRequest);
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_26BDA03E0();
}

uint64_t sub_26BD9069C()
{
  v1 = sub_26BDA0BC0();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26BDA0BD0();

  return v3;
}

uint64_t sub_26BD9073C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_26BD9077C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BD907EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26BDA0B40();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26BD90888(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26BDA0B40();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for HTTPRequestManager()
{
  result = qword_28044B0D0;
  if (!qword_28044B0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BD90954()
{
  sub_26BD909F0();
  if (v0 <= 0x3F)
  {
    sub_26BDA0B40();
    if (v1 <= 0x3F)
    {
      sub_26BD90A38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26BD909F0()
{
  result = qword_28044B0E0;
  if (!qword_28044B0E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28044B0E0);
  }

  return result;
}

void sub_26BD90A38()
{
  if (!qword_28044B0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B0F0, "xu");
    v0 = sub_26BDA0DA0();
    if (!v1)
    {
      atomic_store(v0, &qword_28044B0E8);
    }
  }
}

uint64_t sub_26BD90A9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = OUTLINED_FUNCTION_9_5();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD90AC4()
{
  OUTLINED_FUNCTION_30_2();
  v0[4] = [objc_opt_self() sessionWithConfiguration_];
  v1 = *(MEMORY[0x277CC9D18] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_26BD90B8C;
  v3 = v0[3];

  return MEMORY[0x28211ECF8](v3, 0);
}

uint64_t sub_26BD90B8C()
{
  OUTLINED_FUNCTION_34_3();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_40_3();
  v9 = v8;
  OUTLINED_FUNCTION_26_2();
  *v10 = v9;
  v12 = *(v11 + 40);
  v13 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v14 = v13;
  *(v9 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41_2();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {

    v18 = *(v13 + 8);

    return v18(v7, v5, v3);
  }
}

uint64_t sub_26BD90CE8()
{
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_25_1();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_26BD90D44@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AuthenticationHeadersProvider();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = [objc_opt_self() defaultStore];
  v12 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  *v10 = v11;
  *(v10 + 1) = v12;
  v10[16] = a1;
  v13 = [objc_opt_self() mainBundle];
  result = sub_26BD892D8(v13);
  if (v15)
  {
    v16 = *(v4 + 28);
    OUTLINED_FUNCTION_18_4();
    sub_26BDA0B30();
    v17 = sub_26BDA0B70();
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28044B148, &qword_26BDA9EF8);
    a2[4] = &off_287CB1338;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    sub_26BD94748(v10, v8);
    sub_26BD93830(v8, v17, boxed_opaque_existential_1);
    return sub_26BD947AC(v10, type metadata accessor for AuthenticationHeadersProvider);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BD90EF4()
{
  OUTLINED_FUNCTION_30_2();
  v3 = v2;
  *(v1 + 280) = v4;
  *(v1 + 288) = v0;
  *(v1 + 545) = v5;
  *(v1 + 544) = v6;
  *(v1 + 272) = v7;
  v8 = sub_26BDA0C00();
  OUTLINED_FUNCTION_110(v8);
  v10 = *(v9 + 64);
  *(v1 + 296) = OUTLINED_FUNCTION_78_1();
  v11 = sub_26BDA10E0();
  OUTLINED_FUNCTION_110(v11);
  v13 = *(v12 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_78_1();
  v14 = sub_26BDA10C0();
  OUTLINED_FUNCTION_110(v14);
  v16 = *(v15 + 64);
  *(v1 + 312) = OUTLINED_FUNCTION_78_1();
  v17 = sub_26BDA1130();
  OUTLINED_FUNCTION_110(v17);
  v19 = *(v18 + 64);
  *(v1 + 320) = OUTLINED_FUNCTION_78_1();
  v20 = sub_26BDA1140();
  *(v1 + 328) = v20;
  OUTLINED_FUNCTION_38_4(v20);
  *(v1 + 336) = v21;
  v23 = *(v22 + 64);
  *(v1 + 344) = OUTLINED_FUNCTION_78_1();
  v24 = sub_26BDA0EA0();
  *(v1 + 352) = v24;
  OUTLINED_FUNCTION_38_4(v24);
  *(v1 + 360) = v25;
  v27 = *(v26 + 64) + 15;
  *(v1 + 368) = swift_task_alloc();
  *(v1 + 376) = swift_task_alloc();
  v28 = type metadata accessor for CompositeHTTPHeadersProvider();
  *(v1 + 384) = v28;
  OUTLINED_FUNCTION_110(v28);
  v30 = *(v29 + 64);
  *(v1 + 392) = OUTLINED_FUNCTION_78_1();
  v31 = sub_26BDA0370();
  *(v1 + 400) = v31;
  OUTLINED_FUNCTION_38_4(v31);
  *(v1 + 408) = v32;
  v34 = *(v33 + 64);
  *(v1 + 416) = OUTLINED_FUNCTION_78_1();
  v35 = v3[1];
  *(v1 + 88) = *v3;
  *(v1 + 104) = v35;
  v36 = v3[3];
  *(v1 + 120) = v3[2];
  *(v1 + 136) = v36;
  v37 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_26BD91110()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v22 = *(v0 + 384);
  v23 = *(v0 + 352);
  v6 = *(v0 + 288);
  v7 = *(v0 + 545);
  v8 = *(v0 + 544);
  v9 = *(v0 + 272);
  *(v0 + 424) = swift_allocBox();
  *(v0 + 432) = v10;
  v21 = v10;
  (*(v2 + 16))(v10, v9, v1);
  v11 = sub_26BD92310(v8, (v0 + 88), v7);
  *(v0 + 440) = v11;

  sub_26BDA0E90();
  *v3 = v11;
  (*(v5 + 32))(v3 + *(v22 + 20), v4, v23);
  v12 = [objc_opt_self() mainBundle];
  result = sub_26BD892D8(v12);
  if (v14)
  {
    v15 = *(v0 + 392);
    v16 = *(*(v0 + 384) + 24);
    OUTLINED_FUNCTION_18_4();
    sub_26BDA0B30();
    v17 = swift_task_alloc();
    *(v0 + 448) = v17;
    *v17 = v0;
    v17[1] = sub_26BD912C0;
    v18 = *(v0 + 416);
    v19 = *(v0 + 392);
    v20 = *(v0 + 280);

    return sub_26BD92594(v18, v21, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BD912C0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_26_2();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;
  v3[57] = v0;

  if (v0)
  {
    v9 = v3[55];
    v10 = v3[49];

    OUTLINED_FUNCTION_5_6();
    sub_26BD947AC(v10, v11);
  }

  else
  {
    v12 = v3[49];
    OUTLINED_FUNCTION_5_6();
    sub_26BD947AC(v13, v14);
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26BD913E0()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 280);
  (*(*(v0 + 408) + 40))(*(v0 + 432), *(v0 + 416), *(v0 + 400));
  *(v0 + 546) = sub_26BD92984() & 1;

  return MEMORY[0x2822009F8](sub_26BD9146C, v1, 0);
}

uint64_t sub_26BD9146C()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 280);
  sub_26BD9E554(*(v0 + 546));
  v2 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD914CC()
{
  OUTLINED_FUNCTION_34_3();
  v1 = *(v0 + 424);
  v2 = *(v0 + 368);
  v3 = *(v0 + 288);
  v4 = *(v0 + 544);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 176) = 0;
  sub_26BDA0E90();
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v0 + 176;
  v6 = swift_task_alloc();
  *(v0 + 472) = v6;
  *v6 = v0;
  v6[1] = sub_26BD915D8;
  v7 = *(v0 + 368);

  return sub_26BD93348(0, 0, &unk_26BDA9EB0, v5);
}

uint64_t sub_26BD915D8()
{
  OUTLINED_FUNCTION_34_3();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;
  v9 = v6[59];
  *v8 = *v1;
  v7[60] = v0;

  v10 = v6[58];
  if (v0)
  {
    v11 = v7[55];
    (*(v7[45] + 8))(v7[46], v7[44]);

    v12 = sub_26BD922B4;
    v13 = 0;
  }

  else
  {
    v15 = v7[45];
    v14 = v7[46];
    v16 = v7[44];
    v17 = v7[35];
    v7[61] = v3;
    v7[62] = v5;
    (*(v15 + 8))(v14, v16);

    v12 = sub_26BD9176C;
    v13 = v17;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_26BD9176C()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[35];
  sub_26BD9E364(v0[62], v0[61], 0xD000000000000012, 0x800000026BDAFE30);
  v2 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD917E4()
{
  v70 = v0;
  v63 = *(v0 + 488);
  v65 = *(v0 + 496);
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v66 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B0F8, &qword_26BDA9EC0);
  v7 = sub_26BDA1110();
  OUTLINED_FUNCTION_38_4(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26BDA1990;
  sub_26BDA1100();
  sub_26BDA10F0();
  sub_26BD940F8(v12);
  sub_26BDA1120();
  sub_26BDA10B0();
  sub_26BDA10D0();
  sub_26BDA10A0();
  sub_26BD945AC(&qword_28044B100, MEMORY[0x277CC9FF0]);
  sub_26BDA1150();
  (*(v2 + 8))(v1, v3);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  LODWORD(v4) = *(type metadata accessor for HTTPRequestManager() + 24);

  v15 = sub_26BDA0B20();
  v16 = sub_26BDA0D70();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_77_2();
    v18 = OUTLINED_FUNCTION_21_3();
    __dst[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_26BD93910(v13, v14, __dst);
    _os_log_impl(&dword_26BCD0000, v15, v16, "[SupportServices] Support service call completed in %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  v22 = *(v0 + 192);
  if (!v22)
  {
    __break(1u);
    goto LABEL_28;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = v22;
    if ([v24 statusCode] - 200 >= 0x64)
    {
      v50 = sub_26BDA03A0();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      v19 = sub_26BDA0390();
      if (*(v0 + 192))
      {
        v53 = *(v0 + 480);
        v54 = *(v0 + 440);

        v55 = *(v0 + 176);
        v56 = *(v0 + 184);
        sub_26BCFEFC4(v55, v56);
        sub_26BD944FC();
        sub_26BDA0380();
        if (v53)
        {

          sub_26BCFF01C(v55, v56);

          v57 = [v24 statusCode];
          v69 = 0;
        }

        else
        {
          sub_26BCFF01C(v55, v56);

          memcpy(__dst, (v0 + 16), sizeof(__dst));
          v57 = [v24 statusCode];
          v69 = 1;
        }

        sub_26BD89FCC();
        v58 = swift_allocError();
        v60 = v59;
        *v59 = v57;
        memcpy(v59 + 1, __dst, 0x48uLL);
        *(v60 + 80) = v69;
        swift_willThrow();

        sub_26BD944BC(*(v0 + 176), *(v0 + 184), *(v0 + 192));
        *(v0 + 536) = v58;
        v19 = OUTLINED_FUNCTION_4_5();

        return MEMORY[0x2822009F8](v19, v20, v21);
      }

LABEL_30:
      __break(1u);
      return MEMORY[0x2822009F8](v19, v20, v21);
    }
  }

  v26 = sub_26BDA0B20();
  v27 = sub_26BDA0D80();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_77_2();
    v29 = OUTLINED_FUNCTION_21_3();
    __dst[0] = v29;
    *v28 = 136315138;
    v19 = swift_beginAccess();
    if (!*(v0 + 192))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = *(v0 + 296);
    v31 = *(v0 + 176);
    v32 = *(v0 + 184);
    sub_26BCFEFC4(v31, v32);
    sub_26BDA0BF0();
    v33 = sub_26BDA0BE0();
    v35 = v34;
    sub_26BCFF01C(v31, v32);
    if (v35)
    {
      v36 = v33;
    }

    else
    {
      v36 = 0x20676E6973726150;
    }

    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0xEE0064656C696166;
    }

    v38 = sub_26BD93910(v36, v37, __dst);

    *(v28 + 4) = v38;
    _os_log_impl(&dword_26BCD0000, v26, v27, "[SupportServices] API response body: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  v19 = swift_beginAccess();
  if (!*(v0 + 192))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = *(v0 + 440);
  v41 = *(v0 + 416);
  v40 = *(v0 + 424);
  v42 = *(v0 + 392);
  v44 = *(v0 + 368);
  v43 = *(v0 + 376);
  v45 = *(v0 + 344);
  v61 = *(v0 + 320);
  v62 = *(v0 + 312);
  v64 = *(v0 + 304);
  v67 = *(v0 + 296);
  v46 = *(v0 + 176);
  v47 = *(v0 + 184);
  sub_26BCFEFC4(v46, v47);

  sub_26BD944BC(*(v0 + 176), *(v0 + 184), *(v0 + 192));

  v48 = *(v0 + 8);

  return v48(v46, v47);
}

uint64_t sub_26BD91E50()
{
  v1 = *(v0 + 456);
  *(v0 + 264) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 152);
    v8 = *(v0 + 160);
    *(v0 + 504) = v8;
    sub_26BDA0DF0();

    MEMORY[0x26D695B80](v4, v8);

    *(v0 + 520) = 0xD00000000000001DLL;
    *(v0 + 528) = 0x800000026BDAFDF0;

    return MEMORY[0x2822009F8](sub_26BD92038, v3, 0);
  }

  else
  {
    v5 = *(v0 + 456);
    OUTLINED_FUNCTION_0_13();
    swift_willThrow();

    OUTLINED_FUNCTION_25_1();

    return v6();
  }
}

uint64_t sub_26BD92038()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[35];
  sub_26BD9E418(v0[65], v0[66]);

  v2 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD920A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_19_8();
  v17 = v16[63];
  v18 = v16[64];

  v19 = v16[57];
  OUTLINED_FUNCTION_0_13();
  v32 = v20;
  v33 = v21;
  v34 = v22;
  swift_willThrow();

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_20_8();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, v34, a13, a14, a15, a16);
}

uint64_t sub_26BD9217C()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 280);
  sub_26BD9E418(0xD00000000000001ELL, 0x800000026BDAFE10);
  v2 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD921F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_19_8();
  v17 = *(v16 + 536);
  OUTLINED_FUNCTION_0_13();
  v30 = v18;
  v31 = v19;
  v32 = v20;
  swift_willThrow();

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_20_8();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, a13, a14, a15, a16);
}

uint64_t sub_26BD922B4()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD944BC(*(v0 + 176), *(v0 + 184), *(v0 + 192));
  *(v0 + 536) = *(v0 + 480);
  v1 = OUTLINED_FUNCTION_4_5();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26BD92310(char a1, _OWORD *a2, char a3)
{
  v7 = a2[1];
  v25[0] = *a2;
  v25[1] = v7;
  v8 = a2[3];
  v25[2] = a2[2];
  v25[3] = v8;
  v9 = *(type metadata accessor for HTTPRequestManager() + 28);
  if (*(v3 + v9))
  {
    v10 = *(v3 + v9);
  }

  else
  {
    v11 = *(&v25[0] + 1);
    if (*(&v25[0] + 1))
    {
      v12 = swift_allocObject();
      *&v21 = v12;
      *(v12 + 16) = *&v25[0];
      *(v12 + 24) = v11;
      v13 = a2[2];
      *(v12 + 32) = a2[1];
      *(v12 + 48) = v13;
      *(v12 + 64) = a2[3];
      v14 = &off_287CB14C0;
      v15 = &type metadata for UserAgentHeadersProvider;
    }

    else
    {
      v14 = &off_287CB13F0;
      v15 = &type metadata for SAUserAgentHeadersProvider;
    }

    v22 = v15;
    v23 = v14;
    sub_26BD94670(&v21, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B080, &qword_26BDA9EE0);
    if (a1)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_26BDA19E0;
      *(v16 + 56) = &type metadata for TransactionIDHeadersProvider;
      *(v16 + 64) = &off_287CB1428;
      *(v16 + 96) = &type metadata for ContentTypeHeadersProvider;
      *(v16 + 104) = &off_287CB12C8;
      *(v16 + 136) = &type metadata for AnisetteHeadersProvider;
      *(v16 + 144) = &off_287CB0F88;
      sub_26BD8A3D8(v24, v16 + 152);
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      sub_26BD94688(v25, &v21);
      v18(a3 & 1);
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_26BDA1A20;
      *(v16 + 56) = &type metadata for TransactionIDHeadersProvider;
      *(v16 + 64) = &off_287CB1428;
      *(v16 + 96) = &type metadata for ContentTypeHeadersProvider;
      *(v16 + 104) = &off_287CB12C8;
      sub_26BD8A3D8(v24, v16 + 112);
      sub_26BD94688(v25, &v21);
    }

    if (qword_280448F48 != -1)
    {
      swift_once();
    }

    if (byte_28045A000)
    {
      v19 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B080, &qword_26BDA9EE0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_26BDA1A00;
      *(v19 + 56) = &type metadata for BAAHeadersProvider;
      *(v19 + 64) = &off_287CB10B8;
    }

    *&v21 = v16;
    sub_26BD93F90(v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v10 = v21;
  }

  return v10;
}

uint64_t sub_26BD92594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BD925B8, 0, 0);
}