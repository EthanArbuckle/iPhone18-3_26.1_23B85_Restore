BOOL sub_2262B7ECC(void *a1, uint64_t *a2)
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

uint64_t sub_2262B7F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2262B8058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2262B8170()
{
  v1 = sub_22634F51C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2262B8250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VisualAction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2262B831C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VisualAction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2262B83D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for VisualAction.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2262B8480(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for VisualAction.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2262B8524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2263500DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2263500AC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2262B8614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2263500DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2263500AC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2262B8710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22634EECC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_22634FDDC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2262B8850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_22634EECC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_22634FDDC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2262B89A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22634EECC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2262B8A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_22634EECC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2262B8A80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22634EEFC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v11 = sub_22634FDFC();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[13];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[14]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2262B8BDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22634EEFC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[12];
    }

    else
    {
      result = sub_22634FDFC();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[14]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[13];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_2262B8D3C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2262B8E38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2262B8F98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_OWORD *sub_2262B8FD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2262B8FEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2262B902C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2262B9078()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2262B90C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2262B91A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B91E8()
{
  v1 = sub_22634F17C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 24);

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_2262B92DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2262B9318()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B9350()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2262B9398(uint64_t a1, uint64_t a2)
{
  v4 = sub_22634F51C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2262B9404(uint64_t a1, uint64_t a2)
{
  v4 = sub_22634F51C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2262B9474(uint64_t a1, uint64_t a2)
{
  result = sub_226325D04(qword_28137F890, a2, type metadata accessor for RemoteCustomActionExecutor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2262B94CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B9504()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B953C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_2262B963C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B9674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2262B9768()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B97A0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2262B9810()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2262B9868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22634F1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2262B9934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22634F1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_2262B99F0()
{
  MEMORY[0x22AA7D640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B9A28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2262B9A68()
{
  v1 = sub_22634EEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2262B9B2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC8, &unk_226355A60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2262B9BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE8, &qword_226355A98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_22634EEFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v15 = *(v8 + 64);
  v11 = v3 | v9;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v15, v11 | 7);
}

uint64_t sub_2262B9D54()
{
  v1 = sub_22634EEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2262B9FDC()
{
  v0 = sub_2263502EC();
  __swift_allocate_value_buffer(v0, qword_27D793ED8);
  __swift_project_value_buffer(v0, qword_27D793ED8);
  return sub_2263502DC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2262BA11C(uint64_t a1, int a2)
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

uint64_t sub_2262BA13C(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_28137DFD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28137DFD8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for ActionContext()
{
  result = qword_28137F270;
  if (!qword_28137F270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2262BA288()
{
  sub_22634EEFC();
  if (v0 <= 0x3F)
  {
    sub_2262BA32C();
    if (v1 <= 0x3F)
    {
      sub_2262BA384();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2262BA32C()
{
  if (!qword_28137E140[0])
  {
    sub_22634F47C();
    v0 = sub_22635085C();
    if (!v1)
    {
      atomic_store(v0, qword_28137E140);
    }
  }
}

void sub_2262BA384()
{
  if (!qword_28137E030)
  {
    v0 = sub_22635085C();
    if (!v1)
    {
      atomic_store(v0, &qword_28137E030);
    }
  }
}

uint64_t sub_2262BA3DC()
{
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](0);
  return sub_226350D0C();
}

uint64_t sub_2262BA420()
{
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](0);
  return sub_226350D0C();
}

uint64_t sub_2262BA4E8()
{
  v1 = v0;
  v2 = sub_22635004C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634FFEC();

  v7 = sub_22635003C();
  v8 = sub_22635075C();

  v9 = &unk_281380000;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = v11;
    *v10 = 136315138;
    sub_22634EEFC();
    sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
    v12 = sub_226350C1C();
    v14 = sub_226345004(v12, v13, &v37);
    v9 = &unk_281380000;

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2262B6000, v7, v8, "Session %s destroyed", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x22AA7D570](v11, -1, -1);
    MEMORY[0x22AA7D570](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v15 = v9[222];
  v16 = sub_22634EEFC();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_sessionStart;
  v18 = sub_22634EECC();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v19 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_eventMultiplexer);

  v20 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_toolManager);

  v21 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream));

  v22 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appManager);

  v23 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionProviders);

  v24 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionExecutors);

  v25 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionEligibilityChecker);
  swift_unknownObjectRelease();
  v26 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_customActionRegister);
  swift_unknownObjectRelease();
  v27 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  v28 = sub_22634FCDC();
  (*(*(v28 - 8) + 8))(v1 + v27, v28);
  v29 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap);

  v30 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap);

  v31 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedPredictionResults);

  v32 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appPopularityMap);

  v33 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appRelevanceMap);

  v34 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appCategoryMapForTesting);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2262BA8C0()
{
  sub_2262BA4E8();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for Session()
{
  result = qword_28137E568;
  if (!qword_28137E568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2262BA940()
{
  result = sub_22634EEFC();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_22634EECC();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_22634FCDC();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Session.Event(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Session.Event(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2262BABB8()
{
  result = qword_27D792FE8;
  if (!qword_27D792FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D792FE8);
  }

  return result;
}

uint64_t sub_2262BAC18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  v5 = sub_22634EEFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2262BAC94()
{
  v1 = *v0;
  sub_22634EEFC();
  sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
  v2 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v2);

  MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
  return 0x286E6F6973736553;
}

uint64_t sub_2262BADA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22634F6FC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_22635004C();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262BAEDC, v2, 0);
}

uint64_t sub_2262BAEDC()
{
  v60 = v0;
  v1 = v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v2 = v0[12];
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[3];
    v7 = v0[4];
    sub_22634FFEC();
    v8 = *(v5 + 16);
    v8(v3, v6, v4);

    v9 = sub_22635003C();
    v10 = sub_22635071C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[10];
    v15 = v0[8];
    if (v11)
    {
      v53 = v0[7];
      v54 = v8;
      v58 = v0[12];
      v17 = v0[5];
      v16 = v0[6];
      v56 = v10;
      v18 = v0[4];
      v57 = v0[9];
      v19 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v19 = 136315650;
      v20 = *v18;
      v21 = sub_226350D6C();
      v23 = sub_226345004(v21, v22, &v59);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0xD000000000000018, 0x80000002263565F0, &v59);
      *(v19 + 22) = 2080;
      v54(v53, v15, v17);
      v24 = sub_2263504CC();
      v26 = v25;
      (*(v16 + 8))(v15, v17);
      v27 = sub_226345004(v24, v26, &v59);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_2262B6000, v9, v56, "%s.%s request = %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v55, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v14 + 8))(v58, v57);
    }

    else
    {
      v43 = v0[5];
      v44 = v0[6];

      (*(v44 + 8))(v15, v43);
      (*(v14 + 8))(v12, v13);
    }
  }

  else
  {
    v28 = v0[11];
    v29 = v0[4];
    sub_22634FFEC();

    v30 = sub_22635003C();
    v31 = sub_22635072C();

    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[10];
    v33 = v0[11];
    v35 = v0[9];
    if (v32)
    {
      v36 = v0[4];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v59 = v38;
      *v37 = 136315394;
      v39 = *v36;
      v40 = sub_226350D6C();
      v42 = sub_226345004(v40, v41, &v59);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_226345004(0xD000000000000018, 0x80000002263565F0, &v59);
      _os_log_impl(&dword_2262B6000, v30, v31, "%s.%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v37, -1, -1);
    }

    (*(v34 + 8))(v33, v35);
  }

  v46 = v0[11];
  v45 = v0[12];
  v48 = v0[7];
  v47 = v0[8];
  v49 = v0[2];
  v50 = *(v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_eventMultiplexer);
  sub_22634FB8C();
  sub_22634F73C();

  v51 = v0[1];

  return v51();
}

uint64_t sub_2262BB364(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0) - 8) + 64) + 15;
  v3[68] = swift_task_alloc();
  v5 = sub_22634F57C();
  v3[69] = v5;
  v6 = *(v5 - 8);
  v3[70] = v6;
  v7 = *(v6 + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0) - 8) + 64) + 15;
  v3[73] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793088, &qword_226351F40) - 8) + 64) + 15;
  v3[74] = swift_task_alloc();
  v10 = sub_22634F3DC();
  v3[75] = v10;
  v11 = *(v10 - 8);
  v3[76] = v11;
  v12 = *(v11 + 64) + 15;
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v13 = type metadata accessor for ActionContext();
  v3[79] = v13;
  v14 = *(v13 - 8);
  v3[80] = v14;
  v15 = *(v14 + 64) + 15;
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793090, &qword_226351F48) - 8) + 64) + 15;
  v3[83] = swift_task_alloc();
  v17 = *(type metadata accessor for RankedVisualAction() - 8);
  v3[84] = v17;
  v18 = *(v17 + 64) + 15;
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793098, &qword_226351F50);
  v3[89] = v19;
  v20 = *(v19 - 8);
  v3[90] = v20;
  v21 = *(v20 + 64) + 15;
  v3[91] = swift_task_alloc();
  v22 = type metadata accessor for VisualAction(0);
  v3[92] = v22;
  v23 = *(v22 - 8);
  v3[93] = v23;
  v24 = *(v23 + 64) + 15;
  v3[94] = swift_task_alloc();
  v25 = sub_22634FDFC();
  v3[95] = v25;
  v26 = *(v25 - 8);
  v3[96] = v26;
  v27 = *(v26 + 64) + 15;
  v3[97] = swift_task_alloc();
  v28 = sub_22634F5DC();
  v3[98] = v28;
  v29 = *(v28 - 8);
  v3[99] = v29;
  v30 = *(v29 + 64) + 15;
  v3[100] = swift_task_alloc();
  v31 = sub_22634F5BC();
  v3[101] = v31;
  v32 = *(v31 - 8);
  v3[102] = v32;
  v33 = *(v32 + 64) + 15;
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10) - 8) + 64) + 15;
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793018, &unk_2263552F0) - 8) + 64) + 15;
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v36 = sub_22634F51C();
  v3[110] = v36;
  v37 = *(v36 - 8);
  v3[111] = v37;
  v3[112] = *(v37 + 64);
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v38 = sub_22634EEFC();
  v3[116] = v38;
  v39 = *(v38 - 8);
  v3[117] = v39;
  v40 = *(v39 + 64) + 15;
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v41 = sub_22634EECC();
  v3[125] = v41;
  v42 = *(v41 - 8);
  v3[126] = v42;
  v43 = *(v42 + 64) + 15;
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  v44 = type metadata accessor for Analytics(0);
  v3[129] = v44;
  v45 = *(*(v44 - 8) + 64) + 15;
  v3[130] = swift_task_alloc();
  v46 = sub_22634F6DC();
  v3[131] = v46;
  v47 = *(v46 - 8);
  v3[132] = v47;
  v48 = *(v47 + 64) + 15;
  v3[133] = swift_task_alloc();
  v3[134] = swift_task_alloc();
  v49 = sub_22635004C();
  v3[135] = v49;
  v50 = *(v49 - 8);
  v3[136] = v50;
  v51 = *(v50 + 64) + 15;
  v3[137] = swift_task_alloc();
  v3[138] = swift_task_alloc();
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262BBB7C, v2, 0);
}

uint64_t sub_2262BBB7C()
{
  v118 = v0;
  v1 = *(v0 + 536);
  *(v0 + 1128) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v2 = *(v0 + 1120);
    v3 = *(v0 + 1072);
    v4 = *(v0 + 1056);
    v5 = *(v0 + 1048);
    v6 = *(v0 + 536);
    v7 = *(v0 + 528);
    sub_22634FFEC();
    v8 = *(v4 + 16);
    v8(v3, v7, v5);

    v9 = sub_22635003C();
    v10 = sub_22635071C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1120);
    v13 = *(v0 + 1088);
    v14 = *(v0 + 1080);
    v15 = *(v0 + 1072);
    if (v11)
    {
      v105 = *(v0 + 1064);
      v106 = v8;
      v114 = *(v0 + 1120);
      v16 = *(v0 + 1056);
      v17 = *(v0 + 1048);
      v110 = v10;
      v18 = *(v0 + 536);
      v112 = *(v0 + 1080);
      v19 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v117 = v108;
      *v19 = 136315650;
      v20 = *v18;
      v21 = sub_226350D6C();
      v23 = sub_226345004(v21, v22, &v117);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0xD00000000000001BLL, 0x8000000226356550, &v117);
      *(v19 + 22) = 2080;
      v106(v105, v15, v17);
      v24 = sub_2263504CC();
      v26 = v25;
      (*(v16 + 8))(v15, v17);
      v27 = sub_226345004(v24, v26, &v117);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_2262B6000, v9, v110, "%s.%s request = %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v108, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v13 + 8))(v114, v112);
    }

    else
    {
      v43 = *(v0 + 1056);
      v44 = *(v0 + 1048);

      (*(v43 + 8))(v15, v44);
      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    v28 = *(v0 + 1112);
    v29 = *(v0 + 536);
    sub_22634FFEC();

    v30 = sub_22635003C();
    v31 = sub_22635072C();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 1112);
    v34 = *(v0 + 1088);
    v35 = *(v0 + 1080);
    if (v32)
    {
      v36 = *(v0 + 536);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v117 = v38;
      *v37 = 136315394;
      v39 = *v36;
      v40 = sub_226350D6C();
      v42 = sub_226345004(v40, v41, &v117);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_226345004(0xD00000000000001BLL, 0x8000000226356550, &v117);
      _os_log_impl(&dword_2262B6000, v30, v31, "%s.%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v37, -1, -1);
    }

    (*(v34 + 8))(v33, v35);
  }

  v45 = *(v0 + 1040);
  v46 = *(v0 + 1032);
  v47 = *(v0 + 1024);
  v48 = *(v0 + 1008);
  v115 = *(v0 + 1000);
  v49 = *(v0 + 936);
  v50 = *(v0 + 928);
  v51 = *(v0 + 920);
  v52 = *(v0 + 872);
  v111 = *(v0 + 864);
  v107 = *(v0 + 992);
  v109 = *(v0 + 848);
  v53 = *(v0 + 536);
  v54 = *(v0 + 528);
  v55 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  v56 = v46[5];
  v57 = *(v49 + 16);
  *(v0 + 1136) = v57;
  *(v0 + 1144) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v57(&v45[v56], v53 + v55, v50);
  v58 = &v45[v46[13]];
  sub_22634F6CC();
  v59 = v46[6];
  *(v0 + 148) = v59;
  v60 = &v45[v59];
  *v60 = 0;
  v60[8] = 1;
  v61 = v46[7];
  *(v0 + 1456) = v61;
  v62 = &v45[v61];
  v62[2] = 0u;
  v62[3] = 0u;
  *v62 = 0u;
  v62[1] = 0u;
  v63 = v46[8];
  *(v0 + 1460) = v63;
  v45[v63] = 2;
  v64 = &v45[v46[9]];
  *v64 = 0;
  v64[1] = 0;
  v45[v46[10]] = 3;
  v65 = v46[11];
  *(v0 + 1464) = v65;
  v45[v65] = 2;
  v66 = v46[12];
  v67 = sub_22634F47C();
  v113 = v66;
  (*(*(v67 - 8) + 56))(&v45[v66], 1, 1, v67);
  *&v45[v46[14]] = MEMORY[0x277D84F98];
  *&v45[v46[15]] = MEMORY[0x277D84F90];
  v45[v46[16]] = 0;
  *v45 = 0;
  sub_22634EEAC();
  sub_2262EB938(0, v47);
  v68 = *(v48 + 8);
  *(v0 + 1152) = v68;
  *(v0 + 1160) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68(v47, v115);
  sub_22634EEEC();
  sub_22634F5EC();
  sub_22634F4AC();
  sub_22634F4FC();
  sub_2262D66FC(v52, v111, &qword_27D793018, &unk_2263552F0);
  v69 = sub_22634FA8C();
  *(v0 + 1168) = v69;
  v70 = *(v69 - 8);
  *(v0 + 1176) = v70;
  v71 = *(v70 + 48);
  *(v0 + 1184) = v71;
  *(v0 + 1192) = (v70 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v72 = v71(v111, 1, v69);
  v73 = *(v0 + 864);
  if (v72 == 1)
  {
    sub_2262D67D8(*(v0 + 864), &qword_27D793018, &unk_2263552F0);
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v76 = *(v0 + 864);
    v74 = sub_22634FA7C();
    v75 = v77;
    (*(v70 + 8))(v73, v69);
  }

  *(v0 + 1208) = v75;
  *(v0 + 1200) = v74;
  v78 = *(v0 + 1040);
  v79 = *(v0 + 1024);
  v80 = *(v0 + 1000);
  v81 = *(v0 + 536);
  sub_2262D5F20(*(v0 + 848), &v45[v113]);
  v82 = v64[1];

  *v64 = v74;
  v64[1] = v75;
  sub_22634EEAC();
  sub_2262EB938(3, v79);
  v68(v79, v80);
  v83 = *(v81 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionProviders);
  *(v0 + 1216) = v83;
  v84 = v83[2];
  *(v0 + 1224) = v84;
  if (v84)
  {
    *(v0 + 1240) = MEMORY[0x277D84F90];
    *(v0 + 1232) = 0;
    v85 = *(v0 + 832);
    v86 = *(v0 + 528);
    *(v0 + 1248) = v83[4];
    v87 = v83[5];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22634F6BC();
    v89 = *(v87 + 16);
    v116 = (v89 + *v89);
    v90 = v89[1];
    v91 = swift_task_alloc();
    *(v0 + 1256) = v91;
    *v91 = v0;
    v91[1] = sub_2262BC4EC;
    v92 = *(v0 + 920);
    v93 = *(v0 + 832);

    return v116(v92, v93, ObjectType, v87);
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
    *(v0 + 1272) = MEMORY[0x277D84F90];
    v96 = *(v0 + 832);
    v97 = *(v0 + 816);
    v98 = *(v0 + 808);
    v99 = *(v0 + 800);
    v100 = *(v0 + 528);
    sub_22634F6BC();
    sub_22634F5AC();
    v101 = *(v97 + 8);
    *(v0 + 1280) = v101;
    *(v0 + 1288) = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v101(v96, v98);
    v102 = swift_task_alloc();
    *(v0 + 1296) = v102;
    *v102 = v0;
    v102[1] = sub_2262BC9A4;
    v103 = *(v0 + 800);
    v104 = *(v0 + 536);

    return sub_2262BFB24(v95, v103);
  }
}

uint64_t sub_2262BC4EC(uint64_t a1)
{
  v2 = *(*v1 + 1256);
  v3 = *(*v1 + 832);
  v4 = *(*v1 + 816);
  v5 = *(*v1 + 808);
  v6 = *(*v1 + 536);
  v8 = *v1;
  *(*v1 + 1264) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2262BC660, v6, 0);
}

uint64_t sub_2262BC660()
{
  v1 = v0[158];
  result = v0[155];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[155];
  if (result && (v7 = *(v6 + 24) >> 1, v7 >= v5))
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v16 = v4 + v3;
    }

    else
    {
      v16 = v4;
    }

    result = sub_2262DC944(result, v16, 1, v0[155]);
    v6 = result;
    v7 = *(result + 24) >> 1;
    if (*(v1 + 16))
    {
LABEL_5:
      if (v7 - *(v6 + 16) >= v3)
      {
        v8 = v0[158];
        v9 = v0[93];
        v10 = v0[92];
        v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v12 = *(v9 + 72);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v13 = *(v6 + 16);
        v14 = __OFADD__(v13, v3);
        v15 = v13 + v3;
        if (!v14)
        {
          *(v6 + 16) = v15;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v17 = v0[158];

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v18 = v0[156];
  v19 = v0[154];
  v20 = v0[153];
  swift_unknownObjectRelease();
  if (v19 + 1 == v20)
  {
    v0[159] = v6;
    v21 = v0[104];
    v22 = v0[102];
    v23 = v0[101];
    v24 = v0[100];
    v25 = v0[66];
    sub_22634F6BC();
    sub_22634F5AC();
    v26 = *(v22 + 8);
    v0[160] = v26;
    v0[161] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v21, v23);
    v27 = swift_task_alloc();
    v0[162] = v27;
    *v27 = v0;
    v27[1] = sub_2262BC9A4;
    v28 = v0[100];
    v29 = v0[67];

    return sub_2262BFB24(v6, v28);
  }

  else
  {
    v30 = v0[154] + 1;
    v0[155] = v6;
    v0[154] = v30;
    v31 = v0[104];
    v32 = v0[66];
    v33 = v0[152] + 16 * v30;
    v0[156] = *(v33 + 32);
    v34 = *(v33 + 40);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22634F6BC();
    v36 = *(v34 + 16);
    v41 = (v36 + *v36);
    v37 = v36[1];
    v38 = swift_task_alloc();
    v0[157] = v38;
    *v38 = v0;
    v38[1] = sub_2262BC4EC;
    v39 = v0[115];
    v40 = v0[104];

    return v41(v39, v40, ObjectType, v34);
  }
}

uint64_t sub_2262BC9A4(uint64_t a1)
{
  v2 = *(*v1 + 1296);
  v3 = *(*v1 + 1272);
  v4 = *(*v1 + 800);
  v5 = *(*v1 + 792);
  v6 = *(*v1 + 784);
  v7 = *(*v1 + 536);
  v9 = *v1;
  *(*v1 + 1304) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2262BCB3C, v7, 0);
}

uint64_t sub_2262BCB3C()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 1040) + *(v0 + 148);
  v6 = *(*(v0 + 1304) + 16);
  *v5 = v6;
  *(v5 + 8) = 0;
  sub_22634EEAC();
  sub_2262EBFE0(3, v3);
  v2(v3, v4);
  sub_22634EEAC();
  sub_2262EB938(4, v3);
  v2(v3, v4);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = *(v0 + 1304);
    v25 = *(v0 + 752);
    v26 = MEMORY[0x277D84F90];
    v9 = *(v0 + 744);
    sub_226316630(0, v6, 0);
    v7 = v26;
    v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      v12 = *(v0 + 752);
      sub_2262D5EB8(v10, v12, type metadata accessor for VisualAction);
      v13 = *v12;
      v14 = *(v25 + 8);

      sub_2262D6068(v12, type metadata accessor for VisualAction);
      v16 = *(v26 + 16);
      v15 = *(v26 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226316630((v15 > 1), v16 + 1, 1);
      }

      *(v26 + 16) = v16 + 1;
      v17 = v26 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  v18 = *(v0 + 920);
  v19 = *(v0 + 840);
  v20 = sub_22630BD70(v7);
  *(v0 + 1312) = v20;

  sub_22634F4FC();
  v21 = swift_task_alloc();
  *(v0 + 1320) = v21;
  *v21 = v0;
  v21[1] = sub_2262BCD74;
  v22 = *(v0 + 840);
  v23 = *(v0 + 536);

  return sub_2262C00A0(v20, v22);
}

uint64_t sub_2262BCD74(uint64_t a1)
{
  v2 = *(*v1 + 1320);
  v3 = *(*v1 + 1312);
  v4 = *(*v1 + 840);
  v5 = *(*v1 + 536);
  v7 = *v1;
  *(*v1 + 1328) = a1;

  sub_2262D67D8(v4, &qword_27D792FE0, &unk_226351C10);

  return MEMORY[0x2822009F8](sub_2262BCEDC, v5, 0);
}

