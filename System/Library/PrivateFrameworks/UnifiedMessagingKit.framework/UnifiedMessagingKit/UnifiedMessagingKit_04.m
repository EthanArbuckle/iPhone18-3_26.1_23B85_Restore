uint64_t sub_2703FEB2C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2703FEB8C()
{
  result = type metadata accessor for ResponsiveArtworkUnderlay(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2703FEC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2705D6734();
  OUTLINED_FUNCTION_46_0();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_2703FECF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_3();
  sub_2705D6734();
  OUTLINED_FUNCTION_46_0();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v8);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2;
  }
}

void sub_2703FED94()
{
  sub_2705D6734();
  if (v0 <= 0x3F)
  {
    sub_2703FEE80(319, &qword_2807D0158, MEMORY[0x277CE0F78], type metadata accessor for CodableOptionalByProxy);
    if (v1 <= 0x3F)
    {
      sub_2703FEE80(319, &qword_2807D0CE0, &type metadata for ResponsiveArtworkUnderlay.LegibilityElement, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2703FEE80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2703FEEE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_2703FEF38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2703FEF9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002706139A0 == a2)
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

uint64_t sub_2703FF06C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x647261646E617473;
  }
}

void sub_2703FF0CC()
{
  OUTLINED_FUNCTION_10_1();
  v39 = v0;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0DB0);
  OUTLINED_FUNCTION_0();
  v37 = v4;
  v38 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v36 = v6;
  v34 = type metadata accessor for ResponsiveArtworkUnderlay(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v35 = v9 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0DB8);
  OUTLINED_FUNCTION_0();
  v32 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  type metadata accessor for DynamicPageUnderlay(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0DC0);
  OUTLINED_FUNCTION_0();
  v20 = v19;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_2704036BC();
  sub_2705D84C4();
  sub_2704037B8(v39, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v35;
    sub_270403814(v17, v35);
    v41[0] = 1;
    sub_270403710();
    OUTLINED_FUNCTION_26_2();
    sub_2705D7FE4();
    OUTLINED_FUNCTION_14_11();
    sub_270403478(v25, v26);
    sub_2705D8084();
    v27 = OUTLINED_FUNCTION_12_5();
    v28(v27);
    OUTLINED_FUNCTION_13_9();
    sub_270403870(v24, v29);
    (*(v20 + 8))(v23, v18);
  }

  else
  {
    sub_2703E2A94(v17, v41);
    v40 = 0;
    sub_270403764();
    OUTLINED_FUNCTION_26_2();
    sub_2705D7FE4();
    sub_2703E2A94(v41, &v40);
    sub_2703E1114();
    v30 = v33;
    sub_2705D8084();
    (*(v32 + 8))(v13, v30);
    (*(v20 + 8))(v23, v18);
    sub_2704038C8(v41);
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_2703FF4DC()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v64 = v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D78);
  OUTLINED_FUNCTION_0();
  v69 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v72 = v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D80);
  OUTLINED_FUNCTION_0();
  v65 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v68 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D88);
  OUTLINED_FUNCTION_0();
  v70 = v11;
  v71 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31_0();
  v13 = type metadata accessor for DynamicPageUnderlay(0);
  OUTLINED_FUNCTION_14();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v58[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v58[-v21];
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_2704036BC();
  OUTLINED_FUNCTION_34_2();
  sub_2705D8484();
  if (v0)
  {
    goto LABEL_10;
  }

  v60 = v20;
  v62 = v17;
  v23 = v72;
  v61 = v22;
  v63 = v13;
  v24 = v71;
  v25 = sub_2705D7FB4();
  sub_27042C9F0(v25, 0);
  if (v27 == v28 >> 1)
  {
LABEL_8:
    v37 = v63;
    v38 = sub_2705D7D84();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v40 = v37;
    sub_2705D7EE4();
    OUTLINED_FUNCTION_49();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = OUTLINED_FUNCTION_16_5();
    v42(v41, v24);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
    OUTLINED_FUNCTION_11_3();
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v59 = *(v26 + v27);
    sub_27042C9E4(v27 + 1);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    v33 = v30 == v32 >> 1;
    v34 = v69;
    if (v33)
    {
      v35 = v24;
      if (v59)
      {
        v74 = 1;
        sub_270403710();
        v36 = v23;
        OUTLINED_FUNCTION_40_1();
        type metadata accessor for ResponsiveArtworkUnderlay(0);
        OUTLINED_FUNCTION_14_11();
        sub_270403478(v44, v45);
        v46 = v62;
        v47 = v67;
        sub_2705D7FA4();
        swift_unknownObjectRelease();
        (*(v34 + 8))(v36, v47);
        v50 = OUTLINED_FUNCTION_16_5();
        v51(v50, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_22();
        v52 = v46;
      }

      else
      {
        v74 = 0;
        sub_270403764();
        v43 = v68;
        OUTLINED_FUNCTION_40_1();
        sub_2703E0ED4();
        v48 = v66;
        OUTLINED_FUNCTION_26_2();
        sub_2705D7FA4();
        v49 = (v65 + 8);
        swift_unknownObjectRelease();
        (*v49)(v43, v48);
        v53 = OUTLINED_FUNCTION_24_5();
        v54(v53);
        sub_2703E2A94(&v74, v73);
        v55 = v60;
        sub_2703E2A94(v73, v60);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_22();
        v52 = v55;
      }

      v56 = v61;
      sub_270403814(v52, v61);
      OUTLINED_FUNCTION_1_22();
      sub_270403814(v56, v57);
      __swift_destroy_boxed_opaque_existential_1(v2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_2703FFB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703FEF9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703FFBA8(uint64_t a1)
{
  v2 = sub_2704036BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703FFBE4(uint64_t a1)
{
  v2 = sub_2704036BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703FFC20(uint64_t a1)
{
  v2 = sub_270403710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703FFC5C(uint64_t a1)
{
  v2 = sub_270403710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703FFC9C(uint64_t a1)
{
  v2 = sub_270403764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703FFCD8(uint64_t a1)
{
  v2 = sub_270403764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703FFD44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6F4379656B5FLL && a2 == 0xE900000000000072;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000270613980 == a2)
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

uint64_t sub_2703FFE1C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F6C6F4379656B5FLL;
  }
}

void sub_2703FFE5C()
{
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D70);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_31_0();
  v1 = OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_23_2(v1, v2);
  v3 = sub_270403604();

  OUTLINED_FUNCTION_34_2();
  sub_2705D84C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D01F0);
  sub_270403658();
  OUTLINED_FUNCTION_3_18();

  if (!v3)
  {
    OUTLINED_FUNCTION_43_0();

    OUTLINED_FUNCTION_3_18();
  }

  v4 = OUTLINED_FUNCTION_12_5();
  v5(v4);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_3();
}

void sub_2703FFFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_1();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D60);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_23_2(v12, v12[3]);
  sub_270403604();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35_1();
  sub_2705D8484();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    OUTLINED_FUNCTION_4_17();
    if ((sub_2705D7FC4() & 1) != 0 && (OUTLINED_FUNCTION_4_17(), (sub_2705D7FD4() & 1) == 0))
    {
      OUTLINED_FUNCTION_4_17();
      sub_2705D7EF4();
      v20 = OUTLINED_FUNCTION_44();
      sub_27044A980(v20);
      v16 = a10;
    }

    else
    {
      v16 = 0;
    }

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_4_17();
    if ((sub_2705D7FC4() & 1) != 0 && (OUTLINED_FUNCTION_4_17(), (sub_2705D7FD4() & 1) == 0))
    {
      OUTLINED_FUNCTION_4_17();
      sub_2705D7EF4();
      v21 = OUTLINED_FUNCTION_44();
      sub_27044A980(v21);
      v17 = a10;
    }

    else
    {
      v17 = 0;
    }

    v18 = OUTLINED_FUNCTION_30_3();
    v19(v18);
    *v14 = v16;
    v14[1] = v17;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270400200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703FFD44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270400228(uint64_t a1)
{
  v2 = sub_270403604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270400264(uint64_t a1)
{
  v2 = sub_270403604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704002D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7265746F6F66 && a2 == 0xE600000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x697461676976616ELL && a2 == 0xED00007261426E6FLL;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369;
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

unint64_t sub_270400518(char a1)
{
  result = 0x72756769666E6F63;
  switch(a1)
  {
    case 1:
      v3 = 1684104552;
      goto LABEL_6;
    case 2:
      result = 2036625250;
      break;
    case 3:
      v3 = 1953460070;
LABEL_6:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      break;
    case 4:
      result = 0x697461676976616ELL;
      break;
    case 5:
      result = 0x7274654D65676170;
      break;
    case 6:
      result = 0x79616C7265646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27040060C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D30);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_23_2(a1, a1[3]);
  sub_27040337C();
  OUTLINED_FUNCTION_34_2();
  sub_2705D84C4();
  v3 = sub_2704034C0();

  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();
  if (v3)
  {
  }

  else
  {

    OUTLINED_FUNCTION_43_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D08);
    sub_270403514(&qword_2807D0D40, &qword_2807CFEC8);
    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_3_18();
    sub_2704035B0();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8024();
    type metadata accessor for DynamicPageModel(0);
    sub_2705D6674();
    OUTLINED_FUNCTION_12_10();
    sub_270403478(v4, v5);
    OUTLINED_FUNCTION_6_18();
    sub_2705D8024();
    type metadata accessor for DynamicPageUnderlay(0);
    OUTLINED_FUNCTION_11_12();
    sub_270403478(v6, v7);
    OUTLINED_FUNCTION_6_18();
    sub_2705D8024();
  }

  v8 = OUTLINED_FUNCTION_12_5();
  return v9(v8);
}

void sub_270400914()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v25 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C88);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v26 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C80);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v27 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0CE8);
  OUTLINED_FUNCTION_0();
  v28 = v9;
  v29 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_3();
  v12 = type metadata accessor for DynamicPageModel(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v16 = v15 - v14;
  bzero((v15 - v14 + 40), 0xC88uLL);
  *(v16 + 3248) = 1;
  v17 = *(v13 + 44);
  v18 = sub_2705D6674();
  __swift_storeEnumTagSinglePayload(v16 + v17, 1, 1, v18);
  v19 = *(v13 + 48);
  v20 = type metadata accessor for DynamicPageUnderlay(0);
  __swift_storeEnumTagSinglePayload(v16 + v19, 1, 1, v20);
  OUTLINED_FUNCTION_23_2(v3, v3[3]);
  sub_27040337C();
  OUTLINED_FUNCTION_45();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2703C2EFC(v16 + 40, &qword_2807D0CF8);
    sub_2703C2EFC(v16 + v17, &qword_2807D0C80);
    sub_2703C2EFC(v16 + v19, &qword_2807D0C88);
  }

  else
  {
    sub_2704033D0();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_28_3();
    sub_2705D7FA4();
    *v16 = v30[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D08);
    sub_270403514(&qword_2807D0D10, &qword_2807CFE78);
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_28_3();
    sub_2705D7FA4();
    *(v16 + 16) = *&v30[0];
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_28_3();
    sub_2705D7FA4();
    *(v16 + 24) = *&v30[0];
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_28_3();
    sub_2705D7FA4();
    *(v16 + 32) = *&v30[0];
    sub_270403424();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_28_3();
    sub_2705D7F44();
    sub_2703F33A0(v30, v16 + 40, &qword_2807D0CF8);
    LOBYTE(v30[0]) = 5;
    OUTLINED_FUNCTION_12_10();
    sub_270403478(v21, v22);
    sub_2705D7F44();
    sub_2703F33A0(v27, v16 + v17, &qword_2807D0C80);
    LOBYTE(v30[0]) = 6;
    OUTLINED_FUNCTION_11_12();
    sub_270403478(v23, v24);
    OUTLINED_FUNCTION_28_3();
    sub_2705D7F44();
    (*(v29 + 8))(v1, v28);
    sub_2703F33A0(v26, v16 + v19, &qword_2807D0C88);
    sub_2704037B8(v16, v25);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_270403870(v16, type metadata accessor for DynamicPageModel);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270400F6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6169726574616DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000270613A00 == a2;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x614D64656B73616DLL && a2 == 0xEE006C6169726574)
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

unint64_t sub_2704010D0(char a1)
{
  result = 0x726F6C6F63;
  switch(a1)
  {
    case 1:
      result = 0x6C6169726574616DLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x614D64656B73616DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_270401170()
{
  OUTLINED_FUNCTION_10_1();
  v40 = v0;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0F40);
  OUTLINED_FUNCTION_0();
  v38 = v4;
  v39 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v37 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0F48);
  OUTLINED_FUNCTION_0();
  v35 = v8;
  v36 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v34 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0F50);
  OUTLINED_FUNCTION_0();
  v32 = v12;
  v33 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0F58);
  OUTLINED_FUNCTION_0();
  v31 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0F60);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  v26 = &v30 - v25;
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_2704049BC();
  sub_2705D84C4();
  switch(v40)
  {
    case 1:
      sub_270404AB8();
      OUTLINED_FUNCTION_26_2();
      sub_2705D7FE4();
      (*(v32 + 8))(v15, v33);
      break;
    case 2:
      sub_270404A64();
      v27 = v34;
      OUTLINED_FUNCTION_26_2();
      sub_2705D7FE4();
      v29 = v35;
      v28 = v36;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_41_0();
      sub_270404A10();
      v27 = v37;
      OUTLINED_FUNCTION_26_2();
      sub_2705D7FE4();
      v29 = v38;
      v28 = v39;
LABEL_5:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      sub_270404B0C();
      OUTLINED_FUNCTION_26_2();
      sub_2705D7FE4();
      (*(v31 + 8))(v20, v16);
      break;
  }

  (*(v23 + 8))(v26, v21);
  OUTLINED_FUNCTION_11_3();
}

void sub_270401550()
{
  OUTLINED_FUNCTION_10_1();
  v63 = v0;
  v3 = v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0EF0);
  OUTLINED_FUNCTION_0();
  v59 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v61 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0EF8);
  OUTLINED_FUNCTION_0();
  v56 = v8;
  v57 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v58 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0F00);
  OUTLINED_FUNCTION_0();
  v54 = v12;
  v55 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0F08);
  OUTLINED_FUNCTION_0();
  v53 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0F10);
  OUTLINED_FUNCTION_0();
  v60 = v22;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_23_2(v3, v3[3]);
  sub_2704049BC();
  OUTLINED_FUNCTION_45();
  v24 = v63;
  sub_2705D8484();
  if (v24)
  {
    goto LABEL_8;
  }

  v50 = v16;
  v51 = v20;
  v52 = v15;
  v25 = v61;
  v26 = v62;
  v63 = v3;
  v27 = v1;
  v28 = sub_2705D7FB4();
  sub_27042C9F0(v28, 0);
  if (v30 == v31 >> 1)
  {
    goto LABEL_7;
  }

  v49 = 0;
  if (v30 >= (v31 >> 1))
  {
    __break(1u);
    JUMPOUT(0x270401B08);
  }

  v32 = *(v29 + v30);
  sub_27042C9E4(v30 + 1);
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v34 != v36 >> 1)
  {
LABEL_7:
    v41 = sub_2705D7D84();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v43 = &type metadata for ResponsiveArtworkUnderlay.LegibilityElement.Kind;
    sub_2705D7EE4();
    OUTLINED_FUNCTION_49();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v60 + 8))(v27, v21);
    v3 = v63;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v3);
    goto LABEL_9;
  }

  v37 = v32;
  v39 = v59;
  v38 = v60;
  switch(v37)
  {
    case 1:
      sub_270404AB8();
      v44 = v52;
      OUTLINED_FUNCTION_25_3();
      swift_unknownObjectRelease();
      v46 = v54;
      v45 = v55;
      goto LABEL_15;
    case 2:
      sub_270404A64();
      v44 = v58;
      OUTLINED_FUNCTION_25_3();
      swift_unknownObjectRelease();
      v46 = v56;
      v45 = v57;
LABEL_15:
      (*(v46 + 8))(v44, v45);
      goto LABEL_16;
    case 3:
      OUTLINED_FUNCTION_41_0();
      sub_270404A10();
      v47 = v49;
      sub_2705D7ED4();
      if (v47)
      {
        (*(v38 + 8))(v27, v21);
        swift_unknownObjectRelease();
        v3 = v63;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
      (*(v39 + 8))(v25, v26);
LABEL_16:
      (*(v38 + 8))(v27, v21);
      __swift_destroy_boxed_opaque_existential_1(v63);
      break;
    default:
      sub_270404B0C();
      v40 = v51;
      OUTLINED_FUNCTION_25_3();
      swift_unknownObjectRelease();
      (*(v53 + 8))(v40, v50);
      goto LABEL_16;
  }

LABEL_9:
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270401B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704002D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270401B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27040050C();
  *a1 = result;
  return result;
}

