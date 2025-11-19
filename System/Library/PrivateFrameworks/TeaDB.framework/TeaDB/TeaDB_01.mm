uint64_t sub_2179AF774(uint64_t a1)
{
  sub_2179AAF2C(0, &qword_280B1D6D0, sub_2179ABB38, MEMORY[0x277D83638]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2179AF800()
{
  OUTLINED_FUNCTION_14_1();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  OUTLINED_FUNCTION_0_7();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_0_7();
  v8 = *(v7 + 88);
  OUTLINED_FUNCTION_5_4();
  type metadata accessor for Statement();
  OUTLINED_FUNCTION_12_3();
  *&v17 = v2;
  *(&v17 + 1) = v3;
  v18 = v4;
  sub_2179AEC5C();
  OUTLINED_FUNCTION_6_4();
  sub_2179D1704(v9, v10, v11, v12, v13, v14, v6, v8);
  sub_2179AEC68(v2, v3, v4);
  sub_2179ABC9C();
  OUTLINED_FUNCTION_11_2();
  sub_2179A70AC(v0, &v17);
  v15 = sub_2179AC76C(&v19, v8, v3, &v17);
  sub_2179AC7D4(v15);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t FastColumn.wrappedValue.getter()
{
  OUTLINED_FUNCTION_1_20();
  v1 = *(v0 + 32);
}

uint64_t sub_2179AF97C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_2179A7E4C();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6 >= *(v4 + 24) >> 1)
  {
    sub_2179A7E4C();
    v5 = v18;
  }

  *(v5 + 16) = v6 + 1;
  v7 = v5 + 16 * v6;
  *(v7 + 32) = 0x594220524544524FLL;
  *(v7 + 40) = 0xE800000000000000;
  v8 = *(v5 + 24) >> 1;
  v9 = v6 + 2;

  if (v3)
  {
    if (v8 < v9)
    {
      OUTLINED_FUNCTION_2_12();
      v5 = v19;
    }

    OUTLINED_FUNCTION_0_14();
    if (!(v11 ^ v12 | v10))
    {
      OUTLINED_FUNCTION_1_15();
      v5 = v20;
    }

    v13 = 0xE300000000000000;
    v14 = 4412225;
  }

  else
  {
    if (v8 < v9)
    {
      OUTLINED_FUNCTION_2_12();
      v5 = v21;
    }

    OUTLINED_FUNCTION_0_14();
    if (!(v11 ^ v12 | v10))
    {
      OUTLINED_FUNCTION_1_15();
      v5 = v22;
    }

    v13 = 0xE400000000000000;
    v14 = 1129530692;
  }

  *(v5 + 16) = v1;
  v15 = v5 + 16 * v9;
  *(v15 + 32) = v14;
  *(v15 + 40) = v13;
  sub_2179A5088();
  sub_2179A4B34();
  v16 = sub_2179E95F0();

  return v16;
}

uint64_t FastEntity.init<A, B, C, D, E, F>(_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_4_13();
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECE60);
  v1[2].n128_u64[0] = sub_2179AE120(v2);
  v1[2].n128_u64[1] = v3;
  v1[5].n128_u64[1] = sub_2179AE120(&v1[6].n128_u64[1]);
  v1[6].n128_u64[0] = v4;
  v1[9].n128_u64[0] = sub_2179AE120(v1[10].n128_u64);
  v1[9].n128_u64[1] = v5;
  v1[12].n128_u64[1] = sub_2179AE120(&v1[13].n128_u64[1]);
  v1[13].n128_u64[0] = v6;
  v1[16].n128_u64[0] = sub_2179AE120(v1[17].n128_u64);
  v1[16].n128_u64[1] = v7;
  v1[19].n128_u64[1] = sub_2179AE120(&v1[20].n128_u64[1]);
  v1[20].n128_u64[0] = v8;

  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_2179AFC08(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_2179AFCA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2179A9878(a1, a2);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v61 = v2;
  if (v3)
  {
    v5 = v2 + 32;
    do
    {
      sub_2179A9940(v5, &v65);
      v6 = v68;
      v7 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      if (sub_2179B06A4(v6, v7))
      {
        v8 = v68;
        v9 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v68);
        (*(v9 + 16))(&v63, v8, v9);
        v10 = v63;
        v11 = v64;
        v12 = OUTLINED_FUNCTION_0_29();
        sub_2179A87AC(v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = *(v4 + 16);
          OUTLINED_FUNCTION_4_20();
          sub_2179B1204();
          v4 = v20;
        }

        v15 = *(v4 + 16);
        v14 = *(v4 + 24);
        if (v15 >= v14 >> 1)
        {
          OUTLINED_FUNCTION_10(v14);
          sub_2179B1204();
          v4 = v21;
        }

        *(v4 + 16) = v15 + 1;
        v16 = v4 + 24 * v15;
        *(v16 + 32) = v10;
        *(v16 + 48) = v11;
      }

      else
      {
        v17 = OUTLINED_FUNCTION_0_29();
        sub_2179A87AC(v17, v18);
      }

      v5 += 56;
      --v3;
    }

    while (v3);
  }

  v65 = sub_2179B12EC(a1, a2, 1);
  sub_2179A5088();
  sub_2179A4B34();
  v65 = sub_2179E95F0();
  v66 = v22;

  MEMORY[0x21CEA9600](59, 0xE100000000000000);

  v23 = v65;
  v24 = v66;
  v25 = sub_2179A70AC(v62 + 16, &v63);
  OUTLINED_FUNCTION_6_16(v25, qword_280B1DD58, &type metadata for Versions.Entity, &off_282996810);
  swift_initStackObject();
  sub_2179A935C(v4, v23, v24, &v63);
  v26 = v61;
  v27 = *(v61 + 16);
  if (v27)
  {
    v70 = MEMORY[0x277D84F90];
    sub_2179A9394(0, v27, 0);
    v28 = 0;
    v29 = v70;
    v30 = v61 + 32;
    while (v28 < *(v26 + 16))
    {
      sub_2179A9940(v30, &v65);
      v31 = v68;
      v32 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v33 = (*(v32 + 88))(v62 + 16, v31, v32);
      if (v33)
      {
        v35 = v33;
        v36 = v34;
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        *(v37 + 24) = v36;
        v38 = sub_2179E769C;
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }

      v39 = OUTLINED_FUNCTION_0_29();
      sub_2179A87AC(v39, v40);
      v70 = v29;
      v42 = *(v29 + 16);
      v41 = *(v29 + 24);
      if (v42 >= v41 >> 1)
      {
        v44 = OUTLINED_FUNCTION_10(v41);
        sub_2179A9394(v44, v42 + 1, 1);
        v29 = v70;
      }

      ++v28;
      *(v29 + 16) = v42 + 1;
      v43 = v29 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v37;
      v30 += 56;
      v26 = v61;
      if (v27 == v28)
      {

        goto LABEL_22;
      }
    }

LABEL_36:
    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
LABEL_22:
    v45 = 0;
    v46 = *(v29 + 16);
    v47 = MEMORY[0x277D84F90];
LABEL_23:
    v48 = (v29 + 32 + 16 * v45);
    while (v46 != v45)
    {
      if (v45 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      ++v45;
      v49 = v48 + 2;
      v50 = *v48;
      v48 += 2;
      if (v50)
      {
        v51 = *(v49 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = *(v47 + 16);
          OUTLINED_FUNCTION_4_20();
          sub_2179A94A4();
          v47 = v56;
        }

        v53 = *(v47 + 16);
        v52 = *(v47 + 24);
        if (v53 >= v52 >> 1)
        {
          OUTLINED_FUNCTION_10(v52);
          sub_2179A94A4();
          v47 = v57;
        }

        *(v47 + 16) = v53 + 1;
        v54 = v47 + 16 * v53;
        *(v54 + 32) = v50;
        *(v54 + 40) = v51;
        goto LABEL_23;
      }
    }

    sub_2179A9E30();

    sub_2179A5760();

    if (!v58)
    {
    }
  }
}

uint64_t sub_2179B013C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2179B0188(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x2179B038CLL);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_2179B03D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_10_6();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_10_6();
  v7 = *(v6 + 80);
  v8 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.userVersion()()
{
  if (*(v0 + 16))
  {
    v3 = *(v0 + 16);

    sub_2179A7198(0xD000000000000014, 0x80000002179EFD90);
    if (v1)
    {
    }

    else
    {
      sub_2179A54D4(1, 0, 29);
      v7 = 1;
      sub_2179AA0CC(0, &v7, 0, v8);
      v2 = v8[0];
      if (v9 == 1)
      {
        sub_2179A6F48();
      }

      else
      {
        sub_2179AC53C(v8[0], v8[1], v9);
        sub_2179A6F48();

        return -1;
      }
    }
  }

  else
  {
    sub_2179ABC30();
    v4 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_7_4(v4, v5);
  }

  return v2;
}

uint64_t == infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v2);
  *v0 = v1;
}

{
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v0;
  OUTLINED_FUNCTION_4_5(v3 | 0x8000000000000000);
}

uint64_t sub_2179B0668()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_3_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

BOOL sub_2179B06A4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v6);
  if (v8 == 255)
  {
    (*(a2 + 32))(&v6, a1, a2);
    v4 = v8 == 255;
    if (v8 != 255)
    {
      sub_2179AA22C(v6, v7, v8);
    }
  }

  else
  {
    sub_2179AA22C(v6, v7, v8);
    return 0;
  }

  return v4;
}

void sub_2179B088C()
{
  OUTLINED_FUNCTION_21_1();
  v32 = v0;
  v33 = v1;
  OUTLINED_FUNCTION_3_8();
  v3 = *(v2 + 80);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v9 = *(v8 + 88);
  v10 = type metadata accessor for Column.Func();
  OUTLINED_FUNCTION_0_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = sub_2179E9A60();
  OUTLINED_FUNCTION_0_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_19();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v30 - v25;
  v32(v24);
  if (__swift_getEnumTagSinglePayload(v26, 1, v10))
  {
    (*(v20 + 8))(v26, v18);
    v27 = 0uLL;
    v28 = -1;
  }

  else
  {
    (*(v12 + 16))(v17, v26, v10);
    (*(v20 + 8))(v26, v18);
    sub_2179CDA64(v10, v7);
    (*(v12 + 8))(v17, v10);
    (*(v9 + 40))(&v34, v3, v9);
    (*(v31 + 8))(v7, v3);
    v27 = v34;
    v28 = v35;
  }

  v29 = v33;
  *v33 = v27;
  *(v29 + 16) = v28;
  OUTLINED_FUNCTION_22_1();
}

uint64_t sub_2179B0B20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2179B0BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_10_6();
  v5 = *(v4 + 136);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_10_6();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_10_6();
  v9 = *(v8 + 88);
  type metadata accessor for Column.Func();
  v10 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

uint64_t ValueOf.queryValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2179B0CEC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_2179B0D04@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_10_6();
  v5 = *(v4 + 144);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_10_6();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_10_6();
  v9 = *(v8 + 88);
  type metadata accessor for Column.Func();
  v10 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

uint64_t sub_2179B0DAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_2179B0F34()
{
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  v5 = v4;
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_4();
  v13 = sub_2179E9A60();
  OUTLINED_FUNCTION_0_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23_1(v17, v26);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7))
  {
    v18 = OUTLINED_FUNCTION_11_4();
    v19(v18);
    v20 = 0uLL;
    v21 = 5;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_18_2();
    v23(v22);
    v24 = OUTLINED_FUNCTION_11_4();
    v25(v24);
    (*(*(v5 + 88) + 40))(&v26, v7);
    (*(v9 + 8))(v0, v7);
    v20 = v26;
    v21 = v27;
  }

  *v3 = v20;
  *(v3 + 16) = v21;
  OUTLINED_FUNCTION_22_1();
}

uint64_t sub_2179B1154(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t Table.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t String.valueType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

void sub_2179B1204()
{
  OUTLINED_FUNCTION_8_9();
  if (v5)
  {
    OUTLINED_FUNCTION_3_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v9, &qword_280B1DAE8, &type metadata for ValueType);
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_6_7(v10);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v11 / 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v12 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v3 != v0 || &v13[24 * v2] <= v12)
    {
      memmove(v12, v13, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_2179B12EC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_2179E92A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 32);
  swift_beginAccess();
  v12 = *(v11 + 32);
  if (v12)
  {
    v40 = *(v11 + 24);
    v41 = v12;
LABEL_5:

    goto LABEL_6;
  }

  swift_beginAccess();
  v13 = *(v11 + 64);
  if (v13 != 255)
  {
    v15 = *(v11 + 48);
    v14 = *(v11 + 56);
    sub_2179CA2D8(v15, v14, v13 & 1);
    v40 = sub_2179E56A8(v15, v14, v13 & 1);
    v41 = v16;
    sub_2179A7E34(v15, v14, v13);
    goto LABEL_5;
  }

  sub_2179E9290();
  v40 = sub_2179E9280();
  v41 = v37;
  (*(v7 + 8))(v10, v6);
LABEL_6:
  v17 = sub_2179A9878(a1, a2);

  v18 = *(v17 + 16);
  if (v18)
  {
    v39 = a3;
    v49 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v18, 0);
    v19 = v49;
    v38 = v17;
    v20 = v17 + 32;
    v21 = v17 + 32;
    v22 = v18;
    do
    {
      sub_2179A9940(v21, &v45);
      v42 = v45;
      v43[0] = v46;
      v43[1] = v47;
      v44 = v48;
      v23 = v45;
      __swift_destroy_boxed_opaque_existential_1(v43);
      v49 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2179A920C(v24 > 1, v25 + 1, 1);
        v19 = v49;
      }

      *(v19 + 16) = v25 + 1;
      *(v19 + 16 * v25 + 32) = v23;
      v21 += 56;
      --v22;
    }

    while (v22);
    *&v42 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v18, 0);
    v26 = v42;
    do
    {
      sub_2179A9940(v20, &v45);
      v27 = *(&v47 + 1);
      v28 = v48;
      __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      if (sub_2179B06A4(v27, v28))
      {
        v29 = 0xE100000000000000;
        v30 = 63;
      }

      else
      {
        v30 = sub_2179C9430(v45, *(&v45 + 1), &v46, v40, v41, 0x65765F656C626174, 0xEE00736E6F697372);
        v29 = v31;
      }

      sub_2179A87AC(&v45, sub_2179A4BDC);
      *&v42 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2179A920C(v32 > 1, v33 + 1, 1);
        v26 = v42;
      }

      *(v26 + 16) = v33 + 1;
      v34 = v26 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v29;
      v20 += 56;
      --v18;
    }

    while (v18);

    LOBYTE(a3) = v39;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
  }

  v35 = sub_2179B1764(0x65765F656C626174, 0xEE00736E6F697372, v19, v26, a3 & 1);

  return v35;
}

