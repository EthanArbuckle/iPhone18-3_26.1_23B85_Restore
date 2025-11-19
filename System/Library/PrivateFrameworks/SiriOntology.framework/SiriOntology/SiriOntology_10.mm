uint64_t Siri_Nl_Core_Protocol_UUID.namespace.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UUID.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UUID() + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nl_Core_Protocol_UUID.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UUID() + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C05FE5CC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE181C0);
  __swift_project_value_buffer(v0, qword_1EBE181C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C09787B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UUID_NAMESPACE_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ENTITY";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TASK";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SYSTEM_DIALOG_ACT";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NLU_REQUEST_ID";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ASR_HYPOTHESIS_ID";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C05FE8F8()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE181D8);
  __swift_project_value_buffer(v0, qword_1EBE181D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "high_int";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "low_int";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "namespace";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UUID.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        sub_1C05FECF8();
        sub_1C095D45C();
      }

      else if (result == 2 || result == 1)
      {
        sub_1C095D53C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_UUID.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C095D68C(), !v1))
  {
    if (!*(v0 + 8) || (result = sub_1C095D68C(), !v1))
    {
      if (!*(v0 + 16) || (v4 = *(v0 + 16), v5 = *(v0 + 24), sub_1C05FECF8(), result = sub_1C095D60C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UUID() + 28);
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

unint64_t sub_1C05FECF8()
{
  result = qword_1EBE181F0;
  if (!qword_1EBE181F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE181F0);
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_UUID.hashValue.getter()
{
  sub_1C095DFEC();
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C05FF46C(&qword_1EBE181F8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C05FEDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 28);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05FEE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05FF46C(&qword_1EBE18250, type metadata accessor for Siri_Nl_Core_Protocol_UUID);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05FEEF4(uint64_t a1)
{
  v2 = sub_1C05FF46C(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05FEF60()
{
  sub_1C05FF46C(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);

  return sub_1C095D5AC();
}

uint64_t _s12SiriOntology0A22_Nl_Core_Protocol_UUIDV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  if (*a1 != *a2 || a1[1] != *(a2 + 8))
  {
    return 0;
  }

  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }

      goto LABEL_10;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_10:
      v4 = *(type metadata accessor for Siri_Nl_Core_Protocol_UUID() + 28);
      sub_1C095D38C();
      sub_1C05FF46C(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      return sub_1C095D73C() & 1;
    }

    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1C05FF11C()
{
  result = qword_1EBE18200;
  if (!qword_1EBE18200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18200);
  }

  return result;
}

unint64_t sub_1C05FF174()
{
  result = qword_1EBE18208;
  if (!qword_1EBE18208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18208);
  }

  return result;
}

unint64_t sub_1C05FF1CC()
{
  result = qword_1EBE18210;
  if (!qword_1EBE18210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18210);
  }

  return result;
}

unint64_t sub_1C05FF224()
{
  result = qword_1EBE18218;
  if (!qword_1EBE18218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE18220, &qword_1C0978AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18218);
  }

  return result;
}

uint64_t sub_1C05FF3E0()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C05FF46C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DynamicTask.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1C05FF70C(a1, a2, a3, a4, &qword_1EBE17A00, &qword_1C0972EE0, &qword_1EBE17A08, &qword_1C0972EE8);
}

{
  return sub_1C05FF70C(a1, a2, a3, a4, &qword_1EBE18258, &qword_1C0978D10, &qword_1EBE17A10, &unk_1C0972EF0);
}

{
  sub_1C0601984(a1, a2, a3, a4);
}

void (*DynamicTask.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x70uLL);
  }

  *a1 = v9;
  v9[12] = a4;
  v9[13] = v4;
  v9[10] = a2;
  v9[11] = a3;
  DynamicTask.subscript.getter(a2, a3, a4);
  return sub_1C05FF574;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x70uLL);
  }

  *a1 = v9;
  v9[12] = a4;
  v9[13] = v4;
  v9[10] = a2;
  v9[11] = a3;
  DynamicTask.subscript.getter(a2, a3, a4);
  return sub_1C05FF9E0;
}

double sub_1C05FF5A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBB24(a1, a2, a3, WitnessTable, &v10);
  if (v11)
  {
    sub_1C0531D80(&v10, v12);
    sub_1C0531D80(v12, a4);
  }

  else
  {
    sub_1C05145B4(&v10, &qword_1EBE16C40, &qword_1C09932B0);
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C05FF660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 8);
  v9 = *a3;
  v10 = a3[1];
  sub_1C05149F8(a1, v13, a5, a6);
  v11 = type metadata accessor for DynamicTask();

  return a7(v13, v9, v10, v11);
}

