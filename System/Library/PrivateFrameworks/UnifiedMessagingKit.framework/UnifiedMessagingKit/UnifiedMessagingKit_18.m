unint64_t sub_27053470C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 1969710451;
      goto LABEL_9;
    case 2:
      return 0xD000000000000011;
    case 3:
      return 0x756F72676B636162;
    case 4:
      v3 = 1819898995;
      goto LABEL_9;
    case 5:
      v3 = 1819568500;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      result = 0x6D69616C63736964;
      break;
    case 8:
      result = 0x676E6964646170;
      break;
    case 9:
      result = 0x6176726573626F5FLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_270534848()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D67F8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = v44 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_270536144();
  sub_2705D84C4();
  LOBYTE(v44[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2990);
  sub_2703E2A50(&unk_2807D29C0);
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();
  if (!v1)
  {
    LOBYTE(v44[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_2703E0F80(&qword_2807CFE98);
    OUTLINED_FUNCTION_6_18();
    sub_2705D8084();
    v11 = type metadata accessor for UnifiedButtonComponentModel(0);
    LOBYTE(v44[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    sub_2703E1004();
    OUTLINED_FUNCTION_6_18();
    sub_2705D8084();
    *&v44[0] = *(v2 + v11[7]);
    LOBYTE(v46) = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3758);
    sub_2703E2A50(&unk_2807D37A0);
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();

    LOBYTE(v44[0]) = *(v2 + v11[8]);
    LOBYTE(v46) = 4;
    sub_270536230();
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    v12 = OUTLINED_FUNCTION_5_61(v11[9]);
    v19 = OUTLINED_FUNCTION_27_15(v12, v13, v14, v15, v16, v17, v18);
    LOBYTE(v46) = 5;
    sub_2703F9848(v19, v20);
    sub_2703F97F4();
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8024();
    v21 = OUTLINED_FUNCTION_9_43();
    sub_2703F8F8C(v21, v22);
    v23 = OUTLINED_FUNCTION_5_61(v11[10]);
    v30 = OUTLINED_FUNCTION_27_15(v23, v24, v25, v26, v27, v28, v29);
    LOBYTE(v46) = 6;
    sub_2703F9848(v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08D8);
    sub_2703F9898();
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    v32 = OUTLINED_FUNCTION_9_43();
    sub_2703F8F8C(v32, v33);
    v46 = OUTLINED_FUNCTION_5_61(v11[11]);
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v50 = v37;
    v51 = v38;
    v52 = v39;
    sub_2703F9848(v46, v34);
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    v40 = OUTLINED_FUNCTION_25_22();
    sub_2703F8F8C(v40, v41);
    v42 = (v2 + v11[12]);
    v43 = v42[1];
    v44[0] = *v42;
    v44[1] = v43;
    *v45 = v42[2];
    *&v45[9] = *(v42 + 41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08B8);
    sub_2703F96EC();
    OUTLINED_FUNCTION_6_18();
    sub_2705D8084();
    *&v44[0] = *(v2 + v11[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D55E0);
    sub_2704F913C();
    OUTLINED_FUNCTION_6_18();
    sub_2705D8024();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_11_3();
}

void sub_270534CF8()
{
  OUTLINED_FUNCTION_10_1();
  v61 = v0;
  v2 = v1;
  v55 = v3;
  *&v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  *&v57 = &v52 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D67E0);
  OUTLINED_FUNCTION_0();
  v58 = v7;
  v59 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for UnifiedButtonComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  *(v14 - v13 + 40) = 0u;
  *v69 = 0;
  v67 = 0u;
  v68 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0;
  v65 = v14 - v13 + 40;
  sub_2703F92B0(&v67, v65, &unk_2807CF480);
  v16 = v11[6];
  v17 = sub_2705D6A54();
  v64 = v16;
  __swift_storeEnumTagSinglePayload(v15 + v16, 1, 1, v17);
  v18 = v11[7];
  if (qword_2807CE790 != -1)
  {
    swift_once();
  }

  *(v15 + v18) = qword_2807CFC70;
  v19 = v15 + v11[9];
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0;
  v20 = v15 + v11[10];
  *(v20 + 48) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  v21 = v15 + v11[11];
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 0u;
  v62 = v21;
  v63 = v18;
  *(v21 + 48) = 0;
  v22 = v2[3];
  v60 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v22);
  sub_270536144();

  v23 = v61;
  sub_2705D8484();
  if (v23)
  {
    v25 = v65;
    v26 = v62;
    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_2703C2EFC(v25, &qword_2807CF2D8);
    sub_2703C2EFC(v15 + v64, &qword_2807CF130);

    sub_2703F8F8C(*v19, *(v19 + 8));
    sub_2703F8F8C(*v20, *(v20 + 8));
    sub_2703F8F8C(*v26, v26[1]);
  }

  else
  {
    v61 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2990);
    v54 = v10;
    LOBYTE(v66) = 0;
    OUTLINED_FUNCTION_26_19();
    sub_2703E2A50(v24);
    OUTLINED_FUNCTION_10_43();
    OUTLINED_FUNCTION_2_69();
    sub_2705D7FA4();
    v27 = v68;
    *v15 = v67;
    *(v15 + 16) = v27;
    *(v15 + 32) = *v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    LOBYTE(v66) = 1;
    sub_2703E0F80(&qword_2807CFE48);
    OUTLINED_FUNCTION_10_43();
    sub_2705D7FA4();
    v28 = v62;
    sub_2703F92B0(&v67, v65, &qword_2807CF2D8);
    LOBYTE(v67) = 2;
    sub_2703E0C88();
    v29 = v57;
    sub_2705D7FA4();
    sub_2703F92B0(v29, v15 + v64, &qword_2807CF130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3758);
    LOBYTE(v66) = 3;
    sub_2703E2A50(&unk_2807D3760);
    OUTLINED_FUNCTION_10_43();
    OUTLINED_FUNCTION_2_69();
    sub_2705D7FA4();
    v30 = v67;
    v31 = v63;

    *(v15 + v31) = v30;
    LOBYTE(v66) = 4;
    sub_2705361DC();
    OUTLINED_FUNCTION_10_43();
    OUTLINED_FUNCTION_2_69();
    sub_2705D7FA4();
    *(v15 + v61[8]) = v67;
    LOBYTE(v66) = 5;
    sub_2703F92FC();
    OUTLINED_FUNCTION_10_43();
    OUTLINED_FUNCTION_2_69();
    sub_2705D7F44();
    v32 = *v69;
    v33 = *&v69[8];
    LOBYTE(v29) = v69[16];
    OUTLINED_FUNCTION_22_17();
    sub_2703F8F8C(v34, v35);
    v36 = v56;
    *v19 = v57;
    *(v19 + 16) = v36;
    *(v19 + 32) = v32;
    *(v19 + 40) = v33;
    *(v19 + 48) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08D8);
    LOBYTE(v66) = 6;
    sub_2703F9350();
    OUTLINED_FUNCTION_10_43();
    OUTLINED_FUNCTION_2_69();
    sub_2705D7FA4();
    v37 = *v69;
    *&v57 = *&v69[8];
    LODWORD(v56) = v69[16];
    v38 = *v20;
    v39 = *(v20 + 8);
    v53 = v67;
    v52 = v68;
    sub_2703F8F8C(v38, v39);
    v40 = v52;
    *v20 = v53;
    *(v20 + 16) = v40;
    v41 = v57;
    *(v20 + 32) = v37;
    *(v20 + 40) = v41;
    *(v20 + 48) = v56;
    LOBYTE(v66) = 7;
    OUTLINED_FUNCTION_10_43();
    OUTLINED_FUNCTION_2_69();
    sub_2705D7FA4();
    v42 = *v69;
    v43 = *&v69[8];
    LOBYTE(v29) = v69[16];
    OUTLINED_FUNCTION_22_17();
    sub_2703F8F8C(v44, v45);
    v46 = v56;
    *v28 = v57;
    *(v28 + 1) = v46;
    v28[4] = v42;
    v28[5] = v43;
    *(v28 + 48) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08B8);
    sub_2703F9114();
    OUTLINED_FUNCTION_2_69();
    sub_2705D7FA4();
    v47 = (v15 + v61[12]);
    v48 = v68;
    *v47 = v67;
    v47[1] = v48;
    v47[2] = *v69;
    *(v47 + 41) = *&v69[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D55E0);
    sub_2704F8F8C();
    OUTLINED_FUNCTION_2_69();
    sub_2705D7F44();
    v49 = v61[13];
    v50 = OUTLINED_FUNCTION_3_63();
    v51(v50);
    *(v15 + v49) = v66;
    sub_270535B90(v15, v55);
    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_2705388C8(v15, type metadata accessor for UnifiedButtonComponentModel);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2705355FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2705343F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270535624(uint64_t a1)
{
  v2 = sub_270536144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270535660(uint64_t a1)
{
  v2 = sub_270536144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2705356D0()
{
  result = sub_2705D58C4();
  qword_2807D67A0 = result;
  return result;
}

uint64_t sub_2705356F0()
{
  result = sub_2705D5814();
  qword_2807D67A8 = v1;
  return result;
}

uint64_t sub_270535710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v39 = a5;
  v40 = a1;
  v42 = a6;
  type metadata accessor for UnifiedButtonComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v37 = v12 - v11;
  *&v38 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v16 = v15 - v14;
  v36 = v17;
  v18 = *(v17 + 52);
  v41 = v6;
  if (*(v6 + v18))
  {
    v19 = *(v6 + v18);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v20 = (v19 + 48);
  v21 = *(v19 + 16) + 1;
  do
  {
    if (!--v21)
    {

      return sub_270535B90(v41, v42);
    }

    v22 = *(v20 - 2);
    if (*(v20 - 1) == a2 && *v20 == a3)
    {
      break;
    }

    v20 += 3;
  }

  while ((sub_2705D8134() & 1) == 0);

  MEMORY[0x28223BE20](v24);
  v25 = v39;
  *(&v36 - 4) = a4;
  *(&v36 - 3) = v25;
  v26 = v40;
  *(&v36 - 2) = v40;

  v27 = sub_2704ADB94(sub_2704ED1E0, (&v36 - 6), v22);

  swift_bridgeObjectRelease_n();
  if (!v27)
  {
    return sub_270535B90(v41, v42);
  }

  (*(v38 + 16))(v16, v26, a4);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 24);
    *(&__src[1] + 1) = 1;
    memset(&__src[2], 0, 57);
    sub_2703C2EFC(__src, &qword_2807D67B0);
    return sub_270535B90(v41, v42);
  }

  memcpy(__dst, __src, 0x59uLL);
  v28 = v37;
  sub_270535B90(v41, v37);
  v29 = __dst[6];
  if (__dst[6])
  {
    LODWORD(v41) = LOBYTE(__dst[11]);
    v40 = __dst[5];
    v30 = v28 + *(v36 + 36);
    v31 = *v30;
    v32 = *(v30 + 8);
    v38 = *&__dst[9];
    v39 = *&__dst[7];

    v33 = v31;
    v28 = v37;
    sub_2703F8F8C(v33, v32);
    *v30 = v40;
    *(v30 + 8) = v29;
    v34 = v38;
    *(v30 + 16) = v39;
    *(v30 + 32) = v34;
    *(v30 + 48) = v41;
  }

  sub_2703FC5C0(__dst, v43, &qword_2807CF2D8);
  sub_2704EF198(__dst);
  __src[0] = v43[0];
  __src[1] = v43[1];
  *&__src[2] = v44;
  sub_2703F92B0(__src, v28 + 40, &unk_2807CF480);
  return sub_270535BF4(v28, v42);
}

uint64_t sub_270535B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedButtonComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270535BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedButtonComponentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270535C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_270535D14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_270535DA0()
{
  sub_2704459D4();
  if (v0 <= 0x3F)
  {
    sub_270536030(319, &qword_2807CF320, &qword_2807CF328, &unk_2705DF710, MEMORY[0x277D21D28]);
    if (v1 <= 0x3F)
    {
      sub_270536030(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        sub_270535FE0(319, &qword_2807D3728, MEMORY[0x277CE0F78], type metadata accessor for CodableByProxy);
        if (v3 <= 0x3F)
        {
          sub_270535FE0(319, &qword_2807D67C8, &type metadata for UnifiedText, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_270536030(319, &qword_2807D0860, &qword_2807D0868, &unk_2705E56C0, MEMORY[0x277D21D28]);
            if (v5 <= 0x3F)
            {
              sub_270536030(319, &qword_2807D0850, &qword_2807D0858, &unk_2705E56B0, MEMORY[0x277D21D28]);
              if (v6 <= 0x3F)
              {
                sub_270536030(319, &qword_2807D55D8, &qword_2807D55E0, &unk_270601F40, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

void sub_270535FE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_270536030(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2705360A8()
{
  result = qword_2807D67D0;
  if (!qword_2807D67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D67D0);
  }

  return result;
}

unint64_t sub_270536144()
{
  result = qword_2807D67E8;
  if (!qword_2807D67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D67E8);
  }

  return result;
}

unint64_t sub_270536198(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2705361DC()
{
  result = qword_2807D67F0;
  if (!qword_2807D67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D67F0);
  }

  return result;
}

unint64_t sub_270536230()
{
  result = qword_2807D6800;
  if (!qword_2807D6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6800);
  }

  return result;
}

unint64_t sub_270536284()
{
  result = qword_2807D6828;
  if (!qword_2807D6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6828);
  }

  return result;
}

uint64_t sub_2705362D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D68F0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D68F8);
  OUTLINED_FUNCTION_14();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = __src - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = __src - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6900);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = __src - v12;
  if (*(a1 + *(type metadata accessor for UnifiedButtonComponentModel(0) + 36) + 8) && (OUTLINED_FUNCTION_19_22(), v14))
  {
    sub_27053660C(a1, v1);
    sub_2705D60A4();
    sub_2705D5094();
    sub_2703FC3D4(v1, v8, &qword_2807D68F0);
    memcpy(&v8[*(v4 + 36)], __src, 0x70uLL);
    sub_2703FC3D4(v8, v10, &qword_2807D68F8);
    sub_2703FC5C0(v10, v13, &qword_2807D68F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF58);
    sub_2703E2078();
    sub_27053816C();
    sub_2705D5434();
    return sub_2703C2EFC(v10, &qword_2807D68F8);
  }

  else
  {
    v16 = sub_2705D5CD4();
    sub_2705D60A4();
    sub_2705D4E64();
    v17 = *&__src[0];
    v18 = BYTE8(__src[0]);
    v19 = *&__src[1];
    v20 = BYTE8(__src[1]);
    *v13 = v16;
    *(v13 + 1) = v17;
    v13[16] = v18;
    *(v13 + 3) = v19;
    v13[32] = v20;
    *(v13 + 40) = __src[2];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF58);
    sub_2703E2078();
    sub_27053816C();
    return sub_2705D5434();
  }
}

uint64_t sub_27053660C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = v2;
  v60 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6918);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = type metadata accessor for UnifiedButtonComponentModel(0);
  v15 = v14;
  v16 = a1 + *(v14 + 44);
  v17 = *(v16 + 8);
  if (v17 && !*(a1 + *(v14 + 32)))
  {
    v18 = *v16;
    v19 = *(v16 + 24);
    v58 = *(v16 + 16);
    v59 = v18;
    v20 = *(v16 + 40);
    v55 = *(v16 + 32);
    v56 = v20;
    v57 = *(v16 + 48);
    v71[0] = v18;
    v71[1] = v17;
    LOBYTE(v71[2]) = v58;
    v71[3] = v19;
    v71[4] = v55;
    v71[5] = v20;
    LOBYTE(v71[6]) = v57 & 1;

    sub_2705D5894();
    v21 = sub_2705D5D84();
    sub_2705D5824();
    sub_27053A9B8(1u, v21, v72);

    memcpy(v71, v72, 0xB9uLL);
    v22 = sub_2705D56E4();
    sub_2705D4D34();
    OUTLINED_FUNCTION_13_4();
    sub_2703F8F8C(v59, v17);
    memcpy(v72, v71, 0xC0uLL);
    LOBYTE(v72[24]) = v22;
    v72[25] = v3;
    v72[26] = v4;
    v72[27] = v5;
    v72[28] = v6;
    LOBYTE(v72[29]) = 0;
    CGSizeMake(v72, v23);
    memcpy(v85, v72, 0xE9uLL);
  }

  else
  {
    sub_2703FC584(v85);
  }

  v24 = sub_2705D53C4();
  v67 = 0;
  v59 = v7;
  sub_270536B90(a1, v72);
  memcpy(v70, v72, 0x179uLL);
  memcpy(v71, v72, 0x179uLL);
  sub_2703FC5C0(v70, v65, &qword_2807D6920);
  OUTLINED_FUNCTION_26_19();
  sub_2703C2EFC(v25, v26);
  memcpy(&v66[7], v70, 0x179uLL);
  v27 = v67;
  sub_2703FC5C0(a1 + 40, v64, &qword_2807CF2D8);
  v28 = v64[3] == 0;
  sub_2703C2EFC(v64, &unk_2807CF480);
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = sub_2705D5724();
  if (*(a1 + v15[10] + 8))
  {
    OUTLINED_FUNCTION_19_22();
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D68C8);
      sub_2705D4E14();
    }
  }

  sub_2705D4D34();
  OUTLINED_FUNCTION_13_4();
  v68 = 0;
  v33 = sub_2705D56B4();
  sub_2705D4D34();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v69 = 0;
  v72[0] = v24;
  v72[1] = 0;
  LOBYTE(v72[2]) = v27;
  memcpy(&v72[2] + 1, v66, 0x180uLL);
  v72[51] = KeyPath;
  v72[52] = sub_27053823C;
  v72[53] = v30;
  v73 = v31;
  v74 = v3;
  v75 = v4;
  v76 = v5;
  v77 = v6;
  v78 = 0;
  v79 = v33;
  v80 = v35;
  v81 = v37;
  v82 = v39;
  v83 = v41;
  v84 = 0;
  v42 = v15[7];
  v43 = *(a1 + v15[8]);
  v44 = *(a1 + v42);
  sub_2703FC5C0(a1 + 40, v65, &qword_2807CF2D8);
  v45 = v65[3];
  sub_2703C2EFC(v65, &unk_2807CF480);
  if (v45)
  {
  }

  else
  {
    v44 = sub_2705D5D44();
  }

  sub_2705370A4(v43, v44, v13);

  sub_2703C2EFC(v72, &qword_2807D6928);
  memcpy(v62, v85, sizeof(v62));
  v46 = v61;
  sub_2703FC5C0(v13, v61, &qword_2807D6918);
  memcpy(v63, v62, 0xE9uLL);
  v47 = v60;
  memcpy(v60, v62, 0xE9uLL);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6930);
  sub_2703FC5C0(v46, v47 + *(v48 + 48), &qword_2807D6918);
  sub_2703FC5C0(v63, v65, &qword_2807D0AD0);
  OUTLINED_FUNCTION_26_19();
  sub_2703C2EFC(v49, v50);
  OUTLINED_FUNCTION_26_19();
  sub_2703C2EFC(v51, v52);
  memcpy(v65, v62, 0xE9uLL);
  return sub_2703C2EFC(v65, &qword_2807D0AD0);
}

