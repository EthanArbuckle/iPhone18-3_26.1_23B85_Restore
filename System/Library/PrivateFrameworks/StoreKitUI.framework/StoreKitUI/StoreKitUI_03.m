uint64_t sub_215EC0F78(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_215EC0FA4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 7 | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 6) & 7 | 0x80;
  }

  *result = v2;
  return result;
}

uint64_t _s4IconVMa()
{
  result = qword_27CA8BAF8;
  if (!qword_27CA8BAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_215EC1070()
{
  sub_215EB38E4();
  if (v0 <= 0x3F)
  {
    sub_215EC10F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_215EC10F4()
{
  if (!qword_27CA8BB08)
  {
    sub_215EB31AC();
    v0 = sub_215F08FF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA8BB08);
    }
  }
}

uint64_t _s6RatingOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s6RatingOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_215EC12CC()
{
  result = qword_27CA8BB10;
  if (!qword_27CA8BB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BB10);
  }

  return result;
}

unint64_t sub_215EC1334()
{
  result = qword_27CA8BB18;
  if (!qword_27CA8BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BB18);
  }

  return result;
}

unint64_t sub_215EC13B0()
{
  result = qword_27CA8BB28;
  if (!qword_27CA8BB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BB30);
    sub_215EC143C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BB28);
  }

  return result;
}

unint64_t sub_215EC143C()
{
  result = qword_27CA8BB38;
  if (!qword_27CA8BB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BB40);
    sub_215EC14C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BB38);
  }

  return result;
}

unint64_t sub_215EC14C8()
{
  result = qword_27CA8BB48;
  if (!qword_27CA8BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BB50);
    sub_215EC1554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BB48);
  }

  return result;
}

unint64_t sub_215EC1554()
{
  result = qword_27CA8BB58;
  if (!qword_27CA8BB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CA8BB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BB58);
  }

  return result;
}

id OUTLINED_FUNCTION_0_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_215EC161C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_215EC1664(uint64_t *a1, int a2)
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

uint64_t sub_215EC16A4(uint64_t result, int a2, int a3)
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

uint64_t sub_215EC173C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v23 = a6;
  type metadata accessor for BackgroundGeometry();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  sub_215F09358();
  sub_215F090C8();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_1();
  sub_215F092C8();
  v8 = sub_215F09128();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v24 = a4;
  v25 = a5;
  v26 = v20;
  v27 = v21;
  OUTLINED_FUNCTION_0_6();
  WitnessTable = swift_getWitnessTable();
  sub_215F09798();
  sub_215F09558();
  OUTLINED_FUNCTION_1_1();
  v16 = swift_getWitnessTable();
  v28 = WitnessTable;
  v29 = v16;
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v17 = *(v9 + 16);
  v17(v14, v12, v8);
  v18 = *(v9 + 8);
  v18(v12, v8);
  v17(v23, v14, v8);
  return (v18)(v14, v8);
}

uint64_t sub_215EC1960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;

  v15 = sub_215F090B8();
  v16 = v11;
  v12 = sub_215F090C8();
  swift_getWitnessTable();
  v13 = *(*(v12 - 8) + 16);
  v13(v17, &v15, v12);

  v15 = v17[0];
  v16 = v17[1];
  v13(a5, &v15, v12);
}

uint64_t sub_215EC1A90@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11(v8);
  v12 = *(v4 + 16);
  v12(v10, v7, a1);
  v13 = *(v4 + 8);
  v13(v7, a1);
  v12(a2, v10, a1);
  return (v13)(v10, a1);
}

unint64_t sub_215EC1C44()
{
  result = qword_27CA8BBE8;
  if (!qword_27CA8BBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BBF0);
    sub_215EC1CD0();
    sub_215EC1D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BBE8);
  }

  return result;
}

unint64_t sub_215EC1CD0()
{
  result = qword_27CA8BBF8;
  if (!qword_27CA8BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BBF8);
  }

  return result;
}

