uint64_t sub_1BD41BC98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = sub_1BE04AA64();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = type metadata accessor for MultiHyperLinkDetailSheet();
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  type metadata accessor for PaymentOfferActionExplanationView();
  sub_1BD0DE19C(v9, v5, &unk_1EBD45160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v9, &unk_1EBD45160);
}

id sub_1BD41BE2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v30 - v19;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v30 - v23;
  v26 = *(v5 + 104);
  if (a3 <= 4u)
  {
    if (a3 == 3)
    {
      (v26)(v20, *MEMORY[0x1E69B80D8], v4, v24.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v28 = result;
        v29 = sub_1BE04B6E4();
        v25 = v20;
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    if (a3 == 4)
    {
      (v26)(v16, *MEMORY[0x1E69B8068], v4, v24.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v28 = result;
        v29 = sub_1BE04B6E4();
        v25 = v16;
LABEL_16:

        (*(v5 + 8))(v25, v4);
        return v29;
      }

      goto LABEL_18;
    }

LABEL_10:
    v26(&v30 - v23, *MEMORY[0x1E69B80D8], v4, v24);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6E4();
      goto LABEL_16;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3 != 5)
  {
    if (a3 == 6)
    {
      (v26)(v8, *MEMORY[0x1E69B8078], v4, v24.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v28 = result;
        v29 = sub_1BE04B6E4();
        v25 = v8;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    goto LABEL_10;
  }

  (v26)(v12, *MEMORY[0x1E69B8078], v4, v24.n128_f64[0]);
  result = PKPassKitBundle();
  if (result)
  {
    v28 = result;
    v29 = sub_1BE04B6E4();
    v25 = v12;
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1BD41C200(uint64_t a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v32 - v9;
  sub_1BD41C54C();
  v11 = *(a1 + 96);
  if ((v11 & 1) == 0)
  {
    v13 = *(a1 + 80);
    v12 = *(a1 + 88);
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(a1 + 24);
    v41[0] = *(a1 + 16);
    v17 = v41[0];
    v41[1] = v16;
    v41[2] = v15;
    v41[3] = v14;
    v18 = *(a1 + 64);
    v32 = *(a1 + 48);
    v33 = v18;
    v42 = v32;
    v43 = v18;
    v44 = v13;
    v45 = v12;
    v46 = v11;
    sub_1BD0DE19C(v41, v35, &qword_1EBD45C90);

    v19 = [v17 primaryActionDetails];

    if (v19)
    {
      v20 = v19;
      v21 = [v20 linkURL];
      if (v21)
      {
        v22 = v21;
        sub_1BE04A9F4();

        (*(v3 + 32))(v10, v6, v2);
        (*(v3 + 56))(v10, 0, 1, v2);
        sub_1BD0DE53C(v10, &unk_1EBD3CF70);

        v23 = *(a1 + 96);
        if ((v23 & 1) == 0)
        {
          v25 = *(a1 + 80);
          v24 = *(a1 + 88);
          v27 = *(a1 + 32);
          v26 = *(a1 + 40);
          v28 = *(a1 + 24);
          v35[0] = *(a1 + 16);
          v29 = v35[0];
          v35[1] = v28;
          v35[2] = v27;
          v35[3] = v26;
          v30 = *(a1 + 64);
          v32 = *(a1 + 48);
          v33 = v30;
          v36 = v32;
          v37 = v30;
          v38 = v25;
          v39 = v24;
          v40 = v23;
          sub_1BD0DE19C(v35, &v34, &qword_1EBD45C90);

          v31 = [v29 primaryActionDetails];

          if (v31)
          {
            sub_1BD41C794(v31);

            return;
          }
        }
      }

      else
      {

        (*(v3 + 56))(v10, 1, 1, v2);
        sub_1BD0DE53C(v10, &unk_1EBD3CF70);
      }
    }
  }

  (*(a1 + 128))(*(a1 + 144));
}

void sub_1BD41C54C()
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B98E0;
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BB6C0];
  *(v2 + 32) = *MEMORY[0x1E69BB6E0];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E69BB6F8];
  v6 = *MEMORY[0x1E69BB728];
  *(v2 + 48) = *MEMORY[0x1E69BB6F8];
  *(v2 + 56) = v6;
  type metadata accessor for PKAnalyticsSubject(0);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v13 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v14;
  v15 = *MEMORY[0x1E69BA440];
  v16 = v0[21];
  v17 = v0[22];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  *(inited + 64) = v16;
  v18 = *MEMORY[0x1E69BABE8];
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  v19 = v0[19];
  v20 = v0[20];
  *(inited + 88) = v19;
  *(inited + 96) = v20;
  v21 = v13;
  v22 = v15;
  sub_1BE048C84();
  v23 = v18;
  sub_1BE048C84();
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD41D8A8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v24 = sub_1BE052224();

  [v1 subjects:v11 sendEvent:v24];
}

id sub_1BD41C794(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v35 - v10;
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = v35 - v23;
  v25 = a1;
  v26 = [v25 linkURL];
  if (v26)
  {
    v35[1] = v2;
    v27 = v26;
    sub_1BE04A9F4();

    (*(v13 + 56))(v24, 0, 1, v12);
    sub_1BD0DE53C(v24, &unk_1EBD3CF70);
    result = [v25 linkURL];
    if (result)
    {
      v29 = result;
      sub_1BE04A9F4();

      (*(v13 + 32))(v20, v16, v12);
      v30 = [v25 behavior];
      if (v30 == 1)
      {
        v32 = [objc_opt_self() defaultWorkspace];
        if (v32)
        {
          v33 = v32;
          v34 = sub_1BE04A9C4();
          [v33 openSensitiveURL:v34 withOptions:0];
        }
      }

      else if (!v30)
      {
        (*(v13 + 16))(v11, v20, v12);
        v31 = type metadata accessor for MultiHyperLinkDetailSheet();
        swift_storeEnumTagMultiPayload();
        (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
        type metadata accessor for PaymentOfferActionExplanationView();
        sub_1BD0DE19C(v11, v7, &unk_1EBD45160);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
        sub_1BE0516B4();
        sub_1BD0DE53C(v11, &unk_1EBD45160);
      }

      return (*(v13 + 8))(v20, v12);
    }
  }

  else
  {

    (*(v13 + 56))(v24, 1, 1, v12);
    return sub_1BD0DE53C(v24, &unk_1EBD3CF70);
  }

  return result;
}

void sub_1BD41CB9C(uint64_t a1, char a2)
{
  sub_1BD41CCB4();
  if ((a2 & 1) != 0 && (v4 = *(a1 + 96), (v4 & 1) == 0) && (v6 = *(a1 + 80), v5 = *(a1 + 88), v8 = *(a1 + 32), v7 = *(a1 + 40), v9 = *(a1 + 24), v14[0] = *(a1 + 16), v10 = v14[0], v14[1] = v9, v14[2] = v8, v14[3] = v7, v12 = *(a1 + 64), v15 = *(a1 + 48), v16 = v12, v17 = v6, v18 = v5, v19 = v4, sub_1BD0DE19C(v14, v13, &qword_1EBD45C90), , , , , , v11 = [v10 secondaryActionDetails], v10, v11))
  {
    sub_1BD41C794(v11);
  }

  else if (*(a1 + 145) != 7)
  {
    (*(a1 + 128))();
  }
}

void sub_1BD41CCB4()
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B98E0;
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BB6C0];
  *(v2 + 32) = *MEMORY[0x1E69BB6E0];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E69BB6F8];
  v6 = *MEMORY[0x1E69BB728];
  *(v2 + 48) = *MEMORY[0x1E69BB6F8];
  *(v2 + 56) = v6;
  type metadata accessor for PKAnalyticsSubject(0);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v13 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v14;
  v15 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v16;
  v17 = *MEMORY[0x1E69BABE8];
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  *(inited + 80) = *MEMORY[0x1E69BABE8];
  *(inited + 88) = v18;
  *(inited + 96) = v19;
  v20 = v13;
  v21 = v15;
  v22 = v17;
  sub_1BE048C84();
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD41D8A8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v23 = sub_1BE052224();

  [v1 subjects:v11 sendEvent:v23];
}

unint64_t sub_1BD41CF04()
{
  result = qword_1EBD45C40;
  if (!qword_1EBD45C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C38);
    sub_1BD41CFC0();
    sub_1BD41D8A8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45C40);
  }

  return result;
}

unint64_t sub_1BD41CFC0()
{
  result = qword_1EBD45C48;
  if (!qword_1EBD45C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C50);
    sub_1BD41D04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45C48);
  }

  return result;
}

unint64_t sub_1BD41D04C()
{
  result = qword_1EBD45C58;
  if (!qword_1EBD45C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C60);
    sub_1BD0DE4F4(&qword_1EBD45C68, &qword_1EBD45C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45C58);
  }

  return result;
}

unint64_t sub_1BD41D104()
{
  result = qword_1EBD45C80;
  if (!qword_1EBD45C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E28);
    sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45C80);
  }

  return result;
}

uint64_t sub_1BD41D21C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a11 & 1) == 0)
  {
  }
}

uint64_t sub_1BD41D35C()
{
  v1 = *(type metadata accessor for PaymentOfferActionExplanationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_1BD41CCB4();
  return (*(v2 + 128))(4);
}

uint64_t sub_1BD41D3E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentOfferActionExplanationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_40()
{
  v1 = type metadata accessor for PaymentOfferActionExplanationView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1BD41D21C(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));

  if (*(v2 + 192))
  {
  }

  v3 = (v2 + *(v1 + 60));
  v4 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_1BE04AA64();
      (*(*(v5 - 8) + 8))(v3, v5);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  sub_1BD0D4604(*(v2 + *(v1 + 68)), *(v2 + *(v1 + 68) + 8));

  return swift_deallocObject();
}

uint64_t sub_1BD41D678(uint64_t a1)
{
  type metadata accessor for PaymentOfferActionExplanationView();

  return sub_1BD41BC98(a1);
}

void sub_1BD41D6E8()
{
  v1 = *(type metadata accessor for PaymentOfferActionExplanationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  sub_1BD41CB9C(v2, v3);
}

uint64_t sub_1BD41D768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD41D840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD41D8A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD41D900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_1BD41D948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

unint64_t sub_1BD41D9C0()
{
  result = qword_1EBD45CA0;
  if (!qword_1EBD45CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C08);
    sub_1BE04FE84();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C00);
    sub_1BD0DE4F4(&qword_1EBD45C18, &qword_1EBD45C00);
    swift_getOpaqueTypeConformance2();
    sub_1BD41D8A8(&qword_1EBD39E50, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C38);
    type metadata accessor for MultiHyperLinkDetailSheet();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
    sub_1BD41CF04();
    sub_1BD41D8A8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78);
    sub_1BD41D104();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45CA0);
  }

  return result;
}

uint64_t sub_1BD41DD48()
{
  result = type metadata accessor for FinanceKitTransactionIcon.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BD41DDDC()
{
  sub_1BD41DE58();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD41DE58()
{
  if (!qword_1EBD45CD8)
  {
    sub_1BE0491F4();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD45CD8);
    }
  }
}

unint64_t sub_1BD41DEC4()
{
  result = qword_1EBD45CE0;
  if (!qword_1EBD45CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45CE0);
  }

  return result;
}

uint64_t sub_1BD41DF34@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CE8);
  MEMORY[0x1EEE9AC00](v108, v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v101 = &v92 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CF0);
  MEMORY[0x1EEE9AC00](v106, v9);
  v107 = &v92 - v10;
  v104 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v104, v11);
  v100 = (&v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v98 = (&v92 - v15);
  v102 = sub_1BE051584();
  v16 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v17);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CF8);
  MEMORY[0x1EEE9AC00](v105, v20);
  v97 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v99 = &v92 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v92 - v27;
  v29 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  v30 = v29 - 8;
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BE0491F4();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1;
  v39 = a1;
  v41 = v40;
  sub_1BD41EA64(v39, v33);
  sub_1BD0DE204(&v33[*(v30 + 28)], v28, &qword_1EBD45CC0);
  if ((*(v35 + 48))(v28, 1, v41) == 1)
  {
    sub_1BD0DE53C(v28, &qword_1EBD45CC0);
LABEL_7:
    sub_1BE051574();
    v56 = v102;
    (*(v16 + 104))(v19, *MEMORY[0x1E6981630], v102);
    v99 = sub_1BE0515E4();

    (*(v16 + 8))(v19, v56);
    v57 = *v103;
    sub_1BE051CD4();
    if (v57)
    {
      v58 = 10.0;
    }

    else
    {
      v58 = 5.0;
    }

    sub_1BE04E5E4();
    v59 = v113;
    v60 = v114;
    v61 = v115;
    v62 = v116;
    v63 = v117;
    v103 = v118;
    v64 = sub_1BE0501D4();
    sub_1BE04E1F4();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v112 = v60;
    v111 = v62;
    v110 = 0;
    v73 = *(v104 + 20);
    v74 = *MEMORY[0x1E697F468];
    v75 = sub_1BE04F684();
    v76 = v100;
    (*(*(v75 - 8) + 104))(v100 + v73, v74, v75);
    *v76 = v58;
    v76[1] = v58;
    v77 = &v5[*(v108 + 36)];
    sub_1BD1E4AAC(v76, v77);
    *(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
    *v5 = v99;
    *(v5 + 1) = v59;
    v5[16] = v60;
    *(v5 + 3) = v61;
    v5[32] = v62;
    v78 = v103;
    *(v5 + 5) = v63;
    *(v5 + 6) = v78;
    v5[56] = v64;
    *(v5 + 8) = v66;
    *(v5 + 9) = v68;
    *(v5 + 10) = v70;
    *(v5 + 11) = v72;
    v5[96] = 0;
    v79 = v101;
    sub_1BD0DE204(v5, v101, &qword_1EBD45CE8);
    sub_1BD0DE19C(v79, v107, &qword_1EBD45CE8);
    swift_storeEnumTagMultiPayload();
    sub_1BD41EB80(&qword_1EBD45D00, &qword_1EBD45CF8, &unk_1BE0D5710, sub_1BD41EAC8);
    sub_1BD41EB80(&qword_1EBD45D18, &qword_1EBD45CE8, &unk_1BE0D5700, sub_1BD41EC30);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v79, &qword_1EBD45CE8);
  }

  (*(v35 + 32))(v38, v28, v41);
  v42 = sub_1BE0491E4();
  v44 = v43;
  v45 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v46 = sub_1BE04AAB4();
  v47 = [v45 initWithData_];

  sub_1BD1245AC(v42, v44);
  if (!v47)
  {
    (*(v35 + 8))(v38, v41);
    goto LABEL_7;
  }

  v101 = v41;
  v100 = v47;
  sub_1BE051544();
  v48 = v102;
  (*(v16 + 104))(v19, *MEMORY[0x1E6981630], v102);
  v94 = sub_1BE0515E4();

  (*(v16 + 8))(v19, v48);
  v49 = *v103;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v103 = v113;
  v50 = v114;
  v51 = v115;
  v52 = v116;
  v102 = v117;
  v93 = v118;
  v53 = sub_1BE0491C4();
  v96 = v35;
  v95 = v38;
  if (v53)
  {
    v54 = v53;
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    v55 = sub_1BE0511C4();
  }

  else
  {
    v55 = sub_1BE051404();
  }

  v81 = sub_1BE0501D4();
  v112 = v50;
  v111 = v52;
  if (v49)
  {
    v82 = 10.0;
  }

  else
  {
    v82 = 5.0;
  }

  v83 = *(v104 + 20);
  v84 = *MEMORY[0x1E697F468];
  v85 = sub_1BE04F684();
  v86 = v98;
  (*(*(v85 - 8) + 104))(v98 + v83, v84, v85);
  *v86 = v82;
  v86[1] = v82;
  v87 = v97;
  v88 = &v97[*(v105 + 36)];
  sub_1BD1E4AAC(v86, v88);
  *(v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
  v89 = v103;
  *v87 = v94;
  *(v87 + 8) = v89;
  *(v87 + 16) = v50;
  *(v87 + 24) = v51;
  *(v87 + 32) = v52;
  v90 = v93;
  *(v87 + 40) = v102;
  *(v87 + 48) = v90;
  *(v87 + 56) = v55;
  *(v87 + 64) = v81;
  v91 = v99;
  sub_1BD0DE204(v87, v99, &qword_1EBD45CF8);
  sub_1BD0DE19C(v91, v107, &qword_1EBD45CF8);
  swift_storeEnumTagMultiPayload();
  sub_1BD41EB80(&qword_1EBD45D00, &qword_1EBD45CF8, &unk_1BE0D5710, sub_1BD41EAC8);
  sub_1BD41EB80(&qword_1EBD45D18, &qword_1EBD45CE8, &unk_1BE0D5700, sub_1BD41EC30);
  sub_1BE04F9A4();

  sub_1BD0DE53C(v91, &qword_1EBD45CF8);
  return (*(v96 + 8))(v95, v101);
}

uint64_t sub_1BD41EA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD41EAC8()
{
  result = qword_1EBD45D08;
  if (!qword_1EBD45D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45D10);
    sub_1BD1A3410();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D08);
  }

  return result;
}

uint64_t sub_1BD41EB80(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD41EC30()
{
  result = qword_1EBD45D20;
  if (!qword_1EBD45D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45D28);
    sub_1BD1A3410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D20);
  }

  return result;
}

unint64_t sub_1BD41ECBC()
{
  result = qword_1EBD45D30;
  if (!qword_1EBD45D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45D38);
    sub_1BD41ED40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D30);
  }

  return result;
}

unint64_t sub_1BD41ED40()
{
  result = qword_1EBD45D40;
  if (!qword_1EBD45D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45D48);
    sub_1BD41EB80(&qword_1EBD45D00, &qword_1EBD45CF8, &unk_1BE0D5710, sub_1BD41EAC8);
    sub_1BD41EB80(&qword_1EBD45D18, &qword_1EBD45CE8, &unk_1BE0D5700, sub_1BD41EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D40);
  }

  return result;
}