uint64_t sub_270401B7C(uint64_t a1)
{
  v2 = sub_27040337C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270401BB8(uint64_t a1)
{
  v2 = sub_27040337C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270401C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270400F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270401C54(uint64_t a1)
{
  v2 = sub_2704049BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270401C90(uint64_t a1)
{
  v2 = sub_2704049BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270401CCC(uint64_t a1)
{
  v2 = sub_270404B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270401D08(uint64_t a1)
{
  v2 = sub_270404B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270401D44(uint64_t a1)
{
  v2 = sub_270404A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270401D80(uint64_t a1)
{
  v2 = sub_270404A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270401DBC(uint64_t a1)
{
  v2 = sub_270404AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270401DF8(uint64_t a1)
{
  v2 = sub_270404AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270401E34(uint64_t a1)
{
  v2 = sub_270404A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270401E70(uint64_t a1)
{
  v2 = sub_270404A64();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_270401EAC(_BYTE *a1@<X8>)
{
  sub_270401550();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_270401EF4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  switch(*v1)
  {
    case 1:
      switch(*(v1 + 16))
      {
        case 1:
          sub_2705D6004();
          goto LABEL_24;
        case 2:
          sub_2705D5FF4();
          goto LABEL_24;
        case 3:
          sub_2705D5FE4();
          goto LABEL_24;
        case 4:
          sub_2705D5FC4();
          goto LABEL_24;
        case 5:
          sub_2705D6014();
          goto LABEL_24;
        case 6:
          goto LABEL_12;
        default:
          sub_2705D5FD4();
          goto LABEL_24;
      }

    case 2:
      if (v3)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3:
      switch(*(v1 + 16))
      {
        case 1:
          sub_2705D6004();
          break;
        case 2:
          sub_2705D5FF4();
          break;
        case 3:
          sub_2705D5FE4();
          break;
        case 4:
          sub_2705D5FC4();
          break;
        case 5:
          sub_2705D6014();
          break;
        case 6:
          goto LABEL_12;
        default:
          sub_2705D5FD4();
          break;
      }

LABEL_24:
      OUTLINED_FUNCTION_15_8();
      swift_storeEnumTagMultiPayload();
      v10 = OUTLINED_FUNCTION_42_0();
      goto LABEL_25;
    default:
      if (v3)
      {
LABEL_5:
        *a1 = v3;
        OUTLINED_FUNCTION_15_8();
        swift_storeEnumTagMultiPayload();
        v4 = OUTLINED_FUNCTION_42_0();
        __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
      }

      else
      {
LABEL_12:
        v9 = type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle(0);
        v10 = a1;
        v11 = 1;
        v12 = 1;
LABEL_25:

        return __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
      }
  }
}

uint64_t sub_2704020FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6169726574616DLL && a2 == 0xE800000000000000)
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

uint64_t sub_270402208(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x726F6C6F63;
  }

  return 0x6C6169726574616DLL;
}

void sub_270402254()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0E28);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_270403AE8();
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_35_1();
  sub_2705D84C4();
  sub_270403BE4();
  sub_2705D8084();
  if (!v0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D01F0);
    sub_270403658();
    OUTLINED_FUNCTION_6_18();
    sub_2705D8084();

    sub_270403C38();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8024();
  }

  v4 = OUTLINED_FUNCTION_12_5();
  v5(v4);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_3();
}

void sub_27040240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_1();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0E08);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_23_2(v13, v13[3]);
  sub_270403AE8();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35_1();
  sub_2705D8484();
  if (!v10)
  {
    LOBYTE(a10) = 0;
    sub_270403B3C();
    OUTLINED_FUNCTION_27_3();
    sub_2705D7FA4();
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_31_2();
    if ((sub_2705D7FC4() & 1) != 0 && (OUTLINED_FUNCTION_31_2(), (sub_2705D7FD4() & 1) == 0))
    {
      OUTLINED_FUNCTION_31_2();
      sub_2705D7EF4();
      v21 = OUTLINED_FUNCTION_44();
      sub_27044A980(v21);
      v20 = a10;
    }

    else
    {
      v20 = 0;
    }

    sub_270403B90();
    OUTLINED_FUNCTION_27_3();
    sub_2705D7F44();
    (*(v18 + 8))(v11, v16);
    *v15 = v22;
    *(v15 + 8) = v20;
    *(v15 + 16) = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270402618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704020FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270402640(uint64_t a1)
{
  v2 = sub_270403AE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27040267C(uint64_t a1)
{
  v2 = sub_270403AE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704026E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6B726F77747261 && a2 == 0xEC00000074686769;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x446B726F77747261 && a2 == 0xEB000000006B7261;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465726975716572 && a2 == 0xEE00746867696548;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000002706139C0 == a2;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000017 && 0x80000002706139E0 == a2)
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

unint64_t sub_2704028EC(char a1)
{
  result = 0x4C6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x446B726F77747261;
      break;
    case 2:
      result = 0x726F6C6F436762;
      break;
    case 3:
      result = 0x6465726975716572;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2704029E0()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0DF0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_23_2(v4, v4[3]);
  sub_27040391C();
  OUTLINED_FUNCTION_34_2();
  sub_2705D84C4();
  sub_2705D6734();
  OUTLINED_FUNCTION_10_11();
  sub_270403478(v6, v7);
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();
  if (!v1)
  {
    v8 = type metadata accessor for ResponsiveArtworkUnderlay(0);
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D01F0);
    sub_270403658();
    OUTLINED_FUNCTION_6_18();
    sub_2705D8084();

    v9 = v2 + v8[7];
    v16 = *v9;
    LOBYTE(v17) = *(v9 + 8);
    OUTLINED_FUNCTION_41_0();
    sub_270403A2C();
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    v10 = OUTLINED_FUNCTION_37_1(v8[8]);
    sub_270403A80(v10, v11);
    sub_270403A94();
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8024();
    sub_270403970(v16, v17);
    v12 = OUTLINED_FUNCTION_37_1(v8[9]);
    sub_270403A80(v12, v13);
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8024();
    sub_270403970(v16, v17);
  }

  v14 = OUTLINED_FUNCTION_12_5();
  v15(v14);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_3();
}

void sub_270402C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_1();
  v74 = v10;
  v12 = v11;
  v70 = v13;
  v14 = sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v72 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v73 = &v67 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0DD0);
  OUTLINED_FUNCTION_0();
  v71 = v22;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v67 - v24;
  v26 = type metadata accessor for ResponsiveArtworkUnderlay(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v30 = v29 - v28;
  v77 = v31[6];
  *(v30 + v77) = 0;
  v32 = v30 + v31[8];
  *v32 = xmmword_2705E1BF0;
  *(v32 + 16) = 0;
  v33 = v31[9];
  v78 = v30;
  v34 = v30 + v33;
  *v34 = xmmword_2705E1BF0;
  v75 = v32;
  v76 = v34;
  *(v34 + 16) = 0;
  OUTLINED_FUNCTION_23_2(v12, v12[3]);
  sub_27040391C();
  v35 = v74;
  sub_2705D8484();
  if (v35)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v39 = v75;

    sub_270403970(*v39, v39[1]);
    sub_270403970(*v76, v76[1]);
  }

  else
  {
    v69 = v26;
    v36 = v72;
    v74 = v12;
    LOBYTE(v79) = 0;
    OUTLINED_FUNCTION_10_11();
    sub_270403478(v37, v38);
    sub_2705D7FA4();
    v40 = v14;
    v41 = v78;
    v42 = *(v36 + 32);
    v42(v78, v73, v40);
    LOBYTE(v79) = 1;
    sub_2705D7FA4();
    v43 = v19;
    v44 = v69;
    v42(v41 + *(v69 + 20), v43, v40);
    v82 = 2;
    v45 = sub_2705D7FC4();
    v46 = v77;
    v47 = v21;
    v48 = v75;
    v73 = 0;
    if (v45)
    {
      v49 = sub_2705D7FD4();
      v68 = v25;
      if (v49)
      {
        v50 = 0;
        v51 = v78;
      }

      else
      {
        sub_2705D7EF4();
        v66 = OUTLINED_FUNCTION_44();
        sub_27044A980(v66);
        v51 = v78;
        v50 = a10;
      }
    }

    else
    {
      v68 = v25;
      v50 = 0;
      v51 = v78;
    }

    *(v51 + v46) = v50;
    sub_270403984();
    v52 = v47;
    sub_2705D7FA4();
    v53 = v51 + *(v44 + 28);
    v54 = v80;
    *v53 = v79;
    *(v53 + 8) = v54;
    sub_2704039D8();
    OUTLINED_FUNCTION_32_1();
    v55 = v79;
    v67 = v80;
    v56 = v81;
    sub_270403970(*v48, v48[1]);
    v57 = v67;
    *v48 = v55;
    v48[1] = v57;
    *(v48 + 16) = v56;
    OUTLINED_FUNCTION_32_1();
    v58 = OUTLINED_FUNCTION_8_13();
    v59(v58, v52);
    v61 = v79;
    v60 = v80;
    v62 = v81;
    v63 = v76;
    sub_270403970(*v76, v76[1]);
    *v63 = v61;
    v63[1] = v60;
    *(v63 + 16) = v62;
    v64 = v78;
    sub_2704037B8(v78, v70);
    __swift_destroy_boxed_opaque_existential_1(v74);
    OUTLINED_FUNCTION_13_9();
    sub_270403870(v64, v65);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704032AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704026E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704032D4(uint64_t a1)
{
  v2 = sub_27040391C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270403310(uint64_t a1)
{
  v2 = sub_27040391C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27040337C()
{
  result = qword_2807D0CF0;
  if (!qword_2807D0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0CF0);
  }

  return result;
}

unint64_t sub_2704033D0()
{
  result = qword_2807D0D00;
  if (!qword_2807D0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0D00);
  }

  return result;
}

unint64_t sub_270403424()
{
  result = qword_2807D0D18;
  if (!qword_2807D0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0D18);
  }

  return result;
}

uint64_t sub_270403478(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2704034C0()
{
  result = qword_2807D0D38;
  if (!qword_2807D0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0D38);
  }

  return result;
}

uint64_t sub_270403514(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0D08);
    sub_270403478(a2, type metadata accessor for ComponentShelf);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704035B0()
{
  result = qword_2807D0D48;
  if (!qword_2807D0D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0D48);
  }

  return result;
}

unint64_t sub_270403604()
{
  result = qword_2807D0D68;
  if (!qword_2807D0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0D68);
  }

  return result;
}

unint64_t sub_270403658()
{
  result = qword_2807D01F8;
  if (!qword_2807D01F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D01F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D01F8);
  }

  return result;
}

unint64_t sub_2704036BC()
{
  result = qword_2807D0D90;
  if (!qword_2807D0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0D90);
  }

  return result;
}

unint64_t sub_270403710()
{
  result = qword_2807D0D98;
  if (!qword_2807D0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0D98);
  }

  return result;
}

unint64_t sub_270403764()
{
  result = qword_2807D0DA8;
  if (!qword_2807D0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0DA8);
  }

  return result;
}

uint64_t sub_2704037B8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_270403814(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_270403870(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_27040391C()
{
  result = qword_2807D0DD8;
  if (!qword_2807D0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0DD8);
  }

  return result;
}

uint64_t sub_270403970(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_270403984()
{
  result = qword_2807D0DE0;
  if (!qword_2807D0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0DE0);
  }

  return result;
}

unint64_t sub_2704039D8()
{
  result = qword_2807D0DE8;
  if (!qword_2807D0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0DE8);
  }

  return result;
}

unint64_t sub_270403A2C()
{
  result = qword_2807D0DF8;
  if (!qword_2807D0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0DF8);
  }

  return result;
}

uint64_t sub_270403A80(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_270403A94()
{
  result = qword_2807D0E00;
  if (!qword_2807D0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E00);
  }

  return result;
}

unint64_t sub_270403AE8()
{
  result = qword_2807D0E10;
  if (!qword_2807D0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E10);
  }

  return result;
}

unint64_t sub_270403B3C()
{
  result = qword_2807D0E18;
  if (!qword_2807D0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E18);
  }

  return result;
}

unint64_t sub_270403B90()
{
  result = qword_2807D0E20;
  if (!qword_2807D0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E20);
  }

  return result;
}

unint64_t sub_270403BE4()
{
  result = qword_2807D0E30;
  if (!qword_2807D0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E30);
  }

  return result;
}

unint64_t sub_270403C38()
{
  result = qword_2807D0E38;
  if (!qword_2807D0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponsiveArtworkUnderlay.LegibilityElement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270403D58);
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

_BYTE *storeEnumTagSinglePayload for ResponsiveArtworkUnderlay.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270403E5CLL);
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

_BYTE *sub_270403EB8(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x270403F54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_270403F90(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270404058);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPageModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DynamicPageModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704041E4);
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

unint64_t sub_270404230()
{
  result = qword_2807D0E40;
  if (!qword_2807D0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E40);
  }

  return result;
}

unint64_t sub_270404288()
{
  result = qword_2807D0E48;
  if (!qword_2807D0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E48);
  }

  return result;
}

unint64_t sub_2704042E0()
{
  result = qword_2807D0E50;
  if (!qword_2807D0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E50);
  }

  return result;
}

unint64_t sub_270404338()
{
  result = qword_2807D0E58;
  if (!qword_2807D0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E58);
  }

  return result;
}

unint64_t sub_270404390()
{
  result = qword_2807D0E60;
  if (!qword_2807D0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E60);
  }

  return result;
}

unint64_t sub_2704043E8()
{
  result = qword_2807D0E68;
  if (!qword_2807D0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E68);
  }

  return result;
}

unint64_t sub_270404440()
{
  result = qword_2807D0E70;
  if (!qword_2807D0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E70);
  }

  return result;
}

unint64_t sub_270404498()
{
  result = qword_2807D0E78;
  if (!qword_2807D0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E78);
  }

  return result;
}

unint64_t sub_2704044F0()
{
  result = qword_2807D0E80;
  if (!qword_2807D0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E80);
  }

  return result;
}

unint64_t sub_270404548()
{
  result = qword_2807D0E88;
  if (!qword_2807D0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E88);
  }

  return result;
}

unint64_t sub_2704045A0()
{
  result = qword_2807D0E90;
  if (!qword_2807D0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E90);
  }

  return result;
}

unint64_t sub_2704045F8()
{
  result = qword_2807D0E98;
  if (!qword_2807D0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0E98);
  }

  return result;
}

unint64_t sub_270404650()
{
  result = qword_2807D0EA0;
  if (!qword_2807D0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0EA0);
  }

  return result;
}

unint64_t sub_2704046A8()
{
  result = qword_2807D0EA8;
  if (!qword_2807D0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0EA8);
  }

  return result;
}

unint64_t sub_270404700()
{
  result = qword_2807D0EB0;
  if (!qword_2807D0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0EB0);
  }

  return result;
}

unint64_t sub_270404758()
{
  result = qword_2807D0EB8;
  if (!qword_2807D0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0EB8);
  }

  return result;
}

unint64_t sub_2704047B0()
{
  result = qword_2807D0EC0;
  if (!qword_2807D0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0EC0);
  }

  return result;
}

unint64_t sub_270404808()
{
  result = qword_2807D0EC8;
  if (!qword_2807D0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0EC8);
  }

  return result;
}

unint64_t sub_270404860()
{
  result = qword_2807D0ED0;
  if (!qword_2807D0ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0ED0);
  }

  return result;
}

unint64_t sub_2704048B8()
{
  result = qword_2807D0ED8;
  if (!qword_2807D0ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0ED8);
  }

  return result;
}

unint64_t sub_270404910()
{
  result = qword_2807D0EE0;
  if (!qword_2807D0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0EE0);
  }

  return result;
}

unint64_t sub_270404968()
{
  result = qword_2807D0EE8;
  if (!qword_2807D0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0EE8);
  }

  return result;
}

unint64_t sub_2704049BC()
{
  result = qword_2807D0F18;
  if (!qword_2807D0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F18);
  }

  return result;
}

unint64_t sub_270404A10()
{
  result = qword_2807D0F20;
  if (!qword_2807D0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F20);
  }

  return result;
}

unint64_t sub_270404A64()
{
  result = qword_2807D0F28;
  if (!qword_2807D0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F28);
  }

  return result;
}

unint64_t sub_270404AB8()
{
  result = qword_2807D0F30;
  if (!qword_2807D0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F30);
  }

  return result;
}

unint64_t sub_270404B0C()
{
  result = qword_2807D0F38;
  if (!qword_2807D0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F38);
  }

  return result;
}

_BYTE *sub_270404B68(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270404C30);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270404CAC()
{
  result = qword_2807D0F68;
  if (!qword_2807D0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F68);
  }

  return result;
}

unint64_t sub_270404D04()
{
  result = qword_2807D0F70;
  if (!qword_2807D0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F70);
  }

  return result;
}

unint64_t sub_270404D5C()
{
  result = qword_2807D0F78;
  if (!qword_2807D0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F78);
  }

  return result;
}

unint64_t sub_270404DB4()
{
  result = qword_2807D0F80;
  if (!qword_2807D0F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F80);
  }

  return result;
}

unint64_t sub_270404E0C()
{
  result = qword_2807D0F88;
  if (!qword_2807D0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F88);
  }

  return result;
}

unint64_t sub_270404E64()
{
  result = qword_2807D0F90;
  if (!qword_2807D0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F90);
  }

  return result;
}

unint64_t sub_270404EBC()
{
  result = qword_2807D0F98;
  if (!qword_2807D0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0F98);
  }

  return result;
}

unint64_t sub_270404F14()
{
  result = qword_2807D0FA0;
  if (!qword_2807D0FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0FA0);
  }

  return result;
}

unint64_t sub_270404F6C()
{
  result = qword_2807D0FA8;
  if (!qword_2807D0FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0FA8);
  }

  return result;
}

unint64_t sub_270404FC4()
{
  result = qword_2807D0FB0;
  if (!qword_2807D0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0FB0);
  }

  return result;
}

unint64_t sub_27040501C()
{
  result = qword_2807D0FB8;
  if (!qword_2807D0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0FB8);
  }

  return result;
}

uint64_t sub_270405090()
{
  result = sub_2705D6024();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return sub_2705D8084();
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_37_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  *(v2 - 104) = *v3;
  *(v2 - 96) = v5;
  *(v2 - 88) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_2705D7D44();
}

uint64_t sub_2704053BC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v23 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1198);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D10E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C88);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for DynamicPageUnderlay(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2703FC5C0(a1, v13, &qword_2807D0C88);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2703FC60C(v13, &qword_2807D0C88);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1098);
    (*(*(v17 - 8) + 16))(v7, v25, v17);
    swift_storeEnumTagMultiPayload();
    sub_270410BC0();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1090);
    v19 = sub_270410A38();
    v27 = v18;
    v28 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_2705D5434();
  }

  else
  {
    sub_2704112DC(v13, v16, type metadata accessor for DynamicPageUnderlay);
    v24(v16, v25);
    sub_2703FC5C0(v10, v7, &qword_2807D10E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1098);
    sub_270410BC0();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1090);
    v22 = sub_270410A38();
    v27 = v21;
    v28 = v22;
    swift_getOpaqueTypeConformance2();
    sub_2705D5434();
    sub_2703FC60C(v10, &qword_2807D10E8);
    return sub_2704103B0(v16, type metadata accessor for DynamicPageUnderlay);
  }
}

void sub_270405774()
{
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_85(v3, v4);
  OUTLINED_FUNCTION_10_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1780);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1788);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v48 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF98);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFFB8);
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFFA8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF88);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_24_6();
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_34_3(v15, v16, v17, v18, v19, v20, v21, v22, v47);
  v23 = OUTLINED_FUNCTION_10_10();
  sub_2703FC5C0(v23, v24, v25);
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFFD8) + 36)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFFC8);
  v26 = *(OUTLINED_FUNCTION_84() + 20);
  sub_2705D5344();
  OUTLINED_FUNCTION_14();
  v28 = *(v27 + 104);
  v29 = v27 + 104;
  v30 = OUTLINED_FUNCTION_67();
  v28(v30);
  *v1 = v2;
  v1[1] = v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620);
  OUTLINED_FUNCTION_32_2(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0090);
  v33 = OUTLINED_FUNCTION_16_6(v32);
  v28(v33);
  OUTLINED_FUNCTION_13_10();

  if (!v26)
  {
    sub_2705D5CD4();
  }

  OUTLINED_FUNCTION_27_4(v34, v35, v36, &qword_2807CFFA8);

  v37 = OUTLINED_FUNCTION_64();
  sub_2703FC60C(v37, v38);
  OUTLINED_FUNCTION_66();
  if (v26)
  {
    OUTLINED_FUNCTION_82(v29, v39, &qword_2807CFFA8);
    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v40, v41, v42);
    OUTLINED_FUNCTION_61();
    sub_2703E2214();
    sub_2703E22A0();

    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_33_2();
    sub_2703FC60C(v43, v44);
  }

  else
  {
    sub_2703FC5C0(v29, v48, &qword_2807CFFA8);
    OUTLINED_FUNCTION_62();
    sub_2703E2214();
    sub_2703E22A0();
    OUTLINED_FUNCTION_25_4();
  }

  sub_2703FC60C(v29, &qword_2807CFFA8);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF48);
  sub_2703E2188();
  sub_2703E2580();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_71();
  sub_2703FC60C(v45, v46);
  OUTLINED_FUNCTION_41_1();
}