uint64_t sub_2179B1764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_2179A7E4C();
  v9 = v8;
  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    OUTLINED_FUNCTION_10(v10);
    OUTLINED_FUNCTION_15();
    v9 = v34;
  }

  *(v9 + 16) = v12;
  v13 = v9 + 16 * v11;
  *(v13 + 32) = 0x545245534E49;
  *(v13 + 40) = 0xE600000000000000;
  if (a5)
  {
    v14 = *(v9 + 24);
    if ((v11 + 2) > (v14 >> 1))
    {
      OUTLINED_FUNCTION_10(v14);
      OUTLINED_FUNCTION_15();
      v9 = v40;
    }

    *(v9 + 16) = v11 + 2;
    v15 = v9 + 16 * v12;
    *(v15 + 32) = 0x414C50455220524FLL;
    *(v15 + 40) = 0xEA00000000004543;
    v12 = *(v9 + 16);
  }

  v16 = *(v9 + 24);
  v17 = v12 + 1;
  if (v12 >= v16 >> 1)
  {
    OUTLINED_FUNCTION_10(v16);
    OUTLINED_FUNCTION_15();
    v9 = v35;
  }

  *(v9 + 16) = v17;
  v18 = v9 + 16 * v12;
  *(v18 + 32) = 1330925129;
  *(v18 + 40) = 0xE400000000000000;
  v19 = *(v9 + 24);
  v20 = v12 + 2;

  if (v20 > (v19 >> 1))
  {
    OUTLINED_FUNCTION_15();
    v9 = v36;
  }

  *(v9 + 16) = v20;
  v21 = v9 + 16 * v17;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  sub_2179A5088();
  sub_2179A4B34();
  v22 = OUTLINED_FUNCTION_16_1();
  MEMORY[0x21CEA9600](v22);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  v24 = *(v9 + 16);
  v23 = *(v9 + 24);
  v25 = v23 >> 1;
  v26 = v24 + 1;
  if (v23 >> 1 <= v24)
  {
    OUTLINED_FUNCTION_10(v23);
    OUTLINED_FUNCTION_15();
    v9 = v37;
    v23 = *(v37 + 24);
    v25 = v23 >> 1;
  }

  *(v9 + 16) = v26;
  v27 = v9 + 16 * v24;
  *(v27 + 32) = 40;
  *(v27 + 40) = 0xE100000000000000;
  if (v25 < (v24 + 2))
  {
    OUTLINED_FUNCTION_10(v23);
    OUTLINED_FUNCTION_15();
    v9 = v38;
  }

  *(v9 + 16) = v24 + 2;
  v28 = v9 + 16 * v26;
  *(v28 + 32) = 0x5345554C4156;
  *(v28 + 40) = 0xE600000000000000;
  v29 = OUTLINED_FUNCTION_16_1();
  MEMORY[0x21CEA9600](v29);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  v31 = *(v9 + 16);
  v30 = *(v9 + 24);
  if (v31 >= v30 >> 1)
  {
    OUTLINED_FUNCTION_10(v30);
    OUTLINED_FUNCTION_15();
    v9 = v39;
  }

  *(v9 + 16) = v31 + 1;
  v32 = v9 + 16 * v31;
  *(v32 + 32) = 40;
  *(v32 + 40) = 0xE100000000000000;
  return v9;
}

uint64_t sub_2179B1BD4()
{
  OUTLINED_FUNCTION_3_9();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179B1C1C(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2;
  switch(*(a1 + 16))
  {
    case 1:
      v35 = sqlite3_bind_int64(*(v2 + 24), a2, v4);
      sub_21799FD18(v35, *(v2 + 16));
      if (OUTLINED_FUNCTION_1_26(v36, v37, v38))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_9_11();
      if (v15 && __PAIR128__(v5, a2) < 3)
      {
        goto LABEL_45;
      }

      if (qword_280B1DB60 != -1)
      {
        OUTLINED_FUNCTION_0_27();
      }

      sub_2179E9920();
      OUTLINED_FUNCTION_11_11();
      v16 = OUTLINED_FUNCTION_10_14();
      OUTLINED_FUNCTION_7_13(v16, xmmword_2179EA820);
      OUTLINED_FUNCTION_12_11();
      v16[3].n128_u64[1] = MEMORY[0x277D837D0];
      v39 = sub_21799C634();
      OUTLINED_FUNCTION_8_13(v39);
      sub_2179E9B10();

      *&v70 = 0xD000000000000010;
      *(&v70 + 1) = 0x80000002179F0480;
      goto LABEL_34;
    case 2:
      v24 = sqlite3_bind_int64(*(v2 + 24), a2, *a1 & 1);
      sub_21799FD18(v24, *(v2 + 16));
      if (OUTLINED_FUNCTION_1_26(v25, v26, v27))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_9_11();
      if (v15 && __PAIR128__(v5, a2) < 3)
      {
        goto LABEL_45;
      }

      if (qword_280B1DB60 != -1)
      {
        OUTLINED_FUNCTION_0_27();
      }

      sub_2179E9920();
      OUTLINED_FUNCTION_11_11();
      v16 = OUTLINED_FUNCTION_10_14();
      OUTLINED_FUNCTION_3_18(v16, xmmword_2179EA820);
      OUTLINED_FUNCTION_12_11();
      v17 = MEMORY[0x277D837D0];
      v16[3].n128_u64[1] = MEMORY[0x277D837D0];
      v28 = sub_21799C634();
      OUTLINED_FUNCTION_2_17(v28);
      OUTLINED_FUNCTION_4_18();
      v21 = v29 | 3;
      goto LABEL_43;
    case 3:
      v30 = sqlite3_bind_double(*(v2 + 24), a2, *a1);
      sub_21799FD18(v30, *(v2 + 16));
      if (OUTLINED_FUNCTION_1_26(v31, v32, v33))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_9_11();
      if (v15 && __PAIR128__(v5, a2) < 3)
      {
        goto LABEL_45;
      }

      if (qword_280B1DB60 != -1)
      {
        OUTLINED_FUNCTION_0_27();
      }

      sub_2179E9920();
      OUTLINED_FUNCTION_11_11();
      v16 = OUTLINED_FUNCTION_10_14();
      OUTLINED_FUNCTION_7_13(v16, xmmword_2179EA820);
      OUTLINED_FUNCTION_12_11();
      v16[3].n128_u64[1] = MEMORY[0x277D837D0];
      v34 = sub_21799C634();
      OUTLINED_FUNCTION_8_13(v34);
      sub_2179E9B10();

      *&v70 = 0x6F642820646E6962;
      *(&v70 + 1) = 0xEF203A29656C6275;
LABEL_34:
      MEMORY[0x21CEA9600](*(v2 + 32), *(v2 + 40));
      v41 = *(&v70 + 1);
      v40 = v70;
      v16[6].n128_u64[0] = MEMORY[0x277D837D0];
      goto LABEL_44;
    case 4:
      switch(v5 >> 62)
      {
        case 1uLL:
          if (v4 >> 32 < v4)
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v59 = OUTLINED_FUNCTION_6_14();
          sub_2179AC430(v59, v60, v61);
          v55 = sub_2179E9110();
          if (v55)
          {
            v62 = sub_2179E9130();
            if (!__OFSUB__(v4, v62))
            {
              v55 += v4 - v62;
              goto LABEL_57;
            }

LABEL_69:
            __break(1u);
          }

LABEL_57:
          v58 = (v4 >> 32) - v4;
LABEL_58:
          v63 = sub_2179E9120();
          if (v63 >= v58)
          {
            v64 = v58;
          }

          else
          {
            v64 = v63;
          }

          v65 = (v64 + v55);
          if (v55)
          {
            v23 = v65;
          }

          else
          {
            v23 = 0;
          }

          v22 = v55;
LABEL_65:
          sub_2179B78E8(v22, v23, v2, a2, v4, v5);

          v66 = OUTLINED_FUNCTION_6_14();
          result = sub_2179AC53C(v66, v67, v68);
LABEL_66:
          v69 = *MEMORY[0x277D85DE8];
          return result;
        case 2uLL:
          v50 = *(v4 + 16);
          v51 = *(v4 + 24);

          v52 = OUTLINED_FUNCTION_6_14();
          sub_2179AC430(v52, v53, v54);
          v55 = sub_2179E9110();
          if (!v55)
          {
            goto LABEL_49;
          }

          v56 = sub_2179E9130();
          if (__OFSUB__(v50, v56))
          {
            goto LABEL_68;
          }

          v55 += v50 - v56;
LABEL_49:
          v57 = __OFSUB__(v51, v50);
          v58 = v51 - v50;
          if (!v57)
          {
            goto LABEL_58;
          }

          __break(1u);
LABEL_52:
          *(&v70 + 6) = 0;
          *&v70 = 0;

          v22 = &v70;
          v23 = &v70;
          goto LABEL_65;
        case 3uLL:
          goto LABEL_52;
        default:
          *&v70 = *a1;
          WORD4(v70) = v5;
          BYTE10(v70) = BYTE2(v5);
          BYTE11(v70) = BYTE3(v5);
          BYTE12(v70) = BYTE4(v5);
          BYTE13(v70) = BYTE5(v5);

          v22 = &v70;
          v23 = &v70 + BYTE6(v5);
          goto LABEL_65;
      }

    case 5:
      v42 = sqlite3_bind_null(*(v2 + 24), a2);
      sub_21799FD18(v42, *(v2 + 16));
      if (OUTLINED_FUNCTION_1_26(v43, v44, v45))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_9_11();
      if (v15 && __PAIR128__(v5, a2) < 3)
      {
        goto LABEL_45;
      }

      if (qword_280B1DB60 != -1)
      {
        OUTLINED_FUNCTION_0_27();
      }

      sub_2179E9920();
      OUTLINED_FUNCTION_11_11();
      v16 = OUTLINED_FUNCTION_10_14();
      OUTLINED_FUNCTION_3_18(v16, xmmword_2179EA820);
      OUTLINED_FUNCTION_12_11();
      v17 = MEMORY[0x277D837D0];
      v16[3].n128_u64[1] = MEMORY[0x277D837D0];
      v48 = sub_21799C634();
      OUTLINED_FUNCTION_2_17(v48);
      OUTLINED_FUNCTION_4_18();
      goto LABEL_43;
    default:
      v8 = *(v2 + 24);
      if (qword_280B1DB08 != -1)
      {
        swift_once();
      }

      v9 = qword_280B1DAF8;
      v10 = sub_2179E9670();
      LOBYTE(v4) = v10;
      v11 = sqlite3_bind_text(v8, a2, (v10 + 32), -1, v9);

      sub_21799FD18(v11, *(v6 + 16));
      if (OUTLINED_FUNCTION_1_26(v12, v13, v14))
      {
LABEL_36:
        result = sub_21799C320(a2, v5, v4);
        v47 = *MEMORY[0x277D85DE8];
        return result;
      }

      OUTLINED_FUNCTION_9_11();
      if (!v15 || __PAIR128__(v5, a2) >= 3)
      {
        if (qword_280B1DB60 != -1)
        {
          OUTLINED_FUNCTION_0_27();
        }

        sub_2179E9920();
        OUTLINED_FUNCTION_11_11();
        v16 = OUTLINED_FUNCTION_10_14();
        OUTLINED_FUNCTION_3_18(v16, xmmword_2179EA820);
        OUTLINED_FUNCTION_12_11();
        v17 = MEMORY[0x277D837D0];
        v16[3].n128_u64[1] = MEMORY[0x277D837D0];
        v18 = sub_21799C634();
        OUTLINED_FUNCTION_2_17(v18);
        OUTLINED_FUNCTION_4_18();
        v21 = v20 + 2060;
LABEL_43:
        *&v70 = v19;
        *(&v70 + 1) = v21;
        MEMORY[0x21CEA9600](*(v6 + 32), *(v6 + 40));
        v41 = *(&v70 + 1);
        v40 = v70;
        v16[6].n128_u64[0] = v17;
LABEL_44:
        v16[6].n128_u64[1] = v3;
        v16[4].n128_u64[1] = v40;
        v16[5].n128_u64[0] = v41;
        sub_2179E93F0();
      }

LABEL_45:
      sub_2179A2D18();
      swift_allocError();
      *v49 = a2;
      *(v49 + 8) = v5;
      *(v49 + 16) = v4;
      result = swift_willThrow();
      goto LABEL_66;
  }
}

uint64_t KeyValueStore.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_7_0(a1, &qword_280B1DC20, MEMORY[0x277D837D0]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2179EA830;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = *(v5 + 88);

  KeyValueStore.read(_:maxAge:)(v6);

  sub_2179E9580();

  sub_2179E9560();
  swift_getWitnessTable();
  sub_2179E98C0();
}

uint64_t get_enum_tag_for_layout_string_5TeaDB9ValueTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

void FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_31();
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECEC0);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_14_4(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_13_5(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_12_7(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_11_6(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_10_8(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_8_10(v18, v19);
  v21 = sub_2179AE120(v20);
  v23 = OUTLINED_FUNCTION_17_3(v21, v22);
  v24 = sub_2179AE120(v23);
  v26 = OUTLINED_FUNCTION_16_2(v24, v25);
  v27 = sub_2179AE120(v26);
  v29 = OUTLINED_FUNCTION_15_4(v27, v28);
  v30 = sub_2179AE120(v29);
  v32 = OUTLINED_FUNCTION_5_8(v30, v31);
  v33 = sub_2179AE120(v32);
  v35 = OUTLINED_FUNCTION_6_8(v33, v34);
  v1[40].n128_u64[1] = sub_2179AE120(v35);
  v1[41].n128_u64[0] = v36;

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_30();
}

uint64_t OUTLINED_FUNCTION_17_2(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_21799A5F4();
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1, uint64_t a2)
{
  *(v2 + 368) = a1;
  *(v2 + 376) = a2;
  return v2 + 440;
}

void OUTLINED_FUNCTION_17_5()
{

  sub_2179A7E4C();
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_2179E98C0();
}

uint64_t sub_2179B27D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t Date.init(valueType:connection:)(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 16) == 3)
  {
    v3 = *a1;
    sub_2179E9240();

    return __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t LazyEntity.__allocating_init(valueType:connection:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4();
  v4 = swift_allocObject();
  LazyEntity.init(valueType:connection:)(a1, a2);
  return v4;
}

uint64_t sub_2179B28FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = LazyEntity.__allocating_init(valueType:connection:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t LazyEntity.init(valueType:connection:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  if (*(a1 + 16))
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  else
  {
    v4 = v2;
    v7 = *a1;
    v6 = a1[1];
    v4[2] = *a1;
    v4[3] = v6;
    v8 = *(v3 + 80);
    v9 = *(v3 + 88);
    OUTLINED_FUNCTION_5_11(*(v9 + 8));
    type metadata accessor for LazyLoader();
    sub_2179A70AC(a2, v13);
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = v7;
    v10[5] = v6;
    sub_2179A0D5C(v13, (v10 + 6));

    v11 = LazyLoader.__allocating_init(block:)(sub_2179B4E70, v10);
    __swift_destroy_boxed_opaque_existential_1(a2);
    v4[4] = v11;
    return v4;
  }

  return result;
}

uint64_t sub_2179B2A70()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2179B2AE0(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for LazyLoader.LoadState();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2179B2B84(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2179B2C20();
    if (v3 <= 0x3F)
    {
      sub_21799AC4C(319, &qword_280B1DBF8);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2179B2C20()
{
  if (!qword_280B1C950)
  {
    v0 = sub_2179A2BCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1C950);
    }
  }
}

uint64_t LazyLoader.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  LazyLoader.init(block:)(a1, a2);
  return v7;
}

void *LazyLoader.init(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2179E9310();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_1_30();
  v10 = *(v9 + 112);
  sub_2179E9300();
  v11 = sub_2179E9330();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v2 + v10) = sub_2179E9320();
  v14 = (v3 + *(*v3 + 104));
  *v14 = a1;
  v14[1] = a2;
  v15 = v6[10];
  v16 = v6[11];
  v17 = v6[12];
  type metadata accessor for LazyLoader.LoadState();
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_2179B2DDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t JSON.init(valueType:connection:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v11 + 16) == 4)
  {
    v14 = *v11;
    v15 = *(v11 + 8);
    v16 = sub_2179E92D0();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_2179E92C0();
    sub_2179E92B0();

    sub_2179AC53C(v14, v15, 4);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v7 + 32))(a3, v13, a2);
  }

  else
  {
    sub_2179E9C40();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t Int.init(valueType:connection:)(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *a1;
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v2;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

void *FastColumn.init(wrappedValue:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v3[4] = a1;
  v3[2] = a2;
  return v3;
}

uint64_t sub_2179B3098@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = Int.init(valueType:connection:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t Bool.init(valueType:connection:)(int *a1, uint64_t *a2)
{
  if (*(a1 + 16) == 2)
  {
    v2 = *a1;
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v2 & 1;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t sub_2179B314C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2179B31A4@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Bool.init(valueType:connection:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2179B31D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2179B32B0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t Optional<A>.init(valueType:connection:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 == 5 && *a1 == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, a3);
  }

  else
  {
    v14[0] = *a1;
    v14[1] = v8;
    v15 = v9;
    sub_2179A70AC(a2, v13);
    (*(a4 + 48))(v14, v13, a3, a4);
    __swift_destroy_boxed_opaque_existential_1(a2);
    return __swift_storeEnumTagSinglePayload(a5, 0, 1, a3);
  }
}

uint64_t LazyJSON.__allocating_init(valueType:connection:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_1_4();
  v4 = swift_allocObject();
  LazyJSON.init(valueType:connection:)(a1, a2);
  return v4;
}

uint64_t sub_2179B3470@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = LazyJSON.__allocating_init(valueType:connection:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t LazyJSON.init(valueType:connection:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  if (*(a1 + 16) == 4)
  {
    v4 = v2;
    v7 = *a1;
    v6 = a1[1];
    v8 = v3[10];
    v9 = v3[11];
    v10 = v3[12];
    type metadata accessor for LazyLoader();
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v9;
    v11[4] = v10;
    v11[5] = v7;
    v11[6] = v6;
    v12 = LazyLoader.__allocating_init(block:)(sub_2179B3AE8, v11);
    __swift_destroy_boxed_opaque_existential_1(a2);
    v4[2] = v12;
    return v4;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t sub_2179B35D0()
{
  sub_2179B314C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t LazyJSON.loaderValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  LazyLoader.load()(a1);
  v5 = *(v3 + 80);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

uint64_t LazyLoader.load()@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = v1;
  v3 = *v1;
  v4 = v3[10];
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = v3[11];
  v13 = v3[12];
  State = type metadata accessor for LazyLoader.LoadState();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v41 = (&v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v23 = (&v41 - v22);
  v24 = *(v2 + v3[14]);
  sub_2179E92E0();
  v25 = *(*v2 + 104);
  swift_beginAccess();
  v42 = v16;
  (*(v16 + 16))(v23, v2 + v25, State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = v23;
LABEL_10:
    (*(v6 + 32))(v43, v11, v4);
    return sub_2179B3BA8(v2);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v38 = *v23;
    swift_willThrow();
    return sub_2179B3BA8(v2);
  }

  v27 = v23[1];
  v28 = v44;
  (*v23)();
  if (!v28)
  {

    v39 = v41;
    (*(v6 + 16))(v41, v11, v4);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_19();
    (*(v42 + 40))(v2 + v25, v39, State);
    swift_endAccess();
    goto LABEL_10;
  }

  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  v44 = qword_280B1FEE8;
  LODWORD(v43) = sub_2179E9920();
  sub_21799ABE4();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2179EA820;
  v30 = sub_2179E9EF0();
  v32 = v31;
  *(v29 + 56) = MEMORY[0x277D837D0];
  v33 = sub_21799C634();
  *(v29 + 64) = v33;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v45 = 0;
  v46 = 0xE000000000000000;
  v47 = v28;
  sub_21799AC4C(0, &qword_280B1DBF8);
  sub_2179E9C10();
  v34 = v45;
  v35 = v46;
  *(v29 + 96) = MEMORY[0x277D837D0];
  *(v29 + 104) = v33;
  *(v29 + 72) = v34;
  *(v29 + 80) = v35;
  sub_2179E93F0();

  v36 = v41;
  *v41 = v28;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_19();
  v37 = v28;
  (*(v42 + 40))(v2 + v25, v36, State);
  swift_endAccess();
  swift_willThrow();

  return sub_2179B3BA8(v2);
}

uint64_t sub_2179B3AE8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  return sub_2179B3B0C();
}

uint64_t sub_2179B3B0C()
{
  v0 = sub_2179E92D0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2179E92C0();
  sub_2179E92B0();
}

uint64_t LazyJSON.__deallocating_deinit()
{
  LazyJSON.deinit();
  OUTLINED_FUNCTION_1_4();

  return swift_deallocClassInstance();
}

uint64_t LazyLoader.deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  State = type metadata accessor for LazyLoader.LoadState();
  (*(*(State - 8) + 8))(v0 + v1, State);
  v6 = *(v0 + *(*v0 + 112));

  return v0;
}

uint64_t LazyLoader.__deallocating_deinit()
{
  LazyLoader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t LazyJSON.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_2179B3D4C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_7();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_0_7();
  v5 = *(*(v4 + 88) + 8);
  *&v10 = v7;
  *(&v10 + 1) = v6;
  v11 = v5;
  v12 = v8;
  type metadata accessor for QuerySome();
  sub_2179A70AC((v0 + 2), &v10);
  return sub_2179A8074(&v10);
}

uint64_t sub_2179B3EAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2179B3EEC(uint64_t *a1, __int128 *a2, uint64_t a3, char a4)
{
  v4 = *(a2 + 16);
  v8 = *a1;
  v6 = *a2;
  v7 = v4;
  return sub_2179DFE80(&v8, &v6, a3, a4 & 1, 0, 1);
}

void sub_2179B3F38(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 24) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_45:
      __break(1u);
      JUMPOUT(0x2179B4184);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v22 = &a1[v10 + 24] & ~v10;

          __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v21 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
          }

          else
          {
            v21 = (a2 - 1);
          }

          *a1 = v21;
        }
      }

      return;
  }
}

uint64_t sub_2179B41AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 24) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 24) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

uint64_t sub_2179B4374(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v6 + 8) + 8))();
  v7 = sub_2179A32C4(a1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v18 = v5;
    v19 = v2;
    v20 = a1;
    v21 = MEMORY[0x277D84F90];
    result = sub_2179A920C(0, v8, 0);
    v10 = 0;
    v11 = v21;
    v12 = (v7 + 40);
    while (v10 < *(v7 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v21 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);

      if (v16 >= v15 >> 1)
      {
        result = sub_2179A920C(v15 > 1, v16 + 1, 1);
        v11 = v21;
      }

      ++v10;
      *(v11 + 16) = v16 + 1;
      v17 = v11 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v12 += 7;
      if (v8 == v10)
      {

        (*(v19 + 8))(v18, v20);
        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    (*(v2 + 8))(v5, a1);
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2179B455C(void *a1)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 96);
  type metadata accessor for KVSEntity();
  sub_2179E9840();
  Database.read<A>(block:)(&v18);
  if (v1)
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    sub_2179E9920();
    sub_21799ABE4();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2179EA820;
    v8 = (*(v5 + 8))(v4, v5);
    v10 = v9;
    v11 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v12 = sub_21799C634();
    *(v7 + 64) = v12;
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    v18 = 0;
    v19 = 0xE000000000000000;
    v20 = v1;
    sub_21799AC4C(0, &qword_280B1DBF8);
    sub_2179E9C10();
    v13 = v18;
    v14 = v19;
    *(v7 + 96) = v11;
    *(v7 + 104) = v12;
    *(v7 + 72) = v13;
    *(v7 + 80) = v14;
    sub_2179E93F0();

    return swift_willThrow();
  }

  else
  {
    v20 = v18;
    MEMORY[0x28223BE20](v6);
    v16 = *(v3 + 88);
    v17 = *(v3 + 104);
    swift_getWitnessTable();
    return sub_2179E9B60();
  }
}

