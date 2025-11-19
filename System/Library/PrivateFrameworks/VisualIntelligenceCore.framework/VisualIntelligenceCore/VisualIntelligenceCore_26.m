uint64_t sub_1D89D1940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1D889342C(a1, v18 - v8);
  v10 = sub_1D8B15EA0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D87A14E4(v9, &unk_1ECA675E0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1D8B15E00();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D8B15E90();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1D89D1B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v9 = sub_1D8B16870();
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[5] = a5;
  v6[6] = a6;

  return MEMORY[0x1EEE6DFA0](sub_1D89D1BFC, 0, 0);
}

uint64_t sub_1D89D1BFC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = sub_1D8B16880();
  v5 = sub_1D89D310C(&qword_1EE0E3670, MEMORY[0x1E69E8820]);
  sub_1D8B16C40();
  sub_1D89D310C(&qword_1EE0E3678, MEMORY[0x1E69E87E8]);
  sub_1D8B16890();
  v6 = *(v3 + 8);
  *(v0 + 96) = v6;
  *(v0 + 104) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1D89D1DA0;
  v8 = *(v0 + 88);

  return MEMORY[0x1EEE6DE58](v8, v0 + 16, v4, v5);
}

uint64_t sub_1D89D1DA0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D89D1F78;
  }

  else
  {
    v2 = sub_1D89D1EB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D89D1EB4()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[8];
  sub_1D89D3154();
  swift_allocError();
  swift_willThrow();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D89D1F78()
{
  (*(v0 + 96))(*(v0 + 88), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89D1FF4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_1D89D20E8;

  return v7(v4 + 16);
}

uint64_t sub_1D89D20E8()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1D89D21F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v5 + 16) = a1;
  v7 = *a5;
  v8 = a5[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D887949C;

  return sub_1D89D34B4(a4, v7, v8);
}

uint64_t sub_1D89D22A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1D8864FBC;

  return sub_1D89D1078(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_1D89D237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D886553C;

  return sub_1D89D1B1C(a1, a2, a3, a4, v10, v11);
}

BOOL _s22VisualIntelligenceCore23TextSummarizationResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v25 = *(a1 + 48);
  v16 = *(a1 + 56);
  v23 = *(a1 + 64);
  v19 = *(a1 + 80);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  v20 = *(a2 + 40);
  v21 = *(a1 + 40);
  v24 = *(a2 + 48);
  v17 = *(a2 + 56);
  v22 = *(a2 + 64);
  v14 = *(a1 + 72);
  v15 = *(a2 + 72);
  v18 = *(a2 + 80);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v12 = v6 ^ v11;
  if (v2 == v7 && v3 == v8)
  {
    if ((v4 ^ v9 | v5 ^ v10 | v12))
    {
      return 0;
    }
  }

  else if ((v4 ^ v9) & 1 | ((sub_1D8B16BA0() & 1) == 0) | ((v5 ^ v10) | v12) & 1)
  {
    return 0;
  }

  if (v25)
  {
    if (!v24 || (v21 != v20 || v25 != v24) && (sub_1D8B16BA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v23)
  {
    if (!v22 || (v16 != v17 || v23 != v22) && (sub_1D8B16BA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v19)
  {
    return v18 && (v14 == v15 && v19 == v18 || (sub_1D8B16BA0() & 1) != 0);
  }

  return !v18;
}

uint64_t type metadata accessor for TextSummarizer()
{
  result = qword_1EE0E7BD8;
  if (!qword_1EE0E7BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D89D2698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextSummarizer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D89D26FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextSummarizer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D89D2760(uint64_t a1)
{
  v4 = *(type metadata accessor for TextSummarizer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + v6);
  v8 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8864FBC;

  return sub_1D89CFF30(a1, v1 + v5, v7, v9, v10);
}

uint64_t sub_1D89D2880(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D886553C;

  return sub_1D89D22A0(a1, a2, v6, v7, v9, v8);
}

unint64_t sub_1D89D295C()
{
  result = qword_1ECA66EC0;
  if (!qword_1ECA66EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66EC0);
  }

  return result;
}

unint64_t sub_1D89D29B4()
{
  result = qword_1ECA66EC8;
  if (!qword_1ECA66EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66EC8);
  }

  return result;
}

uint64_t sub_1D89D2A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D89D2A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D89D2ADC()
{
  result = sub_1D8B153D0();
  if (v1 <= 0x3F)
  {
    result = sub_1D8B15340();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D89D2B74()
{
  result = qword_1ECA66ED0;
  if (!qword_1ECA66ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66ED0);
  }

  return result;
}

unint64_t sub_1D89D2BCC()
{
  result = qword_1ECA66ED8;
  if (!qword_1ECA66ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66ED8);
  }

  return result;
}

unint64_t sub_1D89D2C24()
{
  result = qword_1ECA66EE0;
  if (!qword_1ECA66EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66EE0);
  }

  return result;
}

uint64_t sub_1D89D2C78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D8B45640 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D8B46950 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D8B46970 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B46990 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B469B0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D89D2F10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D89D165C(a1, v4, v5, v6);
}

uint64_t sub_1D89D2FDC(uint64_t a1)
{
  v4 = *(sub_1D8B16880() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D89D237C(a1, v7, v8, v1 + v5, (v1 + v6));
}

uint64_t sub_1D89D310C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D89D3154()
{
  result = qword_1ECA66EF8;
  if (!qword_1ECA66EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66EF8);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D89D31E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D89D1FF4(a1, v4, v5, v6);
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_1D8B16880();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D89D3384(uint64_t a1)
{
  v4 = *(sub_1D8B16880() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D89D21F4(a1, v7, v8, v1 + v5, (v1 + v6));
}

uint64_t sub_1D89D34B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v6 = sub_1D8B16870();
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[5] = a2;
  v3[6] = a3;

  return MEMORY[0x1EEE6DFA0](sub_1D89D1BFC, 0, 0);
}

uint64_t static Timeout.perform<A, B>(within:on:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D89D35C0, 0, 0);
}

{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D89D4A44, 0, 0);
}

uint64_t sub_1D89D35C0()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = vextq_s8(v4, v4, 8uLL);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1D89D36C0;
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v7, v6, v6, 0, 0, &unk_1D8B31330, v2, v6);
}

uint64_t sub_1D89D36C0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D89D37FC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D89D37FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TimeoutError.hashValue.getter()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](0);
  return sub_1D8B16D80();
}

uint64_t sub_1D89D38D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_1D8B16470();
  v8[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[12] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[13] = v11;
  v8[14] = *(v11 + 64);
  v8[15] = swift_task_alloc();
  v12 = *(a8 - 8);
  v8[16] = v12;
  v8[17] = *(v12 + 64);
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89D3A90, 0, 0);
}

uint64_t sub_1D89D3A90()
{
  v1 = v0[19];
  v22 = v0[18];
  v25 = v0[17];
  v19 = v0[16];
  v24 = v0[15];
  v23 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v15 = v4;
  v20 = v0[7];
  v21 = v0[13];
  v5 = v0[5];
  v18 = v0[6];
  v16 = v0[4];
  v6 = sub_1D8B15EA0();
  v14 = *(*(v6 - 8) + 56);
  v14(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;
  v7[6] = v3;
  v7[7] = v16;
  v7[8] = v5;

  v0[20] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66940);
  v17 = sub_1D8B15FC0();
  sub_1D89D4288(v1, &unk_1D8B31468, v7);
  sub_1D889349C(v1);
  v14(v1, 1, 1, v6);
  (*(v19 + 16))(v22, v18, v2);
  (*(v21 + 16))(v24, v20, v23);
  v8 = (*(v19 + 80) + 56) & ~*(v19 + 80);
  v9 = (v25 + *(v21 + 80) + v8) & ~*(v21 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v15;
  *(v10 + 5) = v2;
  *(v10 + 6) = v3;
  (*(v19 + 32))(&v10[v8], v22, v2);
  (*(v21 + 32))(&v10[v9], v24, v23);
  sub_1D89D4288(v1, &unk_1D8B31478, v10);
  sub_1D889349C(v1);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_1D89D3DB8;
  v12 = v0[11];

  return MEMORY[0x1EEE6DAC8](v12, 0, 0, v17);
}

uint64_t sub_1D89D3DB8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1D89D4014;
  }

  else
  {
    v2 = sub_1D89D3ECC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D89D3ECC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
    sub_1D8B15FB0();

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_1D89D4014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89D40A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D8864FBC;

  return sub_1D89D38D4(a1, a2, v8, v9, v10, v11, v6, v7);
}

uint64_t sub_1D89D4190(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D8864FBC;

  return v8(a1);
}

uint64_t sub_1D89D4288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1D889342C(a1, v18 - v8);
  v10 = sub_1D8B15EA0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D889349C(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1D8B15E00();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D8B15E90();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1D89D445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[6] = swift_getAssociatedTypeWitness();
  v9 = sub_1D8B16470();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89D45D8, 0, 0);
}

uint64_t sub_1D89D45D8()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v12 = v0[9];
  v4 = v0[6];
  sub_1D8B16C40();
  swift_getAssociatedConformanceWitness();
  sub_1D8B16890();
  v5 = *(v3 + 8);
  v0[14] = v5;
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  (*(*(v4 - 8) + 56))(v12, 1, 1, v4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1D89D475C;
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[4];
  v10 = v0[5];

  return MEMORY[0x1EEE6DE58](v7, v8, v9, v10);
}

uint64_t sub_1D89D475C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D89D4988;
  }

  else
  {
    v5 = sub_1D89D48CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D89D48CC()
{
  sub_1D89D3154();
  swift_allocError();
  swift_willThrow();
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89D4988()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89D4A44()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = vextq_s8(v4, v4, 8uLL);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1D89D4B44;
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v7, v6, v6, 0, 0, &unk_1D8B31348, v2, v6);
}

uint64_t sub_1D89D4B44()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D89D5FC8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D89D4C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_1D8B16470();
  v8[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[12] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[13] = v11;
  v8[14] = *(v11 + 64);
  v8[15] = swift_task_alloc();
  v12 = *(a8 - 8);
  v8[16] = v12;
  v8[17] = *(v12 + 64);
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89D4E3C, 0, 0);
}

uint64_t sub_1D89D4E3C()
{
  v1 = v0[19];
  v22 = v0[18];
  v25 = v0[17];
  v19 = v0[16];
  v24 = v0[15];
  v23 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v15 = v4;
  v20 = v0[7];
  v21 = v0[13];
  v5 = v0[5];
  v18 = v0[6];
  v16 = v0[4];
  v6 = sub_1D8B15EA0();
  v14 = *(*(v6 - 8) + 56);
  v14(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;
  v7[6] = v3;
  v7[7] = v16;
  v7[8] = v5;

  v0[20] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66940);
  v17 = sub_1D8B15FC0();
  sub_1D89D4288(v1, &unk_1D8B31440, v7);
  sub_1D889349C(v1);
  v14(v1, 1, 1, v6);
  (*(v19 + 16))(v22, v18, v2);
  (*(v21 + 16))(v24, v20, v23);
  v8 = (*(v19 + 80) + 56) & ~*(v19 + 80);
  v9 = (v25 + *(v21 + 80) + v8) & ~*(v21 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v15;
  *(v10 + 5) = v2;
  *(v10 + 6) = v3;
  (*(v19 + 32))(&v10[v8], v22, v2);
  (*(v21 + 32))(&v10[v9], v24, v23);
  sub_1D89D4288(v1, &unk_1D8B31458, v10);
  sub_1D889349C(v1);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_1D89D5164;
  v12 = v0[11];

  return MEMORY[0x1EEE6DAC8](v12, 0, 0, v17);
}

uint64_t sub_1D89D5164()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1D89D5FC0;
  }

  else
  {
    v2 = sub_1D89D5FC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D89D5278(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D886553C;

  return sub_1D89D4C80(a1, a2, v8, v9, v10, v11, v6, v7);
}

unint64_t sub_1D89D536C()
{
  result = qword_1ECA66F18;
  if (!qword_1ECA66F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F18);
  }

  return result;
}

uint64_t sub_1D89D53E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D88B7C48;

  return v8(a1);
}

uint64_t sub_1D89D54D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D89D53E0(a1, v4, v5, v6);
}

uint64_t sub_1D89D55B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[6] = swift_getAssociatedTypeWitness();
  v9 = sub_1D8B16470();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89D5730, 0, 0);
}

uint64_t sub_1D89D5730()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v12 = v0[9];
  v4 = v0[6];
  sub_1D8B16C40();
  swift_getAssociatedConformanceWitness();
  sub_1D8B16890();
  v5 = *(v3 + 8);
  v0[14] = v5;
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  (*(*(v4 - 8) + 56))(v12, 1, 1, v4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1D89D58B4;
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[4];
  v10 = v0[5];

  return MEMORY[0x1EEE6DE58](v7, v8, v9, v10);
}

uint64_t sub_1D89D58B4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D89D5FB8;
  }

  else
  {
    v5 = sub_1D89D5FBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D89D5A24(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v8 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v9 = v8 + *(*(v5 - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D886553C;

  return sub_1D89D55B4(a1, v12, v13, v1 + v8, v1 + v11, v6, v5, v7);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D89D5BE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D89D4190(a1, v4, v5, v6);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D89D5E34(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v8 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v9 = v8 + *(*(v5 - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D886553C;

  return sub_1D89D445C(a1, v12, v13, v1 + v8, v1 + v11, v6, v5, v7);
}

uint64_t UserDefaultsUtility.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1D8B13550();
  return v0;
}

void (*sub_1D89D6080(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_1D8B15940();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_1D89D6138;
}

void sub_1D89D615C(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D89D61EC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  [v2 setBool:v1 forKey:v3];
}

id sub_1D89D6288()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8B15940();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1D89D6314(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  [v2 setBool:a1 & 1 forKey:v3];
}

void (*sub_1D89D63B0(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_1D8B15940();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_1D89D6460;
}

void sub_1D89D6460(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = [*a1 standardUserDefaults];
  v2 = sub_1D8B15940();
  [v3 setBool:v1 forKey:v2];
}

void sub_1D89D64F8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  [v2 setBool:v1 forKey:v3];
}

void sub_1D89D6598(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  [v2 setBool:a1 & 1 forKey:v3];
}

void sub_1D89D667C(unsigned __int8 *a1)
{
  v1 = *a1;
  v3 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1D8B15940();
  [v3 setBool:v1 forKey:v2];
}

void (*sub_1D89D6720(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = objc_opt_self();
  a1[2] = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_1D8B15940();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    v6 = sub_1D8B15970();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_1D89D67FC;
}

void sub_1D89D67FC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {

    v7 = [v3 standardUserDefaults];
    if (v2)
    {
      v4 = sub_1D8B15940();
    }

    else
    {
      v4 = 0;
    }

    v6 = sub_1D8B15940();
    [v7 setObject:v4 forKey:v6];
  }

  else
  {
    v7 = [*(a1 + 16) standardUserDefaults];
    if (v2)
    {
      v5 = sub_1D8B15940();
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_1D8B15940();
    [v7 setObject:v5 forKey:v6];
  }

  swift_unknownObjectRelease();
}

void sub_1D89D6958(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D89D69E8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  [v2 setBool:v1 forKey:v3];
}

id sub_1D89D6A84()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8B15940();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1D89D6B10(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  [v2 setBool:a1 & 1 forKey:v3];
}

void (*sub_1D89D6BAC(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_1D8B15940();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_1D89D6C5C;
}

void sub_1D89D6C5C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = [*a1 standardUserDefaults];
  v2 = sub_1D8B15940();
  [v3 setBool:v1 forKey:v2];
}

void (*sub_1D89D6D3C(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_1D8B15940();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_1D89D6DF4;
}

void (*sub_1D89D6E60(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_1D8B15940();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_1D89D6F18;
}

void sub_1D89D6F3C(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D89D6FC4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  [v2 setBool:v1 forKey:v3];
}

id sub_1D89D7084()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8B15940();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1D89D712C(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  [v2 setBool:a1 & 1 forKey:v3];
}

void (*sub_1D89D71C8(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_1D8B15940();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_1D89D7280;
}

void sub_1D89D72A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = [*a1 standardUserDefaults];
  v2 = sub_1D8B15940();
  [v3 setBool:v1 forKey:v2];
}

uint64_t sub_1D89D733C@<X0>(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1D8B16540();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    result = sub_1D895E2F0(v10);
    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (v7 >= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

LABEL_11:
  *a1 = v6;
  return result;
}

void sub_1D89D749C()
{
  v2 = [objc_opt_self() standardUserDefaults];
  v0 = sub_1D8B160A0();
  v1 = sub_1D8B15940();
  [v2 setObject:v0 forKey:v1 inDomain:*MEMORY[0x1E696A400]];
}

uint64_t sub_1D89D7554@<X0>(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D8B15940();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1D8B16540();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    result = sub_1D895E2F0(v10);
    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (v7 >= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

LABEL_11:
  *a1 = v6;
  return result;
}

void sub_1D89D76B4()
{
  v2 = [objc_opt_self() standardUserDefaults];
  v0 = sub_1D8B160A0();
  v1 = sub_1D8B15940();
  [v2 setObject:v0 forKey:v1 inDomain:*MEMORY[0x1E696A400]];
}

void sub_1D89D776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ConfigStorage.hasOnboardedImageSearch.setter(0, a2, a3);
  ConfigStorage.hasOnboardedACME.setter(0, a2, a3);
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = sub_1D8B15940();
  [v6 setBool:0 forKey:v7];

  v8 = [v5 standardUserDefaults];
  v9 = sub_1D8B15940();
  [v8 setBool:0 forKey:v9];
}

uint64_t sub_1D89D7898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (ConfigStorage.hasOnboardedImageSearch.getter(a2, a3))
  {
    return 1;
  }

  if (ConfigStorage.hasOnboardedACME.getter(a2, a3))
  {
    return 1;
  }

  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = sub_1D8B15940();
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    return 1;
  }

  v10 = [v5 standardUserDefaults];
  v11 = sub_1D8B15940();
  v12 = [v10 BOOLForKey_];

  return v12;
}

void sub_1D89D79C4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8B15940();
  [v0 setBool:0 forKey:v1];
}

uint64_t UserDefaultsUtility.deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore19UserDefaultsUtility___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t UserDefaultsUtility.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore19UserDefaultsUtility___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D89D7B58()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8B15940();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D8B16540();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D895E2F0(v7);
  }

  return 1;
}

uint64_t sub_1D89D7C60()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8B15940();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D8B15970();

  return v3;
}

void sub_1D89D7D1C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (a2)
  {
    v4 = sub_1D8B15940();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1D8B15940();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

void sub_1D89D7DF0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8B160A0();
  v2 = sub_1D8B15940();
  [v0 setObject:v1 forKey:v2 inDomain:*MEMORY[0x1E696A400]];
}

void sub_1D89D7EA8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8B160A0();
  v2 = sub_1D8B15940();
  [v0 setObject:v1 forKey:v2 inDomain:*MEMORY[0x1E696A400]];
}

uint64_t type metadata accessor for UserDefaultsUtility()
{
  result = qword_1EE0E5A58;
  if (!qword_1EE0E5A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D89D7FC8()
{
  result = sub_1D8B13560();
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

uint64_t sub_1D89D8590()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F28);
  v0 = sub_1D8B14510();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB80;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69C9BC0], v0);
  v6(v5 + v2, *MEMORY[0x1E69C9BB8], v0);
  v7 = sub_1D8A565E0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1ECA66F20 = v7;
  return result;
}

uint64_t sub_1D89D86D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v82 - v6;
  *&v91 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult());
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CVTrackSnapshot(0);
  v92 = *(v13 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 88);
  if (qword_1EE0E6008 != -1)
  {
    result = swift_once();
  }

  if (byte_1EE0ED6C0 != 1)
  {
    *a3 = 0xD000000000000010;
    *(a3 + 8) = 0x80000001D8B46B90;
    *(a3 + 16) = 0;
    return result;
  }

  if (!v18)
  {
    goto LABEL_7;
  }

  if (qword_1EE0E54C0 != -1)
  {
LABEL_107:
    swift_once();
  }

  v20 = qword_1EE0E54C8;
  result = sub_1D8B0ABB8();
  if (result)
  {
LABEL_7:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_101;
  }

  v85 = v20;
  result = sub_1D89D94A8(v93);
  if ((result & 1) == 0)
  {
    goto LABEL_97;
  }

  if (*(v19 + 16))
  {
    result = sub_1D881F7DC(0);
    if ((v21 & 1) != 0 && *(*(v19 + 56) + result) != 2)
    {
      goto LABEL_99;
    }

    if (*(v19 + 16))
    {
      result = sub_1D881F7DC(5);
      if ((v22 & 1) != 0 && *(*(v19 + 56) + result) != 2)
      {
        goto LABEL_99;
      }
    }
  }

  v23 = CVBundle.textDetectorResults.getter()[2];

  if (!v23)
  {
LABEL_97:
    v77 = xmmword_1D8B26630;
LABEL_100:
    *a3 = v77;
LABEL_101:
    v78 = 2;
LABEL_102:
    *(a3 + 16) = v78;
    return result;
  }

  v24 = sub_1D891A6E8();
  v89 = *(v24 + 16);
  if (!v89)
  {
LABEL_98:

LABEL_99:
    v77 = xmmword_1D8B26640;
    goto LABEL_100;
  }

  v25 = 0;
  v19 = v92;
  v88 = v24 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v87 = *(v13 + 20);
  v10 += 7;
  v13 = v24;
  v86 = v10;
  v83 = v24;
  while (1)
  {
    if (v25 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_107;
    }

    sub_1D89DD4B0(v88 + *(v19 + 72) * v25++, v16, type metadata accessor for CVTrackSnapshot);
    switch(*&v16[v87] >> 60)
    {
      case 1:
        *&v39 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
        v27 = swift_projectBox();
        v101 = *&v39;
        v10 = v86;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v29 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_34;
      case 2:
        v27 = swift_projectBox();
        v101 = *&v9;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v29 = type metadata accessor for MetaDetectionResult;
        goto LABEL_34;
      case 3:
      case 8:
        *&v26 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
        v27 = swift_projectBox();
        v101 = *&v26;
        v10 = v86;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v29 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_34;
      case 4:
        *&v40 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
        v27 = swift_projectBox();
        v101 = *&v40;
        v10 = v86;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64238, type metadata accessor for ParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v29 = type metadata accessor for ParseDetectorResult;
        goto LABEL_34;
      case 5:
        *&v41 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
        v27 = swift_projectBox();
        v101 = *&v41;
        v10 = v86;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v29 = type metadata accessor for TextDetectorResult;
        goto LABEL_34;
      case 6:
      case 7:
        *&v30 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
        v27 = swift_projectBox();
        v101 = *&v30;
        v10 = v86;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v29 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_34;
      case 9:
      case 0xALL:
        v31 = swift_projectBox();
        v32 = v90;
        sub_1D89DD4B0(v31, v90, type metadata accessor for AFMResult);
        v101 = *&v91;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E3F80, type metadata accessor for AFMResult));
        v33 = __swift_allocate_boxed_opaque_existential_1(&v98);
        sub_1D89DD518(v32, v33, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        *&v34 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult());
        v27 = swift_projectBox();
        v101 = *&v34;
        v10 = v86;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v29 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_34;
      case 0xCLL:
        *&v35 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
        v27 = swift_projectBox();
        v101 = *&v35;
        v10 = v86;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v29 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_34;
      case 0xDLL:
        *&v42 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
        v27 = swift_projectBox();
        v101 = *&v42;
        v10 = v86;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v29 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_34:
        sub_1D89DD4B0(v27, boxed_opaque_existential_1, v29);
        break;
      default:
        *&v36 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750));
        v37 = swift_projectBox();
        v101 = *&v36;
        v10 = v86;
        v102 = COERCE_DOUBLE(sub_1D8906184());
        v38 = __swift_allocate_boxed_opaque_existential_1(&v98);
        sub_1D894733C(v37, v38);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v43 = swift_dynamicCast();
    v44 = *v10;
    if ((v43 & 1) == 0)
    {
      v44(v7, 1, 1, v9);
      sub_1D87A14E4(v7, &qword_1ECA64BB8);
      goto LABEL_20;
    }

    v44(v7, 0, 1, v9);
    sub_1D89DD518(v7, v12, type metadata accessor for MetaDetectionResult);
    if (*v12 != 9)
    {
      goto LABEL_96;
    }

    v45 = *&v12[v9[8]];
    if (v45 != v17)
    {
      goto LABEL_96;
    }

    v84 = v9[9];
    if (v12[v84] == 2 && v17 - v45 > 0.0001)
    {
      goto LABEL_96;
    }

    CVBundle.latestEstimate.getter(&v106);
    v97 = v106;
    CVDetection.detection.getter(v94);
    v46 = v95;
    v47 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v48 = *(v47 + 64);
    v49 = v46;
    v10 = v86;
    v50 = v47;
    v19 = v92;
    v48(&v98, v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v94);
    v13 = v83;

    v51 = v98;
    v52 = v99;
    if (v100 >= v98)
    {
      v53 = v98;
    }

    else
    {
      v53 = v100;
    }

    if (v102 < v53)
    {
      v53 = v102;
    }

    if (v104 < v53)
    {
      v53 = v104;
    }

    if (v101 >= v99)
    {
      v54 = v99;
    }

    else
    {
      v54 = v101;
    }

    if (v103 < v54)
    {
      v54 = v103;
    }

    if (v105 < v54)
    {
      v54 = v105;
    }

    if (v98 <= v100)
    {
      v51 = v100;
    }

    if (v51 <= v102)
    {
      v51 = v102;
    }

    if (v51 <= v104)
    {
      v51 = v104;
    }

    if (v99 <= v101)
    {
      v52 = v101;
    }

    if (v52 <= v103)
    {
      v52 = v103;
    }

    if (v52 <= v105)
    {
      v52 = v105;
    }

    v55 = v51 - v53;
    v56 = v52 - v54;
    v109.origin.x = 0.0;
    v109.origin.y = 0.0;
    v109.size.width = 1.0;
    v109.size.height = 1.0;
    v107 = CGRectIntersection(*&v53, v109);
    x = v107.origin.x;
    y = v107.origin.y;
    width = v107.size.width;
    height = v107.size.height;
    v61 = &v12[v9[5]];
    v62 = *v61;
    v63 = v61[1];
    v64 = v61[2];
    v65 = v61[3];
    v66 = v61[4];
    v67 = v61[5];
    v68 = v61[6];
    v69 = v61[7];
    if (v64 >= *v61)
    {
      v70 = *v61;
    }

    else
    {
      v70 = v61[2];
    }

    if (v66 < v70)
    {
      v70 = v61[4];
    }

    if (v68 < v70)
    {
      v70 = v61[6];
    }

    if (v65 >= v63)
    {
      v71 = v61[1];
    }

    else
    {
      v71 = v61[3];
    }

    if (v67 < v71)
    {
      v71 = v61[5];
    }

    if (v69 < v71)
    {
      v71 = v61[7];
    }

    if (v62 <= v64)
    {
      v62 = v61[2];
    }

    if (v62 <= v66)
    {
      v62 = v61[4];
    }

    if (v62 <= v68)
    {
      v62 = v61[6];
    }

    if (v63 <= v65)
    {
      v63 = v61[3];
    }

    if (v63 <= v67)
    {
      v63 = v61[5];
    }

    if (v63 <= v69)
    {
      v63 = v61[7];
    }

    v72 = v62 - v70;
    v73 = v63 - v71;
    v74 = width;
    v75 = height;
    v108 = CGRectIntersection(*&v70, *&x);
    if (width * height * 0.9 > v108.size.width * v108.size.height)
    {
LABEL_96:
      sub_1D89DD580(v12, type metadata accessor for MetaDetectionResult);
      goto LABEL_20;
    }

    v76 = v12[v84];
    if (v76 == 3)
    {
      break;
    }

    sub_1D89DD580(v12, type metadata accessor for MetaDetectionResult);
    if (v76 == 2)
    {

LABEL_105:
      result = sub_1D89DD580(v16, type metadata accessor for CVTrackSnapshot);
      *a3 = 0;
      *(a3 + 8) = 0;
      v78 = -1;
      goto LABEL_102;
    }

