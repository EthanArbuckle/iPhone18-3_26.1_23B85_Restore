uint64_t sub_1BDA58908@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BillingAddressEditor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = *a1;
  type metadata accessor for AddressEditingModel();
  sub_1BDA5AB04(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3C4();
  sub_1BE048964();

  sub_1BDA5A424(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BillingAddressEditor);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1BDA59EA0(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  type metadata accessor for PostalAddressEditingModel();
  sub_1BDA5AB04(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel);
  result = sub_1BE04E954();
  *a2 = v8;
  *(a2 + 8) = result;
  *(a2 + 16) = v12;
  *(a2 + 24) = sub_1BDA5AA78;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_1BDA58B0C()
{
  type metadata accessor for BillingAddressEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BDA58B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BillingAddressEditor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_1BDA5A424(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BillingAddressEditor);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BDA59EA0(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  result = swift_getKeyPath();
  *a2 = sub_1BDA5A3A4;
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_1BD5AE8A8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1BDA58CB8(void *a1)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v2 = [a1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v3 = sub_1BE052744();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_16:

LABEL_17:
    type metadata accessor for BillingAddressEditor();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    return sub_1BE0516B4();
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFB40900](0, v3);
LABEL_7:
    v6 = v5;

    v7 = [v6 value];

    if (v7)
    {
      v8 = [a1 valueSource];
      if (v8)
      {
        v9 = v8;
        sub_1BE052434();
      }

      else
      {
        sub_1BE052434();
      }

      v10 = sub_1BD6B9D24();
      if (v10 == 10)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      type metadata accessor for BillingAddressEditor();
      type metadata accessor for AddressEditingModel();
      sub_1BDA5AB04(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
      sub_1BE04E3C4();
      sub_1BE048964();

      sub_1BD208DB0(v7, v11, [a1 formattingConstrained]);
    }

    goto LABEL_17;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA58F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA70);
  MEMORY[0x1EEE9AC00](v23, v3);
  v21 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB78);
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v6);
  v8 = &v21 - v7;
  v9 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39430);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  sub_1BE04FB14();
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D8);
  sub_1BDA5A260(&qword_1EBD394E0, &qword_1EBD394D8, &unk_1BE0D6B60, sub_1BD10DE58);
  sub_1BE04E424();
  sub_1BE04FB04();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467F8);
  sub_1BD4588AC();
  sub_1BE04E424();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v12 + 16))(v21, v15, v11);
  v18 = &v17[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v8, v22);
  sub_1BE04F854();
  (*(v5 + 8))(v8, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1BDA59284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for BillingAddressEditor();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v11);
  v13 = &v25 - v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394F0);
  MEMORY[0x1EEE9AC00](v26, v14);
  v16 = &v25 - v15;
  sub_1BE04E1C4();
  sub_1BDA5A424(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BillingAddressEditor);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_1BDA59EA0(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  MEMORY[0x1BFB3E7A0](v10, sub_1BDA5A38C, v18);
  type metadata accessor for AddressEditingModel();
  sub_1BDA5AB04(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v42[10] = v39;
  v42[11] = v40;
  v42[12] = v41;
  v42[6] = v35;
  v42[7] = v36;
  v42[8] = v37;
  v42[9] = v38;
  v42[2] = v31;
  v42[3] = v32;
  v42[4] = v33;
  v42[5] = v34;
  v42[0] = v29;
  v42[1] = v30;
  LOBYTE(a1) = sub_1BD4F7DB0();
  sub_1BD4FBC18(v42);
  if ((a1 & 1) != 0 && sub_1BD20B8F0())
  {
    v19 = sub_1BD20BAFC();

    v20 = v19 ^ 1;
  }

  else
  {

    v20 = 1;
  }

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20 & 1;
  (*(v25 + 32))(v16, v13, v27);
  v23 = &v16[*(v26 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_1BD10DF54;
  v23[2] = v22;
  sub_1BE052434();
  sub_1BD10DE58();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v16, &qword_1EBD394F0);
}

void sub_1BDA596EC(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for BillingAddressEditor() + 36));
  type metadata accessor for AddressEditingModel();
  sub_1BDA5AB04(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3C4();
  v2 = sub_1BD841B64();

  v1(v2);
}

id sub_1BDA597D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  v2 = type metadata accessor for BillingAddressEditor();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
  v10 = *(v27 - 8);
  v12 = MEMORY[0x1EEE9AC00](v27, v11);
  v14 = &v25 - v13;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8068], v5, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v6 + 8))(v9, v5);
    sub_1BDA5A424(v26, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BillingAddressEditor);
    v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v21 = swift_allocObject();
    v22 = sub_1BDA59EA0(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v29[0] = v17;
    v29[1] = v19;
    MEMORY[0x1EEE9AC00](v22, v23);
    *(&v25 - 4) = v29;
    *(&v25 - 3) = 0x6B72616D78;
    *(&v25 - 2) = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BE051704();

    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    v24 = v27;
    sub_1BE050DE4();

    return (*(v10 + 8))(v14, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA59BB4(uint64_t a1)
{
  v2 = type metadata accessor for BillingAddressEditor();
  type metadata accessor for AddressEditingModel();
  sub_1BDA5AB04(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3C4();
  v3 = *(a1 + *(v2 + 28));
  if (v3)
  {
    v4 = *(a1 + *(v2 + 28));
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    v3 = 0;
  }

  v5 = v3;
  sub_1BD84367C(v4);

  sub_1BE04E3C4();
  v6 = (a1 + *(v2 + 32));
  v15 = *(v6 + 4);
  v7 = v6[1];
  v14[0] = *v6;
  v14[1] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6[1];
  v11 = *v6;
  v12 = v8;
  v13 = *(v6 + 4);
  sub_1BE048964();
  sub_1BD10D494(v14, v10);
  sub_1BE04D8C4();
  sub_1BD841418();
}

unint64_t sub_1BDA59D68()
{
  result = qword_1EBD5CBF0;
  if (!qword_1EBD5CBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CBE8);
    sub_1BD0DE4F4(&qword_1EBD5CBF8, &qword_1EBD5CC00);
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CBF0);
  }

  return result;
}

unint64_t sub_1BDA59E4C()
{
  result = qword_1EBD5CC08;
  if (!qword_1EBD5CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CC08);
  }

  return result;
}

uint64_t sub_1BDA59EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BillingAddressEditor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BDA59F1C()
{
  result = qword_1EBD5CC18;
  if (!qword_1EBD5CC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CBC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CBB8);
    sub_1BE04FE84();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CBB0);
    sub_1BD0DE4F4(&qword_1EBD5CC10, &qword_1EBD5CBB0);
    swift_getOpaqueTypeConformance2();
    sub_1BDA5AB04(&qword_1EBD39E50, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CC18);
  }

  return result;
}

__n128 sub_1BDA5A0A4@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void sub_1BDA5A138(__int128 *a1)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  v7 = *(a1 + 4);
  sub_1BE048964();
  sub_1BD10D494(v8, v4);
  sub_1BE04D8C4();
  sub_1BD841418();
}

uint64_t sub_1BDA5A1E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BillingAddressEditor() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BDA58B80(v4, a1);
}

uint64_t sub_1BDA5A260(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BDA5AB04(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BDA5A3A4(void *a1)
{
  type metadata accessor for BillingAddressEditor();

  return sub_1BDA58CB8(a1);
}

uint64_t sub_1BDA5A424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA5A48C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_125()
{
  v1 = type metadata accessor for BillingAddressEditor();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = (v3 + v1[5]);
  v5 = type metadata accessor for AvailablePass(0);
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v4 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v4 + v5[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v4 + v5[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v4 + v5[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v29 = *(v21 - 8);
      v22 = *(v29 + 48);
      if (!v22(&v18[v20], 1, v21))
      {
        (*(v29 + 8))(&v18[v20], v21);
      }

      v23 = *(v19 + 32);
      if (!v22(&v18[v23], 1, v21))
      {
        (*(v29 + 8))(&v18[v23], v21);
      }
    }

    v24 = (v4 + v5[12]);
    if (*v24)
    {
    }

    v25 = (v4 + v5[13]);
    if (*v25)
    {
    }
  }

  v26 = (v3 + v1[6]);
  if (*v26)
  {
  }

  v27 = v3 + v1[8];

  sub_1BD0D45CC();

  return swift_deallocObject();
}

uint64_t sub_1BDA5AA90(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BillingAddressEditor() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BDA5AB04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BDA5AB50()
{
  result = qword_1EBD5CC48;
  if (!qword_1EBD5CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CC48);
  }

  return result;
}

unint64_t sub_1BDA5ABA8()
{
  result = qword_1EBD5CC50;
  if (!qword_1EBD5CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CC50);
  }

  return result;
}

uint64_t sub_1BDA5AC80()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB908);
  __swift_project_value_buffer(v9, qword_1EBDAB908);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BDA5AE94(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_1BE04CFC4();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = sub_1BE04CFE4();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA5AFBC, 0, 0);
}

uint64_t sub_1BDA5AFBC()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:GetPassesIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[28] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = [objc_opt_self() sharedInstance];
  v0[29] = v12;
  if (v12)
  {
    v13 = v12;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BDA5B2E8;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E10);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD038E38;
    v0[13] = &block_descriptor_247;
    v0[14] = v14;
    [v13 unexpiredPassesOrderedByGroup_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v0[19] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39268);
    sub_1BDA5BC48();
    sub_1BE048754();

    sub_1BDA5B76C();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1BDA5B2E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BDA5B3C8, 0, 0);
}

uint64_t sub_1BDA5B3C8()
{
  v1 = v0[29];
  v2 = v0[18];
  v0[30] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[31] = v3;
    *v3 = v0;
    v3[1] = sub_1BDA5B560;

    return sub_1BD0391EC(v2, 1);
  }

  else
  {
    v0[19] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39268);
    sub_1BDA5BC48();
    sub_1BE048754();

    sub_1BDA5B76C();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1BDA5B560(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BDA5B680, 0, 0);
}

uint64_t sub_1BDA5B680()
{
  v0[19] = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39268);
  sub_1BDA5BC48();
  sub_1BE048754();

  sub_1BDA5B76C();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BDA5B76C()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:GetPassesIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BDA5BA58@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD37088 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB908);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BDA5BB00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BDA5AE94(a1);
}

uint64_t sub_1BDA5BB98(uint64_t a1)
{
  v2 = sub_1BD15D2F0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BDA5BBE4()
{
  result = qword_1EBD5CC58;
  if (!qword_1EBD5CC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CC58);
  }

  return result;
}

unint64_t sub_1BDA5BC48()
{
  result = qword_1EBD5CC68;
  if (!qword_1EBD5CC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39268);
    sub_1BD030618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CC68);
  }

  return result;
}