uint64_t sub_2179B4908()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2179B4948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, _UNKNOWN **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_31();
  a24 = v25;
  a25 = v27;
  v28 = *(v26 + 16);
  if (v28)
  {
    v29 = v26;
    a13 = MEMORY[0x277D84F90];
    sub_2179B4BA4(0, v28, 0);
    v30 = a13;
    v31 = (v29 + 40);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;
      a13 = v30;
      v35 = *(v30 + 16);
      v34 = *(v30 + 24);

      if (v35 >= v34 >> 1)
      {
        sub_2179B4BA4(v34 > 1, v35 + 1, 1);
        v30 = a13;
      }

      a11 = MEMORY[0x277D837D0];
      a12 = &protocol witness table for String;
      *&a9 = v33;
      *(&a9 + 1) = v32;
      *(v30 + 16) = v35 + 1;
      sub_2179A80B8(&a9, v30 + 40 * v35 + 32);
      v31 += 2;
      --v28;
    }

    while (v28);
  }

  OUTLINED_FUNCTION_30();
}

void sub_2179B4A2C()
{
  if (!qword_280B1D6C8)
  {
    sub_21799AC4C(255, &qword_280B1DB50);
    v0 = sub_2179E9D50();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1D6C8);
    }
  }
}

uint64_t sub_2179B4A94(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_2179B4A2C();
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_2179CF32C((a4 + 32), v8, (v10 + 32));
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

    sub_21799AC4C(0, &qword_280B1DB50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2179B4BA4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2179B4A94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t Date.queryValue.getter()
{
  sub_2179E9250();
  sub_2179E9860();
  return 0;
}

uint64_t QuerySome.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t && infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *a3 = v6 | 0x6000000000000000;
}

uint64_t sub_2179B4DB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2179B4E30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2179B4E94(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t KeyValueStore.Promises.write(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  sub_2179E95B0();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179B4F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v35 = sub_2179E9A60();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = *(a5 + 8);
  v19 = *(v18 + 24);
  type metadata accessor for Statement();
  v41 = 3;
  v39 = MEMORY[0x277D837D0];
  v40 = &protocol witness table for String;
  *&v37 = a1;
  *(&v37 + 1) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = 25705;
  *(v20 + 24) = 0xE200000000000000;
  sub_2179A0D5C(&v37, v20 + 32);
  v36 = v20;
  v37 = 0uLL;
  v38 = -1;

  sub_2179D1704(&v36, &v37, 1, 0, 0, 1, a4, v18);
  sub_2179B0CEC(v36);
  v21 = sub_2179ABC9C();
  v23 = v22;

  sub_2179A70AC(a3, &v37);
  v24 = sub_2179AC76C(&v41, v21, v23, &v37);
  v25 = v34;
  v26 = sub_2179AC7D4(v24);
  if (v25)
  {

    __swift_storeEnumTagSinglePayload(v17, 1, 1, a4);
  }

  else
  {
    v27 = v26;

    *&v37 = v27;
    sub_2179E9840();
    swift_getWitnessTable();
    sub_2179E98C0();
  }

  v28 = v35;
  (*(v11 + 16))(v15, v17, v35);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, a4);
  v30 = *(v11 + 8);
  if (EnumTagSinglePayload == 1)
  {
    v30(v15, v28);
    sub_2179DD730();
    swift_allocError();
    swift_willThrow();
    return (v30)(v17, v28);
  }

  else
  {
    v30(v17, v28);
    return (*(*(a4 - 8) + 32))(v33, v15, a4);
  }
}

uint64_t sub_2179B52B4()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2179B52F4(uint64_t a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v13[3] = MEMORY[0x277CC9318];
  v13[4] = MEMORY[0x277CC9300];
  v13[0] = a1;
  v13[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277CC9318]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_2179B5FB4(v6, v7, &v12);
      goto LABEL_9;
    case 3uLL:
      memset(v11, 0, 14);
      v5 = v11;
      goto LABEL_5;
    default:
      v11[0] = *v2;
      LOWORD(v11[1]) = v4;
      BYTE2(v11[1]) = BYTE2(v4);
      BYTE3(v11[1]) = BYTE3(v4);
      BYTE4(v11[1]) = BYTE4(v4);
      BYTE5(v11[1]) = BYTE5(v4);
      v5 = v11 + BYTE6(v4);
LABEL_5:
      sub_2179B6048(v11, v5, &v12);
LABEL_9:
      v8 = v12;
      __swift_destroy_boxed_opaque_existential_1(v13);
      v9 = *MEMORY[0x277D85DE8];
      return v8;
  }
}

uint64_t Data.init(valueType:connection:)(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) == 4)
  {
    v3 = sub_2179B52F4(*a1, *(a1 + 8));
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v3;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t sub_2179B5588@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = Data.init(valueType:connection:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2179B55B0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyValueStore.write(_:)(a6);

    v9 = a6;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyValueStore.write(_:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 112);
  v117 = *(*v1 + 80);
  aBlock = v117;
  v138 = v3;
  v116 = v4;
  v139 = v4;
  v140 = v5;
  v115 = v5;
  v114 = v6;
  v141 = v6;
  v7 = type metadata accessor for KVSEntry();
  v8 = *(*(sub_2179E9A60() - 8) + 64);
  OUTLINED_FUNCTION_19();
  v10 = MEMORY[0x28223BE20](v9);
  v112 = &v104 - v11;
  v12 = *(v3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20(v18, v19, v20, v21, v22, v23, v24, v25, v104);
  v125 = v3;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v129 = v26;
  v123 = sub_2179E9A60();
  v27 = OUTLINED_FUNCTION_0_0(v123);
  v136 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v128 = (v31 - v32);
  MEMORY[0x28223BE20](v33);
  v127 = (&v104 - v34);
  OUTLINED_FUNCTION_18();
  v121 = sub_2179E9270();
  v35 = OUTLINED_FUNCTION_0_0(v121);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v111 = v40 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v104 - v43;
  OUTLINED_FUNCTION_15_0();
  v45 = swift_allocObject();
  v113 = v7;
  v46 = sub_2179E9500();
  v105 = v45;
  *(v45 + 16) = v46;
  v119 = v45 + 16;
  v126 = v1;
  v48 = v1[4];
  v47 = v1[5];

  v120 = v44;
  v48(v49);

  v50 = a1 + 64;
  v51 = 1 << *(a1 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(a1 + 64);
  v124 = (v51 + 63) >> 6;
  v130 = (v12 + 16);
  v132 = (v12 + 32);
  v122 = (v136 + 32);
  v106 = v37;
  v109 = (v37 + 16);
  v107 = v12;
  v118 = v12 + 8;
  v108 = a1;

  v55 = 0;
  for (i = a1 + 64; ; v50 = i)
  {
    if (!v53)
    {
      v57 = v125;
      v59 = v128;
      v58 = v129;
      v60 = v127;
      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v56 >= v124)
        {
          __swift_storeEnumTagSinglePayload(v128, 1, 1, v129);
          v53 = 0;
          goto LABEL_12;
        }

        v53 = *(v50 + 8 * v56);
        ++v55;
        if (v53)
        {
          v55 = v56;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    v56 = v55;
    v57 = v125;
LABEL_11:
    v61 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v62 = v61 | (v56 << 6);
    v63 = (*(v108 + 48) + 16 * v62);
    v65 = *v63;
    v64 = v63[1];
    v66 = v107;
    v67 = v131;
    (*(v107 + 16))(v131, *(v108 + 56) + *(v107 + 72) * v62, v57);
    v69 = v128;
    v68 = v129;
    v70 = *(v129 + 48);
    *v128 = v65;
    v69[1] = v64;
    v58 = v68;
    v71 = *(v66 + 32);
    v59 = v69;
    v71(v69 + v70, v67, v57);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v58);

    v60 = v127;
LABEL_12:
    (*v122)(v60, v59, v123);
    if (__swift_getEnumTagSinglePayload(v60, 1, v58) == 1)
    {
      break;
    }

    v72 = *v60;
    v73 = v60[1];
    (*v132)(v16, v60 + *(v58 + 48), v57);
    v74 = v143;
    sub_2179B7540(v16);
    v143 = v74;
    if (v74)
    {
      v87 = v108;

      v100 = OUTLINED_FUNCTION_16();
      v101(v100, v57);
      v102 = OUTLINED_FUNCTION_11();
      v103(v102);
      goto LABEL_19;
    }

    v77 = v75;
    v78 = v76;
    v79 = v111;
    (*v109)(v111, v120, v121);

    v136 = v72;
    v80 = sub_2179B60C0(v72, v73, v77, v78, v79);
    v134 = v81;
    v135 = v80;
    v133 = v82;
    v83 = v131;
    (*v130)(v131, v16, v57);
    v84 = v112;
    sub_2179B6450(v135, v134, v133, v83, v57, v112);
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v113);
    aBlock = v136;
    v138 = v73;
    sub_2179E95B0();
    sub_2179E95D0();
    v85 = OUTLINED_FUNCTION_16();
    result = v86(v85, v57);
  }

  v87 = v108;

  v88 = v126;
  v89 = v126[7];
  OUTLINED_FUNCTION_12();
  v90 = swift_allocObject();
  v91 = v119;
  *(v90 + 16) = v88;
  *(v90 + 24) = v91;
  OUTLINED_FUNCTION_12();
  v92 = swift_allocObject();
  *(v92 + 16) = sub_2179B7BE4;
  *(v92 + 24) = v90;
  v141 = sub_2179B7BEC;
  v142 = v92;
  aBlock = MEMORY[0x277D85DD0];
  v138 = 1107296256;
  OUTLINED_FUNCTION_5();
  v139 = v93;
  v140 = &block_descriptor_33;
  v94 = _Block_copy(&aBlock);

  dispatch_sync(v89, v94);
  _Block_release(v94);
  LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

  if ((v89 & 1) == 0)
  {
    v95 = v126;
    v96 = v126[2];
    OUTLINED_FUNCTION_12();
    v97 = swift_allocObject();
    *(v97 + 16) = v105;
    *(v97 + 24) = v95;
    LOBYTE(aBlock) = 0;

    Database.asyncWrite(_:block:)(&aBlock, sub_2179B6938, v97);

    v98 = OUTLINED_FUNCTION_11();
    v99(v98);

LABEL_19:

    return v87;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2179B5F6C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2179B5FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2179E9110();
  v7 = result;
  if (result)
  {
    result = sub_2179E9130();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_2179E9120();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_2179B6048(v7, v13, a3);
}

uint64_t sub_2179B6048@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_2179E9190();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x21CEA90B0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x21CEA90C0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2179B60C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v9 = MEMORY[0x277D83D88];
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - v12;
  sub_21799F4E0(0, &qword_280B1D7F0, sub_2179AAEF8, v9);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  sub_2179AD4A0();
  swift_allocObject();
  sub_2179A7DE0();
  v22 = v21;
  sub_2179AAEF8(0);
  v24 = v23;
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v23);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v24);
  sub_2179AAF2C(0, &qword_280B1D7E0, sub_2179AAFA8, type metadata accessor for Column);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  sub_2179AD6B4();
  v29 = v28;
  sub_2179AAFDC();
  swift_allocObject();

  sub_2179ADBE4();
  v31 = v30;
  swift_beginAccess();
  v32 = *(v22 + 32);
  *(v22 + 24) = a1;
  *(v22 + 32) = a2;

  v33 = sub_2179E9270();
  (*(*(v33 - 8) + 32))(v13, a5, v33);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v33);
  v34 = *(*v29 + 104);
  swift_beginAccess();
  sub_2179B7840(v13, v29 + v34);
  swift_endAccess();

  swift_beginAccess();
  v35 = *(v31 + 24);
  v36 = *(v31 + 32);
  v37 = v40;
  *(v31 + 24) = a3;
  *(v31 + 32) = v37;
  sub_2179B78D4(v35, v36);

  return v22;
}