uint64_t sub_2262BCEDC()
{
  v285 = *(v0 + 1184);
  v289 = *(v0 + 1192);
  v282 = *(v0 + 1168);
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 1000);
  v262 = v3;
  v264 = v1;
  v293 = *(v0 + 920);
  v4 = *(v0 + 912);
  v260 = v4;
  v278 = *(v0 + 888);
  v5 = *(v0 + 880);
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  v269 = *(v0 + 760);
  v272 = *(v0 + 856);
  v8 = *(v0 + 536);
  v9 = *(v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appRelevanceMap);
  v298 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appRelevanceMap;
  v302 = *(v0 + 528);
  *(v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appRelevanceMap) = *(v0 + 1328);

  v10 = *(v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
  v267 = *(v2 + 16);
  v267(v1, v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_sessionStart, v3);
  v257 = *(v278 + 16);
  *(v0 + 1336) = v257;
  *(v0 + 1344) = (v278 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v257(v4, v293, v5);
  v11 = *(v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appInFocusStream);
  sub_2262D5E54(v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream, v0 + 216);
  v12 = v10;

  v275 = v11;
  sub_22634F6CC();
  v303 = v8;
  v279 = sub_2262C1608();
  v294 = v13;
  (*(v7 + 8))(v6, v269);
  v14 = *(v0 + 240);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v14);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  *(v0 + 1352) = v17;
  (*(v15 + 16))();
  v18 = *v17;
  *(v0 + 280) = &type metadata for EngagementStream;
  *(v0 + 288) = &off_283979CE8;
  *(v0 + 256) = v18;
  v19 = type metadata accessor for VisualActionRanker();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v0 + 1360) = v22;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, &type metadata for EngagementStream);
  v24 = off_283979D70;
  v25 = *(off_283979D70 + 8) + 15;
  v26 = swift_task_alloc();
  v24[2](v26, v23, &type metadata for EngagementStream);
  v27 = *v26;
  *(v0 + 320) = &type metadata for EngagementStream;
  *(v0 + 328) = &off_283979CE8;
  *(v0 + 296) = v27;
  *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusExecutionCount) = 0;
  *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_totalExecutionCount) = 0;
  v28 = v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights;
  sub_2262D6284(v0 + 16);
  v29 = *(v0 + 64);
  *(v28 + 32) = *(v0 + 48);
  *(v28 + 48) = v29;
  *(v28 + 128) = *(v0 + 144);
  v30 = *(v0 + 128);
  *(v28 + 96) = *(v0 + 112);
  *(v28 + 112) = v30;
  v31 = *(v0 + 96);
  *(v28 + 64) = *(v0 + 80);
  *(v28 + 80) = v31;
  v32 = *(v0 + 32);
  *v28 = *(v0 + 16);
  *(v28 + 16) = v32;
  *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___shouldScopeByAppInFocus) = 2;
  *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_kSevenDaysInSeconds) = 0x4122750000000000;
  *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_kHoursInDay) = 0x4038000000000000;
  *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_kHoursInWeek) = 0x4065000000000000;
  *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_kHoursInMonth) = 0x4086D00000000000;
  *(v22 + 16) = v12;
  v267(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_sessionStart, v264, v262);
  v257(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_visualContext, v260, v5);
  sub_22634F4FC();
  sub_22634F4AC();
  if (v285(v272, 1, v282) == 1)
  {
    sub_2262D67D8(*(v0 + 856), &qword_27D793018, &unk_2263552F0);
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v35 = *(v0 + 1176);
    v36 = *(v0 + 1168);
    v37 = *(v0 + 856);
    v33 = sub_22634FA7C();
    v34 = v38;
    (*(v35 + 8))(v37, v36);
  }

  v39 = (v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel);
  *v39 = v33;
  v39[1] = v34;
  *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusStream) = v275;
  sub_2262D5E54(v0 + 296, v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream);
  v40 = (v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus);
  *v40 = v279;
  v40[1] = v294;
  if (v294)
  {

    v41 = sub_226326EC4(v279);

    *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusExecutionCount) = v41;
  }

  v42 = *(v0 + 1160);
  v43 = *(v0 + 1152);
  v44 = *(v0 + 1016);
  v45 = *(v0 + 1000);
  v46 = *(v0 + 912);
  v47 = *(v0 + 888);
  v48 = *(v0 + 880);
  v290 = *(v0 + 536);
  v295 = *(v0 + 1304);
  v49 = sub_226326EC4(0);
  v50 = *(v47 + 8);
  *(v0 + 1368) = v50;
  *(v0 + 1376) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50(v46, v48);
  v43(v44, v45);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
  *(v22 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_totalExecutionCount) = v49;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  v51 = *(v303 + v298);
  v52 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appPopularityMap;
  swift_beginAccess();

  v53 = sub_226325D50(v295, (v290 + v52), v51);
  v54 = *(v0 + 1304);
  v74 = v53;
  v75 = *(v0 + 1280);
  v76 = *(v0 + 824);
  v77 = *(v0 + 808);
  v78 = *(v0 + 728);
  v79 = *(v0 + 720);
  v300 = *(v0 + 712);
  v305 = *(v0 + 1288);
  v80 = *(v0 + 528);
  swift_endAccess();

  *(v0 + 496) = v74;
  sub_22634F6BC();
  sub_22634F58C();
  v75(v76, v77);
  v81 = (*(v79 + 88))(v78, v300);
  if (v81 == *MEMORY[0x277D78C70])
  {
    v82 = *(v0 + 728);
    (*(*(v0 + 720) + 96))(v82, *(v0 + 712));
    v86 = sub_2262FF0E4(*v82, v74);
    if (v85)
    {
      v89 = v85;
      v90 = v84;
      v91 = v83;
      sub_226350C5C();
      swift_unknownObjectRetain_n();
      v92 = swift_dynamicCastClass();
      if (!v92)
      {
        swift_unknownObjectRelease();
        v92 = MEMORY[0x277D84F90];
      }

      v93 = *(v92 + 16);

      if (__OFSUB__(v89 >> 1, v90))
      {
        __break(1u);
      }

      else if (v93 == (v89 >> 1) - v90)
      {
        v74 = swift_dynamicCastClass();
        v81 = swift_unknownObjectRelease();
        if (v74)
        {
          goto LABEL_27;
        }

        v74 = MEMORY[0x277D84F90];
LABEL_26:
        v81 = swift_unknownObjectRelease();
LABEL_27:
        *(v0 + 496) = v74;
        v88 = *(v74 + 16);
        if (!v88)
        {
          goto LABEL_37;
        }

LABEL_28:
        v94 = 0;
        v95 = *(v0 + 672);
        while (v94 < *(v74 + 16))
        {
          v96 = *(v0 + 704);
          sub_2262D5EB8(v74 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v94, v96, type metadata accessor for RankedVisualAction);
          v97 = sub_2262D699C();
          v81 = sub_2262D6068(v96, type metadata accessor for RankedVisualAction);
          if (v97)
          {
            v98 = *(v0 + 696);
            v99 = *(v0 + 664);
            sub_2262C19D4(v94, v98);
            sub_2262D5EB8(v98, v99, type metadata accessor for RankedVisualAction);
            v74 = *(v0 + 496);
            v100 = *(v74 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v100 >= *(v74 + 24) >> 1)
            {
              v74 = sub_2262DCC74(isUniquelyReferenced_nonNull_native, v100 + 1, 1, v74);
              *(v0 + 496) = v74;
            }

            v102 = *(v0 + 696);
            LOBYTE(v88) = 1;
            sub_2262D1ECC(0, 0, 1, *(v0 + 664));
            sub_2262D6068(v102, type metadata accessor for RankedVisualAction);
            goto LABEL_37;
          }

          if (v88 == ++v94)
          {
            LOBYTE(v88) = 0;
            goto LABEL_37;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

      swift_unknownObjectRelease();
      v85 = v89;
      v84 = v90;
      v83 = v91;
    }

    sub_2263097F8(v86, v83, v84, v85);
    v74 = v87;
    goto LABEL_26;
  }

  if (v81 != *MEMORY[0x277D78C78])
  {
    v81 = (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
  }

  v88 = *(v74 + 16);
  if (v88)
  {
    goto LABEL_28;
  }

LABEL_37:
  *(v0 + 1384) = v74;
  v103 = *(v0 + 992);
  v104 = *(v0 + 536);
  *(*(v0 + 1040) + *(v0 + 1464)) = v88;
  v105 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedPredictionResults;
  swift_beginAccess();
  v106 = *(v104 + v105);
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v309 = *(v104 + v105);
  *(v104 + v105) = 0x8000000000000000;
  v108 = MEMORY[0x277D84F90];
  sub_2262E3900(MEMORY[0x277D84F90], v103, v107);
  *(v104 + v105) = v309;
  v81 = swift_endAccess();
  v109 = *(v74 + 16);
  *(v0 + 1392) = v109;
  if (!v109)
  {
    v131 = *(v0 + 1208);
    v132 = *(v0 + 1160);
    v133 = *(v0 + 1152);
    v134 = *(v0 + 1460);
    v135 = *(v0 + 1040);
    v136 = *(v0 + 1024);
    v137 = *(v0 + 1000);

    sub_22634EEAC();
    sub_2262EBFE0(4, v136);
    v133(v136, v137);
    *(v135 + v134) = 0;
    if ([objc_opt_self() isInternalBuild])
    {
      v138 = *(v0 + 536) + *(v0 + 1128);
      v139 = sub_22634FCBC();
      v140 = *(v0 + 1384);
      v141 = *(v0 + 1360);
      if (v139)
      {
        v142 = *(v0 + 1344);
        v143 = *(v0 + 1336);
        v144 = *(v0 + 920);
        v145 = *(v0 + 904);
        v146 = *(v0 + 888);
        v147 = *(v0 + 880);
        v301 = *(v0 + 848);
        v307 = *(v0 + 872);
        v148 = *(v0 + 584);
        v287 = *(v0 + 896);
        v149 = *(v0 + 536);
        v150 = sub_22635064C();
        (*(*(v150 - 8) + 56))(v148, 1, 1, v150);
        v143(v145, v144, v147);
        v151 = sub_2262D62A4(&qword_27D7930A0, type metadata accessor for Session);
        v152 = (*(v146 + 80) + 40) & ~*(v146 + 80);
        v153 = swift_allocObject();
        *(v153 + 2) = v149;
        *(v153 + 3) = v151;
        *(v153 + 4) = v149;
        (*(v146 + 32))(&v153[v152], v145, v147);
        *&v153[(v287 + v152 + 7) & 0xFFFFFFFFFFFFFFF8] = v140;
        swift_retain_n();
        sub_2262FB4D4(0, 0, v148, &unk_226351F78, v153);

        sub_2262D67D8(v301, &qword_27D792FE0, &unk_226351C10);
        sub_2262D67D8(v307, &qword_27D793018, &unk_2263552F0);
        goto LABEL_63;
      }

      v200 = *(v0 + 872);
      v201 = *(v0 + 848);
      v202 = *(v0 + 1360);

      sub_2262D67D8(v201, &qword_27D792FE0, &unk_226351C10);
      sub_2262D67D8(v200, &qword_27D793018, &unk_2263552F0);
    }

    else
    {
      v196 = *(v0 + 1384);
      v197 = *(v0 + 1360);
      v198 = *(v0 + 872);
      v199 = *(v0 + 848);

      sub_2262D67D8(v199, &qword_27D792FE0, &unk_226351C10);
      sub_2262D67D8(v198, &qword_27D793018, &unk_2263552F0);
    }

LABEL_63:
    v203 = *(v0 + 1352);

    v55 = *(v0 + 1104);
    v56 = *(v0 + 536);
    sub_2262C1D18(0);
    sub_22634FFEC();
    v57 = MEMORY[0x277D84F90];

    v58 = sub_22635003C();
    v59 = sub_22635075C();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 1104);
    v62 = *(v0 + 1088);
    v63 = *(v0 + 1080);
    if (v60)
    {
      v64 = swift_slowAlloc();
      *v64 = 134349056;
      *(v64 + 4) = *(v57 + 16);

      _os_log_impl(&dword_2262B6000, v58, v59, "Returning %{public}ld predicted actions", v64, 0xCu);
      MEMORY[0x22AA7D570](v64, -1, -1);

      (*(v62 + 8))(v61, v63);
    }

    else
    {

      (*(v62 + 8))(v61, v63);
    }

    v235 = *(v0 + 1368);
    v236 = *(v0 + 1376);
    v231 = *(v0 + 1152);
    v232 = *(v0 + 1160);
    v238 = *(v0 + 1120);
    v239 = *(v0 + 1112);
    v240 = *(v0 + 1104);
    v241 = *(v0 + 1096);
    v242 = *(v0 + 1072);
    v243 = *(v0 + 1064);
    v227 = *(v0 + 1024);
    v228 = *(v0 + 1040);
    v229 = *(v0 + 1000);
    v244 = *(v0 + 1016);
    v245 = *(v0 + 984);
    v246 = *(v0 + 976);
    v247 = *(v0 + 968);
    v248 = *(v0 + 960);
    v249 = *(v0 + 952);
    v65 = *(v0 + 936);
    v233 = *(v0 + 928);
    v234 = *(v0 + 992);
    v250 = *(v0 + 912);
    v251 = *(v0 + 904);
    v230 = *(v0 + 880);
    v252 = *(v0 + 872);
    v253 = *(v0 + 864);
    v254 = *(v0 + 856);
    v255 = *(v0 + 848);
    v256 = *(v0 + 840);
    v258 = *(v0 + 832);
    v259 = *(v0 + 824);
    v261 = *(v0 + 800);
    v263 = *(v0 + 776);
    v265 = *(v0 + 752);
    v266 = *(v0 + 728);
    v268 = *(v0 + 704);
    v270 = *(v0 + 696);
    v273 = *(v0 + 688);
    v276 = *(v0 + 680);
    v280 = *(v0 + 664);
    v283 = *(v0 + 656);
    v286 = *(v0 + 648);
    v291 = *(v0 + 624);
    v296 = *(v0 + 616);
    v299 = *(v0 + 592);
    v304 = *(v0 + 584);
    v66 = *(v0 + 576);
    v67 = *(v0 + 568);
    v68 = *(v0 + 560);
    v69 = *(v0 + 552);
    v70 = *(v0 + 544);
    v71 = *(v0 + 520);
    v237 = *(v0 + 944);
    v226 = *(v0 + 920);
    sub_22634F4DC();
    sub_22634F48C();
    sub_22634F56C();
    (*(v68 + 16))(v67, v66, v69);
    sub_22634F6EC();
    sub_22634EEAC();
    sub_2262EBFE0(0, v227);
    v231(v227, v229);
    sub_2262EC7A0();
    (*(v68 + 8))(v66, v69);
    v235(v226, v230);
    (*(v65 + 8))(v234, v233);
    sub_2262D6068(v228, type metadata accessor for Analytics);

    v72 = *(v0 + 8);

    return v72();
  }

  v110 = *(v0 + 672);
  v111 = *(v0 + 536);
  v112 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
  *(v0 + 1400) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
  *(v0 + 1408) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  *(v0 + 1416) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appManager;
  v113 = *(v110 + 80);
  *(v0 + 1468) = v113;
  *(v0 + 1432) = v108;
  *(v0 + 1424) = 0;
  v114 = *(v0 + 1384);
  if (!*(v114 + 16))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v115 = *(v0 + 1144);
  v116 = *(v0 + 1136);
  v117 = *(v0 + 984);
  v74 = *(v0 + 976);
  v118 = *(v0 + 928);
  v119 = *(v0 + 688);
  v300 = *(v110 + 72);
  v306 = *(v0 + 680);
  sub_2262D5EB8(v114 + ((v113 + 32) & ~v113), v119, type metadata accessor for RankedVisualAction);
  sub_22634EEEC();
  v116(v74, v117, v118);
  swift_beginAccess();
  sub_2262D5EB8(v119, v306, type metadata accessor for RankedVisualAction);
  v120 = *(v111 + v112);
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *(v111 + v112);
  *(v0 + 504) = v122;
  *(v111 + v112) = 0x8000000000000000;
  v81 = sub_2263394D8(v74);
  v124 = *(v122 + 16);
  v125 = (v123 & 1) == 0;
  v126 = __OFADD__(v124, v125);
  v127 = v124 + v125;
  if (v126)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  LOBYTE(v74) = v123;
  if (*(v122 + 24) < v127)
  {
    v128 = *(v0 + 976);
    sub_226336C74(v127, v121);
    v129 = *(v0 + 504);
    v81 = sub_2263394D8(v128);
    if ((v74 & 1) == (v130 & 1))
    {
      goto LABEL_47;
    }

LABEL_54:
    v191 = *(v0 + 928);

    return sub_226350C8C();
  }

  if ((v121 & 1) == 0)
  {
    goto LABEL_68;
  }

  while (1)
  {
LABEL_47:
    v154 = *(v0 + 504);
    v308 = v154;
    if (v74)
    {
      v155 = *(v0 + 976);
      v156 = *(v0 + 936);
      v157 = *(v0 + 928);
      sub_2262D6510(*(v0 + 680), v154[7] + v81 * v300, type metadata accessor for RankedVisualAction);
      v158 = *(v156 + 8);
      v158(v155, v157);
    }

    else
    {
      v159 = *(v0 + 1144);
      v160 = *(v0 + 1136);
      v161 = *(v0 + 976);
      v162 = *(v0 + 936);
      v163 = *(v0 + 928);
      v164 = *(v0 + 680);
      v154[(v81 >> 6) + 8] |= 1 << v81;
      v165 = v81;
      v160(v154[6] + *(v162 + 72) * v81, v161, v163);
      sub_2262D6000(v164, v154[7] + v165 * v300, type metadata accessor for RankedVisualAction);
      v158 = *(v162 + 8);
      v81 = (v158)(v161, v163);
      v166 = v154[2];
      v126 = __OFADD__(v166, 1);
      v167 = v166 + 1;
      if (v126)
      {
        __break(1u);
        goto LABEL_72;
      }

      v154[2] = v167;
    }

    v267 = v158;
    *(v0 + 1440) = v158;
    v300 = *(v0 + 1408);
    v168 = *(v0 + 1400);
    v288 = *(v0 + 1160);
    v292 = *(v0 + 1200);
    v284 = *(v0 + 1152);
    v169 = *(v0 + 1144);
    v170 = *(v0 + 1136);
    v171 = *(v0 + 1024);
    v277 = *(v0 + 1208);
    v281 = *(v0 + 1000);
    v172 = *(v0 + 984);
    v173 = *(v0 + 968);
    v174 = *(v0 + 928);
    v271 = *(v0 + 992);
    v274 = *(v0 + 848);
    v175 = *(v0 + 656);
    v297 = *(v0 + 648);
    v176 = *(v0 + 632);
    v74 = *(v0 + 536);
    v177 = *(v74 + v168);
    *(v74 + v168) = v308;

    swift_endAccess();
    v170(v173, v172, v174);
    v170(v175, v271, v174);
    sub_2262D66FC(v274, v175 + v176[5], &qword_27D792FE0, &unk_226351C10);

    sub_22634EEAC();
    sub_22634EE5C();
    v179 = v178;
    v284(v171, v281);
    v180 = (v175 + v176[6]);
    *v180 = v292;
    v180[1] = v277;
    *(v175 + v176[7]) = v179;
    swift_beginAccess();
    sub_2262D6000(v175, v297, type metadata accessor for ActionContext);
    v181 = *(v74 + v300);
    v182 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(v74 + v300);
    *(v0 + 512) = v183;
    *(v74 + v300) = 0x8000000000000000;
    v81 = sub_2263394D8(v173);
    v185 = *(v183 + 16);
    v186 = (v184 & 1) == 0;
    v126 = __OFADD__(v185, v186);
    v187 = v185 + v186;
    if (!v126)
    {
      break;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    v204 = v81;
    sub_22633A370();
    v81 = v204;
  }

  LOBYTE(v163) = v184;
  v164 = (v0 + 512);
  if (*(v183 + 24) >= v187)
  {
    if (v182)
    {
      goto LABEL_58;
    }

LABEL_72:
    v205 = v81;
    sub_22633A334();
    v81 = v205;
    v192 = *v164;
    if (v163)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

  v188 = *(v0 + 968);
  sub_226336C38(v187, v182);
  v189 = *(v0 + 512);
  v81 = sub_2263394D8(v188);
  if ((v163 & 1) != (v190 & 1))
  {
    goto LABEL_54;
  }

LABEL_58:
  v192 = *v164;
  if (v163)
  {
LABEL_59:
    v193 = *(v0 + 968);
    v194 = *(v0 + 928);
    v195 = *(v0 + 936) + 8;
    sub_2262D6510(*(v0 + 648), v192[7] + *(*(v0 + 640) + 72) * v81, type metadata accessor for ActionContext);
    (v267)(v193, v194);
    goto LABEL_75;
  }

LABEL_73:
  v206 = *(v0 + 1144);
  v207 = *(v0 + 1136);
  v208 = *(v0 + 968);
  v209 = *(v0 + 936);
  v210 = *(v0 + 928);
  v211 = *(v0 + 648);
  v212 = *(v0 + 640);
  v192[(v81 >> 6) + 8] |= 1 << v81;
  v213 = v81;
  v207(v192[6] + *(v209 + 72) * v81, v208, v210);
  sub_2262D6000(v211, v192[7] + *(v212 + 72) * v213, type metadata accessor for ActionContext);
  result = (v267)(v208, v210);
  v214 = v192[2];
  v126 = __OFADD__(v214, 1);
  v215 = v214 + 1;
  if (v126)
  {
    __break(1u);
    return result;
  }

  v192[2] = v215;
LABEL_75:
  v216 = *(v0 + 1416);
  v217 = *(v0 + 1408);
  v218 = *(v0 + 536);
  v219 = *(v218 + v217);
  *(v218 + v217) = v192;

  swift_endAccess();
  v220 = *(v218 + v216);
  v221 = swift_task_alloc();
  *(v0 + 1448) = v221;
  *v221 = v0;
  v221[1] = sub_2262BE7F8;
  v222 = *(v0 + 984);
  v223 = *(v0 + 920);
  v224 = *(v0 + 688);
  v225 = *(v0 + 592);

  return sub_2262D7724(v225, v222, v223, v220);
}

uint64_t sub_2262BE7F8()
{
  v1 = *(*v0 + 1448);
  v2 = *(*v0 + 536);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2262BE908, v2, 0);
}

uint64_t sub_2262BE908()
{
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  if ((*(v2 + 48))(v4, 1, v3) != 1)
  {
    v8 = *(v0 + 1432);
    v9 = *(v0 + 624);
    v10 = *(v0 + 616);
    v238 = *(v2 + 32);
    (v238)(v9, v4, v3);
    (*(v2 + 16))(v10, v9, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v0 + 1432);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_2262DCEFC(0, v12[2] + 1, 1, v12);
    }

    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v248 = sub_2262DCEFC(v13 > 1, v14 + 1, 1, v12);
    }

    else
    {
      v248 = v12;
    }

    v15 = *(v0 + 1144);
    v16 = *(v0 + 1136);
    v17 = *(v0 + 992);
    v18 = *(v0 + 960);
    v19 = *(v0 + 928);
    v20 = *(v0 + 616);
    v21 = *(v0 + 608);
    v22 = *(v0 + 600);
    v23 = *(v0 + 536);
    *(v248 + 16) = v14 + 1;
    (v238)(v248 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v14, v20, v22);
    v16(v18, v17, v19);
    v24 = sub_2262BA484();
    v25 = sub_2262C1B08((v0 + 368));
    v1 = *(v0 + 984);
    if (*v26)
    {
      v5 = v26;
      v236 = v25;
      v27 = *(v0 + 1144);
      (*(v0 + 1136))(*(v0 + 952), v1, *(v0 + 928));
      v1 = *v5;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v1;
      v238 = v24;
      if (v28)
      {
        goto LABEL_9;
      }

      goto LABEL_51;
    }

    v41 = *(v0 + 1440);
    v42 = *(v0 + 960);
    v5 = *(v0 + 928);
    v232 = *(v0 + 624);
    v236 = *(v0 + 688);
    v43 = *(v0 + 608);
    v44 = *(v0 + 600);
    v45 = *(v0 + 936) + 8;
    v25();
    v41(v42, v5);
    (v24)(v0 + 336, 0);
    (*(v43 + 8))(v232, v44);
    v41(v1, v5);
    v40 = v236;
    goto LABEL_13;
  }

  v5 = *(v0 + 688);
  v6 = *(v0 + 936) + 8;
  (*(v0 + 1440))(*(v0 + 984), *(v0 + 928));
  sub_2262D6068(v5, type metadata accessor for RankedVisualAction);
  sub_2262D67D8(v4, &qword_27D793088, &qword_226351F40);
  for (i = *(v0 + 1432); ; i = v248)
  {
    v46 = *(v0 + 1424) + 1;
    if (v46 == *(v0 + 1392))
    {
      v47 = *(v0 + 1208);
      v48 = *(v0 + 1160);
      v49 = *(v0 + 1152);
      v50 = *(v0 + 1460);
      v51 = *(v0 + 1040);
      v52 = *(v0 + 1024);
      v53 = *(v0 + 1000);

      sub_22634EEAC();
      sub_2262EBFE0(4, v52);
      v49(v52, v53);
      *(v51 + v50) = 0;
      v249 = i;
      if ([objc_opt_self() isInternalBuild])
      {
        v54 = *(v0 + 536) + *(v0 + 1128);
        v55 = sub_22634FCBC();
        v56 = *(v0 + 1384);
        if (v55)
        {
          v57 = *(v0 + 1344);
          v58 = *(v0 + 1336);
          v59 = *(v0 + 920);
          v60 = *(v0 + 904);
          v61 = *(v0 + 888);
          v62 = *(v0 + 880);
          v241 = *(v0 + 848);
          v244 = *(v0 + 872);
          v63 = *(v0 + 584);
          v233 = *(v0 + 896);
          v64 = *(v0 + 536);
          v239 = *(v0 + 1360);
          v65 = sub_22635064C();
          (*(*(v65 - 8) + 56))(v63, 1, 1, v65);
          v58(v60, v59, v62);
          v66 = sub_2262D62A4(&qword_27D7930A0, type metadata accessor for Session);
          v67 = (*(v61 + 80) + 40) & ~*(v61 + 80);
          v68 = swift_allocObject();
          *(v68 + 2) = v64;
          *(v68 + 3) = v66;
          *(v68 + 4) = v64;
          v69 = v62;
          i = v249;
          (*(v61 + 32))(&v68[v67], v60, v69);
          *&v68[(v233 + v67 + 7) & 0xFFFFFFFFFFFFFFF8] = v56;
          swift_retain_n();
          sub_2262FB4D4(0, 0, v63, &unk_226351F78, v68);

          sub_2262D67D8(v241, &qword_27D792FE0, &unk_226351C10);
          sub_2262D67D8(v244, &qword_27D793018, &unk_2263552F0);
LABEL_41:
          v141 = *(v0 + 1352);

          v142 = *(v0 + 1104);
          v143 = *(v0 + 536);
          sub_2262C1D18(0);
          sub_22634FFEC();

          v144 = sub_22635003C();
          v145 = sub_22635075C();
          v146 = os_log_type_enabled(v144, v145);
          v147 = *(v0 + 1104);
          v148 = *(v0 + 1088);
          v149 = *(v0 + 1080);
          if (v146)
          {
            v150 = swift_slowAlloc();
            *v150 = 134349056;
            *(v150 + 4) = *(i + 16);

            _os_log_impl(&dword_2262B6000, v144, v145, "Returning %{public}ld predicted actions", v150, 0xCu);
            MEMORY[0x22AA7D570](v150, -1, -1);

            (*(v148 + 8))(v147, v149);
          }

          else
          {

            (*(v148 + 8))(v147, v149);
          }

          v190 = *(v0 + 1368);
          v191 = *(v0 + 1376);
          v186 = *(v0 + 1152);
          v187 = *(v0 + 1160);
          v193 = *(v0 + 1120);
          v194 = *(v0 + 1112);
          v195 = *(v0 + 1104);
          v196 = *(v0 + 1096);
          v197 = *(v0 + 1072);
          v198 = *(v0 + 1064);
          v182 = *(v0 + 1024);
          v183 = *(v0 + 1040);
          v184 = *(v0 + 1000);
          v199 = *(v0 + 1016);
          v200 = *(v0 + 984);
          v201 = *(v0 + 976);
          v202 = *(v0 + 968);
          v203 = *(v0 + 960);
          v204 = *(v0 + 952);
          v151 = *(v0 + 936);
          v188 = *(v0 + 928);
          v189 = *(v0 + 992);
          v205 = *(v0 + 912);
          v206 = *(v0 + 904);
          v185 = *(v0 + 880);
          v207 = *(v0 + 872);
          v208 = *(v0 + 864);
          v209 = *(v0 + 856);
          v210 = *(v0 + 848);
          v211 = *(v0 + 840);
          v212 = *(v0 + 832);
          v213 = *(v0 + 824);
          v214 = *(v0 + 800);
          v215 = *(v0 + 776);
          v216 = *(v0 + 752);
          v217 = *(v0 + 728);
          v218 = *(v0 + 704);
          v220 = *(v0 + 696);
          v222 = *(v0 + 688);
          v224 = *(v0 + 680);
          v227 = *(v0 + 664);
          v230 = *(v0 + 656);
          v235 = *(v0 + 648);
          v237 = *(v0 + 624);
          v240 = *(v0 + 616);
          v243 = *(v0 + 592);
          v247 = *(v0 + 584);
          v152 = *(v0 + 576);
          v153 = *(v0 + 568);
          v154 = *(v0 + 560);
          v155 = *(v0 + 552);
          v156 = *(v0 + 544);
          v157 = *(v0 + 520);
          v192 = *(v0 + 944);
          v181 = *(v0 + 920);
          sub_22634F4DC();
          sub_22634F48C();
          sub_22634F56C();
          (*(v154 + 16))(v153, v152, v155);
          sub_22634F6EC();
          sub_22634EEAC();
          sub_2262EBFE0(0, v182);
          v186(v182, v184);
          sub_2262EC7A0();
          (*(v154 + 8))(v152, v155);
          v190(v181, v185);
          (*(v151 + 8))(v189, v188);
          sub_2262D6068(v183, type metadata accessor for Analytics);

          v158 = *(v0 + 8);

          return v158();
        }

        v138 = *(v0 + 872);
        v139 = *(v0 + 848);
        v140 = *(v0 + 1360);

        sub_2262D67D8(v139, &qword_27D792FE0, &unk_226351C10);
        sub_2262D67D8(v138, &qword_27D793018, &unk_2263552F0);
      }

      else
      {
        v91 = *(v0 + 1384);
        v92 = *(v0 + 1360);
        v93 = *(v0 + 872);
        v94 = *(v0 + 848);

        sub_2262D67D8(v94, &qword_27D792FE0, &unk_226351C10);
        sub_2262D67D8(v93, &qword_27D793018, &unk_2263552F0);
      }

      goto LABEL_41;
    }

    *(v0 + 1432) = i;
    *(v0 + 1424) = v46;
    v70 = *(v0 + 1384);
    if (v46 >= *(v70 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v71 = *(v0 + 1400);
    v72 = *(v0 + 1144);
    v73 = *(v0 + 1136);
    v74 = *(v0 + 984);
    v5 = *(v0 + 976);
    v75 = *(v0 + 928);
    v76 = *(v0 + 688);
    v248 = *(v0 + 680);
    v77 = *(v0 + 536);
    v245 = *(*(v0 + 672) + 72);
    v1 = type metadata accessor for RankedVisualAction;
    sub_2262D5EB8(v70 + ((*(v0 + 1468) + 32) & ~*(v0 + 1468)) + v245 * v46, v76, type metadata accessor for RankedVisualAction);
    sub_22634EEEC();
    v73(v5, v74, v75);
    swift_beginAccess();
    sub_2262D5EB8(v76, v248, type metadata accessor for RankedVisualAction);
    v78 = *(v77 + v71);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v77 + v71);
    *(v0 + 504) = v80;
    *(v77 + v71) = 0x8000000000000000;
    v81 = sub_2263394D8(v5);
    v83 = *(v80 + 16);
    v84 = (v82 & 1) == 0;
    v85 = __OFADD__(v83, v84);
    v86 = v83 + v84;
    if (v85)
    {
      goto LABEL_49;
    }

    v87 = v82;
    if (*(v80 + 24) >= v86)
    {
      if ((v79 & 1) == 0)
      {
        v159 = v81;
        sub_22633A370();
        v81 = v159;
      }
    }

    else
    {
      v88 = *(v0 + 976);
      sub_226336C74(v86, v79);
      v89 = *(v0 + 504);
      v81 = sub_2263394D8(v88);
      if ((v87 & 1) != (v90 & 1))
      {
        goto LABEL_33;
      }
    }

    v95 = *(v0 + 504);
    v248 = v95;
    if (v87)
    {
      v96 = *(v0 + 976);
      v97 = *(v0 + 936);
      v98 = *(v0 + 928);
      sub_2262D6510(*(v0 + 680), v95[7] + v81 * v245, type metadata accessor for RankedVisualAction);
      v99 = *(v97 + 8);
      v99(v96, v98);
    }

    else
    {
      v100 = *(v0 + 1144);
      v101 = *(v0 + 1136);
      v102 = *(v0 + 976);
      v103 = *(v0 + 936);
      v104 = *(v0 + 928);
      v105 = *(v0 + 680);
      v95[(v81 >> 6) + 8] |= 1 << v81;
      v106 = v81;
      v101(v95[6] + *(v103 + 72) * v81, v102, v104);
      sub_2262D6000(v105, v95[7] + v106 * v245, type metadata accessor for RankedVisualAction);
      v99 = *(v103 + 8);
      v107 = (v99)(v102, v104);
      v108 = v95[2];
      v85 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (v85)
      {
        __break(1u);
        goto LABEL_53;
      }

      v95[2] = v109;
    }

    v219 = v99;
    *(v0 + 1440) = v99;
    v246 = *(v0 + 1408);
    v110 = *(v0 + 1400);
    v236 = *(v0 + 1160);
    v238 = *(v0 + 1200);
    v234 = *(v0 + 1152);
    v111 = *(v0 + 1144);
    v1 = *(v0 + 1136);
    v112 = *(v0 + 1024);
    v226 = *(v0 + 1208);
    v229 = *(v0 + 1000);
    v113 = *(v0 + 984);
    v114 = *(v0 + 968);
    v115 = *(v0 + 928);
    v221 = *(v0 + 992);
    v223 = *(v0 + 848);
    v116 = *(v0 + 656);
    v242 = *(v0 + 648);
    v117 = *(v0 + 632);
    v5 = *(v0 + 536);
    v118 = *(v5 + v110);
    *(v5 + v110) = v248;

    swift_endAccess();
    (v1)(v114, v113, v115);
    (v1)(v116, v221, v115);
    sub_2262D66FC(v223, v116 + v117[5], &qword_27D792FE0, &unk_226351C10);

    sub_22634EEAC();
    sub_22634EE5C();
    v120 = v119;
    v234(v112, v229);
    v121 = (v116 + v117[6]);
    *v121 = v238;
    v121[1] = v226;
    *(v116 + v117[7]) = v120;
    swift_beginAccess();
    sub_2262D6000(v116, v242, type metadata accessor for ActionContext);
    v122 = *(v5 + v246);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v124 = *(v5 + v246);
    *(v0 + 512) = v124;
    *(v5 + v246) = 0x8000000000000000;
    v107 = sub_2263394D8(v114);
    v126 = *(v124 + 16);
    v127 = (v125 & 1) == 0;
    v85 = __OFADD__(v126, v127);
    v128 = v126 + v127;
    if (!v85)
    {
      break;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v1 = sub_2262DCED4(0, *(v1 + 16) + 1, 1, v1);
    *v5 = v1;
LABEL_9:
    v30 = *(v1 + 16);
    v29 = *(v1 + 24);
    if (v30 >= v29 >> 1)
    {
      v1 = sub_2262DCED4(v29 > 1, v30 + 1, 1, v1);
      *v5 = v1;
    }

    v31 = *(v0 + 1440);
    v32 = *(v0 + 960);
    v33 = *(v0 + 952);
    v34 = *(v0 + 936);
    v35 = *(v0 + 928);
    v228 = *(v0 + 984);
    v231 = *(v0 + 688);
    v225 = *(v0 + 624);
    v36 = *(v0 + 608);
    v37 = *(v0 + 600);
    v38 = *(v34 + 32);
    *(v1 + 16) = v30 + 1;
    v38(v1 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v30, v33, v35);
    v236();
    v31(v32, v35);
    v238();
    v39 = *(v36 + 8);
    v5 = (v36 + 8);
    v39(v225, v37);
    v31(v228, v35);
    v40 = v231;
LABEL_13:
    sub_2262D6068(v40, type metadata accessor for RankedVisualAction);
  }

  LOBYTE(v104) = v125;
  v105 = (v0 + 512);
  if (*(v124 + 24) >= v128)
  {
    if (v123)
    {
      goto LABEL_37;
    }

LABEL_53:
    v160 = v107;
    sub_22633A334();
    v107 = v160;
    v134 = *v105;
    if (v104)
    {
      goto LABEL_38;
    }

    goto LABEL_54;
  }

  v129 = *(v0 + 968);
  sub_226336C38(v128, v123);
  v130 = *(v0 + 512);
  v107 = sub_2263394D8(v129);
  if ((v104 & 1) != (v131 & 1))
  {
LABEL_33:
    v132 = *(v0 + 928);

    return sub_226350C8C();
  }

LABEL_37:
  v134 = *v105;
  if ((v104 & 1) == 0)
  {
LABEL_54:
    v161 = *(v0 + 1144);
    v162 = *(v0 + 1136);
    v163 = *(v0 + 968);
    v164 = *(v0 + 936);
    v165 = *(v0 + 928);
    v166 = *(v0 + 648);
    v167 = *(v0 + 640);
    v134[(v107 >> 6) + 8] |= 1 << v107;
    v168 = v107;
    v162(v134[6] + *(v164 + 72) * v107, v163, v165);
    sub_2262D6000(v166, v134[7] + *(v167 + 72) * v168, type metadata accessor for ActionContext);
    result = v219(v163, v165);
    v169 = v134[2];
    v85 = __OFADD__(v169, 1);
    v170 = v169 + 1;
    if (v85)
    {
      __break(1u);
      return result;
    }

    v134[2] = v170;
    goto LABEL_56;
  }

LABEL_38:
  v135 = *(v0 + 968);
  v136 = *(v0 + 928);
  v137 = *(v0 + 936) + 8;
  sub_2262D6510(*(v0 + 648), v134[7] + *(*(v0 + 640) + 72) * v107, type metadata accessor for ActionContext);
  v219(v135, v136);
LABEL_56:
  v171 = *(v0 + 1416);
  v172 = *(v0 + 1408);
  v173 = *(v0 + 536);
  v174 = *(v173 + v172);
  *(v173 + v172) = v134;

  swift_endAccess();
  v175 = *(v173 + v171);
  v176 = swift_task_alloc();
  *(v0 + 1448) = v176;
  *v176 = v0;
  v176[1] = sub_2262BE7F8;
  v177 = *(v0 + 984);
  v178 = *(v0 + 920);
  v179 = *(v0 + 688);
  v180 = *(v0 + 592);

  return sub_2262D7724(v180, v177, v178, v175);
}

uint64_t sub_2262BFB24(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(type metadata accessor for VisualAction(0) - 8);
  v3[5] = v4;
  v5 = *(v4 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262BFBF0, v2, 0);
}

uint64_t sub_2262BFBF0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = *(v0 + 40);
    *(v0 + 72) = *(*(v0 + 32) + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionEligibilityChecker);
    v4 = *(v3 + 80);
    *(v0 + 112) = v4;
    v5 = *(v3 + 72);
    v6 = MEMORY[0x277D84F90];
    *(v0 + 88) = 0;
    *(v0 + 96) = v6;
    *(v0 + 80) = v5;
    sub_2262D5EB8(v1 + ((v4 + 32) & ~v4), *(v0 + 56), type metadata accessor for VisualAction);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_2262BFD40;
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = *(v0 + 24);

    return sub_22634DAF0(v9, v10);
  }

  else
  {
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);

    v14 = *(v0 + 8);
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }
}