unint64_t sub_215EC1D24()
{
  result = qword_27CA8BC00;
  if (!qword_27CA8BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BC00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for ReviewInAppRatingActionButtonStyle.Variant(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ReviewInAppRatingActionButtonStyle.Variant(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_215EC1F88()
{
  result = qword_27CA8BC08;
  if (!qword_27CA8BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BC08);
  }

  return result;
}

uint64_t sub_215EC1FDC()
{
  v1 = sub_215F08FB8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = sub_215F095F8();
  MEMORY[0x28223BE20](v8);
  if (*v0)
  {
    (*(v10 + 104))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
    sub_215F09648();
    type metadata accessor for ReviewInAppRatingActionButtonStyle();
    sub_215EB9A70(v7);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF3C0], v1);
    sub_215F08FA8();
    v11 = *(v2 + 8);
    v11(v5, v1);
    v11(v7, v1);
    v12 = sub_215F09638();

    return v12;
  }

  else
  {

    return sub_215F09608();
  }
}

uint64_t sub_215EC2248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v2;
  v109 = a2;
  v107 = sub_215F093F8();
  OUTLINED_FUNCTION_1_2();
  v106 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_2(v12 - v11);
  v13 = sub_215F09118();
  v86 = v13;
  OUTLINED_FUNCTION_1_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v92 = sub_215F09398();
  OUTLINED_FUNCTION_1_2();
  v91 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC38) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v25);
  v27 = v85 - v26;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC40) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_2(v29);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC48) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_2(v31);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC50) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_2(v33);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC58);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_2(v35);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC60);
  OUTLINED_FUNCTION_1_2();
  v101 = v36;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_2(v38);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC68);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_2(v40);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC70);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_2(v42);
  v108 = a1;
  sub_215F093A8();
  type metadata accessor for ReviewInAppRatingActionButtonStyle();
  sub_215EB9270();
  LOBYTE(a1) = sub_215F09108();
  v43 = v15 + 8;
  v44 = *(v15 + 8);
  v85[1] = v43;
  v44(v19, v13);
  KeyPath = swift_getKeyPath();
  (*(v91 + 32))(v27, v24, v92);
  OUTLINED_FUNCTION_7_1();
  v47 = &v27[v46];
  *v47 = KeyPath;
  *(v47 + 1) = (a1 & 1) == 0;
  v48 = v87;
  v47[16] = a1 & 1;
  LOBYTE(a1) = sub_215F09458();
  sub_215F08F88();
  v49 = OUTLINED_FUNCTION_6_1();
  v50 = v88;
  sub_215EC30D0(v49, v88, &qword_27CA8BC38);
  OUTLINED_FUNCTION_7_1();
  v52 = v50 + v51;
  *v52 = a1;
  *(v52 + 8) = v3;
  *(v52 + 16) = v4;
  *(v52 + 24) = v5;
  *(v52 + 32) = v6;
  *(v52 + 40) = 0;
  LOBYTE(KeyPath) = sub_215F09498();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAF0);
  sub_215F08FE8();
  v53 = __src[0];
  sub_215EB9270();
  sub_215F09108();
  v44(v19, v86);
  sub_215F08F88();
  v54 = OUTLINED_FUNCTION_6_1();
  v55 = v93;
  sub_215EC30D0(v54, v93, &qword_27CA8BC40);
  OUTLINED_FUNCTION_7_1();
  v57 = v55 + v56;
  *v57 = KeyPath;
  *(v57 + 8) = v53;
  *(v57 + 16) = v4;
  *(v57 + 24) = v5;
  *(v57 + 32) = v6;
  *(v57 + 40) = 0;
  sub_215F09798();
  sub_215F09178();
  sub_215EC30D0(v55, v48, &qword_27CA8BC48);
  OUTLINED_FUNCTION_7_1();
  memcpy((v48 + v58), __src, 0x70uLL);
  if (*v7)
  {
    LODWORD(v110[0]) = sub_215F09378();
    v59 = MEMORY[0x277CE04E8];
    v60 = MEMORY[0x277CE04F8];
  }

  else
  {
    v110[0] = sub_215F09628();
    v59 = MEMORY[0x277CE0F60];
    v60 = MEMORY[0x277CE0F78];
  }

  v110[3] = v60;
  v110[4] = v59;
  __swift_project_boxed_opaque_existential_0(v110, v60);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_8();
  (*(v64 + 16))(v63 - v62);
  v65 = sub_215F09048();
  v66 = v100;
  sub_215EC30D0(v48, v100, &qword_27CA8BC50);
  *(v66 + *(v99 + 36)) = v65;
  __swift_destroy_boxed_opaque_existential_0(v110);
  v67 = v105;
  sub_215F093E8();
  sub_215EC3120();
  sub_215EC342C(&qword_27CA8BCB0, MEMORY[0x277CDE400]);
  v68 = v98;
  v69 = v107;
  sub_215F09568();
  (*(v106 + 8))(v67, v69);
  sub_215EC3474(v66);
  v70 = sub_215F093B8();
  v71 = sub_215EC2C38(v70 & 1);
  v72 = v102;
  (*(v101 + 32))(v102, v68, v103);
  *(v72 + *(v97 + 36)) = v71;
  v73 = v104;
  v74 = v104 + *(v96 + 36);
  v75 = *MEMORY[0x277CE0118];
  v76 = sub_215F09288();
  OUTLINED_FUNCTION_0_3();
  v78 = *(v77 + 104);
  v78(v74, v75, v76);
  *(v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BCB8) + 36)) = 0;
  sub_215EC30D0(v72, v73, &qword_27CA8BC68);
  v79 = sub_215EC1FDC();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BCC0);
  v81 = v109;
  v82 = (v109 + *(v80 + 36));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BCC8);
  v78(v82 + *(v83 + 52), v75, v76);
  *v82 = v79;
  *(v82 + *(v83 + 56)) = 256;
  return sub_215EC30D0(v73, v81, &qword_27CA8BC70);
}

