uint64_t sub_267B10B44()
{
  v1 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_267B10B8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_267B10C54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriMailModel();
  result = sub_267B16BD0();
  *a1 = result;
  return result;
}

uint64_t sub_267B10D6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267B10DC8()
{
  sub_267B11008();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_267B110B8(319, &qword_280211C20, &qword_280211B88, &qword_267B1B188, sub_267B0F5C8);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_267B110B8(319, &qword_280211C28, &qword_2802118F0, &qword_267B1ABF8, sub_267B0F6C8);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_267B110B8(319, &qword_280211C30, &qword_280211790, &qword_267B1A970, sub_267B09CFC);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_267B11178();
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

void sub_267B11008()
{
  if (!qword_280211C18)
  {
    type metadata accessor for SiriMailModel();
    sub_267B10D6C(&qword_280211830, type metadata accessor for SiriMailModel);
    v0 = sub_267B16A70();
    if (!v1)
    {
      atomic_store(v0, &qword_280211C18);
    }
  }
}

void sub_267B110B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for SiriMailModel();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_0_6();
    sub_267B10D6C(v9, v10);
    a5();
    v11 = sub_267B16A70();
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_267B11178()
{
  if (!qword_280211C38)
  {
    type metadata accessor for SiriMailModel();
    sub_267B16860();
    sub_267B10D6C(&qword_280211830, type metadata accessor for SiriMailModel);
    sub_267B10D6C(&qword_2802119B8, MEMORY[0x277D5CA28]);
    v0 = sub_267B16A70();
    if (!v1)
    {
      atomic_store(v0, &qword_280211C38);
    }
  }
}

uint64_t sub_267B11264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1)
{
  *(v2 + 40) = a1;

  return MEMORY[0x28215BBA8](v2, v1, v3, a1);
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void OUTLINED_FUNCTION_32()
{

  JUMPOUT(0x26D600E60);
}

uint64_t sub_267B115A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetMailbox();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 2;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_267B1166C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WidgetMailbox();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  return result;
}