uint64_t sub_1BD41EE24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD41EE74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_1BD41EED8()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v21 - v10;
  if ([v1 eligibilityStatus] == 1)
  {
    return 0;
  }

  v12 = [v1 model];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE052434();
    v16 = v15;

    (*(v3 + 104))(v11, *MEMORY[0x1E69B80D8], v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B69E0;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1BD110550();
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    v18 = sub_1BE04B714();

    v6 = v11;
LABEL_6:
    (*(v3 + 8))(v6, v2);
    return v18;
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v18 = sub_1BE04B6F4();

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_1BD41F1BC(void *a1, void *a2)
{
  sub_1BE053D04();
  result = [a1 identifier];
  if (result)
  {
    v5 = result;
    sub_1BE052434();

    sub_1BE052524();

    sub_1BE053D24();
    if (a2)
    {
      v6 = a2;
      sub_1BE053084();
    }

    return sub_1BE053D64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD41F29C()
{
  v1 = *(v0 + 8);
  v2 = [*v0 identifier];
  if (v2)
  {
    v3 = v2;
    sub_1BE052434();

    sub_1BE052524();

    if (v1)
    {
      sub_1BE053D24();
      v4 = v1;
      sub_1BE053084();
    }

    else
    {
      sub_1BE053D24();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD41F380()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BE053D04();
  result = [v1 identifier];
  if (result)
  {
    v4 = result;
    sub_1BE052434();

    sub_1BE052524();

    sub_1BE053D24();
    if (v2)
    {
      v5 = v2;
      sub_1BE053084();
    }

    return sub_1BE053D64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD41F43C(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BD41F4A0()
{
  result = qword_1EBD45D50;
  if (!qword_1EBD45D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D50);
  }

  return result;
}

unint64_t sub_1BD41F4F4(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  result = [a1 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = sub_1BE052434();
  v11 = v10;

  result = [a3 identifier];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_1BE052434();
  v15 = v14;

  if (v9 == v13 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_1BE053B84();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  result = (a2 | a4) == 0;
  if (a2)
  {
    if (a4)
    {
      sub_1BD3DE6D8();
      v18 = a4;
      v19 = a2;
      v20 = sub_1BE053074();

      return v20 & 1;
    }
  }

  return result;
}

id sub_1BD41F634(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    sub_1BE04B6F4();

    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BE0B69E0;
    result = [a1 accountSuffix];
    if (result)
    {
      v10 = result;
      v11 = sub_1BE052434();
      v13 = v12;

      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1BD110550();
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      v14 = sub_1BE052454();

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void static PeerPaymentFraudUIFactory.fraudUIViewController(for:continuationHandler:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_1BE04BD74();
  v112 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v107 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v107 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v107 - v20;
  v22 = sub_1BE04AA64();
  v110 = *(v22 - 8);
  v111 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v109 = v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v108 = (v107 - v27);
  v28 = type metadata accessor for PeerPaymentFraudPageView(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = v107 - v35;
  if (![a1 riskLevel])
  {
    a2(1);
    return;
  }

  v113 = a2;
  v114 = a3;
  v37 = [a1 dynamicFraudContent];
  if (!v37)
  {
    v44 = *MEMORY[0x1E69B8050];
    v45 = v112;
    v108 = v112[13];
    v108(v21, v44, v6);
    v46 = PKPassKitBundle();
    if (v46)
    {
      v36 = v46;
      v107[2] = sub_1BE04B6F4();
      v107[3] = v47;

      v48 = v45[1];
      v48(v21, v6);
      v108(v17, v44, v6);
      v49 = PKPassKitBundle();
      if (v49)
      {
        v36 = v49;
        v112 = sub_1BE04B6F4();
        v21 = v50;

        v48(v17, v6);
        v108(v13, v44, v6);
        v51 = PKPassKitBundle();
        if (v51)
        {
          v36 = v51;
          sub_1BE04B6F4();
          v107[1] = v52;

          v48(v13, v6);
          v108(v9, v44, v6);
          v53 = PKPassKitBundle();
          if (v53)
          {
            v54 = v53;
            v55 = sub_1BE04B6F4();
            v57 = v56;

            v48(v9, v6);
            v58 = sub_1BE052404();
            v9 = v21;
            v21 = sub_1BE052404();
            v59 = [objc_opt_self() alertControllerWithTitle:v58 message:v21 preferredStyle:1];

            v60 = PKIsVision();
            v108 = v57;
            v107[0] = v55;
            if (!v60)
            {

LABEL_25:
              v86 = swift_allocObject();
              v87 = v113;
              v88 = v114;
              *(v86 + 16) = v113;
              *(v86 + 24) = v88;
              sub_1BE048964();
              v89 = sub_1BE052404();

              v119 = sub_1BD19E0B8;
              v120 = v86;
              aBlock = MEMORY[0x1E69E9820];
              v116 = 1107296256;
              v117 = sub_1BD198918;
              v118 = &block_descriptor_91;
              v90 = _Block_copy(&aBlock);

              v91 = objc_opt_self();
              v92 = [v91 actionWithTitle:v89 style:2 handler:v90];
              _Block_release(v90);

              v93 = swift_allocObject();
              *(v93 + 16) = v87;
              *(v93 + 24) = v88;
              sub_1BE048964();
              v94 = sub_1BE052404();

              v119 = sub_1BD1B5F6C;
              v120 = v93;
              aBlock = MEMORY[0x1E69E9820];
              v116 = 1107296256;
              v117 = sub_1BD198918;
              v118 = &block_descriptor_6;
              v95 = _Block_copy(&aBlock);

              v96 = [v91 actionWithTitle:v94 style:1 handler:v95];
              _Block_release(v95);

              [v59 addAction_];
              [v59 addAction_];
LABEL_30:

              return;
            }

            v61 = PKPassKitUIBundle();
            if (v61)
            {
              v62 = v61;

              v63 = sub_1BE052404();
              v64 = sub_1BE052404();
              v65 = [v62 URLForResource:v63 withExtension:{v64, v107[0]}];

              if (v65)
              {
                v66 = v109;
                sub_1BE04A9F4();

                v65 = sub_1BE04A9C4();
                (*(v110 + 8))(v66, v111);
              }

              v67 = PKUIScreenScale();
              v68 = PKUIImageFromPDF(v65, 64.0, 64.0, v67);

              v69 = [objc_opt_self() clearColor];
              v70 = PKUIImageWithBackgroundAndCornerRadius(v68, v69, 64.0, 64.0, 32.0);

              [v59 setImage_];
              goto LABEL_25;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v38 = v37;
  v39 = [v37 pages];
  if (v39)
  {
    v40 = v39;
    sub_1BD42069C();
    v41 = sub_1BE052744();

    v42 = v114;
    sub_1BE048964();
    PeerPaymentFraudPageView.init(pages:continuationHandler:)(v41, v113, v42, v36);
    sub_1BD4206E8(v36, v31);
    v43 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45D58));
    sub_1BE04F894();

    sub_1BD42074C(v36);
    return;
  }

  v71 = [v38 alertContent];
  v73 = v113;
  v72 = v114;
  if (!v71)
  {

    return;
  }

  v74 = v71;
  v75 = [v74 title];
  if (!v75)
  {
    goto LABEL_36;
  }

  v21 = v75;
  v36 = [v74 message];

  if (!v36)
  {
LABEL_37:

    __break(1u);
    goto LABEL_38;
  }

  v76 = [v74 confirmButtonTitle];
  if (!v76)
  {
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  v9 = v76;
  v77 = [v74 cancelButtonTitle];
  if (!v77)
  {
LABEL_39:

    __break(1u);
    goto LABEL_40;
  }

  v112 = v77;
  v109 = v74;
  v78 = [objc_opt_self() alertControllerWithTitle:v21 message:v36 preferredStyle:1];

  if (!PKIsVision())
  {
LABEL_29:
    v101 = swift_allocObject();
    *(v101 + 16) = v73;
    *(v101 + 24) = v72;
    v119 = sub_1BD32990C;
    v120 = v101;
    aBlock = MEMORY[0x1E69E9820];
    v116 = 1107296256;
    v117 = sub_1BD198918;
    v118 = &block_descriptor_13;
    v102 = _Block_copy(&aBlock);
    sub_1BE048964();

    v103 = objc_opt_self();
    v92 = [v103 actionWithTitle:v9 style:2 handler:v102];
    _Block_release(v102);

    v104 = swift_allocObject();
    *(v104 + 16) = v73;
    *(v104 + 24) = v72;
    v119 = sub_1BD1B6F78;
    v120 = v104;
    aBlock = MEMORY[0x1E69E9820];
    v116 = 1107296256;
    v117 = sub_1BD198918;
    v118 = &block_descriptor_20_0;
    v105 = _Block_copy(&aBlock);
    sub_1BE048964();

    v106 = v112;
    v96 = [v103 actionWithTitle:v112 style:1 handler:v105];
    _Block_release(v105);

    [v78 addAction_];
    [v78 addAction_];

    goto LABEL_30;
  }

  v79 = PKPassKitUIBundle();
  if (v79)
  {
    v80 = v79;
    v81 = sub_1BE052404();
    v82 = sub_1BE052404();
    v83 = [v80 URLForResource:v81 withExtension:v82];

    if (v83)
    {
      v84 = v108;
      sub_1BE04A9F4();

      v85 = sub_1BE04A9C4();
      (*(v110 + 8))(v84, v111);
    }

    else
    {
      v85 = 0;
    }

    v97 = PKUIScreenScale();
    v98 = PKUIImageFromPDF(v85, 64.0, 64.0, v97);

    v99 = [objc_opt_self() clearColor];
    v100 = PKUIImageWithBackgroundAndCornerRadius(v98, v99, 64.0, 64.0, 32.0);

    [v78 setImage_];
    goto LABEL_29;
  }

LABEL_40:

  __break(1u);
}

id PeerPaymentFraudUIFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentFraudUIFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentFraudUIFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PeerPaymentFraudUIFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentFraudUIFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD42069C()
{
  result = qword_1EBD3FCF8;
  if (!qword_1EBD3FCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3FCF8);
  }

  return result;
}

uint64_t sub_1BD4206E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentFraudPageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD42074C(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentFraudPageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD4207CC(void *a1, void (**a2)(void, void))
{
  v4 = sub_1BE04AA64();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v104 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v103 = v100 - v9;
  v10 = type metadata accessor for PeerPaymentFraudPageView(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v100 - v16);
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v107 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v100 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v100 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v100 - v32;
  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  _Block_copy(a2);
  if (![a1 riskLevel])
  {
    a2[2](a2, 1);

    return;
  }

  v102 = a2;
  v108 = v34;
  v35 = [a1 dynamicFraudContent];
  if (!v35)
  {
    v42 = *MEMORY[0x1E69B8050];
    v13 = *(v19 + 104);
    (v13)(v33, v42, v18);
    v43 = PKPassKitBundle();
    if (v43)
    {
      v44 = v43;
      v101 = sub_1BE04B6F4();
      v103 = v45;

      a1 = *(v19 + 8);
      (a1)(v33, v18);
      (v13)(v29, v42, v18);
      v46 = PKPassKitBundle();
      if (v46)
      {
        v33 = v46;
        v100[4] = sub_1BE04B6F4();

        (a1)(v29, v18);
        (v13)(v25, v42, v18);
        v47 = PKPassKitBundle();
        if (v47)
        {
          v33 = v47;
          v100[3] = sub_1BE04B6F4();

          (a1)(v25, v18);
          v48 = v107;
          (v13)(v107, v42, v18);
          v49 = PKPassKitBundle();
          if (v49)
          {
            v50 = v49;
            v51 = sub_1BE04B6F4();
            v53 = v52;

            (a1)(v48, v18);
            v33 = sub_1BE052404();
            a1 = sub_1BE052404();
            v54 = [objc_opt_self() alertControllerWithTitle:v33 message:a1 preferredStyle:1];

            v55 = PKIsVision();
            v100[1] = v51;
            v100[2] = v53;
            if ((v55 & 1) == 0)
            {

LABEL_25:
              v80 = swift_allocObject();
              v81 = v108;
              *(v80 + 16) = sub_1BD1B6B00;
              *(v80 + 24) = v81;
              sub_1BE048964();
              v82 = sub_1BE052404();

              v113 = sub_1BD32990C;
              v114 = v80;
              aBlock = MEMORY[0x1E69E9820];
              v110 = 1107296256;
              v111 = sub_1BD198918;
              v112 = &block_descriptor_31;
              v83 = _Block_copy(&aBlock);

              v84 = objc_opt_self();
              v85 = [v84 actionWithTitle:v82 style:2 handler:v83];
              _Block_release(v83);

              v86 = swift_allocObject();
              *(v86 + 16) = sub_1BD1B6B00;
              *(v86 + 24) = v81;
              sub_1BE048964();
              v87 = sub_1BE052404();

              v113 = sub_1BD1B6F78;
              v114 = v86;
              aBlock = MEMORY[0x1E69E9820];
              v110 = 1107296256;
              v111 = sub_1BD198918;
              v112 = &block_descriptor_38_0;
              v88 = _Block_copy(&aBlock);

              v89 = [v84 actionWithTitle:v87 style:1 handler:v88];
              _Block_release(v88);

              [v54 addAction_];
              [v54 addAction_];

LABEL_30:

              return;
            }

            v56 = PKPassKitUIBundle();
            if (v56)
            {
              v57 = v56;

              v58 = sub_1BE052404();
              v59 = sub_1BE052404();
              v60 = [v57 URLForResource:v58 withExtension:v59];

              if (v60)
              {
                v61 = v104;
                sub_1BE04A9F4();

                v60 = sub_1BE04A9C4();
                (*(v105 + 8))(v61, v106);
              }

              v62 = PKUIScreenScale();
              v63 = PKUIImageFromPDF(v60, 64.0, 64.0, v62);

              v64 = [objc_opt_self() clearColor];
              v65 = PKUIImageWithBackgroundAndCornerRadius(v63, v64, 64.0, 64.0, 32.0);

              [v54 setImage_];
              goto LABEL_25;
            }

LABEL_35:
            _Block_release(v102);
            __break(1u);
LABEL_36:
            _Block_release(v102);
            __break(1u);
            goto LABEL_37;
          }

LABEL_34:
          _Block_release(v102);
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        _Block_release(v102);
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      _Block_release(v102);
      __break(1u);
    }

    _Block_release(v102);
    __break(1u);
    goto LABEL_33;
  }

  v36 = v35;
  v37 = [v35 pages];
  if (v37)
  {
    v38 = v37;
    sub_1BD42069C();
    v39 = sub_1BE052744();

    v40 = v108;
    sub_1BE048964();
    PeerPaymentFraudPageView.init(pages:continuationHandler:)(v39, sub_1BD1B6B00, v40, v17);
    sub_1BD4206E8(v17, v13);
    v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45D58));
    sub_1BE04F894();

    sub_1BD42074C(v17);

    return;
  }

  v66 = [v36 alertContent];
  v67 = v108;
  if (!v66)
  {

    return;
  }

  v68 = v66;
  v69 = [v68 title];
  if (!v69)
  {
    goto LABEL_36;
  }

  a1 = v69;
  v13 = [v68 message];

  if (!v13)
  {
LABEL_37:
    _Block_release(v102);

    __break(1u);
    goto LABEL_38;
  }

  v70 = [v68 confirmButtonTitle];
  if (!v70)
  {
LABEL_38:
    _Block_release(v102);

    __break(1u);
    goto LABEL_39;
  }

  v33 = v70;
  v71 = [v68 cancelButtonTitle];
  if (!v71)
  {
LABEL_39:
    _Block_release(v102);

    __break(1u);
    goto LABEL_40;
  }

  v101 = v68;
  v107 = v71;
  v104 = v36;
  v72 = [objc_opt_self() alertControllerWithTitle:a1 message:v13 preferredStyle:1];

  if ((PKIsVision() & 1) == 0)
  {
LABEL_29:
    v94 = swift_allocObject();
    *(v94 + 16) = sub_1BD1B6B00;
    *(v94 + 24) = v67;
    v113 = sub_1BD32990C;
    v114 = v94;
    aBlock = MEMORY[0x1E69E9820];
    v110 = 1107296256;
    v111 = sub_1BD198918;
    v112 = &block_descriptor_45;
    v95 = _Block_copy(&aBlock);
    sub_1BE048964();

    v96 = objc_opt_self();
    v85 = [v96 actionWithTitle:v33 style:2 handler:v95];
    _Block_release(v95);

    v97 = swift_allocObject();
    *(v97 + 16) = sub_1BD1B6B00;
    *(v97 + 24) = v67;
    v113 = sub_1BD1B6F78;
    v114 = v97;
    aBlock = MEMORY[0x1E69E9820];
    v110 = 1107296256;
    v111 = sub_1BD198918;
    v112 = &block_descriptor_52;
    v98 = _Block_copy(&aBlock);
    sub_1BE048964();

    v99 = v107;
    v89 = [v96 actionWithTitle:v107 style:1 handler:v98];
    _Block_release(v98);

    [v72 addAction_];
    [v72 addAction_];

    goto LABEL_30;
  }

  v73 = PKPassKitUIBundle();
  if (v73)
  {
    v74 = v73;
    v75 = sub_1BE052404();
    v76 = sub_1BE052404();
    v77 = [v74 URLForResource:v75 withExtension:v76];

    if (v77)
    {
      v78 = v103;
      sub_1BE04A9F4();

      v79 = sub_1BE04A9C4();
      (*(v105 + 8))(v78, v106);
    }

    else
    {
      v79 = 0;
    }

    v67 = v108;
    v90 = PKUIScreenScale();
    v91 = PKUIImageFromPDF(v79, 64.0, 64.0, v90);

    v92 = [objc_opt_self() clearColor];
    v93 = PKUIImageWithBackgroundAndCornerRadius(v91, v92, 64.0, 64.0, 32.0);

    [v72 setImage_];
    goto LABEL_29;
  }

LABEL_40:
  _Block_release(v102);

  __break(1u);
}

void sub_1BD421620()
{
  sub_1BE04D8D4();
  if (v0 <= 0x3F)
  {
    sub_1BD4259F8();
    if (v1 <= 0x3F)
    {
      sub_1BD425A50();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BD421798@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v3 = *v2;
  v4 = *(v2 + 3);
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  *a1 = *v2;
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v3;
  swift_unknownObjectRetain();
  v8 = v4;
  v9 = v5;

  return sub_1BE048964();
}

void sub_1BD421830(_OWORD *a1)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v3 = *v2;
  v4 = *(v2 + 4);
  v6 = *(v2 + 3);
  v5 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v5;
  *(v2 + 2) = a1[2];

  swift_unknownObjectRelease();
}

uint64_t sub_1BD4218E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD421998()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD421A70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD421B18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1BE04D8C4();
}

id sub_1BD421D18()
{
  sub_1BD42432C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentAuthorizationStateMachineWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD421DB0(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v4 = sub_1BE04D8D4();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = &a1[*((*v2 & *a1) + 0x60)];
  v6 = *v5;
  v7 = *(v5 + 3);
  v8 = *(v5 + 4);

  swift_unknownObjectRelease();
  v9 = *((*v2 & *a1) + 0x68);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45E90);
  (*(*(v10 - 8) + 8))(&a1[v9], v10);

  v11 = *((*v2 & *a1) + 0xA8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D410);
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  v13 = *&a1[*((*v2 & *a1) + 0xD8)];
}

uint64_t sub_1BD4220A8()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  if (*(v0 + *(v1 + 0xC0)) == 1 || *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8)) == 1)
  {
    result = sub_1BE053994();
    __break(1u);
  }

  else
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = *(v1 + 80);
    *(v3 + 24) = v2;
    sub_1BE048964();
    sub_1BD4222AC(sub_1BD42D5A4, v3);
  }

  return result;
}

void sub_1BD422250(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BD422590(a1 & 1);
  }
}

uint64_t sub_1BD4222AC(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v34 - v7;
  if ((sub_1BD42A44C() & 1) == 0)
  {
    return a1(0);
  }

  v9 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0));
  v10 = [v9 hostApplicationIdentifier];
  if (!v10)
  {
    sub_1BE052434();
    goto LABEL_11;
  }

  v11 = v10;
  v12 = sub_1BE052434();
  v14 = v13;

  v15 = sub_1BE052434();
  if (!v14)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v12 == v15 && v14 == v16)
  {
    goto LABEL_20;
  }

  v18 = sub_1BE053B84();

  if (v18)
  {
    return a1(0);
  }

LABEL_12:
  v19 = [v9 bundleIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE052434();
    v23 = v22;

    v24 = sub_1BE052434();
    if (v23)
    {
      if (v21 != v24 || v23 != v25)
      {
        v27 = sub_1BE053B84();

        if ((v27 & 1) == 0)
        {
          goto LABEL_24;
        }

        return a1(0);
      }

LABEL_20:

      return a1(0);
    }
  }

  else
  {
    sub_1BE052434();
  }

LABEL_24:
  v29 = sub_1BE0528D4();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  sub_1BE0528A4();
  v30 = v2;
  sub_1BE048964();
  v31 = sub_1BE052894();
  v32 = swift_allocObject();
  v33 = MEMORY[0x1E69E85E0];
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v30;
  v32[5] = a1;
  v32[6] = a2;
  sub_1BD122C00(0, 0, v8, &unk_1BE0D5BF8, v32);
}

void sub_1BD422590(char a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  if (a1)
  {
    if ((*(v1 + v4) & 1) == 0)
    {
      *(v1 + v4) = 1;
      [*(v1 + *((*v3 & *v1) + 0xD8)) setDelegate_];
      sub_1BD421798(&v15);
      v5 = v17;
      v6 = v15;
      v7 = v17;

      v14[0] = v16;
      sub_1BD0DE53C(v14, &qword_1EBD3D490);

      sub_1BD424544(v5, 0, 0);
    }
  }

  else
  {
    *(v1 + v4) = 0;
    *(v1 + *((*v3 & *v1) + 0xC0)) = 1;
    v8 = *(v1 + *((*v3 & *v1) + 0xD8));
    [v8 setDelegate_];
    [v8 setModel_];
    *(*(v1 + *((*v3 & *v1) + 0x70)) + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate + 8) = &off_1F3BA8E90;
    swift_unknownObjectWeakAssign();
    sub_1BD421798(v14);
    sub_1BD0E66D0();

    v21 = v14[1];
    sub_1BD0DE53C(&v21, &qword_1EBD3D490);
    v20 = v14[3];
    sub_1BD0DE53C(&v20, &qword_1EBD40150);
    v9 = v14[4];

    [v8 start];
    sub_1BD421798(&v15);
    v10 = v17;
    v11 = v15;
    v12 = v17;

    v19 = v16;
    sub_1BD0DE53C(&v19, &qword_1EBD3D490);

    sub_1BD424544(v10, 0, 0);

    sub_1BD422898();
    v13 = *((*v3 & *v2) + 0xB8);
    if (*(v2 + v13) == 1)
    {
      *(v2 + v13) = 0;
      sub_1BD423A40();
    }
  }
}

void sub_1BD422898()
{
  v1 = sub_1BE04A704();
  v99 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v96 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v89 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v89 - v14;
  v16 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = (&v89 - v23);
  v25 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8));
  v26 = [v25 model];
  if (!v26)
  {
    return;
  }

  v95 = v1;
  v91 = v7;
  v100 = v26;
  v27 = [v26 paymentRequest];
  if (!v27)
  {
    v45 = v100;

    return;
  }

  v28 = v27;
  v97 = v25;
  v29 = [v25 model];
  if (!v29)
  {
    __break(1u);
    goto LABEL_53;
  }

  v30 = v29;
  v31 = [v29 paymentRequest];

  if (!v31)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v32 = [v31 requestType];

  v33 = v97;
  if ((v32 | 8) == 8)
  {
    *v24 = sub_1BD421770();
    swift_storeEnumTagMultiPayload();
    sub_1BD6B56B4(v24, 1);
    sub_1BD42D548(v24);
  }

  v34 = [v28 requiredShippingContactFields];
  type metadata accessor for PKContactField(0);
  v36 = v35;
  v92 = sub_1BD42D500(&qword_1EBD35EE0, type metadata accessor for PKContactField);
  v37 = sub_1BE052A34();

  v98 = *MEMORY[0x1E69BB7D8];
  v38 = sub_1BD6CC0DC(v98, v37);
  v93 = v36;
  v94 = v37;
  if (v38)
  {
    v90 = v19;
    v39 = [v100 shippingAddress];
    sub_1BD0E5E8C(0, &qword_1EBD45E60);
    v40 = sub_1BE0530A4();
    v89 = v28;
    if (v39)
    {
      v41 = v39;
      v42 = [v41 contactSource];
      if (v42 > 4)
      {
        v43 = @"none";
        v44 = @"none";
      }

      else
      {
        v43 = off_1E800FBF8[v42];
        v44 = off_1E800FC20[v42];
      }

      v46 = v43;
      v47 = v44;
      if (!v47)
      {
        goto LABEL_58;
      }

      v48 = v47;

      v40 = v48;
    }

    v49 = *MEMORY[0x1E69B9F80];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45E68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = 0x656372756F73;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v40;
    v51 = v49;
    v52 = v40;
    sub_1BD1ACE64(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &unk_1EBD45E70);
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v53 = sub_1BE052224();

    MEMORY[0x1BFB41980](v51, v53);

    *v24 = v39;
    swift_storeEnumTagMultiPayload();
    sub_1BD6B56B4(v24, 1);
    sub_1BD42D548(v24);
    v28 = v89;
    v19 = v90;
    v33 = v97;
    v37 = v94;
  }

  if ((sub_1BD6CC0DC(v98, v37) & 1) == 0)
  {
    if (sub_1BD6CC0DC(*MEMORY[0x1E69BB7C0], v37))
    {
      v54 = [v33 model];
      if (!v54)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v55 = v54;
      v56 = [v54 shippingName];

      if (v56)
      {
        v57 = [v56 nameComponents];
        if (v57)
        {
          v58 = v57;
          sub_1BE04A6E4();

          v59 = 0;
        }

        else
        {
          v59 = 1;
        }

        v60 = v28;
        (*(v99 + 56))(v11, v59, 1, v95);
        sub_1BD36A448(v11, v15);
      }

      else
      {
        v60 = v28;
        (*(v99 + 56))(v15, 1, 1, v95);
      }

      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70) + 48);
      sub_1BD0DE19C(v15, v24, &unk_1EBD52A20);
      *(v24 + v61) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v24, 1);

      sub_1BD42D548(v24);
      sub_1BD0DE53C(v15, &unk_1EBD52A20);
      v28 = v60;
      v33 = v97;
      v37 = v94;
    }

    if (sub_1BD6CC0DC(*MEMORY[0x1E69BB7D0], v37))
    {
      v62 = [v33 model];
      if (!v62)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v63 = v62;
      v64 = [v62 shippingName];

      if (v64)
      {
        v65 = [v64 nameComponents];
        if (!v65)
        {
LABEL_61:
          __break(1u);
          return;
        }

        v66 = v65;
        v67 = v28;
        v68 = v96;
        sub_1BE04A6E4();

        v69 = v91;
        sub_1BE04A6C4();
        (*(v99 + 8))(v68, v95);
      }

      else
      {
        v67 = v28;
        v69 = v91;
        (*(v99 + 56))(v91, 1, 1, v95);
      }

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70) + 48);
      sub_1BD0DE19C(v69, v24, &unk_1EBD52A20);
      *(v24 + v70) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v24, 1);

      sub_1BD42D548(v24);
      sub_1BD0DE53C(v69, &unk_1EBD52A20);
      v28 = v67;
      v37 = v94;
    }
  }

  if (sub_1BD6CC0DC(*MEMORY[0x1E69BB7C8], v37))
  {
    v71 = [v33 model];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 shippingPhone];

      *v24 = v73;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v24, 1);
      sub_1BD42D548(v24);
      goto LABEL_38;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_38:
  if (sub_1BD6CC0DC(*MEMORY[0x1E69BB7B8], v37))
  {
    v74 = [v33 model];
    if (v74)
    {
      v75 = v74;
      v76 = [v74 shippingEmail];

      *v24 = v76;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v24, 1);
      sub_1BD42D548(v24);
      goto LABEL_41;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_41:
  v77 = [v28 requiredBillingContactFields];
  v78 = sub_1BE052A34();

  if (sub_1BD6CC0DC(v98, v78))
  {
    *v24 = [v100 billingAddress];
    swift_storeEnumTagMultiPayload();
    sub_1BD6B56B4(v24, 1);
    sub_1BD42D548(v24);
  }

  v79 = [v28 availableShippingMethods];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 defaultMethod];

    if (v81)
    {
      *v24 = v81;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v24, 1);
      sub_1BD42D548(v24);
    }
  }

  if ([v28 supportsCouponCode])
  {
    v82 = v28;
    v83 = [v33 model];
    if (v83)
    {
      v84 = v83;
      v85 = [v83 couponCode];

      if (v85)
      {

        v86 = sub_1BE052434();
        v88 = v87;

        *v19 = v86;
        v19[1] = v88;
        swift_storeEnumTagMultiPayload();
        sub_1BD6B56B4(v19, 1);

        sub_1BD42D548(v19);
        return;
      }

      goto LABEL_57;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }
}