uint64_t type metadata accessor for PeerPaymentAddMoneyRow()
{
  result = qword_1EBD5CC78;
  if (!qword_1EBD5CC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BDA5BD40()
{
  result = type metadata accessor for AvailablePass(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1BDA5BDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v2 = type metadata accessor for PeerPaymentAddMoneyRow();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v10 = *(v25 - 8);
  v12 = MEMORY[0x1EEE9AC00](v25, v11);
  v14 = &v23 - v13;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8050], v5, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v6 + 8))(v9, v5);
    v27 = v17;
    v28 = v19;
    sub_1BDA5C5E8(v24, &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v21 = swift_allocObject();
    sub_1BDA5C64C(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    sub_1BD0DDEBC();
    sub_1BE051744();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v22 = v25;
    sub_1BE050DE4();

    return (*(v10 + 8))(v14, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA5C0FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23[-v6];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23[-v10];
  sub_1BD6B2184(3, 2u, 0);
  v12 = PKPeerPaymentGetTopUpSensitiveURL();
  if (v12)
  {
    v13 = v12;
    sub_1BE04A9F4();

    v14 = sub_1BE04AA64();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = sub_1BE04AA64();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1BD226B4C(v7, v11);
  v15 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v15 setSensitive_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = sub_1BE052434();
  *(inited + 40) = v17;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  sub_1BD1AACF8(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD52080);
  v18 = sub_1BE052224();

  [v15 setFrontBoardOptions_];

  v19 = sub_1BDA5C44C();
  sub_1BD38F438(v11, v3);
  sub_1BE04AA64();
  v20 = *(v14 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v3, 1, v14) != 1)
  {
    v21 = sub_1BE04A9C4();
    (*(v20 + 8))(v3, v14);
  }

  PKPostOpenApplicationNotification(v19, v21, v15);

  return sub_1BD0DE53C(v11, &unk_1EBD3CF70);
}

id sub_1BDA5C44C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_1BDA5C710();
  sub_1BDA5C75C();
  v2 = sub_1BE052A34();

  v3 = sub_1BD961070(v2);

  if (v3)
  {
    if ([v3 delegate])
    {
      v4 = swift_dynamicCastObjCProtocolConditional();
      if (v4)
      {
        v5 = v4;
        if ([v4 respondsToSelector_])
        {
          v6 = [v5 window];

          swift_unknownObjectRelease();
          return v6;
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 0;
}

id sub_1BDA5C594@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5CC90);
  return sub_1BDA5BDC8(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BDA5C5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentAddMoneyRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA5C64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentAddMoneyRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA5C6B0()
{
  type metadata accessor for PeerPaymentAddMoneyRow();

  return sub_1BDA5C0FC();
}

unint64_t sub_1BDA5C710()
{
  result = qword_1EBD59BF0;
  if (!qword_1EBD59BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD59BF0);
  }

  return result;
}

unint64_t sub_1BDA5C75C()
{
  result = qword_1EBD5CCA0;
  if (!qword_1EBD5CCA0)
  {
    sub_1BDA5C710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CCA0);
  }

  return result;
}

uint64_t sub_1BDA5C7B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BDA5C818(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v3(v2);
  return sub_1BE04E8B4();
}

id sub_1BDA5C8E8()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EBDAB920 = result;
  return result;
}

void sub_1BDA5C91C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = v58[0];
  v7 = [v58[0] primaryString];
  [a1 setPrimaryString_];

  v8 = [v58[0] secondaryString];
  [a1 setSecondaryString_];

  v9 = [v58[0] tertiaryString];
  [a1 setTertiaryString_];

  v10 = [v58[0] badgeString];
  [a1 setBadgeString_];

  v11 = [v58[0] secondaryBadgeSymbol];
  [a1 setSecondaryBadgeSymbol_];

  [a1 setShowsDisclosureView_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  [a1 setPrimaryImage_];

  [a1 setStrokeImage_];
  v12 = [v58[0] preferredTransactionCategory];
  if (v12)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    if (qword_1EBD37090 != -1)
    {
      swift_once();
    }

    v14 = qword_1EBDAB920;
    v15 = [qword_1EBDAB920 objectForKey_];
    if (!v15)
    {
      v16 = [a1 traitCollection];
      PKTransactionCategoryImageSizeForTraitCollection(v16);

      PKUIScreenScale();
      v15 = PKMapsIconForMerchantCategory();
      if (v15)
      {
        [v14 setObject:v15 forKey:v13];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  [a1 setTransactionCategoryImage_];
  v17 = sub_1BD0E5E8C(0, &qword_1EBD43100);
  sub_1BE051224();
  v18 = sub_1BE052FE4();
  v19 = v18;
  if ([v58[0] shouldGrayValue])
  {
    sub_1BE051234();
    v19 = sub_1BE052FE4();
  }

  if ([v58[0] destructiveSecondaryString])
  {
    sub_1BE0513B4();
  }

  else
  {
    sub_1BE051234();
  }

  v20 = sub_1BE052FE4();
  [a1 setSecondaryColor_];

  v21 = [v58[0] valueString];
  if (v21)
  {
    v54 = v15;
    v55 = a4;
    v56 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v23 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v24 = MEMORY[0x1E69DB600];
    *(inited + 40) = v19;
    v25 = *v24;
    *(inited + 64) = v17;
    *(inited + 72) = v25;
    v26 = objc_opt_self();
    v27 = v23;
    v28 = v19;
    v29 = v25;
    v30 = [v26 clearColor];
    *(inited + 104) = v17;
    *(inited + 80) = v30;
    sub_1BD1ACD28(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF68);
    swift_arrayDestroy();
    if ([v6 shouldStrikeValue])
    {
      v31 = *MEMORY[0x1E69DB6B8];
      v58[3] = MEMORY[0x1E69E6530];
      v58[0] = 1;
      sub_1BD1B6140(v58, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DC518(v57, v31, isUniquelyReferenced_nonNull_native);
    }

    v33 = [v6 valueString];
    v18 = v56;
    if (!v33)
    {
      __break(1u);
      goto LABEL_34;
    }

    v34 = v33;
    v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    type metadata accessor for Key(0);
    sub_1BDA5D914(&qword_1EBD37B80, type metadata accessor for Key);
    v36 = sub_1BE052224();

    v37 = [v35 initWithString:v34 attributes:v36];

    [a1 setTransactionValueAttributedText_];
    v15 = v54;
    a4 = v55;
    v19 = v53;
  }

  v38 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
  if ([*(a4 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) transactionType] != 3)
  {
    goto LABEL_32;
  }

  v39 = [*(a4 + v38) peerPaymentCounterpartHandle];
  if (!v39)
  {
    goto LABEL_32;
  }

  v23 = v39;
  [a1 setShowsAvatarView_];
  v40 = [objc_opt_self() defaultContactResolver];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 contactForHandle_];

    if (v42)
    {
      v43 = [a1 avatarView];
      if (v43)
      {
        v44 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1BE0B7020;
        *(v45 + 32) = v42;
        sub_1BD0E5E8C(0, &qword_1EBD406E0);
        v46 = v19;
        v47 = v42;
        v48 = sub_1BE052724();

        [v44 setContacts_];

        v19 = v46;
      }

      v49 = [objc_opt_self() displayNameForCounterpartHandle:v23 contact:v42];

      if (v49)
      {
        [a1 setPrimaryString_];
LABEL_29:

        v6 = v42;
        v42 = v18;
        v18 = v19;
LABEL_31:
        v19 = v15;

        v15 = v6;
        v6 = v42;
LABEL_32:

        return;
      }
    }

    else
    {

      v42 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
      [v42 setContactType_];
      v50 = [a1 avatarView];
      if (v50)
      {
        v51 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1BE0B7020;
        *(v52 + 32) = v42;
        sub_1BD0E5E8C(0, &qword_1EBD406E0);
        v42 = v42;
        v49 = sub_1BE052724();

        [v51 setContacts_];

        v6 = v51;
        goto LABEL_29;
      }
    }

    v49 = v15;
    v15 = v19;
    goto LABEL_31;
  }

LABEL_34:

  __break(1u);
}

uint64_t sub_1BDA5D214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA5D95C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BDA5D278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA5D95C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BDA5D2DC()
{
  sub_1BDA5D95C();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BDA5D34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[0] = a3;
  v21[1] = a6;
  v21[10] = MEMORY[0x1E6981E70];
  v21[11] = a4;
  v21[12] = MEMORY[0x1E6981E60];
  v21[13] = a5;
  sub_1BE04E8F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v10 = sub_1BE051874();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v21 - v17;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a1;
  v21[7] = a2;
  v21[8] = v21[0];
  sub_1BE051CD4();
  sub_1BE051864();
  swift_getWitnessTable();
  sub_1BD147308(v14);
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_1BD147308(v18);
  return (v19)(v18, v10);
}

uint64_t sub_1BDA5D578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v30 = a1;
  v31 = a6;
  v36 = MEMORY[0x1E6981E70];
  v37 = a4;
  v38 = MEMORY[0x1E6981E60];
  v39 = a5;
  v7 = sub_1BE04E8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - v10;
  v12 = sub_1BE04EBD4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v28 - v19;
  sub_1BDA5C818(a2, v29);
  WitnessTable = swift_getWitnessTable();
  sub_1BE050FE4();
  (*(v8 + 8))(v11, v7);
  v35[2] = WitnessTable;
  v35[3] = MEMORY[0x1E697E5C0];
  v22 = swift_getWitnessTable();
  sub_1BD147308(v16);
  v23 = *(v13 + 8);
  v23(v16, v12);
  type metadata accessor for TransactionPresentation();
  sub_1BDA5D914(&qword_1EBD3B840, type metadata accessor for TransactionPresentation);
  sub_1BE048964();
  v24 = sub_1BE04E954();
  v26 = v25;
  sub_1BD6AE91C();
  (*(v13 + 16))(v16, v20, v12);
  v35[0] = v24;
  v35[1] = v26;
  v36 = v16;
  v37 = v35;
  sub_1BE048964();
  v34[0] = v12;
  v34[1] = &type metadata for TransactionView;
  v32 = v22;
  v33 = sub_1BD628C9C();
  sub_1BD13A4C4(&v36, 2uLL, v34);

  v23(v20, v12);

  return (v23)(v16, v12);
}

uint64_t sub_1BDA5D914(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BDA5D95C()
{
  result = qword_1EBD5CE00;
  if (!qword_1EBD5CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CE00);
  }

  return result;
}

PassKitUI::ProvisioningScreen_optional __swiftcall ProvisioningScreen.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BE053A44();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ProvisioningScreen.rawValue.getter()
{
  result = 0x6C616E7265747845;
  switch(*v0)
  {
    case 1:
    case 5:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x666E492065726F4DLL;
      break;
    case 3:
      result = 0x6163696669726556;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x66654420656B614DLL;
      break;
    case 8:
      result = 0x6F726E4520504D41;
      break;
    case 9:
      result = 0x6F69746163756445;
      break;
    case 0xA:
      result = 0x6375644520726143;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0x57206F5420646441;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BDA5DBE0()
{
  result = qword_1EBD5CE08;
  if (!qword_1EBD5CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CE08);
  }

  return result;
}

uint64_t sub_1BDA5DC34()
{
  sub_1BE053D04();
  ProvisioningScreen.rawValue.getter();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BDA5DC9C()
{
  ProvisioningScreen.rawValue.getter();
  sub_1BE052524();
}

uint64_t sub_1BDA5DD00()
{
  sub_1BE053D04();
  ProvisioningScreen.rawValue.getter();
  sub_1BE052524();

  return sub_1BE053D64();
}

unint64_t sub_1BDA5DD70@<X0>(unint64_t *a1@<X8>)
{
  result = ProvisioningScreen.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BDA5DD98()
{
  v0 = ProvisioningScreen.rawValue.getter();
  v2 = v1;
  if (v0 == ProvisioningScreen.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BE053B84();
  }

  return v5 & 1;
}

unint64_t sub_1BDA5DE38()
{
  result = qword_1EBD5CE10;
  if (!qword_1EBD5CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CE10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisioningScreen(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProvisioningScreen(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BDA5E0AC()
{
  result = qword_1EBD5CE20;
  if (!qword_1EBD5CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CE20);
  }

  return result;
}

void sub_1BDA5E148()
{
  sub_1BDA5E244();
  if (v0 <= 0x3F)
  {
    sub_1BD9D3DC0(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1BD9D3DC0(319, &qword_1EBD3A738, MEMORY[0x1E6969BC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BDA5E244()
{
  result = qword_1EBD5AF88;
  if (!qword_1EBD5AF88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD5AF88);
  }

  return result;
}

unint64_t sub_1BDA5E2A4()
{
  result = qword_1EBD5CE38;
  if (!qword_1EBD5CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CE38);
  }

  return result;
}

id sub_1BDA5E2F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v8, *MEMORY[0x1E69B8098], v3, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v4 + 8))(v8, v3);
    v14 = sub_1BDA5E4AC();
    v16 = v15;
    v17 = *(v1 + 24);
    v18 = sub_1BE04F4E4();
    KeyPath = swift_getKeyPath();
    v21 = 0;
    result = sub_1BE051234();
    v20 = v21;
    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14;
    *(a1 + 24) = v16;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = v17;
    *(a1 + 65) = *v23;
    *(a1 + 68) = *&v23[3];
    *(a1 + 72) = v18;
    *(a1 + 80) = KeyPath;
    *(a1 + 88) = v20;
    *(a1 + 92) = *&v22[3];
    *(a1 + 89) = *v22;
    *(a1 + 96) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA5E4AC()
{
  v1 = sub_1BE04BD74();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v59 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04AD24();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AD34();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04AC04();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04AC14();
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04AD84();
  v52 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v46 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v46 - v28;
  v30 = *(type metadata accessor for DeferredPaymentRequestEarlyCancellationRow(0) + 28);
  v51 = v0;
  sub_1BD0DE19C(v0 + v30, v29, &unk_1EBD39970);
  v31 = sub_1BE04AF64();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v29, 1, v31) == 1)
  {
    sub_1BD0DE53C(v29, &unk_1EBD39970);
    return 0;
  }

  else
  {
    sub_1BE04ABF4();
    sub_1BE04ABE4();
    (*(v49 + 8))(v13, v50);
    sub_1BE04AB84();
    (*(v47 + 8))(v17, v48);
    v35 = v57;
    v34 = v58;
    v36 = v54;
    (*(v57 + 104))(v54, *MEMORY[0x1E6969290], v58);
    v37 = v53;
    sub_1BE04AD14();
    (*(v35 + 8))(v36, v34);
    sub_1BE04AD74();
    (*(v55 + 8))(v37, v56);
    v38 = *(v52 + 8);
    v38(v21, v18);
    sub_1BD7C6EE0();
    sub_1BE04AF44();
    v38(v25, v18);
    (*(v32 + 8))(v29, v31);
    v40 = v62;
    v39 = v63;
    v42 = v59;
    v41 = v60;
    v43 = v61;
    (*(v60 + 104))(v59, *MEMORY[0x1E69B8098], v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1BE0B69E0;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = sub_1BD110550();
    *(v44 + 32) = v40;
    *(v44 + 40) = v39;
    swift_bridgeObjectRetain_n();
    v45 = sub_1BE04B714();
    swift_bridgeObjectRelease_n();

    (*(v41 + 8))(v42, v43);
    return v45;
  }
}

uint64_t sub_1BDA5EB1C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v214 = a2;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CE58);
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213, v3);
  v204 = &v177 - v4;
  v5 = sub_1BE04A994();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v203 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1BE04B3B4();
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201, v8);
  v202 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B2F4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v196 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v193 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E930);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v189 = &v177 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B4D0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v206 = &v177 - v21;
  v198 = sub_1BE04AD84();
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198, v22);
  v194 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v215 = &v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v185 = &v177 - v29;
  v209 = type metadata accessor for DeferredPaymentRequestEarlyCancellationRow(0);
  MEMORY[0x1EEE9AC00](v209, v30);
  v208 = (&v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32, v33);
  v188 = &v177 - v34;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CE60);
  MEMORY[0x1EEE9AC00](v186, v35);
  v191 = &v177 - v36;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CE68);
  MEMORY[0x1EEE9AC00](v190, v37);
  v199 = &v177 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v187 = &v177 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v195 = &v177 - v44;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47490);
  MEMORY[0x1EEE9AC00](v181, v45);
  v184 = &v177 - v46;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47498);
  MEMORY[0x1EEE9AC00](v183, v47);
  v192 = &v177 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v182 = &v177 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v207 = &v177 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v205 = &v177 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v177 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CE70);
  MEMORY[0x1EEE9AC00](v62 - 8, v63);
  v211 = &v177 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v177 - v67;
  v69 = *(a1 + 16);
  v70 = type metadata accessor for DeferredPaymentRequestSummaryRows(0);
  v71 = v70[10];
  v72 = (a1 + v70[9]);
  v73 = v72[1];
  v219 = *v72;
  v74 = 1;
  if (*(a1 + v71))
  {
    v75 = 2;
  }

  else
  {
    v75 = 1;
  }

  v218 = v75;
  v216 = v69;
  v217 = v73;
  sub_1BE048C84();
  v210 = sub_1BE050224();
  sub_1BE04E1F4();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v236 = 0;
  v84 = v70[7];
  sub_1BD0DE19C(a1 + v84, v61, &unk_1EBD39970);
  v85 = sub_1BE04AF64();
  v86 = (*(*(v85 - 8) + 48))(v61, 1, v85);
  sub_1BD0DE53C(v61, &unk_1EBD39970);
  if (v86 != 1)
  {
    v178 = v79;
    v179 = v77;
    v180 = v68;
    v87 = v184;
    sub_1BE051984();
    v88 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v97 = &v87[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8) + 36)];
    *v97 = v88;
    *(v97 + 1) = v90;
    *(v97 + 2) = v92;
    *(v97 + 3) = v94;
    *(v97 + 4) = v96;
    v97[40] = 0;
    v98 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v99 = &v87[*(v181 + 36)];
    *v99 = v98;
    *(v99 + 1) = v100;
    *(v99 + 2) = v101;
    *(v99 + 3) = v102;
    *(v99 + 4) = v103;
    v99[40] = 0;
    v104 = sub_1BE050224();
    sub_1BE04E1F4();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v113 = v87;
    v114 = v182;
    sub_1BD0DE204(v113, v182, &qword_1EBD47490);
    v115 = v114 + *(v183 + 36);
    *v115 = v104;
    *(v115 + 8) = v106;
    *(v115 + 16) = v108;
    *(v115 + 24) = v110;
    *(v115 + 32) = v112;
    *(v115 + 40) = 0;
    sub_1BD0DE204(v114, v207, &qword_1EBD47498);
    v116 = v205;
    sub_1BD0DE19C(a1 + v84, v205, &unk_1EBD39970);
    v117 = v185;
    sub_1BD0DE19C(a1 + v70[8], v185, &unk_1EBD3D260);
    v118 = v208;
    v119 = v216;
    *v208 = v216;
    v120 = v209;
    sub_1BD0DE19C(v116, v118 + *(v209 + 28), &unk_1EBD39970);
    sub_1BD0DE19C(v117, v118 + *(v120 + 32), &unk_1EBD3D260);
    v121 = v217;
    v118[1] = v219;
    v118[2] = v121;
    *(v118 + 24) = v218;
    v122 = v119;
    sub_1BE048C84();
    v123 = v206;
    sub_1BE04AB34();
    v124 = sub_1BE04AB54();
    (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
    v125 = v189;
    sub_1BE04AB14();
    v126 = sub_1BE04AB24();
    (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
    sub_1BE04B0A4();
    sub_1BE04B2A4();
    v127 = v117;
    v128 = v215;
    sub_1BD0DE19C(v117, v215, &unk_1EBD3D260);
    v129 = v200;
    v130 = *(v200 + 48);
    v131 = v128;
    v132 = v201;
    if (v130(v131, 1, v201) == 1)
    {
      sub_1BE04B384();
      v133 = v130(v215, 1, v132);
      v134 = v180;
      if (v133 != 1)
      {
        sub_1BD0DE53C(v215, &unk_1EBD3D260);
      }
    }

    else
    {
      (*(v129 + 32))(v202, v215, v132);
      v134 = v180;
    }

    sub_1BE04A984();
    v135 = v194;
    sub_1BE04AB74();
    sub_1BD0DE53C(v127, &unk_1EBD3D260);
    sub_1BD0DE53C(v205, &unk_1EBD39970);
    v136 = v208;
    (*(v197 + 32))(v208 + *(v209 + 36), v135, v198);
    v137 = v188;
    sub_1BDA5FDA0(v136, v188);
    LOBYTE(v136) = sub_1BE050224();
    sub_1BE04E1F4();
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v146 = v137;
    v147 = v191;
    sub_1BDA5FDA0(v146, v191);
    v148 = v147 + *(v186 + 36);
    *v148 = v136;
    *(v148 + 8) = v139;
    *(v148 + 16) = v141;
    *(v148 + 24) = v143;
    *(v148 + 32) = v145;
    *(v148 + 40) = 0;
    LOBYTE(v136) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v156 = v155;
    v157 = v187;
    sub_1BD0DE204(v147, v187, &qword_1EBD5CE60);
    v158 = v157 + *(v190 + 36);
    *v158 = v136;
    *(v158 + 8) = v150;
    *(v158 + 16) = v152;
    *(v158 + 24) = v154;
    *(v158 + 32) = v156;
    *(v158 + 40) = 0;
    v159 = v195;
    sub_1BD0DE204(v157, v195, &qword_1EBD5CE68);
    v160 = v207;
    v161 = v192;
    sub_1BD0DE19C(v207, v192, &qword_1EBD47498);
    v162 = v199;
    sub_1BD0DE19C(v159, v199, &qword_1EBD5CE68);
    v163 = v204;
    sub_1BD0DE19C(v161, v204, &qword_1EBD47498);
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CE80);
    sub_1BD0DE19C(v162, v163 + *(v164 + 48), &qword_1EBD5CE68);
    sub_1BD0DE53C(v159, &qword_1EBD5CE68);
    sub_1BD0DE53C(v160, &qword_1EBD47498);
    sub_1BD0DE53C(v162, &qword_1EBD5CE68);
    sub_1BD0DE53C(v161, &qword_1EBD47498);
    sub_1BD0DE204(v163, v134, &qword_1EBD5CE58);
    v74 = 0;
    v68 = v134;
    v77 = v179;
    v79 = v178;
  }

  (*(v212 + 56))(v68, v74, 1, v213);
  v165 = v211;
  sub_1BD0DE19C(v68, v211, &qword_1EBD5CE70);
  v166 = v216;
  *&v220 = v216;
  v167 = v218;
  v168 = v219;
  *(&v220 + 1) = v219;
  v169 = v217;
  *&v221 = v217;
  BYTE8(v221) = v218;
  HIDWORD(v221) = *&v235[3];
  *(&v221 + 9) = *v235;
  v170 = v210;
  LOBYTE(v222) = v210;
  *(&v222 + 1) = *v234;
  DWORD1(v222) = *&v234[3];
  *(&v222 + 1) = v77;
  *v223 = v79;
  *&v223[8] = v81;
  *&v223[16] = v83;
  v223[24] = 0;
  v171 = v220;
  v172 = v221;
  v173 = v214;
  *(v214 + 57) = *&v223[9];
  v174 = *v223;
  v173[2] = v222;
  v173[3] = v174;
  *v173 = v171;
  v173[1] = v172;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CE78);
  sub_1BD0DE19C(v165, v173 + *(v175 + 48), &qword_1EBD5CE70);
  sub_1BD0DE19C(&v220, v224, &qword_1EBD428D8);
  sub_1BD0DE53C(v68, &qword_1EBD5CE70);
  sub_1BD0DE53C(v165, &qword_1EBD5CE70);
  v224[0] = v166;
  v224[1] = v168;
  v224[2] = v169;
  v225 = v167;
  *v226 = *v235;
  *&v226[3] = *&v235[3];
  v227 = v170;
  *v228 = *v234;
  *&v228[3] = *&v234[3];
  v229 = v77;
  v230 = v79;
  v231 = v81;
  v232 = v83;
  v233 = 0;
  return sub_1BD0DE53C(v224, &qword_1EBD428D8);
}

uint64_t sub_1BDA5FC34@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CE40);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v19 - v5;
  *v6 = sub_1BE04F7C4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CE48);
  sub_1BDA5EB1C(v1, &v6[*(v7 + 44)]);
  v8 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1BD0DE204(v6, a1, &qword_1EBD5CE40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CE50);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1BDA5FDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeferredPaymentRequestEarlyCancellationRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BDA5FE2C()
{
  sub_1BDA5E244();
  if (v0 <= 0x3F)
  {
    sub_1BD9D3DC0(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1BD9D3DC0(319, &qword_1EBD3A738, MEMORY[0x1E6969BC0]);
      if (v2 <= 0x3F)
      {
        sub_1BE04AD84();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1BDA5FF30()
{
  result = qword_1EBD5CE98;
  if (!qword_1EBD5CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CE50);
    sub_1BDA5FFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CE98);
  }

  return result;
}

unint64_t sub_1BDA5FFBC()
{
  result = qword_1EBD5CEA0;
  if (!qword_1EBD5CEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CEA0);
  }

  return result;
}

uint64_t sub_1BDA60068()
{
  v1 = [v0 paymentPass];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = [v0 paymentPass];
  if (v3 && (v4 = v3, v5 = [v3 devicePaymentApplications], v4, v5))
  {
    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0);
    v6 = sub_1BE052A34();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  sub_1BD1DA444(v6);

  sub_1BD0E5E8C(0, &qword_1EBD43BA0);
  v7 = sub_1BE052724();

  v8 = [v2 sortedPaymentApplications:v7 ascending:1];

  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1BE052744();

  return v9;
}

uint64_t sub_1BDA601E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CEA8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v30 - v13;
  *v14 = sub_1BE04F784();
  *(v14 + 1) = 0;
  v14[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CEB0);
  v32 = v1;
  sub_1BDA61AC0(v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CEB8);
  sub_1BD0DE4F4(&qword_1EBD5CEC0, &qword_1EBD5CEB8);
  sub_1BDA67768(&qword_1EBD3C0D8, &unk_1EBD5BB60, &unk_1BE0C4580, sub_1BD1103C8);
  sub_1BE051A54();
  v34 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v15 = 0;
  if (v33 == 1)
  {
    v15 = *v2;
    v16 = [v15 paymentPass];
    if (v16 && (v17 = v16, v18 = [v16 devicePaymentApplications], v17, v18))
    {
      sub_1BD0E5E8C(0, &qword_1EBD43BA0);
      sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0);
      v19 = sub_1BE052A34();

      if ((v19 & 0xC000000000000001) == 0)
      {
LABEL_5:
        v20 = *(v19 + 16);
        goto LABEL_8;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E7CD0];
      if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) == 0)
      {
        goto LABEL_5;
      }
    }

    v20 = sub_1BE053704();
LABEL_8:

    if (v20 < 2)
    {

      v15 = 0;
    }

    else
    {
      v21 = v15;
    }
  }

  v22 = *v2;
  v23 = *(v2 + 24);
  sub_1BD0DE19C(v14, v10, &qword_1EBD5CEA8);
  v24 = v31;
  sub_1BD0DE19C(v10, v31, &qword_1EBD5CEA8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CEC8);
  *(v24 + *(v25 + 48)) = v15;
  v26 = (v24 + *(v25 + 64));
  *v26 = v22;
  v26[1] = v23;
  v26[2] = 32;
  v27 = v22;
  swift_retain_n();
  v28 = v27;
  sub_1BD0DE53C(v14, &qword_1EBD5CEA8);

  return sub_1BD0DE53C(v10, &qword_1EBD5CEA8);
}

uint64_t sub_1BDA605C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CED0);
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v76 = &v70 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CED8);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v6);
  v71 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CEE0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v75 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v70 - v13;
  v72 = sub_1BE051994();
  v15 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CEE8);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v82 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v80 = &v70 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CEF0);
  v78 = *(v29 - 8);
  v79 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v81 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v70 - v34;
  v87 = a1;
  v86 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CCB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465F0);
  sub_1BD0DE4F4(&qword_1EBD4CCC0, &qword_1EBD4CCB8);
  sub_1BD4578C0();
  v77 = v35;
  sub_1BE04E844();
  v89 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v88 == 1)
  {
    sub_1BE051984();
    v36 = [objc_opt_self() sharedService];
    v37 = PKVirtualCardEnabledWithWebService();

    if (v37 && (v38 = *a1, [*a1 supportsVirtualCardNumber]) && !objc_msgSend(v38, sel_passActivationState))
    {
      v40 = v18;
      MEMORY[0x1EEE9AC00](0, v39);
      *(&v70 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF08);
      sub_1BD0DE4F4(&qword_1EBD5CF10, &qword_1EBD5CF08);
      v68 = v71;
      sub_1BE051A44();
      v43 = v73;
      v69 = v74;
      (*(v73 + 32))(v14, v68, v74);
      v42 = v69;
      v41 = 0;
    }

    else
    {
      v40 = v18;
      v41 = 1;
      v42 = v74;
      v43 = v73;
    }

    v44 = v14;
    (*(v43 + 56))(v14, v41, 1, v42);
    v45 = *a1;
    v46 = *(v15 + 16);
    v47 = v40;
    v70 = v22;
    v48 = v22;
    v49 = v72;
    v46(v40, v48, v72);
    v50 = v14;
    v51 = v75;
    sub_1BD0DE19C(v50, v75, &qword_1EBD5CEE0);
    v52 = v76;
    v46(v76, v47, v49);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF00);
    sub_1BD0DE19C(v51, v52 + *(v53 + 48), &qword_1EBD5CEE0);
    *(v52 + *(v53 + 64)) = v45;
    v54 = v45;
    sub_1BD0DE53C(v44, &qword_1EBD5CEE0);
    v55 = *(v15 + 8);
    v55(v70, v49);

    sub_1BD0DE53C(v51, &qword_1EBD5CEE0);
    v55(v47, v49);
    v56 = v80;
    sub_1BD0DE204(v52, v80, &qword_1EBD5CED0);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v56 = v80;
  }

  (*(v83 + 56))(v56, v57, 1, v84);
  v59 = v77;
  v58 = v78;
  v60 = *(v78 + 16);
  v61 = v81;
  v62 = v79;
  v60(v81, v77, v79);
  v63 = v82;
  sub_1BD0DE19C(v56, v82, &qword_1EBD5CEE8);
  v64 = v85;
  v60(v85, v61, v62);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CEF8);
  sub_1BD0DE19C(v63, &v64[*(v65 + 48)], &qword_1EBD5CEE8);
  sub_1BD0DE53C(v56, &qword_1EBD5CEE8);
  v66 = *(v58 + 8);
  v66(v59, v62);
  sub_1BD0DE53C(v63, &qword_1EBD5CEE8);
  return (v66)(v61, v62);
}

uint64_t sub_1BDA60E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46608);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12[-v5];
  v7 = *a1;
  v15 = *(a1 + 32);
  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = *(a1 + 32);
  v13 = a1;
  v10 = v7;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(&v15, v14, &qword_1EBD54350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
  sub_1BD170E70();
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD46600, &qword_1EBD46608);
  sub_1BE050DE4();

  return (*(v3 + 8))(v6, v2);
}