uint64_t sub_270536B90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UnifiedButtonComponentModel(0);
  v5 = a1 + v4[9];
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = *(v5 + 48);
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    *&v33[0] = *v5;
    *(&v33[0] + 1) = v6;
    LOBYTE(v33[1]) = v8;
    *(&v33[1] + 1) = v9;
    v33[2] = *(v5 + 32);
    LOBYTE(v33[3]) = v7 & 1;
    v10 = qword_2807CE8A0;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_270536FDC(*(a1 + v4[8]));
    sub_2703FC5C0(a1 + 40, v36, &qword_2807CF2D8);
    v12 = v36[3];
    sub_2703C2EFC(v36, &unk_2807CF480);
    if (!v12)
    {
      v13 = sub_2705D5D44();

      v11 = v13;
    }

    if (qword_2807CE8A8 != -1)
    {
      swift_once();
    }

    sub_27053A9B8(1u, v11, __src);

    memcpy(__dst, __src, 0xB9uLL);
    CGSizeMake(__dst, v14);
    memcpy(v36, __dst, 0xB9uLL);
  }

  else
  {
    sub_2703FCB64(v36);
  }

  v15 = a1 + v4[10];
  v16 = *(v15 + 8);
  if (v16)
  {
    v17 = *v15;
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 40);
    v22 = *(v15 + 48);
    v31[0] = *v15;
    v31[1] = v16;
    LOBYTE(v31[2]) = v18;
    v31[3] = v19;
    v31[4] = v20;
    v31[5] = v21;
    LOBYTE(v31[6]) = v22 & 1;

    sub_2705D5894();
    v23 = sub_270536FDC(*(a1 + v4[8]));
    sub_2703FC5C0(a1 + 40, __dst, &qword_2807CF2D8);
    v24 = __dst[3];
    sub_2703C2EFC(__dst, &unk_2807CF480);
    if (!v24)
    {
      v25 = sub_2705D5D44();

      v23 = v25;
    }

    sub_2705D5814();
    sub_27053A9B8(1u, v23, v33);

    sub_2703F8F8C(v17, v16);
    memcpy(v32, v33, 0xB9uLL);
    CGSizeMake(v32, v26);
    memcpy(__dst, v32, 0xB9uLL);
  }

  else
  {
    sub_2703FCB64(__dst);
  }

  memcpy(v29, v36, sizeof(v29));
  memcpy(v32, __dst, 0xB9uLL);
  memcpy(v30, v36, 0xB9uLL);
  memcpy(v28, v36, 0xB9uLL);
  memcpy(v31, __dst, 0xB9uLL);
  memcpy(&v28[192], __dst, 0xB9uLL);
  memcpy(a2, v28, 0x179uLL);
  sub_2703FC5C0(v30, v33, &qword_2807D0B20);
  sub_2703FC5C0(v31, v33, &qword_2807D0B20);
  sub_2703C2EFC(v32, &qword_2807D0B20);
  memcpy(v33, v29, 0xB9uLL);
  return sub_2703C2EFC(v33, &qword_2807D0B20);
}

uint64_t sub_270536FDC(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {

      return sub_2705D5D54();
    }

    else
    {
      if (qword_2807CE790 != -1)
      {
        swift_once();
      }
    }
  }

  else if (sub_2703DC41C() <= 0.5)
  {

    return sub_2705D5CF4();
  }

  else
  {

    return sub_2705D5CB4();
  }
}

uint64_t sub_2705370A4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v24 = a1;
  v5 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6938);
  MEMORY[0x28223BE20](v26);
  v7 = &v23[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6940);
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-v9];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6948);
  v11 = MEMORY[0x28223BE20](v25);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v23[-v14];
  memcpy(v30, v3, sizeof(v30));
  if (v5)
  {
    a2 = sub_2705D5CD4();
  }

  else
  {
  }

  v16 = &v10[*(v8 + 36)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B98);
  v18 = *(v17 + 52);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_2705D5344();
  (*(*(v20 - 8) + 104))(v16 + v18, v19, v20);
  memcpy(v29, v30, 0x209uLL);
  *v16 = a2;
  *(v16 + *(v17 + 56)) = 256;
  v21 = memcpy(v10, v30, 0x209uLL);
  LOBYTE(v17) = v24 != 2;
  MEMORY[0x28223BE20](v21);
  *&v23[-16] = v30;
  *&v23[-8] = a2;

  sub_2703FC5C0(v29, &v28, &qword_2807D6928);
  sub_2705332FC(v17, sub_27053829C);
  sub_2703C2EFC(v10, &qword_2807D6940);
  sub_2705382A4(v15, v13);
  sub_270538308();
  *v7 = sub_2705D5F04();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D69B0);
  sub_2705386CC();
  sub_2705D5434();

  return sub_270538868(v15);
}

uint64_t sub_270537410@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = sub_2705D5F44();
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2705D5DE4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  memcpy(v22, a1, sizeof(v22));
  sub_2705D5DD4();
  MEMORY[0x2743A21D0](1);
  v15 = *(v6 + 8);
  v15(v9, v5);
  sub_2705D5DC4();
  v15(v12, v5);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_2705D5344();
  (*(*(v17 - 8) + 104))(v4, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6928);
  sub_270538454(&unk_2807D6958);
  sub_270536198(&unk_2807D69A0);
  sub_2705D5AB4();
  sub_2705388C8(v4, MEMORY[0x277CE1260]);
  return (v15)(v14, v5);
}

unint64_t sub_2705376E4()
{
  result = qword_2807D6830;
  if (!qword_2807D6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6830);
  }

  return result;
}

unint64_t sub_270537738()
{
  result = qword_2807D6838;
  if (!qword_2807D6838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6838);
  }

  return result;
}

unint64_t sub_27053778C()
{
  result = qword_2807D6840;
  if (!qword_2807D6840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6840);
  }

  return result;
}

_BYTE *sub_2705377E4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2705378B0);
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

_BYTE *storeEnumTagSinglePayload for UnifiedButtonComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x2705379E4);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270537A20()
{
  result = qword_2807D6868;
  if (!qword_2807D6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6868);
  }

  return result;
}

unint64_t sub_270537A78()
{
  result = qword_2807D6870;
  if (!qword_2807D6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6870);
  }

  return result;
}

unint64_t sub_270537AD0()
{
  result = qword_2807D6878;
  if (!qword_2807D6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6878);
  }

  return result;
}

unint64_t sub_270537B28()
{
  result = qword_2807D6880;
  if (!qword_2807D6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6880);
  }

  return result;
}

unint64_t sub_270537B80()
{
  result = qword_2807D6888;
  if (!qword_2807D6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6888);
  }

  return result;
}

unint64_t sub_270537BD8()
{
  result = qword_2807D6890;
  if (!qword_2807D6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6890);
  }

  return result;
}

unint64_t sub_270537C30()
{
  result = qword_2807D6898;
  if (!qword_2807D6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6898);
  }

  return result;
}

unint64_t sub_270537C88()
{
  result = qword_2807D68A0;
  if (!qword_2807D68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D68A0);
  }

  return result;
}

unint64_t sub_270537CE0()
{
  result = qword_2807D68A8;
  if (!qword_2807D68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D68A8);
  }

  return result;
}

unint64_t sub_270537D38()
{
  result = qword_2807D68B0;
  if (!qword_2807D68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D68B0);
  }

  return result;
}

unint64_t sub_270537D90()
{
  result = qword_2807D68B8;
  if (!qword_2807D68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D68B8);
  }

  return result;
}

unint64_t sub_270537DE8()
{
  result = qword_2807D68C0;
  if (!qword_2807D68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D68C0);
  }

  return result;
}

uint64_t sub_270537E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D68C8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_270537EB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D68C8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_270537F30()
{
  sub_270537F9C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_270537F9C()
{
  if (!qword_2807D68E0)
  {
    sub_2703DF398();
    v0 = sub_2705D4E24();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D68E0);
    }
  }
}

unint64_t sub_27053816C()
{
  result = qword_2807D6908;
  if (!qword_2807D6908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D68F8);
    sub_2703E2A50(&unk_2807D6910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6908);
  }

  return result;
}

uint64_t sub_2705382A4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6948);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_10_10();
  v4(v3);
  return a2;
}

unint64_t sub_270538308()
{
  result = qword_2807D6950;
  if (!qword_2807D6950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6928);
    sub_2705D5F44();
    sub_270538454(&unk_2807D6958);
    sub_270536198(&unk_2807D69A0);
    swift_getOpaqueTypeConformance2();
    sub_2705385E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6950);
  }

  return result;
}

unint64_t sub_270538454(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_270538504()
{
  result = qword_2807D6970;
  if (!qword_2807D6970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6978);
    sub_2703E2A50(&unk_2807D6980);
    sub_2703E2A50(&unk_2807D6990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6970);
  }

  return result;
}

unint64_t sub_2705385E8()
{
  result = qword_2807D69A8;
  if (!qword_2807D69A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6940);
    sub_270538454(&unk_2807D6958);
    sub_2703E2A50(&unk_2807D3AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D69A8);
  }

  return result;
}

unint64_t sub_2705386CC()
{
  result = qword_2807D69B8;
  if (!qword_2807D69B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D69B0);
    sub_270538784();
    sub_2703E2A50(&qword_2807D0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D69B8);
  }

  return result;
}

unint64_t sub_270538784()
{
  result = qword_2807D69C0;
  if (!qword_2807D69C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D69C8);
    sub_270538454(&unk_2807D6958);
    sub_2703E2A50(&qword_2807D0B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D69C0);
  }

  return result;
}

uint64_t sub_270538868(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6948);
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2705388C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_270538924()
{
  result = qword_2807D69E0;
  if (!qword_2807D69E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D69E8);
    sub_2703E2078();
    sub_27053816C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D69E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_24()
{

  return sub_2705D7FE4();
}

__n128 OUTLINED_FUNCTION_22_17()
{
  result = *(v0 - 144);
  *(v0 - 256) = *(v0 - 160);
  *(v0 - 272) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_15(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 - 208) = result;
  *(v7 - 200) = a2;
  *(v7 - 192) = a3;
  *(v7 - 184) = a4;
  *(v7 - 176) = a5;
  *(v7 - 168) = a6;
  *(v7 - 160) = a7;
  return result;
}

uint64_t sub_270538AE0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for UnifiedLabelComponentModel();
  sub_2703CF590(v1 + *(v6 + 20), v5, &qword_2807CF130);
  return sub_2703C1E5C(v5, a1);
}

double sub_270538B90()
{
  v1 = type metadata accessor for UnifiedLabelComponentModel();
  v2 = sub_2703CF590(v0 + *(v1 + 24), &v13, &qword_2807CF2D8);
  *&result = OUTLINED_FUNCTION_11_9(v2, v3, v4, v5, v6, v7, v8, v9, v12, v10, v13, v14).n128_u64[0];
  return result;
}

uint64_t sub_270538BE4()
{
  v1 = *(v0 + *(type metadata accessor for UnifiedLabelComponentModel() + 36));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_270538C28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1954047348 && a2 == 0xE400000000000000;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6176726573626F5FLL && a2 == 0xED0000736E6F6974)
          {

            return 5;
          }

          else
          {
            v11 = sub_2705D8134();

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

unint64_t sub_270538E14(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6575676573;
      break;
    case 3:
      result = 0x676E6964646170;
      break;
    case 4:
      result = 1954047348;
      break;
    case 5:
      result = 0x6176726573626F5FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270538ED8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6A18);
  OUTLINED_FUNCTION_1_14();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270539FE4();
  sub_2705D84C4();
  LOBYTE(v20) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140);
  sub_2703E2A50(&qword_2807CFE90);
  sub_2705D8084();
  if (!v2)
  {
    v11 = type metadata accessor for UnifiedLabelComponentModel();
    LOBYTE(v20) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    sub_2703E1004();
    OUTLINED_FUNCTION_36_0();
    sub_2705D8084();
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_2703E0F80(&qword_2807CFE98);
    OUTLINED_FUNCTION_36_0();
    sub_2705D8084();
    v12 = (v3 + v11[7]);
    v13 = v12[1];
    v20 = *v12;
    v21 = v13;
    *v22 = v12[2];
    *&v22[9] = *(v12 + 41);
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08B8);
    sub_2703F96EC();
    OUTLINED_FUNCTION_36_0();
    sub_2705D8084();
    v14 = v3 + v11[8];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 48);
    *&v20 = *v14;
    *(&v20 + 1) = v15;
    LOBYTE(v21) = v16;
    *(&v21 + 1) = v17;
    *v22 = *(v14 + 32);
    v22[16] = v18;
    v23 = 4;
    sub_2703F97F4();

    sub_2705D8084();

    *&v20 = *(v3 + v11[9]);
    v23 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D55E0);
    sub_2704F913C();
    OUTLINED_FUNCTION_36_0();
    sub_2705D8024();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_27053927C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v45 = &v42 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6A08);
  OUTLINED_FUNCTION_1_14();
  v46 = v6;
  v47 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2705D45C4();
  OUTLINED_FUNCTION_1_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v14 = v13 - v12;
  v15 = type metadata accessor for UnifiedLabelComponentModel();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  sub_2705D45B4();
  v20 = sub_2705D45A4();
  v22 = v21;
  (*(v10 + 8))(v14, v8);
  *&v57 = v20;
  *(&v57 + 1) = v22;
  sub_2705D7CF4();
  v23 = *(v15 + 20);
  v24 = sub_2705D6A54();
  v49 = v23;
  __swift_storeEnumTagSinglePayload(v19 + v23, 1, 1, v24);
  v25 = v15;
  v26 = v19 + *(v15 + 24);
  *&v59[0] = 0;
  v57 = 0u;
  v58 = 0u;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  sub_2703E0DCC(&v57, v26, &unk_2807CF480);
  v27 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_270539FE4();
  v28 = v48;
  sub_2705D8484();
  if (v28)
  {
    v29 = v49;
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_2703C2EFC(v19, &qword_2807CF140);
    sub_2703C2EFC(v19 + v29, &qword_2807CF130);
    return sub_2703C2EFC(v26, &qword_2807CF2D8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140);
    LOBYTE(v51) = 0;
    sub_2703E2A50(&qword_2807CFE40);
    sub_2705D7FA4();
    sub_2703E0DCC(&v57, v19, &qword_2807CF140);
    LOBYTE(v57) = 1;
    sub_2703E0C88();
    v30 = v45;
    sub_2705D7FA4();
    sub_2703E0DCC(v30, v19 + v49, &qword_2807CF130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    LOBYTE(v51) = 2;
    sub_2703E0F80(&qword_2807CFE48);
    OUTLINED_FUNCTION_3_64();
    sub_2705D7FA4();
    sub_2703E0DCC(&v57, v26, &qword_2807CF2D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08B8);
    v61 = 3;
    sub_2703F9114();
    OUTLINED_FUNCTION_3_64();
    sub_2705D7FA4();
    v31 = (v19 + v25[7]);
    v32 = v58;
    *v31 = v57;
    v31[1] = v32;
    v31[2] = v59[0];
    *(v31 + 41) = *(v59 + 9);
    v60 = 4;
    sub_2703F92FC();
    sub_2705D7FA4();
    v33 = v52;
    v34 = v53;
    v35 = v55;
    v36 = v56;
    v37 = v19 + v25[8];
    *v37 = v51;
    *(v37 + 8) = v33;
    *(v37 + 16) = v34;
    *(v37 + 24) = v54;
    *(v37 + 40) = v35;
    *(v37 + 48) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D55E0);
    v60 = 5;
    sub_2704F8F8C();
    OUTLINED_FUNCTION_3_64();
    sub_2705D7F44();
    v38 = v25[9];
    v39 = OUTLINED_FUNCTION_4_58();
    v40(v39);
    *(v19 + v38) = v51;
    sub_270539C08(v19, v43);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_27053A038(v19);
  }
}