id sub_1BD4233C8()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26[-v9];
  sub_1BE04D084();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v11, v12, "Stop state machine", v13, 2u);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  v14 = *(v3 + 8);
  v14(v10, v2);
  v15 = MEMORY[0x1E69E7D40];
  if ((*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0)) & 1) == 0 && (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0)) & 1) == 0)
  {
    sub_1BE04D1E4();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Tried to stop a state machine that was already stopped.", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    v14(v6, v2);
  }

  *(v1 + *((*v15 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v15 & *v1) + 0xB0)) = 0;
  v19 = *(sub_1BD4218D0() + qword_1EBDAADC0);
  sub_1BE048964();

  *(v19 + 224) = 1;
  v20 = *(v19 + 192);
  v28 = *(v19 + 176);
  v29 = v20;
  v30 = *(v19 + 208);
  v21 = *(v19 + 128);
  v27[0] = *(v19 + 112);
  v27[1] = v21;
  v22 = *(v19 + 160);
  v27[2] = *(v19 + 144);
  v27[3] = v22;
  sub_1BD0DE19C(v27, v26, &unk_1EBD45E50);

  if (v28)
  {
    sub_1BD0DE53C(v27, &unk_1EBD45E50);
  }

  [*(v1 + *((*v15 & *v1) + 0xD8)) setCancelReason_];
  sub_1BD42407C(0);
  v23 = *(v1 + *((*v15 & *v1) + 0x70));
  *(v23 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v24 = OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator;
  [*(v23 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) invalidate];
  return [*(v23 + v24) setDelegate_];
}

id sub_1BD42379C()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v11 = MEMORY[0x1E69E7D40];
  if (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0)) == 1)
  {
    sub_1BE04D1E4();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "Attempted to pause state machine while it's waiting for app protection unlock to start. Removing hold to resume on start", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    result = (*(v3 + 8))(v10, v2);
    v16 = *((*v11 & *v1) + 0xB8);
    if (*(v1 + v16) == 1)
    {
      *(v1 + v16) = 0;
    }
  }

  else
  {
    sub_1BE04D084();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "Pause state machine", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_1BD4218D0();
    sub_1BE04CAA4();

    sub_1BD492024();
    return [*(v1 + *((*v11 & *v1) + 0xD8)) didResignActive_];
  }

  return result;
}

id sub_1BD423A40()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = MEMORY[0x1E69E7D40];
  if (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0)) == 1)
  {
    sub_1BE04D1E4();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "Attempted to resume state machine while it's waiting for app protection unlock start. Holding until start has been called", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    result = (*(v3 + 8))(v10, v2);
    *(v1 + *((*v11 & *v1) + 0xB8)) = 1;
  }

  else
  {
    sub_1BE04D084();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Resume state machine", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_1BD4218D0();
    sub_1BE04CAA4();

    sub_1BD492170();
    return [*(v1 + *((*v11 & *v1) + 0xD8)) didBecomeActive_];
  }

  return result;
}

id sub_1BD423D2C(const char *a1, void (*a2)(uint64_t), SEL *a3)
{
  v7 = v3;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BD026000, v13, v14, a1, v15, 2u);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  v16 = (*(v9 + 8))(v12, v8);
  a2(v16);
  return [*(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0xD8)) *a3];
}

void sub_1BD423EBC()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "Sidecar became active", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-2019 userInfo:0];
  v11 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8));
  v12 = sub_1BE04A844();
  [v11 didEncounterError_];
}

id sub_1BD42407C(char a1)
{
  v3 = MEMORY[0x1E69E7D40];
  result = [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0)) paymentRequest];
  if (result)
  {
    v5 = result;
    v6 = [result isPeerPaymentRequest];

    if (v6)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA158], 0);
    }

    sub_1BD4241C0(1);
    result = [*(v1 + *((*v3 & *v1) + 0xD8)) didCancel];
    if (a1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result authorizationDidFinishWithError_];

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4241C0(char a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v4 = sub_1BE04CA44();

  if (v4)
  {
    if (a1)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    [*(v3 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BE04CA54();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD42432C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8);
  if ((*(v0 + v2) & 1) == 0)
  {
    v3 = v0;
    *(v0 + v2) = 1;
    v4 = *(v0 + *((*v1 & *v0) + 0x70));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v5 = sub_1BE04CA44();

    if (v5)
    {
      [*(v4 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      sub_1BE04CA54();
      v6 = *(v9 + qword_1EBD55580);
      v7 = *(v9 + qword_1EBD55580 + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v6;
      v10 = v7;
      sub_1BE04D8C4();
    }

    v8 = OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator;
    [*(v4 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) invalidate];
    [*(v4 + v8) setDelegate_];
    [*(v3 + *((*v1 & *v3) + 0xD8)) invalidate];
    sub_1BE04BE44();
  }
}

uint64_t sub_1BD424544(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BD421798(&v11);
  v7 = [*(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8)) state];
  v21 = v11;
  v22 = v7;
  v23 = a1;
  v24 = v13;
  v20 = v12;
  v8 = a1;
  sub_1BD0DE53C(&v20, &qword_1EBD40150);
  sub_1BD421830(&v21);
  v9 = sub_1BD421770();
  sub_1BD421798(v14);
  (*(*v9 + qword_1EBDAAD58 + 96))(v14);

  v19 = v14[1];
  sub_1BD0DE53C(&v19, &qword_1EBD3D490);
  v18 = v14[3];
  sub_1BD0DE53C(&v18, &qword_1EBD40150);

  sub_1BD4218D0();
  sub_1BD421798(v15);
  sub_1BD83BD94(v15, a2, a3);

  v17 = v15[1];
  sub_1BD0DE53C(&v17, &qword_1EBD3D490);
  v16 = v15[3];
  sub_1BD0DE53C(&v16, &qword_1EBD40150);
}

uint64_t sub_1BD424758(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v9 = a1;
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    v15 = [v9 description];
    v16 = sub_1BE052434();
    v18 = v17;

    v19 = sub_1BD123690(v16, v18, &v22);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1BD026000, v10, v11, "Handle invalid data with %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1BFB45F20](v14, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return sub_1BD4241C0(1);
}

id sub_1BD424948()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v46 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = sub_1BE051F54();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1BE051FA4();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v7);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051F44();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BE051FC4();
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v47 = &v44 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v25 = &v44 - v24;
  *(*(v1 + *((v3 & v2) + 0x90)) + 32) = 1;
  v26 = *(v1 + *((*v1 & v3) + 0xD0));
  result = [v26 paymentRequest];
  if (result)
  {
    v28 = result;
    v29 = [result isPeerPaymentRequest];

    if (!v29)
    {
LABEL_8:
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v45 = sub_1BE052D54();
      sub_1BE051FB4();
      *v13 = 1;
      (*(v10 + 104))(v13, *MEMORY[0x1E69E7F48], v9);
      v35 = v47;
      MEMORY[0x1BFB3F070](v17, v13);
      (*(v10 + 8))(v13, v9);
      v36 = v49;
      v48 = *(v48 + 8);
      (v48)(v17, v49);
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = *(v46 + 80);
      *(v38 + 24) = v37;
      aBlock[4] = sub_1BD42D6A8;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_76_0;
      v39 = _Block_copy(aBlock);

      v40 = v50;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      v41 = v52;
      v42 = v55;
      sub_1BE053664();
      v43 = v45;
      MEMORY[0x1BFB3FD90](v35, v40, v41, v39);
      _Block_release(v39);

      (*(v54 + 8))(v41, v42);
      (*(v51 + 8))(v40, v53);
      return (v48)(v35, v36);
    }

    result = [v26 paymentRequest];
    if (result)
    {
      v30 = result;
      v31 = [result originatingURL];

      if (v31)
      {
        sub_1BE04A9F4();

        v32 = sub_1BE04AA64();
        (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
        v33 = MEMORY[0x1E69BA180];
      }

      else
      {
        v34 = sub_1BE04AA64();
        (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
        v33 = MEMORY[0x1E69BA160];
      }

      sub_1BD0DE53C(v25, &unk_1EBD3CF70);
      MEMORY[0x1BFB41980](*v33, 0);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BD424FF8(void *a1))(uint64_t a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v10 = a1;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v13 = 136315138;
    v14 = [v10 error];
    v29 = v5;
    v30 = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0);
    v27 = v12;
    v16 = sub_1BE0534A4();
    v17 = v4;
    v19 = v18;

    v20 = sub_1BD123690(v16, v19, &v31);
    v4 = v17;

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1BD026000, v11, v27, "Payment failed with error %s", v13, 0xCu);
    v21 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1BFB45F20](v21, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);

    (*(v6 + 8))(v9, v29);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  result = sub_1BD425D84(v10);
  if (!result)
  {
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = *(v4 + 80);
    v24[3] = v10;
    v24[4] = v23;
    v25 = v10;
    return sub_1BD42D6B0;
  }

  return result;
}

uint64_t (*sub_1BD4252D0(void *a1))(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_1BE04D214();
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v10 = a1;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v46 = v5;
    v14 = v13;
    v44 = swift_slowAlloc();
    v49[0] = v44;
    *v14 = 136315138;
    v15 = [v10 error];
    v45 = v6;
    v16 = v15;
    v48 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0);
    v17 = sub_1BE0534A4();
    v18 = v10;
    v20 = v19;

    v21 = sub_1BD123690(v17, v20, v49);
    v10 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&dword_1BD026000, v11, v12, "Payment failed with fatal error %s", v14, 0xCu);
    v22 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    v4 = MEMORY[0x1E69E7D40];
    MEMORY[0x1BFB45F20](v22, -1, -1);
    v23 = v14;
    v5 = v46;
    MEMORY[0x1BFB45F20](v23, -1, -1);

    (*(v47 + 8))(v9, v45);
  }

  else
  {

    (*(v47 + 8))(v9, v6);
  }

  sub_1BD4241C0(1);
  result = [v10 error];
  if (result)
  {
    v25 = result;
    result = [*(v2 + *((*v4 & *v2) + 0xD0)) paymentRequest];
    if (result)
    {
      v26 = result;
      v27 = v10;
      v28 = [result useLocationBasedAuthorization];

      if (v28)
      {
        v29 = [v25 domain];
        v30 = sub_1BE052434();
        v32 = v31;

        if (v30 == sub_1BE052434() && v32 == v33)
        {
        }

        else
        {
          v34 = sub_1BE053B84();

          if ((v34 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if ([v25 code] == -1)
        {
          v35 = [v25 userInfo];
          v36 = sub_1BE052244();

          if (*(v36 + 16))
          {
            v37 = sub_1BD148F70(0xD000000000000015, 0x80000001BE128F00);
            if (v38)
            {
              sub_1BD038CD0(*(v36 + 56) + 32 * v37, v49);

              if (swift_dynamicCast())
              {
                v39 = v48 == 5;
LABEL_19:
                *(*(v2 + *((*v4 & *v2) + 0x90)) + 32) = 1;
                v40 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v41 = swift_allocObject();
                *(v41 + 16) = *(v5 + 80);
                *(v41 + 24) = v40;
                *(v41 + 32) = v27;
                *(v41 + 40) = v39;
                v42 = v27;
                return sub_1BD42D6D4;
              }

LABEL_18:
              v39 = 0;
              goto LABEL_19;
            }
          }
        }
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD4257CC(void *a1)
{
  result = [a1 remotePaymentRequest];
  if (result)
  {

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result authorizationWillStart];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BD425868(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a6;
  v11 = a1;
  LOBYTE(a6) = sub_1BD42CE30(a5, a6);

  return a6 & 1;
}

void sub_1BD4258DC()
{
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0)) == 1)
  {
    sub_1BD421B18();

    sub_1BD422590(0);
  }
}

void sub_1BD425958(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1BD42D468();
}

void sub_1BD4259F8()
{
  if (!qword_1EBD36910)
  {
    type metadata accessor for AuthenticatorModel();
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD36910);
    }
  }
}

void sub_1BD425A50()
{
  if (!qword_1EBD45E28)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD45E28);
    }
  }
}

uint64_t sub_1BD425AA0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PaymentAuthorizationStateMachineWrapper();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

id sub_1BD425AE4()
{
  v0 = sub_1BD42BBA8();

  return v0;
}

uint64_t sub_1BD425CF0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BD425D2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD492914(0);
  }
}

uint64_t (*sub_1BD425D84(void *a1))(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  result = [a1 error];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    sub_1BD0E5E8C(0, &qword_1EBD45E80);
    if (swift_dynamicCast())
    {
      v4 = [v14 domain];
      v5 = sub_1BE052434();
      v7 = v6;

      if (v5 == sub_1BE052434() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_1BE053B84();

        if ((v10 & 1) == 0)
        {

          return 0;
        }
      }

      v11 = [v14 code];

      if (v11 == -2012)
      {
        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = *(v2 + 80);
        *(v13 + 24) = v12;
        return sub_1BD42D6C4;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BD425F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v3 = sub_1BE051F54();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051F44();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1BE051FC4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v34 - v22;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v36 = sub_1BE052D54();
    sub_1BE051FB4();
    *v14 = 450;
    (*(v11 + 104))(v14, *MEMORY[0x1E69E7F38], v10);
    MEMORY[0x1BFB3F070](v19, v14);
    (*(v11 + 8))(v14, v10);
    v35 = *(v16 + 8);
    v26 = v19;
    v27 = v15;
    v35(v26, v15);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 24) = v28;
    aBlock[4] = sub_1BD42D6CC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_97_1;
    v30 = _Block_copy(aBlock);

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v31 = v38;
    v32 = v42;
    sub_1BE053664();
    v33 = v36;
    MEMORY[0x1BFB3FD90](v23, v9, v31, v30);
    _Block_release(v30);

    (*(v41 + 8))(v31, v32);
    (*(v39 + 8))(v9, v40);
    return (v35)(v23, v27);
  }

  return result;
}

void sub_1BD426434()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD4218D0();
    v2 = sub_1BE04CA44();

    if (v2)
    {
      sub_1BD4218D0();
      sub_1BD83CA74(3, 0, 0, 0, 1);

      [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8)) didResolveError];
    }
  }
}