LABEL_20:
    sub_1D89DD580(v16, type metadata accessor for CVTrackSnapshot);
    if (v89 == v25)
    {
      goto LABEL_98;
    }
  }

  if ((sub_1D8B0AAA4() & 1) == 0)
  {

    sub_1D89DD580(v12, type metadata accessor for MetaDetectionResult);
    goto LABEL_105;
  }

  v98 = 0.0;
  v99 = -2.68156159e154;
  sub_1D8B16720();

  v98 = -2.31584178e77;
  v99 = COERCE_DOUBLE(0x80000001D8B43D60);
  v79 = &v12[v9[10]];
  if (v79[1])
  {
    v80 = *v79;
    v81 = v79[1];
  }

  else
  {
    v81 = 0xEF6E65766967206ELL;
    v80 = 0x6F73616572206F6ELL;
  }

  MEMORY[0x1DA71EFA0](v80, v81);

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

BOOL sub_1D89D94A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24[-v6];
  v8 = type metadata accessor for CVTrackSnapshot(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CVBundle.BundleType(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24[-v16];
  sub_1D89DD4B0(a1, &v24[-v16], type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D89DD580(v17, type metadata accessor for CVBundle.BundleType);
    sub_1D89DD4B0(a1, v15, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 56))(v5, 1, 1, v8);
      v19 = sub_1D8B13240();
      (*(*(v19 - 8) + 8))(v15, v19);
    }

    else
    {
      sub_1D89DD518(v15, v5, type metadata accessor for CVTrackSnapshot);
      (*(v9 + 56))(v5, 0, 1, v8);
    }

    sub_1D8901800(v5, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1D87A14E4(v7, &qword_1ECA63E20);
      return 0;
    }

    sub_1D89DD518(v7, v11, type metadata accessor for CVTrackSnapshot);
    if (v11[*(v8 + 40)] == 2)
    {
      if (CVBundle.isFullScreenBundle.getter())
      {
        goto LABEL_10;
      }

      CVBundle.latestEstimate.getter(&v27);
      v26 = v27;
      CVDetection.detectionType.getter(&v25);

      if (!v25)
      {
        v23 = *(CVBundle.textDetections.getter() + 2);

        if (v23)
        {
          sub_1D89DD580(v11, type metadata accessor for CVTrackSnapshot);
          return 1;
        }

LABEL_10:
        v20 = sub_1D891AC38();
        sub_1D89DD580(v11, type metadata accessor for CVTrackSnapshot);
        v21 = *(v20 + 16);

        return v21 != 0;
      }
    }

    sub_1D89DD580(v11, type metadata accessor for CVTrackSnapshot);
    return 0;
  }

  v18 = sub_1D8B13240();
  (*(*(v18 - 8) + 8))(v17, v18);
  return 0;
}

uint64_t sub_1D89D98F8(uint64_t a1, _OWORD *a2)
{
  v110 = a1;
  v107 = type metadata accessor for DetectionRequest.Originator(0);
  v3 = MEMORY[0x1EEE9AC00](v107);
  v105 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v106 = &v99 - v5;
  v6 = type metadata accessor for DetectionRequest(0);
  v7 = *(v6 - 8);
  v102 = v6;
  v103 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v101 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v99 - v10;
  v109 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v99 - v13;
  *&v113 = type metadata accessor for TextDetectorResult(0);
  v111 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v99 - v23;
  v25 = type metadata accessor for CVTrackSnapshot(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2[3];
  v124 = a2[2];
  v125 = v29;
  v126 = a2[4];
  v30 = a2[1];
  v123[0] = *a2;
  v123[1] = v30;
  if (BYTE8(v124))
  {
    if (qword_1EE0E6008 != -1)
    {
      goto LABEL_56;
    }

    while (byte_1EE0ED6C0 == 1)
    {
      v99 = v28;
      v31 = v110;
      v32 = sub_1D89D94A8(v110);
      v33 = MEMORY[0x1E69E7CD0];
      if (!v32)
      {
        return v33;
      }

      v34 = CVBundle.textDetectorResults.getter()[2];

      if (!v34)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D8B1AB90;
        *(inited + 32) = 5;
        v37 = sub_1D893EA58(&unk_1F5426C78);
        v38 = 1.0;
        if (*(v37 + 16))
        {
          v39 = sub_1D881F7DC(5);
          if (v40)
          {
            v38 = *(*(v37 + 56) + 8 * v39);
          }
        }

        *(inited + 40) = v38;
        v41 = sub_1D893EA58(inited);
        swift_setDeallocating();
        v42 = sub_1D89E0D74(v110, v123, v41);

        return v42;
      }

      sub_1D89DD4B0(v31, v18, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v26 + 56))(v22, 1, 1, v25);
        v35 = sub_1D8B13240();
        (*(*(v35 - 8) + 8))(v18, v35);
      }

      else
      {
        sub_1D89DD518(v18, v22, type metadata accessor for CVTrackSnapshot);
        (*(v26 + 56))(v22, 0, 1, v25);
      }

      sub_1D8901800(v22, v24);
      if ((*(v26 + 48))(v24, 1, v25) == 1)
      {
        sub_1D87A14E4(v24, &qword_1ECA63E20);
        return MEMORY[0x1E69E7CD0];
      }

      sub_1D89DD518(v24, v99, type metadata accessor for CVTrackSnapshot);
      v44 = sub_1D891F590(*&v124);
      v26 = v44;
      if (*(v44 + 2))
      {
        v45 = *(v44 + 2);
        v25 = 0;
        v100 = v44 + 32;
        v22 = (v111 + 56);
        v24 = (v111 + 48);
        v46 = MEMORY[0x1E69E7CC0];
        while (v25 < *(v26 + 16))
        {
          v47 = *&v100[8 * v25++];
          switch(v47 >> 60)
          {
            case 1uLL:
              v62 = type metadata accessor for GroundedParseDetectorResult(0);
              v49 = swift_projectBox();
              v115 = v62;
              v116 = sub_1D8947474(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
              v51 = type metadata accessor for GroundedParseDetectorResult;
              goto LABEL_33;
            case 2uLL:
              v57 = type metadata accessor for MetaDetectionResult();
              v49 = swift_projectBox();
              v115 = v57;
              v116 = sub_1D8947474(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
              v51 = type metadata accessor for MetaDetectionResult;
              goto LABEL_33;
            case 3uLL:
            case 8uLL:
              v48 = type metadata accessor for ObjectDetectorResult(0);
              v49 = swift_projectBox();
              v115 = v48;
              v116 = sub_1D8947474(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
              v51 = type metadata accessor for ObjectDetectorResult;
              goto LABEL_33;
            case 4uLL:
              v63 = type metadata accessor for ParseDetectorResult(0);
              v49 = swift_projectBox();
              v115 = v63;
              v116 = sub_1D8947474(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
              v51 = type metadata accessor for ParseDetectorResult;
              goto LABEL_33;
            case 5uLL:
              v49 = swift_projectBox();
              v115 = v113;
              v116 = sub_1D8947474(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
              v51 = type metadata accessor for TextDetectorResult;
              goto LABEL_33;
            case 6uLL:
            case 7uLL:
              v52 = type metadata accessor for StreamingBarcodeDetectorResult(0);
              v49 = swift_projectBox();
              v115 = v52;
              v116 = sub_1D8947474(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
              v51 = type metadata accessor for StreamingBarcodeDetectorResult;
              goto LABEL_33;
            case 9uLL:
            case 0xAuLL:
              v53 = swift_projectBox();
              v54 = v108;
              sub_1D89DD4B0(v53, v108, type metadata accessor for AFMResult);
              v115 = v109;
              v116 = sub_1D8947474(&qword_1EE0E3F80, type metadata accessor for AFMResult);
              v55 = __swift_allocate_boxed_opaque_existential_1(v114);
              sub_1D89DD518(v54, v55, type metadata accessor for AFMResult);
              break;
            case 0xBuLL:
              v56 = type metadata accessor for SyntheticDetectionResult();
              v49 = swift_projectBox();
              v115 = v56;
              v116 = sub_1D8947474(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
              v51 = type metadata accessor for SyntheticDetectionResult;
              goto LABEL_33;
            case 0xCuLL:
              v58 = type metadata accessor for GroundedParseEmbeddingsResult(0);
              v49 = swift_projectBox();
              v115 = v58;
              v116 = sub_1D8947474(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
              v51 = type metadata accessor for GroundedParseEmbeddingsResult;
              goto LABEL_33;
            case 0xDuLL:
              v64 = type metadata accessor for GroundedParseClassificationsResult(0);
              v49 = swift_projectBox();
              v115 = v64;
              v116 = sub_1D8947474(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
              v51 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_33:
              sub_1D89DD4B0(v49, boxed_opaque_existential_1, v51);
              break;
            default:
              v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
              v60 = swift_projectBox();
              v115 = v59;
              v116 = sub_1D8906184();
              v61 = __swift_allocate_boxed_opaque_existential_1(v114);
              sub_1D894733C(v60, v61);
              break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
          v18 = v113;
          v65 = swift_dynamicCast();
          (*v22)(v14, v65 ^ 1u, 1, v18);
          if ((*v24)(v14, 1, v18) == 1)
          {
            sub_1D87A14E4(v14, &qword_1ECA64820);
            if (v45 == v25)
            {
              goto LABEL_42;
            }
          }

          else
          {
            sub_1D89DD518(v14, v112, type metadata accessor for TextDetectorResult);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_1D87C7EE0(0, v46[2] + 1, 1, v46);
            }

            v67 = v46[2];
            v66 = v46[3];
            v18 = (v67 + 1);
            if (v67 >= v66 >> 1)
            {
              v46 = sub_1D87C7EE0(v66 > 1, v67 + 1, 1, v46);
            }

            v46[2] = v18;
            sub_1D89DD518(v112, v46 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v67, type metadata accessor for TextDetectorResult);
            if (v45 == v25)
            {
              goto LABEL_42;
            }
          }
        }

        __break(1u);
      }

      else
      {
        v46 = MEMORY[0x1E69E7CC0];
LABEL_42:

        v122 = v46;

        sub_1D89DC06C(&v122);

        v68 = v122;
        v69 = sub_1D8B13240();
        v22 = v106;
        v26 = v99;
        (*(*(v69 - 8) + 16))(v106, v99, v69);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631F0);
        v70 = *(type metadata accessor for DetectionRequest.Annotation(0) - 8);
        v25 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v18 = swift_allocObject();
        v113 = xmmword_1D8B1AB90;
        *(v18 + 1) = xmmword_1D8B1AB90;
        *&v18[v25] = v68;
        swift_storeEnumTagMultiPayload();
        CVBundle.latestEstimate.getter(&v121);
        v120 = v121;
        CVDetection.detection.getter(v117);
        v71 = v118;
        v72 = v119;
        __swift_project_boxed_opaque_existential_1(v117, v118);
        (*(v72 + 64))(v114, v71, v72);
        __swift_destroy_boxed_opaque_existential_1(v117);
        Corners.bounds.getter();
        v74 = v73;
        v76 = v75;
        v78 = v77;
        v80 = v79;

        CVBundle.latestEstimate.getter(v117);
        v14 = v117[0];
        v120 = v117[0];
        CVDetection.detection.getter(v114);
        v81 = v115;
        v24 = v116;
        __swift_project_boxed_opaque_existential_1(v114, v115);
        v82 = (*(v24 + 11))(v81, v24);

        __swift_destroy_boxed_opaque_existential_1(v114);
        v83 = v105;
        sub_1D89DD4B0(v22, v105, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
LABEL_53:
          v90 = v101;
          v89 = v102;
          *v101 = 9;
          sub_1D89DD4B0(v22, &v90[v89[5]], type metadata accessor for DetectionRequest.Originator);
          v91 = sub_1D87C45EC(v18);
          swift_setDeallocating();
          sub_1D89DD580(&v18[v25], type metadata accessor for DetectionRequest.Annotation);
          swift_deallocClassInstance();
          sub_1D89DD580(v22, type metadata accessor for DetectionRequest.Originator);
          *&v90[v89[6]] = v91;
          v92 = &v90[v89[7]];
          *v92 = v74;
          v92[1] = v76;
          v92[2] = v78;
          v92[3] = v80;
          *&v90[v89[8]] = v82;
          v93 = v90;
          v94 = v104;
          sub_1D89DD518(v93, v104, type metadata accessor for DetectionRequest);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63240);
          v95 = (*(v103 + 80) + 32) & ~*(v103 + 80);
          v96 = swift_allocObject();
          *(v96 + 16) = v113;
          sub_1D89DD4B0(v94, v96 + v95, type metadata accessor for DetectionRequest);
          v97 = sub_1D87C498C(v96);
          swift_setDeallocating();
          sub_1D89DD580(v96 + v95, type metadata accessor for DetectionRequest);
          swift_deallocClassInstance();
          sub_1D89DD580(v94, type metadata accessor for DetectionRequest);
          sub_1D89DD580(v26, type metadata accessor for CVTrackSnapshot);
          return v97;
        }

        sub_1D89DD580(v83, type metadata accessor for DetectionRequest.Originator);
        v84 = 0;
        v85 = 1 << *(MEMORY[0x1E69E7CD0] + 32);
        v86 = -1;
        if (v85 < 64)
        {
          v86 = ~(-1 << v85);
        }

        v87 = v86 & *(MEMORY[0x1E69E7CD0] + 56);
        v28 = ((v85 + 63) >> 6);
        while (v87)
        {
LABEL_46:
          v87 &= v87 - 1;
        }

        while (1)
        {
          v88 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            break;
          }

          if (v88 >= v28)
          {

            v26 = v99;
            goto LABEL_53;
          }

          v87 = *(MEMORY[0x1E69E7CD0] + 8 * v88 + 56);
          ++v84;
          if (v87)
          {
            v84 = v88;
            goto LABEL_46;
          }
        }
      }

      __break(1u);
LABEL_56:
      v98 = v28;
      swift_once();
      v28 = v98;
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D89DAABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[45] = a2;
  v5[46] = a5;
  v5[44] = a1;
  v5[47] = type metadata accessor for BundleClassification.ClassificationType(0);
  v5[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB0);
  v5[49] = swift_task_alloc();
  v6 = sub_1D8B14510();
  v5[50] = v6;
  v5[51] = *(v6 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v7 = sub_1D8B145A0();
  v5[55] = v7;
  v5[56] = *(v7 - 8);
  v5[57] = swift_task_alloc();
  v8 = sub_1D8B14530();
  v5[58] = v8;
  v5[59] = *(v8 - 8);
  v5[60] = swift_task_alloc();
  v5[61] = type metadata accessor for AFMResult(0);
  v5[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89DACE8, 0, 0);
}

uint64_t sub_1D89DACE8()
{
  v111 = v0;
  CVBundle.latestEstimate.getter(&v108);
  v109 = v108;
  CVDetection.detection.getter((v0 + 112));
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 112), v1);
  v3 = (*(v2 + 88))(v1, v2);
  *(v0 + 504) = v3;

  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  v4 = sub_1D891A92C();
  if (!*(v4 + 2))
  {

LABEL_12:
    v30 = *(v0 + 368);
    *v30 = 1;
    *(v30 + 8) = 0xD000000000000012;
    *(v30 + 16) = 0x80000001D8B46B50;
    *(v30 + 24) = 0x80;
    *(v30 + 32) = v3;
    *(v0 + 152) = 1;
    *(v0 + 160) = 0xD000000000000012;
    *(v0 + 168) = 0x80000001D8B46B50;
    *(v0 + 176) = 0x80;
    *(v0 + 184) = v3;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();
LABEL_20:

    v37 = *(v0 + 8);
LABEL_21:

    return v37();
  }

  v5 = *(v4 + 4);

  if (v5 >> 60 != 9)
  {

    goto LABEL_12;
  }

  v7 = *(v0 + 488);
  v6 = *(v0 + 496);
  v9 = *(v0 + 448);
  v8 = *(v0 + 456);
  v10 = *(v0 + 440);
  v11 = swift_projectBox();
  sub_1D89DD4B0(v11, v6, type metadata accessor for AFMResult);

  v12 = *(v7 + 40);
  *(v0 + 108) = v12;
  v13 = *(v9 + 16);
  *(v0 + 512) = v13;
  *(v0 + 520) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v8, v6 + v12, v10);
  if ((*(v9 + 88))(v8, v10) != *MEMORY[0x1E69C9C00])
  {
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v31 = sub_1D8B151E0();
    __swift_project_value_buffer(v31, qword_1EE0E4398);
    v32 = sub_1D8B151C0();
    v33 = sub_1D8B16200();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8783000, v32, v33, "Rejecting classification: not vicc data", v34, 2u);
      MEMORY[0x1DA721330](v34, -1, -1);
    }

    v25 = *(v0 + 496);
    v35 = *(v0 + 368);

    *v35 = 0;
    *(v35 + 8) = xmmword_1D8B31510;
    *(v35 + 24) = 0x80;
    *(v35 + 32) = v3;
    *(v0 + 192) = 0;
    *(v0 + 200) = xmmword_1D8B31510;
    *(v0 + 216) = 0x80;
    *(v0 + 224) = v3;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();
    goto LABEL_18;
  }

  v15 = *(v0 + 472);
  v14 = *(v0 + 480);
  v17 = *(v0 + 456);
  v16 = *(v0 + 464);
  v18 = *(v0 + 400);
  v19 = *(v0 + 408);
  v20 = *(v0 + 392);
  (*(*(v0 + 448) + 96))(v17, *(v0 + 440));
  (*(v15 + 32))(v14, v17, v16);
  sub_1D8B14520();
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    sub_1D87A14E4(*(v0 + 392), &qword_1ECA64BB0);
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v21 = sub_1D8B151E0();
    __swift_project_value_buffer(v21, qword_1EE0E4398);
    v22 = sub_1D8B151C0();
    v23 = sub_1D8B16200();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D8783000, v22, v23, "Rejecting classification: no category", v24, 2u);
      MEMORY[0x1DA721330](v24, -1, -1);
    }

    v25 = *(v0 + 496);
    v27 = *(v0 + 472);
    v26 = *(v0 + 480);
    v28 = *(v0 + 464);
    v29 = *(v0 + 368);

    *v29 = 0;
    *(v29 + 8) = xmmword_1D8B31520;
    *(v29 + 24) = 0x80;
    *(v29 + 32) = v3;
    *(v0 + 232) = 0;
    *(v0 + 240) = xmmword_1D8B31520;
    *(v0 + 256) = 0x80;
    *(v0 + 264) = v3;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();
    (*(v27 + 8))(v26, v28);
LABEL_18:
    v36 = v25;
LABEL_19:
    sub_1D89DD580(v36, type metadata accessor for AFMResult);
    goto LABEL_20;
  }

  (*(*(v0 + 408) + 32))(*(v0 + 432), *(v0 + 392), *(v0 + 400));
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if ((sub_1D8B0AAA4() & 1) == 0)
  {
    if (qword_1ECA62258 != -1)
    {
      swift_once();
    }

    if (sub_1D89A5C3C(*(v0 + 432), qword_1ECA66F20))
    {
      v61 = *(v0 + 512);
      v62 = *(v0 + 108);
      v63 = *(v0 + 504);
      v64 = *(v0 + 496);
      v66 = *(v0 + 472);
      v65 = *(v0 + 480);
      v67 = *(v0 + 464);
      v68 = *(v0 + 440);
      v69 = *(v0 + 352);
      (*(*(v0 + 408) + 8))();
      (*(v66 + 8))(v65, v67);
      v61(v69, v64 + v62, v68);
      sub_1D89DD580(v64, type metadata accessor for AFMResult);
      swift_storeEnumTagMultiPayload();
      v70 = type metadata accessor for BundleClassification(0);
      v71 = v69 + *(v70 + 20);
      *v71 = 2;
      *(v71 + 8) = 0u;
      *(v71 + 24) = 0u;
      sub_1D88E0FE4(2, 0, 0, 0);
      *v71 = 2;
      *(v71 + 8) = 0u;
      *(v71 + 24) = 0u;
      *(v69 + *(v70 + 24)) = v63;

      v37 = *(v0 + 8);
      goto LABEL_21;
    }

    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v72 = *(v0 + 432);
    v74 = *(v0 + 408);
    v73 = *(v0 + 416);
    v75 = *(v0 + 400);
    v76 = sub_1D8B151E0();
    __swift_project_value_buffer(v76, qword_1EE0E4398);
    v77 = *(v74 + 16);
    v77(v73, v72, v75);
    v78 = sub_1D8B151C0();
    v79 = sub_1D8B161F0();
    v105 = v77;
    if (os_log_type_enabled(v78, v79))
    {
      v80 = *(v0 + 416);
      v81 = *(v0 + 424);
      v83 = *(v0 + 400);
      v82 = *(v0 + 408);
      v84 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v109 = v103;
      *v84 = 136315138;
      v77(v81, v80, v83);
      v85 = sub_1D8B159E0();
      v87 = v86;
      v106 = *(v82 + 8);
      v106(v80, v83);
      v88 = sub_1D89AC714(v85, v87, &v109);

      *(v84 + 4) = v88;
      _os_log_impl(&dword_1D8783000, v78, v79, "Rejecting classification: category %s is disabled", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x1DA721330](v103, -1, -1);
      MEMORY[0x1DA721330](v84, -1, -1);
    }

    else
    {
      v90 = *(v0 + 408);
      v89 = *(v0 + 416);
      v91 = *(v0 + 400);

      v106 = *(v90 + 8);
      v106(v89, v91);
    }

    v92 = *(v0 + 504);
    v104 = *(v0 + 496);
    v94 = *(v0 + 472);
    v93 = *(v0 + 480);
    v95 = *(v0 + 464);
    v97 = *(v0 + 424);
    v96 = *(v0 + 432);
    v98 = *(v0 + 400);
    v99 = *(v0 + 368);
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_1D8B16720();

    v109 = 0xD000000000000012;
    v110 = 0x80000001D8B46B70;
    v105(v97, v96, v98);
    v100 = sub_1D8B159E0();
    MEMORY[0x1DA71EFA0](v100);

    v101 = v109;
    v102 = v110;
    *v99 = 0;
    *(v99 + 8) = v101;
    *(v99 + 16) = v102;
    *(v99 + 24) = 0;
    *(v99 + 32) = v92;
    *(v0 + 272) = 0;
    *(v0 + 280) = v101;
    *(v0 + 288) = v102;
    *(v0 + 296) = 0;
    *(v0 + 304) = v92;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();
    v106(v96, v98);
    (*(v94 + 8))(v93, v95);
    v36 = v104;
    goto LABEL_19;
  }

  v39 = *(v0 + 424);
  v40 = *(v0 + 432);
  v41 = *(v0 + 400);
  v42 = *(v0 + 408);
  CVBundle.latestEstimate.getter(&v107);
  v108 = v107;
  CVDetection.detection.getter((v0 + 312));
  v43 = *(v0 + 336);
  v44 = *(v0 + 344);
  __swift_project_boxed_opaque_existential_1((v0 + 312), v43);
  (*(v44 + 64))(&v109, v43, v44);
  __swift_destroy_boxed_opaque_existential_1(v0 + 312);
  Corners.bounds.getter();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  GenericRGB = CGColorCreateGenericRGB(1.0, 0.75, 0.8, 0.8);
  v109 = 0;
  v110 = 0xE000000000000000;
  sub_1D8B16720();

  v109 = 0x7461632043434956;
  v110 = 0xEF203A79726F6765;
  (*(v42 + 16))(v39, v40, v41);
  v54 = sub_1D8B159E0();
  MEMORY[0x1DA71EFA0](v54);

  v55 = v109;
  v56 = v110;
  LOBYTE(v109) = 1;
  *(v0 + 16) = v46;
  *(v0 + 24) = v48;
  *(v0 + 32) = v50;
  *(v0 + 40) = v52;
  *(v0 + 48) = 0x3F689374BC6A7EFALL;
  *(v0 + 56) = GenericRGB;
  *(v0 + 64) = v55;
  *(v0 + 72) = v56;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0;
  *(v0 + 104) = 1;
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v57 = *(v0 + 440);
  v58 = *(v0 + 448);
  v59 = *(v0 + 384);
  v60 = qword_1ECA675B0;
  *(v0 + 528) = qword_1ECA675B0;
  *v59 = 0x7974706D65;
  v59[1] = 0xE500000000000000;
  (*(v58 + 104))(v59, *MEMORY[0x1E69C9C08], v57);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D89DB950, v60, 0);
}

