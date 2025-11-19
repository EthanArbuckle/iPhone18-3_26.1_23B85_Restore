uint64_t sub_261A612E8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_261A61350()
{
  result = qword_27FECBA98;
  if (!qword_27FECBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA98);
  }

  return result;
}

unint64_t sub_261A613F8()
{
  result = qword_27FECBAA0;
  if (!qword_27FECBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAA0);
  }

  return result;
}

unint64_t sub_261A61450()
{
  result = qword_27FECBAA8;
  if (!qword_27FECBAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAA8);
  }

  return result;
}

unint64_t sub_261A614A8()
{
  result = qword_27FECBAB0;
  if (!qword_27FECBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAB0);
  }

  return result;
}

unint64_t sub_261A61500()
{
  result = qword_27FECBAB8;
  if (!qword_27FECBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAB8);
  }

  return result;
}

unint64_t sub_261A61558()
{
  result = qword_27FECBAC0;
  if (!qword_27FECBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAC0);
  }

  return result;
}

unint64_t sub_261A615B0()
{
  result = qword_27FECBAC8;
  if (!qword_27FECBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAC8);
  }

  return result;
}

unint64_t sub_261A61608()
{
  result = qword_27FECBAD0;
  if (!qword_27FECBAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAD0);
  }

  return result;
}

unint64_t sub_261A61660()
{
  result = qword_27FECBAD8;
  if (!qword_27FECBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAD8);
  }

  return result;
}

unint64_t sub_261A616B8()
{
  result = qword_27FECBAE0;
  if (!qword_27FECBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAE0);
  }

  return result;
}

uint64_t sub_261A6170C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65696369666665 && a2 == 0xEA00000000007963 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D726F66726570 && a2 == 0xEB0000000065636ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_261A61834()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_261A858C4();
  MEMORY[0x2667168A0](0x206F666E49554D50, 0xED00002068746977);
  v4 = sub_261A85B94();
  MEMORY[0x2667168A0](v4);

  MEMORY[0x2667168A0](0x7265746E756F6320, 0xEB00000000202C73);
  v5 = sub_261A85B94();
  MEMORY[0x2667168A0](v5);

  MEMORY[0x2667168A0](0xD00000000000001ALL, 0x8000000261A8E790);
  v6 = sub_261A85B94();
  MEMORY[0x2667168A0](v6);

  return 0;
}

uint64_t PMUInfo.init(cpu:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_261A85394();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v12) = *(a1 + 2);
  v25 = *a1;
  v26 = v12;
  sub_261A4AF88(&v25, 0, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_261A4E124(v8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 24) = 1;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v15 = sub_261A853A4();
    if (v2)
    {
      return (*(v10 + 8))(v13, v9);
    }

    else
    {
      v17 = v15;
      v18 = v16;
      sub_261A4777C(v15, v16);
      v19 = sub_261A4CBB8(v17, v18);
      v27 = v20;

      v21 = vcnt_s8(v19);
      v21.i16[0] = vaddlv_u8(v21);
      v22 = v21.u32[0];
      v23 = vcnt_s8(v27);
      v23.i16[0] = vaddlv_u8(v23);
      v24 = v23.u32[0];
      v27 = (v22 + v23.u32[0]);
      sub_261A47728(v17, v18);
      result = (*(v10 + 8))(v13, v9);
      *a2 = v27;
      *(a2 + 8) = v24;
      *(a2 + 16) = v22;
      *(a2 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_261A61C18()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x437265746E756F63;
  }
}

uint64_t sub_261A61C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A62290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A61CA4(uint64_t a1)
{
  v2 = sub_261A620C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A61CE0(uint64_t a1)
{
  v2 = sub_261A620C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PMUInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBAE8, &qword_261A8B580);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A620C8();
  sub_261A85CD4();
  v16 = 0;
  sub_261A85B44();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_261A85B44();
  v14 = 2;
  sub_261A85B44();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PMUInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBAF8, &qword_261A8B588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A620C8();
  sub_261A85CB4();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_261A85A84();
    v18 = 1;
    v16 = sub_261A85A84();
    v17 = 2;
    v13 = sub_261A85A84();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_261A620C8()
{
  result = qword_27FECBAF0;
  if (!qword_27FECBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBAF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PMUInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PMUInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_261A6218C()
{
  result = qword_27FECBB00;
  if (!qword_27FECBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB00);
  }

  return result;
}

unint64_t sub_261A621E4()
{
  result = qword_27FECBB08;
  if (!qword_27FECBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB08);
  }

  return result;
}

unint64_t sub_261A6223C()
{
  result = qword_27FECBB10;
  if (!qword_27FECBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB10);
  }

  return result;
}

uint64_t sub_261A62290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437265746E756F63 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000261A8E750 == a2 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000261A8E770 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static CountingMode.Metric.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_261A85BA4();
  }
}

uint64_t CountingMode.Metric.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CountingMode.Metric.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CountingMode.Metric.displayName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CountingMode.Metric.shortDisplayName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t CountingMode.Metric.synopsis.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t CountingMode.Metric.documentation.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t CountingMode.Metric.commentary.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t CountingMode.Metric.expression.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

unint64_t sub_261A62580()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 7173491;
  }

  *v0;
  return result;
}

uint64_t sub_261A625B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7173491 && a2 == 0xE300000000000000;
  if (v5 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000261A8E830 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_261A6269C(uint64_t a1)
{
  v2 = sub_261A63964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A626D8(uint64_t a1)
{
  v2 = sub_261A63964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A62714(uint64_t a1)
{
  v2 = sub_261A63A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A62750(uint64_t a1)
{
  v2 = sub_261A63A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A6278C(uint64_t a1)
{
  v2 = sub_261A639B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A627C8(uint64_t a1)
{
  v2 = sub_261A639B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CountingMode.Metric.Aggregation.hashValue.getter()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t sub_261A6288C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6973736572707865;
    v6 = 0x7461676572676761;
    if (a1 != 8)
    {
      v6 = 0x6E7265746E497369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746E656D75636F64;
    if (a1 != 5)
    {
      v7 = 0x61746E656D6D6F63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x4E79616C70736964;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x736973706F6E7973;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_261A629EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A64560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A62A20(uint64_t a1)
{
  v2 = sub_261A62DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A62A5C(uint64_t a1)
{
  v2 = sub_261A62DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *CountingMode.Metric.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return v0;
}

uint64_t CountingMode.Metric.__deallocating_deinit()
{
  CountingMode.Metric.deinit();

  return MEMORY[0x2821FE8D8](v0, 146, 7);
}

uint64_t CountingMode.Metric.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB18, &qword_261A8B720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A62DE4();
  sub_261A85CD4();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v29[15] = 0;
  sub_261A85B14();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v29[14] = 1;
    sub_261A85B14();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    v29[13] = 2;
    sub_261A85B14();
    v17 = *(v3 + 64);
    v18 = *(v3 + 72);
    v29[12] = 3;
    sub_261A85AE4();
    v19 = *(v3 + 80);
    v20 = *(v3 + 88);
    v29[11] = 4;
    sub_261A85B14();
    v21 = *(v3 + 96);
    v22 = *(v3 + 104);
    v29[10] = 5;
    sub_261A85AE4();
    v23 = *(v3 + 112);
    v24 = *(v3 + 120);
    v29[9] = 6;
    sub_261A85AE4();
    v25 = *(v3 + 128);
    v26 = *(v3 + 136);
    v29[8] = 7;
    sub_261A85B14();
    v29[7] = *(v3 + 144);
    v29[6] = 8;
    sub_261A62E38();
    sub_261A85B54();
    v27 = *(v3 + 145);
    v29[5] = 9;
    sub_261A85B24();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_261A62DE4()
{
  result = qword_27FECBB20;
  if (!qword_27FECBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB20);
  }

  return result;
}

unint64_t sub_261A62E38()
{
  result = qword_27FECBB28;
  if (!qword_27FECBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB28);
  }

  return result;
}

uint64_t CountingMode.Metric.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  CountingMode.Metric.init(from:)(a1);
  return v2;
}

uint64_t *CountingMode.Metric.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB30, &qword_261A8B728);
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A62DE4();
  sub_261A85CB4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v21 = a1;
  }

  else
  {
    v23 = a1;
    v35 = 0;
    v1[2] = sub_261A85A54();
    v1[3] = v11;
    v34 = 1;
    v1[4] = sub_261A85A54();
    v1[5] = v12;
    v33 = 2;
    v1[6] = sub_261A85A54();
    v1[7] = v13;
    v32 = 3;
    v22 = 0;
    v1[8] = sub_261A85A14();
    v1[9] = v14;
    v31 = 4;
    v1[10] = sub_261A85A54();
    v1[11] = v15;
    v30 = 5;
    v1[12] = sub_261A85A14();
    v1[13] = v16;
    v29 = 6;
    v1[14] = sub_261A85A14();
    v1[15] = v17;
    v28 = 7;
    v1[16] = sub_261A85A54();
    v1[17] = v18;
    v26 = 8;
    sub_261A63440();
    sub_261A85A94();
    *(v1 + 144) = v27;
    v25 = 9;
    v20 = sub_261A85A64();
    (*(v6 + 8))(v9, v24);
    *(v3 + 145) = v20 & 1;
    v21 = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v3;
}

unint64_t sub_261A63440()
{
  result = qword_27FECBB38;
  if (!qword_27FECBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB38);
  }

  return result;
}

uint64_t *sub_261A63494@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = CountingMode.Metric.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t CountingMode.Metric.hash(into:)()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_261A85554();
  v3 = v0[16];
  v4 = v0[17];

  return sub_261A85554();
}

uint64_t CountingMode.Metric.hashValue.getter()
{
  sub_261A85C44();
  v1 = v0[4];
  v2 = v0[5];
  sub_261A85554();
  v3 = v0[16];
  v4 = v0[17];
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A635A0()
{
  v1 = *v0;
  sub_261A85C44();
  v2 = v1[4];
  v3 = v1[5];
  sub_261A85554();
  v4 = v1[16];
  v5 = v1[17];
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A635F4()
{
  v1 = *v0;
  v2 = v1[4];
  v3 = v1[5];
  sub_261A85554();
  v4 = v1[16];
  v5 = v1[17];

  return sub_261A85554();
}

uint64_t sub_261A63638()
{
  v1 = *v0;
  sub_261A85C44();
  v2 = v1[4];
  v3 = v1[5];
  sub_261A85554();
  v4 = v1[16];
  v5 = v1[17];
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A63688(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_261A85BA4();
  }
}

uint64_t CountingMode.Metric.Aggregation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB40, &qword_261A8B730);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB48, &qword_261A8B738);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB50, &qword_261A8B740);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A63964();
  sub_261A85CD4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_261A639B8();
    v18 = v22;
    sub_261A85AD4();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_261A63A0C();
    sub_261A85AD4();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_261A63964()
{
  result = qword_27FECBB58;
  if (!qword_27FECBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB58);
  }

  return result;
}

unint64_t sub_261A639B8()
{
  result = qword_27FECBB60;
  if (!qword_27FECBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB60);
  }

  return result;
}

unint64_t sub_261A63A0C()
{
  result = qword_27FECBB68;
  if (!qword_27FECBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB68);
  }

  return result;
}

uint64_t CountingMode.Metric.Aggregation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB70, &qword_261A8B748);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB78, &qword_261A8B750);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB80, &unk_261A8B758);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A63964();
  v16 = v36;
  sub_261A85CB4();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_261A85AC4();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_261A612E8();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_261A85904();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB6F8, &qword_261A89A40) + 48);
      *v26 = &type metadata for CountingMode.Metric.Aggregation;
      sub_261A85A04();
      sub_261A858F4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_261A639B8();
        sub_261A859F4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_261A63A0C();
        sub_261A859F4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_261A63F20()
{
  result = qword_27FECBB88;
  if (!qword_27FECBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB88);
  }

  return result;
}

unint64_t sub_261A63F78()
{
  result = qword_27FECBB90;
  if (!qword_27FECBB90)
  {
    type metadata accessor for CountingMode.Metric();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB90);
  }

  return result;
}

uint64_t _s6MetricC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6MetricC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261A641F4()
{
  result = qword_27FECBB98;
  if (!qword_27FECBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBB98);
  }

  return result;
}

unint64_t sub_261A6424C()
{
  result = qword_27FECBBA0;
  if (!qword_27FECBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBA0);
  }

  return result;
}

unint64_t sub_261A642A4()
{
  result = qword_27FECBBA8;
  if (!qword_27FECBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBA8);
  }

  return result;
}