uint64_t sub_1BD42650C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v58 = a3;
  v5 = sub_1BE051F54();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1BE051FA4();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v8);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051F44();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_1BE051FC4();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v56 = &v53 - v20;
  v21 = sub_1BE04D214();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v53 - v29;
  if ([a2 isPaymentOffersError])
  {
    v54 = v10;
    sub_1BE04D084();
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C34();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v53 = a2;
      v34 = v33;
      *v33 = 0;
      _os_log_impl(&dword_1BD026000, v31, v32, "Error originated from payment offers", v33, 2u);
      v35 = v34;
      a2 = v53;
      MEMORY[0x1BFB45F20](v35, -1, -1);
    }

    (*(v22 + 8))(v30, v21);
    v36 = 2000;
    v10 = v54;
  }

  else
  {
    v36 = 450;
  }

  if ([a2 isClientFailure])
  {
    sub_1BE04D084();
    v37 = sub_1BE04D204();
    v38 = sub_1BE052C34();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v10;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1BD026000, v37, v38, "Error originated from client", v40, 2u);
      v41 = v40;
      v10 = v39;
      MEMORY[0x1BFB45F20](v41, -1, -1);
    }

    (*(v22 + 8))(v25, v21);
    v36 = 2000;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v54 = sub_1BE052D54();
  sub_1BE051FB4();
  *v14 = v36;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E7F38], v10);
  v42 = v56;
  MEMORY[0x1BFB3F070](v17, v14);
  (*(v11 + 8))(v14, v10);
  v43 = *(v57 + 8);
  v44 = v59;
  v43(v17, v59);
  v45 = swift_allocObject();
  v46 = v58;
  *(v45 + 16) = v55;
  *(v45 + 24) = v46;
  aBlock[4] = sub_1BD42D6BC;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_86;
  v47 = _Block_copy(aBlock);
  sub_1BE048964();

  v48 = v60;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v49 = v62;
  v50 = v65;
  sub_1BE053664();
  v51 = v54;
  MEMORY[0x1BFB3FD90](v42, v48, v49, v47);
  _Block_release(v47);

  (*(v64 + 8))(v49, v50);
  (*(v61 + 8))(v48, v63);
  return (v43)(v42, v44);
}

void sub_1BD426BAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xD8));

    [v2 didResolveError];
  }
}

uint64_t sub_1BD426C40(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = v10;
    v11[4] = a3;
    v12 = a3;
    if (a4)
    {
      sub_1BD4218D0();
      sub_1BE048964();
      sub_1BDA33888(sub_1BD42D730, v11, &v24);
      v17 = v25;
      v18 = v24;
      v14 = v26;
      v13 = v27;
      swift_getKeyPath();
      swift_getKeyPath();
      v20 = v18;
      v21 = v17;
      v22 = v14;
      v23 = v13;
      v28 = v25;
      v29 = v24;
      sub_1BD206260(&v29, v19);
      sub_1BD0DE19C(&v28, v19, &qword_1EBD3A5C8);
      sub_1BE048964();
      sub_1BE04D8C4();

      sub_1BD1BCDE4(&v29);
      sub_1BD0DE53C(&v28, &qword_1EBD3A5C8);
    }

    else
    {
      v15 = v12;
      v16 = sub_1BE048964();
      sub_1BD426E20(v16, v15);
    }
  }

  return result;
}

uint64_t sub_1BD426E20(uint64_t a1, void *a2)
{
  v37 = a2;
  v2 = sub_1BE051F54();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051F44();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BE051FC4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v36 = sub_1BE052D54();
    sub_1BE051FB4();
    *v13 = 450;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E7F38], v9);
    MEMORY[0x1BFB3F070](v18, v13);
    (*(v10 + 8))(v13, v9);
    v35 = *(v15 + 8);
    v25 = v14;
    v35(v18, v14);
    v26 = swift_allocObject();
    v27 = v37;
    *(v26 + 16) = v24;
    *(v26 + 24) = v27;
    aBlock[4] = sub_1BD42D73C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_117_0;
    v28 = _Block_copy(aBlock);
    v29 = v24;
    v30 = v27;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v31 = v38;
    v32 = v42;
    sub_1BE053664();
    v33 = v36;
    MEMORY[0x1BFB3FD90](v22, v8, v31, v28);
    _Block_release(v28);

    (*(v41 + 8))(v31, v32);
    (*(v39 + 8))(v8, v40);
    return (v35)(v22, v25);
  }

  return result;
}

void sub_1BD4272CC(int a1, id a2)
{
  v2 = [a2 error];
  sub_1BD492914(v2);
}

void sub_1BD42732C(uint64_t a1, void *a2)
{
  v3 = v2;
  v40 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  if (a1)
  {
    goto LABEL_6;
  }

  v12 = *(v3 + *(v40 + 208));
  v13 = [v12 paymentRequest];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v13 requestType];

  if (v15 == 13)
  {
    goto LABEL_6;
  }

  v16 = [v12 paymentRequest];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 disablePasscodeFallback];

  if (v18)
  {
LABEL_6:
    sub_1BD421798(v41);
    v19 = v41[0];
    v20 = v41[4];

    v43 = v41[1];
    sub_1BD0DE53C(&v43, &qword_1EBD3D490);
    v42 = v41[3];
    sub_1BD0DE53C(&v42, &qword_1EBD40150);

    v21 = [v20 paymentRequest];

    if (v21)
    {
      sub_1BD0E5E8C(0, &unk_1EBD35E80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v23 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v24 = sub_1BE052434();
      v25 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v24;
      *(inited + 48) = v26;
      v27 = *v25;
      *(inited + 56) = *v25;
      *(inited + 64) = sub_1BE052434();
      *(inited + 72) = v28;
      v29 = v23;
      v30 = v27;
      v31 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      sub_1BD6B14D4(v31, v21);

      v32 = sub_1BD421770();
      sub_1BD6B261C(v32);

      if (a2)
      {
        v33 = a2;
      }

      else
      {
        v33 = sub_1BD4277B4(a1, 0);
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = *(v40 + 80);
      *(v35 + 24) = v34;
      v36 = a2;
      sub_1BE048964();
      sub_1BD7F2940(v33, sub_1BD42BC20, v35);

      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_1BE04D084();
  v37 = sub_1BE04D204();
  v38 = sub_1BE052C34();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1BD026000, v37, v38, "Cannot evaluate policy, cancelling", v39, 2u);
    MEMORY[0x1BFB45F20](v39, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
  sub_1BD42407C(1);
}

uint64_t sub_1BD4277B4(uint64_t a1, int a2)
{
  v3 = v2;
  v78 = a2;
  v5 = sub_1BE04BD74();
  v83 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v76 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v81 = &v75 - v13;
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4218D0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v19 = v85[0];
  v20 = objc_allocWithZone(MEMORY[0x1E69BC748]);
  v79 = v19;
  v82 = [v20 initWithPolicy_];
  if (!v82)
  {
    goto LABEL_48;
  }

  v80 = v14;
  sub_1BD4218D0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v21 = PKAuthenticatorPolicyDescription(v85[0]);
  if (!v21)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v22 = v21;
  v23 = sub_1BE052434();
  v25 = v24;

  v85[0] = v23;
  v85[1] = v25;
  v26 = sub_1BE052644();
  v28 = v27;
  sub_1BE04D084();
  sub_1BE048C84();
  v29 = sub_1BE04D204();
  v30 = sub_1BE052C54();

  v31 = os_log_type_enabled(v29, v30);
  v84 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v75 = a1;
    v33 = v32;
    v34 = v5;
    v35 = swift_slowAlloc();
    v85[0] = v35;
    *v33 = 136315138;
    *(v33 + 4) = sub_1BD123690(v26, v28, v85);
    _os_log_impl(&dword_1BD026000, v29, v30, "New authenticator policy is %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    v36 = v35;
    v5 = v34;
    MEMORY[0x1BFB45F20](v36, -1, -1);
    v37 = v33;
    a1 = v75;
    MEMORY[0x1BFB45F20](v37, -1, -1);
  }

  (*(v15 + 8))(v18, v80);
  v38 = v83;
  v39 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD0));
  v40 = [v39 paymentRequest];
  v41 = v81;
  v42 = v82;
  if (!v40)
  {
    goto LABEL_43;
  }

  v43 = v40;
  if ((v78 & 1) == 0)
  {
    [v82 setInitialAuthenticatorState_];
  }

  if (([v43 _isAMPPayment] & 1) != 0 || objc_msgSend(v43, sel_requestType) == 7 || objc_msgSend(v43, sel_requestType) == 13)
  {
    v44 = [v43 externalizedContext];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1BE04AAC4();
      v48 = v47;

      v49 = sub_1BE04AAB4();
      sub_1BD1245AC(v46, v48);
    }

    else
    {
      v49 = 0;
    }

    [v42 setExternalizedContext_];

    v50 = [v43 accesssControlRef];
    v51 = &selRef_setAccessControlRef_;
LABEL_15:
    [v42 *v51];

    goto LABEL_16;
  }

  if ([v43 requestType] == 6)
  {
    v70 = [v43 externalizedContext];
    if (v70)
    {
      v71 = v70;
      v72 = sub_1BE04AAC4();
      v74 = v73;

      v50 = sub_1BE04AAB4();
      sub_1BD1245AC(v72, v74);
    }

    else
    {
      v50 = 0;
    }

    v51 = &selRef_setExternalizedContext_;
    goto LABEL_15;
  }

LABEL_16:
  if ([v43 _isAMPPayment])
  {
    [v42 setMaxBiometryFailures_];
  }

  if (v79 == 6 || v79 == 3)
  {
    (*(v38 + 104))(v41, *MEMORY[0x1E69B8068], v5);
    v52 = PKPassKitBundle();
    if (v52)
    {
      v53 = v52;
      sub_1BE04B6F4();

      (*(v38 + 8))(v41, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1BE0B69E0;
      v55 = [v39 pass];
      if (v55)
      {
        v56 = v55;

        v57 = [v56 localizedDescription];

        v58 = sub_1BE052434();
        v60 = v59;

        *(v54 + 56) = MEMORY[0x1E69E6158];
        *(v54 + 64) = sub_1BD110550();
        *(v54 + 32) = v58;
        *(v54 + 40) = v60;
        sub_1BE052454();

        v61 = sub_1BE052404();

        [v42 setPINTitle_];

        v62 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v42 setPINLength_];

        goto LABEL_24;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      result = sub_1BE053994();
      __break(1u);
      return result;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_24:
  v63 = [v43 localizedConfirmationTitle];
  v64 = v77;
  if (v63)
  {
    v65 = v63;
LABEL_33:
    [v42 setPasscodeTitle_];

    goto LABEL_34;
  }

  if ([v43 confirmationStyle] == 1)
  {
    v64 = v76;
    (*(v38 + 104))(v76, *MEMORY[0x1E69B8068], v5);
    v66 = PKPassKitBundle();
    if (v66)
    {
      v67 = v66;
LABEL_32:
      sub_1BE04B6F4();

      (*(v38 + 8))(v64, v5);
      v65 = sub_1BE052404();

      goto LABEL_33;
    }

    goto LABEL_46;
  }

  if ([v43 confirmationStyle] == 3)
  {
    (*(v38 + 104))(v64, *MEMORY[0x1E69B8068], v5);
    v68 = PKPassKitBundle();
    if (v68)
    {
      v67 = v68;
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_34:
  if ([v43 useLocationBasedAuthorization])
  {
    [v42 setUseLocationBasedAuthorization_];
  }

  return v42;
}

void sub_1BD428134(uint64_t a1, void *a2, uint64_t a3)
{
  v127 = a3;
  v4 = sub_1BE04C974();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v133 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  v135 = v8;
  v136 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v123 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v123 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v132 = &v123 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v123 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v128 = &v123 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v130 = (&v123 - v33);
  v131 = sub_1BE04C7B4();
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v34);
  v36 = (&v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v38 = Strong;
  v124 = v36;
  v125 = v5;
  v126 = v4;
  v39 = a2;
  v40 = [a2 result];
  v134 = v38;
  sub_1BD421798(v138);
  v41 = v138[0];
  v42 = v138[4];

  v140 = v138[1];
  sub_1BD0DE53C(&v140, &qword_1EBD3D490);
  v139 = v138[3];
  sub_1BD0DE53C(&v139, &qword_1EBD40150);

  v43 = [v42 paymentRequest];

  if (!v43)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_1BD6B99C4(v40, v43);

  v44 = [v39 result];
  if (v44 > 3)
  {
    v45 = v134;
    if ((v44 - 4) < 2)
    {
      sub_1BE04D084();
      v58 = sub_1BE04D204();
      v59 = sub_1BE052C54();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1BD026000, v58, v59, "Authentication pre-empted or failed", v60, 2u);
        MEMORY[0x1BFB45F20](v60, -1, -1);
      }

      (*(v136 + 8))(v12, v135);
      v61 = *(v45 + *((*MEMORY[0x1E69E7D40] & *v45) + 0xD8));
      v62 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v64 = v61;
      v65 = v62;
      v66 = [v39 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v66;
      sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080);
      v67 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v68 = sub_1BE052224();

      v69 = [v67 initWithDomain:v65 code:-1 userInfo:v68];

      v70 = sub_1BE04A844();
      [v64 didEncounterFatalError_];

      return;
    }

    if (v44 == 6)
    {
      sub_1BE04D084();
      v91 = sub_1BE04D204();
      v92 = sub_1BE052C54();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_1BD026000, v91, v92, "Triggered biolockout", v93, 2u);
        MEMORY[0x1BFB45F20](v93, -1, -1);
      }

      (*(v136 + 8))(v16, v135);
      v94 = MEMORY[0x1E69E7D40];
      v95 = [*(v45 + *((*MEMORY[0x1E69E7D40] & *v45) + 0xD0)) paymentRequest];
      if (v95)
      {
        v96 = v95;
        if ([v95 _isPVKRequest])
        {
          v97 = *(v45 + *((*v94 & *v45) + 0xD8));
          v98 = *MEMORY[0x1E69BBBC8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
          v99 = swift_initStackObject();
          *(v99 + 16) = xmmword_1BE0B69E0;
          *(v99 + 32) = 0xD000000000000015;
          *(v99 + 40) = 0x80000001BE128F00;
          v100 = v97;
          v101 = v98;
          v102 = [v39 &selRef_removeObjectIdenticalTo_];
          *(v99 + 72) = MEMORY[0x1E69E6530];
          *(v99 + 48) = v102;
          sub_1BD1AACF8(v99);
          swift_setDeallocating();
          sub_1BD0DE53C(v99 + 32, &qword_1EBD52080);
          v103 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v104 = sub_1BE052224();

          v105 = [v103 initWithDomain:v101 code:-1 userInfo:v104];

          v106 = sub_1BE04A844();
          [v100 didEncounterFatalError_];
        }

        else
        {
          if ([v96 requestType] == 13)
          {
            v111 = *(sub_1BD4218D0() + qword_1EBDAADC0);
            sub_1BE048964();

            v112 = *(v111 + 61);

            if (v112 == 1)
            {
              sub_1BD429354();
            }

            else
            {
              sub_1BD4218D0();
              sub_1BE04CA74();

              v117 = sub_1BD4218D0();
              v118 = *(v117 + qword_1EBDAADA8 + 16);
              v141[0] = *(v117 + qword_1EBDAADA8);
              v141[1] = v118;
              v142 = *(v117 + qword_1EBDAADA8 + 32);
              v119 = *&v141[0];
              v120 = v142;
              v143 = *(&v141[0] + 1);
              v144[0] = *(&v118 + 1);
              sub_1BE048964();
              v121 = v119;
              sub_1BD0DE19C(&v143, v137, &qword_1EBD3D490);
              sub_1BD0DE19C(v144, v137, &qword_1EBD40150);
              v122 = v120;
              sub_1BE048964();
              sub_1BDA74FEC(v141, v117, 0, 0);

              v45 = v134;
              sub_1BD0DE53C(&v143, &qword_1EBD3D490);
              sub_1BD0DE53C(v144, &qword_1EBD40150);
            }

            v115 = v125;
            v114 = v126;
            v116 = v133;
          }

          else
          {
            v113 = sub_1BD429504();
            v115 = v125;
            v114 = v126;
            v116 = v133;
            if ((v113 & 1) != 0 || [v96 _isAMPPayment])
            {
              sub_1BD4295A8();
            }
          }

          (*(v115 + 104))(v116, *MEMORY[0x1E69BCA48], v114);
          if (sub_1BD42A3D0())
          {
            sub_1BD491BC4(v116);
          }

          (*(v115 + 8))(v116, v114);
        }

        return;
      }

LABEL_68:
      __break(1u);
      return;
    }

    if (v44 != 7)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v45 = v134;
  if (v44 > 1)
  {
    if (v44 == 2)
    {
      v87 = v132;
      sub_1BE04D084();
      v88 = sub_1BE04D204();
      v89 = sub_1BE052C54();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1BD026000, v88, v89, "Authentication canceled by app", v90, 2u);
        MEMORY[0x1BFB45F20](v90, -1, -1);
      }

      else
      {
      }

      (*(v136 + 8))(v87, v135);
      return;
    }

LABEL_15:
    sub_1BE04D084();
    v49 = sub_1BE04D204();
    v50 = sub_1BE052C54();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1BD026000, v49, v50, "Authentication canceled by biometry or selected fallback", v51, 2u);
      MEMORY[0x1BFB45F20](v51, -1, -1);
    }

    (*(v136 + 8))(v20, v135);
    v52 = MEMORY[0x1E69E7D40];
    v53 = [*(v45 + *((*MEMORY[0x1E69E7D40] & *v45) + 0xD0)) paymentRequest];
    v55 = v125;
    v54 = v126;
    v56 = v133;
    if (v53)
    {
      v57 = v53;
      if ([v53 requestType] == 13)
      {
        [*(v45 + *((*v52 & *v45) + 0xD8)) didResolveError];
      }

      else if ([v57 _isAMPPayment])
      {
        sub_1BD4295A8();
      }

      (*(v55 + 104))(v56, *MEMORY[0x1E69BCA48], v54);
      if (sub_1BD42A3D0())
      {
        sub_1BD491BC4(v56);
      }

      (*(v55 + 8))(v56, v54);
      return;
    }

    goto LABEL_67;
  }

  if (v44)
  {
    if (v44 == 1)
    {
      sub_1BE04D084();
      v46 = sub_1BE04D204();
      v47 = sub_1BE052C54();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1BD026000, v46, v47, "Authentication canceled by user", v48, 2u);
        MEMORY[0x1BFB45F20](v48, -1, -1);
      }

      (*(v136 + 8))(v27, v135);
      [*(v45 + *((*MEMORY[0x1E69E7D40] & *v45) + 0xD8)) didResolveError];
      sub_1BD4218D0();
      sub_1BE04CB64();

      return;
    }

LABEL_13:

    return;
  }

  v71 = *((*MEMORY[0x1E69E7D40] & *v134) + 0xD8);
  if ([*(v134 + v71) state] == 5)
  {
    if ([v39 biometricMatch])
    {
      sub_1BD4218D0();
      sub_1BE048964();

      sub_1BDA75178(8, 17, 0, 0);
    }

    if ((PKPearlIsAvailable() & 1) == 0 && (PKOpticIDIsAvailable() & 1) == 0)
    {
      [*(v45 + v71) beginDelayingAuthorizedState];
      sub_1BD4218D0();
      sub_1BE048964();

      v72 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = swift_allocObject();
      *(v73 + 16) = v127;
      *(v73 + 24) = v72;
      sub_1BE048964();
      sub_1BDA75178(11, 17, sub_1BD42D49C, v73);

      if (0.5 - CFAbsoluteTimeGetCurrent() > 0.0)
      {
        [*(v45 + v71) delayAuthorizedStateByDuration_];
      }
    }

    sub_1BD4218D0();
    v74 = v129;
    v75 = v124;
    v76 = v131;
    (*(v129 + 104))(v124, *MEMORY[0x1E69BC988], v131);
    v77 = sub_1BE051F44();
    v78 = v130;
    (*(*(v77 - 8) + 56))(v130, 1, 1, v77);
    sub_1BD83C0A8(v75, 0, 0, v78);

    sub_1BD0DE53C(v78, &unk_1EBD45E40);
    (*(v74 + 8))(v75, v76);
    v79 = swift_unknownObjectWeakLoadStrong();
    if (v79)
    {
      [v79 authorizationWillStart];
      swift_unknownObjectRelease();
    }

    v80 = *(v45 + v71);
    v81 = [v39 credential];
    if (v81)
    {
      v82 = v81;
      v83 = sub_1BE04AAC4();
      v85 = v84;

      v86 = sub_1BE04AAB4();
      sub_1BD1245AC(v83, v85);
    }

    else
    {
      v86 = 0;
    }

    [v80 didAuthenticateWithCredential_];

    swift_unknownObjectRelease();
  }

  else
  {
    v107 = v128;
    sub_1BE04D084();
    v108 = sub_1BE04D204();
    v109 = sub_1BE052C54();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_1BD026000, v108, v109, "Authentication successful but in wrong state - discarding credential", v110, 2u);
      MEMORY[0x1BFB45F20](v110, -1, -1);
    }

    else
    {
    }

    (*(v136 + 8))(v107, v135);
  }
}