uint64_t sub_1D89DB950()
{
  v9 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v2;
  v8[0] = *(v0 + 80);
  *(v8 + 9) = *(v0 + 89);
  v3 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v3;
  v4 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v7, v4, v5);

  sub_1D89DD580(v1, type metadata accessor for BundleClassification.ClassificationType);

  return MEMORY[0x1EEE6DFA0](sub_1D89DBA30, 0, 0);
}

uint64_t sub_1D89DBA30()
{
  v51 = v0;
  sub_1D88E0F90(v0 + 16);
  if (qword_1ECA62258 != -1)
  {
    swift_once();
  }

  if (sub_1D89A5C3C(*(v0 + 432), qword_1ECA66F20))
  {
    v1 = *(v0 + 512);
    v2 = *(v0 + 108);
    v3 = *(v0 + 504);
    v4 = *(v0 + 496);
    v6 = *(v0 + 472);
    v5 = *(v0 + 480);
    v7 = *(v0 + 464);
    v8 = *(v0 + 440);
    v9 = *(v0 + 352);
    (*(*(v0 + 408) + 8))();
    (*(v6 + 8))(v5, v7);
    v1(v9, v4 + v2, v8);
    sub_1D89DD580(v4, type metadata accessor for AFMResult);
    swift_storeEnumTagMultiPayload();
    v10 = type metadata accessor for BundleClassification(0);
    v11 = v9 + *(v10 + 20);
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v9 + *(v10 + 24)) = v3;

    v12 = *(v0 + 8);
  }

  else
  {
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 432);
    v15 = *(v0 + 408);
    v14 = *(v0 + 416);
    v16 = *(v0 + 400);
    v17 = sub_1D8B151E0();
    __swift_project_value_buffer(v17, qword_1EE0E4398);
    v18 = *(v15 + 16);
    v18(v14, v13, v16);
    v19 = sub_1D8B151C0();
    v20 = sub_1D8B161F0();
    v47 = v18;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 416);
      v22 = *(v0 + 424);
      v24 = *(v0 + 400);
      v23 = *(v0 + 408);
      v25 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49 = v45;
      *v25 = 136315138;
      v18(v22, v21, v24);
      v26 = sub_1D8B159E0();
      v28 = v27;
      v48 = *(v23 + 8);
      v48(v21, v24);
      v29 = sub_1D89AC714(v26, v28, &v49);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1D8783000, v19, v20, "Rejecting classification: category %s is disabled", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1DA721330](v45, -1, -1);
      MEMORY[0x1DA721330](v25, -1, -1);
    }

    else
    {
      v31 = *(v0 + 408);
      v30 = *(v0 + 416);
      v32 = *(v0 + 400);

      v48 = *(v31 + 8);
      v48(v30, v32);
    }

    v33 = *(v0 + 504);
    v46 = *(v0 + 496);
    v35 = *(v0 + 472);
    v34 = *(v0 + 480);
    v36 = *(v0 + 464);
    v38 = *(v0 + 424);
    v37 = *(v0 + 432);
    v39 = *(v0 + 400);
    v40 = *(v0 + 368);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1D8B16720();

    v49 = 0xD000000000000012;
    v50 = 0x80000001D8B46B70;
    v47(v38, v37, v39);
    v41 = sub_1D8B159E0();
    MEMORY[0x1DA71EFA0](v41);

    v42 = v49;
    v43 = v50;
    *v40 = 0;
    *(v40 + 8) = v42;
    *(v40 + 16) = v43;
    *(v40 + 24) = 0;
    *(v40 + 32) = v33;
    *(v0 + 272) = 0;
    *(v0 + 280) = v42;
    *(v0 + 288) = v43;
    *(v0 + 296) = 0;
    *(v0 + 304) = v33;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();
    v48(v37, v39);
    (*(v35 + 8))(v34, v36);
    sub_1D89DD580(v46, type metadata accessor for AFMResult);

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_1D89DBF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D89DAABC(a1, a2, v8, v9, v5 + 16);
}