uint64_t sub_2262BFD40(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 116) = a1;

  return MEMORY[0x2822009F8](sub_2262BFE58, v3, 0);
}

uint64_t sub_2262BFE58()
{
  if (*(v0 + 116))
  {
    v1 = *(v0 + 96);
    sub_2262D5EB8(*(v0 + 56), *(v0 + 48), type metadata accessor for VisualAction);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_2262DC944(0, v3[2] + 1, 1, *(v0 + 96));
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_2262DC944(v4 > 1, v5 + 1, 1, v3);
    }

    v6 = *(v0 + 80);
    v7 = *(v0 + 48);
    v8 = (*(v0 + 112) + 32) & ~*(v0 + 112);
    sub_2262D6068(*(v0 + 56), type metadata accessor for VisualAction);
    v3[2] = v5 + 1;
    sub_2262D6000(v7, v3 + v8 + v6 * v5, type metadata accessor for VisualAction);
  }

  else
  {
    sub_2262D6068(*(v0 + 56), type metadata accessor for VisualAction);
    v3 = *(v0 + 96);
  }

  v9 = *(v0 + 88) + 1;
  if (v9 == *(v0 + 64))
  {
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);

    v12 = *(v0 + 8);

    return v12(v3);
  }

  else
  {
    *(v0 + 88) = v9;
    *(v0 + 96) = v3;
    sub_2262D5EB8(*(v0 + 16) + ((*(v0 + 112) + 32) & ~*(v0 + 112)) + *(v0 + 80) * v9, *(v0 + 56), type metadata accessor for VisualAction);
    v14 = swift_task_alloc();
    *(v0 + 104) = v14;
    *v14 = v0;
    v14[1] = sub_2262BFD40;
    v15 = *(v0 + 72);
    v16 = *(v0 + 56);
    v17 = *(v0 + 24);

    return sub_22634DAF0(v16, v17);
  }
}

uint64_t sub_2262C00A0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22634FF9C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930E0, &qword_226355500) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = sub_22634FE2C();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v12 = sub_22634F47C();
  v3[18] = v12;
  v13 = *(v12 - 8);
  v3[19] = v13;
  v14 = *(v13 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262C02A4, v2, 0);
}

uint64_t sub_2262C02A4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_2262D66FC(*(v0 + 48), v3, &qword_27D792FE0, &unk_226351C10);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v5 = *(v0 + 40);
    (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
    v6 = *(v5 + 32);
    *(v0 + 248) = v6;
    v7 = 1 << v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v5 + 56);
    v10 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appManager;
    *(v0 + 168) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appCategoryMapForTesting;
    *(v0 + 176) = v10;

    v14 = 0;
    v15 = MEMORY[0x277D84F98];
    while (1)
    {
      *(v0 + 184) = v15;
      *(v0 + 192) = 0;
      if (!v9)
      {
        while (1)
        {
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v18 >= (((1 << *(v0 + 248)) + 63) >> 6))
          {
            v62 = *(v0 + 40);
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

            v4 = *(v0 + 184);
            goto LABEL_47;
          }

          v17 = *(v0 + 40);
          v9 = *(v17 + 8 * v18 + 56);
          ++v14;
          if (v9)
          {
            v14 = v18;
            goto LABEL_15;
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
        return MEMORY[0x2822009F8](v11, v12, v13);
      }

      v17 = *(v0 + 40);
LABEL_15:
      *(v0 + 200) = v9;
      *(v0 + 208) = v14;
      v19 = (*(v17 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v9)))));
      v20 = *v19;
      *(v0 + 216) = *v19;
      v21 = v19[1];
      *(v0 + 224) = v21;

      if (v20 == sub_22634FFAC() && v21 == v22)
      {
        break;
      }

      v24 = sub_226350C4C();

      if (v24)
      {
        goto LABEL_29;
      }

      v25 = *(*(v0 + 56) + *(v0 + 168));
      if (!v25 || !*(v25 + 16))
      {
        goto LABEL_55;
      }

      v26 = sub_22633941C(v20, v21);
      if ((v27 & 1) == 0)
      {

LABEL_55:
        v12 = *(*(v0 + 56) + *(v0 + 176));
        *(v0 + 232) = v12;
        v11 = sub_2262C08D4;
        v13 = 0;

        return MEMORY[0x2822009F8](v11, v12, v13);
      }

      v28 = *(v0 + 96);
      v29 = *(v0 + 104);
      v30 = *(v0 + 88);
      v31 = *(*(v25 + 56) + 8 * v26);

      sub_22634FE1C();
      if ((*(v29 + 48))(v30, 1, v28) == 1)
      {
        sub_2262D67D8(*(v0 + 88), &qword_27D7930E0, &qword_226355500);
        goto LABEL_55;
      }

      v32 = *(v0 + 184);
      v33 = *(v0 + 160);
      (*(*(v0 + 104) + 32))(*(v0 + 128), *(v0 + 88), *(v0 + 96));
      v34 = sub_22634EB84();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 24) = v32;
      v11 = sub_22633941C(v20, v21);
      v36 = *(v32 + 16);
      v37 = (v12 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_61;
      }

      v40 = v12;
      if (*(*(v0 + 184) + 24) >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = v11;
          sub_226339F9C();
          v11 = v61;
        }
      }

      else
      {
        sub_2263366F4(v39, isUniquelyReferenced_nonNull_native);
        v41 = *(v0 + 24);
        v11 = sub_22633941C(v20, v21);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_50;
        }
      }

      v53 = v34;
      v54 = *(v0 + 128);
      v55 = *(v0 + 96);
      v56 = *(v0 + 104);
      if (v40)
      {
        v57 = v11;

        v15 = *(v0 + 24);
        *(v15[7] + 8 * v57) = v53;
        v11 = (*(v56 + 8))(v54, v55);
        goto LABEL_8;
      }

      v15 = *(v0 + 24);
      v15[(v11 >> 6) + 8] |= 1 << v11;
      v58 = (v15[6] + 16 * v11);
      *v58 = v20;
      v58[1] = v21;
      *(v15[7] + 8 * v11) = v53;
      v11 = (*(v56 + 8))(v54, v55);
      v59 = v15[2];
      v38 = __OFADD__(v59, 1);
      v52 = v59 + 1;
      if (v38)
      {
        goto LABEL_62;
      }

LABEL_43:
      v15[2] = v52;
LABEL_8:
      v14 = *(v0 + 208);
      v9 = (*(v0 + 200) - 1) & *(v0 + 200);
    }

LABEL_29:
    v43 = *(v0 + 184);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 32) = v43;
    v11 = sub_22633941C(v20, v21);
    v45 = *(v43 + 16);
    v46 = (v12 & 1) == 0;
    v38 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v38)
    {
      goto LABEL_59;
    }

    v48 = v12;
    if (*(*(v0 + 184) + 24) >= v47)
    {
      if ((v44 & 1) == 0)
      {
        v60 = v11;
        sub_226339F9C();
        v11 = v60;
        if (v48)
        {
LABEL_7:
          v16 = v11;

          v15 = *(v0 + 32);
          *(v15[7] + 8 * v16) = 3;
          goto LABEL_8;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_2263366F4(v47, v44);
      v49 = *(v0 + 32);
      v11 = sub_22633941C(v20, v21);
      if ((v48 & 1) != (v12 & 1))
      {
LABEL_50:

        return sub_226350C8C();
      }
    }

    if (v48)
    {
      goto LABEL_7;
    }

LABEL_35:
    v15 = *(v0 + 32);
    v15[(v11 >> 6) + 8] |= 1 << v11;
    v50 = (v15[6] + 16 * v11);
    *v50 = v20;
    v50[1] = v21;
    *(v15[7] + 8 * v11) = 3;
    v51 = v15[2];
    v38 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v38)
    {
      goto LABEL_60;
    }

    goto LABEL_43;
  }

  sub_2262D67D8(*(v0 + 136), &qword_27D792FE0, &unk_226351C10);
  v4 = sub_2262FE004(MEMORY[0x277D84F90]);
LABEL_47:
  v63 = *(v0 + 160);
  v65 = *(v0 + 128);
  v64 = *(v0 + 136);
  v67 = *(v0 + 112);
  v66 = *(v0 + 120);
  v69 = *(v0 + 80);
  v68 = *(v0 + 88);

  v70 = *(v0 + 8);

  return v70(v4);
}

uint64_t sub_2262C08D4()
{
  v1 = v0[29];
  v2 = v0[24];
  sub_22632F498(v0[27], v0[28], v0[10]);
  v0[30] = v2;
  if (v2)
  {
    v3 = v0[28];
    v4 = v0[7];

    v5 = sub_2262C10A4;
    v6 = v4;
  }

  else
  {
    v6 = v0[7];
    v5 = sub_2262C0988;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_2262C0988()
{
  v100 = *(v0 + 216);
  v101 = *(v0 + 224);
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 112);
  v10 = *(v0 + 120);
  v4 = *(v0 + 96);
  v8 = *(v0 + 104);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  sub_22634FF3C();
  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 32);
  LOBYTE(v8) = v8 + 32;
  v9(v10, v3, v4);
  LOBYTE(v10) = sub_22634EB84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v1;
  v12 = sub_22633941C(v100, v101);
  v14 = *(v1 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v99 = v12;
    sub_226339F9C();
    v12 = v99;
    goto LABEL_8;
  }

  LOBYTE(v8) = v13;
  if (*(*(v0 + 184) + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  sub_2263366F4(v17, isUniquelyReferenced_nonNull_native);
  v20 = *(v0 + 16);
  v12 = sub_22633941C(v19, v18);
  if ((v8 & 1) != (v21 & 1))
  {
LABEL_4:

    return sub_226350C8C();
  }

LABEL_8:
  v23 = v10;
  v24 = *(v0 + 224);
  if (v8)
  {
    v25 = *(v0 + 120);
    v10 = *(v0 + 96);
    v8 = *(v0 + 104);
    v26 = v12;
    v27 = *(v0 + 224);

    v28 = *(v0 + 16);
    *(v28[7] + 8 * v26) = v23;
    v29 = *(v8 + 8);
    LOBYTE(v8) = v8 + 8;
    v12 = v29(v25, v10);
LABEL_12:
    v39 = *(v0 + 240);
    while (1)
    {
      v42 = *(v0 + 200);
      v41 = *(v0 + 208);
      *(v0 + 184) = v28;
      *(v0 + 192) = v39;
      v43 = (v42 - 1) & v42;
      if (!v43)
      {
        while (1)
        {
          v45 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v45 >= (((1 << *(v0 + 248)) + 63) >> 6))
          {
            break;
          }

          v44 = *(v0 + 40);
          v43 = *(v44 + 8 * v45 + 56);
          ++v41;
          if (v43)
          {
            v41 = v45;
            goto LABEL_20;
          }
        }

        v89 = *(v0 + 40);
        (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

        v90 = *(v0 + 184);
        v91 = *(v0 + 160);
        v93 = *(v0 + 128);
        v92 = *(v0 + 136);
        v95 = *(v0 + 112);
        v94 = *(v0 + 120);
        v97 = *(v0 + 80);
        v96 = *(v0 + 88);

        v98 = *(v0 + 8);

        return v98(v90);
      }

      v44 = *(v0 + 40);
LABEL_20:
      *(v0 + 200) = v43;
      *(v0 + 208) = v41;
      v46 = (*(v44 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v43)))));
      v8 = *v46;
      *(v0 + 216) = *v46;
      v10 = v46[1];
      *(v0 + 224) = v10;

      if (v8 == sub_22634FFAC() && v10 == v47)
      {
        break;
      }

      v49 = sub_226350C4C();

      if (v49)
      {
LABEL_34:
        v68 = *(v0 + 184);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 32) = v68;
        v12 = sub_22633941C(v8, v10);
        v71 = *(v68 + 16);
        v72 = (v70 & 1) == 0;
        v16 = __OFADD__(v71, v72);
        v73 = v71 + v72;
        if (v16)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v74 = v70;
        if (*(*(v0 + 184) + 24) >= v73)
        {
          if (v69)
          {
            goto LABEL_39;
          }

          v87 = v12;
          sub_226339F9C();
          v12 = v87;
          if (v74)
          {
            goto LABEL_13;
          }

LABEL_40:
          v28 = *(v0 + 32);
          v28[(v12 >> 6) + 8] |= 1 << v12;
          v77 = (v28[6] + 16 * v12);
          *v77 = v8;
          v77[1] = v10;
          *(v28[7] + 8 * v12) = 3;
          v78 = v28[2];
          v16 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v16)
          {
            goto LABEL_62;
          }

          v28[2] = v79;
        }

        else
        {
          sub_2263366F4(v73, v69);
          v75 = *(v0 + 32);
          v12 = sub_22633941C(v8, v10);
          if ((v74 & 1) != (v76 & 1))
          {
            goto LABEL_4;
          }

LABEL_39:
          if ((v74 & 1) == 0)
          {
            goto LABEL_40;
          }

LABEL_13:
          v40 = v12;

          v28 = *(v0 + 32);
          *(v28[7] + 8 * v40) = 3;
        }
      }

      else
      {
        v50 = *(*(v0 + 56) + *(v0 + 168));
        if (!v50 || !*(v50 + 16))
        {
          goto LABEL_56;
        }

        v51 = sub_22633941C(v8, v10);
        if ((v52 & 1) == 0)
        {

          goto LABEL_56;
        }

        v102 = v39;
        v53 = *(v0 + 96);
        v54 = *(v0 + 104);
        v55 = *(v0 + 88);
        v56 = *(*(v50 + 56) + 8 * v51);

        sub_22634FE1C();
        if ((*(v54 + 48))(v55, 1, v53) == 1)
        {
          sub_2262D67D8(*(v0 + 88), &qword_27D7930E0, &qword_226355500);
LABEL_56:
          v35 = *(*(v0 + 56) + *(v0 + 176));
          *(v0 + 232) = v35;
          v12 = sub_2262C08D4;
          v36 = 0;

          return MEMORY[0x2822009F8](v12, v35, v36);
        }

        v57 = *(v0 + 184);
        v58 = *(v0 + 160);
        (*(*(v0 + 104) + 32))(*(v0 + 128), *(v0 + 88), *(v0 + 96));
        v59 = sub_22634EB84();
        v60 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 24) = v57;
        v12 = sub_22633941C(v8, v10);
        v62 = *(v57 + 16);
        v63 = (v61 & 1) == 0;
        v16 = __OFADD__(v62, v63);
        v64 = v62 + v63;
        if (v16)
        {
          goto LABEL_63;
        }

        v65 = v61;
        if (*(*(v0 + 184) + 24) >= v64)
        {
          if ((v60 & 1) == 0)
          {
            v88 = v12;
            sub_226339F9C();
            v12 = v88;
          }
        }

        else
        {
          sub_2263366F4(v64, v60);
          v66 = *(v0 + 24);
          v12 = sub_22633941C(v8, v10);
          if ((v65 & 1) != (v67 & 1))
          {
            goto LABEL_4;
          }
        }

        v80 = v59;
        v81 = *(v0 + 128);
        v82 = *(v0 + 96);
        v83 = *(v0 + 104);
        if (v65)
        {
          v8 = v12;

          v28 = *(v0 + 24);
          *(v28[7] + 8 * v8) = v80;
          v12 = (*(v83 + 8))(v81, v82);
        }

        else
        {
          v28 = *(v0 + 24);
          v28[(v12 >> 6) + 8] |= 1 << v12;
          v84 = (v28[6] + 16 * v12);
          *v84 = v8;
          v84[1] = v10;
          *(v28[7] + 8 * v12) = v80;
          v12 = (*(v83 + 8))(v81, v82);
          v85 = v28[2];
          v16 = __OFADD__(v85, 1);
          v86 = v85 + 1;
          if (v16)
          {
            goto LABEL_66;
          }

          v28[2] = v86;
        }

        v39 = v102;
      }
    }

    goto LABEL_34;
  }

  v30 = *(v0 + 216);
  v31 = *(v0 + 120);
  v32 = *(v0 + 96);
  v33 = *(v0 + 104);
  v28 = *(v0 + 16);
  v28[(v12 >> 6) + 8] |= 1 << v12;
  v34 = (v28[6] + 16 * v12);
  *v34 = v30;
  v34[1] = v24;
  *(v28[7] + 8 * v12) = v10;
  v12 = (*(v33 + 8))(v31, v32);
  v37 = v28[2];
  v16 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v16)
  {
    v28[2] = v38;
    goto LABEL_12;
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return MEMORY[0x2822009F8](v12, v35, v36);
}

uint64_t sub_2262C10A4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 208);
  v5 = (*(v3 + 200) - 1) & *(v3 + 200);
  while (1)
  {
    *(v3 + 192) = 0;
    if (!v5)
    {
      break;
    }

    v8 = *(v3 + 40);
LABEL_10:
    *(v3 + 200) = v5;
    *(v3 + 208) = v4;
    v10 = (*(v8 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v10;
    *(v3 + 216) = *v10;
    v12 = v10[1];
    *(v3 + 224) = v12;

    if (v11 == sub_22634FFAC() && v12 == v13)
    {

LABEL_24:
      v34 = *(v3 + 184);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 32) = v34;
      a1 = sub_22633941C(v11, v12);
      v36 = *(v34 + 16);
      v37 = (a2 & 1) == 0;
      v29 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v29)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      v39 = a2;
      if (*(*(v3 + 184) + 24) < v38)
      {
        sub_2263366F4(v38, isUniquelyReferenced_nonNull_native);
        v40 = *(v3 + 32);
        a1 = sub_22633941C(v11, v12);
        if ((v39 & 1) != (a2 & 1))
        {
LABEL_44:

          return sub_226350C8C();
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_29:
        if (v39)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v51 = a1;
        sub_226339F9C();
        a1 = v51;
        if (v39)
        {
LABEL_2:
          v6 = a1;

          v7 = *(v3 + 32);
          *(v7[7] + 8 * v6) = 3;
          goto LABEL_3;
        }
      }

      v7 = *(v3 + 32);
      v7[(a1 >> 6) + 8] |= 1 << a1;
      v41 = (v7[6] + 16 * a1);
      *v41 = v11;
      v41[1] = v12;
      *(v7[7] + 8 * a1) = 3;
      v42 = v7[2];
      v29 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v29)
      {
        goto LABEL_54;
      }

      goto LABEL_38;
    }

    v15 = sub_226350C4C();

    if (v15)
    {
      goto LABEL_24;
    }

    v16 = *(*(v3 + 56) + *(v3 + 168));
    if (!v16 || !*(v16 + 16))
    {
      goto LABEL_49;
    }

    v17 = sub_22633941C(v11, v12);
    if ((v18 & 1) == 0)
    {

LABEL_49:
      a2 = *(*(v3 + 56) + *(v3 + 176));
      *(v3 + 232) = a2;
      a1 = sub_2262C08D4;
      a3 = 0;

      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v19 = *(v3 + 96);
    v20 = *(v3 + 104);
    v21 = *(v3 + 88);
    v22 = *(*(v16 + 56) + 8 * v17);

    sub_22634FE1C();
    if ((*(v20 + 48))(v21, 1, v19) == 1)
    {
      sub_2262D67D8(*(v3 + 88), &qword_27D7930E0, &qword_226355500);
      goto LABEL_49;
    }

    v23 = *(v3 + 184);
    v24 = *(v3 + 160);
    (*(*(v3 + 104) + 32))(*(v3 + 128), *(v3 + 88), *(v3 + 96));
    v25 = sub_22634EB84();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v23;
    a1 = sub_22633941C(v11, v12);
    v27 = *(v23 + 16);
    v28 = (a2 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_55;
    }

    v31 = a2;
    if (*(*(v3 + 184) + 24) >= v30)
    {
      if ((v26 & 1) == 0)
      {
        v52 = a1;
        sub_226339F9C();
        a1 = v52;
      }
    }

    else
    {
      sub_2263366F4(v30, v26);
      v32 = *(v3 + 24);
      a1 = sub_22633941C(v11, v12);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_44;
      }
    }

    v44 = v25;
    v45 = *(v3 + 128);
    v46 = *(v3 + 96);
    v47 = *(v3 + 104);
    if (v31)
    {
      v48 = a1;

      v7 = *(v3 + 24);
      *(v7[7] + 8 * v48) = v44;
      a1 = (*(v47 + 8))(v45, v46);
      goto LABEL_3;
    }

    v7 = *(v3 + 24);
    v7[(a1 >> 6) + 8] |= 1 << a1;
    v49 = (v7[6] + 16 * a1);
    *v49 = v11;
    v49[1] = v12;
    *(v7[7] + 8 * a1) = v44;
    a1 = (*(v47 + 8))(v45, v46);
    v50 = v7[2];
    v29 = __OFADD__(v50, 1);
    v43 = v50 + 1;
    if (v29)
    {
      goto LABEL_56;
    }

LABEL_38:
    v7[2] = v43;
LABEL_3:
    v4 = *(v3 + 208);
    v5 = (*(v3 + 200) - 1) & *(v3 + 200);
    *(v3 + 184) = v7;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v9 >= (((1 << *(v3 + 248)) + 63) >> 6))
    {
      break;
    }

    v8 = *(v3 + 40);
    v5 = *(v8 + 8 * v9 + 56);
    ++v4;
    if (v5)
    {
      v4 = v9;
      goto LABEL_10;
    }
  }

  v53 = *(v3 + 40);
  (*(*(v3 + 152) + 8))(*(v3 + 160), *(v3 + 144));

  v54 = *(v3 + 184);
  v55 = *(v3 + 160);
  v57 = *(v3 + 128);
  v56 = *(v3 + 136);
  v59 = *(v3 + 112);
  v58 = *(v3 + 120);
  v61 = *(v3 + 80);
  v60 = *(v3 + 88);

  v62 = *(v3 + 8);

  return v62(v54);
}

uint64_t sub_2262C1608()
{
  v1 = v0;
  v2 = sub_22634EECC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  v10 = sub_22634FDFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277D78CE0], v10);
  sub_2262D62A4(&unk_28137E088, MEMORY[0x277D78CF0]);
  sub_22635051C();
  sub_22635051C();
  (*(v11 + 8))(v14, v10);
  if (v32[1] == v32[0])
  {
    return sub_22634FFAC();
  }

  v16 = [objc_opt_self() currentAppInFocusStartEvent];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 bundleID];

    v19 = sub_22635046C();
    v21 = v20;

    if (v19 == sub_22634FFAC() && v21 == v22)
    {

      return v19;
    }

    v23 = v19;
    v24 = sub_226350C4C();

    if (v24)
    {
      return v23;
    }
  }

  v25 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appInFocusStream);
  sub_22634EEAC();
  sub_22634EE7C();
  v26 = *(v3 + 8);
  v26(v7, v2);
  v27 = sub_22634EE8C();
  v26(v9, v2);
  sub_22634EEAC();
  v28 = sub_22634EE8C();
  v26(v9, v2);
  v29 = [v25 getLastAppLaunchSessionBetweenStartDate:v27 endDate:v28];

  if (!v29)
  {
    return 0;
  }

  v30 = [v29 bundleID];

  v31 = sub_22635046C();
  return v31;
}