uint64_t sub_2179B6450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  v9 = type metadata accessor for KVSEntry();
  return (*(*(a5 - 8) + 32))(&a6[*(v9 + 60)], a4, a5);
}

uint64_t sub_2179B64E4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *a2;
  v57 = a2;
  v7 = *(v5 + 112);
  v8 = *(v6 + 96);
  v65 = *(v6 + 80);
  v66 = v8;
  v67 = v7;
  v9 = type metadata accessor for KVSEntry();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = v51 - v12;
  v63 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = sub_2179E9A60();
  v14 = *(v59 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v59);
  v62 = (v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v61 = v51 - v18;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v51[2] = v10 + 16;
  v51[1] = v10 + 32;
  v58 = (v14 + 32);
  v53 = v10;
  v54 = v19;
  v56 = (v10 + 8);

  v26 = 0;
  v55 = v20;
  if (v23)
  {
    while (1)
    {
      v68 = v3;
      v27 = v26;
LABEL_10:
      v30 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v31 = v30 | (v27 << 6);
      v32 = v53;
      v33 = (*(v54 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = v52;
      v37 = v63;
      (*(v53 + 16))(v52, *(v54 + 56) + *(v53 + 72) * v31, v63);
      v38 = TupleTypeMetadata2;
      v39 = *(TupleTypeMetadata2 + 48);
      v40 = v62;
      *v62 = v35;
      v40[1] = v34;
      v41 = v38;
      v42 = v37;
      v29 = v40;
      (*(v32 + 32))(v40 + v39, v36, v42);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v41);

      v28 = v61;
LABEL_11:
      (*v58)(v28, v29, v59);
      if (__swift_getEnumTagSinglePayload(v28, 1, v41) == 1)
      {
      }

      v43 = *(v28 + 8);

      v44 = (v28 + *(v41 + 48));
      v45 = v57[3];
      sub_2179B69CC();
      v46 = *v44;
      v47 = v44[1];
      v48 = v44[2];
      v49 = *v56;

      v49(v44, v63);
      v64[0] = v46;
      v64[1] = v47;
      v64[2] = v48;
      v50 = v68;
      sub_2179B69F8(v64);
      v3 = v50;
      if (v50)
      {

        v3 = 0;
      }

      v20 = v55;

      if (!v23)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v28 = v61;
    v29 = v62;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        v68 = v3;
        v41 = TupleTypeMetadata2;
        __swift_storeEnumTagSinglePayload(v62, 1, 1, TupleTypeMetadata2);
        v23 = 0;
        goto LABEL_11;
      }

      v23 = *(v20 + 8 * v27);
      ++v26;
      if (v23)
      {
        v68 = v3;
        v26 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2179B6954()
{
  OUTLINED_FUNCTION_0_26();
  v4(0, *(v2 + 80), *(v3 + 88));
  sub_2179A70AC(v1, v6);
  return v0(v6);
}

void sub_2179B69F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v58 = v56 - v7;
  v57 = *(v8 + 88);
  v9 = *(*(v57 + 8) + 24);
  v60 = a1;
  v61 = v6;
  v56[1] = v9;
  v10 = sub_2179A32C4(v6);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  v69 = v10;
  if (v11)
  {
    v13 = v10 + 32;
    v62 = v2;
    do
    {
      sub_2179A9940(v13, &v65);
      v14 = v67;
      v15 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      if (sub_2179B06A4(v14, v15))
      {
        v16 = v67;
        v17 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        (*(v17 + 16))(v63, v16, v17);
        v18 = v63[0];
        v19 = v63[1];
        v20 = v64;
        sub_2179AE2FC(&v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_10_7();
          sub_2179B1204();
          v12 = v23;
        }

        v21 = *(v12 + 16);
        if (v21 >= *(v12 + 24) >> 1)
        {
          sub_2179B1204();
          v12 = v24;
        }

        *(v12 + 16) = v21 + 1;
        v22 = v12 + 24 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        *(v22 + 48) = v20;
        v2 = v62;
      }

      else
      {
        sub_2179AE2FC(&v65);
      }

      v13 += 56;
      --v11;
    }

    while (v11);
  }

  v25 = v61;
  type metadata accessor for Statement();
  v63[0] = v12;
  v26 = v58;
  (*(v59 + 16))(v58, v60, v25);
  *&v65 = sub_2179B7040(v26, 1, v25, v57);
  sub_2179A4B8C(0, &qword_280B1DD00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2179A4B34();
  *&v65 = sub_2179E95F0();
  *(&v65 + 1) = v27;

  MEMORY[0x21CEA9600](59, 0xE100000000000000);

  v28 = v65;
  sub_2179A70AC(v2 + 16, &v65);
  v62 = sub_2179AC76C(v63, v28, *(&v28 + 1), &v65);
  v29 = v69;
  v30 = *(v69 + 16);
  if (v30)
  {
    v63[0] = MEMORY[0x277D84F90];
    sub_2179A9394(0, v30, 0);
    v31 = 0;
    v32 = v63[0];
    v33 = v29 + 32;
    while (v31 < *(v29 + 16))
    {
      sub_2179A9940(v33, &v65);
      v34 = sub_2179B74E4(v65, *(&v65 + 1), v66, v2);
      if (v34)
      {
        v36 = v34;
        v37 = v35;
        v38 = swift_allocObject();
        *(v38 + 16) = v36;
        *(v38 + 24) = v37;
        v39 = sub_2179CF374;
      }

      else
      {
        v39 = 0;
        v38 = 0;
      }

      sub_2179AE2FC(&v65);
      v63[0] = v32;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2179A9394(v40 > 1, v41 + 1, 1);
        v32 = v63[0];
      }

      ++v31;
      *(*(&v28 + 1) + 16) = v41 + 1;
      v42 = *(&v28 + 1) + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v38;
      v33 += 56;
      v29 = v69;
      if (v30 == v31)
      {

        goto LABEL_22;
      }
    }

LABEL_36:
    __break(1u);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
LABEL_22:
    v43 = 0;
    v44 = *(v32 + 16);
    v45 = MEMORY[0x277D84F90];
LABEL_23:
    v46 = (v32 + 32 + 16 * v43);
    while (v44 != v43)
    {
      if (v43 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      ++v43;
      v47 = v46 + 2;
      v48 = *v46;
      v46 += 2;
      if (v48)
      {
        v49 = *(v47 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_10_7();
          sub_2179A94A4();
          v45 = v52;
        }

        v50 = *(v45 + 16);
        if (v50 >= *(v45 + 24) >> 1)
        {
          sub_2179A94A4();
          v45 = v53;
        }

        *(v45 + 16) = v50 + 1;
        v51 = v45 + 16 * v50;
        *(v51 + 32) = v48;
        *(v51 + 40) = v49;
        goto LABEL_23;
      }
    }

    sub_2179A9E30();

    v55 = v56[0];
    sub_2179AC7D4(v54);

    if (!v55)
    {
    }
  }
}

uint64_t sub_2179B6F38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t Date.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_2179E9250();
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  return result;
}

uint64_t Data.valueType.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 4;
  return sub_2179B2DDC(a1, a2);
}

uint64_t static KeyValueStore.+= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  KeyValueStore.write(_:)(a2);
}

uint64_t sub_2179B7040(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v7 = sub_2179E92A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + 24);
  v13 = v12(a3, a4);
  swift_beginAccess();
  v14 = *(v13 + 32);
  v59 = *(v13 + 24);

  v62 = v14;
  if (!v14)
  {
    v15 = v12(a3, a4);
    swift_beginAccess();
    v16 = *(v15 + 48);
    v17 = *(v15 + 56);
    v18 = *(v15 + 64);
    v19 = OUTLINED_FUNCTION_17_0();
    sub_2179CA2C0(v19, v20, v18);

    if (v18 == 255)
    {
      sub_2179E9290();
      v28 = sub_2179E9280();
      OUTLINED_FUNCTION_18_1(v28, v29);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_17_0();
      v24 = sub_2179E56A8(v21, v22, v23);
      OUTLINED_FUNCTION_18_1(v24, v25);
      v26 = OUTLINED_FUNCTION_17_0();
      sub_2179A7E34(v26, v27, v18);
    }
  }

  v30 = *(a4 + 8);
  v60 = (*(v30 + 32))(a3, v30);
  v61 = v31;
  v32 = *(v30 + 24);
  v58 = a3;
  v57 = a1;
  v33 = sub_2179A32C4(a3);
  v34 = *(v33 + 16);
  if (v34)
  {
    v70 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v34, 0);
    v35 = v70;
    v55 = v33;
    v36 = v33 + 32;
    v37 = v33 + 32;
    v38 = v34;
    do
    {
      sub_2179A9940(v37, &v66);
      v63 = v66;
      v64[0] = v67;
      v64[1] = v68;
      v65 = v69;
      v39 = v66;
      __swift_destroy_boxed_opaque_existential_1(v64);
      v70 = v35;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);
      if (v41 >= v40 >> 1)
      {
        v42 = OUTLINED_FUNCTION_10(v40);
        sub_2179A920C(v42, v41 + 1, 1);
        v35 = v70;
      }

      *(v35 + 16) = v41 + 1;
      *(v35 + 16 * v41 + 32) = v39;
      v37 += 56;
      --v38;
    }

    while (v38);
    *&v63 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v34, 0);
    v43 = v63;
    do
    {
      sub_2179A9940(v36, &v66);
      __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
      v44 = OUTLINED_FUNCTION_17_0();
      if (sub_2179B06A4(v44, v45))
      {
        v46 = 0xE100000000000000;
        v47 = 63;
      }

      else
      {
        v47 = sub_2179C9430(v66, *(&v66 + 1), &v67, v59, v62, v60, v61);
        v46 = v48;
      }

      sub_2179AE2FC(&v66);
      *&v63 = v43;
      v50 = *(v43 + 16);
      v49 = *(v43 + 24);
      if (v50 >= v49 >> 1)
      {
        v52 = OUTLINED_FUNCTION_10(v49);
        sub_2179A920C(v52, v50 + 1, 1);
        v43 = v63;
      }

      *(v43 + 16) = v50 + 1;
      v51 = v43 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v46;
      v36 += 56;
      --v34;
    }

    while (v34);
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D84F90];
  }

  v53 = sub_2179B1764(v60, v61, v35, v43, v56 & 1);

  (*(*(v58 - 8) + 8))(v57);
  return v53;
}

uint64_t sub_2179B74E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 88))(a4 + 16, v5, v6);
}

void sub_2179B7540(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x21CEA9E60]();
  v5 = v3[10];
  v6 = v3[12];
  v7 = v3[13];
  v8 = v3[14];
  sub_2179B7628(a1, v3[11], &v10, &v9);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_2179B7628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X6>, uint64_t *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2179E9D50();
  v9 = *(*(TupleTypeMetadata2 - 8) + 72);
  v10 = *(*(TupleTypeMetadata2 - 8) + 80);
  swift_allocObject();
  sub_2179E97D0();
  v11 = *(TupleTypeMetadata2 + 48);
  *v12 = 118;
  *(v12 + 1) = 0xE100000000000000;
  (*(*(a2 - 8) + 16))(&v12[v11], a1, a2);
  sub_2179E9840();
  sub_2179E9540();
  v13 = sub_2179E90E0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_2179E90D0();
  sub_2179E95B0();
  swift_getWitnessTable();
  v16 = sub_2179E90C0();
  v18 = v17;

  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = v16;
    a4[1] = v18;
  }

  return result;
}

uint64_t sub_2179B7840(uint64_t a1, uint64_t a2)
{
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179B78D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2179B314C(a1, a2);
  }

  return a1;
}

uint64_t sub_2179B78E8(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(a3 + 24);
  v11 = MEMORY[0x21CEA9100](a5, a6);
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v6 = v11;
    if (v11 <= 0x7FFFFFFF)
    {
      if (qword_280B1DB08 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_5:
  v12 = sqlite3_bind_blob(v10, a4, v9, v6, qword_280B1DAF8);
  sub_21799FD18(v12, *(a3 + 16));
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (sub_2179A03E4(v13, v15, v17, 0, 0, 29))
  {
    return sub_21799C320(v14, v16, v18);
  }

  if (v18 != 29 || __PAIR128__(v16, v14) >= 3)
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    v29 = qword_280B1FEE8;
    sub_2179E9920();
    sub_21799ABE4();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2179EA820;
    v27 = 0;
    v28 = 0xE000000000000000;
    v26 = v18;
    sub_2179E9C10();
    v20 = MEMORY[0x277D837D0];
    *(v19 + 56) = MEMORY[0x277D837D0];
    v21 = sub_21799C634();
    *(v19 + 64) = v21;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;
    strcpy(v25, "bind (blob): ");
    HIWORD(v25[1]) = -4864;
    MEMORY[0x21CEA9600](*(a3 + 32), *(a3 + 40));
    v22 = v25[0];
    v23 = v25[1];
    *(v19 + 96) = v20;
    *(v19 + 104) = v21;
    *(v19 + 72) = v22;
    *(v19 + 80) = v23;
    sub_2179E93F0();
  }

  sub_2179A2D18();
  swift_allocError();
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  return swift_willThrow();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t objectdestroy_20Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2179B7BEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2179B7C3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + 112);

  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  type metadata accessor for KVSEntry();
  sub_2179E9360();
  swift_endAccess();
}

uint64_t sub_2179B7DE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42[0] = a3;
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v42 - v17;
  v42[1] = a4;
  v42[2] = a5;
  v42[3] = a6;
  v42[4] = a7;
  v42[5] = a8;
  v19 = type metadata accessor for KVSEntry();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (v42 - v27);
  v29 = *a1;
  v30 = a1[1];
  *v28 = v29;
  v28[1] = v30;
  v31 = *(v19 - 8);
  (*(v31 + 16))(v42 + *(v26 + 48) - v27, a2, v19);
  (*(v21 + 16))(v25, v28, TupleTypeMetadata2);
  v32 = *(v25 + 1);

  v33 = &v25[*(TupleTypeMetadata2 + 48)];
  v34 = *(v33 + 1);
  v35 = *(v31 + 8);

  v35(v33, v19);
  v36 = *(*v34 + 104);
  swift_beginAccess();
  sub_2179B819C(v34 + v36, v18);

  v37 = sub_2179E9270();
  result = __swift_getEnumTagSinglePayload(v18, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2179ABB38();
    if (sub_2179E9610())
    {
      sub_2179AAF2C(0, &qword_280B1D6D0, sub_2179ABB38, MEMORY[0x277D83638]);
      v40 = *(v39 + 36);
      v41 = sub_2179E9620();
    }

    else
    {
      v41 = 0;
    }

    (*(v21 + 8))(v28, TupleTypeMetadata2);
    (*(*(v37 - 8) + 8))(v18, v37);
    return v41 & 1;
  }

  return result;
}