uint64_t sub_1C05FF70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  sub_1C05149F8(a1, v30, a5, a6);
  if (!v31)
  {
    sub_1C05145B4(v30, a5, a6);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    goto LABEL_5;
  }

  sub_1C0526080(v30, &v32);
  sub_1C05145B4(v30, a7, a8);
  v15 = *(&v33 + 1);
  v16 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  (*(v16 + 72))(v27, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v36 = v27[4];
  v37 = v27[5];
  v38 = v28;
  v32 = v27[0];
  v33 = v27[1];
  v34 = v27[2];
  v35 = v27[3];
  v17 = *(&v27[0] + 1);
  if (!*(&v27[0] + 1))
  {
LABEL_5:
    v19 = 0;
    v23 = 0;
    v22 = 0;
    v29[1] = 0;
    v29[2] = 0;
    goto LABEL_6;
  }

  v18 = v32;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = v36;
  *(v19 + 64) = v35;
  *(v19 + 80) = v20;
  *(v19 + 96) = v37;
  *(v19 + 112) = v38;
  v21 = v34;
  *(v19 + 32) = v33;
  *(v19 + 48) = v21;
  v22 = &off_1F3FA1508;
  v23 = &type metadata for BuilderNode;
LABEL_6:
  v29[0] = v19;
  v29[3] = v23;
  v29[4] = v22;
  sub_1C05149F8(&v32, v27, &qword_1EBE16C48, &qword_1C096E828);
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBBE8(v29, a2, a3, a4, WitnessTable);

  sub_1C05145B4(&v32, &qword_1EBE16C48, &qword_1C096E828);
  sub_1C05145B4(a1, a5, a6);
  return sub_1C05145B4(v29, &qword_1EBE16C40, &qword_1C09932B0);
}

void sub_1C05FFA08(uint64_t *a1, char a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v6 = *a1;
  v8 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v10 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  if (a2)
  {
    sub_1C05149F8(*a1, (v6 + 40), a4, a5);

    a3(v6 + 40, v10, v9, v8);
    sub_1C05145B4(v6, a4, a5);
  }

  else
  {

    a3(v6, v10, v9, v8);
  }

  free(v6);
}

uint64_t DynamicTask.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1C05FFD10(a1, a2, a3, sub_1C0600BA0);
}

{
  return sub_1C05FFD10(a1, a2, a3, sub_1C0600BE0);
}

uint64_t sub_1C05FFAF4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a3;
  v6 = a3[1];
  v7 = *a1;
  v8 = type metadata accessor for DynamicTask();

  sub_1C0601984(v9, v5, v6, v8);
}

void (*DynamicTask.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  *v9 = DynamicTask.subscript.getter(a2, a3, a4);
  return sub_1C05FFC48;
}

void sub_1C05FFC48(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;

  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  if (a2)
  {

    sub_1C0601984(v9, v8, v4, v7);

    v10 = *v3;
  }

  else
  {
    sub_1C0601984(v5, v3[1], v4, v3[3]);
  }

  free(v3);
}

uint64_t sub_1C05FFD10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C06FBDDC(a1, a2, a3, WitnessTable);
  v10 = *(v9 + 16);
  if (v10)
  {
    v21 = MEMORY[0x1E69E7CC0];
    a4(0, v10, 0);
    v11 = v21;
    v12 = v9 + 32;
    do
    {
      sub_1C0526080(v12, v19);
      v21 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        a4(v13 > 1, v14 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v14 + 1;
      v15 = v11 + 40 * v14;
      v16 = v19[0];
      v17 = v19[1];
      *(v15 + 64) = v20;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
      v12 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t DynamicTask<A>.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  v11 = *(a3 + 8);

  return sub_1C0555D90(a1, a2, WitnessTable, a4, v11, a5);
}

uint64_t DynamicTask<A>.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  sub_1C0601B70(a1, a2, a3, a4, a5);

  v7 = *(*(v6 + *MEMORY[0x1E69E77B0] + 8) + 16);
  type metadata accessor for Entity();
  v8 = sub_1C095DB0C();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*DynamicTask<A>.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x80uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[12] = a5;
  v11[13] = v5;
  v11[10] = a2;
  v11[11] = a3;
  v11[14] = *a2;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a4 + 8);
  *(v12 + 120) = v14;
  sub_1C0555D90(a2, a3, WitnessTable, a5, v14, v12);
  return sub_1C0600094;
}

void sub_1C0600094(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[15];
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[10];
    v7 = v2[11];
    v8 = *(*(v2[14] + *MEMORY[0x1E69E77B0] + 8) + 16);
    type metadata accessor for Entity();
    v9 = sub_1C095DB0C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v2 + 5, v2, v9);

    WitnessTable = swift_getWitnessTable();
    sub_1C05560BC(v6, (v2 + 5), v7, WitnessTable, v5, v3);

    v12 = *(v10 + 8);
    v12(v2 + 5, v9);
    v12(v2, v9);
  }

  else
  {
    v14 = v2[14];
    v13 = v2[15];
    v16 = v2[12];
    v15 = v2[13];
    v18 = v2[10];
    v17 = v2[11];

    v19 = swift_getWitnessTable();
    sub_1C05560BC(v18, v2, v17, v19, v16, v13);

    v20 = *(*(v14 + *MEMORY[0x1E69E77B0] + 8) + 16);
    type metadata accessor for Entity();
    v21 = sub_1C095DB0C();
    (*(*(v21 - 8) + 8))(v2, v21);
  }

  free(v2);
}

uint64_t DynamicTask<A>.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();
  v9 = *(a3 + 8);

  return sub_1C055657C(a1, a2, WitnessTable, a4, v9);
}