uint64_t sub_2705398E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270538C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27053990C(uint64_t a1)
{
  v2 = sub_270539FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270539948(uint64_t a1)
{
  v2 = sub_270539FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2705399BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_1_14();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  v23 = type metadata accessor for UnifiedLabelComponentModel();
  if (*(v6 + *(v23 + 36)))
  {
    v19 = *(v6 + *(v23 + 36));
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v20 = sub_2704ECF98(a1, a2, a3, v19, a4, a5);

  if (v20)
  {
    (*(v14 + 16))(v18, a1, a4);
    if (swift_dynamicCast())
    {
      sub_270539C08(v6, a6);
      v21 = a6 + *(v23 + 32);

      *v21 = v24;
      *(v21 + 8) = v25;
      *(v21 + 16) = v26;
      *(v21 + 24) = v27;
      *(v21 + 40) = v28;
      *(v21 + 48) = v29;
      return result;
    }
  }

  return sub_270539C08(v6, a6);
}

uint64_t type metadata accessor for UnifiedLabelComponentModel()
{
  result = qword_2807D69F0;
  if (!qword_2807D69F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270539C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedLabelComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270539C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_270539D28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_270539DB4()
{
  sub_2703C1B58();
  if (v0 <= 0x3F)
  {
    sub_270539F38(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80, MEMORY[0x277D21D28]);
    if (v1 <= 0x3F)
    {
      sub_270539F38(319, &qword_2807CF320, &qword_2807CF328, &unk_2705DF710, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        sub_270539F38(319, &qword_2807D0850, &qword_2807D0858, &unk_2705E56B0, MEMORY[0x277D21D28]);
        if (v3 <= 0x3F)
        {
          sub_270539F38(319, &qword_2807D55D8, &qword_2807D55E0, &unk_270601F40, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_270539F38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_270539FE4()
{
  result = qword_2807D6A10;
  if (!qword_2807D6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A10);
  }

  return result;
}

uint64_t sub_27053A038(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedLabelComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for UnifiedLabelComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27053A160);
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

unint64_t sub_27053A19C()
{
  result = qword_2807D6A20;
  if (!qword_2807D6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A20);
  }

  return result;
}

unint64_t sub_27053A1F4()
{
  result = qword_2807D6A28;
  if (!qword_2807D6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A28);
  }

  return result;
}

unint64_t sub_27053A24C()
{
  result = qword_2807D6A30;
  if (!qword_2807D6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A30);
  }

  return result;
}

void *sub_27053A300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for UnifiedLabelComponentModel() + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 48);
  *&__dst[0] = *v3;
  *(&__dst[0] + 1) = v4;
  LOBYTE(__dst[1]) = v5;
  *(&__dst[1] + 1) = v6;
  __dst[2] = *(v3 + 32);
  LOBYTE(__dst[3]) = v7;

  sub_2705D5774();
  v8 = sub_2705D5D54();
  sub_2705D5824();
  sub_27053A9B8(1u, v8, v26);

  memcpy(__dst, v26, 0xB9uLL);
  LOBYTE(v4) = sub_2705D56B4();
  sub_2705D4D34();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v26[192] = 0;
  LOBYTE(v6) = sub_2705D5724();
  sub_2705D4D34();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = memcpy(a2, __dst, 0xC0uLL);
  *(a2 + 192) = v4;
  *(a2 + 200) = v10;
  *(a2 + 208) = v12;
  *(a2 + 216) = v14;
  *(a2 + 224) = v16;
  *(a2 + 232) = 0;
  *(a2 + 240) = v6;
  *(a2 + 248) = v18;
  *(a2 + 256) = v20;
  *(a2 + 264) = v22;
  *(a2 + 272) = v24;
  *(a2 + 280) = 0;
  return result;
}

unint64_t sub_27053A49C()
{
  result = qword_2807D6A38;
  if (!qword_2807D6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A38);
  }

  return result;
}

unint64_t sub_27053A59C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27053A5E4()
{
  result = qword_2807D6A40;
  if (!qword_2807D6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6A48);
    sub_27053A670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A40);
  }

  return result;
}

unint64_t sub_27053A670()
{
  result = qword_2807D6A50;
  if (!qword_2807D6A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0B18);
    sub_27053A6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A50);
  }

  return result;
}

unint64_t sub_27053A6FC()
{
  result = qword_2807D6A58;
  if (!qword_2807D6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D62E0);
    sub_27053A788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A58);
  }

  return result;
}

unint64_t sub_27053A788()
{
  result = qword_2807D6A60;
  if (!qword_2807D6A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6A68);
    sub_27053A814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A60);
  }

  return result;
}

unint64_t sub_27053A814()
{
  result = qword_2807D6A70;
  if (!qword_2807D6A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6A78);
    sub_27053A8CC();
    sub_2703E2A50(&qword_2807CF6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A70);
  }

  return result;
}

unint64_t sub_27053A8CC()
{
  result = qword_2807D6A80;
  if (!qword_2807D6A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6A88);
    sub_2703E2A50(&unk_2807D3878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A80);
  }

  return result;
}

void *sub_27053A9B8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v61 = sub_2705D4254();
  OUTLINED_FUNCTION_0();
  v59 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v60 = v8 - v7;
  v9 = sub_2705D4264();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  v16 = sub_2705D4284();
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  v20 = sub_2705D42A4();
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_4_0();
  v23 = v22 - v21;
  v24 = *v3;
  v25 = *(v3 + 8);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v58 = a3;
    v57 = *(v3 + 16);
    v27 = *(v3 + 32);
    v56 = *(v3 + 24);
    (*(v11 + 104))(v15, *MEMORY[0x277CC8BB0], v9);
    (*(v59 + 104))(v60, *MEMORY[0x277CC8B98], v61);

    sub_2705D4274();
    sub_270529564(v24, v25, v19, v23);
    v28 = sub_2705D5934();
    v30 = v29;
    v32 = v31;
    if (!v27)
    {
    }

    v33 = sub_2705D5914();
    v35 = v34;
    v37 = v36;
    sub_2703CEDB0(v28, v30, v32 & 1);

    v38 = sub_2705D58E4();
    v40 = v39;
    v42 = v41;
    sub_2703CEDB0(v33, v35, v37 & 1);

    if (v56)
    {
      v43 = v56;
    }

    else
    {
      v43 = a2;
    }

    v68[0] = v43;

    v44 = sub_2705D58F4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_2703CEDB0(v38, v40, v42 & 1);

    if (v57 == 3)
    {
      v51 = a1;
    }

    else
    {
      v51 = v57;
    }

    KeyPath = swift_getKeyPath();
    v53 = swift_getKeyPath();
    v66 = v48 & 1;
    v65 = 1;
    if (v51)
    {
      if (v51 == 1)
      {
        sub_2705D60A4();
      }

      else
      {
        sub_2705D60C4();
      }
    }

    else
    {
      sub_2705D60B4();
    }

    sub_2705D5094();
    memcpy(&v67[7], __src, 0x70uLL);
    v64[0] = v44;
    v64[1] = v46;
    LOBYTE(v64[2]) = v48 & 1;
    v64[3] = v50;
    v64[4] = KeyPath;
    LOBYTE(v64[5]) = v51;
    v64[6] = v53;
    v64[7] = 0;
    LOBYTE(v64[8]) = 1;
    memcpy(&v64[8] + 1, v67, 0x77uLL);
    sub_2705389B0(v64);
    memcpy(v63, v64, sizeof(v63));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6A68);
    sub_27053A788();
    sub_2705D5434();
    a3 = v58;
  }

  else
  {
    sub_2705389BC(v64);
    memcpy(v63, v64, sizeof(v63));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6A68);
    sub_27053A788();
    sub_2705D5434();
  }

  return memcpy(a3, v68, 0xB9uLL);
}

uint64_t sub_27053AF3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1953394534 && a2 == 0xE400000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x67696557746E6F66 && a2 == 0xEA00000000007468)
        {

          return 4;
        }

        else
        {
          v10 = sub_2705D8134();

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

uint64_t sub_27053B0E4(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x6E656D6E67696C61;
      break;
    case 2:
      result = 0x726F6C6F63;
      break;
    case 3:
      result = 1953394534;
      break;
    case 4:
      result = 0x67696557746E6F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27053B188(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6AA0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v28 = *(v1 + 16);
  v9 = *(v1 + 24);
  v24 = *(v1 + 32);
  v25 = v9;
  v22 = *(v1 + 40);
  v23 = *(v1 + 48);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_27053B98C();
  sub_2705D84C4();
  LOBYTE(v26) = 0;
  v14 = v8;
  sub_2705D8034();
  if (v2)
  {
    return (*(v5 + 8))(v8, v13);
  }

  v16 = v24;
  v15 = v25;
  LOBYTE(v26) = v28;
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6AA8);
  OUTLINED_FUNCTION_0_68();
  sub_2703AFBC8(v17, &qword_2807D6AA8);
  OUTLINED_FUNCTION_3_65();
  sub_2705D8084();
  v26 = v15;
  v29 = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D01F0);
  OUTLINED_FUNCTION_0_68();
  sub_2703AFBC8(v18, &qword_2807D01F0);
  OUTLINED_FUNCTION_3_65();
  sub_2705D8084();

  v26 = v16;
  v29 = 3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6460);
  OUTLINED_FUNCTION_0_68();
  sub_2703AFBC8(v19, &qword_2807D6460);
  OUTLINED_FUNCTION_3_65();
  sub_2705D8084();

  v26 = v22;
  v27 = v23;
  v29 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3790);
  OUTLINED_FUNCTION_0_68();
  sub_2703AFBC8(v20, &qword_2807D3790);
  OUTLINED_FUNCTION_3_65();
  sub_2705D8084();
  return (*(v5 + 8))(v14, v13);
}

uint64_t sub_27053B494@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6A90);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27053B98C();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = sub_2705D7F54();
  v9 = v8;
  OUTLINED_FUNCTION_2_70();
  v10 = sub_2705D7FC4();
  if (v10)
  {
    OUTLINED_FUNCTION_1_71();
    if (sub_2705D7FD4())
    {
      v11 = 3;
    }

    else
    {
      OUTLINED_FUNCTION_1_71();
      sub_2705D7EF4();
      OUTLINED_FUNCTION_7_48();
      sub_27044B060();
      v11 = v27;
    }

    v29 = v11;
  }

  else
  {
    v29 = 3;
    LOBYTE(v27) = 3;
  }

  OUTLINED_FUNCTION_2_70();
  if ((sub_2705D7FC4() & 1) == 0)
  {
    v26 = a2;
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1_71();
  v12 = sub_2705D7FD4();
  v26 = a2;
  if (v12)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1_71();
  sub_2705D7EF4();
  v17 = OUTLINED_FUNCTION_7_48();
  sub_27044A980(v17);
  v13 = v27;
LABEL_14:
  OUTLINED_FUNCTION_2_70();
  if ((sub_2705D7FC4() & 1) == 0)
  {
    v25 = v7;
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_1_71();
  v14 = sub_2705D7FD4();
  v25 = v7;
  if (v14)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1_71();
  sub_2705D7EF4();
  v18 = OUTLINED_FUNCTION_7_48();
  sub_27044AD3C(v18);
  v15 = v27;
LABEL_18:
  OUTLINED_FUNCTION_2_70();
  if ((sub_2705D7FC4() & 1) != 0 && (OUTLINED_FUNCTION_1_71(), v16 = sub_2705D7FD4(), (v16 & 1) == 0))
  {
    OUTLINED_FUNCTION_1_71();
    sub_2705D7EF4();
    OUTLINED_FUNCTION_7_48();
    sub_27044AC6C();
    v23 = OUTLINED_FUNCTION_4_59();
    v24(v23);
    v21 = v27;
    v22 = v28;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_4_59();
    v20(v19);
    v21 = 0;
    v22 = 1;
  }

  *v26 = v25;
  *(v26 + 8) = v9;
  *(v26 + 16) = v29;
  *(v26 + 24) = v13;
  *(v26 + 32) = v15;
  *(v26 + 40) = v21;
  *(v26 + 48) = v22;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27053B8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27053AF3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27053B8E4(uint64_t a1)
{
  v2 = sub_27053B98C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27053B920(uint64_t a1)
{
  v2 = sub_27053B98C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27053B98C()
{
  result = qword_2807D6A98;
  if (!qword_2807D6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6A98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnifiedText.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27053BAACLL);
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

unint64_t sub_27053BAE8()
{
  result = qword_2807D6AB8;
  if (!qword_2807D6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6AB8);
  }

  return result;
}

unint64_t sub_27053BB40()
{
  result = qword_2807D6AC0;
  if (!qword_2807D6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6AC0);
  }

  return result;
}

unint64_t sub_27053BB98()
{
  result = qword_2807D6AC8;
  if (!qword_2807D6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6AC8);
  }

  return result;
}

uint64_t sub_27053BC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2705D6774();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_27053BD44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2705D6774();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for UpdateStateAction()
{
  result = qword_2807D6AD0;
  if (!qword_2807D6AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27053BE38()
{
  sub_2705D6774();
  if (v0 <= 0x3F)
  {
    sub_2703F16A4();
    if (v1 <= 0x3F)
    {
      sub_27053BED4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27053BED4()
{
  if (!qword_2807D6AE0)
  {
    v0 = sub_2705D7834();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D6AE0);
    }
  }
}

uint64_t sub_27053BF34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657461647075 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_27053BFFC(char a1)
{
  if (a1)
  {
    return 0x73657461647075;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_27053C02C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6B40);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27053D2B4();
  sub_2705D84C4();
  v15 = 0;
  OUTLINED_FUNCTION_3_66();
  sub_2705D8034();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_27053D35C();
    OUTLINED_FUNCTION_3_66();
    sub_2705D8084();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_27053C1A4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6B28);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27053D2B4();
  sub_2705D8484();
  if (!v1)
  {
    v4 = sub_2705D7F54();
    sub_27053D308();
    sub_2705D7FA4();
    v6 = OUTLINED_FUNCTION_0_42();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_27053C374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27053BF34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27053C39C(uint64_t a1)
{
  v2 = sub_27053D2B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27053C3D8(uint64_t a1)
{
  v2 = sub_27053D2B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27053C414@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27053C1A4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_27053C464(uint64_t a1)
{
  result = sub_27053D14C(&qword_2807CECF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27053C4BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7364616F6C796170 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

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

uint64_t sub_27053C62C(char a1)
{
  result = 0x654D6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x4173736563637573;
      break;
    case 2:
      result = 0x416572756C696166;
      break;
    case 3:
      result = 0x7364616F6C796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27053C6D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6B10);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27053CF70();
  sub_2705D84C4();
  v18 = 0;
  sub_2705D6774();
  OUTLINED_FUNCTION_1_72();
  sub_27053D14C(v11);
  OUTLINED_FUNCTION_3_66();
  sub_2705D8084();
  if (!v2)
  {
    updated = type metadata accessor for UpdateStateAction();
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_27053D190(&qword_2807CFE98);
    OUTLINED_FUNCTION_3_66();
    sub_2705D8084();
    v16 = 2;
    OUTLINED_FUNCTION_3_66();
    sub_2705D8084();
    v14[1] = *(v3 + *(updated + 28));
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6AF8);
    sub_27053CFC4(&unk_2807D6B18);
    OUTLINED_FUNCTION_3_66();
    sub_2705D8084();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_27053C984@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v32 = sub_2705D6774();
  OUTLINED_FUNCTION_0();
  v30 = v3;
  MEMORY[0x28223BE20](v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6AE8);
  OUTLINED_FUNCTION_0();
  v29 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  updated = type metadata accessor for UpdateStateAction();
  OUTLINED_FUNCTION_14();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 20)];
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  sub_2703F33A0(&v36, v15, &unk_2807CF480);
  v16 = &v14[*(updated + 24)];
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  sub_2703F33A0(&v36, v16, &unk_2807CF480);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27053CF70();
  v33 = v9;
  v17 = v35;
  sub_2705D8484();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2703C2EFC(v15, &qword_2807CF2D8);
    return sub_2703C2EFC(v16, &qword_2807CF2D8);
  }

  else
  {
    v26 = updated;
    v27 = v14;
    v18 = v30;
    v35 = a1;
    LOBYTE(v36) = 0;
    OUTLINED_FUNCTION_1_72();
    sub_27053D14C(v19);
    v20 = v31;
    v21 = v32;
    sub_2705D7FA4();
    (*(v18 + 32))(v27, v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    v39 = 1;
    sub_27053D190(&qword_2807CFE48);
    sub_2705D7FA4();
    sub_2703F33A0(&v36, v15, &qword_2807CF2D8);
    v39 = 2;
    sub_2705D7FA4();
    sub_2703F33A0(&v36, v16, &qword_2807CF2D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6AF8);
    v39 = 3;
    sub_27053CFC4(&unk_2807D6B00);
    sub_2705D7FA4();
    v22 = OUTLINED_FUNCTION_5_62();
    v23(v22);
    v24 = v27;
    *&v27[*(v26 + 28)] = v36;
    sub_27053D08C(v24, v28);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_27053D0F0(v24);
  }
}

uint64_t sub_27053CEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27053C4BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27053CEC8(uint64_t a1)
{
  v2 = sub_27053CF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27053CF04(uint64_t a1)
{
  v2 = sub_27053CF70();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27053CF70()
{
  result = qword_2807D6AF0;
  if (!qword_2807D6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6AF0);
  }

  return result;
}

unint64_t sub_27053CFC4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6AF8);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27053D038()
{
  result = qword_2807D6B08;
  if (!qword_2807D6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B08);
  }

  return result;
}

uint64_t sub_27053D08C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateStateAction();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_27053D0F0(uint64_t a1)
{
  updated = type metadata accessor for UpdateStateAction();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_27053D14C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27053D190(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF2D8);
    sub_27053D214(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27053D214(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF328);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27053D260()
{
  result = qword_2807D6B20;
  if (!qword_2807D6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B20);
  }

  return result;
}

unint64_t sub_27053D2B4()
{
  result = qword_2807D6B30;
  if (!qword_2807D6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B30);
  }

  return result;
}

unint64_t sub_27053D308()
{
  result = qword_2807D6B38;
  if (!qword_2807D6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B38);
  }

  return result;
}

unint64_t sub_27053D35C()
{
  result = qword_2807D6B48;
  if (!qword_2807D6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TargetedStatePayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27053D47CLL);
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

_BYTE *storeEnumTagSinglePayload for UpdateStateAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27053D580);
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

unint64_t sub_27053D5BC()
{
  result = qword_2807D6B50;
  if (!qword_2807D6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B50);
  }

  return result;
}

unint64_t sub_27053D614()
{
  result = qword_2807D6B58;
  if (!qword_2807D6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B58);
  }

  return result;
}

unint64_t sub_27053D66C()
{
  result = qword_2807D6B60;
  if (!qword_2807D6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B60);
  }

  return result;
}

unint64_t sub_27053D6C4()
{
  result = qword_2807D6B68;
  if (!qword_2807D6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B68);
  }

  return result;
}

unint64_t sub_27053D71C()
{
  result = qword_2807D6B70;
  if (!qword_2807D6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B70);
  }

  return result;
}