uint64_t sub_270405BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  sub_2703E2A94(a1, v62);
  v46 = v62[0];
  v4 = v62[1];
  v56 = v62[2];
  v5 = v62[3];
  v6 = v62[4];
  v7 = v62[5];
  v45 = v62[6];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11A8);
  MEMORY[0x28223BE20](v57);
  v58 = &v43 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11B0);
  MEMORY[0x28223BE20](v50);
  v54 = &v43 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1118);
  MEMORY[0x28223BE20](v52);
  v44 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1138);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1128);
  MEMORY[0x28223BE20](v48);
  v49 = &v43 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1108);
  v16 = MEMORY[0x28223BE20](v55);
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v53 = &v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1098);
  v20 = *(*(v19 - 8) + 16);
  v51 = v19;
  v20(v14, v3);
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1158) + 36)] = 0;
  v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1148) + 36)];
  v22 = sub_2705D5064();
  v23 = *(v22 + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_2705D5344();
  v26 = *(*(v25 - 8) + 104);
  v26(&v21[v23], v24, v25);
  *v21 = v4;
  *(v21 + 1) = v4;
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620) + 36)] = 256;
  v27 = &v14[*(v12 + 44)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0090);
  v29 = &v27[*(v28 + 52)];
  v30 = v25;
  v31 = v45;
  v26(&v29[*(v22 + 20)], v24, v30);
  v32 = v46;
  *v29 = v4;
  *(v29 + 1) = v4;
  *v27 = v32;
  *&v27[*(v28 + 56)] = 256;

  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = sub_2705D5CD4();
  }

  v34 = v49;
  sub_27040FFA8(v33, v49);

  sub_2703FC60C(v14, &qword_2807D1138);
  v35 = v56;
  if (v56)
  {
    v36 = v44;
    sub_2703FC5C0(v34, v44, &qword_2807D1128);
    v37 = (v36 + *(v52 + 36));
    *v37 = v35;
    v37[1] = v5;
    v37[2] = v6;
    v37[3] = v7;
    sub_2703FC5C0(v36, v54, &qword_2807D1118);
    swift_storeEnumTagMultiPayload();
    sub_270410DBC();
    sub_270410E48();

    v38 = v47;
    sub_2705D5434();
    sub_2703FC60C(v36, &qword_2807D1118);
  }

  else
  {
    sub_2703FC5C0(v34, v54, &qword_2807D1128);
    swift_storeEnumTagMultiPayload();
    sub_270410DBC();
    sub_270410E48();
    v38 = v47;
    sub_2705D5434();
  }

  sub_2703FC60C(v34, &qword_2807D1128);
  v39 = v53;
  sub_270411338(v38, v53);
  sub_2703FC5C0(v39, v58, &qword_2807D1108);
  swift_storeEnumTagMultiPayload();
  sub_270410D30();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1090);
  v41 = sub_270410A38();
  v60 = v40;
  v61 = v41;
  swift_getOpaqueTypeConformance2();
  sub_2705D5434();
  return sub_2703FC60C(v39, &qword_2807D1108);
}

void sub_270406288()
{
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_85(v3, v4);
  OUTLINED_FUNCTION_10_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1690);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1698);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v48 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D16A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D16A8);
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D16B0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D16B8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_24_6();
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_34_3(v15, v16, v17, v18, v19, v20, v21, v22, v47);
  v23 = OUTLINED_FUNCTION_10_10();
  sub_2703FC5C0(v23, v24, v25);
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D16C8) + 36)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D16D0);
  v26 = *(OUTLINED_FUNCTION_84() + 20);
  sub_2705D5344();
  OUTLINED_FUNCTION_14();
  v28 = *(v27 + 104);
  v29 = v27 + 104;
  v30 = OUTLINED_FUNCTION_67();
  v28(v30);
  *v1 = v2;
  v1[1] = v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620);
  OUTLINED_FUNCTION_32_2(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0090);
  v33 = OUTLINED_FUNCTION_16_6(v32);
  v28(v33);
  OUTLINED_FUNCTION_13_10();

  if (!v26)
  {
    sub_2705D5CD4();
  }

  OUTLINED_FUNCTION_27_4(v34, v35, v36, &qword_2807D16B0);

  v37 = OUTLINED_FUNCTION_64();
  sub_2703FC60C(v37, v38);
  OUTLINED_FUNCTION_66();
  if (v26)
  {
    OUTLINED_FUNCTION_82(v29, v39, &qword_2807D16B0);
    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v40, v41, v42);
    OUTLINED_FUNCTION_61();
    sub_27041453C();
    sub_2704145C8();

    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_33_2();
    sub_2703FC60C(v43, v44);
  }

  else
  {
    sub_2703FC5C0(v29, v48, &qword_2807D16B0);
    OUTLINED_FUNCTION_62();
    sub_27041453C();
    sub_2704145C8();
    OUTLINED_FUNCTION_25_4();
  }

  sub_2703FC60C(v29, &qword_2807D16B0);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D16C0);
  sub_270414D3C();
  sub_2704148A8();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_71();
  sub_2703FC60C(v45, v46);
  OUTLINED_FUNCTION_41_1();
}

void sub_2704066BC()
{
  OUTLINED_FUNCTION_42_1();
  sub_2703E2A94(v1, v58);
  v2 = v58[1];
  v55 = v58[2];
  v3 = v58[3];
  v4 = v58[4];
  v5 = v58[5];
  v48 = v58[6];
  v49 = v58[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1410);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1418);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v54 = v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1420);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v47 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1428) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1430);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_0();
  v50 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1438);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1440);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_0();
  v51 = v18;
  memcpy(v57, v0, sizeof(v57));
  v19 = &v0[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1448) + 36)];
  v20 = sub_2705D5064();
  v21 = *(v20 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_2705D5344();
  OUTLINED_FUNCTION_14();
  v25 = *(v24 + 104);
  v25(&v19[v21], v22, v23);
  *v19 = v2;
  *(v19 + 1) = v2;
  memcpy(v59, v57, 0x17BuLL);
  *&v59[379] = 0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620) + 36)] = 256;
  memcpy(v0, v59, 0x17DuLL);
  memcpy(v60, v57, sizeof(v60));
  v61 = 0;
  sub_2703FC5C0(v0, v56, &qword_2807D1450);
  sub_2703FC5C0(v59, v56, &qword_2807D1458);
  sub_2703FC60C(v60, &qword_2807D1458);
  v26 = &v0[*(v11 + 44)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0090);
  v28 = &v26[*(v27 + 52)];
  v25(&v28[*(v20 + 20)], v22, v23);
  *v28 = v2;
  *(v28 + 1) = v2;
  *v26 = v49;
  *&v26[*(v27 + 56)] = 256;

  if (v48)
  {
    v29 = v48;
  }

  else
  {
    v29 = sub_2705D5CD4();
  }

  sub_2704100B4(v29, &qword_2807D1428, &unk_2705E7630, &qword_2807D1430);

  v30 = OUTLINED_FUNCTION_64();
  sub_2703FC60C(v30, v31);
  if (v55)
  {
    sub_2703FC5C0(v50, v47, &qword_2807D1430);
    v32 = (v47 + *(v53 + 36));
    *v32 = v55;
    v32[1] = v3;
    v32[2] = v4;
    v32[3] = v5;
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v33, v34, v35);
    swift_storeEnumTagMultiPayload();
    sub_270413034();
    sub_2704130C0();

    sub_2705D5434();
    OUTLINED_FUNCTION_33_2();
    sub_2703FC60C(v36, v37);
  }

  else
  {
    sub_2703FC5C0(v50, v54, &qword_2807D1430);
    swift_storeEnumTagMultiPayload();
    sub_270413034();
    sub_2704130C0();
    sub_2705D5434();
  }

  sub_2703FC60C(v50, &qword_2807D1430);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC3D4(v38, v39, v40);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC5C0(v41, v42, v43);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1450);
  sub_270413A88();
  sub_2704133A0();
  sub_2705D5434();
  OUTLINED_FUNCTION_33_2();
  sub_2703FC60C(v44, v45);
  v46 = sub_270413B14();
  sub_2705029A0(v51, v52, v46);
  sub_2703FC60C(v51, &qword_2807D1440);
  OUTLINED_FUNCTION_41_1();
}

void sub_270406D44()
{
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_85(v3, v4);
  OUTLINED_FUNCTION_10_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1570);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1578);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v48 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1580);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1588);
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1598);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_24_6();
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_34_3(v15, v16, v17, v18, v19, v20, v21, v22, v47);
  v23 = OUTLINED_FUNCTION_10_10();
  sub_2703FC5C0(v23, v24, v25);
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D15A8) + 36)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D15B0);
  v26 = *(OUTLINED_FUNCTION_84() + 20);
  sub_2705D5344();
  OUTLINED_FUNCTION_14();
  v28 = *(v27 + 104);
  v29 = v27 + 104;
  v30 = OUTLINED_FUNCTION_67();
  v28(v30);
  *v1 = v2;
  v1[1] = v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620);
  OUTLINED_FUNCTION_32_2(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0090);
  v33 = OUTLINED_FUNCTION_16_6(v32);
  v28(v33);
  OUTLINED_FUNCTION_13_10();

  if (!v26)
  {
    sub_2705D5CD4();
  }

  OUTLINED_FUNCTION_27_4(v34, v35, v36, &qword_2807D1590);

  v37 = OUTLINED_FUNCTION_64();
  sub_2703FC60C(v37, v38);
  OUTLINED_FUNCTION_66();
  if (v26)
  {
    OUTLINED_FUNCTION_82(v29, v39, &qword_2807D1590);
    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v40, v41, v42);
    OUTLINED_FUNCTION_61();
    sub_270413BA0();
    sub_270413C2C();

    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_33_2();
    sub_2703FC60C(v43, v44);
  }

  else
  {
    sub_2703FC5C0(v29, v48, &qword_2807D1590);
    OUTLINED_FUNCTION_62();
    sub_270413BA0();
    sub_270413C2C();
    OUTLINED_FUNCTION_25_4();
  }

  sub_2703FC60C(v29, &qword_2807D1590);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D15A0);
  sub_2704144B0();
  sub_270413F0C();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_71();
  sub_2703FC60C(v45, v46);
  OUTLINED_FUNCTION_41_1();
}

uint64_t sub_270407178()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13D0);
  swift_getKeyPath();
  sub_270408220();
}

uint64_t sub_270407224()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1348);
  swift_getKeyPath();
  sub_270408220();
}

uint64_t sub_2704072D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4 & 1;
  return result;
}

__n128 sub_270407340(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = *a2;
  v5 = *(a2 + 16);
  *(a1 + 56) = *a2;
  *(a1 + 72) = v5;
  *(a1 + 88) = *(a2 + 32);
  return result;
}

uint64_t sub_2704073A4(__int128 *a1, uint64_t a2)
{
  *(v2 + 104) = 0;
  sub_2705D4624();
  v5 = *a1;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = *(a1 + 32);
  *(v2 + 48) = v7;
  *(v2 + 56) = v5;
  *(v2 + 72) = v6;
  *(v2 + 88) = v7;
  *(v2 + 96) = a2;
  return v2;
}

uint64_t sub_270407414(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 72) = 0;
  sub_2705D4624();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3 & 1;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3 & 1;
  *(v4 + 64) = a4;
  return v4;
}

uint64_t sub_27040748C(char a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  sub_2705D4624();
  *(v2 + 16) = a1;
  *(v2 + 17) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_2704074E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13D0);
  swift_getKeyPath();
  sub_270414D00(&unk_2807D13D8);
  sub_2705D45F4();
}

uint64_t sub_2704075B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1348);
  swift_getKeyPath();
  sub_270414D00(&unk_2807D1350);
  sub_2705D45F4();
}

uint64_t sub_270407678(uint64_t a1)
{

  v4 = sub_2704082A4(v3, a1);

  if (v4)
  {
    MEMORY[0x28223BE20](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13D0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_270408220();
  }

  else
  {
    *(v1 + 72) = a1;
  }
}

uint64_t sub_2704077C8(uint64_t a1)
{

  v4 = sub_2704082A4(v3, a1);

  if (v4)
  {
    MEMORY[0x28223BE20](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1348);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_270408220();
  }

  else
  {
    *(v1 + 104) = a1;
  }
}

uint64_t sub_270407918(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = a2;
}

uint64_t sub_270407954(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = a2;
}

uint64_t sub_270407990(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3 & 1;
  if (sub_2704074E8())
  {
    sub_2705D7974();
  }

  v11 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v18 = a3 & 1;
  sub_2705D78A4();

  v12 = sub_2705D7894();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v4;
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  *(v13 + 56) = v18;
  sub_270482728();
  return sub_270407678(v15);
}

uint64_t sub_270407B00(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v7;
  *(v1 + 48) = *(a1 + 32);
  if (sub_2704075B0())
  {
    sub_2705D7974();
  }

  v8 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  v9 = a1[1];
  v16 = *a1;
  v17 = v9;
  v18 = *(a1 + 32);
  sub_2705D78A4();

  v10 = sub_2705D7894();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v2;
  v13 = v17;
  *(v11 + 40) = v16;
  *(v11 + 56) = v13;
  *(v11 + 72) = v18;
  sub_270482728();
  return sub_2704077C8(v14);
}

uint64_t sub_270407C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 72) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  sub_2705D78A4();
  *(v7 + 40) = sub_2705D7894();
  v9 = sub_2705D7844();
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;

  return MEMORY[0x2822009F8](sub_270407D14, v9, v8);
}