uint64_t sub_1C0600308(uint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 32);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = *a1;
  v9 = type metadata accessor for DynamicTask();

  sub_1C0601BF4(v10, v7, v9, v5, v6);
}

uint64_t DynamicTask<A>.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C0601BF4(a1, a2, a3, a4, a5);
}

void (*DynamicTask<A>.subscript.modify(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[3] = a5;
  v11[4] = v5;
  v11[1] = a2;
  v11[2] = a3;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a4 + 8);
  v12[5] = v14;
  *v12 = sub_1C055657C(a2, a3, WitnessTable, a5, v14);
  return sub_1C06004B4;
}

void sub_1C06004B4(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];

  v6 = v3[4];
  v7 = v3[5];
  v9 = v3[2];
  v8 = v3[3];
  if (a2)
  {

    WitnessTable = swift_getWitnessTable();
    sub_1C0556904(v5, v4, v9, WitnessTable, v8, v7);

    v11 = *v3;
  }

  else
  {
    v12 = v3[2];
    v13 = swift_getWitnessTable();
    sub_1C0556904(v5, v4, v9, v13, v8, v7);
  }

  free(v3);
}

uint64_t DynamicTask<A>.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  v9 = *(a3 + 8);

  return sub_1C0556CF4(a1, a2, WitnessTable, v9, a4);
}

uint64_t sub_1C0600634(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3 + a4 - 32);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v10 = *a3;
  v11 = type metadata accessor for DynamicTask();

  a5(a1, v10, v11, v8, v9);
}

uint64_t DynamicTask<A>.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  sub_1C0601C78(a1, a2, a3, a4);

  v6 = *(*(*(v5 + *MEMORY[0x1E69E77B0] + 8) + 16) + 16);
  type metadata accessor for Metadata();
  v7 = sub_1C095DB0C();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*DynamicTask<A>.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x78uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[11] = a3;
  v9[12] = v4;
  v9[10] = a2;
  v9[13] = *a2;
  WitnessTable = swift_getWitnessTable();
  v12 = *(a4 + 8);
  *(v10 + 112) = v12;
  sub_1C0556CF4(a2, a3, WitnessTable, v12, v10);
  return sub_1C060087C;
}

void sub_1C060087C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[14];
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];
    v7 = *(*(*(v2[13] + *MEMORY[0x1E69E77B0] + 8) + 16) + 16);
    type metadata accessor for Metadata();
    v8 = sub_1C095DB0C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v2 + 5, v2, v8);

    WitnessTable = swift_getWitnessTable();
    sub_1C0557014(v6, (v2 + 5), v5, WitnessTable, v3);

    v11 = *(v9 + 8);
    v11(v2 + 5, v8);
    v11(v2, v8);
  }

  else
  {
    v13 = v2[13];
    v12 = v2[14];
    v15 = v2[11];
    v14 = v2[12];
    v16 = v2[10];

    v17 = swift_getWitnessTable();
    sub_1C0557014(v16, v2, v15, v17, v12);

    v18 = *(*(*(v13 + *MEMORY[0x1E69E77B0] + 8) + 16) + 16);
    type metadata accessor for Metadata();
    v19 = sub_1C095DB0C();
    (*(*(v19 - 8) + 8))(v2, v19);
  }

  free(v2);
}

uint64_t DynamicTask<A>.subscript.getter(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = *(a3 + 8);

  return sub_1C0557570(a1, a2, WitnessTable, v7);
}