size_t sub_2262C19D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2262E8694(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for RankedVisualAction() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2262D6000(v11, a2, type metadata accessor for RankedVisualAction);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void (*sub_2262C1B08(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_22634EEFC();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_2262D1A14(v4, v9);
  return sub_2262C1C20;
}

void sub_2262C1C20(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_2262C1C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return MEMORY[0x2822009F8](sub_2262C1CB8, a4, 0);
}

uint64_t sub_2262C1CB8()
{
  sub_2262D4CDC(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2262C1D18(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793028, &qword_226351EE8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v217 = &v204 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793030, &qword_226351EF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v216 = &v204 - v9;
  v10 = sub_22634EEFC();
  v225 = *(v10 - 8);
  v11 = *(v225 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v220 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v204 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v204 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v204 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v204 - v23;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v25 = *(v224 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v224);
  v215 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v223 = &v204 - v30;
  MEMORY[0x28223BE20](v29);
  v222 = (&v204 - v31);
  v206 = v2;
  v226 = v10;
  if (a1)
  {
    v208 = v24;
    v32 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
    swift_beginAccess();
    v205 = v32;
    v33 = *(v2 + v32);

    v35 = sub_2262D4B1C(v34, a1);
    v204 = 0;
    v36 = v35;

    v37 = *(v36 + 16);
    if (v37)
    {
      v227 = MEMORY[0x277D84F90];
      sub_2263165F0(0, v37, 0);
      v221 = v227;
      v38 = v36 + 64;
      v39 = -1 << *(v36 + 32);
      v40 = sub_2263508DC();
      v41 = 0;
      v213 = (v225 + 16);
      v212 = v225 + 32;
      v211 = v225 + 8;
      v207 = v36 + 72;
      v209 = v37;
      v214 = v36 + 64;
      v210 = v36;
      v42 = v226;
      while ((v40 & 0x8000000000000000) == 0 && v40 < 1 << *(v36 + 32))
      {
        v44 = v40 >> 6;
        if ((*(v38 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
        {
          goto LABEL_103;
        }

        v45 = *(v36 + 36);
        v218 = v41;
        v219 = v45;
        v47 = v224;
        v46 = v225;
        v48 = *(v224 + 48);
        v49 = v222;
        (*(v225 + 16))(v222, *(v36 + 48) + *(v225 + 72) * v40, v42);
        v50 = *(v36 + 56);
        v51 = (type metadata accessor for ActionContext() - 8);
        sub_2262D5EB8(v50 + *(*v51 + 72) * v40, v49 + v48, type metadata accessor for ActionContext);
        v52 = v223;
        (*(v46 + 32))(v223, v49, v42);
        sub_2262D6000(v49 + v48, v52 + *(v47 + 48), type metadata accessor for ActionContext);
        v53 = v215;
        sub_2262D6764(v52, v215, &qword_27D7930D0, &unk_226352510);
        v54 = v53 + *(v47 + 48);
        v55 = *(v54 + v51[9]);
        sub_2262D6068(v54, type metadata accessor for ActionContext);
        (*(v46 + 8))(v53, v42);
        v227 = v221;
        v57 = *(v221 + 16);
        v56 = *(v221 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_2263165F0((v56 > 1), v57 + 1, 1);
          v221 = v227;
        }

        v58 = v221;
        *(v221 + 16) = v57 + 1;
        *(v58 + 8 * v57 + 32) = v55;
        v36 = v210;
        v43 = 1 << *(v210 + 32);
        v38 = v214;
        if (v40 >= v43)
        {
          goto LABEL_104;
        }

        v59 = *(v214 + 8 * v44);
        if ((v59 & (1 << v40)) == 0)
        {
          goto LABEL_105;
        }

        if (v219 != *(v210 + 36))
        {
          goto LABEL_106;
        }

        v60 = v59 & (-2 << (v40 & 0x3F));
        if (v60)
        {
          v43 = __clz(__rbit64(v60)) | v40 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v61 = v44 << 6;
          v62 = v44 + 1;
          v63 = (v207 + 8 * v44);
          while (v62 < (v43 + 63) >> 6)
          {
            v65 = *v63++;
            v64 = v65;
            v61 += 64;
            ++v62;
            if (v65)
            {
              sub_2262D67CC(v40, v219, 0);
              v43 = __clz(__rbit64(v64)) + v61;
              goto LABEL_5;
            }
          }

          sub_2262D67CC(v40, v219, 0);
        }

LABEL_5:
        v41 = (v218 + 1);
        v40 = v43;
        if ((v218 + 1) == v209)
        {

          v10 = v226;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v221 = MEMORY[0x277D84F90];
LABEL_34:
    v40 = v220;
    v84 = *(v221 + 16);
    v2 = v206;
    if (!v84)
    {

      v126 = MEMORY[0x277D84F90];
      v97 = v225;
      v127 = *(MEMORY[0x277D84F90] + 16);
      if (!v127)
      {
      }

LABEL_88:
      v163 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
      v164 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
      v166 = *(v97 + 16);
      v165 = v97 + 16;
      v167 = *(v165 + 64);
      v218 = v126;
      v219 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
      v168 = v126 + ((v167 + 32) & ~v167);
      v169 = (v165 - 8);
      v170 = *(v165 + 56);
      v221 = v166;
      v222 = (v165 - 8);
      v225 = v165;
      v215 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
      v223 = v170;
      do
      {
        v224 = v127;
        (v221)(v40, v168, v10);
        swift_beginAccess();
        v174 = *(v2 + v163);
        v175 = sub_2263394D8(v40);
        if (v176)
        {
          v177 = v175;
          v178 = *(v2 + v163);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v180 = *(v2 + v163);
          v228 = v180;
          *(v2 + v163) = 0x8000000000000000;
          v181 = v2;
          v182 = v163;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22633A370();
            v180 = v228;
          }

          (*v169)(*(v180 + 48) + v177 * v223, v10);
          v183 = *(v180 + 56);
          v184 = type metadata accessor for RankedVisualAction();
          v185 = *(v184 - 8);
          v186 = v183 + *(v185 + 72) * v177;
          v187 = v216;
          sub_2262D6000(v186, v216, type metadata accessor for RankedVisualAction);
          sub_2262E2400(v177, v180);
          v188 = *(v181 + v182);
          *(v181 + v182) = v180;

          (*(v185 + 56))(v187, 0, 1, v184);
          v10 = v226;
          v2 = v181;
          v40 = v220;
          v164 = v215;
        }

        else
        {
          v189 = type metadata accessor for RankedVisualAction();
          v187 = v216;
          (*(*(v189 - 8) + 56))(v216, 1, 1, v189);
        }

        sub_2262D67D8(v187, &qword_27D793030, &qword_226351EF0);
        swift_endAccess();
        swift_beginAccess();
        v190 = *(v2 + v164);
        v191 = sub_2263394D8(v40);
        if (v192)
        {
          v193 = v191;
          v194 = *(v2 + v164);
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v196 = *(v2 + v164);
          v228 = v196;
          *(v2 + v164) = 0x8000000000000000;
          v197 = v2;
          if (!v195)
          {
            sub_22633A334();
            v196 = v228;
          }

          v169 = v222;
          v173 = v223;
          (*v222)(*(v196 + 48) + v193 * v223, v10);
          v198 = *(v196 + 56);
          v199 = type metadata accessor for ActionContext();
          v200 = *(v199 - 8);
          v201 = v198 + *(v200 + 72) * v193;
          v172 = v217;
          sub_2262D6000(v201, v217, type metadata accessor for ActionContext);
          sub_2262E23E8(v193, v196);
          v202 = *(v197 + v164);
          *(v197 + v164) = v196;

          (*(v200 + 56))(v172, 0, 1, v199);
          v10 = v226;
          v2 = v197;
          v40 = v220;
        }

        else
        {
          v171 = type metadata accessor for ActionContext();
          v172 = v217;
          (*(*(v171 - 8) + 56))(v217, 1, 1, v171);
          v169 = v222;
          v173 = v223;
        }

        sub_2262D67D8(v172, &qword_27D793028, &qword_226351EE8);
        swift_endAccess();
        (*v169)(v40, v10);
        v168 += v173;
        v127 = v224 - 1;
        v163 = v219;
      }

      while (v224 != 1);
    }

    v85 = *(v221 + 32);
    v86 = v84 - 1;
    if (v86)
    {
      v87 = (v221 + 40);
      do
      {
        v88 = *v87++;
        v89 = v88;
        if (v88 < v85)
        {
          v85 = v89;
        }

        --v86;
      }

      while (v86);
    }

    v90 = *(v2 + v205);

    v92 = sub_2262D3ADC(v91, v85);

    v40 = *(v92 + 16);
    if (v40)
    {
      v227 = MEMORY[0x277D84F90];
      sub_226316650(0, v40, 0);
      v218 = v227;
      v93 = v92 + 64;
      v94 = -1 << *(v92 + 32);
      v95 = sub_2263508DC();
      v96 = 0;
      v97 = v225;
      v212 = v225 + 16;
      v211 = v225 + 32;
      v205 = v92 + 72;
      v207 = v40;
      v209 = (v92 + 64);
      v210 = v92;
      while ((v95 & 0x8000000000000000) == 0 && v95 < 1 << *(v92 + 32))
      {
        v100 = v95 >> 6;
        if ((*(v93 + 8 * (v95 >> 6)) & (1 << v95)) == 0)
        {
          goto LABEL_108;
        }

        v219 = 1 << v95;
        v213 = v96;
        v214 = *(v92 + 36);
        v101 = v224;
        v102 = *(v224 + 48);
        v103 = *(v92 + 48);
        v221 = *(v97 + 72);
        v104 = v222;
        v105 = v226;
        (*(v97 + 16))(v222, v103 + v221 * v95, v226);
        v106 = *(v92 + 56);
        v107 = v106 + *(*(type metadata accessor for ActionContext() - 8) + 72) * v95;
        v108 = v225;
        sub_2262D5EB8(v107, v104 + v102, type metadata accessor for ActionContext);
        v109 = *(v108 + 32);
        v110 = v223;
        v109(v223, v104, v105);
        v111 = v104 + v102;
        v40 = v208;
        sub_2262D6000(v111, v110 + *(v101 + 48), type metadata accessor for ActionContext);
        v112 = v110;
        v113 = v215;
        sub_2262D6764(v112, v215, &qword_27D7930D0, &unk_226352510);
        v114 = *(v101 + 48);
        v109(v40, v113, v105);
        sub_2262D6068(v113 + v114, type metadata accessor for ActionContext);
        v115 = v218;
        v227 = v218;
        v117 = *(v218 + 16);
        v116 = *(v218 + 24);
        if (v117 >= v116 >> 1)
        {
          sub_226316650(v116 > 1, v117 + 1, 1);
          v108 = v225;
          v115 = v227;
        }

        v115[2] = v117 + 1;
        v118 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v218 = v115;
        v109(v115 + v118 + v117 * v221, v40, v105);
        v92 = v210;
        v98 = 1 << *(v210 + 32);
        if (v95 >= v98)
        {
          goto LABEL_109;
        }

        v93 = v209;
        v119 = v209[v100];
        if ((v119 & v219) == 0)
        {
          goto LABEL_110;
        }

        if (v214 != *(v210 + 36))
        {
          goto LABEL_111;
        }

        v120 = v119 & (-2 << (v95 & 0x3F));
        if (v120)
        {
          v98 = __clz(__rbit64(v120)) | v95 & 0x7FFFFFFFFFFFFFC0;
          v10 = v226;
          v40 = v207;
          v99 = v213;
        }

        else
        {
          v121 = v100 << 6;
          v122 = v100 + 1;
          v123 = (v205 + 8 * v100);
          v10 = v226;
          v40 = v207;
          v99 = v213;
          while (v122 < (v98 + 63) >> 6)
          {
            v125 = *v123++;
            v124 = v125;
            v121 += 64;
            ++v122;
            if (v125)
            {
              sub_2262D67CC(v95, v214, 0);
              v98 = __clz(__rbit64(v124)) + v121;
              goto LABEL_43;
            }
          }

          sub_2262D67CC(v95, v214, 0);
        }

LABEL_43:
        v96 = v99 + 1;
        v95 = v98;
        v97 = v225;
        if (v96 == v40)
        {

          v2 = v206;
          v40 = v220;
          v126 = v218;
          v127 = *(v218 + 16);
          if (v127)
          {
            goto LABEL_88;
          }
        }
      }

LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v126 = MEMORY[0x277D84F90];
    v2 = v206;
LABEL_84:
    v97 = v225;
LABEL_85:
    v40 = v220;
    v127 = v126[2];
    if (!v127)
    {
    }

    goto LABEL_88;
  }

  v66 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  swift_beginAccess();
  v67 = *(v2 + v66);
  v40 = *(v67 + 16);
  if (v40 < 0x3E9)
  {
    v126 = MEMORY[0x277D84F90];
    goto LABEL_84;
  }

  v221 = v22;
  v213 = v19;
  v214 = v16;
  v68 = sub_2262DD73C(v40, 0);
  v210 = v25;
  v69 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v70 = sub_2262DEF9C(&v227, v68 + v69, v40, v67);
  swift_bridgeObjectRetain_n();
  sub_2262D66F4();
  if (v70 == v40)
  {
    v227 = v68;
    v40 = 0;
    sub_2262D2058(&v227);

    v71 = v227[2];
    if (v71 >= 0x1F4)
    {
      v72 = 500;
    }

    else
    {
      v72 = v227[2];
    }

    v208 = v227;
    v73 = v227 + v69;
    v74 = MEMORY[0x277D84F90];
    v209 = v71;
    if (v71)
    {
      v227 = MEMORY[0x277D84F90];
      sub_226316650(0, v72, 0);
      v74 = v227;
      v219 = v225 + 16;
      v218 = *(v210 + 72);
      v75 = (v225 + 8);
      v215 = v225 + 32;
      v76 = v73;
      v77 = v72;
      while (v77)
      {
        v78 = v222;
        sub_2262D66FC(v76, v222, &qword_27D7930D0, &unk_226352510);
        v79 = v223;
        sub_2262D6764(v78, v223, &qword_27D7930D0, &unk_226352510);
        v80 = *(v224 + 48);
        v40 = v221;
        v81 = v226;
        (*v219)(v221, v79 + v80, v226);
        sub_2262D6068(v79 + v80, type metadata accessor for ActionContext);
        (*v75)(v79, v81);
        v227 = v74;
        v83 = v74[2];
        v82 = v74[3];
        if (v83 >= v82 >> 1)
        {
          sub_226316650(v82 > 1, v83 + 1, 1);
          v74 = v227;
        }

        v74[2] = v83 + 1;
        (*(v225 + 32))(v74 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v83, v40, v81);
        v76 += v218;
        if (!--v77)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_113;
    }

LABEL_63:
    v128 = sub_22630C040(v74);

    v129 = 0;
    v131 = v128 + 56;
    v130 = *(v128 + 56);
    v218 = v128;
    v132 = 1 << *(v128 + 32);
    v133 = -1;
    if (v132 < 64)
    {
      v133 = ~(-1 << v132);
    }

    v40 = v133 & v130;
    v134 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedPredictionResults;
    v135 = (v132 + 63) >> 6;
    v97 = v225;
    v211 = v225 + 16;
    v221 = v225 + 8;
    v215 = v128 + 56;
    v212 = v135;
    while (v40)
    {
LABEL_73:
      v138 = *(v218 + 48);
      v219 = *(v97 + 72);
      v139 = v213;
      v140 = v226;
      (*(v97 + 16))(v213, v138 + v219 * (__clz(__rbit64(v40)) | (v129 << 6)), v226);
      v141 = v206;
      swift_beginAccess();
      v142 = v97;
      v143 = *(v141 + v134);
      v144 = sub_2263394D8(v139);
      LOBYTE(v143) = v145;
      v146 = *(v142 + 8);
      v146(v139, v140);
      if (v143)
      {
        v147 = v144;
        v148 = v206;
        v149 = *(v206 + v134);
        v150 = swift_isUniquelyReferenced_nonNull_native();
        v151 = *(v148 + v134);
        v228 = v151;
        *(v148 + v134) = 0x8000000000000000;
        if (!v150)
        {
          sub_22633A6C4();
          v151 = v228;
        }

        v146(*(v151 + 48) + v147 * v219, v226);
        v136 = *(*(v151 + 56) + 8 * v147);

        sub_2262E2768(v147, v151);
        *(v148 + v134) = v151;
      }

      v40 &= v40 - 1;
      swift_endAccess();
      v97 = v225;
      v131 = v215;
      v135 = v212;
    }

    while (1)
    {
      v137 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v137 >= v135)
      {

        if (!v209)
        {

          v126 = MEMORY[0x277D84F90];
          v2 = v206;
          v10 = v226;
          goto LABEL_85;
        }

        v227 = MEMORY[0x277D84F90];
        sub_226316650(0, v72, 0);
        v97 = v225;
        v152 = v227;
        v221 = *(v210 + 72);
        v153 = (v225 + 32);
        while (v72)
        {
          v154 = v222;
          sub_2262D66FC(v73, v222, &qword_27D7930D0, &unk_226352510);
          v155 = v223;
          sub_2262D6764(v154, v223, &qword_27D7930D0, &unk_226352510);
          v156 = *(v224 + 48);
          v157 = *v153;
          v158 = v214;
          v159 = v226;
          (*v153)(v214, v155, v226);
          sub_2262D6068(v155 + v156, type metadata accessor for ActionContext);
          v160 = v152;
          v227 = v152;
          v162 = v152[2];
          v161 = v152[3];
          if (v162 >= v161 >> 1)
          {
            sub_226316650(v161 > 1, v162 + 1, 1);
            v97 = v225;
            v160 = v227;
          }

          v160[2] = v162 + 1;
          v152 = v160;
          v157(v160 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v162, v158, v159);
          v40 = v220;
          v73 += v221;
          if (!--v72)
          {

            v2 = v206;
            v10 = v226;
            v126 = v152;
            v127 = v152[2];
            if (!v127)
            {
            }

            goto LABEL_88;
          }
        }

        goto LABEL_114;
      }

      v40 = *(v131 + 8 * v137);
      ++v129;
      if (v40)
      {
        v129 = v137;
        goto LABEL_73;
      }
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2262C3288(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = sub_22634F14C();
  v3[51] = v4;
  v5 = *(v4 - 8);
  v3[52] = v5;
  v6 = *(v5 + 64) + 15;
  v3[53] = swift_task_alloc();
  v7 = sub_22634F10C();
  v3[54] = v7;
  v8 = *(v7 - 8);
  v3[55] = v8;
  v9 = *(v8 + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10) - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v11 = sub_22634FB0C();
  v3[59] = v11;
  v12 = *(v11 - 8);
  v3[60] = v12;
  v13 = *(v12 + 64) + 15;
  v3[61] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793018, &unk_2263552F0) - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793020, &qword_226351EE0) - 8) + 64) + 15;
  v3[63] = swift_task_alloc();
  v16 = type metadata accessor for VisualAction.Kind(0);
  v3[64] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[65] = swift_task_alloc();
  v18 = sub_22634FB9C();
  v3[66] = v18;
  v19 = *(v18 - 8);
  v3[67] = v19;
  v20 = *(v19 + 64) + 15;
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v21 = sub_22634FAEC();
  v3[71] = v21;
  v22 = *(v21 - 8);
  v3[72] = v22;
  v23 = *(v22 + 64) + 15;
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v24 = type metadata accessor for VisualAction(0);
  v3[78] = v24;
  v25 = *(v24 - 8);
  v3[79] = v25;
  v26 = *(v25 + 64) + 15;
  v3[80] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793028, &qword_226351EE8) - 8) + 64) + 15;
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v28 = type metadata accessor for RankedVisualAction();
  v3[84] = v28;
  v29 = *(v28 - 8);
  v3[85] = v29;
  v30 = *(v29 + 64) + 15;
  v3[86] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793030, &qword_226351EF0) - 8) + 64) + 15;
  v3[87] = swift_task_alloc();
  v32 = sub_22634EEFC();
  v3[88] = v32;
  v33 = *(v32 - 8);
  v3[89] = v33;
  v34 = *(v33 + 64) + 15;
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v35 = sub_22635007C();
  v3[93] = v35;
  v36 = *(v35 - 8);
  v3[94] = v36;
  v37 = *(v36 + 64) + 15;
  v3[95] = swift_task_alloc();
  v38 = sub_2263502EC();
  v3[96] = v38;
  v39 = *(v38 - 8);
  v3[97] = v39;
  v40 = *(v39 + 64) + 15;
  v3[98] = swift_task_alloc();
  v41 = sub_2263500AC();
  v3[99] = v41;
  v42 = *(v41 - 8);
  v3[100] = v42;
  v43 = *(v42 + 64) + 15;
  v3[101] = swift_task_alloc();
  v44 = sub_22634F3BC();
  v3[102] = v44;
  v45 = *(v44 - 8);
  v3[103] = v45;
  v46 = *(v45 + 64) + 15;
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v47 = sub_22634FBEC();
  v3[106] = v47;
  v48 = *(v47 - 8);
  v3[107] = v48;
  v49 = *(v48 + 64) + 15;
  v3[108] = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793008, &unk_226351EC0) - 8) + 64) + 15;
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v51 = sub_22634F9BC();
  v3[113] = v51;
  v52 = *(v51 - 8);
  v3[114] = v52;
  v53 = *(v52 + 64) + 15;
  v3[115] = swift_task_alloc();
  v54 = sub_22634F51C();
  v3[116] = v54;
  v55 = *(v54 - 8);
  v3[117] = v55;
  v56 = *(v55 + 64) + 15;
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v57 = sub_22634F3DC();
  v3[120] = v57;
  v58 = *(v57 - 8);
  v3[121] = v58;
  v59 = *(v58 + 64) + 15;
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  v60 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793038, &qword_226351EF8) - 8) + 64) + 15;
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v61 = sub_22634FDFC();
  v3[131] = v61;
  v62 = *(v61 - 8);
  v3[132] = v62;
  v63 = *(v62 + 64) + 15;
  v3[133] = swift_task_alloc();
  v64 = sub_22634EECC();
  v3[134] = v64;
  v65 = *(v64 - 8);
  v3[135] = v65;
  v66 = *(v65 + 64) + 15;
  v3[136] = swift_task_alloc();
  v3[137] = swift_task_alloc();
  v67 = type metadata accessor for Analytics(0);
  v3[138] = v67;
  v68 = *(*(v67 - 8) + 64) + 15;
  v3[139] = swift_task_alloc();
  v69 = sub_22634F78C();
  v3[140] = v69;
  v70 = *(v69 - 8);
  v3[141] = v70;
  v71 = *(v70 + 64) + 15;
  v3[142] = swift_task_alloc();
  v3[143] = swift_task_alloc();
  v3[144] = swift_task_alloc();
  v72 = sub_22635004C();
  v3[145] = v72;
  v73 = *(v72 - 8);
  v3[146] = v73;
  v74 = *(v73 + 64) + 15;
  v3[147] = swift_task_alloc();
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v3[150] = swift_task_alloc();
  v3[151] = swift_task_alloc();
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v3[154] = swift_task_alloc();
  v3[155] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262C3DA0, v2, 0);
}