unint64_t sub_27053D774()
{
  result = qword_2807D6B78;
  if (!qword_2807D6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B78);
  }

  return result;
}

unint64_t sub_27053D7D8(uint64_t a1)
{
  result = sub_270411288();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27053D848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[43] = a2;
  v4[44] = a4;
  v4[42] = a1;
  sub_2705D6524();
  v4[45] = swift_task_alloc();
  sub_2705D78A4();
  v4[46] = sub_2705D7894();
  v6 = sub_2705D7844();
  v4[47] = v6;
  v4[48] = v5;

  return MEMORY[0x2822009F8](sub_27053D910, v6, v5);
}

uint64_t sub_27053D910()
{
  if (qword_2807CE820 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  *(v0 + 392) = qword_28081C4E0;
  *(v0 + 400) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v2 = *(sub_2705D6574() - 8);
  *(v0 + 408) = *(v2 + 72);
  *(v0 + 424) = *(v2 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2705E6EB0;
  *(v0 + 40) = &type metadata for UpdateStateActionImplementation;
  *(v0 + 16) = v1;

  v4 = AMSLogKey();
  v5 = MEMORY[0x277D837D0];
  if (v4)
  {
    v6 = v4;
    v7 = v0 + 304;
    v8 = sub_2705D7564();
    v10 = v9;

    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1((v0 + 16), &type metadata for UpdateStateActionImplementation);
    DynamicType = swift_getDynamicType();
    *(v0 + 296) = swift_getMetatypeMetadata();
    *(v0 + 272) = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC(v0 + 272, &unk_2807D4890);
    sub_2705D6504();
    *(v0 + 328) = v5;
    *(v0 + 304) = v8;
    *(v0 + 312) = v10;
  }

  else
  {
    v7 = v0 + 48;
    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1((v0 + 16), &type metadata for UpdateStateActionImplementation);
    v12 = swift_getDynamicType();
    *(v0 + 72) = swift_getMetatypeMetadata();
    *(v0 + 48) = v12;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v7, &unk_2807D4890);
  v13 = *(v0 + 352);
  v14 = *(v0 + 344);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  *(v0 + 104) = v5;
  strcpy((v0 + 80), "Updating state");
  *(v0 + 95) = -18;
  sub_2705D6544();
  sub_2703C2EFC(v0 + 80, &unk_2807D4890);
  sub_27047CF60(v3);

  *(v0 + 416) = *(v14 + *(type metadata accessor for UpdateStateAction() + 28));

  return MEMORY[0x2822009F8](sub_27053DC5C, v13, 0);
}

uint64_t sub_27053DC5C()
{
  sub_27041CD78(v0[52]);
  v1 = v0[47];
  v2 = v0[48];

  return MEMORY[0x2822009F8](sub_27053DCC4, v1, v2);
}

uint64_t sub_27053DCC4()
{
  v1 = *(v0 + 352);

  v2 = swift_allocObject();
  *(v0 + 112) = v1;
  *(v2 + 16) = xmmword_2705E6EB0;
  *(v0 + 136) = &type metadata for UpdateStateActionImplementation;

  v3 = AMSLogKey();
  v4 = MEMORY[0x277D837D0];
  if (v3)
  {
    v5 = v3;
    v6 = sub_2705D7564();
    v8 = v7;

    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    DynamicType = swift_getDynamicType();
    *(v0 + 232) = swift_getMetatypeMetadata();
    *(v0 + 208) = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC(v0 + 208, &unk_2807D4890);
    sub_2705D6504();
    *(v0 + 240) = v6;
    v10 = v0 + 240;
    *(v0 + 264) = v4;
    *(v0 + 248) = v8;
  }

  else
  {
    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    v11 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    *(v0 + 144) = v11;
    v10 = v0 + 144;
    *(v0 + 168) = MetatypeMetadata;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v10, &unk_2807D4890);
  v13 = *(v0 + 336);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  *(v0 + 200) = v4;
  strcpy((v0 + 176), "State updated");
  *(v0 + 190) = -4864;
  sub_2705D6544();
  sub_2703C2EFC(v0 + 176, &unk_2807D4890);
  sub_27047CF60(v2);

  v14 = *MEMORY[0x277D21CA8];
  sub_2705D6784();
  OUTLINED_FUNCTION_14();
  (*(v15 + 104))(v13, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_27053DFFC(uint64_t a1, uint64_t a2)
{
  v40 = sub_2705D40D4();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6B80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_2705D41B4();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D4144();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_27053E684(v14);
  }

  else
  {
    (*(v17 + 32))(v20, v14, v15);
    result = sub_2705D4124();
    if (result)
    {
      v22 = result;
      v36 = v20;
      v37 = v17;
      v35 = v11;
      v23 = 0;
      v24 = *(result + 16);
      v38 = v15;
      v39 = v5 + 16;
      while (1)
      {
        if (v24 == v23)
        {

          (*(v37 + 8))(v36, v38);
          return 0;
        }

        if (v23 >= *(v22 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v5 + 16))(v9, v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v40);
        if (sub_2705D40B4() == a1 && v25 == a2)
        {
          break;
        }

        v27 = a1;
        v28 = a2;
        v29 = sub_2705D8134();

        if (v29)
        {
          goto LABEL_16;
        }

        result = (*(v5 + 8))(v9, v40);
        ++v23;
        a2 = v28;
        a1 = v27;
      }

LABEL_16:

      v30 = v35;
      v31 = v40;
      (*(v5 + 32))(v35, v9, v40);
      v32 = sub_2705D40C4();
      v34 = v33;
      (*(v37 + 8))(v36, v38);
      (*(v5 + 8))(v30, v31);
      if (v34)
      {
        return v32;
      }
    }

    else
    {
      (*(v17 + 8))(v20, v15);
    }
  }

  return 0;
}

uint64_t sub_27053E390(uint64_t a1, uint64_t a2)
{
  v4 = sub_2705D40D4();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v31 = &v28 - v11;
  v12 = sub_2705D41B4();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2705D4464();
  if (!v19)
  {
    return v18;
  }

  sub_2705D41A4();
  sub_2705D4184();
  v30 = v17;
  result = sub_2705D4124();
  if (!result)
  {
LABEL_13:
    (*(v14 + 8))(v30, v12);
    return 0;
  }

  v21 = result;
  v28 = v14;
  v29 = v12;
  v22 = 0;
  v23 = *(result + 16);
  v32 = v6 + 16;
  v33 = v23;
  while (1)
  {
    if (v33 == v22)
    {

      v14 = v28;
      v12 = v29;
      goto LABEL_13;
    }

    if (v22 >= *(v21 + 16))
    {
      break;
    }

    (*(v6 + 16))(v10, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, v4);
    if (sub_2705D40B4() == a1 && v24 == a2)
    {

LABEL_16:

      v27 = v31;
      (*(v6 + 32))(v31, v10, v4);
      v18 = sub_2705D40C4();
      (*(v28 + 8))(v30, v29);
      (*(v6 + 8))(v27, v4);
      return v18;
    }

    v26 = sub_2705D8134();

    if (v26)
    {
      goto LABEL_16;
    }

    result = (*(v6 + 8))(v10, v4);
    ++v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_27053E684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URLModel.url.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t URLModel.url.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t URLModel.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_2703AE9E8(v2, v3, v4);
}

uint64_t URLModel.options.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2703AE980(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t URLModel.init(url:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 16);
  *a4 = a1;
  *(a4 + 8) = a2;
  v8 = OUTLINED_FUNCTION_16();
  result = sub_2703AE980(v8, v9, v10);
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  return result;
}

uint64_t sub_27053E82C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_27053E8F4(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_27053E92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27053E82C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27053E954(uint64_t a1)
{
  v2 = sub_27053EB70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27053E990(uint64_t a1)
{
  v2 = sub_27053EB70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URLModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6B88);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v9;
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27053EB70();
  sub_2705D84C4();
  LOBYTE(v15) = 0;
  v10 = v14;
  sub_2705D8034();
  if (!v10)
  {
    v15 = v13;
    v16 = v12;
    v17 = v18;
    v19 = 1;
    sub_2703AE9E8(v13, v12, v18);
    sub_2703C39C4();
    sub_2705D8024();
    sub_2703AE980(v15, v16, v17);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_27053EB70()
{
  result = qword_2807D6B90;
  if (!qword_2807D6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6B90);
  }

  return result;
}

uint64_t URLModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6B98);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27053EB70();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = OUTLINED_FUNCTION_16();
  }

  else
  {
    LOBYTE(v18) = 0;
    v7 = sub_2705D7F54();
    v9 = v8;
    sub_2703C3FAC();
    sub_2705D7F44();
    v10 = OUTLINED_FUNCTION_2_12();
    v11(v10);
    v12 = OUTLINED_FUNCTION_16();
    sub_2703AE980(v12, v13, v14);
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v18;
    *(a2 + 24) = v19;
    *(a2 + 32) = v20;

    sub_2703AE9E8(v18, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v15 = v18;
    v16 = v19;
    v17 = v20;
  }

  return sub_2703AE980(v15, v16, v17);
}

_BYTE *storeEnumTagSinglePayload for URLModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27053EEE8);
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

unint64_t sub_27053EF24()
{
  result = qword_2807D6BA0;
  if (!qword_2807D6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6BA0);
  }

  return result;
}

unint64_t sub_27053EF7C()
{
  result = qword_2807D6BA8;
  if (!qword_2807D6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6BA8);
  }

  return result;
}

unint64_t sub_27053EFD4()
{
  result = qword_2807D6BB0;
  if (!qword_2807D6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6BB0);
  }

  return result;
}