double sub_215EC2C38(char a1)
{
  v3 = sub_215F09268();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(type metadata accessor for ReviewInAppRatingActionButtonStyle() + 28);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_215F098B8();
    v9 = sub_215F09418();
    sub_215F08EE8();

    sub_215F09258();
    swift_getAtKeyPath();
    sub_215EC34DC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  result = 0.8;
  if ((a1 & 1) == 0)
  {
    result = 1.0;
  }

  if ((v8 & 1) == 0)
  {
    return 0.6;
  }

  return result;
}

uint64_t sub_215EC2DF4(char a1)
{
  sub_215F09938();
  MEMORY[0x216076330](a1 & 1);
  return sub_215F09958();
}

uint64_t sub_215EC2E5C()
{
  v1 = *v0;
  sub_215F09938();
  MEMORY[0x216076330](v1);
  return sub_215F09958();
}

uint64_t type metadata accessor for ReviewInAppRatingActionButtonStyle()
{
  result = qword_27CA8BC18;
  if (!qword_27CA8BC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_215EC2F14()
{
  sub_215EC3010(319, &qword_27CA8BC28, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_215EC3010(319, &qword_27CA8B618, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_215EC3064();
      if (v2 <= 0x3F)
      {
        sub_215EC10F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_215EC3010(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_215F08FC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_215EC3064()
{
  if (!qword_27CA8BC30)
  {
    v0 = sub_215F08FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA8BC30);
    }
  }
}

uint64_t sub_215EC30D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_4(a1, a2, a3);
  OUTLINED_FUNCTION_0_3();
  (*(v5 + 32))(v3, v4);
  return v3;
}

unint64_t sub_215EC3120()
{
  result = qword_27CA8BC78;
  if (!qword_27CA8BC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BC58);
    sub_215EC31D8();
    sub_215EBAFF0(&qword_27CA8BA78, &qword_27CA8BA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BC78);
  }

  return result;
}

unint64_t sub_215EC31D8()
{
  result = qword_27CA8BC80;
  if (!qword_27CA8BC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BC50);
    sub_215EC32C0(&qword_27CA8BC88, &qword_27CA8BC48, &unk_215F413D0, sub_215EC3290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BC80);
  }

  return result;
}

uint64_t sub_215EC32C0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_215EC3344()
{
  result = qword_27CA8BC98;
  if (!qword_27CA8BC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BC38);
    sub_215EC342C(&qword_27CA8BA40, MEMORY[0x277CDE278]);
    sub_215EBAFF0(&qword_27CA8BCA0, &qword_27CA8BCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BC98);
  }

  return result;
}

uint64_t sub_215EC342C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_215EC3474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BC58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215EC34DC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_215EC34E8()
{
  result = qword_27CA8BCD0;
  if (!qword_27CA8BCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BCC0);
    sub_215EC35A0();
    sub_215EBAFF0(&qword_27CA8BCF0, &qword_27CA8BCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BCD0);
  }

  return result;
}