uint64_t sub_2262C3DA0()
{
  v342 = v0;
  v1 = *(v0 + 400) + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v2 = *(v0 + 1240);
    v3 = *(v0 + 1152);
    v4 = *(v0 + 1128);
    v5 = *(v0 + 1120);
    v6 = *(v0 + 392);
    v7 = *(v0 + 400);
    sub_22634FFEC();
    v8 = *(v4 + 16);
    v8(v3, v6, v5);

    v9 = sub_22635003C();
    v10 = sub_22635071C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1240);
    v13 = *(v0 + 1168);
    v14 = *(v0 + 1160);
    v15 = *(v0 + 1152);
    if (v11)
    {
      v302 = *(v0 + 1144);
      v308 = v8;
      v334 = *(v0 + 1240);
      v16 = *(v0 + 1128);
      v17 = *(v0 + 1120);
      v320 = v10;
      v18 = *(v0 + 400);
      v326 = *(v0 + 1160);
      v19 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v341[0] = v314;
      *v19 = 136315650;
      v20 = *v18;
      v21 = sub_226350D6C();
      v23 = sub_226345004(v21, v22, v341);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0xD00000000000001ALL, 0x8000000226356530, v341);
      *(v19 + 22) = 2080;
      v308(v302, v15, v17);
      v24 = sub_2263504CC();
      v26 = v25;
      (*(v16 + 8))(v15, v17);
      v27 = sub_226345004(v24, v26, v341);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_2262B6000, v9, v320, "%s.%s request = %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v314, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v13 + 8))(v334, v326);
    }

    else
    {
      v43 = *(v0 + 1128);
      v44 = *(v0 + 1120);

      (*(v43 + 8))(v15, v44);
      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    v28 = *(v0 + 1232);
    v29 = *(v0 + 400);
    sub_22634FFEC();

    v30 = sub_22635003C();
    v31 = sub_22635072C();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 1232);
    v34 = *(v0 + 1168);
    v35 = *(v0 + 1160);
    if (v32)
    {
      v36 = *(v0 + 400);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v341[0] = v38;
      *v37 = 136315394;
      v39 = *v36;
      v40 = sub_226350D6C();
      v42 = sub_226345004(v40, v41, v341);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_226345004(0xD00000000000001ALL, 0x8000000226356530, v341);
      _os_log_impl(&dword_2262B6000, v30, v31, "%s.%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v37, -1, -1);
    }

    (*(v34 + 8))(v33, v35);
  }

  v45 = *(v0 + 1112);
  v46 = *(v0 + 1104);
  v47 = *(v0 + 1096);
  v48 = *(v0 + 1080);
  v282 = *(v0 + 1072);
  v285 = *(v0 + 1064);
  v49 = *(v0 + 1056);
  v297 = *(v0 + 1040);
  v303 = *(v0 + 1024);
  v321 = *(v0 + 920);
  v327 = *(v0 + 840);
  v309 = *(v0 + 952);
  v315 = *(v0 + 824);
  v335 = *(v0 + 816);
  v50 = *(v0 + 536);
  v289 = *(v0 + 1048);
  v293 = *(v0 + 528);
  v51 = *(v0 + 392);
  (*(*(v0 + 712) + 16))(&v45[v46[5]], *(v0 + 400) + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id, *(v0 + 704));
  v52 = v46[13];
  sub_22634F77C();
  v53 = &v45[v46[6]];
  *v53 = 0;
  v53[8] = 1;
  v54 = v46[7];
  *(v0 + 1392) = v54;
  v55 = &v45[v54];
  v55[2] = 0u;
  v55[3] = 0u;
  *v55 = 0u;
  v55[1] = 0u;
  v56 = v46[8];
  *(v0 + 1396) = v56;
  v45[v56] = 2;
  v57 = &v45[v46[9]];
  *v57 = 0;
  v57[1] = 0;
  v45[v46[10]] = 3;
  v45[v46[11]] = 2;
  v58 = v46[12];
  v59 = sub_22634F47C();
  *(v0 + 1248) = v59;
  v60 = *(v59 - 8);
  *(v0 + 1256) = v60;
  (*(v60 + 56))(&v45[v58], 1, 1, v59);
  *&v45[v46[14]] = MEMORY[0x277D84F98];
  *&v45[v46[15]] = MEMORY[0x277D84F90];
  v45[v46[16]] = 0;
  *v45 = 1;
  sub_22634EEAC();
  sub_2262EB938(1, v47);
  v61 = *(v48 + 8);
  *(v0 + 1264) = v61;
  *(v0 + 1272) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v47, v282);
  sub_22634F77C();
  (*(v49 + 40))(&v45[v52], v285, v289);
  v62 = *(v50 + 56);
  *(v0 + 1280) = v62;
  *(v0 + 1288) = (v50 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v62(v297, 1, 1, v293);
  sub_22634F74C();
  sub_22634F76C();
  sub_22634F75C();
  sub_22634F3CC();
  v63 = *(v315 + 88);
  if (v63(v327, v335) == *MEMORY[0x277D78670])
  {
    v64 = *(v0 + 896);
    v65 = *(v0 + 864);
    v66 = *(v0 + 856);
    v67 = *(v0 + 848);
    v68 = *(v0 + 840);
    v69 = *(v0 + 632);
    v70 = *(v0 + 624);
    v336 = *(v0 + 512);
    (*(*(v0 + 824) + 96))(v68, *(v0 + 816));
    v71 = *(v66 + 32);
    v71(v65, v68, v67);
    v328 = sub_22634FBCC();
    v73 = v72;
    v71(v64 + v70[5], v65, v67);
    swift_storeEnumTagMultiPayload();
    *v64 = v328;
    v64[1] = v73;
    v74 = MEMORY[0x277D84F98];
    *(v64 + v70[6]) = MEMORY[0x277D84F98];
    *(v64 + v70[7]) = v74;
    *(v64 + v70[8]) = v74;
    (*(v69 + 56))(v64, 0, 1, v70);
    goto LABEL_28;
  }

  v75 = *(v0 + 1024);
  v76 = *(v0 + 832);
  v77 = *(v0 + 816);
  v78 = *(*(v0 + 824) + 8);
  v78(*(v0 + 840), v77);
  sub_22634F3CC();
  if (v63(v76, v77) == *MEMORY[0x277D78678])
  {
    v79 = *(v0 + 1024);
    v80 = *(v0 + 832);
    (*(*(v0 + 824) + 96))(v80, *(v0 + 816));
    *(v0 + 1296) = *v80;
    *(v0 + 1304) = v80[1];
    *(v0 + 336) = sub_22634F38C();
    *(v0 + 344) = v81;
    if (qword_27D792EA0 != -1)
    {
LABEL_55:
      swift_once();
    }

    v82 = *(v0 + 808);
    v83 = *(v0 + 800);
    v84 = *(v0 + 792);
    v85 = *(v0 + 784);
    v86 = *(v0 + 776);
    v87 = *(v0 + 768);
    v88 = *(v0 + 760);
    v89 = *(v0 + 752);
    v329 = *(v0 + 744);
    v90 = __swift_project_value_buffer(v87, qword_27D793ED8);
    (*(v86 + 16))(v85, v90, v87);
    sub_22635032C();
    (*(v83 + 104))(v82, *MEMORY[0x277D72148], v84);
    sub_22635008C();
    (*(v83 + 8))(v82, v84);
    v91 = sub_22635006C();
    v93 = v92;
    (*(v89 + 8))(v88, v329);
    *(v0 + 352) = v91;
    *(v0 + 360) = v93;
    sub_2262D61E0();
    LOBYTE(v91) = sub_22635087C();

    if (v91)
    {
      v94 = *(*(v0 + 400) + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_toolManager);
      *(v0 + 1312) = v94;

      return MEMORY[0x2822009F8](sub_2262C58BC, v94, 0);
    }
  }

  else
  {
    v78(*(v0 + 832), *(v0 + 816));
  }

  v95 = *(v0 + 1024);
  v96 = *(v0 + 736);
  v97 = *(v0 + 400);
  sub_22634F39C();
  v98 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
  swift_beginAccess();
  v99 = *(v97 + v98);
  v100 = *(v0 + 736);
  if (!*(v99 + 16))
  {
    (*(*(v0 + 712) + 8))(*(v0 + 736), *(v0 + 704));
LABEL_23:
    v106 = 1;
    goto LABEL_24;
  }

  v101 = sub_2263394D8(v100);
  v102 = *(v0 + 736);
  v103 = *(v0 + 712);
  v104 = *(v0 + 704);
  if ((v105 & 1) == 0)
  {

    (*(v103 + 8))(v102, v104);
    goto LABEL_23;
  }

  sub_2262D5EB8(*(v99 + 56) + *(*(v0 + 680) + 72) * v101, *(v0 + 696), type metadata accessor for RankedVisualAction);
  (*(v103 + 8))(v102, v104);

  v106 = 0;
LABEL_24:
  v107 = *(v0 + 696);
  v108 = *(v0 + 680);
  v109 = *(v0 + 672);
  (*(v108 + 56))(v107, v106, 1, v109);
  if ((*(v108 + 48))(v107, 1, v109))
  {
    sub_2262D67D8(*(v0 + 696), &qword_27D793030, &qword_226351EF0);
    v110 = 1;
  }

  else
  {
    v111 = *(v0 + 880);
    v112 = *(v0 + 696);
    v113 = *(v0 + 688);
    sub_2262D5EB8(v112, v113, type metadata accessor for RankedVisualAction);
    sub_2262D67D8(v112, &qword_27D793030, &qword_226351EF0);
    sub_2262D6000(v113, v111, type metadata accessor for VisualAction);
    v110 = 0;
  }

  v114 = *(v0 + 896);
  v115 = *(v0 + 880);
  (*(*(v0 + 632) + 56))(v115, v110, 1, *(v0 + 624));
  sub_2262D6764(v115, v114, &qword_27D793008, &unk_226351EC0);
LABEL_28:
  *(v0 + 1328) = 0;
  v116 = *(v0 + 1016);
  v117 = *(v0 + 968);
  v118 = *(v0 + 960);
  v119 = *(v0 + 728);
  v120 = *(v0 + 392);
  v121 = *(v0 + 400);
  sub_22634F74C();
  sub_22634F39C();
  v122 = *(v117 + 8);
  *(v0 + 1336) = v122;
  *(v0 + 1344) = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v122(v116, v118);
  v123 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  swift_beginAccess();
  v124 = *(v121 + v123);
  v125 = *(v0 + 728);
  if (*(v124 + 16))
  {

    v126 = sub_2263394D8(v125);
    v127 = *(v0 + 728);
    v128 = *(v0 + 712);
    v129 = *(v0 + 704);
    v130 = *(v0 + 664);
    if (v131)
    {
      v132 = v126;
      v330 = v122;
      v133 = *(v124 + 56);
      v134 = type metadata accessor for ActionContext();
      v135 = *(v134 - 8);
      v136 = v133 + *(v135 + 72) * v132;
      v122 = v330;
      sub_2262D5EB8(v136, v130, type metadata accessor for ActionContext);
      v137 = *(v128 + 8);
      v137(v127, v129);

      (*(v135 + 56))(v130, 0, 1, v134);
    }

    else
    {

      v137 = *(v128 + 8);
      v137(v127, v129);
      v140 = type metadata accessor for ActionContext();
      (*(*(v140 - 8) + 56))(v130, 1, 1, v140);
    }
  }

  else
  {
    v138 = *(v0 + 664);
    v137 = *(*(v0 + 712) + 8);
    v137(*(v0 + 728), *(v0 + 704));
    v139 = type metadata accessor for ActionContext();
    (*(*(v139 - 8) + 56))(v138, 1, 1, v139);
  }

  v141 = *(v0 + 872);
  v142 = *(v0 + 632);
  v143 = *(v0 + 624);
  sub_2262D66FC(*(v0 + 896), v141, &qword_27D793008, &unk_226351EC0);
  if ((*(v142 + 48))(v141, 1, v143) == 1)
  {
    v322 = v137;
    v331 = v122;
    v144 = *(v0 + 1176);
    v145 = *(v0 + 1136);
    v146 = *(v0 + 1128);
    v147 = *(v0 + 1120);
    v148 = *(v0 + 392);
    sub_2262D67D8(*(v0 + 872), &qword_27D793008, &unk_226351EC0);
    sub_22634FFEC();
    (*(v146 + 16))(v145, v148, v147);
    v149 = sub_22635003C();
    v150 = sub_22635073C();
    v151 = os_log_type_enabled(v149, v150);
    v152 = *(v0 + 1176);
    v153 = *(v0 + 1168);
    v154 = *(v0 + 1160);
    v155 = *(v0 + 1136);
    v156 = *(v0 + 1128);
    v157 = *(v0 + 1120);
    if (v151)
    {
      v304 = v150;
      v158 = *(v0 + 1000);
      v316 = *(v0 + 1160);
      v159 = *(v0 + 720);
      v286 = *(v0 + 960);
      v290 = *(v0 + 712);
      v160 = *(v0 + 704);
      v294 = *(v0 + 1120);
      v161 = swift_slowAlloc();
      v298 = swift_slowAlloc();
      v341[0] = v298;
      *v161 = 136315138;
      v310 = v152;
      sub_22634F74C();
      sub_22634F39C();
      v331(v158, v286);
      sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
      v162 = sub_226350C1C();
      v164 = v163;
      v322(v159, v160);
      (*(v156 + 8))(v155, v294);
      v165 = sub_226345004(v162, v164, v341);

      *(v161 + 4) = v165;
      _os_log_impl(&dword_2262B6000, v149, v304, "Cannot find action for action id: %s", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v298);
      MEMORY[0x22AA7D570](v298, -1, -1);
      MEMORY[0x22AA7D570](v161, -1, -1);

      (*(v153 + 8))(v310, v316);
    }

    else
    {

      (*(v156 + 8))(v155, v157);
      (*(v153 + 8))(v152, v154);
    }

    v278 = *(v0 + 1272);
    v270 = *(v0 + 1396);
    v266 = *(v0 + 1112);
    v268 = *(v0 + 1096);
    v274 = *(v0 + 1072);
    v276 = *(v0 + 1264);
    v317 = *(v0 + 1024);
    v323 = *(v0 + 1040);
    v305 = *(v0 + 952);
    v311 = *(v0 + 960);
    v295 = *(v0 + 936);
    v299 = *(v0 + 928);
    v283 = *(v0 + 912);
    v287 = *(v0 + 904);
    v291 = *(v0 + 920);
    v280 = *(v0 + 896);
    v272 = *(v0 + 664);
    v190 = *(v0 + 592);
    v191 = *(v0 + 576);
    v192 = *(v0 + 568);
    v193 = *(v0 + 528);
    v194 = *(v0 + 384);
    v195 = (v266 + *(v0 + 1392));
    v196 = *MEMORY[0x277D78AC0];
    v197 = *(*(v0 + 536) + 104);
    v197(v190, v196, v193);
    (*(v191 + 104))(v190, *MEMORY[0x277D78A40], v192);
    sub_22634F7AC();
    sub_2262D62A4(&qword_27D793040, MEMORY[0x277D78B00]);
    v198 = swift_allocError();
    v197(v199, v196, v193);
    v200 = v198;
    sub_2262F3A84(0, 0, v340);

    v201 = *v195;
    v202 = v195[1];
    v203 = v195[3];
    *(v0 + 48) = v195[2];
    *(v0 + 64) = v203;
    *(v0 + 16) = v201;
    *(v0 + 32) = v202;
    sub_2262D67D8(v0 + 16, &qword_27D793048, &qword_226351F00);

    v204 = v340[1];
    *v195 = v340[0];
    v195[1] = v204;
    v205 = v340[3];
    v195[2] = v340[2];
    v195[3] = v205;
    *(v266 + v270) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v268);
    v276(v268, v274);
    sub_2262EC7A0();
    sub_2262D67D8(v272, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v280, &qword_27D793008, &unk_226351EC0);
    (*(v283 + 8))(v291, v287);
    (*(v295 + 8))(v305, v299);
    v331(v317, v311);
    sub_2262D67D8(v323, &qword_27D793038, &qword_226351EF8);
LABEL_48:
    v214 = *(v0 + 1240);
    v215 = *(v0 + 1232);
    v216 = *(v0 + 1224);
    v217 = *(v0 + 1216);
    v218 = *(v0 + 1208);
    v219 = *(v0 + 1200);
    v220 = *(v0 + 1192);
    v221 = *(v0 + 1184);
    v231 = *(v0 + 1176);
    v232 = *(v0 + 1152);
    v233 = *(v0 + 1144);
    v234 = *(v0 + 1136);
    v235 = *(v0 + 1096);
    v236 = *(v0 + 1088);
    v237 = *(v0 + 1064);
    v238 = *(v0 + 1040);
    v239 = *(v0 + 1032);
    v240 = *(v0 + 1024);
    v241 = *(v0 + 1016);
    v242 = *(v0 + 1008);
    v243 = *(v0 + 1000);
    v244 = *(v0 + 992);
    v245 = *(v0 + 984);
    v246 = *(v0 + 976);
    v247 = *(v0 + 952);
    v248 = *(v0 + 944);
    v249 = *(v0 + 920);
    v250 = *(v0 + 896);
    v251 = *(v0 + 888);
    v252 = *(v0 + 880);
    v253 = *(v0 + 872);
    v254 = *(v0 + 864);
    v255 = *(v0 + 840);
    v256 = *(v0 + 832);
    v257 = *(v0 + 808);
    v258 = *(v0 + 784);
    v259 = *(v0 + 760);
    v260 = *(v0 + 736);
    v261 = *(v0 + 728);
    v262 = *(v0 + 720);
    v263 = *(v0 + 696);
    v264 = *(v0 + 688);
    v265 = *(v0 + 664);
    v267 = *(v0 + 656);
    v269 = *(v0 + 648);
    v271 = *(v0 + 640);
    v273 = *(v0 + 616);
    v275 = *(v0 + 608);
    v277 = *(v0 + 600);
    v279 = *(v0 + 592);
    v281 = *(v0 + 584);
    v284 = *(v0 + 560);
    v288 = *(v0 + 552);
    v292 = *(v0 + 544);
    v296 = *(v0 + 520);
    v301 = *(v0 + 504);
    v307 = *(v0 + 496);
    v313 = *(v0 + 488);
    v319 = *(v0 + 464);
    v325 = *(v0 + 456);
    v333 = *(v0 + 448);
    v338 = *(v0 + 424);
    sub_2262D6068(*(v0 + 1112), type metadata accessor for Analytics);

    v222 = *(v0 + 8);

    return v222();
  }

  v166 = *(v0 + 400);
  sub_2262D6000(*(v0 + 872), *(v0 + 640), type metadata accessor for VisualAction);
  v167 = *(v166 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionExecutors);
  *(v0 + 1352) = v167;
  v168 = *(v167 + 16);
  *(v0 + 1360) = v168;
  if (!v168)
  {
LABEL_41:
    v176 = *(v0 + 1272);
    v177 = *(v0 + 1264);
    v178 = *(v0 + 1096);
    v179 = *(v0 + 1072);
    v180 = *(v0 + 1040);
    v181 = *(v0 + 1032);
    v182 = *(v0 + 536);
    v183 = *(v0 + 528);
    *(*(v0 + 1112) + *(v0 + 1396)) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v178);
    v177(v178, v179);
    sub_2262EC7A0();
    sub_2262D66FC(v180, v181, &qword_27D793038, &qword_226351EF8);
    v184 = *(v182 + 48);
    v185 = v184(v181, 1, v183);
    v186 = *(v0 + 1032);
    v187 = *(v0 + 584);
    v188 = *(v0 + 536);
    v189 = *(v0 + 528);
    if (v185 == 1)
    {
      (*(v188 + 104))(v187, *MEMORY[0x277D78AE8], *(v0 + 528));
      if (v184(v186, 1, v189) != 1)
      {
        sub_2262D67D8(*(v0 + 1032), &qword_27D793038, &qword_226351EF8);
      }
    }

    else
    {
      (*(v188 + 32))(v187, *(v0 + 1032), *(v0 + 528));
    }

    v318 = *(v0 + 1336);
    v324 = *(v0 + 1344);
    v306 = *(v0 + 960);
    v312 = *(v0 + 1024);
    v300 = *(v0 + 952);
    v206 = *(v0 + 936);
    v207 = *(v0 + 928);
    v208 = *(v0 + 920);
    v209 = *(v0 + 912);
    v210 = *(v0 + 904);
    v211 = *(v0 + 896);
    v212 = *(v0 + 664);
    v332 = *(v0 + 640);
    v337 = *(v0 + 1040);
    v213 = *(v0 + 384);
    (*(*(v0 + 576) + 104))(*(v0 + 584), *MEMORY[0x277D78A40], *(v0 + 568));
    sub_22634F7AC();
    sub_2262D67D8(v212, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v211, &qword_27D793008, &unk_226351EC0);
    (*(v209 + 8))(v208, v210);
    (*(v206 + 8))(v300, v207);
    v318(v312, v306);
    sub_2262D67D8(v337, &qword_27D793038, &qword_226351EF8);
    sub_2262D6068(v332, type metadata accessor for VisualAction);
    goto LABEL_48;
  }

  v169 = 0;
  *(v0 + 1400) = *MEMORY[0x277D78A40];
  while (1)
  {
    *(v0 + 1368) = v169;
    v170 = *(v0 + 1352);
    if (v169 >= *(v170 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    v171 = *(v0 + 640);
    v172 = v170 + 16 * v169;
    *(v0 + 1376) = *(v172 + 32);
    v173 = *(v172 + 40);
    ObjectType = swift_getObjectType();
    v175 = *(v173 + 16);
    swift_unknownObjectRetain();
    if (v175(v171, ObjectType, v173))
    {
      break;
    }

    swift_unknownObjectRelease();
    v169 = *(v0 + 1368) + 1;
    if (v169 == *(v0 + 1360))
    {
      goto LABEL_41;
    }
  }

  v223 = *(v173 + 24);
  v339 = (v223 + *v223);
  v224 = v223[1];
  v225 = swift_task_alloc();
  *(v0 + 1384) = v225;
  *v225 = v0;
  v225[1] = sub_2262C6918;
  v226 = *(v0 + 952);
  v227 = *(v0 + 920);
  v228 = *(v0 + 640);
  v229 = *(v0 + 616);

  return v339(v229, v228, v226, v227, ObjectType, v173);
}

uint64_t sub_2262C58BC()
{
  v1 = *(v0 + 1312);
  sub_2262F7F04(*(v0 + 1296), *(v0 + 1304), *(v0 + 888));
  *(v0 + 1320) = 0;
  v2 = *(v0 + 1304);
  v3 = *(v0 + 400);

  return MEMORY[0x2822009F8](sub_2262C5974, v3, 0);
}

uint64_t sub_2262C5974()
{
  v210 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  (*(*(v0 + 632) + 56))(v3, 0, 1, *(v0 + 624));
  sub_2262D6764(v3, v2, &qword_27D793008, &unk_226351EC0);
  *(v0 + 1328) = v1;
  v4 = *(v0 + 1016);
  v5 = *(v0 + 968);
  v6 = *(v0 + 960);
  v7 = *(v0 + 728);
  v8 = *(v0 + 392);
  v9 = *(v0 + 400);
  sub_22634F74C();
  sub_22634F39C();
  v10 = *(v5 + 8);
  *(v0 + 1336) = v10;
  *(v0 + 1344) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);
  v11 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  swift_beginAccess();
  v12 = *(v9 + v11);
  v13 = *(v0 + 728);
  if (*(v12 + 16))
  {

    v14 = sub_2263394D8(v13);
    v15 = *(v0 + 728);
    v16 = *(v0 + 712);
    v17 = *(v0 + 704);
    v18 = *(v0 + 664);
    if (v19)
    {
      v20 = v14;
      v201 = v10;
      v21 = *(v12 + 56);
      v22 = type metadata accessor for ActionContext();
      v23 = *(v22 - 8);
      v24 = v21 + *(v23 + 72) * v20;
      v10 = v201;
      sub_2262D5EB8(v24, v18, type metadata accessor for ActionContext);
      v25 = *(v16 + 8);
      v25(v15, v17);

      (*(v23 + 56))(v18, 0, 1, v22);
    }

    else
    {

      v25 = *(v16 + 8);
      v25(v15, v17);
      v28 = type metadata accessor for ActionContext();
      (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
    }
  }

  else
  {
    v26 = *(v0 + 664);
    v25 = *(*(v0 + 712) + 8);
    v25(*(v0 + 728), *(v0 + 704));
    v27 = type metadata accessor for ActionContext();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  }

  v29 = *(v0 + 872);
  v30 = *(v0 + 632);
  v31 = *(v0 + 624);
  sub_2262D66FC(*(v0 + 896), v29, &qword_27D793008, &unk_226351EC0);
  if ((*(v30 + 48))(v29, 1, v31) == 1)
  {
    v197 = v25;
    v202 = v10;
    v32 = *(v0 + 1176);
    v33 = *(v0 + 1136);
    v34 = *(v0 + 1128);
    v35 = *(v0 + 1120);
    v36 = *(v0 + 392);
    sub_2262D67D8(*(v0 + 872), &qword_27D793008, &unk_226351EC0);
    sub_22634FFEC();
    (*(v34 + 16))(v33, v36, v35);
    v37 = sub_22635003C();
    v38 = sub_22635073C();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 1176);
    v41 = *(v0 + 1168);
    v42 = *(v0 + 1160);
    v43 = *(v0 + 1136);
    v44 = *(v0 + 1128);
    v45 = *(v0 + 1120);
    if (v39)
    {
      v185 = v38;
      v46 = *(v0 + 1000);
      v193 = *(v0 + 1160);
      v47 = *(v0 + 720);
      v172 = *(v0 + 960);
      v175 = *(v0 + 712);
      v48 = *(v0 + 704);
      v178 = *(v0 + 1120);
      v49 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v209 = v181;
      *v49 = 136315138;
      v189 = v40;
      sub_22634F74C();
      sub_22634F39C();
      v202(v46, v172);
      sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
      v50 = sub_226350C1C();
      v52 = v51;
      v197(v47, v48);
      (*(v44 + 8))(v43, v178);
      v53 = sub_226345004(v50, v52, &v209);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_2262B6000, v37, v185, "Cannot find action for action id: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v181);
      MEMORY[0x22AA7D570](v181, -1, -1);
      MEMORY[0x22AA7D570](v49, -1, -1);

      (*(v41 + 8))(v189, v193);
    }

    else
    {

      (*(v44 + 8))(v43, v45);
      (*(v41 + 8))(v40, v42);
    }

    v166 = *(v0 + 1272);
    v158 = *(v0 + 1396);
    v154 = *(v0 + 1112);
    v156 = *(v0 + 1096);
    v162 = *(v0 + 1072);
    v164 = *(v0 + 1264);
    v194 = *(v0 + 1024);
    v198 = *(v0 + 1040);
    v186 = *(v0 + 952);
    v190 = *(v0 + 960);
    v179 = *(v0 + 936);
    v182 = *(v0 + 928);
    v170 = *(v0 + 912);
    v173 = *(v0 + 904);
    v176 = *(v0 + 920);
    v168 = *(v0 + 896);
    v160 = *(v0 + 664);
    v79 = *(v0 + 592);
    v80 = *(v0 + 576);
    v81 = *(v0 + 568);
    v82 = *(v0 + 528);
    v83 = *(v0 + 384);
    v84 = (v154 + *(v0 + 1392));
    v85 = *MEMORY[0x277D78AC0];
    v86 = *(*(v0 + 536) + 104);
    v86(v79, v85, v82);
    (*(v80 + 104))(v79, *MEMORY[0x277D78A40], v81);
    sub_22634F7AC();
    sub_2262D62A4(&qword_27D793040, MEMORY[0x277D78B00]);
    v87 = swift_allocError();
    v86(v88, v85, v82);
    v89 = v87;
    sub_2262F3A84(0, 0, v208);

    v90 = *v84;
    v91 = v84[1];
    v92 = v84[3];
    *(v0 + 48) = v84[2];
    *(v0 + 64) = v92;
    *(v0 + 16) = v90;
    *(v0 + 32) = v91;
    sub_2262D67D8(v0 + 16, &qword_27D793048, &qword_226351F00);

    v93 = v208[1];
    *v84 = v208[0];
    v84[1] = v93;
    v94 = v208[3];
    v84[2] = v208[2];
    v84[3] = v94;
    *(v154 + v158) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v156);
    v164(v156, v162);
    sub_2262EC7A0();
    sub_2262D67D8(v160, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v168, &qword_27D793008, &unk_226351EC0);
    (*(v170 + 8))(v176, v173);
    (*(v179 + 8))(v186, v182);
    v202(v194, v190);
    sub_2262D67D8(v198, &qword_27D793038, &qword_226351EF8);
LABEL_21:
    v103 = *(v0 + 1240);
    v104 = *(v0 + 1232);
    v105 = *(v0 + 1224);
    v106 = *(v0 + 1216);
    v107 = *(v0 + 1208);
    v108 = *(v0 + 1200);
    v109 = *(v0 + 1192);
    v110 = *(v0 + 1184);
    v119 = *(v0 + 1176);
    v120 = *(v0 + 1152);
    v121 = *(v0 + 1144);
    v122 = *(v0 + 1136);
    v123 = *(v0 + 1096);
    v124 = *(v0 + 1088);
    v125 = *(v0 + 1064);
    v126 = *(v0 + 1040);
    v127 = *(v0 + 1032);
    v128 = *(v0 + 1024);
    v129 = *(v0 + 1016);
    v130 = *(v0 + 1008);
    v131 = *(v0 + 1000);
    v132 = *(v0 + 992);
    v133 = *(v0 + 984);
    v134 = *(v0 + 976);
    v135 = *(v0 + 952);
    v136 = *(v0 + 944);
    v137 = *(v0 + 920);
    v138 = *(v0 + 896);
    v139 = *(v0 + 888);
    v140 = *(v0 + 880);
    v141 = *(v0 + 872);
    v142 = *(v0 + 864);
    v143 = *(v0 + 840);
    v144 = *(v0 + 832);
    v145 = *(v0 + 808);
    v146 = *(v0 + 784);
    v147 = *(v0 + 760);
    v148 = *(v0 + 736);
    v149 = *(v0 + 728);
    v150 = *(v0 + 720);
    v151 = *(v0 + 696);
    v152 = *(v0 + 688);
    v153 = *(v0 + 664);
    v155 = *(v0 + 656);
    v157 = *(v0 + 648);
    v159 = *(v0 + 640);
    v161 = *(v0 + 616);
    v163 = *(v0 + 608);
    v165 = *(v0 + 600);
    v167 = *(v0 + 592);
    v169 = *(v0 + 584);
    v171 = *(v0 + 560);
    v174 = *(v0 + 552);
    v177 = *(v0 + 544);
    v180 = *(v0 + 520);
    v184 = *(v0 + 504);
    v188 = *(v0 + 496);
    v192 = *(v0 + 488);
    v196 = *(v0 + 464);
    v200 = *(v0 + 456);
    v204 = *(v0 + 448);
    v206 = *(v0 + 424);
    sub_2262D6068(*(v0 + 1112), type metadata accessor for Analytics);

    v111 = *(v0 + 8);

    return v111();
  }

  v54 = *(v0 + 400);
  result = sub_2262D6000(*(v0 + 872), *(v0 + 640), type metadata accessor for VisualAction);
  v56 = *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionExecutors);
  *(v0 + 1352) = v56;
  v57 = *(v56 + 16);
  *(v0 + 1360) = v57;
  if (!v57)
  {
LABEL_14:
    v65 = *(v0 + 1272);
    v66 = *(v0 + 1264);
    v67 = *(v0 + 1096);
    v68 = *(v0 + 1072);
    v69 = *(v0 + 1040);
    v70 = *(v0 + 1032);
    v71 = *(v0 + 536);
    v72 = *(v0 + 528);
    *(*(v0 + 1112) + *(v0 + 1396)) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v67);
    v66(v67, v68);
    sub_2262EC7A0();
    sub_2262D66FC(v69, v70, &qword_27D793038, &qword_226351EF8);
    v73 = *(v71 + 48);
    v74 = v73(v70, 1, v72);
    v75 = *(v0 + 1032);
    v76 = *(v0 + 584);
    v77 = *(v0 + 536);
    v78 = *(v0 + 528);
    if (v74 == 1)
    {
      (*(v77 + 104))(v76, *MEMORY[0x277D78AE8], *(v0 + 528));
      if (v73(v75, 1, v78) != 1)
      {
        sub_2262D67D8(*(v0 + 1032), &qword_27D793038, &qword_226351EF8);
      }
    }

    else
    {
      (*(v77 + 32))(v76, *(v0 + 1032), *(v0 + 528));
    }

    v195 = *(v0 + 1336);
    v199 = *(v0 + 1344);
    v187 = *(v0 + 960);
    v191 = *(v0 + 1024);
    v183 = *(v0 + 952);
    v95 = *(v0 + 936);
    v96 = *(v0 + 928);
    v97 = *(v0 + 920);
    v98 = *(v0 + 912);
    v99 = *(v0 + 904);
    v100 = *(v0 + 896);
    v101 = *(v0 + 664);
    v203 = *(v0 + 640);
    v205 = *(v0 + 1040);
    v102 = *(v0 + 384);
    (*(*(v0 + 576) + 104))(*(v0 + 584), *MEMORY[0x277D78A40], *(v0 + 568));
    sub_22634F7AC();
    sub_2262D67D8(v101, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v100, &qword_27D793008, &unk_226351EC0);
    (*(v98 + 8))(v97, v99);
    (*(v95 + 8))(v183, v96);
    v195(v191, v187);
    sub_2262D67D8(v205, &qword_27D793038, &qword_226351EF8);
    sub_2262D6068(v203, type metadata accessor for VisualAction);
    goto LABEL_21;
  }

  v58 = 0;
  *(v0 + 1400) = *MEMORY[0x277D78A40];
  while (1)
  {
    *(v0 + 1368) = v58;
    v59 = *(v0 + 1352);
    if (v58 >= *(v59 + 16))
    {
      __break(1u);
      return result;
    }

    v60 = *(v0 + 640);
    v61 = v59 + 16 * v58;
    *(v0 + 1376) = *(v61 + 32);
    v62 = *(v61 + 40);
    ObjectType = swift_getObjectType();
    v64 = *(v62 + 16);
    swift_unknownObjectRetain();
    if (v64(v60, ObjectType, v62))
    {
      break;
    }

    result = swift_unknownObjectRelease();
    v58 = *(v0 + 1368) + 1;
    if (v58 == *(v0 + 1360))
    {
      goto LABEL_14;
    }
  }

  v112 = *(v62 + 24);
  v207 = (v112 + *v112);
  v113 = v112[1];
  v114 = swift_task_alloc();
  *(v0 + 1384) = v114;
  *v114 = v0;
  v114[1] = sub_2262C6918;
  v115 = *(v0 + 952);
  v116 = *(v0 + 920);
  v117 = *(v0 + 640);
  v118 = *(v0 + 616);

  return v207(v118, v117, v115, v116, ObjectType, v62);
}

uint64_t sub_2262C6918()
{
  v1 = *(*v0 + 1384);
  v2 = *(*v0 + 400);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2262C6A28, v2, 0);
}