uint64_t sub_2179B819C(uint64_t a1, uint64_t a2)
{
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179B8230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  return sub_2179B8254(a1, v2[3], a2);
}

void sub_2179B8338()
{
  v1 = *(sub_2179E92A0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  sub_2179B83BC(v2, v3, v4);
}

void sub_2179B83BC(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_280B1DEE0 != -1)
  {
    a1 = swift_once();
  }

  v4 = qword_280B1DEE8;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v4 + 24));
  sub_2179B8550((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  if (qword_280B1DEF8 != -1)
  {
    swift_once();
  }

  v5 = qword_280B1DF00;
  os_unfair_lock_lock((qword_280B1DF00 + 24));
  sub_2179B8A3C((v5 + 16), a3 & 1);
  os_unfair_lock_unlock((v5 + 24));
}

uint64_t sub_2179B84CC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2179B889C(a2, *a1);
  sub_2179B88EC(a2);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2179E9A20();
    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t Database.__allocating_init(safeLocation:)(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (qword_280B1DB60 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v4 = qword_280B1FEE8;
  sub_21799ABE4();
  v56 = v5;
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_17_2(v6, xmmword_2179EA830);
  v9 = v8;
  v6[3].n128_u64[1] = MEMORY[0x277D837D0];
  v10 = sub_21799C634();
  v6[4].n128_u64[0] = v10;
  v6[2].n128_u64[0] = v7;
  v6[2].n128_u64[1] = v9;
  sub_2179E9940();
  sub_2179E93F0();

  LOBYTE(v59) = 1;
  OUTLINED_FUNCTION_8_3();
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_3_4();
  v15 = sub_2179A5DEC(v12, v13, v14);
  OUTLINED_FUNCTION_15_2(v15, v16, v17, v18, v19, v20, v21, v22, v51, v53, v54, v56, v4, 0, v59, *v60, v60[4], v62, *v64, v64[4], 0, 0, 0, 28, v2);
  if (v9)
  {
    v23 = v9;
    v24 = sub_2179E9920();
    OUTLINED_FUNCTION_26();
    v25 = swift_allocObject();
    v26 = OUTLINED_FUNCTION_17_2(v25, xmmword_2179EA820);
    v27 = MEMORY[0x277D837D0];
    v25[3].n128_u64[1] = MEMORY[0x277D837D0];
    v25[4].n128_u64[0] = v10;
    v25[2].n128_u64[0] = v26;
    v25[2].n128_u64[1] = v28;
    v55 = sub_21799AC4C(0, &qword_280B1DBF8);
    sub_2179E9C10();
    v25[6].n128_u64[0] = v27;
    v25[6].n128_u64[1] = v10;
    v25[4].n128_u64[1] = 0;
    v25[5].n128_u64[0] = 0xE000000000000000;
    sub_2179E93F0();

    OUTLINED_FUNCTION_8_3();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_15_2(v11, v29, v30, v31, v32, v33, v34, v35, 2, 4, v55, v57, v58, 0, 0xE000000000000001, *v61, v61[4], v63, *v65, v65[4], 0, 0, 2u, 0, 0);
    if (v24)
    {
      sub_2179E9920();
      OUTLINED_FUNCTION_26();
      v36 = swift_allocObject();
      v37 = OUTLINED_FUNCTION_17_2(v36, v52);
      v38 = MEMORY[0x277D837D0];
      v36[3].n128_u64[1] = MEMORY[0x277D837D0];
      v36[4].n128_u64[0] = v10;
      v36[2].n128_u64[0] = v37;
      v36[2].n128_u64[1] = v39;
      v40 = OUTLINED_FUNCTION_3_4();
      sub_2179A1578(v40, v41, v42);
      sub_2179E9C10();
      v36[6].n128_u64[0] = v38;
      v36[6].n128_u64[1] = v10;
      v36[4].n128_u64[1] = 0;
      v36[5].n128_u64[0] = 0xE000000000000000;
      sub_2179E93F0();

      OUTLINED_FUNCTION_8_3();
      swift_allocObject();
      v11 = sub_2179C59E0();

      v43 = v24;
    }

    else
    {
      v47 = OUTLINED_FUNCTION_3_4();
      sub_2179A1578(v47, v48, v49);
      v43 = v23;
    }
  }

  else
  {
    v44 = OUTLINED_FUNCTION_3_4();
    sub_2179A1578(v44, v45, v46);
  }

  return v11;
}

uint64_t sub_2179B889C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2179A1C40(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  return swift_unknownObjectRetain();
}

uint64_t sub_2179B88EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_2179A1C40(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v8 = *(*v2 + 24);
  sub_2179A1714(0, &unk_280B1DC40, MEMORY[0x277D843B8]);
  sub_2179E9C20();
  v9 = *(v13 + 48);
  v10 = sub_2179E92A0();
  (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
  v11 = *(*(v13 + 56) + 8 * v6);
  sub_2179A17C8();
  sub_2179A1608(&qword_280B1E700, MEMORY[0x277CC95F0]);
  sub_2179E9C30();
  *v2 = v13;
  return v11;
}

void sub_2179B8A3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v4 = sub_21799E0E0(a2 & 1), (v5 & 1) != 0))
  {
    v6 = *(v2 + 56) + 24 * v4;
    v8 = *v6;
    v9 = *(v6 + 16);
    v7 = *(v6 + 8);
    sub_2179B8B4C(v10);
    sub_2179B8E94(v10[0], v10[1], v10[2], a2 & 1);
  }

  else
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    sub_2179E9920();
    sub_2179E93F0();
  }
}

id sub_2179B8B4C@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + 2);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *v1;
    v2 = *(v1 + 1);
    if (qword_280B1E6F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_2179E9420();
  __swift_project_value_buffer(v7, qword_280B1FF00);
  v25 = v2;
  v8 = sub_2179E9400();
  v9 = sub_2179E9910();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = 0xED0000776F4E6B73;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446466;
    v13 = v3;
    if (v3)
    {
      v14 = 0x61546873696E6946;
    }

    else
    {
      v14 = 0xD000000000000019;
    }

    if (!v3)
    {
      v10 = 0x80000002179F02F0;
    }

    v15 = sub_2179ABB6C(v14, v10, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2050;
    *(v11 + 14) = v6;
    _os_log_impl(&dword_217998000, v8, v9, "Decreasing interest in assertion. Name=%{public}s, New Interest Count=%{public}ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CEAA530](v12, -1, -1);
    MEMORY[0x21CEAA530](v11, -1, -1);
  }

  else
  {
    v13 = v3;
  }

  if (v6 < 1)
  {
    v17 = v25;
    v18 = sub_2179E9400();
    v19 = sub_2179E9910();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      if (v13)
      {
        v22 = 0x61546873696E6946;
      }

      else
      {
        v22 = 0xD000000000000019;
      }

      if (v13)
      {
        v23 = 0xED0000776F4E6B73;
      }

      else
      {
        v23 = 0x80000002179F02F0;
      }

      v24 = sub_2179ABB6C(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_217998000, v18, v19, "Assertion no longer has interest; invalidating assertion. Name=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CEAA530](v21, -1, -1);
      MEMORY[0x21CEAA530](v20, -1, -1);
    }

    result = [v17 invalidate];
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *a1 = v13;
    a1[1] = v25;
    a1[2] = v6;

    return v25;
  }

  return result;
}

void sub_2179B8E94(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_21799DF80(a1 & 1, a2, a3, a4 & 1);
    *v4 = v18;
  }

  else
  {
    v11 = *v4;
    v12 = sub_21799E0E0(a4 & 1);
    if (v13)
    {
      v14 = v12;
      v15 = *v5;
      swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v16 = *(*v5 + 24);
      sub_21799B5B8(0, &qword_280B1DC38, MEMORY[0x277D843B8]);
      sub_2179E9C20();
      v17 = *(*(v19 + 56) + 24 * v14 + 8);
      sub_21799B6A8();
      sub_2179E9C30();

      *v5 = v19;
    }
  }
}

char *sub_2179B9018(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

uint64_t Double.init(valueType:connection:)(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 16) == 3)
  {
    v2 = *a1;
    return __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t sub_2179B90D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = Double.init(valueType:connection:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t >= infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x3000000000000000);
}

uint64_t < infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x4000000000000000);
}

__n128 sub_2179B925C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2179B9270(uint64_t a1, int a2)
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

uint64_t sub_2179B9290(uint64_t result, int a2, int a3)
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

uint64_t sub_2179B9388()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2179B93C8()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2179B947C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_2179B94B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t sub_2179B94EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2179B9574()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2179B95A8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2179B95E0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2179B9674(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x72656765746E69;
      break;
    case 2:
      result = 1819242338;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 1651469410;
      break;
    case 5:
      result = 1819047278;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s5TeaDB8DatabaseC9CacheSizeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_22_0(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5TeaDB8DatabaseC9CacheSizeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2179B98A8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2179B98F8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

__n128 sub_2179B9A94(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2179B9AA8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_2179B9B14(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2179B9B58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2179B9C1C()
{
  v1 = OUTLINED_FUNCTION_1_1();
  sub_2179D2A3C(v1, v2, v3);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v6 | 7);
}

__n128 sub_2179B9D38(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2179B9DB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2179B9E40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2179BA01C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2179BA0B8()
{
  v1 = OUTLINED_FUNCTION_1_1();
  sub_2179E38A0(v1, v2, v3);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v6 | 7);
}

uint64_t sub_2179BA148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SearchColumn.description.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2179BA1C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2179BA200()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t KeyValueStore.__allocating_init(database:)(void *a1)
{
  v2 = swift_allocObject();
  KeyValueStore.init(database:)(a1);
  return v2;
}

uint64_t sub_2179BA328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v11 = sub_2179E9460();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2179E9480();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v26);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 56);

    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = a4;
    v20[5] = a5;
    v20[6] = v25;
    v20[7] = a1;
    aBlock[4] = sub_2179BD39C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2179A230C;
    aBlock[3] = &block_descriptor_86;
    v21 = _Block_copy(aBlock);

    sub_2179E9470();
    v28 = MEMORY[0x277D84F90];
    sub_21799F39C(&qword_280B1DD50, MEMORY[0x277D85198]);
    v22 = MEMORY[0x277D85198];
    sub_21799F4E0(0, &qword_280B1DD18, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21799F544(&qword_280B1DD10, &qword_280B1DD18, v22);
    sub_2179E9AA0();
    v23 = v24;
    MEMORY[0x21CEA98A0](0, v18, v14, v21);
    _Block_release(v21);

    (*(v27 + 8))(v14, v11);
    (*(v15 + 8))(v18, v26);
  }

  return result;
}

uint64_t sub_2179BA678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v7 + 48);

    type metadata accessor for KVSEntry();
    v9 = MEMORY[0x277D837D0];
    v10 = sub_2179E9550();

    swift_beginAccess();
    sub_2179E95B0();
    sub_2179E95A0();
    swift_endAccess();
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    sub_2179E9920();
    sub_21799ABE4();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2179EA820;
    v12 = MEMORY[0x277D83C10];
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 64) = v12;
    *(v11 + 32) = v10;
    v13 = (*(a4 + 8))(a2, a4);
    v15 = v14;
    *(v11 + 96) = v9;
    *(v11 + 104) = sub_21799C634();
    *(v11 + 72) = v13;
    *(v11 + 80) = v15;
    sub_2179E93F0();
  }

  return result;
}

uint64_t sub_2179BA8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  sub_2179E9920();
  sub_21799ABE4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2179EA820;
  v7 = (*(a4 + 8))(a2, a4);
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_21799C634();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_21799AC4C(0, &qword_280B1DBF8);
  sub_2179E9C10();
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0xE000000000000000;
  sub_2179E93F0();
}

uint64_t sub_2179BAA28(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[6];
  return sub_2179BA8BC(a1, v1[2], v1[3], v1[4]);
}

uint64_t sub_2179BAA38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 32);
  if (result)
  {
    *a2 = *(v3 + 24);
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179BAAA0(uint64_t a1)
{
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = *(a1 + 8);
  v7 = *(*v6 + 104);
  swift_beginAccess();
  sub_2179B819C(v6 + v7, v5);
  v8 = sub_2179E9270();
  result = __swift_getEnumTagSinglePayload(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2179ABB38();
    if (sub_2179E9610())
    {
      sub_2179AAF2C(0, &qword_280B1D6D0, sub_2179ABB38, MEMORY[0x277D83638]);
      v11 = *(v10 + 36);
      v12 = sub_2179E9620();
    }

    else
    {
      v12 = 0;
    }

    (*(*(v8 - 8) + 8))(v5, v8);
    return v12 & 1;
  }

  return result;
}

uint64_t sub_2179BAC64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = swift_beginAccess();
  v7 = *(a2 + 32);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v8 = *(a2 + 24);
    sub_2179B2DDC(v8, *(a2 + 32));
    sub_2179BAE88(a3);
    sub_2179B78D4(v8, v7);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, *(v5 + 88));
  }

  return result;
}

void sub_2179BAE88(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = MEMORY[0x21CEA9E60]();
  sub_2179BC200(v3[10], v3[11], v3[12], v3[13], v3[14], &v5, a1);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_2179BAF70(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = *(v6 + 80);
  v9 = *(v6 + 96);
  type metadata accessor for KVSEntity();

  v10 = sub_2179E97C0();
  v18 = v10;
  if (v10 == sub_2179E9820())
  {
  }

  v11 = a2[3];
  while (1)
  {
    v12 = sub_2179E9800();
    sub_2179E97E0();
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = (v7 + 32 + 24 * v10);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];

    sub_2179E9830();
    sub_2179E4CE8();
    sub_2179CE998();
    if (v3)
    {

      v3 = 0;
    }

    v10 = v18;
    if (v18 == sub_2179E9820())
    {
    }
  }

  result = sub_2179E9B20();
  __break(1u);
  return result;
}

uint64_t KeyValueStore.delete(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  OUTLINED_FUNCTION_12();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  OUTLINED_FUNCTION_12();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2179BB3E4;
  *(v6 + 24) = v5;
  v12[4] = sub_2179BD6C4;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_5();
  v12[2] = v7;
  v12[3] = &block_descriptor_46;
  v8 = _Block_copy(v12);

  dispatch_sync(v4, v8);
  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v1 + 16);
    OUTLINED_FUNCTION_12();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v2;
    LOBYTE(v12[0]) = 0;

    Database.asyncWrite(_:block:)(v12, sub_2179BB490, v11);

    return a1;
  }

  return result;
}

uint64_t sub_2179BB310(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1;
  swift_beginAccess();
  v4 = *(v2 + 80);
  v5 = *(v2 + 96);
  v6 = *(v1 + 112);
  type metadata accessor for KVSEntry();
  sub_2179E9370();
  return swift_endAccess();
}