void *sub_1C0600AE0(void *a1, int64_t a2, char a3)
{
  result = sub_1C0600D00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0600B00(void *a1, int64_t a2, char a3)
{
  result = sub_1C06015F4(a1, a2, a3, *v3, &qword_1EBE172E0, &qword_1C0970AD8, &qword_1EBE172E8, &qword_1C0970AE0);
  *v3 = result;
  return result;
}

char *sub_1C0600B40(char *a1, int64_t a2, char a3)
{
  result = sub_1C0600E4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0600B60(char *a1, int64_t a2, char a3)
{
  result = sub_1C06011C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0600B80(char *a1, int64_t a2, char a3)
{
  result = sub_1C06012C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0600BA0(void *a1, int64_t a2, char a3)
{
  result = sub_1C06015F4(a1, a2, a3, *v3, &qword_1EBE18290, &qword_1C0978D48, &qword_1EBE17A08, &qword_1C0972EE8);
  *v3 = result;
  return result;
}

void *sub_1C0600BE0(void *a1, int64_t a2, char a3)
{
  result = sub_1C06015F4(a1, a2, a3, *v3, &qword_1EBE18288, &qword_1C0978D40, &qword_1EBE17A10, &unk_1C0972EF0);
  *v3 = result;
  return result;
}

void *sub_1C0600C20(void *a1, int64_t a2, char a3)
{
  result = sub_1C06013BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0600C40(void *a1, int64_t a2, char a3)
{
  result = sub_1C06015F4(a1, a2, a3, *v3, &qword_1EBE16EA0, &qword_1C0973000, &qword_1EBE16EA8, &unk_1C0970670);
  *v3 = result;
  return result;
}

char *sub_1C0600C80(char *a1, int64_t a2, char a3)
{
  result = sub_1C060173C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0600CA0(void *a1, int64_t a2, char a3)
{
  result = sub_1C06015F4(a1, a2, a3, *v3, &qword_1EBE179F0, &qword_1C0972ED0, &qword_1EBE179F8, &qword_1C0972ED8);
  *v3 = result;
  return result;
}

void *sub_1C0600CE0(void *a1, int64_t a2, char a3)
{
  result = sub_1C060183C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0600D00(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E80, &qword_1C0970648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E88, &unk_1C0970650);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0600E4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18270, &qword_1C0978D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0600F74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17350, &unk_1C0970B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0601090(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17348, &qword_1C0970B48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17340, &qword_1C0970B38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C06011C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17250, &qword_1C0970A30);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C06012C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17258, &qword_1C0970A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C06013BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18278, &qword_1C0978D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18280, &unk_1C0999F20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C06014F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17210, &qword_1C09709E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1C06015F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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

char *sub_1C060173C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18268, &qword_1C0978D28);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_1C060183C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC0, &unk_1C0970690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC8, &unk_1C0999F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C0601984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C0600B40(0, v8, 0);
    v9 = v33;
    v10 = a1 + 32;
    for (i = v8 - 1; ; --i)
    {
      sub_1C05149F8(v10, v28, &qword_1EBE17A08, &qword_1C0972EE8);
      v13 = v29;
      v12 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v12 + 72))(v31, v13, v12);
      sub_1C05145B4(v28, &qword_1EBE17A08, &qword_1C0972EE8);
      v33 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C0600B40((v14 > 1), v15 + 1, 1);
        v9 = v33;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 104 * v15;
      v17 = v31[0];
      v18 = v31[2];
      *(v16 + 48) = v31[1];
      *(v16 + 64) = v18;
      *(v16 + 32) = v17;
      v19 = v31[3];
      v20 = v31[4];
      v21 = v31[5];
      *(v16 + 128) = v32;
      *(v16 + 96) = v20;
      *(v16 + 112) = v21;
      *(v16 + 80) = v19;
      if (!i)
      {
        break;
      }

      v10 += 40;
    }

    a4 = v27;
    v6 = a2;
    v5 = a3;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v22 = sub_1C077CEA8(v9);

  WitnessTable = swift_getWitnessTable();
  sub_1C06FBEA4(v22, v6, v5, a4, WitnessTable);
}

uint64_t sub_1C0601B70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();
  v11 = *(a4 + 8);

  return sub_1C05560BC(a2, a1, a3, WitnessTable, a5, v11);
}

uint64_t sub_1C0601BF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();
  v11 = *(a4 + 8);

  return sub_1C0556904(a2, a1, a3, WitnessTable, a5, v11);
}

uint64_t sub_1C0601C78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();
  v9 = *(a4 + 8);

  return sub_1C0557014(a2, a1, a3, WitnessTable, v9);
}

uint64_t keypath_getTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 8);
  v6 = *a2;
  v7 = a2[1];
  v8 = type metadata accessor for DynamicTask();
  return a4(v6, v7, v8);
}

uint64_t static AddressOntologyNode.PersonPlaceNode.personPlaceNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.PersonPlaceNode.personPlaceIdNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.PersonPlaceNode.personPlaceReferenceNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A18, &qword_1C0972F00);

  return swift_initStaticObject();
}

uint64_t sub_1C0601E20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0973530;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 32) = inited;
  v3 = swift_initStaticObject();
  *(v0 + 96) = v1;
  *(v0 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 72) = v3;
  v4 = swift_initStaticObject();
  *(v0 + 136) = v1;
  *(v0 + 144) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 112) = v4;
  v5 = swift_initStaticObject();
  *(v0 + 176) = v1;
  *(v0 + 184) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 152) = v5;
  v6 = swift_initStaticObject();
  *(v0 + 216) = v1;
  *(v0 + 224) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 192) = v6;
  v7 = swift_initStaticObject();
  *(v0 + 256) = v1;
  *(v0 + 264) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 232) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A60, &qword_1C0972FF0);
  v9 = swift_initStaticObject();
  *(v0 + 296) = v8;
  *(v0 + 304) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 272) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A58, qword_1C0972FD0);
  v11 = swift_initStaticObject();
  *(v0 + 336) = v10;
  *(v0 + 344) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 312) = v11;
  v12 = swift_initStaticObject();
  *(v0 + 376) = v1;
  *(v0 + 384) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 352) = v12;
  type metadata accessor for NonTerminalOntologyNode();
  result = swift_allocObject();
  *(result + 16) = 0x746E61707563636FLL;
  *(result + 24) = 0xE800000000000000;
  *(result + 32) = 0;
  *(result + 40) = v0;
  qword_1EBE18298 = result;
  return result;
}

uint64_t static AddressOntologyNode.PersonPlaceNode.occupantNode.getter()
{
  if (qword_1EBE15648 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C0602028()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0971200;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 32) = inited;
  v3 = swift_initStaticObject();
  *(v0 + 96) = v1;
  *(v0 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 72) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A18, &qword_1C0972F00);
  v5 = swift_initStaticObject();
  *(v0 + 136) = v4;
  *(v0 + 144) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 112) = v5;
  if (qword_1EBE15648 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBE18298;
  *(v0 + 176) = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 184) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 152) = v6;
  qword_1EBE182A0 = v0;
}