uint64_t sub_1D89DC06C(void **a1)
{
  v2 = *(type metadata accessor for TextDetectorResult(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D885D36C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D89DC114(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D89DC114(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8B16B30();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TextDetectorResult(0);
        v6 = sub_1D8B15D60();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TextDetectorResult(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D89DC4C4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D89DC240(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D89DC240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for TextDetectorResult(0);
  v8 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v36 = v17;
    v30 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v22;
    v33 = v21;
    while (1)
    {
      sub_1D89DD4B0(v22, v16, type metadata accessor for TextDetectorResult);
      sub_1D89DD4B0(v19, v12, type metadata accessor for TextDetectorResult);
      v23 = *(v38 + 48);
      if (*&v16[v23])
      {
        v24 = *&v16[v23 + 8];
      }

      else
      {
        v24 = 0;
      }

      v25 = &v12[v23];
      if (*v25)
      {
        v26 = *(v25 + 1);
      }

      else
      {
        v26 = 0;
      }

      sub_1D89DD580(v12, type metadata accessor for TextDetectorResult);
      result = sub_1D89DD580(v16, type metadata accessor for TextDetectorResult);
      if (v24 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v21 = v33 - 1;
        v22 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1D89DD518(v22, v37, type metadata accessor for TextDetectorResult);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D89DD518(v27, v19, type metadata accessor for TextDetectorResult);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D89DC4C4(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v128 = a1;
  v142 = type metadata accessor for TextDetectorResult(0);
  v136 = *(v142 - 8);
  v9 = MEMORY[0x1EEE9AC00](v142);
  v131 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v141 = &v124 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v144 = &v124 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v143 = &v124 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v140 = &v124 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v139 = &v124 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v124 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v127 = &v124 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v5 = *v128;
    if (!*v128)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_113:
      v145 = v28;
      v119 = *(v28 + 16);
      if (v119 >= 2)
      {
        while (*a3)
        {
          v120 = *(v28 + 16 * v119);
          v121 = v28;
          v122 = *(v28 + 16 * (v119 - 1) + 32);
          v28 = *(v28 + 16 * (v119 - 1) + 40);
          sub_1D89DCF24(*a3 + *(v136 + 72) * v120, *a3 + *(v136 + 72) * v122, *a3 + *(v136 + 72) * v28, v5);
          if (v6)
          {
          }

          if (v28 < v120)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_1D885CC68(v121);
          }

          if (v119 - 2 >= *(v121 + 2))
          {
            goto LABEL_137;
          }

          v123 = &v121[16 * v119];
          *v123 = v120;
          *(v123 + 1) = v28;
          v145 = v121;
          result = sub_1D885CBDC(v119 - 1);
          v28 = v145;
          v119 = *(v145 + 16);
          if (v119 <= 1)
          {
          }
        }

        goto LABEL_147;
      }
    }

LABEL_143:
    result = sub_1D885CC68(v28);
    v28 = result;
    goto LABEL_113;
  }

  v124 = a4;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v130 = a3;
  v125 = v23;
  while (1)
  {
    v29 = v27;
    v30 = (v27 + 1);
    v135 = v28;
    v129 = v27;
    if (v27 + 1 < v26)
    {
      v132 = v26;
      v31 = *a3;
      v32 = *(v136 + 72);
      v33 = v127;
      sub_1D89DD4B0(v31 + v32 * v30, v127, type metadata accessor for TextDetectorResult);
      v137 = v32;
      sub_1D89DD4B0(v31 + v32 * v29, v23, type metadata accessor for TextDetectorResult);
      v34 = *(v142 + 48);
      if (*(v33 + v34))
      {
        v134 = *(v33 + v34 + 8);
      }

      else
      {
        v134 = 0;
      }

      v35 = &v23[v34];
      v36 = *v35;
      v126 = v6;
      if (v36)
      {
        v133 = *(v35 + 1);
      }

      else
      {
        v133 = 0;
      }

      sub_1D89DD580(v23, type metadata accessor for TextDetectorResult);
      result = sub_1D89DD580(v127, type metadata accessor for TextDetectorResult);
      v37 = v29 + 2;
      v38 = v137 * (v29 + 2);
      v5 = v31 + v38;
      v39 = v137 * v30;
      v40 = v31 + v137 * v30;
      v41 = v142;
      do
      {
        v6 = v37;
        a3 = v30;
        v45 = v39;
        v46 = v38;
        if (v37 >= v132)
        {
          break;
        }

        v47 = v139;
        sub_1D89DD4B0(v5, v139, type metadata accessor for TextDetectorResult);
        sub_1D89DD4B0(v40, v140, type metadata accessor for TextDetectorResult);
        v48 = *(v41 + 48);
        v49 = *(v47 + v48);
        v138 = v30;
        v50 = v49 ? *(v47 + v48 + 8) : 0;
        v51 = v6;
        v52 = (v140 + v48);
        v42 = *v52 ? v52[1] : 0;
        v43 = v134 < v133;
        sub_1D89DD580(v140, type metadata accessor for TextDetectorResult);
        result = sub_1D89DD580(v139, type metadata accessor for TextDetectorResult);
        v44 = v43 ^ (v50 >= v42);
        v6 = v51;
        v37 = v51 + 1;
        a3 = v138;
        v5 += v137;
        v40 += v137;
        v30 = (v138 + 1);
        v39 = v45 + v137;
        v38 = v46 + v137;
        v28 = v135;
        v41 = v142;
      }

      while ((v44 & 1) != 0);
      if (v134 < v133)
      {
        v29 = v129;
        if (v6 < v129)
        {
          goto LABEL_140;
        }

        if (v129 >= v6)
        {
          v30 = v6;
          v23 = v125;
          v6 = v126;
          a3 = v130;
          goto LABEL_36;
        }

        v53 = v129;
        v54 = v129 * v137;
        do
        {
          if (v53 != a3)
          {
            v5 = *v130;
            if (!*v130)
            {
              goto LABEL_146;
            }

            v138 = (v5 + v54);
            sub_1D89DD518(v5 + v54, v131, type metadata accessor for TextDetectorResult);
            if (v54 < v45 || v138 >= v5 + v46)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1D89DD518(v131, v5 + v45, type metadata accessor for TextDetectorResult);
          }

          v53 = (v53 + 1);
          v45 -= v137;
          v46 -= v137;
          v54 += v137;
          v55 = v53 < a3;
          a3 = (a3 - 1);
        }

        while (v55);
      }

      v30 = v6;
      v23 = v125;
      v6 = v126;
      v29 = v129;
      a3 = v130;
    }

LABEL_36:
    v56 = a3[1];
    if (v30 < v56)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_139;
      }

      if (v30 - v29 < v124)
      {
        break;
      }
    }

LABEL_60:
    if (v30 < v29)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D87C7C5C(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v74 = *(v28 + 16);
    v73 = *(v28 + 24);
    v75 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      result = sub_1D87C7C5C((v73 > 1), v74 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v75;
    v76 = v28 + 16 * v74;
    *(v76 + 32) = v129;
    *(v76 + 40) = v30;
    v5 = *v128;
    if (!*v128)
    {
      goto LABEL_148;
    }

    v138 = v30;
    if (v74)
    {
      while (1)
      {
        v77 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v78 = *(v28 + 32);
          v79 = *(v28 + 40);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_80:
          if (v81)
          {
            goto LABEL_127;
          }

          v94 = (v28 + 16 * v75);
          v96 = *v94;
          v95 = v94[1];
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_130;
          }

          v100 = (v28 + 32 + 16 * v77);
          v102 = *v100;
          v101 = v100[1];
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_134;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v75 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v104 = (v28 + 16 * v75);
        v106 = *v104;
        v105 = v104[1];
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_94:
        if (v99)
        {
          goto LABEL_129;
        }

        v107 = v28 + 16 * v77;
        v109 = *(v107 + 32);
        v108 = *(v107 + 40);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_132;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_101:
        v115 = v77 - 1;
        if (v77 - 1 >= v75)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v116 = *(v28 + 32 + 16 * v115);
        v117 = *(v28 + 32 + 16 * v77 + 8);
        sub_1D89DCF24(*a3 + *(v136 + 72) * v116, *a3 + *(v136 + 72) * *(v28 + 32 + 16 * v77), *a3 + *(v136 + 72) * v117, v5);
        if (v6)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D885CC68(v28);
        }

        if (v115 >= *(v28 + 16))
        {
          goto LABEL_124;
        }

        v118 = v28 + 16 * v115;
        *(v118 + 32) = v116;
        *(v118 + 40) = v117;
        v145 = v28;
        result = sub_1D885CBDC(v77);
        v28 = v145;
        v75 = *(v145 + 16);
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = v28 + 32 + 16 * v75;
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_125;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_126;
      }

      v89 = (v28 + 16 * v75);
      v91 = *v89;
      v90 = v89[1];
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_128;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_131;
      }

      if (v93 >= v85)
      {
        v111 = (v28 + 32 + 16 * v77);
        v113 = *v111;
        v112 = v111[1];
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_135;
        }

        if (v80 < v114)
        {
          v77 = v75 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v138;
    if (v138 >= v26)
    {
      goto LABEL_111;
    }
  }

  v57 = v29 + v124;
  if (__OFADD__(v29, v124))
  {
    goto LABEL_141;
  }

  if (v57 >= v56)
  {
    v57 = a3[1];
  }

  if (v57 < v29)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v30 == v57)
  {
    goto LABEL_60;
  }

  v126 = v6;
  v58 = *a3;
  v59 = *(v136 + 72);
  v60 = *a3 + v59 * (v30 - 1);
  v61 = -v59;
  v62 = v29 - v30;
  v132 = v59;
  v133 = v57;
  v5 = v58 + v30 * v59;
  v63 = v142;
LABEL_47:
  v137 = v62;
  v138 = v30;
  v134 = v5;
  v64 = v60;
  v65 = v60;
  while (1)
  {
    v66 = v143;
    sub_1D89DD4B0(v5, v143, type metadata accessor for TextDetectorResult);
    sub_1D89DD4B0(v65, v144, type metadata accessor for TextDetectorResult);
    v67 = *(v63 + 48);
    if (*(v66 + v67))
    {
      v68 = *(v66 + v67 + 8);
    }

    else
    {
      v68 = 0;
    }

    v69 = (v144 + v67);
    if (*v69)
    {
      v70 = v69[1];
    }

    else
    {
      v70 = 0;
    }

    sub_1D89DD580(v144, type metadata accessor for TextDetectorResult);
    result = sub_1D89DD580(v143, type metadata accessor for TextDetectorResult);
    if (v68 >= v70)
    {
      v63 = v142;
LABEL_46:
      v30 = (v138 + 1);
      v60 = v64 + v132;
      v62 = v137 - 1;
      v5 = v134 + v132;
      if ((v138 + 1) == v133)
      {
        v30 = v133;
        v23 = v125;
        v6 = v126;
        v29 = v129;
        a3 = v130;
        v28 = v135;
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    v63 = v142;
    if (!v58)
    {
      break;
    }

    v71 = v141;
    sub_1D89DD518(v5, v141, type metadata accessor for TextDetectorResult);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D89DD518(v71, v65, type metadata accessor for TextDetectorResult);
    v65 += v61;
    v5 += v61;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_1D89DCF24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for TextDetectorResult(0);
  v8 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v49 = &v44 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v51 = &v44 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_74;
  }

  v20 = (a2 - a1) / v18;
  v55 = a1;
  v54 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v22;
    if (v22 >= 1)
    {
      v30 = -v18;
      v31 = a4 + v22;
      v47 = a4;
      v51 = v30;
      while (2)
      {
        while (1)
        {
          v45 = v29;
          v32 = a2;
          v33 = a2 + v30;
          v48 = a2;
          while (1)
          {
            if (v32 <= a1)
            {
              v55 = v32;
              v53 = v45;
              goto LABEL_71;
            }

            v36 = a3;
            v46 = v29;
            v37 = v31 + v30;
            v38 = v49;
            sub_1D89DD4B0(v37, v49, type metadata accessor for TextDetectorResult);
            sub_1D89DD4B0(v33, v50, type metadata accessor for TextDetectorResult);
            v39 = *(v52 + 48);
            v40 = *(v38 + v39) ? *(v38 + v39 + 8) : 0;
            v41 = (v50 + v39);
            v42 = *v41 ? v41[1] : 0;
            a3 += v51;
            sub_1D89DD580(v50, type metadata accessor for TextDetectorResult);
            sub_1D89DD580(v49, type metadata accessor for TextDetectorResult);
            if (v40 < v42)
            {
              break;
            }

            v29 = v37;
            if (v36 < v31 || a3 >= v31)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v47;
            }

            else
            {
              v34 = v47;
              if (v36 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v31 = v37;
            v35 = v37 > v34;
            v30 = v51;
            v32 = v48;
            if (!v35)
            {
              a2 = v48;
              goto LABEL_70;
            }
          }

          a2 = v33;
          if (v36 < v48 || a3 >= v48)
          {
            break;
          }

          v29 = v46;
          v43 = v47;
          v30 = v51;
          if (v36 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v31 <= v43)
          {
            goto LABEL_70;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v29 = v46;
        v30 = v51;
        if (v31 > v47)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v55 = a2;
    v53 = v29;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v21;
    v53 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      do
      {
        sub_1D89DD4B0(a2, v16, type metadata accessor for TextDetectorResult);
        sub_1D89DD4B0(a4, v51, type metadata accessor for TextDetectorResult);
        v24 = *(v52 + 48);
        if (*&v16[v24])
        {
          v25 = *&v16[v24 + 8];
        }

        else
        {
          v25 = 0;
        }

        v26 = a3;
        v27 = (v51 + v24);
        if (*v27)
        {
          v28 = v27[1];
        }

        else
        {
          v28 = 0;
        }

        sub_1D89DD580(v51, type metadata accessor for TextDetectorResult);
        sub_1D89DD580(v16, type metadata accessor for TextDetectorResult);
        if (v25 >= v28)
        {
          a3 = v26;
          if (a1 < a4 || a1 >= a4 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = a4 + v18;
          a4 += v18;
        }

        else
        {
          a3 = v26;
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
        }

        a1 += v18;
        v55 = a1;
      }

      while (a4 < v50 && a2 < a3);
    }
  }

LABEL_71:
  sub_1D885CE84(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_1D89DD4B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89DD518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89DD580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D89DD5E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D8B13B50();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TextDetectorResult(0);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D8B13890();
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v35 = v2;
  v56 = MEMORY[0x1E69E7CC0];
  sub_1D87F4880(0, v10, 0);
  v11 = v56;
  v48 = a1 + 56;
  result = sub_1D8B16580();
  if (result < 0 || (v13 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v39 = v45 + 32;
    v14 = *(a2 + 16);
    v36 = a1 + 64;
    v15 = 1;
    v37 = v10;
    v38 = a1;
    while (1)
    {
      v16 = v13 >> 6;
      if ((*(v48 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        break;
      }

      v46 = *(a1 + 36);
      v17 = *(a1 + 48) + *(v42 + 72) * v13;
      v47 = v11;
      v18 = v41;
      sub_1D8A01488(v17, v41, type metadata accessor for TextDetectorResult);
      v19 = v43;
      sub_1D8A9FD8C(*(v18 + *(v43 + 44)));
      v20 = *(v19 + 24);
      v21 = *(v18 + v20 + 16);
      v51 = *(v18 + v20);
      v52 = v21;
      v22 = *(v18 + v20 + 48);
      v53 = *(v18 + v20 + 32);
      v54 = v22;
      v50 = 0;
      v49 = v14;
      sub_1D8A5A9D8(&v50, &v49, &v55);
      sub_1D8B13B30();
      sub_1D8B13880();
      v23 = v18;
      v11 = v47;
      sub_1D8A014F0(v23, type metadata accessor for TextDetectorResult);
      v56 = v11;
      v25 = *(v11 + 16);
      v24 = *(v11 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D87F4880(v24 > 1, v25 + 1, 1);
        v11 = v56;
      }

      *(v11 + 16) = v25 + 1;
      result = (*(v45 + 32))(v11 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v25, v9, v40);
      a1 = v38;
      v26 = 1 << *(v38 + 32);
      if (v13 >= v26)
      {
        goto LABEL_25;
      }

      v27 = *(v48 + 8 * v16);
      if ((v27 & (1 << v13)) == 0)
      {
        goto LABEL_26;
      }

      if (v46 != *(v38 + 36))
      {
        goto LABEL_27;
      }

      v28 = v27 & (-2 << (v13 & 0x3F));
      if (v28)
      {
        v13 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v29 = v37;
      }

      else
      {
        v30 = v16 << 6;
        v31 = v16 + 1;
        v32 = (v36 + 8 * v16);
        v29 = v37;
        while (v31 < (v26 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_1D87977B4(v13, v46, 0);
            v13 = __clz(__rbit64(v33)) + v30;
            goto LABEL_18;
          }
        }

        result = sub_1D87977B4(v13, v46, 0);
        v13 = v26;
      }

LABEL_18:
      if (v15 == v29)
      {
        return v11;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        ++v15;
        if (v13 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D89DDB60()
{
  v1 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D8B15930();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D8B15910();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualLookupClassifier.Result(0);
  sub_1D8A01488(v0 + v9[9], v8, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D8B15900();
    sub_1D8B158F0();
    sub_1D8B158E0();
    sub_1D8B158F0();
    sub_1D8B15920();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v18 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v27 = sub_1D8B159D0();
    v28 = v19;
    v20 = v0 + v9[5];
    v21 = (v20 + *(type metadata accessor for GenericParseDataResult() + 40));
    v23 = *v21;
    v22 = v21[1];
    v26[1] = v23;
    v26[2] = v22;
    sub_1D87C12C0();
    v24 = sub_1D8B164C0();
    MEMORY[0x1DA71EFA0](v24);

    v25 = v27;
    sub_1D8A014F0(v8, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    return v25;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    result = 0x6C75736572206F4ELL;
    v12 = *(v0 + v9[8]);
    if (v12)
    {
      if (*(v12 + 16))
      {
        v13 = *(type metadata accessor for VisualIntelligenceLookupResult(0) - 8);
        v14 = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        v27 = v16;
        v28 = v15;
        sub_1D87C12C0();
        result = sub_1D8B164C0();
        if (*(v12 + 16) >= 2uLL)
        {
          sub_1D8B15900();
          sub_1D8B158F0();
          sub_1D8B158E0();

          sub_1D8B158F0();
          sub_1D8B15920();
          sub_1D881F764(0, &qword_1EE0E36B0);
          if (!sub_1D8B163E0())
          {
            v17 = [objc_opt_self() mainBundle];
          }

          sub_1D8B132F0();
          return sub_1D8B159D0();
        }
      }
    }
  }

  else
  {
    sub_1D8A014F0(v8, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    return 0;
  }

  return result;
}

unint64_t VisualLookupClassifier.Result.systemImage.getter()
{
  v1 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VisualLookupClassifier.Result(0);
  sub_1D8A01488(v0 + v4[9], v3, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = v0 + v4[5];
    v8 = *(v9 + *(type metadata accessor for GenericParseDataResult() + 44));

LABEL_8:
    sub_1D8A014F0(v3, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    return v8;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v8 = 0xD000000000000017;
    goto LABEL_8;
  }

  v6 = *(v0 + v4[8]);
  if (!v6 || !*(v6 + 16))
  {
    return 0xD000000000000017;
  }

  v7 = *(type metadata accessor for VisualIntelligenceLookupResult(0) - 8);
  v8 = *(v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 80);

  return v8;
}

uint64_t sub_1D89DE214(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 440) = v4;
  *(v5 + 448) = a3;
  *(v5 + 432) = a4;
  *(v5 + 416) = a1;
  *(v5 + 424) = a2;
  v6 = sub_1D8B13CF0();
  *(v5 + 456) = v6;
  *(v5 + 464) = *(v6 - 8);
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = type metadata accessor for VisualLookupClassifier.Result(0);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = swift_task_alloc();
  *(v5 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67110);
  *(v5 + 528) = swift_task_alloc();
  *(v5 + 536) = type metadata accessor for VisualIntelligenceRateLimitedInput(0);
  *(v5 + 544) = swift_task_alloc();
  v7 = sub_1D8B13240();
  *(v5 + 552) = v7;
  *(v5 + 560) = *(v7 - 8);
  *(v5 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67108);
  *(v5 + 576) = swift_task_alloc();
  *(v5 + 584) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  *(v5 + 592) = swift_task_alloc();
  *(v5 + 600) = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  *(v5 + 608) = swift_task_alloc();
  v8 = sub_1D8B138B0();
  *(v5 + 616) = v8;
  *(v5 + 624) = *(v8 - 8);
  *(v5 + 632) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89DE500, 0, 0);
}

uint64_t sub_1D89DE500()
{
  sub_1D8A01488(*(v0 + 440) + *(*(v0 + 488) + 36), *(v0 + 608), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v4 = *(v0 + 440);
    v5 = *(v0 + 416);
    sub_1D8A014F0(*(v0 + 608), type metadata accessor for VisualLookupClassifier.Result.SearchState);
    goto LABEL_5;
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 440);
  (*(*(v0 + 624) + 32))(*(v0 + 632), *(v0 + 608), *(v0 + 616));
  v3 = (v2 + *(v1 + 40));
  if (v3[1])
  {
    v4 = *(v0 + 440);
    v5 = *(v0 + 416);
    (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
LABEL_5:
    sub_1D8A01488(v4, v5, type metadata accessor for VisualLookupClassifier.Result);

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = *v3;
  *(v0 + 640) = *v3;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  *(v0 + 648) = qword_1EE0E54C8;
  if (sub_1D8B0AAA4())
  {
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    v11 = *(v0 + 616);
    v12 = *(v0 + 592);
    sub_1D8B16720();

    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v13 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v13);

    *(v0 + 208) = v11;
    *(v0 + 216) = sub_1D8A011DC(&qword_1ECA66F78, MEMORY[0x1E69E0360]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(v10 + 16))(boxed_opaque_existential_1, v9, v11);
    *(v0 + 224) = 3;
    *(v0 + 160) = 0xD000000000000022;
    *(v0 + 168) = 0x80000001D8B46E40;
    *(v0 + 176) = v8;
    v15 = sub_1D8B15EA0();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_1D88C4BD0(v0 + 160, v0 + 232);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v17 = *(v0 + 280);
    *(v16 + 64) = *(v0 + 264);
    *(v16 + 80) = v17;
    *(v16 + 96) = *(v0 + 296);
    v18 = *(v0 + 248);
    *(v16 + 32) = *(v0 + 232);
    *(v16 + 48) = v18;
    sub_1D8891CA0(0, 0, v12, &unk_1D8B32090, v16);

    sub_1D87DC9A0(v0 + 160);
  }

  v19 = *(v0 + 624);
  v35 = *(v0 + 616);
  v36 = *(v0 + 632);
  v33 = *(v0 + 552);
  v34 = *(v0 + 568);
  v20 = *(v0 + 544);
  v21 = *(v0 + 536);
  v22 = *(v0 + 488);
  v23 = *(v0 + 440);
  v24 = *(*(v0 + 560) + 16);
  v24();
  v25 = *(v23 + v22[6]);
  *(v0 + 656) = v25;
  v26 = *(v23 + v22[7]);
  *(v0 + 664) = v26;
  LOBYTE(v22) = *(v23 + v22[11]);
  v27 = v25;
  (v24)(v20, v34, v33);
  (*(v19 + 16))(v20 + v21[8], v36, v35);
  *(v20 + v21[5]) = v22;
  *(v20 + v21[6]) = v25;
  *(v20 + v21[7]) = v26;
  *(v20 + v21[9]) = v8;
  v28 = v27;

  v29 = swift_task_alloc();
  *(v0 + 672) = v29;
  *v29 = v0;
  v29[1] = sub_1D89DEAA0;
  v30 = *(v0 + 544);
  v31 = *(v0 + 528);
  v32 = *(v0 + 432);

  return sub_1D89E21A0(v31, v30, 0, v0 + 408, v32);
}

uint64_t sub_1D89DEAA0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 680) = *(v2 + 408);
    v3 = sub_1D89DEBB8;
  }

  else
  {
    v3 = sub_1D89DED58;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D89DEBB8()
{
  v11 = *(v0 + 680);
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v10 = *(v0 + 448);

  sub_1D8A014F0(v7, type metadata accessor for VisualIntelligenceRateLimitedInput);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  *v10 = v11;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D89DED58()
{
  v108 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 584);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 528);
  v8 = *(v0 + 520);

  sub_1D8A014F0(v6, type metadata accessor for VisualIntelligenceRateLimitedInput);
  (*(v4 + 8))(v3, v5);
  v9 = *v7;
  sub_1D881F6FC(v7 + *(v8 + 48), v2, &qword_1ECA67108);
  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno))
  {
    v10 = *(v0 + 640);
    v11 = *(v0 + 592);
    sub_1D8B16720();

    v107[0] = 0xD000000000000012;
    v107[1] = 0x80000001D8B46E20;
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v12 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v12);

    *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637A0);
    v13 = sub_1D8A013EC(&qword_1ECA637A8, &qword_1ECA637B0);
    *(v0 + 16) = 0xD000000000000012;
    *(v0 + 72) = v13;
    *(v0 + 40) = v9;
    *(v0 + 80) = 3;
    *(v0 + 24) = 0x80000001D8B46E20;
    *(v0 + 32) = v10;
    v14 = sub_1D8B15EA0();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    sub_1D88C4BD0(v0 + 16, v0 + 88);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v16 = *(v0 + 104);
    v17 = *(v0 + 136);
    *(v15 + 64) = *(v0 + 120);
    *(v15 + 80) = v17;
    *(v15 + 96) = *(v0 + 152);
    *(v15 + 32) = *(v0 + 88);
    *(v15 + 48) = v16;

    sub_1D8891CA0(0, 0, v11, &unk_1D8B32080, v15);

    sub_1D87DC9A0(v0 + 16);
  }

  v18 = *(v0 + 584);
  v19 = *(v0 + 576);
  v20 = *(v0 + 456);
  v21 = *(v0 + 464);
  sub_1D8A01488(*(v0 + 440), *(v0 + 512), type metadata accessor for VisualLookupClassifier.Result);
  sub_1D87A0E38(v18, v19, &qword_1ECA67108);
  v22 = (*(v21 + 48))(v19, 1, v20);
  v23 = *(v0 + 576);
  if (v22 == 1)
  {

    sub_1D87A14E4(v23, &qword_1ECA67108);
    v24 = *(v0 + 664);
  }

  else
  {
    v26 = *(v0 + 472);
    v25 = *(v0 + 480);
    v27 = *(v0 + 456);
    v28 = *(v0 + 464);
    v29 = *(v28 + 32);
    v29(v25, *(v0 + 576), v27);
    (*(v28 + 16))(v26, v25, v27);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v0 + 664);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1D87C8604(0, v24[2] + 1, 1, *(v0 + 664));
    }

    v32 = v24[2];
    v31 = v24[3];
    if (v32 >= v31 >> 1)
    {
      v24 = sub_1D87C8604(v31 > 1, v32 + 1, 1, v24);
    }

    v33 = *(v0 + 472);
    v34 = *(v0 + 456);
    v35 = *(v0 + 464);
    (*(v35 + 8))(*(v0 + 480), v34);
    v24[2] = v32 + 1;
    v29(v24 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32, v33, v34);
  }

  v36 = *(v0 + 512);
  v37 = *(v0 + 488);
  v38 = v37[7];

  *(v36 + v38) = v24;
  *(v36 + v37[8]) = v9;

  v39 = *(v9 + 16);

  v40 = (v36 + v37[9]);
  sub_1D8A014F0(v40, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (v39)
  {
    swift_storeEnumTagMultiPayload();
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 496);
    v42 = *(v0 + 440);
    v43 = sub_1D8B151E0();
    __swift_project_value_buffer(v43, qword_1EE0E4520);
    sub_1D8A01488(v42, v41, type metadata accessor for VisualLookupClassifier.Result);
    v44 = sub_1D8B151C0();
    v45 = sub_1D8B161F0();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 632);
    v48 = *(v0 + 624);
    v49 = *(v0 + 616);
    v50 = *(v0 + 584);
    if (v46)
    {
      v51 = *(v0 + 512);
      v52 = *(v0 + 488);
      v101 = *(v0 + 496);
      v105 = *(v0 + 584);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v107[0] = v54;
      *v53 = 136315650;
      swift_beginAccess();
      v55 = sub_1D89DDB60();
      v103 = v47;
      v102 = v49;
      v57 = sub_1D89AC714(v55, v56, v107);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v58 = *(v52 + 20);
      v59 = (v51 + *(type metadata accessor for GenericParseDataResult() + 40) + v58);
      v61 = *v59;
      v60 = v59[1];
      *(v0 + 376) = v61;
      *(v0 + 384) = v60;
      sub_1D87C12C0();
      v62 = sub_1D8B164C0();
      v64 = sub_1D89AC714(v62, v63, v107);

      *(v53 + 14) = v64;
      *(v53 + 22) = 2080;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v65 = sub_1D8B16B50();
      v67 = v66;
      sub_1D8A014F0(v101, type metadata accessor for VisualLookupClassifier.Result);
      v68 = sub_1D89AC714(v65, v67, v107);

      *(v53 + 24) = v68;
      _os_log_impl(&dword_1D8783000, v44, v45, "Search returned a %s for a %s bundle (id: %s", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v54, -1, -1);
      MEMORY[0x1DA721330](v53, -1, -1);

      sub_1D87A14E4(v105, &qword_1ECA67108);
      (*(v48 + 8))(v103, v102);
    }

    else
    {
      v95 = *(v0 + 496);

      sub_1D8A014F0(v95, type metadata accessor for VisualLookupClassifier.Result);
      sub_1D87A14E4(v50, &qword_1ECA67108);
      (*(v48 + 8))(v47, v49);
    }
  }

  else
  {
    *v40 = 0xD000000000000019;
    v40[1] = 0x80000001D8B46E00;
    swift_storeEnumTagMultiPayload();
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v69 = *(v0 + 504);
    v70 = *(v0 + 440);
    v71 = sub_1D8B151E0();
    __swift_project_value_buffer(v71, qword_1EE0E4520);
    sub_1D8A01488(v70, v69, type metadata accessor for VisualLookupClassifier.Result);
    v72 = sub_1D8B151C0();
    v73 = sub_1D8B161F0();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 632);
    v76 = *(v0 + 624);
    v77 = *(v0 + 616);
    v78 = *(v0 + 584);
    if (v74)
    {
      v80 = *(v0 + 504);
      v79 = *(v0 + 512);
      v106 = *(v0 + 632);
      v81 = *(v0 + 488);
      v104 = *(v0 + 616);
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v107[0] = v83;
      *v82 = 136315394;
      swift_beginAccess();
      v84 = *(v81 + 20);
      v85 = (v79 + *(type metadata accessor for GenericParseDataResult() + 40) + v84);
      v87 = *v85;
      v86 = v85[1];
      *(v0 + 392) = v87;
      *(v0 + 400) = v86;
      sub_1D87C12C0();
      v88 = sub_1D8B164C0();
      v90 = sub_1D89AC714(v88, v89, v107);

      *(v82 + 4) = v90;
      *(v82 + 12) = 2080;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v91 = sub_1D8B16B50();
      v93 = v92;
      sub_1D8A014F0(v80, type metadata accessor for VisualLookupClassifier.Result);
      v94 = sub_1D89AC714(v91, v93, v107);

      *(v82 + 14) = v94;
      _os_log_impl(&dword_1D8783000, v72, v73, "Search returned empty results for a %s bundle (id: %s", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v83, -1, -1);
      MEMORY[0x1DA721330](v82, -1, -1);

      sub_1D87A14E4(v78, &qword_1ECA67108);
      (*(v76 + 8))(v106, v104);
    }

    else
    {
      v96 = *(v0 + 504);

      sub_1D8A014F0(v96, type metadata accessor for VisualLookupClassifier.Result);
      sub_1D87A14E4(v78, &qword_1ECA67108);
      (*(v76 + 8))(v75, v77);
    }
  }

  v97 = *(v0 + 512);
  v98 = *(v0 + 416);
  swift_beginAccess();
  sub_1D8A01488(v97, v98, type metadata accessor for VisualLookupClassifier.Result);
  sub_1D8A014F0(v97, type metadata accessor for VisualLookupClassifier.Result);

  v99 = *(v0 + 8);

  return v99();
}

uint64_t sub_1D89DF934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v148 = a2;
  v149 = a1;
  v136 = type metadata accessor for DetectionRequest.Originator(0);
  v4 = MEMORY[0x1EEE9AC00](v136);
  v137 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v135 = &v129 - v6;
  v133 = type metadata accessor for DetectionRequest(0);
  v7 = MEMORY[0x1EEE9AC00](v133);
  v132 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v131 = &v129 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v130 = &v129 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v129 - v13;
  *&v147 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult());
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for CVBundle.BundleType(0);
  v20 = MEMORY[0x1EEE9AC00](v141);
  v22 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v129 - v23;
  v154 = type metadata accessor for CVTrackSnapshot(0);
  v153 = *(v154 - 8);
  v24 = MEMORY[0x1EEE9AC00](v154);
  v26 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v129 - v27;
  CVBundle.latestEstimate.getter(&v160);
  v138 = *&v160;
  v30 = a3 + 64;
  v29 = *(a3 + 64);
  v169 = MEMORY[0x1E69E7CD0];
  v31 = 1 << *(a3 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v145 = v32 & v29;
  v152 = (v17 + 56);
  v33 = v26;
  v144 = a3;
  v34 = (v31 + 63) >> 6;
  v35 = v30;

  v36 = 0;
  v151 = v19;
  v143 = v35;
  v142 = v34;
  v134 = v22;
  v139 = v33;
  while (1)
  {
    while (1)
    {
      v43 = v145;
      if (!v145)
      {
        while (1)
        {
          v44 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_114;
          }

          if (v44 >= v34)
          {

            return v169;
          }

          v43 = *(v35 + 8 * v44);
          ++v36;
          if (v43)
          {
            v36 = v44;
            break;
          }
        }
      }

      v145 = (v43 - 1) & v43;
      v45 = __clz(__rbit64(v43)) | (v36 << 6);
      v46 = *(v144 + 56);
      v150 = *(*(v144 + 48) + v45);
      v47 = *(v46 + 8 * v45);
      v48 = sub_1D891A6E8();
      v155 = *(v48 + 16);
      if (v155)
      {
        v22 = 0;
        if (v47 <= 0.0)
        {
          v49 = 2.0;
        }

        else
        {
          v49 = 1.0 / v47;
        }

        while (v22 < *(v48 + 16))
        {
          sub_1D8A01488(v48 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v22++, v28, type metadata accessor for CVTrackSnapshot);
          switch(*&v28[*(v154 + 20)] >> 60)
          {
            case 1:
              *&v63 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
              v51 = swift_projectBox();
              v163 = *&v63;
              v19 = v151;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
              v53 = type metadata accessor for GroundedParseDetectorResult;
              goto LABEL_31;
            case 2:
              v51 = swift_projectBox();
              v163 = *&v16;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
              v53 = type metadata accessor for MetaDetectionResult;
              goto LABEL_31;
            case 3:
            case 8:
              *&v50 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
              v51 = swift_projectBox();
              v163 = *&v50;
              v19 = v151;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
              v53 = type metadata accessor for ObjectDetectorResult;
              goto LABEL_31;
            case 4:
              *&v64 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
              v51 = swift_projectBox();
              v163 = *&v64;
              v19 = v151;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
              v53 = type metadata accessor for ParseDetectorResult;
              goto LABEL_31;
            case 5:
              *&v65 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
              v51 = swift_projectBox();
              v163 = *&v65;
              v19 = v151;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
              v53 = type metadata accessor for TextDetectorResult;
              goto LABEL_31;
            case 6:
            case 7:
              *&v54 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
              v51 = swift_projectBox();
              v163 = *&v54;
              v19 = v151;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
              v53 = type metadata accessor for StreamingBarcodeDetectorResult;
              goto LABEL_31;
            case 9:
            case 0xALL:
              v55 = swift_projectBox();
              v56 = v146;
              sub_1D8A01488(v55, v146, type metadata accessor for AFMResult);
              v163 = *&v147;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult));
              v57 = __swift_allocate_boxed_opaque_existential_1(&v160);
              sub_1D8A01550(v56, v57, type metadata accessor for AFMResult);
              break;
            case 0xBLL:
              *&v58 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult());
              v51 = swift_projectBox();
              v163 = *&v58;
              v19 = v151;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
              v53 = type metadata accessor for SyntheticDetectionResult;
              goto LABEL_31;
            case 0xCLL:
              *&v59 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
              v51 = swift_projectBox();
              v163 = *&v59;
              v19 = v151;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
              v53 = type metadata accessor for GroundedParseEmbeddingsResult;
              goto LABEL_31;
            case 0xDLL:
              *&v66 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
              v51 = swift_projectBox();
              v163 = *&v66;
              v19 = v151;
              v164 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
              v53 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_31:
              sub_1D8A01488(v51, boxed_opaque_existential_1, v53);
              break;
            default:
              *&v60 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750));
              v61 = swift_projectBox();
              v163 = *&v60;
              v19 = v151;
              v164 = COERCE_DOUBLE(sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750));
              v62 = __swift_allocate_boxed_opaque_existential_1(&v160);
              sub_1D87A0E38(v61, v62, &qword_1ECA67750);
              break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
          v67 = swift_dynamicCast();
          v68 = *v152;
          if (v67)
          {
            v68(v14, 0, 1, v16);
            sub_1D8A01550(v14, v19, type metadata accessor for MetaDetectionResult);
            if (*v19 == v150)
            {
              v69 = *(v148 + 32);
              if (((*(v148 + 40) & 1) == 0 || *&v19[v16[8]] == v69) && (v19[v16[9]] != 2 || v69 - *&v19[v16[8]] <= v49))
              {
                CVBundle.latestEstimate.getter(&v168);
                v159 = v168;
                CVDetection.detection.getter(v156);
                v71 = v157;
                v70 = v158;
                __swift_project_boxed_opaque_existential_1(v156, v157);
                v72 = v71;
                v19 = v151;
                (*(v70 + 64))(&v160, v72, v70);
                __swift_destroy_boxed_opaque_existential_1(v156);

                v73 = v160;
                v74 = v161;
                if (v162 >= v160)
                {
                  v75 = v160;
                }

                else
                {
                  v75 = v162;
                }

                if (v164 < v75)
                {
                  v75 = v164;
                }

                if (v166 < v75)
                {
                  v75 = v166;
                }

                if (v163 >= v161)
                {
                  v76 = v161;
                }

                else
                {
                  v76 = v163;
                }

                if (v165 < v76)
                {
                  v76 = v165;
                }

                if (v167 < v76)
                {
                  v76 = v167;
                }

                if (v160 <= v162)
                {
                  v73 = v162;
                }

                if (v73 <= v164)
                {
                  v73 = v164;
                }

                if (v73 <= v166)
                {
                  v73 = v166;
                }

                if (v161 <= v163)
                {
                  v74 = v163;
                }

                if (v74 <= v165)
                {
                  v74 = v165;
                }

                if (v74 <= v167)
                {
                  v74 = v167;
                }

                v77 = v73 - v75;
                v78 = v74 - v76;
                v172.origin.x = 0.0;
                v172.origin.y = 0.0;
                v172.size.width = 1.0;
                v172.size.height = 1.0;
                v170 = CGRectIntersection(*&v75, v172);
                x = v170.origin.x;
                y = v170.origin.y;
                width = v170.size.width;
                height = v170.size.height;
                v83 = &v19[v16[5]];
                v84 = *v83;
                v85 = v83[1];
                v86 = v83[2];
                v87 = v83[3];
                v88 = v83[4];
                v89 = v83[5];
                v90 = v83[6];
                v91 = v83[7];
                if (v86 >= *v83)
                {
                  v92 = *v83;
                }

                else
                {
                  v92 = v83[2];
                }

                if (v88 < v92)
                {
                  v92 = v83[4];
                }

                if (v90 < v92)
                {
                  v92 = v83[6];
                }

                if (v87 >= v85)
                {
                  v93 = v83[1];
                }

                else
                {
                  v93 = v83[3];
                }

                if (v89 < v93)
                {
                  v93 = v83[5];
                }

                if (v91 < v93)
                {
                  v93 = v83[7];
                }

                if (v84 <= v86)
                {
                  v84 = v83[2];
                }

                if (v84 <= v88)
                {
                  v84 = v83[4];
                }

                if (v84 <= v90)
                {
                  v84 = v83[6];
                }

                if (v85 <= v87)
                {
                  v85 = v83[3];
                }

                if (v85 <= v89)
                {
                  v85 = v83[5];
                }

                if (v85 <= v91)
                {
                  v85 = v83[7];
                }

                v94 = v84 - v92;
                v95 = v85 - v93;
                v96 = width;
                v97 = height;
                v171 = CGRectIntersection(*&v92, *&x);
                if (width * height * 0.9 <= v171.size.width * v171.size.height)
                {
                  sub_1D8A014F0(v19, type metadata accessor for MetaDetectionResult);
                  sub_1D8A014F0(v28, type metadata accessor for CVTrackSnapshot);

                  goto LABEL_95;
                }
              }
            }

            sub_1D8A014F0(v19, type metadata accessor for MetaDetectionResult);
          }

          else
          {
            v68(v14, 1, 1, v16);
            sub_1D87A14E4(v14, &qword_1ECA64BB8);
          }

          sub_1D8A014F0(v28, type metadata accessor for CVTrackSnapshot);
          if (v155 == v22)
          {
            goto LABEL_92;
          }
        }

        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

LABEL_92:

      v98 = v149;
      v99 = v140;
      sub_1D8A01488(v149, v140, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D8A014F0(v99, type metadata accessor for CVBundle.BundleType);
      v22 = v134;
      sub_1D8A01488(v98, v134, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_116;
      }

      v100 = sub_1D8B13240();
      (*(*(v100 - 8) + 8))(v22, v100);
LABEL_95:
      v35 = v143;
      v34 = v142;
    }

    v101 = v139;
    sub_1D8A01550(v99, v139, type metadata accessor for CVTrackSnapshot);
    LOBYTE(v160) = v150;
    v155 = sub_1D8921890(&v160);
    v102 = sub_1D8B13240();
    v103 = v135;
    (*(*(v102 - 8) + 16))(v135, v101, v102);
    swift_storeEnumTagMultiPayload();
    CVBundle.latestEstimate.getter(&v168);
    v159 = v168;
    CVDetection.detection.getter(v156);
    v104 = v157;
    v105 = v158;
    __swift_project_boxed_opaque_existential_1(v156, v157);
    (*(v105 + 64))(&v160, v104, v105);
    __swift_destroy_boxed_opaque_existential_1(v156);
    Corners.bounds.getter();
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v113 = v112;

    v156[0] = v138;
    CVDetection.detection.getter(&v160);
    v114 = *&v163;
    v115 = v164;
    __swift_project_boxed_opaque_existential_1(&v160, *&v163);
    v116 = *(*&v115 + 88);
    v117 = v115;
    v19 = v151;
    v118 = v103;
    v119 = v116(v114, *&v117);
    __swift_destroy_boxed_opaque_existential_1(&v160);
    sub_1D8A01488(v103, v137, type metadata accessor for DetectionRequest.Originator);
    v120 = v150;
    v22 = v155;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

LABEL_6:
    v37 = v132;
    *v132 = v120;
    v38 = v133;
    sub_1D8A01488(v118, v37 + *(v133 + 20), type metadata accessor for DetectionRequest.Originator);
    v39 = sub_1D87C45EC(v22);

    sub_1D8A014F0(v118, type metadata accessor for DetectionRequest.Originator);
    *(v37 + v38[6]) = v39;
    v40 = (v37 + v38[7]);
    *v40 = v107;
    v40[1] = v109;
    v40[2] = v111;
    v40[3] = v113;
    *(v37 + v38[8]) = v119;
    v41 = v131;
    sub_1D8A01550(v37, v131, type metadata accessor for DetectionRequest);
    v42 = v130;
    sub_1D87FB834(v130, v41);
    sub_1D8A014F0(v42, type metadata accessor for DetectionRequest);
    sub_1D8A014F0(v139, type metadata accessor for CVTrackSnapshot);
    v35 = v143;
    v34 = v142;
  }

  sub_1D8A014F0(v137, type metadata accessor for DetectionRequest.Originator);
  if (v120 > 0xD)
  {
    v121 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v121 = MEMORY[0x1E69E7CD0];
    if (((1 << v120) & 0x3002) != 0)
    {
      v121 = sub_1D8A4F030(&unk_1F5426DD8);
    }
  }

  v122 = 0;
  v123 = 1 << *(v121 + 32);
  if (v123 < 64)
  {
    v124 = ~(-1 << v123);
  }

  else
  {
    v124 = -1;
  }

  v125 = v124 & *(v121 + 56);
  v126 = (v123 + 63) >> 6;
  while (v125)
  {
LABEL_104:
    v125 &= v125 - 1;
  }

  while (1)
  {
    v127 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      break;
    }

    if (v127 >= v126)
    {

      goto LABEL_6;
    }

    v125 = *(v121 + 56 + 8 * v127);
    ++v122;
    if (v125)
    {
      v122 = v127;
      goto LABEL_104;
    }
  }

LABEL_115:
  __break(1u);
LABEL_116:
  sub_1D8A014F0(v22, type metadata accessor for CVBundle.BundleType);
  v160 = 0.0;
  v161 = -2.68156159e154;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD000000000000017, 0x80000001D8B46C50);
  sub_1D8B168A0();
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D89E0D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v126 = a4;
  v145 = a2;
  v133 = type metadata accessor for DetectionRequest.Originator(0);
  v6 = MEMORY[0x1EEE9AC00](v133);
  v134 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v132 = &v126 - v8;
  v130 = type metadata accessor for DetectionRequest(0);
  v9 = MEMORY[0x1EEE9AC00](v130);
  v129 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v128 = &v126 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v126 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v126 - v15;
  *&v144 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult());
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for CVBundle.BundleType(0);
  v22 = MEMORY[0x1EEE9AC00](v138);
  v24 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v137 = &v126 - v25;
  v151 = type metadata accessor for CVTrackSnapshot(0);
  v150 = *(v151 - 8);
  v26 = MEMORY[0x1EEE9AC00](v151);
  v136 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v126 - v28;
  CVBundle.latestEstimate.getter(&v157);
  v135 = *&v157;
  v31 = a3 + 64;
  v30 = *(a3 + 64);
  v166 = MEMORY[0x1E69E7CD0];
  v32 = 1 << *(a3 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v142 = v33 & v30;
  v141 = (v32 + 63) >> 6;
  v149 = (v19 + 56);
  v140 = a3;

  v34 = 0;
  v146 = a1;
  v148 = v21;
  v139 = v31;
  v131 = v24;
  while (1)
  {
    while (1)
    {
      v39 = v142;
      if (!v142)
      {
        while (1)
        {
          v40 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_114;
          }

          if (v40 >= v141)
          {

            return v166;
          }

          v39 = *(v31 + 8 * v40);
          ++v34;
          if (v39)
          {
            v34 = v40;
            break;
          }
        }
      }

      v142 = (v39 - 1) & v39;
      v41 = __clz(__rbit64(v39)) | (v34 << 6);
      v42 = *(v140 + 56);
      LODWORD(v147) = *(*(v140 + 48) + v41);
      v43 = *(v42 + 8 * v41);
      v24 = sub_1D891A6E8();
      v152 = *(v24 + 2);
      if (v152)
      {
        v44 = 0;
        if (v43 <= 0.0)
        {
          v45 = 2.0;
        }

        else
        {
          v45 = 1.0 / v43;
        }

        while (v44 < *(v24 + 2))
        {
          sub_1D8A01488(&v24[((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v44++], v29, type metadata accessor for CVTrackSnapshot);
          switch(*&v29[*(v151 + 20)] >> 60)
          {
            case 1:
              *&v59 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
              v47 = swift_projectBox();
              v160 = *&v59;
              v21 = v148;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v49 = type metadata accessor for GroundedParseDetectorResult;
              goto LABEL_31;
            case 2:
              v47 = swift_projectBox();
              v160 = *&v18;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v49 = type metadata accessor for MetaDetectionResult;
              goto LABEL_31;
            case 3:
            case 8:
              *&v46 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
              v47 = swift_projectBox();
              v160 = *&v46;
              v21 = v148;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v49 = type metadata accessor for ObjectDetectorResult;
              goto LABEL_31;
            case 4:
              *&v60 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
              v47 = swift_projectBox();
              v160 = *&v60;
              v21 = v148;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v49 = type metadata accessor for ParseDetectorResult;
              goto LABEL_31;
            case 5:
              *&v61 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
              v47 = swift_projectBox();
              v160 = *&v61;
              v21 = v148;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v49 = type metadata accessor for TextDetectorResult;
              goto LABEL_31;
            case 6:
            case 7:
              *&v50 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
              v47 = swift_projectBox();
              v160 = *&v50;
              v21 = v148;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v49 = type metadata accessor for StreamingBarcodeDetectorResult;
              goto LABEL_31;
            case 9:
            case 0xALL:
              v51 = swift_projectBox();
              v52 = v143;
              sub_1D8A01488(v51, v143, type metadata accessor for AFMResult);
              v160 = *&v144;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult));
              v53 = __swift_allocate_boxed_opaque_existential_1(&v157);
              sub_1D8A01550(v52, v53, type metadata accessor for AFMResult);
              break;
            case 0xBLL:
              *&v54 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult());
              v47 = swift_projectBox();
              v160 = *&v54;
              v21 = v148;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v49 = type metadata accessor for SyntheticDetectionResult;
              goto LABEL_31;
            case 0xCLL:
              *&v55 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
              v47 = swift_projectBox();
              v160 = *&v55;
              v21 = v148;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v49 = type metadata accessor for GroundedParseEmbeddingsResult;
              goto LABEL_31;
            case 0xDLL:
              *&v62 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
              v47 = swift_projectBox();
              v160 = *&v62;
              v21 = v148;
              v161 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult));
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v49 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_31:
              sub_1D8A01488(v47, boxed_opaque_existential_1, v49);
              break;
            default:
              *&v56 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750));
              v57 = swift_projectBox();
              v160 = *&v56;
              v21 = v148;
              v161 = COERCE_DOUBLE(sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750));
              v58 = __swift_allocate_boxed_opaque_existential_1(&v157);
              sub_1D87A0E38(v57, v58, &qword_1ECA67750);
              break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
          v63 = swift_dynamicCast();
          v64 = *v149;
          if (v63)
          {
            v64(v16, 0, 1, v18);
            sub_1D8A01550(v16, v21, type metadata accessor for MetaDetectionResult);
            if (*v21 == v147)
            {
              v65 = *(v145 + 32);
              if (((*(v145 + 40) & 1) == 0 || *&v21[v18[8]] == v65) && (v21[v18[9]] != 2 || v65 - *&v21[v18[8]] <= v45))
              {
                CVBundle.latestEstimate.getter(&v165);
                v156 = v165;
                CVDetection.detection.getter(v153);
                v67 = v154;
                v66 = v155;
                __swift_project_boxed_opaque_existential_1(v153, v154);
                v68 = v67;
                v21 = v148;
                (*(v66 + 64))(&v157, v68, v66);
                __swift_destroy_boxed_opaque_existential_1(v153);

                v69 = v157;
                v70 = v158;
                if (v159 >= v157)
                {
                  v71 = v157;
                }

                else
                {
                  v71 = v159;
                }

                if (v161 < v71)
                {
                  v71 = v161;
                }

                if (v163 < v71)
                {
                  v71 = v163;
                }

                if (v160 >= v158)
                {
                  v72 = v158;
                }

                else
                {
                  v72 = v160;
                }

                if (v162 < v72)
                {
                  v72 = v162;
                }

                if (v164 < v72)
                {
                  v72 = v164;
                }

                if (v157 <= v159)
                {
                  v69 = v159;
                }

                if (v69 <= v161)
                {
                  v69 = v161;
                }

                if (v69 <= v163)
                {
                  v69 = v163;
                }

                if (v158 <= v160)
                {
                  v70 = v160;
                }

                if (v70 <= v162)
                {
                  v70 = v162;
                }

                if (v70 <= v164)
                {
                  v70 = v164;
                }

                v73 = v69 - v71;
                v74 = v70 - v72;
                v169.origin.x = 0.0;
                v169.origin.y = 0.0;
                v169.size.width = 1.0;
                v169.size.height = 1.0;
                v167 = CGRectIntersection(*&v71, v169);
                x = v167.origin.x;
                y = v167.origin.y;
                width = v167.size.width;
                height = v167.size.height;
                v79 = &v21[v18[5]];
                v80 = *v79;
                v81 = v79[1];
                v82 = v79[2];
                v83 = v79[3];
                v84 = v79[4];
                v85 = v79[5];
                v86 = v79[6];
                v87 = v79[7];
                if (v82 >= *v79)
                {
                  v88 = *v79;
                }

                else
                {
                  v88 = v79[2];
                }

                if (v84 < v88)
                {
                  v88 = v79[4];
                }

                if (v86 < v88)
                {
                  v88 = v79[6];
                }

                if (v83 >= v81)
                {
                  v89 = v79[1];
                }

                else
                {
                  v89 = v79[3];
                }

                if (v85 < v89)
                {
                  v89 = v79[5];
                }

                if (v87 < v89)
                {
                  v89 = v79[7];
                }

                if (v80 <= v82)
                {
                  v80 = v79[2];
                }

                if (v80 <= v84)
                {
                  v80 = v79[4];
                }

                if (v80 <= v86)
                {
                  v80 = v79[6];
                }

                if (v81 <= v83)
                {
                  v81 = v79[3];
                }

                if (v81 <= v85)
                {
                  v81 = v79[5];
                }

                if (v81 <= v87)
                {
                  v81 = v79[7];
                }

                v90 = v80 - v88;
                v91 = v81 - v89;
                v92 = width;
                v93 = height;
                v168 = CGRectIntersection(*&v88, *&x);
                if (width * height * 0.9 <= v168.size.width * v168.size.height)
                {
                  sub_1D8A014F0(v21, type metadata accessor for MetaDetectionResult);
                  sub_1D8A014F0(v29, type metadata accessor for CVTrackSnapshot);

                  goto LABEL_95;
                }
              }
            }

            sub_1D8A014F0(v21, type metadata accessor for MetaDetectionResult);
          }

          else
          {
            v64(v16, 1, 1, v18);
            sub_1D87A14E4(v16, &qword_1ECA64BB8);
          }

          sub_1D8A014F0(v29, type metadata accessor for CVTrackSnapshot);
          if (v152 == v44)
          {
            goto LABEL_92;
          }
        }

        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

LABEL_92:

      v94 = v146;
      v95 = v137;
      sub_1D8A01488(v146, v137, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D8A014F0(v95, type metadata accessor for CVBundle.BundleType);
      v96 = v94;
      v24 = v131;
      sub_1D8A01488(v96, v131, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_116;
      }

      v97 = sub_1D8B13240();
      (*(*(v97 - 8) + 8))(v24, v97);
LABEL_95:
      v31 = v139;
    }

    v98 = v136;
    sub_1D8A01550(v95, v136, type metadata accessor for CVTrackSnapshot);
    LOBYTE(v157) = v147;
    v152 = sub_1D8921890(&v157);
    v99 = sub_1D8B13240();
    v24 = v132;
    (*(*(v99 - 8) + 16))(v132, v98, v99);
    swift_storeEnumTagMultiPayload();
    CVBundle.latestEstimate.getter(&v165);
    v156 = v165;
    CVDetection.detection.getter(v153);
    v100 = v154;
    v101 = v155;
    __swift_project_boxed_opaque_existential_1(v153, v154);
    (*(v101 + 64))(&v157, v100, v101);
    __swift_destroy_boxed_opaque_existential_1(v153);
    Corners.bounds.getter();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;

    v153[0] = v135;
    CVDetection.detection.getter(&v157);
    v110 = *&v160;
    v111 = v161;
    __swift_project_boxed_opaque_existential_1(&v157, *&v160);
    v112 = *(*&v111 + 88);
    v113 = v111;
    v21 = v148;
    v114 = v24;
    v115 = v112(v110, *&v113);
    __swift_destroy_boxed_opaque_existential_1(&v157);
    sub_1D8A01488(v24, v134, type metadata accessor for DetectionRequest.Originator);
    v116 = v147;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = v139;
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

LABEL_6:
    v24 = v129;
    *v129 = v116;
    v35 = v130;
    sub_1D8A01488(v114, &v24[*(v130 + 20)], type metadata accessor for DetectionRequest.Originator);
    v147 = sub_1D87C45EC(v152);

    sub_1D8A014F0(v114, type metadata accessor for DetectionRequest.Originator);
    *&v24[v35[6]] = v147;
    v36 = &v24[v35[7]];
    *v36 = v103;
    *(v36 + 1) = v105;
    *(v36 + 2) = v107;
    *(v36 + 3) = v109;
    *&v24[v35[8]] = v115;
    v37 = v128;
    sub_1D8A01550(v24, v128, type metadata accessor for DetectionRequest);
    v38 = v127;
    sub_1D87FB834(v127, v37);
    sub_1D8A014F0(v38, type metadata accessor for DetectionRequest);
    sub_1D8A014F0(v136, type metadata accessor for CVTrackSnapshot);
  }

  sub_1D8A014F0(v134, type metadata accessor for DetectionRequest.Originator);
  if (v116 > 0xD)
  {
    v118 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v118 = MEMORY[0x1E69E7CD0];
    if (((1 << v116) & 0x3002) != 0)
    {
      v118 = sub_1D8A4F030(v126);
    }
  }

  v119 = 0;
  v120 = 1 << *(v118 + 32);
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  else
  {
    v121 = -1;
  }

  v122 = v121 & *(v118 + 56);
  v123 = (v120 + 63) >> 6;
  while (v122)
  {
LABEL_104:
    v122 &= v122 - 1;
  }

  while (1)
  {
    v124 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      break;
    }

    if (v124 >= v123)
    {

      goto LABEL_6;
    }

    v122 = *(v118 + 56 + 8 * v124);
    ++v119;
    if (v122)
    {
      v119 = v124;
      goto LABEL_104;
    }
  }