void sub_1BD4292C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xD8));

    [v2 endDelayingAuthorizedState];
  }
}

id sub_1BD429354()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  sub_1BD4241C0(1);
  result = [objc_allocWithZone(MEMORY[0x1E69BC748]) initWithPolicy_];
  if (result)
  {
    v3 = result;
    [result setPasscodeOnly_];
    v4 = sub_1BE052404();
    v5 = PKLocalizedIdentityString(v4);

    [v3 setPasscodeTitle_];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = *(v1 + 80);
    *(v7 + 24) = v6;
    sub_1BE048964();
    sub_1BD7F2940(v3, sub_1BD42BBD4, v7);
  }

  return result;
}

id sub_1BD429504()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0));
  result = [v1 paymentRequest];
  if (result)
  {
    v3 = result;
    if ([result _isAMPPayment])
    {
      v4 = [v1 mode];

      return (v4 == 1);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD4295A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v17[-v2 - 8];
  v4 = sub_1BE04C7B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BD4241C0(1);
  sub_1BD4218D0();
  sub_1BE04C994();

  sub_1BD4218D0();
  (*(v5 + 104))(v8, *MEMORY[0x1E69BC980], v4);
  v9 = sub_1BE051F44();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_1BD83C0A8(v8, 0, 0, v3);

  sub_1BD0DE53C(v3, &unk_1EBD45E40);
  (*(v5 + 8))(v8, v4);
  v10 = sub_1BD4218D0();
  v11 = *(v10 + qword_1EBDAADA8 + 16);
  v18[0] = *(v10 + qword_1EBDAADA8);
  v18[1] = v11;
  v19 = *(v10 + qword_1EBDAADA8 + 32);
  v12 = *&v18[0];
  v13 = v19;
  v20 = *(&v18[0] + 1);
  v21 = *(&v11 + 1);
  sub_1BE048964();
  v14 = v12;
  sub_1BD0DE19C(&v20, v17, &qword_1EBD3D490);
  sub_1BD0DE19C(&v21, v17, &qword_1EBD40150);
  v15 = v13;
  sub_1BE048964();
  sub_1BDA74FEC(v18, v10, 0, 0);

  sub_1BD0DE53C(&v20, &qword_1EBD3D490);
  sub_1BD0DE53C(&v21, &qword_1EBD40150);
}

id sub_1BD42989C()
{
  result = sub_1BD429504();
  if (result)
  {
    v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0));

    return [v2 fallbackToBypassMode];
  }

  return result;
}

uint64_t sub_1BD429900()
{
  v1 = sub_1BE04D214();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v27 - v7;
  v9 = sub_1BE04C7B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - v16;
  sub_1BD4218D0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  (*(v10 + 104))(v13, *MEMORY[0x1E69BC980], v9);
  v18 = sub_1BE04C7A4();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v19(v17, v9);
  if (v18)
  {
    sub_1BE04D084();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Passcode required, not automatically resuming authentication", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    return (*(v27 + 8))(v8, v28);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    return sub_1BD42B138();
  }

  else
  {
    sub_1BE04D084();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C54();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1BD026000, v24, v25, "Not in authenticate state, not resuming authentication", v26, 2u);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    return (*(v27 + 8))(v4, v28);
  }
}

uint64_t sub_1BD429C8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v28 = a3;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v19 = sub_1BE052D54();
    v27 = v12;
    v20 = v19;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v29;
    v22[2] = v28;
    v22[3] = v21;
    v22[4] = a1;
    aBlock[4] = v23;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = v30;
    v24 = _Block_copy(aBlock);
    v25 = a1;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v16, v11, v24);
    _Block_release(v24);

    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v27);
  }

  return result;
}

void sub_1BD429FA0(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ([a2 result])
    {
      sub_1BE04D084();
      v10 = sub_1BE04D204();
      v11 = sub_1BE052C54();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1BD026000, v10, v11, "Passcode to clear biolockout pre-empted or failed", v12, 2u);
        MEMORY[0x1BFB45F20](v12, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
      v13 = *(v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0xD8));
      v14 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v16 = v13;
      v17 = v14;
      v18 = [a2 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v18;
      sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080);
      v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v20 = sub_1BE052224();

      v21 = [v19 initWithDomain:v17 code:-1 userInfo:v20];

      v22 = sub_1BE04A844();
      [v16 didEncounterFatalError_];

      v9 = v22;
    }

    else
    {
      sub_1BD4218D0();
      sub_1BE04CA74();

      v23 = sub_1BD4218D0();
      v24 = *(v23 + qword_1EBDAADA8 + 16);
      v30[0] = *(v23 + qword_1EBDAADA8);
      v30[1] = v24;
      v31 = *(v23 + qword_1EBDAADA8 + 32);
      v25 = *&v30[0];
      v26 = v31;
      v32 = *(&v30[0] + 1);
      v33[0] = *(&v24 + 1);
      sub_1BE048964();
      v27 = v25;
      sub_1BD0DE19C(&v32, v29, &qword_1EBD3D490);
      sub_1BD0DE19C(v33, v29, &qword_1EBD40150);
      v28 = v26;
      sub_1BE048964();
      sub_1BDA74FEC(v30, v23, 0, 0);

      sub_1BD0DE53C(&v32, &qword_1EBD3D490);
      sub_1BD0DE53C(v33, &qword_1EBD40150);

      sub_1BD429900();
    }
  }
}

id sub_1BD42A3D0()
{
  result = [*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0)) paymentRequest];
  if (result)
  {
    v2 = result;
    v3 = [result _isAMPPayment];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD42A44C()
{
  if (sub_1BD42A3D0())
  {
    return 0;
  }

  result = [*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0)) paymentRequest];
  if (result)
  {
    v2 = result;
    v3 = [result requestType];

    return (v3 != 6 && v3 != 15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD42A4E0(uint64_t a1, uint64_t a2, void (*a3)(void, double))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = MEMORY[0x1EEE9AC00](result, v5);
    a3(0, v6);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD42A5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1BE0528A4();
  v6[5] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD42A68C, v8, v7);
}

uint64_t sub_1BD42A68C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1BD42A748;

  return MEMORY[0x1EEE23E78]();
}

uint64_t sub_1BD42A748(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD42DD70, v4, v3);
}

uint64_t sub_1BD42A870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1BE0528A4();
  v6[5] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD42A90C, v8, v7);
}

uint64_t sub_1BD42A90C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1BD42A9C8;

  return MEMORY[0x1EEE23E78]();
}

uint64_t sub_1BD42A9C8(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD42AAF0, v4, v3);
}

uint64_t sub_1BD42AAF0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  v2(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD42AB6C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD42ABEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

double sub_1BD42AC60@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BD42ACE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD42AD5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD42ADD8(uint64_t a1)
{
  v2 = sub_1BE04C7B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v6, v11, v2);
  sub_1BE048964();
  sub_1BE04D8C4();
  return (*(v3 + 8))(v11, v2);
}

double sub_1BD42AF48@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1BD42AFD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD0EE87C(v1, v2);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD42B088@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD4218D0();
  *a1 = result;
  return result;
}

uint64_t sub_1BD42B0E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD421770();
  *a1 = result;
  return result;
}

void sub_1BD42B138()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1BD4218D0();
  v11 = sub_1BE04CA44();

  if ((v11 & 1) == 0)
  {
    sub_1BE04D084();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "handleAuthenticate", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v18 = [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0)) paymentRequest];
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = v18;
    v20 = objc_opt_self();
    sub_1BD4218D0();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    [v20 currentStateForPolicy_];
    [v19 disablePasscodeFallback];
    sub_1BD4218D0();
    sub_1BE04CB44();

    if ([v19 _isAMPPayment])
    {
      v21 = [v19 accesssControlRef];
      if (!v21 || (v22 = v21, v23 = [v20 currentStateForAccessControl_], v22, (v24 = v23) == 0))
      {
        sub_1BD4295A8();
        sub_1BD42989C();
        sub_1BD4218D0();
        sub_1BE04CB64();

LABEL_18:

        return;
      }
    }

    else if (([v19 requestType] == 7 || objc_msgSend(v19, sel_requestType) == 13) && (v25 = objc_msgSend(v19, sel_accesssControlRef)) != 0)
    {
      v26 = v25;
      v27 = [v20 currentStateForAccessControl_];

      v24 = v27;
    }

    else
    {
      sub_1BD4218D0();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v24 = [v20 currentStateForPolicy_];
    }

    sub_1BD42732C(v24, 0);
    goto LABEL_18;
  }

  sub_1BE04D084();
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BD026000, v12, v13, "AuthenticationWrapper - already authenticating, ignoring evaluation request", v14, 2u);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  (*(v3 + 8))(v10, v2);
}

uint64_t sub_1BD42B764(void *a1, uint64_t a2, uint64_t (*a3)(void, double), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v52 - v12;
  v14 = *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xD0));
  sub_1BE048964();
  v15 = [v14 paymentRequest];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 _isAMPPayment];

    if (v17)
    {
      goto LABEL_9;
    }

    v18 = [v14 paymentRequest];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 requestType];

      if (v20 == 15 || v20 == 6)
      {
        goto LABEL_9;
      }

      v29 = [v14 hostApplicationIdentifier];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1BE052434();
        v33 = v32;

        v34 = sub_1BE052434();
        if (v33)
        {
          if (v31 == v34 && v33 == v35)
          {
            goto LABEL_30;
          }

          v37 = sub_1BE053B84();

          if (v37)
          {
            goto LABEL_9;
          }

LABEL_22:
          v38 = [v14 bundleIdentifier];
          if (v38)
          {
            v39 = v38;
            v40 = sub_1BE052434();
            v42 = v41;

            v43 = sub_1BE052434();
            if (v42)
            {
              if (v40 != v43 || v42 != v44)
              {
                v46 = sub_1BE053B84();

                if ((v46 & 1) == 0)
                {
                  goto LABEL_33;
                }

LABEL_9:
                swift_beginAccess();
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v24 = MEMORY[0x1EEE9AC00](Strong, v23);
                  v25 = a3(0, v24);
                  *(&v52 - 2) = v25;
                  KeyPath = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](KeyPath, v27);
                  *(&v52 - 2) = v25;
                  swift_getKeyPath();
                  v54 = 2;
                  sub_1BE04D8C4();
                }
              }

LABEL_30:

              goto LABEL_9;
            }
          }

          else
          {
            sub_1BE052434();
          }

LABEL_33:
          v47 = sub_1BE0528D4();
          (*(*(v47 - 8) + 56))(v13, 1, 1, v47);
          sub_1BE0528A4();
          v48 = a1;
          sub_1BE048964();
          v49 = sub_1BE052894();
          v50 = swift_allocObject();
          v51 = MEMORY[0x1E69E85E0];
          v50[2] = v49;
          v50[3] = v51;
          v50[4] = v48;
          v50[5] = a5;
          v50[6] = a2;
          sub_1BD122C00(0, 0, v13, v53, v50);
        }
      }

      else
      {
        sub_1BE052434();
      }

      goto LABEL_22;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD42BC6C(uint64_t a1)
{
  v189 = a1;
  v1 = sub_1BE04CFC4();
  v192 = *(v1 - 8);
  v193 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v187 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v188 = &v167 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v186 = &v167 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v185 = &v167 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v184 = &v167 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v183 = &v167 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v182 = &v167 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v181 = &v167 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v180 = &v167 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v179 = &v167 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v177 = &v167 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v176 = &v167 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v175 = &v167 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v174 = &v167 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v173 = &v167 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v172 = &v167 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v171 = &v167 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v170 = &v167 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v169 = &v167 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v168 = &v167 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v178 = &v167 - v63;
  v64 = sub_1BE04CFE4();
  v190 = *(v64 - 8);
  v191 = v64;
  MEMORY[0x1EEE9AC00](v64, v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v167 - v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  MEMORY[0x1EEE9AC00](&v167 - v76, v77);
  MEMORY[0x1EEE9AC00](v79, &v167 - v78);
  MEMORY[0x1EEE9AC00](v80, v81);
  MEMORY[0x1EEE9AC00](v82, v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  MEMORY[0x1EEE9AC00](v88, v89);
  MEMORY[0x1EEE9AC00](v90, v91);
  v93 = &v167 - v92;
  MEMORY[0x1EEE9AC00](v94, v95);
  v97 = &v167 - v96;
  MEMORY[0x1EEE9AC00](v98, v99);
  v101 = &v167 - v100;
  MEMORY[0x1EEE9AC00](v102, v103);
  v105 = &v167 - v104;
  MEMORY[0x1EEE9AC00](v106, v107);
  v109 = &v167 - v108;
  MEMORY[0x1EEE9AC00](v110, v111);
  v113 = &v167 - v112;
  MEMORY[0x1EEE9AC00](v114, v115);
  v117 = &v167 - v116;
  MEMORY[0x1EEE9AC00](v118, v119);
  v121 = &v167 - v120;
  MEMORY[0x1EEE9AC00](v122, v123);
  v136 = &v167 - v135;
  switch(v189)
  {
    case 0:
      sub_1BE04B6A4();
      v137 = v178;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "initialize";
      goto LABEL_44;
    case 1:
      sub_1BE04B6A4();
      v137 = v168;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v150 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        v152 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v138, v150, v152, "stateChange", "continuitySearch", v151, 2u);
        v136 = v121;
        v140 = v151;
        goto LABEL_45;
      }

      v69 = v121;
      goto LABEL_48;
    case 3:
      sub_1BE04B6A4();
      v137 = v169;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v145 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        v146 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v138, v145, v146, "stateChange", "invalidData", v140, 2u);
        v136 = v117;
        goto LABEL_45;
      }

      v69 = v117;
      goto LABEL_48;
    case 4:
      sub_1BE04B6A4();
      v137 = v170;
      sub_1BE04CFB4();
      v157 = sub_1BE04CFD4();
      v158 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        v159 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v157, v158, v159, "stateChange", "initialize", v140, 2u);
        v136 = v113;
        v161 = v192;
        v160 = v193;
        v163 = v190;
        v162 = v191;
        v138 = v157;
        goto LABEL_46;
      }

      v69 = v113;
      v161 = v192;
      v160 = v193;
      v163 = v190;
      v162 = v191;
      v138 = v157;
      goto LABEL_49;
    case 5:
      sub_1BE04B6A4();
      v137 = v171;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v164 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        v165 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v138, v164, v165, "stateChange", "authenticate", v140, 2u);
        v136 = v109;
        goto LABEL_45;
      }

      v69 = v109;
      goto LABEL_48;
    case 6:
      sub_1BE04B6A4();
      v147 = v172;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v148 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        v149 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v138, v148, v149, "stateChange", "inactive", v140, 2u);
        v136 = v105;
        v137 = v147;
        goto LABEL_45;
      }

      v69 = v105;
      v137 = v147;
      goto LABEL_48;
    case 7:
      sub_1BE04B6A4();
      v137 = v173;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v153 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        v154 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v138, v153, v154, "stateChange", "clientCallback", v140, 2u);
        v136 = v101;
        goto LABEL_45;
      }

      v69 = v101;
      goto LABEL_48;
    case 8:
      sub_1BE04B6A4();
      v137 = v174;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v155 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        v156 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v138, v155, v156, "stateChange", "prepareTransactionDetails", v140, 2u);
        v136 = v97;
        goto LABEL_45;
      }

      v69 = v97;
      goto LABEL_48;
    case 9:
      v136 = v93;
      sub_1BE04B6A4();
      v137 = v175;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "nonce";
      goto LABEL_44;
    case 10:
      v136 = v131;
      sub_1BE04B6A4();
      v137 = v176;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "authorize";
      goto LABEL_44;
    case 11:
      v136 = v130;
      sub_1BE04B6A4();
      v137 = v177;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "rewrap";
      goto LABEL_44;
    case 12:
      v136 = v129;
      sub_1BE04B6A4();
      v137 = v179;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "authorized";
      goto LABEL_44;
    case 13:
      v136 = v128;
      sub_1BE04B6A4();
      v137 = v180;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "cancel";
      goto LABEL_44;
    case 14:
      v136 = v127;
      sub_1BE04B6A4();
      v137 = v181;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "error";
      goto LABEL_44;
    case 15:
      v136 = v126;
      sub_1BE04B6A4();
      v137 = v182;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "fatalError";
      goto LABEL_44;
    case 16:
      v136 = v125;
      sub_1BE04B6A4();
      v137 = v183;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "success";
      goto LABEL_44;
    case 17:
      v136 = v124;
      sub_1BE04B6A4();
      v137 = v184;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "dataProcessing";
      goto LABEL_44;
    case 18:
      v136 = v134;
      sub_1BE04B6A4();
      v137 = v185;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "updatingPaymentOffers";
      goto LABEL_44;
    case 19:
      v136 = v133;
      sub_1BE04B6A4();
      v137 = v186;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v141 = sub_1BE04CFA4();
      v142 = "selectedPaymentOfferInvalid";
      goto LABEL_44;
    case 20:
      sub_1BE04B6A4();
      v137 = v188;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v143 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_48;
      }

      v140 = swift_slowAlloc();
      *v140 = 0;
      v144 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v138, v143, v144, "stateChange", "loadingPreconfiguredInstallmentPaymentOffer", v140, 2u);
      v136 = v69;
      goto LABEL_45;
    default:
      v136 = v132;
      sub_1BE04B6A4();
      v137 = v187;
      sub_1BE04CFB4();
      v138 = sub_1BE04CFD4();
      v139 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        v141 = sub_1BE04CFA4();
        v142 = "unknown";
LABEL_44:
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v138, v139, v141, "stateChange", v142, v140, 2u);
LABEL_45:
        v161 = v192;
        v160 = v193;
        v163 = v190;
        v162 = v191;
LABEL_46:
        MEMORY[0x1BFB45F20](v140, -1, -1);
        v69 = v136;
      }

      else
      {
LABEL_47:
        v69 = v136;
LABEL_48:
        v161 = v192;
        v160 = v193;
        v163 = v190;
        v162 = v191;
      }

LABEL_49:

      (*(v161 + 8))(v137, v160);
      return (*(v163 + 8))(v69, v162);
  }
}