id sub_1BDA61034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v38 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v13 = *MEMORY[0x1E69B80F0];
  v14 = *(v5 + 104);
  if (v33 == 1)
  {
    v14(v12, v13, v4);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v19 = v18;

      (*(v5 + 8))(v12, v4);
      *&v38 = v17;
      *(&v38 + 1) = v19;
      sub_1BD0DDEBC();
      v33 = sub_1BE0506C4();
      v34 = v20;
      v35 = v21 & 1;
      v36 = v22;
      v37 = 0;
LABEL_6:
      result = sub_1BE04F9A4();
      v30 = v39;
      v31 = v40;
      *a2 = v38;
      *(a2 + 16) = v30;
      *(a2 + 32) = v31;
      return result;
    }

    __break(1u);
  }

  else
  {
    v14(v8, v13, v4);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v26 = v25;

      (*(v5 + 8))(v8, v4);
      *&v38 = v24;
      *(&v38 + 1) = v26;
      sub_1BD0DDEBC();
      v33 = sub_1BE0506C4();
      v34 = v28;
      v35 = v27 & 1;
      v36 = v29;
      v37 = 1;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

id sub_1BDA612D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v72 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v73 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = &v60 - v7;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v68 = *(v16 - 8);
  v69 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v70 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v63 = &v60 - v21;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v60 - v25;
  v27 = *(v9 + 104);
  v65 = *MEMORY[0x1E69B80F0];
  v64 = v27;
  v27(v15, v24);
  result = PKPassKitBundle();
  if (result)
  {
    v29 = result;
    v30 = sub_1BE04B6F4();
    v32 = v31;

    v61 = *(v9 + 8);
    v62 = v8;
    v61(v15, v8);
    *&v76 = v30;
    *(&v76 + 1) = v32;
    sub_1BD0DDEBC();
    v33 = sub_1BE0506C4();
    v35 = v34;
    *&v76 = v33;
    *(&v76 + 1) = v34;
    v37 = v36 & 1;
    v77 = v36 & 1;
    v78 = v38;
    sub_1BE052434();
    v67 = v26;
    sub_1BE050DE4();

    sub_1BD0DDF10(v33, v35, v37);

    v39 = v74;
    v76 = *(v74 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if (v75)
    {
      v40 = 1;
      v41 = v71;
LABEL_6:
      v55 = v67;
      (*(v68 + 56))(v41, v40, 1, v69);
      v56 = v70;
      sub_1BD0DE19C(v55, v70, &qword_1EBD452C0);
      v57 = v73;
      sub_1BD0DE19C(v41, v73, &unk_1EBD5BB60);
      v58 = v72;
      sub_1BD0DE19C(v56, v72, &qword_1EBD452C0);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228);
      sub_1BD0DE19C(v57, v58 + *(v59 + 48), &unk_1EBD5BB60);
      sub_1BD0DE53C(v41, &unk_1EBD5BB60);
      sub_1BD0DE53C(v55, &qword_1EBD452C0);
      sub_1BD0DE53C(v57, &unk_1EBD5BB60);
      return sub_1BD0DE53C(v56, &qword_1EBD452C0);
    }

    [*v39 isAppleCardPass];
    v42 = v66;
    v43 = v62;
    v64(v66, v65, v62);
    result = PKPassKitBundle();
    if (result)
    {
      v44 = result;
      v45 = sub_1BE04B6F4();
      v47 = v46;

      v61(v42, v43);
      *&v76 = v45;
      *(&v76 + 1) = v47;
      v48 = sub_1BE0506C4();
      v50 = v49;
      *&v76 = v48;
      *(&v76 + 1) = v49;
      v52 = v51 & 1;
      v77 = v51 & 1;
      v78 = v53;
      sub_1BE052434();
      v54 = v63;
      sub_1BE050DE4();

      sub_1BD0DDF10(v48, v50, v52);

      v41 = v71;
      sub_1BD0DE204(v54, v71, &qword_1EBD452C0);
      v40 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA618B8@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_1BE051994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = v13;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BDA67270(v16, v14, v15, &v28);
  sub_1BE051984();
  v17 = *(v5 + 16);
  v17(v8, v12, v4);
  v18 = v32;
  v19 = v33;
  v36[4] = v32;
  v36[5] = v33;
  v20 = v35;
  v36[6] = v34;
  v36[7] = v35;
  v21 = v28;
  v22 = v29;
  v36[0] = v28;
  v36[1] = v29;
  v23 = v30;
  v24 = v31;
  v36[2] = v30;
  v36[3] = v31;
  a2[6] = v34;
  a2[7] = v20;
  a2[4] = v18;
  a2[5] = v19;
  a2[2] = v23;
  a2[3] = v24;
  *a2 = v21;
  a2[1] = v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF18);
  v17(a2 + *(v25 + 48), v8, v4);
  sub_1BDA673F8(v36, v37);
  v26 = *(v5 + 8);
  v26(v12, v4);
  v26(v8, v4);
  v37[4] = v32;
  v37[5] = v33;
  v37[6] = v34;
  v37[7] = v35;
  v37[0] = v28;
  v37[1] = v29;
  v37[2] = v30;
  v37[3] = v31;
  return sub_1BDA67430(v37);
}

id sub_1BDA61AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v38 - v12;
  v42 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v45 & 1) != 0 || ([*a1 isAppleCardPass])
  {
    v14 = 1;
    return (*(v10 + 56))(a2, v14, 1, v9);
  }

  v39 = v13;
  v40 = v9;
  v41 = a2;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80F0], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v5 + 8))(v8, v4);
    *&v42 = v17;
    *(&v42 + 1) = v19;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    v24 = v23;
    sub_1BE0502A4();
    v25 = sub_1BE0505F4();
    v27 = v26;
    v29 = v28;

    sub_1BD0DDF10(v20, v22, v24 & 1);

    sub_1BE051494();
    v30 = sub_1BE050564();
    v32 = v31;
    LOBYTE(v17) = v33;
    v35 = v34;

    sub_1BD0DDF10(v25, v27, v29 & 1);

    *&v42 = v30;
    *(&v42 + 1) = v32;
    v36 = v17 & 1;
    v43 = v17 & 1;
    v44 = v35;
    sub_1BE052434();
    v37 = v39;
    sub_1BE050DE4();

    sub_1BD0DDF10(v30, v32, v36);

    a2 = v41;
    sub_1BD0DE204(v37, v41, &qword_1EBD452C0);
    v14 = 0;
    v9 = v40;
    return (*(v10 + 56))(a2, v14, 1, v9);
  }

  __break(1u);
  return result;
}

id sub_1BDA61EA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFB0);
  v164 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v159 = &v131 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFB8);
  v158 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v142 = &v131 - v8;
  v141 = sub_1BE051994();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v9);
  v139 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v149 = &v131 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFC0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v157 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v163 = &v131 - v19;
  v20 = sub_1BE04FF64();
  v154 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v152 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1BE04BD74();
  v155 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166, v23);
  v143 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v144 = &v131 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v131 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v131 - v34;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFC8);
  v151 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v36);
  v38 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v131 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFD0);
  v160 = *(v43 - 8);
  v161 = v43;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v131 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v131 - v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  v150 = &v131 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFD8);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v156 = &v131 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57, v58);
  v167 = &v131 - v60;
  v162 = a1;
  v61 = [a1 paymentPass];
  if (v61)
  {
    v136 = v38;
    v137 = v50;
    v138 = v46;
    v62 = v61;
    v63 = PKSanitizedPrimaryAccountRepresentationForPass();
    v148 = v3;
    v147 = v6;
    v146 = v62;
    v145 = v20;
    if (v63)
    {
      v64 = v63;
      v134 = sub_1BE052434();
      v135 = v65;

      v66 = *MEMORY[0x1E69B80F0];
      v67 = v155;
      v68 = *(v155 + 104);
      v69 = v166;
      v68(v35, v66, v166);
      result = PKPassKitBundle();
      if (result)
      {
        v71 = result;
        v132 = sub_1BE04B6F4();
        v133 = v72;

        v73 = *(v67 + 8);
        v73(v35, v69);
        v68(v31, v66, v69);
        result = PKPassKitBundle();
        if (result)
        {
          v74 = result;
          v75 = sub_1BE04B6F4();
          v77 = v76;

          v73(v31, v69);
          v168 = v132;
          v169 = v133;
          v170 = v75;
          v171 = v77;
          v172 = v134;
          v173 = v135;
          v78 = v152;
          sub_1BE04FF54();
          v79 = sub_1BDA677E4();
          sub_1BE050D14();
          (*(v154 + 8))(v78, v145);

          sub_1BE052434();
          v168 = &type metadata for CardNumbersSection.CardNumberDetails;
          v169 = v79;
          swift_getOpaqueTypeConformance2();
          v80 = v150;
          v81 = v153;
          sub_1BE050DE4();

          (*(v151 + 8))(v42, v81);
          v82 = v167;
          sub_1BD0DE204(v80, v167, &qword_1EBD5CFD0);
          (*(v160 + 56))(v82, 0, 1, v161);
          v6 = v147;
          v62 = v146;
LABEL_10:
          v85 = [v162 paymentPass];
          if (v85 && (v86 = v85, v87 = [v85 devicePaymentApplications], v86, v87))
          {
            sub_1BD0E5E8C(0, &qword_1EBD43BA0);
            sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0);
            v88 = sub_1BE052A34();
          }

          else
          {
            v88 = MEMORY[0x1E69E7CD0];
          }

          v89 = v166;
          if ((v88 & 0xC000000000000001) != 0)
          {
            v90 = sub_1BE053704();
          }

          else
          {
            v90 = *(v88 + 16);
          }

          if (v90 > 1)
          {

LABEL_23:
            v122 = 1;
            v123 = v62;
            goto LABEL_24;
          }

          v91 = PKSanitizedDeviceAccountNumberForPass();

          if (!v91)
          {
            goto LABEL_23;
          }

          v161 = sub_1BE052434();
          v162 = v92;

          sub_1BE051984();
          v93 = *MEMORY[0x1E69B80F0];
          v94 = v155;
          v95 = *(v155 + 104);
          v96 = v144;
          v95(v144, v93, v89);
          result = PKPassKitBundle();
          if (result)
          {
            v97 = result;
            v98 = v89;
            v160 = sub_1BE04B6F4();
            v100 = v99;

            v101 = *(v94 + 8);
            v101(v96, v89);
            v102 = v143;
            v95(v143, v93, v89);
            result = PKPassKitBundle();
            if (result)
            {
              v103 = result;
              v104 = sub_1BE04B6F4();
              v105 = v102;
              v107 = v106;

              v101(v105, v98);
              v168 = v160;
              v169 = v100;
              v170 = v104;
              v171 = v107;
              v172 = v161;
              v173 = v162;
              v108 = v152;
              sub_1BE04FF54();
              v109 = sub_1BDA677E4();
              v110 = v136;
              sub_1BE050D14();
              (*(v154 + 8))(v108, v145);

              sub_1BE052434();
              v168 = &type metadata for CardNumbersSection.CardNumberDetails;
              v169 = v109;
              swift_getOpaqueTypeConformance2();
              v111 = v137;
              v112 = v153;
              sub_1BE050DE4();

              (*(v151 + 8))(v110, v112);
              v113 = v140;
              v114 = *(v140 + 16);
              v115 = v139;
              v116 = v149;
              v117 = v141;
              v114(v139, v149, v141);
              v118 = v138;
              sub_1BD0DE19C(v111, v138, &qword_1EBD5CFD0);
              v119 = v142;
              v114(v142, v115, v117);
              v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFE8);
              sub_1BD0DE19C(v118, v119 + *(v120 + 48), &qword_1EBD5CFD0);
              sub_1BD0DE53C(v111, &qword_1EBD5CFD0);
              v121 = *(v113 + 8);
              v121(v116, v117);
              sub_1BD0DE53C(v118, &qword_1EBD5CFD0);
              v121(v115, v117);
              sub_1BD0DE204(v119, v163, &qword_1EBD5CFB8);
              v122 = 0;
              v6 = v147;
              v123 = v146;
LABEL_24:
              v124 = v163;
              (*(v158 + 56))(v163, v122, 1, v6);
              v125 = v167;
              v126 = v156;
              sub_1BD0DE19C(v167, v156, &qword_1EBD5CFD8);
              v127 = v157;
              sub_1BD0DE19C(v124, v157, &qword_1EBD5CFC0);
              v128 = v159;
              sub_1BD0DE19C(v126, v159, &qword_1EBD5CFD8);
              v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFE0);
              sub_1BD0DE19C(v127, v128 + *(v129 + 48), &qword_1EBD5CFC0);

              sub_1BD0DE53C(v124, &qword_1EBD5CFC0);
              sub_1BD0DE53C(v125, &qword_1EBD5CFD8);
              sub_1BD0DE53C(v127, &qword_1EBD5CFC0);
              sub_1BD0DE53C(v126, &qword_1EBD5CFD8);
              v130 = v165;
              sub_1BD0DE204(v128, v165, &qword_1EBD5CFB0);
              return (*(v164 + 56))(v130, 0, 1, v148);
            }

            goto LABEL_28;
          }

LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_27;
    }

    (*(v160 + 56))(v167, 1, 1, v161);
    goto LABEL_10;
  }

  v83 = v165;
  v84 = *(v164 + 56);

  return v84(v83, 1, 1, v3);
}

uint64_t sub_1BDA62DD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF98);
  sub_1BDA67840();
  return sub_1BE051A44();
}

id sub_1BDA62E4C@<X0>(char *a1@<X8>)
{
  v45 = a1;
  v47 = sub_1BE04BD74();
  v1 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF70);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - v9;
  v48 = sub_1BDA60068();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF78);
  sub_1BD0DE4F4(&qword_1EBD396B0, &qword_1EBD396A0);
  sub_1BD2D5FE4();
  sub_1BDA67768(&qword_1EBD5CF80, &qword_1EBD5CF78, &unk_1BE111740, sub_1BDA677E4);
  v42 = v10;
  v11 = v47;
  sub_1BE0519C4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80F0], v11);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v1 + 8))(v4, v11);
    v48 = v14;
    v49 = v16;
    sub_1BD0DDEBC();
    v17 = sub_1BE0506C4();
    v19 = v18;
    LOBYTE(v16) = v20;
    LODWORD(v48) = sub_1BE04FC94();
    v21 = sub_1BE050574();
    v23 = v22;
    v25 = v24;
    sub_1BD0DDF10(v17, v19, v16 & 1);

    sub_1BE0502A4();
    v26 = sub_1BE0505F4();
    v28 = v27;
    LODWORD(v47) = v29;
    v31 = v30;

    sub_1BD0DDF10(v21, v23, v25 & 1);

    v33 = v43;
    v32 = v44;
    v34 = *(v44 + 16);
    v35 = v42;
    v36 = v46;
    v34(v43, v42, v46);
    v37 = v45;
    v34(v45, v33, v36);
    v38 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF90) + 48)];
    *v38 = v26;
    *(v38 + 1) = v28;
    v39 = v47;
    v40 = v47 & 1;
    v38[16] = v47 & 1;
    *(v38 + 3) = v31;
    sub_1BD0D7F18(v26, v28, v39 & 1);
    v41 = *(v32 + 8);
    sub_1BE048C84();
    v41(v35, v36);
    sub_1BD0DDF10(v26, v28, v40);

    return (v41)(v33, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BDA632E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 dpanIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1BDA63348(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1BE052404();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDPANIdentifier_];
}

void sub_1BDA633B8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  [*a1 paymentNetworkIdentifier];
  v3 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = sub_1BE052434();
  v7 = v6;

  v8 = PKSanitizedDeviceAccountNumberForPaymentApplication();
  if (!v8)
  {

LABEL_5:
    v5 = 0;
    v7 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = sub_1BE052434();
  v12 = v11;

LABEL_6:
  *a2 = v5;
  a2[1] = v7;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v10;
  a2[5] = v12;
}

uint64_t sub_1BDA63470()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF60);
  sub_1BD0DE4F4(&qword_1EBD5CF68, &qword_1EBD5CF60);
  return sub_1BE051A44();
}

uint64_t sub_1BDA63518()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3 & 1;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v0, v2, v4);
}

uint64_t sub_1BDA635F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v3);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D0F8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v44 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  v19 = a1[1];
  v51 = *a1;
  v52 = v19;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v20 = sub_1BE0506C4();
  v22 = v21;
  v51 = v20;
  v52 = v21;
  v24 = v23 & 1;
  v53 = v23 & 1;
  v54 = v25;
  sub_1BE052434();
  v46 = v18;
  sub_1BE050DE4();

  sub_1BD0DDF10(v20, v22, v24);

  v26 = a1[3];
  if (v26)
  {
    v51 = a1[2];
    v52 = v26;
    sub_1BE048C84();
    v27 = sub_1BE0506C4();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    KeyPath = swift_getKeyPath();
    v51 = v27;
    v52 = v29;
    v53 = v31 & 1;
    v54 = v33;
    v55 = KeyPath;
    v56 = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0);
    sub_1BD0FF49C();
    sub_1BE050DE4();

    sub_1BD0DDF10(v27, v29, v31 & 1);

    v35 = v44;
    sub_1BD0DE204(v5, v44, &qword_1EBD3E930);
    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v44;
  }

  (*(v48 + 56))(v35, v36, 1, v50);
  v37 = v46;
  v38 = v49;
  sub_1BD0DE19C(v46, v49, &qword_1EBD452C0);
  v39 = v45;
  sub_1BD0DE19C(v35, v45, &qword_1EBD5D0F8);
  v40 = v47;
  sub_1BD0DE19C(v38, v47, &qword_1EBD452C0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D100);
  sub_1BD0DE19C(v39, v40 + *(v41 + 48), &qword_1EBD5D0F8);
  sub_1BD0DE53C(v35, &qword_1EBD5D0F8);
  sub_1BD0DE53C(v37, &qword_1EBD452C0);
  sub_1BD0DE53C(v39, &qword_1EBD5D0F8);
  return sub_1BD0DE53C(v38, &qword_1EBD452C0);
}

uint64_t sub_1BDA63A44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D0E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  sub_1BD0DE4F4(&qword_1EBD5D0F0, &qword_1EBD5D0E8);
  sub_1BD1103C8();
  return sub_1BE04E844();
}

uint64_t sub_1BDA63B48(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BE0528A4();
  v6 = a1;
  sub_1BE048964();
  v7 = sub_1BE052894();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = a2;
  v8[6] = a3;
  v10 = v6;
  sub_1BE048964();
  v11 = sub_1BE052894();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v9;
  v12[4] = v10;
  v12[5] = a2;
  v12[6] = a3;
  sub_1BE051934();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF50);
  sub_1BD0DE4F4(&qword_1EBD5CF58, &qword_1EBD5CF50);
  return sub_1BE051814();
}

uint64_t sub_1BDA63CE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B660);
  sub_1BD0DE4F4(&qword_1EBD3B668, &qword_1EBD3B660);

  return sub_1BE04E2B4();
}

id sub_1BDA63D84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v41 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v37[-v9];
  v11 = *MEMORY[0x1E69B80F0];
  v12 = *(v3 + 104);
  v12(&v37[-v9], v11, v2, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    v18 = *(v3 + 8);
    v18(v10, v2);
    v44 = v15;
    v45 = v17;
    sub_1BD0DDEBC();
    v39 = sub_1BE0506C4();
    v40 = v19;
    v21 = v20;
    v38 = v22;
    (v12)(v41, v11, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = v41;
      v25 = sub_1BE04B6F4();
      v27 = v26;

      v18(v24, v2);
      v44 = v25;
      v45 = v27;
      v28 = sub_1BE0506C4();
      v30 = v29;
      v31 = v38 & 1;
      v42 = v38 & 1;
      LOBYTE(v44) = v38 & 1;
      v33 = v32 & 1;
      v43 = v32 & 1;
      v35 = v39;
      v34 = v40;
      *a1 = v39;
      *(a1 + 8) = v21;
      *(a1 + 16) = v31;
      *(a1 + 24) = v34;
      *(a1 + 32) = v28;
      *(a1 + 40) = v29;
      *(a1 + 48) = v32 & 1;
      *(a1 + 56) = v36;
      sub_1BD0D7F18(v35, v21, v31);
      sub_1BE048C84();
      sub_1BD0D7F18(v28, v30, v33);
      sub_1BE048C84();
      sub_1BD0DDF10(v28, v30, v33);

      sub_1BD0DDF10(v35, v21, v42);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA64054@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF30);
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + 2);
  v12 = *v1;
  if ([v12 availableForAutomaticPresentationUsingInAppOrWebContext])
  {
    *v6 = sub_1BE04F784();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF38);
    MEMORY[0x1EEE9AC00](v8, v9);
    *(&v12 - 2) = v12;
    *(&v12 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CF40);
    sub_1BD0DE4F4(&qword_1EBD5CF48, &qword_1EBD5CF40);
    sub_1BE051A44();
    sub_1BD0DE204(v6, a1, &qword_1EBD5CF30);
    return (*(v13 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v11 = *(v13 + 56);

    return v11(a1, 1, 1, v3);
  }
}