LABEL_115:
  __break(1u);
LABEL_116:
  sub_1D8A014F0(v24, type metadata accessor for CVBundle.BundleType);
  v157 = 0.0;
  v158 = -2.68156159e154;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD000000000000017, 0x80000001D8B46C50);
  sub_1D8B168A0();
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D89E21A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  *(v6 + 240) = v5;
  *(v6 + 248) = a4;
  *(v6 + 129) = a3;
  *(v6 + 232) = a2;
  *(v6 + 224) = a5;
  *(v6 + 216) = a1;
  v7 = sub_1D8B16870();
  *(v6 + 256) = v7;
  *(v6 + 264) = *(v7 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v8 = sub_1D8B16880();
  *(v6 + 288) = v8;
  *(v6 + 296) = *(v8 - 8);
  *(v6 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67108);
  *(v6 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F08);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
  *(v6 + 344) = v9;
  *(v6 + 352) = *(v9 - 8);
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67110);
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  v10 = sub_1D8B13240();
  *(v6 + 488) = v10;
  *(v6 + 496) = *(v10 - 8);
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89E2574, v5, 0);
}

uint64_t sub_1D89E2574()
{
  v94 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v0 + 448);
  v5 = *(v0 + 408);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v3 + 16);
  *(v0 + 576) = v8;
  *(v0 + 584) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v2);
  v8(v4, v6, v2);
  v9 = *(v6 + *(type metadata accessor for VisualIntelligenceRateLimitedInput(0) + 28));
  *(v0 + 592) = v9;
  *(v4 + *(v5 + 20)) = v9;
  v10 = qword_1ECA66BE8;
  *(v0 + 600) = qword_1ECA66BE8;
  swift_beginAccess();
  v11 = *(v7 + v10);
  v12 = *(v11 + 16);

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v0 + 448);

  v14 = sub_1D87F0134(v13);
  if ((v15 & 1) == 0)
  {

LABEL_7:
    sub_1D8A014F0(*(v0 + 448), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    goto LABEL_8;
  }

  v16 = *(v0 + 448);
  sub_1D87A0E38(*(v11 + 56) + *(*(v0 + 352) + 72) * v14, *(v0 + 400), &qword_1ECA65B78);
  sub_1D8A014F0(v16, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *(v0 + 568);
    v18 = *(v0 + 560);
    v19 = *(v0 + 488);
    sub_1D881F6FC(*(v0 + 400), *(v0 + 480), &qword_1ECA67110);
    v8(v18, v17, v19);
    v20 = sub_1D8B151C0();
    v21 = sub_1D8B161F0();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 568);
    v24 = *(v0 + 560);
    v26 = *(v0 + 488);
    v25 = *(v0 + 496);
    if (v22)
    {
      v90 = *(v0 + 568);
      v27 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v93[0] = v89;
      *v27 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v28 = sub_1D8B16B50();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v24, v26);
      v32 = sub_1D89AC714(v28, v30, v93);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1D8783000, v20, v21, "Returning cached output for identifier %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1DA721330](v89, -1, -1);
      MEMORY[0x1DA721330](v27, -1, -1);

      v31(v90, v26);
    }

    else
    {

      v84 = *(v25 + 8);
      v84(v24, v26);
      v84(v23, v26);
    }

    sub_1D881F6FC(*(v0 + 480), *(v0 + 216), &qword_1ECA67110);

    v85 = *(v0 + 8);

    return v85();
  }

  sub_1D87A14E4(*(v0 + 400), &qword_1ECA65B78);