unint64_t sub_215EC35A0()
{
  result = qword_27CA8BCD8;
  if (!qword_27CA8BCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BC70);
    sub_215EC3658();
    sub_215EBAFF0(&qword_27CA8BCE8, &qword_27CA8BCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BCD8);
  }

  return result;
}

unint64_t sub_215EC3658()
{
  result = qword_27CA8BCE0;
  if (!qword_27CA8BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BC68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BC58);
    sub_215F093F8();
    sub_215EC3120();
    sub_215EC342C(&qword_27CA8BCB0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BCE0);
  }

  return result;
}

uint64_t sub_215EC37E0(uint64_t a1)
{
  v2 = sub_215F09118();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_215F091D8();
}

uint64_t sub_215EC38A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = a7;
  LODWORD(v59) = a6;
  v57 = a1;
  v58 = a3;
  v60 = a9;
  v61 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8E0);
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v15);
  v17 = v53 - v16;
  v18 = type metadata accessor for ReviewInAppRatingView();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v19);
  v21 = (v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BD80);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v53 - v23;
  if ((sub_215F09788() & 1) == 0)
  {
    v48 = v60;
    v49 = objc_allocWithZone(SKUIReviewInAppRatingViewController);

    v50 = a5;
    v47 = sub_215EC4A00(v57, a2, v58, a4, a5);
    [v47 setDisableSubmit_];
    if (v61)
    {
      v67 = v61;
      v68 = v48;
      OUTLINED_FUNCTION_0_7();
      v64 = 1107296256;
      v65 = sub_215EC3EDC;
      v66 = &block_descriptor_10;
      v51 = _Block_copy(aBlock);
    }

    else
    {
      v51 = 0;
    }

    [v47 setRatingHandler_];
    _Block_release(v51);
    if (a10)
    {
      v67 = a10;
      v68 = a11;
      OUTLINED_FUNCTION_0_7();
      v64 = 1107296256;
      v65 = sub_215EC3F80;
      v66 = &block_descriptor_7;
      v52 = _Block_copy(aBlock);
    }

    else
    {
      v52 = 0;
    }

    [v47 setCompletion_];
    _Block_release(v52);
    return v47;
  }

  v53[0] = v24;
  v53[1] = v14;
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B678);
  swift_storeEnumTagMultiPayload();
  v25 = v18[5];
  *(v21 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5B8);
  swift_storeEnumTagMultiPayload();
  v26 = a5;
  LOBYTE(v62) = 0;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_4_3();
  LOBYTE(v62) = 0;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_4_3();
  v27 = v21 + v18[9];
  LOBYTE(v62) = 0x80;
  sub_215F096C8();
  v28 = v64;
  *v27 = aBlock[0];
  *(v27 + 1) = v28;
  v62 = 0;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  v62 = 0;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  v62 = 0;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  v54 = a10;
  v55 = a11;
  v29 = v18[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B810);
  swift_allocObject();
  *(v21 + v29) = sub_215F08F38();
  v30 = v18[14];
  swift_allocObject();
  *(v21 + v30) = sub_215F08F38();
  v31 = v18[15];
  swift_allocObject();
  *(v21 + v31) = sub_215F08F38();
  v32 = (v21 + v18[16]);
  v33 = v58;
  *v32 = v57;
  v32[1] = a2;
  v34 = (v21 + v18[17]);
  *v34 = v33;
  v34[1] = a4;
  *(v21 + v18[18]) = a5;
  v35 = v21 + v18[6];
  *v35 = v59 & 1;
  *(v35 + 1) = 0;
  v36 = (v21 + v18[20]);
  v37 = v61;
  v59 = a4;
  v38 = v60;
  *v36 = v61;
  v36[1] = v38;
  v39 = (v21 + v18[21]);
  *v39 = a10;
  v39[1] = v55;
  *(v21 + v18[19]) = v56 & 1;
  v40 = *MEMORY[0x277CDF9B8];
  v41 = sub_215F09118();
  OUTLINED_FUNCTION_0_3();
  (*(v42 + 104))(v17, v40, v41);

  v43 = v26;
  sub_215BB17E0(v37);
  sub_215BB17E0(v54);
  sub_215EC4AAC(&qword_27CA8B8F0, MEMORY[0x277CDFA28]);
  result = sub_215F097F8();
  if (result)
  {
    sub_215EC4AAC(&qword_27CA8BD88, type metadata accessor for ReviewInAppRatingView);
    sub_215EC4AF4();
    v45 = v53[0];
    sub_215F095B8();
    sub_215EC4B58(v17);
    sub_215EC4BC0(v21);
    v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA8BD90));
    return sub_215EC453C(v45);
  }

  __break(1u);
  return result;
}