uint64_t sub_27053F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_27053F0E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_27053F190()
{
  sub_2703C1B58();
  if (v0 <= 0x3F)
  {
    sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328);
    if (v1 <= 0x3F)
    {
      sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190);
      if (v2 <= 0x3F)
      {
        sub_2704501C0(319, &qword_2807D2BE0, MEMORY[0x277CE02E8], type metadata accessor for CodableOptionalByProxy);
        if (v3 <= 0x3F)
        {
          sub_270441084();
          if (v4 <= 0x3F)
          {
            sub_2704501C0(319, &qword_2807CFE10, &unk_288052148, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2704501C0(319, &qword_2807CFE18, &unk_28805D3D0, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
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

unint64_t sub_27053F328(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_27053F36C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_2();
  v5 = type metadata accessor for VerticalStackComponentModel(0);
  sub_2703CF590(v1 + *(v5 + 24), v2, &qword_2807CF130);
  return sub_2703CF3E8(v2, a1, &qword_2807CF190);
}

uint64_t sub_27053F424(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x79616C7265646E75 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_2705D8134();

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

uint64_t sub_27053F660(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      v3 = 0x6D6E67696C61;
      goto LABEL_6;
    case 4:
      v3 = 0x6E6F706D6F63;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 5:
      result = 0x676E6964646170;
      break;
    case 6:
      result = 0x79616C7265646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27053F740(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6BE0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270540458();
  sub_2705D84C4();
  LOBYTE(v31[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140);
  OUTLINED_FUNCTION_8_11();
  sub_2703E2A50(v10);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
  sub_270479868(&qword_2807CFE98);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v11 = type metadata accessor for VerticalStackComponentModel(0);
  LOBYTE(v31[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  sub_2703E1004();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v12 = (v4 + v11[7]);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *&v31[0] = v13;
  BYTE8(v31[0]) = v12;
  LOBYTE(v27) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BA0);
  OUTLINED_FUNCTION_8_11();
  sub_2703E2A50(v14);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v37 = *(v4 + v11[8]);
  v36 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D02C8);
  OUTLINED_FUNCTION_8_11();
  sub_2703E2A50(v15);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v16 = (v4 + v11[9]);
  v17 = v16[1];
  v33 = *v16;
  v34 = v17;
  v35[0] = v16[2];
  *(v35 + 9) = *(v16 + 41);
  v32 = 5;
  sub_2703E10C0();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8024();
  v18 = (v4 + v11[10]);
  v19 = v18[1];
  v31[0] = *v18;
  v31[1] = v19;
  v20 = v18[3];
  v22 = *v18;
  v21 = v18[1];
  v31[2] = v18[2];
  v31[3] = v20;
  v27 = v22;
  v28 = v21;
  v23 = v18[3];
  v29 = v18[2];
  v30 = v23;
  v26 = 6;
  sub_2703CF590(v31, v25, &qword_2807CFE38);
  sub_2703E1114();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8024();
  v25[0] = v27;
  v25[1] = v28;
  v25[2] = v29;
  v25[3] = v30;
  sub_2703C2EFC(v25, &qword_2807CFE38);
  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_27053FBB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6BD0);
  OUTLINED_FUNCTION_0();
  v54 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for VerticalStackComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  *&v70 = 0;
  v68 = 0u;
  v69 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v58 = v14 + 40;
  sub_2703E0DCC(&v68, (v14 + 40), &unk_2807CF480);
  v15 = v11[6];
  v16 = sub_2705D6A54();
  v59 = v15;
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v16);
  v17 = &v14[v11[7]];
  *v17 = 0;
  v17[8] = 1;
  v55 = v11;
  v18 = v11[10];
  v60 = a1;
  v61 = v14;
  v19 = &v14[v18];
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v57 = v19;
  v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270540458();
  v21 = v56;
  sub_2705D8484();
  if (v21)
  {
    v22 = v58;
    v23 = v59;
    v24 = v61;
    OUTLINED_FUNCTION_11_39();
    sub_2703C2EFC(v22, &qword_2807CF2D8);
    sub_2703C2EFC(v24 + v23, &qword_2807CF130);
    if (v20)
    {
    }

    v42 = *(v57 + 1);
    v68 = *v57;
    v69 = v42;
    v43 = *(v57 + 3);
    v70 = *(v57 + 2);
    v71 = v43;
    return sub_2703C2EFC(&v68, &qword_2807CFE38);
  }

  else
  {
    v56 = v17;
    v25 = OUTLINED_FUNCTION_76_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25);
    LOBYTE(v66[0]) = 0;
    OUTLINED_FUNCTION_8_11();
    sub_2703E2A50(v26);
    OUTLINED_FUNCTION_7_49();
    sub_2705D7FA4();
    v27 = v69;
    v28 = v61;
    *v61 = v68;
    v28[1] = v27;
    *(v28 + 4) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    LOBYTE(v66[0]) = 1;
    sub_270479868(&qword_2807CFE48);
    OUTLINED_FUNCTION_7_49();
    sub_2705D7FA4();
    sub_2703E0DCC(&v68, v58, &qword_2807CF2D8);
    LOBYTE(v68) = 2;
    sub_2703E0C88();
    sub_2705D7FA4();
    sub_2703E0DCC(v5, v61 + v59, &qword_2807CF130);
    LOBYTE(v62) = 3;
    if (sub_2705D7FC4())
    {
      v29 = sub_2705D7FD4();
      v30 = v61;
      v53 = v10;
      v51 = v6;
      if (v29)
      {
        v31 = 0;
        v32 = 1;
        v33 = v56;
      }

      else
      {
        sub_2705D7EF4();
        sub_27044AE78();
        v33 = v56;
        v31 = *&v66[0];
        v32 = BYTE8(v66[0]);
      }
    }

    else
    {
      v53 = v10;
      v51 = v6;
      v31 = 0;
      v32 = 1;
      v33 = v56;
      v30 = v61;
    }

    *v33 = v31;
    v33[8] = v32;
    v34 = OUTLINED_FUNCTION_76_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v34);
    LOBYTE(v66[0]) = 4;
    OUTLINED_FUNCTION_8_11();
    sub_2703E2A50(v35);
    OUTLINED_FUNCTION_7_49();
    v36 = v51;
    v37 = v53;
    sub_2705D7FA4();
    v38 = v55;
    *(v30 + v55[8]) = v68;
    v73 = 5;
    sub_2703E0E1C();
    sub_2705D7F44();
    v39 = v54;
    v40 = (v30 + v38[9]);
    v41 = v66[5];
    *v40 = v66[4];
    v40[1] = v41;
    v40[2] = v67[0];
    *(v40 + 41) = *(v67 + 9);
    v72 = 6;
    sub_2703E0ED4();
    sub_2705D7F44();
    (*(v39 + 8))(v37, v36);
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v44 = v57;
    v45 = *(v57 + 1);
    v66[0] = *v57;
    v66[1] = v45;
    v46 = *(v57 + 3);
    v66[2] = *(v57 + 2);
    v66[3] = v46;
    sub_2703C2EFC(v66, &qword_2807CFE38);
    v47 = v63;
    *v44 = v62;
    *(v44 + 1) = v47;
    v48 = v65;
    *(v44 + 2) = v64;
    *(v44 + 3) = v48;
    sub_2705404AC(v30, v52);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_270540510(v30);
  }
}

uint64_t sub_27054033C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27053F424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270540364(uint64_t a1)
{
  v2 = sub_270540458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2705403A0(uint64_t a1)
{
  v2 = sub_270540458();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_270540458()
{
  result = qword_2807D6BD8;
  if (!qword_2807D6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6BD8);
  }

  return result;
}

uint64_t sub_2705404AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerticalStackComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270540510(uint64_t a1)
{
  v2 = type metadata accessor for VerticalStackComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for VerticalStackComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270540638);
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

unint64_t sub_270540674()
{
  result = qword_2807D6BE8;
  if (!qword_2807D6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6BE8);
  }

  return result;
}

unint64_t sub_2705406CC()
{
  result = qword_2807D6BF0;
  if (!qword_2807D6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6BF0);
  }

  return result;
}

unint64_t sub_270540724()
{
  result = qword_2807D6BF8;
  if (!qword_2807D6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6BF8);
  }

  return result;
}

unint64_t sub_2705407EC()
{
  result = qword_2807D6C00;
  if (!qword_2807D6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6C00);
  }

  return result;
}

uint64_t sub_270540900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerticalStackComponentModel(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_27054095C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerticalStackComponentModel(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2705409C8()
{
  result = type metadata accessor for VerticalStackComponentModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_270540A98@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v43 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6C20);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6C28);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v38 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6C30);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v41 = &v38 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1680);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1670);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D15A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for VerticalStackComponentModel(0);
  v20 = v3 + v19[7];
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *v20;
  if (v22 == 1)
  {
    v23 = sub_2705D53D4();
  }

  *v2 = v23;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6C38);
  sub_270540F10(v3);
  if (v22)
  {
    v21 = sub_2705D53D4();
  }

  sub_2705D52D4();
  sub_2705D5094();
  sub_2703CF3E8(v2, v15, &qword_2807D1680);
  memcpy(&v15[*(v12 + 36)], v51, 0x70uLL);
  v24 = (v3 + v19[9]);
  v25 = v24[2];
  v53[1] = v24[1];
  v54[0] = v25;
  *(v54 + 9) = *(v24 + 41);
  v53[0] = *v24;
  sub_270477DF8(v53, v26, v27, v28, v29, v30, v31, v32, v38, v39, v40, v41, v42, v43, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], *&v45[0], *(&v45[0] + 1));
  sub_2703C2EFC(v15, &qword_2807D1670);
  v33 = (v3 + v19[10]);
  v34 = v33[3];
  v48 = v33[2];
  v49 = v34;
  v35 = v33[1];
  v46 = *v33;
  v47 = v35;
  v50[2] = v48;
  v50[3] = v34;
  v50[0] = v46;
  v50[1] = v35;
  if (v46)
  {
    sub_2703E2A94(v50, v52);
    v45[0] = v46;
    v45[1] = v47;
    v45[2] = v48;
    v45[3] = v49;
    sub_270444564(v45, v44);
    v36 = v38;
    sub_270406D44();
    sub_2703CF590(v36, v6, &qword_2807D6C28);
    swift_storeEnumTagMultiPayload();
    sub_270541248();
    sub_270413F0C();
    OUTLINED_FUNCTION_8_48();
    sub_2705D5434();
    sub_2703C2EFC(&v46, &qword_2807CFE38);
    sub_2703C2EFC(v36, &qword_2807D6C28);
  }

  else
  {
    sub_2703CF590(v18, v6, &qword_2807D15A0);
    swift_storeEnumTagMultiPayload();
    sub_270541248();
    sub_270413F0C();
    OUTLINED_FUNCTION_8_48();
    sub_2705D5434();
  }

  sub_2703CF3E8(v21, v43, &qword_2807D6C30);
  return sub_2703C2EFC(v18, &qword_2807D15A0);
}

uint64_t sub_270540F10(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for VerticalStackComponentModel(0) + 32));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2704ADEEC(0, v2, 0);
    v4 = v1 + 32;
    v3 = v22;
    do
    {
      sub_2703B4E54(v4, v18);
      v16 = 2970454;
      v17 = 0xE300000000000000;
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      sub_2705D67D4();
      v5 = sub_2705D7CC4();
      MEMORY[0x2743A3A90](v5);

      sub_2703D7E30(v15);
      v6 = v16;
      v7 = v17;
      sub_2703B4E54(v18, v20);
      *&v19 = v6;
      *(&v19 + 1) = v7;
      __swift_destroy_boxed_opaque_existential_1(v18);
      v22 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2704ADEEC((v8 > 1), v9 + 1, 1);
        v3 = v22;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 56 * v9;
      v11 = v19;
      v12 = v20[0];
      v13 = v20[1];
      *(v10 + 80) = v21;
      *(v10 + 48) = v12;
      *(v10 + 64) = v13;
      *(v10 + 32) = v11;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  *&v19 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6C48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF50);
  sub_2703E2A50(&unk_2807D6C50);
  sub_2703E2A50(&unk_2807CFF68);
  sub_2703E2A50(&unk_2807D6C58);
  return sub_2705D5F84();
}

uint64_t sub_2705411A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2703B4E54(a1 + 16, v6);
  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  result = sub_2703B291C(v6, v4 + 16);
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = sub_2703E2B30;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;
  *(a2 + 40) = sub_2703DF000;
  *(a2 + 48) = 0;
  return result;
}

unint64_t sub_270541248()
{
  result = qword_2807D6C40;
  if (!qword_2807D6C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6C28);
    sub_2704144B0();
    sub_270413F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6C40);
  }

  return result;
}

uint64_t sub_2705412DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_270541318()
{
  result = qword_2807D6C60;
  if (!qword_2807D6C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6C30);
    sub_270541248();
    sub_270413F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6C60);
  }

  return result;
}

uint64_t sub_2705413F8()
{
  OUTLINED_FUNCTION_0_69();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_4_4();
  (*(v4 + 16))(v2, v1, v0);
  OUTLINED_FUNCTION_4_60();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_3_67();
}

uint64_t sub_2705414A8()
{
  OUTLINED_FUNCTION_0_69();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_4_4();
  (*(v4 + 16))(v2, v1, v0);
  OUTLINED_FUNCTION_4_60();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_3_67();
}

uint64_t sub_270541558@<X0>(int a1@<W0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a7;
  v47 = a6;
  v40 = a3;
  v41 = a2;
  v42 = a1;
  v45 = a8;
  OUTLINED_FUNCTION_1_14();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  OUTLINED_FUNCTION_1_14();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  sub_2705D5444();
  OUTLINED_FUNCTION_1_14();
  v44 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_29_3();
  if (v42)
  {
    v41(v43);
    v26 = OUTLINED_FUNCTION_6_59();
    v27 = v46;
    sub_2705029A0(v26, v28, v46);
    v29 = *(v19 + 8);
    v30 = OUTLINED_FUNCTION_6_59();
    v29(v30);
    sub_2705029A0(v23, a5, v27);
    OUTLINED_FUNCTION_6_59();
    sub_2705413F8();
    v31 = OUTLINED_FUNCTION_6_59();
    v29(v31);
    (v29)(v23, a5);
  }

  else
  {
    v32 = v47;
    sub_2705029A0(v43, a4, v47);
    sub_2705029A0(v17, a4, v32);
    sub_2705414A8();
    v33 = *(v11 + 8);
    v33(v15, a4);
    v33(v17, a4);
  }

  v48 = v46;
  v49 = v47;
  swift_getWitnessTable();
  v34 = OUTLINED_FUNCTION_4_60();
  sub_2705029A0(v34, v35, v36);
  v37 = OUTLINED_FUNCTION_4_60();
  return v38(v37);
}

uint64_t OUTLINED_FUNCTION_0_69()
{

  return MEMORY[0x282131EE8](0);
}

uint64_t OUTLINED_FUNCTION_3_67()
{

  return sub_2705D5434();
}

uint64_t sub_2705418F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  v7 = sub_2705D5044();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v18[4] = a1;
  v18[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6C68);
  sub_270541C2C();
  sub_2705D60A4();
  sub_2705D5A54();
  v14 = sub_270541CD0(&qword_2807D1550, &qword_2807D1558);
  v18[6] = a3;
  v18[7] = v14;
  WitnessTable = swift_getWitnessTable();
  sub_2705029A0(v11, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_2705029A0(v13, v7, WitnessTable);
  return (v16)(v13, v7);
}

double sub_270541AF0(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

double sub_270541B44(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

double sub_270541B84@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_270541B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2705D5CD4();
  v7 = sub_2705D60A4();
  v9 = v8;
  OUTLINED_FUNCTION_42();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = v6;
  a3[1] = sub_270412C5C;
  a3[2] = v10;
  a3[3] = v7;
  a3[4] = v9;
}

unint64_t sub_270541C2C()
{
  result = qword_2807D6C70;
  if (!qword_2807D6C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D6C68);
    sub_270541CD0(&qword_2807D6C78, &qword_2807D6C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6C70);
  }

  return result;
}

uint64_t sub_270541CD0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_270541D24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_2705D5CD4();
  sub_270541DF4();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_42();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *a3 = v6;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = sub_270541F6C;
  a3[4] = v11;
}

uint64_t sub_270541DC0()
{

  OUTLINED_FUNCTION_42();

  return swift_deallocObject();
}

uint64_t sub_270541DF4()
{
  sub_2705D4EB4();
  sub_2705D4EA4();
  sub_2705D4EA4();
  sub_2705D4EB4();
  sub_2705D4EA4();
  v0 = sub_2705D4EA4();

  return CGSizeMake(v0, v1);
}

uint64_t sub_270541E54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  sub_2705D78A4();

  v12 = sub_2705D7894();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = v9;
  v13[7] = v10;
  sub_270482728();
}

uint64_t sub_270541F74(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  sub_2705D78A4();
  *(v7 + 48) = sub_2705D7894();
  v9 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_270542010, v9, v8);
}

uint64_t sub_270542010()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v0 + 2);

  v3(v4, v2, v1);
  v5 = *(v0 + 1);

  return v5();
}

uint64_t sub_270542098()
{
  OUTLINED_FUNCTION_1_73();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v7 = OUTLINED_FUNCTION_0_70(v1);

  return sub_270541F74(v7, v8, v2, v3, v4, v5, v6);
}

uint64_t sub_270542150@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_2705D5CD4();
  sub_2705D4EC4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_42();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *a3 = v6;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = v12;
  a3[4] = v14;
  a3[5] = sub_270542328;
  a3[6] = v15;
}

uint64_t sub_27054220C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_2705D78D4();
  v10 = *a1;
  v16 = a1[1];
  v17 = v10;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_2705D78A4();

  v11 = sub_2705D7894();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  v14 = v16;
  *(v12 + 48) = v17;
  *(v12 + 64) = v14;
  sub_270482728();
}

uint64_t sub_270542330(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 16) = a8;
  *(v9 + 24) = a9;
  sub_2705D78A4();
  *(v9 + 64) = sub_2705D7894();
  v11 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_2705423D0, v11, v10);
}

uint64_t sub_2705423D0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v0 + 2);

  v5(v6, v4, v3, v2, v1);
  v7 = *(v0 + 1);

  return v7();
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2705424B8()
{
  OUTLINED_FUNCTION_1_73();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v10 = OUTLINED_FUNCTION_0_70(v4);

  return sub_270542330(v10, v11, v2, v3, v5, v6, v7, v8, v9);
}

uint64_t sub_2705425D0()
{
  sub_270542730();

  return sub_2705D5264();
}

uint64_t sub_270542618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4258);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2705426C0(a1, &v5 - v3);
  sub_270542730();
  sub_2705D5274();
  return sub_270542784(a1);
}

uint64_t sub_2705426C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_270542730()
{
  result = qword_2807D6C88;
  if (!qword_2807D6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6C88);
  }

  return result;
}

uint64_t sub_270542784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2705427FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2705D69B4();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_270542848()
{
  if (qword_2807CE890 != -1)
  {
    swift_once();
  }

  qword_2807D6C90 = qword_2807D51C8;
  *algn_2807D6C98 = unk_2807D51D0;
  qword_2807D6CA0 = qword_2807D51D8;
}

uint64_t static PageMetadataKey.defaultValue.getter@<X0>(void *a1@<X8>)
{
  if (qword_2807CE8B0 != -1)
  {
    swift_once();
  }

  v2 = *algn_2807D6C98;
  v3 = qword_2807D6CA0;
  *a1 = qword_2807D6C90;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_270542950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2703AECF0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.pageMetadata.getter()
{
  sub_2705429FC();

  return sub_2705D5264();
}

unint64_t sub_2705429FC()
{
  result = qword_2807D6CA8;
  if (!qword_2807D6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6CA8);
  }

  return result;
}

void (*EnvironmentValues.pageMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[6] = v1;
  v3[7] = sub_2705429FC();
  sub_2705D5264();
  return sub_270542B14;
}