uint64_t type metadata accessor for Snapshot()
{
  result = qword_280211C40;
  if (!qword_280211C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B11760()
{
  result = type metadata accessor for WidgetMailbox();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriMailUI8SnapshotV5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_267B11800(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 18))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267B11854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_267B118B4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_267B118E8(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, uint64_t a5, __int16 a6)
{
  if (!a1)
  {
    return !a4;
  }

  if (a1 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if ((sub_267AFC24C(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  result = 0;
  if ((a6 & 1) == 0 && a2 == a5)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_267B119D8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211C50, &qword_267B1B550);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211C58, &qword_267B1B558);
  sub_267B11BD8();
  sub_267B173A0();
  if (a1)
  {
    v9 = a1;
    if (sub_267B17880())
    {
      sub_267B17890();
    }

    v10 = sub_267B17170();
    sub_267B16C00();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    (*(v5 + 32))(a2, v8, v4);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211C68, &unk_267B1B560);
    v20 = a2 + *(result + 36);
    *v20 = v10;
    *(v20 + 8) = v12;
    *(v20 + 16) = v14;
    *(v20 + 24) = v16;
    *(v20 + 32) = v18;
    *(v20 + 40) = 0;
  }

  else
  {
    sub_267B17910();
    sub_267ADC630();
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

unint64_t sub_267B11BD8()
{
  result = qword_280211C60;
  if (!qword_280211C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211C58, &qword_267B1B558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211C60);
  }

  return result;
}

unint64_t sub_267B11C40()
{
  result = qword_280211C70;
  if (!qword_280211C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211C68, &unk_267B1B560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211C58, &qword_267B1B558);
    sub_267B11BD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211C70);
  }

  return result;
}

double sub_267B11D08(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_267B11D5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_267B174C0();
  result = sub_267B16D40();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_267B11D9C(__int128 *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211C78, &unk_267B1B570);
  sub_267B175D0();
}

uint64_t sub_267B11E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_267B11F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for WidgetMailbox()
{
  result = qword_280211C80;
  if (!qword_280211C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267B12040()
{
  sub_267B120E8();
  if (v0 <= 0x3F)
  {
    sub_267B1214C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267B120E8()
{
  if (!qword_280211C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211C98, &qword_267B1B5F8);
    v0 = sub_267B17B00();
    if (!v1)
    {
      atomic_store(v0, &qword_280211C90);
    }
  }
}

void sub_267B1214C()
{
  if (!qword_280211CA0)
  {
    sub_267B16500();
    v0 = sub_267B17B00();
    if (!v1)
    {
      atomic_store(v0, &qword_280211CA0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10SiriMailUI13WidgetMailboxV13ConfigurationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267B121BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267B12214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_267B12264(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_267B12294(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    default:
      if (a4 < 6)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      else
      {
        return sub_267B17D60();
      }
  }
}

uint64_t sub_267B12348()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  switch(v2)
  {
    case 0uLL:
      v3 = *(type metadata accessor for WidgetMailbox() + 32);
      goto LABEL_8;
    case 1uLL:
      v3 = *(type metadata accessor for WidgetMailbox() + 36);
      goto LABEL_8;
    case 2uLL:
      v3 = *(type metadata accessor for WidgetMailbox() + 40);
      goto LABEL_8;
    case 3uLL:
      v3 = *(type metadata accessor for WidgetMailbox() + 44);
      goto LABEL_8;
    case 4uLL:
      v3 = *(type metadata accessor for WidgetMailbox() + 28);
      goto LABEL_8;
    case 5uLL:
      v3 = *(type metadata accessor for WidgetMailbox() + 48);
LABEL_8:
      v4 = (v0 + v3);
      v5 = *v4;
      v6 = v4[1];

      break;
    default:
      v5 = *(v0 + 8);
      v8 = *(v0 + 16);
      break;
  }

  sub_267B1245C(v1, v2);
  return v5;
}

uint64_t sub_267B1245C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_267B12470()
{
  v0 = sub_267B16590();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  sub_267B16580();
  v9 = *(type metadata accessor for WidgetMessage() + 36);
  v10 = sub_267B16570();
  (*(v3 + 8))(v8, v0);
  if (v10)
  {
    if (qword_280210890 != -1)
    {
      swift_once();
    }

    v11 = &qword_280211CB0;
  }

  else
  {
    if (qword_280210888 != -1)
    {
      swift_once();
    }

    v11 = &qword_280211CA8;
  }

  v12 = *v11;
  v13 = sub_267B16510();
  v14 = [v12 stringFromDate_];

  v15 = sub_267B17980();
  return v15;
}

uint64_t WidgetMessage.debugDescription.getter()
{
  v1 = v0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  OUTLINED_FUNCTION_0(v37);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_267B17B60();
  MEMORY[0x26D600520](540697705, 0xE400000000000000);
  MEMORY[0x26D600520](*v1, v1[1]);
  MEMORY[0x26D600520](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  v7 = v0[3];
  v38 = v0[2];
  v39 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210CB8, &qword_267B19538);
  v8 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x26D600520](v8);

  MEMORY[0x26D600520](0x63656A627573202CLL, 0xEB00000000203A74);
  v9 = v0[5];
  v38 = v0[4];
  v39 = v9;

  v10 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x26D600520](v10);

  MEMORY[0x26D600520](0xD000000000000014, 0x8000000267B23C00);
  v11 = v0[7];
  v38 = v0[6];
  v39 = v11;

  v12 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x26D600520](v12);

  MEMORY[0x26D600520](0x67617373656D202CLL, 0xEF203A79646F4265);
  v13 = v0[9];
  v38 = v0[8];
  v39 = v13;

  v14 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x26D600520](v14);

  OUTLINED_FUNCTION_33_0();
  v15 = type metadata accessor for WidgetMessage();
  v16 = v15[9];
  sub_267B16530();
  OUTLINED_FUNCTION_11_5();
  sub_267B15AFC(v17, v18);
  v19 = sub_267B17D30();
  MEMORY[0x26D600520](v19);

  MEMORY[0x26D600520](0x3A5049567369202CLL, 0xE900000000000020);
  if (*(v1 + v15[10]))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + v15[10]))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x26D600520](v20, v21);

  MEMORY[0x26D600520](0x65726E557369202CLL, 0xEC000000203A6461);
  v22 = OUTLINED_FUNCTION_23_0(v15[11]);
  if (v23)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x26D600520](v22, v24);

  MEMORY[0x26D600520](0xD000000000000012, 0x8000000267B23C40);
  v25 = OUTLINED_FUNCTION_23_0(v15[12]);
  if (v23)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  MEMORY[0x26D600520](v25, v26);

  MEMORY[0x26D600520](44, 0xE100000000000000);
  v27 = v41;
  v36 = v40;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_267B17B60();
  MEMORY[0x26D600520](0x656B636F6C427369, 0xEB00000000203A64);
  v28 = OUTLINED_FUNCTION_23_0(v15[13]);
  if (v23)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x26D600520](v28, v29);

  MEMORY[0x26D600520](0x203A6C7275202CLL, 0xE700000000000000);
  sub_267B12AE0(v1 + v15[14], v6);
  v30 = sub_267B17990();
  MEMORY[0x26D600520](v30);

  MEMORY[0x26D600520](0x616570537369202CLL, 0xEF203A6873696672);
  v31 = OUTLINED_FUNCTION_23_0(v15[15]);
  if (v23)
  {
    v32 = 0xE500000000000000;
  }

  else
  {
    v32 = 0xE400000000000000;
  }

  MEMORY[0x26D600520](v31, v32);

  MEMORY[0x26D600520](0x6361746E6F63202CLL, 0xED0000203A644974);
  MEMORY[0x26D600520](*(v1 + v15[16]), *(v1 + v15[16] + 8));
  OUTLINED_FUNCTION_33_0();
  MEMORY[0x26D600520](*(v1 + v15[17]), *(v1 + v15[17] + 8));
  v33 = v40;
  v34 = v41;
  v40 = v36;
  v41 = v27;

  MEMORY[0x26D600520](v33, v34);

  return v40;
}