uint64_t sub_1BDA64298@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v72 = sub_1BE04BD74();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v3);
  v70 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v63 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CFF8);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v10);
  v12 = &v63 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D000);
  MEMORY[0x1EEE9AC00](v74, v13);
  v67 = (&v63 - v14);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D008);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v15);
  v73 = &v63 - v16;
  v76 = v1;
  v75 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D018);
  sub_1BD0DE4F4(&qword_1EBD5D020, &qword_1EBD5D010);
  sub_1BDA67900();
  sub_1BE04E844();
  v80 = v1[5];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v18 = sub_1BDA67984();
  sub_1BE050F64();

  (*(v6 + 8))(v9, v5);
  v80 = v1[4];
  v63 = v17;
  sub_1BE0516C4();
  v19 = swift_allocObject();
  v20 = v1[5];
  v19[5] = v1[4];
  v19[6] = v20;
  v21 = v1[7];
  v19[7] = v1[6];
  v19[8] = v21;
  v22 = v1[1];
  v19[1] = *v1;
  v19[2] = v22;
  v23 = v1[3];
  v19[3] = v1[2];
  v19[4] = v23;
  v24 = swift_allocObject();
  v25 = v1[5];
  v24[5] = v1[4];
  v24[6] = v25;
  v26 = v1[7];
  v24[7] = v1[6];
  v24[8] = v26;
  v27 = v1[1];
  v24[1] = *v1;
  v24[2] = v27;
  v28 = v1[3];
  v24[3] = v1[2];
  v24[4] = v28;
  sub_1BDA673F8(v1, &v77);
  sub_1BDA673F8(v1, &v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D038);
  *&v77 = v5;
  *(&v77 + 1) = MEMORY[0x1E6981E70];
  v78 = v18;
  v79 = MEMORY[0x1E6981E60];
  swift_getOpaqueTypeConformance2();
  sub_1BDA67A4C();
  v29 = v67;
  v30 = v68;
  sub_1BE050F64();

  (*(v69 + 8))(v12, v30);
  v31 = swift_allocObject();
  v32 = v1[5];
  *(v31 + 5) = v1[4];
  *(v31 + 6) = v32;
  v33 = v1[7];
  *(v31 + 7) = v1[6];
  *(v31 + 8) = v33;
  v34 = v1[1];
  *(v31 + 1) = *v1;
  *(v31 + 2) = v34;
  v35 = v1[3];
  *(v31 + 3) = v1[2];
  *(v31 + 4) = v35;
  v36 = (v29 + *(v74 + 36));
  *v36 = sub_1BDA67B00;
  v36[1] = v31;
  v36[2] = 0;
  v36[3] = 0;
  if (*(v1 + 6))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BDA673F8(v1, &v77);
    sub_1BE048964();
    sub_1BE04D8B4();

    LOBYTE(v80) = v77;
    v37 = swift_allocObject();
    v38 = v1[5];
    v37[5] = v1[4];
    v37[6] = v38;
    v39 = v1[7];
    v37[7] = v1[6];
    v37[8] = v39;
    v40 = v1[1];
    v37[1] = *v1;
    v37[2] = v40;
    v41 = v1[3];
    v37[3] = v1[2];
    v37[4] = v41;
    sub_1BDA673F8(v1, &v77);
    v42 = sub_1BDA67B10();
    sub_1BE051064();

    sub_1BD0DE53C(v29, &qword_1EBD5D000);
    v43 = v71;
    v44 = v70;
    v45 = v72;
    (*(v71 + 104))(v70, *MEMORY[0x1E69B8058], v72);
    v46 = PKPassKitBundle();
    if (v46)
    {
      v47 = v46;
      v48 = sub_1BE04B6F4();
      v50 = v49;

      (*(v43 + 8))(v44, v45);
      *&v77 = v48;
      *(&v77 + 1) = v50;
      sub_1BD0DDEBC();
      v72 = sub_1BE0506C4();
      v71 = v51;
      LODWORD(v69) = v52;
      v70 = v53;
      v80 = v2[7];
      sub_1BE0516C4();
      LODWORD(v68) = v78;
      v77 = v2[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D058);
      v54 = sub_1BE0516A4();
      v67 = &v63;
      v55 = v80;
      MEMORY[0x1EEE9AC00](v54, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D060);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      *&v77 = v74;
      *(&v77 + 1) = MEMORY[0x1E69E6370];
      v78 = v42;
      v79 = MEMORY[0x1E69E6388];
      swift_getOpaqueTypeConformance2();
      sub_1BD0DE4F4(&qword_1EBD5D068, &qword_1EBD5D060);
      sub_1BD170E70();
      v57 = v65;
      v58 = v69;
      v59 = v72;
      v60 = v71;
      v61 = v73;
      sub_1BE050F04();

      sub_1BD0DDF10(v59, v60, v58 & 1);

      return (*(v64 + 8))(v61, v57);
    }

    __break(1u);
  }

  sub_1BDA673F8(v1, &v77);
  type metadata accessor for WalletDeepLinkCoordinator();
  sub_1BDA67460(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BDA64DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D098);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = v23 - v15;
  [*a1 hasActiveVirtualCard];
  v17 = swift_allocObject();
  v18 = *(a1 + 80);
  v17[5] = *(a1 + 64);
  v17[6] = v18;
  v19 = *(a1 + 112);
  v17[7] = *(a1 + 96);
  v17[8] = v19;
  v20 = *(a1 + 16);
  v17[1] = *a1;
  v17[2] = v20;
  v21 = *(a1 + 48);
  v17[3] = *(a1 + 32);
  v17[4] = v21;
  sub_1BDA673F8(a1, v24);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE050DE4();

  (*(v8 + 8))(v11, v7);
  sub_1BD0DE19C(v16, v6, &unk_1EBD45200);
  swift_storeEnumTagMultiPayload();
  sub_1BD35CEE0();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v16, &unk_1EBD45200);
}

id sub_1BDA65148(uint64_t a1)
{
  result = sub_1BD2EECB8();
  if (result)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v14 = v5;
    v15 = v4;
    *&v11 = v3;
    *(&v11 + 1) = v4;
    v12 = v5;
    v6 = result;
    v7 = result;
    sub_1BE048964();
    sub_1BD0DE19C(&v15, &v9, &qword_1EBD5D0A0);
    sub_1BD0DE19C(&v14, &v9, &qword_1EBD5D0A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D078);
    sub_1BE0516A4();

    *&v9 = v3;
    *(&v9 + 1) = v4;
    v10 = v5;
    v8[0] = v13[0];
    v8[1] = v6;
    sub_1BE0516B4();

    sub_1BD0DE53C(&v15, &qword_1EBD5D0A0);
    sub_1BD0DE53C(&v14, &qword_1EBD5D0A8);
    v11 = *(a1 + 64);
    v9 = *(a1 + 64);
    v13[0] = *(&v11 + 1);
    sub_1BD0DE19C(v13, v8, &unk_1EBD4EF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();

    return sub_1BD0DE53C(&v11, &qword_1EBD54350);
  }

  return result;
}

id sub_1BDA652FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA65468(uint64_t a1)
{
  v3 = *(a1 + 80);
  v2[1] = *(a1 + 80);
  v4 = *(&v3 + 1);
  sub_1BD0DE19C(&v4, v2, &unk_1EBD4EF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v2[0] = v3;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v3, &qword_1EBD54350);
}

id sub_1BDA6552C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8058], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA65698@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v87 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D080);
  MEMORY[0x1EEE9AC00](v84, v2);
  v83 = &v74 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D088);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v85 = &v74 - v9;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v76 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v74 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v81, v21);
  v82 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v74 = &v74 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v75 = &v74 - v28;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v74 - v32;
  v34 = *(v11 + 104);
  v88 = *MEMORY[0x1E69B8058];
  v89 = v34;
  v34(v20, v31);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v36 = result;
  v37 = sub_1BE04B6F4();
  v39 = v38;

  v40 = v10;
  v78 = *(v11 + 8);
  v78(v20, v10);
  v91 = v37;
  v92 = v39;
  v79 = sub_1BD0DDEBC();
  v41 = sub_1BE0506C4();
  v43 = v42;
  v91 = v41;
  v92 = v42;
  v45 = v44 & 1;
  v93 = v44 & 1;
  v94 = v46;
  sub_1BE052434();
  v80 = v33;
  sub_1BE050DE4();

  sub_1BD0DDF10(v41, v43, v45);

  if ([*v90 hasActiveVirtualCard])
  {
    v47 = v76;
    v89(v76, v88, v40);
    result = PKPassKitBundle();
    if (result)
    {
      v48 = result;
      v49 = sub_1BE04B6F4();
      v51 = v50;

      v78(v47, v40);
      v91 = v49;
      v92 = v51;
      v52 = sub_1BE0506C4();
      v54 = v53;
      v91 = v52;
      v92 = v53;
      LOBYTE(v51) = v55 & 1;
      v93 = v55 & 1;
      v94 = v56;
      sub_1BE052434();
      v57 = v75;
      sub_1BE050DE4();

      sub_1BD0DDF10(v52, v54, v51);

LABEL_7:
      v68 = v80;
      sub_1BD0DE19C(v57, v83, &qword_1EBD452C0);
      swift_storeEnumTagMultiPayload();
      sub_1BD1103C8();
      v69 = v85;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v57, &qword_1EBD452C0);
      v70 = v82;
      sub_1BD0DE19C(v68, v82, &qword_1EBD452C0);
      v71 = v86;
      sub_1BD0DE19C(v69, v86, &qword_1EBD5D088);
      v72 = v87;
      sub_1BD0DE19C(v70, v87, &qword_1EBD452C0);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D090);
      sub_1BD0DE19C(v71, v72 + *(v73 + 48), &qword_1EBD5D088);
      sub_1BD0DE53C(v69, &qword_1EBD5D088);
      sub_1BD0DE53C(v68, &qword_1EBD452C0);
      sub_1BD0DE53C(v71, &qword_1EBD5D088);
      return sub_1BD0DE53C(v70, &qword_1EBD452C0);
    }

    goto LABEL_9;
  }

  v58 = v77;
  v89(v77, v88, v40);
  result = PKPassKitBundle();
  if (result)
  {
    v59 = result;
    v60 = sub_1BE04B6F4();
    v62 = v61;

    v78(v58, v40);
    v91 = v60;
    v92 = v62;
    v63 = sub_1BE0506C4();
    v65 = v64;
    v91 = v63;
    v92 = v64;
    LOBYTE(v62) = v66 & 1;
    v93 = v66 & 1;
    v94 = v67;
    sub_1BE052434();
    v57 = v74;
    sub_1BE050DE4();

    sub_1BD0DDF10(v63, v65, v62);

    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BDA65DD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D058);
  sub_1BE0516A4();
  if (v1)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BDA65E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *(a1 + 24);
  v17 = *(a1 + 40);
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D078);
  sub_1BE0516A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D058);
  sub_1BE0516C4();
  v4 = [v3 paymentPass];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() cardsForPaymentPass_];
    sub_1BD0E5E8C(0, &qword_1EBD41C30);
    sub_1BD214890(&qword_1EBD41C38, &qword_1EBD41C30);
    v7 = sub_1BE052A34();

    v8 = sub_1BD960F14(v7);

    if (v8)
    {
      sub_1BE051694();
      *(a2 + 56) = v16;
      *(a2 + 64) = *(&v16 + 1);
      v9 = type metadata accessor for VirtualCardDetailsSheet(0);
      v10 = *(v9 + 32);
      *(a2 + v10) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
      swift_storeEnumTagMultiPayload();
      *a2 = v3;
      type metadata accessor for VirtualCardPublisher(0);
      swift_allocObject();
      v11 = v3;
      v12 = sub_1BD170580(v11, v8, v15);

      *(a2 + 8) = sub_1BDA67C68;
      *(a2 + 16) = v12;
      *(a2 + 24) = 0;
      *(a2 + 32) = v16;
      *(a2 + 48) = v17;
      return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    }
  }

  else
  {
  }

  v14 = type metadata accessor for VirtualCardDetailsSheet(0);
  return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
}

uint64_t sub_1BDA66160(uint64_t a1)
{
  if (*(a1 + 48))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_1BE04D8B4();

    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8C4();
      result = [*a1 hasActiveVirtualCard];
      if ((result & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
        return sub_1BE0516B4();
      }
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for WalletDeepLinkCoordinator();
    sub_1BDA67460(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BDA662D8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    if (*(a3 + 48))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8C4();
      if (([*a3 hasActiveVirtualCard] & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
        sub_1BE0516B4();
      }
    }

    else
    {
      type metadata accessor for WalletDeepLinkCoordinator();
      sub_1BDA67460(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

id sub_1BDA66400@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v85 = a2;
  v88 = sub_1BE04BD74();
  v3 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v4);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v86 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v84 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v87 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v82 = &v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C248);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v83 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v81 - v21;
  v23 = sub_1BE052434();
  v25 = v24;
  v89 = sub_1BE04A844();
  v26 = [v89 domain];
  v27 = sub_1BE052434();
  v29 = v28;

  if (v27 == sub_1BE052434() && v29 == v30)
  {
  }

  else
  {
    v31 = sub_1BE053B84();

    if ((v31 & 1) == 0)
    {

      v54 = 1;
      v38 = v22;
      v53 = v86;
LABEL_15:
      v39 = v88;
      goto LABEL_18;
    }
  }

  v32 = [v89 userInfo];
  v33 = sub_1BE052244();

  if (!*(v33 + 16))
  {

    goto LABEL_16;
  }

  v34 = sub_1BD148F70(v23, v25);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_16:

    v38 = v22;
    v39 = v88;
    goto LABEL_17;
  }

  sub_1BD038CD0(*(v33 + 56) + 32 * v34, v90);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
  v37 = swift_dynamicCast();
  v38 = v22;
  v39 = v88;
  if ((v37 & 1) == 0)
  {
LABEL_17:
    v54 = 1;
    v53 = v86;
    goto LABEL_18;
  }

  if (!v91[2])
  {

    goto LABEL_17;
  }

  v40 = v91[5];
  v81 = v91[4];
  v41 = v40;
  sub_1BE048C84();

  v42 = [v89 userInfo];
  v43 = sub_1BE052244();

  v44 = sub_1BE052434();
  if (!*(v43 + 16))
  {

LABEL_23:

    v74 = sub_1BE04AA64();
    v50 = v82;
    (*(*(v74 - 8) + 56))(v82, 1, 1, v74);
    v38 = v22;
    v53 = v86;
    goto LABEL_24;
  }

  v46 = sub_1BD148F70(v44, v45);
  v48 = v47;

  if ((v48 & 1) == 0)
  {

    v39 = v88;
    goto LABEL_23;
  }

  sub_1BD038CD0(*(v43 + 56) + 32 * v46, v90);

  v49 = sub_1BE04AA64();
  v50 = v82;
  v51 = swift_dynamicCast();
  v52 = *(v49 - 8);
  (*(v52 + 56))(v50, v51 ^ 1u, 1, v49);
  if ((*(v52 + 48))(v50, 1, v49) != 1)
  {
    sub_1BD0DE53C(v50, &unk_1EBD3CF70);
    v91 = v81;
    v92 = v41;
    v75 = swift_allocObject();
    v76 = a1[5];
    v75[5] = a1[4];
    v75[6] = v76;
    v77 = a1[7];
    v75[7] = a1[6];
    v75[8] = v77;
    v78 = a1[1];
    v75[1] = *a1;
    v75[2] = v78;
    v79 = a1[3];
    v75[3] = a1[2];
    v75[4] = v79;
    sub_1BDA673F8(a1, v90);
    sub_1BD0DDEBC();
    v80 = v87;
    sub_1BE051744();
    v53 = v86;
    v38 = v22;
    (*(v86 + 32))(v22, v80, v7);
    v54 = 0;
    goto LABEL_15;
  }

  v38 = v22;
  v53 = v86;
  v39 = v88;
LABEL_24:
  sub_1BD0DE53C(v50, &unk_1EBD3CF70);
  v54 = 1;
LABEL_18:
  (*(v53 + 56))(v38, v54, 1, v7);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8058], v39);
  result = PKPassKitBundle();
  if (result)
  {
    v56 = v53;
    v57 = result;
    v58 = sub_1BE04B6F4();
    v60 = v59;

    (*(v3 + 8))(v6, v39);
    v91 = v58;
    v92 = v60;
    v61 = swift_allocObject();
    v62 = a1[5];
    v61[5] = a1[4];
    v61[6] = v62;
    v63 = a1[7];
    v61[7] = a1[6];
    v61[8] = v63;
    v64 = a1[1];
    v61[1] = *a1;
    v61[2] = v64;
    v65 = a1[3];
    v61[3] = a1[2];
    v61[4] = v65;
    sub_1BDA673F8(a1, v90);
    sub_1BD0DDEBC();
    v66 = v84;
    sub_1BE051744();
    v67 = v38;
    v88 = v38;
    v68 = v83;
    sub_1BD0DE19C(v67, v83, &qword_1EBD3C248);
    v69 = *(v56 + 16);
    v70 = v87;
    v69(v87, v66, v7);
    v71 = v85;
    sub_1BD0DE19C(v68, v85, &qword_1EBD3C248);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D070);
    v69((v71 + *(v72 + 48)), v70, v7);

    v73 = *(v56 + 8);
    v73(v66, v7);
    sub_1BD0DE53C(v88, &qword_1EBD3C248);
    v73(v70, v7);
    return sub_1BD0DE53C(v68, &qword_1EBD3C248);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA66D30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D058);
  v2 = sub_1BE0516B4();
  return (*(a1 + 8))(v2);
}

uint64_t sub_1BDA66DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D058);
  return sub_1BE0516B4();
}

id sub_1BDA66E4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE052434();
  v9 = v8;
  v10 = sub_1BE04A844();
  v11 = [v10 domain];
  v12 = sub_1BE052434();
  v14 = v13;

  if (v12 == sub_1BE052434() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1BE053B84();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = [v10 userInfo];
  v19 = sub_1BE052244();

  if (!*(v19 + 16))
  {

    goto LABEL_13;
  }

  v20 = sub_1BD148F70(v7, v9);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_1BD038CD0(*(v19 + 56) + 32 * v20, v43);

  if (swift_dynamicCast())
  {
    v43[0] = v39;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v23;
    v26 = v24;
    *&v39 = v23;
    *(&v39 + 1) = v24;
    v28 = v27 & 1;
    v40 = v27 & 1;
    v41 = v29;
    v42 = 0;
LABEL_16:
    sub_1BD0D7F18(v23, v24, v28);
    sub_1BE048C84();
    sub_1BD0D7F18(v25, v26, v28);
    sub_1BE048C84();
    sub_1BE04F9A4();

    sub_1BD0DDF10(v25, v26, v28);

    sub_1BD0DDF10(v25, v26, v28);

    v37 = v43[1];
    v38 = v44;
    *a1 = v43[0];
    *(a1 + 16) = v37;
    *(a1 + 32) = v38;
    return result;
  }

LABEL_14:
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8058], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v31 = result;
    v32 = sub_1BE04B6F4();
    v34 = v33;

    (*(v3 + 8))(v6, v2);
    *&v43[0] = v32;
    *(&v43[0] + 1) = v34;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v23;
    v26 = v24;
    v28 = v35 & 1;
    *&v39 = v23;
    *(&v39 + 1) = v24;
    v40 = v35 & 1;
    v41 = v36;
    v42 = 1;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

__n128 sub_1BDA67270@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, __n128 *a4@<X8>)
{
  type metadata accessor for WalletDeepLinkCoordinator();
  sub_1BDA67460(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator);
  v8 = sub_1BE04EEC4();
  v6 = v5;
  sub_1BE051694();
  sub_1BE051694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0);
  sub_1BE051694();
  sub_1BE051694();
  sub_1BE051694();
  result = v13;
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  a4[1].n128_u64[0] = a3;
  a4[1].n128_u64[1] = v12;
  a4[2] = v13;
  a4[3].n128_u64[0] = v8;
  a4[3].n128_u64[1] = v6;
  a4[4].n128_u8[0] = v12;
  a4[4].n128_u64[1] = v13.n128_u64[0];
  a4[5].n128_u8[0] = v12;
  a4[5].n128_u64[1] = v13.n128_u64[0];
  a4[6].n128_u64[0] = v12;
  a4[6].n128_u64[1] = v13.n128_u64[0];
  a4[7].n128_u8[0] = v12;
  a4[7].n128_u64[1] = v13.n128_u64[0];
  return result;
}

uint64_t sub_1BDA67460(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1BDA67514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BDA6755C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BDA67648@<X0>(BOOL *a1@<X8>)
{
  result = [*(v1 + 32) settings];
  *a1 = (result & 0x10) != 0;
  return result;
}

uint64_t objectdestroy_20Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1BDA676C8(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *a1;
  v5 = [v2 settings];
  if ((v5 & v3) != 0)
  {
    v6 = [v2 settings];
  }

  else
  {
    v6 = v5 | v3;
  }

  v7 = 16;
  if (!v4)
  {
    v7 = 0;
  }

  return [v2 setSettings_];
}

uint64_t sub_1BDA67768(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BDA677E4()
{
  result = qword_1EBD5CF88;
  if (!qword_1EBD5CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CF88);
  }

  return result;
}

unint64_t sub_1BDA67840()
{
  result = qword_1EBD5CFA0;
  if (!qword_1EBD5CFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CF98);
    sub_1BD0DE4F4(&qword_1EBD5CFA8, &qword_1EBD5CFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CFA0);
  }

  return result;
}

unint64_t sub_1BDA67900()
{
  result = qword_1EBD5D028;
  if (!qword_1EBD5D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D018);
    sub_1BD35CEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D028);
  }

  return result;
}

unint64_t sub_1BDA67984()
{
  result = qword_1EBD5D030;
  if (!qword_1EBD5D030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CFF0);
    sub_1BD0DE4F4(&qword_1EBD5D020, &qword_1EBD5D010);
    sub_1BDA67900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D030);
  }

  return result;
}

unint64_t sub_1BDA67A4C()
{
  result = qword_1EBD5D040;
  if (!qword_1EBD5D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D038);
    sub_1BDA67460(&qword_1EBD5D048, type metadata accessor for VirtualCardDetailsSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D040);
  }

  return result;
}

unint64_t sub_1BDA67B10()
{
  result = qword_1EBD5D050;
  if (!qword_1EBD5D050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CFF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CFF0);
    sub_1BDA67984();
    swift_getOpaqueTypeConformance2();
    sub_1BDA67A4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D050);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1BDA67D18()
{
  result = qword_1EBD5D0B0;
  if (!qword_1EBD5D0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D0B8);
    sub_1BD0DE4F4(&qword_1EBD5D0C0, &qword_1EBD5CF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D0B0);
  }

  return result;
}

unint64_t sub_1BDA67DC8()
{
  result = qword_1EBD5D0C8;
  if (!qword_1EBD5D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D0D0);
    sub_1BD0DE4F4(&qword_1EBD5CF68, &qword_1EBD5CF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D0C8);
  }

  return result;
}

unint64_t sub_1BDA67E84()
{
  result = qword_1EBD5D0D8;
  if (!qword_1EBD5D0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D0E0);
    sub_1BDA67840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D0D8);
  }

  return result;
}

unint64_t sub_1BDA67F40()
{
  result = qword_1EBD5D108;
  if (!qword_1EBD5D108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D110);
    sub_1BD0DE4F4(&qword_1EBD5D0F0, &qword_1EBD5D0E8);
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D108);
  }

  return result;
}