void sub_270542B14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[3] = v4;
  v5 = v2[2];
  v2[4] = v3;
  v2[5] = v5;
  if (a2)
  {

    sub_2705D5274();
  }

  else
  {
    sub_2705D5274();
  }

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t View.pageMetadata(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D48C0);
  v5 = sub_2705D5044();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  swift_getKeyPath();
  v16 = v9;
  v17 = v10;
  v18 = v11;
  sub_2705D5AA4();

  v16 = v9;
  v17 = v10;
  v18 = v11;
  v12 = sub_270542D80();
  v15[1] = a2;
  v15[2] = v12;
  WitnessTable = swift_getWitnessTable();
  sub_2704EBE14(&v16, v5, WitnessTable);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_270542D80()
{
  result = qword_2807D48B8;
  if (!qword_2807D48B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D48C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D48B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PageMetadataKey(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x270542E80);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270542EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D48C0);
  sub_2705D5044();
  sub_2705D5044();
  sub_270542D80();
  swift_getWitnessTable();
  sub_270542F70();
  return swift_getWitnessTable();
}

unint64_t sub_270542F70()
{
  result = qword_2807D6CB0;
  if (!qword_2807D6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6CB0);
  }

  return result;
}

uint64_t sub_270542FD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 120 && a2 == 0xE100000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 121 && a2 == 0xE100000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

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

uint64_t sub_270543118(char a1)
{
  result = 0x726F6C6F63;
  switch(a1)
  {
    case 1:
      result = 0x737569646172;
      break;
    case 2:
      result = 120;
      break;
    case 3:
      result = 121;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27054318C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6D98);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_16_24(a1);
  v7 = sub_270545418();

  OUTLINED_FUNCTION_13_34();
  OUTLINED_FUNCTION_35_1();
  sub_2705D84C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3758);
  OUTLINED_FUNCTION_1_74(&qword_2807D37A0);
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();

  if (!v7)
  {
    sub_2703EC7A4();
    OUTLINED_FUNCTION_5_63();
    OUTLINED_FUNCTION_5_63();
    OUTLINED_FUNCTION_5_63();
  }

  return (*(v5 + 8))(v1, v3);
}

uint64_t sub_270543364@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6D78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_24(a1);
  sub_270545418();
  OUTLINED_FUNCTION_35_1();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3758);
  OUTLINED_FUNCTION_2_72(&qword_2807D3760);
  sub_2705D7FA4();
  sub_2703EC654();
  OUTLINED_FUNCTION_4_61();
  OUTLINED_FUNCTION_4_61();
  OUTLINED_FUNCTION_4_61();
  v7 = OUTLINED_FUNCTION_12_36();
  v8(v7);
  *a2 = v9;
  a2[1] = v9;
  a2[2] = v9;
  a2[3] = v9;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27054358C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_270543654(char a1)
{
  if (a1)
  {
    return 0x6874646977;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

void sub_27054367C()
{
  OUTLINED_FUNCTION_14_35();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6DA0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_16_24(v2);
  v7 = sub_27054546C();

  OUTLINED_FUNCTION_13_34();
  OUTLINED_FUNCTION_35_1();
  sub_2705D84C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3758);
  OUTLINED_FUNCTION_1_74(&qword_2807D37A0);
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();

  if (!v7)
  {
    sub_2703EC7A4();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
  }

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_15_35();
}

void sub_2705437FC(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6D88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_24(a1);
  sub_27054546C();
  OUTLINED_FUNCTION_35_1();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3758);
    OUTLINED_FUNCTION_2_72(&qword_2807D3760);
    OUTLINED_FUNCTION_20_20();
    sub_2705D7FA4();
    sub_2703EC654();
    OUTLINED_FUNCTION_8_49();
    sub_2705D7FA4();
    v6 = OUTLINED_FUNCTION_2_12();
    v7(v6);
    *a2 = v8;
    a2[1] = v8;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_2705439CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270542FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2705439F4(uint64_t a1)
{
  v2 = sub_270545418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270543A30(uint64_t a1)
{
  v2 = sub_270545418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270543AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27054358C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270543ACC(uint64_t a1)
{
  v2 = sub_27054546C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270543B08(uint64_t a1)
{
  v2 = sub_27054546C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270543B74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x776F64616873 && a2 == 0xE600000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726564726F62 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

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

uint64_t sub_270543CCC(char a1)
{
  result = 0x726F6C6F63;
  switch(a1)
  {
    case 1:
      result = 0x615272656E726F63;
      break;
    case 2:
      result = 0x776F64616873;
      break;
    case 3:
      result = 0x726564726F62;
      break;
    default:
      return result;
  }

  return result;
}

void sub_270543D5C()
{
  OUTLINED_FUNCTION_14_35();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6D48);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_31_0();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v7 = sub_27054500C();

  OUTLINED_FUNCTION_13_34();
  sub_2705D84C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3758);
  OUTLINED_FUNCTION_1_74(&qword_2807D37A0);
  OUTLINED_FUNCTION_9_44();
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();
  if (v7)
  {
    goto LABEL_2;
  }

  sub_2703EC7A4();
  OUTLINED_FUNCTION_9_44();
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();
  v8 = sub_2705451C0();

  OUTLINED_FUNCTION_9_44();
  OUTLINED_FUNCTION_6_1();
  sub_2705D8024();

  if (!v8)
  {
    sub_270545214();

    OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8024();
LABEL_2:
  }

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_15_35();
}

void sub_270543F88()
{
  OUTLINED_FUNCTION_14_35();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6D28);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_24(v2);
  sub_27054500C();
  OUTLINED_FUNCTION_35_1();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3758);
    OUTLINED_FUNCTION_2_72(&qword_2807D3760);
    OUTLINED_FUNCTION_20_20();
    sub_2705D7FA4();
    v6 = v22;
    sub_2703EC654();
    OUTLINED_FUNCTION_8_49();
    sub_2705D7FA4();
    v7 = v22;
    LOBYTE(v18) = 2;
    sub_270545060();
    OUTLINED_FUNCTION_8_49();
    sub_2705D7F44();
    v8 = v22;
    v16 = v24;
    v17 = v23;
    v15 = v25;
    v30 = 3;
    sub_2705450B4();
    OUTLINED_FUNCTION_8_49();
    sub_2705D7F44();
    v9 = OUTLINED_FUNCTION_2_12();
    v10(v9);
    v11 = *(&v31 + 1);
    v14 = v31;
    *&v18 = v6;
    *(&v18 + 1) = v7;
    *&v19 = v8;
    *(&v19 + 1) = v17;
    *&v20 = v16;
    *(&v20 + 1) = v15;
    v21 = v31;
    v12 = v19;
    *v4 = v18;
    v4[1] = v12;
    v13 = v21;
    v4[2] = v20;
    v4[3] = v13;
    sub_270545108(&v18, &v22);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v17;
    v26 = v16;
    v27 = v15;
    v28 = v14;
    v29 = v11;
    sub_270545140(&v22);
  }

  OUTLINED_FUNCTION_15_35();
}

uint64_t sub_27054425C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002706158A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2705442F8()
{
  OUTLINED_FUNCTION_14_35();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6CE0);
  OUTLINED_FUNCTION_0();
  v23 = v4;
  v24 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6CE8);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[6];
  v21 = v1[7];
  v22 = v17;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_270544B20();
  sub_2705D84C4();
  sub_270544B74();
  sub_2705D7FE4();
  v25 = v15;
  v26 = v16;
  v18 = *(v1 + 2);
  v27 = *(v1 + 1);
  v28 = v18;
  v29 = v22;
  v30 = v21;
  sub_270544C1C();
  v19 = v23;
  sub_2705D8084();
  (*(v24 + 8))(v8, v19);
  (*(v11 + 8))(v14, v9);
  OUTLINED_FUNCTION_15_35();
}

void sub_2705444FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6CB8);
  OUTLINED_FUNCTION_0();
  v31 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6CC0);
  OUTLINED_FUNCTION_0();
  v33 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270544B20();
  sub_2705D8484();
  if (v2)
  {
    goto LABEL_7;
  }

  v28 = v8;
  v29 = a1;
  v11 = sub_2705D7FB4();
  sub_27042C9F0(v11, 0);
  if (v12 == v13 >> 1)
  {
LABEL_6:
    v19 = sub_2705D7D84();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v21 = &unk_28805D3D0;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    swift_unknownObjectRelease();
    v22 = OUTLINED_FUNCTION_1_0();
    v23(v22);
    a1 = v29;
LABEL_7:
    v27 = a1;
    goto LABEL_8;
  }

  if (v12 < (v13 >> 1))
  {
    sub_27042C9E4(v12 + 1);
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    if (v15 == v17 >> 1)
    {
      sub_270544B74();
      v18 = v28;
      sub_2705D7ED4();
      sub_270544BC8();
      sub_2705D7FA4();
      v24 = (v31 + 8);
      swift_unknownObjectRelease();
      (*v24)(v18, v4);
      v25 = OUTLINED_FUNCTION_1_0();
      v26(v25);
      v32[0] = *(&v32[4] + 8);
      v32[1] = *(&v32[5] + 8);
      v32[2] = *(&v32[6] + 8);
      v32[3] = *(&v32[7] + 8);
      sub_2703E2A94(v32, v30);
      v27 = v29;
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_40_0();
      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_270544900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270543B74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270544928(uint64_t a1)
{
  v2 = sub_27054500C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270544964(uint64_t a1)
{
  v2 = sub_27054500C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2705449D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27054425C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270544A00(uint64_t a1)
{
  v2 = sub_270544B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270544A3C(uint64_t a1)
{
  v2 = sub_270544B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270544A78(uint64_t a1)
{
  v2 = sub_270544B74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270544AB4(uint64_t a1)
{
  v2 = sub_270544B74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_270544B20()
{
  result = qword_2807D6CC8;
  if (!qword_2807D6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6CC8);
  }

  return result;
}

unint64_t sub_270544B74()
{
  result = qword_2807D6CD0;
  if (!qword_2807D6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6CD0);
  }

  return result;
}

unint64_t sub_270544BC8()
{
  result = qword_2807D6CD8;
  if (!qword_2807D6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6CD8);
  }

  return result;
}

unint64_t sub_270544C1C()
{
  result = qword_2807D6CF0;
  if (!qword_2807D6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6CF0);
  }

  return result;
}

_BYTE *sub_270544C84(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x270544D20);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270544D5C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_270544DA0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_270544E00()
{
  result = qword_2807D6CF8;
  if (!qword_2807D6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6CF8);
  }

  return result;
}

unint64_t sub_270544E58()
{
  result = qword_2807D6D00;
  if (!qword_2807D6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D00);
  }

  return result;
}

unint64_t sub_270544EB0()
{
  result = qword_2807D6D08;
  if (!qword_2807D6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D08);
  }

  return result;
}

unint64_t sub_270544F08()
{
  result = qword_2807D6D10;
  if (!qword_2807D6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D10);
  }

  return result;
}

unint64_t sub_270544F60()
{
  result = qword_2807D6D18;
  if (!qword_2807D6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D18);
  }

  return result;
}

unint64_t sub_270544FB8()
{
  result = qword_2807D6D20;
  if (!qword_2807D6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D20);
  }

  return result;
}

unint64_t sub_27054500C()
{
  result = qword_2807D6D30;
  if (!qword_2807D6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D30);
  }

  return result;
}

unint64_t sub_270545060()
{
  result = qword_2807D6D38;
  if (!qword_2807D6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D38);
  }

  return result;
}

unint64_t sub_2705450B4()
{
  result = qword_2807D6D40;
  if (!qword_2807D6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D40);
  }

  return result;
}

uint64_t sub_270545170(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3758);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2705451C0()
{
  result = qword_2807D6D50;
  if (!qword_2807D6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D50);
  }

  return result;
}

unint64_t sub_270545214()
{
  result = qword_2807D6D58;
  if (!qword_2807D6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D58);
  }

  return result;
}

uint64_t sub_270545284(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2705452C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_270545314()
{
  result = qword_2807D6D60;
  if (!qword_2807D6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D60);
  }

  return result;
}

unint64_t sub_27054536C()
{
  result = qword_2807D6D68;
  if (!qword_2807D6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D68);
  }

  return result;
}

unint64_t sub_2705453C4()
{
  result = qword_2807D6D70;
  if (!qword_2807D6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D70);
  }

  return result;
}

unint64_t sub_270545418()
{
  result = qword_2807D6D80;
  if (!qword_2807D6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D80);
  }

  return result;
}

unint64_t sub_27054546C()
{
  result = qword_2807D6D90;
  if (!qword_2807D6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6D90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Underlay.BorderModifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27054558CLL);
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

_BYTE *sub_2705455C8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270545694);
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

unint64_t sub_2705456D0()
{
  result = qword_2807D6DA8;
  if (!qword_2807D6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6DA8);
  }

  return result;
}

unint64_t sub_270545728()
{
  result = qword_2807D6DB0;
  if (!qword_2807D6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6DB0);
  }

  return result;
}

unint64_t sub_270545780()
{
  result = qword_2807D6DB8;
  if (!qword_2807D6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6DB8);
  }

  return result;
}

unint64_t sub_2705457D8()
{
  result = qword_2807D6DC0;
  if (!qword_2807D6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6DC0);
  }

  return result;
}

unint64_t sub_270545830()
{
  result = qword_2807D6DC8;
  if (!qword_2807D6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6DC8);
  }

  return result;
}