uint64_t sub_270407D14(uint64_t a1)
{
  if (is_mul_ok(*(*(v1 + 16) + 64), 0xF4240uLL))
  {
    OUTLINED_FUNCTION_2_2();
    v5 = v3 * v4;
    v6 = swift_task_alloc();
    *(v1 + 64) = v6;
    *v6 = v1;
    v6[1] = sub_270407DC8;
    a1 = v5;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_270407DC8()
{
  OUTLINED_FUNCTION_70();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;

  if (v0)
  {

    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    v8 = sub_270414F7C;
  }

  else
  {
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    v8 = sub_270407EE0;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_270407EE0()
{
  OUTLINED_FUNCTION_2_2();

  if ((sub_2705D7994() & 1) == 0)
  {
    sub_270407178();
  }

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270407F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2705D78A4();
  v5[4] = sub_2705D7894();
  v7 = sub_2705D7844();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_270407FEC, v7, v6);
}

uint64_t sub_270407FEC(uint64_t a1)
{
  if (is_mul_ok(*(*(v1 + 16) + 96), 0xF4240uLL))
  {
    OUTLINED_FUNCTION_2_2();
    v5 = v3 * v4;
    v6 = swift_task_alloc();
    *(v1 + 56) = v6;
    *v6 = v1;
    v6[1] = sub_2704080A0;
    a1 = v5;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2704080A0()
{
  OUTLINED_FUNCTION_70();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;

  if (v0)
  {

    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = sub_270414FA0;
  }

  else
  {
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = sub_2704081B8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2704081B8()
{
  OUTLINED_FUNCTION_2_2();

  if ((sub_2705D7994() & 1) == 0)
  {
    sub_270407224();
  }

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270408220()
{
  OUTLINED_FUNCTION_74();
  sub_270414D00(v0);
  return OUTLINED_FUNCTION_60();
}

BOOL sub_2704082A4(uint64_t a1, uint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v2 = sub_2705D7954();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_2704082FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = a1[2];
  v15 = a1[1];
  *v16 = v10;
  *&v16[10] = *(a1 + 42);
  v14 = *a1;
  __src[0] = v14;
  __src[1] = v15;
  __src[2] = *v16;
  __src[3] = *&v16[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  sub_2703FC5C0(v5, a4, &qword_2807D1138);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1128);
  memcpy((a4 + *(v11 + 36)), __src, 0x50uLL);
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = *v16;
  v18[3] = *&v16[16];
  v19 = a2;
  v20 = a3;
  sub_2703FC5C0(a1, v13, &qword_2807D11B8);
  sub_2703FC5C0(__src, v13, &qword_2807D00A0);
  return sub_2703FC60C(v18, &qword_2807D00A0);
}

uint64_t sub_270408414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_88();
  v13 = v12[2];
  v24 = v12[1];
  *v25 = v13;
  *&v25[10] = *(v12 + 42);
  v23 = *v12;
  __src[0] = v23;
  __src[1] = v24;
  __src[2] = *v25;
  __src[3] = *&v25[16];
  *&__src[4] = v14;
  *(&__src[4] + 1) = v15;
  sub_2703FC5C0(v7, v17, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  memcpy((v10 + *(v18 + 36)), __src, 0x50uLL);
  __src[5] = v23;
  __src[6] = v24;
  __src[7] = *v25;
  __src[8] = *&v25[16];
  v27 = v9;
  v28 = v8;
  sub_2703FC5C0(v6, v22, &qword_2807D11B8);
  sub_2703FC5C0(__src, v22, &qword_2807D00A0);
  OUTLINED_FUNCTION_71();
  return sub_2703FC60C(v19, v20);
}

double sub_270408518()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_19();
  sub_270410920(v1);
  OUTLINED_FUNCTION_35_2();

  return *(v0 + 24);
}

double sub_270408598()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_19();
  sub_270410920(v1);
  OUTLINED_FUNCTION_35_2();

  return *(v0 + 16);
}

uint64_t sub_270408618(uint64_t result, int a2)
{
  v3 = *(v2 + 56);
  if (v3 & 1) != 0 || (a2)
  {
    if (v3 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 48) == *&result)
  {
LABEL_4:
    *(v2 + 48) = *&result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  OUTLINED_FUNCTION_86();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_2704086E8(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_270408518();
  v3 = v2 + sub_270408598();

  return sub_270408618(*&v3, 0);
}

uint64_t sub_270408730(double a1)
{
  if (*(v1 + 16) == a1)
  {

    return sub_2704086E8(a1);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_45_0();
    MEMORY[0x28223BE20](v3);
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_2704087E4()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_3_19();
  sub_270410920(v0);
  return OUTLINED_FUNCTION_60();
}

uint64_t sub_27040885C(double a1)
{
  *(v1 + 24) = a1;
  v2 = sub_270408518();
  v3 = v2 + sub_270408598();

  return sub_270408618(*&v3, 0);
}

uint64_t sub_2704088A4(double a1)
{
  if (*(v1 + 24) == a1)
  {

    return sub_27040885C(a1);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_45_0();
    MEMORY[0x28223BE20](v3);
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_86();
  }
}

double sub_270408958()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_19();
  sub_270410920(v1);
  OUTLINED_FUNCTION_35_2();

  return *(v0 + 32);
}

void sub_2704089D8(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_45_0();
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_86();
  }
}

double sub_270408A68()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_19();
  sub_270410920(v1);
  OUTLINED_FUNCTION_35_2();

  return *(v0 + 40);
}

void sub_270408AE8(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_45_0();
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_270408B78()
{
  sub_2705D7D04();
  MEMORY[0x2743A3A90](0x6820726564616548, 0xEF203A7468676965);
  sub_270408598();
  v0 = sub_2705D79C4();
  MEMORY[0x2743A3A90](v0);

  MEMORY[0x2743A3A90](0x682079646F62202CLL, 0xEF203A7468676965);
  sub_270408518();
  v1 = sub_2705D79C4();
  MEMORY[0x2743A3A90](v1);

  MEMORY[0x2743A3A90](0x682065676170202CLL, 0xEF203A7468676965);
  sub_270408958();
  v2 = sub_2705D79C4();
  MEMORY[0x2743A3A90](v2);

  MEMORY[0x2743A3A90](0x772065676170202CLL, 0xEE00203A68746469);
  sub_270408A68();
  v3 = sub_2705D79C4();
  MEMORY[0x2743A3A90](v3);

  return 0;
}

uint64_t sub_270408CD4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_19();
  sub_270410920(v1);
  OUTLINED_FUNCTION_35_2();

  return *(v0 + 48);
}

uint64_t sub_270408D8C()
{
  v1 = OBJC_IVAR____TtC19UnifiedMessagingKit24HeaderCenteredBodyLayout___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_270408E48()
{
  result = sub_2705D4634();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_270408EF8()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 1;
  sub_2705D4624();
  return v0;
}

uint64_t sub_270408FBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_64();
  sub_2705D4C94();

  return v1;
}

uint64_t sub_270409038()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2705D4CA4();
}

uint64_t sub_2704090A4()
{
  v1 = OBJC_IVAR____TtC19UnifiedMessagingKit33DynamicSheetElementDimensionCache__pageSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1038);
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC19UnifiedMessagingKit33DynamicSheetElementDimensionCache__headerFrame;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1040);
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC19UnifiedMessagingKit33DynamicSheetElementDimensionCache__footerFrame, v4);
  return v0;
}

uint64_t sub_27040917C()
{
  sub_2704090A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2704091FC()
{
  sub_2704092F4(319, &qword_2807D1010, &qword_2807D1018);
  if (v0 <= 0x3F)
  {
    sub_2704092F4(319, &qword_2807D1020, &qword_2807D1028);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2704092F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_94();
    v4 = sub_2705D4CB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_270409344()
{
  OUTLINED_FUNCTION_26_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1040);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1038);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC19UnifiedMessagingKit33DynamicSheetElementDimensionCache__pageSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1018);
  swift_allocObject();
  *&v20[0] = sub_270407414(0, 0, 1, 100);
  sub_2705D4C74();
  (*(v9 + 32))(v0 + v13, v12, v7);
  v14 = OBJC_IVAR____TtC19UnifiedMessagingKit33DynamicSheetElementDimensionCache__headerFrame;
  memset(v20, 0, sizeof(v20));
  v21 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1028);
  swift_allocObject();
  v15 = sub_2704073A4(v20, 100);
  OUTLINED_FUNCTION_96(v15);
  v16 = *(v3 + 32);
  v16(v0 + v14, v6, v1);
  v17 = OBJC_IVAR____TtC19UnifiedMessagingKit33DynamicSheetElementDimensionCache__footerFrame;
  swift_allocObject();
  v18 = sub_2704073A4(v20, 100);
  OUTLINED_FUNCTION_96(v18);
  v16(v0 + v17, v6, v1);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_270409584@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DynamicSheetElementDimensionCache(0);
  result = sub_2705D4C34();
  *a1 = result;
  return result;
}

double sub_270409610()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

double sub_27040966C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

uint64_t sub_2704096F0()
{
  OUTLINED_FUNCTION_54();
  result = sub_270408CD4();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

void sub_270409724()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

uint64_t sub_2704097AC()
{
  type metadata accessor for DynamicSheetElementDimensionCache(0);
  v0 = swift_allocObject();
  sub_270409344();
  return v0;
}

uint64_t sub_2704097E8()
{
  v0 = type metadata accessor for DynamicSheetView.ViewModel(0);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4_0();
  v3 = v2 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);
  sub_2705D5E54();
  OUTLINED_FUNCTION_52();
  if (v15)
  {
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v3, v5);
    goto LABEL_5;
  }

  v6 = *(v4 + 40);
  OUTLINED_FUNCTION_0_21();
  sub_2704103B0(v3, v7);
  if (v6 != 5)
  {
    v15 = sub_2704DAAE8(v6) == 0x6E6564646968 && v14 == 0xE600000000000000;
    if (v15)
    {
    }

    else
    {
      OUTLINED_FUNCTION_71();
      v16 = sub_2705D8134();

      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    return sub_2705D56C4();
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705E10F0;
  v9 = sub_2705D56F4();
  *(inited + 32) = v9;
  v10 = sub_2705D5714();
  *(inited + 33) = v10;
  v11 = sub_2705D56E4();
  *(inited + 34) = v11;
  v12 = sub_2705D5704();
  sub_2705D5704();
  if (sub_2705D5704() != v9)
  {
    v12 = sub_2705D5704();
  }

  sub_2705D5704();
  if (sub_2705D5704() != v10)
  {
    v12 = sub_2705D5704();
  }

  sub_2705D5704();
  if (sub_2705D5704() != v11)
  {
    return sub_2705D5704();
  }

  return v12;
}

uint64_t sub_2704099E8()
{
  v1 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for DynamicSheetView(0) + 32);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_2705D7A84();
    v10 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();
    sub_2704109D0(v9, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v9) = v12;
  }

  return v9 & 1;
}

void sub_270409B2C()
{
  OUTLINED_FUNCTION_26_1();
  v23 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DynamicSheetView.ViewModel(0);
  OUTLINED_FUNCTION_14();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v23 - v10);
  v12 = type metadata accessor for DynamicSheetView(0);
  v13 = (v4 + v12[5]);
  type metadata accessor for HeaderCenteredBodyLayout(0);
  v14 = swift_allocObject();
  sub_270408EF8();
  v27 = v14;
  sub_2705D5E44();
  v15 = v25;
  *v13 = v24;
  v13[1] = v15;
  v16 = v4 + v12[6];
  *v16 = sub_2704097AC;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v17 = v4 + v12[8];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  if (qword_2807CE838 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v18 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v18);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2705E6EB0;
  v26 = MEMORY[0x277D837D0];
  v24 = 0xD000000000000010;
  v25 = 0x80000002705E71B0;
  sub_2705D6544();
  sub_2703FC60C(&v24, &unk_2807D4890);
  sub_2705D64C4();
  sub_27047CF60(v19);

  sub_270410354(v2, v11 + *(v5 + 20), type metadata accessor for DynamicPageModel);
  type metadata accessor for EventBus();
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  v21 = MEMORY[0x277D84FA0];
  *(v20 + 112) = MEMORY[0x277D84F98];
  *(v20 + 120) = v21;
  *v11 = v20;
  sub_270410354(v11, v9, type metadata accessor for DynamicSheetView.ViewModel);
  sub_2705D5E44();
  sub_2704103B0(v2, type metadata accessor for DynamicPageModel);
  OUTLINED_FUNCTION_0_21();
  sub_2704103B0(v11, v22);
  *(v4 + v12[7]) = v23;
  OUTLINED_FUNCTION_25_1();
}

void *sub_270409E48@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_2705D47F4();
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_2705D47C4();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF38);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_2705D47A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for ComponentShelf();
  MEMORY[0x28223BE20](v33);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF40);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v31 - v20;
  sub_270410354(a1, v19, type metadata accessor for ComponentShelf);
  v21 = a1[120];
  if (v21 <= 0xFD)
  {
    v24 = *(a1 + 14);
    __dst[0] = *(a1 + 6);
    *&__dst[1] = v24;
    BYTE8(__dst[1]) = v21;
    sub_2703E9540(v13);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    (*(v15 + 32))(v17, v13, v14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    v22 = sub_2705D60A4();
    *v17 = 1;
    v17[1] = v22;
    v17[2] = v23;
    (*(v15 + 104))(v17, *MEMORY[0x277D7EB28], v14);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_2703FC60C(v13, &qword_2807CFF38);
    }
  }

  v25 = *(a1 + 1);
  if (v25 == 254)
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_2705D47B4();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2703FC60C(v7, &qword_2807CFF30);
    }
  }

  else
  {
    v40 = *a1;
    v41 = v25;
    v26 = *(a1 + 2);
    v42 = *(a1 + 1);
    v43[0] = v26;
    *(v43 + 9) = *(a1 + 41);
    sub_2703EBD74();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    (*(v32 + 32))(v10, v7, v8);
  }

  memcpy(__dst, a1, 0x79uLL);
  sub_2703E7A10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF58);
  sub_270410920(&unk_2807CFF60);
  sub_270414D00(&unk_2807CFF68);
  sub_2703E2078();
  v27 = v34;
  sub_2705D48F4();
  sub_2705D60A4();
  sub_2705D5094();
  v28 = v38;
  (*(v35 + 32))(v38, v27, v36);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13A0);
  return memcpy((v28 + *(v29 + 36)), __dst, 0x70uLL);
}

uint64_t sub_27040A504@<X0>(uint64_t a1@<X8>)
{
  sub_2705D4774();
  sub_2703B291C(&v6, v5);
  KeyPath = swift_getKeyPath();
  v3 = swift_allocObject();
  result = sub_2703B291C(v5, v3 + 16);
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = sub_270414F6C;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = sub_2703DF000;
  *(a1 + 48) = 0;
  return result;
}

void *sub_27040A5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1338);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  __src[0] = *(a1 + 128);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF50);
  sub_270414D00(&unk_2807D1360);
  sub_270410920(&unk_2807D1368);
  sub_270414D00(&unk_2807CFF68);
  sub_2705D5F74();
  sub_2705D60A4();
  sub_2705D5094();
  v7 = v11;
  (*(v4 + 32))(v11, v6, v3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1318);
  return memcpy((v7 + *(v8 + 36)), __src, 0x70uLL);
}

uint64_t sub_27040A88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2703B4E54(a1, v6);
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

void sub_27040A92C()
{
  OUTLINED_FUNCTION_26_1();
  v64 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C88);
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_0();
  v63 = v4;
  v5 = OUTLINED_FUNCTION_77();
  v61 = type metadata accessor for DynamicSheetView.ViewModel(v5) - 8;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_4_0();
  v65 = (v7 - v6);
  OUTLINED_FUNCTION_77();
  v58 = sub_2705D5454();
  OUTLINED_FUNCTION_0();
  v56 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v55 = v11 - v10;
  v12 = OUTLINED_FUNCTION_77();
  v13 = type metadata accessor for DynamicSheetView(v12);
  v14 = *(v13 - 8);
  v62 = v13 - 8;
  v51 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1090);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1098);
  OUTLINED_FUNCTION_0();
  v57 = v19;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17_0();
  v52 = v21;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D10A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_0();
  v54 = v23;
  v24 = sub_2705D6084();
  v26 = v25;
  v50 = v0;
  sub_27040B0B8(v0, v71);
  memcpy(v69, v71, sizeof(v69));
  memcpy(v70, v71, sizeof(v70));
  sub_2703FC5C0(v69, v68, &qword_2807D10A8);
  sub_2703FC60C(v70, &qword_2807D10A8);
  memcpy(&v68[2], v69, 0xC0uLL);
  v68[0] = v24;
  v68[1] = v26;
  OUTLINED_FUNCTION_40_2();
  sub_270410354(v0, &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v28 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();
  sub_2704112DC(&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D10B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D10B8);
  sub_270414D00(&unk_2807D10C0);
  sub_270414D00(&unk_2807D10C8);
  sub_2705D5BD4();
  memcpy(v71, v68, 0xD0uLL);
  sub_2703FC60C(v71, &qword_2807D10B0);

  v31 = v50;
  v32 = sub_2704097E8();
  v33 = sub_2705D5054();
  v34 = &v18[*(v53 + 36)];
  *v34 = v33;
  v34[8] = v32;
  v68[0] = 0xD00000000000001BLL;
  v68[1] = 0x8000000270613B10;
  v35 = v55;
  sub_2705D5584();
  sub_270410A38();
  v36 = v52;
  sub_2705D5B34();
  (*(v56 + 8))(v35, v58);
  sub_2703FC60C(v18, &qword_2807D1090);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);
  v37 = v65;
  sub_2705D5E54();
  v38 = *(v61 + 28);
  v39 = v38 + *(type metadata accessor for DynamicPageModel(0) + 40);
  v40 = v63;
  sub_2703FC5C0(v37 + v39, v63, &qword_2807D0C88);
  sub_2704103B0(v37, type metadata accessor for DynamicSheetView.ViewModel);
  v67[2] = v31;
  v41 = v54;
  sub_2704053BC(v40, sub_270410B94, v67, v54);
  sub_2703FC60C(v40, &qword_2807D0C88);
  (*(v57 + 8))(v36, v59);
  v66 = v31;
  sub_2705D6914();
  sub_270410C78(&unk_2807D10D8);
  v42 = v64;
  sub_2705D59A4();
  sub_2703FC60C(v41, &qword_2807D10A0);
  type metadata accessor for DynamicSheetElementDimensionCache(0);
  sub_270410920(&qword_2807CFD50);
  OUTLINED_FUNCTION_64();
  v43 = sub_2705D4DA4();
  v44 = sub_2705D4C24();
  v45 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1180) + 36));
  *v45 = v44;
  v45[1] = v43;
  KeyPath = swift_getKeyPath();
  v47 = v65;
  sub_2705D5E54();
  v48 = *v47;

  sub_2704103B0(v47, type metadata accessor for DynamicSheetView.ViewModel);
  v49 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1188) + 36));
  *v49 = KeyPath;
  v49[1] = v48;
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27040B0B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DynamicSheetView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_27040B254();
  sub_270410354(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DynamicSheetView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2704112DC(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for DynamicSheetView);
  memcpy(v11, v10, sizeof(v11));
  memcpy(a2, v10, 0xB0uLL);
  a2[22] = sub_2704125FC;
  a2[23] = v8;
  sub_2703FC5C0(v11, __dst, &qword_2807D12C8);
  memcpy(__dst, v10, sizeof(__dst));
  return sub_2703FC60C(__dst, &qword_2807D12C8);
}

void sub_27040B254()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DynamicSheetView(0);
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2705D5CD4();
  sub_2705D60A4();
  sub_2705D5094();
  OUTLINED_FUNCTION_40_2();
  sub_270410354(v1, v10, v12);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_39_1();
  sub_2704112DC(v10, v15 + v13, v16);
  v17 = sub_2705D60A4();
  v19 = v18;
  v20 = sub_2705D5CD4();
  v21 = sub_2705D60A4();
  v23 = v22;
  OUTLINED_FUNCTION_42();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_270412C64;
  *(v24 + 24) = v14;
  v28[0] = v11;
  memcpy(&v28[1], v27, 0x70uLL);
  v28[15] = v20;
  v28[16] = sub_270414F70;
  v28[17] = v24;
  v28[18] = v21;
  v28[19] = v23;
  v28[20] = v17;
  v28[21] = v19;
  v29 = v11;
  memcpy(v30, v27, sizeof(v30));
  v31 = v20;
  v32 = sub_270414F70;
  v33 = v24;
  v34 = v21;
  v35 = v23;
  v36 = v17;
  v37 = v19;
  sub_2703FC5C0(v28, &v26, &qword_2807D12C8);
  sub_2703FC60C(&v29, &qword_2807D12C8);
  memcpy(v3, v28, 0xB0uLL);
  OUTLINED_FUNCTION_25_1();
}

void sub_27040B490()
{
  OUTLINED_FUNCTION_26_1();
  v234 = v1;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11C8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_0();
  v233 = v3;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11D0);
  OUTLINED_FUNCTION_0();
  v227 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v226 = v6;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11D8);
  OUTLINED_FUNCTION_0();
  v225 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v224 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11E0);
  v11 = OUTLINED_FUNCTION_23_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_11();
  v230 = v12;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11E8);
  OUTLINED_FUNCTION_0();
  v239 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_0();
  v238 = v19;
  OUTLINED_FUNCTION_77();
  v228 = sub_2705D54F4();
  OUTLINED_FUNCTION_0();
  v223 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_11();
  v222 = v22;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_50();
  v242 = v24;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v25);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11F0);
  OUTLINED_FUNCTION_0();
  v237 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_11();
  v235 = v28;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v29);
  v31 = &v222 - v30;
  v32 = type metadata accessor for DynamicSheetView.ViewModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_11();
  v229 = v34;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_50();
  v241 = v36;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_50();
  v240 = v38;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_50();
  v250 = v40;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_50();
  v249 = v42;
  OUTLINED_FUNCTION_24_6();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v222 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v222 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11F8);
  v50 = OUTLINED_FUNCTION_23_0(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_11();
  v246 = v51;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_50();
  v245 = v53;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_50();
  v244 = v55;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_50();
  v255 = v57;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_50();
  v254 = v59;
  OUTLINED_FUNCTION_24_6();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = &v222 - v62;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_58();
  v253 = v64;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);
  v236 = v0;
  sub_2705D5E54();
  v252 = v32;
  OUTLINED_FUNCTION_52();
  v247 = v15;
  if (v68)
  {
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v48, v66);
    OUTLINED_FUNCTION_8_14();
LABEL_6:
    sub_2703FC60C(v256, &qword_2807D1200);
    v69 = OUTLINED_FUNCTION_17_7();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v16);
    v72 = OUTLINED_FUNCTION_2_17(&unk_2807D1208);
    v257[0] = v243;
    v257[1] = v72;
    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_65();
    sub_2703FC60C(v63, &qword_2807D11F8);
    v73 = v252;
    goto LABEL_11;
  }

  sub_2703FC5C0(v65 + 1872, v256, &qword_2807D1200);
  OUTLINED_FUNCTION_0_21();
  sub_2704103B0(v48, v67);
  OUTLINED_FUNCTION_56();
  if (v68)
  {
    goto LABEL_6;
  }

  memcpy(v257, v256, 0x1C8uLL);
  v74 = v236;
  v75 = sub_2704099E8();
  if (v75)
  {
    v76 = sub_2705D54C4();
  }

  else
  {
    v76 = sub_2705D54E4();
  }

  MEMORY[0x28223BE20](v76);
  *(&v222 - 2) = v74;
  *(&v222 - 1) = v257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1228);
  sub_2704113F8();
  sub_2705D4DD4();
  v77 = OUTLINED_FUNCTION_2_17(&unk_2807D1208);
  v78 = v238;
  v79 = v243;
  MEMORY[0x2743A1950](v31, v243, v77);
  v80 = v239;
  (*(v239 + 16))(v63, v78, v16);
  OUTLINED_FUNCTION_23_4();
  v256[0] = v79;
  v256[1] = v77;
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_65();
  sub_2703FC60C(v63, &qword_2807D11F8);
  (*(v80 + 8))(v78, v16);
  v81 = OUTLINED_FUNCTION_31_3();
  v82(v81, v79);
  sub_2704113A4(v257);
  v73 = v252;