int *sub_1BDA67FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1BE04BD74();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D120);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v41 - v8;
  v45 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v10 = v49[0];
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  v11[1] = *v1;
  v11[2] = v12;
  v13 = *(v1 + 48);
  v11[3] = *(v1 + 32);
  v11[4] = v13;
  v14 = swift_allocObject();
  v15 = *(v2 + 16);
  v14[1] = *v2;
  v14[2] = v15;
  v16 = *(v2 + 48);
  v14[3] = *(v2 + 32);
  v14[4] = v16;
  v17 = swift_allocObject();
  v18 = *(v2 + 16);
  v17[1] = *v2;
  v17[2] = v18;
  v19 = *(v2 + 48);
  v17[3] = *(v2 + 32);
  v17[4] = v19;
  type metadata accessor for SavingsActionWidgetViewModel();
  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = sub_1BDA68C50;
  v20[4] = v11;
  v20[5] = sub_1BDA68CA8;
  v20[6] = v14;
  v20[7] = sub_1BDA68D0C;
  v20[8] = v17;
  v54 = v20;
  v52 = *(v2 + 24);
  v53 = *(v2 + 40);
  sub_1BDA68BA4(v2, v49);
  sub_1BDA68BA4(v2, v49);
  sub_1BDA68BA4(v2, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D128);
  sub_1BE0516C4();
  v22 = v50;
  v21 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F68);
  sub_1BDA68D14();
  sub_1BDA68D68();
  sub_1BD7A1600();
  v41 = v9;
  sub_1BE050F74();

  sub_1BD17195C(v22, v21);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v23 = v49[0];
  if (v49[0] && (v24 = [v49[0] contactNumber], v23, v24))
  {
    v25 = sub_1BE052434();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v29 = v46;
  v28 = v47;
  v30 = v48;
  (*(v47 + 104))(v46, *MEMORY[0x1E69B80E0], v48);
  result = PKPassKitBundle();
  if (result)
  {
    v32 = result;
    v33 = sub_1BE04B6F4();
    v35 = v34;

    (*(v28 + 8))(v29, v30);
    v52 = *(v2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v36 = v49[0];
    v37 = v49[1];
    v38 = v50;
    v39 = v44;
    (*(v42 + 32))(v44, v41, v43);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D140);
    v40 = v39 + result[9];
    *v40 = v25;
    *(v40 + 8) = v27;
    *(v40 + 16) = v33;
    *(v40 + 24) = v35;
    *(v40 + 32) = 0;
    *(v40 + 40) = v36;
    *(v40 + 48) = v37;
    *(v40 + 56) = v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA68504()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - v6;
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v13 = v21;
  if (!v21)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_1BD226BBC(v7);
  }

  v14 = [v21 contactWebsite];

  if (v14)
  {
    sub_1BE04A9F4();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v9 + 56))(v3, v15, 1, v8);
  sub_1BD226B4C(v3, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1BD226BBC(v7);
  }

  (*(v9 + 32))(v12, v7, v8);
  v17 = [objc_opt_self() sharedApplication];
  v18 = sub_1BE04A9C4();
  sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BDA68DBC(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey);
  v19 = sub_1BE052224();

  [v17 openURL:v18 options:v19 completionHandler:0];

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BDA68844()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D128);
  return sub_1BE0516B4();
}

id sub_1BDA688F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v7 = *a1;
  v4 = sub_1BE0501F4();
  *a2 = v7;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v5 = v3;

  return v7;
}

uint64_t sub_1BDA6898C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = 0;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D118);
  sub_1BE051694();
  v6 = v26;
  v7 = v27;
  v8 = v28;
  sub_1BE051694();
  v9 = v26;
  v10 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v11 = [v26 type];

  if (v11 == 4)
  {
    type metadata accessor for AccountModel();
    sub_1BDA68DBC(&qword_1EBD3AE50, type metadata accessor for AccountModel);
    v12 = sub_1BE04E954();
    v14 = v13;
    v18 = v12;
    v19 = v13;
    v20 = a2;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    LOBYTE(v24) = v26;
    *(&v24 + 1) = v35[0];
    HIDWORD(v24) = *(v35 + 3);
    v25 = v27;
    v26 = v12;
    v15 = v24;
    v27 = v13;
    v28 = a2;
    v29 = v6;
    v30 = v7;
    v31 = v8;
    v32 = v9;
    *v33 = v35[0];
    *&v33[3] = *(v35 + 3);
    v34 = v10;
    sub_1BDA68BA4(&v18, &v17);
    result = sub_1BDA68BDC(&v26);
  }

  else
  {

    sub_1BD17195C(v26, v27);

    v12 = 0;
    v14 = 0;
    a2 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v15 = 0;
    v10 = 0;
  }

  *a3 = v12;
  a3[1] = v14;
  a3[2] = a2;
  a3[3] = v6;
  a3[4] = v7;
  a3[5] = v8;
  a3[6] = v15;
  a3[7] = v10;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI24AccountSupportTopicsViewVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t objectdestroyTm_126()
{
  v1 = *(v0 + 40);
  if (v1)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1BDA68D14()
{
  result = qword_1EBD5D130;
  if (!qword_1EBD5D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D130);
  }

  return result;
}

unint64_t sub_1BDA68D68()
{
  result = qword_1EBD5D138;
  if (!qword_1EBD5D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D138);
  }

  return result;
}

uint64_t sub_1BDA68DBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BDA68E04()
{
  result = qword_1EBD5D148;
  if (!qword_1EBD5D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F68);
    sub_1BDA68D14();
    sub_1BDA68D68();
    sub_1BD7A1600();
    swift_getOpaqueTypeConformance2();
    sub_1BD3CA3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D148);
  }

  return result;
}

uint64_t type metadata accessor for ActionButton()
{
  result = qword_1EBD5D150;
  if (!qword_1EBD5D150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA68F70()
{
  sub_1BD0DDCF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BDA69020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D208);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v18 - v11;
  v18[1] = sub_1BD6CBBAC(a1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D210);
  type metadata accessor for ActionButton();
  sub_1BD0DE4F4(&qword_1EBD5D218, &qword_1EBD5D210);
  sub_1BDA6AE5C(&qword_1EBD5D220, type metadata accessor for ActionButton);
  sub_1BE0519C4();
  v13 = *(v5 + 16);
  v13(v8, v12, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D228);
  v13((a2 + *(v14 + 48)), v8, v4);
  v15 = a2 + *(v14 + 64);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = *(v5 + 8);
  v16(v12, v4);
  return (v16)(v8, v4);
}

uint64_t sub_1BDA69298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE050474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a2 = v7;
  *(a2 + 1) = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  v12 = type metadata accessor for ActionButton();
  v14[1] = 0x404A000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x1E6980EF8], v4);
  sub_1BD0DBFDC();
  sub_1BE048964();
  result = sub_1BE04E514();
  *(a2 + *(v12 + 24)) = 0x405A000000000000;
  return result;
}

uint64_t sub_1BDA693E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D200);
  return sub_1BDA69020(v3, a1 + *(v4 + 44));
}

uint64_t sub_1BDA69438@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v48 = a3;
  v4 = sub_1BE04ED74();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04F554();
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionButton();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v16);
  v17 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D160);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v41 - v21;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D168);
  MEMORY[0x1EEE9AC00](v41, v23);
  v25 = &v41 - v24;
  sub_1BDA6A47C(a2, v17);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1BDA6A4E0(v17, v28 + v26);
  v29 = v42;
  *(v28 + v27) = v42;
  v49 = a2;
  v30 = a2;
  v31 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D170);
  sub_1BDA6A6A8();
  sub_1BE051704();
  sub_1BE04F544();
  sub_1BD0DE4F4(&qword_1EBD5D1D0, &qword_1EBD5D160);
  sub_1BDA6AE5C(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
  v32 = v43;
  sub_1BE050864();
  (*(v44 + 8))(v12, v32);
  (*(v19 + 8))(v22, v18);
  v33 = &v25[*(v41 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49208);
  sub_1BE04EE64();
  *v33 = swift_getKeyPath();
  v34 = v45;
  sub_1BE04ED64();
  sub_1BDA6ABE8();
  sub_1BDA6AE5C(&qword_1EBD59570, MEMORY[0x1E697C248]);
  v35 = v48;
  v36 = v46;
  sub_1BE050894();
  (*(v47 + 8))(v34, v36);
  sub_1BD0D15B4(v25);
  LOBYTE(v30) = *(v30 + 1);
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v30;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D1E0);
  v40 = (v35 + *(result + 36));
  *v40 = KeyPath;
  v40[1] = sub_1BD10DF54;
  v40[2] = v38;
  return result;
}

uint64_t sub_1BDA69968@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D1C8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D1B8);
  MEMORY[0x1EEE9AC00](v40, v11);
  v13 = &v38 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D1A8);
  MEMORY[0x1EEE9AC00](v42, v14);
  v16 = &v38 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D198);
  MEMORY[0x1EEE9AC00](v43, v17);
  v19 = &v38 - v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D188);
  MEMORY[0x1EEE9AC00](v44, v20);
  v22 = &v38 - v21;
  v23 = *a1;
  v41 = *a1;
  *&v46 = sub_1BDA69F80(v23);
  *(&v46 + 1) = v24;
  sub_1BD0DDEBC();
  sub_1BE051624();
  v25 = &v10[*(v7 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0) + 28);
  v27 = *MEMORY[0x1E69816C0];
  v28 = sub_1BE0515D4();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  (*(v38 + 32))(v10, v6, v39);
  type metadata accessor for ActionButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
  sub_1BE04E534();
  sub_1BE04E534();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v10, v13, &qword_1EBD5D1C8);
  v29 = &v13[*(v40 + 36)];
  v30 = v47;
  *v29 = v46;
  *(v29 + 1) = v30;
  *(v29 + 2) = v48;
  v31 = objc_opt_self();
  v32 = [v31 labelColor];
  v33 = sub_1BE0511C4();
  sub_1BD0DE204(v13, v16, &qword_1EBD5D1B8);
  *&v16[*(v42 + 36)] = v33;
  v34 = [v31 secondarySystemFillColor];
  v35 = sub_1BE0511C4();
  LOBYTE(v33) = sub_1BE0501D4();
  sub_1BD0DE204(v16, v19, &qword_1EBD5D1A8);
  v36 = &v19[*(v43 + 36)];
  *v36 = v35;
  v36[8] = v33;
  sub_1BD0DE204(v19, v22, &qword_1EBD5D198);
  *&v22[*(v44 + 36)] = 256;
  sub_1BE052434();
  sub_1BDA6A764();
  sub_1BE050DE4();

  return sub_1BDA6AD60(v22);
}

id sub_1BDA69F80(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v35 - v21;
  v27 = MEMORY[0x1EEE9AC00](v23, v24);
  v28 = &v35 - v25;
  v29 = *MEMORY[0x1E69B80D8];
  v30 = *(v3 + 104);
  v36 = v31;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        v30(v18, v29, v26, v27);
        result = PKPassKitBundle();
        if (result)
        {
          v33 = result;
          v34 = sub_1BE04B6F4();
          v28 = v18;
          goto LABEL_18;
        }

        goto LABEL_23;
      }

      v30(v22, v29, v26, v27);
      result = PKPassKitBundle();
      if (result)
      {
        v33 = result;
        v34 = sub_1BE04B6F4();
        v28 = v22;
LABEL_18:

        (*(v3 + 8))(v28, v36);
        return v34;
      }

      goto LABEL_21;
    }

    v30(&v35 - v25, v29, v26, v27);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();
      goto LABEL_18;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a1 == 3)
  {
    v30(v14, v29, v26, v27);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();
      v28 = v14;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a1 == 4)
  {
    v30(v10, v29, v26, v27);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();
      v28 = v10;
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v30(v6, v29, v26, v27);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    v34 = sub_1BE04B6F4();
    v28 = v6;
    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1BDA6A350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  sub_1BDA6A47C(v3, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BDA6A4E0(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v12[1] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1BDA6A5C4();
  result = sub_1BE051694();
  v10 = v12[2];
  v11 = v12[3];
  *a3 = sub_1BDA6A544;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1BDA6A47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA6A4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA6A544@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionButton() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BDA69438(a1, v6, a2);
}

unint64_t sub_1BDA6A5C4()
{
  result = qword_1EBD3F5A0;
  if (!qword_1EBD3F5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3F5A0);
  }

  return result;
}

uint64_t sub_1BDA6A610()
{
  v1 = *(type metadata accessor for ActionButton() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return (*(v0 + v2 + 8))(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1BDA6A6A8()
{
  result = qword_1EBD5D178;
  if (!qword_1EBD5D178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D170);
    sub_1BDA6A764();
    sub_1BDA6AE5C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D178);
  }

  return result;
}

unint64_t sub_1BDA6A764()
{
  result = qword_1EBD5D180;
  if (!qword_1EBD5D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D188);
    sub_1BDA6A81C();
    sub_1BD0DE4F4(&qword_1EBD491B8, &unk_1EBD491C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D180);
  }

  return result;
}

unint64_t sub_1BDA6A81C()
{
  result = qword_1EBD5D190;
  if (!qword_1EBD5D190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D198);
    sub_1BDA6A8D4();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D190);
  }

  return result;
}

unint64_t sub_1BDA6A8D4()
{
  result = qword_1EBD5D1A0;
  if (!qword_1EBD5D1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D1A8);
    sub_1BDA6A98C();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1A0);
  }

  return result;
}

unint64_t sub_1BDA6A98C()
{
  result = qword_1EBD5D1B0;
  if (!qword_1EBD5D1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D1B8);
    sub_1BDA6AA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1B0);
  }

  return result;
}

unint64_t sub_1BDA6AA18()
{
  result = qword_1EBD5D1C0;
  if (!qword_1EBD5D1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D1C8);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BD0DE4F4(&qword_1EBD3EFC8, &qword_1EBD3EFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1C0);
  }

  return result;
}

uint64_t sub_1BDA6AB20(uint64_t a1)
{
  v2 = sub_1BE04EE84();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE04F174();
}

unint64_t sub_1BDA6ABE8()
{
  result = qword_1EBD5D1D8;
  if (!qword_1EBD5D1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D160);
    sub_1BE04F554();
    sub_1BD0DE4F4(&qword_1EBD5D1D0, &qword_1EBD5D160);
    sub_1BDA6AE5C(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E8, &qword_1EBD49208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1D8);
  }

  return result;
}

uint64_t sub_1BDA6AD60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BDA6ADEC()
{
  result = qword_1EBD5D1F8;
  if (!qword_1EBD5D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1F8);
  }

  return result;
}

uint64_t sub_1BDA6AE5C(unint64_t *a1, void (*a2)(uint64_t))
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

id PKPassShareActivationOverviewViewController.__allocating_init(activationOptions:recipient:delegate:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_activationOptions] = a1;
  *&v5[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_recipient] = a2;
  swift_unknownObjectWeakAssign();
  v10.receiver = v5;
  v10.super_class = v2;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);

  swift_unknownObjectRelease();
  return v8;
}

id PKPassShareActivationOverviewViewController.init(activationOptions:recipient:delegate:)(void *a1, void *a2)
{
  v4 = sub_1BDA6E3D0(a1, a2);

  swift_unknownObjectRelease();
  return v4;
}

void sub_1BDA6B0C8()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for PKPassShareActivationOverviewViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v2 = [v0 navigationItem];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_closeButtonPressed];
  [v2 setLeftBarButtonItem_];

  v4 = *&v1[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_activationOptions];
  v5 = *&v1[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_recipient];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v4;
  v19 = v5;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D260));
  v9 = v4;
  v10 = v5;
  v11 = v9;
  v12 = v10;
  sub_1BE048964();
  sub_1BE048964();
  v13 = sub_1BE04F894();
  [v1 addChildViewController_];
  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    v16 = [v13 view];

    if (v16)
    {
      [v15 addSubview_];

      [v13 didMoveToParentViewController_];

      v17 = *&v1[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController];
      *&v1[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController] = v13;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BDA6B33C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      [v3 shareActivationOverviewViewControllerDidFinish_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BDA6B3D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 shareActivationOverviewViewControllerDidSelectShareCode_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BDA6B50C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PKPassShareActivationOverviewViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
    return;
  }

LABEL_7:
  __break(1u);
}

id PKPassShareActivationOverviewViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PKPassShareActivationOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKPassShareActivationOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BDA6B7B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v23 - v4;
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 stringValue];
  v13 = sub_1BE052434();
  v15 = v14;

  v24[0] = v13;
  v24[1] = v15;
  v23[2] = 32;
  v23[3] = 0xE100000000000000;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_1BD0DDEBC();
  v16 = sub_1BE053584();
  v18 = v17;

  strcpy(v24, "telprompt://");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  MEMORY[0x1BFB3F610](v16, v18);

  sub_1BE04AA54();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1BD0DE53C(v5, &unk_1EBD3CF70);
  }

  (*(v7 + 32))(v11, v5, v6);
  v20 = [objc_opt_self() sharedApplication];
  v21 = sub_1BE04A9C4();
  sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD1BD0CC();
  v22 = sub_1BE052224();

  [v20 openURL:v21 options:v22 completionHandler:0];

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1BDA6BAB8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D268);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v15[-v5];
  v17 = v1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D270);
  sub_1BD0DE4F4(&qword_1EBD5D278, &qword_1EBD5D270);
  sub_1BE04E304();
  v7 = [objc_opt_self() systemBackgroundColor];
  v8 = sub_1BE0511C4();
  v9 = sub_1BE0501D4();
  v10 = &v6[*(v3 + 36)];
  *v10 = v8;
  v10[8] = v9;
  v16 = v1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D280);
  sub_1BDA6E538();
  sub_1BDA6E61C();
  sub_1BE050954();
  sub_1BD0DE53C(v6, &qword_1EBD5D268);
  v11 = sub_1BE04EC54();
  v12 = sub_1BE0501F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2B8);
  v14 = a1 + *(result + 36);
  *v14 = v11;
  *(v14 + 8) = v12;
  return result;
}

uint64_t sub_1BDA6BCD4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2D0);
  return sub_1BDA6BD28(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1BDA6BD28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2D8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v26[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2E0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2E8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26[-v18];
  sub_1BDA6C148(v29);
  v20 = *a1;
  v21 = [*a1 activationCode];
  if (v21)
  {

    sub_1BDA6C358(v11);
    sub_1BD0DE19C(v11, v7, &qword_1EBD5D2E0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D308);
    sub_1BDA6E7B0();
    sub_1BDA6EBEC();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v11, &qword_1EBD5D2E0);
  }

  else
  {
    if (![v20 containsKeyFob])
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2F0);
      (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
      goto LABEL_6;
    }

    sub_1BDA6CD5C(v26);
    memcpy(v7, v26, 0x1A0uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D308);
    sub_1BDA6E7B0();
    sub_1BDA6EBEC();
    sub_1BE04F9A4();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2F0);
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
LABEL_6:
  memcpy(v27, v29, sizeof(v27));
  sub_1BD0DE19C(v19, v15, &qword_1EBD5D2E8);
  memcpy(v28, v27, 0x101uLL);
  memcpy(a2, v27, 0x101uLL);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2F8);
  sub_1BD0DE19C(v15, a2 + *(v23 + 48), &qword_1EBD5D2E8);
  sub_1BD0DE19C(v28, v26, &qword_1EBD5D300);
  sub_1BD0DE53C(v19, &qword_1EBD5D2E8);
  sub_1BD0DE53C(v15, &qword_1EBD5D2E8);
  memcpy(v26, v27, 0x101uLL);
  return sub_1BD0DE53C(v26, &qword_1EBD5D300);
}