unint64_t sub_270545888()
{
  result = qword_2807D6DD0;
  if (!qword_2807D6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6DD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_74(unint64_t *a1)
{

  return sub_270545170(a1);
}

uint64_t OUTLINED_FUNCTION_2_72(unint64_t *a1)
{

  return sub_270545170(a1);
}

uint64_t OUTLINED_FUNCTION_4_61()
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_5_63()
{

  return sub_2705D8084();
}

id sub_270545A30()
{
  v15 = *MEMORY[0x277D85DE8];
  memcpy(__dst, v0, sizeof(__dst));
  sub_2705D4044();
  swift_allocObject();
  sub_2705D4034();
  sub_27054A988();
  v3 = sub_2705D4024();
  if (v1)
  {
    goto LABEL_2;
  }

  v5 = v3;
  v6 = v4;
  v7 = objc_opt_self();
  v8 = sub_2705D44A4();
  v13[0] = 0;
  v9 = [v7 JSONObjectWithData:v8 options:1 error:v13];

  if (!v9)
  {
    v2 = v13[0];
    sub_2705D4364();

    swift_willThrow();
    sub_27046DCA4(v5, v6);
LABEL_2:

    return v2;
  }

  v10 = v13[0];
  sub_2705D7C84();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  if (swift_dynamicCast())
  {
    v2 = v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    v2 = sub_2705D7494();
  }

  sub_27046DCA4(v5, v6);

  return v2;
}

id sub_270545C30(void *a1, void *a2, char a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v15[4] = a1;
  v15[5] = a2;
  v16 = a3;
  sub_2705D4044();
  swift_allocObject();
  sub_2705D4034();
  sub_27047029C();
  v5 = sub_2705D4024();
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = v5;
  v8 = v6;
  v9 = objc_opt_self();
  v10 = sub_2705D44A4();
  v15[0] = 0;
  v11 = [v9 JSONObjectWithData:v10 options:1 error:v15];

  if (!v11)
  {
    v4 = v15[0];
    sub_2705D4364();

    swift_willThrow();
    sub_27046DCA4(v7, v8);
LABEL_2:

    return v4;
  }

  v12 = v15[0];
  sub_2705D7C84();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  if (swift_dynamicCast())
  {
    v4 = v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    v4 = sub_2705D7494();
  }

  sub_27046DCA4(v7, v8);

  return v4;
}

void sub_270545E28()
{
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA98);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D50F0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_21();
  v17[0] = 1;
  v8 = sub_2705D7F54();
  if (!v0)
  {
    if (v8 == 0xD000000000000012 && 0x8000000270615930 == v9)
    {
    }

    else
    {
      v11 = sub_2705D8134();

      if ((v11 & 1) == 0)
      {
        v12 = sub_2705D7D84();
        swift_allocError();
        v14 = v13;
        sub_2705D7EE4();
        sub_2705D7D44();
        (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
        swift_willThrow();
        goto LABEL_11;
      }
    }

    v17[0] = 2;
    sub_2704E1814();
    OUTLINED_FUNCTION_18();
    sub_2705D7ED4();
    sub_2704DEEF0();
    sub_27049FB74(v2, v18);
    memcpy(v17, v18, sizeof(v17));
    static MessageViewStyle.messageItemRequestStyle(model:)();
    v15 = OUTLINED_FUNCTION_28_16();
    v16(v15);
    (*(v6 + 8))(v1, v4);
    sub_2704A1138(v17);
  }

LABEL_11:
  OUTLINED_FUNCTION_11_3();
}

uint64_t static MessageViewStyle.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_21_25();
  v3 = *(type metadata accessor for MessageViewStyle(v2) + 24);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = (v0 + v3);
  if (v4 == *v6 && v5 == v6[1])
  {
    return 1;
  }

  return sub_2705D8134();
}

void static MessageViewStyle.halfImageStyle(model:pageMetricsModel:)()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_2705D45C4();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  memcpy(v16, v4, 0x380uLL);
  v8 = *v2;
  v9 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 16);
  memcpy(v6, v4, 0x380uLL);
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  swift_storeEnumTagMultiPayload();
  sub_2704385A4(v16, &v15);
  sub_2703AE9E8(v8, v9, v2);
  sub_2705D45B4();
  sub_2705D45A4();
  v10 = OUTLINED_FUNCTION_24_25();
  v11(v10);
  v12 = type metadata accessor for MessageViewStyle(0);
  v13 = &v6[*(v12 + 20)];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = -1;
  v14 = &v6[*(v12 + 24)];
  *v14 = v4;
  *(v14 + 1) = v0;
  sub_2703AE980(*v13, *(v13 + 1), v13[16]);
  *v13 = v8;
  *(v13 + 1) = v9;
  v13[16] = v2;
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2705463AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5363696D616E7964 && a2 == 0xEC00000074656568;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C655364697267 && a2 == 0xEC000000726F7463;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x67616D49666C6168 && a2 == 0xE900000000000065;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000270615950 == a2;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x654D656E696C6E69 && a2 == 0xED00006567617373;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7107189 && a2 == 0xE300000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x646574756F72 && a2 == 0xE600000000000000;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000012 && 0x80000002706158C0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_2705D8134();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_270546644(char a1)
{
  result = 0x5363696D616E7964;
  switch(a1)
  {
    case 1:
      result = 0x656C655364697267;
      break;
    case 2:
      result = 0x67616D49666C6168;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x654D656E696C6E69;
      break;
    case 5:
      result = 7107189;
      break;
    case 6:
      result = 0x646574756F72;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270546768(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E69 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2705467F0()
{
  OUTLINED_FUNCTION_10_1();
  v131 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6E80);
  OUTLINED_FUNCTION_0();
  v128 = v6;
  v129 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v127 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6E88);
  OUTLINED_FUNCTION_0();
  v125 = v10;
  v126 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_0();
  v124 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6E90);
  OUTLINED_FUNCTION_0();
  v122 = v14;
  v123 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_0();
  v121 = v16;
  v130 = type metadata accessor for JSStyleIntentModel();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27_5();
  v120 = v18 - v19;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v20);
  v119 = v105 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6E98);
  OUTLINED_FUNCTION_0();
  v117 = v23;
  v118 = v22;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_0();
  v116 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6EA0);
  OUTLINED_FUNCTION_0();
  v114 = v27;
  v115 = v26;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17_0();
  v113 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6EA8);
  OUTLINED_FUNCTION_0();
  v111 = v31;
  v112 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  v110 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6EB0);
  OUTLINED_FUNCTION_0();
  v108 = v35;
  v109 = v34;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  v107 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6EB8);
  OUTLINED_FUNCTION_0();
  v105[1] = v39;
  v106 = v38;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  v41 = OUTLINED_FUNCTION_32_13();
  v105[0] = type metadata accessor for DynamicPageModel(v41);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_23_21();
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_30_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6EC0);
  OUTLINED_FUNCTION_0();
  v133 = v44;
  v134 = v45;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  v48 = v105 - v47;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_27054A39C();
  v132 = v48;
  sub_2705D84C4();
  sub_27054A3F0();
  OUTLINED_FUNCTION_29_14();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v85 = OUTLINED_FUNCTION_36_13();
      memcpy(v85, v86, 0x318uLL);
      v135 = 1;
      sub_27054A790();
      OUTLINED_FUNCTION_6_60();
      sub_2705D7FE4();
      v87 = OUTLINED_FUNCTION_35_14();
      memcpy(v87, v88, 0x318uLL);
      sub_27054A694();
      v78 = v109;
      OUTLINED_FUNCTION_17_26();
      goto LABEL_8;
    case 2u:
      v65 = OUTLINED_FUNCTION_36_13();
      memcpy(v65, v66, 0x380uLL);
      v135 = 2;
      sub_27054A6E8();
      OUTLINED_FUNCTION_6_60();
      sub_2705D7FE4();
      v67 = OUTLINED_FUNCTION_35_14();
      memcpy(v67, v68, 0x380uLL);
      sub_27054A73C();
      v69 = v112;
      OUTLINED_FUNCTION_17_26();
      v70 = OUTLINED_FUNCTION_10();
      v71(v70, v69);
      v72 = OUTLINED_FUNCTION_11_19();
      v73(v72);
      sub_2704385DC(v136);
      break;
    case 3u:
      v74 = OUTLINED_FUNCTION_36_13();
      memcpy(v74, v75, 0x318uLL);
      v135 = 3;
      sub_27054A640();
      OUTLINED_FUNCTION_6_60();
      sub_2705D7FE4();
      v76 = OUTLINED_FUNCTION_35_14();
      memcpy(v76, v77, 0x318uLL);
      sub_27054A694();
      v78 = v115;
      OUTLINED_FUNCTION_17_26();
LABEL_8:
      v89 = OUTLINED_FUNCTION_10();
      v90(v89, v78);
      v91 = OUTLINED_FUNCTION_11_19();
      v92(v91);
      sub_2704360B8(v136);
      break;
    case 4u:
      v56 = OUTLINED_FUNCTION_36_13();
      memcpy(v56, v57, 0x291uLL);
      v135 = 4;
      sub_27054A598();
      OUTLINED_FUNCTION_6_60();
      sub_2705D7FE4();
      v58 = OUTLINED_FUNCTION_35_14();
      memcpy(v58, v59, 0x291uLL);
      sub_27054A5EC();
      v60 = v118;
      OUTLINED_FUNCTION_17_26();
      v61 = OUTLINED_FUNCTION_10();
      v62(v61, v60);
      v63 = OUTLINED_FUNCTION_11_19();
      v64(v63);
      sub_270452424(v136);
      break;
    case 5u:
      v79 = v119;
      sub_270548E78();
      LOBYTE(v136[0]) = 5;
      sub_27054A544();
      v81 = v132;
      v80 = v133;
      OUTLINED_FUNCTION_6_60();
      sub_2705D7FE4();
      OUTLINED_FUNCTION_2_73();
      sub_270549B88(v93, v94);
      v84 = v123;
      sub_2705D8084();
      goto LABEL_10;
    case 6u:
      v97 = *(v2 + 8);
      v131 = *v2;
      v98 = *(v2 + 16);
      v99 = *(v2 + 24);
      v100 = *(v2 + 32);
      LOBYTE(v136[0]) = 6;
      sub_27054A49C();
      v101 = v124;
      v103 = v132;
      v102 = v133;
      sub_2705D7FE4();
      v136[0] = v131;
      v130 = v97;
      v131 = v98;
      v136[1] = v97;
      v136[2] = v98;
      v136[3] = v99;
      v137 = v100;
      sub_27054A4F0();
      v104 = v126;
      sub_2705D8084();
      (*(v125 + 8))(v101, v104);
      (*(v134 + 8))(v103, v102);

      sub_2703AE980(v131, v99, v100);
      break;
    case 7u:
      v79 = v120;
      sub_270548E78();
      LOBYTE(v136[0]) = 7;
      sub_27054A448();
      v81 = v132;
      v80 = v133;
      OUTLINED_FUNCTION_6_60();
      sub_2705D7FE4();
      OUTLINED_FUNCTION_2_73();
      sub_270549B88(v82, v83);
      v84 = v129;
      OUTLINED_FUNCTION_17_26();
LABEL_10:
      v95 = OUTLINED_FUNCTION_10();
      v96(v95, v84);
      sub_270549C24(v79, type metadata accessor for JSStyleIntentModel);
      (*(v134 + 8))(v81, v80);
      break;
    default:
      sub_270548E78();
      LOBYTE(v136[0]) = 0;
      sub_27054A7E4();
      v50 = v132;
      v49 = v133;
      OUTLINED_FUNCTION_18();
      sub_2705D7FE4();
      OUTLINED_FUNCTION_16_25();
      sub_270549B88(v51, v52);
      v53 = v106;
      sub_2705D8084();
      v54 = OUTLINED_FUNCTION_10();
      v55(v54, v53);
      sub_270549C24(v1, type metadata accessor for DynamicPageModel);
      (*(v134 + 8))(v50, v49);
      break;
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_2705472FC()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v149 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6F40);
  OUTLINED_FUNCTION_0();
  v151 = v6;
  v152 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v150 = v8;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6F48);
  OUTLINED_FUNCTION_0();
  v133 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_0();
  v148 = v11;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6F50);
  OUTLINED_FUNCTION_0();
  v132 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_0();
  v147 = v14;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6F58);
  OUTLINED_FUNCTION_0();
  v131 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_0();
  v146 = v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6F60);
  OUTLINED_FUNCTION_0();
  v130 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_0();
  v156 = v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6F68);
  OUTLINED_FUNCTION_0();
  v129 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_0();
  v145 = v23;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6F70);
  OUTLINED_FUNCTION_0();
  v128 = v24;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_0();
  v144 = v26;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6F78);
  OUTLINED_FUNCTION_0();
  v127 = v27;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17_0();
  v143 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6F80);
  OUTLINED_FUNCTION_0();
  v154 = v31;
  v155 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_21();
  v153 = type metadata accessor for MessageViewStyle.ViewStyle(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_27_5();
  v135 = v34 - v35;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_50();
  v126 = v37;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_50();
  v134 = v39;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_50();
  v125 = v41;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_50();
  v124 = v43;
  OUTLINED_FUNCTION_24_6();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v118 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v118 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v118 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = v3[3];
  v158 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v54);
  sub_27054A39C();
  v157 = v1;
  sub_2705D8484();
  if (v0)
  {
    goto LABEL_10;
  }

  v122 = v47;
  v123 = v53;
  v121 = v50;
  v55 = v155;
  v56 = v157;
  v57 = sub_2705D7FB4();
  sub_27042C9F0(v57, 0);
  if (v59 == v60 >> 1)
  {
    v61 = v55;
    v62 = v153;
LABEL_9:
    v73 = sub_2705D7D84();
    swift_allocError();
    v75 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v75 = v62;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v73 - 8) + 104))(v75, *MEMORY[0x277D84160], v73);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_26_20();
    v76(v56, v61);