uint64_t sub_1BD42CE30(uint64_t a1, void *a2)
{
  v48 = a2;
  v3 = sub_1BE04D214();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v44 - v8);
  v10 = sub_1BE04C7B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD4218D0();
  (*(v11 + 104))(v14, *MEMORY[0x1E69BC988], v10);
  *v9 = 1;
  v15 = *MEMORY[0x1E69E7F48];
  v16 = sub_1BE051F44();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  sub_1BD83C0A8(v14, 0, 0, v9);

  v18 = v9;
  v19 = a1;
  sub_1BD0DE53C(v18, &unk_1EBD45E40);
  result = (*(v11 + 8))(v14, v10);
  v21 = 0;
  if (v19 > 12)
  {
    if (v19 > 15)
    {
      v23 = 0;
      v22 = v48;
      if ((v19 - 17) >= 4)
      {
        if (v19 == 16)
        {
          sub_1BD424948();
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      goto LABEL_38;
    }

    v22 = v48;
    if (v19 == 13)
    {
      sub_1BD42407C(1);
      goto LABEL_37;
    }

    if (v19 == 14)
    {
      if (v48)
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClassUnconditional();
        v26 = sub_1BD424FF8(v29);
        goto LABEL_25;
      }
    }

    else
    {
      if (v48)
      {
        objc_opt_self();
        v25 = swift_dynamicCastObjCClassUnconditional();
        v26 = sub_1BD4252D0(v25);
LABEL_25:
        v21 = v26;
        v23 = v27;
        goto LABEL_38;
      }

      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v19 > 5)
  {
    v23 = 0;
    v22 = v48;
    if ((v19 - 8) >= 5)
    {
      if (v19 == 6)
      {
        sub_1BD4241C0(1);
        goto LABEL_37;
      }

      if (v19 == 7)
      {
        if (v48)
        {
          objc_opt_self();
          v28 = swift_dynamicCastObjCClassUnconditional();
          sub_1BD4922B8(v28);
          goto LABEL_37;
        }

        goto LABEL_43;
      }

      goto LABEL_29;
    }

LABEL_38:
    sub_1BD42BC6C(v19);
    sub_1BD424544(v22, v21, v23);
    sub_1BD1107D8(v21);
    return 1;
  }

  v22 = v48;
  if (v19 > 3)
  {
    if (v19 != 4)
    {
      sub_1BD42B138();
      goto LABEL_37;
    }

    if (v48)
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClassUnconditional();
      sub_1BD4257CC(v30);
      goto LABEL_37;
    }

    goto LABEL_42;
  }

  v23 = 0;
  if (v19 < 2)
  {
    goto LABEL_38;
  }

  if (v19 == 3)
  {
    if (v48)
    {
      objc_opt_self();
      v24 = swift_dynamicCastObjCClassUnconditional();
      sub_1BD424758(v24);
LABEL_37:
      v21 = 0;
      v23 = 0;
      goto LABEL_38;
    }

    goto LABEL_41;
  }

LABEL_29:
  v31 = v47;
  sub_1BE04D084();
  v32 = sub_1BE04D204();
  v33 = sub_1BE052C34();
  if (!os_log_type_enabled(v32, v33))
  {

    (*(v45 + 8))(v31, v46);
    goto LABEL_37;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v49 = v35;
  *v34 = 136315138;
  if (v19 > 0x14)
  {
    v36 = @"unknown";
    v37 = @"unknown";
  }

  else
  {
    v36 = off_1E800FC48[v19];
    v37 = off_1E800FCF0[v19];
  }

  v38 = v36;
  result = v37;
  if (result)
  {
    v39 = result;
    v40 = sub_1BE052434();
    v42 = v41;

    v43 = sub_1BD123690(v40, v42, &v49);

    *(v34 + 4) = v43;
    _os_log_impl(&dword_1BD026000, v32, v33, "State change not implemented: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1BFB45F20](v35, -1, -1);
    MEMORY[0x1BFB45F20](v34, -1, -1);

    (*(v45 + 8))(v47, v46);
    goto LABEL_37;
  }

LABEL_44:
  __break(1u);
  return result;
}

__CFString *PKAuthenticatorPolicyDescription(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E800FDF0[a1];
    v2 = off_1E800FD98[a1];
  }

  return v1;
}

uint64_t sub_1BD42D500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD42D548(uint64_t a1)
{
  v2 = type metadata accessor for Analytics.StateChange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD42D5AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_8Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD42D774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42D86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD42A870(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42D964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42DA5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42DB54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_50Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD42DC94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42DD88(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v22 - v9;
  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v22 - v13;
  switch(a1)
  {
    case 2:
      (*(v3 + 104))(v6, *MEMORY[0x1E69B8050], v2, v14);
      v19 = PKPassKitBundle();
      if (v19)
      {
        v17 = v19;
        v18 = sub_1BE04B6F4();
        v15 = v6;
        goto LABEL_10;
      }

      goto LABEL_12;
    case 1:
      (*(v3 + 104))(v10, *MEMORY[0x1E69B8050], v2, v14);
      v16 = PKPassKitBundle();
      if (v16)
      {
        v17 = v16;
        v18 = sub_1BE04B6F4();
        v15 = v10;
LABEL_10:

        (*(v3 + 8))(v15, v2);
        return v18;
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      break;
    case 0:
      (*(v3 + 104))(v22 - v13, *MEMORY[0x1E69B8050], v2, v14);
      v20 = PKPassKitBundle();
      if (v20)
      {
        v17 = v20;
        v18 = sub_1BE04B6F4();
        goto LABEL_10;
      }

      goto LABEL_13;
  }

  v22[1] = a1;
  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

uint64_t sub_1BD42E038(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v22 - v9;
  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v22 - v13;
  switch(a1)
  {
    case 2:
      (*(v3 + 104))(v6, *MEMORY[0x1E69B8050], v2, v14);
      v19 = PKPassKitBundle();
      if (v19)
      {
        v17 = v19;
        v18 = sub_1BE04B6F4();
        v15 = v6;
        goto LABEL_10;
      }

      goto LABEL_12;
    case 1:
      (*(v3 + 104))(v10, *MEMORY[0x1E69B8050], v2, v14);
      v16 = PKPassKitBundle();
      if (v16)
      {
        v17 = v16;
        v18 = sub_1BE04B6F4();
        v15 = v10;
LABEL_10:

        (*(v3 + 8))(v15, v2);
        return v18;
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      break;
    case 0:
      (*(v3 + 104))(v22 - v13, *MEMORY[0x1E69B8050], v2, v14);
      v20 = PKPassKitBundle();
      if (v20)
      {
        v17 = v20;
        v18 = sub_1BE04B6F4();
        goto LABEL_10;
      }

      goto LABEL_13;
  }

  v22[1] = a1;
  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

uint64_t sub_1BD42E2E4(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v32 - v14;
  v16 = *MEMORY[0x1E69B8050];
  v17 = *(v3 + 104);
  v17(&v32 - v14, v16, v2, v13);
  v18 = PKPassKitBundle();
  if (!v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  v32 = sub_1BE04B6F4();
  v33 = v20;

  v21 = *(v3 + 8);
  v21(v15, v2);
  if (a1)
  {
    if (a1 == 2)
    {
      return v32;
    }

    if (a1 != 1)
    {
      goto LABEL_15;
    }

    (v17)(v10, v16, v2);
    v29 = PKPassKitBundle();
    if (v29)
    {
      v30 = v29;
      v25 = sub_1BE04B6F4();
      v27 = v31;

      v28 = v10;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    v34 = a1;
    result = sub_1BE053BE4();
    __break(1u);
    return result;
  }

  (v17)(v6, v16, v2);
  v23 = PKPassKitBundle();
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = sub_1BE04B6F4();
  v27 = v26;

  v28 = v6;
LABEL_10:
  v21(v28, v2);
  v34 = v25;
  v35 = v27;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  MEMORY[0x1BFB3F610](v32, v33);

  return v34;
}

unint64_t NearbyPeerPaymentContext.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1BD42E5D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id NearbyPeerPayment.ErrorUIStyle.uiColor.getter()
{
  v1 = v0;
  v2 = sub_1BE04B794();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69B7E90])
  {
    v9 = [objc_opt_self() systemRedColor];
  }

  else
  {
    v10 = v8;
    v11 = *MEMORY[0x1E69B7E98];
    v12 = objc_opt_self();
    if (v10 != v11)
    {
      v14 = [v12 systemRedColor];
      (*(v3 + 8))(v7, v2);
      return v14;
    }

    v9 = [v12 grayColor];
  }

  return v9;
}

unint64_t sub_1BD42E7BC()
{
  result = qword_1EBD45E98;
  if (!qword_1EBD45E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45E98);
  }

  return result;
}

uint64_t sub_1BD42E820(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BD42E868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD42E8E0(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  if ((a1 != a5 || a2 != a6) && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    if (a7)
    {
      sub_1BD42E998();
      v12 = a7;
      v13 = a3;
      v14 = sub_1BE053074();

      if (v14)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    v15 = 0;
    return v15 & 1;
  }

  if (a7)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = a4 ^ a8 ^ 1;
  return v15 & 1;
}

unint64_t sub_1BD42E998()
{
  result = qword_1EBD45EA0;
  if (!qword_1EBD45EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45EA0);
  }

  return result;
}

void sub_1BD42E9E4(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 paymentOffersController];
  if (!v6)
  {
    sub_1BD0E8E44(a2);

    goto LABEL_7;
  }

  v7 = WrappedPass.secureElementPass.getter();
  if (!v7 || (v8 = v7, v9 = [v7 uniqueID], v8, !v9))
  {
    sub_1BD0E8E44(a2);

    v6 = 0;
LABEL_7:
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v10 = sub_1BE052434();
  v12 = v11;
  v13 = [v6 merchandisingOfferForPassUniqueID_];
  v14 = [v6 didFetchMerchandisingOfferForPassUniqueID_];

  sub_1BD0E8E44(a2);
LABEL_8:
  *a3 = v6;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
}

uint64_t sub_1BD42EB14@<X0>(uint64_t a1@<X8>)
{
  v159 = a1;
  v164 = sub_1BE04D214();
  v167 = *(v164 - 1);
  MEMORY[0x1EEE9AC00](v164, v2);
  v166 = (&v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v150 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v148 = &v135 - v9;
  v165 = sub_1BE04A324();
  v160 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v10);
  v143 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v144 = &v135 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v158 = &v135 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v157 = &v135 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v147 = (&v135 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v168 = &v135 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v162 = &v135 - v29;
  v30 = sub_1BE04AA64();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v145 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v135 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49670);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v135 - v40;
  v42 = sub_1BE04A3B4();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v135 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  v51 = &v135 - v50;
  v163 = *&v1[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_method];
  v52 = [v163 url];
  sub_1BE04A9F4();

  sub_1BE04A354();
  v151 = v31;
  v53 = *(v31 + 8);
  v153 = v31 + 8;
  v154 = v30;
  v152 = v53;
  v53(v37, v30);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_1BD0DE53C(v41, &unk_1EBD49670);
    v54 = v166;
    sub_1BE04D0C4();
    v55 = v1;
    v56 = sub_1BE04D204();
    v57 = sub_1BE052C34();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v169 = v59;
      *v58 = 136315138;
      v60 = [v163 url];
      sub_1BE04A9F4();

      sub_1BD431D2C(&qword_1EBD49660, MEMORY[0x1E6968FB0]);
      v61 = v154;
      v62 = sub_1BE053B24();
      v64 = v63;
      v152(v37, v61);
      v65 = sub_1BD123690(v62, v64, &v169);

      *(v58 + 4) = v65;
      _os_log_impl(&dword_1BD026000, v56, v57, "Failed to create url components from %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1BFB45F20](v59, -1, -1);
      MEMORY[0x1BFB45F20](v58, -1, -1);
    }

    (*(v167 + 8))(v54, v164);
LABEL_74:
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EF0);
    return (*(*(v124 - 8) + 56))(v159, 1, 1, v124);
  }

  v141 = v43;
  v66 = *(v43 + 32);
  v149 = v51;
  v142 = v42;
  v66(v51, v41, v42);
  v140 = *&v1[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_pass];
  v67 = [v140 deviceAccountIdentifier];
  v68 = sub_1BE052434();
  v70 = v69;

  sub_1BE04A3A4();
  v137 = *MEMORY[0x1E69BC6E0];
  sub_1BE052434();
  sub_1BE04A394();
  v71 = sub_1BE052434();
  MEMORY[0x1BFB37400](v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9A8);
  v72 = v160;
  v73 = *(v160 + 9);
  v74 = (v160[80] + 32) & ~v160[80];
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1BE0B6CA0;
  v166 = @"deviceAccountIdentifier";
  sub_1BE052434();
  v138 = v68;
  v139 = v70;
  sub_1BE04A2F4();

  v76 = sub_1BE052434();
  sub_1BE052434();
  v167 = v73;
  sub_1BE04A2F4();

  sub_1BE04A344();
  v77 = sub_1BE04A334();
  if (v77)
  {
    v78 = v77;
  }

  else
  {
    v78 = MEMORY[0x1E69E7CC0];
  }

  v79 = *(v78 + 2);
  v146 = v46;
  v155 = v74;
  v80 = 0;
  if (!v79)
  {
    goto LABEL_57;
  }

  v81 = (v72 + 16);
  v161 = @"primaryAccountNumberSuffix";
  v156 = @"redirectUrl";
  v163 = (v72 + 16);
  v164 = (v72 + 8);
  v82 = v165;
  while (1)
  {
    v83 = *(v78 + 2);
    if (v80 >= v83)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v72 = *v81;
    (*v81)(v162, &v78[v74], v82);
    v76 = sub_1BE04A304();
    v85 = v84;
    if (v76 == sub_1BE052434() && v85 == v86)
    {
      break;
    }

    v75 = sub_1BE053B84();

    if (v75)
    {
      goto LABEL_24;
    }

    if (v76 == sub_1BE052434() && v85 == v87)
    {
      break;
    }

    v75 = sub_1BE053B84();

    if (v75)
    {
      goto LABEL_24;
    }

    v88 = sub_1BE052434();
    v75 = v89;
    if (v76 == v88 && v85 == v89)
    {
      goto LABEL_23;
    }

    v90 = sub_1BE053B84();

    v82 = v165;
    v91 = *v164;
    (*v164)(v162, v165);
    if (v90)
    {
      goto LABEL_25;
    }

    ++v80;
    v74 += v167;
    v81 = v163;
    if (v79 == v80)
    {
      v79 = *(v78 + 2);
      v80 = v79;
      goto LABEL_26;
    }
  }

  v75 = v85;
LABEL_23:

LABEL_24:

  v82 = v165;
  v91 = *v164;
  (*v164)(v162, v165);
LABEL_25:
  v79 = v80 + 1;
  v83 = *(v78 + 2);
  if (v83 - 1 == v80)
  {
LABEL_26:
    v74 = v155;
    goto LABEL_57;
  }

  v162 = v80;
  v74 += v167;
  v92 = (v160 + 40);
  while (2)
  {
    if (v79 >= v83)
    {
      __break(1u);
      goto LABEL_77;
    }

    v72(v168, &v78[v74], v82);
    v76 = sub_1BE04A304();
    v94 = v93;
    v95 = sub_1BE052434();
    v75 = v96;
    if (v76 == v95 && v94 == v96)
    {
LABEL_31:

      goto LABEL_34;
    }

    v97 = sub_1BE053B84();

    if (v97)
    {
      goto LABEL_33;
    }

    v99 = sub_1BE052434();
    v75 = v100;
    if (v76 == v99 && v94 == v100)
    {
      v82 = v165;
      goto LABEL_31;
    }

    v101 = sub_1BE053B84();

    if (v101)
    {
LABEL_33:
      v82 = v165;
LABEL_34:

      v98 = v168;
LABEL_35:
      v91(v98, v82);
    }

    else
    {
      v102 = sub_1BE052434();
      v75 = v103;
      if (v76 == v102 && v94 == v103)
      {

        v98 = v168;
        v82 = v165;
        goto LABEL_35;
      }

      v76 = sub_1BE053B84();

      v82 = v165;
      result = (v91)(v168, v165);
      if ((v76 & 1) == 0)
      {
        if (v79 != v162)
        {
          if (v162 < 0)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
            return result;
          }

          v105 = *(v78 + 2);
          if (v162 >= v105)
          {
            goto LABEL_83;
          }

          v136 = v162 * v167;
          v76 = v163;
          v75 = v72;
          result = (v72)(v144, &v78[v155 + v162 * v167], v82);
          if (v79 >= v105)
          {
            goto LABEL_84;
          }

          v72(v143, &v78[v74], v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_1BD4FFF04(v78);
          }

          v106 = *v92;
          result = (*v92)(&v78[v155 + v136], v143, v82);
          if (v79 >= *(v78 + 2))
          {
            goto LABEL_85;
          }

          v106(&v78[v74], v144, v82);
        }

        ++v162;
      }
    }

    ++v79;
    v83 = *(v78 + 2);
    v74 += v167;
    if (v79 != v83)
    {
      continue;
    }

    break;
  }

  v80 = v162;
  v74 = v155;
  if (v79 < v162)
  {
    goto LABEL_78;
  }

  if (v162 < 0)
  {
    goto LABEL_79;
  }

LABEL_57:
  v83 = v80 - v79;
  v75 = v80;
  if (__OFADD__(v79, v80 - v79))
  {
LABEL_80:
    __break(1u);
LABEL_81:
    v78 = sub_1BD1D75E0(v83 > 1, v75, 1, v78);
    goto LABEL_65;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v169 = v78;
  if (!isUniquelyReferenced_nonNull_native || v80 > *(v78 + 3) >> 1)
  {
    if (v79 <= v80)
    {
      v108 = v80;
    }

    else
    {
      v108 = v79;
    }

    v78 = sub_1BD1D75E0(isUniquelyReferenced_nonNull_native, v108, 1, v78);
    v169 = v78;
  }

  sub_1BD1DD130(v80, v79, 0);
  sub_1BE052434();
  v72 = v147;
  sub_1BE04A2F4();

  v76 = *(v78 + 2);
  v83 = *(v78 + 3);
  v75 = v76 + 1;
  if (v76 >= v83 >> 1)
  {
    goto LABEL_81;
  }

LABEL_65:
  v109 = v160;
  *(v78 + 2) = v75;
  v110 = *(v109 + 4);
  v110(&v78[v74 + v76 * v167], v72, v165);
  sub_1BE052434();
  v111 = [v140 primaryAccountNumberSuffix];
  sub_1BE052434();

  sub_1BE04A2F4();

  v113 = *(v78 + 2);
  v112 = *(v78 + 3);
  if (v113 >= v112 >> 1)
  {
    v78 = sub_1BD1D75E0(v112 > 1, v113 + 1, 1, v78);
  }

  v114 = v148;
  v116 = v154;
  v115 = v155;
  *(v78 + 2) = v113 + 1;
  v110(&v78[v115 + v113 * v167], v157, v165);
  sub_1BE052434();
  sub_1BE04A364();
  v117 = *(v151 + 48);
  if (v117(v114, 1, v116) == 1)
  {
    sub_1BD0DE53C(v114, &unk_1EBD3CF70);
  }

  else
  {
    sub_1BE04A9B4();
    v152(v114, v116);
  }

  sub_1BE04A2F4();

  v119 = *(v78 + 2);
  v118 = *(v78 + 3);
  if (v119 >= v118 >> 1)
  {
    v78 = sub_1BD1D75E0(v118 > 1, v119 + 1, 1, v78);
  }

  v120 = v150;
  *(v78 + 2) = v119 + 1;
  v110(&v78[v155 + v119 * v167], v158, v165);
  v121 = v149;
  sub_1BE04A344();
  sub_1BE04A364();
  if (v117(v120, 1, v116) == 1)
  {
    v122 = *(v141 + 8);
    v123 = v142;
    v122(v146, v142);
    v122(v121, v123);
    sub_1BD0DE53C(v120, &unk_1EBD3CF70);
    goto LABEL_74;
  }

  v125 = v151;
  v126 = v145;
  (*(v151 + 32))(v145, v120, v116);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EF0);
  v128 = v159;
  v129 = (v159 + *(v127 + 48));
  (*(v125 + 16))(v159, v126, v116);
  v130 = sub_1BE052434();
  v132 = v131;
  v152(v126, v116);
  v133 = *(v141 + 8);
  v134 = v142;
  v133(v146, v142);
  v133(v121, v134);
  *v129 = v130;
  v129[1] = v132;
  return (*(*(v127 - 8) + 56))(v128, 0, 1, v127);
}

void sub_1BD42FCC8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v65 = a4;
  v66 = a5;
  v7 = sub_1BE051F54();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BE051FA4();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v10);
  v58 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BE051FC4();
  v57 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v56 = &v55 - v17;
  v18 = sub_1BE04D214();
  v55 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v55 - v24;
  v26 = sub_1BE04AA64();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    if (a2)
    {
      v33 = a2;
      v34 = sub_1BE04A844();
      v35 = [v34 code];

      if (v35 == 1)
      {
        v36 = [objc_opt_self() errorWithSeverity_];
        v65();

LABEL_13:
        return;
      }

      if (!PKShowFakeVerificationChannels())
      {
        v51 = a2;
        v52 = sub_1BE04A844();

        v53 = [objc_opt_self() errorWithUnderlyingError:v52 defaultSeverity:4];
        v54 = v53;
        (v65)(v53, 1);

        goto LABEL_13;
      }

      sub_1BE04D0C4();
      v38 = sub_1BE04D204();
      v39 = sub_1BE052C54();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1BD026000, v38, v39, "Handling fake web verification url result", v40, 2u);
        MEMORY[0x1BFB45F20](v40, -1, -1);
      }

      (*(v55 + 8))(v21, v18);
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v55 = sub_1BE052D54();
      sub_1BE051FB4();
      v41 = v56;
      sub_1BE051FF4();
      v57 = *(v57 + 8);
      (v57)(v14, v64);
      v42 = swift_allocObject();
      v43 = v65;
      v44 = v66;
      v42[2] = v32;
      v42[3] = v43;
      v42[4] = v44;
      aBlock[4] = sub_1BD431D20;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_13_0;
      v45 = _Block_copy(aBlock);
      v46 = v32;
      sub_1BE048964();

      v47 = v58;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD431D2C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      v48 = v60;
      v49 = v63;
      sub_1BE053664();
      v50 = v55;
      MEMORY[0x1BFB3FD90](v41, v47, v48, v45);
      _Block_release(v45);

      (*(v62 + 8))(v48, v49);
      (*(v59 + 8))(v47, v61);
      (v57)(v41, v64);
    }

    else
    {
      sub_1BD38F438(a1, v25);
      if ((*(v27 + 48))(v25, 1, v26) == 1)
      {
        sub_1BD0DE53C(v25, &unk_1EBD3CF70);
        v37 = [objc_opt_self() errorWithSeverity_];
        v65();
      }

      else
      {
        (*(v27 + 32))(v30, v25, v26);
        sub_1BD430634(v30, v65, v66);

        (*(v27 + 8))(v30, v26);
      }
    }
  }
}