uint64_t type metadata accessor for WidgetMessage()
{
  result = qword_280211D08;
  if (!qword_280211D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B12AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WidgetMessage.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.sender.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.subject.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.generatedSummary.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.messageBody.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.dateReceived.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetMessage() + 36);
  v4 = sub_267B16530();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t WidgetMessage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetMessage() + 56);

  return sub_267B12AE0(v3, a1);
}

uint64_t WidgetMessage.contactId.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 64));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.contactId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = (v1 + *(type metadata accessor for WidgetMessage() + 64));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WidgetMessage.toRecipients.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 68));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.toRecipients.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = (v1 + *(type metadata accessor for WidgetMessage() + 68));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WidgetMessage.readLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 76));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.deleteLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 80));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.replyLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 84));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.nextLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 88));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.seeAllLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 92));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.moreInMailLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 96));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.vipLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 100));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.inboxesLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 104));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.inboxLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 108));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.flaggedLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 112));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.unreadLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 116));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.todayLabel.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 120));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.emptySender.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 124));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.emptySubject.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 128));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.emptyBody.getter()
{
  v0 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_13_2(*(v0 + 132));
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.init(id:sender:subject:generatedSummary:messageBody:dateReceived:isVIP:isUnread:hasAttachments:isBlocked:url:isSpearfish:contactId:toRecipients:hasNextWindow:readLabel:deleteLabel:replyLabel:nextLabel:seeAllLabel:moreInMailLabel:vipLabel:inboxesLabel:inboxLabel:flaggedLabel:unreadLabel:todayLabel:emptySender:emptySubject:emptyBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 9) = a11;
  v54 = type metadata accessor for WidgetMessage();
  v55 = v54[9];
  v56 = sub_267B16530();
  OUTLINED_FUNCTION_0(v56);
  (*(v57 + 32))(&a9[v55], a12);
  a9[v54[10]] = a13;
  a9[v54[11]] = a14;
  a9[v54[12]] = a15;
  a9[v54[13]] = a16;
  result = sub_267B1350C(a17, &a9[v54[14]]);
  a9[v54[15]] = a18;
  v59 = &a9[v54[16]];
  *v59 = a19;
  *(v59 + 1) = a20;
  v60 = &a9[v54[17]];
  *v60 = a21;
  *(v60 + 1) = a22;
  a9[v54[18]] = a23;
  v61 = &a9[v54[19]];
  *v61 = a24;
  *(v61 + 1) = a25;
  v62 = &a9[v54[20]];
  *v62 = a26;
  *(v62 + 1) = a27;
  v63 = &a9[v54[21]];
  *v63 = a28;
  *(v63 + 1) = a29;
  v64 = &a9[v54[22]];
  *v64 = a30;
  *(v64 + 1) = a31;
  v65 = &a9[v54[23]];
  *v65 = a32;
  *(v65 + 1) = a33;
  v66 = &a9[v54[24]];
  *v66 = a34;
  *(v66 + 1) = a35;
  v67 = &a9[v54[25]];
  *v67 = a36;
  *(v67 + 1) = a37;
  v68 = &a9[v54[26]];
  *v68 = a38;
  *(v68 + 1) = a39;
  v69 = &a9[v54[27]];
  *v69 = a40;
  *(v69 + 1) = a41;
  v70 = &a9[v54[28]];
  *v70 = a42;
  *(v70 + 1) = a43;
  v71 = &a9[v54[29]];
  *v71 = a44;
  *(v71 + 1) = a45;
  v72 = &a9[v54[30]];
  *v72 = a46;
  *(v72 + 1) = a47;
  v73 = &a9[v54[31]];
  *v73 = a48;
  *(v73 + 1) = a49;
  v74 = &a9[v54[32]];
  *v74 = a50;
  *(v74 + 1) = a51;
  v75 = &a9[v54[33]];
  *v75 = a52;
  *(v75 + 1) = a53;
  return result;
}