uint64_t static AddressOntologyNode.PersonPlaceNode.childNodes.getter()
{
  if (qword_1EBE15650 != -1)
  {
    swift_once();
  }
}

uint64_t AddressOntologyNode.PersonPlaceNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  if (qword_1EBE15650 != -1)
  {
    v10 = v6;
    swift_once();
    v6 = v10;
  }

  v7 = qword_1EBE182A0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  *(v6 + 40) = v7;
  v8 = v6;

  return v8;
}

uint64_t AddressOntologyNode.PersonPlaceNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EBE15650 != -1)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    swift_once();
    a1 = v6;
    a2 = v7;
    a3 = v8;
  }

  v4 = qword_1EBE182A0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  *(v3 + 40) = v4;

  return v3;
}

uint64_t AddressOntologyNode.PersonPlaceNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AddressOntologyNode.PersonPlaceNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t static AppOntologyNode.appNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AppOntologyNode.appAttributesNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE182A8, &qword_1C0978D78);

  return swift_initStaticObject();
}

uint64_t AppOntologyNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  AppOntologyNode.init(name:multicardinal:)(a1, a2, a3);
  return v6;
}

uint64_t AppOntologyNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C0971210;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 32) = inited;
  v10 = swift_initStaticObject();
  *(v7 + 96) = v8;
  *(v7 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 72) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE182A8, &qword_1C0978D78);
  v12 = swift_initStaticObject();
  *(v7 + 136) = v11;
  *(v7 + 144) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 112) = v12;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = v7;
  return v3;
}

uint64_t AppOntologyNode.AppAttributes.hashValue.getter()
{
  sub_1C095DFEC();
  MEMORY[0x1C68DDE90](0);
  return sub_1C095E03C();
}

uint64_t sub_1C0602640()
{
  sub_1C095DFEC();
  MEMORY[0x1C68DDE90](0);
  return sub_1C095E03C();
}

uint64_t sub_1C06026AC()
{
  sub_1C095DFEC();
  MEMORY[0x1C68DDE90](0);
  return sub_1C095E03C();
}

uint64_t AppOntologyNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AppOntologyNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_1C0602798()
{
  result = qword_1EBE182B0;
  if (!qword_1EBE182B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE182B0);
  }

  return result;
}

unint64_t sub_1C06027EC(uint64_t a1)
{
  result = sub_1C0602814();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0602814()
{
  result = qword_1EBE182B8;
  if (!qword_1EBE182B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE182B8);
  }

  return result;
}

unint64_t sub_1C060286C()
{
  result = qword_1EBE182C0;
  if (!qword_1EBE182C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE182C8, &qword_1C0978E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE182C0);
  }

  return result;
}

unint64_t sub_1C06028D0(uint64_t a1)
{
  result = sub_1C06028F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C06028F8()
{
  result = qword_1EBE182D0;
  if (!qword_1EBE182D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE182D0);
  }

  return result;
}

uint64_t sub_1C0602CDC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = type metadata accessor for UsoEntity();
  if (v2 == MEMORY[0x1E69E6158])
  {
    sub_1C0519574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
    goto LABEL_8;
  }

  if (v2 == MEMORY[0x1E69E7360])
  {
    v5 = *(a1 + 16);
    Node.int64Value.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
LABEL_8:
    if (swift_dynamicCast())
    {
      return v6;
    }

    return 0;
  }

  sub_1C0518BC4();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1C0605A38(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  if (!a1)
  {
    return 0;
  }

  v5 = a2();
  if (v5 == MEMORY[0x1E69E6158])
  {
    sub_1C0519574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
    goto LABEL_7;
  }

  if (v5 == MEMORY[0x1E69E7360])
  {
    v8 = *(a1 + 16);
    Node.int64Value.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
LABEL_7:
    if (swift_dynamicCast())
    {
      return v9;
    }

    return 0;
  }

  sub_1C0518BC4();
  v6 = a3();

  return v6;
}

void *sub_1C0605B38(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_18:

    return 0;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  v11 = sub_1C0518574();
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  if (v11[4])
  {
    v13 = v11[4];
    swift_retain_n();
    sub_1C0519574();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
  if (swift_dynamicCast())
  {
    v15 = v16;
    v14 = v17;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C8, &qword_1C096DC98);
  result = swift_allocObject();
  result[2] = v12;
  result[3] = v15;
  result[4] = v14;
  return result;
}

uint64_t sub_1C0605D10(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = *(*(v2 + 16) + 32);

  v7 = sub_1C0516A8C(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(*(v3 + 56) + 8 * v7);

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_18:

    return 0;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(v9 + 32);
  }

  v12 = sub_1C0518574();
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  v14 = v12[4];
  if (v14)
  {
    v18 = *(v14 + 16);
    Node.int64Value.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
  v15 = swift_dynamicCast();
  if (v15)
  {
    v16 = v18;
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 ^ 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18B38, &qword_1C0981B28);
  result = swift_allocObject();
  *(result + 16) = v13;
  *(result + 24) = v16;
  *(result + 32) = v17;
  return result;
}

uint64_t sub_1C0605ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(*(v3 + 16) + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = *(*(v3 + 16) + 32);

  v9 = sub_1C0516A8C(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(*(v5 + 56) + 8 * v9);

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C68DDAD0](0, v11);
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);

LABEL_8:

LABEL_13:
    v14 = a3(v13);

    return v14;
  }

  __break(1u);
  return result;
}