LABEL_10:
    v77 = v158;
    goto LABEL_11;
  }

  v120 = 0;
  if (v59 >= (v60 >> 1))
  {
    __break(1u);
    JUMPOUT(0x270548160);
  }

  v63 = v55;
  v119 = *(v58 + v59);
  sub_27042C9E4(v59 + 1);
  v65 = v64;
  v67 = v66;
  swift_unknownObjectRelease();
  v68 = v151;
  v69 = v152;
  if (v65 != v67 >> 1)
  {
    v61 = v63;
    v62 = v153;
    v56 = v157;
    goto LABEL_9;
  }

  v70 = v150;
  switch(v119)
  {
    case 1:
      LOBYTE(v159[0]) = 1;
      sub_27054A790();
      OUTLINED_FUNCTION_8_50();
      sub_27054A8E0();
      OUTLINED_FUNCTION_6_60();
      sub_2705D7FA4();
      OUTLINED_FUNCTION_7_50();
      swift_unknownObjectRelease();
      v102 = OUTLINED_FUNCTION_11_19();
      v103(v102);
      v104 = OUTLINED_FUNCTION_5_64();
      v105(v104);
      memcpy(v121, v159, 0x318uLL);
      OUTLINED_FUNCTION_27_16();
      goto LABEL_19;
    case 2:
      LOBYTE(v159[0]) = 2;
      sub_27054A6E8();
      OUTLINED_FUNCTION_8_50();
      sub_27054A934();
      OUTLINED_FUNCTION_6_60();
      sub_2705D7FA4();
      OUTLINED_FUNCTION_7_50();
      swift_unknownObjectRelease();
      v88 = OUTLINED_FUNCTION_11_19();
      v89(v88);
      v90 = OUTLINED_FUNCTION_5_64();
      v91(v90);
      memcpy(v122, v159, 0x380uLL);
      OUTLINED_FUNCTION_27_16();
      goto LABEL_19;
    case 3:
      LOBYTE(v159[0]) = 3;
      sub_27054A640();
      OUTLINED_FUNCTION_8_50();
      sub_27054A8E0();
      OUTLINED_FUNCTION_18();
      sub_2705D7FA4();
      OUTLINED_FUNCTION_7_50();
      swift_unknownObjectRelease();
      v92 = OUTLINED_FUNCTION_29_14();
      v93(v92);
      v94 = OUTLINED_FUNCTION_5_64();
      v95(v94);
      memcpy(v124, v159, 0x318uLL);
      OUTLINED_FUNCTION_27_16();
      goto LABEL_19;
    case 4:
      LOBYTE(v159[0]) = 4;
      sub_27054A598();
      OUTLINED_FUNCTION_8_50();
      sub_27054A88C();
      v78 = v140;
      OUTLINED_FUNCTION_18();
      sub_2705D7FA4();
      swift_unknownObjectRelease();
      v85 = OUTLINED_FUNCTION_10();
      v86(v85, v78);
      OUTLINED_FUNCTION_26_20();
      v87(v157, v63);
      memcpy(v125, v159, 0x291uLL);
      OUTLINED_FUNCTION_27_16();
      goto LABEL_19;
    case 5:
      LOBYTE(v159[0]) = 5;
      sub_27054A544();
      OUTLINED_FUNCTION_8_50();
      type metadata accessor for JSStyleIntentModel();
      OUTLINED_FUNCTION_2_73();
      sub_270549B88(v79, v80);
      v81 = v141;
      sub_2705D7FA4();
      OUTLINED_FUNCTION_7_50();
      swift_unknownObjectRelease();
      v106 = OUTLINED_FUNCTION_10();
      v107(v106, v81);
      v108 = OUTLINED_FUNCTION_5_64();
      v109(v108);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_71();
      break;
    case 6:
      LOBYTE(v159[0]) = 6;
      sub_27054A49C();
      OUTLINED_FUNCTION_8_50();
      sub_27054A838();
      v84 = v142;
      OUTLINED_FUNCTION_18();
      sub_2705D7FA4();
      OUTLINED_FUNCTION_7_50();
      swift_unknownObjectRelease();
      v110 = OUTLINED_FUNCTION_10();
      v111(v110, v84);
      v112 = OUTLINED_FUNCTION_5_64();
      v113(v112);
      v114 = *(&v159[0] + 1);
      v115 = v159[2];
      v116 = v126;
      *v126 = *&v159[0];
      v116[1] = v114;
      *(v116 + 1) = v159[1];
      *(v116 + 32) = v115;
      OUTLINED_FUNCTION_27_16();
LABEL_19:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_71();
      break;
    case 7:
      LOBYTE(v159[0]) = 7;
      sub_27054A448();
      OUTLINED_FUNCTION_8_50();
      type metadata accessor for JSStyleIntentModel();
      OUTLINED_FUNCTION_2_73();
      sub_270549B88(v82, v83);
      OUTLINED_FUNCTION_3_66();
      sub_2705D7FA4();
      OUTLINED_FUNCTION_7_50();
      swift_unknownObjectRelease();
      (*(v68 + 8))(v70, v69);
      v96 = OUTLINED_FUNCTION_5_64();
      v97(v96);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_71();
      break;
    default:
      LOBYTE(v159[0]) = 0;
      sub_27054A7E4();
      OUTLINED_FUNCTION_8_50();
      type metadata accessor for DynamicPageModel(0);
      OUTLINED_FUNCTION_16_25();
      sub_270549B88(v71, v72);
      sub_2705D7FA4();
      OUTLINED_FUNCTION_7_50();
      swift_unknownObjectRelease();
      v98 = OUTLINED_FUNCTION_11_19();
      v99(v98);
      v100 = OUTLINED_FUNCTION_5_64();
      v101(v100);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_71();
      break;
  }

  sub_270548E78();
  v117 = v158;
  OUTLINED_FUNCTION_0_71();
  sub_270548E78();
  v77 = v117;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v77);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270548188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2705463AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2705481B0(uint64_t a1)
{
  v2 = sub_27054A39C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2705481EC(uint64_t a1)
{
  v2 = sub_27054A39C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270548228(uint64_t a1)
{
  v2 = sub_27054A7E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270548264(uint64_t a1)
{
  v2 = sub_27054A7E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2705482A0(uint64_t a1)
{
  v2 = sub_27054A790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2705482DC(uint64_t a1)
{
  v2 = sub_27054A790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270548318(uint64_t a1)
{
  v2 = sub_27054A6E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270548354(uint64_t a1)
{
  v2 = sub_27054A6E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270548390(uint64_t a1)
{
  v2 = sub_27054A598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2705483CC(uint64_t a1)
{
  v2 = sub_27054A598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27054840C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270546768(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270548438(uint64_t a1)
{
  v2 = sub_27054A448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270548474(uint64_t a1)
{
  v2 = sub_27054A448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2705484B0(uint64_t a1)
{
  v2 = sub_27054A640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2705484EC(uint64_t a1)
{
  v2 = sub_27054A640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270548528(uint64_t a1)
{
  v2 = sub_27054A49C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270548564(uint64_t a1)
{
  v2 = sub_27054A49C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2705485A0(uint64_t a1)
{
  v2 = sub_27054A544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2705485DC(uint64_t a1)
{
  v2 = sub_27054A544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageViewStyle.id.getter()
{
  OUTLINED_FUNCTION_41_9();
  v1 = *v0;

  return v1;
}

void sub_27054868C()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_2705D45C4();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  memcpy(v17, v5, 0x318uLL);
  v9 = *v3;
  v10 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 16);
  memcpy(v7, v5, 0x318uLL);
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  swift_storeEnumTagMultiPayload();
  sub_270436178(v17, &v16);
  sub_2703AE9E8(v9, v10, v3);
  sub_2705D45B4();
  sub_2705D45A4();
  v11 = OUTLINED_FUNCTION_24_25();
  v12(v11);
  v13 = type metadata accessor for MessageViewStyle(0);
  v14 = &v7[*(v13 + 20)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -1;
  v15 = &v7[*(v13 + 24)];
  *v15 = v1;
  *(v15 + 1) = v5;
  sub_2703AE980(*v14, *(v14 + 1), v14[16]);
  *v14 = v9;
  *(v14 + 1) = v10;
  v14[16] = v3;
  OUTLINED_FUNCTION_25_1();
}

uint64_t static MessageViewStyle.viewStyle(for:bag:pageMetricsModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = *a4;
  *(v4 + 48) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_27054881C, 0, 0);
}

uint64_t sub_27054881C()
{
  v1 = *(v0 + 16);
  sub_2705D4394();
  sub_2703AE980(0, 0, 255);
  static MessageViewStyle.url(model:pageMetricsModel:)();

  sub_2703AE980(0, 0, 255);
  v2 = type metadata accessor for MessageViewStyle(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

void static MessageViewStyle.url(model:pageMetricsModel:)()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v70 = v4;
  v69 = sub_2705D45C4();
  OUTLINED_FUNCTION_0();
  v68 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_21(v8 - v7);
  v9 = type metadata accessor for JSServiceRequestIntent();
  v10 = OUTLINED_FUNCTION_23_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_21(v12 - v11);
  v13 = type metadata accessor for JSStyleIntentModel();
  v14 = OUTLINED_FUNCTION_23_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = OUTLINED_FUNCTION_20_21(v16 - v15);
  v65 = type metadata accessor for MessageViewStyle.ViewStyle(v17);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_23_21();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  v20 = OUTLINED_FUNCTION_23_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27_5();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v27 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_0();
  v33 = v32 - v31;
  v34 = *(v3 + 24);
  v62 = *(v3 + 16);
  v61 = v34;
  v35 = *(v3 + 32);
  v36 = *(v1 + 8);
  v64 = *v1;
  v63 = v36;
  v37 = *(v1 + 16);
  OUTLINED_FUNCTION_29_14();
  sub_2705D4454();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_2703EE7B8(v26);
LABEL_3:
    if (v35 == 255)
    {
      v39 = 0;
    }

    else
    {
      *&v72[0] = v62;
      *(&v72[0] + 1) = v61;
      LOBYTE(v72[1]) = v35;
      sub_27046CD54();
      v39 = sub_27046C7B8(v38);
    }

    OUTLINED_FUNCTION_29_14();
    sub_2705D4454();
    sub_27046E238(0, 0, v39, v23, v66);
    OUTLINED_FUNCTION_14_36();
    sub_270548E78();
    sub_270548E78();
    swift_storeEnumTagMultiPayload();
    v44 = v64;
    v45 = v63;
    sub_2703AE9E8(v64, v63, v37);
    v46 = v67;
    sub_2705D45B4();
    v47 = sub_2705D45A4();
    v49 = v48;
    (*(v68 + 8))(v46, v69);
    v50 = type metadata accessor for MessageViewStyle(0);
    v51 = v70;
    v52 = v70 + *(v50 + 20);
    *v52 = 0;
    *(v52 + 8) = 0;
    *(v52 + 16) = -1;
    OUTLINED_FUNCTION_0_71();
    sub_270548E78();
    v53 = (v51 + *(v50 + 24));
    *v53 = v47;
    v53[1] = v49;
    sub_2703AE980(*v52, *(v52 + 8), *(v52 + 16));
    *v52 = v44;
    *(v52 + 8) = v45;
    *(v52 + 16) = v37;
    goto LABEL_14;
  }

  v60 = v37;
  (*(v29 + 32))(v33, v26, v27);
  v40 = sub_27053DFFC(0xD000000000000014, 0x8000000270612DC0);
  if (v41)
  {
    v42 = v41;
    v43 = v40;
  }

  else
  {
    v54 = sub_27053E390(0xD000000000000014, 0x8000000270612DC0);
    if (!v55)
    {
      (*(v29 + 8))(v33, v27);
      LOBYTE(v37) = v60;
      goto LABEL_3;
    }

    v43 = v54;
    v42 = v55;
  }

  if (qword_2807CE890 != -1)
  {
    swift_once();
  }

  v57 = qword_2807D51C8;
  v56 = unk_2807D51D0;
  v58 = qword_2807D51D8;

  sub_27049F730(0, 1);
  *&v72[0] = v43;
  *(&v72[0] + 1) = v42;
  *&v72[1] = v57;
  *(&v72[1] + 1) = v56;
  *&v72[3] = 0;
  v72[2] = v58;
  BYTE8(v72[3]) = 2;
  v72[4] = xmmword_2705E1BF0;
  memset(&v72[5], 0, 32);
  memcpy(v71, v72, sizeof(v71));
  static MessageViewStyle.messageItemRequestStyle(model:)();
  (*(v29 + 8))(v33, v27);
  sub_2704A1138(v72);
LABEL_14:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_270548E78()
{
  v2 = OUTLINED_FUNCTION_21_25();
  v3(v2);
  OUTLINED_FUNCTION_14();
  (*(v4 + 32))(v0, v1);
  return v0;
}

void static MessageViewStyle.messageItemRequestStyle(model:)()
{
  OUTLINED_FUNCTION_26_1();
  v4 = v3;
  v6 = v5;
  v23 = sub_2705D45C4();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_23_21();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_23_0(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_13();
  v12 = type metadata accessor for JSServiceRequestIntent();
  v13 = OUTLINED_FUNCTION_23_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_30_15();
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  memcpy(v24, v4, sizeof(v24));
  v15 = sub_270545A30();
  if (v15)
  {
    v16 = sub_27046C7B8(v15);
  }

  else
  {
    v16 = 0;
  }

  sub_2705D4454();
  sub_27046E238(0xD000000000000012, 0x80000002706158C0, v16, v1, v2);
  OUTLINED_FUNCTION_14_36();
  sub_270548E78();
  swift_storeEnumTagMultiPayload();
  sub_2705D45B4();
  v17 = sub_2705D45A4();
  v19 = v18;
  (*(v8 + 8))(v0, v23);
  v20 = type metadata accessor for MessageViewStyle(0);
  v21 = v6 + *(v20 + 20);
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = -1;
  OUTLINED_FUNCTION_0_71();
  sub_270548E78();
  v22 = (v6 + *(v20 + 24));
  *v22 = v17;
  v22[1] = v19;
  sub_2703AE980(*v21, *(v21 + 8), *(v21 + 16));
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = -1;
  OUTLINED_FUNCTION_25_1();
}

BOOL sub_27054914C()
{
  v0 = sub_2705D7EB4();

  return v0 != 0;
}

BOOL sub_2705491A0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_27054914C();
  *a1 = result;
  return result;
}

uint64_t sub_2705491D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704A21EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2705491FC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_27054914C();
  *a1 = result;
  return result;
}

uint64_t sub_270549228(uint64_t a1)
{
  v2 = sub_2704E1814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270549264(uint64_t a1)
{
  v2 = sub_2704E1814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageViewStyle.hash(into:)()
{
  OUTLINED_FUNCTION_41_9();

  return sub_2705D7634();
}

uint64_t sub_2705492DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 25705 && a2 == 0xE200000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_2705493E4(char a1)
{
  if (!a1)
  {
    return 0x656C797473;
  }

  if (a1 == 1)
  {
    return 0x7274654D65676170;
  }

  return 25705;
}

uint64_t sub_27054943C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2705492DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270549464(uint64_t a1)
{
  v2 = sub_2705496D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2705494A0(uint64_t a1)
{
  v2 = sub_2705496D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageViewStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6DD8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705496D0();
  sub_2705D84C4();
  LOBYTE(v18) = 0;
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  OUTLINED_FUNCTION_15_36();
  sub_270549B88(v11, v12);
  OUTLINED_FUNCTION_3_66();
  sub_2705D8084();
  if (!v2)
  {
    v13 = v3 + *(type metadata accessor for MessageViewStyle(0) + 20);
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v18 = *v13;
    v19 = v14;
    v20 = v15;
    v17[7] = 1;
    sub_2703AE9E8(v18, v14, v15);
    sub_270549724();
    OUTLINED_FUNCTION_3_66();
    sub_2705D8024();
    sub_2703AE980(v18, v19, v20);
    LOBYTE(v18) = 2;
    OUTLINED_FUNCTION_3_66();
    sub_2705D8034();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2705496D0()
{
  result = qword_2807D6DE0;
  if (!qword_2807D6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6DE0);
  }

  return result;
}

unint64_t sub_270549724()
{
  result = qword_2807D6DE8;
  if (!qword_2807D6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6DE8);
  }

  return result;
}

uint64_t MessageViewStyle.hashValue.getter()
{
  sub_2705D83B4();
  OUTLINED_FUNCTION_41_9();
  sub_2705D7634();
  return sub_2705D8414();
}

void MessageViewStyle.init(from:)()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6DF0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_30_15();
  v5 = type metadata accessor for MessageViewStyle(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  v11 = v8 - v7 + *(v10 + 20);
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = -1;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2705496D0();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2703AE980(*v11, *(v11 + 8), *(v11 + 16));
  }

  else
  {
    v12 = v2;
    LOBYTE(v21) = 0;
    OUTLINED_FUNCTION_15_36();
    sub_270549B88(v13, v14);
    OUTLINED_FUNCTION_34_16();
    sub_2705D7FA4();
    OUTLINED_FUNCTION_0_71();
    sub_270548E78();
    sub_270549BD0();
    OUTLINED_FUNCTION_34_16();
    sub_2705D7F44();
    sub_2703AE980(*v11, *(v11 + 8), *(v11 + 16));
    *v11 = v21;
    *(v11 + 8) = v22;
    *(v11 + 16) = v23;
    v15 = sub_2705D7F54();
    v17 = v16;
    v18 = OUTLINED_FUNCTION_22_18();
    v19(v18);
    v20 = (v9 + *(v5 + 24));
    *v20 = v15;
    v20[1] = v17;
    sub_27054A3F0();
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_270549C24(v9, type metadata accessor for MessageViewStyle);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270549B3C()
{
  sub_2705D83B4();
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t sub_270549B88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_270549BD0()
{
  result = qword_2807D6DF8;
  if (!qword_2807D6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6DF8);
  }

  return result;
}

uint64_t sub_270549C24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_270549CC4@<X0>(uint64_t *a1@<X8>)
{
  result = MessageViewStyle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270549D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MessageViewStyle.ViewStyle(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_270549DC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MessageViewStyle.ViewStyle(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_270549E74()
{
  type metadata accessor for MessageViewStyle.ViewStyle(319);
  if (v0 <= 0x3F)
  {
    sub_270549F00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_270549F00()
{
  if (!qword_2807D6E18)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D6E18);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MessageViewStyle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27054A01CLL);
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

ValueMetadata *sub_27054A054()
{
  sub_27054A248(319, &qword_2807D6E30, type metadata accessor for DynamicPageModel);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_27054A1A8();
    if (v3 <= 0x3F)
    {
      v4 = sub_27054A1D0();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        v1 = sub_27054A1F8();
        if (v6 <= 0x3F)
        {
          sub_27054A248(319, &qword_2807D6E50, type metadata accessor for JSStyleIntentModel);
          v1 = v7;
          if (v8 <= 0x3F)
          {
            v1 = sub_27054A220();
            if (v9 <= 0x3F)
            {
              sub_27054A248(319, &qword_2807D6E60, type metadata accessor for JSStyleIntentModel);
              v1 = v10;
              if (v11 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

ValueMetadata *sub_27054A1A8()
{
  result = qword_2807D6E38;
  if (!qword_2807D6E38)
  {
    result = &type metadata for PlatterModel;
    atomic_store(&type metadata for PlatterModel, &qword_2807D6E38);
  }

  return result;
}

ValueMetadata *sub_27054A1D0()
{
  result = qword_2807D6E40;
  if (!qword_2807D6E40)
  {
    result = &type metadata for HalfImageModel;
    atomic_store(&type metadata for HalfImageModel, &qword_2807D6E40);
  }

  return result;
}

ValueMetadata *sub_27054A1F8()
{
  result = qword_2807D6E48;
  if (!qword_2807D6E48)
  {
    result = &type metadata for InlineMessageModel;
    atomic_store(&type metadata for InlineMessageModel, &qword_2807D6E48);
  }

  return result;
}

ValueMetadata *sub_27054A220()
{
  result = qword_2807D6E58;
  if (!qword_2807D6E58)
  {
    result = &type metadata for RoutedStyleIntentModel;
    atomic_store(&type metadata for RoutedStyleIntentModel, &qword_2807D6E58);
  }

  return result;
}

void sub_27054A248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

unint64_t sub_27054A298()
{
  result = qword_2807D6E68;
  if (!qword_2807D6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6E68);
  }

  return result;
}

unint64_t sub_27054A2F0()
{
  result = qword_2807D6E70;
  if (!qword_2807D6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6E70);
  }

  return result;
}

unint64_t sub_27054A348()
{
  result = qword_2807D6E78;
  if (!qword_2807D6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6E78);
  }

  return result;
}

unint64_t sub_27054A39C()
{
  result = qword_2807D6EC8;
  if (!qword_2807D6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6EC8);
  }

  return result;
}

uint64_t sub_27054A3F0()
{
  v2 = OUTLINED_FUNCTION_21_25();
  v3(v2);
  OUTLINED_FUNCTION_14();
  (*(v4 + 16))(v0, v1);
  return v0;
}

unint64_t sub_27054A448()
{
  result = qword_2807D6ED0;
  if (!qword_2807D6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6ED0);
  }

  return result;
}

unint64_t sub_27054A49C()
{
  result = qword_2807D6EE0;
  if (!qword_2807D6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6EE0);
  }

  return result;
}

unint64_t sub_27054A4F0()
{
  result = qword_2807D6EE8;
  if (!qword_2807D6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6EE8);
  }

  return result;
}

unint64_t sub_27054A544()
{
  result = qword_2807D6EF0;
  if (!qword_2807D6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6EF0);
  }

  return result;
}

unint64_t sub_27054A598()
{
  result = qword_2807D6EF8;
  if (!qword_2807D6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6EF8);
  }

  return result;
}

unint64_t sub_27054A5EC()
{
  result = qword_2807D6F00;
  if (!qword_2807D6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6F00);
  }

  return result;
}

unint64_t sub_27054A640()
{
  result = qword_2807D6F08;
  if (!qword_2807D6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6F08);
  }

  return result;
}

unint64_t sub_27054A694()
{
  result = qword_2807D6F10;
  if (!qword_2807D6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6F10);
  }

  return result;
}

unint64_t sub_27054A6E8()
{
  result = qword_2807D6F18;
  if (!qword_2807D6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6F18);
  }

  return result;
}

unint64_t sub_27054A73C()
{
  result = qword_2807D6F20;
  if (!qword_2807D6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6F20);
  }

  return result;
}

unint64_t sub_27054A790()
{
  result = qword_2807D6F28;
  if (!qword_2807D6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6F28);
  }

  return result;
}

unint64_t sub_27054A7E4()
{
  result = qword_2807D6F30;
  if (!qword_2807D6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6F30);
  }

  return result;
}

unint64_t sub_27054A838()
{
  result = qword_2807D6F90;
  if (!qword_2807D6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6F90);
  }

  return result;
}

unint64_t sub_27054A88C()
{
  result = qword_2807D6F98;
  if (!qword_2807D6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6F98);
  }

  return result;
}

unint64_t sub_27054A8E0()
{
  result = qword_2807D6FA0;
  if (!qword_2807D6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FA0);
  }

  return result;
}

unint64_t sub_27054A934()
{
  result = qword_2807D6FA8;
  if (!qword_2807D6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FA8);
  }

  return result;
}

unint64_t sub_27054A988()
{
  result = qword_2807D6FB8;
  if (!qword_2807D6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageViewStyle.ViewStyle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x27054AAB8);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}