LABEL_8:
  if (*(v0 + 129) == 1)
  {
    v8(*(v0 + 552), *(v0 + 568), *(v0 + 488));
    v33 = sub_1D8B151C0();
    v34 = sub_1D8B16210();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 552);
    v37 = *(v0 + 488);
    v38 = *(v0 + 496);
    if (v35)
    {
      v39 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v93[0] = v91;
      *v39 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v40 = sub_1D8B16B50();
      v42 = v41;
      v43 = *(v38 + 8);
      v43(v36, v37);
      v44 = sub_1D89AC714(v40, v42, v93);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1D8783000, v33, v34, "Bypassing the queue for identifier %s. This should only happen for testing.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x1DA721330](v91, -1, -1);
      MEMORY[0x1DA721330](v39, -1, -1);
    }

    else
    {

      v43 = *(v38 + 8);
      v43(v36, v37);
    }

    *(v0 + 632) = v43;
    *(v0 + 640) = *(*(v0 + 240) + 112);
    v52 = swift_task_alloc();
    *(v0 + 648) = v52;
    *v52 = v0;
    v52[1] = sub_1D89E3130;
    v53 = *(v0 + 312);
    v54 = *(v0 + 232);

    return sub_1D8A82780(v53, v54, v0 + 152);
  }

  v45 = *(v0 + 440);
  v8(v45, *(v0 + 232), *(v0 + 488));
  *(v45 + *(v5 + 20)) = v9;
  v46 = *(v7 + v10);
  v47 = *(v46 + 16);

  v48 = *(v0 + 440);
  if (v47)
  {

    v49 = sub_1D87F0134(v48);
    v48 = *(v0 + 440);
    if (v50)
    {
      sub_1D87A0E38(*(v46 + 56) + *(*(v0 + 352) + 72) * v49, *(v0 + 336), &qword_1ECA65B78);
      sub_1D8A014F0(v48, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);

      v51 = 0;
      goto LABEL_21;
    }
  }

  sub_1D8A014F0(v48, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  v51 = 1;
LABEL_21:
  v56 = *(v0 + 344);
  v57 = *(v0 + 352);
  v58 = *(v0 + 336);
  v59 = *(v57 + 56);
  *(v0 + 608) = v59;
  v59(v58, v51, 1, v56);
  v60 = *(v57 + 48);
  *(v0 + 616) = v60;
  *(v0 + 624) = (v57 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v60(v58, 1, v56))
  {
    v61 = *(v0 + 336);
    v62 = &qword_1ECA65F08;
LABEL_27:
    sub_1D87A14E4(v61, v62);
    v81 = swift_task_alloc();
    *(v0 + 736) = v81;
    *v81 = v0;
    v81[1] = sub_1D89E50C8;
    v82 = *(v0 + 232);
    v83 = *(v0 + 224);

    return sub_1D89E5E8C(v82, v83);
  }

  v63 = *(v0 + 384);
  v64 = *(v0 + 392);
  v65 = *(v0 + 336);
  sub_1D87A0E38(v65, v64, &qword_1ECA65B78);
  sub_1D87A14E4(v65, &qword_1ECA65F08);
  sub_1D881F6FC(v64, v63, &qword_1ECA65B78);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v61 = *(v0 + 384);
    v62 = &qword_1ECA67110;
    goto LABEL_27;
  }

  v66 = *(v0 + 568);
  v67 = *(v0 + 528);
  v68 = *(v0 + 488);
  *(v0 + 680) = CACurrentMediaTime();
  *(v0 + 688) = qword_1ECA66BD0;
  v8(v67, v66, v68);
  v69 = sub_1D8B151C0();
  v70 = sub_1D8B161F0();
  v71 = os_log_type_enabled(v69, v70);
  v72 = *(v0 + 528);
  v74 = *(v0 + 488);
  v73 = *(v0 + 496);
  if (v71)
  {
    v75 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v93[0] = v92;
    *v75 = 136315138;
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v76 = sub_1D8B16B50();
    v78 = v77;
    v79 = *(v73 + 8);
    v79(v72, v74);
    v80 = sub_1D89AC714(v76, v78, v93);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_1D8783000, v69, v70, "Identifier %s is already in the queue. Waiting for it to complete before returning the cached value.", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x1DA721330](v92, -1, -1);
    MEMORY[0x1DA721330](v75, -1, -1);
  }

  else
  {

    v79 = *(v73 + 8);
    v79(v72, v74);
  }

  *(v0 + 696) = v79;
  *(v0 + 704) = 0;
  v86 = sub_1D8B16E30();
  v88 = v87;
  _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
  *(v0 + 136) = v86;
  *(v0 + 144) = v88;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1D89E4230, 0, 0);
}

uint64_t sub_1D89E3130(uint64_t a1, double a2)
{
  v5 = *v3;
  *(*v3 + 656) = a2;

  v6 = *(v5 + 640);
  if (v2)
  {
    *(v5 + 664) = *(v5 + 152);
    v7 = sub_1D89E3270;
  }

  else
  {
    v8 = *(v5 + 456);
    *(v5 + 672) = a1;
    *(v5 + 132) = *(v8 + 48);
    v7 = sub_1D89E3728;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D89E328C()
{
  *(v0 + 160) = *(v0 + 664);
  sub_1D8A026F8();
  v1 = sub_1D8B16B70();
  v2 = *(v0 + 664);
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v2;
  }

  *(v0 + 168) = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  v6 = swift_dynamicCast();
  v7 = v3;
  v8 = *(v0 + 592);
  v9 = *(v0 + 576);
  v17 = *(v0 + 568);
  v18 = *(v0 + 632);
  v10 = *(v0 + 488);
  v11 = *(v0 + 432);
  v12 = *(v0 + 408);
  v16 = *(v0 + 328);
  v13 = *(v0 + 232);
  if (v6)
  {

    v20 = *(v0 + 176);
    v9(v11, v13, v10);
    *(v11 + *(v12 + 20)) = v8;
    swift_beginAccess();

    sub_1D8AFD470(v11);
    sub_1D8A014F0(v11, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    sub_1D87A14E4(v16, &qword_1ECA65F08);
    swift_endAccess();
    *(v0 + 192) = v20;
    sub_1D8883C24();
    swift_willThrowTypedImpl();
    v18(v17, v10);
  }

  else
  {
    v20 = v7;

    v9(v11, v13, v10);
    *(v11 + *(v12 + 20)) = v8;
    swift_beginAccess();

    sub_1D8AFD470(v11);
    sub_1D8A014F0(v11, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    sub_1D87A14E4(v16, &qword_1ECA65F08);
    swift_endAccess();
    *(v0 + 184) = v20;
    sub_1D8883C24();
    swift_willThrowTypedImpl();
    v18(v17, v10);
  }

  v19 = *(v0 + 248);

  *v19 = v20;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D89E3728()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 472);
  v3 = *(v0 + 240);
  sub_1D881F6FC(*(v0 + 312), v2 + *(v0 + 132), &qword_1ECA67108);
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D89E37C0, v3, 0);
}

uint64_t sub_1D89E37C0()
{
  v67 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 488);
  if (*(v1 + qword_1ECA66BE0) <= *(v0 + 656))
  {
    v63 = qword_1ECA66BE0;
    v2(*(v0 + 544), v3, v4);

    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16200();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 632);
    v21 = *(v0 + 544);
    v22 = *(v0 + 488);
    if (v19)
    {
      v58 = v18;
      v23 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v66[0] = v55;
      *v23 = 136315394;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v24 = sub_1D8B16B50();
      v26 = v25;
      v20(v21, v22);
      v27 = sub_1D89AC714(v24, v26, v66);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = *(v1 + v63);
      _os_log_impl(&dword_1D8783000, v17, v58, "Setting lastDispatchTime after processing %s. lastDispatchTime: %f", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1DA721330](v55, -1, -1);
      MEMORY[0x1DA721330](v23, -1, -1);
    }

    else
    {

      v20(v21, v22);
    }

    v28 = v63;
    v65 = *(v0 + 632);
    v51 = *(v0 + 592);
    v40 = *(v0 + 576);
    v60 = *(v0 + 568);
    v41 = *(v0 + 488);
    v42 = *(v0 + 432);
    v43 = *(v0 + 408);
    v44 = *(v0 + 352);
    v52 = *(v0 + 472);
    v53 = *(v0 + 344);
    v45 = *(v0 + 328);
    v46 = *(v0 + 232);
    v57 = *(v0 + 216);
    *(v1 + v28) = *(v0 + 656);
    v47 = CACurrentMediaTime();
    v40(v42, v46, v41);
    *(v42 + *(v43 + 20)) = v51;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67120) + 48);
    sub_1D87A0E38(v52, v45, &qword_1ECA67110);
    *(v45 + v48) = v47 + 10.0;
    swift_storeEnumTagMultiPayload();
    (*(v44 + 56))(v45, 0, 1, v53);
    swift_beginAccess();

    sub_1D895E71C(v45, v42);
    sub_1D89E5684(v47);
    swift_endAccess();
    v65(v60, v41);
    sub_1D881F6FC(v52, v57, &qword_1ECA67110);

    v49 = *(v0 + 8);
  }

  else
  {
    v2(*(v0 + 536), v3, v4);
    v5 = sub_1D8B151C0();
    v6 = sub_1D8B16210();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 632);
    v9 = *(v0 + 536);
    v10 = *(v0 + 488);
    if (v7)
    {
      v62 = *(v0 + 632);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v66[0] = v12;
      *v11 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v13 = sub_1D8B16B50();
      v15 = v14;
      v62(v9, v10);
      v16 = sub_1D89AC714(v13, v15, v66);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1D8783000, v5, v6, "lastDispatchTime should only increase after running. This means that something made it out of the queue while processing occurred ... and that shouldn't happen. For identifier %s.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1DA721330](v12, -1, -1);
      MEMORY[0x1DA721330](v11, -1, -1);
    }

    else
    {

      v8(v9, v10);
    }

    v29 = *(v0 + 472);
    sub_1D8883C24();
    v30 = swift_allocError();
    *v31 = 2;
    swift_willThrow();
    sub_1D87A14E4(v29, &qword_1ECA67110);
    *(v0 + 168) = v30;
    v64 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    v33 = swift_dynamicCast();
    v34 = *(v0 + 592);
    v35 = *(v0 + 576);
    v56 = *(v0 + 568);
    v59 = *(v0 + 632);
    v36 = *(v0 + 488);
    v37 = *(v0 + 432);
    v38 = *(v0 + 408);
    v54 = *(v0 + 328);
    v39 = *(v0 + 232);
    if (v33)
    {

      v64 = *(v0 + 176);
      v35(v37, v39, v36);
      *(v37 + *(v38 + 20)) = v34;
      swift_beginAccess();

      sub_1D8AFD470(v37);
      sub_1D8A014F0(v37, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D87A14E4(v54, &qword_1ECA65F08);
      swift_endAccess();
      *(v0 + 192) = v64;
      swift_willThrowTypedImpl();
      v59(v56, v36);
    }

    else
    {

      v35(v37, v39, v36);
      *(v37 + *(v38 + 20)) = v34;
      swift_beginAccess();

      sub_1D8AFD470(v37);
      sub_1D8A014F0(v37, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D87A14E4(v54, &qword_1ECA65F08);
      swift_endAccess();
      *(v0 + 184) = v64;
      swift_willThrowTypedImpl();
      v59(v56, v36);
    }

    v61 = *(v0 + 248);

    *v61 = v64;
    v49 = *(v0 + 8);
  }

  return v49();
}

uint64_t sub_1D89E4230()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = sub_1D8A011DC(&qword_1EE0E3670, MEMORY[0x1E69E8820]);
  sub_1D8B16C40();
  sub_1D8A011DC(&qword_1EE0E3678, MEMORY[0x1E69E87E8]);
  sub_1D8B16890();
  v5 = *(v2 + 8);
  v0[89] = v5;
  v0[90] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[91] = v6;
  *v6 = v0;
  v6[1] = sub_1D89E43B8;
  v8 = v0[35];
  v7 = v0[36];

  return MEMORY[0x1EEE6DE58](v8, v0 + 14, v7, v4);
}

uint64_t sub_1D89E43B8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[89];
    v4 = v2[35];
    v5 = v2[32];

    v3(v4, v5);
    v6 = sub_1D89E4538;
    v7 = 0;
  }

  else
  {
    v8 = v2[89];
    v10 = v2[37];
    v9 = v2[38];
    v11 = v2[35];
    v12 = v2[36];
    v13 = v2[32];
    v14 = v2[30];
    v8(v11, v13);
    (*(v10 + 8))(v9, v12);
    v6 = sub_1D8A02878;
    v7 = v14;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1D89E4538()
{
  v1 = v0[30];
  (*(v0[37] + 8))(v0[38], v0[36]);

  return MEMORY[0x1EEE6DFA0](sub_1D89E45B4, v1, 0);
}

uint64_t sub_1D89E45B4()
{
  v84 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 240);
  (*(v0 + 576))(v3, *(v0 + 232), *(v0 + 488));
  *(v3 + *(v4 + 20)) = v2;
  v6 = *(v5 + v1);
  v7 = *(v6 + 16);

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 424);

  v9 = sub_1D87F0134(v8);
  if ((v10 & 1) == 0)
  {

LABEL_7:
    sub_1D8A014F0(*(v0 + 424), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    goto LABEL_8;
  }

  v11 = *(v0 + 424);
  sub_1D87A0E38(*(v6 + 56) + *(*(v0 + 352) + 72) * v9, *(v0 + 376), &qword_1ECA65B78);
  sub_1D8A014F0(v11, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v12 = *(v0 + 576);
    v13 = *(v0 + 568);
    v14 = *(v0 + 520);
    v15 = *(v0 + 488);
    sub_1D881F6FC(*(v0 + 376), *(v0 + 464), &qword_1ECA67110);
    v12(v14, v13, v15);
    v16 = sub_1D8B151C0();
    v17 = sub_1D8B161F0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 696);
    if (v18)
    {
      v20 = *(v0 + 680);
      v80 = *(v0 + 568);
      v21 = *(v0 + 520);
      v22 = *(v0 + 488);
      v23 = *(v0 + 696);
      v24 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v83[0] = v78;
      *v24 = 136315394;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v25 = sub_1D8B16B50();
      v27 = v26;
      v23(v21, v22);
      v28 = sub_1D89AC714(v25, v27, v83);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = CACurrentMediaTime() - v20;
      _os_log_impl(&dword_1D8783000, v16, v17, "Returning cached output for identifier %s after waiting %f seconds.", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1DA721330](v78, -1, -1);
      MEMORY[0x1DA721330](v24, -1, -1);

      v23(v80, v22);
    }

    else
    {
      v70 = *(v0 + 568);
      v71 = *(v0 + 520);
      v72 = *(v0 + 488);

      v19(v71, v72);
      v19(v70, v72);
    }

    sub_1D881F6FC(*(v0 + 464), *(v0 + 216), &qword_1ECA67110);

    v65 = *(v0 + 8);
    goto LABEL_22;
  }

  sub_1D87A14E4(*(v0 + 376), &qword_1ECA65B78);
LABEL_8:
  v29 = *(v0 + 600);
  v30 = *(v0 + 592);
  v32 = *(v0 + 408);
  v31 = *(v0 + 416);
  v33 = *(v0 + 240);
  (*(v0 + 576))(v31, *(v0 + 232), *(v0 + 488));
  *(v31 + *(v32 + 20)) = v30;
  v34 = *(v33 + v29);
  v35 = *(v34 + 16);

  v36 = *(v0 + 416);
  if (v35)
  {

    v37 = sub_1D87F0134(v36);
    v36 = *(v0 + 416);
    if (v38)
    {
      sub_1D87A0E38(*(v34 + 56) + *(*(v0 + 352) + 72) * v37, *(v0 + 320), &qword_1ECA65B78);
      sub_1D8A014F0(v36, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);

      v39 = 0;
      goto LABEL_13;
    }
  }

  sub_1D8A014F0(v36, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  v39 = 1;
LABEL_13:
  v40 = *(v0 + 616);
  v41 = *(v0 + 344);
  v42 = *(v0 + 320);
  (*(v0 + 608))(v42, v39, 1, v41);
  if (v40(v42, 1, v41))
  {
    v43 = *(v0 + 320);
    v44 = &qword_1ECA65F08;
LABEL_20:
    sub_1D87A14E4(v43, v44);
    v62 = *(v0 + 696);
    v63 = *(v0 + 568);
    v64 = *(v0 + 488);
    v82 = 1;
    *(v0 + 200) = 1;
    sub_1D8883C24();
    swift_willThrowTypedImpl();
    v62(v63, v64);
LABEL_21:
    v79 = *(v0 + 248);

    *v79 = v82;
    v65 = *(v0 + 8);
LABEL_22:

    return v65();
  }

  v45 = *(v0 + 360);
  v46 = *(v0 + 368);
  v47 = *(v0 + 320);
  sub_1D87A0E38(v47, v46, &qword_1ECA65B78);
  sub_1D87A14E4(v47, &qword_1ECA65F08);
  sub_1D881F6FC(v46, v45, &qword_1ECA65B78);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v43 = *(v0 + 360);
    v44 = &qword_1ECA67110;
    goto LABEL_20;
  }

  v48 = *(v0 + 704);
  v49 = CACurrentMediaTime();
  if (v48 == 3)
  {
    (*(v0 + 576))(*(v0 + 512), *(v0 + 568), *(v0 + 488), v49);
    v50 = sub_1D8B151C0();
    v51 = sub_1D8B16210();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 696);
    if (v52)
    {
      v54 = *(v0 + 680);
      v55 = *(v0 + 512);
      v56 = *(v0 + 488);
      v57 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v83[0] = v81;
      *v57 = 136315394;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v58 = sub_1D8B16B50();
      v60 = v59;
      v53(v55, v56);
      v61 = sub_1D89AC714(v58, v60, v83);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2048;
      *(v57 + 14) = CACurrentMediaTime() - v54;
      _os_log_impl(&dword_1D8783000, v50, v51, "Cached output for %s still not available after waiting %f seconds.", v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1DA721330](v81, -1, -1);
      MEMORY[0x1DA721330](v57, -1, -1);
    }

    else
    {
      v73 = *(v0 + 512);
      v74 = *(v0 + 488);

      v53(v73, v74);
    }

    v75 = *(v0 + 696);
    v76 = *(v0 + 568);
    v77 = *(v0 + 488);
    *(v0 + 208) = 0;
    sub_1D8883C24();
    swift_willThrowTypedImpl();
    v75(v76, v77);
    v82 = 0;
    goto LABEL_21;
  }

  ++*(v0 + 704);
  v67 = sub_1D8B16E30();
  v69 = v68;
  _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
  *(v0 + 136) = v67;
  *(v0 + 144) = v69;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1D89E4230, 0, 0);
}