void *sub_1C0605FE8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReactionType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReactionType, sub_1C057F978);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F98, &qword_1C0981F88);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F98, &qword_1C0981F88);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06061B8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_EventTrigger();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_EventTrigger, sub_1C057F990);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FD0, &qword_1C0981FC0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FD0, &qword_1C0981FC0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606388(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Number();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Number, sub_1C057F9A8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F40, &qword_1C0981F30);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F40, &qword_1C0981F30);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606558(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_CarProfile();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_CarProfile, sub_1C057F9C0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE189A0, &qword_1C0981990);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE189A0, &qword_1C0981990);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606728(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Duration();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Duration, sub_1C057F9D8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EB8, &qword_1C0981EA8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EB8, &qword_1C0981EA8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06068F8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_MeasurementUnit();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_MeasurementUnit, sub_1C057F9F0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DC8, &qword_1C0981DB8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DC8, &qword_1C0981DB8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606AC8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonStock_StockChangeState();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonStock_StockChangeState, sub_1C057FA08);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18618, &qword_1C0981608);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18618, &qword_1C0981608);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606C98(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DateTime();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DateTime, sub_1C057FA20);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FE8, &qword_1C0981FD8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FE8, &qword_1C0981FD8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606E68(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_GeographicArea();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_GeographicArea, sub_1C057FA38);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FF8, &qword_1C0981FE8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FF8, &qword_1C0981FE8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607038(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_VoiceCommandPayload();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_VoiceCommandPayload, sub_1C057FA50);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE189E0, &qword_1C09819D0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE189E0, &qword_1C09819D0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607208(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DateTimeRange();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DateTimeRange, sub_1C057FA68);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19008, &qword_1C0981FF8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19008, &qword_1C0981FF8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06073D8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Measurement();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Measurement, sub_1C057FA80);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F58, &qword_1C0981F48);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F58, &qword_1C0981F48);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06075A8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AdjustmentType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AdjustmentType, sub_1C057FA98);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18B90, &qword_1C0981B80);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18B90, &qword_1C0981B80);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607778(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AdjustmentDirection();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AdjustmentDirection, sub_1C057FAB0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BC8, &qword_1C0981BB8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BC8, &qword_1C0981BB8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607948(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SearchQualifier();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SearchQualifier, sub_1C057FB28);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19058, &qword_1C0982050);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19058, &qword_1C0982050);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607B18(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_App();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_App, sub_1C057FB40);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19050, &qword_1C0982048);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19050, &qword_1C0982048);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607CE8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ListPosition();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ListPosition, sub_1C057FB58);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19048, &qword_1C0982040);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19048, &qword_1C0982040);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607EB8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReferenceType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReferenceType, sub_1C057FB70);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19040, &qword_1C0982038);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19040, &qword_1C0982038);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608088(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Quantifier();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Quantifier, sub_1C057FB88);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19038, &qword_1C0982030);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19038, &qword_1C0982030);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608258(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0602CDC(v4);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19030, &qword_1C0982028);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19030, &qword_1C0982028);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608404(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SpatialPosition();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SpatialPosition, sub_1C057FBA0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19028, &qword_1C0982020);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19028, &qword_1C0982020);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06085D4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SummaryMode();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SummaryMode, sub_1C057FBB8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19020, &qword_1C0982018);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19020, &qword_1C0982018);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06087A4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_WorkoutEquipment();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_WorkoutEquipment, sub_1C057FBD0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19018, &qword_1C0982010);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19018, &qword_1C0982010);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608974(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_UserEntity();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_UserEntity, sub_1C057FBE8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19010, &unk_1C0982000);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19010, &unk_1C0982000);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608B44(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_CommunicationTrigger();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_CommunicationTrigger, sub_1C057FC00);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19000, &qword_1C0981FF0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19000, &qword_1C0981FF0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608D14(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Setting();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Setting, sub_1C057FC18);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FF0, &qword_1C0981FE0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FF0, &qword_1C0981FE0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608EE4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PointOfInterest();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PointOfInterest, sub_1C057FC30);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FE0, &qword_1C0981FD0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FE0, &qword_1C0981FD0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06090B4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Journey();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Journey, sub_1C057FC48);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FD8, &qword_1C0981FC8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FD8, &qword_1C0981FC8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609284(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ContactAddress();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ContactAddress, sub_1C057FC60);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FC0, &qword_1C0981FB0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FC0, &qword_1C0981FB0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609454(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Person();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Person, sub_1C057FC78);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FB8, &qword_1C0981FA8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FB8, &qword_1C0981FA8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609624(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_RecurringDateTime();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_RecurringDateTime, sub_1C057FC90);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FB0, &qword_1C0981FA0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FB0, &qword_1C0981FA0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06097F4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonTimer_TimerAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonTimer_TimerAttribute, sub_1C057FCA8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FA8, &qword_1C0981F98);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FA8, &qword_1C0981F98);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06099C4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_VoiceTrigger();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_VoiceTrigger, sub_1C057FCC0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FA0, &qword_1C0981F90);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FA0, &qword_1C0981F90);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609B94(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReactionCategory();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReactionCategory, sub_1C057FCD8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F90, &qword_1C0981F80);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F90, &qword_1C0981F80);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609D64(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReminderType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReminderType, sub_1C057FCF0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F88, &qword_1C0981F78);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F88, &qword_1C0981F78);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609F34(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DailyBriefingItem();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DailyBriefingItem, sub_1C057FD08);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F80, &qword_1C0981F70);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F80, &qword_1C0981F70);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A104(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AppEntity();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AppEntity, sub_1C057FD20);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F78, &qword_1C0981F68);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F78, &qword_1C0981F68);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A2D4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AppEntityType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AppEntityType, sub_1C057FD38);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F68, &qword_1C0981F58);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F68, &qword_1C0981F58);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A4A4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_WorkoutGoal();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_WorkoutGoal, sub_1C057FD50);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F60, &qword_1C0981F50);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F60, &qword_1C0981F50);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A674(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DurationComponent();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DurationComponent, sub_1C057FD68);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F50, &qword_1C0981F40);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F50, &qword_1C0981F40);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A844(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_TimeUnit();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_TimeUnit, sub_1C057FD80);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F48, &qword_1C0981F38);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F48, &qword_1C0981F38);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060AA14(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PhoneCallMode();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PhoneCallMode, sub_1C057FD98);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F38, &qword_1C0981F28);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F38, &qword_1C0981F28);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060ABE4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_appleContact_ContactAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_appleContact_ContactAttribute, sub_1C057FDB0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F30, &qword_1C0981F20);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F30, &qword_1C0981F20);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060ADB4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PersonProperty();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PersonProperty, sub_1C057FDC8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F28, &qword_1C0981F18);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F28, &qword_1C0981F18);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060AF84(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_QRCodeType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_QRCodeType, sub_1C057FDE0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F20, &qword_1C0981F10);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F20, &qword_1C0981F10);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B154(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_OpinionJudgment();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_OpinionJudgment, sub_1C057FDF8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F18, &qword_1C0981F08);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F18, &qword_1C0981F08);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B324(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_OpinionTopic();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_OpinionTopic, sub_1C057FE10);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F10, &qword_1C0981F00);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F10, &qword_1C0981F00);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B4F4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SiriOpinion();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SiriOpinion, sub_1C057FE28);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F08, &qword_1C0981EF8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F08, &qword_1C0981EF8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B6C4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_TemperatureComponent();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_TemperatureComponent, sub_1C057FE40);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F00, &qword_1C0981EF0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F00, &qword_1C0981EF0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B894(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_TemperatureUnit();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_TemperatureUnit, sub_1C057FE58);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EF8, &qword_1C0981EE8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EF8, &qword_1C0981EE8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060BA64(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SearchObject();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SearchObject, sub_1C057FE70);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EF0, &qword_1C0981EE0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EF0, &qword_1C0981EE0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060BC34(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SearchObjectType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SearchObjectType, sub_1C057FE88);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EE8, &qword_1C0981ED8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EE8, &qword_1C0981ED8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060BE04(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Agent();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Agent, sub_1C057FEA0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EE0, &qword_1C0981ED0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EE0, &qword_1C0981ED0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060BFD4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Voicemail();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Voicemail, sub_1C057FEB8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18ED0, &qword_1C0981EC0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18ED0, &qword_1C0981EC0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C1A4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DateTimeRangeQualifier();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DateTimeRangeQualifier, sub_1C057FED0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EC0, &qword_1C0981EB0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EC0, &qword_1C0981EB0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C374(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_RecurringDateTimeRange();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_RecurringDateTimeRange, sub_1C057FEE8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EB0, &qword_1C0981EA0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EB0, &qword_1C0981EA0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C544(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Workout();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Workout, sub_1C057FF00);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EA8, &qword_1C0981E98);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EA8, &qword_1C0981E98);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C714(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_HealthLog();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_HealthLog, sub_1C057FF18);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EA0, &qword_1C0981E90);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EA0, &qword_1C0981E90);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C8E4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_WorkoutClass();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_WorkoutClass, sub_1C057FF30);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E98, &qword_1C0981E88);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E98, &qword_1C0981E88);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060CAB4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonStock_StockAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonStock_StockAttribute, sub_1C057FF48);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E90, &qword_1C0981E80);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E90, &qword_1C0981E80);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060CC84(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Religion();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Religion, sub_1C057FF60);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E70, &qword_1C0981E60);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E70, &qword_1C0981E60);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060CE54(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Age();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Age, sub_1C057FF78);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E60, &qword_1C0981E50);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E60, &qword_1C0981E50);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D024(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SiriContent();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SiriContent, sub_1C057FF90);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E58, &qword_1C0981E48);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E58, &qword_1C0981E48);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D1F4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SiriContentType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SiriContentType, sub_1C057FFA8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E50, &qword_1C0981E40);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E50, &qword_1C0981E40);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D3C4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_MonthOfYear();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_MonthOfYear, sub_1C057FFC0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E48, &qword_1C0981E38);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E48, &qword_1C0981E38);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D594(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Integer();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Integer, sub_1C057FAE0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E40, &qword_1C0981E30);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E40, &qword_1C0981E30);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D764(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PhoneNumber();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PhoneNumber, sub_1C057FFD8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E38, &qword_1C0981E28);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E38, &qword_1C0981E28);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D934(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Clock();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Clock, sub_1C057FFF0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E30, &qword_1C0981E20);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E30, &qword_1C0981E20);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060DB04(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_appleMessage_MessageAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_appleMessage_MessageAttribute, sub_1C0580008);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E28, &qword_1C0981E18);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E28, &qword_1C0981E18);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060DCD4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_NoteFolder();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_NoteFolder, sub_1C0580020);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E20, &qword_1C0981E10);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E20, &qword_1C0981E10);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060DEA4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonAlarm_AlarmAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonAlarm_AlarmAttribute, sub_1C0580038);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E10, &qword_1C0981E00);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E10, &qword_1C0981E00);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E074(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SortDirection();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SortDirection, sub_1C0580050);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E08, &qword_1C0981DF8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E08, &qword_1C0981DF8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E244(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SortOrder();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SortOrder, sub_1C0580068);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E00, &qword_1C0981DF0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E00, &qword_1C0981DF0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E414(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SortValue();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SortValue, sub_1C0580080);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DF8, &qword_1C0981DE8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DF8, &qword_1C0981DE8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E5E4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonContact_ContactAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonContact_ContactAttribute, sub_1C0580098);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DF0, &qword_1C0981DE0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DF0, &qword_1C0981DE0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E7B4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_UserEntityType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_UserEntityType, sub_1C05800B0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DE8, &qword_1C0981DD8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DE8, &qword_1C0981DD8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E984(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Color();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Color, sub_1C05800C8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DE0, &qword_1C0981DD0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DE0, &qword_1C0981DD0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060EB54(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DeviceProperty();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DeviceProperty, sub_1C05800E0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DD8, &qword_1C0981DC8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DD8, &qword_1C0981DC8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060ED24(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Size();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Size, sub_1C05800F8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DD0, &qword_1C0981DC0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DD0, &qword_1C0981DC0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060EEF4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_MeasurementUnitType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_MeasurementUnitType, sub_1C0580110);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DC0, &qword_1C0981DB0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DC0, &qword_1C0981DB0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F0C4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReminderList();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReminderList, sub_1C0580128);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DA0, &qword_1C0981D90);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DA0, &qword_1C0981D90);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F294(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReminderListType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReminderListType, sub_1C0580140);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D98, &qword_1C0981D88);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D98, &qword_1C0981D88);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F464(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonStock_StockType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonStock_StockType, sub_1C0580158);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D90, &qword_1C0981D80);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D90, &qword_1C0981D80);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F634(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Stock();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Stock, sub_1C0580170);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D88, &qword_1C0981D78);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D88, &qword_1C0981D78);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F804(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AppSection();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AppSection, sub_1C0580188);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D78, &qword_1C0981D68);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D78, &qword_1C0981D68);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F9D4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PhoneCall();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PhoneCall, sub_1C05801A0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D70, &qword_1C0981D60);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D70, &qword_1C0981D60);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060FBA4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Language();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Language, sub_1C05801B8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D68, &qword_1C0981D58);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D68, &qword_1C0981D58);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060FD74(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Locale();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Locale, sub_1C05801D0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D60, &qword_1C0981D50);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D60, &qword_1C0981D50);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060FF44(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_LocalisedString();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_LocalisedString, sub_1C05801E8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D58, &qword_1C0981D48);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D58, &qword_1C0981D48);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610114(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ProductCategory();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ProductCategory, sub_1C0580200);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D50, &qword_1C0981D40);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D50, &qword_1C0981D40);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06102E4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_NumberSign();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_NumberSign, sub_1C0580218);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D48, &qword_1C0981D38);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D48, &qword_1C0981D38);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06104B4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Utilities();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Utilities, sub_1C0580230);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D40, &qword_1C0981D30);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D40, &qword_1C0981D30);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610684(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PersonName();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PersonName, sub_1C0580248);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D30, &qword_1C0981D20);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D30, &qword_1C0981D20);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610854(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonNotification_NotificationAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonNotification_NotificationAttribute, sub_1C0580260);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D28, &qword_1C0981D18);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D28, &qword_1C0981D18);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610A24(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonPhoneCall_PhoneCallAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonPhoneCall_PhoneCallAttribute, sub_1C0580278);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D20, &qword_1C0981D10);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D20, &qword_1C0981D10);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610BF4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ActivationValue();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ActivationValue, sub_1C0580290);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D18, &qword_1C0981D08);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D18, &qword_1C0981D08);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610DC4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SettingValueType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SettingValueType, sub_1C05802A8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D10, &qword_1C0981D00);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          v7 = *(v2 + 16);
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D10, &qword_1C0981D00);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}