uint64_t sub_2262C6A28()
{
  v473 = v0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 608);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v3 + 16);
  v5(v2, *(v0 + 616), v4);
  v6 = (*(v3 + 88))(v2, v4);
  v461 = *(v0 + 1024);
  v7 = *(v0 + 968);
  v8 = *(v0 + 960);
  if (v6 != v1)
  {
    v37 = *(v0 + 1216);
    v38 = *(v0 + 992);
    v39 = *(v0 + 616);
    v40 = *(v0 + 600);
    v41 = *(v0 + 568);
    v446 = *(*(v0 + 576) + 8);
    v446(*(v0 + 608), v41);
    sub_22634FFEC();
    v420 = *(v7 + 16);
    v420(v38, v461, v8);
    v5(v40, v39, v41);
    v42 = sub_22635003C();
    v43 = sub_22635075C();
    v44 = os_log_type_enabled(v42, v43);
    v425 = *(v0 + 1344);
    v45 = *(v0 + 1336);
    v46 = *(v0 + 1168);
    v452 = *(v0 + 1160);
    v463 = *(v0 + 1216);
    v433 = v5;
    if (v44)
    {
      v405 = v43;
      v47 = *(v0 + 1000);
      v48 = *(v0 + 992);
      v412 = *(v0 + 1168);
      v49 = *(v0 + 960);
      v382 = *(v0 + 592);
      v387 = *(v0 + 600);
      v50 = *(v0 + 568);
      v51 = swift_slowAlloc();
      v398 = swift_slowAlloc();
      *&v472[0] = v398;
      *v51 = 136315394;
      v420(v47, v48, v49);
      v52 = sub_2263504CC();
      loga = v42;
      v54 = v53;
      v45(v48, v49);
      v55 = sub_226345004(v52, v54, v472);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v5(v382, v387, v50);
      v56 = sub_2263504CC();
      v58 = v57;
      v446(v387, v50);
      v59 = sub_226345004(v56, v58, v472);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_2262B6000, loga, v405, "Finished executing action %s with result %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v398, -1, -1);
      MEMORY[0x22AA7D570](v51, -1, -1);

      v60 = *(v412 + 8);
      v60(v463, v452);
    }

    else
    {
      v109 = *(v0 + 992);
      v110 = *(v0 + 960);
      v111 = *(v0 + 600);
      v112 = *(v0 + 568);

      v446(v111, v112);
      v45(v109, v110);
      v60 = *(v46 + 8);
      v60(v463, v452);
    }

    v113 = *(v0 + 640);
    if ((sub_2262DBA6C() & 1) == 0)
    {
      v122 = *(v0 + 1208);
      sub_22634FFEC();
      v123 = sub_22635003C();
      v124 = sub_22635075C();
      v125 = os_log_type_enabled(v123, v124);
      v126 = *(v0 + 1208);
      v127 = *(v0 + 1168);
      v128 = *(v0 + 1160);
      if (v125)
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        v130 = "Skipping database insertion for non-predictable action";
LABEL_32:
        _os_log_impl(&dword_2262B6000, v123, v124, v130, v129, 2u);
        MEMORY[0x22AA7D570](v129, -1, -1);

        v60(v126, v128);
LABEL_62:
        v384 = *(v0 + 1376);
        v439 = *(v0 + 1344);
        v430 = *(v0 + 1336);
        v371 = *(v0 + 1264);
        v374 = *(v0 + 1272);
        v285 = *(v0 + 1096);
        v286 = *(v0 + 1072);
        v465 = *(v0 + 1040);
        v416 = *(v0 + 960);
        v422 = *(v0 + 1024);
        v287 = *(v0 + 936);
        v401 = *(v0 + 928);
        v408 = *(v0 + 952);
        v288 = *(v0 + 912);
        v389 = *(v0 + 904);
        logd = *(v0 + 920);
        v377 = *(v0 + 664);
        v380 = *(v0 + 896);
        v454 = *(v0 + 640);
        v289 = *(v0 + 616);
        v290 = *(v0 + 592);
        v291 = *(v0 + 568);
        v292 = *(v0 + 384);
        *(*(v0 + 1112) + *(v0 + 1396)) = 0;
        sub_22634EEAC();
        sub_2262EBFE0(1, v285);
        v371(v285, v286);
        sub_2262EC7A0();
        v433(v290, v289, v291);
        sub_22634F7AC();
        swift_unknownObjectRelease();
        v446(v289, v291);
        sub_2262D67D8(v377, &qword_27D793028, &qword_226351EE8);
        sub_2262D67D8(v380, &qword_27D793008, &unk_226351EC0);
        (*(v288 + 8))(logd, v389);
        (*(v287 + 8))(v408, v401);
        v430(v422, v416);
        goto LABEL_63;
      }

LABEL_33:

      v60(v126, v128);
      goto LABEL_62;
    }

    v114 = *(v0 + 520);
    v115 = *(v0 + 512);
    sub_2262D5EB8(*(v0 + 640) + *(*(v0 + 624) + 20), v114, type metadata accessor for VisualAction.Kind);
    LODWORD(v115) = swift_getEnumCaseMultiPayload();
    sub_2262D6068(v114, type metadata accessor for VisualAction.Kind);
    if (v115 == 4)
    {
      v116 = *(v0 + 616);
      v117 = *(v0 + 504);
      sub_22634FADC();
      v118 = sub_22634FA0C();
      v119 = *(v118 - 8);
      v120 = (*(v119 + 48))(v117, 1, v118);
      v121 = *(v0 + 504);
      if (v120 == 1)
      {
        sub_2262D67D8(*(v0 + 504), &qword_27D793020, &qword_226351EE0);
        goto LABEL_30;
      }

      v146 = sub_22634F9FC();
      (*(v119 + 8))(v121, v118);
      v147 = *(v146 + 16);

      if (!v147)
      {
LABEL_30:
        v162 = *(v0 + 1200);
        sub_22634FFEC();
        v123 = sub_22635003C();
        v124 = sub_22635075C();
        v163 = os_log_type_enabled(v123, v124);
        v126 = *(v0 + 1200);
        v164 = *(v0 + 1168);
        v128 = *(v0 + 1160);
        if (v163)
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          v130 = "Skipping database insertion for visual search action with no results";
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }

    v148 = *(v0 + 1064);
    v149 = *(v0 + 1056);
    v150 = *(v0 + 1048);
    v151 = *(v0 + 944);
    v152 = *(v0 + 936);
    v455 = *(v0 + 928);
    v153 = *(v0 + 496);
    v155 = *(v0 + 392);
    v154 = *(v0 + 400);
    sub_22634F77C();
    v379 = sub_2262C1608();
    v427 = v156;
    (*(v149 + 8))(v148, v150);
    v467 = *(v154 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
    sub_22634F76C();
    sub_22634F4AC();
    (*(v152 + 8))(v151, v455);
    v157 = sub_22634FA8C();
    v158 = *(v157 - 8);
    v159 = (*(v158 + 48))(v153, 1, v157);
    v160 = *(v0 + 496);
    if (v159 == 1)
    {
      sub_2262D67D8(*(v0 + 496), &qword_27D793018, &unk_2263552F0);
      v161 = 0;
    }

    else
    {
      v166 = *(v0 + 480);
      v165 = *(v0 + 488);
      v167 = *(v0 + 472);
      sub_22634FA6C();
      (*(v158 + 8))(v160, v157);
      v161 = sub_22634FAFC();
      (*(v166 + 8))(v165, v167);
    }

    v168 = *(v0 + 656);
    v169 = *(v0 + 640);
    v170 = v169[1];
    v399 = *v169;
    sub_2262D66FC(*(v0 + 664), v168, &qword_27D793028, &qword_226351EE8);
    v171 = type metadata accessor for ActionContext();
    v172 = *(*(v171 - 8) + 48);
    if (v172(v168, 1, v171) == 1)
    {
      v173 = *(v0 + 656);
      v174 = &qword_27D793028;
      v175 = &qword_226351EE8;
    }

    else
    {
      v176 = *(v0 + 1256);
      v177 = *(v0 + 1248);
      v178 = *(v0 + 656);
      v179 = *(v0 + 464);
      sub_2262D66FC(v178 + *(v171 + 20), v179, &qword_27D792FE0, &unk_226351C10);
      sub_2262D6068(v178, type metadata accessor for ActionContext);
      if ((*(v176 + 48))(v179, 1, v177) != 1)
      {
        v180 = *(v0 + 1256);
        v181 = *(v0 + 1248);
        v182 = *(v0 + 464);
        v376 = sub_22634F46C();
        v414 = v183;
        (*(v180 + 8))(v182, v181);
LABEL_41:
        v184 = *(v0 + 648);
        sub_2262D66FC(*(v0 + 664), v184, &qword_27D793028, &qword_226351EE8);
        v185 = v172(v184, 1, v171);
        v186 = *(v0 + 648);
        if (v185 == 1)
        {
          sub_2262D67D8(*(v0 + 648), &qword_27D793028, &qword_226351EE8);
          v373 = 0;
          v407 = 0;
        }

        else
        {
          v187 = (v186 + *(v171 + 24));
          v373 = *v187;
          v407 = v187[1];

          sub_2262D6068(v186, type metadata accessor for ActionContext);
        }

        v188 = v170;
        v189 = *(v0 + 400) + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_timestampForTesting;
        v190 = *(v0 + 1088);
        if (*(v189 + 8))
        {
          sub_22634EEAC();
        }

        else
        {
          v191 = *v189;
          sub_22634EE4C();
        }

        v192 = *(v0 + 640);
        v193 = sub_2262DBE60();
        v456 = v161;
        v195 = v194;
        if (v161)
        {

          v196 = v161;
        }

        else
        {
          v196 = sub_22635059C();
          *(v196 + 16) = 512;
          bzero((v196 + 32), 0x800uLL);
        }

        v197 = *(v0 + 1328);
        v198 = *(v0 + 1088);
        v199 = sub_22630625C(v196 + 32, *(v196 + 16));
        v201 = v200;

        v202 = sub_22634ED4C();
        v203 = *(v202 + 48);
        v204 = *(v202 + 52);
        swift_allocObject();
        sub_22634ED3C();

        sub_22634EE5C();
        *(v0 + 208) = v193;
        *(v0 + 216) = v195;
        *(v0 + 224) = v399;
        *(v0 + 232) = v188;
        *(v0 + 240) = v205;
        sub_2262D60C8();
        v206 = sub_22634ED2C();
        if (v197)
        {
          v468 = v197;
          v208 = *(v0 + 1272);
          v209 = *(v0 + 1264);
          v210 = *(v0 + 1088);
          v211 = *(v0 + 1072);

          sub_2262D611C(v199, v201);
          swift_bridgeObjectRelease_n();

          v209(v210, v211);
          v257 = *(v0 + 1184);
          v258 = *(v0 + 1024);
          v259 = *(v0 + 976);
          v260 = *(v0 + 960);
          sub_22634FFEC();
          v420(v259, v258, v260);
          v261 = sub_22635003C();
          v262 = sub_22635073C();
          v263 = os_log_type_enabled(v261, v262);
          v264 = *(v0 + 1344);
          v458 = *(v0 + 1336);
          v265 = *(v0 + 1184);
          v266 = *(v0 + 1168);
          v267 = *(v0 + 1160);
          if (v263)
          {
            v429 = *(v0 + 1184);
            v268 = *(v0 + 1000);
            v415 = *(v0 + 1160);
            v269 = *(v0 + 976);
            v270 = *(v0 + 960);
            v271 = swift_slowAlloc();
            v272 = swift_slowAlloc();
            *&v472[0] = v272;
            *v271 = 136315138;
            v420(v268, v269, v270);
            v273 = sub_2263504CC();
            v275 = v274;
            v458(v269, v270);
            v276 = sub_226345004(v273, v275, v472);

            *(v271 + 4) = v276;
            _os_log_impl(&dword_2262B6000, v261, v262, "Could not insert action %s to vector database", v271, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v272);
            MEMORY[0x22AA7D570](v272, -1, -1);
            MEMORY[0x22AA7D570](v271, -1, -1);

            (*(v266 + 8))(v429, v415);
          }

          else
          {
            v277 = *(v0 + 976);
            v278 = *(v0 + 960);

            v458(v277, v278);
            (*(v266 + 8))(v265, v267);
          }

          v279 = (*(v0 + 1112) + *(v0 + 1392));
          sub_2262F3A84(0, 0, v472);

          v280 = *v279;
          v281 = v279[1];
          v282 = v279[3];
          *(v0 + 112) = v279[2];
          *(v0 + 128) = v282;
          *(v0 + 80) = v280;
          *(v0 + 96) = v281;
          sub_2262D67D8(v0 + 80, &qword_27D793048, &qword_226351F00);
          v283 = v472[1];
          *v279 = v472[0];
          v279[1] = v283;
          v284 = v472[3];
          v279[2] = v472[2];
          v279[3] = v284;
          goto LABEL_62;
        }

        v359 = v206;
        v361 = v207;
        v363 = v199;
        v365 = v201;
        v354 = *(v0 + 1088);
        v388 = *(v0 + 432);
        logb = *(v0 + 440);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793058, &qword_226351F08);
        v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793060, &qword_226351F10);
        v212 = v188;
        v383 = *(*(v367 - 8) + 72);
        v352 = v193;
        v213 = (*(*(v367 - 8) + 80) + 32) & ~*(*(v367 - 8) + 80);
        v356 = swift_allocObject();
        *(v356 + 16) = xmmword_226351C80;
        v214 = v356 + v213;
        v215 = (v356 + v213 + *(v367 + 48));
        v216 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute;
        v217 = sub_22634F0EC();
        v218 = *(*(v217 - 8) + 16);
        v369 = v217;
        v219 = v467 + v216;
        v220 = v214;
        v350 = v214;
        v218(v214, v219, v217);
        v221 = v218;
        *v215 = v399;
        v215[1] = v212;
        v400 = *MEMORY[0x277D78288];
        isa = logb[13].isa;
        isa(v215);
        v222 = v220 + v383;
        v223 = *(v367 + 48);
        v218(v222, v467 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute, v217);

        sub_22634EE5C();
        *(v222 + v223) = v224;
        (isa)(v222 + v223, *MEMORY[0x277D78280], v388);
        v225 = (v350 + 2 * v383 + *(v367 + 48));
        (v218)();
        *v225 = v352;
        v225[1] = v195;
        (isa)(v225, v400, v388);
        v226 = v350 + 3 * v383;
        v227 = *(v367 + 48);
        v221(v226, v467 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute, v369);

        *(v226 + v227) = v456 == 0;
        (isa)(v226 + v227, *MEMORY[0x277D78290], v388);
        v228 = sub_2262FECA0(v356);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v414)
        {
          v229 = *(v0 + 448);
          v230 = *(v0 + 456);
          v231 = *(v0 + 432);
          v232 = *(v0 + 440);
          v233 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute;
          *v230 = v376;
          v230[1] = v414;
          (isa)(v230, v400, v231);
          (*(v232 + 32))(v229, v230, v231);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v472[0] = v228;
          v235 = v467;
          sub_2262E3E68(v229, v467 + v233, isUniquelyReferenced_nonNull_native);
          v228 = *&v472[0];
          v236 = v407;
          if (!v407)
          {
LABEL_55:
            if (v427)
            {
              v243 = *(v0 + 448);
              v244 = *(v0 + 456);
              v245 = *(v0 + 432);
              v246 = *(v0 + 440);
              v247 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute;
              *v244 = v379;
              v244[1] = v427;
              (isa)(v244, v400, v245);
              (*(v246 + 32))(v243, v244, v245);
              v248 = swift_isUniquelyReferenced_nonNull_native();
              *&v472[0] = v228;
              sub_2262E3E68(v243, v235 + v247, v248);
              v228 = *&v472[0];
            }

            v249 = *(v0 + 720);
            v250 = *(v0 + 712);
            v251 = *(v0 + 704);
            v252 = *(v0 + 424);
            sub_22634EEEC();
            sub_22634EEDC();
            (*(v250 + 8))(v249, v251);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793068, &qword_226351F18);
            v253 = swift_allocObject();
            *(v253 + 16) = xmmword_226351C90;
            *(v253 + 32) = v363;
            *(v253 + 40) = v365;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793070, &qword_226351F20);
            v254 = swift_allocObject();
            *(v254 + 16) = xmmword_226351C90;
            *(v254 + 32) = v228;
            sub_2262D6170(v363, v365);
            sub_2262D6170(v359, v361);
            sub_22634F11C();
            v255 = swift_task_alloc();
            *(v255 + 16) = v252;
            sub_2262D148C(sub_2262D61C4, v255, v256);
            v457 = *(v0 + 1272);
            v428 = *(v0 + 1264);
            v302 = *(v0 + 1192);
            v303 = *(v0 + 1088);
            v304 = *(v0 + 1072);
            v470 = *(v0 + 1024);
            v410 = *(v0 + 984);
            v418 = *(v0 + 960);
            v305 = *(v0 + 416);
            v403 = *(v0 + 424);
            logc = *(v0 + 408);
            sub_2262D611C(v363, v365);
            sub_2262D611C(v359, v361);

            v428(v303, v304);
            (*(v305 + 8))(v403, logc);
            sub_22634FFEC();
            v420(v410, v470, v418);
            v306 = sub_22635003C();
            v307 = sub_22635071C();
            v308 = os_log_type_enabled(v306, v307);
            v309 = *(v0 + 1344);
            v310 = *(v0 + 1336);
            v311 = *(v0 + 1192);
            v312 = *(v0 + 1168);
            v313 = *(v0 + 1160);
            if (v308)
            {
              v460 = *(v0 + 1160);
              v471 = *(v0 + 1192);
              v314 = *(v0 + 1000);
              v315 = *(v0 + 984);
              v316 = *(v0 + 960);
              v317 = swift_slowAlloc();
              v419 = v310;
              v318 = swift_slowAlloc();
              *&v472[0] = v318;
              *v317 = 136315138;
              v420(v314, v315, v316);
              v319 = sub_2263504CC();
              v321 = v320;
              v419(v315, v316);
              v322 = sub_226345004(v319, v321, v472);

              *(v317 + 4) = v322;
              _os_log_impl(&dword_2262B6000, v306, v307, "Finished inserting action %s to vector database.", v317, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v318);
              MEMORY[0x22AA7D570](v318, -1, -1);
              MEMORY[0x22AA7D570](v317, -1, -1);

              (*(v312 + 8))(v471, v460);
            }

            else
            {
              v323 = *(v0 + 984);
              v324 = *(v0 + 960);

              v310(v323, v324);
              (*(v312 + 8))(v311, v313);
            }

            goto LABEL_62;
          }
        }

        else
        {
          v235 = v467;
          v236 = v407;
          if (!v407)
          {
            goto LABEL_55;
          }
        }

        v237 = *(v0 + 448);
        v238 = *(v0 + 456);
        v239 = *(v0 + 432);
        v240 = *(v0 + 440);
        v241 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute;
        *v238 = v373;
        v238[1] = v236;
        (isa)(v238, v400, v239);
        (*(v240 + 32))(v237, v238, v239);
        v242 = swift_isUniquelyReferenced_nonNull_native();
        *&v472[0] = v228;
        sub_2262E3E68(v237, v235 + v241, v242);
        v228 = *&v472[0];
        goto LABEL_55;
      }

      v173 = *(v0 + 464);
      v174 = &qword_27D792FE0;
      v175 = &unk_226351C10;
    }

    sub_2262D67D8(v173, v174, v175);
    v376 = 0;
    v414 = 0;
    goto LABEL_41;
  }

  v9 = *(v0 + 1224);
  v10 = *(v0 + 1008);
  v11 = *(v0 + 608);
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);
  v14 = *(v0 + 536);
  v15 = *(v0 + 528);
  (*(*(v0 + 576) + 96))(v11, *(v0 + 568));
  v445 = *(v14 + 32);
  v445(v12, v11, v15);
  sub_22634FFEC();
  v451 = *(v14 + 16);
  v451(v13, v12, v15);
  v16 = *(v7 + 16);
  v16(v10, v461, v8);
  v17 = sub_22635003C();
  v18 = sub_22635073C();
  v441 = v17;
  v19 = os_log_type_enabled(v17, v18);
  v432 = *(v0 + 1344);
  v424 = *(v0 + 1336);
  v20 = *(v0 + 1224);
  v21 = *(v0 + 1168);
  v462 = *(v0 + 1160);
  v22 = *(v0 + 1008);
  if (v19)
  {
    log = *(v0 + 1000);
    v411 = *(v0 + 1224);
    v23 = *(v0 + 960);
    v24 = *(v0 + 552);
    v25 = *(v0 + 544);
    v404 = v18;
    v26 = *(v0 + 536);
    v27 = *(v0 + 528);
    v386 = v16;
    v28 = swift_slowAlloc();
    v397 = swift_slowAlloc();
    *&v472[0] = v397;
    *v28 = 136315394;
    v451(v25, v24, v27);
    v29 = sub_2263504CC();
    v31 = v30;
    (*(v26 + 8))(v24, v27);
    v32 = sub_226345004(v29, v31, v472);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v386(log, v22, v23);
    v33 = sub_2263504CC();
    v35 = v34;
    v424(v22, v23);
    v36 = sub_226345004(v33, v35, v472);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_2262B6000, v441, v404, "Error %s occurred while executing action %s.", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v397, -1, -1);
    MEMORY[0x22AA7D570](v28, -1, -1);

    (*(v21 + 8))(v411, v462);
  }

  else
  {
    v61 = *(v0 + 960);
    v62 = *(v0 + 552);
    v63 = *(v0 + 536);
    v64 = *(v0 + 528);

    v424(v22, v61);
    (*(v63 + 8))(v62, v64);
    (*(v21 + 8))(v20, v462);
  }

  v464 = *(v0 + 1288);
  v442 = *(v0 + 1280);
  v434 = *(v0 + 1040);
  v421 = *(v0 + 616);
  v426 = *(v0 + 1376);
  v65 = *(v0 + 576);
  v413 = *(v0 + 568);
  v66 = *(v0 + 560);
  v437 = v66;
  v67 = (*(v0 + 1112) + *(v0 + 1392));
  v68 = *(v0 + 528);
  sub_2262D62A4(&qword_27D793040, MEMORY[0x277D78B00]);
  v69 = swift_allocError();
  v451(v70, v66, v68);
  v71 = sub_22634ED9C();
  v72 = [v71 domain];
  v453 = sub_22635046C();
  v406 = v73;

  swift_getErrorValue();
  v74 = *(v0 + 296);
  v75 = *(v0 + 304);
  DynamicType = swift_getDynamicType();
  v77 = *(v0 + 312);
  *(v0 + 320) = DynamicType;
  *(v0 + 328) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793078, &qword_226351F28);
  v78 = sub_2263504CC();
  v80 = v79;
  *(v0 + 376) = [v71 code];
  v81 = sub_226350C1C();
  v83 = v82;

  swift_unknownObjectRelease();
  (*(v65 + 8))(v421, v413);
  sub_2262D67D8(v434, &qword_27D793038, &qword_226351EF8);
  v84 = v67[3];
  v86 = *v67;
  v85 = v67[1];
  *(v0 + 176) = v67[2];
  *(v0 + 192) = v84;
  *(v0 + 144) = v86;
  *(v0 + 160) = v85;
  sub_2262D67D8(v0 + 144, &qword_27D793048, &qword_226351F00);

  *v67 = v453;
  *(v67 + 1) = v406;
  *(v67 + 2) = v78;
  *(v67 + 3) = v80;
  *(v67 + 4) = v81;
  *(v67 + 5) = v83;
  *(v67 + 6) = 0;
  *(v67 + 7) = 0;
  v445(v434, v437, v68);
  for (result = v442(v434, 0, 1, v68); ; result = swift_unknownObjectRelease())
  {
    v88 = *(v0 + 1368) + 1;
    if (v88 == *(v0 + 1360))
    {
      break;
    }

    *(v0 + 1368) = v88;
    v89 = *(v0 + 1352);
    if (v88 >= *(v89 + 16))
    {
      __break(1u);
      return result;
    }

    v90 = *(v0 + 640);
    v91 = v89 + 16 * v88;
    *(v0 + 1376) = *(v91 + 32);
    v92 = *(v91 + 40);
    ObjectType = swift_getObjectType();
    v94 = *(v92 + 16);
    swift_unknownObjectRetain();
    if (v94(v90, ObjectType, v92))
    {
      v139 = *(v92 + 24);
      v466 = (v139 + *v139);
      v140 = v139[1];
      v141 = swift_task_alloc();
      *(v0 + 1384) = v141;
      *v141 = v0;
      v141[1] = sub_2262C6918;
      v142 = *(v0 + 952);
      v143 = *(v0 + 920);
      v144 = *(v0 + 640);
      v145 = *(v0 + 616);

      return v466(v145, v144, v142, v143, ObjectType, v92);
    }
  }

  v95 = *(v0 + 1272);
  v96 = *(v0 + 1264);
  v97 = *(v0 + 1096);
  v98 = *(v0 + 1072);
  v99 = *(v0 + 1040);
  v100 = *(v0 + 1032);
  v101 = *(v0 + 536);
  v102 = *(v0 + 528);
  *(*(v0 + 1112) + *(v0 + 1396)) = 1;
  sub_22634EEAC();
  sub_2262EBFE0(1, v97);
  v96(v97, v98);
  sub_2262EC7A0();
  sub_2262D66FC(v99, v100, &qword_27D793038, &qword_226351EF8);
  v103 = *(v101 + 48);
  v104 = v103(v100, 1, v102);
  v105 = *(v0 + 1032);
  v106 = *(v0 + 584);
  v107 = *(v0 + 536);
  v108 = *(v0 + 528);
  if (v104 == 1)
  {
    (*(v107 + 104))(v106, *MEMORY[0x277D78AE8], *(v0 + 528));
    if (v103(v105, 1, v108) != 1)
    {
      sub_2262D67D8(*(v0 + 1032), &qword_27D793038, &qword_226351EF8);
    }
  }

  else
  {
    (*(v107 + 32))(v106, *(v0 + 1032), *(v0 + 528));
  }

  v447 = *(v0 + 1336);
  v449 = *(v0 + 1344);
  v438 = *(v0 + 960);
  v443 = *(v0 + 1024);
  v435 = *(v0 + 952);
  v131 = *(v0 + 936);
  v132 = *(v0 + 928);
  v133 = *(v0 + 920);
  v134 = *(v0 + 912);
  v135 = *(v0 + 904);
  v136 = *(v0 + 896);
  v137 = *(v0 + 664);
  v454 = *(v0 + 640);
  v465 = *(v0 + 1040);
  v138 = *(v0 + 384);
  (*(*(v0 + 576) + 104))(*(v0 + 584), *MEMORY[0x277D78A40], *(v0 + 568));
  sub_22634F7AC();
  sub_2262D67D8(v137, &qword_27D793028, &qword_226351EE8);
  sub_2262D67D8(v136, &qword_27D793008, &unk_226351EC0);
  (*(v134 + 8))(v133, v135);
  (*(v131 + 8))(v435, v132);
  v447(v443, v438);
LABEL_63:
  sub_2262D67D8(v465, &qword_27D793038, &qword_226351EF8);
  sub_2262D6068(v454, type metadata accessor for VisualAction);
  v293 = *(v0 + 1240);
  v294 = *(v0 + 1232);
  v295 = *(v0 + 1224);
  v296 = *(v0 + 1216);
  v297 = *(v0 + 1208);
  v298 = *(v0 + 1200);
  v299 = *(v0 + 1192);
  v300 = *(v0 + 1184);
  v325 = *(v0 + 1176);
  v326 = *(v0 + 1152);
  v327 = *(v0 + 1144);
  v328 = *(v0 + 1136);
  v329 = *(v0 + 1096);
  v330 = *(v0 + 1088);
  v331 = *(v0 + 1064);
  v332 = *(v0 + 1040);
  v333 = *(v0 + 1032);
  v334 = *(v0 + 1024);
  v335 = *(v0 + 1016);
  v336 = *(v0 + 1008);
  v337 = *(v0 + 1000);
  v338 = *(v0 + 992);
  v339 = *(v0 + 984);
  v340 = *(v0 + 976);
  v341 = *(v0 + 952);
  v342 = *(v0 + 944);
  v343 = *(v0 + 920);
  v344 = *(v0 + 896);
  v345 = *(v0 + 888);
  v346 = *(v0 + 880);
  v347 = *(v0 + 872);
  v349 = *(v0 + 864);
  v351 = *(v0 + 840);
  v353 = *(v0 + 832);
  v355 = *(v0 + 808);
  v357 = *(v0 + 784);
  v358 = *(v0 + 760);
  v360 = *(v0 + 736);
  v362 = *(v0 + 728);
  v364 = *(v0 + 720);
  v366 = *(v0 + 696);
  v368 = *(v0 + 688);
  v370 = *(v0 + 664);
  v372 = *(v0 + 656);
  v375 = *(v0 + 648);
  v378 = *(v0 + 640);
  v381 = *(v0 + 616);
  v385 = *(v0 + 608);
  v390 = *(v0 + 600);
  loge = *(v0 + 592);
  v402 = *(v0 + 584);
  v409 = *(v0 + 560);
  v417 = *(v0 + 552);
  v423 = *(v0 + 544);
  v431 = *(v0 + 520);
  v436 = *(v0 + 504);
  v440 = *(v0 + 496);
  v444 = *(v0 + 488);
  v448 = *(v0 + 464);
  v450 = *(v0 + 456);
  v459 = *(v0 + 448);
  v469 = *(v0 + 424);
  sub_2262D6068(*(v0 + 1112), type metadata accessor for Analytics);

  v301 = *(v0 + 8);

  return v301();
}

uint64_t sub_2262C8D24()
{
  v209 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  (*(*(v0 + 632) + 56))(v2, 1, 1, *(v0 + 624));
  sub_2262D6764(v2, v1, &qword_27D793008, &unk_226351EC0);
  *(v0 + 1328) = 0;
  v3 = *(v0 + 1016);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 728);
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  sub_22634F74C();
  sub_22634F39C();
  v9 = *(v4 + 8);
  *(v0 + 1336) = v9;
  *(v0 + 1344) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v5);
  v10 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  swift_beginAccess();
  v11 = *(v8 + v10);
  v12 = *(v0 + 728);
  if (*(v11 + 16))
  {

    v13 = sub_2263394D8(v12);
    v14 = *(v0 + 728);
    v15 = *(v0 + 712);
    v16 = *(v0 + 704);
    v17 = *(v0 + 664);
    if (v18)
    {
      v19 = v13;
      v200 = v9;
      v20 = *(v11 + 56);
      v21 = type metadata accessor for ActionContext();
      v22 = *(v21 - 8);
      v23 = v20 + *(v22 + 72) * v19;
      v9 = v200;
      sub_2262D5EB8(v23, v17, type metadata accessor for ActionContext);
      v24 = *(v15 + 8);
      v24(v14, v16);

      (*(v22 + 56))(v17, 0, 1, v21);
    }

    else
    {

      v24 = *(v15 + 8);
      v24(v14, v16);
      v27 = type metadata accessor for ActionContext();
      (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
    }
  }

  else
  {
    v25 = *(v0 + 664);
    v24 = *(*(v0 + 712) + 8);
    v24(*(v0 + 728), *(v0 + 704));
    v26 = type metadata accessor for ActionContext();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  }

  v28 = *(v0 + 872);
  v29 = *(v0 + 632);
  v30 = *(v0 + 624);
  sub_2262D66FC(*(v0 + 896), v28, &qword_27D793008, &unk_226351EC0);
  if ((*(v29 + 48))(v28, 1, v30) == 1)
  {
    v196 = v24;
    v201 = v9;
    v31 = *(v0 + 1176);
    v32 = *(v0 + 1136);
    v33 = *(v0 + 1128);
    v34 = *(v0 + 1120);
    v35 = *(v0 + 392);
    sub_2262D67D8(*(v0 + 872), &qword_27D793008, &unk_226351EC0);
    sub_22634FFEC();
    (*(v33 + 16))(v32, v35, v34);
    v36 = sub_22635003C();
    v37 = sub_22635073C();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 1176);
    v40 = *(v0 + 1168);
    v41 = *(v0 + 1160);
    v42 = *(v0 + 1136);
    v43 = *(v0 + 1128);
    v44 = *(v0 + 1120);
    if (v38)
    {
      v184 = v37;
      v45 = *(v0 + 1000);
      v192 = *(v0 + 1160);
      v46 = *(v0 + 720);
      v171 = *(v0 + 960);
      v174 = *(v0 + 712);
      v47 = *(v0 + 704);
      v177 = *(v0 + 1120);
      v48 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v208 = v180;
      *v48 = 136315138;
      v188 = v39;
      sub_22634F74C();
      sub_22634F39C();
      v201(v45, v171);
      sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
      v49 = sub_226350C1C();
      v51 = v50;
      v196(v46, v47);
      (*(v43 + 8))(v42, v177);
      v52 = sub_226345004(v49, v51, &v208);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_2262B6000, v36, v184, "Cannot find action for action id: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v180);
      MEMORY[0x22AA7D570](v180, -1, -1);
      MEMORY[0x22AA7D570](v48, -1, -1);

      (*(v40 + 8))(v188, v192);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
      (*(v40 + 8))(v39, v41);
    }

    v165 = *(v0 + 1272);
    v157 = *(v0 + 1396);
    v153 = *(v0 + 1112);
    v155 = *(v0 + 1096);
    v161 = *(v0 + 1072);
    v163 = *(v0 + 1264);
    v193 = *(v0 + 1024);
    v197 = *(v0 + 1040);
    v185 = *(v0 + 952);
    v189 = *(v0 + 960);
    v178 = *(v0 + 936);
    v181 = *(v0 + 928);
    v169 = *(v0 + 912);
    v172 = *(v0 + 904);
    v175 = *(v0 + 920);
    v167 = *(v0 + 896);
    v159 = *(v0 + 664);
    v78 = *(v0 + 592);
    v79 = *(v0 + 576);
    v80 = *(v0 + 568);
    v81 = *(v0 + 528);
    v82 = *(v0 + 384);
    v83 = (v153 + *(v0 + 1392));
    v84 = *MEMORY[0x277D78AC0];
    v85 = *(*(v0 + 536) + 104);
    v85(v78, v84, v81);
    (*(v79 + 104))(v78, *MEMORY[0x277D78A40], v80);
    sub_22634F7AC();
    sub_2262D62A4(&qword_27D793040, MEMORY[0x277D78B00]);
    v86 = swift_allocError();
    v85(v87, v84, v81);
    v88 = v86;
    sub_2262F3A84(0, 0, v207);

    v89 = *v83;
    v90 = v83[1];
    v91 = v83[3];
    *(v0 + 48) = v83[2];
    *(v0 + 64) = v91;
    *(v0 + 16) = v89;
    *(v0 + 32) = v90;
    sub_2262D67D8(v0 + 16, &qword_27D793048, &qword_226351F00);

    v92 = v207[1];
    *v83 = v207[0];
    v83[1] = v92;
    v93 = v207[3];
    v83[2] = v207[2];
    v83[3] = v93;
    *(v153 + v157) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v155);
    v163(v155, v161);
    sub_2262EC7A0();
    sub_2262D67D8(v159, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v167, &qword_27D793008, &unk_226351EC0);
    (*(v169 + 8))(v175, v172);
    (*(v178 + 8))(v185, v181);
    v201(v193, v189);
    sub_2262D67D8(v197, &qword_27D793038, &qword_226351EF8);