uint64_t sub_1D89E50C8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 240);
  if (v1)
  {
    *(v5 + 744) = a1;
    v7 = sub_1D89E5474;
  }

  else
  {
    v7 = sub_1D89E5200;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D89E5200()
{
  v20 = v0;
  (*(v0 + 576))(*(v0 + 504), *(v0 + 568), *(v0 + 488));

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v6 = *(v0 + 488);
  if (v3)
  {
    v18 = *(v0 + 240);
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v7 = 136315394;
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v8 = sub_1D8B16B50();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_1D89AC714(v8, v10, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v18 + qword_1ECA66BE0);
    _os_log_impl(&dword_1D8783000, v1, v2, "Left queue after waiting for identifier %s. lastDispatchTime: %f", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1DA721330](v17, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  else
  {

    v11 = *(v5 + 8);
    v11(v4, v6);
  }

  *(v0 + 632) = v11;
  *(v0 + 640) = *(*(v0 + 240) + 112);
  v13 = swift_task_alloc();
  *(v0 + 648) = v13;
  *v13 = v0;
  v13[1] = sub_1D89E3130;
  v14 = *(v0 + 312);
  v15 = *(v0 + 232);

  return sub_1D8A82780(v14, v15, v0 + 152);
}

uint64_t sub_1D89E5474()
{
  (*(v0[62] + 8))(v0[71], v0[61]);
  v4 = v0[93];
  v3 = v0[31];

  *v3 = v4;
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D89E5684(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67128);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v60 - v10;
  v72 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v12 = *(v72 - 8);
  v13 = MEMORY[0x1EEE9AC00](v72);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67130);
  v19 = MEMORY[0x1EEE9AC00](v76);
  v65 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v77 = &v60 - v21;
  v64 = v1;
  v22 = *v1;
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = (v24 + 63) >> 6;
  v75 = v12;
  v68 = (v12 + 48);
  v69 = (v12 + 56);

  v29 = 0;
  v66 = MEMORY[0x1E69E7CC0];
  v70 = v27;
  v71 = v22 + 64;
  v73 = v11;
  v74 = v5;
  while (1)
  {
    v30 = v29;
    if (!v26)
    {
      break;
    }

    v31 = v8;
LABEL_10:
    v32 = __clz(__rbit64(v26)) | (v29 << 6);
    v33 = *(v22 + 48);
    v67 = *(v75 + 72);
    v34 = v77;
    sub_1D8A01488(v33 + v67 * v32, v77, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    v35 = *(v22 + 56) + *(v78 + 72) * v32;
    v36 = *(v76 + 48);
    sub_1D87A0E38(v35, v34 + v36, &qword_1ECA65B78);
    v8 = v31;
    sub_1D87A0E38(v34 + v36, v31, &qword_1ECA65B78);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v37 = *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67120) + 48));
      v38 = v73;
      v5 = v74;
      if (v37 >= a1)
      {
        v41 = v72;
        (*v69)(v73, 1, 1, v72);
      }

      else
      {
        v39 = v65;
        sub_1D87A0E38(v77, v65, &qword_1ECA67130);
        v40 = *(v76 + 48);
        sub_1D8A01550(v39, v38, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v41 = v72;
        (*v69)(v38, 0, 1, v72);
        sub_1D87A14E4(v39 + v40, &qword_1ECA65B78);
      }

      sub_1D87A14E4(v8, &qword_1ECA67110);
    }

    else
    {
      v42 = v72;
      v38 = v73;
      (*v69)(v73, 1, 1, v72);
      v41 = v42;
      sub_1D87A14E4(v8, &qword_1ECA65B78);
      v5 = v74;
    }

    v27 = v70;
    v23 = v71;
    v26 &= v26 - 1;
    sub_1D87A14E4(v77, &qword_1ECA67130);
    if ((*v68)(v38, 1, v41) == 1)
    {
      result = sub_1D87A14E4(v38, &qword_1ECA67128);
    }

    else
    {
      v61 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key;
      v43 = v62;
      sub_1D8A01550(v38, v62, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D8A01550(v43, v63, v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1D87C85DC(0, v66[2] + 1, 1, v66);
      }

      v45 = v66[2];
      v44 = v66[3];
      v46 = (v45 + 1);
      if (v45 >= v44 >> 1)
      {
        v61 = (v45 + 1);
        v48 = sub_1D87C85DC(v44 > 1, v45 + 1, 1, v66);
        v46 = v61;
        v66 = v48;
      }

      v47 = v66;
      v66[2] = v46;
      result = sub_1D8A01550(v63, v47 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + v45 * v67, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    }
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v29);
    ++v30;
    if (v26)
    {
      v31 = v8;
      goto LABEL_10;
    }
  }

  v49 = v66[2];
  if (v49)
  {
    v50 = v66 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v51 = (v78 + 56);
    v52 = *(v75 + 72);
    v53 = v64;
    do
    {
      sub_1D8A01488(v50, v18, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      v55 = sub_1D87F0134(v18);
      if (v56)
      {
        v57 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = *v53;
        v80 = *v53;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1D8968E84();
          v59 = v80;
        }

        sub_1D8A014F0(*(v59 + 48) + v57 * v52, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        sub_1D881F6FC(*(v59 + 56) + *(v78 + 72) * v57, v5, &qword_1ECA65B78);
        sub_1D8AF219C(v57, v59);
        sub_1D8A014F0(v18, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v54 = 0;
        *v53 = v59;
      }

      else
      {
        sub_1D8A014F0(v18, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v54 = 1;
      }

      (*v51)(v5, v54, 1, v79);
      sub_1D87A14E4(v5, &qword_1ECA65F08);
      v50 += v52;
      --v49;
    }

    while (v49);
  }
}

uint64_t sub_1D89E5E8C(uint64_t a1, double a2)
{
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  *(v3 + 200) = a2;
  v4 = sub_1D8B16880();
  *(v3 + 224) = v4;
  *(v3 + 232) = *(v4 - 8);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
  *(v3 + 256) = v5;
  *(v3 + 264) = *(v5 - 8);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F08);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  v6 = sub_1D8B13240();
  *(v3 + 376) = v6;
  *(v3 + 384) = *(v6 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89E6160, v2, 0);
}

uint64_t sub_1D89E6160()
{
  v150 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 328);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v3 + 16);
  *(v0 + 472) = v8;
  *(v0 + 480) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v2);
  v8(v4, v6, v2);
  v9 = *(v6 + *(type metadata accessor for VisualIntelligenceRateLimitedInput(0) + 28));
  *(v0 + 488) = v9;
  v145 = v5;
  *(v4 + *(v5 + 20)) = v9;
  v10 = qword_1ECA66BE8;
  *(v0 + 496) = qword_1ECA66BE8;
  swift_beginAccess();
  v11 = *(v7 + v10);
  if (*(v11 + 16))
  {
    v12 = *(v0 + 368);

    v13 = sub_1D87F0134(v12);
    v14 = *(v0 + 320);
    v15 = *(v0 + 256);
    v16 = *(v0 + 264);
    if (v17)
    {
      sub_1D87A0E38(*(v11 + 56) + *(v16 + 72) * v13, *(v0 + 320), &qword_1ECA65B78);
      v18 = v14;
      v19 = *(v16 + 56);
      v19(v18, 0, 1, v15);
    }

    else
    {
      v19 = *(v16 + 56);
      v19(*(v0 + 320), 1, 1, v15);
    }
  }

  else
  {
    v19 = *(*(v0 + 264) + 56);
    v19(*(v0 + 320), 1, 1, *(v0 + 256));
  }

  *(v0 + 504) = v19;
  v20 = *(v0 + 320);
  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  sub_1D8A014F0(*(v0 + 368), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  v23 = *(v22 + 48);
  *(v0 + 512) = v23;
  *(v0 + 520) = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v144 = v23;
  LODWORD(v21) = v23(v20, 1, v21);
  sub_1D87A14E4(v20, &qword_1ECA65F08);
  if (v21 != 1)
  {
    v49 = *(v0 + 464);
    v50 = *(v0 + 376);
    v51 = *(v0 + 384);
    *(v0 + 160) = 0;
    sub_1D8883C24();
    swift_willThrowTypedImpl();
    (*(v51 + 8))(v49, v50);
LABEL_19:

    v52 = *(v0 + 8);

    return v52(0);
  }

  v24 = *(v0 + 216);
  v25 = CACurrentMediaTime();
  v26 = qword_1ECA66BE0;
  *(v0 + 528) = qword_1ECA66BE0;
  v27 = *(v24 + v26);

  v29 = sub_1D89E9EFC(v28);

  if (__OFSUB__(v29, 10))
  {
    __break(1u);
    return result;
  }

  v31 = 10;
  if (v29 < 10)
  {
    v31 = v29;
  }

  v32 = v27 + 0.5;
  v33 = v27 + 0.5 + vcvtd_n_f64_s64(v31, 1uLL) + ((v29 - 10) & ~((v29 - 10) >> 63)) * 0.6;
  if (v25 < v32 || v29 != 0)
  {
    v35 = *(v0 + 464);
    v36 = *(v0 + 376);
    if (v33 > v25 + *(v0 + 200))
    {
      v8(*(v0 + 448), v35, v36);
      v37 = sub_1D8B151C0();
      v38 = sub_1D8B161F0();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 448);
      v42 = *(v0 + 376);
      v41 = *(v0 + 384);
      if (v39)
      {
        v43 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v149[0] = v146;
        *v43 = 136315650;
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
        v44 = sub_1D8B16B50();
        v46 = v45;
        v47 = *(v41 + 8);
        v47(v40, v42);
        v48 = sub_1D89AC714(v44, v46, v149);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2048;
        *(v43 + 14) = v25;
        *(v43 + 22) = 2048;
        *(v43 + 24) = v33;
        _os_log_impl(&dword_1D8783000, v37, v38, "Deferring dispatch request %s for rate limiting at %f, dispatch again at %f", v43, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v146);
        MEMORY[0x1DA721330](v146, -1, -1);
        MEMORY[0x1DA721330](v43, -1, -1);
      }

      else
      {

        v47 = *(v41 + 8);
        v47(v40, v42);
      }

      v60 = *(v0 + 464);
      v61 = *(v0 + 376);
      *(v0 + 168) = 0;
      sub_1D8883C24();
      swift_willThrowTypedImpl();
      v47(v60, v61);
      goto LABEL_19;
    }

    v142 = v19;
    v8(*(v0 + 456), v35, v36);
    v53 = sub_1D8B151C0();
    v138 = sub_1D8B161F0();
    v139 = v53;
    v54 = os_log_type_enabled(v53, v138);
    v55 = *(v0 + 456);
    v56 = *(v0 + 384);
    v140 = *(v0 + 376);
    if (v54)
    {
      buf = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v149[0] = v137;
      *buf = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v57 = sub_1D8B16B50();
      v134 = v58;
      v135 = v57;
      (*(v56 + 8))(v55, v140);
      v59 = sub_1D89AC714(v135, v134, v149);

      *(buf + 4) = v59;
      _os_log_impl(&dword_1D8783000, v139, v138, "Adding dispatch request %s to the dispatch queue.", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v137);
      MEMORY[0x1DA721330](v137, -1, -1);
      MEMORY[0x1DA721330](buf, -1, -1);
    }

    else
    {

      (*(v56 + 8))(v55, v140);
    }

    v62 = *(v0 + 360);
    v63 = *(v0 + 280);
    v141 = *(v0 + 272);
    v8(v62, *(v0 + 208), *(v0 + 376));
    *(v62 + *(v145 + 20)) = v9;
    *v63 = v33 + 0.199;
    v63[1] = v25;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v63, v141, &qword_1ECA65B78);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149[0] = *(v7 + v10);
    *(v7 + v10) = 0x8000000000000000;
    sub_1D8B05138(v141, v62, isUniquelyReferenced_nonNull_native);
    sub_1D8A014F0(v62, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v7 + v10) = v149[0];
    swift_endAccess();
    v19 = v142;
  }

  v65 = *(v0 + 352);
  v8(v65, *(v0 + 208), *(v0 + 376));
  *(v65 + *(v145 + 20)) = v9;
  v66 = *(v7 + v10);
  if (*(v66 + 16))
  {
    v143 = v19;
    v67 = *(v0 + 352);

    v68 = sub_1D87F0134(v67);
    v69 = *(v0 + 312);
    v70 = *(v0 + 256);
    if (v71)
    {
      sub_1D87A0E38(*(v66 + 56) + *(*(v0 + 264) + 72) * v68, *(v0 + 312), &qword_1ECA65B78);
      v72 = v69;
      v73 = 0;
    }

    else
    {
      v72 = *(v0 + 312);
      v73 = 1;
    }

    v19 = v143;
    v143(v72, v73, 1, v70);
  }

  else
  {
    v19(*(v0 + 312), 1, 1, *(v0 + 256));
  }

  v74 = *(v0 + 312);
  v75 = *(v0 + 256);
  sub_1D8A014F0(*(v0 + 352), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  LODWORD(v75) = v144(v74, 1, v75);
  sub_1D87A14E4(v74, &qword_1ECA65F08);
  if (v75 == 1)
  {
    v8(*(v0 + 440), *(v0 + 464), *(v0 + 376));
    v76 = sub_1D8B151C0();
    v77 = sub_1D8B161F0();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 440);
    v80 = *(v0 + 376);
    v81 = *(v0 + 384);
    if (v78)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v149[0] = v83;
      *v82 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v84 = sub_1D8B16B50();
      v86 = v85;
      v147 = *(v81 + 8);
      v147(v79, v80);
      v87 = sub_1D89AC714(v84, v86, v149);

      *(v82 + 4) = v87;
      _os_log_impl(&dword_1D8783000, v76, v77, "Dispatch request %s did not enter the queue and went straight to processing.", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x1DA721330](v83, -1, -1);
      MEMORY[0x1DA721330](v82, -1, -1);
    }

    else
    {

      v147 = *(v81 + 8);
      v147(v79, v80);
    }

    v97 = *(v0 + 488);
    v98 = *(v0 + 496);
    v99 = *(v0 + 472);
    v133 = *(v0 + 464);
    v100 = *(v0 + 376);
    v101 = *(v0 + 360);
    v102 = *(v0 + 328);
    v103 = *(v0 + 280);
    v104 = *(v0 + 272);
    v105 = *(v0 + 208);
    v106 = *(v0 + 216);
    *(v106 + *(v0 + 528)) = v25;
    v99(v101, v105, v100);
    *(v101 + *(v102 + 20)) = v97;
    *v103 = v25 + 0.199;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v103, v104, &qword_1ECA65B78);

    v107 = swift_isUniquelyReferenced_nonNull_native();
    v149[0] = *(v106 + v98);
    *(v106 + v98) = 0x8000000000000000;
    sub_1D8B05138(v104, v101, v107);
    sub_1D8A014F0(v101, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v106 + v98) = v149[0];
    swift_endAccess();
    v147(v133, v100);

    v108 = *(v0 + 8);

    return v108();
  }

  v88 = *(v0 + 344);
  v8(v88, *(v0 + 208), *(v0 + 376));
  *(v88 + *(v145 + 20)) = v9;
  v89 = *(v7 + v10);
  if (*(v89 + 16))
  {
    v90 = *(v0 + 344);

    v91 = sub_1D87F0134(v90);
    v92 = *(v0 + 304);
    v93 = *(v0 + 256);
    if (v94)
    {
      sub_1D87A0E38(*(v89 + 56) + *(*(v0 + 264) + 72) * v91, *(v0 + 304), &qword_1ECA65B78);
      v95 = v92;
      v96 = 0;
    }

    else
    {
      v95 = *(v0 + 304);
      v96 = 1;
    }

    v19(v95, v96, 1, v93);
  }

  else
  {
    v19(*(v0 + 304), 1, 1, *(v0 + 256));
  }

  v109 = *(v0 + 304);
  v110 = *(v0 + 256);
  sub_1D8A014F0(*(v0 + 344), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  v111 = v144(v109, 1, v110);
  v112 = *(v0 + 304);
  if (v111 == 1)
  {
    v113 = &qword_1ECA65F08;
LABEL_51:
    sub_1D87A14E4(v112, v113);
    return sub_1D8B168C0();
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v113 = &qword_1ECA65B78;
    goto LABEL_51;
  }

  v114 = *(v0 + 464);
  v115 = *(v0 + 432);
  v116 = *(v0 + 376);
  *(v0 + 536) = qword_1ECA66BD0;
  v8(v115, v114, v116);
  v117 = sub_1D8B151C0();
  v118 = sub_1D8B161F0();
  v119 = os_log_type_enabled(v117, v118);
  v120 = *(v0 + 432);
  v122 = *(v0 + 376);
  v121 = *(v0 + 384);
  if (v119)
  {
    v123 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v149[0] = v148;
    *v123 = 136315394;
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v124 = sub_1D8B16B50();
    v126 = v125;
    v127 = *(v121 + 8);
    v127(v120, v122);
    v128 = sub_1D89AC714(v124, v126, v149);

    *(v123 + 4) = v128;
    *(v123 + 12) = 2048;
    *(v123 + 14) = v33 - v25;
    _os_log_impl(&dword_1D8783000, v117, v118, "Dispatch request %s Entered the queue to wait for %f seconds.", v123, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v148);
    MEMORY[0x1DA721330](v148, -1, -1);
    MEMORY[0x1DA721330](v123, -1, -1);
  }

  else
  {

    v127 = *(v121 + 8);
    v127(v120, v122);
  }

  *(v0 + 544) = v127;
  v129 = sub_1D8B16E30();
  v131 = v130;
  _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
  v132 = swift_task_alloc();
  *(v0 + 552) = v132;
  *v132 = v0;
  v132[1] = sub_1D89E737C;

  return (sub_1D8A0077C)(v129, v131, 0, 0, 1);
}

uint64_t sub_1D89E737C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[31];
  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {

    v8 = *(v5 + 8);
    v3[71] = v8;
    v8(v4, v6);
    v9 = sub_1D89E8618;
  }

  else
  {
    v10 = *(v5 + 8);
    v3[70] = v10;
    v10(v4, v6);
    v9 = sub_1D89E7534;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, 0);
}

uint64_t sub_1D89E7534()
{
  v116 = v0;
  *(v0 + 576) = *(v0 + 560);
  v1 = *(v0 + 208);
  v2 = *(*(v0 + 216) + *(v0 + 496));

  v3 = sub_1D89EA0E4(v1, v2);
  v5 = v4;

  if (v5)
  {
    (*(v0 + 472))(*(v0 + 424), *(v0 + 464), *(v0 + 376));
    v6 = sub_1D8B151C0();
    v7 = sub_1D8B16210();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 544);
    v10 = *(v0 + 424);
    v11 = *(v0 + 376);
    if (v8)
    {
LABEL_3:
      v113 = *(v0 + 544);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v115[0] = v13;
      *v12 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v14 = sub_1D8B16B50();
      v16 = v15;
      v113(v10, v11);
      v17 = sub_1D89AC714(v14, v16, v115);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D8783000, v6, v7, "Dispatch request %s unexpectedly left the queue. This shouldn't happen", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1DA721330](v13, -1, -1);
      MEMORY[0x1DA721330](v12, -1, -1);

LABEL_9:
      v115[0] = 0;
      v115[1] = 0xE000000000000000;
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000011, 0x80000001D8B46ED0);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v37 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v37);

      MEMORY[0x1DA71EFA0](0xD000000000000033, 0x80000001D8B46EF0);
      return sub_1D8B168C0();
    }

LABEL_8:

    v9(v10, v11);
    goto LABEL_9;
  }

  if (v3)
  {
    v114 = (v0 + 176);
    v18 = *(v0 + 488);
    v19 = *(v0 + 472);
    v107 = *(v0 + 416);
    v109 = *(v0 + 464);
    v20 = *(v0 + 376);
    v21 = *(v0 + 360);
    v22 = *(v0 + 328);
    v23 = *(v0 + 296);
    v19(v21, *(v0 + 208), v20);
    *(v21 + *(v22 + 20)) = v18;
    swift_beginAccess();

    sub_1D8AFD470(v21);
    sub_1D8A014F0(v21, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    sub_1D87A14E4(v23, &qword_1ECA65F08);
    swift_endAccess();
    v19(v107, v109, v20);
    v24 = sub_1D8B151C0();
    v25 = sub_1D8B16210();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 544);
    v28 = *(v0 + 416);
    v29 = *(v0 + 376);
    if (v26)
    {
      v111 = *(v0 + 544);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v115[0] = v31;
      *v30 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v32 = sub_1D8B16B50();
      v34 = v33;
      v111(v28, v29);
      v35 = sub_1D89AC714(v32, v34, v115);

      *(v30 + 4) = v35;
      v36 = "Dispatch request %s did not move to the front of the queue.";
LABEL_7:
      _os_log_impl(&dword_1D8783000, v24, v25, v36, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1DA721330](v31, -1, -1);
      MEMORY[0x1DA721330](v30, -1, -1);

LABEL_15:
      v54 = *(v0 + 544);
      v55 = *(v0 + 464);
      v56 = *(v0 + 376);
      *v114 = 1;
      sub_1D8883C24();
      swift_willThrowTypedImpl();
      v54(v55, v56);

      v57 = *(v0 + 8);

      return v57(1);
    }

    goto LABEL_14;
  }

  v39 = *(v0 + 528);
  v40 = *(v0 + 216);
  v41 = CACurrentMediaTime();
  v42 = *(v40 + v39) + 0.5;
  if (v41 >= v42)
  {
    v106 = *(v0 + 544);
    v58 = *(v0 + 488);
    v59 = *(v0 + 496);
    v60 = *(v0 + 472);
    v105 = *(v0 + 464);
    v61 = *(v0 + 376);
    v62 = *(v0 + 360);
    v63 = *(v0 + 328);
    v64 = *(v0 + 280);
    v65 = *(v0 + 272);
    v66 = *(v0 + 208);
    v67 = *(v0 + 216);
    *(v67 + *(v0 + 528)) = v41;
    v68 = v41;
    v60(v62, v66, v61);
    *(v62 + *(v63 + 20)) = v58;
    *v64 = v68 + 0.199;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v64, v65, &qword_1ECA65B78);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = *(v67 + v59);
    *(v67 + v59) = 0x8000000000000000;
    sub_1D8B05138(v65, v62, isUniquelyReferenced_nonNull_native);
    sub_1D8A014F0(v62, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v67 + v59) = v115[0];
    swift_endAccess();
    v106(v105, v61);

    v70 = *(v0 + 8);

    return v70();
  }

  else
  {
    if (v42 - v41 > 0.2)
    {
      v114 = (v0 + 192);
      v43 = *(v0 + 488);
      v44 = *(v0 + 472);
      v108 = *(v0 + 408);
      v110 = *(v0 + 464);
      v45 = *(v0 + 376);
      v46 = *(v0 + 360);
      v47 = *(v0 + 328);
      v48 = *(v0 + 296);
      v44(v46, *(v0 + 208), v45);
      *(v46 + *(v47 + 20)) = v43;
      swift_beginAccess();

      sub_1D8AFD470(v46);
      sub_1D8A014F0(v46, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D87A14E4(v48, &qword_1ECA65F08);
      swift_endAccess();
      v44(v108, v110, v45);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B16210();
      v49 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 544);
      v28 = *(v0 + 408);
      v29 = *(v0 + 376);
      if (v49)
      {
        v112 = *(v0 + 544);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v115[0] = v31;
        *v30 = 136315138;
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
        v50 = sub_1D8B16B50();
        v52 = v51;
        v112(v28, v29);
        v53 = sub_1D89AC714(v50, v52, v115);

        *(v30 + 4) = v53;
        v36 = "Dispatch request %s can't run soon enough after waiting through the queue.";
        goto LABEL_7;
      }

LABEL_14:

      v27(v28, v29);
      goto LABEL_15;
    }

    v72 = *(v0 + 488);
    v71 = *(v0 + 496);
    v74 = *(v0 + 328);
    v73 = *(v0 + 336);
    v75 = *(v0 + 216);
    (*(v0 + 472))(v73, *(v0 + 208), *(v0 + 376));
    *(v73 + *(v74 + 20)) = v72;
    v76 = *(v75 + v71);
    if (*(v76 + 16))
    {
      v77 = *(v0 + 336);

      v78 = sub_1D87F0134(v77);
      v79 = *(v0 + 504);
      v80 = *(v0 + 288);
      v81 = *(v0 + 256);
      if (v82)
      {
        sub_1D87A0E38(*(v76 + 56) + *(*(v0 + 264) + 72) * v78, *(v0 + 288), &qword_1ECA65B78);
        v83 = v80;
        v84 = 0;
      }

      else
      {
        v83 = *(v0 + 288);
        v84 = 1;
      }

      v79(v83, v84, 1, v81);
    }

    else
    {
      (*(v0 + 504))(*(v0 + 288), 1, 1, *(v0 + 256));
    }

    v85 = *(v0 + 512);
    v86 = *(v0 + 288);
    v87 = *(v0 + 256);
    sub_1D8A014F0(*(v0 + 336), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    v88 = v85(v86, 1, v87);
    v89 = *(v0 + 288);
    if (v88 == 1)
    {
      v90 = &qword_1ECA65F08;
      goto LABEL_31;
    }

    if (swift_getEnumCaseMultiPayload())
    {
      v90 = &qword_1ECA65B78;
LABEL_31:
      sub_1D87A14E4(v89, v90);
      (*(v0 + 472))(*(v0 + 392), *(v0 + 464), *(v0 + 376));
      v6 = sub_1D8B151C0();
      v7 = sub_1D8B16210();
      v91 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 544);
      v10 = *(v0 + 392);
      v11 = *(v0 + 376);
      if (v91)
      {
        goto LABEL_3;
      }

      goto LABEL_8;
    }

    v92 = *(v0 + 488);
    v93 = *(v0 + 496);
    v94 = *(v0 + 360);
    v95 = *(v0 + 328);
    v96 = *(v0 + 272);
    v97 = *(v0 + 280);
    v98 = *(v0 + 216);
    v99 = *(v89 + 8);
    (*(v0 + 472))(v94, *(v0 + 208), *(v0 + 376));
    *(v94 + *(v95 + 20)) = v92;
    *v97 = v42 + 0.199;
    *(v97 + 8) = v99;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v97, v96, &qword_1ECA65B78);

    v100 = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = *(v98 + v93);
    *(v98 + v93) = 0x8000000000000000;
    sub_1D8B05138(v96, v94, v100);
    sub_1D8A014F0(v94, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v98 + v93) = v115[0];
    swift_endAccess();
    v101 = sub_1D8B16E30();
    v103 = v102;
    _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
    v104 = swift_task_alloc();
    *(v0 + 584) = v104;
    *v104 = v0;
    v104[1] = sub_1D89E96FC;

    return (sub_1D8A0077C)(v101, v103, 0, 0, 1);
  }
}