unint64_t sub_261A642FC()
{
  result = qword_27FECBBB0;
  if (!qword_27FECBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBB0);
  }

  return result;
}

unint64_t sub_261A64354()
{
  result = qword_27FECBBB8;
  if (!qword_27FECBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBB8);
  }

  return result;
}

unint64_t sub_261A643AC()
{
  result = qword_27FECBBC0;
  if (!qword_27FECBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBC0);
  }

  return result;
}

unint64_t sub_261A64404()
{
  result = qword_27FECBBC8;
  if (!qword_27FECBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBC8);
  }

  return result;
}

unint64_t sub_261A6445C()
{
  result = qword_27FECBBD0;
  if (!qword_27FECBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBD0);
  }

  return result;
}

unint64_t sub_261A644B4()
{
  result = qword_27FECBBD8;
  if (!qword_27FECBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBD8);
  }

  return result;
}

unint64_t sub_261A6450C()
{
  result = qword_27FECBBE0;
  if (!qword_27FECBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBE0);
  }

  return result;
}

uint64_t sub_261A64560(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000261A8E570 == a2 || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736973706F6E7973 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00006E6F697461 || (sub_261A85BA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61746E656D6D6F63 && a2 == 0xEA00000000007972 || (sub_261A85BA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL || (sub_261A85BA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEB000000006E6F69 || (sub_261A85BA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 9;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_261A648C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  if ((*v2 & 1) == 0)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;

    goto LABEL_9;
  }

  v7 = a1[1];
  v8 = *a1 - v7;
  if (__OFSUB__(*a1, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v5 + 16);
  if (v7 < v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8)
  {
LABEL_15:
    sub_261A65A2C(v5, v5 + 32, v8, (2 * v7) | 1);
    v5 = v11;
    goto LABEL_8;
  }

  v9 = *(v2 + 1);

LABEL_8:
  *a2 = v4 & 0xFFFFFFFE;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
LABEL_9:
}

BOOL sub_261A64A18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_261A64A48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_261A64A74@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_261A64B60@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261A64B94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_261A64BEC(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = ((*a1 << 63) >> 63) & 0x30000 | (((*a1 >> 1) & 1) << 18);
    v13 = MEMORY[0x277D84F90];
    sub_261A3EF90(0, v4, 0);
    result = v13;
    v7 = (v3 + 32);
    v8 = *(v13 + 16);
    do
    {
      v9 = *v7++;
      v10 = v6 | v9;
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v14 = result;
      v12 = *(result + 24);
      if (v8 >= v12 >> 1)
      {
        sub_261A3EF90((v12 > 1), v8 + 1, 1);
        result = v14;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8++ + 32) = v11;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_261A65928()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);

  sub_261A858C4();

  v3 = MEMORY[0x277D84D38];
  v4 = MEMORY[0x2667169D0](v2, MEMORY[0x277D84D38]);
  MEMORY[0x2667168A0](v4);

  MEMORY[0x2667168A0](0x646F69726570202CLL, 0xEB00000000203A73);
  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x2667169D0](v1, v3);
  v7 = v6;

  MEMORY[0x2667168A0](v5, v7);

  return 0xD00000000000001ALL;
}

void sub_261A65A2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB130, &qword_261A87998);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_261A65AFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC88, &qword_261A8BF98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A65C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB130, &qword_261A87998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_261A65D30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC58, &qword_261A8BF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC60, &qword_261A8BF70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A65E78(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A65FE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC38, &qword_261A8BF48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_261A660EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB080, &qword_261A87908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB088, &unk_261A87D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A66234(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC68, &qword_261A8BF78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB978, &qword_261A8AC28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A663B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_261A664AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB110, &qword_261A87988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A665CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC70, &qword_261A8BF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A666EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC78, &qword_261A8BF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC80, &qword_261A8BF90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A66820(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB060, &unk_261A8D2C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_261A6695C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_261A66A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB118, &qword_261A8D2D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A66B74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC48, &qword_261A8BF58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_261A66C68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC30, &qword_261A8BF40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A66D98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A66ECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB078, &qword_261A87900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A66FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC18, &qword_261A8BF28);
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
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

void *sub_261A670F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC20, &qword_261A8BF30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC28, &qword_261A8BF38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A67244(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B0, &qword_261A87930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B8, &unk_261A8C900);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A67388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB108, &qword_261A87980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A674A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC10, &qword_261A8BF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A675C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB068, &qword_261A878F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_261A676B8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB120, &qword_261A8D2E0);
  v10 = *(sub_261A85394() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_261A85394() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_261A67890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB048, "@|");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A6799C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC08, "xC");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_261A67C34()
{
  config_count = kpc_get_config_count();
  if (!config_count)
  {
    return;
  }

  v1 = config_count;
  if (kpc_set_counting())
  {
    v2 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v3 = swift_allocError();
    *v4 = v2;
    strcpy((v4 + 8), "set-counting");
    *(v4 + 21) = 0;
    *(v4 + 22) = -5120;
    swift_willThrow();
LABEL_10:
    if (qword_27FECAD68 != -1)
    {
      swift_once();
    }

    v10 = sub_261A853D4();
    __swift_project_value_buffer(v10, qword_27FED7CA8);
    v11 = v3;
    v12 = sub_261A853B4();
    v13 = sub_261A85744();
    MEMORY[0x2667175A0](v3);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = sub_261A85BF4();
      v18 = sub_261A3E9E8(v16, v17, &v26);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_261A33000, v12, v13, "resetting KPC failed: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x266717700](v15, -1, -1);
      MEMORY[0x266717700](v14, -1, -1);
    }

    swift_willThrow();
    return;
  }

  v5 = 0xEA0000000000646FLL;
  v6 = sub_261A856E4();
  *(v6 + 16) = v1;
  bzero((v6 + 32), 8 * v1);
  if (kpc_set_config())
  {
    v5 = 0xEA00000000006769;
    v7 = 0x666E6F632D746573;
LABEL_8:
    v8 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v3 = swift_allocError();
    *v9 = v8;
    *(v9 + 8) = v7;
    *(v9 + 16) = v5;
LABEL_9:
    swift_willThrow();

    goto LABEL_10;
  }

  if (kpc_set_period())
  {
    v7 = 0x697265702D746573;
    goto LABEL_8;
  }

  v19 = sub_261A856E4();
  *(v19 + 16) = v1;
  bzero((v19 + 32), 4 * v1);
  if (kpc_set_actionid())
  {
    v20 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v3 = swift_allocError();
    *v21 = v20;
    strcpy((v21 + 8), "set-actionid");
    *(v21 + 21) = 0;
    *(v21 + 22) = -5120;
    goto LABEL_9;
  }

  if (qword_27FECAD68 != -1)
  {
    swift_once();
  }

  v22 = sub_261A853D4();
  __swift_project_value_buffer(v22, qword_27FED7CA8);
  v23 = sub_261A853B4();
  v24 = sub_261A85754();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_261A33000, v23, v24, "reset KPC", v25, 2u);
    MEMORY[0x266717700](v25, -1, -1);
  }
}

unint64_t sub_261A6802C()
{
  result = qword_27FECBBE8;
  if (!qword_27FECBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBE8);
  }

  return result;
}

unint64_t sub_261A68084()
{
  result = qword_27FECBBF0;
  if (!qword_27FECBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBF0);
  }

  return result;
}

unint64_t sub_261A680DC()
{
  result = qword_27FECBBF8;
  if (!qword_27FECBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBBF8);
  }

  return result;
}

unint64_t sub_261A68134()
{
  result = qword_27FECBC00;
  if (!qword_27FECBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBC00);
  }

  return result;
}

void Silicon.init()(uint64_t a1@<X8>)
{
  v3 = MobileGestalt_get_current_device();
  if (!v3 || (v4 = MobileGestalt_copy_hardwarePlatform_obj()) == 0)
  {
    sub_261A6842C();
    swift_allocError();
    *v16 = 0xD000000000000010;
    *(v16 + 8) = 0x8000000261A8E890;
    *(v16 + 16) = 0;
    *(v16 + 20) = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_261A854C4();
  v8 = v7;

  v9 = MobileGestalt_copy_marketingSOCNameString_obj();
  if (!v9)
  {
    v9 = MobileGestalt_copy_physicalHardwareNameString_obj();
    if (!v9)
    {
      sub_261A6842C();
      swift_allocError();
      *v17 = 0xD000000000000030;
      *(v17 + 8) = 0x8000000261A8E8B0;
      *(v17 + 16) = 0;
      *(v17 + 20) = 0;
      swift_willThrow();
      goto LABEL_8;
    }
  }

  v10 = v9;
  v11 = sub_261A854C4();
  v13 = v12;

  v14 = sub_261A68BE4();
  if (v1)
  {

LABEL_8:

LABEL_10:

    return;
  }

  v15 = v14;
  v25 = sub_261A68BE4();
  v24 = sub_261A68BE4();
  counter_count = kpc_get_counter_count();
  v19 = kpc_get_counter_count();
  v23 = counter_count + v19;
  if (__CFADD__(counter_count, v19))
  {
    __break(1u);
  }

  else
  {
    v21 = counter_count;
    v22 = v19;
    v20 = sub_261A699DC(MEMORY[0x277D84F90]);

    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 16) = v6;
    *(a1 + 24) = v8;
    *(a1 + 32) = v15;
    *(a1 + 36) = v25;
    *(a1 + 40) = v24;
    *(a1 + 48) = v23;
    *(a1 + 56) = v21;
    *(a1 + 64) = v22;
    *(a1 + 72) = v20;
  }
}

unint64_t sub_261A6842C()
{
  result = qword_27FECBCC0;
  if (!qword_27FECBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBCC0);
  }

  return result;
}

uint64_t sub_261A68480()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *(v0 + 8);
  v3 = *(v0 + 9);
  v5 = *(v0 + 10);
  v11 = *v0;
  v12 = v0[1];

  MEMORY[0x2667168A0](10272, 0xE200000000000000);
  MEMORY[0x2667168A0](v1, v2);
  MEMORY[0x2667168A0](0x20555043202CLL, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB030, &qword_261A88860);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84CC0];
  *(v6 + 16) = xmmword_261A886D0;
  v8 = MEMORY[0x277D84D30];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v3;
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  *(v6 + 112) = v5;
  v9 = sub_261A854D4();
  MEMORY[0x2667168A0](v9);

  MEMORY[0x2667168A0](41, 0xE100000000000000);
  return v11;
}