uint64_t sub_2179BB3EC(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = (result + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      sub_2179E4CE8();

      sub_2179CEADC();
      if (v3)
      {

        v3 = 0;
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2179BB4D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 32);
  v8 = sub_2179E9A60();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v13 = *a3;
  v12 = a3[1];
  (*(v14 + 16))(&v17 - v10, a1);
  v15 = *a2;

  return KeyValueStore.subscript.setter(v11, v13, v12);
}

uint64_t KeyValueStore.subscript.setter(char *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 88);
  v8 = sub_2179E9A60();
  OUTLINED_FUNCTION_0_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = *(v7 - 8);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  (*(v10 + 16))(v15, a1, v8);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    v21 = *(v10 + 8);
    v22 = v21(v15, v8);
    OUTLINED_FUNCTION_7_0(v22, &qword_280B1DC20, MEMORY[0x277D837D0]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2179EA830;
    *(v23 + 32) = a2;
    *(v23 + 40) = a3;
    KeyValueStore.delete(_:)(v23);
    swift_bridgeObjectRelease_n();
    return v21(a1, v8);
  }

  else
  {
    v34 = v8;
    v35 = a1;
    (*(v16 + 32))(v20, v15, v7);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_2179E9D50();
    v25 = *(*(TupleTypeMetadata2 - 8) + 72);
    v26 = *(*(TupleTypeMetadata2 - 8) + 80);
    swift_allocObject();
    sub_2179E97D0();
    v27 = *(TupleTypeMetadata2 + 48);
    *v28 = a2;
    *(v28 + 1) = a3;
    (*(v16 + 16))(&v28[v27], v20, v7);
    sub_2179E9840();
    v29 = sub_2179E9540();
    KeyValueStore.write(_:)(v29);

    v32 = v34;
    v31 = v35;

    (*(v10 + 8))(v31, v32);
    return (*(v16 + 8))(v20, v7);
  }
}

void (*KeyValueStore.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 88);
  v10 = sub_2179E9A60();
  v7[3] = v10;
  v11 = *(v10 - 8);
  v7[4] = v11;
  v12 = *(v11 + 64);
  v7[5] = __swift_coroFrameAllocStub(v12);
  v7[6] = __swift_coroFrameAllocStub(v12);
  KeyValueStore.subscript.getter(a2, a3);
  return sub_2179BBA20;
}

void sub_2179BBA20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v9 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);

    KeyValueStore.subscript.setter(v3, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = v2[1];
    v10 = v2[2];
    v12 = *v2;

    KeyValueStore.subscript.setter(v4, v12, v11);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t KeyValueStore.Promises.delete(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  sub_21799F320();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179BBB6C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyValueStore.delete(_:)(a6);

    v9 = a6;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyValueStore.readAsync(_:)()
{
  OUTLINED_FUNCTION_13_0();
  v4 = v3;
  OUTLINED_FUNCTION_23();
  v5 = *(v1 + 112);
  v6 = *(v4 + 80);
  v7 = *(v4 + 96);
  v8 = OUTLINED_FUNCTION_4_0();
  v9 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v9);
  result = (*(v10 + 16))(v13, v2);
  if (v13[8])
  {
    __break(1u);
  }

  else
  {
    KeyValueStore.Promises.read(_:maxAge:)(v0, v8);
    OUTLINED_FUNCTION_17_1();
    (*(v12 + 8))(v13, v8);
    return v0;
  }

  return result;
}

uint64_t KeyValueStore.readAsync(_:maxAge:)()
{
  OUTLINED_FUNCTION_13_0();
  v4 = v3;
  OUTLINED_FUNCTION_23();
  v5 = *(v1 + 112);
  v6 = *(v4 + 80);
  v7 = *(v4 + 96);
  v8 = OUTLINED_FUNCTION_4_0();
  v9 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v9);
  result = (*(v10 + 16))(v13, v2);
  if (v13[8])
  {
    __break(1u);
  }

  else
  {
    KeyValueStore.Promises.read(_:maxAge:)(v0, v8);
    OUTLINED_FUNCTION_17_1();
    (*(v12 + 8))(v13, v8);
    return v0;
  }

  return result;
}

uint64_t sub_2179BBE38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *v2;
  OUTLINED_FUNCTION_22();
  v7 = v6;
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v9 = *(v8 + 112);
  v10 = *(v7 + 80);
  v11 = *(v7 + 96);
  v12 = OUTLINED_FUNCTION_4_0();
  v13 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v13);
  result = (*(v14 + 16))(v17, v2 + 9);
  if (v17[8])
  {
    __break(1u);
  }

  else
  {
    v16 = a2(a1, v12);
    (*(*(v12 - 8) + 8))(v17, v12);
    return v16;
  }

  return result;
}

uint64_t *KeyValueStore.deinit()
{
  v1 = *v0;
  v2 = *v0;
  v3 = v0[2];

  v4 = v0[3];

  v5 = v0[5];

  v6 = v0[6];

  v7 = v0[8];
  swift_unknownObjectRelease();
  v8 = *(v1 + 112);
  v9 = *(v2 + 80);
  v10 = *(v2 + 96);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9();
  v11 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v11);
  (*(v12 + 8))(v0 + 9);
  return v0;
}

uint64_t KeyValueStore.__deallocating_deinit()
{
  KeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2179BC094()
{
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](0);
  return sub_2179E9E40();
}

uint64_t sub_2179BC168(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v6 = a3[4];
  v5 = a3[5];
  v7 = a3[6];
  return sub_2179ABDB4();
}

uint64_t sub_2179BC17C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  return sub_2179BC094();
}

uint64_t sub_2179BC190(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  return sub_2179BC06C();
}

uint64_t sub_2179BC1A4(uint64_t a1, void *a2)
{
  sub_2179E9E20();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  sub_2179BC06C();
  return sub_2179E9E40();
}

uint64_t sub_2179BC200@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X7>, uint64_t a7@<X8>)
{
  v37 = a6;
  v25 = a5;
  v28 = a1;
  v29 = a3;
  v27 = a7;
  v10 = sub_2179E9A60();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = sub_2179E92D0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_2179E92C0();
  sub_2179E95B0();
  v35 = MEMORY[0x277D83808];
  v36 = a4;
  swift_getWitnessTable();
  sub_2179E92B0();
  v17 = v7;

  if (v7)
  {
    goto LABEL_4;
  }

  v24 = a4;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  v30 = 118;
  v31 = 0xE100000000000000;
  sub_2179E95C0();

  if (__swift_getEnumTagSinglePayload(v13, 1, a2) == 1)
  {
    (*(v19 + 8))(v13, v10);
    v30 = v21;
    v31 = a2;
    v32 = v22;
    v33 = v24;
    v34 = v25;
    type metadata accessor for KeyValueStore.TranslationError();
    swift_getWitnessTable();
    v17 = swift_allocError();
    result = swift_willThrow();
LABEL_4:
    *v37 = v17;
    return result;
  }

  return (*(*(a2 - 8) + 32))(v20, v13, a2);
}

uint64_t sub_2179BC49C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2179E9D70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4164657461647075 && a2 == 0xE900000000000074;
    if (v6 || (sub_2179E9D70() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F734A65756C6176 && a2 == 0xE90000000000006ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_2179E9D70();

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

uint64_t sub_2179BC5F0(unsigned __int8 a1)
{
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](a1);
  return sub_2179E9E40();
}

uint64_t sub_2179BC644(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x4164657461647075;
  }

  return 0x6F734A65756C6176;
}

BOOL sub_2179BC69C(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_2179BC5B8(*a1, *a2);
}

uint64_t sub_2179BC6B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2179BC5F0(*v1);
}

uint64_t sub_2179BC6BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_2179BC5C8(a1, *v2);
}

uint64_t sub_2179BC6C8(uint64_t a1, uint64_t a2)
{
  sub_2179E9E20();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_2179BC5C8(v7, *v2);
  return sub_2179E9E40();
}

uint64_t sub_2179BC710(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2179BC644(*v1);
}

uint64_t sub_2179BC71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2179BC49C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2179BC74C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *v1;
  return sub_2179BC638();
}

uint64_t sub_2179BC770@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_2179BC5B0();
  *a2 = result;
  return result;
}

uint64_t sub_2179BC7A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179BC7F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2179BC848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v15 = a4;
  type metadata accessor for KVSEntity.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_2179E9D30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v19 = a2;
  v18 = 0;
  sub_2179AD4A0();
  sub_21799F39C(&qword_27CB97BB0, sub_2179AD4A0);
  v12 = v17;
  sub_2179E9D20();
  if (!v12)
  {
    v13 = v15;
    v19 = v16;
    v18 = 1;
    sub_2179AAF2C(0, &qword_280B1D7E0, sub_2179AAFA8, type metadata accessor for Column);
    sub_2179BD2C0(&qword_27CB97BB8);
    sub_2179E9D20();
    v19 = v13;
    v18 = 2;
    sub_2179AAFDC();
    sub_21799F39C(qword_27CB97BC0, sub_2179AAFDC);
    sub_2179E9D20();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2179BCB10(uint64_t *a1)
{
  v2 = type metadata accessor for KVSEntity.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v34 = sub_2179E9CD0();
  v33 = *(v34 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v36 = v32 - v4;
  sub_21799F4E0(0, &qword_280B1D7F0, sub_2179AAEF8, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  sub_2179AD4A0();
  v32[2] = v12;
  swift_initStackObject();
  sub_2179A7DE0();
  v35 = v13;
  sub_2179AAEF8(0);
  v15 = v14;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  sub_2179AAF2C(0, &qword_280B1D7E0, sub_2179AAFA8, type metadata accessor for Column);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_2179AD6B4();
  v20 = v19;
  sub_2179AAFDC();
  v22 = v21;
  swift_initStackObject();
  sub_2179ADBE4();
  v24 = v23;
  v26 = a1[3];
  v25 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v36;
  v28 = v38;
  sub_2179E9E90();
  if (v28)
  {
  }

  else
  {
    v32[1] = v22;
    WitnessTable = v20;
    v38 = v24;
    v29 = v33;
    v40 = 0;
    sub_21799F39C(&qword_27CB97B98, sub_2179AD4A0);
    v30 = v34;
    sub_2179E9CC0();

    v2 = v41;
    v40 = 1;
    sub_2179BD2C0(&qword_27CB97BA0);
    sub_2179E9CC0();

    v40 = 2;
    sub_21799F39C(&qword_27CB97BA8, sub_2179AAFDC);
    sub_2179E9CC0();
    (*(v29 + 8))(v27, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return v2;
}

uint64_t sub_2179BD0A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_2179BCB10(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
  }

  return result;
}

uint64_t sub_2179BD0D8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_2179BC848(a1, *v2, v2[1], v2[2]);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2179BD1CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2179BD1EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2179BD24C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2179BD26C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2179BD2C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2179AAF2C(255, &qword_280B1D7E0, sub_2179AAFA8, type metadata accessor for Column);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179BD34C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  return sub_2179BAAA0(a1) & 1;
}

uint64_t sub_2179BD374@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return sub_2179BAA38(a1, a2);
}

uint64_t getEnumTagSinglePayload for RowID.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *sub_2179BD428(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Transaction(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2179BD554(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Optional<A>.valueType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_2();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17, v21);
  result = __swift_getEnumTagSinglePayload(v19, 1, v5);
  if (result == 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 5;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_7_1();
    v24(v23);
    (*(a2 + 40))(v5, a2);
    return (*(v7 + 8))(v13, v5);
  }

  return result;
}

uint64_t Optional<A>.saveChain(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
  {
    return 0;
  }

  v18 = OUTLINED_FUNCTION_7_1();
  v19(v18);
  v17 = (*(a3 + 8))(a1, v5, a3);
  (*(v6 + 8))(v10, v5);
  return v17;
}

uint64_t _Optional.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2179E9A60();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t _Optional.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_2179E9A60();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 40);

  return v8(v2, a1, v6);
}

uint64_t _Optional.valueType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  (*(v9 + 16))(&v20 - v13, v3, v7);
  v15 = OUTLINED_FUNCTION_10_2();
  if (__swift_getEnumTagSinglePayload(v15, v16, v6) == 1)
  {
    result = (*(v9 + 8))(v14, v7);
    v18 = 0uLL;
    v19 = 5;
  }

  else
  {
    (*(*(a1 + 24) + 40))(&v21, v6);
    v20 = v21;
    v19 = v22;
    result = (*(*(v6 - 8) + 8))(v14, v6);
    v18 = v20;
  }

  *a2 = v18;
  *(a2 + 16) = v19;
  return result;
}

uint64_t _Optional.init(valueType:connection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2();
  v70[1] = v6;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v70 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v70 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v70 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v70 - v22;
  __swift_destroy_boxed_opaque_existential_1(v24);
  v26 = *a1;
  v25 = *(a1 + 8);
  v27 = *(a1 + 16);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_4_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  switch(v27)
  {
    case 1:
      v71 = v26;
      if (!OUTLINED_FUNCTION_8_0())
      {
        goto LABEL_18;
      }

      v56 = OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_1(v56);
      (*(v57 + 8))(a3);
      v51 = OUTLINED_FUNCTION_3_0();
      v53 = v21;
      goto LABEL_12;
    case 2:
      LOBYTE(v71) = v26 & 1;
      if ((OUTLINED_FUNCTION_8_0() & 1) == 0)
      {
        goto LABEL_18;
      }

      v49 = OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_1(v49);
      (*(v50 + 8))(a3);
      v51 = OUTLINED_FUNCTION_3_0();
      v53 = v15;
      goto LABEL_12;
    case 3:
      v71 = v26;
      if ((OUTLINED_FUNCTION_8_0() & 1) == 0)
      {
        goto LABEL_18;
      }

      v54 = OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_1(v54);
      (*(v55 + 8))(a3);
      v51 = OUTLINED_FUNCTION_3_0();
      v53 = v18;
LABEL_12:
      v52(v51, v53, a2);
      goto LABEL_19;
    case 4:
      v71 = v26;
      v72 = v25;
      if (OUTLINED_FUNCTION_8_0())
      {
        v41 = OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_0_1(v41);
        (*(v42 + 8))(a3);
        v43 = OUTLINED_FUNCTION_3_0();
        v44(v43, v12, a2);
        OUTLINED_FUNCTION_4_1();
        __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
        return sub_2179B314C(v71, v72);
      }

      sub_2179B314C(v71, v72);
      goto LABEL_18;
    case 5:
      v58 = OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_1(v58);
      (*(v59 + 8))(a3);
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_4_1();

      return __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    default:
      v71 = v26;
      v72 = v25;
      if (OUTLINED_FUNCTION_8_0())
      {
        v32 = OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_0_1(v32);
        (*(v33 + 8))(a3);
        v34 = OUTLINED_FUNCTION_3_0();
        v35(v34, v23, a2);
        OUTLINED_FUNCTION_4_1();
        __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
      }

      else
      {

LABEL_18:
        v64 = OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_0_1(v64);
        (*(v65 + 8))(a3);
        OUTLINED_FUNCTION_10_2();
LABEL_19:
        OUTLINED_FUNCTION_4_1();
        return __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
      }
  }
}

uint64_t _Optional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_4_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_6_0();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = *(v10 + 40);

  return v11(a2, a1, v9);
}

uint64_t _Optional.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v8 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v27 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v28 = a3;
  v33 = type metadata accessor for _Optional();
  OUTLINED_FUNCTION_2();
  v30 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, a2);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E80();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v30 + 8))(v20, v33);
  }

  else
  {
    v26 = v8;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    if ((sub_2179E9D90() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v23 = *(v28 + 8);
      sub_2179E9D80();
      __swift_storeEnumTagSinglePayload(v14, 0, 1, a2);
      (*(v27 + 40))(v20, v14, v26);
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
    v24 = v30;
    v25 = v33;
    (*(v30 + 16))(v29, v20, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v24 + 8))(v20, v25);
  }
}