uint64_t sub_1BDA6C148@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1BDA6ED68(*v1);
  v6 = v5;
  v7 = sub_1BDA6EF2C(v3);
  v9 = v8;
  v10 = sub_1BE0501E4();
  if (qword_1EBD36D70 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v28) = 0;
  v19 = sub_1BE0501E4();
  v20 = sub_1BE04EC54();
  sub_1BE051CE4();
  sub_1BE04EE54();
  *&v27[55] = v31;
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  v21 = sub_1BE0501C4();
  if (qword_1EBD36D58 != -1)
  {
    swift_once();
  }

  result = sub_1BE04E1F4();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  *(a1 + 56) = v14;
  *(a1 + 64) = v16;
  *(a1 + 72) = v18;
  *(a1 + 80) = 0;
  *(a1 + 88) = v20;
  *(a1 + 96) = v19;
  *(a1 + 145) = *&v27[48];
  *(a1 + 129) = *&v27[32];
  *(a1 + 113) = *&v27[16];
  *(a1 + 97) = *v27;
  *(a1 + 208) = *(&v34 + 1);
  *(a1 + 193) = *&v27[96];
  *(a1 + 177) = *&v27[80];
  *(a1 + 161) = *&v27[64];
  *(a1 + 216) = v21;
  *(a1 + 224) = v23;
  *(a1 + 232) = v24;
  *(a1 + 240) = v25;
  *(a1 + 248) = v26;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_1BDA6C358@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D390);
  MEMORY[0x1EEE9AC00](v121, v2);
  v4 = &v106 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v106 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D350);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v106 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D340);
  MEMORY[0x1EEE9AC00](v13, v14);
  v118 = &v106 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D330);
  MEMORY[0x1EEE9AC00](v117, v16);
  v119 = &v106 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D318);
  MEMORY[0x1EEE9AC00](v18, v19);
  v120 = &v106 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D398);
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v106 - v25;
  v27 = [*v1 activationCode];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1BE052434();
    v108 = v9;
    v30 = v29;
    v112 = v29;
    v109 = v13;
    v32 = v31;
    v111 = v31;

    *&v130 = v30;
    *(&v130 + 1) = v32;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v33 = sub_1BE0506C4();
    v113 = v26;
    v34 = v33;
    v115 = v4;
    v36 = v35;
    LOBYTE(v28) = v37;
    v116 = v21;
    sub_1BE050364();
    v110 = v18;
    v38 = *MEMORY[0x1E6980E08];
    v39 = sub_1BE050354();
    v114 = v22;
    v40 = v39;
    v41 = *(v39 - 8);
    (*(v41 + 104))(v8, v38, v39);
    (*(v41 + 56))(v8, 0, 1, v40);
    sub_1BE0503B4();
    sub_1BD0DE53C(v8, &qword_1EBD49130);
    v107 = sub_1BE0505F4();
    v43 = v42;
    LOBYTE(v40) = v44;
    v46 = v45;

    sub_1BD0DDF10(v34, v36, v28 & 1);

    sub_1BE051CD4();
    sub_1BE04EE54();
    LOBYTE(v38) = v40 & 1;
    v137 = v40 & 1;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v47 = [objc_opt_self() secondarySystemBackgroundColor];
    v48 = sub_1BE0511C4();
    LOBYTE(v36) = sub_1BE0501D4();
    v49 = PKOBKListInlineCellCornerRadius();
    v50 = &v12[*(v108 + 36)];
    v51 = *(sub_1BE04EDE4() + 20);
    v52 = *MEMORY[0x1E697F468];
    v53 = sub_1BE04F684();
    (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
    *v50 = v49;
    v50[1] = v49;
    *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
    *v12 = v107;
    *(v12 + 1) = v43;
    v12[16] = v38;
    *(v12 + 3) = v46;
    v54 = v135;
    *(v12 + 6) = v134;
    *(v12 + 7) = v54;
    v55 = v136;
    v56 = v131;
    *(v12 + 2) = v130;
    *(v12 + 3) = v56;
    v57 = v133;
    *(v12 + 4) = v132;
    *(v12 + 5) = v57;
    v58 = v127;
    v59 = v128;
    *(v12 + 8) = v55;
    *(v12 + 9) = v58;
    v60 = v129;
    *(v12 + 10) = v59;
    *(v12 + 11) = v60;
    *(v12 + 24) = v48;
    v12[200] = v36;
    LOBYTE(v48) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = v118;
    sub_1BD0DE204(v12, v118, &qword_1EBD5D350);
    v70 = v69 + *(v109 + 36);
    *v70 = v48;
    *(v70 + 8) = v62;
    *(v70 + 16) = v64;
    *(v70 + 24) = v66;
    *(v70 + 32) = v68;
    *(v70 + 40) = 0;
    v71 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v119;
    sub_1BD0DE204(v69, v119, &qword_1EBD5D340);
    v81 = v80 + *(v117 + 36);
    *v81 = v71;
    *(v81 + 8) = v73;
    *(v81 + 16) = v75;
    *(v81 + 24) = v77;
    *(v81 + 32) = v79;
    *(v81 + 40) = 0;
    v82 = sub_1BE0501C4();
    PKSetupViewConstantsViewMargin();
    sub_1BE04E1F4();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = v120;
    v92 = sub_1BD0DE204(v80, v120, &qword_1EBD5D330);
    v93 = v110;
    v94 = v91 + *(v110 + 36);
    *v94 = v82;
    *(v94 + 8) = v84;
    *(v94 + 16) = v86;
    *(v94 + 24) = v88;
    *(v94 + 32) = v90;
    *(v94 + 40) = 0;
    MEMORY[0x1EEE9AC00](v92, v95);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
    v97 = sub_1BDA6E8D8();
    v98 = sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    v99 = v113;
    sub_1BE0508B4();

    sub_1BD0DE53C(v91, &qword_1EBD5D318);
    v100 = v114;
    v101 = v116;
    (*(v114 + 16))(v115, v99, v116);
    swift_storeEnumTagMultiPayload();
    v123 = v93;
    v124 = v96;
    v125 = v97;
    v126 = v98;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v100 + 8))(v99, v101);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441C8);
    v104 = sub_1BDA6E8D8();
    v105 = sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    *&v130 = v18;
    *(&v130 + 1) = v103;
    *&v131 = v104;
    *(&v131 + 1) = v105;
    swift_getOpaqueTypeConformance2();
    return sub_1BE04F9A4();
  }
}

__n128 sub_1BDA6CD5C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F7B4();
  v40 = 0;
  sub_1BDA6DFB0(&v24);
  v53 = v36;
  v54 = v37;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v52 = v35;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v56[12] = v36;
  v56[13] = v37;
  v56[8] = v32;
  v56[9] = v33;
  v56[11] = v35;
  v56[10] = v34;
  v56[4] = v28;
  v56[5] = v29;
  v56[7] = v31;
  v56[6] = v30;
  v56[0] = v24;
  v56[1] = v25;
  v55 = v38;
  v57 = v38;
  v56[3] = v27;
  v56[2] = v26;
  sub_1BD0DE19C(&v41, v23, &qword_1EBD5D3A0);
  sub_1BD0DE53C(v56, &qword_1EBD5D3A0);
  *&v39[183] = v52;
  *&v39[199] = v53;
  *&v39[215] = v54;
  *&v39[119] = v48;
  *&v39[135] = v49;
  *&v39[151] = v50;
  *&v39[167] = v51;
  *&v39[55] = v44;
  *&v39[71] = v45;
  *&v39[87] = v46;
  *&v39[103] = v47;
  *&v39[7] = v41;
  *&v39[23] = v42;
  v39[231] = v55;
  *&v39[39] = v43;
  v3 = v40;
  v4 = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v23[0] = 0;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v13 = *&v39[160];
  *(a1 + 193) = *&v39[176];
  v14 = *&v39[208];
  *(a1 + 209) = *&v39[192];
  *(a1 + 225) = v14;
  v15 = *&v39[96];
  *(a1 + 129) = *&v39[112];
  v16 = *&v39[144];
  *(a1 + 145) = *&v39[128];
  *(a1 + 161) = v16;
  *(a1 + 177) = v13;
  v17 = *&v39[32];
  *(a1 + 65) = *&v39[48];
  v18 = *&v39[80];
  *(a1 + 81) = *&v39[64];
  *(a1 + 97) = v18;
  *(a1 + 113) = v15;
  v19 = *&v39[16];
  *(a1 + 17) = *v39;
  *(a1 + 33) = v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 241) = *&v39[224];
  *(a1 + 49) = v17;
  *(a1 + 256) = v4;
  *(a1 + 264) = v6;
  *(a1 + 272) = v8;
  *(a1 + 280) = v10;
  *(a1 + 288) = v12;
  *(a1 + 296) = 0;
  v20 = v29;
  *(a1 + 368) = v28;
  *(a1 + 384) = v20;
  *(a1 + 400) = v30;
  v21 = v25;
  *(a1 + 304) = v24;
  *(a1 + 320) = v21;
  result = v27;
  *(a1 + 336) = v26;
  *(a1 + 352) = result;
  return result;
}

id sub_1BDA6CFF8@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2C0);
  MEMORY[0x1EEE9AC00](v119, v2);
  v120 = v100 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2C8);
  MEMORY[0x1EEE9AC00](v111, v4);
  v6 = v100 - v5;
  v7 = sub_1BE04F714();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v113 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v100 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v108 = v100 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v100 - v24;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C160);
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v26);
  v28 = v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v106 = v100 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v109 = v100 - v34;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2B0);
  v36 = MEMORY[0x1EEE9AC00](v117, v35);
  v110 = v100 - v37;
  v38 = *v1;
  v39 = [*v1 activationCode];
  if (v39)
  {
    v112 = v10;
    v107 = v6;

    v40 = *(v1 + 8);
    v41 = [v40 phoneNumber];
    v42 = *MEMORY[0x1E69B80F8];
    v43 = *(v11 + 104);
    if (!v41)
    {
      v88 = v112;
      v43(v18, v42, v112);
      result = PKPassKitBundle();
      if (result)
      {
        v89 = result;
        v90 = sub_1BE04B6F4();
        v92 = v91;

        (*(v11 + 8))(v18, v88);
        v94 = *(v1 + 32);
        v93 = *(v1 + 40);
        if (qword_1EBD36ED8 != -1)
        {
          swift_once();
        }

        v95 = qword_1EBDAB648;
        v96 = qword_1EBD36EE0;
        sub_1BE048964();
        v75 = v110;
        if (v96 != -1)
        {
          swift_once();
        }

        *&v122 = v90;
        *(&v122 + 1) = v92;
        *&v123 = v95;
        *(&v123 + 1) = qword_1EBDAB650;
        LOWORD(v124) = 0;
        *(&v124 + 1) = v94;
        *&v125[0] = v93;
        *(v125 + 8) = 0u;
        *(&v125[1] + 8) = 0u;
        *(&v125[2] + 8) = 0u;
        *(&v125[3] + 8) = 0u;
        *(&v125[4] + 8) = 0u;
        *(&v125[5] + 1) = 0;
        sub_1BE048964();
        sub_1BE048964();
        v97 = v113;
        sub_1BE04F704();
        v98 = sub_1BD1BC1B0();
        v72 = v106;
        sub_1BE050CB4();
        (*(v114 + 8))(v97, v115);
        v132 = v125[3];
        v133 = v125[4];
        v134 = v125[5];
        v128 = v124;
        v129 = v125[0];
        v130 = v125[1];
        v131 = v125[2];
        v126 = v122;
        v127 = v123;
        sub_1BD1BC4CC(&v126);
        v73 = v116;
        v74 = v118;
        (*(v116 + 16))(v107, v72, v118);
        swift_storeEnumTagMultiPayload();
        *&v122 = &type metadata for SetupFooterView;
        *(&v122 + 1) = v98;
        swift_getOpaqueTypeConformance2();
        sub_1BE04F9A4();
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    v44 = v41;
    v104 = v40;
    v105 = v42;
    v45 = v112;
    v106 = v43;
    (v43)(v25);
    result = PKPassKitBundle();
    if (result)
    {
      v47 = result;
      v48 = sub_1BE04B6F4();
      v101 = v49;
      v102 = v48;

      v50 = *(v11 + 8);
      v51 = v25;
      v100[1] = v11 + 8;
      v52 = v50;
      v50(v51, v45);
      *&v103 = *(v1 + 32);
      v53 = *(v1 + 40);
      v54 = swift_allocObject();
      v55 = *(v1 + 16);
      *(v54 + 16) = *v1;
      *(v54 + 32) = v55;
      v56 = *(v1 + 48);
      *(v54 + 48) = *(v1 + 32);
      *(v54 + 64) = v56;
      *(v54 + 80) = v44;
      v57 = qword_1EBD36ED8;
      v58 = v38;
      v59 = v104;
      sub_1BE048964();
      *(&v103 + 1) = v53;
      sub_1BE048964();
      sub_1BE048964();
      v104 = v44;
      if (v57 != -1)
      {
        swift_once();
      }

      v60 = qword_1EBDAB648;
      v61 = qword_1EBD36EE0;
      sub_1BE048964();
      if (v61 != -1)
      {
        swift_once();
      }

      v62 = qword_1EBDAB650;
      v63 = v108;
      v64 = v112;
      (v106)(v108, v105, v112);
      sub_1BE048964();
      v65 = sub_1BE04B714();
      v67 = v66;
      v52(v63, v64);
      if (qword_1EBD36EE8 != -1)
      {
        swift_once();
      }

      v68 = qword_1EBDAB658;
      v69 = qword_1EBD36EF0;
      sub_1BE048964();
      if (v69 != -1)
      {
        swift_once();
      }

      *&v122 = v102;
      *(&v122 + 1) = v101;
      *&v123 = v60;
      *(&v123 + 1) = v62;
      LOWORD(v124) = 0;
      *(&v124 + 1) = sub_1BDA6E784;
      *&v125[0] = v54;
      *(&v125[0] + 1) = v65;
      *&v125[1] = v67;
      *(&v125[1] + 1) = v68;
      v125[2] = qword_1EBDAB660;
      v125[3] = v103;
      memset(&v125[4], 0, 32);
      sub_1BE048964();
      sub_1BE048964();
      v70 = v113;
      sub_1BE04F704();
      v71 = sub_1BD1BC1B0();
      v72 = v109;
      sub_1BE050CB4();
      (*(v114 + 8))(v70, v115);
      v132 = v125[3];
      v133 = v125[4];
      v134 = v125[5];
      v128 = v124;
      v129 = v125[0];
      v130 = v125[1];
      v131 = v125[2];
      v126 = v122;
      v127 = v123;
      sub_1BD1BC4CC(&v126);
      v73 = v116;
      v74 = v118;
      (*(v116 + 16))(v107, v72, v118);
      swift_storeEnumTagMultiPayload();
      *&v122 = &type metadata for SetupFooterView;
      *(&v122 + 1) = v71;
      swift_getOpaqueTypeConformance2();
      v75 = v110;
      sub_1BE04F9A4();

LABEL_25:
      (*(v73 + 8))(v72, v74);
      sub_1BD0DE19C(v75, v120, &qword_1EBD5D2B0);
      swift_storeEnumTagMultiPayload();
      sub_1BDA6E6D4();
      v99 = sub_1BD1BC1B0();
      *&v126 = &type metadata for SetupFooterView;
      *(&v126 + 1) = v99;
      swift_getOpaqueTypeConformance2();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v75, &qword_1EBD5D2B0);
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  (*(v11 + 104))(v14, *MEMORY[0x1E69B80F8], v10);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_27;
  }

  v76 = result;
  v77 = sub_1BE04B6F4();
  v79 = v78;

  (*(v11 + 8))(v14, v10);
  v81 = *(v1 + 16);
  v80 = *(v1 + 24);
  if (qword_1EBD36ED8 != -1)
  {
    swift_once();
  }

  v82 = qword_1EBDAB648;
  v83 = qword_1EBD36EE0;
  sub_1BE048964();
  if (v83 != -1)
  {
    swift_once();
  }

  *&v122 = v77;
  *(&v122 + 1) = v79;
  *&v123 = v82;
  *(&v123 + 1) = qword_1EBDAB650;
  LOWORD(v124) = 0;
  *(&v124 + 1) = v81;
  *&v125[0] = v80;
  *(v125 + 8) = 0u;
  *(&v125[1] + 8) = 0u;
  *(&v125[2] + 8) = 0u;
  *(&v125[3] + 8) = 0u;
  *(&v125[4] + 8) = 0u;
  *(&v125[5] + 1) = 0;
  sub_1BE048964();
  sub_1BE048964();
  v84 = v113;
  sub_1BE04F704();
  v85 = sub_1BD1BC1B0();
  sub_1BE050CB4();
  (*(v114 + 8))(v84, v115);
  v132 = v125[3];
  v133 = v125[4];
  v134 = v125[5];
  v128 = v124;
  v129 = v125[0];
  v130 = v125[1];
  v131 = v125[2];
  v126 = v122;
  v127 = v123;
  sub_1BD1BC4CC(&v126);
  v86 = v116;
  v87 = v118;
  (*(v116 + 16))(v120, v28, v118);
  swift_storeEnumTagMultiPayload();
  sub_1BDA6E6D4();
  *&v122 = &type metadata for SetupFooterView;
  *(&v122 + 1) = v85;
  swift_getOpaqueTypeConformance2();
  sub_1BE04F9A4();
  return (*(v86 + 8))(v28, v87);
}

uint64_t sub_1BDA6DCD4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);

  return sub_1BE051704();
}

void sub_1BDA6DDC4()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_1BE052404();
  [v0 setString_];
}

uint64_t sub_1BDA6DE58()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80F8], v0, v3);
  v6 = sub_1BE04B714();
  v8 = v7;
  (*(v1 + 8))(v5, v0);
  v10[0] = v6;
  v10[1] = v8;
  sub_1BD0DDEBC();
  return sub_1BE051624();
}

__n128 sub_1BDA6DFB0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v41[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE052404();
  v8 = [objc_opt_self() bundleWithIdentifier_];

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = sub_1BE052404();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

  if (!v11)
  {

LABEL_5:
    sub_1BDA6ED40(&v59);
    goto LABEL_6;
  }

  v12 = v11;
  sub_1BE051544();
  (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2);
  v13 = sub_1BE0515E4();

  (*(v3 + 8))(v6, v2);
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v48[54] = v55;
  *&v48[70] = v56;
  *&v48[86] = v57;
  *&v48[102] = v58;
  *&v48[6] = v52;
  *&v48[22] = v53;
  v49 = 1;
  *&v48[38] = v54;
  v14 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v50 = 0;
  v23 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  *(&v41[4] + 2) = *&v48[64];
  *(&v41[5] + 2) = *&v48[80];
  *(&v41[6] + 2) = *&v48[96];
  *(v41 + 2) = *v48;
  *(&v41[1] + 2) = *&v48[16];
  *(&v41[2] + 2) = *&v48[32];
  v51 = 0;
  v40 = v13;
  LOWORD(v41[0]) = 1;
  *&v41[7] = *&v48[110];
  *(&v41[3] + 2) = *&v48[48];
  BYTE8(v41[7]) = v14;
  *&v42 = v16;
  *(&v42 + 1) = v18;
  *&v43 = v20;
  *(&v43 + 1) = v22;
  LOBYTE(v44) = 0;
  BYTE8(v44) = v23;
  *&v45 = v25;
  *(&v45 + 1) = v27;
  *&v46 = v29;
  *(&v46 + 1) = v31;
  v47 = 0;
  PKEdgeInsetsMake(&v40, v32);
  v71 = v45;
  v72 = v46;
  v73 = v47;
  v67 = v41[7];
  v68 = v42;
  v69 = v43;
  v70 = v44;
  v63 = v41[3];
  v64 = v41[4];
  v65 = v41[5];
  v66 = v41[6];
  v59 = v40;
  v60 = v41[0];
  v61 = v41[1];
  v62 = v41[2];
LABEL_6:
  v33 = v72;
  *(a1 + 192) = v71;
  *(a1 + 208) = v33;
  *(a1 + 224) = v73;
  v34 = v68;
  *(a1 + 128) = v67;
  *(a1 + 144) = v34;
  v35 = v70;
  *(a1 + 160) = v69;
  *(a1 + 176) = v35;
  v36 = v64;
  *(a1 + 64) = v63;
  *(a1 + 80) = v36;
  v37 = v66;
  *(a1 + 96) = v65;
  *(a1 + 112) = v37;
  v38 = v60;
  *a1 = v59;
  *(a1 + 16) = v38;
  result = v62;
  *(a1 + 32) = v61;
  *(a1 + 48) = result;
  return result;
}

id sub_1BDA6E3D0(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_activationOptions] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_recipient] = a2;
  swift_unknownObjectWeakAssign();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for PKPassShareActivationOverviewViewController();
  v5 = a1;
  v6 = a2;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

unint64_t sub_1BDA6E538()
{
  result = qword_1EBD5D288;
  if (!qword_1EBD5D288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D268);
    sub_1BD0DE4F4(&qword_1EBD5D290, &qword_1EBD5D298);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D288);
  }

  return result;
}

unint64_t sub_1BDA6E61C()
{
  result = qword_1EBD5D2A0;
  if (!qword_1EBD5D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D280);
    sub_1BDA6E6D4();
    sub_1BD1BC1B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D2A0);
  }

  return result;
}

unint64_t sub_1BDA6E6D4()
{
  result = qword_1EBD5D2A8;
  if (!qword_1EBD5D2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D2B0);
    sub_1BD1BC1B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D2A8);
  }

  return result;
}

unint64_t sub_1BDA6E7B0()
{
  result = qword_1EBD5D310;
  if (!qword_1EBD5D310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441C8);
    sub_1BDA6E8D8();
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D310);
  }

  return result;
}

unint64_t sub_1BDA6E8D8()
{
  result = qword_1EBD5D320;
  if (!qword_1EBD5D320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D318);
    sub_1BDA6E964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D320);
  }

  return result;
}

unint64_t sub_1BDA6E964()
{
  result = qword_1EBD5D328;
  if (!qword_1EBD5D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D330);
    sub_1BDA6E9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D328);
  }

  return result;
}

unint64_t sub_1BDA6E9F0()
{
  result = qword_1EBD5D338;
  if (!qword_1EBD5D338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D340);
    sub_1BDA6EA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D338);
  }

  return result;
}

unint64_t sub_1BDA6EA7C()
{
  result = qword_1EBD5D348;
  if (!qword_1EBD5D348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D350);
    sub_1BDA6EB34();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D348);
  }

  return result;
}

unint64_t sub_1BDA6EB34()
{
  result = qword_1EBD5D358;
  if (!qword_1EBD5D358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D360);
    sub_1BD222E24();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D358);
  }

  return result;
}

unint64_t sub_1BDA6EBEC()
{
  result = qword_1EBD5D368;
  if (!qword_1EBD5D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D308);
    sub_1BDA6EC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D368);
  }

  return result;
}

unint64_t sub_1BDA6EC78()
{
  result = qword_1EBD5D370;
  if (!qword_1EBD5D370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D378);
    sub_1BD0DE4F4(&qword_1EBD5D380, &qword_1EBD5D388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D370);
  }

  return result;
}

double sub_1BDA6ED40(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1BDA6ED68(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 primaryOption];
  v9 = [v8 localizationKeyPostfixForInitiation];

  v10 = sub_1BE052434();
  v12 = v11;

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1BE053834();

  v15 = 0xD000000000000020;
  v16 = 0x80000001BE1226F0;
  MEMORY[0x1BFB3F610](v10, v12);

  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F8], v2);
  v13 = sub_1BE04B714();

  (*(v3 + 8))(v7, v2);
  return v13;
}