uint64_t sub_1BD430498(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AA54();
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1BD430634(v13, a2, a3);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

void sub_1BD430634(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v139 = a3;
  v140 = a2;
  v137 = a1;
  v136 = sub_1BE04AA64();
  v134 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v4);
  v132 = (&v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v130 = &v118 - v8;
  v138 = sub_1BE04D214();
  v135 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v9);
  v133 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v131 = &v118 - v13;
  v14 = sub_1BE052484();
  v15 = *(v14 - 8);
  v127 = v14;
  v128 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE04A324();
  v129 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v118 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49670);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v118 - v29;
  v31 = sub_1BE04A3B4();
  v32 = *(v31 - 8);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v3 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_method);
  v38 = [v37 strategy];
  if (v38 < 3)
  {
    sub_1BD0E5E8C(0, qword_1EBD45AD0);
    sub_1BD412688();
    sub_1BE053D84();
    v39 = aBlock;
    v40 = v142;
    (v140)(aBlock, v142);
    sub_1BD431D7C(v39, v40);
    return;
  }

  v120 = v3;
  v121 = v26;
  v126 = v22;
  v122 = v19;
  v118 = v37;
  v119 = v18;
  v41 = v136;
  v123 = v36;
  v124 = v32;
  v125 = v31;
  if (v38 != 3)
  {
LABEL_33:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v42 = v137;
  sub_1BE04A354();
  v43 = v124;
  v44 = v125;
  v45 = (*(v124 + 48))(v30, 1, v125);
  v46 = v138;
  v47 = v140;
  if (v45 == 1)
  {
    sub_1BD0DE53C(v30, &unk_1EBD49670);
    v48 = v133;
    sub_1BE04D0C4();
    v49 = v134;
    v50 = v132;
    (*(v134 + 16))(v132, v42, v41);
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C34();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v135;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock = v56;
      *v55 = 136315138;
      sub_1BD431D2C(&qword_1EBD49660, MEMORY[0x1E6968FB0]);
      v57 = sub_1BE053B24();
      v58 = v50;
      v60 = v59;
      (*(v49 + 8))(v58, v41);
      v61 = sub_1BD123690(v57, v60, &aBlock);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_1BD026000, v51, v52, "Failed to convert token url into components. Url: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x1BFB45F20](v56, -1, -1);
      MEMORY[0x1BFB45F20](v55, -1, -1);

      (*(v54 + 8))(v133, v46);
    }

    else
    {

      (*(v49 + 8))(v50, v41);
      (*(v54 + 8))(v48, v46);
    }

    v75 = [objc_opt_self() errorWithSeverity_];
    v140();

    return;
  }

  (*(v43 + 32))(v123, v30, v44);
  v62 = sub_1BE04A334();
  if (!v62)
  {
    goto LABEL_26;
  }

  v63 = v62;
  v64 = v122;
  v65 = v129;
  v66 = v126;
  if (!*(v62 + 16))
  {
LABEL_15:

    v47 = v140;
    v46 = v138;
LABEL_26:
    v90 = v131;
    sub_1BE04D0C4();
    v91 = v134;
    v92 = v130;
    (*(v134 + 16))(v130, v137, v41);
    v93 = sub_1BE04D204();
    v94 = sub_1BE052C34();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = v47;
      v96 = v91;
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      aBlock = v98;
      *v97 = 136315138;
      sub_1BD431D2C(&qword_1EBD49660, MEMORY[0x1E6968FB0]);
      v99 = sub_1BE053B24();
      v100 = v92;
      v101 = v95;
      v102 = v90;
      v104 = v103;
      (*(v96 + 8))(v100, v41);
      v105 = sub_1BD123690(v99, v104, &aBlock);
      v47 = v101;

      *(v97 + 4) = v105;
      _os_log_impl(&dword_1BD026000, v93, v94, "Failed to find token in result url: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x1BFB45F20](v98, -1, -1);
      MEMORY[0x1BFB45F20](v97, -1, -1);

      (*(v135 + 8))(v102, v138);
    }

    else
    {

      (*(v91 + 8))(v92, v41);
      (*(v135 + 8))(v90, v46);
    }

    v106 = v125;
    v107 = v124;
    v108 = v123;
    v109 = [objc_opt_self() errorWithSeverity_];
    v47();

    (*(v107 + 8))(v108, v106);
    return;
  }

  v67 = *(v62 + 16);
  v68 = 0;
  v133 = (v129 + 16);
  v132 = @"verificationToken";
  v69 = (v129 + 8);
  while (1)
  {
    if (v68 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    (*(v65 + 16))(v66, v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v68, v64);
    v70 = sub_1BE04A304();
    v72 = v71;
    if (v70 == sub_1BE052434() && v72 == v73)
    {
      break;
    }

    v74 = sub_1BE053B84();

    if (v74)
    {
      goto LABEL_19;
    }

    ++v68;
    v66 = v126;
    (*v69)(v126, v64);
    if (v67 == v68)
    {
      goto LABEL_15;
    }
  }

LABEL_19:

  v76 = v121;
  (*(v65 + 32))(v121, v126, v64);
  sub_1BE04A314();
  v78 = v77;
  (*(v65 + 8))(v76, v64);
  v47 = v140;
  v46 = v138;
  if (!v78)
  {
    goto LABEL_26;
  }

  v79 = [objc_allocWithZone(MEMORY[0x1E69B8EE8]) init];
  v80 = v120;
  v81 = [*(v120 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_methodGroup) identifier];
  if (!v81)
  {
    sub_1BE052434();
    v81 = sub_1BE052404();
  }

  [v79 setMethodGroupIdentifier_];

  v82 = [v118 identifier];
  v83 = v127;
  v84 = v128;
  v85 = v119;
  if (!v82)
  {
    sub_1BE052434();
    v82 = sub_1BE052404();
  }

  [v79 setMethodIdentifier_];

  sub_1BE052464();
  v86 = sub_1BE052444();
  v88 = v87;

  (*(v84 + 8))(v85, v83);
  if (v88 >> 60 == 15)
  {
    v89 = 0;
  }

  else
  {
    v89 = sub_1BE04AAB4();
    sub_1BD030220(v86, v88);
  }

  v110 = v139;
  v111 = v125;
  [v79 setVerificationData_];

  v112 = *(v80 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_verificationController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1BE0B7020;
  *(v113 + 32) = v79;
  sub_1BD0E5E8C(0, &qword_1EBD45EF8);
  v114 = v79;
  v115 = sub_1BE052724();

  v116 = swift_allocObject();
  *(v116 + 16) = v140;
  *(v116 + 24) = v110;
  v145 = sub_1BD431D74;
  v146 = v116;
  aBlock = MEMORY[0x1E69E9820];
  v142 = 1107296256;
  v143 = sub_1BD4315EC;
  v144 = &block_descriptor_19_2;
  v117 = _Block_copy(&aBlock);
  sub_1BE048964();

  [v112 submitVerificationEntries:v115 completion:v117];
  _Block_release(v117);

  (*(v124 + 8))(v123, v111);
}

uint64_t sub_1BD4313C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    sub_1BE04A9F4();
    v11 = sub_1BE04AA64();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_1BE04AA64();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  sub_1BE048964();
  v13 = a3;
  v10(v9, a3);

  return sub_1BD0DE53C(v9, &unk_1EBD3CF70);
}

void sub_1BD431514(int a1, int a2, id a3, void (*a4)(id, uint64_t))
{
  if (a3)
  {
    v6 = a3;
    v7 = sub_1BE04A844();
    v8 = [objc_opt_self() errorWithUnderlyingError:v7 defaultSeverity:4];

    v9 = v8;
    a4(v8, 1);
  }

  else
  {
    a4(0, 0);
  }
}

void sub_1BD4315EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_1BE048964();
  v9 = a3;
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_1BD431770(uint64_t a1, void *a2, void *a3)
{
  v47 = sub_1BE04D214();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EE0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EE8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v43 - v15;
  v17 = sub_1BE04AA64();
  v48 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v46 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = a2;
  v22 = a3;
  v44 = a1;
  sub_1BD42EB14(v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EF0);
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD45EE0);
    sub_1BE04D0C4();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1BD026000, v24, v25, "Failed to create verification url", v26, 2u);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v45 + 8))(v8, v47);
    v27 = [objc_opt_self() errorWithSeverity_];
    v28 = &v21[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 1);
      ObjectType = swift_getObjectType();
      aBlock = 0u;
      v50 = 0u;
      LOBYTE(v51) = 2;
      sub_1BD865A00(v21, &off_1F3B97738, &aBlock, ObjectType, v29);
      swift_unknownObjectRelease();
      sub_1BD0DE53C(&aBlock, &unk_1EBD3F510);
    }
  }

  else
  {
    v31 = &v12[*(v23 + 48)];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = &v16[*(v13 + 48)];
    v35 = *(v48 + 32);
    v35(v16, v12, v17);
    *v34 = v32;
    *(v34 + 1) = v33;
    v36 = v46;
    v35(v46, v16, v17);
    v37 = *(v44 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_authSession);
    [v37 setPresentationWindow_];
    v38 = sub_1BE04A9C4();
    v39 = sub_1BE052404();

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = sub_1BD431D08;
    v41[4] = v20;
    v51 = sub_1BD431D14;
    v52 = v41;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v50 = sub_1BD4313C0;
    *(&v50 + 1) = &block_descriptor_93;
    v42 = _Block_copy(&aBlock);
    sub_1BE048964();

    [v37 performAuthenticationWithURL:v38 callbackScheme:v39 completion:v42];
    _Block_release(v42);

    (*(v48 + 8))(v36, v17);
  }
}

uint64_t sub_1BD431D2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD431D7C(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1BD431D88(uint64_t a1, uint64_t a2)
{
  v41 = sub_1BE04D214();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EE0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EE8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39 - v14;
  v16 = sub_1BE04AA64();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  sub_1BE048964();
  sub_1BD42EB14(v11);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EF0);
  if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD45EE0);
    sub_1BE04D0C4();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1BD026000, v22, v23, "Failed to create verification url", v24, 2u);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    (*(v4 + 8))(v7, v41);
    v25 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      sub_1BD37FE84(1u);
      if ([v25 severity] == 1)
      {
        sub_1BD37FE84(0);
      }

      else
      {
        sub_1BD37F80C(v25);
      }
    }

    else
    {
    }
  }

  else
  {
    v28 = &v11[*(v21 + 48)];
    v29 = *v28;
    v30 = *(v28 + 1);
    v31 = &v15[*(v12 + 48)];
    v40 = v17;
    v41 = a1;
    v32 = *(v17 + 32);
    v32(v15, v11);
    *v31 = v29;
    *(v31 + 1) = v30;
    (v32)(v20, v15, v16);
    v33 = *(v41 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_authSession);
    [v33 setPresentationWindow_];
    v34 = sub_1BE04A9C4();
    v35 = sub_1BE052404();

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = sub_1BD4322EC;
    v37[4] = v42;
    aBlock[4] = sub_1BD432304;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD4313C0;
    aBlock[3] = &block_descriptor_27;
    v38 = _Block_copy(aBlock);
    sub_1BE048964();

    [v33 performAuthenticationWithURL:v34 callbackScheme:v35 completion:v38];
    _Block_release(v38);

    (*(v40 + 8))(v20, v16);
  }
}

uint64_t type metadata accessor for ShippingMethodSheet()
{
  result = qword_1EBD45F00;
  if (!qword_1EBD45F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD432388()
{
  type metadata accessor for PKPaymentAuthorizationFundingMode(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD3596B8();
      if (v2 <= 0x3F)
      {
        sub_1BD3EC194();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD432478@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = type metadata accessor for ShippingMethodSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_1BD4326A8();
  v8 = v7;
  v9 = *(v1 + 248);
  v10 = *(v1 + 256);
  sub_1BD433C04(v1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1BD433C68(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *&v21 = sub_1BD433CCC;
  *(&v21 + 1) = v12;
  *&v22 = v6;
  *(&v22 + 1) = v8;
  *&v23 = v9;
  *(&v23 + 1) = v10;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v27[0] = sub_1BD433CCC;
  v27[1] = v12;
  v27[2] = v6;
  v27[3] = v8;
  v27[4] = v9;
  v27[5] = v10;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  sub_1BE048964();
  sub_1BD069084(&v21, v31);
  sub_1BD0690F4(v27);
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F10);
  sub_1BD0DE4F4(&qword_1EBD45F18, &qword_1EBD45F10);
  sub_1BE050DE4();

  v31[2] = v17;
  v31[3] = v18;
  v31[4] = v19;
  v32 = v20;
  v31[0] = v15;
  v31[1] = v16;
  return sub_1BD0690F4(v31);
}

id sub_1BD4326A8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v20 - v12;
  if ((*(v0 + 208) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    (*(v2 + 104))(&v20 - v12, *MEMORY[0x1E69B8068], v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v14, v1);
      return v17;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = *MEMORY[0x1E69B8068];
  v19 = *(v2 + 104);
  if (*(v0 + 264) == 1)
  {
    v19(v9, v18, v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v14 = v9;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v19(v5, v18, v1, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v14 = v5;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BD432928@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F20);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24[-v11];
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F28);
  sub_1BD433F18(&qword_1EBD45F30, &qword_1EBD45F28, &unk_1BE0D6008, sub_1BD433D70);
  sub_1BE0504A4();
  type metadata accessor for ShippingMethodSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0);
  sub_1BD0DE4F4(&qword_1EBD45F88, &qword_1EBD45F20);
  sub_1BD434610(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  sub_1BD10CC54();
  sub_1BE050F74();
  sub_1BD0DE53C(v7, &qword_1EBD393E8);
  (*(v9 + 8))(v12, v8);
  sub_1BE051CD4();
  sub_1BE04EE54();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F90) + 36));
  v14 = v31;
  v13[4] = v30;
  v13[5] = v14;
  v13[6] = v32;
  v15 = v27;
  *v13 = v26;
  v13[1] = v15;
  v16 = v29;
  v13[2] = v28;
  v13[3] = v16;
  v17 = sub_1BE051274();
  v18 = sub_1BE0501D4();
  v19 = sub_1BE051CD4();
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F98);
  v23 = a2 + *(result + 36);
  *v23 = v17;
  *(v23 + 8) = v18;
  *(v23 + 16) = v19;
  *(v23 + 24) = v21;
  return result;
}

uint64_t sub_1BD432CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FA0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v1[3];
  v72[2] = v1[2];
  v72[3] = v11;
  v12 = v1[5];
  v72[4] = v1[4];
  v72[5] = v12;
  v13 = v1[1];
  v72[0] = *v1;
  v72[1] = v13;
  if (*&v72[0])
  {
    v38 = a1;
    v54 = *(v1 + 40);
    v55 = *(v1 + 56);
    v56 = *(v1 + 72);
    v14 = *(v1 + 11);
    v51 = *&v72[0];
    v57 = v14;
    v52 = *(v1 + 8);
    v53 = *(v1 + 24);
    v15 = v1[1];
    v58 = *v1;
    v59 = v15;
    v16 = v1[2];
    v17 = v1[3];
    v18 = v1[5];
    v62 = v1[4];
    v63 = v18;
    v60 = v16;
    v61 = v17;
    v19 = v1[6];
    v20 = v1[7];
    v21 = v1[9];
    v66 = v1[8];
    v67 = v21;
    v64 = v19;
    v65 = v20;
    v22 = v1[10];
    v23 = v1[11];
    v24 = v1[13];
    v70 = v1[12];
    v71 = v24;
    v68 = v22;
    v69 = v23;
    v25 = v1[3];
    v50[2] = v1[2];
    v50[3] = v25;
    v26 = v1[5];
    v50[4] = v1[4];
    v50[5] = v26;
    v27 = v1[1];
    v50[0] = *v1;
    v50[1] = v27;
    v37 = v36 - v10;
    sub_1BD433FCC(v50, v47);
    *&v47[0] = sub_1BD83AAF4();
    *(&v47[0] + 1) = v28;
    sub_1BD0DDEBC();
    v43 = sub_1BE0506C4();
    v44 = v29;
    v45 = v30 & 1;
    v46 = v31;
    v32 = sub_1BD4330A8(v47);
    v36[1] = v36;
    v39 = v47[0];
    v40 = v47[1];
    v41 = v48;
    v42 = v49;
    MEMORY[0x1EEE9AC00](v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F70);
    sub_1BD433E34();
    v36[0] = v3;
    sub_1BD433F18(&qword_1EBD45F68, &qword_1EBD45F70, &unk_1BE0D6030, sub_1BD433F9C);
    v34 = v37;
    sub_1BE051A34();
    (*(v8 + 16))(v6, v34, v7);
    swift_storeEnumTagMultiPayload();
    sub_1BD433D70();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v72, &qword_1EBD45FA8);
    return (*(v8 + 8))(v34, v7);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD433D70();
    return sub_1BE04F9A4();
  }
}

id sub_1BD4330A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 224);
  if (!v9)
  {
    v34 = 0u;
    v35 = 0u;
    LOBYTE(v36) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
    sub_1BD12E194();
    sub_1BE04F9A4();
    v34 = v37;
    v35 = v38;
    v36 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F80);
    sub_1BD433F9C();
LABEL_9:
    result = sub_1BE04F9A4();
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v28 = v40;
LABEL_13:
    *a1 = v25;
    *(a1 + 16) = v26;
    *(a1 + 32) = v27;
    *(a1 + 33) = v28;
    return result;
  }

  if (v9 != 2)
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F80);
    sub_1BD433F9C();
    goto LABEL_9;
  }

  v10 = *(v1 + 272);
  v33 = a1;
  if (!v10)
  {
LABEL_11:
    v18 = 0;
    v20 = 0;
    v24 = 0;
    v23 = 0;
    goto LABEL_12;
  }

  v11 = v6;
  v12 = v10;
  if ([v12 type] != 1)
  {

    goto LABEL_11;
  }

  (*(v4 + 104))(v8, *MEMORY[0x1E69B8078], v11);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v4 + 8))(v8, v11);
    *&v37 = v15;
    *(&v37 + 1) = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    LOBYTE(v15) = v21;
    v23 = v22;

    v24 = v15 & 1;
    sub_1BD0D7F18(v18, v20, v15 & 1);
    sub_1BE048C84();
LABEL_12:
    *&v34 = v18;
    *(&v34 + 1) = v20;
    *&v35 = v24;
    *(&v35 + 1) = v23;
    LOBYTE(v36) = 0;
    sub_1BD1969AC(v18, v20, v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
    sub_1BD12E194();
    sub_1BE04F9A4();
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v34 = v37;
    v35 = v38;
    v36 = v39;
    sub_1BD434510(v37, *(&v37 + 1), v38, *(&v38 + 1), v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F80);
    sub_1BD433F9C();
    sub_1BE04F9A4();
    sub_1BD1969F0(v18, v20, v24, v23);
    sub_1BD43451C(v29, *(&v29 + 1), v30, *(&v30 + 1), v31);
    result = sub_1BD1969F0(v18, v20, v24, v23);
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    a1 = v33;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

__n128 sub_1BD4334C8@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ShippingMethodSheet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(*a1 + 16);
  KeyPath = swift_getKeyPath();
  sub_1BD433C04(a2, &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *(v15 + 24) = v11;
  sub_1BD433C68(&v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14);
  v28[0] = 0;
  v28[1] = v12;
  v24 = v28;
  v25 = KeyPath;
  v26 = sub_1BD434030;
  v27 = v15;
  sub_1BE048C84();
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FB0);
  sub_1BD4341A0();
  sub_1BE0504E4();

  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F50) + 36));
  __asm { FMOV            V0.2D, #16.0 }

  *v17 = result;
  v17[1] = result;
  v17[2].n128_u8[0] = 0;
  return result;
}