LABEL_11:
  v83 = v251;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_52();
  v85 = v240;
  if (v68)
  {
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v46, v86);
    OUTLINED_FUNCTION_8_14();
    v87 = v243;
  }

  else
  {
    sub_2703FC5C0(v84 + 1416, v256, &qword_2807D1200);
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v46, v88);
    OUTLINED_FUNCTION_56();
    v87 = v243;
    if (!v89)
    {
      OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_91();
      sub_2705D54D4();
      OUTLINED_FUNCTION_46_1();
      MEMORY[0x28223BE20](v94);
      OUTLINED_FUNCTION_15_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1228);
      sub_2704113F8();
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_59();
      sub_2705D4DD4();
      OUTLINED_FUNCTION_2_17(&unk_2807D1208);
      OUTLINED_FUNCTION_18_5();
      v95 = OUTLINED_FUNCTION_9_13();
      v96(v95);
      OUTLINED_FUNCTION_23_4();
      v256[0] = v83;
      v256[1] = v73;
      v73 = v252;
      OUTLINED_FUNCTION_1_23();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_65();
      sub_2703FC60C(v63, &qword_2807D11F8);
      v97 = OUTLINED_FUNCTION_12_11();
      v98(v97);
      v99 = OUTLINED_FUNCTION_31_3();
      v85 = v240;
      v100(v99, v87);
      sub_2704113A4(v257);
      goto LABEL_17;
    }
  }

  sub_2703FC60C(v256, &qword_2807D1200);
  v90 = OUTLINED_FUNCTION_17_7();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v16);
  v93 = OUTLINED_FUNCTION_2_17(&unk_2807D1208);
  v257[0] = v87;
  v257[1] = v93;
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_65();
  sub_2703FC60C(v63, &qword_2807D11F8);
LABEL_17:
  OUTLINED_FUNCTION_83();
  v101 = v249;
  OUTLINED_FUNCTION_52();
  v103 = v241;
  if (v68)
  {
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v101, v104);
    OUTLINED_FUNCTION_8_14();
  }

  else
  {
    sub_2703FC5C0(v102 + 2328, v256, &qword_2807D1200);
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v101, v105);
    OUTLINED_FUNCTION_56();
    if (!v106)
    {
      OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_91();
      sub_2705D54B4();
      OUTLINED_FUNCTION_46_1();
      MEMORY[0x28223BE20](v111);
      OUTLINED_FUNCTION_15_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1228);
      sub_2704113F8();
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_59();
      sub_2705D4DD4();
      OUTLINED_FUNCTION_2_17(&unk_2807D1208);
      OUTLINED_FUNCTION_18_5();
      v112 = OUTLINED_FUNCTION_9_13();
      v113(v112);
      OUTLINED_FUNCTION_23_4();
      v256[0] = v83;
      v256[1] = v73;
      v73 = v252;
      OUTLINED_FUNCTION_1_23();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_65();
      sub_2703FC60C(v63, &qword_2807D11F8);
      v103 = v241;
      v114 = OUTLINED_FUNCTION_12_11();
      v115(v114);
      v116 = OUTLINED_FUNCTION_31_3();
      v85 = v240;
      v117(v116, v87);
      sub_2704113A4(v257);
      goto LABEL_23;
    }
  }

  sub_2703FC60C(v256, &qword_2807D1200);
  v107 = OUTLINED_FUNCTION_17_7();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v16);
  v110 = OUTLINED_FUNCTION_2_17(&unk_2807D1208);
  v257[0] = v87;
  v257[1] = v110;
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_65();
  sub_2703FC60C(v63, &qword_2807D11F8);
LABEL_23:
  OUTLINED_FUNCTION_83();
  v118 = v250;
  OUTLINED_FUNCTION_52();
  if (v68)
  {
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v118, v120);
    OUTLINED_FUNCTION_8_14();
  }

  else
  {
    sub_2703FC5C0(v119 + 504, v256, &qword_2807D1200);
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v118, v121);
    OUTLINED_FUNCTION_56();
    if (!v122)
    {
      OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_91();
      sub_2705D5474();
      OUTLINED_FUNCTION_46_1();
      MEMORY[0x28223BE20](v127);
      OUTLINED_FUNCTION_15_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1228);
      sub_2704113F8();
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_59();
      sub_2705D4DD4();
      OUTLINED_FUNCTION_2_17(&unk_2807D1208);
      OUTLINED_FUNCTION_18_5();
      v128 = OUTLINED_FUNCTION_9_13();
      v129(v128);
      OUTLINED_FUNCTION_23_4();
      v256[0] = v83;
      v256[1] = v73;
      v73 = v252;
      OUTLINED_FUNCTION_1_23();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_65();
      sub_2703FC60C(v63, &qword_2807D11F8);
      v103 = v241;
      v130 = OUTLINED_FUNCTION_12_11();
      v131(v130);
      v132 = OUTLINED_FUNCTION_31_3();
      v85 = v240;
      v133(v132, v87);
      sub_2704113A4(v257);
      goto LABEL_29;
    }
  }

  sub_2703FC60C(v256, &qword_2807D1200);
  v123 = OUTLINED_FUNCTION_17_7();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v16);
  v126 = OUTLINED_FUNCTION_2_17(&unk_2807D1208);
  v257[0] = v87;
  v257[1] = v126;
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_65();
  sub_2703FC60C(v63, &qword_2807D11F8);
LABEL_29:
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_52();
  if (v68)
  {
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v85, v135);
    OUTLINED_FUNCTION_8_14();
  }

  else
  {
    sub_2703FC5C0(v134 + 960, v256, &qword_2807D1200);
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v85, v136);
    OUTLINED_FUNCTION_56();
    if (!v137)
    {
      OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_91();
      sub_2705D54A4();
      OUTLINED_FUNCTION_46_1();
      MEMORY[0x28223BE20](v142);
      OUTLINED_FUNCTION_15_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1228);
      sub_2704113F8();
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_59();
      sub_2705D4DD4();
      OUTLINED_FUNCTION_2_17(&unk_2807D1208);
      OUTLINED_FUNCTION_18_5();
      v143 = OUTLINED_FUNCTION_9_13();
      v144(v143);
      OUTLINED_FUNCTION_23_4();
      v256[0] = v83;
      v256[1] = v73;
      OUTLINED_FUNCTION_1_23();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_65();
      sub_2703FC60C(v63, &qword_2807D11F8);
      v103 = v241;
      v145 = OUTLINED_FUNCTION_12_11();
      v146(v145);
      v147 = OUTLINED_FUNCTION_31_3();
      v148(v147, v87);
      sub_2704113A4(v257);
      goto LABEL_35;
    }
  }

  sub_2703FC60C(v256, &qword_2807D1200);
  v138 = OUTLINED_FUNCTION_17_7();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v16);
  v141 = OUTLINED_FUNCTION_2_17(&unk_2807D1208);
  v257[0] = v87;
  v257[1] = v141;
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_65();
  sub_2703FC60C(v63, &qword_2807D11F8);
LABEL_35:
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_52();
  if (v68)
  {
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v103, v150);
    OUTLINED_FUNCTION_8_14();
  }

  else
  {
    sub_2703FC5C0(v149 + 48, v256, &qword_2807D1200);
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v103, v151);
    OUTLINED_FUNCTION_56();
    if (!v152)
    {
      OUTLINED_FUNCTION_30_4();
      v157 = v242;
      sub_2705D5494();
      v158 = v223;
      v159 = (*(v223 + 16))(v222, v157, v228);
      v160 = v87;
      MEMORY[0x28223BE20](v159);
      OUTLINED_FUNCTION_15_9();
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1228);
      sub_2704113F8();
      v162 = v235;
      OUTLINED_FUNCTION_59();
      sub_2705D4DD4();
      v163 = OUTLINED_FUNCTION_2_17(&unk_2807D1208);
      v164 = v238;
      MEMORY[0x2743A1950](v162, v160, v163);
      v165 = OUTLINED_FUNCTION_9_13();
      v166(v165);
      OUTLINED_FUNCTION_23_4();
      v256[0] = v160;
      v256[1] = v163;
      OUTLINED_FUNCTION_1_23();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_65();
      sub_2703FC60C(v63, &qword_2807D11F8);
      (*(v161 + 8))(v164, v16);
      (*(v237 + 8))(v162, v160);
      (*(v158 + 8))(v242, v228);
      sub_2704113A4(v257);
      goto LABEL_41;
    }
  }

  sub_2703FC60C(v256, &qword_2807D1200);
  v153 = OUTLINED_FUNCTION_17_7();
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v16);
  v156 = OUTLINED_FUNCTION_2_17(&unk_2807D1208);
  v257[0] = v87;
  v257[1] = v156;
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_65();
  sub_2703FC60C(v63, &qword_2807D11F8);
LABEL_41:
  v167 = v229;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_52();
  if (v68)
  {
    OUTLINED_FUNCTION_0_21();
    sub_2704103B0(v167, v169);
    OUTLINED_FUNCTION_8_14();
LABEL_46:
    sub_2703FC60C(v256, &qword_2807D1200);
    v172 = v230;
    v173 = OUTLINED_FUNCTION_17_7();
    v174 = v232;
    __swift_storeEnumTagSinglePayload(v173, v175, v176, v232);
    v177 = OUTLINED_FUNCTION_2_17(&unk_2807D1210);
    v257[0] = v231;
    v257[1] = v177;
    OUTLINED_FUNCTION_1_23();
    v178 = OUTLINED_FUNCTION_78();
    MEMORY[0x2743A1960](v172, v174, v178);
    sub_2703FC60C(v172, &qword_2807D11E0);
    goto LABEL_47;
  }

  sub_2703FC5C0(v168 + 2784, v256, &qword_2807D1200);
  OUTLINED_FUNCTION_0_21();
  sub_2704103B0(v167, v170);
  OUTLINED_FUNCTION_56();
  if (v171)
  {
    goto LABEL_46;
  }

  memcpy(v257, v256, 0x1C8uLL);
  v179 = sub_2705D5464();
  MEMORY[0x28223BE20](v179);
  *(&v222 - 2) = v257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1218);
  sub_270414D00(&unk_2807D1220);
  v180 = v224;
  sub_2705D4DD4();
  v181 = OUTLINED_FUNCTION_2_17(&unk_2807D1210);
  v182 = v226;
  v183 = v231;
  MEMORY[0x2743A1950](v180, v231, v181);
  v184 = v227;
  v185 = v230;
  v186 = v232;
  (*(v227 + 16))(v230, v182, v232);
  __swift_storeEnumTagSinglePayload(v185, 0, 1, v186);
  v256[0] = v183;
  v256[1] = v181;
  OUTLINED_FUNCTION_1_23();
  v187 = OUTLINED_FUNCTION_79();
  MEMORY[0x2743A1960](v185, v186, v187);
  sub_2703FC60C(v185, &qword_2807D11E0);
  (*(v184 + 8))(v182, v186);
  (*(v225 + 8))(v180, v183);
  sub_2704113A4(v257);
LABEL_47:
  v252 = *(v248 + 112);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC5C0(v188, v189, v190);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC5C0(v191, v192, v193);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC5C0(v194, v195, v196);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC5C0(v197, v198, v199);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC5C0(v200, v201, v202);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC5C0(v203, v204, v205);
  v206 = v247;
  OUTLINED_FUNCTION_59();
  sub_2703FC5C0(v207, v208, v209);
  sub_2705D53F4();
  sub_2703FC60C(v206, &qword_2807D11E0);
  OUTLINED_FUNCTION_33_2();
  sub_2703FC60C(v210, v211);
  OUTLINED_FUNCTION_33_2();
  sub_2703FC60C(v212, v213);
  OUTLINED_FUNCTION_33_2();
  sub_2703FC60C(v214, v215);
  OUTLINED_FUNCTION_33_2();
  sub_2703FC60C(v216, v217);
  OUTLINED_FUNCTION_33_2();
  sub_2703FC60C(v218, v219);
  OUTLINED_FUNCTION_33_2();
  sub_2703FC60C(v220, v221);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27040C9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1168);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v7 = type metadata accessor for ResponsiveArtworkUnderlay(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D11A0);
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D10F8);
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  v16 = type metadata accessor for DynamicPageUnderlay(0);
  MEMORY[0x28223BE20](v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270410354(a1, v18, type metadata accessor for DynamicPageUnderlay);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2704112DC(v18, v9, type metadata accessor for ResponsiveArtworkUnderlay);
    v19 = sub_2705D60A4();
    v21 = v20;
    v30[1] = v4;
    v22 = &v6[*(v4 + 36)];
    sub_270410354(v9, v22, type metadata accessor for ResponsiveArtworkUnderlay);
    type metadata accessor for DynamicSheetElementDimensionCache(0);
    sub_270410920(&qword_2807CFD50);
    v23 = sub_2705D50B4();
    v25 = v24;
    v26 = (v22 + *(type metadata accessor for ResponsiveArtworkUnderlayView(0) + 20));
    *v26 = v23;
    v26[1] = v25;
    v27 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1178) + 36));
    *v27 = v19;
    v27[1] = v21;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1098);
    (*(*(v28 - 8) + 16))(v6, v31, v28);
    sub_2703FC5C0(v6, v12, &qword_2807D1168);
    swift_storeEnumTagMultiPayload();
    sub_270410C78(&unk_2807D10F0);
    sub_270411164();
    sub_2705D5434();
    sub_2703FC60C(v6, &qword_2807D1168);
    return sub_2704103B0(v9, type metadata accessor for ResponsiveArtworkUnderlay);
  }

  else
  {
    sub_2703E2A94(v18, v33);
    sub_270405BA8(v33, v15);
    sub_2703FC5C0(v15, v12, &qword_2807D10F8);
    swift_storeEnumTagMultiPayload();
    sub_270410C78(&unk_2807D10F0);
    sub_270411164();
    sub_2705D5434();
    sub_2704038C8(v33);
    return sub_2703FC60C(v15, &qword_2807D10F8);
  }
}

uint64_t sub_27040CE88()
{
  v0 = type metadata accessor for DynamicSheetView.ViewModel(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);
  sub_2705D5E54();
  v10 = *v2;

  sub_2704103B0(v2, type metadata accessor for DynamicSheetView.ViewModel);
  sub_2705D6914();
  sub_2705D6A14();
  v16[1] = v10;
  v11 = *(v4 + 16);
  v11(v9, v7, v3);
  sub_270411288();
  sub_2705D69E4();
  v12 = *(v4 + 8);
  v12(v7, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2705DC030;
  v11((v14 + v13), v9, v3);
  sub_2703D3E64(v14);
  swift_setDeallocating();
  sub_2704890E4();
  return (v12)(v9, v3);
}

uint64_t sub_27040D0F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27041CD00();
  *a1 = result;
  return result;
}

uint64_t sub_27040D150(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2705E6EB0;
  sub_2705D7D04();
  MEMORY[0x2743A3A90](0x657361622077654ELL, 0xEF203A657A697320);
  type metadata accessor for CGSize(0);
  sub_2705D7DF4();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  type metadata accessor for DynamicSheetView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13B0);
  sub_2705D5E54();
  *(v4 + 88) = type metadata accessor for HeaderCenteredBodyLayout(0);
  *(v4 + 64) = a1;
  sub_2705D8394();

  sub_2705D5E54();
  sub_2704089D8(a2);

  sub_2705D5E54();
  sub_270408AE8(a1);

  type metadata accessor for DynamicSheetElementDimensionCache(0);
  sub_270410920(&qword_2807CFD50);
  sub_2705D4DA4();
  sub_270408F58();

  sub_270407990(*&a1, *&a2, 0);
}

uint64_t sub_27040D3B0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for DynamicSheetView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D12D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);
  sub_2705D5E54();
  sub_270410354(a1, v7, type metadata accessor for DynamicSheetView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_2704112DC(v7, v10 + v9, type metadata accessor for DynamicSheetView);
  sub_270410354(a1, v7, type metadata accessor for DynamicSheetView);
  v11 = swift_allocObject();
  sub_2704112DC(v7, v11 + v9, type metadata accessor for DynamicSheetView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D12D8);
  v12 = swift_allocObject();
  v13 = qword_2807D5738;
  v14 = sub_2705D4864();
  __swift_storeEnumTagSinglePayload(v12 + v13, 1, 1, v14);
  sub_2705D4624();
  v21 = v12;
  sub_2705D5E44();
  v15 = v23;
  *a2 = v22;
  a2[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D12E0);
  swift_allocObject();
  v21 = sub_27040748C(0, 100);
  result = sub_2705D5E44();
  v17 = v23;
  a2[2] = v22;
  a2[3] = v17;
  *(a2 + v8[17]) = 0;
  v18 = (a2 + v8[18]);
  *v18 = sub_270412614;
  v18[1] = v10;
  v19 = (a2 + v8[19]);
  *v19 = sub_2704126B8;
  v19[1] = v11;
  return result;
}

uint64_t sub_27040D650@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_2705D53C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1370);
  return sub_27040D6A4(a1, a2 + *(v4 + 44));
}