uint64_t _Optional.encode(to:)(void *a1, uint64_t a2)
{
  v24 = a2;
  v3 = *(a2 + 16);
  v4 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v19 = v18 - v17;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EA0();
  (*(v6 + 16))(v11, v25, v4);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    (*(v6 + 8))(v11, v4);
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    sub_2179E9DB0();
  }

  else
  {
    (*(v13 + 32))(v19, v11, v3);
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v21 = *(*(v24 + 24) + 16);
    sub_2179E9DA0();
    (*(v13 + 8))(v19, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
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

uint64_t sub_2179BE6B0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2179BE748(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_2179E9A60();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2179BE7B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2179BE930(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2179BEB58(char a1, uint64_t a2, uint64_t a3)
{
  sub_2179A7E4C();
  v7 = v6;
  v8 = *(v6 + 16);
  v9 = v8 + 1;
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v27;
  }

  *(v7 + 16) = v9;
  v10 = v7 + 16 * v8;
  *(v10 + 32) = 0xD000000000000014;
  *(v10 + 40) = 0x80000002179EFB30;
  if (a1)
  {
    if ((v8 + 2) > *(v7 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v33;
    }

    *(v7 + 16) = v8 + 2;
    v11 = v7 + 16 * v9;
    strcpy((v11 + 32), "IF NOT EXISTS");
    *(v11 + 46) = -4864;
  }

  v12 = (*(*(a3 + 8) + 32))(a2);
  v14 = v13;
  v15 = *(v7 + 16);
  v16 = *(v7 + 24) >> 1;
  v17 = v15 + 1;
  if (v16 <= v15)
  {
    sub_2179A7E4C();
    v7 = v28;
    v16 = *(v28 + 24) >> 1;
  }

  *(v7 + 16) = v17;
  v18 = v7 + 16 * v15;
  *(v18 + 32) = v12;
  *(v18 + 40) = v14;
  if (v16 < (v15 + 2))
  {
    sub_2179A7E4C();
    v7 = v29;
  }

  *(v7 + 16) = v15 + 2;
  v19 = v7 + 16 * v17;
  *(v19 + 32) = 0x474E495355;
  *(v19 + 40) = 0xE500000000000000;
  sub_2179BEE3C(v7, a2, a3);
  v20 = sub_2179BEFF0(v7, a2, a3);
  sub_2179A922C(v20);
  sub_2179A5088();
  sub_2179A4B34();
  v21 = sub_2179E95F0();
  v23 = v22;

  MEMORY[0x21CEA9600](v21, v23);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = *(v7 + 16);
    sub_2179A7E4C();
    v7 = v31;
  }

  v24 = *(v7 + 16);
  if (v24 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v32;
  }

  *(v7 + 16) = v24 + 1;
  v25 = v7 + 16 * v24;
  *(v25 + 32) = 0x2835737466;
  *(v25 + 40) = 0xE500000000000000;
  return v7;
}

uint64_t sub_2179BEE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(*(*(v9 + 8) + 24) + 8))(a2);
  (*(a3 + 16))(v21, a2, a3);
  v10 = v21[1];

  v20 = v10;
  v17 = a2;
  v18 = a3;
  v19 = v8;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();
  v11 = sub_2179E9840();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_2179A2E44(sub_2179BF580, v16, v11, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  (*(v5 + 8))(v8, a2);
  return v14;
}

uint64_t sub_2179BEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 24);
  v6 = *(v5(a2, a3) + 16);

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = v5(a2, v3);
    v9 = *(v8 + 16);
    if (v9)
    {
      v35 = v3;
      *&v38 = v7;
      sub_2179A920C(0, v9, 0);
      v10 = 32;
      do
      {
        v36 = *(v8 + v10);
        v11 = sub_2179E9D40();
        v13 = v12;
        *&v38 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2179A920C(v14 > 1, v15 + 1, 1);
          v7 = v38;
        }

        *(v7 + 16) = v15 + 1;
        v16 = v7 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        v10 += 8;
        --v9;
      }

      while (v9);

      v3 = v35;
    }

    else
    {
    }

    sub_2179A5088();
    sub_2179A4B34();
    v17 = sub_2179E95F0();
    v19 = v18;

    *&v38 = 0x3D20786966657270;
    *(&v38 + 1) = 0xEA00000000002220;
    MEMORY[0x21CEA9600](v17, v19);

    MEMORY[0x21CEA9600](34, 0xE100000000000000);
    v20 = v38;
    sub_2179A7E4C();
    v7 = v21;
    v22 = *(v21 + 16);
    if (v22 >= *(v21 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v34;
    }

    *(v7 + 16) = v22 + 1;
    *(v7 + 16 * v22 + 32) = v20;
  }

  strcpy(v37, "tokenize = ");
  BYTE5(v37[1]) = 0;
  HIWORD(v37[1]) = -5120;
  (*(v3 + 32))(&v38, a2, v3);
  v23 = sub_2179DD784();
  v25 = v24;
  sub_2179BF52C(&v38);
  MEMORY[0x21CEA9600](v23, v25);

  MEMORY[0x21CEA9600](34, 0xE100000000000000);
  v26 = v37[0];
  v27 = v37[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = *(v7 + 16);
    sub_2179A7E4C();
    v7 = v32;
  }

  v28 = *(v7 + 16);
  if (v28 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v33;
  }

  *(v7 + 16) = v28 + 1;
  v29 = v7 + 16 * v28;
  *(v29 + 32) = v26;
  *(v29 + 40) = v27;
  return v7;
}

uint64_t sub_2179BF338@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getAtKeyPath();
  v4 = *(v21 + 16);
  os_unfair_lock_lock((v4 + 64));
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 64));
  sub_2179A7E4C();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v8 = v19;
  }

  *(v8 + 16) = v9 + 1;
  v10 = v8 + 16 * v9;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  v11 = *(v21 + 16);
  os_unfair_lock_lock((v11 + 64));
  v12 = *(v11 + 40);
  os_unfair_lock_unlock((v11 + 64));
  if (v12 == 1)
  {
    v13 = *(v8 + 16);
    if (v13 >= *(v8 + 24) >> 1)
    {
      sub_2179A7E4C();
      v8 = v20;
    }

    *(v8 + 16) = v13 + 1;
    v14 = v8 + 16 * v13;
    *(v14 + 32) = 0x455845444E494E55;
    *(v14 + 40) = 0xE900000000000044;
  }

  sub_2179A5088();
  sub_2179A4B34();
  v15 = sub_2179E95F0();
  v17 = v16;

  *a2 = v15;
  a2[1] = v17;
  return result;
}

uint64_t sub_2179BF580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_2179BF338(a1, a2);
}

uint64_t sub_2179BF5A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t DataType.hashValue.getter()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t sub_2179BF674()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