uint64_t sub_1BDA6EF2C(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 localizationKeyPostfixForInitiation];
  v9 = sub_1BE052434();
  v11 = v10;

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1BE053834();

  v14 = 0xD000000000000021;
  v15 = 0x80000001BE149340;
  MEMORY[0x1BFB3F610](v9, v11);

  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F8], v2);
  v12 = sub_1BE04B714();

  (*(v3 + 8))(v7, v2);
  return v12;
}

unint64_t sub_1BDA6F0C8()
{
  result = qword_1EBD5D3A8;
  if (!qword_1EBD5D3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D2B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D280);
    sub_1BDA6E538();
    sub_1BDA6E61C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D3A8);
  }

  return result;
}

uint64_t sub_1BDA6F1BC(uint64_t (*a1)(void, void))
{
  swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();

  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  if (v4)
  {
    v5 = sub_1BE048964();
    v4(v5);
    result = sub_1BD0D4744(v4);
  }

  if (a1)
  {
    return a1(0, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA6F340()
{
  swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  sub_1BD0D44B8(v1);
  return v1;
}

uint64_t sub_1BDA6F3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  *v3 = a2;
  v3[1] = a3;
  sub_1BD0D44B8(a2);
  return sub_1BD0D4744(v4);
}

uint64_t sub_1BDA6F428()
{
  swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading);
}

uint64_t sub_1BDA6F4A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading);
  return result;
}

uint64_t sub_1BDA6F548(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BDA7082C();
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BDA6F630@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BDA7082C();
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  return sub_1BD23C2BC(v5 + v3, a1);
}

uint64_t sub_1BDA6F6C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  return sub_1BD23C2BC(v3 + v4, a2);
}

uint64_t sub_1BDA6F760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BD23C2BC(a1, &v7 - v4);
  return sub_1BDA6F7F4(v5);
}

uint64_t sub_1BDA6F7F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  sub_1BD23C2BC(v1 + v7, v6);
  v8 = sub_1BDA708EC(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD416C0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BDA7082C();
    sub_1BE04B584();
  }

  else
  {
    sub_1BD23C2BC(a1, v6);
    swift_beginAccess();
    sub_1BDA70B64(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD416C0);
}

uint64_t sub_1BDA6F9B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1BD23C2BC(a2, &v10 - v6);
  v8 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  sub_1BDA70B64(v7, a1 + v8);
  return swift_endAccess();
}

id sub_1BDA6FA78()
{
  swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account);

  return v1;
}

id sub_1BDA6FB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account);
  *a2 = v4;

  return v4;
}

void sub_1BDA6FB90(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account);
  sub_1BD957184();
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BDA7082C();
    sub_1BE04B584();
  }
}

void sub_1BDA6FCC4(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BDA7082C();
  sub_1BE04B594();

  v9 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading;
  if ((v1[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading] & 1) == 0)
  {
    v32 = v5;
    v10 = [objc_opt_self() sharedService];
    v11 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

    v12 = [objc_allocWithZone(PKApplyControllerConfiguration) initWithSetupDelegate:0 context:0 provisioningController:v11];
    if (v12)
    {
      v13 = v12;
      v33 = v11;
      [v12 setFeature_];
      [v13 setApplicationType_];
      [v13 setUpdateUserInfoSubType_];
      swift_getKeyPath();
      aBlock[0] = v2;
      sub_1BE04B594();

      v14 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account;
      [v13 setAccount_];
      v15 = [objc_allocWithZone(PKApplyController) initWithApplyConfiguration_];
      if (v15)
      {
        v31 = a1;
        v29 = v15;
        [v15 setParentFlowController_];
        swift_getKeyPath();
        aBlock[0] = v2;
        sub_1BE04B594();

        v30 = v14;
        v16 = [*&v2[v14] applyServiceURL];
        if (v16)
        {
          v17 = v16;
          sub_1BE04A9F4();

          v18 = sub_1BE04A9C4();
          (*(v32 + 8))(v8, v4);
        }

        else
        {
          v18 = 0;
        }

        v19 = v31;
        v11 = v29;
        [v29 setApplyServiceURL_];

        v20 = objc_opt_self();
        swift_getKeyPath();
        aBlock[0] = v2;
        sub_1BE04B594();

        v21 = [v20 analyticsAccountTypeForAccount_];
        [v11 setAnalyticsExistingAccountType_];

        if (v2[v9] == 1)
        {
          v2[v9] = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath, v23);
          *(&v29 - 2) = v2;
          *(&v29 - 8) = 1;
          aBlock[0] = v2;
          sub_1BE04B584();
        }

        v24 = v33;
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = v19;
        aBlock[4] = sub_1BDA7089C;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD14E1D8;
        aBlock[3] = &block_descriptor_248;
        v27 = _Block_copy(aBlock);
        v28 = v19;

        [v11 nextViewControllerWithCompletion_];
        _Block_release(v27);
      }

      else
      {
        v11 = v13;
        v13 = v33;
      }
    }
  }
}

void sub_1BDA701C4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = aBlock - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      v13 = objc_allocWithZone(PKNavigationController);
      v14 = a1;
      v15 = [v13 initWithRootViewController_];
      [v15 setModalInPresentation_];
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      aBlock[4] = sub_1BDA708A4;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_40_6;
      v17 = _Block_copy(aBlock);
      v18 = v12;

      [a4 presentViewController:v15 animated:1 completion:v17];

      _Block_release(v17);
    }

    else
    {
      v19 = a2;
      if (!a2)
      {
        v19 = PKAccountDisplayableError();
      }

      v20 = a2;
      v21 = v19;
      FeatureError.init(feature:error:)(5, v19, v10);
      sub_1BDA6F7F4(v10);
      v22 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading;
      if (*(v12 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v24);
        aBlock[-2] = v12;
        LOBYTE(aBlock[-1]) = 0;
        aBlock[0] = v12;
        sub_1BDA7082C();
        sub_1BE04B584();
      }

      else
      {

        *(v12 + v22) = 0;
      }
    }
  }
}

uint64_t sub_1BDA70498(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v2);
    sub_1BDA7082C();
    sub_1BE04B584();
  }

  else
  {
    *(result + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading) = 0;
  }

  return result;
}

id sub_1BDA705AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddBeneficiaryModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AddBeneficiaryModel()
{
  result = qword_1EBD5D3E0;
  if (!qword_1EBD5D3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA706E8()
{
  sub_1BDA707D4();
  if (v0 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BDA707D4()
{
  if (!qword_1EBD5D3F0)
  {
    type metadata accessor for FeatureError(255);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5D3F0);
    }
  }
}

unint64_t sub_1BDA7082C()
{
  result = qword_1EBD3B1C8;
  if (!qword_1EBD3B1C8)
  {
    type metadata accessor for AddBeneficiaryModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B1C8);
  }

  return result;
}

void sub_1BDA708AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account);
  *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account) = v2;
  v4 = v2;
}

BOOL sub_1BDA708EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureError(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5D400);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1BD23C2BC(a1, &v23 - v15);
  sub_1BD23C2BC(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD416C0);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1BD23C2BC(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1BD230994(v12);
LABEL_6:
    sub_1BD0DE53C(v16, &unk_1EBD5D400);
    return 1;
  }

  sub_1BD230930(&v16[v18], v8);
  v21 = *v12;
  v22 = *v8;
  sub_1BD230994(v8);

  sub_1BD230994(v12);
  sub_1BD0DE53C(v16, &qword_1EBD416C0);
  return v21 != v22;
}

uint64_t sub_1BDA70B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI27PaymentOfferOptionIconModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI32PaymentOfferSelectorMultipleIconV0H6LayoutO(uint64_t a1)
{
  if ((*(a1 + 120) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 120) & 3;
  }
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1BDA70C78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BDA70CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BDA70D68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 121))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 120);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BDA70DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BDA70E14(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    LOBYTE(a2) = 3;
    *(result + 104) = 0u;
  }

  *(result + 120) = a2;
  return result;
}

uint64_t sub_1BDA70E5C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  return sub_1BE051394();
}

uint64_t sub_1BDA70F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X8>)
{
  v50 = a2;
  v48 = a1;
  v53 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v52 = &v45 - v7;
  v49 = sub_1BE04EA24();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v8);
  v45 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D518);
  MEMORY[0x1EEE9AC00](v51, v10);
  v12 = &v45 - v11;
  v13 = sub_1BE051DC4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D520);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v45 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D528);
  MEMORY[0x1EEE9AC00](v22, v23);
  v46 = &v45 - v24;
  if (a3)
  {
    sub_1BE048964();
    v25 = MEMORY[0x1E6981DF0];
  }

  else
  {
    v25 = MEMORY[0x1E6981DA0];
    sub_1BE0513F4();
  }

  v26 = sub_1BE051454();

  (*(v14 + 104))(v17, *v25, v13);
  (*(v14 + 32))(v21 + *(v18 + 36), v17, v13);
  *v21 = v26;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v27 = v46;
  sub_1BD0DE204(v21, v46, &qword_1EBD5D520);
  v28 = (v27 + *(v22 + 36));
  v29 = v56;
  *v28 = v55;
  v28[1] = v29;
  v28[2] = v57;
  v30 = sub_1BE051CD4();
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D530);
  v34 = v53;
  v35 = v53 + *(v33 + 36);
  sub_1BE048C84();
  v54 = sub_1BE051574();
  v36 = v45;
  sub_1BE04EA14();
  sub_1BE050A64();
  (*(v47 + 8))(v36, v49);

  v37 = sub_1BE050354();
  v38 = v52;
  (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
  v39 = sub_1BE0503B4();
  sub_1BD0DE53C(v38, &qword_1EBD49130);
  KeyPath = swift_getKeyPath();
  v41 = &v12[*(v51 + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  sub_1BE050364();
  sub_1BDA74134();
  sub_1BE050854();
  sub_1BD0D1A1C(v12);
  v42 = sub_1BE051424();
  *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D540) + 36)) = v42;
  v43 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D548) + 36));
  *v43 = v30;
  v43[1] = v32;
  return sub_1BD0DE204(v27, v34, &qword_1EBD5D528);
}

uint64_t sub_1BDA71488()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(v0 + 112);
  v53 = *(v0 + 96);
  v54 = v3;
  v55[0] = *(v0 + 128);
  *(v55 + 9) = *(v0 + 137);
  v4 = *(v0 + 48);
  v49 = *(v0 + 32);
  v50 = v4;
  v5 = *(v0 + 80);
  v51 = *(v0 + 64);
  v52 = v5;
  sub_1BDA71764(&v36);
  v6 = *(&v38 + 1);
  v7 = v39;
  __swift_project_boxed_opaque_existential_1(&v36, *(&v38 + 1));
  (*(v7 + 16))(&v28, v6, v7);
  v8 = v29;
  if (v29)
  {
    v9 = v28;
    v10 = v31;
    v41 = v30;
    v40[0] = v28;
    v40[1] = v29;
    sub_1BD1BCDE4(&v41);
    v42 = v10;
    sub_1BDA72E68(&v42);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    if (v2 == v9 && v1 == v8)
    {
      sub_1BD1BCDE4(v40);
      return 0;
    }

    v11 = sub_1BE053B84();
    sub_1BD1BCDE4(v40);
    if (v11)
    {
      return 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v36);
  }

  sub_1BDA71764(&v36);
  v12 = *(&v38 + 1);
  v13 = v39;
  __swift_project_boxed_opaque_existential_1(&v36, *(&v38 + 1));
  (*(v13 + 24))(&v32, v12, v13);
  v14 = v33;
  if (v33)
  {
    v15 = v32;
    v16 = v35;
    v44 = v34;
    v43[0] = v32;
    v43[1] = v33;
    sub_1BD1BCDE4(&v44);
    v45 = v16;
    sub_1BDA72E68(&v45);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    if (v2 == v15 && v1 == v14)
    {
      sub_1BD1BCDE4(v43);
      return 1;
    }

    v18 = sub_1BE053B84();
    sub_1BD1BCDE4(v43);
    if (v18)
    {
      return 1;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v36);
  }

  sub_1BDA71764(v25);
  v19 = v26;
  v20 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v20 + 32))(&v36, v19, v20);
  v21 = v37;
  if (v37)
  {
    v22 = v36;
    v23 = v39;
    v47 = v38;
    v46[0] = v36;
    v46[1] = v37;
    sub_1BD1BCDE4(&v47);
    v48 = v23;
    sub_1BDA72E68(&v48);
    __swift_destroy_boxed_opaque_existential_0(v25);
    if (v2 == v22 && v1 == v21)
    {
      sub_1BD1BCDE4(v46);
      return 2;
    }

    v24 = sub_1BE053B84();
    sub_1BD1BCDE4(v46);
    if (v24)
    {
      return 2;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  return 0;
}

uint64_t sub_1BDA71764@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v17[4] = v1[4];
  v17[5] = v3;
  v18[0] = v1[6];
  *(v18 + 9) = *(v1 + 105);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  v5 = v1[3];
  v17[2] = v1[2];
  v17[3] = v5;
  v6 = sub_1BDA72EBC(v17);
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      v15 = &type metadata for PaymentOfferSelectorMultipleIcon.EmptyLayout;
      v16 = sub_1BDA73008();
      v12 = swift_allocObject();
      *&v14 = v12;
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 80) = 0u;
      *(v12 + 96) = 0u;
      *(v12 + 112) = 0u;
      *(v12 + 128) = 0;
      goto LABEL_9;
    }

    PKEdgeInsetsMake(v17, v7);
    v9 = v10;
    v15 = &type metadata for PaymentOfferSelectorMultipleIcon.TripleIconLayout;
    v16 = sub_1BDA72ED4();
  }

  else if (v6)
  {
    PKEdgeInsetsMake(v17, v7);
    v9 = v11;
    v15 = &type metadata for PaymentOfferSelectorMultipleIcon.DoubleIconLayout;
    v16 = sub_1BDA72F60();
  }

  else
  {
    PKEdgeInsetsMake(v17, v7);
    v9 = v8;
    v15 = &type metadata for PaymentOfferSelectorMultipleIcon.SingleIconLayout;
    v16 = sub_1BDA72FB4();
  }

  *&v14 = swift_allocObject();
  memmove((v14 + 16), v9, 0x78uLL);
LABEL_9:
  sub_1BD043990(&v14, a1);
  return sub_1BDA72F28(v1, &v14);
}

uint64_t sub_1BDA718D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = sub_1BE051CD4();
  v34 = v4;
  v35 = v3;
  sub_1BDA71C70(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v40, __src, sizeof(v40));
  sub_1BD0DE19C(__dst, v37, &qword_1EBD5D410);
  sub_1BD0DE53C(v40, &qword_1EBD5D410);
  memcpy(v44, __dst, sizeof(v44));
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v38 = v1[10];
  __src[0] = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  v5 = *v37 * 0.0174532925;
  v6 = sub_1BE051EA4();
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x1BFB3EDF0](v6, 0.5, 1.0, 0.0);
  __src[0] = v38;
  v12 = sub_1BE0516A4();
  v13 = *v37;
  v14 = MEMORY[0x1BFB3EDF0](v12, 0.5, 1.0, 0.0);
  v15 = sub_1BDA71488();
  v16 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  v17 = *(v2 + 24);
  v18 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  v19 = *(v2 + 26);
  *v37 = v35;
  *&v37[8] = v34;
  memcpy(&v37[16], v44, 0x1B0uLL);
  *&v37[448] = v41;
  *&v37[464] = v42;
  *&v37[480] = v43;
  *&v37[496] = v5;
  *&v37[504] = v8;
  *&v37[512] = v10;
  *&v37[520] = v11;
  *&v37[528] = v13;
  *&v37[536] = v14;
  v37[544] = v15;
  *&v37[552] = v16;
  v37[560] = v17;
  *&v37[568] = v18;
  v37[576] = v19;
  v20 = swift_allocObject();
  v21 = *(v2 + 144);
  v20[9] = *(v2 + 128);
  v20[10] = v21;
  v20[11] = *(v2 + 160);
  v22 = *(v2 + 80);
  v20[5] = *(v2 + 64);
  v20[6] = v22;
  v23 = *(v2 + 112);
  v20[7] = *(v2 + 96);
  v20[8] = v23;
  v24 = *(v2 + 16);
  v20[1] = *v2;
  v20[2] = v24;
  v25 = *(v2 + 48);
  v20[3] = *(v2 + 32);
  v20[4] = v25;
  sub_1BD55A8E8(v2, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D418);
  sub_1BDA729B8();
  sub_1BE051064();

  memcpy(__src, v37, 0x241uLL);
  sub_1BD0DE53C(__src, &qword_1EBD5D418);
  v26 = swift_allocObject();
  v27 = *(v2 + 144);
  *(v26 + 9) = *(v2 + 128);
  *(v26 + 10) = v27;
  *(v26 + 11) = *(v2 + 160);
  v28 = *(v2 + 80);
  *(v26 + 5) = *(v2 + 64);
  *(v26 + 6) = v28;
  v29 = *(v2 + 112);
  *(v26 + 7) = *(v2 + 96);
  *(v26 + 8) = v29;
  v30 = *(v2 + 16);
  *(v26 + 1) = *v2;
  *(v26 + 2) = v30;
  v31 = *(v2 + 48);
  *(v26 + 3) = *(v2 + 32);
  *(v26 + 4) = v31;
  v32 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D4A8) + 36));
  *v32 = sub_1BDA72E60;
  v32[1] = v26;
  v32[2] = 0;
  v32[3] = 0;
  return sub_1BD55A8E8(v2, v37);
}

uint64_t sub_1BDA71C70@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v105 = a1[5];
  v104 = v5;
  v103 = v4;
  v102 = v3;
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  *(v108 + 9) = *(a1 + 137);
  v108[0] = v8;
  v107 = v7;
  v106 = v6;
  sub_1BDA71764(&v60);
  v9 = *(&v61 + 1);
  v10 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  (*(v10 + 16))(v78, v9, v10);
  if (*(&v78[0] + 1))
  {
    v90 = v78[0];
    v91 = v78[1];
    v92 = v79;
    __swift_destroy_boxed_opaque_existential_0(&v60);
    sub_1BDA72404(&v90, 0, &v109);
    v93 = v90;
    sub_1BD1BCDE4(&v93);
    v94 = v91;
    sub_1BD1BCDE4(&v94);
    v95 = v92;
    sub_1BDA72E68(&v95);
    v75 = v115;
    v76 = v116;
    v77 = v117;
    v71 = v111;
    v72 = v112;
    v74 = v114;
    v73 = v113;
    v70 = v110;
    v69 = v109;
    PKEdgeInsetsMake(&v69, v11);
    v115 = v75;
    v116 = v76;
    v117 = v77;
    v111 = v71;
    v112 = v72;
    v113 = v73;
    v114 = v74;
    v109 = v69;
    v110 = v70;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v60);
    sub_1BDA730E0(&v109);
  }

  sub_1BDA71764(&v51);
  v12 = *(&v52 + 1);
  v13 = v53;
  __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
  (*(v13 + 24))(v80, v12, v13);
  if (*(&v80[0] + 1))
  {
    v87 = v80[0];
    v88 = v80[1];
    v89 = v81;
    __swift_destroy_boxed_opaque_existential_0(&v51);
    sub_1BDA72404(&v87, 1, &v69);
    v96 = v87;
    sub_1BD1BCDE4(&v96);
    v97 = v88;
    sub_1BD1BCDE4(&v97);
    v98 = v89;
    sub_1BDA72E68(&v98);
    v66 = v75;
    v67 = v76;
    v68 = v77;
    v62 = v71;
    v63 = v72;
    v65 = v74;
    v64 = v73;
    v61 = v70;
    v60 = v69;
    PKEdgeInsetsMake(&v60, v14);
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v71 = v62;
    v72 = v63;
    v74 = v65;
    v73 = v64;
    v70 = v61;
    v69 = v60;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v51);
    sub_1BDA730E0(&v69);
  }

  sub_1BDA71764(&v42);
  v15 = *(&v43 + 1);
  v16 = v44;
  __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
  (*(v16 + 32))(v82, v15, v16);
  if (*(&v82[0] + 1))
  {
    v84 = v82[0];
    v85 = v82[1];
    v86 = v83;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    sub_1BDA72404(&v84, 2, &v60);
    v99 = v84;
    sub_1BD1BCDE4(&v99);
    v100 = v85;
    sub_1BD1BCDE4(&v100);
    v101 = v86;
    sub_1BDA72E68(&v101);
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v53 = v62;
    v54 = v63;
    v56 = v65;
    v55 = v64;
    v52 = v61;
    v51 = v60;
    PKEdgeInsetsMake(&v51, v17);
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v62 = v53;
    v63 = v54;
    v65 = v56;
    v64 = v55;
    v61 = v52;
    v60 = v51;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v42);
    sub_1BDA730E0(&v60);
  }

  v35 = v115;
  v36 = v116;
  v37 = v117;
  v31 = v111;
  v32 = v112;
  v33 = v113;
  v34 = v114;
  v29 = v109;
  v30 = v110;
  v26 = v75;
  v27 = v76;
  v28 = v77;
  v22 = v71;
  v23 = v72;
  v24 = v73;
  v25 = v74;
  v20 = v69;
  v21 = v70;
  v41[6] = v66;
  v41[7] = v67;
  v41[8] = v68;
  v41[2] = v62;
  v41[3] = v63;
  v41[5] = v65;
  v41[4] = v64;
  v41[1] = v61;
  v41[0] = v60;
  v38[6] = v115;
  v38[7] = v116;
  v38[8] = v117;
  v38[2] = v111;
  v38[3] = v112;
  v38[4] = v113;
  v38[5] = v114;
  v38[0] = v109;
  v38[1] = v110;
  v19[6] = v115;
  v19[7] = v116;
  v19[2] = v111;
  v19[3] = v112;
  v19[4] = v113;
  v19[5] = v114;
  v19[0] = v109;
  v19[1] = v110;
  v39[6] = v75;
  v39[7] = v76;
  v39[8] = v77;
  v39[2] = v71;
  v39[3] = v72;
  v39[4] = v73;
  v39[5] = v74;
  v39[0] = v69;
  v39[1] = v70;
  v19[14] = v74;
  v19[15] = v75;
  v19[16] = v76;
  v19[17] = v77;
  v19[10] = v70;
  v19[11] = v71;
  v19[12] = v72;
  v19[13] = v73;
  v19[8] = v117;
  v19[9] = v69;
  v40[6] = v66;
  v40[7] = v67;
  v40[8] = v68;
  v40[2] = v62;
  v40[3] = v63;
  v40[5] = v65;
  v40[4] = v64;
  v40[0] = v60;
  v40[1] = v61;
  v19[24] = v66;
  v19[25] = v67;
  v19[26] = v68;
  v19[20] = v62;
  v19[21] = v63;
  v19[22] = v64;
  v19[23] = v65;
  v19[18] = v60;
  v19[19] = v61;
  memcpy(a2, v19, 0x1B0uLL);
  sub_1BD0DE19C(v38, &v51, &qword_1EBD5D4D0);
  sub_1BD0DE19C(v39, &v51, &qword_1EBD5D4D0);
  sub_1BD0DE19C(v40, &v51, &qword_1EBD5D4D0);
  sub_1BD0DE53C(v41, &qword_1EBD5D4D0);
  v48 = v26;
  v49 = v27;
  v50 = v28;
  v44 = v22;
  v45 = v23;
  v47 = v25;
  v46 = v24;
  v43 = v21;
  v42 = v20;
  sub_1BD0DE53C(&v42, &qword_1EBD5D4D0);
  v57 = v35;
  v58 = v36;
  v59 = v37;
  v53 = v31;
  v54 = v32;
  v56 = v34;
  v55 = v33;
  v52 = v30;
  v51 = v29;
  return sub_1BD0DE53C(&v51, &qword_1EBD5D4D0);
}