uint64_t sub_27040D6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a1;
  v120 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1378);
  v2 = MEMORY[0x28223BE20](v118);
  v121 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v117 = &v89 - v5;
  MEMORY[0x28223BE20](v4);
  v119 = &v89 - v6;
  v7 = type metadata accessor for DynamicSheetView(0);
  v8 = *(v7 - 8);
  v110 = v7 - 8;
  v102 = v8;
  v99 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v125 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2705D4FD4();
  v96 = *(v10 - 8);
  v97 = v10;
  v101 = *(v96 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v100 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v89 - v13;
  v14 = type metadata accessor for DynamicSheetView.ViewModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1380);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v114 = (&v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = &v89 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1388);
  v23 = MEMORY[0x28223BE20](v22);
  v115 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v122 = &v89 - v25;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1390) - 8;
  v26 = MEMORY[0x28223BE20](v95);
  v116 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v94 = &v89 - v29;
  MEMORY[0x28223BE20](v28);
  v123 = &v89 - v30;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);
  sub_2705D5E54();
  v112 = v14;
  v31 = *&v16[*(v14 + 20) + 16];

  v111 = v16;
  sub_2704103B0(v16, type metadata accessor for DynamicSheetView.ViewModel);
  *v21 = sub_2705D53C4();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1398);
  v127 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D08);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13A0);
  v34 = sub_270414D00(&unk_2807D1320);
  v35 = sub_27041297C(&unk_2807D13A8);
  v103 = sub_270410920(&qword_2807D02E0);
  v108 = v32;
  v105 = v34;
  v106 = v33;
  v104 = v35;
  sub_2705D5F84();
  sub_2705D6084();
  sub_2705D5094();
  v36 = v122;
  sub_2703FC3D4(v21, v122, &qword_2807D1380);
  v113 = v22;
  memcpy((v36 + *(v22 + 36)), v130, 0x70uLL);
  v127 = 0xD00000000000001BLL;
  v128[0] = 0x8000000270613B10;
  v37 = v93;
  sub_2705D7CF4();
  v38 = v96;
  v39 = v97;
  (*(v96 + 104))(v37, *MEMORY[0x277CDF960], v97);
  v40 = v125;
  sub_270410354(v124, v125, type metadata accessor for DynamicSheetView);
  v41 = *(v102 + 80);
  v42 = (v41 + 16) & ~v41;
  v98 = v42 + v99;
  v99 = v41;
  v43 = swift_allocObject();
  v102 = v42;
  sub_2704112DC(v40, v43 + v42, type metadata accessor for DynamicSheetView);
  v44 = sub_2705D60A4();
  v91 = v45;
  v92 = v44;
  v46 = sub_2705D5CD4();
  v47 = sub_2705D60A4();
  v89 = v48;
  v90 = v47;
  v49 = v100;
  (*(v38 + 16))(v100, v37, v39);
  v50 = v38;
  v51 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v52 = (v101 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v50 + 32))(v53 + v51, v49, v39);
  v54 = (v53 + v52);
  v55 = v123;
  *v54 = sub_270412A18;
  v54[1] = v43;
  (*(v50 + 8))(v37, v39);
  v56 = v94;
  sub_2703FC3D4(v122, v94, &qword_2807D1388);
  v57 = (v56 + *(v95 + 44));
  *v57 = v46;
  v58 = v124;
  v57[1] = sub_270414FB0;
  v57[2] = v53;
  v59 = v89;
  v57[3] = v90;
  v57[4] = v59;
  v60 = v91;
  v57[5] = v92;
  v57[6] = v60;
  sub_2703FC3D4(v56, v55, &qword_2807D1390);
  v122 = sub_2705D5CD4();
  v61 = (v58 + *(v110 + 28));
  v63 = v61[1];
  v127 = *v61;
  v62 = v127;
  v128[0] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13B0);
  sub_2705D5E54();
  sub_270408958();

  v127 = v62;
  v128[0] = v63;
  sub_2705D5E54();
  sub_270408598();

  v127 = v62;
  v128[0] = v63;
  sub_2705D5E54();
  sub_270408518();

  sub_2705D60A4();
  sub_2705D5094();
  v64 = v111;
  sub_2705D5E54();
  v65 = *(v64 + *(v112 + 20) + 24);

  sub_2704103B0(v64, type metadata accessor for DynamicSheetView.ViewModel);
  v66 = sub_2705D53C4();
  v67 = v114;
  *v114 = v66;
  *(v67 + 8) = 0;
  *(v67 + 16) = 0;
  v127 = v65;
  sub_2705D5F84();
  sub_2705D60A4();
  sub_2705D5094();
  v68 = v115;
  sub_2703FC3D4(v67, v115, &qword_2807D1380);
  memcpy((v68 + *(v113 + 36)), __src, 0x70uLL);
  v69 = v125;
  sub_270410354(v58, v125, type metadata accessor for DynamicSheetView);
  v70 = swift_allocObject();
  sub_2704112DC(v69, v70 + v102, type metadata accessor for DynamicSheetView);
  v71 = sub_2705D60A4();
  v73 = v72;
  v74 = sub_2705D5CD4();
  v75 = sub_2705D60A4();
  v77 = v76;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_270412C10;
  *(v78 + 24) = v70;
  v79 = v117;
  sub_2703FC3D4(v68, v117, &qword_2807D1388);
  v80 = v119;
  v81 = (v79 + *(v118 + 36));
  *v81 = v74;
  v81[1] = sub_270412C5C;
  v81[2] = v78;
  v81[3] = v75;
  v81[4] = v77;
  v81[5] = v71;
  v81[6] = v73;
  sub_2703FC3D4(v79, v80, &qword_2807D1378);
  v82 = v116;
  sub_2703FC5C0(v55, v116, &qword_2807D1390);
  v83 = v121;
  sub_2703FC5C0(v80, v121, &qword_2807D1378);
  v84 = v120;
  sub_2703FC5C0(v82, v120, &qword_2807D1390);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13B8);
  v86 = *(v85 + 48);
  v87 = v122;
  v126[0] = v122;
  memcpy(&v126[1], v129, 0x70uLL);
  memcpy((v84 + v86), v126, 0x78uLL);
  sub_2703FC5C0(v83, v84 + *(v85 + 64), &qword_2807D1378);
  sub_2703FC5C0(v126, &v127, &qword_2807D13C0);
  sub_2703FC60C(v80, &qword_2807D1378);
  sub_2703FC60C(v123, &qword_2807D1390);
  sub_2703FC60C(v83, &qword_2807D1378);
  v127 = v87;
  memcpy(v128, v129, sizeof(v128));
  sub_2703FC60C(&v127, &qword_2807D13C0);
  return sub_2703FC60C(v82, &qword_2807D1390);
}

uint64_t sub_27040E3D8(double a1, double a2, double a3, double a4)
{
  Height = CGRectGetHeight(*&a1);
  type metadata accessor for DynamicSheetView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13B0);
  sub_2705D5E54();
  sub_270408730(Height);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2705E6EB0;
  sub_2705D7D04();

  v10 = sub_2705D79C4();
  MEMORY[0x2743A3A90](v10);

  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 32) = 0x6820726564616568;
  *(v9 + 40) = 0xEF203A7468676965;
  sub_2705D5E54();
  *(v9 + 88) = type metadata accessor for HeaderCenteredBodyLayout(0);
  *(v9 + 64) = v12;
  sub_2705D8394();

  type metadata accessor for DynamicSheetElementDimensionCache(0);
  sub_270410920(&qword_2807CFD50);
  sub_2705D4DA4();
  sub_270408F80();

  *&v13 = a1;
  *(&v13 + 1) = a2;
  v14 = a3;
  v15 = a4;
  v16 = 0;
  sub_270407B00(&v13);
}

uint64_t sub_27040E620(double a1, double a2)
{
  type metadata accessor for DynamicSheetView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13B0);
  sub_2705D5E54();
  sub_2704088A4(a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2705E6EB0;
  strcpy(v9, "body height: ");
  HIWORD(v9[1]) = -4864;
  v4 = sub_2705D79C4();
  MEMORY[0x2743A3A90](v4);

  v5 = v9[0];
  v6 = v9[1];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  sub_2705D5E54();
  *(v3 + 88) = type metadata accessor for HeaderCenteredBodyLayout(0);
  *(v3 + 64) = v8;
  sub_2705D8394();
}

uint64_t sub_27040E780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v75 = a1;
  v84 = a2;
  v2 = type metadata accessor for DynamicSheetView(0);
  v81 = *(v2 - 8);
  v80 = *(v81 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2705D4FD4();
  v77 = *(v78 - 8);
  v83 = *(v77 + 64);
  v4 = MEMORY[0x28223BE20](v78);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v71 - v6;
  v7 = type metadata accessor for DynamicSheetView.ViewModel(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D12E8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D12F0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D12F8);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v72 = &v71 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1300);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v73 = &v71 - v23;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1308) - 8;
  MEMORY[0x28223BE20](v74);
  v85 = &v71 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);
  sub_2705D5E54();
  v25 = *&v10[*(v8 + 28) + 32];

  sub_2704103B0(v10, type metadata accessor for DynamicSheetView.ViewModel);
  *v13 = sub_2705D53C4();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1310);
  __src[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0D08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1318);
  sub_270414D00(&unk_2807D1320);
  sub_2704126D0();
  sub_270410920(&qword_2807D02E0);
  sub_2705D5F84();
  sub_2705D6084();
  sub_2705D5094();
  sub_2703FC3D4(v13, v17, &qword_2807D12E8);
  memcpy(&v17[*(v15 + 44)], __src, 0x70uLL);
  LOBYTE(v10) = sub_2705D56D4();
  v26 = v72;
  sub_2703FC3D4(v17, v72, &qword_2807D12F0);
  v27 = v26 + *(v19 + 44);
  *v27 = v10;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  *(v27 + 40) = 1;
  LOBYTE(v10) = sub_2705D56B4();
  sub_2705D4D34();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v73;
  sub_2703FC3D4(v26, v73, &qword_2807D12F8);
  v37 = v36 + *(v22 + 44);
  *v37 = v10;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  LOBYTE(v10) = sub_2705D56E4();
  sub_2705D4D34();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v36;
  v47 = v85;
  sub_2703FC3D4(v46, v85, &qword_2807D1300);
  v48 = v47 + *(v74 + 44);
  *v48 = v10;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  v86 = 0xD00000000000001BLL;
  v87 = 0x8000000270613B10;
  v49 = v76;
  sub_2705D7CF4();
  v50 = v77;
  v51 = v78;
  (*(v77 + 104))(v49, *MEMORY[0x277CDF960], v78);
  v52 = v79;
  sub_270410354(v75, v79, type metadata accessor for DynamicSheetView);
  v53 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v54 = swift_allocObject();
  sub_2704112DC(v52, v54 + v53, type metadata accessor for DynamicSheetView);
  v81 = sub_2705D60A4();
  v80 = v55;
  v56 = sub_2705D5CD4();
  v79 = sub_2705D60A4();
  v58 = v57;
  v59 = v82;
  v60 = v51;
  (*(v50 + 16))(v82, v49, v51);
  v61 = v50;
  v62 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v63 = (v83 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v59, v60);
  v65 = (v64 + v63);
  *v65 = sub_27041280C;
  v65[1] = v54;
  (*(v61 + 8))(v49, v60);
  v66 = v84;
  sub_2703FC3D4(v85, v84, &qword_2807D1308);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1340);
  v68 = (v66 + *(result + 36));
  *v68 = v56;
  v68[1] = sub_270412824;
  v69 = v79;
  v68[2] = v64;
  v68[3] = v69;
  v70 = v81;
  v68[4] = v58;
  v68[5] = v70;
  v68[6] = v80;
  return result;
}

uint64_t sub_27040F068(double a1, double a2, double a3, double a4)
{
  type metadata accessor for DynamicSheetView(0);
  type metadata accessor for DynamicSheetElementDimensionCache(0);
  sub_270410920(&qword_2807CFD50);
  sub_2705D4DA4();
  sub_270408FA8();

  *&v9 = a1;
  *(&v9 + 1) = a2;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  sub_270407B00(&v9);
}

void sub_27040F168()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v117 = v2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1288);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_0();
  v107 = v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1270);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v108 = v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1290);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v103 = v8;
  OUTLINED_FUNCTION_77();
  sub_2705D4D24();
  OUTLINED_FUNCTION_0();
  v95 = v10;
  v96 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v98 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1298);
  OUTLINED_FUNCTION_0();
  v100 = v14;
  v101 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_11();
  v97 = v15;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v99 = v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1280);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_0();
  v104 = v19;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1260);
  OUTLINED_FUNCTION_0();
  v94 = v20;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_0();
  v93 = v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D12A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_0();
  v115 = v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D12A8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v27 = &v93 - v26;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1240);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17_0();
  v110 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6600);
  v31 = OUTLINED_FUNCTION_23_0(v30);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v93 - v35;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1250);
  OUTLINED_FUNCTION_0();
  v38 = v37;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  v41 = &v93 - v40;
  v42 = *v1;
  if (sub_2704D9D40(*v1) == 0x6E69616C70 && v43 == 0xE500000000000000)
  {
  }

  else
  {
    v45 = sub_2705D8134();

    if ((v45 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(v1 + 56))
  {
    v47 = *(v1 + 64);
    v46 = *(v1 + 72);
    v48 = *(v1 + 80);

    sub_2703C1FE4(v48, v36);
    sub_2703FC5C0(v1 + 8, v122, &qword_2807CF2D8);
    sub_27040FE50(v47, v46, v36, v122);
    v49 = v112;
    (*(v38 + 16))(v27, v41, v112);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_11_13();
    sub_270414D00(v50);
    sub_270414D00(&unk_2807D1258);
    sub_2705D5434();
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v51, v52, v53);
    swift_storeEnumTagMultiPayload();
    sub_270411484();
    sub_270411564();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_33_2();
    sub_2703FC60C(v54, v55);
    (*(v38 + 8))(v41, v49);
    goto LABEL_34;
  }

LABEL_11:
  if (sub_2704D9D40(v42) == 0x6C6F626D7973 && v56 == 0xE600000000000000)
  {
  }

  else
  {
    v58 = sub_2705D8134();

    if ((v58 & 1) == 0)
    {
LABEL_21:
      if (sub_2704D9D40(v42) == 0x6D6574737973 && v73 == 0xE600000000000000)
      {
      }

      else
      {
        OUTLINED_FUNCTION_33_2();
        v75 = sub_2705D8134();

        if ((v75 & 1) == 0)
        {
          swift_storeEnumTagMultiPayload();
          sub_2704115F0();
          sub_2705D5434();
          OUTLINED_FUNCTION_28_4();
          sub_2703FC5C0(v76, v77, v78);
          swift_storeEnumTagMultiPayload();
          sub_270411484();
          sub_270411564();
          OUTLINED_FUNCTION_4_5();
LABEL_33:
          OUTLINED_FUNCTION_33_2();
          sub_2703FC60C(v91, v92);
          goto LABEL_34;
        }
      }

      sub_2703C1FE4(*(v1 + 80), v34);
      v79 = v96;
      if (__swift_getEnumTagSinglePayload(v34, 1, v96) == 1)
      {
        sub_2705D4D14();
        if (__swift_getEnumTagSinglePayload(v34, 1, v79) != 1)
        {
          sub_2703FC60C(v34, &qword_2807D6600);
        }
      }

      else
      {
        (*(v95 + 32))(v98, v34, v79);
      }

      sub_2703FC5C0(v1 + 8, v122, &qword_2807CF2D8);
      v80 = v99;
      sub_2705D4734();
      v82 = v100;
      v81 = v101;
      (*(v100 + 16))(v97, v80, v101);
      OUTLINED_FUNCTION_11_13();
      sub_270414D00(v83);
      *v103 = sub_2705D5F04();
      swift_storeEnumTagMultiPayload();
      sub_270414D00(&unk_2807D1248);
      sub_2705D5434();
      (*(v82 + 8))(v80, v81);
      OUTLINED_FUNCTION_28_4();
      sub_2703FC5C0(v84, v85, v86);
      swift_storeEnumTagMultiPayload();
      sub_2704115F0();
      v87 = v108;
      sub_2705D5434();
      OUTLINED_FUNCTION_59();
      sub_2703FC5C0(v88, v89, v90);
      swift_storeEnumTagMultiPayload();
      sub_270411484();
      sub_270411564();
      sub_2705D5434();
      sub_2703FC60C(v87, &qword_2807D1270);
      goto LABEL_33;
    }
  }

  memcpy(v121, (v1 + 88), sizeof(v121));
  memcpy(v122, (v1 + 88), 0x160uLL);
  if (get_enum_tag_for_layout_string_19UnifiedMessagingKit13BrandingModelVSg_0(v122) == 1)
  {
    goto LABEL_21;
  }

  memcpy(v120, v122, sizeof(v120));
  if (sub_2703BB658(v120) != 4)
  {
    goto LABEL_21;
  }

  v59 = sub_2703BC05C(v120);
  v60 = *v59;
  v61 = v59[1];
  v62 = *(v1 + 80);
  memcpy(v119, v121, sizeof(v119));
  sub_2703BE7D0(v119, v118);
  sub_2703C1FE4(v62, v36);
  sub_2703FC5C0(v1 + 8, v118, &qword_2807CF2D8);
  OUTLINED_FUNCTION_42();
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  *(v63 + 24) = v61;
  v64 = v93;
  sub_2705D4724();
  v65 = v94;
  v66 = v111;
  (*(v94 + 16))(v27, v64, v111);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_11_13();
  sub_270414D00(v67);
  sub_270414D00(&unk_2807D1258);
  sub_2705D5434();
  OUTLINED_FUNCTION_28_4();
  sub_2703FC5C0(v68, v69, v70);
  swift_storeEnumTagMultiPayload();
  sub_270411484();
  sub_270411564();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_33_2();
  sub_2703FC60C(v71, v72);
  (*(v65 + 8))(v64, v66);
LABEL_34:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27040FD0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6600);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v5 = sub_2705D4D24();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_2703FC5C0(a1 + 8, v9, &qword_2807CF2D8);
  sub_270411B50(a1, v8);
  v6 = swift_allocObject();
  memcpy((v6 + 16), v8, 0x1C8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D12B8);
  sub_270411CC0();
  return sub_2705D4724();
}

uint64_t sub_27040FE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6600);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2703FC5C0(a3, &v13[-v9 - 8], &qword_2807D6600);
  sub_2703FC5C0(a4, v13, &unk_2807CF480);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_2705D4724();
  sub_2703FC60C(a4, &unk_2807CF480);
  return sub_2703FC60C(a3, &qword_2807D6600);
}

uint64_t sub_27040FFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2705D4DC4();

  v4 = sub_2705D60A4();
  *&v13 = v7 * 0.5;
  *(&v13 + 1) = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = a1;
  v20 = 256;
  sub_2704082FC(&v13, v4, v5, a2);
  v21[0] = v7 * 0.5;
  v21[1] = v7;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = a1;
  v28 = 256;
  return sub_2703FC60C(v21, &qword_2807D11B8);
}

uint64_t sub_2704100B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_88();
  sub_2705D4DC4();

  v8 = sub_2705D60A4();
  v17[0] = v11 * 0.5;
  v17[1] = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v4;
  v24 = 256;
  sub_270408414(v17, v8, v9, v6, v5, a4);
  v25[0] = v11 * 0.5;
  v25[1] = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v4;
  v32 = 256;
  return sub_2703FC60C(v25, &qword_2807D11B8);
}

uint64_t sub_270410234()
{
  OUTLINED_FUNCTION_54();
  result = sub_270408FA8();
  *v0 = result;
  return result;
}

uint64_t sub_27041028C()
{
  OUTLINED_FUNCTION_54();
  result = sub_270408F80();
  *v0 = result;
  return result;
}

uint64_t sub_2704102B8()
{
  OUTLINED_FUNCTION_54();
  result = sub_270408F58();
  *v0 = result;
  return result;
}

uint64_t sub_270410324@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2705D50F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_270410354(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_10_10();
  v5(v4);
  return a2;
}