uint64_t sub_215EC3EDC(uint64_t a1, uint64_t a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v4(a2, sub_215EC4C1C, v6);
}

uint64_t sub_215EC3F80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_215EC415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_215EC4220;
  v9[3] = &block_descriptor_0;
  v6 = _Block_copy(v9);
  v7 = *(a4 + 16);

  v7(a4, a1, v6);
  _Block_release(v6);
}

uint64_t sub_215EC4220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void __swiftcall ReviewInAppRatingViewController.init(nibName:bundle:)(ReviewInAppRatingViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_215F09808();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id ReviewInAppRatingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_215F09808();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = ReviewInAppRatingViewController;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id ReviewInAppRatingViewController.init(coder:)(void *a1)
{
  v4.super_class = ReviewInAppRatingViewController;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

unint64_t type metadata accessor for ReviewInAppRatingViewController()
{
  result = qword_27CA8BCF8[0];
  if (!qword_27CA8BCF8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CA8BCF8);
  }

  return result;
}

id sub_215EC453C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BD80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v5 = sub_215F092B8();
  if ((sub_215F09788() & 1) == 0)
  {
    goto LABEL_4;
  }

  result = [v5 view];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    [v5 setModalPresentationStyle_];
    [v5 setModalTransitionStyle_];
LABEL_4:
    (*(v3 + 8))(a1, v2);
    return v5;
  }

  __break(1u);
  return result;
}

id sub_215EC46CC(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_27CA8CF00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v10 - v5, a1, v3);
  v6 = sub_215F092B8();
  if ((sub_215F09788() & 1) == 0)
  {
    goto LABEL_4;
  }

  result = [v6 view];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    [v6 setModalPresentationStyle_];
    [v6 setModalTransitionStyle_];
LABEL_4:
    (*(v4 + 8))(a1, v3);
    return v6;
  }

  __break(1u);
  return result;
}

id sub_215EC4938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_215EC4A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_215F09808();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_215F09808();

LABEL_6:
  v10 = [v5 initWithTitle:v8 message:v9 icon:a5];

  return v10;
}

uint64_t sub_215EC4AAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_215EC4AF4()
{
  result = qword_27CA8B900;
  if (!qword_27CA8B900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B900);
  }

  return result;
}

uint64_t sub_215EC4B58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215EC4BC0(uint64_t a1)
{
  v2 = type metadata accessor for ReviewInAppRatingView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double OUTLINED_FUNCTION_1_3()
{
  result = *(v1 - 136);
  v3 = *(v1 - 128);
  *v0 = result;
  *(v0 + 8) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_215F096C8();
}

void OUTLINED_FUNCTION_4_3()
{
  v2 = *(v1 - 128);
  *v0 = *(v1 - 136);
  *(v0 + 8) = v2;
}

void SKUIMediaQueryNetworkTypeString_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIMediaQueryNetworkTypeString";
}