LABEL_21:
    v102 = *(v0 + 1240);
    v103 = *(v0 + 1232);
    v104 = *(v0 + 1224);
    v105 = *(v0 + 1216);
    v106 = *(v0 + 1208);
    v107 = *(v0 + 1200);
    v108 = *(v0 + 1192);
    v109 = *(v0 + 1184);
    v118 = *(v0 + 1176);
    v119 = *(v0 + 1152);
    v120 = *(v0 + 1144);
    v121 = *(v0 + 1136);
    v122 = *(v0 + 1096);
    v123 = *(v0 + 1088);
    v124 = *(v0 + 1064);
    v125 = *(v0 + 1040);
    v126 = *(v0 + 1032);
    v127 = *(v0 + 1024);
    v128 = *(v0 + 1016);
    v129 = *(v0 + 1008);
    v130 = *(v0 + 1000);
    v131 = *(v0 + 992);
    v132 = *(v0 + 984);
    v133 = *(v0 + 976);
    v134 = *(v0 + 952);
    v135 = *(v0 + 944);
    v136 = *(v0 + 920);
    v137 = *(v0 + 896);
    v138 = *(v0 + 888);
    v139 = *(v0 + 880);
    v140 = *(v0 + 872);
    v141 = *(v0 + 864);
    v142 = *(v0 + 840);
    v143 = *(v0 + 832);
    v144 = *(v0 + 808);
    v145 = *(v0 + 784);
    v146 = *(v0 + 760);
    v147 = *(v0 + 736);
    v148 = *(v0 + 728);
    v149 = *(v0 + 720);
    v150 = *(v0 + 696);
    v151 = *(v0 + 688);
    v152 = *(v0 + 664);
    v154 = *(v0 + 656);
    v156 = *(v0 + 648);
    v158 = *(v0 + 640);
    v160 = *(v0 + 616);
    v162 = *(v0 + 608);
    v164 = *(v0 + 600);
    v166 = *(v0 + 592);
    v168 = *(v0 + 584);
    v170 = *(v0 + 560);
    v173 = *(v0 + 552);
    v176 = *(v0 + 544);
    v179 = *(v0 + 520);
    v183 = *(v0 + 504);
    v187 = *(v0 + 496);
    v191 = *(v0 + 488);
    v195 = *(v0 + 464);
    v199 = *(v0 + 456);
    v203 = *(v0 + 448);
    v205 = *(v0 + 424);
    sub_2262D6068(*(v0 + 1112), type metadata accessor for Analytics);

    v110 = *(v0 + 8);

    return v110();
  }

  v53 = *(v0 + 400);
  result = sub_2262D6000(*(v0 + 872), *(v0 + 640), type metadata accessor for VisualAction);
  v55 = *(v53 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionExecutors);
  *(v0 + 1352) = v55;
  v56 = *(v55 + 16);
  *(v0 + 1360) = v56;
  if (!v56)
  {
LABEL_14:
    v64 = *(v0 + 1272);
    v65 = *(v0 + 1264);
    v66 = *(v0 + 1096);
    v67 = *(v0 + 1072);
    v68 = *(v0 + 1040);
    v69 = *(v0 + 1032);
    v70 = *(v0 + 536);
    v71 = *(v0 + 528);
    *(*(v0 + 1112) + *(v0 + 1396)) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v66);
    v65(v66, v67);
    sub_2262EC7A0();
    sub_2262D66FC(v68, v69, &qword_27D793038, &qword_226351EF8);
    v72 = *(v70 + 48);
    v73 = v72(v69, 1, v71);
    v74 = *(v0 + 1032);
    v75 = *(v0 + 584);
    v76 = *(v0 + 536);
    v77 = *(v0 + 528);
    if (v73 == 1)
    {
      (*(v76 + 104))(v75, *MEMORY[0x277D78AE8], *(v0 + 528));
      if (v72(v74, 1, v77) != 1)
      {
        sub_2262D67D8(*(v0 + 1032), &qword_27D793038, &qword_226351EF8);
      }
    }

    else
    {
      (*(v76 + 32))(v75, *(v0 + 1032), *(v0 + 528));
    }

    v194 = *(v0 + 1336);
    v198 = *(v0 + 1344);
    v186 = *(v0 + 960);
    v190 = *(v0 + 1024);
    v182 = *(v0 + 952);
    v94 = *(v0 + 936);
    v95 = *(v0 + 928);
    v96 = *(v0 + 920);
    v97 = *(v0 + 912);
    v98 = *(v0 + 904);
    v99 = *(v0 + 896);
    v100 = *(v0 + 664);
    v202 = *(v0 + 640);
    v204 = *(v0 + 1040);
    v101 = *(v0 + 384);
    (*(*(v0 + 576) + 104))(*(v0 + 584), *MEMORY[0x277D78A40], *(v0 + 568));
    sub_22634F7AC();
    sub_2262D67D8(v100, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v99, &qword_27D793008, &unk_226351EC0);
    (*(v97 + 8))(v96, v98);
    (*(v94 + 8))(v182, v95);
    v194(v190, v186);
    sub_2262D67D8(v204, &qword_27D793038, &qword_226351EF8);
    sub_2262D6068(v202, type metadata accessor for VisualAction);
    goto LABEL_21;
  }

  v57 = 0;
  *(v0 + 1400) = *MEMORY[0x277D78A40];
  while (1)
  {
    *(v0 + 1368) = v57;
    v58 = *(v0 + 1352);
    if (v57 >= *(v58 + 16))
    {
      __break(1u);
      return result;
    }

    v59 = *(v0 + 640);
    v60 = v58 + 16 * v57;
    *(v0 + 1376) = *(v60 + 32);
    v61 = *(v60 + 40);
    ObjectType = swift_getObjectType();
    v63 = *(v61 + 16);
    swift_unknownObjectRetain();
    if (v63(v59, ObjectType, v61))
    {
      break;
    }

    result = swift_unknownObjectRelease();
    v57 = *(v0 + 1368) + 1;
    if (v57 == *(v0 + 1360))
    {
      goto LABEL_14;
    }
  }

  v111 = *(v61 + 24);
  v206 = (v111 + *v111);
  v112 = v111[1];
  v113 = swift_task_alloc();
  *(v0 + 1384) = v113;
  *v113 = v0;
  v113[1] = sub_2262C6918;
  v114 = *(v0 + 952);
  v115 = *(v0 + 920);
  v116 = *(v0 + 640);
  v117 = *(v0 + 616);

  return v206(v117, v116, v114, v115, ObjectType, v61);
}

uint64_t sub_2262C9CC4(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_22634F34C();
  v3[37] = v4;
  v5 = *(v4 - 8);
  v3[38] = v5;
  v6 = *(v5 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v7 = type metadata accessor for VisualAction(0);
  v3[41] = v7;
  v8 = *(v7 - 8);
  v3[42] = v8;
  v9 = *(v8 + 64) + 15;
  v3[43] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FF8, &qword_226351EA8);
  v3[44] = v10;
  v11 = *(v10 - 8);
  v3[45] = v11;
  v12 = *(v11 + 64) + 15;
  v3[46] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793000, &unk_226351EB0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v14 = sub_22634FA5C();
  v3[49] = v14;
  v15 = *(v14 - 8);
  v3[50] = v15;
  v16 = *(v15 + 64) + 15;
  v3[51] = swift_task_alloc();
  v17 = sub_22634F47C();
  v3[52] = v17;
  v18 = *(v17 - 8);
  v3[53] = v18;
  v19 = *(v18 + 64) + 15;
  v3[54] = swift_task_alloc();
  v20 = type metadata accessor for ActionContext();
  v3[55] = v20;
  v21 = *(v20 - 8);
  v3[56] = v21;
  v22 = *(v21 + 64) + 15;
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10) - 8) + 64) + 15;
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v24 = sub_2263502EC();
  v3[67] = v24;
  v25 = *(v24 - 8);
  v3[68] = v25;
  v26 = *(v25 + 64) + 15;
  v3[69] = swift_task_alloc();
  v27 = sub_2263500AC();
  v3[70] = v27;
  v28 = *(v27 - 8);
  v3[71] = v28;
  v29 = *(v28 + 64) + 15;
  v3[72] = swift_task_alloc();
  v30 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  v3[73] = v30;
  v31 = *(*(v30 - 8) + 64) + 15;
  v3[74] = swift_task_alloc();
  v32 = type metadata accessor for VisualAction.Kind(0);
  v3[75] = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v34 = *(type metadata accessor for RankedVisualAction() - 8);
  v3[78] = v34;
  v35 = *(v34 + 64) + 15;
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v36 = sub_22634FDAC();
  v3[86] = v36;
  v37 = *(v36 - 8);
  v3[87] = v37;
  v38 = *(v37 + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v39 = sub_22634FDCC();
  v3[90] = v39;
  v40 = *(v39 - 8);
  v3[91] = v40;
  v41 = *(v40 + 64) + 15;
  v3[92] = swift_task_alloc();
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793008, &unk_226351EC0) - 8) + 64) + 15;
  v3[93] = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0) - 8) + 64) + 15;
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v44 = sub_22634FDFC();
  v3[96] = v44;
  v45 = *(v44 - 8);
  v3[97] = v45;
  v46 = *(v45 + 64) + 15;
  v3[98] = swift_task_alloc();
  v47 = sub_22634EECC();
  v3[99] = v47;
  v48 = *(v47 - 8);
  v3[100] = v48;
  v49 = *(v48 + 64) + 15;
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v50 = sub_22634EEFC();
  v3[105] = v50;
  v51 = *(v50 - 8);
  v3[106] = v51;
  v52 = *(v51 + 64) + 15;
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v53 = type metadata accessor for Analytics(0);
  v3[119] = v53;
  v54 = *(*(v53 - 8) + 64) + 15;
  v3[120] = swift_task_alloc();
  v55 = sub_22634F72C();
  v3[121] = v55;
  v56 = *(v55 - 8);
  v3[122] = v56;
  v57 = *(v56 + 64) + 15;
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v58 = sub_22635004C();
  v3[125] = v58;
  v59 = *(v58 - 8);
  v3[126] = v59;
  v60 = *(v59 + 64) + 15;
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v3[133] = swift_task_alloc();
  v3[134] = swift_task_alloc();
  v3[135] = swift_task_alloc();
  v3[136] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CA668, v2, 0);
}