uint64_t sub_2704103B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_27041041C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_87(*a1);
  }

  v7 = type metadata accessor for DynamicPageModel(0);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_2704104AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DynamicPageModel(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27041052C()
{
  result = type metadata accessor for EventBus();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DynamicPageModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2704105C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_87(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_270410684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_270410738()
{
  sub_27041083C(319, &qword_2807D1070, type metadata accessor for DynamicSheetView.ViewModel);
  if (v0 <= 0x3F)
  {
    sub_27041083C(319, &qword_2807D1078, type metadata accessor for HeaderCenteredBodyLayout);
    if (v1 <= 0x3F)
    {
      sub_27041088C();
      if (v2 <= 0x3F)
      {
        sub_2705D6914();
        if (v3 <= 0x3F)
        {
          sub_270410960();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27041083C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_94();
    v4 = sub_2705D5E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_27041088C()
{
  if (!qword_2807D1080)
  {
    type metadata accessor for DynamicSheetElementDimensionCache(255);
    sub_270410920(&qword_2807CFD50);
    v0 = sub_2705D4DB4();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D1080);
    }
  }
}

unint64_t sub_270410920(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_94();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_270410960()
{
  if (!qword_2807D1088)
  {
    v0 = sub_2705D4D94();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D1088);
    }
  }
}

uint64_t sub_2704109D0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_2704109DC()
{
  v0 = type metadata accessor for DynamicSheetView(0);
  OUTLINED_FUNCTION_23_0(v0);
  OUTLINED_FUNCTION_92();
  sub_27040B490();
}

unint64_t sub_270410A38()
{
  result = qword_2807D10D0;
  if (!qword_2807D10D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D10B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D10B8);
    sub_270414D00(&unk_2807D10C0);
    sub_270414D00(&unk_2807D10C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D10D0);
  }

  return result;
}

unint64_t sub_270410BC0()
{
  result = qword_2807D10E0;
  if (!qword_2807D10E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D10E8);
    sub_270410C78(&unk_2807D10F0);
    sub_270411164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D10E0);
  }

  return result;
}

unint64_t sub_270410C78(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_22_3(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1090);
    sub_270410A38();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_270410D30()
{
  result = qword_2807D1100;
  if (!qword_2807D1100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1108);
    sub_270410DBC();
    sub_270410E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1100);
  }

  return result;
}

unint64_t sub_270410DBC()
{
  result = qword_2807D1110;
  if (!qword_2807D1110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1118);
    sub_270410E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1110);
  }

  return result;
}

unint64_t sub_270410E48()
{
  result = qword_2807D1120;
  if (!qword_2807D1120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1128);
    sub_270410F00();
    sub_270414D00(&unk_2807D0098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1120);
  }

  return result;
}

unint64_t sub_270410F00()
{
  result = qword_2807D1130;
  if (!qword_2807D1130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1138);
    sub_270410FB8();
    sub_270414D00(&unk_2807D0088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1130);
  }

  return result;
}

unint64_t sub_270410FB8()
{
  result = qword_2807D1140;
  if (!qword_2807D1140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1148);
    sub_270411070();
    sub_270414D00(&unk_2807D0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1140);
  }

  return result;
}

unint64_t sub_270411070()
{
  result = qword_2807D1150;
  if (!qword_2807D1150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1090);
    sub_270410A38();
    swift_getOpaqueTypeConformance2();
    sub_270414D00(&unk_2807D0070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1150);
  }

  return result;
}

unint64_t sub_270411164()
{
  result = qword_2807D1160;
  if (!qword_2807D1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1090);
    sub_270410A38();
    swift_getOpaqueTypeConformance2();
    sub_270414D00(&unk_2807D1170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1160);
  }

  return result;
}

uint64_t sub_270411258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27041CD00();
  *a1 = result;
  return result;
}

unint64_t sub_270411288()
{
  result = qword_2807D1190;
  if (!qword_2807D1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1190);
  }

  return result;
}

uint64_t sub_2704112DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_10_10();
  v5(v4);
  return a2;
}

uint64_t sub_270411338(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1108);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_10_10();
  v4(v3);
  return a2;
}

unint64_t sub_2704113F8()
{
  result = qword_2807D1230;
  if (!qword_2807D1230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1228);
    sub_270411484();
    sub_270411564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1230);
  }

  return result;
}

unint64_t sub_270411484()
{
  result = qword_2807D1238;
  if (!qword_2807D1238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1240);
    sub_270414D00(&unk_2807D1248);
    sub_270414D00(&unk_2807D1258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1238);
  }

  return result;
}

unint64_t sub_270411564()
{
  result = qword_2807D1268;
  if (!qword_2807D1268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1270);
    sub_2704115F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1268);
  }

  return result;
}

unint64_t sub_2704115F0()
{
  result = qword_2807D1278;
  if (!qword_2807D1278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1280);
    sub_270414D00(&unk_2807D1248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1278);
  }

  return result;
}

uint64_t sub_2704116C4()
{

  OUTLINED_FUNCTION_42();

  return swift_deallocObject();
}

uint64_t sub_2704116F8()
{
  sub_2703C2F54();

  return sub_2705D5944();
}

uint64_t sub_27041174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a5;
  v11 = *(a5 + 8);
  v12 = *(a5 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_270411828;

  return sub_270407C74(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_270411828()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_27041192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v10;
  *(v5 + 48) = *(a5 + 32);
  v11 = swift_task_alloc();
  *(v5 + 56) = v11;
  *v11 = v5;
  v11[1] = sub_2704119F8;

  return sub_270407F54(a1, a2, a3, a4, v5 + 16);
}

uint64_t sub_2704119F8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  OUTLINED_FUNCTION_1_4();

  return v3();
}

double sub_270411AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v2;
  v5 = *(a2 + 32);
  *&result = sub_270407340(a1, v4).n128_u64[0];
  return result;
}

uint64_t sub_270411B0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2704116F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_270411BAC()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_5_19();
  if (!v3 || v2 >= 0x100)
  {
    OUTLINED_FUNCTION_4_18(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v1, *(v0 + 160), v2, *(v0 + 168), *(v0 + 184), *(v0 + 200), *(v0 + 216), *(v0 + 248), *(v0 + 264), *(v0 + 280), *(v0 + 296));
  }

  return swift_deallocObject();
}

unint64_t sub_270411CC0()
{
  result = qword_2807D12C0;
  if (!qword_2807D12C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D12B8);
    sub_2703C2CE4();
    sub_2703C2DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D12C0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for DynamicSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + *(type metadata accessor for DynamicSheetView.ViewModel(0) + 20);

  if (*(v4 + 3248) != 1)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      if (v5 == 1)
      {
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 56);
    }

    if (*(v4 + 104))
    {
    }

    OUTLINED_FUNCTION_5_19();
    if (!v8 || v7 >= 0x100)
    {
      OUTLINED_FUNCTION_4_18(*(v4 + 136), *(v4 + 144), *(v4 + 152), *(v4 + 160), *(v4 + 168), *(v4 + 176), v6, *(v4 + 192), v7, *(v4 + 200), *(v4 + 216), *(v4 + 232), *(v4 + 248), *(v4 + 280), *(v4 + 296), *(v4 + 312), *(v4 + 328));
    }

LABEL_12:
    v9 = *(v4 + 536);
    if (v9)
    {
      if (v9 == 1)
      {
        goto LABEL_22;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 512);
    }

    if (*(v4 + 560))
    {
    }

    OUTLINED_FUNCTION_5_19();
    if (!v8 || v11 >= 0x100)
    {
      OUTLINED_FUNCTION_4_18(*(v4 + 592), *(v4 + 600), *(v4 + 608), *(v4 + 616), *(v4 + 624), *(v4 + 632), v10, *(v4 + 648), v11, *(v4 + 656), *(v4 + 672), *(v4 + 688), *(v4 + 704), *(v4 + 736), *(v4 + 752), *(v4 + 768), *(v4 + 784));
    }

LABEL_22:
    v12 = *(v4 + 992);
    if (v12)
    {
      if (v12 == 1)
      {
        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 968);
    }

    if (*(v4 + 1016))
    {
    }

    OUTLINED_FUNCTION_5_19();
    if (!v8 || v14 >= 0x100)
    {
      OUTLINED_FUNCTION_4_18(*(v4 + 1048), *(v4 + 1056), *(v4 + 1064), *(v4 + 1072), *(v4 + 1080), *(v4 + 1088), v13, *(v4 + 1104), v14, *(v4 + 1112), *(v4 + 1128), *(v4 + 1144), *(v4 + 1160), *(v4 + 1192), *(v4 + 1208), *(v4 + 1224), *(v4 + 1240));
    }

LABEL_32:
    v15 = *(v4 + 1448);
    if (v15)
    {
      if (v15 == 1)
      {
        goto LABEL_42;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 1424);
    }

    if (*(v4 + 1472))
    {
    }

    OUTLINED_FUNCTION_5_19();
    if (!v8 || v17 >= 0x100)
    {
      OUTLINED_FUNCTION_4_18(*(v4 + 1504), *(v4 + 1512), *(v4 + 1520), *(v4 + 1528), *(v4 + 1536), *(v4 + 1544), v16, *(v4 + 1560), v17, *(v4 + 1568), *(v4 + 1584), *(v4 + 1600), *(v4 + 1616), *(v4 + 1648), *(v4 + 1664), *(v4 + 1680), *(v4 + 1696));
    }

LABEL_42:
    v18 = *(v4 + 1904);
    if (v18)
    {
      if (v18 == 1)
      {
        goto LABEL_52;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 1880);
    }

    if (*(v4 + 1928))
    {
    }

    OUTLINED_FUNCTION_5_19();
    if (!v8 || v20 >= 0x100)
    {
      OUTLINED_FUNCTION_4_18(*(v4 + 1960), *(v4 + 1968), *(v4 + 1976), *(v4 + 1984), *(v4 + 1992), *(v4 + 2000), v19, *(v4 + 2016), v20, *(v4 + 2024), *(v4 + 2040), *(v4 + 2056), *(v4 + 2072), *(v4 + 2104), *(v4 + 2120), *(v4 + 2136), *(v4 + 2152));
    }

LABEL_52:
    v21 = *(v4 + 2360);
    if (v21)
    {
      if (v21 == 1)
      {
        goto LABEL_62;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 2336);
    }

    if (*(v4 + 2384))
    {
    }

    OUTLINED_FUNCTION_5_19();
    if (!v8 || v23 >= 0x100)
    {
      OUTLINED_FUNCTION_4_18(*(v4 + 2416), *(v4 + 2424), *(v4 + 2432), *(v4 + 2440), *(v4 + 2448), *(v4 + 2456), v22, *(v4 + 2472), v23, *(v4 + 2480), *(v4 + 2496), *(v4 + 2512), *(v4 + 2528), *(v4 + 2560), *(v4 + 2576), *(v4 + 2592), *(v4 + 2608));
    }

LABEL_62:
    v24 = *(v4 + 2816);
    if (v24)
    {
      if (v24 == 1)
      {
LABEL_72:

        goto LABEL_73;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 2792);
    }

    if (*(v4 + 2840))
    {
    }

    OUTLINED_FUNCTION_5_19();
    if (!v8 || v26 >= 0x100)
    {
      OUTLINED_FUNCTION_4_18(*(v4 + 2872), *(v4 + 2880), *(v4 + 2888), *(v4 + 2896), *(v4 + 2904), *(v4 + 2912), v25, *(v4 + 2928), v26, *(v4 + 2936), *(v4 + 2952), *(v4 + 2968), *(v4 + 2984), *(v4 + 3016), *(v4 + 3032), *(v4 + 3048), *(v4 + 3064));
    }

    goto LABEL_72;
  }

LABEL_73:
  v27 = type metadata accessor for DynamicPageModel(0);
  v28 = *(v27 + 36);
  v29 = sub_2705D6674();
  if (!__swift_getEnumTagSinglePayload(v4 + v28, 1, v29))
  {
    (*(*(v29 - 8) + 8))(v4 + v28, v29);
  }

  v30 = v4 + *(v27 + 40);
  v31 = type metadata accessor for DynamicPageUnderlay(0);
  if (!__swift_getEnumTagSinglePayload(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = sub_2705D6734();
      OUTLINED_FUNCTION_14();
      v34 = *(v33 + 8);
      v34(v30, v32);
      v35 = type metadata accessor for ResponsiveArtworkUnderlay(0);
      v34(v30 + v35[5], v32);

      if (*(v30 + v35[8] + 8) != 1)
      {
      }

      if (*(v30 + v35[9] + 8) == 1)
      {
        goto LABEL_83;
      }
    }

    else
    {
    }
  }

LABEL_83:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1058);

  sub_2703DF688();

  sub_2704109D0(*(v3 + *(v1 + 32)), *(v3 + *(v1 + 32) + 8));

  return swift_deallocObject();
}

uint64_t sub_27041262C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for DynamicSheetView(0);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_92();

  return a2(a1, v2 + v5);
}

unint64_t sub_2704126D0()
{
  result = qword_2807D1328;
  if (!qword_2807D1328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1318);
    sub_27041275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1328);
  }

  return result;
}

unint64_t sub_27041275C()
{
  result = qword_2807D1330;
  if (!qword_2807D1330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1338);
    sub_270414D00(&unk_2807CFF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1330);
  }

  return result;
}

uint64_t sub_270412830()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_47(v1);

  return v3(v2);
}

uint64_t sub_270412944()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_27041297C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_22_3(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    sub_270414D00(&unk_2807D0068);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_270412A30(uint64_t (*a1)(uint64_t, __n128, __n128, __n128, __n128), double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for DynamicSheetView(0);
  OUTLINED_FUNCTION_23_0(v10);
  OUTLINED_FUNCTION_92();
  v12.n128_f64[0] = a2;
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;

  return a1(v5 + v11, v12, v13, v14, v15);
}

uint64_t objectdestroy_97Tm()
{
  sub_2705D4FD4();
  OUTLINED_FUNCTION_14();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_270412B68@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2705D4FD4();
  OUTLINED_FUNCTION_1_1(v3);
  v6 = (v1 + ((*(v5 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_270542150(v7, v8, a1);
}

uint64_t sub_270412C28()
{

  OUTLINED_FUNCTION_42();

  return swift_deallocObject();
}

uint64_t sub_270412C7C(uint64_t (*a1)(uint64_t, __n128, __n128), double a2, double a3)
{
  v6 = type metadata accessor for DynamicSheetView(0);
  OUTLINED_FUNCTION_23_0(v6);
  OUTLINED_FUNCTION_92();
  v8.n128_f64[0] = a2;
  v9.n128_f64[0] = a3;

  return a1(v3 + v7, v8, v9);
}

uint64_t objectdestroy_100Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_270412D54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_47(v1);

  return v3(v2);
}

unint64_t sub_270412E3C()
{
  result = qword_2807D13E0;
  if (!qword_2807D13E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1188);
    sub_270412EF4();
    sub_270414D00(&unk_2807D1400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D13E0);
  }

  return result;
}

unint64_t sub_270412EF4()
{
  result = qword_2807D13E8;
  if (!qword_2807D13E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D10A0);
    sub_2705D6914();
    sub_270410C78(&unk_2807D10D8);
    swift_getOpaqueTypeConformance2();
    sub_270414D00(&unk_2807D13F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D13E8);
  }

  return result;
}

unint64_t sub_270413034()
{
  result = qword_2807D1460;
  if (!qword_2807D1460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1420);
    sub_2704130C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1460);
  }

  return result;
}

unint64_t sub_2704130C0()
{
  result = qword_2807D1468;
  if (!qword_2807D1468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1430);
    sub_270413178();
    sub_270414D00(&unk_2807D0098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1468);
  }

  return result;
}

unint64_t sub_270413178()
{
  result = qword_2807D1470;
  if (!qword_2807D1470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1428);
    sub_270413230();
    sub_270414D00(&unk_2807D0088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1470);
  }

  return result;
}

unint64_t sub_270413230()
{
  result = qword_2807D1478;
  if (!qword_2807D1478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1448);
    sub_2704132E8();
    sub_270414D00(&qword_2807D0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1478);
  }

  return result;
}

unint64_t sub_2704132E8()
{
  result = qword_2807D1480;
  if (!qword_2807D1480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1458);
    sub_2704133A0();
    sub_270414D00(&unk_2807D0070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1480);
  }

  return result;
}

unint64_t sub_2704133A0()
{
  result = qword_2807D1488;
  if (!qword_2807D1488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1450);
    sub_27041342C();
    sub_27041388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1488);
  }

  return result;
}

unint64_t sub_27041342C()
{
  result = qword_2807D1490;
  if (!qword_2807D1490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1498);
    sub_2704134B8();
    sub_270413544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1490);
  }

  return result;
}

unint64_t sub_2704134B8()
{
  result = qword_2807D14A0;
  if (!qword_2807D14A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D14A8);
    sub_270413544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D14A0);
  }

  return result;
}

unint64_t sub_270413544()
{
  result = qword_2807D14B0;
  if (!qword_2807D14B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D14B8);
    sub_2704135D0();
    sub_27041365C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D14B0);
  }

  return result;
}

unint64_t sub_2704135D0()
{
  result = qword_2807D14C0;
  if (!qword_2807D14C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D14C8);
    sub_27041365C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D14C0);
  }

  return result;
}

unint64_t sub_27041365C()
{
  result = qword_2807D14D0;
  if (!qword_2807D14D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D14D8);
    sub_2704136E8();
    sub_270413774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D14D0);
  }

  return result;
}

unint64_t sub_2704136E8()
{
  result = qword_2807D14E0;
  if (!qword_2807D14E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D14E8);
    sub_270413774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D14E0);
  }

  return result;
}

unint64_t sub_270413774()
{
  result = qword_2807D14F0;
  if (!qword_2807D14F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D14F8);
    sub_270413800();
    sub_27041388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D14F0);
  }

  return result;
}

unint64_t sub_270413800()
{
  result = qword_2807D1500;
  if (!qword_2807D1500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1508);
    sub_27041388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1500);
  }

  return result;
}

unint64_t sub_27041388C()
{
  result = qword_2807D1510;
  if (!qword_2807D1510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1518);
    sub_270413918();
    sub_2704139A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1510);
  }

  return result;
}

unint64_t sub_270413918()
{
  result = qword_2807D1520;
  if (!qword_2807D1520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1528);
    sub_2704139A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1520);
  }

  return result;
}

unint64_t sub_2704139A4()
{
  result = qword_2807D1530;
  if (!qword_2807D1530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1538);
    sub_270414D00(&unk_2807D1540);
    sub_270414D00(&unk_2807D1550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1530);
  }

  return result;
}

unint64_t sub_270413A88()
{
  result = qword_2807D1560;
  if (!qword_2807D1560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1438);
    sub_270413034();
    sub_2704130C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1560);
  }

  return result;
}

unint64_t sub_270413B14()
{
  result = qword_2807D1568;
  if (!qword_2807D1568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1440);
    sub_270413A88();
    sub_2704133A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1568);
  }

  return result;
}

unint64_t sub_270413BA0()
{
  result = qword_2807D15B8;
  if (!qword_2807D15B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1580);
    sub_270413C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D15B8);
  }

  return result;
}

unint64_t sub_270413C2C()
{
  result = qword_2807D15C0;
  if (!qword_2807D15C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1590);
    sub_270413CE4();
    sub_270414D00(&unk_2807D0098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D15C0);
  }

  return result;
}

unint64_t sub_270413CE4()
{
  result = qword_2807D15C8;
  if (!qword_2807D15C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1588);
    sub_270413D9C();
    sub_270414D00(&unk_2807D0088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D15C8);
  }

  return result;
}

unint64_t sub_270413D9C()
{
  result = qword_2807D15D0;
  if (!qword_2807D15D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D15B0);
    sub_270413E54();
    sub_270414D00(&qword_2807D0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D15D0);
  }

  return result;
}

unint64_t sub_270413E54()
{
  result = qword_2807D15D8;
  if (!qword_2807D15D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D15A8);
    sub_270413F0C();
    sub_270414D00(&unk_2807D0070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D15D8);
  }

  return result;
}