uint64_t Silicon.marketingName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Silicon.platform.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_261A68600()
{
  v1 = 0x65707974627573;
  if (*v0 != 1)
  {
    v1 = 0x796C696D6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_261A68650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A6A0AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A68678(uint64_t a1)
{
  v2 = sub_261A69AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A686B4(uint64_t a1)
{
  v2 = sub_261A69AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Silicon.CPUTriplet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCC8, &qword_261A8BFD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A69AE0();
  sub_261A85CD4();
  v15 = 0;
  sub_261A85B64();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_261A85B64();
  v13 = 2;
  sub_261A85B64();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Silicon.CPUTriplet.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCD8, &qword_261A8BFD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A69AE0();
  sub_261A85CB4();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_261A85AA4();
    v18 = 1;
    v16 = sub_261A85AA4();
    v17 = 2;
    v13 = sub_261A85AA4();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

char *sub_261A68AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) == 0)
  {
    sub_261A858C4();

    v8 = 0xD00000000000001DLL;
    MEMORY[0x2667168A0](a1, a2);
    return v8;
  }

  v5 = a3;
  sub_261A858C4();

  v8 = 0xD000000000000010;
  MEMORY[0x2667168A0](a1, a2);
  MEMORY[0x2667168A0](0x3A64656C69616620, 0xE900000000000020);
  result = strerror(v5);
  if (result)
  {
    v7 = sub_261A855A4();
    MEMORY[0x2667168A0](v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_261A68BE4()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 4;
  v7 = 0;
  MEMORY[0x2667168A0]();
  v0 = sub_261A85524();
  v1 = sysctlbyname((v0 + 32), &v7, v8, 0, 0);

  if (v1 < 0)
  {
    v4 = MEMORY[0x2667166F0](v2);
    sub_261A6842C();
    swift_allocError();
    *v5 = 0x206C7463737973;
    *(v5 + 8) = 0xE700000000000000;
    *(v5 + 16) = v4;
    *(v5 + 20) = 1;
    result = swift_willThrow();
  }

  else
  {

    result = v7;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Silicon.init(platform:marketingName:cpuType:cpuSubtype:cpuFamily:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, _OWORD *a8@<X8>)
{
  v71 = a4;
  v49 = a3;
  v50 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - v15;
  v17 = sub_261A85394();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __PAIR64__(a6, a5);
  v60 = __PAIR64__(a6, a5);
  v52 = a7;
  LODWORD(v61) = a7;
  sub_261A4AF88(&v60, 0, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_261A4E124(v16);

    a8[3] = 0u;
    a8[4] = 0u;
    a8[1] = 0u;
    a8[2] = 0u;
    *a8 = 0u;
  }

  else
  {
    v47 = a8;
    v48 = a2;
    (*(v18 + 32))(v21, v16, v17);
    v23 = v53;
    v24 = sub_261A853A4();
    if (v23)
    {
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      v26 = v24;
      v27 = v25;
      sub_261A4777C(v24, v25);
      v28 = sub_261A4CBB8(v26, v27);
      v30 = v29;

      v31 = vcnt_s8(v28);
      v31.i16[0] = vaddlv_u8(v31);
      v32 = v31.u32[0];
      v33 = vcnt_s8(v30);
      v33.i16[0] = vaddlv_u8(v33);
      v34 = v33.u32[0];
      v53 = v32 + v33.u32[0];
      sub_261A47728(v26, v27);
      (*(v18 + 8))(v21, v17);
      v35 = sub_261A699DC(MEMORY[0x277D84F90]);
      v36 = v49;
      v37 = v71;
      *&v55 = v49;
      *(&v55 + 1) = v71;
      v38 = v50;
      v39 = v48;
      *&v56 = v50;
      *(&v56 + 1) = v48;
      v40 = v51;
      v41 = HIDWORD(v51);
      *&v57 = v51;
      v42 = v52;
      DWORD2(v57) = v52;
      v43 = v53;
      *&v58 = v53;
      *(&v58 + 1) = v34;
      *&v59 = v32;
      *(&v59 + 1) = v35;
      v44 = v58;
      v45 = v47;
      v47[2] = v57;
      v45[3] = v44;
      v45[4] = v59;
      v46 = v56;
      *v45 = v55;
      v45[1] = v46;
      v60 = v36;
      v61 = v37;
      v62 = v38;
      v63 = v39;
      v64 = v40;
      v65 = v41;
      v66 = v42;
      v67 = v43;
      v68 = v34;
      v69 = v32;
      v70 = v35;
      sub_261A39B98(&v55, v54);
      return sub_261A39BF4(&v60);
    }
  }

  return result;
}

uint64_t sub_261A690BC()
{
  v1 = *v0;
  v2 = 0x6E6974656B72616DLL;
  v3 = 0x6C70697254757063;
  v4 = 1970106467;
  if (v1 != 3)
  {
    v4 = 0x746E6174736E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D726F6674616C70;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_261A69164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A6A1C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A6918C(uint64_t a1)
{
  v2 = sub_261A69B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A691C8(uint64_t a1)
{
  v2 = sub_261A69B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Silicon.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCE0, &qword_261A8BFE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v26 = v1[3];
  v27 = v10;
  v11 = v1[4];
  v25 = *(v1 + 10);
  v12 = v1[6];
  v23 = v1[7];
  v24 = v12;
  v13 = v1[8];
  v21 = v1[9];
  v22 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A69B34();
  sub_261A85CD4();
  LOBYTE(v29) = 0;
  v15 = v28;
  sub_261A85B14();
  if (!v15)
  {
    v16 = v25;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    LOBYTE(v29) = 1;
    sub_261A85B14();
    v29 = v11;
    LODWORD(v30) = v16;
    v32 = 2;
    sub_261A69B88();
    sub_261A85B54();
    v29 = v19;
    v30 = v18;
    v31 = v17;
    v32 = 3;
    sub_261A5BE50();
    sub_261A85B54();
    v29 = v21;
    v32 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9E0, &unk_261A8BFF0);
    sub_261A5FF00();
    sub_261A85B54();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Silicon.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCF8, &qword_261A8C000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A69B34();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37) = 0;
  v11 = sub_261A85A54();
  v13 = v12;
  v31 = v11;
  LOBYTE(v37) = 1;
  *&v30 = sub_261A85A54();
  *(&v30 + 1) = v14;
  LOBYTE(v32) = 2;
  sub_261A69BDC();
  sub_261A85A94();
  v27 = HIDWORD(v37);
  v28 = v37;
  v29 = v38;
  LOBYTE(v32) = 3;
  sub_261A5C014();
  sub_261A85A94();
  v26 = v37;
  v25 = v38;
  v24 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9E0, &unk_261A8BFF0);
  v47 = 4;
  sub_261A60114();
  sub_261A85A94();
  (*(v6 + 8))(v9, v5);
  v23 = v48;
  v15 = v31;
  *&v32 = v31;
  *(&v32 + 1) = v13;
  v16 = v30;
  v33 = v30;
  v17 = v28;
  v18 = v27;
  *&v34 = __PAIR64__(v27, v28);
  DWORD2(v34) = v29;
  *&v35 = v26;
  *(&v35 + 1) = v25;
  *&v36 = v24;
  *(&v36 + 1) = v48;
  v19 = v35;
  a2[2] = v34;
  a2[3] = v19;
  v20 = v33;
  *a2 = v32;
  a2[1] = v20;
  a2[4] = v36;
  sub_261A39B98(&v32, &v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37 = v15;
  v38 = v13;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v29;
  v43 = v26;
  v44 = v25;
  v45 = v24;
  v46 = v23;
  return sub_261A39BF4(&v37);
}

unint64_t sub_261A698B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD38, &unk_261A8C440);
    v3 = sub_261A859C4();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_261A5BD84(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_261A699DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD40, &unk_261A8C450);
    v3 = sub_261A859C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_261A5BD84(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_261A69AE0()
{
  result = qword_27FECBCD0;
  if (!qword_27FECBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBCD0);
  }

  return result;
}

unint64_t sub_261A69B34()
{
  result = qword_27FECBCE8;
  if (!qword_27FECBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBCE8);
  }

  return result;
}

unint64_t sub_261A69B88()
{
  result = qword_27FECBCF0;
  if (!qword_27FECBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBCF0);
  }

  return result;
}

unint64_t sub_261A69BDC()
{
  result = qword_27FECBD00;
  if (!qword_27FECBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD00);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Silicon.CPUTriplet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Silicon.CPUTriplet(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_261A69CF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A69D38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

unint64_t sub_261A69DA4()
{
  result = qword_27FECBD08;
  if (!qword_27FECBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD08);
  }

  return result;
}

unint64_t sub_261A69DFC()
{
  result = qword_27FECBD10;
  if (!qword_27FECBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD10);
  }

  return result;
}

unint64_t sub_261A69E54()
{
  result = qword_27FECBD18;
  if (!qword_27FECBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD18);
  }

  return result;
}

unint64_t sub_261A69EAC()
{
  result = qword_27FECBD20;
  if (!qword_27FECBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD20);
  }

  return result;
}

unint64_t sub_261A69F04()
{
  result = qword_27FECBD28;
  if (!qword_27FECBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD28);
  }

  return result;
}

unint64_t sub_261A69F5C()
{
  result = qword_27FECBD30;
  if (!qword_27FECBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD30);
  }

  return result;
}

unint64_t sub_261A69FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD48, &qword_261A8C890);
    v3 = sub_261A859C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_261A5BD84(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_261A6A0AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_261A6A1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6974656B72616DLL && a2 == 0xED0000656D614E67;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C70697254757063 && a2 == 0xEA00000000007465 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1970106467 && a2 == 0xE400000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_261A6A388(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 2);
  if (!v4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 0uLL;
    goto LABEL_6;
  }

  v5 = *v1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *(v3 + 2);
    if (v6)
    {
LABEL_4:
      v7 = v6 - 1;
      v8 = &v3[48 * v6];
      v4 = *(v8 - 2);
      v9 = *(v8 - 8);
      v10 = *(v8 + 1);
      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      *(v3 + 2) = v7;
      *v1 = v3;
LABEL_6:
      *a1 = v4;
      *(a1 + 8) = v9;
      *(a1 + 24) = v10;
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      return;
    }
  }

  else
  {
    v3 = sub_261A67BF8(v3);
    v6 = *(v3 + 2);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_261A6A430(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_261A856E4();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2 & 1, a2);
    return v4;
  }

  return result;
}

uint64_t CountingModeError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (!*(v0 + 32))
  {
    sub_261A858C4();

    v9 = v2;
    v6 = 0xD000000000000020;
    v7 = 0x8000000261A8E990;
LABEL_6:
    MEMORY[0x2667168A0](v6, v7);
    MEMORY[0x2667168A0](v3, v4);
    return v9;
  }

  if (*(v0 + 32) != 1)
  {
    sub_261A858C4();

    v9 = v2;
    v7 = 0x8000000261A8E950;
    v6 = 0xD000000000000019;
    goto LABEL_6;
  }

  sub_261A858C4();

  v9 = v2;
  MEMORY[0x2667168A0](0xD000000000000019, 0x8000000261A8E970);
  swift_getErrorValue();
  v5 = sub_261A85BF4();
  MEMORY[0x2667168A0](v5);

  return v9;
}

uint64_t CountingMode.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CountingMode.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CountingMode.displayName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CountingMode.synopsis.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t CountingMode.documentation.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t CountingMode.settings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  *a1 = *(v1 + 112);
  *(a1 + 8) = *(v1 + 120);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
}

uint64_t sub_261A6A790(uint64_t a1, uint64_t a2)
{
  v468 = a2;
  v451 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD90, &unk_261A8C880);
  v445 = *(v4 - 8);
  v446 = v4;
  v5 = *(v445 + 64);
  MEMORY[0x28223BE20](v4);
  v444 = &v441 - v6;
  v8 = *a1;
  v7 = *(a1 + 8);
  v2[2] = *a1;
  v2[3] = v7;
  v447 = v8;
  v448 = v7;
  v2[4] = v8;
  v2[5] = v7;
  v9 = *(a1 + 16);
  v510 = *(a1 + 32);
  v10 = v510;
  v511[0] = v9;
  *(v2 + 3) = v9;
  *(v2 + 4) = v10;
  v509 = *(a1 + 48);
  *(v2 + 5) = v509;
  v458 = a1;
  v11 = *(a1 + 64);
  v12 = *(v11 + 16);
  v464 = v2;
  v465 = v11;
  if (v12)
  {
    v13 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_261A3DF5C(v511, v492);
    sub_261A3DF5C(&v510, v492);
    sub_261A702E0(&v509, v492, &qword_27FECB010, &unk_261A8D2B0);
    *v492 = v13;
    sub_261A3EFB0(0, v12, 0);
    v14 = *v492;
    v15 = (v11 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      *v492 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_261A3EFB0((v18 > 1), v19 + 1, 1);
        v14 = *v492;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 11;
      --v12;
    }

    while (v12);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_261A3DF5C(v511, v492);
    sub_261A3DF5C(&v510, v492);
    sub_261A702E0(&v509, v492, &qword_27FECB010, &unk_261A8D2B0);
    v14 = MEMORY[0x277D84F90];
  }

  v466 = v14;
  v498 = MEMORY[0x277D84FA0];
  v21 = *(*(v468 + 104) + 16);

  if (!v21)
  {
    v472 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v23 = 0;
  v24 = v22 + 40;
  v473 = v21;
  v470 = (v21 - 1);
  v471 = v22 + 40;
  v472 = MEMORY[0x277D84F90];
  v475 = v22;
  do
  {
    v25 = (v24 + 48 * v23);
    while (1)
    {
      if (v23 >= *(v22 + 16))
      {
        __break(1u);
LABEL_287:
        __break(1u);
        goto LABEL_288;
      }

      v476 = &v441;
      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = v25[1];
      v29 = v25[2];
      v30 = v25[4];
      v474 = v25[3];
      v31 = v23 + 1;
      *v492 = v26;
      *&v492[8] = v27;
      MEMORY[0x28223BE20](v22);
      *(&v441 - 2) = v492;

      v32 = v467;
      v33 = sub_261A779E4(sub_261A38AEC, (&v441 - 4), v466);
      v467 = v32;
      if (v33)
      {
        break;
      }

      v25 += 6;
      ++v23;
      v22 = v475;
      if (v473 == v31)
      {
        goto LABEL_22;
      }
    }

    v476 = v23;
    v34 = v474;
    v35 = v472;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v477 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_261A3F4A0(0, v35[2].isa + 1, 1);
      v35 = v477;
    }

    v37 = v34;
    v38 = v26;
    isa = v35[2].isa;
    v39 = v35[3].isa;
    v41 = (isa + 1);
    if (isa >= v39 >> 1)
    {
      v472 = (isa + 1);
      v469 = isa;
      sub_261A3F4A0((v39 > 1), isa + 1, 1);
      v41 = v472;
      isa = v469;
      v38 = v26;
      v37 = v34;
      v35 = v477;
    }

    v35[2].isa = v41;
    v472 = v35;
    v42 = &v35[6 * isa];
    v42[4].isa = v38;
    v42[5].isa = v27;
    v42[6].isa = v28;
    v42[7].isa = v29;
    v42[8].isa = v37;
    v42[9].isa = v30;
    v22 = v475;
    v24 = v471;
    v23 = v31;
  }

  while (v470 != v476);
