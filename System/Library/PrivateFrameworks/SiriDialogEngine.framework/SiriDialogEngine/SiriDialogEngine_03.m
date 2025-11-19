uint64_t sub_222D1B274()
{
  OUTLINED_FUNCTION_14_2();
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t static CATDialog.execute(bundle:catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v5;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v1[3] = v9;
  v10 = sub_222D5210C();
  v1[10] = v10;
  v11 = *(v10 - 8);
  v1[11] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *v3;
  v1[12] = v13;
  v1[13] = v14;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

id sub_222D1B3A4()
{
  v1 = v0[3];
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v3 = result;
    v4 = v0[12];
    v5 = v0[13];
    sub_222D5292C();

    sub_222D520BC();

    v0[2] = v5;
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_222D1B4DC;
    v7 = v0[12];
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[5];
    v11 = v0[6];
    v12 = v0[4];

    return static CATDialog.execute(templateDir:catId:parameters:globals:callback:options:)(v7, v12, v10, v11, v8, v9, v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D1B4DC()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v9 = v8;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222D1B5F4()
{
  OUTLINED_FUNCTION_14_2();
  v0 = OUTLINED_FUNCTION_4_9();
  v1(v0);

  v2 = OUTLINED_FUNCTION_6_8();

  return v3(v2);
}

uint64_t sub_222D1B65C()
{
  OUTLINED_FUNCTION_14_2();
  v1 = OUTLINED_FUNCTION_4_9();
  v2(v1);

  OUTLINED_FUNCTION_13();
  v4 = *(v0 + 120);

  return v3();
}

uint64_t static CATDialog.execute(catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v9 = sub_222D5210C();
  v1[9] = v9;
  v10 = *(v9 - 8);
  v1[10] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *v3;
  v1[11] = v12;
  v1[12] = v13;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

id sub_222D1B790()
{
  v1 = v0[8];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v0[13] = v3;
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v5 = result;
    v6 = v0[11];
    v7 = v0[12];
    sub_222D5292C();

    sub_222D520BC();

    v0[2] = v7;
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_222D1B8FC;
    v9 = v0[11];
    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];

    return static CATDialog.execute(templateDir:catId:parameters:globals:callback:options:)(v9, v14, v12, v13, v10, v11, v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D1B8FC()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v9 = v8;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222D1BA14()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);

  v4 = OUTLINED_FUNCTION_6_8();

  return v5(v4);
}

uint64_t sub_222D1BA9C()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_13();
  v5 = *(v0 + 120);

  return v4();
}

double DialogAbstractMeasurement.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t DialogAbstractMeasurement.Builder.init(value:)(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t DialogAbstractMeasurement.Builder.deinit()
{
  v1 = OUTLINED_FUNCTION_7_0();
  sub_222CE2920(v1, v2);
  return v0;
}

uint64_t sub_222D1BBFC()
{
  OUTLINED_FUNCTION_8();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_222D1BC28(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_67();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_222D1BC70@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v2 = OUTLINED_FUNCTION_7_0();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t sub_222D1BCB0(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = OUTLINED_FUNCTION_7_0();
  v4 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  return sub_222CE2920(v3, v5);
}

uint64_t sub_222D1BCF0(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_67();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_222D1BD40(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  OUTLINED_FUNCTION_67();
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v1[4] = v2;
  v1[5] = v3;
  v1[6] = v4;
  v1[7] = v5;
  sub_222CE3060(v2, v3);
  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D1BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (!a4)
  {

    a3 = a1;
    v8 = a2;
  }

  OUTLINED_FUNCTION_67();
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = v8;

  OUTLINED_FUNCTION_117();
}

uint64_t DialogAbstractMeasurement.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  swift_beginAccess();
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  OUTLINED_FUNCTION_96();
  v8 = *(v7 + 152);
  v11 = sub_222CE3060(v9, v10);
  if ((v8(v11) & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_222D53980;
    OUTLINED_FUNCTION_96();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1C0, &qword_222D556D8);
    v13 = sub_222D5297C();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_222CDDCB0();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_222D5280C();
  }

  return v1;
}

uint64_t sub_222D1C028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x65756C6176;
  v7 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_8_5(), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v3 + 24);
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v9;
  }

  else
  {
    result = 0x7374696E75;
    if (a1 != 0x7374696E75 || a2 != 0xE500000000000000)
    {
      result = OUTLINED_FUNCTION_8_5();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v11 = *(v3 + 48);
    if (!v11)
    {
      goto LABEL_7;
    }

    v13 = *(v3 + 56);
    v12 = *(v3 + 64);
    v14 = *(v3 + 40);
    *(a3 + 24) = &type metadata for SpeakableString;
    v15 = swift_allocObject();
    *a3 = v15;
    v15[2] = v14;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v12;
  }

  return result;
}

uint64_t DialogAbstractMeasurement.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1C8, &qword_222D556E0);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  *(v1 + 16) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D1C320();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogAbstractMeasurement();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    *(v1 + 24) = sub_222D52EFC();
    *(v1 + 32) = v13 & 1;
    v17 = 1;
    sub_222D0099C();
    sub_222D52F1C();
    (*(v7 + 8))(v11, v4);
    v15 = v16[1];
    *(v1 + 40) = v16[0];
    *(v1 + 56) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_222D1C320()
{
  result = qword_280D3D080;
  if (!qword_280D3D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3D080);
  }

  return result;
}

uint64_t sub_222D1C398(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1D0, &qword_222D556E8);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D1C320();
  sub_222D531AC();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  LOBYTE(v21) = 0;
  sub_222D52FAC();
  if (!v2)
  {
    v16 = *(v3 + 48);
    v17 = *(v3 + 56);
    v18 = *(v3 + 64);
    v21 = *(v3 + 40);
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v20[15] = 1;
    sub_222CE3060(v21, v16);
    sub_222CF2084();
    sub_222D52FBC();
    sub_222CE2920(v21, v22);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t DialogAbstractMeasurement.deinit()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_222CE2920(*(v0 + 40), *(v0 + 48));
  return v0;
}

double sub_222D1C594@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_222D1BC70(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_222D1C5D0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  *&v7 = *a1;
  *(&v7 + 1) = v2;
  v8 = v3;
  v9 = v4;
  sub_222CE3060(v7, v2);
  return sub_222D1BCB0(&v7);
}

double DialogAbstractMeasurement.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t DialogAbstractMeasurement.Builder.__allocating_init(value:)(double a1)
{
  v2 = swift_allocObject();
  DialogAbstractMeasurement.Builder.init(value:)(a1);
  return v2;
}

uint64_t sub_222D1C69C()
{
  type metadata accessor for DialogAbstractMeasurement();
  v0 = swift_allocObject();

  DialogAbstractMeasurement.init(builder:)(v1);
  return v0;
}

uint64_t DialogAbstractMeasurement.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_9();
  v2 = swift_allocObject();
  DialogAbstractMeasurement.init(builder:)(a1);
  return v2;
}

uint64_t DialogAbstractMeasurement.Builder.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_7_0();
  sub_222CE2920(v1, v2);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t DialogAbstractMeasurement.value.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t DialogAbstractMeasurement.units.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t sub_222D1C78C()
{
  v0 = sub_222D52ECC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D1C7E0(char a1)
{
  if (a1)
  {
    return 0x7374696E75;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_222D1C808(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_222D49E88();
}

uint64_t sub_222D1C82C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D1C78C();
  *a2 = result;
  return result;
}

uint64_t sub_222D1C85C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D1C7E0(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_222D1C8AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D1C78C();
  *a1 = result;
  return result;
}

uint64_t sub_222D1C8D4(uint64_t a1)
{
  v2 = sub_222D1C320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D1C910(uint64_t a1)
{
  v2 = sub_222D1C320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogAbstractMeasurement.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  v0 = OUTLINED_FUNCTION_2_9();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DialogAbstractMeasurement.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_9();
  v2 = swift_allocObject();
  DialogAbstractMeasurement.init(from:)(a1);
  return v2;
}

uint64_t sub_222D1CA1C(uint64_t a1)
{
  *(a1 + 8) = sub_222D1CA84(&qword_27D03C1D8);
  result = sub_222D1CA84(&qword_27D03C1E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D1CA84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogAbstractMeasurement();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D1CAC4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogAbstractMeasurement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D1CF68()
{
  result = qword_27D03C1E8;
  if (!qword_27D03C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C1E8);
  }

  return result;
}

unint64_t sub_222D1CFC0()
{
  result = qword_280D3D070;
  if (!qword_280D3D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3D070);
  }

  return result;
}

unint64_t sub_222D1D018()
{
  result = qword_280D3D078;
  if (!qword_280D3D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3D078);
  }

  return result;
}

uint64_t sub_222D1D06C()
{
  OUTLINED_FUNCTION_8();
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

double sub_222D1D098@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_222D08518(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_222D1D0D4(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  *&v7 = *a1;
  *(&v7 + 1) = v2;
  v8 = v3;
  v9 = v4;
  sub_222CE3060(v7, v2);
  return sub_222D0855C(&v7);
}

uint64_t sub_222D1D120(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222D1D178(v4);
}

uint64_t sub_222D1D14C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 80);
}

uint64_t sub_222D1D178(uint64_t a1)
{
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

double DialogCalendar.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

double DialogCalendar.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

uint64_t DialogCalendar.Builder.__allocating_init(secs:)(double a1)
{
  v2 = swift_allocObject();
  DialogCalendar.Builder.init(secs:)(a1);
  return v2;
}

uint64_t DialogCalendar.Builder.init(secs:)(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_222D1D2DC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  OUTLINED_FUNCTION_67();
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v1[6] = v2;
  v1[7] = v3;
  v1[8] = v4;
  v1[9] = v5;
  sub_222CE3060(v2, v3);
  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D1D360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (!a4)
  {

    a3 = a1;
    v8 = a2;
  }

  OUTLINED_FUNCTION_67();
  v9 = v4[6];
  v10 = v4[7];
  v11 = v4[8];
  v12 = v4[9];
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = v8;

  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D1D400(uint64_t a1)
{
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t sub_222D1D458(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = (*(*a1 + 176))();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_67();
  v4 = *(v2 + 80);
  *(v2 + 80) = v3;
}

uint64_t sub_222D1D4D4()
{
  type metadata accessor for DialogCalendar();
  v0 = swift_allocObject();

  DialogCalendar.init(builder:)(v1);
  return v0;
}

uint64_t DialogCalendar.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4();
  v2 = swift_allocObject();
  DialogCalendar.init(builder:)(a1);
  return v2;
}

uint64_t *DialogCalendar.Builder.deinit()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_222CE2920(v0[6], v0[7]);
  v3 = v0[10];

  return v0;
}

uint64_t DialogCalendar.Builder.__deallocating_deinit()
{
  DialogCalendar.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t DialogCalendar.secs.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t DialogCalendar.utcOffsetSecs.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t DialogCalendar.timeZone.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t DialogCalendar.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_25();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_25();
  v4 = *(a1 + 40);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 48) = v4;
  OUTLINED_FUNCTION_25();
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;
  OUTLINED_FUNCTION_25();
  *(v1 + 88) = *(a1 + 80);
  OUTLINED_FUNCTION_96();
  v10 = *(v9 + 168);
  sub_222CE3060(v5, v6);

  if ((v10(v11) & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_222D53980;
    OUTLINED_FUNCTION_96();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1F0, &qword_222D55928);
    v13 = sub_222D5297C();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_222CDDCB0();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_222D5280C();
  }

  return v1;
}

void sub_222D1D830(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1935893875 && a2 == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
LABEL_10:
      OUTLINED_FUNCTION_52_0();
      return;
    }

    v8 = *(v3 + 24);
LABEL_9:
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v8;
    goto LABEL_10;
  }

  v10 = a1 == OUTLINED_FUNCTION_28_4() && a2 == v9;
  if (v10 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    if (*(v3 + 48))
    {
      goto LABEL_7;
    }

    v8 = *(v3 + 40);
    goto LABEL_9;
  }

  v11 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
  if (!v11 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    v19 = a1 == OUTLINED_FUNCTION_27_2() && a2 == v18;
    if (v19 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v20 = *(v3 + 88);
      if (!v20)
      {
        goto LABEL_7;
      }

      *(a3 + 24) = type metadata accessor for DialogDateFormatter();
      *a3 = v20;
      OUTLINED_FUNCTION_52_0();

      return;
    }

    v22 = a1 == (OUTLINED_FUNCTION_36_4() | 0x79616400000000) && a2 == 0xE700000000000000;
    if (v22 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1E810();
      goto LABEL_42;
    }

    v25 = a1 == (OUTLINED_FUNCTION_36_4() | 0x72726F6D00000000) && a2 == v24;
    if (v25 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1E83C();
      goto LABEL_42;
    }

    v27 = a1 == OUTLINED_FUNCTION_40_2() && a2 == v26;
    if (v27 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1E86C();
      goto LABEL_42;
    }

    v28 = a1 == (OUTLINED_FUNCTION_4_10() & 0xFFFFFFFFFFFFLL | 0x6557000000000000) && a2 == 0xEA00000000006B65;
    if (v28 || (OUTLINED_FUNCTION_22_4(), (OUTLINED_FUNCTION_49() & 1) != 0))
    {
      v23 = sub_222D1E898();
      goto LABEL_42;
    }

    v29 = a1 == (OUTLINED_FUNCTION_4_10() & 0xFFFFFFFFFFFFLL | 0x6F4D000000000000) && a2 == 0xEB0000000068746ELL;
    if (v29 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
    {
      v23 = sub_222D1E8C0();
      goto LABEL_42;
    }

    v30 = a1 == (OUTLINED_FUNCTION_4_10() & 0xFFFFFFFFFFFFLL | 0x6559000000000000) && a2 == 0xEA00000000007261;
    if (v30 || (OUTLINED_FUNCTION_48() & 1) != 0)
    {
      v23 = sub_222D1E8E0();
      goto LABEL_42;
    }

    v31 = a1 == (OUTLINED_FUNCTION_5_8() & 0xFFFFFFFFFFFFLL | 0x6557000000000000) && a2 == 0xEA00000000006B65;
    if (v31 || (OUTLINED_FUNCTION_22_4(), (OUTLINED_FUNCTION_49() & 1) != 0))
    {
      v23 = sub_222D1E900();
      goto LABEL_42;
    }

    v32 = a1 == (OUTLINED_FUNCTION_5_8() & 0xFFFFFFFFFFFFLL | 0x6F4D000000000000) && a2 == 0xEB0000000068746ELL;
    if (v32 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
    {
      v23 = sub_222D1E928();
      goto LABEL_42;
    }

    v33 = a1 == (OUTLINED_FUNCTION_5_8() & 0xFFFFFFFFFFFFLL | 0x6559000000000000) && a2 == 0xEA00000000007261;
    if (v33 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1E948();
      goto LABEL_42;
    }

    v34 = a1 == (OUTLINED_FUNCTION_6_9() & 0xFFFFFFFFFFFFLL | 0x6557000000000000) && a2 == 0xEA00000000006B65;
    if (v34 || (OUTLINED_FUNCTION_22_4(), (OUTLINED_FUNCTION_49() & 1) != 0))
    {
      v23 = sub_222D1E968();
      goto LABEL_42;
    }

    v35 = a1 == (OUTLINED_FUNCTION_6_9() & 0xFFFFFFFFFFFFLL | 0x6F4D000000000000) && a2 == 0xEB0000000068746ELL;
    if (v35 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
    {
      v23 = sub_222D1E990();
      goto LABEL_42;
    }

    v36 = a1 == (OUTLINED_FUNCTION_6_9() & 0xFFFFFFFFFFFFLL | 0x6559000000000000) && a2 == 0xEA00000000007261;
    if (v36 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1E9B0();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v38 = a1 == 0xD000000000000011 && v37 == a2;
    if (v38 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1E9D0();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v40 = a1 == 0xD000000000000014 && v39 == a2;
    if (v40 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EA00();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v42 = a1 == 0xD000000000000015 && v41 == a2;
    if (v42 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EA30();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v44 = a1 == 0xD000000000000010 && v43 == a2;
    if (v44 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EA60();
      goto LABEL_42;
    }

    v45 = a1 == (OUTLINED_FUNCTION_14_3() & 0xFFFFFFFFFFFFLL | 0x4D79000000000000) && a2 == 0xEE00676E696E726FLL;
    if (v45 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EA90();
      goto LABEL_42;
    }

    v46 = a1 == OUTLINED_FUNCTION_43_1() && a2 == 0xE900000000000067;
    if (v46 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EAC4();
      goto LABEL_42;
    }

    v47 = a1 == 0x6E6F6F4E7369 && a2 == 0xE600000000000000;
    if (v47 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EAEC();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v49 = a1 == 0xD000000000000010 && v48 == a2;
    if (v49 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EB18();
      goto LABEL_42;
    }

    v51 = a1 == OUTLINED_FUNCTION_33_3() && a2 == v50;
    if (v51 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EB48();
      goto LABEL_42;
    }

    v52 = a1 == (OUTLINED_FUNCTION_14_3() & 0xFFFFFFFFFFFFLL | 0x4579000000000000) && a2 == 0xEE00676E696E6576;
    if (v52 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
    {
      v23 = sub_222D1EB74();
      goto LABEL_42;
    }

    v53 = a1 == OUTLINED_FUNCTION_44_2() && a2 == 0xE900000000000067;
    if (v53 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EBA8();
      goto LABEL_42;
    }

    v54 = a1 == OUTLINED_FUNCTION_31_3() && a2 == 0xE700000000000000;
    if (v54 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EBD0();
      goto LABEL_42;
    }

    v55 = a1 == OUTLINED_FUNCTION_38_3() && a2 == 0xEB00000000746867;
    if (v55 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
    {
      v23 = sub_222D1EBF4();
      goto LABEL_42;
    }

    v56 = a1 == (OUTLINED_FUNCTION_37_2() | 0x666B616500000000) && a2 == 0xEB00000000747361;
    if (v56 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EC20();
      goto LABEL_42;
    }

    v57 = a1 == (OUTLINED_FUNCTION_37_2() | 0x68636E7500000000) && a2 == 0xE800000000000000;
    if (v57 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EC54();
      goto LABEL_42;
    }

    v58 = a1 == OUTLINED_FUNCTION_45_1() && a2 == 0xE700000000000000;
    if (v58 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1EC80();
      goto LABEL_42;
    }

    v59 = a1 == OUTLINED_FUNCTION_39_1() && a2 == 0xE800000000000000;
    if (v59 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1ECA4();
      goto LABEL_42;
    }

    v60 = a1 == OUTLINED_FUNCTION_42_2() && a2 == 0xE900000000000065;
    if (v60 || (OUTLINED_FUNCTION_30_3(), (OUTLINED_FUNCTION_49() & 1) != 0))
    {
      v23 = sub_222D1ECC8();
      goto LABEL_42;
    }

    v61 = a1 == OUTLINED_FUNCTION_34_3() && a2 == 0xE900000000000065;
    if (v61 || (OUTLINED_FUNCTION_30_3(), (OUTLINED_FUNCTION_49() & 1) != 0))
    {
      v23 = sub_222D1ECEC();
      goto LABEL_42;
    }

    v63 = a1 == OUTLINED_FUNCTION_35_4() && a2 == v62;
    if (v63 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v23 = sub_222D1ED10();
      goto LABEL_42;
    }

    v64 = a1 == 0x6D6F724673796164 && a2 == 0xED00007961646F54;
    if (!v64 && (OUTLINED_FUNCTION_1_1() & 1) == 0)
    {
      v65 = a1 == (OUTLINED_FUNCTION_15_3() & 0xFFFFFFFFFFFFLL | 0x654E000000000000) && a2 == 0xEE006B6565577478;
      if (v65 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        v23 = sub_222D1ED78();
        goto LABEL_42;
      }

      v66 = a1 == (OUTLINED_FUNCTION_15_3() & 0xFFFFFFFFFFFFLL | 0x6150000000000000) && a2 == 0xEE006B6565577473;
      if (v66 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        v23 = sub_222D1EDAC();
        goto LABEL_42;
      }

      v67 = a1 == 0x6373654465746164 && a2 == 0xEF65766974706972;
      if (v67 || (OUTLINED_FUNCTION_17_4(), (OUTLINED_FUNCTION_49() & 1) != 0))
      {
        OUTLINED_FUNCTION_47_1();
LABEL_307:
        OUTLINED_FUNCTION_17_4();
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v68 = a1 == 0xD000000000000017 && a2 == 0x6373654465746164;
      if (v68 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v69 = a1 == 0xD000000000000024 && a2 == 0x6373654465746164;
      if (v69 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v70 = a1 == 0xD000000000000017 && a2 == 0x6373654465746164;
      if (v70 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v71 = a1 == 0xD000000000000023 && a2 == 0x6373654465746164;
      if (v71 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v72 = a1 == 0xD000000000000019 && a2 == 0x6373654465746164;
      if (v72 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v73 = a1 == 0xD00000000000001CLL && a2 == 0x6373654465746164;
      if (v73 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v74 = a1 == 0xD00000000000001DLL && a2 == 0x6373654465746164;
      if (v74 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v75 = a1 == 0xD00000000000001BLL && a2 == 0x6373654465746164;
      if (v75 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_20_5();
      v76 = a1 == 0xD00000000000001ELL && a2 == 0xE900000000000067;
      if (v76 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        goto LABEL_435;
      }

      if (a1 == 0x63736544656D6974 && a2 == 0xEF65766974706972)
      {
        goto LABEL_307;
      }

      OUTLINED_FUNCTION_17_4();
      if (OUTLINED_FUNCTION_49())
      {
        goto LABEL_307;
      }

      OUTLINED_FUNCTION_20_5();
      v78 = a1 == 0xD000000000000019 && a2 == 0x63736544656D6974;
      if (v78 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_20_5();
      v79 = a1 == 0xD00000000000001CLL && a2 == 0x63736544656D6974;
      if (v79 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_20_5();
      v80 = a1 == 0xD00000000000001DLL && a2 == 0x63736544656D6974;
      if (v80 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_20_5();
      v81 = a1 == 0xD00000000000001BLL && a2 == 0x63736544656D6974;
      if (v81 || (OUTLINED_FUNCTION_49() & 1) != 0 || ((OUTLINED_FUNCTION_20_5(), a1 == 0xD00000000000001ELL) ? (v82 = a2 == 0x63736544656D6974) : (v82 = 0), v82 || (OUTLINED_FUNCTION_49() & 1) != 0 || ((OUTLINED_FUNCTION_20_5(), a1 == 0xD000000000000017) ? (v83 = a2 == 0x63736544656D6974) : (v83 = 0), v83 || (OUTLINED_FUNCTION_49() & 1) != 0 || ((OUTLINED_FUNCTION_98(), a1 == 0xD000000000000021) ? (v84 = a2 == 0xD00000000000001BLL) : (v84 = 0), v84 || (OUTLINED_FUNCTION_48() & 1) != 0))))
      {
LABEL_435:
        sub_222CFC688();
        if (v112)
        {
          *(a3 + 24) = &type metadata for SpeakableString;
          v100 = swift_allocObject();
          *a3 = v100;
          v100[2] = v111;
          v100[3] = v112;
          v100[4] = v113;
          v100[5] = v114;
          goto LABEL_10;
        }

        goto LABEL_7;
      }

      OUTLINED_FUNCTION_98();
      v85 = a1 == 0xD000000000000013 && a2 == 0xD00000000000001BLL;
      if (v85 || (OUTLINED_FUNCTION_48() & 1) != 0)
      {
        goto LABEL_434;
      }

      OUTLINED_FUNCTION_98();
      v86 = a1 == 0xD00000000000001DLL && a2 == 0xD00000000000001BLL;
      if (v86 || (OUTLINED_FUNCTION_48() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v87 = a1 == 0xD000000000000020 && a2 == 0xD00000000000001BLL;
      if (v87 || (OUTLINED_FUNCTION_48() & 1) != 0)
      {
LABEL_434:
        OUTLINED_FUNCTION_47_1();
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v88 = a1 == 0xD000000000000021 && a2 == 0xD00000000000001BLL;
      if (v88 || (OUTLINED_FUNCTION_48() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v89 = a1 == 0xD00000000000001FLL && a2 == 0xD00000000000001BLL;
      if (v89 || (OUTLINED_FUNCTION_48() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v90 = a1 == 0xD000000000000022 && a2 == 0xD00000000000001BLL;
      if (v90 || (OUTLINED_FUNCTION_48() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v91 = a1 == 0xD00000000000001ELL && a2 == 0xD00000000000001BLL;
      if (v91 || (OUTLINED_FUNCTION_48() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v92 = a1 == 0xD000000000000028 && a2 == 0xD000000000000020;
      if (v92 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v93 = a1 == 0xD00000000000002ALL && a2 == 0xD000000000000020;
      if (v93 || (OUTLINED_FUNCTION_1_1() & 1) != 0)
      {
        goto LABEL_435;
      }

      v94 = a1 == 0x664F6574756E696DLL && a2 == 0xEC00000072756F48;
      if (!v94 && (OUTLINED_FUNCTION_1_1() & 1) == 0)
      {
        v95 = a1 == 0x6144664F72756F68 && a2 == 0xE900000000000079;
        if (!v95 && (OUTLINED_FUNCTION_48() & 1) == 0)
        {
          v96 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
          if (!v96 && (OUTLINED_FUNCTION_49() & 1) == 0)
          {
            v97 = a1 == 0x6D614E68746E6F6DLL && a2 == 0xE900000000000065;
            if (v97 || (OUTLINED_FUNCTION_30_3(), (OUTLINED_FUNCTION_49() & 1) != 0))
            {
              OUTLINED_FUNCTION_47_1();
              OUTLINED_FUNCTION_30_3();
              goto LABEL_435;
            }

            v98 = a1 == 0x6E6F4D664F796164 && a2 == 0xEA00000000006874;
            if (!v98 && (OUTLINED_FUNCTION_48() & 1) == 0)
            {
              v99 = a1 == 0x656D614E796164 && a2 == 0xE700000000000000;
              if (v99 || (OUTLINED_FUNCTION_49() & 1) != 0)
              {
                goto LABEL_434;
              }

              if (a1 != 1918985593 || a2 != 0xE400000000000000)
              {
                OUTLINED_FUNCTION_24_3();
                if ((OUTLINED_FUNCTION_49() & 1) == 0)
                {
                  OUTLINED_FUNCTION_51_0();
                  v105 = a1 == OUTLINED_FUNCTION_32_2() && a2 == v104;
                  if (v105 || (OUTLINED_FUNCTION_49() & 1) != 0)
                  {
                    v23 = sub_222D1F194();
                  }

                  else
                  {
                    v106 = a1 == 0x747361507369 && a2 == 0xE600000000000000;
                    if (v106 || (OUTLINED_FUNCTION_49() & 1) != 0)
                    {
                      v23 = sub_222D1F1B8();
                    }

                    else
                    {
                      v107 = a1 == OUTLINED_FUNCTION_41_2() && a2 == 0xE800000000000000;
                      if (!v107 && (OUTLINED_FUNCTION_49() & 1) == 0)
                      {
                        v108 = a1 == 0x6954657461447361 && a2 == 0xEA0000000000656DLL;
                        if (v108 || (OUTLINED_FUNCTION_48() & 1) != 0)
                        {
                          sub_222CFCA00();
                          if (v109)
                          {
                            v110 = v109;
                            *(a3 + 24) = type metadata accessor for DialogDateTime();
                            *a3 = v110;
                            goto LABEL_10;
                          }
                        }

                        goto LABEL_7;
                      }

                      v23 = sub_222D1F1E4();
                    }
                  }

LABEL_42:
                  *(a3 + 24) = MEMORY[0x277D839B0];
                  *a3 = v23 & 1;
                  goto LABEL_10;
                }
              }

              OUTLINED_FUNCTION_24_3();
            }
          }
        }
      }
    }

    sub_222CFC318();
    if ((v103 & 1) == 0)
    {
      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v102;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = *(v3 + 64);
  if (!v12)
  {
    goto LABEL_7;
  }

  v14 = *(v3 + 72);
  v13 = *(v3 + 80);
  v15 = *(v3 + 56);
  *(a3 + 24) = &type metadata for SpeakableString;
  v16 = swift_allocObject();
  *a3 = v16;
  v16[2] = v15;
  v16[3] = v12;
  v16[4] = v14;
  v16[5] = v13;

  OUTLINED_FUNCTION_52_0();
}

uint64_t sub_222D1E810()
{
  OUTLINED_FUNCTION_36_4();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1E83C()
{
  OUTLINED_FUNCTION_36_4();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1E86C()
{
  OUTLINED_FUNCTION_40_2();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1E898()
{
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_22_4();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1E8C0()
{
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_21_3();
  return v0 & 1;
}

uint64_t sub_222D1E8E0()
{
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_29_3();
  return v0 & 1;
}

uint64_t sub_222D1E900()
{
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_22_4();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1E928()
{
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_21_3();
  return v0 & 1;
}

uint64_t sub_222D1E948()
{
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_29_3();
  return v0 & 1;
}

uint64_t sub_222D1E968()
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_22_4();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1E990()
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_21_3();
  return v0 & 1;
}

uint64_t sub_222D1E9B0()
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_29_3();
  return v0 & 1;
}

uint64_t sub_222D1E9D0()
{
  OUTLINED_FUNCTION_105();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EA00()
{
  OUTLINED_FUNCTION_105();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EA30()
{
  OUTLINED_FUNCTION_105();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EA60()
{
  OUTLINED_FUNCTION_105();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EA90()
{
  OUTLINED_FUNCTION_14_3();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EAC4()
{
  OUTLINED_FUNCTION_43_1();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EB18()
{
  OUTLINED_FUNCTION_105();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EB48()
{
  OUTLINED_FUNCTION_33_3();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EB74()
{
  OUTLINED_FUNCTION_14_3();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EBA8()
{
  OUTLINED_FUNCTION_44_2();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EBD0()
{
  OUTLINED_FUNCTION_31_3();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EBF4()
{
  OUTLINED_FUNCTION_38_3();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EC20()
{
  OUTLINED_FUNCTION_37_2();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EC54()
{
  OUTLINED_FUNCTION_37_2();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EC80()
{
  OUTLINED_FUNCTION_45_1();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1ECA4()
{
  OUTLINED_FUNCTION_39_1();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1ECC8()
{
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_30_3();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1ECEC()
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1ED10()
{
  OUTLINED_FUNCTION_35_4();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1ED78()
{
  OUTLINED_FUNCTION_15_3();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1EDAC()
{
  OUTLINED_FUNCTION_15_3();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1F194()
{
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_51_0();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1F1E4()
{
  OUTLINED_FUNCTION_41_2();
  sub_222CFBFA4();
  return v0 & 1;
}

uint64_t sub_222D1F224()
{
  v0 = sub_222D52ECC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D1F270(char a1)
{
  result = 1935893875;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_28_4();
      break;
    case 2:
      result = 0x656E6F5A656D6974;
      break;
    case 3:
      result = OUTLINED_FUNCTION_27_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D1F310@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D1F224();
  *a2 = result;
  return result;
}

uint64_t sub_222D1F340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D1F270(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D1F374@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D1F224();
  *a1 = result;
  return result;
}

uint64_t sub_222D1F3A8(uint64_t a1)
{
  v2 = sub_222D1F694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D1F3E4(uint64_t a1)
{
  v2 = sub_222D1F694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogCalendar.deinit()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_222CE2920(*(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 88);

  return v0;
}

uint64_t DialogCalendar.__deallocating_deinit()
{
  DialogCalendar.deinit();
  v0 = OUTLINED_FUNCTION_23_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D1F480(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1F8, &qword_222D55930);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D1F694();
  sub_222D531AC();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  LOBYTE(v26) = 0;
  OUTLINED_FUNCTION_48_1();
  sub_222D52FAC();
  if (!v2)
  {
    v16 = *(v3 + 40);
    v17 = *(v3 + 48);
    LOBYTE(v26) = 1;
    OUTLINED_FUNCTION_48_1();
    sub_222D52FAC();
    v18 = *(v3 + 64);
    v19 = *(v3 + 72);
    v20 = *(v3 + 80);
    v26 = *(v3 + 56);
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v25 = 2;
    sub_222CE3060(v26, v18);
    sub_222CF2084();
    OUTLINED_FUNCTION_48_1();
    sub_222D52FBC();
    sub_222CE2920(v26, v27);
    v26 = *(v3 + 88);
    v25 = 3;
    type metadata accessor for DialogDateFormatter();
    OUTLINED_FUNCTION_11_3();
    sub_222D1FA9C(v21, 255, v22);
    OUTLINED_FUNCTION_48_1();
    sub_222D52FBC();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D1F694()
{
  result = qword_27D03C200;
  if (!qword_27D03C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C200);
  }

  return result;
}

uint64_t DialogCalendar.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_4();
  v2 = swift_allocObject();
  DialogCalendar.init(from:)(a1);
  return v2;
}

uint64_t DialogCalendar.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C210, &qword_222D55938);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D1F694();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogCalendar();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    *(v1 + 24) = sub_222D52EFC();
    *(v1 + 32) = v9 & 1;
    LOBYTE(v16) = 1;
    OUTLINED_FUNCTION_46_1();
    *(v1 + 40) = sub_222D52EFC();
    *(v1 + 48) = v10 & 1;
    sub_222D0099C();
    OUTLINED_FUNCTION_46_1();
    sub_222D52F1C();
    *(v1 + 56) = v16;
    *(v1 + 72) = v17;
    type metadata accessor for DialogDateFormatter();
    OUTLINED_FUNCTION_11_3();
    sub_222D1FA9C(v12, 255, v13);
    OUTLINED_FUNCTION_46_1();
    sub_222D52F1C();
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    *(v1 + 88) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D1FA18(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222D1FA9C(&qword_27D03C220, a2, type metadata accessor for DialogCalendar);
  result = sub_222D1FA9C(&qword_27D03BED0, v3, type metadata accessor for DialogCalendar);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D1FA9C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_222D1FAE4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 784))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t dispatch thunk of DialogCalendar.Builder.withDateFormatter(_:)()
{
  return (*(*v0 + 256))();
}

{
  return (*(*v0 + 264))();
}

uint64_t getEnumTagSinglePayload for DialogCalendar.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DialogCalendar.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D20EF0()
{
  result = qword_27D03C228;
  if (!qword_27D03C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C228);
  }

  return result;
}

unint64_t sub_222D20F48()
{
  result = qword_27D03C230;
  if (!qword_27D03C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C230);
  }

  return result;
}

unint64_t sub_222D20FA0()
{
  result = qword_27D03C238;
  if (!qword_27D03C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C238);
  }

  return result;
}

double sub_222D21014@<D0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  a2(v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  a3[1] = v6;
  return result;
}

uint64_t sub_222D21054(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_222CE3060(v11[0], v6);
  return a5(v11);
}

double DialogPhoneNumber.Builder.__allocating_init()()
{
  OUTLINED_FUNCTION_5_7();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

double DialogPhoneNumber.Builder.init()()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t DialogPhoneNumber.Builder.__allocating_init(value:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_7();
  v2 = swift_allocObject();
  DialogPhoneNumber.Builder.init(value:)(a1);
  return v2;
}

uint64_t DialogPhoneNumber.Builder.init(value:)(uint64_t *a1)
{
  v2 = *a1;
  v9 = *(a1 + 1);
  v3 = a1[3];
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *(v1 + 16) = v2;
  *(v1 + 24) = v9;
  *(v1 + 40) = v3;
  sub_222CE2920(v4, v5);
  return v1;
}

uint64_t sub_222D211A4()
{
  type metadata accessor for DialogPhoneNumber();
  v0 = swift_allocObject();

  DialogPhoneNumber.init(builder:)(v1);
  return v0;
}

uint64_t DialogPhoneNumber.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogPhoneNumber.init(builder:)(a1);
  return v2;
}

uint64_t *DialogPhoneNumber.Builder.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_222CE2920(v0[2], v0[3]);
  v3 = v0[8];
  v4 = v0[9];
  sub_222CE2920(v0[6], v0[7]);
  return v0;
}

uint64_t DialogPhoneNumber.Builder.__deallocating_deinit()
{
  DialogPhoneNumber.Builder.deinit();
  v0 = OUTLINED_FUNCTION_5_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *DialogPhoneNumber.init(builder:)(void *a1)
{
  v1[2] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  swift_beginAccess();
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  v1[7] = v7;
  v1[8] = v8;
  v1[9] = v9;
  v1[10] = v10;
  v17 = *(*v1 + 152);
  sub_222CE3060(v3, v4);
  v11 = sub_222CE3060(v7, v8);
  if ((v17(v11) & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_222D53980;
    v18 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C240, &qword_222D55B98);
    v13 = sub_222D5297C();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_222CDDCB0();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_222D5280C();
  }

  return v1;
}

double sub_222D214E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (!v6 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    v14 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
    if (v14 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

    else
    {
      v15 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
      if (v15 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x65646F4361657261 ? (v16 = a2 == 0xE800000000000000) : (v16 = 0), v16 || (OUTLINED_FUNCTION_49() & 1) != 0))
      {
        sub_222CF899C();
        if (v19)
        {
          *(a3 + 24) = &type metadata for SpeakableString;
          v17 = swift_allocObject();
          *a3 = v17;
          v17[2] = v18;
          v17[3] = v19;
          v17[4] = v20;
          v17[5] = v21;
          return result;
        }
      }
    }

LABEL_30:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_30;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

uint64_t sub_222D216DC()
{
  v0 = sub_222D52ECC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D21730(char a1)
{
  if (a1)
  {
    return 0x437972746E756F63;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_222D21790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D216DC();
  *a2 = result;
  return result;
}

uint64_t sub_222D217C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D21730(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D217F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D216DC();
  *a1 = result;
  return result;
}

uint64_t sub_222D2181C(uint64_t a1)
{
  v2 = sub_222D21A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D21858(uint64_t a1)
{
  v2 = sub_222D21A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogPhoneNumber.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_222CE2920(*(v0 + 24), *(v0 + 32));
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_222CE2920(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t DialogPhoneNumber.__deallocating_deinit()
{
  DialogPhoneNumber.deinit();
  v0 = OUTLINED_FUNCTION_92();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D218F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C248, &qword_222D55BA0);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D21A80();
  sub_222D531AC();
  v14 = v3[4];
  v15 = v3[5];
  v16 = v3[6];
  v23 = v3[3];
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v22 = 0;
  sub_222CE3060(v23, v14);
  sub_222CF2084();
  OUTLINED_FUNCTION_6_2();
  sub_222CE2920(v23, v24);
  if (!v2)
  {
    v17 = v3[8];
    v18 = v3[9];
    v19 = v3[10];
    v23 = v3[7];
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v22 = 1;
    sub_222CE3060(v23, v17);
    OUTLINED_FUNCTION_6_2();
    sub_222CE2920(v23, v24);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D21A80()
{
  result = qword_27D03C250;
  if (!qword_27D03C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C250);
  }

  return result;
}

uint64_t DialogPhoneNumber.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogPhoneNumber.init(from:)(a1);
  return v2;
}

uint64_t DialogPhoneNumber.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C258, &qword_222D55BA8);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D21A80();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogPhoneNumber();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C();
    OUTLINED_FUNCTION_3();
    *(v1 + 24) = v12;
    *(v1 + 40) = v13;
    OUTLINED_FUNCTION_3();
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    *(v1 + 56) = v12;
    *(v1 + 72) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D21D54(uint64_t a1)
{
  *(a1 + 8) = sub_222D21DBC(&qword_27D03C260);
  result = sub_222D21DBC(&qword_27D03BEC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D21DBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogPhoneNumber();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D21DFC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 192))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogPhoneNumber.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D222EC()
{
  result = qword_27D03C268;
  if (!qword_27D03C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C268);
  }

  return result;
}

unint64_t sub_222D22344()
{
  result = qword_27D03C270;
  if (!qword_27D03C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C270);
  }

  return result;
}

unint64_t sub_222D2239C()
{
  result = qword_27D03C278;
  if (!qword_27D03C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C278);
  }

  return result;
}

uint64_t sub_222D22470()
{
  type metadata accessor for DialogSpeed();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogSpeed.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t *DialogSpeed.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  return v0;
}

uint64_t DialogSpeed.Builder.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D22588(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0xD000000000000012 ? (v7 = 0x8000000222D5ACF0 == a2) : (v7 = 0), v7 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0xD000000000000013 ? (v9 = 0x8000000222D5AD10 == a2) : (v9 = 0), v9 || (OUTLINED_FUNCTION_49() & 1) != 0)))
  {
    sub_222CFA398();
    if (v11)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v8 = swift_allocObject();
      *a3 = v8;
      v8[2] = v10;
      v8[3] = v11;
      v8[4] = v12;
      v8[5] = v13;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {

    sub_222D1C028(a1, a2, a3);
  }
}

uint64_t DialogSpeed.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogSpeed.init(from:)(a1);
}

uint64_t DialogSpeed.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogSpeed.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D22910()
{
  type metadata accessor for DialogUser();
  OUTLINED_FUNCTION_3_10();
  swift_allocObject();

  return DialogPerson.init(builder:)(v0);
}

uint64_t DialogUser.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_10();
  swift_allocObject();
  return DialogPerson.init(builder:)(a1);
}

uint64_t DialogUser.Builder.__deallocating_deinit()
{
  v0 = DialogPerson.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 273, 7);
}

double sub_222D229FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0xD000000000000011 && 0x8000000222D5B730 == a2;
  if (v4 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0xD00000000000001ALL ? (v9 = 0x8000000222D5B750 == a2) : (v9 = 0), v9 || (OUTLINED_FUNCTION_49() & 1) != 0))
  {
    sub_222CFB44C();
    if (v15)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v7 = swift_allocObject();
      *a3 = v7;
      v7[2] = v14;
      v7[3] = v15;
      v7[4] = v16;
      v7[5] = v17;
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return result;
  }

  OUTLINED_FUNCTION_4_12();
  v11 = a1 == OUTLINED_FUNCTION_2_10() && a2 == v10;
  if (v11 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v12 = sub_222D22BE4();
LABEL_22:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v12 & 1;
    return result;
  }

  v13 = a1 == 0xD000000000000010 && 0x8000000222D5B770 == a2;
  if (v13 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v12 = sub_222D22C08();
    goto LABEL_22;
  }

  return sub_222D166A0(a1, a2, a3);
}

uint64_t sub_222D22BE4()
{
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_4_12();
  sub_222CFB480();
  return v0 & 1;
}

uint64_t DialogUser.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_10();
  swift_allocObject();
  return DialogUser.init(from:)(a1);
}

uint64_t DialogUser.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogPerson.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogUser.__deallocating_deinit()
{
  DialogPerson.deinit();
  OUTLINED_FUNCTION_3_10();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

double sub_222D22E04@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_222D22E8C(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_222D22E40(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  *&v7 = *a1;
  *(&v7 + 1) = v2;
  v8 = v3;
  v9 = v4;
  sub_222CE3060(v7, v2);
  return sub_222D22ECC(&v7);
}

uint64_t sub_222D22E8C@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v2 = OUTLINED_FUNCTION_6_10();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t sub_222D22ECC(_OWORD *a1)
{
  OUTLINED_FUNCTION_1_0();
  v3 = OUTLINED_FUNCTION_6_10();
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  return sub_222CE2920(v3, v5);
}

uint64_t sub_222D22F30()
{
  result = OUTLINED_FUNCTION_5_6();
  *(v1 + 48) = v0;
  return result;
}

double DialogDateFormatter.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

double DialogDateFormatter.Builder.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_222D22FA0()
{
  OUTLINED_FUNCTION_5_6();
  *(v1 + 48) = v0;
}

uint64_t sub_222D22FD4()
{
  type metadata accessor for DialogDateFormatter();
  v0 = swift_allocObject();

  DialogDateFormatter.init(builder:)(v1);
  return v0;
}

uint64_t DialogDateFormatter.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_11();
  v2 = swift_allocObject();
  DialogDateFormatter.init(builder:)(a1);
  return v2;
}

uint64_t DialogDateFormatter.Builder.deinit()
{
  v1 = OUTLINED_FUNCTION_6_10();
  sub_222CE2920(v1, v2);
  return v0;
}

uint64_t DialogDateFormatter.Builder.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_6_10();
  sub_222CE2920(v1, v2);

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t DialogDateFormatter.length.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t DialogDateFormatter.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  sub_222CE3060(v3, v4);

  *(v1 + 56) = v7;
  return v1;
}

double sub_222D231A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (!v6 && (sub_222D5305C() & 1) == 0)
  {
    v14 = a1 == 0x7261655974696D6FLL && a2 == 0xE800000000000000;
    if (v14 || (sub_222D5305C() & 1) != 0)
    {
      v15 = *(v3 + 56);
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v15;
      return result;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 32);
  if (!v9)
  {
LABEL_16:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v11 = *(v3 + 40);
  v10 = *(v3 + 48);
  v12 = *(v3 + 24);
  *(a3 + 24) = &type metadata for SpeakableString;
  v13 = swift_allocObject();
  *a3 = v13;
  v13[2] = v12;
  v13[3] = v9;
  v13[4] = v11;
  v13[5] = v10;

  return result;
}

uint64_t sub_222D232D8()
{
  v0 = sub_222D52ECC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D2332C(char a1)
{
  if (a1)
  {
    return 0x7261655974696D6FLL;
  }

  else
  {
    return 0x6874676E656CLL;
  }
}

uint64_t sub_222D23384@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D232D8();
  *a2 = result;
  return result;
}

uint64_t sub_222D233B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D2332C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D233E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D232D8();
  *a1 = result;
  return result;
}

uint64_t sub_222D23410(uint64_t a1)
{
  v2 = sub_222D23668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D2344C(uint64_t a1)
{
  v2 = sub_222D23668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogDateFormatter.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_222CE2920(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t DialogDateFormatter.__deallocating_deinit()
{
  DialogDateFormatter.deinit();
  v0 = OUTLINED_FUNCTION_1_11();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D234E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C280, &qword_222D55E80);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D23668();
  sub_222D531AC();
  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  v16 = *(v3 + 48);
  v20 = *(v3 + 24);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19[15] = 0;
  sub_222CE3060(v20, v14);
  sub_222CF2084();
  sub_222D52FBC();
  sub_222CE2920(v20, v21);
  if (!v2)
  {
    v17 = *(v3 + 56);
    LOBYTE(v20) = 1;
    sub_222D52FEC();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D23668()
{
  result = qword_27D03C288;
  if (!qword_27D03C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C288);
  }

  return result;
}

uint64_t DialogDateFormatter.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_11();
  v2 = swift_allocObject();
  DialogDateFormatter.init(from:)(a1);
  return v2;
}

uint64_t DialogDateFormatter.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C290, &qword_222D55E88);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D23668();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogDateFormatter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C();
    sub_222D52F1C();
    *(v1 + 24) = v14;
    *(v1 + 40) = v15;
    v11 = sub_222D52F5C();
    v12 = OUTLINED_FUNCTION_2();
    v13(v12);
    *(v3 + 56) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_222D2396C(uint64_t a1)
{
  *(a1 + 8) = sub_222D239D4(&qword_27D03C218);
  result = sub_222D239D4(&qword_27D03C208);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D239D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogDateFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D23A14@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogDateFormatter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D23E94()
{
  result = qword_27D03C298;
  if (!qword_27D03C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C298);
  }

  return result;
}

unint64_t sub_222D23EEC()
{
  result = qword_27D03C2A0;
  if (!qword_27D03C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C2A0);
  }

  return result;
}

unint64_t sub_222D23F44()
{
  result = qword_27D03C2A8;
  if (!qword_27D03C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C2A8);
  }

  return result;
}

uint64_t StructuredParameter.formattedValue(globals:)(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70) - 8) + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v4);
  v6 = v84 - v5;
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  if (v7 == 0x5F6E776F6E6B6E75 && v8 == 0xEC00000065707974)
  {
    return 0;
  }

  v86 = a1;
  *&v87 = v6;
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v13 = *(v1 + 32);
  v12 = *(v1 + 40);
  v14 = *(v1 + 48);
  v16 = *(v1 + 72);
  v15 = *(v1 + 80);
  v85 = v7;
  if (sub_222D5305C())
  {
    return 0;
  }

  v93 = v11;
  v94 = v10;
  v95 = v13;
  v96 = v12;
  v97 = v14;
  swift_bridgeObjectRetain_n();
  sub_222D24948(v11, v10, v13, v12, v14);
  sub_222D42830(&v93, v98);
  sub_222D249C4(v93, v94, v95, v96, v97);
  if (!v15)
  {
    v20 = 0;
    v15 = 0xE000000000000000;
    v19 = v86;
    v18 = v87;
LABEL_15:
    v22 = v85;
    goto LABEL_16;
  }

  v17 = v16 == 0x676E697274536F74 && v15 == 0xE800000000000000;
  v19 = v86;
  v18 = v87;
  if (v17)
  {
    v20 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_15;
  }

  v20 = v16;
  v21 = sub_222D5305C();
  v22 = v85;
  if (v21)
  {
    v20 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
  }

LABEL_16:
  v23 = sub_222D52AAC();

  v24 = v22;
  v25 = v8;
  if (v23)
  {
    v26 = sub_222D4EC7C(2);
    v24 = MEMORY[0x223DCB480](v26);
    v25 = v27;
  }

  v28 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v28 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v28 || ((OUTLINED_FUNCTION_1_12(), v22 == (v30 & 0xFFFFFFFFFFFFLL | 0x532E000000000000)) ? (v31 = v8 == v29) : (v31 = 0), v31 || (OUTLINED_FUNCTION_18_5() & 1) != 0 || ((OUTLINED_FUNCTION_1_12(), v22 == (v33 & 0xFFFFFFFFFFFFLL | 0x4E2E000000000000)) ? (v34 = v8 == v32) : (v34 = 0), v34 || (OUTLINED_FUNCTION_18_5() & 1) != 0 || ((OUTLINED_FUNCTION_1_12(), v22 == (v36 & 0xFFFFFFFFFFFFLL | 0x422E000000000000)) ? (v37 = v8 == v35) : (v37 = 0), v37 || (OUTLINED_FUNCTION_18_5() & 1) != 0))))
  {

    goto LABEL_37;
  }

  if (v24 == 0x432E676F6C616964 && v25 == 0xEF7261646E656C61)
  {
  }

  else
  {
    v83 = sub_222D5305C();

    if ((v83 & 1) == 0)
    {
      v20 = 0x676E697274536F74;
      v15 = 0xE800000000000000;
      goto LABEL_37;
    }
  }

  v15 = 0x8000000222D5B450;
  v20 = 0xD000000000000013;
LABEL_37:
  if (v19)
  {
    v38 = v19;
  }

  else
  {
    v38 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v39 = sub_222D5210C();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v39);
  v40 = v19;
  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v18, v22, v8, v20, v15, v98, v38, &v93);

  sub_222CDC53C(v18, &qword_27D03BE40, &unk_222D54A70);
  sub_222CEA2E8(&v93, v91, &qword_27D03BDA8, &unk_222D55070);
  if (v92)
  {
    if (OUTLINED_FUNCTION_27_3())
    {
      v87 = v88;
      v41 = v89;
      v42 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B8, &qword_222D560C8);
      v43 = swift_allocObject();
      v44 = v87;
      *(v43 + 16) = xmmword_222D53980;
      *(v43 + 32) = v44;
      *(v43 + 48) = v41;
      *(v43 + 56) = v42;
LABEL_74:
      sub_222CDC53C(&v93, &qword_27D03BDA8, &unk_222D55070);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      return v43;
    }
  }

  else
  {
    sub_222CDC53C(v91, &qword_27D03BDA8, &unk_222D55070);
  }

  sub_222CEA2E8(&v93, v91, &qword_27D03BDA8, &unk_222D55070);
  if (!v92)
  {
    sub_222CDC53C(&v93, &qword_27D03BDA8, &unk_222D55070);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    sub_222CDC53C(v91, &qword_27D03BDA8, &unk_222D55070);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
  if ((OUTLINED_FUNCTION_27_3() & 1) == 0)
  {
    sub_222CDC53C(&v93, &qword_27D03BDA8, &unk_222D55070);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    return 0;
  }

  v45 = v88;
  v46 = *(v88 + 16);
  if (!v46)
  {

    sub_222CDC53C(&v93, &qword_27D03BDA8, &unk_222D55070);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    return MEMORY[0x277D84F90];
  }

  v91[0] = MEMORY[0x277D84F90];
  sub_222D2723C(0, v46, 0);
  v47 = 0;
  v84[1] = v45;
  v48 = v45 + 32;
  v43 = v91[0];
  v85 = v45 + 32;
  v86 = v46;
  while (1)
  {
    v49 = (v48 + 16 * v47);
    v50 = *v49;
    v51 = v49[1];

    if (sub_222D52A9C() & 1) != 0 && (sub_222D52AAC())
    {
      break;
    }

    v66 = v50;
    v67 = v51;
LABEL_65:
    v91[0] = v43;
    v80 = *(v43 + 16);
    v79 = *(v43 + 24);
    if (v80 >= v79 >> 1)
    {
      sub_222D2723C((v79 > 1), v80 + 1, 1);
      v43 = v91[0];
    }

    ++v47;
    *(v43 + 16) = v80 + 1;
    v81 = (v43 + 32 * v80);
    v81[4] = v50;
    v81[5] = v51;
    v81[6] = v66;
    v81[7] = v67;
    if (v47 == v46)
    {

      goto LABEL_74;
    }
  }

  if (qword_280D3BDF8 != -1)
  {
    swift_once();
  }

  *&v87 = v43;
  sub_222D4E708(qword_280D3DDD0, v50, v51);
  if (qword_280D3BDF0 != -1)
  {
    swift_once();
  }

  v52 = sub_222D4EBF4(qword_280D3DDC8);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v54 >> 14;
  while (1)
  {
    v61 = v52 >> 14;
    if (v52 >> 14 >= v60)
    {
      v50 = MEMORY[0x223DCB480](v53, v55, v57, v59);
      v51 = v68;

      v66 = v50;
      v67 = v51;
LABEL_64:
      v46 = v86;
      v43 = v87;
      v48 = v85;
      goto LABEL_65;
    }

    v62 = OUTLINED_FUNCTION_13_3();
    v64 = sub_222D4EFC0(0x3A7374742FLL, 0xE500000000000000, v62, v63);

    if (v64)
    {
      break;
    }

    v52 = sub_222D52CCC();
  }

  if (v61 >= v53 >> 14)
  {

    v69 = OUTLINED_FUNCTION_13_3();
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v50 = MEMORY[0x223DCB480](v69, v71, v73, v75);
    v51 = v76;

    OUTLINED_FUNCTION_13_3();

    if (qword_280D3BDE8 != -1)
    {
      swift_once();
    }

    v77 = sub_222D4E7C0(qword_280D3DDC0);
    v66 = MEMORY[0x223DCB480](v77);
    v67 = v78;

    goto LABEL_64;
  }

  __break(1u);
  return result;
}

uint64_t StructuredParameter.isPrimitiveType.getter()
{
  OUTLINED_FUNCTION_1_12();
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  if (v3 == (v2 & 0xFFFFFFFFFFFFLL | 0x532E000000000000) && v4 == v1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_6();
  if (sub_222D5305C())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_12();
  if (v3 == (v7 & 0xFFFFFFFFFFFFLL | 0x4E2E000000000000) && v4 == v6)
  {
    return 1;
  }

  OUTLINED_FUNCTION_6();
  if (sub_222D5305C())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_12();
  if (v3 == (v10 & 0xFFFFFFFFFFFFLL | 0x422E000000000000) && v4 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_6();

  return sub_222D5305C();
}

uint64_t sub_222D24948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 3:
    case 4:
      goto LABEL_3;
    case 1:

LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D249C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 3:
    case 4:
      goto LABEL_3;
    case 1:

LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

__n128 StructuredParameter.init(key:value:type:format:profanityFilter:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *(a3 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  result = *a3;
  v11 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v11;
  *(a9 + 48) = v9;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  return result;
}

uint64_t FormattedParameter.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_6();
}

uint64_t FormattedParameter.print.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_6();
}

uint64_t FormattedParameter.speak.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_6();
}

uint64_t FormattedParameter.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_6();
}

uint64_t sub_222D24B4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E697270 && a2 == 0xE500000000000000;
    if (v6 || (sub_222D5305C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B61657073 && a2 == 0xE500000000000000;
      if (v7 || (sub_222D5305C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (sub_222D5305C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_222D5305C();

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

uint64_t sub_222D24CF0(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x746E697270;
      break;
    case 2:
      result = 0x6B61657073;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x676F6C616964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D24D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D24B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D24DC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D24CE8();
  *a1 = result;
  return result;
}

uint64_t sub_222D24DE8(uint64_t a1)
{
  v2 = sub_222D27614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D24E24(uint64_t a1)
{
  v2 = sub_222D27614();

  return MEMORY[0x2821FE720](a1, v2);
}

void FormattedParameter.encode(to:)()
{
  OUTLINED_FUNCTION_19_4();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2C0, &qword_222D560D0);
  OUTLINED_FUNCTION_113(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_13();
  v16 = *(v0 + 64);
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_222D27614();
  sub_222D531AC();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_48_1();
  sub_222D52FDC();
  if (!v1)
  {
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_48_1();
    sub_222D52FDC();
    OUTLINED_FUNCTION_48_1();
    sub_222D52FDC();
    OUTLINED_FUNCTION_48_1();
    sub_222D52FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2D0, &qword_222D560D8);
    sub_222D27668(&qword_27D03C2D8, sub_222CF2084);
    OUTLINED_FUNCTION_48_1();
    sub_222D5300C();
  }

  (*(v7 + 8))(v2, v15);
  OUTLINED_FUNCTION_20();
}

void FormattedParameter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_19_4();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2E0, &qword_222D560E0);
  OUTLINED_FUNCTION_113(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v18);
  v19 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_222D27614();
  sub_222D5318C();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v20 = sub_222D52F4C();
    v34 = v21;
    OUTLINED_FUNCTION_7_7(1);
    v22 = sub_222D52F4C();
    v33 = v23;
    v30 = v22;
    OUTLINED_FUNCTION_7_7(2);
    v29 = sub_222D52F4C();
    v32 = v24;
    OUTLINED_FUNCTION_7_7(3);
    v28 = sub_222D52F4C();
    v31 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2D0, &qword_222D560D8);
    v37 = 4;
    sub_222D27668(&qword_27D03C2E8, sub_222D0099C);
    sub_222D52F6C();
    v26 = OUTLINED_FUNCTION_2_11();
    v27(v26);
    v35[0] = v20;
    v35[1] = v34;
    v35[2] = v30;
    v35[3] = v33;
    v35[4] = v29;
    v35[5] = v32;
    v35[6] = v28;
    v35[7] = v31;
    v35[8] = a10;
    memcpy(v14, v35, 0x48uLL);
    sub_222D276E0(v35, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v36[0] = v20;
    v36[1] = v34;
    v36[2] = v30;
    v36[3] = v33;
    v36[4] = v29;
    v36[5] = v32;
    v36[6] = v28;
    v36[7] = v31;
    v36[8] = a10;
    sub_222D27718(v36);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t ResponseManifestDialog.fullPrint.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_6();
}

uint64_t ResponseManifestDialog.fullPrint.setter()
{
  OUTLINED_FUNCTION_115();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseManifestDialog.fullSpeak.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_6();
}

uint64_t ResponseManifestDialog.fullSpeak.setter()
{
  OUTLINED_FUNCTION_115();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ResponseManifestDialog.supportingPrint.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_6();
}

uint64_t ResponseManifestDialog.supportingPrint.setter()
{
  OUTLINED_FUNCTION_115();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ResponseManifestDialog.supportingSpeak.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_6();
}

uint64_t ResponseManifestDialog.supportingSpeak.setter()
{
  OUTLINED_FUNCTION_115();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_222D25638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6972506C6C7566 && a2 == 0xE900000000000074;
  if (v4 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616570536C6C7566 && a2 == 0xE90000000000006BLL;
    if (v6 || (sub_222D5305C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974726F70707573 && a2 == 0xEF746E697250676ELL;
      if (v7 || (sub_222D5305C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6974726F70707573 && a2 == 0xEF6B61657053676ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_222D5305C();

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

uint64_t sub_222D257AC(unsigned __int8 a1)
{
  sub_222D5313C();
  MEMORY[0x223DCBC20](a1);
  return sub_222D5315C();
}

uint64_t sub_222D257F4(char a1)
{
  result = 0x6E6972506C6C7566;
  switch(a1)
  {
    case 1:
      result = 0x616570536C6C7566;
      break;
    case 2:
    case 3:
      result = 0x6974726F70707573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D2588C()
{
  v1 = *v0;
  sub_222D5313C();
  MEMORY[0x223DCBC20](v1);
  return sub_222D5315C();
}

uint64_t sub_222D258D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D25638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D25900@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D257A4();
  *a1 = result;
  return result;
}

uint64_t sub_222D25928(uint64_t a1)
{
  v2 = sub_222D27748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D25964(uint64_t a1)
{
  v2 = sub_222D27748();

  return MEMORY[0x2821FE720](a1, v2);
}

void ResponseManifestDialog.encode(to:)()
{
  OUTLINED_FUNCTION_19_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2F0, &qword_222D560E8);
  OUTLINED_FUNCTION_113(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_13();
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_222D27748();
  sub_222D531AC();
  OUTLINED_FUNCTION_24_4();
  sub_222D52FDC();
  if (!v0)
  {
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_48_1();
    sub_222D52F8C();
    OUTLINED_FUNCTION_48_1();
    sub_222D52F8C();
    OUTLINED_FUNCTION_48_1();
    sub_222D52F8C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_20();
}

void ResponseManifestDialog.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C300, &unk_222D560F0);
  OUTLINED_FUNCTION_113(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = v2[3];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v13);
  sub_222D27748();
  sub_222D5318C();
  if (v0)
  {
    OUTLINED_FUNCTION_21_4();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = v14;
    v43 = v7;
    v44 = v13;
    v45 = v4;
    v46 = 0;
    v47 = 0;
  }

  else
  {
    LOBYTE(v40) = 0;
    OUTLINED_FUNCTION_6_11();
    v15 = sub_222D52F4C();
    v34 = v16;
    v35 = v15;
    LOBYTE(v40) = 1;
    OUTLINED_FUNCTION_6_11();
    v17 = sub_222D52EDC();
    v32 = v4;
    v33 = v18;
    LOBYTE(v40) = 2;
    OUTLINED_FUNCTION_6_11();
    v19 = sub_222D52EDC();
    v21 = v20;
    v22 = sub_222D52EDC();
    v23 = v12;
    v25 = v24;
    (*(v7 + 8))(v23, v5);
    v26 = v34;
    *&v36 = v35;
    *(&v36 + 1) = v34;
    v27 = v32;
    v28 = v33;
    *&v37 = v17;
    *(&v37 + 1) = v33;
    *&v38 = v19;
    *(&v38 + 1) = v21;
    *&v39 = v22;
    *(&v39 + 1) = v25;
    v29 = v37;
    *v32 = v36;
    v27[1] = v29;
    v30 = v39;
    v27[2] = v38;
    v27[3] = v30;
    sub_222D277CC(&v36, &v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v40 = v35;
    v41 = v26;
    v42 = v17;
    v43 = v28;
    v44 = v19;
    v45 = v21;
    v46 = v22;
    v47 = v25;
  }

  sub_222D2779C(&v40);
  OUTLINED_FUNCTION_20();
}

uint64_t SiriResponseManifest.parameters.getter()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 16);
}

uint64_t SiriResponseManifest.parameters.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t SiriResponseManifest.dialog.getter@<X0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_25();
  v3 = *(v1 + 40);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v5 = *(v1 + 72);
  v9 = *(v1 + 56);
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CEA2E8(v8, v7, &qword_27D03C308, &qword_222D58B30);
}

uint64_t SiriResponseManifest.dialog.setter(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 40);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v4 = *(v1 + 72);
  v8[2] = *(v1 + 56);
  v8[3] = v4;
  v5 = a1[1];
  *(v1 + 24) = *a1;
  *(v1 + 40) = v5;
  v6 = a1[3];
  *(v1 + 56) = a1[2];
  *(v1 + 72) = v6;
  return sub_222CDC53C(v8, &qword_27D03C308, &qword_222D58B30);
}

uint64_t SiriResponseManifest.catId.getter()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_6();
}

uint64_t SiriResponseManifest.catId.setter()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 96);
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
}

uint64_t SiriResponseManifest.catTemplateDir.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir;
  OUTLINED_FUNCTION_25();
  return sub_222CEA2E8(v1 + v3, a1, &qword_27D03BE40, &unk_222D54A70);
}

uint64_t SiriResponseManifest.catTemplateDir.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir;
  swift_beginAccess();
  sub_222D27804(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SiriResponseManifest.listenAfterSpeaking.getter()
{
  v1 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking;
  OUTLINED_FUNCTION_25();
  return *(v0 + v1);
}

uint64_t SiriResponseManifest.listenAfterSpeaking.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking;
  result = OUTLINED_FUNCTION_67();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_222D26260(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{

  *(v9 + 96) = 0;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 16) = 0u;
  v15 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir;
  v16 = sub_222D5210C();
  __swift_storeEnumTagSinglePayload(v9 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking;
  *(v9 + OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking) = 2;
  v18 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_globals;
  *(v9 + OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_globals) = 0;
  OUTLINED_FUNCTION_16_0();
  *(v9 + 16) = a1;
  OUTLINED_FUNCTION_16_0();
  v19 = *(v9 + 40);
  v27[0] = *(v9 + 24);
  v27[1] = v19;
  v20 = *(v9 + 72);
  v27[2] = *(v9 + 56);
  v27[3] = v20;
  v21 = a4[1];
  *(v9 + 24) = *a4;
  *(v9 + 40) = v21;
  v22 = a4[3];
  *(v9 + 56) = a4[2];
  *(v9 + 72) = v22;
  sub_222CDC53C(v27, &qword_27D03C308, &qword_222D58B30);
  OUTLINED_FUNCTION_16_0();
  v23 = *(v9 + 96);
  *(v9 + 88) = a5;
  *(v9 + 96) = a6;

  swift_beginAccess();
  sub_222D27804(a7, v9 + v15);
  swift_endAccess();
  OUTLINED_FUNCTION_16_0();
  *(v9 + v17) = a8;
  v24 = *(v9 + v18);
  *(v9 + v18) = a9;

  return v9;
}

uint64_t SiriResponseManifest.__allocating_init(from:globals:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70) - 8) + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  OUTLINED_FUNCTION_25();
  v9 = *(a1 + 16);
  OUTLINED_FUNCTION_25();
  v10 = *(a1 + 40);
  v27[0] = *(a1 + 24);
  v27[1] = v10;
  v11 = *(a1 + 72);
  v27[2] = *(a1 + 56);
  v27[3] = v11;
  v12 = *(a1 + 40);
  v26[0] = *(a1 + 24);
  v26[1] = v12;
  v13 = *(a1 + 72);
  v26[2] = *(a1 + 56);
  v26[3] = v13;
  OUTLINED_FUNCTION_25();
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir;
  OUTLINED_FUNCTION_25();
  sub_222CEA2E8(a1 + v16, v8, &qword_27D03BE40, &unk_222D54A70);
  v17 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking;
  OUTLINED_FUNCTION_25();
  v18 = *(v3 + 48);
  v19 = *(v3 + 52);
  v20 = *(a1 + v17);
  v21 = swift_allocObject();

  sub_222CEA2E8(v27, &v25, &qword_27D03C308, &qword_222D58B30);

  sub_222D26260(v9, v22, 0, v26, v14, v15, v8, v20, v24);

  return v21;
}

void SiriResponseManifest.__allocating_init(from:globals:)()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v0;
  v4 = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70) - 8) + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = sub_222D5296C();
  v10 = OUTLINED_FUNCTION_113(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222D5295C();
  v17 = sub_222D5293C();
  v19 = v18;

  (*(v12 + 8))(v16, v9);
  if (v19 >> 60 == 15)
  {
    v20 = sub_222D5210C();
    memset(v27, 0, sizeof(v27));
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
    v21 = *(v2 + 48);
    v22 = *(v2 + 52);
    swift_allocObject();
    sub_222D26260(0, v23, 0, v27, 0, 0, v8, 2, v4);
  }

  else
  {
    v24 = sub_222D51EFC();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    sub_222D51EEC();
    sub_222D27874();
    sub_222D51EDC();
    if (v1)
    {
      sub_222D27918(v17, v19);
    }

    else
    {

      SiriResponseManifest.__allocating_init(from:globals:)(*&v27[0], v4);
      sub_222D27918(v17, v19);
    }
  }

  OUTLINED_FUNCTION_20();
}

uint64_t SiriResponseManifest.setListenAfterSpeaking(_:)(char a1)
{
  v3 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking;
  OUTLINED_FUNCTION_67();
  *(v1 + v3) = a1;
}

uint64_t SiriResponseManifest.catParameters.getter()
{
  v1 = MEMORY[0x277D84F90];
  v2 = sub_222D528BC();
  OUTLINED_FUNCTION_25();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  v43 = *(v1 + 16);
  if (v43)
  {

    v3 = 0;
    v4 = v1 + 56;
    v42 = v1;
    while (v3 < *(v1 + 16))
    {
      v44 = v3;
      v5 = *(v4 - 16);
      v7 = *v4;
      v8 = *(v4 + 8);
      v9 = *(v4 + 16);
      v10 = *(v4 + 24);
      v11 = *(v4 + 40);
      v12 = *(v4 + 56);
      v49 = *(v4 - 24);
      v50 = *(v4 - 8);
      v6 = v50;
      v51 = v7;
      v52 = v8;
      v53 = v9;
      v54 = v10;

      sub_222D24948(v6, v7, v8, v9, v10);

      v46 = v9;
      v48 = v10;
      sub_222D24948(v6, v7, v8, v9, v10);
      sub_222D42830(&v50, v55);
      sub_222D249C4(v50, v51, v52, v53, v54);
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v2;
      v13 = sub_222CE1050(v49, v5);
      if (__OFADD__(v2[2], (v14 & 1) == 0))
      {
        goto LABEL_20;
      }

      v15 = v13;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C318, &qword_222D56100);
      if (sub_222D52E4C())
      {
        sub_222CE1050(v49, v5);
        OUTLINED_FUNCTION_15_4();
        if (!v18)
        {
          goto LABEL_22;
        }

        v15 = v17;
      }

      v2 = v50;
      if (v16)
      {
        v19 = (v50[7] + 32 * v15);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        sub_222CE0BC0(v55, v19);

        OUTLINED_FUNCTION_26_3(v20, v21, v22, v23, v24, v25, v26, v27, v41, v42, v43, v44, v7, v8, v46, v47, v48);
      }

      else
      {
        v50[(v15 >> 6) + 8] |= 1 << v15;
        v28 = (v2[6] + 16 * v15);
        *v28 = v49;
        v28[1] = v5;
        v29 = sub_222CE0BC0(v55, (v2[7] + 32 * v15));
        OUTLINED_FUNCTION_26_3(v29, v30, v31, v32, v33, v34, v35, v36, v41, v42, v43, v44, v7, v8, v46, v47, v48);

        v37 = v2[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_21;
        }

        v2[2] = v39;
      }

      v3 = v45 + 1;
      v4 += 96;
      v1 = v42;
      if (v43 == v45 + 1)
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
    result = sub_222D5312C();
    __break(1u);
  }

  else
  {

LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_222D26B20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v47 = *a1;
  v48 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1 + 48);
  LODWORD(v51) = *(a1 + 49);
  *(&v51 + 3) = *(a1 + 13);
  v8 = a1[8];
  v46 = a1[7];
  v49 = *(a1 + 9);
  v50 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B8, &qword_222D560C8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222D53980;
  v10 = v9;
  switch(v7)
  {
    case 1:

      v35 = sub_222D5297C();
      v37 = v36;

      v38 = sub_222D5297C();
      v10[4] = v35;
      v10[5] = v37;
      v10[6] = v38;
      v10[7] = v39;

      v13 = sub_222D5297C();
      v14 = v40;

      v21 = sub_222D5297C();
      goto LABEL_7;
    case 2:
      v23 = sub_222D52BDC();
      v25 = v24;
      v26 = sub_222D52BDC();
      v10[4] = v23;
      v10[5] = v25;
      v10[6] = v26;
      v10[7] = v27;
      v13 = sub_222D52BDC();
      v14 = v28;
      v21 = sub_222D52BDC();
      goto LABEL_7;
    case 3:
      v29 = sub_222D528AC();
      v31 = v30;
      v32 = sub_222D528AC();
      v10[4] = v29;
      v10[5] = v31;
      v10[6] = v32;
      v10[7] = v33;
      v13 = sub_222D528AC();
      v14 = v34;
      v21 = sub_222D528AC();
      goto LABEL_7;
    case 4:
      v15 = MEMORY[0x223DCB620](v4, &type metadata for CATValue);
      v17 = v16;
      v18 = MEMORY[0x223DCB620](v4, &type metadata for CATValue);
      v10[4] = v15;
      v10[5] = v17;
      v10[6] = v18;
      v10[7] = v19;
      v13 = MEMORY[0x223DCB620](v4, &type metadata for CATValue);
      v14 = v20;
      v21 = MEMORY[0x223DCB620](v4, &type metadata for CATValue);
LABEL_7:
      v11 = v21;
      v12 = v22;
      break;
    case 5:
      if (v4)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v4)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      *(v9 + 32) = v11;
      *(v9 + 40) = v12;
      *(v9 + 48) = v11;
      *(v9 + 56) = v12;
      v13 = v11;
      v14 = v12;
      break;
    case 6:
      v11 = 0;
      v13 = 0;
      v12 = 0xE000000000000000;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0xE000000000000000;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0xE000000000000000;
      v14 = 0xE000000000000000;
      break;
    default:
      sub_222D24948(v4, v3, v5, v6, 0);
      v10[4] = v4;
      v10[5] = v3;
      v10[6] = v4;
      v10[7] = v3;

      sub_222D24948(v4, v3, v5, v6, 0);

      v11 = v4;
      v12 = v3;
      v13 = v4;
      v14 = v3;
      break;
  }

  v41 = *(v45 + OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_globals);
  v42 = v41;
  v43 = StructuredParameter.formattedValue(globals:)(v41);

  if (v43)
  {

    if (v43[2])
    {
      v13 = v43[4];
      v14 = v43[5];
      v11 = v43[6];
      v12 = v43[7];
    }

    else
    {
      v11 = 0;
      v13 = 0;
      v12 = 0xE000000000000000;
      v14 = 0xE000000000000000;
    }

    v10 = v43;
  }

  *a2 = v47;
  a2[1] = v48;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v11;
  a2[5] = v12;
  a2[6] = v46;
  a2[7] = v8;
  a2[8] = v10;
}

uint64_t SiriResponseManifest.formattedParameters()()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];

    sub_222D27288(0, v2, 0);
    v3 = v13;
    v4 = v2 - 1;
    for (i = 32; ; i += 96)
    {
      memcpy(__dst, (v1 + i), 0x59uLL);
      memcpy(v10, (v1 + i), 0x59uLL);
      sub_222D2792C(__dst, v9);
      sub_222D26B20(v10, __src);
      sub_222D27964(__dst);
      v13 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_222D27288(v6 > 1, v7 + 1, 1);
        v3 = v13;
      }

      *(v3 + 16) = v7 + 1;
      memcpy((v3 + 72 * v7 + 32), __src, 0x48uLL);
      if (!v4)
      {
        break;
      }

      --v4;
    }
  }

  return v3;
}

void *SiriResponseManifest.deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  sub_222D27994(v0[3], v0[4]);
  v8 = v0[12];

  sub_222CDC53C(v0 + OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir, &qword_27D03BE40, &unk_222D54A70);

  return v0;
}

uint64_t SiriResponseManifest.__deallocating_deinit()
{
  SiriResponseManifest.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_222D2719C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  SiriResponseManifest.__allocating_init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!v9)
  {
    *a9 = v11;
  }
}

void *sub_222D271EC(void *a1, int64_t a2, char a3)
{
  result = sub_222D272A8(a1, a2, a3, *v3, &qword_27D03C370, &qword_222D566F0, sub_222D289EC);
  *v3 = result;
  return result;
}

void *sub_222D2723C(void *a1, int64_t a2, char a3)
{
  result = sub_222D272A8(a1, a2, a3, *v3, &qword_27D03C2B8, &qword_222D560C8, sub_222D289EC);
  *v3 = result;
  return result;
}

uint64_t sub_222D27288(uint64_t a1, int64_t a2, char a3)
{
  result = sub_222D273B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222D272A8(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = result;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_8;
  }

  v10 = *(a4 + 24);
  v11 = v10 >> 1;
  if ((v10 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v11 = a2;
    }

LABEL_8:
    v12 = *(a4 + 16);
    if (v11 <= v12)
    {
      v13 = *(a4 + 16);
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 32);
      if (v9)
      {
LABEL_13:
        a7(a4 + 32, v12, v14 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v14;
      }
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
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

uint64_t sub_222D273B0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C380, &qword_222D56700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_222D28AE0((a4 + 32), v8, (v10 + 32));
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

uint64_t sub_222D274B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_12_2(a1, a2, a3);
  OUTLINED_FUNCTION_22_5(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_222D5312C();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C378, &qword_222D566F8);
  if (OUTLINED_FUNCTION_28_5())
  {
    v14 = *v6;
    sub_222CE1050(v5, v4);
    OUTLINED_FUNCTION_15_4();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = *(*v6 + 56) + (v12 << 6);
    v18 = *(v17 + 48);
    v19 = *(v17 + 56);
    v20 = v3[1];
    *v17 = *v3;
    *(v17 + 16) = v20;
    v21 = v3[3];
    *(v17 + 32) = v3[2];
    *(v17 + 48) = v21;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_25_3();
    sub_222D275BC(v23, v24, v25, v26, v27);
  }
}

unint64_t sub_222D275BC(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_222D27614()
{
  result = qword_27D03C2C8;
  if (!qword_27D03C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C2C8);
  }

  return result;
}

uint64_t sub_222D27668(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C2D0, &qword_222D560D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222D27748()
{
  result = qword_27D03C2F8;
  if (!qword_27D03C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C2F8);
  }

  return result;
}

uint64_t sub_222D27804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_222D27874()
{
  result = qword_27D03C310;
  if (!qword_27D03C310)
  {
    type metadata accessor for SiriResponseManifest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C310);
  }

  return result;
}

uint64_t type metadata accessor for SiriResponseManifest()
{
  result = qword_27D03C328;
  if (!qword_27D03C328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222D27918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_222CE6210(a1, a2);
  }

  return a1;
}

uint64_t sub_222D27994(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriDialogEngine8CATValueO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_222D27A1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_222D27A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222D27ACC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_222D27B0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_222D27B80(uint64_t a1, int a2)
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

uint64_t sub_222D27BC0(uint64_t result, int a2, int a3)
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

void sub_222D27C28()
{
  sub_222D27CFC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_222D27CFC()
{
  if (!qword_27D03C338)
  {
    sub_222D5210C();
    v0 = sub_222D52CBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D03C338);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ResponseManifestDialog.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FormattedParameter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for FormattedParameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D27F98()
{
  result = qword_27D03C340;
  if (!qword_27D03C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C340);
  }

  return result;
}

unint64_t sub_222D27FF0()
{
  result = qword_27D03C348;
  if (!qword_27D03C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C348);
  }

  return result;
}

unint64_t sub_222D28048()
{
  result = qword_27D03C350;
  if (!qword_27D03C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C350);
  }

  return result;
}

unint64_t sub_222D280A0()
{
  result = qword_27D03C358;
  if (!qword_27D03C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C358);
  }

  return result;
}

unint64_t sub_222D280F8()
{
  result = qword_27D03C360;
  if (!qword_27D03C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C360);
  }

  return result;
}

unint64_t sub_222D28150()
{
  result = qword_27D03C368;
  if (!qword_27D03C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C368);
  }

  return result;
}

uint64_t INSpeakableString.toSpeakableString.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 spokenPhrase];
  v4 = sub_222D5292C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v6;
}

uint64_t sub_222D2822C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_222CE1050(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void sub_222D28284()
{
  OUTLINED_FUNCTION_7_8();
  if (v3)
  {
    OUTLINED_FUNCTION_2_12();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_13();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C398, &qword_222D56758);
    v9 = OUTLINED_FUNCTION_11_4();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_11();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_222D28358()
{
  OUTLINED_FUNCTION_7_8();
  if (v5)
  {
    OUTLINED_FUNCTION_2_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_6_12();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_13();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_14(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C138, &qword_222D55038);
    v9 = OUTLINED_FUNCTION_11_4();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_11();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_12_3();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_222D28428()
{
  OUTLINED_FUNCTION_7_8();
  if (v3)
  {
    OUTLINED_FUNCTION_2_12();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_13();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_222D288D0(v7, v4);
  v9 = *(sub_222D5244C() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_222D28A0C(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_222D284FC()
{
  OUTLINED_FUNCTION_7_8();
  if (v5)
  {
    OUTLINED_FUNCTION_2_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_6_12();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_13();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_14(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C370, &qword_222D566F0);
    v9 = OUTLINED_FUNCTION_11_4();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 32);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_12_3();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_222D285DC()
{
  OUTLINED_FUNCTION_7_8();
  if (v5)
  {
    OUTLINED_FUNCTION_2_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_6_12();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_13();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_14(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3A8, &qword_222D56770);
    v9 = OUTLINED_FUNCTION_9_7();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_10(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_12_3();
  if (v1)
  {
    if (v9 != v0 || &v12[56 * v2] <= v11)
    {
      memmove(v11, v12, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_222D286B8()
{
  OUTLINED_FUNCTION_7_8();
  if (v5)
  {
    OUTLINED_FUNCTION_2_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_6_12();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_13();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_14(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3A0, &unk_222D56760);
    v9 = OUTLINED_FUNCTION_9_7();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_10(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_12_3();
  if (v1)
  {
    if (v9 != v0 || &v12[56 * v2] <= v11)
    {
      memmove(v11, v12, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_222D28794()
{
  OUTLINED_FUNCTION_7_8();
  if (v3)
  {
    OUTLINED_FUNCTION_2_12();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_13();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3D0, &unk_222D567A0);
    v9 = OUTLINED_FUNCTION_11_4();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_11();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void *sub_222D28868(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C138, &qword_222D55038);
  v4 = OUTLINED_FUNCTION_11_4();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_3_11();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_222D288D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3B8, &qword_222D56788);
  v4 = *(sub_222D5244C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_222D289CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_222D289EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_222D28A0C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_222D5244C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_222D5244C();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *sub_222D28AE0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_222D28C24()
{
  type metadata accessor for DialogCurrency();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogCurrency.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t *DialogCurrency.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  return v0;
}

uint64_t DialogCurrency.Builder.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D28D40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0xD000000000000012 ? (v7 = 0x8000000222D5ACF0 == a2) : (v7 = 0), v7 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0xD000000000000013 ? (v8 = 0x8000000222D5AD10 == a2) : (v8 = 0), v8 || (OUTLINED_FUNCTION_10_0(), (OUTLINED_FUNCTION_49() & 1) != 0) || (a1 == 0x6C6F626D7973 ? (v10 = a2 == 0xE600000000000000) : (v10 = 0), v10 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x656D614E74696E75 ? (v11 = a2 == 0xE800000000000000) : (v11 = 0), v11 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x4E74696E75627573 ? (v12 = a2 == 0xEB00000000656D61) : (v12 = 0), v12 || (OUTLINED_FUNCTION_10_0(), (OUTLINED_FUNCTION_49() & 1) != 0)))))))
  {
    sub_222CFA49C();
    if (v18)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v9 = swift_allocObject();
      *a3 = v9;
      v9[2] = v17;
      v9[3] = v18;
      v9[4] = v19;
      v9[5] = v20;
      return;
    }

LABEL_42:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v13 = a1 == 0x756C615674696E75 && a2 == 0xE900000000000065;
  if (v13 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
LABEL_41:
    sub_222CFA4D0();
    if ((v15 & 1) == 0)
    {
      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v14;
      return;
    }

    goto LABEL_42;
  }

  v16 = a1 == 0x5674696E75627573 && a2 == 0xEC00000065756C61;
  if (v16 || (OUTLINED_FUNCTION_10_0(), (OUTLINED_FUNCTION_49() & 1) != 0))
  {
    OUTLINED_FUNCTION_10_0();
    goto LABEL_41;
  }

  sub_222D1C028(a1, a2, a3);
}

uint64_t DialogCurrency.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogCurrency.init(from:)(a1);
}

uint64_t DialogCurrency.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogCurrency.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D293EC()
{
  type metadata accessor for DialogPreciseTemperature();
  OUTLINED_FUNCTION_5_11();
  swift_allocObject();

  return DialogConvertibleMeasurement.init(builder:)(v0);
}

uint64_t DialogPreciseTemperature.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_11();
  swift_allocObject();
  return DialogConvertibleMeasurement.init(builder:)(a1);
}

uint64_t DialogPreciseTemperature.Builder.__deallocating_deinit()
{
  v0 = DialogConvertibleMeasurement.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_222D294D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    goto LABEL_6;
  }

  v8 = a1 == 0x6B6F7053676E6F6CLL && a2 == 0xEA00000000006E65;
  if (v8 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    goto LABEL_6;
  }

  v9 = a1 == 0x70536D756964656DLL && a2 == 0xEC0000006E656B6FLL;
  if (v9 || (OUTLINED_FUNCTION_1() & 1) != 0 || (a1 == 0x6F705374726F6873 ? (v10 = a2 == 0xEB000000006E656BLL) : (v10 = 0), v10 || (OUTLINED_FUNCTION_1() & 1) != 0 || (a1 == 0x7469676944656E6FLL ? (v11 = a2 == 0xE800000000000000) : (v11 = 0), v11 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0xD000000000000012 ? (v12 = 0x8000000222D5B990 == a2) : (v12 = 0), v12 || (OUTLINED_FUNCTION_1() & 1) != 0 || ((OUTLINED_FUNCTION_98(), a1 == 0xD000000000000014) ? (v13 = a2 == 0xD000000000000012) : (v13 = 0), v13 || (OUTLINED_FUNCTION_49() & 1) != 0 || ((OUTLINED_FUNCTION_98(), a1 == 0xD000000000000013) ? (v14 = a2 == 0xD000000000000012) : (v14 = 0), v14 || (OUTLINED_FUNCTION_49() & 1) != 0))))))
  {
LABEL_6:
    sub_222CFB040();
    if (v27)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v7 = swift_allocObject();
      *a3 = v7;
      v7[2] = v26;
      v7[3] = v27;
      v7[4] = v28;
      v7[5] = v29;
      return;
    }

LABEL_53:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v15 = a1 == 0x656E4F65756C6176 && a2 == 0xED00007469676944;
  if (v15 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    goto LABEL_52;
  }

  v18 = a1 == 0x74696769446F7774 && a2 == 0xE900000000000073;
  if (v18 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_98();
  v19 = a1 == 0xD000000000000013 && a2 == 0x74696769446F7774;
  if (v19 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_98();
  v20 = a1 == 0xD000000000000015 && a2 == 0x74696769446F7774;
  if (v20 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_98();
  v21 = a1 == 0xD000000000000014 && a2 == 0x74696769446F7774;
  if (v21 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    goto LABEL_6;
  }

  v22 = a1 == 0x6F775465756C6176 && a2 == 0xEE00737469676944;
  if (v22 || (OUTLINED_FUNCTION_1() & 1) != 0)
  {
LABEL_52:
    sub_222CFB074();
    if ((v17 & 1) == 0)
    {
      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v16;
      return;
    }

    goto LABEL_53;
  }

  v23 = a1 == 0x7265706D65547361 && a2 == 0xED00006572757461;
  if (v23 || (OUTLINED_FUNCTION_1() & 1) != 0)
  {
    sub_222CFB0A8();
    if (v24)
    {
      v25 = v24;
      *(a3 + 24) = type metadata accessor for DialogTemperature();
      *a3 = v25;
      return;
    }

    goto LABEL_53;
  }

  sub_222D409D0(a1, a2, a3);
}

uint64_t DialogPreciseTemperature.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_11();
  swift_allocObject();
  return DialogPreciseTemperature.init(from:)(a1);
}

uint64_t DialogPreciseTemperature.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogConvertibleMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogPreciseTemperature.__deallocating_deinit()
{
  DialogConvertibleMeasurement.deinit();
  OUTLINED_FUNCTION_5_11();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D29EF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_222D29F58();
}

uint64_t sub_222D29F2C()
{
  OUTLINED_FUNCTION_8();
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_222D29F58()
{
  OUTLINED_FUNCTION_115();
  result = OUTLINED_FUNCTION_67();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0 & 1;
  return result;
}

double sub_222D29F9C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_222D2A024(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_222D29FD8(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  *&v7 = *a1;
  *(&v7 + 1) = v2;
  v8 = v3;
  v9 = v4;
  sub_222CE3060(v7, v2);
  return sub_222D2A064(&v7);
}

uint64_t sub_222D2A024@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v2 = OUTLINED_FUNCTION_13_4();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t sub_222D2A064(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = OUTLINED_FUNCTION_13_4();
  v4 = a1[1];
  *(v1 + 64) = *a1;
  *(v1 + 80) = v4;
  return sub_222CE2920(v3, v5);
}

double DialogDateTime.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

double DialogDateTime.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t sub_222D2A15C()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0 & 1;
}

uint64_t sub_222D2A1A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  OUTLINED_FUNCTION_67();
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v1[8] = v2;
  v1[9] = v3;
  v1[10] = v4;
  v1[11] = v5;
  sub_222CE3060(v2, v3);
  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D2A22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (!a4)
  {

    a3 = a1;
    v8 = a2;
  }

  OUTLINED_FUNCTION_67();
  v9 = v4[8];
  v10 = v4[9];
  v11 = v4[10];
  v12 = v4[11];
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = v8;

  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D2A2CC()
{
  type metadata accessor for DialogDateTime();
  v0 = swift_allocObject();

  DialogDateTime.init(builder:)(v1);
  return v0;
}

uint64_t DialogDateTime.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_8();
  v2 = swift_allocObject();
  DialogDateTime.init(builder:)(a1);
  return v2;
}

uint64_t DialogDateTime.Builder.deinit()
{
  v1 = OUTLINED_FUNCTION_13_4();
  sub_222CE2920(v1, v2);
  return v0;
}

uint64_t DialogDateTime.Builder.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_13_4();
  sub_222CE2920(v1, v2);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t DialogDateTime.year.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t DialogDateTime.month.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t DialogDateTime.day.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t DialogDateTime.timeZone.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t DialogDateTime.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_25();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_25();
  v4 = *(a1 + 40);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 48) = v4;
  OUTLINED_FUNCTION_25();
  v5 = *(a1 + 56);
  *(v1 + 56) = *(a1 + 48);
  *(v1 + 64) = v5;
  OUTLINED_FUNCTION_25();
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  sub_222CE3060(v6, v7);

  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  *(v1 + 96) = v9;
  return v1;
}

void sub_222D2A4EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v8 = *(v3 + 24);
    goto LABEL_9;
  }

  v9 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
  if (v9 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    if (*(v3 + 48))
    {
      goto LABEL_7;
    }

    v8 = *(v3 + 40);
    goto LABEL_9;
  }

  v10 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v10 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    if (*(v3 + 64))
    {
      goto LABEL_7;
    }

    v8 = *(v3 + 56);
LABEL_9:
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v8;
    return;
  }

  v11 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v12 = *(v3 + 80);
    if (!v12)
    {
      goto LABEL_7;
    }

    v14 = *(v3 + 88);
    v13 = *(v3 + 96);
    v15 = *(v3 + 72);
    *(a3 + 24) = &type metadata for SpeakableString;
    v16 = swift_allocObject();
    *a3 = v16;
    v16[2] = v15;
    v16[3] = v12;
    v16[4] = v14;
    v16[5] = v13;
  }

  else
  {
    v17 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
    if (v17 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x6972745372616579 ? (v19 = a2 == 0xEA0000000000676ELL) : (v19 = 0), v19 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x6D614E68746E6F6DLL ? (v20 = a2 == 0xE900000000000065) : (v20 = 0), v20 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x656D614E796164 ? (v21 = a2 == 0xE700000000000000) : (v21 = 0), v21 || (OUTLINED_FUNCTION_49() & 1) != 0))))
    {
      OUTLINED_FUNCTION_10_5();
      sub_222CFCA34();
      if (!v26)
      {
        goto LABEL_7;
      }

      *(a3 + 24) = &type metadata for SpeakableString;
      v18 = swift_allocObject();
      *a3 = v18;
      v18[2] = v25;
      v18[3] = v26;
      v18[4] = v27;
      v18[5] = v28;
    }

    else
    {
      v22 = a1 == 0x646E656C61437361 && a2 == 0xEA00000000007261;
      if (!v22 && (OUTLINED_FUNCTION_49() & 1) == 0)
      {
        goto LABEL_7;
      }

      sub_222CFCDAC();
      if (!v23)
      {
        goto LABEL_7;
      }

      v24 = v23;
      *(a3 + 24) = type metadata accessor for DialogCalendar();
      *a3 = v24;
    }
  }
}

uint64_t sub_222D2A8CC()
{
  v0 = sub_222D52ECC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D2A918(char a1)
{
  result = 1918985593;
  switch(a1)
  {
    case 1:
      result = 0x68746E6F6DLL;
      break;
    case 2:
      result = 7954788;
      break;
    case 3:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D2A9AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D2A8CC();
  *a2 = result;
  return result;
}

uint64_t sub_222D2A9DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D2A918(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D2AA10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D2A8CC();
  *a1 = result;
  return result;
}

uint64_t sub_222D2AA38(uint64_t a1)
{
  v2 = sub_222D2ACBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D2AA74(uint64_t a1)
{
  v2 = sub_222D2ACBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogDateTime.deinit()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_222CE2920(*(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t DialogDateTime.__deallocating_deinit()
{
  DialogDateTime.deinit();
  v0 = OUTLINED_FUNCTION_8_8();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D2AB08(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3D8, &qword_222D56860);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D2ACBC();
  sub_222D531AC();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  LOBYTE(v25) = 0;
  OUTLINED_FUNCTION_119();
  if (!v2)
  {
    v16 = *(v3 + 40);
    v17 = *(v3 + 48);
    LOBYTE(v25) = 1;
    OUTLINED_FUNCTION_119();
    v18 = *(v3 + 56);
    v19 = *(v3 + 64);
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_119();
    v20 = *(v3 + 80);
    v21 = *(v3 + 88);
    v22 = *(v3 + 96);
    v25 = *(v3 + 72);
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v24[15] = 3;
    sub_222CE3060(v25, v20);
    sub_222CF2084();
    sub_222D52FBC();
    sub_222CE2920(v25, v26);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D2ACBC()
{
  result = qword_27D03C3E0;
  if (!qword_27D03C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C3E0);
  }

  return result;
}

uint64_t DialogDateTime.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_8();
  v2 = swift_allocObject();
  DialogDateTime.init(from:)(a1);
  return v2;
}

uint64_t DialogDateTime.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3E8, &qword_222D56868);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v18 - v10;
  *(v1 + 16) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D2ACBC();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogDateTime();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v18[0]) = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_118();
    *(v1 + 32) = v13 & 1;
    LOBYTE(v18[0]) = 1;
    *(v1 + 40) = OUTLINED_FUNCTION_118();
    *(v1 + 48) = v14 & 1;
    LOBYTE(v18[0]) = 2;
    *(v1 + 56) = OUTLINED_FUNCTION_118();
    *(v1 + 64) = v15 & 1;
    v19 = 3;
    sub_222D0099C();
    sub_222D52F1C();
    (*(v7 + 8))(v11, v4);
    v17 = v18[1];
    *(v1 + 72) = v18[0];
    *(v1 + 88) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D2AFC8(uint64_t a1)
{
  *(a1 + 8) = sub_222D2B030(&qword_27D03C3F0);
  result = sub_222D2B030(&qword_27D03BE98);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D2B030(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogDateTime();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D2B070@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t keypath_getTm_1@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogDateTime.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D2B780()
{
  result = qword_27D03C3F8;
  if (!qword_27D03C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C3F8);
  }

  return result;
}

unint64_t sub_222D2B7D8()
{
  result = qword_27D03C400;
  if (!qword_27D03C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C400);
  }

  return result;
}

unint64_t sub_222D2B830()
{
  result = qword_27D03C408;
  if (!qword_27D03C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C408);
  }

  return result;
}

uint64_t sub_222D2B8B8(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_1_0();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t DialogDuration.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t DialogDuration.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  return result;
}

uint64_t DialogDuration.Builder.__allocating_init(secs:)(double a1)
{
  v2 = swift_allocObject();
  DialogDuration.Builder.init(secs:)(a1);
  return v2;
}

uint64_t DialogDuration.Builder.init(secs:)(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_222D2B9E8(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_1_0();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_222D2BA34()
{
  type metadata accessor for DialogDuration();
  v0 = swift_allocObject();

  DialogDuration.init(builder:)(v1);
  return v0;
}

uint64_t DialogDuration.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_5();
  v2 = swift_allocObject();
  DialogDuration.init(builder:)(a1);
  return v2;
}

uint64_t DialogDuration.secs.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t DialogDuration.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_8();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_96();
  if (((*(v4 + 144))() & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_222D53980;
    OUTLINED_FUNCTION_96();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C410, &qword_222D56AC8);
    v6 = sub_222D5297C();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_222CDDCB0();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_222D5280C();
  }

  return v1;
}

void sub_222D2BCAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 1935893875 && a2 == 0xE400000000000000;
  if (!v6 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    v10 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
    if (v10 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      goto LABEL_21;
    }

    if (a1 != 0x7372616579 || a2 != 0xE500000000000000)
    {
      OUTLINED_FUNCTION_19_5();
      if ((OUTLINED_FUNCTION_49() & 1) == 0)
      {
        v13 = a1 == 0x7368746E6F6DLL && a2 == 0xE600000000000000;
        if (v13 || (OUTLINED_FUNCTION_49() & 1) != 0)
        {
          goto LABEL_21;
        }

        if (a1 != 0x736B656577 || a2 != 0xE500000000000000)
        {
          OUTLINED_FUNCTION_19_5();
          if ((OUTLINED_FUNCTION_49() & 1) == 0)
          {
            v15 = a1 == 1937334628 && a2 == 0xE400000000000000;
            if (v15 || (OUTLINED_FUNCTION_49() & 1) != 0)
            {
              goto LABEL_21;
            }

            if (a1 != 0x7372756F68 || a2 != 0xE500000000000000)
            {
              OUTLINED_FUNCTION_19_5();
              if ((OUTLINED_FUNCTION_49() & 1) == 0)
              {
                v17 = a1 == 0x736574756E696DLL && a2 == 0xE700000000000000;
                if (!v17 && (OUTLINED_FUNCTION_49() & 1) == 0)
                {
                  v18 = a1 == 0x73646E6F636573 && a2 == 0xE700000000000000;
                  if (!v18 && (OUTLINED_FUNCTION_49() & 1) == 0)
                  {
                    v19 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                    if (!v19 && (OUTLINED_FUNCTION_49() & 1) == 0)
                    {
                      v20 = a1 == 0x596E4965756C6176 && a2 == 0xEC00000073726165;
                      if (v20 || (OUTLINED_FUNCTION_1() & 1) != 0)
                      {
                        goto LABEL_89;
                      }

                      v21 = a1 == 0x4D6E4965756C6176 && a2 == 0xED00007368746E6FLL;
                      if (v21 || (OUTLINED_FUNCTION_48() & 1) != 0)
                      {
                        goto LABEL_89;
                      }

                      OUTLINED_FUNCTION_14_4();
                      v22 = v4 & 0xFFFFFFFFFFFFLL | 0x576E000000000000;
                      v23 = a1 == v22 && a2 == 0xEC000000736B6565;
                      if (v23 || (OUTLINED_FUNCTION_2_15() & 1) != 0 || ((OUTLINED_FUNCTION_14_4(), v24 = v22 & 0xFFFFFFFFFFFFLL | 0x446E000000000000, a1 == v24) ? (v25 = a2 == 0xEB00000000737961) : (v25 = 0), v25 || (OUTLINED_FUNCTION_2_15() & 1) != 0 || ((OUTLINED_FUNCTION_14_4(), a1 == (v24 & 0xFFFFFFFFFFFFLL | 0x486E000000000000)) ? (v26 = a2 == 0xEC0000007372756FLL) : (v26 = 0), v26 || (OUTLINED_FUNCTION_2_15() & 1) != 0 || (a1 == 0x4D6E4965756C6176 ? (v29 = a2 == 0xEE00736574756E69) : (v29 = 0), v29 || (OUTLINED_FUNCTION_48() & 1) != 0 || (a1 == 0x536E4965756C6176 ? (v30 = a2 == 0xEE0073646E6F6365) : (v30 = 0), v30 || (OUTLINED_FUNCTION_1() & 1) != 0)))))
                      {
LABEL_89:
                        sub_222CFD158();
                        if (v28)
                        {
                          goto LABEL_7;
                        }

                        *(a3 + 24) = MEMORY[0x277D839F8];
                        *a3 = v27;
                        return;
                      }

                      v31 = a1 == 0x76697463656A6461 && a2 == 0xEF646F6972655065;
                      if (!v31 && (OUTLINED_FUNCTION_2_15() & 1) == 0)
                      {
                        OUTLINED_FUNCTION_98();
                        v32 = a1 == 0xD000000000000021 && a2 == 0xEF646F6972655065;
                        if (!v32 && (OUTLINED_FUNCTION_48() & 1) == 0)
                        {
                          OUTLINED_FUNCTION_98();
                          v33 = a1 == 0xD000000000000011 && a2 == 0xEF646F6972655065;
                          if (!v33 && (OUTLINED_FUNCTION_2_15() & 1) == 0)
                          {
                            OUTLINED_FUNCTION_98();
                            v34 = a1 == 0xD000000000000023 && a2 == 0xEF646F6972655065;
                            if (!v34 && (OUTLINED_FUNCTION_2_15() & 1) == 0)
                            {
                              OUTLINED_FUNCTION_98();
                              v35 = a1 == 0xD000000000000020 && a2 == 0xEF646F6972655065;
                              if (!v35 && (OUTLINED_FUNCTION_48() & 1) == 0)
                              {
                                v36 = a1 == 0x53736574756E696DLL && a2 == 0xEE0073646E6F6365;
                                if (!v36 && (OUTLINED_FUNCTION_1() & 1) == 0)
                                {
                                  v37 = a1 == 0xD000000000000020 && 0x8000000222D5BBF0 == a2;
                                  if (!v37 && (OUTLINED_FUNCTION_49() & 1) == 0)
                                  {
                                    v38 = a1 == 0x6E694D7372756F68 && a2 == 0xEC00000073657475;
                                    if (!v38 && (OUTLINED_FUNCTION_1() & 1) == 0)
                                    {
                                      v39 = a1 == 0xD000000000000017 && 0x8000000222D5BC20 == a2;
                                      if (!v39 && (OUTLINED_FUNCTION_1() & 1) == 0)
                                      {
                                        goto LABEL_7;
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

                goto LABEL_21;
              }
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_19_5();
LABEL_21:
    sub_222CFCDE0();
    if (!v41)
    {
      goto LABEL_7;
    }

    *(a3 + 24) = &type metadata for SpeakableString;
    v12 = swift_allocObject();
    *a3 = v12;
    v12[2] = v40;
    v12[3] = v41;
    v12[4] = v42;
    v12[5] = v43;
    return;
  }

  if (*(v3 + 32))
  {
LABEL_7:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v9 = *(v3 + 24);
  *(a3 + 24) = MEMORY[0x277D839F8];
  *a3 = v9;
}

BOOL sub_222D2C590()
{
  v0 = sub_222D52ECC();

  return v0 != 0;
}

BOOL sub_222D2C5E4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D2C590();
  *a2 = result;
  return result;
}

BOOL sub_222D2C63C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_222D2C590();
  *a1 = result;
  return result;
}

uint64_t sub_222D2C668(uint64_t a1)
{
  v2 = sub_222D2C858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D2C6A4(uint64_t a1)
{
  v2 = sub_222D2C858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogDuration.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_222D2C730(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C418, &qword_222D56AD0);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D2C858();
  sub_222D531AC();
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  sub_222D52FAC();
  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_222D2C858()
{
  result = qword_280D3C670;
  if (!qword_280D3C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3C670);
  }

  return result;
}

uint64_t DialogDuration.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_5();
  v2 = swift_allocObject();
  DialogDuration.init(from:)(a1);
  return v2;
}

uint64_t DialogDuration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C420, &qword_222D56AD8);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  *(v1 + 16) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D2C858();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogDuration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = sub_222D52EFC();
    v17 = v16;
    (*(v8 + 8))(v12, v5);
    *(v3 + 24) = v15;
    *(v3 + 32) = v17 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_222D2CAE8(uint64_t a1)
{
  *(a1 + 8) = sub_222D2CB50(&qword_27D03C428);
  result = sub_222D2CB50(&qword_27D03BE90);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D2CB50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogDuration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D2CB90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 368))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogDuration.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_222D2D410()
{
  result = qword_27D03C430;
  if (!qword_27D03C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C430);
  }

  return result;
}

unint64_t sub_222D2D468()
{
  result = qword_280D3C660;
  if (!qword_280D3C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3C660);
  }

  return result;
}

unint64_t sub_222D2D4C0()
{
  result = qword_280D3C668;
  if (!qword_280D3C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3C668);
  }

  return result;
}

uint64_t static PhonemeDataParser.parse(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222D5296C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222D2D86C(a1);
  if (!v9 || (sub_222D5295C(), v10 = sub_222D5293C(), v12 = v11, , (*(v5 + 8))(v8, v4), v12 >> 60 == 15))
  {
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C2C();
    result = sub_222D5280C();
LABEL_13:
    v14 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  if (qword_280D3BCC8 != -1)
  {
    swift_once();
  }

  sub_222D2D8D0();
  sub_222D51EDC();
  v14 = v20[2];
  v15 = v21;
  v16 = [a1 displayName];
  v17 = sub_222D5292C();
  v19 = v18;

  LODWORD(v16) = sub_222D4BE04(v17, v19);

  if (v15 != v16)
  {

    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C2C();
    sub_222D5280C();
    result = sub_222D27918(v10, v12);
    goto LABEL_13;
  }

  result = sub_222D27918(v10, v12);
LABEL_14:
  *a2 = v14;
  *(a2 + 8) = v15;
  return result;
}

uint64_t sub_222D2D82C()
{
  v0 = sub_222D51EFC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_222D51EEC();
  qword_280D3BCD0 = result;
  return result;
}

uint64_t sub_222D2D86C(void *a1)
{
  v1 = [a1 phonemeData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222D5292C();

  return v3;
}

unint64_t sub_222D2D8D0()
{
  result = qword_280D3BE98[0];
  if (!qword_280D3BE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D3BE98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhonemeDataParser(_BYTE *result, int a2, int a3)
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

uint64_t sub_222D2DA50()
{
  type metadata accessor for DialogDensity();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogDensity.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t *DialogDensity.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  return v0;
}

uint64_t DialogDensity.Builder.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D2DB6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_222D5305C() & 1) != 0 || (a1 == 0x6D69786F72707061 ? (v7 = a2 == 0xEB00000000657461) : (v7 = 0), v7 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000012 ? (v9 = 0x8000000222D5ACF0 == a2) : (v9 = 0), v9 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000013 ? (v10 = 0x8000000222D5AD10 == a2) : (v10 = 0), v10 || (OUTLINED_FUNCTION_1_1() & 1) != 0))))
  {
    sub_222CFA434();
    if (v12)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v8 = swift_allocObject();
      *a3 = v8;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v13;
      v8[5] = v14;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {

    sub_222D1C028(a1, a2, a3);
  }
}

uint64_t DialogDensity.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogDensity.init(from:)(a1);
}

uint64_t DialogDensity.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogDensity.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D2DFB8()
{
  type metadata accessor for DialogPressure();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogPressure.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t *DialogPressure.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  return v0;
}

uint64_t DialogPressure.Builder.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D2E0D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_222D5305C() & 1) != 0 || (a1 == 0x6D69786F72707061 ? (v7 = a2 == 0xEB00000000657461) : (v7 = 0), v7 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000012 ? (v9 = 0x8000000222D5ACF0 == a2) : (v9 = 0), v9 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000013 ? (v10 = 0x8000000222D5AD10 == a2) : (v10 = 0), v10 || (OUTLINED_FUNCTION_1_1() & 1) != 0))))
  {
    sub_222CFA850();
    if (v12)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v8 = swift_allocObject();
      *a3 = v8;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v13;
      v8[5] = v14;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {

    sub_222D1C028(a1, a2, a3);
  }
}

uint64_t DialogPressure.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogPressure.init(from:)(a1);
}

uint64_t DialogPressure.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogPressure.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_BYTE *CATGlobals.__allocating_init(siriLocale:siriVoiceGender:isMultiUserEnabled:requiresUserGrounding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v8 = sub_222D521AC();
  v9 = OUTLINED_FUNCTION_52(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_5();
  v14 = v13 - v12;
  sub_222D5216C();
  v15 = OUTLINED_FUNCTION_23_6();
  CATGlobals.Builder.init(siriLocale:)(v14);
  v16 = OUTLINED_FUNCTION_25_4();
  sub_222CE6518(v16, v17);

  *(v15 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isMultiUserEnabled) = a5;
  *(v15 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_requiresUserGrounding) = a6;
  v18 = objc_allocWithZone(type metadata accessor for CATGlobals(0));
  return CATGlobals.init(builder:)(v15);
}

id CATGlobals.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_222D2E5C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1935893875 && a2 == 0xE400000000000000;
  if (v3 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657366664F637475 && a2 == 0xED00007363655374;
    if (v6 || (sub_222D5305C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_222D5305C();

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

void sub_222D2E6E8()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C4B8, &qword_222D57120);
  OUTLINED_FUNCTION_113(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_222CE5F34();
  sub_222D5318C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_38_4();
    v14 = sub_222D52EFC();
    v16 = v15;
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_38_4();
    v17 = sub_222D52EFC();
    v25 = v18;
    v24 = v17;
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_38_4();
    v19 = sub_222D52EDC();
    v20 = v12;
    v22 = v21;
    (*(v7 + 8))(v20, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    *v4 = v14;
    *(v4 + 8) = v16 & 1;
    *(v4 + 16) = v24;
    *(v4 + 24) = v25 & 1;
    *(v4 + 32) = v19;
    *(v4 + 40) = v22;
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_222D2E8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D2E5C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D2E8D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D2E6E0();
  *a1 = result;
  return result;
}

uint64_t sub_222D2E8F8(uint64_t a1)
{
  v2 = sub_222CE5F34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D2E934(uint64_t a1)
{
  v2 = sub_222CE5F34();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_222D2E970@<D0>(_OWORD *a1@<X8>)
{
  sub_222D2E6E8();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_222D2E9B4()
{
  OUTLINED_FUNCTION_32_3();
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    sub_222CEC474();
  }

  else
  {
  }

  return OUTLINED_FUNCTION_112();
}

uint64_t sub_222D2EA48(void *a1)
{
  v3 = sub_222D528BC();
  sub_222D33854(a1, &selRef_firstName);
  if (v4)
  {
    sub_222D33854(a1, &selRef_firstNamePhonetic);
    if (v5)
    {
      v1 = v5;
    }

    else
    {
      v1 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_25_4();
    v6 = sub_222D2E9B4();
    v8 = v7;

    *&v123 = v6;
    *(&v123 + 1) = v8;
    OUTLINED_FUNCTION_26_4(v9, v10, v11, v12, v13, v14, v15, v16, v108, v113, v119, v121, v122, v123);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    v24 = OUTLINED_FUNCTION_14_5(v17, 0x6D614E6E65766967, v18, v19, v20, v21, v22, v23, v109, v114, v119);
    sub_222CE0F5C(v24, v25, 0xE900000000000065);
    v3 = v113;
  }

  v26 = sub_222D33854(a1, &selRef_middleName);
  if (v27)
  {
    *&v124 = v26;
    *(&v124 + 1) = v27;
    OUTLINED_FUNCTION_26_4(v26, v27, v28, v29, v30, v31, v32, v33, v108, v113, v119, v121, v122, v124);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_11_5(v34, 0x656C6464696DLL, v35, v36);
    v3 = v113;
  }

  sub_222D33854(a1, &selRef_lastName);
  if (v37)
  {
    sub_222D33854(a1, &selRef_lastNamePhonetic);
    if (v38)
    {
      v1 = v38;
    }

    else
    {
      v1 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_25_4();
    v39 = sub_222D2E9B4();
    v41 = v40;

    *&v125 = v39;
    *(&v125 + 1) = v41;
    OUTLINED_FUNCTION_26_4(v42, v43, v44, v45, v46, v47, v48, v49, v108, v113, v119, v121, v122, v125);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_11_5(v50, 0x796C696D6166, v51, v52);
    v3 = v113;
  }

  v53 = sub_222D33854(a1, &selRef_nickName);
  if (v54)
  {
    *&v126 = v53;
    *(&v126 + 1) = v54;
    OUTLINED_FUNCTION_26_4(v53, v54, v55, v56, v57, v58, v59, v60, v108, v113, v119, v121, v122, v126);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    v68 = OUTLINED_FUNCTION_14_5(v61, 0x656D616E6B63696ELL, v62, v63, v64, v65, v66, v67, v110, v115, v119);
    sub_222CE0F5C(v68, v69, 0xE800000000000000);
    v3 = v113;
  }

  v70 = sub_222D33854(a1, &selRef_fullName);
  if (v71)
  {
    *&v127 = v70;
    *(&v127 + 1) = v71;
    OUTLINED_FUNCTION_26_4(v70, v71, v72, v73, v74, v75, v76, v77, v108, v113, v119, v121, v122, v127);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    v85 = OUTLINED_FUNCTION_14_5(v78, 0x656D614E6C6C7566, v79, v80, v81, v82, v83, v84, v111, v116, v119);
    sub_222CE0F5C(v85, v86, 0xE800000000000000);
    v3 = v113;
  }

  v87 = sub_222D33854(a1, &selRef_company);
  if (v88)
  {
    v89 = v87;
    sub_222D33854(a1, &selRef_companyPhonetic);
    OUTLINED_FUNCTION_25_4();
    sub_222D2E9B4();
    OUTLINED_FUNCTION_24_5();

    *&v128 = v89;
    *(&v128 + 1) = v1;
    OUTLINED_FUNCTION_26_4(v90, v91, v92, v93, v94, v95, v96, v97, v108, v113, v119, v121, v122, v128);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    v105 = OUTLINED_FUNCTION_14_5(v98, 0x796E61706D6F63, v99, v100, v101, v102, v103, v104, v112, v117, v120);
    sub_222CE0F5C(v105, v106, 0xE700000000000000);
    return v118;
  }

  return v3;
}

uint64_t sub_222D2ED50(void *a1)
{
  v3 = sub_222D528BC();
  v4 = [a1 givenName];
  sub_222D5292C();
  OUTLINED_FUNCTION_24_5();

  OUTLINED_FUNCTION_10_7();
  if (v5)
  {
    v6 = [a1 givenName];
    sub_222D5292C();
    OUTLINED_FUNCTION_24_5();

    v7 = [a1 phoneticGivenName];
    sub_222D5292C();

    OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_52_1();

    *&v90 = v7;
    *(&v90 + 1) = v1;
    OUTLINED_FUNCTION_26_4(v8, v9, v10, v11, v12, v13, v14, v15, v79, v82, v86, v88, v89, v90);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    v23 = OUTLINED_FUNCTION_14_5(v16, 0x6D614E6E65766967, v17, v18, v19, v20, v21, v22, v80, v83, v86);
    sub_222CE0F5C(v23, v24, 0xE900000000000065);
    v3 = v82;
  }

  v25 = [a1 middleName];
  sub_222D5292C();
  OUTLINED_FUNCTION_24_5();

  OUTLINED_FUNCTION_10_7();
  if (v26)
  {
    v27 = [a1 middleName];
    sub_222D5292C();
    OUTLINED_FUNCTION_24_5();

    v28 = [a1 phoneticMiddleName];
    sub_222D5292C();

    OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_52_1();

    *&v91 = v28;
    *(&v91 + 1) = v1;
    OUTLINED_FUNCTION_26_4(v29, v30, v31, v32, v33, v34, v35, v36, v79, v82, v86, v88, v89, v91);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_11_5(v37, 0x656C6464696DLL, v38, v39);
    v3 = v82;
  }

  v40 = [a1 familyName];
  sub_222D5292C();
  OUTLINED_FUNCTION_24_5();

  OUTLINED_FUNCTION_10_7();
  if (v41)
  {
    v42 = [a1 familyName];
    sub_222D5292C();
    OUTLINED_FUNCTION_24_5();

    v43 = [a1 phoneticFamilyName];
    sub_222D5292C();

    OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_52_1();

    *&v92 = v43;
    *(&v92 + 1) = v1;
    OUTLINED_FUNCTION_26_4(v44, v45, v46, v47, v48, v49, v50, v51, v79, v82, v86, v88, v89, v92);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_11_5(v52, 0x796C696D6166, v53, v54);
    v3 = v82;
  }

  v55 = [a1 nickname];
  sub_222D5292C();
  OUTLINED_FUNCTION_24_5();

  OUTLINED_FUNCTION_10_7();
  if (v56)
  {
    v57 = [a1 nickname];
    sub_222D5292C();

    v58 = sub_222D2E9B4();
    v60 = v59;

    *&v93 = v58;
    *(&v93 + 1) = v60;
    OUTLINED_FUNCTION_26_4(v61, v62, v63, v64, v65, v66, v67, v68, v79, v82, v86, v88, v89, v93);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    v76 = OUTLINED_FUNCTION_14_5(v69, 0x656D616E6B63696ELL, v70, v71, v72, v73, v74, v75, v81, v84, v87);
    sub_222CE0F5C(v76, v77, 0xE800000000000000);
    return v85;
  }

  return v3;
}

uint64_t CATGlobals.Builder.__allocating_init(siriLocale:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_66_0();
  CATGlobals.Builder.init(siriLocale:)(v3);
  return v0;
}

{
  OUTLINED_FUNCTION_32_3();
  v1 = sub_222D521AC();
  v2 = OUTLINED_FUNCTION_52(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_112();
  sub_222D5216C();
  v5 = OUTLINED_FUNCTION_23_6();
  CATGlobals.Builder.init(siriLocale:)(v0);
  return v5;
}

uint64_t sub_222D2F1B8()
{
  v0 = sub_222D521AC();
  v1 = OUTLINED_FUNCTION_113(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6_5();

  sub_222D5216C();
  OUTLINED_FUNCTION_28_6();
  v4 = OUTLINED_FUNCTION_58_0();
  v5(v4);
  swift_endAccess();
}

uint64_t sub_222D2F300(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_0(a1, a2, OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_companionName);
}

uint64_t sub_222D2F344(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_56_0(a1, OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_user);
}

uint64_t sub_222D2F394(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_56_0(a1, *a2);
}

uint64_t sub_222D2F3D8(uint64_t a1)
{
  sub_222CE5C64(1935893875, 0xE400000000000000, a1, &v17);
  if (v18)
  {
    v3 = OUTLINED_FUNCTION_27_4();
    if (v3)
    {
      v4 = v15;
    }

    else
    {
      v4 = 0;
    }

    v5 = v3 ^ 1;
  }

  else
  {
    sub_222CDC59C(&v17, &qword_27D03BDA8, &unk_222D55070);
    v4 = 0;
    v5 = 1;
  }

  sub_222CE5C64(0x657366664F637475, 0xED00007363655374, a1, &v17);
  if (v18)
  {
    v6 = OUTLINED_FUNCTION_27_4();
    if (v6)
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }

    v8 = v6 ^ 1;
  }

  else
  {
    sub_222CDC59C(&v17, &qword_27D03BDA8, &unk_222D55070);
    v7 = 0;
    v8 = 1;
  }

  sub_222CE5C64(0x656E6F5A656D6974, 0xE800000000000000, a1, &v17);
  if (v18)
  {
    v9 = OUTLINED_FUNCTION_27_4();
    v10 = v15;
    v11 = v16;
    if (!v9)
    {
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    sub_222CDC59C(&v17, &qword_27D03BDA8, &unk_222D55070);
    v10 = 0;
    v11 = 0;
  }

  v12 = v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now;
  v13 = *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now + 40);
  *v12 = v4;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
}

uint64_t sub_222D2F58C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (*(a1 + 64))
  {
    v11 = *(a1 + 56);
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    v6 = sub_222CEC474();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now;
  v9 = *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now + 40);
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
}

uint64_t sub_222D2F640()
{
  v0 = OUTLINED_FUNCTION_57_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_6();
  sub_222CE2B7C();
  OUTLINED_FUNCTION_28_6();
  sub_222CE65FC();
  swift_endAccess();
}

uint64_t sub_222D2F71C(uint64_t a1)
{
  OUTLINED_FUNCTION_56_0(a1, OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_dialogMetadata);
}

_BYTE *CATGlobals.__allocating_init(builder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_66_0();
  return CATGlobals.init(builder:)(v2);
}

uint64_t CATGlobals.__allocating_init(device:)(uint64_t *a1)
{
  v3 = sub_222D521AC();
  v4 = OUTLINED_FUNCTION_52(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_36_5();
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_49_1();
  sub_222D5226C();
  v8 = OUTLINED_FUNCTION_23_6();
  CATGlobals.Builder.init(siriLocale:)(v1);

  sub_222CE37D4();
  v9 = objc_allocWithZone(type metadata accessor for CATGlobals(0));
  v10 = OUTLINED_FUNCTION_49_1();
  CATGlobals.init(builder:)(v10);
  OUTLINED_FUNCTION_49_1();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

id CATGlobals.init()()
{
  v2 = v0;
  swift_getObjectType();
  v3 = sub_222D5284C();
  v4 = OUTLINED_FUNCTION_113(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_36_5();
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  OUTLINED_FUNCTION_41_3();
  v10 = static CATGlobals.defaultBuilder()();
  v11 = objc_allocWithZone(type metadata accessor for CATGlobals(0));
  v12 = v10;
  v13 = v11;
  CATGlobals.init(builder:)(v12);
  OUTLINED_FUNCTION_49_1();
  swift_getObjectType();
  v14 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v15 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  v16 = v13;
  sub_222D52C5C();
  OUTLINED_FUNCTION_41_3();

  (*(v6 + 8))(v1, v3);
  return v16;
}

void CATGlobals.__allocating_init(dictionary:)()
{
  OUTLINED_FUNCTION_73();
  v3 = v2;
  v4 = sub_222D521AC();
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_45_2();
  v29 = sub_222D5284C();
  v8 = OUTLINED_FUNCTION_113(v29);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_36_5();
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  OUTLINED_FUNCTION_70_0();
  sub_222CE5C64(0x656C61636F6CLL, 0xE600000000000000, v3, &v32);
  if (v33)
  {
    OUTLINED_FUNCTION_9_9();
  }

  else
  {
    sub_222CDC59C(&v32, &qword_27D03BDA8, &unk_222D55070);
  }

  sub_222D5216C();
  v13 = OUTLINED_FUNCTION_23_6();
  CATGlobals.Builder.init(siriLocale:)(v0);
  sub_222CE5C64(0x7265646E6567, 0xE600000000000000, v3, &v32);
  if (v33)
  {
    if (OUTLINED_FUNCTION_9_9())
    {
      v14 = v30;
      v15 = v31;
      goto LABEL_11;
    }
  }

  else
  {
    sub_222CDC59C(&v32, &qword_27D03BDA8, &unk_222D55070);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
LABEL_11:
  sub_222CE6518(v14, v15);

  sub_222CE5C64(0x7463617265746E69, 0xED000064496E6F69, v3, &v32);
  if (v33)
  {
    if (OUTLINED_FUNCTION_9_9())
    {
      v16 = v30;
      v17 = v31;
      goto LABEL_16;
    }
  }

  else
  {
    sub_222CDC59C(&v32, &qword_27D03BDA8, &unk_222D55070);
  }

  v16 = 0;
  v17 = 0xE000000000000000;
LABEL_16:
  sub_222D2F29C(v16, v17);

  sub_222CE5C64(0xD000000000000012, 0x8000000222D59BC0, v3, &v32);
  if (v33)
  {
    if (OUTLINED_FUNCTION_9_9())
    {
      v18 = v30;
      v19 = v31;
      goto LABEL_21;
    }
  }

  else
  {
    sub_222CDC59C(&v32, &qword_27D03BDA8, &unk_222D55070);
  }

  v18 = 0;
  v19 = 0xE000000000000000;
LABEL_21:
  sub_222D2F2A8(v18, v19);

  sub_222CE5C64(0x65737569746C756DLL, 0xE900000000000072, v3, &v32);
  if (v33)
  {
    if ((OUTLINED_FUNCTION_9_9() & 1) != 0 && v30 == 1702195828 && v31 == 0xE400000000000000)
    {

      v21 = 1;
      goto LABEL_31;
    }
  }

  else
  {
    sub_222CDC59C(&v32, &qword_27D03BDA8, &unk_222D55070);
  }

  v21 = OUTLINED_FUNCTION_54_0();

LABEL_31:
  *(v13 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isMultiUserEnabled) = v21 & 1;
  sub_222CE5C64(0x6E69646E756F7267, 0xE900000000000067, v3, &v32);
  if (v33)
  {
    if ((OUTLINED_FUNCTION_9_9() & 1) != 0 && v30 == 1702195828 && v31 == 0xE400000000000000)
    {

      v23 = 1;
      goto LABEL_41;
    }
  }

  else
  {
    sub_222CDC59C(&v32, &qword_27D03BDA8, &unk_222D55070);
  }

  v23 = OUTLINED_FUNCTION_54_0();

LABEL_41:
  *(v13 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_requiresUserGrounding) = v23 & 1;
  sub_222CE5C64(0x65536D6F646E6172, 0xEA00000000006465, v3, &v32);
  if (v33)
  {
    if (OUTLINED_FUNCTION_9_9())
    {
      v24 = v30;
      goto LABEL_46;
    }
  }

  else
  {
    sub_222CDC59C(&v32, &qword_27D03BDA8, &unk_222D55070);
  }

  v24 = 0;
LABEL_46:
  *(v13 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_randomSeed) = v24;
  sub_222CE5C64(0x54746E6572727563, 0xEB00000000656D69, v3, &v32);
  if (v33)
  {
    if (OUTLINED_FUNCTION_9_9())
    {
      v25 = v30;
      goto LABEL_51;
    }
  }

  else
  {
    sub_222CDC59C(&v32, &qword_27D03BDA8, &unk_222D55070);
  }

  v25 = 0;
LABEL_51:
  *(v13 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_currentTime) = v25;
  sub_222CE5C64(0x7474655372657375, 0xEC00000073676E69, v3, &v32);

  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C130, &qword_222D55008);
    if (OUTLINED_FUNCTION_9_9())
    {
      goto LABEL_56;
    }
  }

  else
  {
    sub_222CDC59C(&v32, &qword_27D03BDA8, &unk_222D55070);
  }

  sub_222D528BC();
LABEL_56:
  v26 = OUTLINED_FUNCTION_65_0();
  sub_222D2F388(v26);

  v27 = objc_allocWithZone(type metadata accessor for CATGlobals(0));

  CATGlobals.init(builder:)(v28);
  sub_222D52C5C();
  OUTLINED_FUNCTION_70_0();

  (*(v10 + 8))(v1, v29);
  OUTLINED_FUNCTION_74();
}

uint64_t sub_222D30088()
{
  sub_222D52ECC();
  OUTLINED_FUNCTION_66_0();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_222D300D8(char a1)
{
  result = 0x63696F5669726973;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x654D676F6C616964;
      break;
    case 3:
      result = 0x7463617265746E69;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x65536D6F646E6172;
      break;
    case 8:
      result = 0x65736E6F70736572;
      break;
    case 9:
      result = 0x54746E6572727563;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x7474655372657375;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_222D302A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D30088();
  *a2 = result;
  return result;
}

unint64_t sub_222D302D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_222D300D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D3031C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D300D0();
  *a1 = result;
  return result;
}

uint64_t sub_222D30350(uint64_t a1)
{
  v2 = sub_222D32A5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D3038C(uint64_t a1)
{
  v2 = sub_222D32A5C();

  return MEMORY[0x2821FE720](a1, v2);
}

void CATGlobals.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_49_1();
  CATGlobals.init(from:)(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void CATGlobals.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_19_4();
  v78 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C440, &unk_222D56DF0);
  OUTLINED_FUNCTION_52(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v17);
  v19 = v73 - v18;
  v20 = sub_222D521AC();
  v21 = OUTLINED_FUNCTION_113(v20);
  v74 = v22;
  v75 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_5();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C450, &qword_222D56E10);
  OUTLINED_FUNCTION_113(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v33);
  v34 = v13[3];
  v35 = v13[4];
  v76 = v13;
  __swift_project_boxed_opaque_existential_1(v13, v34);
  sub_222D32A5C();
  sub_222D5318C();
  if (v11)
  {
    v77 = v11;
    v36 = v78;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    type metadata accessor for CATGlobals(0);
    v37 = *((*MEMORY[0x277D85000] & *v36) + 0x30);
    v38 = *((*MEMORY[0x277D85000] & *v36) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v77 = v19;
    v73[1] = v30;
    LOBYTE(a10) = 0;
    sub_222D52EDC();
    sub_222D5216C();
    v39 = v78;
    (*(v74 + 32))(v78 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriLocale, v27, v75);
    OUTLINED_FUNCTION_4_16(1);
    v40 = sub_222D52EDC();
    v42 = 0x6E776F6E6B6E75;
    if (v41)
    {
      v42 = v40;
    }

    v43 = 0xE700000000000000;
    if (v41)
    {
      v43 = v41;
    }

    v44 = (v39 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriVoiceGender);
    *v44 = v42;
    v44[1] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C130, &qword_222D55008);
    v80 = 2;
    sub_222D32BC8(&qword_27D03C460);
    sub_222D52F1C();
    *(v39 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_dialogMetadata) = a10;
    OUTLINED_FUNCTION_4_16(3);
    v45 = sub_222D52EDC();
    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0;
    }

    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    v49 = (v39 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_interactionId);
    *v49 = v47;
    v49[1] = v48;
    OUTLINED_FUNCTION_4_16(4);
    v50 = sub_222D52EDC();
    if (v51)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    v54 = (v39 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_executionRequestId);
    *v54 = v52;
    v54[1] = v53;
    OUTLINED_FUNCTION_4_16(5);
    *(v39 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_isMultiUserEnabled) = sub_222D52EEC() & 1;
    OUTLINED_FUNCTION_4_16(6);
    *(v39 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_requiresUserGrounding) = sub_222D52EEC() & 1;
    OUTLINED_FUNCTION_4_16(7);
    v55 = sub_222D52F3C();
    if ((v55 & 0x100000000) != 0)
    {
      v56 = 0;
    }

    else
    {
      v56 = v55;
    }

    *(v39 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_randomSeed) = v56;
    sub_222D525AC();
    OUTLINED_FUNCTION_19_6();
    sub_222CE66DC(v57, v58);
    v59 = v77;
    sub_222D52F1C();
    sub_222D32AB0(v59, v39 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_responseMode);
    LOBYTE(a10) = 9;
    v60 = sub_222D52F0C();
    v77 = 0;
    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = v60;
    }

    v63 = v77;
    *(v78 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_currentTime) = v62;
    v80 = 10;
    sub_222D52F1C();
    v77 = v63;
    v64 = MEMORY[0x277D84F98];
    if (a10)
    {
      v64 = a10;
    }

    v65 = v77;
    *(v78 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_customPronunciations) = v64;
    v66 = sub_222D30C5C(11);
    v77 = v65;
    *(v78 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_globalParameters) = v66;
    v67 = sub_222D30C5C(12);
    v77 = 0;
    v68 = v67;
    v69 = OUTLINED_FUNCTION_6_13();
    v70(v69, v28);
    v71 = v78;
    *(v78 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_userSettings) = v68;
    v72 = type metadata accessor for CATGlobals(0);
    v79.receiver = v71;
    v79.super_class = v72;
    objc_msgSendSuper2(&v79, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
  }

  OUTLINED_FUNCTION_20();
}