unint64_t sub_270413F0C()
{
  result = qword_2807D15E0;
  if (!qword_2807D15E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D15A0);
    sub_270413F98();
    sub_2704143F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D15E0);
  }

  return result;
}

unint64_t sub_270413F98()
{
  result = qword_2807D15E8;
  if (!qword_2807D15E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D15F0);
    sub_270414024();
    sub_2704140B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D15E8);
  }

  return result;
}

unint64_t sub_270414024()
{
  result = qword_2807D15F8;
  if (!qword_2807D15F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1600);
    sub_2704140B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D15F8);
  }

  return result;
}

unint64_t sub_2704140B0()
{
  result = qword_2807D1608;
  if (!qword_2807D1608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1610);
    sub_27041413C();
    sub_2704141C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1608);
  }

  return result;
}

unint64_t sub_27041413C()
{
  result = qword_2807D1618;
  if (!qword_2807D1618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1620);
    sub_2704141C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1618);
  }

  return result;
}

unint64_t sub_2704141C8()
{
  result = qword_2807D1628;
  if (!qword_2807D1628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1630);
    sub_270414254();
    sub_2704142E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1628);
  }

  return result;
}

unint64_t sub_270414254()
{
  result = qword_2807D1638;
  if (!qword_2807D1638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1640);
    sub_2704142E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1638);
  }

  return result;
}

unint64_t sub_2704142E0()
{
  result = qword_2807D1648;
  if (!qword_2807D1648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1650);
    sub_27041436C();
    sub_2704143F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1648);
  }

  return result;
}

unint64_t sub_27041436C()
{
  result = qword_2807D1658;
  if (!qword_2807D1658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1660);
    sub_2704143F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1658);
  }

  return result;
}

unint64_t sub_2704143F8()
{
  result = qword_2807D1668;
  if (!qword_2807D1668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1670);
    sub_270414D00(&unk_2807D1678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1668);
  }

  return result;
}

unint64_t sub_2704144B0()
{
  result = qword_2807D1688;
  if (!qword_2807D1688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1598);
    sub_270413BA0();
    sub_270413C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1688);
  }

  return result;
}

unint64_t sub_27041453C()
{
  result = qword_2807D16D8;
  if (!qword_2807D16D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D16A0);
    sub_2704145C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D16D8);
  }

  return result;
}

unint64_t sub_2704145C8()
{
  result = qword_2807D16E0;
  if (!qword_2807D16E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D16B0);
    sub_270414680();
    sub_270414D00(&unk_2807D0098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D16E0);
  }

  return result;
}

unint64_t sub_270414680()
{
  result = qword_2807D16E8;
  if (!qword_2807D16E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D16A8);
    sub_270414738();
    sub_270414D00(&unk_2807D0088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D16E8);
  }

  return result;
}

unint64_t sub_270414738()
{
  result = qword_2807D16F0;
  if (!qword_2807D16F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D16D0);
    sub_2704147F0();
    sub_270414D00(&qword_2807D0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D16F0);
  }

  return result;
}

unint64_t sub_2704147F0()
{
  result = qword_2807D16F8;
  if (!qword_2807D16F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D16C8);
    sub_2704148A8();
    sub_270414D00(&unk_2807D0070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D16F8);
  }

  return result;
}

unint64_t sub_2704148A8()
{
  result = qword_2807D1700;
  if (!qword_2807D1700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D16C0);
    sub_270414960();
    sub_270414D00(&unk_2807D1550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1700);
  }

  return result;
}

unint64_t sub_270414960()
{
  result = qword_2807D1708;
  if (!qword_2807D1708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1710);
    sub_2704149EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1708);
  }

  return result;
}

unint64_t sub_2704149EC()
{
  result = qword_2807D1718;
  if (!qword_2807D1718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1720);
    sub_270414AA4();
    sub_270414D00(&unk_2807D1768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1718);
  }

  return result;
}

unint64_t sub_270414AA4()
{
  result = qword_2807D1728;
  if (!qword_2807D1728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1730);
    sub_270414B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1728);
  }

  return result;
}

unint64_t sub_270414B30()
{
  result = qword_2807D1738;
  if (!qword_2807D1738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1740);
    sub_270414BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1738);
  }

  return result;
}

unint64_t sub_270414BBC()
{
  result = qword_2807D1748;
  if (!qword_2807D1748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1750);
    sub_270414C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1748);
  }

  return result;
}

unint64_t sub_270414C48()
{
  result = qword_2807D1758;
  if (!qword_2807D1758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1760);
    sub_270414D00(&unk_2807D1768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1758);
  }

  return result;
}

unint64_t sub_270414D00(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_22_3(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_94();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_270414D3C()
{
  result = qword_2807D1778;
  if (!qword_2807D1778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D16B8);
    sub_27041453C();
    sub_2704145C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1778);
  }

  return result;
}

unint64_t sub_270414DC8()
{
  result = qword_2807CFFF8;
  if (!qword_2807CFFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0000);
    sub_2703E26F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CFFF8);
  }

  return result;
}

unint64_t sub_270414E54()
{
  result = qword_2807D0018;
  if (!qword_2807D0018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0020);
    sub_2703E2828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0018);
  }

  return result;
}

unint64_t sub_270414EE0()
{
  result = qword_2807D0038;
  if (!qword_2807D0038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0040);
    sub_2703E28E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0038);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{

  return sub_270414D00(a1);
}

void OUTLINED_FUNCTION_4_18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, unint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, __n128 a15@<Q5>, __n128 a16@<Q6>, __n128 a17@<Q7>)
{

  sub_2703F4940(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a11.n128_i64[0], a11.n128_i64[1], a12.n128_i64[0], a12.n128_i64[1], a13.n128_i64[0], a13.n128_i64[1], v17, a9, a14.n128_i64[0], a14.n128_i64[1], a15.n128_i64[0], a15.n128_i64[1], a16.n128_i64[0], a16.n128_i64[1], a17.n128_i64[0], a17.n128_i64[1], v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), *v25, v25[8]);
}

void OUTLINED_FUNCTION_8_14()
{
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 1;

  bzero((v0 + 312), 0x1A0uLL);
}

void OUTLINED_FUNCTION_10_12()
{
  *(v0 - 304) = *(v0 - 200);
  *(v0 - 232) = *(v0 - 184);
  *(v0 - 312) = *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_13_10()
{
  result = *(v4 - 304);
  *v1 = v5;
  v1[1] = v5;
  *v2 = result;
  *(v2 + *(v3 + 56)) = v0;
  return result;
}

void OUTLINED_FUNCTION_18_5()
{

  JUMPOUT(0x2743A1950);
}

void OUTLINED_FUNCTION_21_5()
{
  v6 = (v1 + *(*(v2 - 256) + 36));
  *v6 = v0;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{

  return sub_2704100B4(v6, v4, v5, a4);
}

void *OUTLINED_FUNCTION_30_4()
{

  return memcpy((v0 + 736), (v0 + 272), 0x1C8uLL);
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return sub_2705D45F4();
}

uint64_t OUTLINED_FUNCTION_37_2()
{
  v4 = *(v2 - 264);

  return sub_2703FC3D4(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_43_1()
{
  v4 = *(v2 - 216);

  return sub_2703FC5C0(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return sub_2705D45E4();
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_65()
{

  JUMPOUT(0x2743A1960);
}

uint64_t OUTLINED_FUNCTION_78()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_79()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_80()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_82(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(v3 - 320);

  return sub_2703FC5C0(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_2705D5E54();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return sub_2705D5064();
}

uint64_t OUTLINED_FUNCTION_85@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 208) = a2;

  return sub_2703E2A94(a1, v2 - 200);
}

uint64_t OUTLINED_FUNCTION_86()
{

  return sub_2704087E4();
}

uint64_t OUTLINED_FUNCTION_87@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1)
{
  *(v1 - 136) = a1;

  return sub_2705D4C74();
}

uint64_t sub_270415730(void *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_5_21();
  if (!v1)
  {
    OUTLINED_FUNCTION_23_2(v7, v7[3]);
    sub_2703B1488();
    OUTLINED_FUNCTION_4_19();
    sub_2703B1414(v6, v4);
    sub_2703B1414(v4, __src);
    memcpy(v2, __src, 0x78uLL);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_270415818(void *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_5_21();
  if (!v1)
  {
    OUTLINED_FUNCTION_23_2(v7, v7[3]);
    sub_2703DD594();
    OUTLINED_FUNCTION_4_19();
    *v2 = v4;
    *(v2 + 16) = v5;
    *(v2 + 32) = v6;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_2704158AC(void *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_5_21();
  if (!v1)
  {
    OUTLINED_FUNCTION_23_2(v6, v6[3]);
    sub_270416968();
    OUTLINED_FUNCTION_4_19();
    *v2 = v4;
    *(v2 + 16) = v5;
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_270415940(void *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_5_21();
  if (!v1)
  {
    OUTLINED_FUNCTION_23_2(v7, v7[3]);
    sub_270416818();
    OUTLINED_FUNCTION_4_19();
    sub_2704166B8(v6, v4);
    sub_2704166B8(v4, __src);
    memcpy(v2, __src, 0x280uLL);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_270415A28@<X0>(void *a1@<X0>, void (*a2)(void *)@<X1>, void *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D8454();
  if (!v3)
  {
    v6 = OUTLINED_FUNCTION_23_2(v9, v9[3]);
    a2(v6);
    sub_2705D8184();
    memcpy(a3, __src, 0x160uLL);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return OUTLINED_FUNCTION_7_12();
}

unint64_t sub_270415B08(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D8454();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2704164E0();
    sub_2705D8184();
    v3 = v6;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_270415BE4(void *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_5_21();
  if (!v1)
  {
    OUTLINED_FUNCTION_23_2(v5, v5[3]);
    sub_2704168C0();
    OUTLINED_FUNCTION_4_19();
    *v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_270415C70(void *a1)
{
  OUTLINED_FUNCTION_8_15(a1);
  OUTLINED_FUNCTION_10_13();
  sub_2703B1414(v1, __dst);
  sub_2703B1414(__dst, __src);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  sub_270416AC0(v1, v3);
  sub_2703B14E0();
  sub_2705D8204();
  sub_2703B1414(__src, v3);
  sub_270416B1C(v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_270415DE8()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2705D84B4();
  memcpy(__dst, v0, sizeof(__dst));
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  v8 = v6(v0, v9);
  v4(v8);
  sub_2705D8204();
  memcpy(v9, __dst, sizeof(v9));
  v2(v9);
  __swift_destroy_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270415ED8(void *a1)
{
  OUTLINED_FUNCTION_8_15(a1);
  OUTLINED_FUNCTION_10_13();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_2703DD5EC();
  OUTLINED_FUNCTION_14_13();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_270415F64(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D84B4();
  v6 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_270416538();
  sub_2705D8204();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_27041600C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D84B4();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_270416914();
  OUTLINED_FUNCTION_14_13();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2704160BC(void *a1)
{
  OUTLINED_FUNCTION_8_15(a1);
  OUTLINED_FUNCTION_10_13();
  sub_2704166B8(v1, v7);
  sub_2704166B8(v7, v4);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  sub_270416714(v1, v3);
  sub_270416770();
  sub_2705D8204();
  sub_2704166B8(v4, v3);
  sub_2704167C4(v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_270416180(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_10_13();
  v6 = a2 & 1;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_27041686C();
  OUTLINED_FUNCTION_14_13();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_270416214()
{
  v1 = *(v0 + 40);
  if (v1 == 255)
  {
    return 0;
  }

  result = *(v0 + 32);
  if (v1)
  {
    return qword_2705E7F58[result];
  }

  return result;
}

uint64_t sub_27041624C()
{
  v1 = *(v0 + 56);
  if (v1 == 255)
  {
    return 0;
  }

  result = *(v0 + 48);
  if (v1)
  {
    return qword_2705E7F58[result];
  }

  return result;
}

uint64_t sub_270416284()
{
  v0 = sub_2705D7EB4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2704162D0(char a1)
{
  result = 65;
  switch(a1)
  {
    case 1:
      result = 66;
      break;
    case 2:
      result = 67;
      break;
    case 3:
      result = 0x72614D7465656873;
      break;
    case 4:
      result = 0x746F427465656873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270416388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270416284();
  *a1 = result;
  return result;
}

uint64_t sub_2704163B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704162D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_270416494@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270415B08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2704164E0()
{
  result = qword_2807D1790;
  if (!qword_2807D1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1790);
  }

  return result;
}

unint64_t sub_270416538()
{
  result = qword_2807D1798;
  if (!qword_2807D1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1798);
  }

  return result;
}

unint64_t sub_27041658C(uint64_t a1)
{
  *(a1 + 8) = sub_2704165BC();
  result = sub_270416610();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2704165BC()
{
  result = qword_2807D17A0;
  if (!qword_2807D17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17A0);
  }

  return result;
}

unint64_t sub_270416610()
{
  result = qword_2807D17A8;
  if (!qword_2807D17A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17A8);
  }

  return result;
}

unint64_t sub_270416664()
{
  result = qword_2807D17B0;
  if (!qword_2807D17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17B0);
  }

  return result;
}

unint64_t sub_270416770()
{
  result = qword_2807D17B8;
  if (!qword_2807D17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17B8);
  }

  return result;
}

unint64_t sub_270416818()
{
  result = qword_2807D17C0;
  if (!qword_2807D17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17C0);
  }

  return result;
}

unint64_t sub_27041686C()
{
  result = qword_2807D17C8;
  if (!qword_2807D17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17C8);
  }

  return result;
}

unint64_t sub_2704168C0()
{
  result = qword_2807D17D0;
  if (!qword_2807D17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17D0);
  }

  return result;
}

unint64_t sub_270416914()
{
  result = qword_2807D17D8;
  if (!qword_2807D17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17D8);
  }

  return result;
}

unint64_t sub_270416968()
{
  result = qword_2807D17E0;
  if (!qword_2807D17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17E0);
  }

  return result;
}

_BYTE *sub_270416B84(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270416C50);
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

uint64_t sub_270416C84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_270416CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_270416D20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 57))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_270416D64(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

unint64_t sub_270416DC8()
{
  result = qword_2807D17E8;
  if (!qword_2807D17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17E8);
  }

  return result;
}

uint64_t sub_270416E1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465786966 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000)
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

uint64_t sub_270416EE0(char a1)
{
  if (a1)
  {
    return 0x63696D616E7964;
  }

  else
  {
    return 0x6465786966;
  }
}

void sub_270416F14()
{
  OUTLINED_FUNCTION_10_1();
  v24 = v2;
  v25 = v0;
  v27 = v3;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1838);
  OUTLINED_FUNCTION_0();
  v22 = v7;
  v23 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1840);
  OUTLINED_FUNCTION_0();
  v21 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1848);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_23_2(v5, v5[3]);
  sub_2704180B4();
  sub_2705D84C4();
  if (v27)
  {
    sub_270418108();
    OUTLINED_FUNCTION_15_10();
    sub_2705D7FE4();
    sub_270416610();
    v20 = v23;
    sub_2705D8084();
    (*(v22 + 8))(v10, v20);
  }

  else
  {
    sub_27041815C();
    OUTLINED_FUNCTION_15_10();
    sub_2705D7FE4();
    v26 = v24;
    sub_2703EC7A4();
    sub_2705D8084();
    (*(v21 + 8))(v15, v11);
  }

  (*(v18 + 8))(v1, v16);
  OUTLINED_FUNCTION_11_3();
}

void sub_2704171D8()
{
  OUTLINED_FUNCTION_10_1();
  v50 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1808);
  OUTLINED_FUNCTION_0();
  v48 = v5;
  v49 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1810);
  OUTLINED_FUNCTION_0();
  v46 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1818);
  OUTLINED_FUNCTION_0();
  v47 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_23_2(v3, v3[3]);
  sub_2704180B4();
  v17 = v50;
  sub_2705D8484();
  if (v17)
  {
    goto LABEL_10;
  }

  v44[1] = v9;
  v44[2] = v13;
  v45 = v8;
  v19 = v48;
  v18 = v49;
  v50 = v3;
  v20 = sub_2705D7FB4();
  sub_27042C9F0(v20, 0);
  if (v22 == v23 >> 1)
  {
    goto LABEL_8;
  }

  v44[0] = 0;
  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    sub_27042C9E4(v22 + 1);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      if (v24)
      {
        sub_270418108();
        v29 = v45;
        OUTLINED_FUNCTION_15_10();
        v30 = v44[0];
        sub_2705D7ED4();
        if (v30)
        {
          goto LABEL_13;
        }

        sub_2704165BC();
        sub_2705D7FA4();
        swift_unknownObjectRelease();
        (*(v19 + 8))(v29, v18);
        v38 = OUTLINED_FUNCTION_24_5();
        v39(v38);
      }

      else
      {
        sub_27041815C();
        OUTLINED_FUNCTION_15_10();
        v35 = v44[0];
        sub_2705D7ED4();
        if (v35)
        {
LABEL_13:
          v36 = OUTLINED_FUNCTION_24_5();
          v37(v36);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        sub_2703EC654();
        sub_2705D7FA4();
        swift_unknownObjectRelease();
        v40 = OUTLINED_FUNCTION_16_7();
        v41(v40);
        v42 = OUTLINED_FUNCTION_24_5();
        v43(v42);
      }

      __swift_destroy_boxed_opaque_existential_1(v50);
      goto LABEL_11;
    }

LABEL_8:
    v31 = v1;
    v32 = sub_2705D7D84();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v34 = &unk_2880520D0;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v47 + 8))(v31, v14);
LABEL_9:
    v3 = v50;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_11_3();
    return;
  }

  __break(1u);
}

uint64_t sub_27041771C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270416E1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270417744(uint64_t a1)
{
  v2 = sub_2704180B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270417780(uint64_t a1)
{
  v2 = sub_2704180B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704177BC(uint64_t a1)
{
  v2 = sub_270418108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704177F8(uint64_t a1)
{
  v2 = sub_270418108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270417834(uint64_t a1)
{
  v2 = sub_27041815C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270417870(uint64_t a1)
{
  v2 = sub_27041815C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2704178AC(uint64_t a1@<X8>)
{
  sub_2704171D8();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

uint64_t sub_270417900()
{
  v1 = *(v0 + 8);
  if (v1 == 255)
  {
    return 0;
  }

  result = *v0;
  if (v1)
  {
    return qword_2705E7F58[result];
  }

  return result;
}

uint64_t sub_270417938()
{
  v1 = *(v0 + 24);
  if (v1 == 255)
  {
    return 0;
  }

  result = *(v0 + 16);
  if (v1)
  {
    return qword_2705E7F58[result];
  }

  return result;
}

uint64_t sub_270417970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x42676E6964646170 && a2 == 0xED00006D6F74746FLL;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54676E6964646170 && a2 == 0xEA0000000000706FLL;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C676E6964646170 && a2 == 0xEE00676E69646165;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x54676E6964646170 && a2 == 0xEF676E696C696172)
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