LABEL_22:

  v43 = v472;
  v497 = v472;
  v496 = v472;

  sub_261A6A388(&v499);
  v44 = v499;
  v45 = v500;
  v46 = v501;
  v47 = v502;
  v504 = v503;
  if (v500)
  {
LABEL_26:
    v505 = v504;
    v512 = v47;

    v51 = sub_261A6E998(v466, v47);
    v508[0] = v44;
    v508[1] = v45;
    sub_261A7023C(v508);
    v506 = v46;
    sub_261A5E854(&v506, &qword_27FECBDB8, &qword_261A8C8E0);
    sub_261A5E854(&v512, &qword_27FECBDC0, &qword_261A8C8E8);
    v507 = v505;
    sub_261A7023C(&v507);
    if (*(v498 + 16) <= *(v51 + 16) >> 3)
    {
      *v492 = v51;
      sub_261A6EE44(v498);
      v52 = *v492;
    }

    else
    {
      v52 = sub_261A6E428(v498, v51);
    }

    v53 = *(*(v468 + 104) + 16);

    v473 = v53;
    if (!v53)
    {
      v57 = MEMORY[0x277D84F90];
      goto LABEL_52;
    }

    v55 = 0;
    v470 = (v54 + 32);
    v56 = v52 + 56;
    v57 = MEMORY[0x277D84F90];
    v469 = v54;
    while (1)
    {
      v58 = v55;
      v472 = v57;
      while (1)
      {
        if (v58 >= *(v54 + 16))
        {
          __break(1u);
          goto LABEL_82;
        }

        v55 = v58 + 1;
        if (*(v52 + 16))
        {
          break;
        }

LABEL_33:
        v58 = v55;
        if (v55 == v473)
        {
          goto LABEL_52;
        }
      }

      v59 = &v470[48 * v58];
      v61 = *v59;
      v60 = *(v59 + 1);
      v62 = *(v59 + 2);
      v63 = *(v59 + 3);
      v43 = *(v59 + 5);
      v471 = *(v59 + 4);
      v64 = *(v52 + 40);
      sub_261A85C44();

      v476 = v62;

      v475 = v63;

      v474 = v43;

      sub_261A85554();
      v65 = sub_261A85C84();
      v66 = -1 << *(v52 + 32);
      v67 = v65 & ~v66;
      if (((*(v56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
      {
        break;
      }

      v68 = ~v66;
      while (1)
      {
        v69 = (*(v52 + 48) + 16 * v67);
        v70 = *v69 == v61 && v69[1] == v60;
        if (v70 || (sub_261A85BA4() & 1) != 0)
        {
          break;
        }

        v67 = (v67 + 1) & v68;
        if (((*(v56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v57 = v472;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      *&v477 = v57;
      if ((v71 & 1) == 0)
      {
        sub_261A3F4A0(0, v57[2].isa + 1, 1);
        v57 = v477;
      }

      v43 = v57[2].isa;
      v72 = v57[3].isa;
      if (v43 >= v72 >> 1)
      {
        sub_261A3F4A0((v72 > 1), v43 + 1, 1);
        v57 = v477;
      }

      v57[2].isa = (v43 + 1);
      v73 = &v57[6 * v43];
      v73[4].isa = v61;
      v73[5].isa = v60;
      v74 = v475;
      v73[6].isa = v476;
      v73[7].isa = v74;
      v75 = v474;
      v73[8].isa = v471;
      v73[9].isa = v75;
      v54 = v469;
      if (v55 == v473)
      {
LABEL_52:
        v472 = v57;

        v76 = v57[2].isa;
        if (v76)
        {
          *v492 = MEMORY[0x277D84F90];
          sub_261A3EFB0(0, v76, 0);
          v48 = *v492;
          v77 = v472 + 5;
          do
          {
            v43 = v77[-1].isa;
            v78 = v77->isa;
            *v492 = v48;
            v80 = *(v48 + 16);
            v79 = *(v48 + 24);

            if (v80 >= v79 >> 1)
            {
              sub_261A3EFB0((v79 > 1), v80 + 1, 1);
              v48 = *v492;
            }

            *(v48 + 16) = v80 + 1;
            v81 = v48 + 16 * v80;
            *(v81 + 32) = v43;
            *(v81 + 40) = v78;
            v77 += 6;
            --v76;
          }

          while (v76);
        }

        else
        {
          v48 = MEMORY[0x277D84F90];
        }

        sub_261A84448(v48);

        v49 = v472;

        sub_261A7F648(v50);
        sub_261A7F648(v49);
        sub_261A6A388(&v499);
        v44 = v499;
        v45 = v500;
        v46 = v501;
        v47 = v502;
        v504 = v503;
        if (!v500)
        {
          v43 = v497;
          goto LABEL_59;
        }

        goto LABEL_26;
      }
    }

LABEL_32:

    v57 = v472;
    v54 = v469;
    goto LABEL_33;
  }

LABEL_59:
  v82 = v468;
  v83 = *(v468 + 112);

  v85 = sub_261A77B20(v84);
  v86 = *(v82 + 128);

  v88 = sub_261A6D428(v87, v85);
  v89 = MEMORY[0x277D84F90];
  *v492 = MEMORY[0x277D84F90];
  v90 = *(v43 + 16);
  v453 = v88;
  if (v90)
  {
    v91 = 0;
    v92 = (v43 + 56);
    do
    {
      if (v91 >= *(v43 + 16))
      {
        goto LABEL_287;
      }

      v91 = (v91 + 1);
      v93 = v92->isa;
      v92 += 6;

      sub_261A7F848(v94);
    }

    while (v90 != v91);
    v89 = *v492;
    v95 = v453;
  }

  else
  {
    v95 = v88;
  }

  v96 = sub_261A7BF08(v89);

  v97 = *(v95 + 16);
  v98 = *(v96 + 16);
  v449 = v96;
  if (v97 <= v98 >> 3)
  {
    *v492 = v96;

    sub_261A6EE44(v95);
    v99 = *v492;
  }

  else
  {

    v99 = sub_261A6E428(v95, v96);
  }

  v100 = *(v458 + 88);
  v101 = *(v100 + 16);
  v472 = v43;
  v460 = v100;
  v450 = v99;
  if (v101)
  {
    *&v477 = MEMORY[0x277D84F90];
    sub_261A3F460(0, v101, 0);
    v102 = 0;
    v103 = v477;
    v104 = (v100 + 40);
    v475 = v101;
    while (1)
    {
      if (v102 >= *(v100 + 16))
      {
        goto LABEL_331;
      }

      v476 = v103;
      v105 = *(v104 - 1);
      v106 = *v104;
      v107 = *(v468 + 112);
      if (!*(v107 + 16))
      {
        break;
      }

      v108 = *v104;

      v109 = sub_261A5BD84(v105, v106);
      if ((v110 & 1) == 0)
      {
        goto LABEL_84;
      }

      v111 = *(v468 + 120);
      if (!*(v111 + 16))
      {
        goto LABEL_87;
      }

      v112 = (*(v107 + 56) + 16 * v109);
      v113 = *v112;
      v114 = v112[1];

      v115 = sub_261A5BD84(v105, v106);
      if ((v116 & 1) == 0)
      {

LABEL_87:

        *v492 = 0;
        *&v492[8] = 0xE000000000000000;
        v124 = v448;

        sub_261A858C4();

        *v492 = 0xD000000000000015;
        *&v492[8] = 0x8000000261A8EA90;
        MEMORY[0x2667168A0](v105, v106);
        MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8EA70);
        v125 = *v492;
        v126 = *&v492[8];
LABEL_88:
        sub_261A6FF78();
        v127 = swift_allocError();
        *v128 = v447;
        *(v128 + 8) = v124;
        *(v128 + 16) = v125;
        *(v128 + 24) = v126;
        *(v128 + 32) = 0;
        v475 = v127;
        swift_willThrow();

        sub_261A3DF08(v458);

        v136 = 0;
        v137 = 0;
        v138 = 0;
        goto LABEL_92;
      }

      v117 = *(*(v111 + 56) + 8 * v115);

      v103 = v476;
      *&v477 = v476;
      v119 = *(v476 + 16);
      v118 = *(v476 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_261A3F460((v118 > 1), v119 + 1, 1);
        v103 = v477;
      }

      ++v102;
      *(v103 + 16) = v119 + 1;
      v120 = (v103 + 24 * v119);
      v120[4] = v113;
      v120[5] = v114;
      v120[6] = v117;
      v104 += 2;
      v43 = v472;
      v100 = v460;
      if (v475 == v102)
      {
        goto LABEL_89;
      }
    }

    v123 = *v104;

LABEL_84:

    *v492 = 0;
    *&v492[8] = 0xE000000000000000;
    v124 = v448;

    sub_261A858C4();

    *v492 = 0xD000000000000019;
    *&v492[8] = 0x8000000261A8EA50;
    MEMORY[0x2667168A0](v105, v106);
    MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8EA70);
    v125 = *v492;
    v126 = *&v492[8];
    goto LABEL_88;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_89:
    v122 = v467;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD48, &qword_261A8C890);
    v121 = sub_261A859C4();
  }

  else
  {
LABEL_82:
    v121 = MEMORY[0x277D84F98];
    v122 = v467;
  }

  *v492 = v121;

  sub_261A6E0AC(v129, 1, v492);
  if (v122)
  {
    goto LABEL_365;
  }

  v130 = *v492;
  v131 = v468;
  v132 = *(v468 + 80);
  v477 = *(v468 + 64);
  *&v478 = v132;

  v134 = sub_261A77A90(v133);
  v135 = *(v131 + 96);

  sub_261A59268(&v477, v134, v130, v135, v492);
  v475 = 0;
  v443 = v130;
  v157 = *&v492[24];
  v158 = v464;
  v464[14] = *v492;
  *(v158 + 15) = *&v492[8];
  v158[17] = v157;
  *(v158 + 9) = *&v492[32];
  v159 = *(v465 + 16);
  if (v159)
  {
    v160 = 0;
    v161 = (v465 + 40);
    v162 = MEMORY[0x277D84F90];
    while (v160 < *(v465 + 16))
    {
      v164 = *(v161 - 1);
      v163 = *v161;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = sub_261A66A68(0, *(v162 + 2) + 1, 1, v162);
      }

      v166 = *(v162 + 2);
      v165 = *(v162 + 3);
      v167 = v166 + 1;
      if (v166 >= v165 >> 1)
      {
        v162 = sub_261A66A68((v165 > 1), v166 + 1, 1, v162);
      }

      ++v160;
      *(v162 + 2) = v167;
      v168 = &v162[16 * v166];
      *(v168 + 4) = v164;
      *(v168 + 5) = v163;
      v161 += 11;
      if (v159 == v160)
      {
        goto LABEL_111;
      }
    }

    goto LABEL_332;
  }

  v169 = MEMORY[0x277D84F90];
  v167 = *(MEMORY[0x277D84F90] + 16);
  v162 = MEMORY[0x277D84F90];
  if (!v167)
  {
    goto LABEL_124;
  }

LABEL_111:
  v170 = 0;
  v171 = v162 + 40;
  v474 = v167 - 1;
  v169 = MEMORY[0x277D84F90];
  v476 = (v162 + 40);
  while (2)
  {
    v172 = &v171[16 * v170];
    v173 = v170;
    while (2)
    {
      if (v173 >= *(v162 + 2))
      {
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        v311 = v477;
LABEL_216:
        v312 = v464;
        v464[13] = v311;
        v313 = sub_261A6FC44(0, v312[15]);
        v314 = v312[13];
        if (v314 >> 62)
        {
          if (v314 < 0)
          {
            v434 = v312[13];
          }

          v315 = sub_261A85994();
        }

        else
        {
          v315 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v315)
        {
          v316 = 0;
          v243 = v314 & 0xC000000000000001;
          v473 = v314 & 0xFFFFFFFFFFFFFF8;
          v474 = v314 & 0xC000000000000001;
          v470 = v314;
          v471 = v315;
          do
          {
            if (v474)
            {
              v318 = MEMORY[0x266716BE0](v316, v314);
            }

            else
            {
              if (v316 >= *(v473 + 16))
              {
                goto LABEL_340;
              }

              v317 = *(v314 + 8 * v316 + 32);
            }

            v319 = v316 + 1;
            if (__OFADD__(v316, 1))
            {
              goto LABEL_339;
            }

            v320 = *(v468 + 112);
            if (!*(v320 + 16))
            {
              goto LABEL_341;
            }

            v321 = v313;
            v322 = v318;
            v323 = *(v318 + 16);
            v324 = *(v323 + 32);
            v325 = *(v323 + 40);

            v326 = sub_261A5BD84(v324, v325);
            v328 = v327;

            if ((v328 & 1) == 0)
            {
              goto LABEL_342;
            }

            v329 = (*(v320 + 56) + 16 * v326);
            v330 = v329[1];
            v331 = v464[14];
            if (!*(v331 + 16))
            {
              goto LABEL_363;
            }

            v332 = *v329;
            v333 = v329[1];

            v334 = sub_261A5BD84(v332, v330);
            if ((v335 & 1) == 0)
            {
              goto LABEL_364;
            }

            v336 = v334;

            v337 = *(*(v331 + 56) + 8 * v336);

            v313 = v321;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if ((v337 & 0x8000000000000000) != 0)
              {
                goto LABEL_235;
              }
            }

            else
            {
              v313 = sub_261A67BE4(v321);
              if ((v337 & 0x8000000000000000) != 0)
              {
LABEL_235:
                __break(1u);
                break;
              }
            }

            if (v337 >= *(v313 + 16))
            {
              goto LABEL_344;
            }

            v338 = v313 + 8 * v337;
            v339 = *(v338 + 32);
            *(v338 + 32) = v322;

            ++v316;
            v314 = v470;
          }

          while (v319 != v471);
        }

        v464[25] = v313;
        v340 = *(v458 + 72);
        v341 = *(v340 + 16);

        v466 = v341;
        if (v341)
        {
          v342 = 0;
          v465 = v340 + 32;
          v243 = v476 & 0xC000000000000001;
          v460 = v476 & 0xFFFFFFFFFFFFFF8;
          v462 = v476 & 0xC000000000000001;
          v463 = (v459 + 40);
          v470 = MEMORY[0x277D84F90];
          v453 = v340;
          v454 = v313;
          while (1)
          {
            while (1)
            {
              if (v342 >= *(v340 + 16))
              {
                goto LABEL_343;
              }

              v343 = (v465 + 40 * v342);
              v345 = *v343;
              v344 = v343[1];
              v243 = v343[3];
              v473 = v343[2];
              v474 = v243;
              ++v342;
              v346 = v459;
              LODWORD(v471) = *(v343 + 32);
              if ((v471 & 0x80000000) != 0)
              {
                break;
              }

              v358 = *(v345 + 16);

              v457 = v358;
              if (v358)
              {
                v359 = 0;
                v452 = v345 + 32;
                v469 = MEMORY[0x277D84F90];
                while (1)
                {
                  v360 = v359;
                  v243 = *(v345 + 16);
                  if (v360 >= v243)
                  {
                    goto LABEL_345;
                  }

                  v467 = v360 + 1;
                  v361 = *(v346 + 16);
                  if (v361)
                  {
                    v362 = 0;
                    v243 = 24;
                    v363 = v452 + 24 * v360;
                    v365 = *v363;
                    v364 = *(v363 + 8);
                    LODWORD(v456) = *(v363 + 16);
                    v366 = v463;
                    while (1)
                    {
                      v367 = *(v366 - 1) == v365 && *v366 == v364;
                      if (v367 || (sub_261A85BA4() & 1) != 0)
                      {
                        break;
                      }

                      ++v362;
                      v366 += 2;
                      if (v361 == v362)
                      {
                        goto LABEL_262;
                      }
                    }

                    v368 = v469;
                    if (v462)
                    {

                      v455 = MEMORY[0x266716BE0](v362, v476);
                    }

                    else
                    {
                      if (v362 >= *(v460 + 16))
                      {
                        goto LABEL_347;
                      }

                      v455 = *(v476 + 8 * v362 + 32);
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v368 = sub_261A674A8(0, *(v368 + 2) + 1, 1, v368);
                    }

                    v370 = *(v368 + 2);
                    v369 = *(v368 + 3);
                    if (v370 >= v369 >> 1)
                    {
                      v368 = sub_261A674A8((v369 > 1), v370 + 1, 1, v368);
                    }

                    *(v368 + 2) = v370 + 1;
                    v469 = v368;
                    v371 = &v368[24 * v370];
                    *(v371 + 4) = v455;
                    *(v371 + 5) = v362;
                    v371[48] = v456;
                    v359 = v467;
                    v346 = v459;
                    if (v467 == v457)
                    {
                      goto LABEL_284;
                    }
                  }

                  else
                  {
LABEL_262:
                    v359 = v467;
                    v346 = v459;
                    if (v467 == v457)
                    {
                      goto LABEL_284;
                    }
                  }
                }
              }

              v469 = MEMORY[0x277D84F90];
LABEL_284:
              sub_261A7022C();
              v351 = 0;
              v474 = 0;
              v353 = 0;
LABEL_254:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v470 = sub_261A66FD8(0, *(v470 + 2) + 1, 1, v470);
              }

              v355 = *(v470 + 2);
              v354 = *(v470 + 3);
              if (v355 >= v354 >> 1)
              {
                v470 = sub_261A66FD8((v354 > 1), v355 + 1, 1, v470);
              }

              v356 = v470;
              *(v470 + 2) = v355 + 1;
              v357 = &v356[40 * v355];
              *(v357 + 4) = v469;
              *(v357 + 5) = v344;
              v243 = v474;
              *(v357 + 6) = v351;
              *(v357 + 7) = v243;
              v357[64] = v353;
              v340 = v453;
              if (v342 == v466)
              {
                goto LABEL_289;
              }
            }

            v347 = *(v459 + 16);
            if (v347)
            {
              v348 = 0;
              v349 = v463;
              while (1)
              {
                v350 = *(v349 - 1) == v345 && v344 == *v349;
                if (v350 || (sub_261A85BA4() & 1) != 0)
                {
                  break;
                }

                ++v348;
                v349 += 2;
                if (v347 == v348)
                {
                  goto LABEL_238;
                }
              }

              if (v462)
              {
                LOBYTE(v351) = v473;
                v352 = v471;
                sub_261A7021C();
                v469 = MEMORY[0x266716BE0](v348, v476);
                sub_261A7022C();
              }

              else
              {
                LOBYTE(v351) = v473;
                if (v348 >= *(v460 + 16))
                {
                  goto LABEL_346;
                }

                v469 = *(v476 + 8 * v348 + 32);

                v352 = v471;
              }

              v351 = v351;
              v353 = v352 & 0x81;
              v344 = v348;
              goto LABEL_254;
            }

LABEL_238:
            if (v342 == v466)
            {
              goto LABEL_289;
            }
          }
        }

LABEL_288:
        v470 = MEMORY[0x277D84F90];
LABEL_289:

        v147 = v464;
        v464[20] = v470;
        v372 = v458;
        v373 = *(v458 + 48);
        *(v147 + 15) = *(v458 + 32);
        *(v147 + 16) = v373;
        v374 = v372[5];
        *(v147 + 17) = v372[4];
        *(v147 + 18) = v374;
        v375 = v372[1];
        *(v147 + 13) = *v372;
        *(v147 + 14) = v375;
        v147[38] = v468;
        v376 = qword_27FECAD60;

        if (v376 != -1)
        {
          swift_once();
        }

        v377 = sub_261A853D4();
        __swift_project_value_buffer(v377, qword_27FED7C90);

        v378 = sub_261A853B4();
        v379 = sub_261A85754();

        if (!os_log_type_enabled(v378, v379))
        {

          return v147;
        }

        LODWORD(v471) = v379;
        v472 = v378;
        v380 = swift_slowAlloc();
        v470 = swift_slowAlloc();
        *&v490[0] = v470;
        *v380 = 136446722;
        v381 = sub_261A6D52C();
        v383 = sub_261A3E9E8(v381, v382, v490);

        *(v380 + 4) = v383;
        *(v380 + 12) = 2082;
        v384 = v147[12];
        if (v384 >> 62)
        {
          if (v384 < 0)
          {
            v435 = v147[12];
          }

          v436 = v147[12];
          v437 = sub_261A85994();
          v384 = v436;
          v385 = v437;
        }

        else
        {
          v385 = *((v384 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v386 = MEMORY[0x277D84F90];
        v473 = v380;
        if (v385)
        {
          v387 = v384;
          *&v477 = MEMORY[0x277D84F90];
          sub_261A3EFB0(0, v385 & ~(v385 >> 63), 0);
          if (v385 < 0)
          {
            __break(1u);
LABEL_362:
            __break(1u);
LABEL_363:

            __break(1u);
LABEL_364:

            __break(1u);
LABEL_365:
            swift_unexpectedError();
            __break(1u);
            goto LABEL_366;
          }

          v388 = 0;
          v386 = v477;
          v389 = v387;
          v474 = v387 & 0xC000000000000001;
          v476 = v387;
          v390 = v385;
          do
          {
            if (v474)
            {
              v391 = MEMORY[0x266716BE0](v388, v389);
            }

            else
            {
              v391 = *(v389 + 8 * v388 + 32);
            }

            *v492 = 0;
            *&v492[8] = 0xE000000000000000;

            sub_261A858C4();

            strcpy(v492, "Metric named ");
            *&v492[14] = -4864;
            MEMORY[0x2667168A0](*(v391 + 48), *(v391 + 56));
            MEMORY[0x2667168A0](10272, 0xE200000000000000);
            MEMORY[0x2667168A0](*(v391 + 32), *(v391 + 40));
            if (*(v391 + 145))
            {
              v392 = 0x6E7265746E69202CLL;
            }

            else
            {
              v392 = 0;
            }

            if (*(v391 + 145))
            {
              v393 = 0xEA00000000006C61;
            }

            else
            {
              v393 = 0xE000000000000000;
            }

            MEMORY[0x2667168A0](v392, v393);

            MEMORY[0x2667168A0](41, 0xE100000000000000);

            v394 = *v492;
            v395 = *&v492[8];
            *&v477 = v386;
            v397 = *(v386 + 16);
            v396 = *(v386 + 24);
            if (v397 >= v396 >> 1)
            {
              sub_261A3EFB0((v396 > 1), v397 + 1, 1);
              v386 = v477;
            }

            ++v388;
            *(v386 + 16) = v397 + 1;
            v398 = v386 + 16 * v397;
            *(v398 + 32) = v394;
            *(v398 + 40) = v395;
            v389 = v476;
          }

          while (v390 != v388);
          v380 = v473;
        }

        *v492 = v386;
        v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
        v400 = sub_261A3BF78(&qword_27FECAF60, &qword_27FECAF58, &qword_261A87428);
        v401 = sub_261A85474();
        v403 = v402;

        v404 = sub_261A3E9E8(v401, v403, v490);

        *(v380 + 14) = v404;
        *(v380 + 22) = 2082;
        v405 = v464[13];
        if (v405 >> 62)
        {
          if (v405 < 0)
          {
            v438 = v464[13];
          }

          v439 = v464[13];
          v440 = sub_261A85994();
          v405 = v439;
          v406 = v440;
        }

        else
        {
          v406 = *((v405 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v407 = MEMORY[0x277D84F90];
        if (!v406)
        {
          goto LABEL_329;
        }

        v408 = v405;
        v467 = v400;
        v469 = v399;
        *&v483 = MEMORY[0x277D84F90];
        sub_261A3EFB0(0, v406 & ~(v406 >> 63), 0);
        v476 = v406;
        if ((v406 & 0x8000000000000000) == 0)
        {
          v409 = 0;
          v407 = v483;
          v410 = v408;
          v474 = v408 & 0xC000000000000001;
          v411 = v408;
          do
          {
            if (v474)
            {
              v412 = MEMORY[0x266716BE0](v409, v410);
            }

            else
            {
              v412 = *(v410 + 8 * v409 + 32);
            }

            strcpy(v492, "Trigger for ");
            v492[13] = 0;
            *&v492[14] = -5120;
            v413 = *(v412 + 16);
            *&v477 = 0;
            *(&v477 + 1) = 0xE000000000000000;
            sub_261A858C4();

            strcpy(&v477, "Metric named ");
            HIWORD(v477) = -4864;
            MEMORY[0x2667168A0](*(v413 + 48), *(v413 + 56));
            MEMORY[0x2667168A0](10272, 0xE200000000000000);
            MEMORY[0x2667168A0](*(v413 + 32), *(v413 + 40));
            if (*(v413 + 145))
            {
              v414 = 0x6E7265746E69202CLL;
            }

            else
            {
              v414 = 0;
            }

            if (*(v413 + 145))
            {
              v415 = 0xEA00000000006C61;
            }

            else
            {
              v415 = 0xE000000000000000;
            }

            MEMORY[0x2667168A0](v414, v415);

            MEMORY[0x2667168A0](41, 0xE100000000000000);
            MEMORY[0x2667168A0](v477, *(&v477 + 1));

            v416 = *v492;
            v417 = *&v492[8];
            *&v483 = v407;
            v419 = *(v407 + 16);
            v418 = *(v407 + 24);
            if (v419 >= v418 >> 1)
            {
              sub_261A3EFB0((v418 > 1), v419 + 1, 1);
              v407 = v483;
            }

            ++v409;
            *(v407 + 16) = v419 + 1;
            v420 = v407 + 16 * v419;
            *(v420 + 32) = v416;
            *(v420 + 40) = v417;
            v410 = v411;
          }

          while (v476 != v409);
          v380 = v473;
LABEL_329:
          *v492 = v407;
          v421 = sub_261A85474();
          v423 = v422;

          v424 = sub_261A3E9E8(v421, v423, v490);

          *(v380 + 24) = v424;
          v425 = v472;
          _os_log_impl(&dword_261A33000, v472, v471, "initialized %{public}s with metrics %{public}s, triggers %{public}s)", v380, 0x20u);
          v426 = v470;
          swift_arrayDestroy();
          MEMORY[0x266717700](v426, -1, -1);
          MEMORY[0x266717700](v380, -1, -1);

          return v464;
        }

        goto LABEL_362;
      }

      if (!*(*(v468 + 112) + 16))
      {
        goto LABEL_113;
      }

      v175 = *(v172 - 1);
      v174 = *v172;

      sub_261A5BD84(v175, v174);
      if ((v176 & 1) == 0)
      {

LABEL_113:
        ++v173;
        v172 += 2;
        if (v167 == v173)
        {
          goto LABEL_123;
        }

        continue;
      }

      break;
    }

    v177 = swift_isUniquelyReferenced_nonNull_native();
    *v492 = v169;
    if ((v177 & 1) == 0)
    {
      sub_261A3EFB0(0, *(v169 + 16) + 1, 1);
      v169 = *v492;
    }

    v179 = *(v169 + 16);
    v178 = *(v169 + 24);
    v180 = v179 + 1;
    if (v179 >= v178 >> 1)
    {
      sub_261A3EFB0((v178 > 1), v179 + 1, 1);
      v180 = v179 + 1;
      v169 = *v492;
    }

    v170 = v173 + 1;
    *(v169 + 16) = v180;
    v181 = v169 + 16 * v179;
    *(v181 + 32) = v175;
    *(v181 + 40) = v174;
    v171 = v476;
    if (v474 != v173)
    {
      continue;
    }

    break;
  }

LABEL_123:
  v43 = v472;
LABEL_124:

  *v492 = v169;

  v182 = v475;
  sub_261A7B22C(v492);
  v476 = v182;
  if (v182)
  {
LABEL_366:
    MEMORY[0x2667175A0](v476);

    __break(1u);
    return result;
  }

  v183 = *v492;
  v184 = v464;
  v464[21] = v43;
  v184[23] = *(v468 + 128);
  v185 = *(v458 + 80);
  v186 = MEMORY[0x277D84F90];
  *&v477 = MEMORY[0x277D84F90];
  v187 = *(v185 + 16);
  swift_bridgeObjectRetain_n();

  v459 = v183;
  v457 = v187;
  if (!v187)
  {
    v189 = v186;
    goto LABEL_152;
  }

  v188 = 0;
  v456 = v185 + 32;
  v454 = (v183 + 40);
  v189 = MEMORY[0x277D84F90];
  v455 = v185;
  while (2)
  {
    v452 = v189;
    while (2)
    {
      if (v188 >= *(v185 + 16))
      {
        goto LABEL_333;
      }

      v473 = v188;
      v190 = (v456 + 80 * v188);
      v191 = v190[1];
      v475 = *v190;
      v192 = v190[2];
      v193 = v190[3];
      v194 = v190[4];
      v462 = v190[5];
      v463 = v192;
      v195 = v190[6];
      v461 = v190[7];
      v196 = v190[8];
      v197 = v190[9];
      v198 = *(v197 + 16);

      v470 = v193;

      v471 = v194;

      v469 = v195;

      v467 = v196;

      v474 = v198;
      if (!v198)
      {
        v202 = 0;
        goto LABEL_137;
      }

      v200 = 0;
      v201 = (v197 + 40);
      while (2)
      {
        if (v200 >= *(v197 + 16))
        {
          __break(1u);
LABEL_215:

          v311 = MEMORY[0x277D84F90];
          goto LABEL_216;
        }

        v202 = *(v201 - 1);
        v198 = *v201;
        v203 = *(v468 + 136);
        *v492 = v202;
        *&v492[8] = v198;
        MEMORY[0x28223BE20](v199);
        *(&v441 - 2) = v492;

        v204 = v203;
        v205 = v476;
        v206 = sub_261A779E4(sub_261A391E0, (&v441 - 4), v204);
        v476 = v205;
        if (v206)
        {
          goto LABEL_135;
        }

        ++v200;
        v201 += 2;
        if (v474 != v200)
        {
          continue;
        }

        break;
      }

      v202 = 0;
      v198 = 0;
LABEL_135:
      v43 = v472;
      v183 = v459;
LABEL_137:
      ++v473;
      v207 = *(v183 + 16) + 1;
      v208 = v454;
LABEL_138:
      if (!--v207)
      {

        v188 = v473;
        v185 = v455;
        if (v473 == v457)
        {
          v189 = v452;
          goto LABEL_152;
        }

        continue;
      }

      break;
    }

    if (*(v208 - 1) != v475 || *v208 != v191)
    {
      v208 += 2;
      if ((sub_261A85BA4() & 1) == 0)
      {
        goto LABEL_138;
      }
    }

    type metadata accessor for CountingMode.Threshold();
    v210 = swift_allocObject();
    v211 = v470;
    v210[2] = v463;
    v210[3] = v211;
    v212 = v469;
    v210[4] = v462;
    v210[5] = v212;
    v213 = v467;
    v210[6] = v461;
    v210[7] = v213;
    v210[8] = v202;
    v210[9] = v198;
    v210[10] = v202;
    v210[11] = v198;
    v214 = v475;
    v210[12] = 0;
    v210[13] = v214;
    v215 = v471;
    v210[14] = v191;
    v210[15] = v215;

    MEMORY[0x2667169A0](v216);
    if (*((v477 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v477 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v217 = *((v477 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_261A856D4();
    }

    sub_261A856F4();
    v189 = v477;
    v188 = v473;
    v185 = v455;
    if (v473 != v457)
    {
      continue;
    }

    break;
  }

LABEL_152:
  v218 = v464;
  v464[22] = v189;
  v219 = *(v468 + 80);
  v452 = v189;

  v220 = sub_261A6FB90(0, 0, 0, v219);
  v221 = v218[18];
  v222 = *(v221 + 16);
  v223 = MEMORY[0x277D84F90];
  v442 = v220;
  if (v222)
  {
    *v492 = MEMORY[0x277D84F90];

    sub_261A3F440(0, v222, 0);
    v223 = *v492;
    v474 = v221;
    v224 = (v221 + 64);
    do
    {
      v225 = *(v224 - 3);
      if (v225)
      {
        v226 = *(v224 - 4);
      }

      else
      {
        v226 = 0;
      }

      if (v225)
      {
        v227 = *v224 & 1;
      }

      else
      {
        v227 = 0;
      }

      LODWORD(v475) = v227;
      *v492 = v223;
      v229 = v223[2];
      v228 = v223[3];

      if (v229 >= v228 >> 1)
      {
        sub_261A3F440((v228 > 1), v229 + 1, 1);
        v223 = *v492;
      }

      v224 += 40;
      v223[2] = v229 + 1;
      v230 = &v223[3 * v229];
      v230[4] = v226;
      v230[5] = v225;
      *(v230 + 48) = v475;
      --v222;
    }

    while (v222);

    v43 = v472;
    v231 = v442;
  }

  else
  {
    v231 = v220;
  }

  *v492 = v231;

  sub_261A7F740(v223);
  v232 = *v492;
  v233 = *(v468 + 128);
  type metadata accessor for Evaluator();
  swift_allocObject();
  v234 = v452;

  v235 = v459;

  v236 = v476;
  v237 = sub_261A718C4(v43, v235, v233, v232, v234);
  v475 = v236;
  if (v236)
  {

    sub_261A3DF08(v458);

    v136 = 0;
    v138 = 0;
    v137 = 1;
    goto LABEL_92;
  }

  v454 = v232;
  v238 = v465;
  v464[24] = v237;
  v239 = *(v238 + 16);
  v461 = v237;

  if (!v239)
  {
    v242 = MEMORY[0x277D84F90];
    goto LABEL_183;
  }

  v240 = 0;
  v241 = v238 + 32;
  v476 = v239 - 1;
  v242 = MEMORY[0x277D84F90];
  v243 = 88;
  while (2)
  {
    v244 = (v241 + 88 * v240);
    v245 = v240;
    while (2)
    {
      if (v245 >= *(v238 + 16))
      {
        __break(1u);
        goto LABEL_336;
      }

      v246 = *v244;
      v478 = v244[1];
      v247 = v244[2];
      v248 = v244[3];
      v249 = v244[4];
      v482 = *(v244 + 80);
      v480 = v248;
      v481 = v249;
      v479 = v247;
      v477 = v246;
      v250 = *(v468 + 112);
      if (!*(v250 + 16))
      {
LABEL_170:
        ++v245;
        v244 = (v244 + 88);
        if (v239 == v245)
        {
          goto LABEL_183;
        }

        continue;
      }

      break;
    }

    v251 = v477;
    sub_261A57C8C(&v477, v492);
    v252 = sub_261A5BD84(v251, *(&v251 + 1));
    if ((v253 & 1) == 0)
    {
      sub_261A57CC4(&v477);
      v238 = v465;
      goto LABEL_170;
    }

    v254 = (*(v250 + 56) + 16 * v252);
    v256 = *v254;
    v255 = v254[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v242 = sub_261A670F4(0, v242[2] + 1, 1, v242);
    }

    v258 = v242[2];
    v257 = v242[3];
    if (v258 >= v257 >> 1)
    {
      v242 = sub_261A670F4((v257 > 1), v258 + 1, 1, v242);
    }

    v240 = v245 + 1;
    *&v492[32] = v479;
    *&v492[48] = v480;
    *&v492[64] = v481;
    v492[80] = v482;
    v259 = v477;
    *v492 = v477;
    *&v492[16] = v478;
    v242[2] = v258 + 1;
    v260 = &v242[13 * v258];
    v261 = *&v492[80];
    v263 = *&v492[48];
    v262 = *&v492[64];
    *(v260 + 4) = *&v492[32];
    *(v260 + 5) = v263;
    *(v260 + 6) = v262;
    v260[14] = v261;
    v264 = *&v492[16];
    *(v260 + 2) = v259;
    *(v260 + 3) = v264;
    v260[15] = v256;
    v260[16] = v255;
    v238 = v465;
    v243 = 88;
    if (v476 != v245)
    {
      continue;
    }

    break;
  }

LABEL_183:
  *v492 = v242;
  swift_getKeyPath();
  v265 = v444;
  sub_261A85284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD98, &unk_261A8C8C0);
  sub_261A3BF78(&qword_27FECBDA0, &qword_27FECBD98, &unk_261A8C8C0);
  sub_261A3BF78(&qword_27FECBDA8, &qword_27FECBD90, &unk_261A8C880);
  v266 = v446;
  v267 = sub_261A85664();
  (*(v445 + 8))(v265, v266);

  v268 = *(v267 + 16);
  v243 = MEMORY[0x277D84F90];
  v457 = v267;
  if (v268)
  {
    v495 = MEMORY[0x277D84F90];

    sub_261A85944();
    v455 = *(v267 + 16);
    if (v455)
    {
      v269 = 0;
      v456 = v268 - 1;
      v270 = 32;
      while (v269 < *(v267 + 16))
      {
        v271 = *(v267 + v270);
        v272 = *(v267 + v270 + 32);
        v490[1] = *(v267 + v270 + 16);
        v490[2] = v272;
        v490[0] = v271;
        v273 = *(v267 + v270 + 48);
        v274 = *(v267 + v270 + 64);
        v275 = *(v267 + v270 + 80);
        v491 = *(v267 + v270 + 96);
        v490[4] = v274;
        v490[5] = v275;
        v490[3] = v273;
        v276 = *(v267 + v270 + 80);
        v487 = *(v267 + v270 + 64);
        v488 = v276;
        v489 = *(v267 + v270 + 96);
        v277 = *(v267 + v270 + 16);
        v483 = *(v267 + v270);
        v484 = v277;
        v278 = *(v267 + v270 + 48);
        v485 = *(v267 + v270 + 32);
        v486 = v278;
        *v492 = v269;
        *&v492[56] = v278;
        *&v492[72] = v487;
        v493 = v276;
        v494 = v489;
        *&v492[8] = v483;
        *&v492[24] = v277;
        *&v492[40] = v485;
        v279 = *(v461 + 64);
        v243 = *(v279 + 16);
        if (v269 >= v243)
        {
          goto LABEL_337;
        }

        v469 = *&v492[72];
        v470 = *&v492[80];
        v280 = *&v492[64];
        v467 = *&v492[56];
        v281 = *&v492[48];
        v462 = v270;
        v463 = *&v492[40];
        v282 = *&v492[32];
        v465 = *&v492[32];
        v283 = *&v492[24];
        v284 = *&v492[16];
        v285 = *&v492[8];
        LODWORD(v476) = v493;
        v474 = v494;
        v471 = *(&v493 + 1);
        LODWORD(v473) = *(v279 + v269 + 32);
        type metadata accessor for CountingMode.Metric();
        v286 = swift_allocObject();
        *(v286 + 16) = v285;
        *(v286 + 24) = v284;
        *(v286 + 32) = v285;
        *(v286 + 40) = v284;
        *(v286 + 48) = v283;
        *(v286 + 56) = v282;
        *(v286 + 64) = v463;
        *(v286 + 72) = v281;
        *(v286 + 80) = v467;
        *(v286 + 88) = v280;
        v287 = v470;
        *(v286 + 96) = v469;
        *(v286 + 104) = v287;
        swift_bridgeObjectRetain_n();
        sub_261A702E0(v490, &v477, &qword_27FECBC28, &qword_261A8BF38);
        sub_261A702E0(v492, &v477, &qword_27FECBDB0, &unk_261A8C8D0);

        sub_261A57CC4(&v492[8]);
        *(v286 + 112) = 0;
        *(v286 + 120) = 0;
        v288 = v474;
        *(v286 + 128) = v471;
        *(v286 + 136) = v288;
        *(v286 + 144) = v476;
        *(v286 + 145) = v473;
        sub_261A5E854(v492, &qword_27FECBDB0, &unk_261A8C8D0);
        sub_261A85924();
        v289 = *(v495 + 16);
        sub_261A85954();
        sub_261A85964();
        sub_261A85934();
        if (v456 == v269)
        {
          goto LABEL_191;
        }

        ++v269;
        v270 = v462 + 104;
        v267 = v457;
        if (v455 == v269)
        {
          goto LABEL_190;
        }
      }

LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      v427 = v243;
      v428 = sub_261A85994();
      v243 = v427;
      v291 = v428;
      v290 = v476;
      if (!v291)
      {
        goto LABEL_350;
      }

      goto LABEL_195;
    }

LABEL_190:
    __break(1u);
LABEL_191:

    v290 = v495;
    v243 = MEMORY[0x277D84F90];
  }

  else
  {
    v290 = MEMORY[0x277D84F90];
  }

  v476 = v290;
  if (v290 >> 62)
  {
    goto LABEL_349;
  }

  v291 = *((v290 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v291)
  {
LABEL_350:

    v430 = *(v468 + 32);
    v429 = *(v468 + 40);
    sub_261A6FF78();
    v431 = swift_allocError();
    v432 = v448;
    *v433 = v447;
    *(v433 + 8) = v432;
    *(v433 + 16) = v430;
    *(v433 + 24) = v429;
    *(v433 + 32) = 2;
    v475 = v431;
    swift_willThrow();

    sub_261A3DF08(v458);

    v136 = 0;
    goto LABEL_351;
  }

LABEL_195:
  v464[12] = v290;
  v292 = v460;
  v293 = *(v460 + 16);
  if (!v293)
  {
    goto LABEL_215;
  }

  *&v477 = v243;
  v294 = v290;

  sub_261A85944();
  v295 = 0;
  v473 = v292 + 32;
  v296 = v294 & 0xC000000000000001;
  v297 = v294 & 0xFFFFFFFFFFFFFF8;
  v471 = v293;
LABEL_198:
  v243 = *(v292 + 16);
  if (v295 >= v243)
  {
    goto LABEL_348;
  }

  v474 = v295 + 1;
  v299 = (v473 + 16 * v295);
  v301 = *v299;
  v300 = v299[1];

  v302 = 0;
  while (v296)
  {
    v303 = MEMORY[0x266716BE0](v302, v476);
    v304 = v302 + 1;
    if (__OFADD__(v302, 1))
    {
      goto LABEL_212;
    }

LABEL_203:
    v305 = *(v303 + 32) == v301 && *(v303 + 40) == v300;
    if (v305 || (sub_261A85BA4() & 1) != 0)
    {

      type metadata accessor for CountingMode.Trigger();
      *(swift_allocObject() + 16) = v303;
      sub_261A85924();
      v298 = *(v477 + 16);
      sub_261A85954();
      sub_261A85964();
      sub_261A85934();
      v295 = v474;
      v292 = v460;
      if (v474 == v471)
      {
        goto LABEL_334;
      }

      goto LABEL_198;
    }

    ++v302;
    if (v304 == v291)
    {
      goto LABEL_213;
    }
  }

  if (v302 >= *(v297 + 16))
  {
    goto LABEL_338;
  }

  v303 = *(v476 + 8 * v302 + 32);

  v304 = v302 + 1;
  if (!__OFADD__(v302, 1))
  {
    goto LABEL_203;
  }

LABEL_212:
  __break(1u);
LABEL_213:

  *v492 = 0;
  *&v492[8] = 0xE000000000000000;
  v306 = v448;

  sub_261A858C4();

  *v492 = 0xD000000000000019;
  *&v492[8] = 0x8000000261A8EAD0;
  MEMORY[0x2667168A0](v301, v300);
  MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8EA70);
  v307 = *v492;
  v308 = *&v492[8];
  sub_261A6FF78();
  v309 = swift_allocError();
  *v310 = v447;
  *(v310 + 8) = v306;
  *(v310 + 16) = v307;
  *(v310 + 24) = v308;
  *(v310 + 32) = 0;
  v475 = v309;
  swift_willThrow();

  sub_261A3DF08(v458);

  v136 = 1;
LABEL_351:
  v137 = 1;
  v138 = 1;
LABEL_92:
  v139 = v464;
  v140 = v464[3];

  v141 = v139[5];

  v142 = v139[7];

  v143 = v139[9];

  v144 = v139[11];

  if (!v136)
  {
    if (!v137)
    {
      goto LABEL_94;
    }

LABEL_99:
    v150 = v464;
    v151 = v464[14];
    v153 = v464[18];
    v152 = v464[19];

    v154 = v150[21];

    v155 = v150[22];

    v156 = v150[23];

    v145 = v464;
    if (!v138)
    {
      goto LABEL_96;
    }

LABEL_95:
    v146 = v145[24];

    v145 = v464;
    goto LABEL_96;
  }

  v149 = v464[12];

  if (v137)
  {
    goto LABEL_99;
  }

LABEL_94:
  v145 = v464;
  if (v138)
  {
    goto LABEL_95;
  }

LABEL_96:
  v147 = v145;
  swift_deallocPartialClassInstance();
  return v147;
}

uint64_t sub_261A6D428(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_261A81300(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_261A6D52C()
{
  v1 = v0;
  sub_261A858C4();

  MEMORY[0x2667168A0](v1[6], v1[7]);
  MEMORY[0x2667168A0](10272, 0xE200000000000000);
  MEMORY[0x2667168A0](v1[4], v1[5]);
  MEMORY[0x2667168A0](0xD000000000000010, 0x8000000261A8EB10);
  v6 = *(v0 + 112);
  *&v7[8] = *(v0 + 120);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);
  v2 = sub_261A5AF3C();
  MEMORY[0x2667168A0](v2);

  MEMORY[0x2667168A0](0x20726F6620, 0xE500000000000000);
  v3 = *(v0 + 304);
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  *v7 = v3[1];
  *&v7[16] = v3[2];
  v4 = sub_261A68480();
  MEMORY[0x2667168A0](v4);

  return 0xD000000000000013;
}

void CountingMode.metricValues(cpuKind:counterValues:)(unsigned __int8 *a1)
{
  v3 = *(v1 + 192);
  v4 = *a1;
  sub_261A705A8(&v4);
  if (!v2)
  {
  }
}

void *CountingMode.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];
  v10 = v0[18];
  v9 = v0[19];

  v11 = v0[20];

  v12 = v0[21];

  v13 = v0[22];

  v14 = v0[23];

  v15 = v0[24];

  v16 = v0[25];

  v17 = v0[27];
  v18 = v0[29];
  v19 = v0[31];
  v20 = v0[33];
  v21 = v0[34];
  v22 = v0[35];
  v23 = v0[36];
  v24 = v0[37];

  v25 = v0[38];

  return v0;
}

uint64_t CountingMode.__deallocating_deinit()
{
  CountingMode.deinit();

  return MEMORY[0x2821FE8D8](v0, 312, 7);
}

uint64_t CountingMode.hash(into:)()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_261A85554();
  v3 = v0[38];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  sub_261A85554();
}

uint64_t CountingMode.hashValue.getter()
{
  sub_261A85C44();
  v1 = v0[4];
  v2 = v0[5];
  sub_261A85554();
  v3 = v0[38];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6D8E4()
{
  v1 = *v0;
  sub_261A85C44();
  v2 = v1[4];
  v3 = v1[5];
  sub_261A85554();
  v4 = v1[38];
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6D954()
{
  v1 = *v0;
  v2 = v1[4];
  v3 = v1[5];
  sub_261A85554();
  v4 = v1[38];
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  sub_261A85554();
}

uint64_t sub_261A6D9BC()
{
  v1 = *v0;
  sub_261A85C44();
  v2 = v1[4];
  v3 = v1[5];
  sub_261A85554();
  v4 = v1[38];
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6DA34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D726F6674616C70;
  }

  else
  {
    v4 = 1667592307;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6D726F6674616C70;
  }

  else
  {
    v6 = 1667592307;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();
  }

  return v9 & 1;
}

uint64_t sub_261A6DAD4()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6DB50()
{
  *v0;
  sub_261A85554();
}

uint64_t sub_261A6DBB8()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6DC30@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261A859E4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_261A6DC90(uint64_t *a1@<X8>)
{
  v2 = 1667592307;
  if (*v1)
  {
    v2 = 0x6D726F6674616C70;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261A6DCC8()
{
  if (*v0)
  {
    result = 0x6D726F6674616C70;
  }

  else
  {
    result = 1667592307;
  }

  *v0;
  return result;
}

uint64_t sub_261A6DCFC@<X0>(char *a1@<X8>)
{
  v2 = sub_261A859E4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_261A6DD60(uint64_t a1)
{
  v2 = sub_261A6F940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A6DD9C(uint64_t a1)
{
  v2 = sub_261A6F940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CountingMode.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD50, &qword_261A8C460);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A6F940();
  sub_261A85CD4();
  v10 = *(v3 + 240);
  v11 = *(v3 + 272);
  v30 = *(v3 + 256);
  v31 = v11;
  v12 = *(v3 + 272);
  v32 = *(v3 + 288);
  v13 = *(v3 + 208);
  v14 = *(v3 + 240);
  v28 = *(v3 + 224);
  v29 = v14;
  v15 = *(v3 + 208);
  v24 = v30;
  v25 = v12;
  v26 = *(v3 + 288);
  v27 = v15;
  v21 = v13;
  v22 = v28;
  v23 = v10;
  v20 = 0;
  sub_261A3DEAC(&v27, v19);
  sub_261A5073C();
  sub_261A85B54();
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[5] = v26;
  v19[0] = v21;
  v19[1] = v22;
  sub_261A3DF08(v19);
  if (!v2)
  {
    v18 = *(v3 + 304);
    v17[7] = 1;
    type metadata accessor for Platform();
    sub_261A70298(&qword_27FECBD60, 255, type metadata accessor for Platform);
    sub_261A85B54();
  }

  return (*(v33 + 8))(v8, v5);
}

uint64_t sub_261A6E05C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_261A6FCE0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_261A6E0AC(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_261A5BD84(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_261A757BC(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_261A5BD84(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_261A85BE4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v10;
  sub_261A74F44();
  v10 = v22;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x2667175A0](v19);
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v24 = (v23[6] + 16 * v10);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v10) = v8;
  v25 = v23[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_261A858C4();
    MEMORY[0x2667168A0](0xD00000000000001BLL, 0x8000000261A8EB60);
    sub_261A85974();
    MEMORY[0x2667168A0](39, 0xE100000000000000);
    result = sub_261A85984();
    __break(1u);
    return result;
  }

  v23[2] = v26;
  if (v40 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v29 = sub_261A5BD84(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_261A757BC(v33, 1);
        v34 = *a3;
        v29 = sub_261A5BD84(v7, v6);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v7;
      v37[1] = v6;
      *(v36[7] + 8 * v29) = v27;
      v38 = v36[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v36[2] = v39;
      v5 += 3;
      if (v40 == v8)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_261A6E428(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_261A85C44();

    sub_261A85554();
    v24 = sub_261A85C84();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_261A85BA4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_261A6F4C8(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_261A85C44();

            sub_261A85554();
            v43 = sub_261A85C84();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_261A85BA4() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_261A6F0AC(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x266717700](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_261A70290();
    goto LABEL_53;
  }

  MEMORY[0x2667175A0](v54);
  result = MEMORY[0x266717700](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_261A6E998(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v60[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v51 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v56 = v4;
  v57 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v54 = v5 + 1;
    v11 = *(v2 + 40);
    sub_261A85C44();

    sub_261A85554();
    v12 = sub_261A85C84();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v54;
    if (v54 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_261A85BA4() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v57;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v60[1] = v54;

  v22 = *(v2 + 32);
  v52 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v52;
  v24 = v57;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v45 = v23;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v53 = &v50;
    MEMORY[0x28223BE20](v21);
    v14 = &v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v59 = v7;
    memcpy(v14, v7, v25);
    v58 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v55 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v56;
    v7 = *(v56 + 16);
    v30 = v54;
    while (1)
    {
      v54 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_261A6F4C8(v55, v52, v54, v58);
LABEL_42:

LABEL_43:
        v43 = *MEMORY[0x277D85DE8];
        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v58;
        v34 = *(v58 + 40);
        sub_261A85C44();

        sub_261A85554();
        v35 = sub_261A85C84();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v59[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v57;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((sub_261A85BA4() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v59[v37 >> 6]) == 0)
          {
            v29 = v56;
            goto LABEL_37;
          }

          v42 = (*(v58 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v56;
      v31 = v55[v14];
      v55[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v54 - 1;
      v24 = v57;
      if (__OFSUB__(v54, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v54 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v7, v46);
  v48 = v51;
  v49 = sub_261A6F2E4(v47, v52, v2, v14, v60);

  if (!v48)
  {

    MEMORY[0x266717700](v47, -1, -1);

    v2 = v49;
    goto LABEL_43;
  }

  MEMORY[0x2667175A0](v48);
  result = MEMORY[0x266717700](v47, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_261A6EE44(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_261A6EF70(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_261A6EF70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_261A85C44();
  sub_261A85554();
  v7 = sub_261A85C84();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_261A85BA4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_261A81830();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_261A6F6EC(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_261A6F0AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_261A6F4C8(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_261A85C44();

        sub_261A85554();
        v20 = sub_261A85C84();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_261A85BA4() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_261A6F2E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_261A6F4C8(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_261A85C44();

        sub_261A85554();
        v17 = sub_261A85C84();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_261A85BA4() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_261A6F4C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC8, &qword_261A8C8F0);
  result = sub_261A85894();
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
    sub_261A85C44();

    sub_261A85554();
    result = sub_261A85C84();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_261A6F6EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_261A85864();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_261A85C44();

        sub_261A85554();
        v15 = sub_261A85C84();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _s7Recount12CountingModeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[4] == a2[4] && a1[5] == a2[5];
  if (v4 || (v5 = sub_261A85BA4(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[38];
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = a2[38];
    if (v8 == *(v10 + 32) && v9 == *(v10 + 40))
    {
      return 1;
    }

    else
    {

      return sub_261A85BA4();
    }
  }

  return result;
}

unint64_t sub_261A6F940()
{
  result = qword_27FECBD58;
  if (!qword_27FECBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD58);
  }

  return result;
}

uint64_t sub_261A6F994(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB988, &unk_261A8C920);
    v4 = sub_261A856E4();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    v8 = *v3;
    *(v4 + 80) = *(v3 + 48);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = v4 + 88;
      do
      {
        sub_261A702E0(v3, v14, &qword_27FECB988, &unk_261A8C920);
        v11 = *v3;
        v12 = *(v3 + 16);
        v13 = *(v3 + 32);
        *(v10 + 48) = *(v3 + 48);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 56;
        --v9;
      }

      while (v9);
    }

    sub_261A702E0(v3, v14, &qword_27FECB988, &unk_261A8C920);
    return v5;
  }

  return result;
}

uint64_t sub_261A6FA98(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB978, &qword_261A8AC28);
    v4 = sub_261A856E4();
    v5 = v4;
    *(v4 + 16) = a2;
    v6 = *(v3 + 32);
    v7 = *(v3 + 16);
    *(v4 + 32) = *v3;
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    v8 = a2 - 1;
    if (a2 != 1)
    {
      v9 = v4 + 72;
      do
      {
        sub_261A702E0(v3, v12, &qword_27FECB978, &qword_261A8AC28);
        v10 = *v3;
        v11 = *(v3 + 16);
        *(v9 + 32) = *(v3 + 32);
        *v9 = v10;
        *(v9 + 16) = v11;
        v9 += 40;
        --v8;
      }

      while (v8);
    }

    sub_261A702E0(v3, v12, &qword_27FECB978, &qword_261A8AC28);
    return v5;
  }

  return result;
}

uint64_t sub_261A6FB90(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      return MEMORY[0x277D84F90];
    }

    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B8, &unk_261A8C900);
    v8 = sub_261A856E4();
    v9 = v8;
    *(v8 + 16) = a4;
    *(v8 + 32) = v7;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    v10 = a4 - 1;
    if (v10)
    {
      v11 = (v8 + 72);
      do
      {
        *(v11 - 2) = v7;
        *(v11 - 1) = a2;
        *v11 = a3;
        v11 += 24;

        --v10;
      }

      while (v10);
    }

    return v9;
  }

  return result;
}

uint64_t sub_261A6FC44(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDD0, &qword_261A8C8F8);
    v4 = sub_261A856E4();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_261A6FCE0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDD8, &qword_261A8C918);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A6F940();
  sub_261A85CB4();
  v12 = 0;
  sub_261A547AC();
  sub_261A85A94();
  v19[2] = v15;
  v19[3] = v16;
  v19[4] = v17;
  v19[5] = v18;
  v19[0] = v13;
  v19[1] = v14;
  type metadata accessor for Platform();
  v12 = 1;
  sub_261A70298(&qword_27FECBDE0, 255, type metadata accessor for Platform);
  sub_261A85A94();
  v8 = v13;
  type metadata accessor for CountingMode();
  v9 = swift_allocObject();
  sub_261A6A790(v19, v8);
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_261A6FF78()
{
  result = qword_27FECBD68;
  if (!qword_27FECBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD68);
  }

  return result;
}

uint64_t sub_261A70044(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A7008C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_261A70118()
{
  result = qword_27FECBD78;
  if (!qword_27FECBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD78);
  }

  return result;
}

unint64_t sub_261A70170()
{
  result = qword_27FECBD80;
  if (!qword_27FECBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD80);
  }

  return result;
}

unint64_t sub_261A701C8()
{
  result = qword_27FECBD88;
  if (!qword_27FECBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBD88);
  }

  return result;
}

uint64_t sub_261A70298(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_261A702E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_261A70348(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x277D84F90];
  sub_261A3F400(0, v1, 0);
  v2 = v32;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_261A85854();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v9;
  v29 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = v12[1];
    v31 = *v12;
    v14 = v3;
    v15 = *(*(v3 + 56) + 8 * v7);
    v16 = *(v32 + 16);
    v17 = *(v32 + 24);

    if (v16 >= v17 >> 1)
    {
      result = sub_261A3F400((v17 > 1), v16 + 1, 1);
    }

    *(v32 + 16) = v16 + 1;
    v18 = (v32 + 24 * v16);
    v18[4] = v31;
    v18[5] = v13;
    v18[6] = v15;
    v10 = 1 << *(v14 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v11);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v26 + 8 * v11);
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_261A4984C(v7, v28, 0);
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_261A4984C(v7, v28, 0);
    }

LABEL_4:
    v8 = v30 + 1;
    v7 = v10;
    if (v30 + 1 == v27)
    {
      return v2;
    }
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
LABEL_26:
  __break(1u);
  return result;
}

void sub_261A705A8(unsigned __int8 *a1)
{
  v3 = *a1 > 1u;
  v4 = *(v1 + 24);
  if (*(v4 + 16) <= v3)
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = *(v4 + 8 * v3 + 32);
  }

  v6 = v44[4];
  v7 = *(v5 + 16);
  v8 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      v9 = sub_261A856E4();
      *(v9 + 16) = v8;
      bzero((v9 + 32), 8 * v8);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    sub_261A7F454(v9);

    sub_261A7F454(v10);
    v11 = v44[6];
    if (v11 < 0)
    {
      goto LABEL_53;
    }

    v12 = v5;
    if (v11)
    {
      v13 = v44[6];
      v14 = sub_261A856E4();
      *(v14 + 16) = v11;
      v41 = v14;
      bzero((v14 + 32), 8 * v11);
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }

    v15 = v44[2];
    v42 = *(v15 + 16);
    if (v42)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v15 + 32);
      v43 = 1;
      while (v17 < *(v15 + 16))
      {
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[3];

        sub_261A8433C(v12, v19);
        if (v2)
        {

          return;
        }

        v23 = v22;

        v24 = v44[5];
        if (v17 >= *(v24 + 16))
        {
          goto LABEL_47;
        }

        v25 = v24 + v16;
        if ((*(v25 + 40) & 1) == 0)
        {
          v26 = *(v25 + 32);
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_49;
          }

          if (v26 >= *(v41 + 16))
          {
            goto LABEL_50;
          }

          *(v41 + 32 + 8 * v26) = v23;
          v43 &= (v23 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_261A67BA8(v12);
        }

        if (v7 >= *(v12 + 2))
        {
          goto LABEL_48;
        }

        ++v17;
        *&v12[8 * v7++ + 32] = v23;
        v16 += 16;
        v18 += 4;
        if (v42 == v17)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      v27 = v44[7];
      v28 = *(v27 + 16);
      if (!v28)
      {
LABEL_43:

        return;
      }

      v29 = v12 + 32;
      v30 = (v27 + 56);
      v31 = MEMORY[0x277D84F90];
      v32 = MEMORY[0x277D84F90];
      while (1)
      {
        v34 = *(v30 - 3);
        if ((v34 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v34 >= *(v12 + 2))
        {
          goto LABEL_45;
        }

        if (*(v30 - 1) <= *&v29[8 * v34])
        {
          v35 = *v30;
          swift_retain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_261A66940(0, *(v31 + 2) + 1, 1, v31);
          }

          v37 = *(v31 + 2);
          v36 = *(v31 + 3);
          if (v37 >= v36 >> 1)
          {
            v31 = sub_261A66940((v36 > 1), v37 + 1, 1, v31);
          }

          *(v31 + 2) = v37 + 1;
          v38 = &v31[16 * v37];
          *(v38 + 4) = v35;
          v38[40] = 1;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_261A66924(0, *(v32 + 2) + 1, 1, v32);
          }

          v40 = *(v32 + 2);
          v39 = *(v32 + 3);
          if (v40 >= v39 >> 1)
          {
            v32 = sub_261A66924((v39 > 1), v40 + 1, 1, v32);
          }

          *(v32 + 2) = v40 + 1;
          v33 = &v32[16 * v40];
          *(v33 + 4) = v35;
          v33[40] = 1;
          v29 = v12 + 32;
        }

        v30 += 4;
        if (!--v28)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}