uint64_t sub_267B1350C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B1357C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
    if (v6 || (sub_267B17D60() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
      if (v7 || (sub_267B17D60() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000267B23C80 == a2;
        if (v8 || (sub_267B17D60() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x426567617373656DLL && a2 == 0xEB0000000079646FLL;
          if (v9 || (sub_267B17D60() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6563655265746164 && a2 == 0xEC00000064657669;
            if (v10 || (sub_267B17D60() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5049567369 && a2 == 0xE500000000000000;
              if (v11 || (sub_267B17D60() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646165726E557369 && a2 == 0xE800000000000000;
                if (v12 || (sub_267B17D60() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6361747441736168 && a2 == 0xEE0073746E656D68;
                  if (v13 || (sub_267B17D60() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656B636F6C427369 && a2 == 0xE900000000000064;
                    if (v14 || (sub_267B17D60() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 7107189 && a2 == 0xE300000000000000;
                      if (v15 || (sub_267B17D60() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6672616570537369 && a2 == 0xEB00000000687369;
                        if (v16 || (sub_267B17D60() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
                          if (v17 || (sub_267B17D60() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6970696365526F74 && a2 == 0xEC00000073746E65;
                            if (v18 || (sub_267B17D60() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x577478654E736168 && a2 == 0xED0000776F646E69;
                              if (v19 || (sub_267B17D60() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6562614C64616572 && a2 == 0xE90000000000006CLL;
                                if (v20 || (sub_267B17D60() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x614C6574656C6564 && a2 == 0xEB000000006C6562;
                                  if (v21 || (sub_267B17D60() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x62614C796C706572 && a2 == 0xEA00000000006C65;
                                    if (v22 || (sub_267B17D60() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6562614C7478656ELL && a2 == 0xE90000000000006CLL;
                                      if (v23 || (sub_267B17D60() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x614C6C6C41656573 && a2 == 0xEB000000006C6562;
                                        if (v24 || (sub_267B17D60() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x614D6E4965726F6DLL && a2 == 0xEF6C6562614C6C69;
                                          if (v25 || (sub_267B17D60() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6C6562614C706976 && a2 == 0xE800000000000000;
                                            if (v26 || (sub_267B17D60() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x4C7365786F626E69 && a2 == 0xEC0000006C656261;
                                              if (v27 || (sub_267B17D60() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x62614C786F626E69 && a2 == 0xEA00000000006C65;
                                                if (v28 || (sub_267B17D60() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x4C64656767616C66 && a2 == 0xEC0000006C656261;
                                                  if (v29 || (sub_267B17D60() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x614C646165726E75 && a2 == 0xEB000000006C6562;
                                                    if (v30 || (sub_267B17D60() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x62614C7961646F74 && a2 == 0xEA00000000006C65;
                                                      if (v31 || (sub_267B17D60() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6E65537974706D65 && a2 == 0xEB00000000726564;
                                                        if (v32 || (sub_267B17D60() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6275537974706D65 && a2 == 0xEC0000007463656ALL;
                                                          if (v33 || (sub_267B17D60() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else if (a1 == 0x646F427974706D65 && a2 == 0xE900000000000079)
                                                          {

                                                            return 29;
                                                          }

                                                          else
                                                          {
                                                            v35 = sub_267B17D60();

                                                            if (v35)
                                                            {
                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              return 30;
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
}

uint64_t sub_267B13E70(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 0x7265646E6573;
    case 2:
      return 0x7463656A627573;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x426567617373656DLL;
    case 5:
      return 0x6563655265746164;
    case 6:
      return 0x5049567369;
    case 7:
      return 0x646165726E557369;
    case 8:
      return 0x6361747441736168;
    case 9:
      return 0x656B636F6C427369;
    case 10:
      return 7107189;
    case 11:
      return 0x6672616570537369;
    case 12:
      return 0x49746361746E6F63;
    case 13:
      return 0x6970696365526F74;
    case 14:
      return 0x577478654E736168;
    case 15:
      v4 = 1684104562;
      return v4 | 0x6562614C00000000;
    case 16:
      v3 = 0x6574656C6564;
      goto LABEL_30;
    case 17:
      v5 = 1819305330;
      goto LABEL_35;
    case 18:
      v4 = 1954047342;
      return v4 | 0x6562614C00000000;
    case 19:
      v3 = 0x6C6C41656573;
      goto LABEL_30;
    case 20:
      return 0x614D6E4965726F6DLL;
    case 21:
      return 0x6C6562614C706976;
    case 22:
      return 0x4C7365786F626E69;
    case 23:
      v6 = 0x4C786F626E69;
      goto LABEL_36;
    case 24:
      return 0x4C64656767616C66;
    case 25:
      v3 = 0x646165726E75;
LABEL_30:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      break;
    case 26:
      v5 = 1633972084;
LABEL_35:
      v6 = v5 & 0xFFFF0000FFFFFFFFLL | 0x4C7900000000;
LABEL_36:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      break;
    case 27:
      result = 0x6E65537974706D65;
      break;
    case 28:
      result = 0x6275537974706D65;
      break;
    case 29:
      result = 0x646F427974706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B1421C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B1357C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B14244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B13E68();
  *a1 = result;
  return result;
}

uint64_t sub_267B1426C(uint64_t a1)
{
  v2 = sub_267B14D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B142A8(uint64_t a1)
{
  v2 = sub_267B14D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static WidgetMessage.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_30();
  v2 = sub_267B16500();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0) - 8) + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v14 = &v96 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211CC0, &qword_267B1B678);
  OUTLINED_FUNCTION_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v20 = &v96 - v19;
  v21 = *v1 == *v0 && v1[1] == v0[1];
  if (!v21 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  v22 = v1[3];
  v23 = v0[3];
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_74;
    }

    v24 = v1[2] == v0[2] && v22 == v23;
    if (!v24 && (sub_267B17D60() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v23)
  {
    goto LABEL_74;
  }

  v25 = v1[5];
  v26 = v0[5];
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_74;
    }

    v27 = v1[4] == v0[4] && v25 == v26;
    if (!v27 && (sub_267B17D60() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v26)
  {
    goto LABEL_74;
  }

  v28 = v1[7];
  v29 = v0[7];
  if (v28)
  {
    if (!v29)
    {
      goto LABEL_74;
    }

    v30 = v1[6] == v0[6] && v28 == v29;
    if (!v30 && (sub_267B17D60() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v29)
  {
    goto LABEL_74;
  }

  v31 = v1[9];
  v32 = v0[9];
  if (v31)
  {
    if (!v32)
    {
      goto LABEL_74;
    }

    v33 = v1[8] == v0[8] && v31 == v32;
    if (!v33 && (sub_267B17D60() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v32)
  {
    goto LABEL_74;
  }

  v34 = type metadata accessor for WidgetMessage();
  v35 = v34[9];
  if ((sub_267B16520() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2(v34[10]);
  if (!v21)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2(v34[11]);
  if (!v21)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2(v34[12]);
  if (!v21)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2(v34[13]);
  if (!v21)
  {
    goto LABEL_74;
  }

  v36 = v34[14];
  v37 = *(v15 + 48);
  sub_267B12AE0(v1 + v36, v20);
  sub_267B12AE0(v0 + v36, &v20[v37]);
  OUTLINED_FUNCTION_35_0(v20);
  if (!v21)
  {
    sub_267B12AE0(v20, v14);
    OUTLINED_FUNCTION_35_0(&v20[v37]);
    if (!v38)
    {
      (*(v5 + 32))(v10, &v20[v37], v2);
      OUTLINED_FUNCTION_10_4();
      sub_267B15AFC(v39, v40);
      v41 = sub_267B17950();
      v42 = *(v5 + 8);
      v42(v10, v2);
      v42(v14, v2);
      sub_267AEC1D4(v20, &qword_280210EF8, &qword_267B19EB0);
      if (v41)
      {
        goto LABEL_61;
      }

LABEL_74:
      v49 = 0;
      return v49 & 1;
    }

    (*(v5 + 8))(v14, v2);
LABEL_59:
    sub_267AEC1D4(v20, &qword_280211CC0, &qword_267B1B678);
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_35_0(&v20[v37]);
  if (!v21)
  {
    goto LABEL_59;
  }

  sub_267AEC1D4(v20, &qword_280210EF8, &qword_267B19EB0);
LABEL_61:
  OUTLINED_FUNCTION_17_2(v34[15]);
  if (!v21)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[16]);
  v45 = v21 && v43 == v44;
  if (!v45 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[17]);
  v48 = v21 && v46 == v47;
  if (!v48 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2(v34[18]);
  if (!v21)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[19]);
  v53 = v21 && v51 == v52;
  if (!v53 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[20]);
  v56 = v21 && v54 == v55;
  if (!v56 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[21]);
  v59 = v21 && v57 == v58;
  if (!v59 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[22]);
  v62 = v21 && v60 == v61;
  if (!v62 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[23]);
  v65 = v21 && v63 == v64;
  if (!v65 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[24]);
  v68 = v21 && v66 == v67;
  if (!v68 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[25]);
  v71 = v21 && v69 == v70;
  if (!v71 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[26]);
  v74 = v21 && v72 == v73;
  if (!v74 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[27]);
  v77 = v21 && v75 == v76;
  if (!v77 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[28]);
  v80 = v21 && v78 == v79;
  if (!v80 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[29]);
  v83 = v21 && v81 == v82;
  if (!v83 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[30]);
  v86 = v21 && v84 == v85;
  if (!v86 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[31]);
  v89 = v21 && v87 == v88;
  if (!v89 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[32]);
  v92 = v21 && v90 == v91;
  if (!v92 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v34[33]);
  if (v21 && v93 == v94)
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_267B17D60();
  }

  return v49 & 1;
}

uint64_t WidgetMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211CD0, &qword_267B1B680);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B14D4C();
  sub_267B17DC0();
  v14 = *v3;
  v15 = v3[1];
  v33 = 0;
  sub_267B17CF0();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_6_5(1);
    sub_267B17CD0();
    v18 = v3[4];
    v19 = v3[5];
    OUTLINED_FUNCTION_6_5(2);
    sub_267B17CD0();
    v20 = v3[6];
    v21 = v3[7];
    OUTLINED_FUNCTION_6_5(3);
    sub_267B17CD0();
    v22 = v3[8];
    v23 = v3[9];
    OUTLINED_FUNCTION_6_5(4);
    sub_267B17CD0();
    v24 = type metadata accessor for WidgetMessage();
    v25 = v24[9];
    v33 = 5;
    sub_267B16530();
    OUTLINED_FUNCTION_11_5();
    sub_267B15AFC(v26, v27);
    OUTLINED_FUNCTION_27_0();
    sub_267B17D20();
    OUTLINED_FUNCTION_14_4(*(v3 + v24[10]), 6);
    OUTLINED_FUNCTION_14_4(*(v3 + v24[11]), 7);
    OUTLINED_FUNCTION_14_4(*(v3 + v24[12]), 8);
    OUTLINED_FUNCTION_14_4(*(v3 + v24[13]), 9);
    v28 = v24[14];
    v33 = 10;
    sub_267B16500();
    OUTLINED_FUNCTION_10_4();
    sub_267B15AFC(v29, v30);
    OUTLINED_FUNCTION_27_0();
    sub_267B17CE0();
    OUTLINED_FUNCTION_14_4(*(v3 + v24[15]), 11);
    OUTLINED_FUNCTION_20_0(v24[16]);
    OUTLINED_FUNCTION_6_5(12);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[17]);
    OUTLINED_FUNCTION_6_5(13);
    sub_267B17CF0();
    OUTLINED_FUNCTION_14_4(*(v3 + v24[18]), 14);
    OUTLINED_FUNCTION_20_0(v24[19]);
    OUTLINED_FUNCTION_6_5(15);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[20]);
    OUTLINED_FUNCTION_6_5(16);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[21]);
    OUTLINED_FUNCTION_6_5(17);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[22]);
    OUTLINED_FUNCTION_6_5(18);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[23]);
    OUTLINED_FUNCTION_6_5(19);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[24]);
    OUTLINED_FUNCTION_6_5(20);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[25]);
    OUTLINED_FUNCTION_6_5(21);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[26]);
    OUTLINED_FUNCTION_6_5(22);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[27]);
    OUTLINED_FUNCTION_6_5(23);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[28]);
    OUTLINED_FUNCTION_6_5(24);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[29]);
    OUTLINED_FUNCTION_6_5(25);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[30]);
    OUTLINED_FUNCTION_6_5(26);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[31]);
    OUTLINED_FUNCTION_6_5(27);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[32]);
    OUTLINED_FUNCTION_6_5(28);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v24[33]);
    OUTLINED_FUNCTION_6_5(29);
    sub_267B17CF0();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_267B14D4C()
{
  result = qword_280211CD8;
  if (!qword_280211CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211CD8);
  }

  return result;
}

uint64_t WidgetMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0) - 8) + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  v8 = &v101 - v7;
  v9 = sub_267B16530();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v101 = v11;
  v102 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211CF0, &qword_267B1B688);
  OUTLINED_FUNCTION_0_0(v111);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v23 = &v101 - v22;
  v114 = type metadata accessor for WidgetMessage();
  v24 = OUTLINED_FUNCTION_0(v114);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v112 = a1;
  v113 = (v28 - v27);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B14D4C();
  sub_267B17DB0();
  if (v2)
  {
    v115 = v2;
    v31 = 0;
    v32 = 0;
    LODWORD(v8) = 0;
    v33 = 0;
    LODWORD(v23) = 0;
    OUTLINED_FUNCTION_5_7();
  }

  else
  {
    *&v110[4] = a2;
    v32 = v18;
    v117 = 0;
    OUTLINED_FUNCTION_32_0();
    v30 = sub_267B17C70();
    v41 = v113;
    *v113 = v30;
    v41[1] = v42;
    OUTLINED_FUNCTION_12_3(1);
    v43 = sub_267B17C50();
    v31 = v18;
    v44 = v114;
    v41[2] = v43;
    v41[3] = v45;
    OUTLINED_FUNCTION_12_3(2);
    v41[4] = sub_267B17C50();
    v41[5] = v46;
    OUTLINED_FUNCTION_12_3(3);
    v41[6] = sub_267B17C50();
    v41[7] = v47;
    OUTLINED_FUNCTION_12_3(4);
    v41[8] = sub_267B17C50();
    v41[9] = v48;
    v117 = 5;
    OUTLINED_FUNCTION_11_5();
    sub_267B15AFC(v49, v50);
    sub_267B17CA0();
    (*(v101 + 32))(v41 + v44[9], v16, v102);
    v117 = 6;
    v33 = v23;
    *(v41 + v44[10]) = sub_267B17C80() & 1;
    v117 = 7;
    OUTLINED_FUNCTION_32_0();
    *(v41 + v44[11]) = sub_267B17C80() & 1;
    OUTLINED_FUNCTION_12_3(8);
    v51 = sub_267B17C80();
    v115 = 0;
    *(v41 + v44[12]) = v51 & 1;
    OUTLINED_FUNCTION_12_3(9);
    v52 = v115;
    v53 = sub_267B17C80();
    v115 = v52;
    if (!v52)
    {
      *(v113 + v114[13]) = v53 & 1;
      sub_267B16500();
      v117 = 10;
      OUTLINED_FUNCTION_10_4();
      sub_267B15AFC(v54, v55);
      v33 = v23;
      v56 = v115;
      sub_267B17C60();
      v115 = v56;
      if (!v56)
      {
        sub_267B1350C(v8, v113 + v114[14]);
        OUTLINED_FUNCTION_7_7(11);
        v59 = sub_267B17C80();
        v115 = 0;
        *(v113 + v114[15]) = v59 & 1;
        OUTLINED_FUNCTION_7_7(12);
        v60 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v60, v61, v114[16]);
        OUTLINED_FUNCTION_7_7(13);
        v62 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v62, v63, v114[17]);
        OUTLINED_FUNCTION_7_7(14);
        v64 = sub_267B17C80();
        v115 = 0;
        *(v113 + v114[18]) = v64 & 1;
        OUTLINED_FUNCTION_7_7(15);
        v65 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v65, v66, v114[19]);
        OUTLINED_FUNCTION_7_7(16);
        v67 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v67, v68, v114[20]);
        OUTLINED_FUNCTION_7_7(17);
        v69 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v69, v70, v114[21]);
        OUTLINED_FUNCTION_7_7(18);
        v71 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v71, v72, v114[22]);
        OUTLINED_FUNCTION_7_7(19);
        v73 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v73, v74, v114[23]);
        OUTLINED_FUNCTION_7_7(20);
        v75 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v75, v76, v114[24]);
        OUTLINED_FUNCTION_7_7(21);
        v77 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v77, v78, v114[25]);
        OUTLINED_FUNCTION_7_7(22);
        v79 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v79, v80, v114[26]);
        OUTLINED_FUNCTION_7_7(23);
        v81 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v81, v82, v114[27]);
        OUTLINED_FUNCTION_7_7(24);
        v83 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v83, v84, v114[28]);
        OUTLINED_FUNCTION_7_7(25);
        v85 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v85, v86, v114[29]);
        OUTLINED_FUNCTION_7_7(26);
        v87 = sub_267B17C70();
        v106 = 1;
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v87, v88, v114[30]);
        OUTLINED_FUNCTION_7_7(27);
        v89 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v89, v90, v114[31]);
        OUTLINED_FUNCTION_7_7(28);
        v91 = sub_267B17C70();
        v115 = 0;
        OUTLINED_FUNCTION_21_0(v91, v92, v114[32]);
        OUTLINED_FUNCTION_7_7(29);
        v93 = sub_267B17C70();
        v115 = 0;
        v94 = v93;
        v96 = v95;
        v97 = OUTLINED_FUNCTION_9_3();
        v98(v97);
        v99 = v113;
        v100 = (v113 + v114[33]);
        *v100 = v94;
        v100[1] = v96;
        sub_267AFC670(v99, *&v110[4]);
        __swift_destroy_boxed_opaque_existential_1(v112);
        return sub_267AEB1F8(v99);
      }
    }

    v57 = OUTLINED_FUNCTION_9_3();
    v58(v57);
    v103 = 0;
    v105 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    *v110 = 0;
    v116 = 0;
    OUTLINED_FUNCTION_2_9();
  }

  v34 = v113;
  v35 = v114;
  result = __swift_destroy_boxed_opaque_existential_1(v112);
  if (v31)
  {
    v106 = 0;
    v104 = 0;
    v37 = v34[1];

    if (v32)
    {
LABEL_6:
      v38 = v34[3];
    }
  }

  else
  {
    v104 = 0;
    v106 = 0;
    if (v32)
    {
      goto LABEL_6;
    }
  }

  if (v8)
  {
    v39 = v34[7];

    if ((v33 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_30:
    v40 = v34[9];

    if (v23)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v33)
  {
    goto LABEL_30;
  }

LABEL_9:
  if (v23)
  {
LABEL_10:
    result = (*(v101 + 8))(v34 + v35[9], v102);
  }

LABEL_11:
  if (v103)
  {
    result = OUTLINED_FUNCTION_27(v35[16]);
    if ((v105 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (!v105)
  {
LABEL_13:
    if (v107)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

  result = OUTLINED_FUNCTION_27(v35[17]);
  if (v107)
  {
LABEL_14:
    result = OUTLINED_FUNCTION_27(v35[19]);
    if ((v107 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!HIDWORD(v107))
  {
LABEL_15:
    if (v108)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = OUTLINED_FUNCTION_27(v35[20]);
  if (v108)
  {
LABEL_16:
    result = OUTLINED_FUNCTION_27(v35[21]);
    if ((v108 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!HIDWORD(v108))
  {
LABEL_17:
    if (v109)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = OUTLINED_FUNCTION_27(v35[22]);
  if (v109)
  {
LABEL_18:
    result = OUTLINED_FUNCTION_27(v35[23]);
    if ((v109 & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (!HIDWORD(v109))
  {
LABEL_19:
    if (*v110)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = OUTLINED_FUNCTION_27(v35[24]);
  if (v110[0])
  {
LABEL_20:
    result = OUTLINED_FUNCTION_27(v35[25]);
    if ((v116 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (!v116)
  {
LABEL_21:
    if (*&v110[4])
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = OUTLINED_FUNCTION_27(v35[26]);
  if (v110[4])
  {
LABEL_22:
    result = OUTLINED_FUNCTION_27(v35[27]);
    if ((v111 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_43:
    result = OUTLINED_FUNCTION_27(v35[28]);
    goto LABEL_44;
  }

LABEL_42:
  if (v111)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (v106)
  {
    result = OUTLINED_FUNCTION_27(v35[30]);
    if ((v104 & 1) == 0)
    {
LABEL_46:
      if (!HIDWORD(v104))
      {
        return result;
      }

      return OUTLINED_FUNCTION_27(v35[32]);
    }
  }

  else if (!v104)
  {
    goto LABEL_46;
  }

  result = OUTLINED_FUNCTION_27(v35[31]);
  if ((v104 & 0x100000000) == 0)
  {
    return result;
  }

  return OUTLINED_FUNCTION_27(v35[32]);
}

uint64_t sub_267B15AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267B15B78@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_267B15B9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_267B16530();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_267B15C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_267B16530();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_267B15D5C()
{
  sub_267AF25D8();
  if (v0 <= 0x3F)
  {
    sub_267B16530();
    if (v1 <= 0x3F)
    {
      sub_267B1214C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WidgetMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
        JUMPOUT(0x267B15FB0);
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B15FEC()
{
  result = qword_280211D18;
  if (!qword_280211D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211D18);
  }

  return result;
}

unint64_t sub_267B16044()
{
  result = qword_280211D20;
  if (!qword_280211D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211D20);
  }

  return result;
}

unint64_t sub_267B1609C()
{
  result = qword_280211D28;
  if (!qword_280211D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211D28);
  }

  return result;
}

id sub_267B160F0()
{
  result = sub_267B16110();
  qword_280211CA8 = result;
  return result;
}

id sub_267B16110()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  [v0 setDoesRelativeDateFormatting_];
  return v0;
}

id sub_267B16184()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_280211CB0 = v0;
  return result;
}

void OUTLINED_FUNCTION_3_7()
{
  *(v0 - 140) = 0;
  *(v0 - 132) = 0;
  *(v0 - 72) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_4_9()
{
  *(v0 - 156) = 0;
  *(v0 - 148) = 0;
  *(v0 - 140) = 0;
  *(v0 - 132) = 0;
  *(v0 - 72) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_5_7()
{
  *(v0 - 176) = 0;
  *(v0 - 164) = 0;
  *(v0 - 156) = 0;
  *(v0 - 148) = 0;
  *(v0 - 140) = 0;
  *(v0 - 132) = 0;
  *(v0 - 72) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_7_7@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  result = v1 - 65;
  v3 = *(v1 - 120);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_4@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_3()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

void OUTLINED_FUNCTION_13_3(int a1@<W8>)
{
  *(v1 - 164) = a1;
  *(v1 - 156) = a1;
  *(v1 - 152) = a1;
  *(v1 - 148) = a1;
  *(v1 - 144) = a1;
  *(v1 - 140) = a1;
  *(v1 - 136) = a1;
}

uint64_t OUTLINED_FUNCTION_14_4@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v3 - 65) = a2;

  return MEMORY[0x2821FDB40](a1, v3 - 65, v2);
}

uint64_t OUTLINED_FUNCTION_20_0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_21_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_22_0(int a1@<W8>)
{
  *(v1 - 164) = a1;
  *(v1 - 156) = a1;
  *(v1 - 152) = a1;
}

uint64_t OUTLINED_FUNCTION_23_0@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + a1))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void OUTLINED_FUNCTION_26(int a1@<W8>)
{
  *(v1 - 156) = a1;
  *(v1 - 152) = a1;
  *(v1 - 148) = a1;
  *(v1 - 144) = a1;
  *(v1 - 140) = a1;
  *(v1 - 136) = a1;
  *(v1 - 132) = a1;
  *(v1 - 128) = a1;
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_0()
{
  result = v0 - 65;
  v2 = *(v0 - 120);
  return result;
}

void OUTLINED_FUNCTION_33_0()
{

  JUMPOUT(0x26D600520);
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return sub_267B17990();
}