uint64_t sub_1D89E8618()
{
  v116 = v0;
  *(v0 + 576) = *(v0 + 568);
  v1 = *(v0 + 208);
  v2 = *(*(v0 + 216) + *(v0 + 496));

  v3 = sub_1D89EA0E4(v1, v2);
  v5 = v4;

  if (v5)
  {
    (*(v0 + 472))(*(v0 + 424), *(v0 + 464), *(v0 + 376));
    v6 = sub_1D8B151C0();
    v7 = sub_1D8B16210();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 544);
    v10 = *(v0 + 424);
    v11 = *(v0 + 376);
    if (v8)
    {
LABEL_3:
      v113 = *(v0 + 544);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v115[0] = v13;
      *v12 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v14 = sub_1D8B16B50();
      v16 = v15;
      v113(v10, v11);
      v17 = sub_1D89AC714(v14, v16, v115);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D8783000, v6, v7, "Dispatch request %s unexpectedly left the queue. This shouldn't happen", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1DA721330](v13, -1, -1);
      MEMORY[0x1DA721330](v12, -1, -1);

LABEL_9:
      v115[0] = 0;
      v115[1] = 0xE000000000000000;
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000011, 0x80000001D8B46ED0);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v37 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v37);

      MEMORY[0x1DA71EFA0](0xD000000000000033, 0x80000001D8B46EF0);
      return sub_1D8B168C0();
    }

LABEL_8:

    v9(v10, v11);
    goto LABEL_9;
  }

  if (v3)
  {
    v114 = (v0 + 176);
    v18 = *(v0 + 488);
    v19 = *(v0 + 472);
    v107 = *(v0 + 416);
    v109 = *(v0 + 464);
    v20 = *(v0 + 376);
    v21 = *(v0 + 360);
    v22 = *(v0 + 328);
    v23 = *(v0 + 296);
    v19(v21, *(v0 + 208), v20);
    *(v21 + *(v22 + 20)) = v18;
    swift_beginAccess();

    sub_1D8AFD470(v21);
    sub_1D8A014F0(v21, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    sub_1D87A14E4(v23, &qword_1ECA65F08);
    swift_endAccess();
    v19(v107, v109, v20);
    v24 = sub_1D8B151C0();
    v25 = sub_1D8B16210();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 544);
    v28 = *(v0 + 416);
    v29 = *(v0 + 376);
    if (v26)
    {
      v111 = *(v0 + 544);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v115[0] = v31;
      *v30 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v32 = sub_1D8B16B50();
      v34 = v33;
      v111(v28, v29);
      v35 = sub_1D89AC714(v32, v34, v115);

      *(v30 + 4) = v35;
      v36 = "Dispatch request %s did not move to the front of the queue.";
LABEL_7:
      _os_log_impl(&dword_1D8783000, v24, v25, v36, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1DA721330](v31, -1, -1);
      MEMORY[0x1DA721330](v30, -1, -1);

LABEL_15:
      v54 = *(v0 + 544);
      v55 = *(v0 + 464);
      v56 = *(v0 + 376);
      *v114 = 1;
      sub_1D8883C24();
      swift_willThrowTypedImpl();
      v54(v55, v56);

      v57 = *(v0 + 8);

      return v57(1);
    }

    goto LABEL_14;
  }

  v39 = *(v0 + 528);
  v40 = *(v0 + 216);
  v41 = CACurrentMediaTime();
  v42 = *(v40 + v39) + 0.5;
  if (v41 >= v42)
  {
    v106 = *(v0 + 544);
    v58 = *(v0 + 488);
    v59 = *(v0 + 496);
    v60 = *(v0 + 472);
    v105 = *(v0 + 464);
    v61 = *(v0 + 376);
    v62 = *(v0 + 360);
    v63 = *(v0 + 328);
    v64 = *(v0 + 280);
    v65 = *(v0 + 272);
    v66 = *(v0 + 208);
    v67 = *(v0 + 216);
    *(v67 + *(v0 + 528)) = v41;
    v68 = v41;
    v60(v62, v66, v61);
    *(v62 + *(v63 + 20)) = v58;
    *v64 = v68 + 0.199;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v64, v65, &qword_1ECA65B78);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = *(v67 + v59);
    *(v67 + v59) = 0x8000000000000000;
    sub_1D8B05138(v65, v62, isUniquelyReferenced_nonNull_native);
    sub_1D8A014F0(v62, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v67 + v59) = v115[0];
    swift_endAccess();
    v106(v105, v61);

    v70 = *(v0 + 8);

    return v70();
  }

  else
  {
    if (v42 - v41 > 0.2)
    {
      v114 = (v0 + 192);
      v43 = *(v0 + 488);
      v44 = *(v0 + 472);
      v108 = *(v0 + 408);
      v110 = *(v0 + 464);
      v45 = *(v0 + 376);
      v46 = *(v0 + 360);
      v47 = *(v0 + 328);
      v48 = *(v0 + 296);
      v44(v46, *(v0 + 208), v45);
      *(v46 + *(v47 + 20)) = v43;
      swift_beginAccess();

      sub_1D8AFD470(v46);
      sub_1D8A014F0(v46, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D87A14E4(v48, &qword_1ECA65F08);
      swift_endAccess();
      v44(v108, v110, v45);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B16210();
      v49 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 544);
      v28 = *(v0 + 408);
      v29 = *(v0 + 376);
      if (v49)
      {
        v112 = *(v0 + 544);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v115[0] = v31;
        *v30 = 136315138;
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
        v50 = sub_1D8B16B50();
        v52 = v51;
        v112(v28, v29);
        v53 = sub_1D89AC714(v50, v52, v115);

        *(v30 + 4) = v53;
        v36 = "Dispatch request %s can't run soon enough after waiting through the queue.";
        goto LABEL_7;
      }

LABEL_14:

      v27(v28, v29);
      goto LABEL_15;
    }

    v72 = *(v0 + 488);
    v71 = *(v0 + 496);
    v74 = *(v0 + 328);
    v73 = *(v0 + 336);
    v75 = *(v0 + 216);
    (*(v0 + 472))(v73, *(v0 + 208), *(v0 + 376));
    *(v73 + *(v74 + 20)) = v72;
    v76 = *(v75 + v71);
    if (*(v76 + 16))
    {
      v77 = *(v0 + 336);

      v78 = sub_1D87F0134(v77);
      v79 = *(v0 + 504);
      v80 = *(v0 + 288);
      v81 = *(v0 + 256);
      if (v82)
      {
        sub_1D87A0E38(*(v76 + 56) + *(*(v0 + 264) + 72) * v78, *(v0 + 288), &qword_1ECA65B78);
        v83 = v80;
        v84 = 0;
      }

      else
      {
        v83 = *(v0 + 288);
        v84 = 1;
      }

      v79(v83, v84, 1, v81);
    }

    else
    {
      (*(v0 + 504))(*(v0 + 288), 1, 1, *(v0 + 256));
    }

    v85 = *(v0 + 512);
    v86 = *(v0 + 288);
    v87 = *(v0 + 256);
    sub_1D8A014F0(*(v0 + 336), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    v88 = v85(v86, 1, v87);
    v89 = *(v0 + 288);
    if (v88 == 1)
    {
      v90 = &qword_1ECA65F08;
      goto LABEL_31;
    }

    if (swift_getEnumCaseMultiPayload())
    {
      v90 = &qword_1ECA65B78;
LABEL_31:
      sub_1D87A14E4(v89, v90);
      (*(v0 + 472))(*(v0 + 392), *(v0 + 464), *(v0 + 376));
      v6 = sub_1D8B151C0();
      v7 = sub_1D8B16210();
      v91 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 544);
      v10 = *(v0 + 392);
      v11 = *(v0 + 376);
      if (v91)
      {
        goto LABEL_3;
      }

      goto LABEL_8;
    }

    v92 = *(v0 + 488);
    v93 = *(v0 + 496);
    v94 = *(v0 + 360);
    v95 = *(v0 + 328);
    v96 = *(v0 + 272);
    v97 = *(v0 + 280);
    v98 = *(v0 + 216);
    v99 = *(v89 + 8);
    (*(v0 + 472))(v94, *(v0 + 208), *(v0 + 376));
    *(v94 + *(v95 + 20)) = v92;
    *v97 = v42 + 0.199;
    *(v97 + 8) = v99;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v97, v96, &qword_1ECA65B78);

    v100 = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = *(v98 + v93);
    *(v98 + v93) = 0x8000000000000000;
    sub_1D8B05138(v96, v94, v100);
    sub_1D8A014F0(v94, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v98 + v93) = v115[0];
    swift_endAccess();
    v101 = sub_1D8B16E30();
    v103 = v102;
    _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
    v104 = swift_task_alloc();
    *(v0 + 584) = v104;
    *v104 = v0;
    v104[1] = sub_1D89E96FC;

    return (sub_1D8A0077C)(v101, v103, 0, 0, 1);
  }
}

uint64_t sub_1D89E96FC()
{
  v2 = *v1;

  v3 = v2[72];
  v4 = v2[30];
  v5 = v2[28];
  v6 = v2[27];
  if (v0)
  {

    v3(v4, v5);
    v7 = sub_1D8A02874;
  }

  else
  {
    v3(v4, v5);
    v7 = sub_1D89E98C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D89E98C4()
{
  v38 = v0;
  v1 = v0[66];
  v2 = v0[27];
  v3 = CACurrentMediaTime();
  if (v3 >= *(v2 + v1) + 0.5)
  {
    v35 = v0[68];
    v16 = v0[61];
    v17 = v0[62];
    v18 = v0[59];
    v34 = v0[58];
    v19 = v0[47];
    v20 = v0[45];
    v21 = v0[41];
    v22 = v0[35];
    v23 = v0[34];
    v24 = v0[26];
    v25 = v0[27];
    *(v25 + v0[66]) = v3;
    v26 = v3;
    v18(v20, v24, v19);
    *(v20 + *(v21 + 20)) = v16;
    *v22 = v26 + 0.199;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v22, v23, &qword_1ECA65B78);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v25 + v17);
    *(v25 + v17) = 0x8000000000000000;
    sub_1D8B05138(v23, v20, isUniquelyReferenced_nonNull_native);
    sub_1D8A014F0(v20, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v25 + v17) = v37;
    swift_endAccess();
    v35(v34, v19);

    v28 = v0[1];

    return v28();
  }

  else
  {
    (v0[59])(v0[50], v0[58], v0[47]);
    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16210();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[68];
    v8 = v0[50];
    v9 = v0[47];
    if (v6)
    {
      v36 = v0[68];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37 = v11;
      *v10 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v12 = sub_1D8B16B50();
      v14 = v13;
      v36(v8, v9);
      v15 = sub_1D89AC714(v12, v14, &v37);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D8783000, v4, v5, "Dispatch request %s could not run because something cut in line. This shouldn't happen.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1DA721330](v11, -1, -1);
      MEMORY[0x1DA721330](v10, -1, -1);
    }

    else
    {

      v7(v8, v9);
    }

    v30 = v0[68];
    v31 = v0[58];
    v32 = v0[47];
    v0[23] = 2;
    sub_1D8883C24();
    swift_willThrowTypedImpl();
    v30(v31, v32);

    v33 = v0[1];

    return v33(2);
  }
}

uint64_t sub_1D89E9EFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
  v18[0] = *(v2 - 8);
  v18[1] = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v14 = 0;
  while (v10)
  {
LABEL_11:
    sub_1D87A0E38(*(a1 + 56) + *(v18[0] + 72) * (__clz(__rbit64(v10)) | (v14 << 6)), v7, &qword_1ECA65B78);
    sub_1D881F6FC(v7, v5, &qword_1ECA65B78);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      result = sub_1D87A14E4(v5, &qword_1ECA65B78);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v10 &= v10 - 1;
    v16 = __OFADD__(v13, v15);
    v13 += v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v11)
    {

      return v13;
    }

    v10 = *(a1 + 64 + 8 * v17);
    ++v14;
    if (v10)
    {
      v14 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D89EA0E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F08);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D8B13240();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  *&v17[*(v15 + 28)] = *(a1 + *(type metadata accessor for VisualIntelligenceRateLimitedInput(0) + 28));
  if (*(a2 + 16))
  {

    v19 = sub_1D87F0134(v17);
    if (v20)
    {
      sub_1D87A0E38(*(a2 + 56) + *(v5 + 72) * v19, v13, &qword_1ECA65B78);
      (*(v5 + 56))(v13, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v13, 1, 1, v4);
    }
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_1D8A014F0(v17, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    v21 = &qword_1ECA65F08;
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v21 = &qword_1ECA65B78;
LABEL_10:
    sub_1D87A14E4(v13, v21);
    return 0;
  }

  v46 = v10;
  v47 = a2;
  v23 = *(v13 + 1);
  v24 = a2 + 64;
  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a2 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  v45 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v30 = v29;
  if (!v27)
  {
    goto LABEL_17;
  }

  do
  {
    v10 = v4;
    v31 = v8;
    v29 = v30;
LABEL_21:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v33 = v46;
    sub_1D87A0E38(*(v47 + 56) + *(v5 + 72) * (v32 | (v29 << 6)), v46, &qword_1ECA65B78);
    v34 = v33;
    v8 = v31;
    sub_1D881F6FC(v34, v31, &qword_1ECA65B78);
    v4 = v10;
    if (!swift_getEnumCaseMultiPayload())
    {
      v35 = *(v8 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1D87C84D8(0, *(v45 + 2) + 1, 1, v45);
      }

      v37 = *(v45 + 2);
      v36 = *(v45 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v44 = v37 + 1;
        v40 = sub_1D87C84D8((v36 > 1), v37 + 1, 1, v45);
        v38 = v44;
        v45 = v40;
      }

      v39 = v45;
      *(v45 + 2) = v38;
      *&v39[8 * v37 + 32] = v35;
      goto LABEL_15;
    }

    sub_1D87A14E4(v8, &qword_1ECA65B78);
    v30 = v29;
  }

  while (v27);
  while (1)
  {
LABEL_17:
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v29);
    ++v30;
    if (v27)
    {
      v10 = v4;
      v31 = v8;
      goto LABEL_21;
    }
  }

  v48 = v45;

  sub_1D8A4AF2C(&v48);

  v41 = *(v48 + 2);
  if (!v41)
  {
LABEL_33:

    return 0;
  }

  v42 = 0;
  while (*&v48[8 * v42 + 32] != v23)
  {
    if (v41 == ++v42)
    {
      goto LABEL_33;
    }
  }

  v43 = v42;

  return v43;
}

uint64_t VisualLookupClassifier.Mode.description.getter()
{
  v1 = 0x7265676145;
  if (*v0)
  {
    v1 = 0x4520796B63697453;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E616D6544206E4FLL;
  }
}

VisualIntelligenceCore::VisualLookupClassifier::Mode_optional __swiftcall VisualLookupClassifier.Mode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VisualLookupClassifier.Mode.rawValue.getter()
{
  v1 = 0x7265676165;
  if (*v0)
  {
    v1 = 0x6974537265676165;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x646E616D65446E6FLL;
  }
}

void sub_1D89EA7C8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265676165;
  v4 = 0xE800000000000000;
  if (*v1 != 2)
  {
    v4 = 0xEB00000000776152;
  }

  if (*v1)
  {
    v3 = 0x6974537265676165;
    v2 = 0xEB00000000796B63;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x646E616D65446E6FLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1D89EA854()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D89EA924()
{
  sub_1D8B15A60();
}

uint64_t sub_1D89EA9E0()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D89EAB6C()
{
  v1 = 0x7265676145;
  if (*v0)
  {
    v1 = 0x4520796B63697453;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E616D6544206E4FLL;
  }
}

uint64_t VisualLookupClassifier.Result.searchResults.getter()
{
  type metadata accessor for VisualLookupClassifier.Result(0);
}

uint64_t VisualLookupClassifier.Result.searchResults.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualLookupClassifier.Result(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D89EACBC()
{
  v1 = 0x6372616553746F6ELL;
  v2 = 0x73736563637573;
  if (*v0 != 2)
  {
    v2 = 0x6572756C696166;
  }

  if (*v0)
  {
    v1 = 0x6261686372616573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D89EAD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A02048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D89EAD70(uint64_t a1)
{
  v2 = sub_1D8A01038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EADAC(uint64_t a1)
{
  v2 = sub_1D8A01038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89EADE8(uint64_t a1)
{
  v2 = sub_1D8A0108C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EAE24(uint64_t a1)
{
  v2 = sub_1D8A0108C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89EAE60(uint64_t a1)
{
  v2 = sub_1D8A01188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EAE9C(uint64_t a1)
{
  v2 = sub_1D8A01188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89EAED8(uint64_t a1)
{
  v2 = sub_1D8A01134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EAF14(uint64_t a1)
{
  v2 = sub_1D8A01134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89EAF50(uint64_t a1)
{
  v2 = sub_1D8A010E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EAF8C(uint64_t a1)
{
  v2 = sub_1D8A010E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualLookupClassifier.Result.SearchState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F30);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F38);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F40);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v29 - v7;
  v8 = sub_1D8B138B0();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F48);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F50);
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A01038();
  sub_1D8B16DD0();
  sub_1D8A01488(v42, v15, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v23 = v35;
      v22 = v36;
      v24 = v31;
      (*(v35 + 32))(v31, v15, v36);
      v45 = 1;
      sub_1D8A01134();
      v25 = v34;
      sub_1D8B16A40();
      sub_1D8A011DC(&qword_1ECA66F78, MEMORY[0x1E69E0360]);
      v26 = v38;
      sub_1D8B16AE0();
      (*(v37 + 8))(v25, v26);
      (*(v23 + 8))(v24, v22);
    }

    else
    {
      v44 = 0;
      sub_1D8A01188();
      sub_1D8B16A40();
      sub_1D8B16A90();

      (*(v29 + 8))(v12, v10);
    }

    return (*(v43 + 8))(v18, v16);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v47 = 3;
    sub_1D8A0108C();
    v20 = v39;
    sub_1D8B16A40();
    v21 = v41;
    sub_1D8B16A90();

    (*(v40 + 8))(v20, v21);
    return (*(v43 + 8))(v18, v16);
  }

  v46 = 2;
  sub_1D8A010E0();
  v28 = v30;
  sub_1D8B16A40();
  (*(v32 + 8))(v28, v33);
  return (*(v43 + 8))(v18, v16);
}

uint64_t VisualLookupClassifier.Result.SearchState.hash(into:)()
{
  v1 = sub_1D8B138B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A01488(v0, v7, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = 3;
      goto LABEL_6;
    }

    return MEMORY[0x1DA720210](2);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = 0;
LABEL_6:
      MEMORY[0x1DA720210](v9);
      sub_1D8B15A60();
    }

    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x1DA720210](1);
    sub_1D8A011DC(&qword_1ECA66F88, MEMORY[0x1E69E0360]);
    sub_1D8B157A0();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t VisualLookupClassifier.Result.SearchState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F90);
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F98);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v61 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FA0);
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v76 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FA8);
  v10 = *(v9 - 8);
  v65 = v9;
  v66 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v61 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FB0);
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v13 = &v61 - v12;
  v14 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v61 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v61 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - v24;
  v26 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D8A01038();
  v27 = v80;
  sub_1D8B16DB0();
  if (!v27)
  {
    v61 = v23;
    v62 = v17;
    v63 = v20;
    v28 = v74;
    v30 = v76;
    v29 = v77;
    v64 = v25;
    v80 = v14;
    v31 = v78;
    v32 = v75;
    v33 = sub_1D8B16A20();
    v34 = (2 * *(v33 + 16)) | 1;
    v82 = v33;
    v83 = v33 + 32;
    v84 = 0;
    v85 = v34;
    v35 = sub_1D881F7BC();
    if (v35 == 4 || v84 != v85 >> 1)
    {
      v37 = sub_1D8B16770();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v39 = v80;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v79 + 8))(v13, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v35 > 1u)
      {
        if (v35 == 2)
        {
          v86 = 2;
          sub_1D8A010E0();
          v41 = v73;
          sub_1D8B16950();
          v42 = v79;
          v43 = v31;
          (*(v68 + 8))(v41, v69);
          (*(v42 + 8))(v13, v32);
          swift_unknownObjectRelease();
          v44 = v64;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v86 = 3;
          sub_1D8A0108C();
          v46 = v29;
          sub_1D8B16950();
          v47 = v13;
          v48 = v79;
          v43 = v31;
          v51 = v47;
          v52 = v71;
          v57 = sub_1D8B169C0();
          v59 = v58;
          (*(v72 + 8))(v46, v52);
          (*(v48 + 8))(v51, v32);
          swift_unknownObjectRelease();
          v60 = v62;
          *v62 = v57;
          *(v60 + 8) = v59;
          swift_storeEnumTagMultiPayload();
          v44 = v64;
          sub_1D8A01550(v60, v64, type metadata accessor for VisualLookupClassifier.Result.SearchState);
        }
      }

      else
      {
        if (v35)
        {
          v86 = 1;
          sub_1D8A01134();
          v45 = v30;
          sub_1D8B16950();
          sub_1D8B138B0();
          sub_1D8A011DC(&qword_1ECA66FB8, MEMORY[0x1E69E0360]);
          v56 = v63;
          v49 = v67;
          sub_1D8B16A10();
          v50 = v79;
          (*(v70 + 8))(v45, v49);
          (*(v50 + 8))(v13, v32);
          swift_unknownObjectRelease();
        }

        else
        {
          v86 = 0;
          sub_1D8A01188();
          sub_1D8B16950();
          v36 = v65;
          v53 = sub_1D8B169C0();
          v55 = v54;
          (*(v66 + 8))(v28, v36);
          (*(v79 + 8))(v13, v32);
          swift_unknownObjectRelease();
          v56 = v61;
          *v61 = v53;
          *(v56 + 8) = v55;
        }

        swift_storeEnumTagMultiPayload();
        v44 = v64;
        sub_1D8A01550(v56, v64, type metadata accessor for VisualLookupClassifier.Result.SearchState);
        v43 = v31;
      }

      sub_1D8A01550(v44, v43, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

unint64_t sub_1D89EC24C()
{
  v1 = *v0;
  v2 = 0x6449656C646E7562;
  v3 = 0xD000000000000024;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6552686372616573;
  if (v1 != 4)
  {
    v4 = 0x7453686372616573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461636F6CLL;
  if (v1 != 2)
  {
    v5 = 0x6948686372616573;
  }

  if (*v0)
  {
    v2 = 0x7461446573726170;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D89EC378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A021BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D89EC3A0(uint64_t a1)
{
  v2 = sub_1D8A01398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}