uint64_t sub_2262CA668()
{
  v668 = v0;
  v1 = v0[36] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  v655 = v0;
  if (sub_22634FCBC())
  {
    v2 = v0[136];
    v3 = v0[124];
    v4 = v0[122];
    v5 = v0[121];
    v6 = v0[35];
    v7 = v0[36];
    sub_22634FFEC();
    v8 = *(v4 + 16);
    v8(v3, v6, v5);

    v9 = sub_22635003C();
    v10 = sub_22635071C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[136];
    v13 = v0[126];
    v14 = v0[125];
    v15 = v0[124];
    if (v11)
    {
      v627 = v0[123];
      v635 = v8;
      v657 = v0[136];
      v16 = v0[122];
      v17 = v0[121];
      v647 = v10;
      v18 = v0[36];
      v650 = v0[125];
      v19 = swift_slowAlloc();
      v644 = swift_slowAlloc();
      v667[0] = v644;
      *v19 = 136315650;
      v20 = *v18;
      v21 = sub_226350D6C();
      v23 = sub_226345004(v21, v22, v667);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0xD000000000000019, 0x8000000226356510, v667);
      *(v19 + 22) = 2080;
      v635(v627, v15, v17);
      v24 = sub_2263504CC();
      v26 = v25;
      (*(v16 + 8))(v15, v17);
      v27 = sub_226345004(v24, v26, v667);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_2262B6000, v9, v647, "%s.%s request = %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v644, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v13 + 8))(v657, v650);
    }

    else
    {
      v43 = v0[122];
      v44 = v0[121];

      (*(v43 + 8))(v15, v44);
      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    v28 = v0[135];
    v29 = v0[36];
    sub_22634FFEC();

    v30 = sub_22635003C();
    v31 = sub_22635072C();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[135];
    v34 = v0[126];
    v35 = v0[125];
    if (v32)
    {
      v36 = v0[36];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v667[0] = v38;
      *v37 = 136315394;
      v39 = *v36;
      v40 = sub_226350D6C();
      v42 = sub_226345004(v40, v41, v667);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_226345004(0xD000000000000019, 0x8000000226356510, v667);
      _os_log_impl(&dword_2262B6000, v30, v31, "%s.%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v37, -1, -1);
    }

    (*(v34 + 8))(v33, v35);
  }

  v45 = v0[120];
  v46 = v0[119];
  v619 = v0[118];
  v622 = v0[117];
  v47 = v0[106];
  v556 = v0[105];
  v576 = v0[104];
  v547 = v0[100];
  v583 = v0[99];
  v590 = v0[98];
  v596 = v0[97];
  v602 = v0[96];
  v607 = v0[95];
  v636 = v0[93];
  v651 = v0[92];
  v551 = v0[91];
  v658 = v0[90];
  v48 = v0[53];
  v648 = v0[52];
  v612 = v0[42];
  v628 = v0[41];
  v49 = v0[36];
  v561 = v0[35];
  v50 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  v51 = v47[2];
  v51(&v45[v46[5]], v49 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id);
  v568 = v46[13];
  sub_22634F71C();
  v52 = &v45[v46[6]];
  *v52 = 0;
  v52[8] = 1;
  v53 = &v45[v46[7]];
  v53[2] = 0u;
  v53[3] = 0u;
  *v53 = 0u;
  v53[1] = 0u;
  v463 = v46[8];
  v45[v463] = 2;
  v54 = &v45[v46[9]];
  *v54 = 0;
  v54[1] = 0;
  v467 = v46[10];
  v45[v467] = 3;
  v45[v46[11]] = 2;
  v540 = *(v48 + 56);
  v540(&v45[v46[12]], 1, 1, v648);
  *&v45[v46[14]] = MEMORY[0x277D84F98];
  *&v45[v46[15]] = MEMORY[0x277D84F90];
  v45[v46[16]] = 0;
  *v45 = 2;
  v645 = v51;
  (v51)(v619, v49 + v50, v556);
  v55 = type metadata accessor for DataHarvester();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v545 = swift_allocObject();
  v616 = v47[4];
  v616(v545 + OBJC_IVAR____TtC26VisualActionPredictionCore13DataHarvester_sessionUUID, v619, v556);
  sub_22634EEAC();
  sub_2262EB938(2, v576);
  v538 = *(v547 + 8);
  v538(v576, v583);
  sub_22634F71C();
  v468 = v45;
  (*(v596 + 40))(&v45[v568], v590, v602);
  sub_22634EEEC();
  v462 = v47[7];
  v462(v607, 1, 1, v556);
  v666 = MEMORY[0x277D84FA0];
  v603 = *(v612 + 56);
  v603(v636, 1, 1, v628);
  sub_22634F70C();
  v58 = sub_22634FDBC();
  v543 = *(v551 + 8);
  v543(v651, v658);
  v59 = MEMORY[0x277D78CC0];
  v60 = MEMORY[0x277D78CC8];
  if (*(v58 + 16))
  {
    v61 = v0[106];
    v62 = v0[87];
    v562 = v0[78];
    v530 = v0[73];
    v534 = v0[77];
    v63 = v0[71];
    v608 = *(v58 + 16);
    v64 = v0[68];
    v557 = v0[41];
    v659 = v58 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v569 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
    v577 = v0[36];
    result = swift_beginAccess();
    v504 = 0;
    v66 = 0;
    v629 = *v59;
    v597 = *v60;
    v623 = (v62 + 96);
    v591 = (v61 + 8);
    v523 = (v64 + 16);
    v67 = v608;
    v516 = *MEMORY[0x277D72148];
    v510 = (v63 + 8);
    v513 = (v63 + 104);
    v584 = v58;
    while (1)
    {
      if (v66 >= *(v58 + 16))
      {
        goto LABEL_156;
      }

      v68 = v655[89];
      v69 = v655[86];
      (*(v62 + 16))(v68, v659 + *(v62 + 72) * v66, v69);
      v70 = (*(v62 + 88))(v68, v69);
      if (v70 != v629)
      {
        v87 = v655[89];
        v88 = v655[86];
        if (v70 == v597)
        {
          (*v623)(v655[89], v88);
          v89 = *(*v87 + 16);

          v75 = __OFADD__(v504, v89);
          v504 += v89;
          if (v75)
          {
            goto LABEL_158;
          }
        }

        else
        {
          result = (*(v62 + 8))(v655[89], v88);
        }

        goto LABEL_11;
      }

      v71 = v59;
      v72 = v655[116];
      v73 = v655[105];
      v74 = v655[89];
      (*v623)(v74, v655[86]);
      result = (v616)(v72, v74, v73);
      v75 = __OFADD__(v504++, 1);
      if (v75)
      {
        goto LABEL_157;
      }

      v76 = *(v577 + v569);
      if (!*(v76 + 16))
      {

        v77 = v655;
        goto LABEL_137;
      }

      v77 = v655;
      v78 = v655[116];
      v79 = *(v577 + v569);

      v80 = sub_2263394D8(v78);
      if ((v81 & 1) == 0)
      {

        goto LABEL_136;
      }

      v82 = v655[85];
      v83 = v655[84];
      v84 = v655[77];
      v85 = v655[75];
      sub_2262D5EB8(*(v76 + 56) + *(v562 + 72) * v80, v83, type metadata accessor for RankedVisualAction);

      sub_2262D6000(v83, v82, type metadata accessor for RankedVisualAction);
      sub_2262D5EB8(v82 + *(v557 + 20), v84, type metadata accessor for VisualAction.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v97 = v534[3];
          v98 = v534[5];
          v99 = v534[6];
          if (v534[1])
          {
            v77 = v655;
            v461 = v655[85];

            sub_2262D6068(v461, type metadata accessor for RankedVisualAction);
            goto LABEL_137;
          }

          v77 = v655;
          v100 = v655[116];
          v101 = v655[105];

          (*v591)(v100, v101);
        }

        else
        {
          v77 = v655;
          sub_2262D6000(v655[77], v655[74], type metadata accessor for VisualAction.Kind.SystemTool);
          v549 = *(v530 + 20);
          if (qword_27D792EA0 != -1)
          {
            swift_once();
          }

          v90 = v655[74];
          v91 = v655[72];
          v92 = v655[70];
          v93 = v655[69];
          v94 = v655[67];
          v95 = __swift_project_value_buffer(v94, qword_27D793ED8);
          (*v523)(v93, v95, v94);
          sub_22635032C();
          (*v513)(v91, v516, v92);
          v96 = sub_22635009C();
          (*v510)(v91, v92);
          sub_2262D6068(v90, type metadata accessor for VisualAction.Kind.SystemTool);
          if (v96)
          {
            sub_2262D6068(v655[85], type metadata accessor for RankedVisualAction);
LABEL_136:

LABEL_137:
            v424 = v77[134];
            sub_22634FFEC();
            v425 = sub_22635003C();
            v426 = sub_22635073C();
            if (os_log_type_enabled(v425, v426))
            {
              v427 = swift_slowAlloc();
              *v427 = 0;
              _os_log_impl(&dword_2262B6000, v425, v426, "Selected action is not predictable or missing from cache; skipping feedback request", v427, 2u);
              MEMORY[0x22AA7D570](v427, -1, -1);
            }

            v428 = v77[134];
            v429 = v77[126];
            v430 = v77[125];
            v431 = v77[120];
            v432 = v77[116];
            v433 = v77[105];
            v434 = v655[104];
            v435 = v655[99];
            v664 = v655[95];
            v436 = v655[34];

            (*(v429 + 8))(v428, v430);
            v468[v463] = 1;
            sub_22634EEAC();
            sub_2262EBFE0(2, v434);
            v437 = v434;
            v106 = v655;
            v538(v437, v435);
            sub_2262EC7A0();
            sub_22634F79C();

            v438 = *v591;
            (*v591)(v432, v433);
            sub_2262D67D8(v664, &qword_27D793010, &unk_226354CE0);
LABEL_148:
            v451 = v106[136];
            v452 = v106[135];
            v453 = v106;
            v454 = v106[134];
            v455 = v453[133];
            v469 = v453[132];
            v471 = v453[131];
            v473 = v453[130];
            v475 = v453[129];
            v477 = v453[128];
            v479 = v453[127];
            v481 = v453[124];
            v483 = v453[123];
            v456 = v453[120];
            v485 = v453[118];
            v487 = v453[116];
            v489 = v453[115];
            v491 = v453[114];
            v493 = v453[113];
            v494 = v453[112];
            v495 = v453[111];
            v497 = v453[110];
            v499 = v453[109];
            v501 = v453[108];
            v503 = v453[107];
            v505 = v453[104];
            v507 = v453[103];
            v509 = v453[102];
            v512 = v453[101];
            v515 = v453[98];
            v519 = v453[95];
            v522 = v453[94];
            v457 = v453[93];
            v526 = v453[92];
            v529 = v453[89];
            v533 = v453[88];
            v537 = v453[85];
            v539 = v453[84];
            v541 = v453[83];
            v542 = v453[82];
            v544 = v453[81];
            v546 = v453[80];
            v548 = v453[79];
            v550 = v453[77];
            v552 = v453[76];
            v555 = v453[74];
            v560 = v453[72];
            v567 = v453[69];
            v575 = v453[66];
            v582 = v453[65];
            v589 = v453[64];
            v595 = v453[63];
            v601 = v453[62];
            v606 = v453[61];
            v611 = v453[60];
            v615 = v453[59];
            v618 = v453[58];
            v621 = v453[57];
            v626 = v453[54];
            v634 = v453[51];
            v643 = v453[48];
            v646 = v453[47];
            v649 = v453[46];
            v654 = v453[43];
            v656 = v453[40];
            v665 = v453[39];
            v438(v453[117], v453[105]);
            sub_2262D67D8(v457, &qword_27D793008, &unk_226351EC0);
            sub_2262D6068(v456, type metadata accessor for Analytics);

            v458 = v453[1];

            return v458();
          }

          (*v591)(v655[116], v655[105]);
        }

        v59 = v71;
      }

      else
      {
        v59 = v71;
        if (EnumCaseMultiPayload != 2)
        {
          v58 = v584;
          if (EnumCaseMultiPayload != 4)
          {
            v77 = v655;
            v459 = v655[77];
            sub_2262D6068(v655[85], type metadata accessor for RankedVisualAction);

            v460 = sub_22634FBEC();
            (*(*(v460 - 8) + 8))(v459, v460);
            goto LABEL_137;
          }

          v77 = v655;
          (*v591)(v655[116], v655[105]);
          goto LABEL_35;
        }

        v77 = v655;
        v102 = v655[77];
        (*v591)(v655[116], v655[105]);
        sub_2262D6068(v102, type metadata accessor for VisualAction.Kind);
      }

      v58 = v584;
LABEL_35:
      v103 = v77[93];
      v104 = v77[85];
      v105 = v77[41];
      sub_2262D67D8(v103, &qword_27D793008, &unk_226351EC0);
      sub_2262D6000(v104, v103, type metadata accessor for VisualAction);
      result = (v603)(v103, 0, 1, v105);
      v60 = MEMORY[0x277D78CC8];
      v67 = v608;
LABEL_11:
      if (v67 == ++v66)
      {
        goto LABEL_37;
      }
    }
  }

  v504 = 0;
LABEL_37:

  v106 = v655;
  v107 = v655[92];
  v108 = v655[90];
  v109 = v655[35];
  sub_22634F70C();
  v110 = sub_22634FDBC();
  v543(v107, v108);
  v111 = v110;
  v500 = *(v110 + 16);
  if (!v500)
  {
LABEL_103:

    v346 = v106[106];
    v347 = v106[105];
    v348 = v106[94];
    sub_2262D66FC(v106[95], v348, &qword_27D793010, &unk_226354CE0);
    if ((*(v346 + 48))(v348, 1, v347) == 1)
    {
      v349 = v106[94];

      sub_2262D67D8(v349, &qword_27D793010, &unk_226354CE0);
LABEL_145:
      v441 = v106[104];
      v442 = v106[101];
      v443 = v106[99];
      v444 = *(v106[36] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
      sub_22634EEAC();
      sub_22634EE7C();
      v538(v441, v443);
      sub_2262FF194();
      v538(v106[101], v106[99]);
      if (v468[v467] == 3)
      {
        v468[v467] = 2;
      }

      v445 = v106[120];
      v446 = v106[106];
      v447 = v106[104];
      v448 = v106[99];
      v449 = v106[95];
      v450 = v106[34];
      v468[v463] = 0;
      sub_22634EEAC();
      sub_2262EBFE0(2, v447);
      v538(v447, v448);
      sub_2262EC7A0();
      sub_22634F79C();

      sub_2262D67D8(v449, &qword_27D793010, &unk_226354CE0);
      v438 = *(v446 + 8);
      goto LABEL_148;
    }

    v350 = v106[36];
    v616(v106[109], v106[94], v106[105]);
    v351 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedPredictionResults;
    swift_beginAccess();
    v352 = *(v350 + v351);
    if (*(v352 + 16))
    {
      v353 = v106[109];

      v354 = sub_2263394D8(v353);
      if (v355)
      {
        v356 = *(*(v352 + 56) + 8 * v354);

        v633 = *(v356 + 16);
        if (!v633)
        {
          v439 = v106;
          v440 = v106[106];

          v365 = *(v440 + 8);
LABEL_144:
          v365(v439[109], v439[105]);

          v106 = v439;
          goto LABEL_145;
        }

        v357 = v106[126];
        v358 = v106[106];
        v359 = v106[97];
        v536 = v106[78];
        v518 = v106[55];
        v521 = v106[56];
        v360 = v106[50];
        v361 = v106[36];
        v362 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
        v620 = v356 + ((*(v358 + 80) + 32) & ~*(v358 + 80));
        v614 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
        swift_beginAccess();
        v642 = v361;
        v532 = v362;
        result = swift_beginAccess();
        v605 = 0;
        v363 = 0;
        v653 = v666 + 56;
        v625 = v358;
        v364 = (v358 + 8);
        v617 = (v357 + 8);
        v525 = (v359 + 8);
        v528 = (v360 + 8);
        v610 = v356;
        while (1)
        {
          if (v363 >= *(v356 + 16))
          {
            goto LABEL_159;
          }

          v366 = *(v625 + 72);
          v645(v655[108], v620 + v366 * v363, v655[105]);
          if (*(v666 + 16))
          {
            v367 = v655[108];
            v368 = v655[105];
            v369 = *(v666 + 40);
            sub_2262D62A4(&qword_28137FA50, MEMORY[0x277CC95F0]);
            v370 = sub_22635040C();
            v371 = -1 << *(v666 + 32);
            v372 = v370 & ~v371;
            if ((*(v653 + ((v372 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v372))
            {
              v373 = ~v371;
              while (1)
              {
                v374 = v655[114];
                v375 = v655[108];
                v376 = v655[105];
                v645(v374, *(v666 + 48) + v372 * v366, v376);
                sub_2262D62A4(&qword_28137FA40, MEMORY[0x277CC95F0]);
                LOBYTE(v375) = sub_22635044C();
                v365 = *v364;
                (*v364)(v374, v376);
                if (v375)
                {
                  break;
                }

                v372 = (v372 + 1) & v373;
                if (((*(v653 + ((v372 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v372) & 1) == 0)
                {
                  goto LABEL_118;
                }
              }

              result = (v365)(v655[108], v655[105]);
              goto LABEL_111;
            }
          }

LABEL_118:
          v377 = *(v642 + v614);
          if (*(v377 + 16))
          {
            v378 = v655[108];
            v379 = *(v642 + v614);

            v380 = sub_2263394D8(v378);
            if (v381)
            {
              v382 = v655[63];
              v383 = v655[52];
              sub_2262D5EB8(*(v377 + 56) + *(v536 + 72) * v380, v655[79], type metadata accessor for RankedVisualAction);

              v540(v382, 1, 1, v383);
              v384 = *(v642 + v532);
              if (*(v384 + 16))
              {
                v385 = v655[108];
                v386 = *(v642 + v532);

                v387 = sub_2263394D8(v385);
                if (v388)
                {
                  v389 = v655[63];
                  v391 = v655[57];
                  v390 = v655[58];
                  sub_2262D5EB8(*(v384 + 56) + *(v521 + 72) * v387, v391, type metadata accessor for ActionContext);

                  sub_2262D67D8(v389, &qword_27D792FE0, &unk_226351C10);
                  sub_2262D6000(v391, v390, type metadata accessor for ActionContext);
                  sub_2262D66FC(v390 + *(v518 + 20), v389, &qword_27D792FE0, &unk_226351C10);
                  v392 = (v390 + *(v518 + 24));
                  v394 = *v392;
                  v393 = v392[1];

                  sub_2262D6068(v390, type metadata accessor for ActionContext);
LABEL_129:
                  v412 = v655[128];
                  sub_22634FFEC();
                  v413 = sub_22635003C();
                  v414 = sub_22635071C();
                  if (os_log_type_enabled(v413, v414))
                  {
                    v415 = swift_slowAlloc();
                    *v415 = 0;
                    _os_log_impl(&dword_2262B6000, v413, v414, "Sending data harvest event for rejected action not included in feedback request", v415, 2u);
                    MEMORY[0x22AA7D570](v415, -1, -1);
                  }

                  v416 = v655[128];
                  v417 = v655[125];

                  result = (*v617)(v416, v417);
                  if (__OFADD__(v504, v605))
                  {
                    goto LABEL_161;
                  }

                  v574 = v655[117];
                  v594 = v655[105];
                  v600 = v655[108];
                  v418 = v655[98];
                  v588 = v655[96];
                  v566 = v394;
                  v419 = v655[92];
                  v420 = v655[90];
                  v554 = v655[79];
                  v559 = v655[63];
                  v421 = v393;
                  v422 = v655[51];
                  v581 = v655[49];
                  v423 = v655[35];
                  LOBYTE(v667[0]) = 1;
                  sub_22634F71C();
                  sub_22634F70C();
                  sub_22634FD9C();
                  v543(v419, v420);
                  sub_22634B940(v554, v574, v504 + v605, v667, v559, v566, v421, v418);

                  (*v528)(v422, v581);
                  (*v525)(v418, v588);
                  sub_2262D67D8(v559, &qword_27D792FE0, &unk_226351C10);
                  sub_2262D6068(v554, type metadata accessor for RankedVisualAction);
                  v365 = *v364;
                  result = (*v364)(v600, v594);
                  if (__OFADD__(v605, 1))
                  {
                    goto LABEL_162;
                  }

                  ++v605;
                  goto LABEL_110;
                }
              }

              v394 = 0;
              v393 = 0;
              goto LABEL_129;
            }
          }

          v395 = v655[127];
          v396 = v655[108];
          v397 = v655[107];
          v398 = v655[105];
          sub_22634FFEC();
          v645(v397, v396, v398);
          v399 = sub_22635003C();
          v400 = sub_22635073C();
          v401 = os_log_type_enabled(v399, v400);
          v402 = v655[127];
          v403 = v655[125];
          v404 = v655[108];
          v405 = v655[107];
          v406 = v655[105];
          if (v401)
          {
            v599 = v655[127];
            v407 = swift_slowAlloc();
            v580 = swift_slowAlloc();
            v667[0] = v580;
            *v407 = 136315138;
            sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
            v587 = v403;
            v593 = v404;
            v408 = sub_226350C1C();
            v410 = v409;
            v365 = *v364;
            (*v364)(v405, v406);
            v411 = sub_226345004(v408, v410, v667);

            *(v407 + 4) = v411;
            _os_log_impl(&dword_2262B6000, v399, v400, "Could not find cached action for %s", v407, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v580);
            MEMORY[0x22AA7D570](v580, -1, -1);
            MEMORY[0x22AA7D570](v407, -1, -1);

            (*v617)(v599, v587);
            result = (v365)(v593, v406);
          }

          else
          {

            v365 = *v364;
            (*v364)(v405, v406);
            (*v617)(v402, v403);
            result = (v365)(v404, v406);
          }

LABEL_110:
          v356 = v610;
LABEL_111:
          if (++v363 == v633)
          {

            v439 = v655;
            goto LABEL_144;
          }
        }
      }
    }

    (*(v106[106] + 8))(v106[109], v106[105]);

    goto LABEL_145;
  }

  v630 = v655[126];
  v553 = v655[106];
  v660 = v655[97];
  v112 = v655[87];
  v465 = v655[83];
  v508 = v655[81];
  v535 = v655[78];
  v482 = v655[55];
  v484 = v655[56];
  v113 = v655[53];
  v637 = v655[50];
  v114 = v655[44];
  v115 = v655[45];
  v116 = v655[42];
  v490 = v655[41];
  v117 = v60;
  v118 = v655[38];
  v119 = v655[36];
  v120 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  v514 = (v119 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_timestampForTesting);
  v517 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream;
  v496 = v111 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
  v502 = v111;
  v609 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
  swift_beginAccess();
  v652 = v119;
  v531 = v120;
  swift_beginAccess();
  result = v502;
  v121 = 0;
  v492 = *MEMORY[0x277D78CC0];
  v613 = (v630 + 8);
  v478 = *v117;
  v466 = (v112 + 8);
  v498 = v112;
  v480 = (v112 + 96);
  v122 = v114;
  v598 = (v115 + 48);
  v604 = (v115 + 56);
  v520 = (v116 + 48);
  v476 = (v118 + 32);
  v474 = *MEMORY[0x277D785C8];
  v470 = (v118 + 8);
  v472 = (v118 + 104);
  v511 = (v113 + 48);
  v486 = (v113 + 8);
  v488 = (v113 + 16);
  v527 = (v637 + 8);
  v524 = (v660 + 8);
  v624 = (v553 + 8);
  v123 = __OFSUB__(v504, 1);
  v464 = v123;
  v592 = v114;
  while (1)
  {
    if (v121 >= *(result + 16))
    {
      goto LABEL_155;
    }

    v124 = v106[88];
    v125 = v106[86];
    v506 = v121;
    (*(v498 + 16))(v124, v496 + *(v498 + 72) * v121, v125);
    v126 = (*(v498 + 88))(v124, v125);
    if (v126 != v492)
    {
      break;
    }

    v127 = v106[115];
    v128 = v106[114];
    v129 = v106[113];
    v130 = v106[105];
    v131 = v106[88];
    (*v480)(v131, v106[86]);
    v616(v127, v131, v130);
    v645(v129, v127, v130);
    sub_226309C44(v128, v129);
    v132 = *v624;
    (*v624)(v128, v130);
    v133 = *(v652 + v609);
    if (*(v133 + 16))
    {
      v134 = v106[115];
      v135 = *(v652 + v609);

      v136 = sub_2263394D8(v134);
      if (v137)
      {
        v138 = v106[83];
        v139 = v106[82];
        v140 = v106[66];
        v141 = v106[52];
        sub_2262D5EB8(*(v133 + 56) + *(v535 + 72) * v136, v139, type metadata accessor for RankedVisualAction);

        sub_2262D6000(v139, v138, type metadata accessor for RankedVisualAction);
        v540(v140, 1, 1, v141);
        v142 = *(v652 + v531);
        if (*(v142 + 16))
        {
          v143 = v106[115];
          v144 = *(v652 + v531);

          v145 = sub_2263394D8(v143);
          if (v146)
          {
            v147 = v106[105];
            v148 = v106[95];
            v149 = v106[66];
            v151 = v106[61];
            v150 = v106[62];
            sub_2262D5EB8(*(v142 + 56) + *(v484 + 72) * v145, v151, type metadata accessor for ActionContext);
            sub_2262D67D8(v148, &qword_27D793010, &unk_226354CE0);

            sub_2262D6000(v151, v150, type metadata accessor for ActionContext);
            sub_2262D5F90(v150 + *(v482 + 20), v149);
            v152 = (v150 + *(v482 + 24));
            v638 = *v152;
            v661 = v152[1];
            v616(v148, v150, v147);
            v462(v148, 0, 1, v147);
LABEL_93:
            v298 = v106[83];
            v299 = v106[66];
            v300 = v106[52];
            v468[v467] = 0;
            sub_2262D5E54(v652 + v517, (v106 + 7));
            v301 = __swift_project_boxed_opaque_existential_1(v106 + 7, v106[10]);
            v302 = sub_2262DBE60();
            v304 = v303;
            v305 = *v298;
            v306 = *(v465 + 8);
            if ((*v511)(v299, 1, v300))
            {

              v307 = 0;
              v308 = 0;
            }

            else
            {
              v309 = v106[66];
              v310 = v106[54];
              v311 = v655[52];
              (*v488)(v310, v309, v311);

              v307 = sub_22634F46C();
              v308 = v312;
              v313 = v311;
              v106 = v655;
              (*v486)(v310, v313);
            }

            v314 = v106[103];
            if (v514[1])
            {
              sub_22634EEAC();
            }

            else
            {
              v315 = *v514;
              sub_22634EE4C();
            }

            v316 = v106[103];
            v317 = v655[99];
            sub_22634EE5C();
            v319 = v318;
            v538(v316, v317);
            v320 = type metadata accessor for VisualActionEvent();
            v321 = objc_allocWithZone(v320);
            *&v321[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
            v322 = &v321[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
            *v322 = v302;
            v322[1] = v304;
            v321[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = 0;
            v323 = &v321[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
            *v323 = v305;
            v323[1] = v306;
            v324 = &v321[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
            *v324 = v307;
            v324[1] = v308;
            v325 = &v321[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
            *v325 = v638;
            v325[1] = v661;
            *&v321[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = v319;
            v655[32] = v321;
            v655[33] = v320;

            v326 = objc_msgSendSuper2(v655 + 16, sel_init);
            v327 = [*v301 source];
            [v327 sendEvent_];

            result = __swift_destroy_boxed_opaque_existential_1Tm(v655 + 7);
            if (v464)
            {
              goto LABEL_160;
            }

            v586 = v655[133];
            v565 = v655[117];
            v328 = v655[98];
            v329 = v655[92];
            v330 = v655[90];
            v331 = v655[83];
            v332 = v655[66];
            v333 = v655[65];
            v334 = v655[51];
            v573 = v655[49];
            v579 = v655[96];
            v335 = v655[35];
            LOBYTE(v667[0]) = 0;
            sub_2262D66FC(v332, v333, &qword_27D792FE0, &unk_226351C10);
            sub_22634F71C();
            sub_22634F70C();
            sub_22634FD9C();
            v543(v329, v330);
            sub_22634B940(v331, v565, v504 - 1, v667, v333, v638, v661, v328);

            (*v527)(v334, v573);
            (*v524)(v328, v579);
            sub_2262D67D8(v333, &qword_27D792FE0, &unk_226351C10);
            sub_22634FFEC();
            v336 = sub_22635003C();
            v337 = sub_22635071C();
            if (os_log_type_enabled(v336, v337))
            {
              v338 = swift_slowAlloc();
              *v338 = 0;
              _os_log_impl(&dword_2262B6000, v336, v337, "Successfully sent conversion feedback event", v338, 2u);
              MEMORY[0x22AA7D570](v338, -1, -1);
            }

            v339 = v655[133];
            v340 = v655[125];
            v341 = v655[115];
            v342 = v655[105];
            v343 = v655[83];
            v344 = v655[66];

            (*v613)(v339, v340);
            sub_2262D6068(v343, type metadata accessor for RankedVisualAction);
            v132(v341, v342);
            v345 = v344;
            v106 = v655;
            sub_2262D67D8(v345, &qword_27D792FE0, &unk_226351C10);
            v122 = v592;
            goto LABEL_43;
          }
        }

        v638 = 0;
        v661 = 0;
        goto LABEL_93;
      }
    }

    v279 = v106[132];
    v280 = v106[115];
    v281 = v106[112];
    v282 = v106[105];
    sub_22634FFEC();
    v645(v281, v280, v282);
    v283 = sub_22635003C();
    v284 = sub_22635073C();
    v285 = os_log_type_enabled(v283, v284);
    v286 = v106[132];
    v287 = v106[125];
    v288 = v106[115];
    v289 = v106[112];
    v290 = v106[105];
    if (v285)
    {
      v663 = v106[115];
      v291 = swift_slowAlloc();
      v292 = swift_slowAlloc();
      v667[0] = v292;
      *v291 = 136315138;
      sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
      v641 = v286;
      v293 = sub_226350C1C();
      v295 = v294;
      v132(v289, v290);
      v296 = sub_226345004(v293, v295, v667);
      v106 = v655;

      *(v291 + 4) = v296;
      _os_log_impl(&dword_2262B6000, v283, v284, "Could not find cached action for %s", v291, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v292);
      v297 = v292;
      v122 = v592;
      MEMORY[0x22AA7D570](v297, -1, -1);
      MEMORY[0x22AA7D570](v291, -1, -1);

      (*v613)(v641, v287);
      v132(v663, v290);
    }

    else
    {

      v132(v289, v290);
      (*v613)(v286, v287);
      v132(v288, v290);
    }

LABEL_43:
    v121 = v506 + 1;
    result = v502;
    if (v506 + 1 == v500)
    {
      goto LABEL_103;
    }
  }

  if (v126 != v478)
  {
    v271 = v106[129];
    sub_22634FFEC();
    v272 = sub_22635003C();
    v273 = sub_22635073C();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      *v274 = 0;
      _os_log_impl(&dword_2262B6000, v272, v273, "Unknown feedback request", v274, 2u);
      MEMORY[0x22AA7D570](v274, -1, -1);
    }

    v275 = v106[129];
    v276 = v106[125];
    v277 = v106[88];
    v278 = v106[86];

    (*v613)(v275, v276);
    (*v466)(v277, v278);
    goto LABEL_43;
  }

  v153 = v106[88];
  (*v480)(v153, v106[86]);
  v154 = *v153;

  sub_2262D5D0C(v155);

  v156 = 0;
  v157 = *(v154 + 16);
  v578 = v157;
  v585 = v154;
  while (v156 == v157)
  {
    v159 = 1;
    v160 = v157;
LABEL_58:
    v166 = v106[47];
    v167 = v106[48];
    v168 = v106[44];
    (*v604)(v166, v159, 1, v168);
    sub_2262D6764(v166, v167, &qword_27D793000, &unk_226351EB0);
    if ((*v598)(v167, 1, v168) == 1)
    {

      goto LABEL_43;
    }

    v169 = v106[48];
    v170 = *v169;
    v616(v106[111], v169 + *(v122 + 48), v106[105]);
    v171 = *(v652 + v609);
    v662 = v160;
    if (*(v171 + 16))
    {
      v172 = v106[111];

      v173 = sub_2263394D8(v172);
      if ((v174 & 1) == 0)
      {

        goto LABEL_65;
      }

      v639 = v170;
      v175 = v106[81];
      v176 = v106[80];
      v177 = v106[64];
      v178 = v106[52];
      sub_2262D5EB8(*(v171 + 56) + *(v535 + 72) * v173, v176, type metadata accessor for RankedVisualAction);

      sub_2262D6000(v176, v175, type metadata accessor for RankedVisualAction);
      v540(v177, 1, 1, v178);
      v179 = *(v652 + v531);
      if (*(v179 + 16))
      {
        v180 = v106[111];
        v181 = *(v652 + v531);

        v182 = sub_2263394D8(v180);
        if (v183)
        {
          v184 = v106[64];
          v186 = v106[59];
          v185 = v106[60];
          sub_2262D5EB8(*(v179 + 56) + *(v484 + 72) * v182, v186, type metadata accessor for ActionContext);

          sub_2262D6000(v186, v185, type metadata accessor for ActionContext);
          sub_2262D5F20(v185 + *(v482 + 20), v184);
          v187 = (v185 + *(v482 + 24));
          v189 = *v187;
          v188 = v187[1];

          sub_2262D6068(v185, type metadata accessor for ActionContext);
          goto LABEL_69;
        }
      }

      v189 = 0;
      v188 = 0;
LABEL_69:
      v208 = v106[93];
      v632 = v189;
      if (!(*v520)(v208, 1, v106[41]))
      {
        v209 = v106[76];
        v210 = v106[75];
        v211 = v106[43];
        sub_2262D5EB8(v208, v211, type metadata accessor for VisualAction);
        sub_2262D5EB8(v211 + *(v490 + 20), v209, type metadata accessor for VisualAction.Kind);
        v212 = swift_getEnumCaseMultiPayload();
        v213 = v106[76];
        v214 = v106[43];
        if (v212 == 2)
        {
          v216 = v106[39];
          v215 = v106[40];
          v217 = v106[37];
          (*v476)(v215, v106[76], v217);
          (*v472)(v216, v474, v217);
          v218 = MEMORY[0x22AA7B3E0](v215, v216);
          v219 = *v470;
          (*v470)(v216, v217);
          v219(v215, v217);
          sub_2262D6068(v214, type metadata accessor for VisualAction);
          if (v218)
          {
            v220 = v188;
            goto LABEL_81;
          }
        }

        else
        {
          sub_2262D6068(v106[43], type metadata accessor for VisualAction);
          sub_2262D6068(v213, type metadata accessor for VisualAction.Kind);
        }
      }

      v221 = v189;
      v571 = v188;
      v222 = v106[81];
      v223 = v106[64];
      v224 = v106[52];
      sub_2262D5E54(v652 + v517, (v106 + 2));
      v563 = __swift_project_boxed_opaque_existential_1(v106 + 2, v106[5]);
      v225 = sub_2262DBE60();
      v227 = v226;
      v228 = *v222;
      v229 = *(v508 + 8);
      if ((*v511)(v223, 1, v224))
      {

        v230 = 0;
        v231 = 0;
      }

      else
      {
        v232 = v106[64];
        v233 = v106[54];
        v234 = v655[52];
        (*v488)(v233, v232, v234);

        v230 = sub_22634F46C();
        v231 = v235;
        v236 = v234;
        v106 = v655;
        (*v486)(v233, v236);
      }

      v237 = v106[102];
      if (v514[1])
      {
        sub_22634EEAC();
      }

      else
      {
        v238 = *v514;
        sub_22634EE4C();
      }

      v239 = v106[102];
      v240 = v655[99];
      sub_22634EE5C();
      v242 = v241;
      v243 = v240;
      v106 = v655;
      v538(v239, v243);
      v244 = type metadata accessor for VisualActionEvent();
      v245 = objc_allocWithZone(v244);
      *&v245[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
      v246 = &v245[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
      *v246 = v225;
      v246[1] = v227;
      v245[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = 1;
      v247 = &v245[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
      *v247 = v228;
      v247[1] = v229;
      v248 = &v245[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
      *v248 = v230;
      v248[1] = v231;
      v249 = &v245[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
      v220 = v571;
      *v249 = v221;
      v249[1] = v571;
      *&v245[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = v242;
      v655[30] = v245;
      v655[31] = v244;

      v250 = objc_msgSendSuper2(v655 + 15, sel_init);
      v251 = [*v563 source];
      [v251 sendEvent_];

      __swift_destroy_boxed_opaque_existential_1Tm(v655 + 2);
LABEL_81:
      v572 = v106[131];
      v252 = v106;
      v253 = v106[117];
      v254 = v252[98];
      v255 = v252[92];
      v256 = v252[90];
      v257 = v252[81];
      v258 = v252[65];
      v259 = v252[64];
      v260 = v252[51];
      v558 = v252[49];
      v564 = v252[96];
      v261 = v252[35];
      LOBYTE(v667[0]) = 1;
      sub_2262D66FC(v259, v258, &qword_27D792FE0, &unk_226351C10);
      sub_22634F71C();
      sub_22634F70C();
      sub_22634FD9C();
      v543(v255, v256);
      sub_22634B940(v257, v253, v639, v667, v258, v632, v220, v254);

      (*v527)(v260, v558);
      (*v524)(v254, v564);
      sub_2262D67D8(v258, &qword_27D792FE0, &unk_226351C10);
      sub_22634FFEC();
      v262 = sub_22635003C();
      v263 = sub_22635071C();
      if (os_log_type_enabled(v262, v263))
      {
        v264 = swift_slowAlloc();
        *v264 = 0;
        _os_log_impl(&dword_2262B6000, v262, v263, "Successfully sent rejection feedback event", v264, 2u);
        MEMORY[0x22AA7D570](v264, -1, -1);
      }

      v106 = v655;
      v265 = v655[131];
      v266 = v655[125];
      v267 = v655[111];
      v268 = v655[105];
      v269 = v655[81];
      v270 = v655[64];

      (*v613)(v265, v266);
      sub_2262D6068(v269, type metadata accessor for RankedVisualAction);
      (*v624)(v267, v268);
      result = sub_2262D67D8(v270, &qword_27D792FE0, &unk_226351C10);
      v154 = v585;
      v122 = v592;
      v157 = v578;
      v156 = v662;
    }

    else
    {
LABEL_65:
      v190 = v106[130];
      v191 = v106[111];
      v192 = v106[110];
      v193 = v106[105];
      sub_22634FFEC();
      v645(v192, v191, v193);
      v194 = sub_22635003C();
      v195 = sub_22635073C();
      v196 = os_log_type_enabled(v194, v195);
      v631 = v106[125];
      v640 = v106[130];
      v197 = v106[111];
      v198 = v106[110];
      v199 = v106[105];
      if (v196)
      {
        v570 = v106[111];
        v200 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v667[0] = v201;
        *v200 = 136315138;
        sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
        v202 = sub_226350C1C();
        v204 = v203;
        v205 = *v624;
        (*v624)(v198, v199);
        v206 = sub_226345004(v202, v204, v667);
        v154 = v585;

        *(v200 + 4) = v206;
        _os_log_impl(&dword_2262B6000, v194, v195, "Could not find cached action for %s", v200, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v201);
        v207 = v201;
        v122 = v592;
        MEMORY[0x22AA7D570](v207, -1, -1);
        MEMORY[0x22AA7D570](v200, -1, -1);

        (*v613)(v640, v631);
        result = (v205)(v570, v199);
        v157 = v578;
        v106 = v655;
        v156 = v662;
      }

      else
      {

        v158 = *v624;
        (*v624)(v198, v199);
        (*v613)(v640, v631);
        result = (v158)(v197, v199);
        v156 = v662;
      }
    }
  }

  if (v156 < *(v154 + 16))
  {
    v161 = v106[105];
    v162 = v106[46];
    v163 = v106[47];
    v160 = v156 + 1;
    v164 = v154 + ((*(v553 + 80) + 32) & ~*(v553 + 80)) + *(v553 + 72) * v156;
    v165 = *(v122 + 48);
    *v162 = v156;
    v645(v162 + v165, v164, v161);
    sub_2262D6764(v162, v163, &qword_27D792FF8, &qword_226351EA8);
    v159 = 0;
    goto LABEL_58;
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_2262CDB7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22634F34C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_22634F68C();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = sub_22635004C();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CDD10, v2, 0);
}

uint64_t sub_2262CDD10()
{
  v63 = v0;
  v1 = v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v2 = v0[15];
    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[3];
    v7 = v0[4];
    sub_22634FFEC();
    v8 = *(v5 + 16);
    v8(v3, v6, v4);

    v9 = sub_22635003C();
    v10 = sub_22635071C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[15];
    v13 = v0[12];
    v14 = v0[13];
    v15 = v0[11];
    if (v11)
    {
      v56 = v0[10];
      v57 = v8;
      v61 = v0[15];
      v17 = v0[8];
      v16 = v0[9];
      v59 = v10;
      v18 = v0[4];
      v60 = v0[12];
      v19 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62 = v58;
      *v19 = 136315650;
      v20 = *v18;
      v21 = sub_226350D6C();
      v23 = sub_226345004(v21, v22, &v62);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0xD000000000000029, 0x8000000226356490, &v62);
      *(v19 + 22) = 2080;
      v57(v56, v15, v17);
      v24 = sub_2263504CC();
      v26 = v25;
      (*(v16 + 8))(v15, v17);
      v27 = sub_226345004(v24, v26, &v62);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_2262B6000, v9, v59, "%s.%s request = %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v58, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v14 + 8))(v61, v60);
    }

    else
    {
      v43 = v0[8];
      v44 = v0[9];

      (*(v44 + 8))(v15, v43);
      (*(v14 + 8))(v12, v13);
    }
  }

  else
  {
    v28 = v0[14];
    v29 = v0[4];
    sub_22634FFEC();

    v30 = sub_22635003C();
    v31 = sub_22635072C();

    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[13];
    v33 = v0[14];
    v35 = v0[12];
    if (v32)
    {
      v36 = v0[4];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v62 = v38;
      *v37 = 136315394;
      v39 = *v36;
      v40 = sub_226350D6C();
      v42 = sub_226345004(v40, v41, &v62);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_226345004(0xD000000000000029, 0x8000000226356490, &v62);
      _os_log_impl(&dword_2262B6000, v30, v31, "%s.%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v37, -1, -1);
    }

    (*(v34 + 8))(v33, v35);
  }

  v45 = v0[7];
  v46 = v0[3];
  v47 = v0[4];
  v48 = sub_22634F66C();
  v49 = v47 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_customActionRegister;
  v0[16] = *(v47 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_customActionRegister);
  v50 = *(v49 + 8);
  swift_getObjectType();
  v0[17] = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  sub_22634F67C();
  v51 = *(v50 + 8);
  v53 = sub_2263505BC();
  if (v48)
  {
    v54 = sub_2262CE1C8;
  }

  else
  {
    v54 = sub_2262CE30C;
  }

  return MEMORY[0x2822009F8](v54, v53, v52);
}

uint64_t sub_2262CE1C8()
{
  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_226322848(v5 + v0[17], v2);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2262CE268, v5, 0);
}

uint64_t sub_2262CE268()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  v6 = v0[2];
  sub_22634F69C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2262CE30C()
{
  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_2263212D0(v5 + v0[17], v2);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2262D6838, v5, 0);
}

uint64_t sub_2262CE3AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22634FC7C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_22634FDFC() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_22634F7EC();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_22634F83C();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v14 = sub_22634FC4C();
  v3[15] = v14;
  v15 = *(v14 - 8);
  v3[16] = v15;
  v16 = *(v15 + 64) + 15;
  v3[17] = swift_task_alloc();
  v17 = sub_22634F60C();
  v3[18] = v17;
  v18 = *(v17 - 8);
  v3[19] = v18;
  v19 = *(v18 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v20 = sub_22635004C();
  v3[22] = v20;
  v21 = *(v20 - 8);
  v3[23] = v21;
  v22 = *(v21 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CE680, v2, 0);
}

uint64_t sub_2262CE680()
{
  v63 = v0;
  v1 = v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v2 = v0[25];
    v3 = v0[21];
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[3];
    v7 = v0[4];
    sub_22634FFEC();
    v8 = *(v5 + 16);
    v8(v3, v6, v4);

    v9 = sub_22635003C();
    v10 = sub_22635071C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[25];
    v13 = v0[22];
    v14 = v0[23];
    v15 = v0[21];
    if (v11)
    {
      v56 = v0[20];
      v57 = v8;
      v61 = v0[25];
      v17 = v0[18];
      v16 = v0[19];
      v59 = v10;
      v18 = v0[4];
      v60 = v0[22];
      v19 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62 = v58;
      *v19 = 136315650;
      v20 = *v18;
      v21 = sub_226350D6C();
      v23 = sub_226345004(v21, v22, &v62);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0xD00000000000002DLL, 0x8000000226356460, &v62);
      *(v19 + 22) = 2080;
      v57(v56, v15, v17);
      v24 = sub_2263504CC();
      v26 = v25;
      (*(v16 + 8))(v15, v17);
      v27 = sub_226345004(v24, v26, &v62);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_2262B6000, v9, v59, "%s.%s request = %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v58, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v14 + 8))(v61, v60);
    }

    else
    {
      v43 = v0[18];
      v44 = v0[19];

      (*(v44 + 8))(v15, v43);
      (*(v14 + 8))(v12, v13);
    }
  }

  else
  {
    v28 = v0[24];
    v29 = v0[4];
    sub_22634FFEC();

    v30 = sub_22635003C();
    v31 = sub_22635072C();

    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[23];
    v33 = v0[24];
    v35 = v0[22];
    if (v32)
    {
      v36 = v0[4];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v62 = v38;
      *v37 = 136315394;
      v39 = *v36;
      v40 = sub_226350D6C();
      v42 = sub_226345004(v40, v41, &v62);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_226345004(0xD00000000000002DLL, 0x8000000226356460, &v62);
      _os_log_impl(&dword_2262B6000, v30, v31, "%s.%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v37, -1, -1);
    }

    (*(v34 + 8))(v33, v35);
  }

  v45 = v0[11];
  v46 = v0[8];
  v47 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FF0, &qword_226351E90);
  v48 = *(sub_22634F51C() - 8);
  v49 = *(v48 + 72);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  *(swift_allocObject() + 16) = xmmword_226351C90;
  sub_22634F5EC();
  sub_22634F5FC();
  sub_22634F7BC();
  v51 = swift_task_alloc();
  v0[26] = v51;
  *v51 = v0;
  v51[1] = sub_2262CEBBC;
  v52 = v0[14];
  v53 = v0[11];
  v54 = v0[4];

  return sub_2262CEEE4(v52, v53);
}