unint64_t sub_2179BF6BC()
{
  result = qword_27CB97E10;
  if (!qword_27CB97E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DataType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2179BF874(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  static EntityType.dataType.getter(a1);
}

uint64_t sub_2179BF8B8()
{
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();

  return EntityType.valueType.getter(v0, v1);
}

uint64_t sub_2179BF904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  swift_beginAccess();
  result = *(v4 + 32);
  if (result)
  {
    *a2 = *(v4 + 24);
    *(a2 + 8) = result;
    *(a2 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EntityType.valueType.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 24))();
  swift_beginAccess();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  if (v4)
  {
    *a2 = v5;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179BF9F8()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_8_1(WitnessTable);
}

uint64_t sub_2179BFA30(uint64_t a1, unint64_t a2, char a3, uint64_t *a4)
{
  if (!a3)
  {
    v25 = MEMORY[0x277D837D0];
    v26 = &protocol witness table for String;
    *&v24 = a1;
    *(&v24 + 1) = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = 25705;
    *(v7 + 24) = 0xE200000000000000;
    sub_2179A0D5C(&v24, v7 + 32);
    *&v24 = v7;

    v15 = sub_2179A9A0C(v8, v9, v10, v11, v12, v13, v14);
    v17 = sub_2179E5D00(42, 0xE100000000000000, v15, v16, 0, 0, 0, 1, 0, 1);

    *&v24 = v17;
    sub_2179A5088();
    sub_2179A4B34();
    *&v24 = sub_2179E95F0();
    *(&v24 + 1) = v18;

    MEMORY[0x21CEA9600](59, 0xE100000000000000);

    v19 = v24;
    sub_2179A70AC(a4, &v24);
    sub_2179C0E78();
    swift_initStackObject();
    sub_2179A935C(3, v19, *(&v19 + 1), &v24);
    v20 = sub_2179A5760();

    if (v20[2])
    {
      v21 = v20[4];
      v22 = v20[5];

      sub_2179AC53C(a1, a2, 0);
      __swift_destroy_boxed_opaque_existential_1(a4);
      return v21;
    }

    __break(1u);

    __break(1u);
  }

  result = sub_2179E9C40();
  __break(1u);
  return result;
}

uint64_t EntityType.init(valueType:connection:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2179E9A60();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  if (!*(a1 + 16))
  {
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a4 + 8);
    v17 = *(v16 + 24);
    type metadata accessor for Statement();
    v31 = 3;
    v29 = MEMORY[0x277D837D0];
    v30 = &protocol witness table for String;
    *&v27 = v14;
    *(&v27 + 1) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = 25705;
    *(v18 + 24) = 0xE200000000000000;
    sub_2179A0D5C(&v27, v18 + 32);
    v26 = v18;
    v27 = 0uLL;
    v28 = -1;

    sub_2179D1704(&v26, &v27, 0, 1, 0, 1, a3, v16);
    sub_2179B0CEC(v26);
    v19 = sub_2179ABC9C();
    v21 = v20;

    sub_2179A70AC(a2, &v27);
    v22 = sub_2179AC76C(&v31, v19, v21, &v27);
    v23 = sub_2179AC7D4(v22);

    *&v27 = v23;
    sub_2179E9840();
    swift_getWitnessTable();
    sub_2179E98C0();
    if (__swift_getEnumTagSinglePayload(v13, 1, a3) != 1)
    {

      sub_2179AC53C(v14, v15, 0);
      __swift_destroy_boxed_opaque_existential_1(a2);
      return (*(*(a3 - 8) + 32))(a5, v13, a3);
    }

    __break(1u);
  }

  result = sub_2179E9C40();
  __break(1u);
  return result;
}

uint64_t (*sub_2179BFF38())()
{
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_1(WitnessTable);
  return OUTLINED_FUNCTION_3_1();
}

uint64_t (*sub_2179BFF74(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  sub_2179A70AC(a1, v7);
  v5 = swift_allocObject();
  sub_2179A0D5C(v7, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;

  return sub_2179C0F58;
}

uint64_t (*EntityType.saveChain(for:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  sub_2179A70AC(v11, v16);
  (*(v7 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v12 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  sub_2179A0D5C(v16, v13 + 32);
  (*(v7 + 32))(v13 + v12, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_2179C012C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static EntityType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t (*sub_2179C0174(uint64_t a1, char a2))()
{
  sub_2179A70AC(a1, v5);
  v3 = swift_allocObject();
  sub_2179A0D5C(v5, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 57) = 1;
  return sub_2179C10A0;
}

uint64_t (*sub_2179C0214())()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2(WitnessTable);
  return OUTLINED_FUNCTION_4_2();
}

uint64_t (*sub_2179C0250(uint64_t a1, char a2, char a3))()
{
  sub_2179A70AC(a1, v7);
  v5 = swift_allocObject();
  sub_2179A0D5C(v7, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 57) = a3;
  return sub_2179C0ED0;
}

uint64_t (*static EntityType.createTableChain(for:ifNotExists:shouldVersion:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5))()
{
  sub_2179A70AC(a1, v11);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  sub_2179A0D5C(v11, v9 + 32);
  *(v9 + 72) = a2;
  *(v9 + 73) = a3;
  return OUTLINED_FUNCTION_4_2();
}

uint64_t sub_2179C0354(uint64_t a1, char a2, char a3)
{
  sub_2179A70AC(a1, v15);
  sub_2179A0D5C(v15, v14);
  sub_2179A70AC(v14, v13);
  sub_2179A70AC(v14, v12);
  v5 = sub_2179A0BF8(v12);
  v7 = v6;
  v9 = v8;
  sub_2179C0F78(0, qword_280B1DF38, sub_2179A0730, &type metadata for Versions.Entity, type metadata accessor for Create);
  inited = swift_initStackObject();
  sub_2179A0D5C(v13, (inited + 2));
  inited[7] = v5;
  inited[8] = v7;
  inited[9] = v9;
  sub_2179A7BC0(a2, a3);
  swift_setDeallocating();
  sub_2179C0EF4();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_2179C0478(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for Table();
  sub_2179A70AC(a1, v7);
  sub_2179A8074(v7);
  sub_2179A6BC4();
  sub_2179A77F8(a2, a3);
}

uint64_t sub_2179C0520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2179A70AC(a1, v9);
  sub_2179A0D5C(v9, v8);
  sub_2179A70AC(v8, v7);
  sub_2179C0F78(0, qword_280B1E1D8, sub_2179A0E88, &type metadata for Versions.Entity, type metadata accessor for Save);
  inited = swift_initStackObject();
  sub_2179A0D5C(v7, inited + 16);
  sub_2179AFCA4(a2, a3);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_2179C0610(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Table();
  sub_2179A70AC(a1, v5);
  sub_2179A8074(v5);
  sub_2179B69CC();
  sub_2179B69F8(a2);
}

uint64_t sub_2179C06FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2179C0478(v0 + 32, *(v0 + 72), *(v0 + 73));
}

uint64_t sub_2179C0764(void *a1)
{
  sub_2179C0F78(0, &qword_27CB97E18, sub_2179C0E24, &type metadata for RawEntity.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  OUTLINED_FUNCTION_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179C0E24();
  sub_2179E9EB0();
  return (*(v5 + 8))(v10, v3);
}

uint64_t sub_2179C08C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179C0738();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2179C0910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179ABDB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2179C093C(uint64_t a1)
{
  v2 = sub_2179C0E24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179C0978(uint64_t a1)
{
  v2 = sub_2179C0E24();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2179C09F8(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  static EntityType.dataType.getter(a1);
}

uint64_t sub_2179C0A2C()
{
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();

  return EntityType.valueType.getter(v0, v1);
}

uint64_t sub_2179C0A78()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_1();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_8_1(WitnessTable);
}

uint64_t (*sub_2179C0AB0())()
{
  OUTLINED_FUNCTION_2_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_1(WitnessTable);
  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_2179C0AEC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static EntityType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t (*sub_2179C0B34())()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2(WitnessTable);
  return OUTLINED_FUNCTION_4_2();
}

uint64_t sub_2179C0B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2179BFA30(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_2179C0BC4(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  static EntityType.dataType.getter(a1);
}

uint64_t sub_2179C0BF8()
{
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();

  return EntityType.valueType.getter(v0, v1);
}

uint64_t sub_2179C0C44()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_3();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_8_1(WitnessTable);
}

uint64_t (*sub_2179C0C7C())()
{
  OUTLINED_FUNCTION_0_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_1(WitnessTable);
  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_2179C0CB8()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static EntityType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t (*sub_2179C0D00())()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2(WitnessTable);
  return OUTLINED_FUNCTION_4_2();
}

unint64_t sub_2179C0D4C(uint64_t a1)
{
  *(a1 + 8) = sub_2179C0D7C();
  result = sub_2179C0DD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2179C0D7C()
{
  result = qword_280B1D6B0;
  if (!qword_280B1D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1D6B0);
  }

  return result;
}

unint64_t sub_2179C0DD0()
{
  result = qword_280B1D6B8;
  if (!qword_280B1D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1D6B8);
  }

  return result;
}

unint64_t sub_2179C0E24()
{
  result = qword_27CB97E20;
  if (!qword_27CB97E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E20);
  }

  return result;
}

void sub_2179C0E78()
{
  if (!qword_280B1DD58[0])
  {
    v0 = type metadata accessor for Statement();
    if (!v1)
    {
      atomic_store(v0, qword_280B1DD58);
    }
  }
}

uint64_t sub_2179C0EF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];
  v2 = v0[9];
  sub_2179AE270(v0[7]);

  return swift_deallocClassInstance();
}

void sub_2179C0F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2179C0FF4()
{
  result = qword_27CB97E28;
  if (!qword_27CB97E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E28);
  }

  return result;
}

unint64_t sub_2179C104C()
{
  result = qword_27CB97E30;
  if (!qword_27CB97E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E30);
  }

  return result;
}

uint64_t sub_2179C10B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  switch(*v7 >> 62)
  {
    case 1uLL:
      v16 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *(a1 + 16);
      v18 = *(*(a1 + 24) + 8);
      v19 = *(v18 + 32);

      v22 = v19(v17, v18);
      MEMORY[0x21CEA9600](0x2720484354414D20, 0xE800000000000000);
      matched = type metadata accessor for SearchMatchExpression();
      v21 = sub_2179C1274(matched);
      MEMORY[0x21CEA9600](v21);

      MEMORY[0x21CEA9600](39, 0xE100000000000000);

      goto LABEL_7;
    case 2uLL:
      v11 = OUTLINED_FUNCTION_4_3(v8);
      MEMORY[0x21CEA9600](v11);

      v12 = 0x2820444E412029;
      v13 = 0xE700000000000000;
      goto LABEL_5;
    case 3uLL:
      v14 = OUTLINED_FUNCTION_4_3(v8);
      MEMORY[0x21CEA9600](v14);

      v12 = 0x2820524F2029;
      v13 = 0xE600000000000000;
LABEL_5:
      MEMORY[0x21CEA9600](v12, v13);
      v15 = sub_2179C10B8(a1);
      MEMORY[0x21CEA9600](v15);

      MEMORY[0x21CEA9600](41, 0xE100000000000000);
LABEL_7:
      result = v22;
      break;
    default:
      v23 = *(v8 + 16);
      result = sub_2179A9A0C(a1, a2, a3, a4, a5, a6, a7);
      break;
  }

  return result;
}

uint64_t sub_2179C1274(uint64_t a1)
{
  v3 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v38 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v39 = *(v38 + 16);
      v40 = *(v38 + 24);
      v41 = *(v39 + 16);
      if (v41)
      {
        v72 = MEMORY[0x277D84F90];
        sub_2179A920C(0, v41, 0);
        v42 = v72;
        v43 = (v39 + 32);
        do
        {
          v44 = *v43++;
          v71 = v44;
          v45 = sub_2179C1BC8();
          v47 = v46;
          v72 = v42;
          v49 = *(v42 + 16);
          v48 = *(v42 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_2179A920C(v48 > 1, v49 + 1, 1);
            v42 = v72;
          }

          *(v42 + 16) = v49 + 1;
          v50 = v42 + 16 * v49;
          *(v50 + 32) = v45;
          *(v50 + 40) = v47;
          --v41;
        }

        while (v41);
      }

      v51 = OUTLINED_FUNCTION_0_4();
      sub_2179A823C(v51, v52, v53, v54);
      sub_2179A4B34();
      v55 = sub_2179E95F0();
      v57 = v56;

      v72 = 0x285241454ELL;
      v73 = 0xE500000000000000;
      MEMORY[0x21CEA9600](v55, v57);

      MEMORY[0x21CEA9600](8236, 0xE200000000000000);
      v71 = v40;
      v58 = sub_2179E9D40();
      goto LABEL_26;
    case 2uLL:
      v18 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      v72 = 0;
      v73 = 0xE000000000000000;
      if (v19)
      {
        v22 = 8237;
      }

      else
      {
        v22 = 0;
      }

      if (v19)
      {
        v23 = 0xE200000000000000;
      }

      else
      {
        v23 = 0xE000000000000000;
      }

      MEMORY[0x21CEA9600](v22, v23);

      v24 = MEMORY[0x21CEA9600](123, 0xE100000000000000);
      v71 = v20;
      MEMORY[0x28223BE20](v24);
      v69 = *(a1 + 16);
      v68[1] = v69;
      type metadata accessor for SearchColumn();
      sub_2179E9EC0();
      v25 = sub_2179E9840();
      WitnessTable = swift_getWitnessTable();
      v27 = MEMORY[0x277D837D0];
      v71 = sub_2179A2E44(sub_2179C2778, v68, v25, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v28);
      v29 = OUTLINED_FUNCTION_0_4();
      sub_2179A823C(v29, v30, v27, v31);
      sub_2179A4B34();
      v32 = sub_2179E95F0();
      v34 = v33;

      MEMORY[0x21CEA9600](v32, v34);

      MEMORY[0x21CEA9600](540680317, 0xE400000000000000);
      v71 = v21;
      v35 = sub_2179C1274(a1);
      MEMORY[0x21CEA9600](v35);
      goto LABEL_28;
    case 3uLL:
      v36 = OUTLINED_FUNCTION_1_6(v3);
      MEMORY[0x21CEA9600](v36);

      v37 = 0x20444E412029;
      goto LABEL_24;
    case 4uLL:
      v15 = OUTLINED_FUNCTION_1_6(v3);
      MEMORY[0x21CEA9600](v15);

      v16 = 0x2820524F2029;
      v17 = 0xE600000000000000;
      goto LABEL_25;
    case 5uLL:
      v59 = OUTLINED_FUNCTION_1_6(v3);
      MEMORY[0x21CEA9600](v59);

      v37 = 0x20544F4E2029;
LABEL_24:
      v16 = v37 & 0xFFFFFFFFFFFFLL | 0x28000000000000;
      v17 = 0xE700000000000000;
LABEL_25:
      MEMORY[0x21CEA9600](v16, v17);
      v71 = v2;
      v58 = sub_2179C1274(a1);
LABEL_26:
      MEMORY[0x21CEA9600](v58);

      MEMORY[0x21CEA9600](41, 0xE100000000000000);
      break;
    default:
      v5 = *(v3 + 16);
      v72 = 0;
      v73 = 0xE000000000000000;
      v6 = *(v5 + 16);
      v7 = MEMORY[0x277D84F90];
      if (v6)
      {
        v71 = MEMORY[0x277D84F90];

        sub_2179A920C(0, v6, 0);
        v8 = 32;
        v7 = v71;
        do
        {
          v70 = *(v5 + v8);
          v9 = sub_2179C1BC8();
          v11 = v10;
          v71 = v7;
          v13 = *(v7 + 16);
          v12 = *(v7 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_2179A920C(v12 > 1, v13 + 1, 1);
            v7 = v71;
          }

          *(v7 + 16) = v13 + 1;
          v14 = v7 + 16 * v13;
          *(v14 + 32) = v9;
          *(v14 + 40) = v11;
          v8 += 8;
          --v6;
        }

        while (v6);
      }

      v71 = v7;
      v60 = OUTLINED_FUNCTION_0_4();
      sub_2179A823C(v60, v61, v62, v63);
      sub_2179A4B34();
      v64 = sub_2179E95F0();
      v66 = v65;

      MEMORY[0x21CEA9600](v64, v66);
LABEL_28:

      break;
  }

  return v72;
}

void static SearchMatchExpression.userSearchQuery(_:language:)(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  if (a1)
  {
    v5 = sub_2179E9640();
    [v4 setLanguage_];
  }

  v6 = sub_2179E9640();
  [v4 setString_];

  v7 = sub_2179E9900();
  if (!*(v7 + 16))
  {

    v26 = 0xF000000000000007;
    goto LABEL_17;
  }

  v36 = v4;

  v37 = v7;
  sub_2179C1B08(1, v7);
  v11 = v10 >> 1;
  v12 = (v10 >> 1) - v9;
  if (__OFSUB__(v10 >> 1, v9))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = a2;
  if (!v12)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
LABEL_15:
    sub_2179C1BA0(v37);
    if (v27)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_15_0();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_12();
    v29 = swift_allocObject();

    v30 = sub_2179E9780();
    v31 = MEMORY[0x21CEA9590](v30);
    v33 = v32;

    *(v29 + 16) = v31;
    *(v29 + 24) = v33;
    *(v28 + 16) = v29;
    OUTLINED_FUNCTION_15_0();
    v26 = swift_allocObject();
    sub_2179A823C(0, &qword_27CB97E38, &type metadata for SearchMatchPhrase, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2179EA830;
    *(inited + 32) = v28 | 0x8000000000000000;

    sub_2179C1F6C(inited);

    *(v26 + 16) = v15;
    a2 = v35;
LABEL_17:
    *a2 = v26;
    return;
  }

  v13 = v8;
  v14 = v9;
  v38 = MEMORY[0x277D84F90];
  sub_2179C2138(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = v38;
    v16 = (v13 + 16 * v14 + 8);
    while (v14 < v11)
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      OUTLINED_FUNCTION_12();
      v19 = swift_allocObject();
      v20 = sub_2179E9780();
      v21 = MEMORY[0x21CEA9590](v20);
      v23 = v22;

      *(v19 + 16) = v21;
      *(v19 + 24) = v23;
      v25 = *(v38 + 16);
      v24 = *(v38 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2179C2138(v24 > 1, v25 + 1, 1);
      }

      *(v38 + 16) = v25 + 1;
      *(v38 + 8 * v25 + 32) = v19;
      ++v14;
      v16 += 2;
      if (v11 == v14)
      {
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2179C1B08(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2179C2880(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_2179C2814(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2179C1BA0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  result = *v4;
  v6 = v4[1];
  return result;
}

uint64_t sub_2179C1BC8()
{
  v1 = *v0;
  switch(*v0 >> 62)
  {
    case 1uLL:
      v6 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = *(v6 + 24);
      v13 = *(v6 + 16);
      v15 = (sub_2179C1BC8)();
      v8 = MEMORY[0x21CEA9600](2108192, 0xE300000000000000);
      v9 = sub_2179C1BC8(v8);
      MEMORY[0x21CEA9600](v9);
      goto LABEL_6;
    case 2uLL:
      v11 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      v15 = sub_2179C1BC8(v3);
      MEMORY[0x21CEA9600](42, 0xE100000000000000);

      break;
    case 3uLL:
      v15 = 94;
      v12 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      v5 = sub_2179C1BC8(v4);
      MEMORY[0x21CEA9600](v5);

LABEL_6:

      break;
    default:
      v14 = *(v1 + 16);
      v16 = *(v1 + 24);
      sub_2179A4934();
      v2 = sub_2179E9A80();
      v15 = 34;
      MEMORY[0x21CEA9600](v2);

      MEMORY[0x21CEA9600](34, 0xE100000000000000);
      break;
  }

  return v15;
}

uint64_t sub_2179C1D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v7;
  (*(*(*(v11 + 8) + 24) + 8))(a2);
  swift_getAtKeyPath();
  (*(v5 + 8))(v9, a2);
  v12 = *(v16[1] + 16);
  os_unfair_lock_lock((v12 + 64));
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);

  os_unfair_lock_unlock((v12 + 64));

  *a3 = v14;
  a3[1] = v13;
  return result;
}

uint64_t SearchMatchExpression.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t SearchMatchPhrase.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_12();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = result;
  return result;
}

uint64_t sub_2179C1F28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  OUTLINED_FUNCTION_12();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_2179C1F6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2179A92E4(result, 1, sub_2179CF11C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2179C2040(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2179A92E4(v4, 1, sub_2179CF2B8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_2179A4BDC();
  OUTLINED_FUNCTION_8_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2179C20F8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2179C2464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2179C2118(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2179C2574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2179C2138(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2179C2660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2179C215C()
{
  result = qword_27CB97E40;
  if (!qword_27CB97E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E40);
  }

  return result;
}

unint64_t sub_2179C21C0()
{
  result = qword_27CB97E48[0];
  if (!qword_27CB97E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB97E48);
  }

  return result;
}

uint64_t sub_2179C222C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179C228C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179C22D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2179C2328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2179C23B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void *sub_2179C2408(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_7_3(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_2179C2464(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_2179A823C(0, &qword_280B1DB30, MEMORY[0x277D84E78], MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_2179CF2EC((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2179C2574(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_2179C2798();
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2179CF30C((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2179C2660(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_2179A823C(0, &qword_27CB97E38, &type metadata for SearchMatchPhrase, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_2179CF354((a4 + 32), v8, (v10 + 32));
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

void sub_2179C2798()
{
  if (!qword_27CB97F50)
  {
    sub_2179A823C(255, &qword_27CB97F58, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    v0 = sub_2179E9D50();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB97F50);
    }
  }
}

unint64_t sub_2179C2814(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2179C2880(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_2179C28E8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_2179C2F30(a1, a2);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v45 = MEMORY[0x277D84F90];
  result = sub_2179C20F8(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v45;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v39 = 4 << v9;
    v12 = 15;
    v40 = v6;
    v41 = v3;
    v42 = v11;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          v36 = v16;
          result = sub_2179C3274(v12, v3, a2);
          v16 = v36;
          v11 = v42;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_59;
        }

        if ((result & 1) == 0)
        {
          v18 = v16;
          result = sub_2179C3168(result, v3, a2);
          v16 = v18;
          v11 = v42;
          v17 = result >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_60;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v22 = v16;
        result = sub_2179E9B00();
        v16 = v22;
        v11 = v42;
        v21 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v3;
        v44 = a2 & 0xFFFFFFFFFFFFFFLL;
        v19 = &v43 + v17;
        v23 = *(&v43 + v17);
        v21 = *(&v43 + v17);
        if (v23 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
LABEL_33:
              v21 = v19[1] & 0x3F | ((v21 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_34:
              v24 = v19[1];
              v25 = v19[2];
              v26 = ((v21 & 0xF) << 12) | ((v24 & 0x3F) << 6);
              goto LABEL_36;
            case 0x1Cu:
LABEL_35:
              v27 = v19[1];
              v28 = v19[2];
              v25 = v19[3];
              v26 = ((v21 & 0xF) << 18) | ((v27 & 0x3F) << 12) | ((v28 & 0x3F) << 6);
LABEL_36:
              v21 = v26 & 0xFFFFFFC0 | v25 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v37 = v16;
          result = sub_2179E9B50();
          v16 = v37;
          v11 = v42;
        }

        v19 = (result + v17);
        v20 = *(result + v17);
        v21 = *(result + v17);
        if (v20 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_33;
            case 0x1Bu:
              goto LABEL_34;
            case 0x1Cu:
              goto LABEL_35;
            default:
              break;
          }
        }
      }

      v45 = v5;
      v30 = *(v5 + 16);
      v29 = *(v5 + 24);
      if (v30 >= v29 >> 1)
      {
        v38 = v16;
        result = sub_2179C20F8(v29 > 1, v30 + 1, 1);
        v16 = v38;
        v11 = v42;
        v5 = v45;
      }

      *(v5 + 16) = v30 + 1;
      *(v5 + 4 * v30 + 32) = v21;
      if (v16)
      {
        v10 = v39;
        v31 = v40;
        v3 = v41;
        if (v14 == v39)
        {
          result = sub_2179C3274(v12, v41, a2);
          v11 = v42;
          v12 = result;
        }

        if (v11 <= v12 >> 16)
        {
          goto LABEL_61;
        }

        if ((v12 & 1) == 0)
        {
          result = sub_2179C3168(v12, v41, a2);
          v11 = v42;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v31 = v40;
        v3 = v41;
        v10 = v39;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_62;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_2179E9690();
        v11 = v42;
        v12 = result;
      }

      else
      {
        v32 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v43 = v3;
          v44 = a2 & 0xFFFFFFFFFFFFFFLL;
          v33 = *(&v43 + v32);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            result = sub_2179E9B50();
            v11 = v42;
          }

          v33 = *(result + v32);
        }

        v34 = v33;
        v35 = __clz(v33 ^ 0xFF) - 24;
        if (v34 >= 0)
        {
          LOBYTE(v35) = 1;
        }

        v12 = ((v32 + v35) << 16) | 5;
      }

      ++v8;
      if (v13 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2179C2CE0()
{
  result = sub_2179C28E8(0xD000000000000010, 0x80000002179EFBB0);
  off_280B1DB70 = result;
  return result;
}

uint64_t Data.queryValue.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_2179E9210();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  switch(a2 >> 62)
  {
    case 2uLL:
      v9 = *(a1 + 16);
      break;
    default:
      break;
  }

  sub_2179B2DDC(a1, a2);
  sub_2179E9220();
  while (1)
  {
    result = sub_2179E9200();
    if ((result & 0x100) != 0)
    {
      (*(v5 + 8))(v8, v4);
      v16[0] = 10104;
      v16[1] = 0xE200000000000000;
      MEMORY[0x21CEA9600](v17, v18);
      MEMORY[0x21CEA9600](39, 0xE100000000000000);

      return v16[0];
    }

    v11 = result;
    if (qword_280B1DB68 != -1)
    {
      result = swift_once();
    }

    v12 = off_280B1DB70;
    v13 = v11 >> 4;
    if (*(off_280B1DB70 + 2) <= v13)
    {
      break;
    }

    v14 = *(off_280B1DB70 + v13 + 8);
    result = sub_2179E96B0();
    if (v12[2] <= (v11 & 0xF))
    {
      goto LABEL_12;
    }

    v15 = *(v12 + (v11 & 0xF) + 8);
    sub_2179E96B0();
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2179C2F30(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_2179C32F0(0xFuLL, a1, a2);
  result = sub_2179C32F0(v6, a1, a2);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_2179E9690();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_2179E9B50();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_2179E96A0();
        v7 = result;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_2179E9B50();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_42;
  }

  return 0;
}

unint64_t sub_2179C3168(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x2821FD070]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_2179E9B50();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}