void SKUICacheCodingDecodeArray_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUICacheCodingDecodeArray";
}

void SKUICacheCodingEncodeArray_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUICacheCodingEncodeArray";
}

void SKUIColorSchemeStyleForColor_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIColorSchemeStyleForColor";
}

void SKUIColorByAdjustingBrightness_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIColorByAdjustingBrightness";
}

void SKUIIconColorsForColorScheme_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIIconColorsForColorScheme";
}

void SKUIIconFrameForIconSize_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIIconFrameForIconSize";
}

uint64_t getCNComposeRecipientViewDidChangeNotification_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [SKUIURLResolverDataConsumer objectForData:v0 response:? error:?];
}

void SKUIErrorDocumentTitle_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIErrorDocumentTitle";
}

void SKUIPageComponentClassForComponentType_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIPageComponentClassForComponentType";
}

void SKUIBadgeImageFromText_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIBadgeImageFromText";
}

void SKUIGraphicsMatchViewBorderToStroke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIGraphicsMatchViewBorderToStroke";
}

void SKUIChartGetTitle_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIChartGetTitle";
}

void CGRectWithFlippedOriginRelativeToBoundingRect_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "CGRectWithFlippedOriginRelativeToBoundingRect";
}

void SKUIImageRectForBounds_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIImageRectForBounds";
}

void SKUILockupViewTypeForString_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUILockupViewTypeForString";
}

void SKUIFacebookViewElementTypeForString_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIFacebookViewElementTypeForString";
}

void SKUIViewElementAccumulatePersonalizationLibraryItemsForChild_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIViewElementAccumulatePersonalizationLibraryItemsForChild";
}

void SKUIConsoleLogFormat_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIConsoleLogFormat";
}

void SKUIConsoleLogObjects_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIConsoleLogObjects";
}

void SKUIInitializeDOMFeatureFactory_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIInitializeDOMFeatureFactory";
}

void SKUIRegisterDOMFeatureFactory_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIRegisterDOMFeatureFactory";
}

void _SKUIIndexBarControlInitialization_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "_SKUIIndexBarControlInitialization";
}

void SKUIGetFamilyMemberImage_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIGetFamilyMemberImage";
}

void SKUIConfigureDownloadsCellView_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIConfigureDownloadsCellView";
}

void SKUIDownloadsStatusString_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIDownloadsStatusString";
}

void SKUIInitializeViewElementStyleFactory_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIInitializeViewElementStyleFactory";
}

void SKUIStringFromProductLockupLayoutSizing_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIStringFromProductLockupLayoutSizing";
}

void SKUINearMeIsEnabledForAuthorizationStatus_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUINearMeIsEnabledForAuthorizationStatus";
}

void SKUILocationIsAccurate_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUILocationIsAccurate";
}

void SKUIInitializeViewElementFactory_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIInitializeViewElementFactory";
}

void SKUIPopoverBackdropViewForView_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIPopoverBackdropViewForView";
}

void SKUIPhysicalCircleConstantsWithTraitCollection_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIPhysicalCircleConstantsWithTraitCollection";
}

void SKUIMessageBannerAttributedString_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIMessageBannerAttributedString";
}

void SKUICardElementTypeForString_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUICardElementTypeForString";
}

void SKUIRectByRemovingUserInterfaceLayoutDirectionInRect_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIRectByRemovingUserInterfaceLayoutDirectionInRect";
}

void SKUISpacePageComponentHeightForString_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUISpacePageComponentHeightForString";
}

void SKUIAttributedStringGetLineHeight_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIAttributedStringGetLineHeight";
}

void SKUIGetLayoutProperties_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIGetLayoutProperties";
}

void SKUIScaleSizeToFit_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIScaleSizeToFit";
}

void SKUIProductPageFragmentWithURL_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIProductPageFragmentWithURL";
}

void SKUICollectionViewUpdatePerspectiveCells_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUICollectionViewUpdatePerspectiveCells";
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x282114898](frame);
  result.length = v2;
  result.location = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x282114948](line);
  result.length = v2;
  result.location = v1;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}