void sub_1BD433688(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ShippingMethodSheet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 >= *(a2 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v13 = a2 + 88 * v12;
  v14 = *(v13 + 80);
  v50 = *(v13 + 64);
  v51 = v14;
  v52 = *(v13 + 96);
  v53 = *(v13 + 112);
  v15 = *(v13 + 48);
  v48 = *(v13 + 32);
  v49 = v15;
  v54 = *(v13 + 88);
  v16 = v48;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  sub_1BD40F770(&v48, v47);
  v17 = v16;
  v18 = sub_1BE053074();

  v19 = *(a3 + 264);
  sub_1BD433C04(a3, &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_1BD433C68(&v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20);
  v22 = v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v51;
  *(v22 + 32) = v50;
  *(v22 + 48) = v23;
  *(v22 + 64) = v52;
  *(v22 + 80) = v53;
  v24 = v49;
  *v22 = v48;
  *(v22 + 16) = v24;
  KeyPath = swift_getKeyPath();
  v40 = 0;
  v39[0] = 1;
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v41 = v48;
  v42 = v49;
  sub_1BD40F770(&v48, v47);
  sub_1BD40F770(&v48, v47);
  v26 = [v17 label];
  v27 = sub_1BE052434();
  v29 = v28;

  sub_1BD1BCE40(&v54, v47);
  sub_1BD40F7CC(&v48);
  v31 = *(&v54 + 1);
  v30 = v54;
  if (v19 != 1 || !*(&v54 + 1))
  {
    goto LABEL_9;
  }

  v32 = HIBYTE(*(&v54 + 1)) & 0xFLL;
  if ((*(&v54 + 1) & 0x2000000000000000) == 0)
  {
    v32 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v33 = v29;
    v29 = *(&v54 + 1);
    v34 = v54;
    v30 = v27;
    v31 = v33;
  }

  else
  {
LABEL_9:
    v34 = v27;
  }

  v35 = v40;
  v36 = v39[0];
  v37 = v44;
  *(a4 + 32) = v43;
  *(a4 + 48) = v37;
  *(a4 + 64) = v45;
  *(a4 + 80) = v46;
  v38 = v42;
  *a4 = v41;
  *(a4 + 16) = v38;
  *(a4 + 88) = v18 & 1;
  *(a4 + 96) = sub_1BD434488;
  *(a4 + 104) = v21;
  *(a4 + 112) = v34;
  *(a4 + 120) = v29;
  *(a4 + 128) = v30;
  *(a4 + 136) = v31;
  *(a4 + 144) = KeyPath;
  *(a4 + 152) = v35;
  *(a4 + 160) = 0;
  *(a4 + 168) = v36;
}

void sub_1BD433988(id *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  sub_1BD40F770(a1, v28);
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  sub_1BD40F7CC(a1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 136315138;
    v14 = [*a1 description];
    v15 = sub_1BE052434();
    v26 = v4;
    v17 = v16;

    v18 = sub_1BD123690(v15, v17, v28);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1BD026000, v9, v10, "Selected shipping method: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1BFB45F20](v13, -1, -1);
    v19 = v12;
    v2 = v27;
    MEMORY[0x1BFB45F20](v19, -1, -1);

    (*(v5 + 8))(v8, v26);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v20 = *a1;
  if (*v2)
  {
    v21 = *(v2 + 8);
    sub_1BD0E5E8C(0, &qword_1EBD45FC8);
    v22 = v21;
    v23 = v20;
    v24 = sub_1BE053074();

    if (v24)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
  }

  (*(v2 + 232))(v20);
LABEL_9:
}

uint64_t sub_1BD433C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShippingMethodSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD433C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShippingMethodSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD433CCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShippingMethodSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD432928(v4, a1);
}

unint64_t sub_1BD433D70()
{
  result = qword_1EBD45F38;
  if (!qword_1EBD45F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45F40);
    sub_1BD433E34();
    sub_1BD433F18(&qword_1EBD45F68, &qword_1EBD45F70, &unk_1BE0D6030, sub_1BD433F9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45F38);
  }

  return result;
}

unint64_t sub_1BD433E34()
{
  result = qword_1EBD45F48;
  if (!qword_1EBD45F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45F50);
    sub_1BD0DE4F4(&qword_1EBD45F58, &qword_1EBD45F60);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45F48);
  }

  return result;
}

uint64_t sub_1BD433F18(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

void sub_1BD434030(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShippingMethodSheet() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1BD433688(a1, v6, v7, a2);
}

uint64_t sub_1BD4340B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08);
  sub_1BD2D5394();
  sub_1BD434224();
  return sub_1BE0519C4();
}

unint64_t sub_1BD4341A0()
{
  result = qword_1EBD45FB8;
  if (!qword_1EBD45FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45FB0);
    sub_1BD434224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FB8);
  }

  return result;
}

unint64_t sub_1BD434224()
{
  result = qword_1EBD45FC0;
  if (!qword_1EBD45FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FC0);
  }

  return result;
}

__n128 sub_1BD434278@<Q0>(uint64_t *a1@<X0>, void (*a2)(__n128 *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v20 = *a1;
  a2(&v10, &v20);
  v29 = v18;
  v30[0] = v19[0];
  *(v30 + 9) = *(v19 + 9);
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v31[7] = v17;
  v31[8] = v18;
  v32[0] = v19[0];
  *(v32 + 9) = *(v19 + 9);
  v31[4] = v14;
  v31[5] = v15;
  v31[6] = v16;
  v31[0] = v10;
  v31[1] = v11;
  v31[2] = v12;
  v31[3] = v13;
  sub_1BD4343D8(&v21, &v9);
  sub_1BD434434(v31);
  v4 = v30[0];
  *(a3 + 128) = v29;
  *(a3 + 144) = v4;
  *(a3 + 153) = *(v30 + 9);
  v5 = v26;
  *(a3 + 64) = v25;
  *(a3 + 80) = v5;
  v6 = v28;
  *(a3 + 96) = v27;
  *(a3 + 112) = v6;
  v7 = v22;
  *a3 = v21;
  *(a3 + 16) = v7;
  result = v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1BD434510(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_1BD1969AC(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1BD43451C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_1BD1969F0(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_1BD434528()
{
  result = qword_1EBD45FD0;
  if (!qword_1EBD45FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45FD8);
    sub_1BD0DE4F4(&qword_1EBD45F18, &qword_1EBD45F10);
    sub_1BD434610(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FD0);
  }

  return result;
}

uint64_t sub_1BD434610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD4346C4()
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
  __swift_allocate_value_buffer(v9, qword_1EBDAB088);
  __swift_project_value_buffer(v9, qword_1EBDAB088);
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

uint64_t sub_1BD4348D8(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v1[3] = swift_task_alloc();
  v2 = sub_1BE04AA64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04A3B4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD434AF0, 0, 0);
}

uint64_t sub_1BD434AF0()
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:ShowExpiredPassesIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[17] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = [objc_opt_self() sharedInstance];
  v0[18] = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  if (![v12 hasPassesInExpiredSection])
  {

LABEL_8:
    sub_1BD135218();
    swift_allocError();
    *v21 = 7;
    swift_willThrow();
    goto LABEL_9;
  }

  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[3];
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v17 = sub_1BE052434();
  MEMORY[0x1BFB37400](v17);
  sub_1BE04A364();
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];
    sub_1BD226BBC(v0[3]);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v19 + 8))(v18, v20);
LABEL_9:
    sub_1BD4351C4();

    v22 = v0[1];

    return v22();
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  v24 = swift_task_alloc();
  v0[19] = v24;
  *v24 = v0;
  v24[1] = sub_1BD434EC4;
  v25 = v0[6];

  return sub_1BD0D7A54(v25);
}

uint64_t sub_1BD434EC4(char a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD434FC4, 0, 0);
}

uint64_t sub_1BD434FC4()
{
  if (*(v0 + 160) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    sub_1BE048774();

    (*(v6 + 8))(v5, v7);
    (*(v2 + 8))(v3, v4);
  }

  else
  {
    v9 = *(v0 + 144);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v15 + 8))(v13, v14);
    (*(v11 + 8))(v10, v12);
  }

  sub_1BD4351C4();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1BD4351C4()
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:ShowExpiredPassesIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD4354B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36C00 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB088);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD435558(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD4348D8(a1);
}

uint64_t sub_1BD4355F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD435638(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

id sub_1BD4356B4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v88 = a1;
  v89 = a2;
  v2 = sub_1BE04FB94();
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v85 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46008);
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v82 = v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46010);
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v90 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = v81 - v13;
  v14 = sub_1BE050474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE04BD74();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v97 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = v81 - v26;
  v28 = *(v20 + 104);
  LODWORD(v96) = *MEMORY[0x1E69B80D8];
  v104 = v29;
  v95 = v28;
  v28(v81 - v26, v25);
  result = PKPassKitBundle();
  if (result)
  {
    v31 = result;
    v32 = sub_1BE04B6F4();
    v34 = v33;

    v93 = *(v20 + 8);
    KeyPath = v20 + 8;
    v93(v27, v104);
    v123 = v32;
    v124 = v34;
    v81[1] = sub_1BD0DDEBC();
    v35 = sub_1BE0506C4();
    v37 = v36;
    LOBYTE(v34) = v38;
    (*(v15 + 104))(v18, *MEMORY[0x1E6980EE8], v14);
    sub_1BE0503A4();
    sub_1BE050284();
    (*(v15 + 8))(v18, v14);
    v39 = sub_1BE0505F4();
    v100 = v40;
    v101 = v39;
    v42 = v41;
    v102 = v43;

    sub_1BD0DDF10(v35, v37, v34 & 1);

    v44 = sub_1BE0501C4();
    v98 = v42 & 1;
    v99 = v44;
    v153 = v42 & 1;
    v150 = 1;
    v45 = v97;
    v95(v97, v96, v104);
    result = PKPassKitBundle();
    if (result)
    {
      v46 = result;
      v47 = sub_1BE04B6F4();
      v49 = v48;

      v93(v45, v104);
      v123 = v47;
      v124 = v49;
      v50 = sub_1BE0506C4();
      v95 = v51;
      v96 = v50;
      LOBYTE(v47) = v52;
      v104 = v53;
      KeyPath = swift_getKeyPath();
      v54 = sub_1BE0501C4();
      LODWORD(v97) = v54;
      LODWORD(v93) = v47 & 1;
      v149 = v47 & 1;
      v145 = 1;
      MEMORY[0x1EEE9AC00](v54, v55);
      v81[-2] = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46018);
      sub_1BD0DE4F4(&qword_1EBD46020, &qword_1EBD46018);
      v56 = v82;
      sub_1BE0504E4();
      v57 = v85;
      sub_1BE04FB84();
      sub_1BD0DE4F4(&qword_1EBD46028, &qword_1EBD46008);
      v58 = v103;
      v59 = v84;
      v60 = v87;
      sub_1BE051144();
      (*(v86 + 8))(v57, v60);
      (*(v83 + 8))(v56, v59);
      sub_1BD436F3C(v110);
      v62 = v90;
      v61 = v91;
      v63 = *(v91 + 16);
      v64 = v92;
      v63(v90, v58, v92);
      v107 = v110[2];
      v108 = v110[3];
      v109[0] = v111[0];
      *(v109 + 9) = *(v111 + 9);
      v105 = v110[0];
      v106 = v110[1];
      *&v112 = v101;
      *(&v112 + 1) = v100;
      LOBYTE(v113) = v98;
      DWORD1(v113) = *&v152[3];
      *(&v113 + 1) = *v152;
      *(&v113 + 1) = v102;
      LOBYTE(v114[0]) = v99;
      DWORD1(v114[0]) = *&v151[3];
      *(v114 + 1) = *v151;
      *(&v114[1] + 8) = 0u;
      *(v114 + 8) = 0u;
      BYTE8(v114[2]) = 1;
      v65 = v112;
      v66 = v113;
      v67 = v89;
      *(v89 + 57) = *(&v114[1] + 9);
      v68 = v114[1];
      v67[2] = v114[0];
      v67[3] = v68;
      *v67 = v65;
      v67[1] = v66;
      *&v115 = v96;
      *(&v115 + 1) = v95;
      LOBYTE(v116) = v93;
      DWORD1(v116) = *&v148[3];
      *(&v116 + 1) = *v148;
      *(&v116 + 1) = v104;
      *&v117 = KeyPath;
      BYTE8(v117) = 1;
      HIDWORD(v117) = *&v147[3];
      *(&v117 + 9) = *v147;
      LOBYTE(v118[0]) = v97;
      DWORD1(v118[0]) = *&v146[3];
      *(v118 + 1) = *v146;
      *(&v118[1] + 8) = 0u;
      *(v118 + 8) = 0u;
      BYTE8(v118[2]) = 1;
      v69 = v116;
      v67[5] = v115;
      v67[6] = v69;
      v70 = v117;
      v71 = v118[0];
      v72 = v118[1];
      *(v67 + 153) = *(&v118[1] + 9);
      v67[8] = v71;
      v67[9] = v72;
      v67[7] = v70;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46030);
      v63(v67 + *(v73 + 64), v62, v64);
      v74 = (v67 + *(v73 + 80));
      v75 = *(v109 + 9);
      *(v120 + 9) = *(v109 + 9);
      v76 = v108;
      v119[2] = v107;
      v119[3] = v108;
      v77 = v109[0];
      v120[0] = v109[0];
      v78 = v105;
      v79 = v106;
      v119[0] = v105;
      v119[1] = v106;
      v74[2] = v107;
      v74[3] = v76;
      v74[4] = v77;
      *(v74 + 73) = v75;
      *v74 = v78;
      v74[1] = v79;
      sub_1BD0DE19C(&v112, &v123, &unk_1EBD3DF90);
      sub_1BD0DE19C(&v115, &v123, &qword_1EBD43170);
      sub_1BD0DE19C(v119, &v123, &qword_1EBD46038);
      v80 = *(v61 + 8);
      v80(v103, v64);
      v121[2] = v107;
      v121[3] = v108;
      v122[0] = v109[0];
      *(v122 + 9) = *(v109 + 9);
      v121[0] = v105;
      v121[1] = v106;
      sub_1BD0DE53C(v121, &qword_1EBD46038);
      v80(v62, v64);
      v123 = v96;
      v124 = v95;
      v125 = v93;
      *v126 = *v148;
      *&v126[3] = *&v148[3];
      v127 = v104;
      v128 = KeyPath;
      v129 = 1;
      *v130 = *v147;
      *&v130[3] = *&v147[3];
      v131 = v97;
      *&v132[3] = *&v146[3];
      *v132 = *v146;
      v134 = 0u;
      v133 = 0u;
      v135 = 1;
      sub_1BD0DE53C(&v123, &qword_1EBD43170);
      v136[0] = v101;
      v136[1] = v100;
      v137 = v98;
      *v138 = *v152;
      *&v138[3] = *&v152[3];
      v139 = v102;
      v140 = v99;
      *v141 = *v151;
      *&v141[3] = *&v151[3];
      v142 = 0u;
      v143 = 0u;
      v144 = 1;
      return sub_1BD0DE53C(v136, &unk_1EBD3DF90);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD4360C8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46050);
  v70 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v67 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46058);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v71 = &v64 - v13;
  v14 = sub_1BE04BD74();
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46060);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46068);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v64 - v33;
  v72 = a1;
  v73 = &v64 - v33;
  v35 = *a1;
  if (!v35)
  {
    goto LABEL_8;
  }

  if (v35 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(v22 + 56))(v34, 1, 1, v21, v32);
    v47 = *(v72 + 1);
    if (!v47)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_4:
  v64 = v29;
  v65 = v10;
  v69 = v4;
  v66 = a2;
  v37 = v74;
  v36 = v75;
  (*(v74 + 104))(v20, *MEMORY[0x1E69B80D8], v75, v32);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v39 = result;
  v40 = sub_1BE04B6F4();
  v42 = v41;

  (*(v37 + 8))(v20, v36);
  v76 = v40;
  v77 = v42;
  sub_1BD0DDEBC();
  v76 = sub_1BE0506C4();
  v77 = v43;
  v78 = v44 & 1;
  v79 = v45;
  MEMORY[0x1EEE9AC00](v76, v43);
  *(&v64 - 2) = v35;
  v46 = v72;
  *(&v64 - 1) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46090);
  sub_1BD438078();
  sub_1BE051A24();
  v34 = v73;
  (*(v22 + 32))(v73, v25, v21);
  (*(v22 + 56))(v34, 0, 1, v21);
  v10 = v65;
  a2 = v66;
  v4 = v69;
  v29 = v64;
  v47 = *(v46 + 1);
  if (!v47)
  {
LABEL_6:
    v48 = 1;
    v49 = v70;
    v50 = v71;
LABEL_16:
    (*(v49 + 56))(v50, v48, 1, v4);
    sub_1BD069604(v34, v29);
    sub_1BD0DE19C(v50, v10, &qword_1EBD46058);
    sub_1BD069604(v29, a2);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46070);
    sub_1BD0DE19C(v10, a2 + *(v63 + 48), &qword_1EBD46058);
    sub_1BD0DE53C(v50, &qword_1EBD46058);
    sub_1BD069674(v34);
    sub_1BD0DE53C(v10, &qword_1EBD46058);
    return sub_1BD069674(v29);
  }

LABEL_9:
  if (!(v47 >> 62))
  {
    v51 = v74;
    v52 = v75;
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_14:
    v48 = 1;
    v49 = v70;
    v50 = v71;
    goto LABEL_15;
  }

  v62 = sub_1BE053704();
  v51 = v74;
  v52 = v75;
  if (!v62)
  {
    goto LABEL_14;
  }

LABEL_11:
  v69 = v4;
  v53 = v68;
  (*(v51 + 104))(v68, *MEMORY[0x1E69B80D8], v52);
  result = PKPassKitBundle();
  if (result)
  {
    v54 = result;
    v55 = sub_1BE04B6F4();
    v57 = v56;

    (*(v51 + 8))(v53, v52);
    v76 = v55;
    v77 = v57;
    sub_1BD0DDEBC();
    v76 = sub_1BE0506C4();
    v77 = v58;
    v78 = v59 & 1;
    v79 = v60;
    MEMORY[0x1EEE9AC00](v76, v58);
    *(&v64 - 2) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46078);
    sub_1BD437F98();
    v61 = v67;
    sub_1BE051A24();
    v49 = v70;
    v50 = v71;
    v4 = v69;
    (*(v70 + 32))(v71, v61, v69);
    v48 = 0;
LABEL_15:
    v34 = v73;
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BD436808(uint64_t a1, _OWORD *a2)
{
  v8[8] = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = a2[1];
  v3[1] = *a2;
  v3[2] = v4;
  v5 = a2[3];
  v3[3] = a2[2];
  v3[4] = v5;
  sub_1BE048C84();
  sub_1BD300E80(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460A0);
  sub_1BD0DE4F4(&qword_1EBD460A8, &qword_1EBD45FF0);
  sub_1BD2D5FE4();
  v6 = sub_1BD43801C();
  v8[0] = &type metadata for listRow;
  v8[1] = v6;
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

void sub_1BD436978(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1BE052434();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1BD4369D0(void **a1, _OWORD *a2)
{
  v3 = *a1;
  v11[0] = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048);
  sub_1BE0516A4();
  *&v11[0] = v3;
  v10[2] = v11;
  v4 = sub_1BD30114C(sub_1BD438430, v10, v12);

  LOBYTE(v12) = v4 & 1;
  v13 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v4 & 1;
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 40) = v6;
  v7 = a2[3];
  *(v5 + 56) = a2[2];
  *(v5 + 72) = v7;
  *(v5 + 88) = v3;
  v8 = v3;
  sub_1BD300E80(a2, v11);
  sub_1BD43801C();
  sub_1BE0509D4();
}

uint64_t sub_1BD436B18(char a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (a1)
  {
    v16[0] = *(a2 + 32);
    v21 = v4;
    v17 = v5;
    v18 = v4;
    sub_1BD0DE19C(v16, &v20, &qword_1EBD45FF0);
    sub_1BD0DE19C(&v21, &v20, &qword_1EBD460B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048);
    sub_1BE0516A4();
    v6 = v20;
    v17 = MEMORY[0x1E69E7CC0];
    if (v20 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v14 = v5;
      v15 = v4;
      v4 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB40900](v4, v6);
        }

        else
        {
          if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v8 = *(v6 + 8 * v4 + 32);
        }

        v5 = v8;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        sub_1BD437F44();
        if (sub_1BE053074())
        {
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        ++v4;
        if (v9 == i)
        {
          v12 = v17;
          v5 = v14;
          v4 = v15;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v17 = v5;
    v18 = v4;
    v20 = v12;
    sub_1BE0516B4();
    sub_1BD0DE53C(v16, &qword_1EBD45FF0);
    v11 = &v21;
  }

  else
  {
    v20 = *(a2 + 40);
    v21 = v5;
    v17 = v5;
    v18 = v4;
    sub_1BD0DE19C(&v21, v16, &qword_1EBD45FF0);
    sub_1BD0DE19C(&v20, v16, &qword_1EBD460B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048);
    sub_1BE0516A4();
    v10 = a3;
    MEMORY[0x1BFB3F7A0]();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    v16[0] = v5;
    v16[1] = v4;
    sub_1BE0516B4();
    sub_1BD0DE53C(&v21, &qword_1EBD45FF0);
    v11 = &v20;
  }

  return sub_1BD0DE53C(v11, &qword_1EBD460B0);
}