__n128 sub_1BDA72404@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 112);
  v60 = *(v3 + 96);
  v61 = v7;
  v62[0] = *(v3 + 128);
  *(v62 + 9) = *(v3 + 137);
  v8 = *(v3 + 48);
  v56 = *(v3 + 32);
  v57 = v8;
  v9 = *(v3 + 80);
  v58 = *(v3 + 64);
  v59 = v9;
  sub_1BDA71764(&v45);
  v10 = v46.n128_u64[1];
  v11 = v47;
  __swift_project_boxed_opaque_existential_1(&v45, v46.n128_i64[1]);
  v12 = sub_1BDA71488();
  v13 = *(v3 + 24);
  (*(v11 + 40))(v54, a2, v12, *(v3 + 24), v10, v11);
  if (v55)
  {
    __swift_destroy_boxed_opaque_existential_0(&v45);
    sub_1BD251114(&v63);
  }

  else
  {
    v44 = v54[1];
    v14 = *&v54[3];
    v42 = v54[0];
    v43 = v54[2];
    __swift_destroy_boxed_opaque_existential_0(&v45);
    v15 = a1[3];
    v41 = a1[2];
    v16 = a1[4];
    sub_1BE048C84();
    sub_1BE048964();
    v17 = (sub_1BDA71488() == a2) & *(v3 + 25);
    v18 = *(v3 + 26);
    v63 = *(v3 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
    sub_1BE0516A4();
    v40 = (-*&v45 - v14) * 0.0174532925;
    sub_1BE051EA4();
    v20 = v19;
    v22 = v21;
    sub_1BE051EA4();
    v24 = v23;
    v26 = v25;
    v27 = v14 * 0.0174532925;
    sub_1BE051EA4();
    v29 = v28;
    v31 = v30;
    v32 = 1.0;
    if (v13)
    {
      if (sub_1BDA71488() == a2)
      {
        v32 = 1.0;
      }

      else
      {
        v32 = -1.0;
      }
    }

    v33 = sub_1BDA71488();
    *&v45 = v41;
    *(&v45 + 1) = v15;
    v46.n128_u64[0] = v16;
    v35 = 100.0;
    if (v33 != a2)
    {
      v35 = 0.0;
    }

    v46.n128_u8[8] = v17;
    v46.n128_u8[9] = v18;
    *&v47 = v40;
    *(&v47 + 1) = v20;
    *&v48 = v22;
    *(&v48 + 1) = v42;
    *&v49 = v42;
    *(&v49 + 1) = v24;
    *&v50 = v26;
    *(&v50 + 1) = v44;
    *&v51 = v43;
    *(&v51 + 1) = v27;
    *&v52 = v29;
    *(&v52 + 1) = v31;
    *&v53 = v32;
    *(&v53 + 1) = v35;
    PKEdgeInsetsMake(&v45, v34);
    v69 = v51;
    v70 = v52;
    v71 = v53;
    v65 = v47;
    v66 = v48;
    v67 = v49;
    v68 = v50;
    v63 = v45;
    v64 = v46;
  }

  v36 = v70;
  *(a3 + 96) = v69;
  *(a3 + 112) = v36;
  *(a3 + 128) = v71;
  v37 = v66;
  *(a3 + 32) = v65;
  *(a3 + 48) = v37;
  v38 = v68;
  *(a3 + 64) = v67;
  *(a3 + 80) = v38;
  result = v64;
  *a3 = v63;
  *(a3 + 16) = result;
  return result;
}

BOOL sub_1BDA72794(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v13[0] = a1[6];
  *(v13 + 9) = *(a1 + 105);
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[9] = *(a2 + 105);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return sub_1BDA736F0(v12, v14);
}

uint64_t sub_1BDA72834(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16)
{
  if (a16 <= 2u)
  {
    sub_1BDA728F4(result, a2);
    sub_1BDA728F4(a6, a7);

    return sub_1BDA728F4(a11, a12);
  }

  return result;
}

uint64_t sub_1BDA728F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1BDA729B8()
{
  result = qword_1EBD5D420;
  if (!qword_1EBD5D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D418);
    sub_1BDA72A70();
    sub_1BD0DE4F4(&qword_1EBD5D498, &qword_1EBD5D4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D420);
  }

  return result;
}

unint64_t sub_1BDA72A70()
{
  result = qword_1EBD5D428;
  if (!qword_1EBD5D428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D430);
    sub_1BDA72B28();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D428);
  }

  return result;
}

unint64_t sub_1BDA72B28()
{
  result = qword_1EBD5D438;
  if (!qword_1EBD5D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D440);
    sub_1BDA72BE0();
    sub_1BD0DE4F4(&qword_1EBD5D488, &qword_1EBD5D490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D438);
  }

  return result;
}

unint64_t sub_1BDA72BE0()
{
  result = qword_1EBD5D448;
  if (!qword_1EBD5D448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D450);
    sub_1BDA72C98();
    sub_1BD0DE4F4(&unk_1EBD36770, &qword_1EBD41708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D448);
  }

  return result;
}

unint64_t sub_1BDA72C98()
{
  result = qword_1EBD5D458;
  if (!qword_1EBD5D458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D460);
    sub_1BDA72D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D458);
  }

  return result;
}

unint64_t sub_1BDA72D24()
{
  result = qword_1EBD5D468;
  if (!qword_1EBD5D468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D470);
    sub_1BD0DE4F4(&qword_1EBD5D478, &qword_1EBD5D480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D468);
  }

  return result;
}

uint64_t objectdestroyTm_127()
{

  sub_1BDA72834(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_1BDA72EBC(uint64_t a1)
{
  if (*(a1 + 120) <= 2u)
  {
    return *(a1 + 120);
  }

  else
  {
    return (*a1 + 3);
  }
}

unint64_t sub_1BDA72ED4()
{
  result = qword_1EBD5D4B0;
  if (!qword_1EBD5D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4B0);
  }

  return result;
}

unint64_t sub_1BDA72F60()
{
  result = qword_1EBD5D4B8;
  if (!qword_1EBD5D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4B8);
  }

  return result;
}

unint64_t sub_1BDA72FB4()
{
  result = qword_1EBD5D4C0;
  if (!qword_1EBD5D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4C0);
  }

  return result;
}

unint64_t sub_1BDA73008()
{
  result = qword_1EBD5D4C8;
  if (!qword_1EBD5D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4C8);
  }

  return result;
}

uint64_t objectdestroy_11Tm_1()
{
  if (v0[3])
  {
  }

  if (v0[8])
  {
  }

  if (v0[13])
  {
  }

  return swift_deallocObject();
}

double sub_1BDA730E0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1BE0CB9B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

double sub_1BDA73104@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void sub_1BDA73118(char a1@<W1>, uint64_t a2@<X8>)
{
  v2 = 0x3FF0000000000000;
  if (a1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1 != 0;
}

double sub_1BDA73138@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1BDA73EA0(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

double sub_1BDA7317C@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1BDA73F90(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

BOOL sub_1BDA731C0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  if (v4)
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    v37 = a1[3];
    v14 = v5 == v9 && v4 == v10;
    if (!v14 && (v15 = sub_1BE053B84(), v6 = v37, (v15 & 1) == 0) || (v7 == v11 ? (v16 = v6 == v12) : (v16 = 0), !v16 && (sub_1BE053B84() & 1) == 0))
    {
LABEL_41:
      sub_1BDA73934(v9, v10);
      sub_1BDA73934(v5, v4);

      v31 = v5;
      v32 = v4;
      goto LABEL_42;
    }

    sub_1BDA73934(v9, v10);
    sub_1BDA73934(v5, v4);
    v34 = sub_1BE051394();

    sub_1BDA728F4(v5, v4);
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    goto LABEL_28;
  }

  v5 = a1[5];
  v4 = a1[6];
  v7 = a1[7];
  v6 = a1[8];
  v8 = a1[9];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[9];
  if (!v4)
  {
    if (!v10)
    {
      goto LABEL_31;
    }

LABEL_28:
    v38 = v5;
    v39 = v4;
    v40 = v7;
    v41 = v6;
    v42 = v8;
    v43 = v9;
    v44 = v10;
    v45 = v11;
    v46 = v12;
    v47 = v13;
    sub_1BDA73934(v9, v10);
    v18 = v5;
    v19 = v4;
LABEL_29:
    sub_1BDA73934(v18, v19);
    sub_1BD0DE53C(&v38, &qword_1EBD5D4D8);
    return 0;
  }

  if (!v10)
  {
    goto LABEL_28;
  }

  if (v5 != v9 || v4 != v10)
  {
    v35 = a1[8];
    v17 = sub_1BE053B84();
    v6 = v35;
    if ((v17 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if ((v7 != v11 || v6 != v12) && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_1BDA73934(v9, v10);
  sub_1BDA73934(v5, v4);
  v36 = sub_1BE051394();

  sub_1BDA728F4(v5, v4);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v21 = a1[10];
  v20 = a1[11];
  v23 = a1[12];
  v22 = a1[13];
  v24 = a1[14];
  v26 = a2[10];
  v25 = a2[11];
  v28 = a2[12];
  v27 = a2[13];
  v29 = a2[14];
  if (v20)
  {
    if (v25)
    {
      if (v21 == v26 && v20 == v25 || (sub_1BE053B84()) && (v23 == v28 && v22 == v27 || (sub_1BE053B84()))
      {
        sub_1BDA73934(v26, v25);
        sub_1BDA73934(v21, v20);
        v30 = sub_1BE051394();

        sub_1BDA728F4(v21, v20);
        return (v30 & 1) != 0;
      }

      sub_1BDA73934(v26, v25);
      sub_1BDA73934(v21, v20);

      v31 = v21;
      v32 = v20;
LABEL_42:
      sub_1BDA728F4(v31, v32);
      return 0;
    }

    goto LABEL_45;
  }

  if (v25)
  {
LABEL_45:
    v38 = v21;
    v39 = v20;
    v40 = v23;
    v41 = v22;
    v42 = v24;
    v43 = v26;
    v44 = v25;
    v45 = v28;
    v46 = v27;
    v47 = v29;
    sub_1BDA73934(v26, v25);
    v18 = v21;
    v19 = v20;
    goto LABEL_29;
  }

  return 1;
}

BOOL sub_1BDA736F0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[5];
  v48[4] = a1[4];
  v48[5] = v3;
  v49[0] = a1[6];
  *(v49 + 9) = *(a1 + 105);
  v4 = a1[1];
  v48[0] = *a1;
  v48[1] = v4;
  v5 = a1[3];
  v48[2] = a1[2];
  v48[3] = v5;
  v6 = sub_1BDA72EBC(v48);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      PKEdgeInsetsMake(v48, v7);
      v17 = v16[5];
      v54 = v16[4];
      v55 = v17;
      v56 = v16[6];
      v57 = *(v16 + 14);
      v18 = v16[1];
      v50 = *v16;
      v51 = v18;
      v19 = v16[3];
      v52 = v16[2];
      v53 = v19;
      v20 = a2[5];
      v43 = a2[4];
      v44 = v20;
      *v45 = a2[6];
      *&v45[9] = *(a2 + 105);
      v21 = a2[1];
      v39 = *a2;
      v40 = v21;
      v22 = a2[3];
      v41 = a2[2];
      v42 = v22;
      if (sub_1BDA72EBC(&v39) == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v35 = a2[5];
      v43 = a2[4];
      v44 = v35;
      *v45 = a2[6];
      *&v45[9] = *(a2 + 105);
      v36 = a2[1];
      v39 = *a2;
      v40 = v36;
      v37 = a2[3];
      v41 = a2[2];
      v42 = v37;
      if (sub_1BDA72EBC(&v39) == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!v6)
  {
    PKEdgeInsetsMake(v48, v7);
    v9 = v8[5];
    v54 = v8[4];
    v55 = v9;
    v56 = v8[6];
    v57 = *(v8 + 14);
    v10 = v8[1];
    v50 = *v8;
    v51 = v10;
    v11 = v8[3];
    v52 = v8[2];
    v53 = v11;
    v12 = a2[5];
    v43 = a2[4];
    v44 = v12;
    *v45 = a2[6];
    *&v45[9] = *(a2 + 105);
    v13 = a2[1];
    v39 = *a2;
    v40 = v13;
    v14 = a2[3];
    v41 = a2[2];
    v42 = v14;
    if (!sub_1BDA72EBC(&v39))
    {
      goto LABEL_9;
    }

    return 0;
  }

  PKEdgeInsetsMake(v48, v7);
  v24 = v23[5];
  v54 = v23[4];
  v55 = v24;
  v56 = v23[6];
  v57 = *(v23 + 14);
  v25 = v23[1];
  v50 = *v23;
  v51 = v25;
  v26 = v23[3];
  v52 = v23[2];
  v53 = v26;
  v27 = a2[5];
  v43 = a2[4];
  v44 = v27;
  *v45 = a2[6];
  *&v45[9] = *(a2 + 105);
  v28 = a2[1];
  v39 = *a2;
  v40 = v28;
  v29 = a2[3];
  v41 = a2[2];
  v42 = v29;
  if (sub_1BDA72EBC(&v39) != 1)
  {
    return 0;
  }

LABEL_9:
  PKEdgeInsetsMake(&v39, v15);
  v31 = *(v30 + 80);
  v46[4] = *(v30 + 64);
  v46[5] = v31;
  v46[6] = *(v30 + 96);
  v47 = *(v30 + 112);
  v32 = *(v30 + 16);
  v46[0] = *v30;
  v46[1] = v32;
  v33 = *(v30 + 48);
  v46[2] = *(v30 + 32);
  v46[3] = v33;
  return sub_1BDA731C0(&v50, v46);
}

uint64_t sub_1BDA73934(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048C84();
    sub_1BE048C84();

    return sub_1BE048964();
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1BDA739C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BDA73A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BDA73A84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BDA73AE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1BDA73B60()
{
  result = qword_1EBD5D4E0;
  if (!qword_1EBD5D4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D418);
    sub_1BDA729B8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4E0);
  }

  return result;
}

unint64_t sub_1BDA73C5C()
{
  result = qword_1EBD5D4E8;
  if (!qword_1EBD5D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4E8);
  }

  return result;
}

unint64_t sub_1BDA73CB0(uint64_t a1)
{
  result = sub_1BDA73CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BDA73CD8()
{
  result = qword_1EBD5D4F0;
  if (!qword_1EBD5D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4F0);
  }

  return result;
}

unint64_t sub_1BDA73D2C(uint64_t a1)
{
  result = sub_1BDA73D54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BDA73D54()
{
  result = qword_1EBD5D4F8;
  if (!qword_1EBD5D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4F8);
  }

  return result;
}

unint64_t sub_1BDA73DA8(uint64_t a1)
{
  result = sub_1BDA73DD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BDA73DD0()
{
  result = qword_1EBD5D500;
  if (!qword_1EBD5D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D500);
  }

  return result;
}

unint64_t sub_1BDA73E24(uint64_t a1)
{
  result = sub_1BDA73E4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BDA73E4C()
{
  result = qword_1EBD5D508;
  if (!qword_1EBD5D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D508);
  }

  return result;
}

uint64_t sub_1BDA73EA0@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    v4 = result;
    if (result)
    {
      v5 = 0x3FDCCCCCCCCCCCCDLL;
      if (a3)
      {
        v5 = 0;
      }

      v6 = 0x4031000000000000;
      if (a3)
      {
        v6 = 0x4036000000000000;
      }

      goto LABEL_14;
    }

    v5 = 0x3FE6666666666666;
    if (a3)
    {
      v5 = 0x3FF0000000000000;
    }

    v6 = 0x4022000000000000;
    if (a3)
    {
      v6 = 0;
    }

LABEL_27:
    v7 = 0x4052400000000000;
    goto LABEL_28;
  }

  if (a2 != 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_28;
  }

  v4 = result;
  if (!result)
  {
    v5 = 0x3FDCCCCCCCCCCCCDLL;
    if (a3)
    {
      v5 = 0;
    }

    v6 = 0x4031000000000000;
    if (a3)
    {
      v6 = 0x4036000000000000;
    }

    goto LABEL_27;
  }

  v5 = 0x3FE6666666666666;
  if (a3)
  {
    v5 = 0x3FF0000000000000;
  }

  v6 = 0x4022000000000000;
  if (a3)
  {
    v6 = 0;
  }

LABEL_14:
  v7 = 0xC05B000000000000;
  if (v4 == 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v4) = 1;
  }

LABEL_28:
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = 0;
  *(a4 + 24) = v7;
  *(a4 + 32) = v4;
  return result;
}

uint64_t sub_1BDA73F90@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (result)
      {
        v4 = 0x3FE3333333333333;
        v5 = 0x3FF0000000000000;
        if (a3)
        {
          v4 = 0x3FF0000000000000;
        }

        v6 = 0xC023000000000000;
        if (a3)
        {
          v6 = 0;
        }

        else
        {
          v5 = 0x3FD6666666666666;
        }

        v7 = 0xC02B000000000000;
        if (a3)
        {
          v7 = 0xC036000000000000;
        }

        if (result == 1)
        {
          v8 = v4;
        }

        else
        {
          v8 = v5;
        }

        if (result == 1)
        {
          v9 = v6;
        }

        else
        {
          v9 = v7;
        }

        if (result == 1)
        {
          v10 = 0xC04E000000000000;
        }

        else
        {
          v10 = 0x4052C00000000000;
        }
      }

      else
      {
        v8 = 0x3FD3333333333333;
        if (a3)
        {
          v8 = 0;
        }

        v9 = 0x4036000000000000;
        if ((a3 & 1) == 0)
        {
          v9 = 0x4028000000000000;
        }

        v10 = 0xC03E000000000000;
      }
    }

    else if (result)
    {
      v14 = 0x3FD3333333333333;
      if (a3)
      {
        v14 = 0;
      }

      v9 = 0xC028000000000000;
      if (a3)
      {
        v9 = 0xC036000000000000;
      }

      v15 = 0x3FE3333333333333;
      if (a3)
      {
        v15 = 0x3FF0000000000000;
      }

      v16 = 0xC023000000000000;
      if (a3)
      {
        v16 = 0;
      }

      if (result == 1)
      {
        v8 = v14;
      }

      else
      {
        v8 = v15;
      }

      if (result == 1)
      {
        v10 = 0xC056000000000000;
      }

      else
      {
        v9 = v16;
        v10 = 0x404E000000000000;
      }
    }

    else
    {
      v8 = 0x3FD6666666666666;
      if (a3)
      {
        v8 = 0;
      }

      v9 = 0x4036000000000000;
      if ((a3 & 1) == 0)
      {
        v9 = 0x402B000000000000;
      }

      v10 = 0x4024000000000000;
    }
  }

  else if (result)
  {
    v11 = 0x3FD6666666666666;
    if (a3)
    {
      v11 = 0;
    }

    v9 = 0xC02B000000000000;
    v12 = 0xC036000000000000;
    if (a3)
    {
      v9 = 0xC036000000000000;
    }

    v13 = 0x3FD3333333333333;
    if (a3)
    {
      v13 = 0;
    }

    else
    {
      v12 = 0xC028000000000000;
    }

    if (result == 1)
    {
      v8 = v11;
    }

    else
    {
      v8 = v13;
    }

    if (result == 1)
    {
      v10 = 0xC043400000000000;
    }

    else
    {
      v9 = v12;
      v10 = 0x4043400000000000;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0x3FE3333333333333;
    if (a3)
    {
      v8 = 0x3FF0000000000000;
    }

    v9 = 0x4023000000000000;
    if (a3)
    {
      v9 = 0;
    }
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  *(a4 + 24) = v10;
  *(a4 + 32) = 0;
  return result;
}