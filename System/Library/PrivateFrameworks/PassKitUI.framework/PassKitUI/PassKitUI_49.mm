uint64_t sub_1BD561094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a5;
  v39 = a7;
  v35 = a6;
  v36 = a2;
  v37 = a4;
  v34[0] = a1;
  v41 = a8;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v10 = type metadata accessor for PaymentSheetContentContainer();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v34 - v13;
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  v15 = sub_1BE04EBD4();
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = v34 - v22;
  v34[1] = *(v10 + 76);
  (*(v11 + 16))(v14, a1, v10, v21);
  v24 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = v37;
  *(v25 + 2) = v36;
  *(v25 + 3) = a3;
  v28 = v38;
  v27 = v39;
  *(v25 + 4) = v26;
  *(v25 + 5) = v28;
  v29 = v35;
  *(v25 + 6) = v35;
  *(v25 + 7) = v27;
  (*(v11 + 32))(&v25[v24], v14, v10);
  v44 = v29;
  WitnessTable = swift_getWitnessTable();
  sub_1BD561470(sub_1BD563000, v25);

  v31 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v42 = WitnessTable;
  v43 = v31;
  swift_getWitnessTable();
  sub_1BD147308(v18);
  v32 = *(v40 + 8);
  v32(v18, v15);
  sub_1BD147308(v23);
  return (v32)(v23, v15);
}

uint64_t sub_1BD5613D0()
{
  type metadata accessor for PaymentSheetContentContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516B4();
  return sub_1BD560EB8();
}

uint64_t sub_1BD561470(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B70);
  sub_1BD0DE4F4(&qword_1EBD45B78, &qword_1EBD45B70);
  sub_1BE050834();
}

double sub_1BD561580(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = sub_1BE0534B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  v9 = 0.0;
  if ((sub_1BE051C54() & 1) == 0)
  {
    (*(v5 + 16))(v8, v1 + *(a1 + 76), v4);
    v10 = (*(*(v3 - 8) + 48))(v8, 1, v3);
    (*(v5 + 8))(v8, v4);
    if (v10 == 1)
    {
      return 0.0;
    }

    else
    {
      return 80.0;
    }
  }

  return v9;
}

uint64_t sub_1BD5616D0(uint64_t result, double a2, double a3)
{
  if (a3 != a2)
  {
    v3 = result;
    type metadata accessor for PaymentSheetContentContainer();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
    sub_1BE0516B4();
    if (a3 < a2)
    {
      if (!*(v3 + 8))
      {
        sub_1BE04CDA4();
        sub_1BD561ACC();
        result = sub_1BE04EEB4();
        __break(1u);
        return result;
      }

      sub_1BE048964();
      sub_1BE04CD44();
    }

    sub_1BE051D94();
    sub_1BE051D24();

    MEMORY[0x1EEE9AC00](v6, v7);
    sub_1BE04E7D4();
  }

  return result;
}

double sub_1BD56188C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, double a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = 0x4010000000000000;
  sub_1BE04CDA4();
  sub_1BD561ACC();
  *(a9 + 1) = sub_1BE04EEC4();
  *(a9 + 2) = v17;
  v18 = type metadata accessor for PaymentSheetContentContainer();
  (*(*(*&a6 - 8) + 32))(&a9[v18[18]], a1, COERCE_DOUBLE(*&a6));
  v19 = v18[19];
  v20 = sub_1BE0534B4();
  (*(*(v20 - 8) + 32))(&a9[v19], a2, v20);
  (*(*(a8 - 8) + 32))(&a9[v18[20]], a3, a8);
  *&a9[v18[21]] = a4;
  a9[v18[22]] = a5;
  v21 = &a9[v18[23]];
  sub_1BE051694();
  *v21 = a6;
  *(v21 + 1) = a7;
  v22 = &a9[v18[24]];
  sub_1BE051694();
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &a9[v18[25]];
  sub_1BE051694();
  *v23 = a6;
  *(v23 + 1) = a7;
  v24 = &a9[v18[26]];
  sub_1BE051694();
  result = a6;
  *v24 = a6;
  *(v24 + 1) = a7;
  return result;
}

unint64_t sub_1BD561ACC()
{
  result = qword_1EBD369D0;
  if (!qword_1EBD369D0)
  {
    sub_1BE04CDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD369D0);
  }

  return result;
}

void sub_1BD561B44()
{
  sub_1BD0EDFE4();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1BE0534B4();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1BD127BD0(319, &qword_1EBD3D040, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BD127BD0(319, &qword_1EBD4A850, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BD561C98(int *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v5 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v4 + 84);
  }

  v10 = a3[4];
  v11 = *(v10 - 8);
  v12 = *(v4 + 80);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v6 + 80);
  v15 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  if (v7)
  {
    v18 = *(*(a3[3] - 8) + 64);
  }

  else
  {
    v18 = *(*(a3[3] - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v18 + v15;
  if (v17 < a2)
  {
    v20 = ((((((((*(*(v10 - 8) + 64) + ((v19 + ((v13 + v14 + ((v12 + 24) & ~v12)) & ~v14)) & ~v15) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v21 = a2 - v17;
    v22 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v20);
        if (v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = *(a1 + v20);
        if (v26)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v25)
    {
      v26 = *(a1 + v20);
      if (v26)
      {
LABEL_32:
        v27 = v26 - 1;
        if (v22)
        {
          v27 = 0;
          v28 = *a1;
        }

        else
        {
          v28 = 0;
        }

        v31 = v17 + (v28 | v27);
        return (v31 + 1);
      }
    }
  }

  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v16 <= 0x7FFFFFFE)
  {
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    v31 = v30 - 1;
    if (v31 < 0)
    {
      v31 = -1;
    }

    return (v31 + 1);
  }

  v32 = (v29 + v12 + 16) & ~v12;
  if (v5 == v17)
  {
    v33 = *(v4 + 48);
    v34 = *(v4 + 84);
    v35 = a3[2];

    return v33(v32, v34, v35);
  }

  v37 = (v32 + v13 + v14) & ~v14;
  if (v8 != v17)
  {
    v33 = *(v11 + 48);
    v32 = (v19 + v37) & ~v15;
    v34 = *(v11 + 84);
    v35 = a3[4];

    return v33(v32, v34, v35);
  }

  if (v7 < 2)
  {
    return 0;
  }

  v38 = (*(v6 + 48))(v37);
  if (v38 >= 2)
  {
    return v38 - 1;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_1BD561FCC(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = a4[4];
  v13 = *(v12 - 8);
  v14 = *(v6 + 80);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(v13 + 80);
  if (v11 <= *(v13 + 84))
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v9)
  {
    v20 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v20 = *(*(a4[3] - 8) + 64) + 1;
  }

  v21 = v20 + v17;
  v22 = ((((((((*(*(v12 - 8) + 64) + ((v21 + ((v15 + v16 + ((v14 + 24) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 < a3)
  {
    v23 = a3 - v19;
    if (((((((((*(*(v12 - 8) + 64) + ((v21 + ((v15 + v16 + ((v14 + 24) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v5 = v25;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v19)
  {
    if (((((((((*(*(v12 - 8) + 64) + ((v21 + ((v15 + v16 + ((v14 + 24) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a2 - v19;
    }

    else
    {
      v26 = 1;
    }

    if (v22)
    {
      v27 = ~v19 + a2;
      v28 = result;
      bzero(result, v22);
      result = v28;
      *v28 = v27;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v22) = v26;
      }

      else
      {
        *(result + v22) = v26;
      }
    }

    else if (v5)
    {
      *(result + v22) = v26;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v22) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    }

    *(result + v22) = 0;
  }

  else if (v5)
  {
    *(result + v22) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return result;
  }

LABEL_46:
  v29 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v18 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFE)
    {
      *v29 = a2 - 0x7FFFFFFF;
      v29[1] = 0;
    }

    else
    {
      *v29 = a2;
    }

    return result;
  }

  v30 = (v29 + v14 + 16) & ~v14;
  if (v7 == v19)
  {
    v31 = *(v6 + 56);

    return v31(v30);
  }

  result = ((v30 + v15 + v16) & ~v16);
  if (v10 != v19)
  {
    v31 = *(v13 + 56);
    v30 = (result + v21) & ~v17;

    return v31(v30);
  }

  if (v9 >= 2)
  {
    v32 = *(v8 + 56);
    v33 = a2 + 1;

    return v32(result, v33);
  }

  return result;
}

unint64_t sub_1BD56243C()
{
  result = qword_1EBD366C8;
  if (!qword_1EBD366C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A878);
    sub_1BD5624C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD366C8);
  }

  return result;
}

unint64_t sub_1BD5624C0()
{
  result = qword_1EBD36728;
  if (!qword_1EBD36728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A880);
    sub_1BD56254C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36728);
  }

  return result;
}

unint64_t sub_1BD56254C()
{
  result = qword_1EBD36818;
  if (!qword_1EBD36818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A888);
    sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36818);
  }

  return result;
}

uint64_t sub_1BD562604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD562674(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD562710()
{
  result = qword_1EBD367C0;
  if (!qword_1EBD367C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A898);
    sub_1BD562674(&qword_1EBD367E0, &qword_1EBD4A8A0, &unk_1BE0E16B0, sub_1BD56254C);
    sub_1BD0DE4F4(&unk_1EBD36770, &qword_1EBD41708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367C0);
  }

  return result;
}

uint64_t sub_1BD562858@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for PaymentSheetContentContainer() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1BD561094(v10, v3, v4, v5, v6, v7, v8, a1);
}

uint64_t objectdestroyTm_57()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v8 = *(v0 + 32);
  v3 = type metadata accessor for PaymentSheetContentContainer();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 72) & ~*(*(v3 - 1) + 80));

  (*(*(v2 - 8) + 8))(v4 + v3[18], v2);
  v5 = v3[19];
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v1))
  {
    (*(v6 + 8))(v4 + v5, v1);
  }

  (*(*(v8 - 8) + 8))(v4 + v3[20]);

  return swift_deallocObject();
}

uint64_t sub_1BD562B28(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128), double a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = *(type metadata accessor for PaymentSheetContentContainer() - 8);
  v11.n128_u64[0] = v2[8];
  v12 = v2 + ((*(v10 + 80) + 72) & ~*(v10 + 80));
  v13.n128_f64[0] = a2;

  return a1(v12, v4, v5, v6, v7, v8, v9, v13, v11);
}

uint64_t sub_1BD562C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE04E684();
  v6 = v5;
  sub_1BE051404();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B80);
  sub_1BD4163BC();
  sub_1BD0F9764();
  sub_1BE051064();
}

uint64_t objectdestroy_5Tm_1()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v8 = *(v0 + 32);
  v3 = type metadata accessor for PaymentSheetContentContainer();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));

  (*(*(v2 - 8) + 8))(v4 + v3[18], v2);
  v5 = v3[19];
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v1))
  {
    (*(v6 + 8))(v4 + v5, v1);
  }

  (*(*(v8 - 8) + 8))(v4 + v3[20]);

  return swift_deallocObject();
}

uint64_t sub_1BD563000()
{
  type metadata accessor for PaymentSheetContentContainer();

  return sub_1BD5613D0();
}

unint64_t sub_1BD5630D0()
{
  result = qword_1EBD4A8A8;
  if (!qword_1EBD4A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A8A8);
  }

  return result;
}

unint64_t sub_1BD563128()
{
  result = qword_1EBD4A8B0;
  if (!qword_1EBD4A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A8B0);
  }

  return result;
}

uint64_t sub_1BD563200()
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
  __swift_allocate_value_buffer(v9, qword_1EBDAB290);
  __swift_project_value_buffer(v9, qword_1EBDAB290);
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

uint64_t sub_1BD563418(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1BE048834();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = sub_1BE04A3B4();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5635D4, 0, 0);
}

uint64_t sub_1BD5635D4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v4 = sub_1BE052434();
  MEMORY[0x1BFB37400](v4);
  sub_1BE04A364();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    sub_1BD226BBC(v0[6]);
    sub_1BE0484F4();
    sub_1BD563A34(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v9 = v0[12];
    v10 = v0[10];
    v18 = v0[11];
    v19 = v0[13];
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[7];
    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[3];
    (*(v11 + 32))(v10);
    (*(v11 + 16))(v12, v10, v13);
    sub_1BE048844();
    sub_1BD563A34(&qword_1EBD4A8B8, MEMORY[0x1E695A0D8]);
    sub_1BE048734();
    (*(v15 + 8))(v14, v16);
    (*(v11 + 8))(v10, v13);
    (*(v9 + 8))(v19, v18);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BD5638A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36C98 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB290);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD563950(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD563418(a1);
}

uint64_t sub_1BD5639E8(uint64_t a1)
{
  v2 = sub_1BD15D248();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD563A34(unint64_t *a1, void (*a2)(uint64_t))
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

char *ApplePayUserEducationDemoViewController.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1BD5672A4(a1, v2, ObjectType, a2);
}

char *ApplePayUserEducationDemoViewController.init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1BD5672FC(a1, v2, ObjectType, a2);
}

void sub_1BD563B1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage];

    if (v1 == 1)
    {
      swift_beginAccess();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;
        v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage);
        v3[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 2;
        sub_1BD564A24(v4);
      }
    }
  }
}

id ApplePayUserEducationDemoViewController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer];
  v2 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver;
  v3 = *&v1[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver];
  v4 = v1;
  if (v3)
  {
    [v3 invalidate];
  }

  *&v1[v2] = 0;

  swift_unknownObjectRelease();
  v5 = *&v0[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView];
  if (v5)
  {
    [v5 setAnimating_];
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1BD563D58()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ApplePayUserEducationDemoViewController();
  v33.receiver = v1;
  v33.super_class = v7;
  objc_msgSendSuper2(&v33, sel_loadView);
  v8 = [objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoStackView()) init];
  v9 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView;
  v10 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView];
  *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView] = v8;
  v11 = v8;

  if (v11)
  {
    *&v11[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_delegate + 8] = &off_1F3BAD970;
    swift_unknownObjectWeakAssign();
  }

  v12 = *&v1[v9];
  if (v12)
  {
    [v12 setAlpha_];
    v13 = *&v1[v9];
    if (v13)
    {
      [v13 setHidden_];
    }
  }

  v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility] = 0;
  v14 = [objc_allocWithZone(MEMORY[0x1E69AD308]) initWithStyle_];
  v15 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView;
  v16 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView];
  *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView] = v14;
  v17 = v14;

  if (v17)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69B80B8], v2);
    v18 = PKPassKitBundle();
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = v18;
    sub_1BE04B6F4();

    (*(v3 + 8))(v6, v2);
    v20 = sub_1BE052404();

    [v17 setInstruction_];
  }

  v21 = [objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController.SpringBoardBlurView()) init];
  v22 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView;
  v23 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView];
  *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView] = v21;

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController.HeaderInstructionView());
  v26 = sub_1BD567608(sub_1BD5674C0, v24);

  v27 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView;
  v28 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView];
  *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView] = v26;

  v29 = [v1 view];
  if (v29)
  {
    v30 = v29;
    if (*&v1[v22])
    {
      [v29 addSubview_];
    }

    if (*&v1[v15])
    {
      [v30 addSubview_];
    }

    if (*&v1[v9])
    {
      [v30 addSubview_];
    }

    v31 = *&v1[v27];
    if (v31)
    {
      v32 = v31;
      [v30 addSubview_];
    }
  }
}

void sub_1BD5640E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer);
    v3 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver;
    v4 = *&v2[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver];
    v5 = v2;
    if (v4)
    {
      [v4 invalidate];
    }

    *&v2[v3] = 0;

    swift_unknownObjectRelease();
    v6 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView];
    if (v6)
    {
      [v6 setAnimating_];
    }

    v7 = v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage];
    v8 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
      v10 = v8;
      v11 = [v9 userEducationDemoController];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = v11;
        v14 = [v11 state];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
      v12 = 1;
    }

    v15 = sub_1BD5674EC(v7, v14, v12);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = sub_1BE052434();
      v21 = v20;
      v22 = sub_1BE052434();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v26 = *MEMORY[0x1E69BABE8];
      *(inited + 32) = *MEMORY[0x1E69BABE8];
      *(inited + 40) = v17;
      *(inited + 48) = v18;
      v27 = *MEMORY[0x1E69BA680];
      *(inited + 56) = *MEMORY[0x1E69BA680];
      *(inited + 64) = v19;
      *(inited + 72) = v21;
      v28 = v26;
      v29 = v27;
      v30 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      v31 = *MEMORY[0x1E69BA440];
      sub_1BE048C84();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAE70(v22, v24, v31, isUniquelyReferenced_nonNull_native);

      v33 = objc_opt_self();
      v34 = *MEMORY[0x1E69BB6B0];
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
      v35 = sub_1BE052224();

      [v33 subject:v34 sendEvent:{v35, v30}];
    }

    v36 = &v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 1);
      ObjectType = swift_getObjectType();
      (*(v37 + 8))(ObjectType, v37);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD5644AC()
{
  v28 = *MEMORY[0x1E69E9840];
  v27.receiver = v0;
  v27.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  objc_msgSendSuper2(&v27, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v0[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView];
  if (v11)
  {
    [v11 setFrame_];
  }

  [*&v0[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView] updateFrame];
  v12 = *&v0[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView];
  if (v12)
  {
    v13 = *&v0[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView];
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v15 sizeThatFits_];
      v17 = v16;
      v18 = [v0 view];
      if (v18)
      {
        v19 = v18;
        [v18 safeAreaInsets];
        v21 = v20;

        memset(&slice, 0, sizeof(slice));
        memset(&v25, 0, sizeof(v25));
        v29.origin.x = v4;
        v29.origin.y = v6;
        v29.size.width = v8;
        v29.size.height = v10;
        CGRectDivide(v29, &slice, &v25, v17 + v21, CGRectMinYEdge);
        origin = v25.origin;
        size = v25.size;
        [v15 setFrame_];
        v24 = v14;
        [v24 setFrame_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BD564780(char a1)
{
  v26.receiver = v1;
  v26.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  objc_msgSendSuper2(&v26, sel_viewDidDisappear_, a1 & 1);
  v3 = v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage];
  v4 = *&v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView];
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
    v6 = v4;
    v7 = [v5 userEducationDemoController];
    v8 = v7 == 0;
    if (v7)
    {
      v9 = v7;
      v10 = [v7 state];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v8 = 1;
  }

  v11 = sub_1BD5674EC(v3, v10, v8);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = sub_1BE052434();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v19 = *MEMORY[0x1E69BABE8];
    *(inited + 32) = *MEMORY[0x1E69BABE8];
    *(inited + 40) = v13;
    *(inited + 48) = v14;
    v20 = *MEMORY[0x1E69BA680];
    *(inited + 56) = *MEMORY[0x1E69BA680];
    *(inited + 64) = v15;
    *(inited + 72) = v17;
    v21 = v19;
    v22 = v20;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    v23 = objc_opt_self();
    v24 = *MEMORY[0x1E69BB6B0];
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
    v25 = sub_1BE052224();

    [v23 subject:v24 sendEvent:v25];
  }
}

void sub_1BD564A24(uint64_t a1)
{
  v2 = v1;
  v66 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage;
  if (!*(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage))
  {
    v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView);
    if (v8)
    {
      [v8 setAnimating_];
    }

    v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView);
    if (v9)
    {
      v10 = v9;
      sub_1BD566DD4(0, 1);
    }

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    v7 = sub_1BD5681B4;
    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage) == 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView);
    if (v4)
    {
      v5 = v4;
      sub_1BD566DD4(1, 1);
    }

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    v7 = sub_1BD5681AC;
LABEL_11:
    sub_1BD5650CC(0, v7, v6);

    goto LABEL_17;
  }

  v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView);
  if (v11)
  {
    [v11 setAnimating_];
  }

  v12 = *(v1 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView);
  if (v12)
  {
    v13 = v12;
    sub_1BD566DD4(2, 1);
  }

  sub_1BD5650CC(1, 0, 0);
LABEL_17:
  v14 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView;
  v15 = *(v2 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
  if (v15)
  {
    v16 = *&v15[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
    v17 = v15;
    v18 = [v16 userEducationDemoController];
    v19 = v18 == 0;
    if (v18)
    {
      v20 = v18;
      v21 = [v18 state];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v19 = 1;
  }

  v22 = sub_1BD5674EC(a1, v21, v19);
  v24 = MEMORY[0x1E69BABE8];
  v25 = MEMORY[0x1E69BA680];
  v26 = MEMORY[0x1E69BB6B0];
  v27 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
  if (v23)
  {
    v28 = v22;
    v29 = v23;
    v30 = sub_1BE052434();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v34 = *MEMORY[0x1E69BABE8];
    *(inited + 32) = *MEMORY[0x1E69BABE8];
    *(inited + 40) = v28;
    *(inited + 48) = v29;
    v35 = *MEMORY[0x1E69BA680];
    *(inited + 56) = *MEMORY[0x1E69BA680];
    *(inited + 64) = v30;
    *(inited + 72) = v32;
    v36 = v34;
    v37 = v35;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    v27 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
    v26 = MEMORY[0x1E69BB6B0];
    swift_arrayDestroy();
    v38 = objc_opt_self();
    v39 = *v26;
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
    v40 = sub_1BE052224();

    [v38 subject:v39 sendEvent:v40];

    v25 = MEMORY[0x1E69BA680];
    v24 = MEMORY[0x1E69BABE8];
  }

  v41 = v24;
  v42 = *(v2 + v66);
  v43 = *(v2 + v14);
  if (v43)
  {
    v44 = *&v43[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
    v45 = v43;
    v46 = [v44 userEducationDemoController];
    v47 = v46 == 0;
    v48 = v25;
    if (v46)
    {
      v49 = v46;
      v50 = [v46 state];
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v50 = 0;
    v47 = 1;
    v48 = v25;
  }

  v51 = sub_1BD5674EC(v42, v50, v47);
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    v55 = sub_1BE052434();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_1BE0B6CA0;
    v59 = *v41;
    *(v58 + 32) = *v41;
    *(v58 + 40) = v53;
    *(v58 + 48) = v54;
    v60 = *v48;
    *(v58 + 56) = *v48;
    *(v58 + 64) = v55;
    *(v58 + 72) = v57;
    v61 = v59;
    v62 = v60;
    sub_1BD1AAF50(v58);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    v63 = objc_opt_self();
    v64 = *v26;
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
    v65 = sub_1BE052224();

    [v63 v27[128]];
  }
}

void sub_1BD564FDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage);
    v1[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 1;
    sub_1BD564A24(v2);
  }
}

void sub_1BD565044()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setAnimating_];
    }
  }
}

void sub_1BD5650CC(char a1, void (*a2)(void), uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility) == (a1 & 1))
  {
    if (a2)
    {
      a2();
    }
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility) = a1 & 1;
    if (a1)
    {
      v7 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
      if (v7)
      {
        [v7 setHidden_];
      }

      v8 = objc_opt_self();
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = sub_1BD568184;
      v24 = v9;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1BD126964;
      v22 = &block_descriptor_81_0;
      v10 = _Block_copy(&v19);

      v11 = swift_allocObject();
      *(v11 + 16) = a2;
      *(v11 + 24) = a3;
      v23 = sub_1BD3B690C;
      v24 = v11;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v12 = &block_descriptor_87_1;
    }

    else
    {
      v8 = objc_opt_self();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = sub_1BD568158;
      v24 = v13;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1BD126964;
      v22 = &block_descriptor_70_0;
      v10 = _Block_copy(&v19);

      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = a2;
      v15[4] = a3;
      v23 = sub_1BD568178;
      v24 = v15;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v12 = &block_descriptor_77;
    }

    v21 = sub_1BD976224;
    v22 = v12;
    v16 = _Block_copy(&v19);
    sub_1BD0D44B8(a2);

    [v8 animateWithDuration:v10 animations:v16 completion:{0.5, v19, v20}];
    _Block_release(v16);
    _Block_release(v10);
    v17 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
    if (v17)
    {
      v18 = v17;
      sub_1BD2B5ABC(a1 & 1);
    }
  }
}

void sub_1BD565410(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      [v5 setAlpha_];
    }
  }
}

void sub_1BD5654A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      [v7 setHidden_];
    }
  }

  if (a3)
  {
    a3();
  }
}

id ApplePayUserEducationDemoViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void sub_1BD565620(unint64_t a1, unint64_t a2)
{
  v5 = sub_1BE04AF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage) == 2)
  {
    v11 = sub_1BD5674EC(2, a2, 0);
    v46 = a1;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = sub_1BE052434();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v19 = *MEMORY[0x1E69BABE8];
      v45 = v6;
      *(inited + 32) = v19;
      *(inited + 40) = v13;
      *(inited + 48) = v14;
      v20 = *MEMORY[0x1E69BA680];
      *(inited + 56) = *MEMORY[0x1E69BA680];
      *(inited + 64) = v15;
      *(inited + 72) = v17;
      v21 = v19;
      v22 = v20;
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      v6 = v45;
      swift_arrayDestroy();
      v23 = objc_opt_self();
      v24 = *MEMORY[0x1E69BB6B0];
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
      v25 = sub_1BE052224();

      v26 = v24;
      a1 = v46;
      [v23 subject:v26 sendEvent:v25];
    }

    v27 = sub_1BD5674EC(*(v2 + v10), a1, 0);
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      v31 = sub_1BE052434();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_1BE0B6CA0;
      v35 = *MEMORY[0x1E69BABE8];
      *(v34 + 32) = *MEMORY[0x1E69BABE8];
      *(v34 + 40) = v29;
      *(v34 + 48) = v30;
      v36 = *MEMORY[0x1E69BA680];
      *(v34 + 56) = *MEMORY[0x1E69BA680];
      *(v34 + 64) = v31;
      *(v34 + 72) = v33;
      v37 = v35;
      v38 = v36;
      sub_1BD1AAF50(v34);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      v39 = objc_opt_self();
      v40 = *MEMORY[0x1E69BB6B0];
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD5680EC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
      v41 = sub_1BE052224();

      [v39 subject:v40 sendEvent:v41];

      a1 = v46;
    }
  }

  if (a1 == 2)
  {
    sub_1BE04AF54();
    v42 = sub_1BE04AE64();
    (*(v6 + 8))(v9, v5);
    PKSetApplePayUserEducationDemoLastCompletedDate();

    v43 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    [v43 scheduleApplePayDemoActivitySignal];
  }
}

char *sub_1BD565A58()
{
  *&v0[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver] = 0;
  v1 = &v0[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  v2 = type metadata accessor for ApplePayUserEducationDemoViewController.LockButtonConsumer();
  *v1 = 0;
  *(v1 + 1) = 0;
  v9.receiver = v0;
  v9.super_class = v2;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedInstance];
  v7 = [v6 beginConsumingPressesForButtonKind:2 eventConsumer:v5 priority:0];

  *&v5[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_lockButtonObserver] = v7;
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1BD565C48@<X0>(uint64_t a1@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04A604();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], a2);
  sub_1BD1EB2D0();
  return sub_1BE04A614();
}

double sub_1BD565D58(char a1, double a2, double a3, double a4, double a5)
{
  v39 = *MEMORY[0x1E69E9840];
  [v5 safeAreaInsets];
  v12 = PKEdgeInsetsInsetRectTm(a2, a3, a4, a5, v11, 16.0);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *&v5[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_endDemoButton];
  [v19 sizeThatFits_];
  v21 = v20;
  v23 = v22;
  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  CGRectDivide(v40, &slice, &v37, v21, CGRectMaxXEdge);
  v41 = slice;
  origin = v37.origin;
  size = v37.size;
  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  CGRectDivide(v41, &slice, &v37, v23, CGRectMinYEdge);
  if ((a1 & 1) == 0)
  {
    [v19 setFrame_];
  }

  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  v42.origin = origin;
  v42.size = size;
  CGRectDivide(v42, &slice, &v37, 20.0, CGRectMaxXEdge);
  v26 = v37.origin;
  v27 = v37.size;
  v28 = *&v5[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_titleLabel];
  [v28 sizeThatFits_];
  v30 = v29;
  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  v43.origin = v26;
  v43.size = v27;
  CGRectDivide(v43, &slice, &v37, v30, CGRectMinYEdge);
  v31 = v37.origin;
  v32 = v37.size;
  if ((a1 & 1) == 0)
  {
    [v28 setFrame_];
  }

  v33 = *&v5[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_subtitleLabel];
  [v33 sizeThatFits_];
  v35 = v34;
  memset(&slice, 0, sizeof(slice));
  memset(&v37, 0, sizeof(v37));
  v44.origin = v31;
  v44.size = v32;
  CGRectDivide(v44, &slice, &v37, v35, CGRectMinYEdge);
  if ((a1 & 1) == 0)
  {
    [v33 setFrame_];
  }

  return a4;
}

char *sub_1BD566180()
{
  v0[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_previousFilterLevel] = 0;
  v1 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_wallpaperView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v2 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView;
  *&v0[v2] = [objc_allocWithZone(PKBackdropView) init];
  v25.receiver = v0;
  v25.super_class = type metadata accessor for ApplePayUserEducationDemoViewController.SpringBoardBlurView();
  v3 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = *MEMORY[0x1E6979928];
  v5 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v6 = v3;
  v7 = [v5 initWithType_];
  v8 = sub_1BE052404();
  [v7 setName_];

  v9 = sub_1BE052824();
  v10 = sub_1BE052404();
  [v7 setValue:v9 forKeyPath:v10];

  v11 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v12 = sub_1BE052404();
  [v11 setName_];

  v13 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v14 = sub_1BE052404();
  [v13 setName_];

  v15 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView;
  v16 = [*&v6[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView] backdropLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B98D0;
  v18 = sub_1BD0E5E8C(0, &qword_1EBD4A9E0);
  *(v17 + 32) = v7;
  *(v17 + 56) = v18;
  *(v17 + 64) = v13;
  *(v17 + 120) = v18;
  *(v17 + 88) = v18;
  *(v17 + 96) = v11;
  v19 = v16;
  v20 = v7;
  v21 = v13;
  v22 = v11;
  v23 = sub_1BE052724();

  [v19 setFilters_];

  [v6 addSubview_];
  [v6 addSubview_];
  sub_1BD566DD4(0, 0);
  sub_1BD566674();

  return v6;
}

uint64_t sub_1BD566674()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE051FA4();
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  (*(v10 + 104))(v13, *MEMORY[0x1E69E7F88], v9);
  v14 = sub_1BE052D84();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD5680E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_122;
  v16 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE051F74();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1BD5680EC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v8, v4, v16);
  _Block_release(v16);

  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v19);
}

uint64_t sub_1BD566A0C()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = PKUIGetMinScreenWidthType();
    PKUIScreenWidthTypeGetWidth(v12);
    v13 = SBSUIWallpaperGetPreview();
    v23 = v6;
    v14 = v13;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v15 = sub_1BE052D54();
    v22 = v5;
    v16 = v15;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v14;
    aBlock[4] = sub_1BD568150;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_66_1;
    v19 = _Block_copy(aBlock);
    v20 = v14;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD5680EC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v9, v4, v19);
    _Block_release(v19);

    (*(v1 + 8))(v4, v0);
    return (*(v23 + 8))(v9, v22);
  }

  return result;
}

void sub_1BD566D4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_wallpaperView);

    [v5 setImage_];
  }
}

void sub_1BD566DD4(char a1, char a2)
{
  Tracker = PKCATrackedLayoutGetTracker();
  v6 = [*(v2 + OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_backdropView) backdropLayer];
  v7 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_previousFilterLevel;
  v8 = dbl_1BE0E19E0[a1];
  if (a2)
  {
    v9 = dbl_1BE0E19E0[*(v2 + OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F19SpringBoardBlurView_previousFilterLevel)];
    v10 = [objc_opt_self() createDefaultFactory];
    v11 = sub_1BE052404();
    v12 = [v10 springAnimationWithKeyPath_];

    [v12 pkui:v9 updateForAdditiveAnimationFromScalar:v8 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }

    v13 = v12;
  }

  v14 = sub_1BE04C564();
  v15 = sub_1BE052404();
  [v6 setValue:v14 forKeyPath:v15];

  v16 = dbl_1BE0E19F8[a1];
  if (a2)
  {
    v17 = dbl_1BE0E19F8[*(v2 + v7)];
    v18 = [objc_opt_self() createDefaultFactory];
    v19 = sub_1BE052404();
    v20 = [v18 springAnimationWithKeyPath_];

    [v20 pkui:v17 updateForAdditiveAnimationFromScalar:v16 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }

    v21 = v20;
  }

  v22 = sub_1BE04C564();
  v23 = sub_1BE052404();
  [v6 setValue:v22 forKeyPath:v23];

  v24 = dbl_1BE0E1A10[a1];
  if (a2)
  {
    v25 = dbl_1BE0E1A10[*(v2 + v7)];
    v26 = [objc_opt_self() createDefaultFactory];
    v27 = sub_1BE052404();
    v28 = [v26 springAnimationWithKeyPath_];

    [v28 pkui:v25 updateForAdditiveAnimationFromScalar:v24 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }

    v29 = v28;
  }

  v30 = sub_1BE04C564();
  v31 = sub_1BE052404();
  [v6 setValue:v30 forKeyPath:v31];

  *(v2 + v7) = a1;
}

id sub_1BD567218(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1BD5672A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController());

  return sub_1BD5672FC(a1, v7, a3, a4);
}

char *sub_1BD5672FC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_delegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView] = 0;
  *(v6 + 8) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 0;
  a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility] = 1;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer] = [objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController.LockButtonConsumer()) init];
  v14.receiver = a2;
  v14.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  v7 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  v8 = *&v7[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = &v8[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  v11 = *&v8[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  *v10 = sub_1BD1F1EFC;
  v10[1] = v9;
  v12 = v8;
  sub_1BE048964();
  sub_1BD0D4744(v11);

  return v7;
}

uint64_t sub_1BD5674EC(uint64_t result, unint64_t a2, char a3)
{
  if (!result)
  {
    return result;
  }

  if (result == 1 || (a3 & 1) != 0 || a2 <= 3)
  {
    return sub_1BE052434();
  }

  return 0;
}

void sub_1BD567564()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView) = 0;
  sub_1BE053994();
  __break(1u);
}

char *sub_1BD567608(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v85 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44678);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v83 = &v75 - v5;
  v6 = sub_1BE053204();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v79 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE053104();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v76 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE053274();
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v82 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v86 = &v75 - v17;
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v89 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v75 - v28;
  v30 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v31 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_titleLabel;
  v95 = v2;
  *&v2[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_titleLabel] = v30;
  v32 = v19;
  v33 = v19 + 104;
  v34 = *(v19 + 104);
  v94 = *MEMORY[0x1E69B80D8];
  v35 = v18;
  v90 = v33;
  v93 = v34;
  v34(v29);
  v36 = v30;
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v38 = result;
  v39 = *MEMORY[0x1E69DDC40];
  sub_1BE04B6F4();

  v40 = *(v32 + 8);
  v75 = v32 + 8;
  v91 = v40;
  v40(v29, v18);
  v41 = v18;
  v42 = sub_1BE052404();

  [v36 setText_];

  v43 = v95;
  v44 = *&v95[v31];
  v45 = objc_opt_self();
  v46 = v44;
  v92 = v45;
  v47 = [v45 systemWhiteColor];
  [v46 setTextColor_];

  v48 = *MEMORY[0x1E69DDD40];
  v49 = *&v43[v31];
  v50 = PKFontForDefaultDesign(v48, v39);
  [v49 setFont_];

  [*&v43[v31] setNumberOfLines_];
  v51 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v52 = OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_subtitleLabel;
  *&v43[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_subtitleLabel] = v51;
  v93(v25, v94, v35);
  v53 = v51;
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v54 = result;
  sub_1BE04B6F4();

  v91(v25, v41);
  v55 = sub_1BE052404();

  [v53 setText_];

  v56 = v95;
  v57 = *&v95[v52];
  v58 = [v92 systemWhiteColor];
  [v57 setTextColor_];

  v59 = *MEMORY[0x1E69DDD28];
  v60 = *&v56[v52];
  v61 = PKFontForDefaultDesign(v59, v39);
  [v60 setFont_];

  [*&v56[v52] setNumberOfLines_];
  v62 = v89;
  v93(v89, v94, v41);
  result = PKPassKitBundle();
  if (result)
  {
    v63 = result;
    sub_1BE04B6F4();

    v91(v62, v41);
    v64 = v86;
    sub_1BE053134();
    (*(v77 + 104))(v76, *MEMORY[0x1E69DC508], v78);
    sub_1BE053124();
    (*(v80 + 104))(v79, *MEMORY[0x1E69DC568], v81);
    sub_1BE0530F4();
    sub_1BE048C84();
    sub_1BE053234();
    *(swift_allocObject() + 16) = v39;
    v65 = v39;
    v66 = v83;
    sub_1BE04D3D4();
    v67 = sub_1BE04D3C4();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    sub_1BE0531F4();
    sub_1BD0E5E8C(0, &qword_1EBD4A9F0);
    v69 = v87;
    v68 = v88;
    (*(v87 + 16))(v82, v64, v88);
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
    sub_1BE048964();
    sub_1BE0530B4();
    v70 = sub_1BE053284();
    v71 = v95;
    *&v95[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F21HeaderInstructionView_endDemoButton] = v70;
    v72 = type metadata accessor for ApplePayUserEducationDemoViewController.HeaderInstructionView();
    v96.receiver = v71;
    v96.super_class = v72;
    v73 = objc_msgSendSuper2(&v96, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v74 = [v92 systemBlueColor];
    [v73 setBackgroundColor_];

    [v73 setOverrideUserInterfaceStyle_];
    [v73 addSubview_];
    [v73 addSubview_];
    [v73 addSubview_];

    (*(v69 + 8))(v64, v68);
    return v73;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1BD568038()
{
  result = qword_1EBD4A9C8;
  if (!qword_1EBD4A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A9C8);
  }

  return result;
}

unint64_t sub_1BD568090()
{
  result = qword_1EBD4A9D0;
  if (!qword_1EBD4A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A9D0);
  }

  return result;
}

uint64_t sub_1BD5680EC(unint64_t *a1, void (*a2)(uint64_t))
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

double PKUIScreenWidthTypeGetWidth(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 0xE)
  {
    return dbl_1BE0E1A28[a1];
  }

  return result;
}

uint64_t sub_1BD5681EC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD56826C(unsigned __int8 *a1, void **a2)
{
  v2 = *a2;
  sub_1BD5686CC(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

id sub_1BD5682E4(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  v22 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v29 - v21;
  v24 = *MEMORY[0x1E69B80E0];
  v25 = *(v3 + 104);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v25(v18, v24, v2, v22);
      result = PKPassKitBundle();
      if (result)
      {
        v27 = result;
        v28 = sub_1BE04B6F4();
        v23 = v18;
        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      if (a1 != 3)
      {
        v25(v6, v24, v2, v22);
        result = PKPassKitBundle();
        if (result)
        {
          v27 = result;
          v28 = sub_1BE04B6F4();
          v23 = v6;
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v25(v10, v24, v2, v22);
      result = PKPassKitBundle();
      if (result)
      {
        v27 = result;
        v28 = sub_1BE04B6F4();
        v23 = v10;
LABEL_15:

        (*(v3 + 8))(v23, v2);
        return v28;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a1)
  {
    v25(&v29 - v21, v24, v2, v22);
    result = PKPassKitBundle();
    if (result)
    {
      v27 = result;
      v28 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v25(v14, v24, v2, v22);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v23 = v14;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_1BD5686A0@<X0>(void *a1@<X8>)
{
  result = sub_1BD5682E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1BD5686CC(unsigned __int8 a1)
{
  v2 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (LOBYTE(v10[0]) != v2)
  {
    if (v2 <= 1)
    {
      if (!v2)
      {
        v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
        [v5 filterTypes_];
LABEL_12:
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10[4] = sub_1BD56AC60;
        v10[5] = v8;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 1107296256;
        v10[2] = sub_1BD56AD40;
        v10[3] = &block_descriptor_73;
        v9 = _Block_copy(v10);

        [v5 reloadTransactionsWithCompletion_];
        _Block_release(v9);
        return;
      }

      v4 = 9;
    }

    else
    {
      v3 = 11;
      if (v2 != 3)
      {
        v3 = 5;
      }

      if (v2 == 2)
      {
        v4 = 6;
      }

      else
      {
        v4 = v3;
      }
    }

    v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BE0B7020;
    *(v6 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    v7 = sub_1BE052724();

    [v5 filterTypes_];

    goto LABEL_12;
  }
}

uint64_t sub_1BD5688F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD56896C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BE048C84();
    sub_1BD568A84();

    sub_1BD568E5C();
  }
}

void *sub_1BD568A84()
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  v1 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v2);
  v5 = &v31 - v4;
  v42 = MEMORY[0x1E69E7CC0];
  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v27;
    v30 = v0;
    return sub_1BE04D8C4();
  }

  v28 = v3;
  v29 = sub_1BE053704();
  v3 = v28;
  v6 = v29;
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_3:
  v7 = v3;
  result = objc_opt_self();
  v38 = result;
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = *&v0[OBJC_IVAR____TtC9PassKitUI15TransactionList_source];
    v34 = *&v0[OBJC_IVAR____TtC9PassKitUI15TransactionList_account];
    v35 = v10;
    v11 = *&v0[OBJC_IVAR____TtC9PassKitUI15TransactionList_iconGenerator];
    v12 = v7;
    v32 = v0;
    v33 = v7 & 0xC000000000000001;
    v13 = (v1 + 32);
    v36 = v6;
    v37 = v7;
    do
    {
      if (v33)
      {
        v14 = MEMORY[0x1BFB40900](v9, v12);
      }

      else
      {
        v14 = *(v12 + 8 * v9 + 32);
      }

      v15 = v14;
      v16 = [v38 presentationInformationForTransaction:v14 transactionSource:v35 secondaryTransactionSource:0 familyMember:0 account:v34 deviceName:0 context:0];
      type metadata accessor for TransactionPresentation();
      v17 = swift_allocObject();
      v18 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
      v41 = 0;
      v19 = v15;
      v20 = v16;
      v21 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00);
      sub_1BE04D874();
      (*v13)(v17 + v18, v5, v39);
      v22 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator;
      *(v17 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) = v19;
      *(v17 + v22) = v11;
      swift_beginAccess();
      v40 = v20;
      sub_1BD0E5E8C(0, &qword_1EBD407E0);
      v23 = v19;
      v24 = v20;
      v25 = v21;
      sub_1BE04D874();
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      v41 = 0;
      sub_1BE048964();
      sub_1BE04D8C4();

      v26 = sub_1BE048964();
      MEMORY[0x1BFB3F7A0](v26);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      ++v9;
      sub_1BE0527C4();

      v12 = v37;
    }

    while (v36 != v9);
    v27 = v42;
    v0 = v32;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1BD568E5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (aBlock[0] >> 62)
  {
LABEL_25:
    v1 = sub_1BE053704();
  }

  else
  {
    v1 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 > 9)
  {
    goto LABEL_22;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (aBlock[0] >> 62)
  {
    v2 = sub_1BE053704();
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_27:

    return;
  }

  v2 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = 0;
  v16 = OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher;
  while (1)
  {
    if ((aBlock[0] & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB40900](v4, aBlock[0]);
    }

    else
    {
      v6 = *(aBlock[0] + 8 * v4 + 32);
      sub_1BE048964();
    }

    v7 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
    if ([*(v6 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) transactionType] == 9)
    {
      break;
    }

    v5 = __OFADD__(v3++, 1);
    if (v5)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_9:
    if (v2 == ++v4)
    {
      goto LABEL_21;
    }
  }

  v8 = *&v0[v16];
  v9 = [*(v6 + v7) identifier];
  v10 = [v8 cashbackGroupForTransactionWithIdentifier:v9 cashbackTransactionSourceCollection:0];

  if (v10)
  {
    v11 = [v10 transactionCount];

    v5 = __OFADD__(v3, v11);
    v3 += v11;
    if (v5)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  v5 = __OFADD__(v3++, 1);
  if (!v5)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_21:

  if (v3 < 10)
  {
    return;
  }

LABEL_22:
  v12 = *&v0[OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher];
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  aBlock[4] = sub_1BD56AACC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD967884;
  aBlock[3] = &block_descriptor_43_1;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  [v12 transactionCountByPeriod:4 withCompletion:v14];
  _Block_release(v14);
}

uint64_t sub_1BD5691A0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = a1;
  v10 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v15 = result;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v15 >> 62)
  {
    v28 = result;
    v16 = sub_1BE053704();
    result = v28;
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v4;
  v33 = v3;
  v30 = v10;
  v31 = v8;
  if (!v16)
  {
    sub_1BE048C84();
    v22 = MEMORY[0x1E69E7CC0];
LABEL_17:

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v23 = sub_1BE052D54();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v22;
    aBlock[4] = sub_1BD56AAD4;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_50_2;
    v26 = _Block_copy(aBlock);

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD56AADC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v27 = v33;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v14, v7, v26);
    _Block_release(v26);

    (*(v32 + 8))(v7, v27);
    return (*(v30 + 8))(v14, v31);
  }

  if (v16 >= 1)
  {
    sub_1BE048C84();
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFB40900](v17, v15);
      }

      else
      {
        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      type metadata accessor for TransactionGroupPresentation();
      swift_allocObject();
      v20 = v19;
      sub_1BD2B0580(v20);

      v21 = sub_1BE048964();
      MEMORY[0x1BFB3F7A0](v21);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      ++v17;
      sub_1BE0527C4();
    }

    while (v16 != v17);
    v22 = v35;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD5695FC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048C84();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD56970C()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v55 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v53 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1BE051FA4();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v5);
  v51 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051F44();
  v50 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = (v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (v42 - v13);
  v15 = sub_1BE051FC4();
  v48 = *(v15 - 8);
  v49 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v42 - v21;
  v23 = sub_1BE052DC4();
  result = MEMORY[0x1EEE9AC00](v23, v24);
  v28 = v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState) != 2)
  {
    v29 = OBJC_IVAR____TtC9PassKitUI15TransactionList_timer;
    if (*(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_timer))
    {
      if ((*(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState) & 0x100) == 0)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1BE052E04();
        swift_unknownObjectRelease();
        *(v1 + v29) = 0;

        return swift_unknownObjectRelease();
      }
    }

    else if ((*(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState) & 0x100) != 0)
    {
      ObjectType = v26;
      v44 = sub_1BD0E5E8C(0, &unk_1EBD39A90);
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v46 = v2;
      v47 = v1;
      v43 = sub_1BE052D54();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v42[1] = sub_1BD56AADC(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0);
      sub_1BD0DE4F4(&qword_1EBD3F6B0, &unk_1EBD39AA0);
      sub_1BE053664();
      v30 = v43;
      v31 = sub_1BE052DD4();

      (*(ObjectType + 8))(v28, v23);
      *(v47 + v29) = v31;
      v44 = v31;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      sub_1BE051FB4();
      *v14 = 60;
      v32 = *MEMORY[0x1E69E7F48];
      v33 = v50;
      v43 = *(v50 + 104);
      v43(v14, v32, v7);
      MEMORY[0x1BFB3F070](v19, v14);
      v34 = *(v33 + 8);
      v34(v14, v7);
      v50 = *(v48 + 8);
      v35 = v19;
      v36 = v49;
      (v50)(v35, v49);
      *v14 = 60;
      v43(v14, v32, v7);
      v37 = ObjectType;
      sub_1BD85BBDC(v11);
      MEMORY[0x1BFB3FF60](v22, v14, v11, v37);
      v34(v11, v7);
      v34(v14, v7);
      (v50)(v22, v36);
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1BD56AABC;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_123;
      v39 = _Block_copy(aBlock);
      sub_1BE048964();
      v40 = v51;
      sub_1BD85BC54();
      v41 = v53;
      sub_1BD56AC68();
      sub_1BE052DE4();
      _Block_release(v39);
      (*(v55 + 8))(v41, v46);
      (*(v52 + 8))(v40, v54);

      sub_1BE052E14();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1BD569E1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
    v2 = Strong;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD56AAC4;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD56AD40;
    aBlock[3] = &block_descriptor_35_1;
    v4 = _Block_copy(aBlock);

    [v1 reloadTransactionsWithCompletion_];
    _Block_release(v4);
  }
}

id sub_1BD569F60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransactionList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TransactionList()
{
  result = qword_1EBD4AA48;
  if (!qword_1EBD4AA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD56A14C()
{
  sub_1BD0E4578(319, &unk_1EBD4AA58, &qword_1EBD3FBC0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD4AA68, &qword_1EBD4AA70);
    if (v1 <= 0x3F)
    {
      sub_1BD56A2A8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD56A2A8()
{
  if (!qword_1EBD4AA78)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4AA78);
    }
  }
}

unint64_t sub_1BD56A350()
{
  result = qword_1EBD4AAF0;
  if (!qword_1EBD4AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AAF0);
  }

  return result;
}

uint64_t sub_1BD56A3A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TransactionList();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD56A3E4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD56A464(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

void sub_1BD56A4DC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &aBlock[-1] - v12;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v44 = &aBlock[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState] = 2;
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_timer] = 0;
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBC0);
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  v47 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AA70);
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v47) = 0;
  sub_1BE04D874();
  swift_endAccess();
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_account] = a1;
  v19 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
  v20 = a1;
  v21 = [v19 initWithAccount_];
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_source] = v21;
  v22 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v23 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v24 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v22 paymentDataProvider:v23];

  if (!v24)
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher;
  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher] = v24;
  [v24 setCashbackPass_];
  [*&v3[v25] setAllowSynchronousFetch_];
  v26 = *&v3[v25];
  v27 = [v20 savingsDetails];
  if (!v27)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v28 = v27;
  v29 = [v27 createdDate];

  if (v29)
  {
    sub_1BE04AEE4();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v15 + 56))(v10, v30, 1, v14);
  sub_1BD1CBBEC(v10, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD15D69C(v13);
    v31 = 0;
  }

  else
  {
    v32 = v44;
    sub_1BE04ADD4();
    v33 = *(v15 + 8);
    v33(v13, v14);
    v31 = sub_1BE04AE64();
    v33(v32, v14);
  }

  [v26 setLimit:10 startDate:v31 endDate:0];

  v34 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
  if (!v34)
  {
    goto LABEL_15;
  }

  *&v3[OBJC_IVAR____TtC9PassKitUI15TransactionList_iconGenerator] = v34;
  v35 = type metadata accessor for TransactionList();
  v46.receiver = v3;
  v46.super_class = v35;
  v36 = objc_msgSendSuper2(&v46, sel_init);
  v37 = [objc_opt_self() sharedInstance];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 registerObserver_];

    *&v36[OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState] = v39 & 0x101;
  }

  sub_1BD56970C();
  v40 = OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher;
  v41 = *&v36[OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD56AC60;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD56AD40;
  aBlock[3] = &block_descriptor_83;
  v43 = _Block_copy(aBlock);

  [v41 reloadTransactionsWithCompletion_];
  _Block_release(v43);
  [*&v36[v40] setDelegate_];
}

uint64_t sub_1BD56AADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD56AB24(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState);
  if (v2 != 2)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_activeState) = result & 0x101;
    if ((result & 1) != 0 && (v2 & 1) == 0)
    {
      v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6[4] = sub_1BD56AC60;
      v6[5] = v4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1BD56AD40;
      v6[3] = &block_descriptor_78_0;
      v5 = _Block_copy(v6);

      [v3 reloadTransactionsWithCompletion_];
      _Block_release(v5);
    }

    return sub_1BD56970C();
  }

  return result;
}

uint64_t sub_1BD56AC68()
{
  sub_1BE051F54();
  sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  return sub_1BE053664();
}

uint64_t sub_1BD56AD40(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v3(v2);
}

id sub_1BD56ADF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountTransferAuthorizationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountTransferAuthorizationController()
{
  result = qword_1EBD4ABD0;
  if (!qword_1EBD4ABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD56AFCC()
{
  result = sub_1BE051F44();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1BD56B0C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountTransferAuthorizationController();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

void sub_1BD56B114()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized) == 1)
    {
      if (*(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp))
      {
        v2 = &OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_stepUpAction;
      }

      else
      {
        v2 = &OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissAction;
      }

      v3 = *(Strong + *v2);
      v4 = sub_1BE048964();
      v3(v4);
    }

    v5 = *&v1[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transferDidFinish];
    if (v5)
    {
      v5(Strong);
    }
  }
}

void sub_1BD56B2E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest);
    *(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest) = a3;
    v11 = Strong;
    v12 = a3;
  }

  if (a5)
  {
    a5(a2, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD56B470(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE051F54();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v25 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_1BD56E878;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_42_1;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = a2;
  sub_1BD0D44B8(a4);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v22 = v25;
  MEMORY[0x1BFB3FDF0](0, v16, v12, v19);
  _Block_release(v19);

  (*(v27 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v26);
}

void sub_1BD56B7A0(uint64_t a1, void (*a2)(void *), void *a3, void (*a4)(void *), uint64_t a5)
{
  v211 = a5;
  v212 = a4;
  v213 = a3;
  v7 = sub_1BE04AF64();
  v202 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v183 = v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v201 = v174 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v181 = v174 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v174 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v182 = v174 - v22;
  v204 = sub_1BE051F54();
  v200 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204, v23);
  v199 = v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_1BE051FA4();
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198, v25);
  v196 = v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1BE051F44();
  v194 = *(v195 - 1);
  MEMORY[0x1EEE9AC00](v195, v27);
  v193 = (v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29, v30);
  v192 = v174 - v31;
  v191 = sub_1BE051FC4();
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v32);
  v188 = v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v189 = v174 - v36;
  v206 = sub_1BE04D214();
  v207 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206, v37);
  v205 = v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v180 = v174 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v187 = v174 - v44;
  v186 = sub_1BE052DC4();
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v45);
  v184 = v174 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BE04BD74();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = v174 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = v174 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = v174 - v58;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v61 = Strong;
    v179 = v7;
    v177 = a1;
    v209 = a2;
    v63 = a2 == 0;
    v62 = v213;
    v63 = !v63 && v213 == 0;
    v64 = v63;
    v65 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized;
    *(Strong + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized) = v64;
    LODWORD(v208) = v64;
    v66 = [objc_allocWithZone(MEMORY[0x1E69B8B80]) initWithStatus:v64 ^ 1u errors:0];
    v67 = v66;
    v68 = v61[v65];
    v210 = v61;
    v178 = v19;
    if ((v68 & 1) == 0)
    {
      v203 = v66;
      v69 = *MEMORY[0x1E69B80E0];
      v175 = *(v48 + 104);
      v175(v59, v69, v47);
      v70 = PKPassKitBundle();
      if (!v70)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v71 = v70;
      v174[1] = sub_1BE04B6F4();
      v73 = v72;

      v74 = *(v48 + 8);
      v74(v59, v47);
      if (v62)
      {
        v176 = v73;
        aBlock = v62;
        v75 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        sub_1BD0E5E8C(0, &qword_1EBD45E80);
        if (swift_dynamicCast())
        {
          v76 = v214;
          if ([v214 code] == 60015)
          {

            v175(v55, v69, v47);
            v77 = PKPassKitBundle();
            if (!v77)
            {
LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

            v78 = v77;
            sub_1BE04B6F4();

            v79 = v55;
          }

          else
          {
            if ([v76 code] != 60016)
            {
              v95 = [v76 code];
              v61 = v210;
              if (v95 == 60000)
              {
                v96 = [v76 localizedFailureReason];
                v67 = v203;
                if (v96)
                {
                  v97 = v96;
                  sub_1BE052434();

                  if (sub_1BE052534() < 1)
                  {
                  }

                  else
                  {
                  }
                }
              }

              else
              {
                v67 = v203;
              }

LABEL_35:
              v94 = sub_1BE052404();

              [v67 setLocalizedErrorMessageOverride_];

              v80 = v209;
              if (!v209)
              {
                goto LABEL_36;
              }

              goto LABEL_17;
            }

            v175(v51, v69, v47);
            v92 = PKPassKitBundle();
            if (!v92)
            {
LABEL_81:
              __break(1u);
              return;
            }

            v93 = v92;
            sub_1BE04B6F4();

            v79 = v51;
          }

          v74(v79, v47);
          v61 = v210;
          v67 = v203;
          goto LABEL_35;
        }
      }

      v61 = v210;
      v67 = v203;
    }

    v80 = v209;
    if (!v209)
    {
      goto LABEL_36;
    }

LABEL_17:
    objc_opt_self();
    v81 = swift_dynamicCastObjCClass();
    if (v81)
    {
      v82 = v81;
      v83 = v80;
      v84 = [v82 transfers];
      if (!v84)
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v85 = v84;
      sub_1BD0E5E8C(0, &qword_1EBD4AD60);
      v86 = sub_1BE052744();

      v203 = v67;
      if (v86 >> 62)
      {
        goto LABEL_47;
      }

      for (i = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
      {
        v88 = 0;
        while (1)
        {
          if ((v86 & 0xC000000000000001) != 0)
          {
            v89 = MEMORY[0x1BFB40900](v88, v86);
          }

          else
          {
            if (v88 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v89 = *(v86 + 8 * v88 + 32);
          }

          v90 = v89;
          v91 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          if ([v89 state] == 5 && objc_msgSend(v90, sel_statusCode) == 2)
          {

            goto LABEL_49;
          }

          ++v88;
          if (v91 == i)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        ;
      }

LABEL_48:

      v90 = 0;
LABEL_49:

      v61 = v210;
      v210[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp] = v90 != 0;
      v67 = v203;
      if (!v208)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_36:
    if (!v208)
    {
LABEL_51:
      v98 = v212;
      if (v212)
      {
LABEL_52:
        v99 = v67;
        v98(v67);

LABEL_53:
        return;
      }

      __break(1u);
      goto LABEL_76;
    }

LABEL_50:
    if ((v61[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp] & 1) == 0)
    {
      v98 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountModel;
      v100 = *&v61[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountModel];
      sub_1BD1E0C6C();

      v101 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData;
      if (*&v61[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData])
      {
        v102 = v205;
        sub_1BE04D194();
        v103 = sub_1BE04D204();
        v104 = sub_1BE052C34();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&dword_1BD026000, v103, v104, "Transfer timer already exist, abort", v105, 2u);
          v106 = v105;
          v102 = v205;
          MEMORY[0x1BFB45F20](v106, -1, -1);
        }

        (*(v207 + 8))(v102, v206);
        if (*&v61[v101])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1BE052E04();
          swift_unknownObjectRelease();
        }

        v98 = v212;
        if (v212)
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      v209 = v98;
      v107 = v67;
      sub_1BD0E5E8C(0, &unk_1EBD39A90);
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD56E888(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0);
      sub_1BD126024(&qword_1EBD3F6B0, &unk_1EBD39AA0);
      v108 = v184;
      v109 = v186;
      sub_1BE053664();
      v110 = sub_1BE052DD4();
      (*(v185 + 8))(v108, v109);
      *&v61[v101] = v110;
      v213 = v110;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v111 = v187;
      sub_1BE04D194();
      v112 = sub_1BE04D204();
      v113 = sub_1BE052C54();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_1BD026000, v112, v113, "Creating timer to wait for transfer data", v114, 2u);
        MEMORY[0x1BFB45F20](v114, -1, -1);
      }

      v115 = *(v207 + 8);
      v207 += 8;
      v187 = v115;
      (v115)(v111, v206);
      ObjectType = swift_getObjectType();
      v117 = v188;
      sub_1BE051FB4();
      v118 = &v61[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer];
      v119 = v189;
      MEMORY[0x1BFB3F070](v117, v118);
      v120 = *(v190 + 8);
      v121 = v191;
      v120(v117, v191);
      v122 = v192;
      sub_1BD85BB68(v192);
      v123 = v193;
      sub_1BD85BBDC(v193);
      MEMORY[0x1BFB3FF60](v119, v122, v123, ObjectType);
      v124 = *(v194 + 8);
      v125 = v123;
      v126 = v195;
      v124(v125, v195);
      v124(v122, v126);
      v120(v119, v121);
      v127 = swift_allocObject();
      v129 = v211;
      v128 = v212;
      v127[2] = v212;
      v127[3] = v129;
      v127[4] = v107;
      v219 = sub_1BD56E8D0;
      v220 = v127;
      aBlock = MEMORY[0x1E69E9820];
      v216 = 1107296256;
      v208 = &v217;
      v217 = sub_1BD126964;
      v218 = &block_descriptor_48_1;
      v130 = _Block_copy(&aBlock);
      v195 = v107;
      sub_1BD0D44B8(v128);
      v131 = v196;
      sub_1BD85BC54();
      v132 = v199;
      sub_1BD56AC68();
      sub_1BE052DE4();
      _Block_release(v130);
      v205 = *(v200 + 8);
      (v205)(v132, v204);
      v203 = *(v197 + 8);
      v133 = v198;
      v203(v131, v198);

      v134 = swift_allocObject();
      v134[2] = v128;
      v134[3] = v129;
      v135 = v195;
      v134[4] = v195;
      v219 = sub_1BD56E940;
      v220 = v134;
      aBlock = MEMORY[0x1E69E9820];
      v216 = 1107296256;
      v217 = sub_1BD126964;
      v218 = &block_descriptor_54;
      v136 = _Block_copy(&aBlock);
      v208 = v135;
      sub_1BD0D44B8(v128);
      sub_1BE051F74();
      sub_1BD56AC68();
      sub_1BE052DF4();
      _Block_release(v136);
      (v205)(v132, v204);
      v137 = v210;
      v203(v131, v133);

      sub_1BE052E14();
      v138 = v209;
      v139 = *(v209 + v137);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 1;
      v140 = v139;
      sub_1BE04D8C4();
      v141 = *&v137[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountService];
      if (v141)
      {
        [v141 registerObserver_];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v142 = aBlock;
      v143 = [aBlock lastUpdated];

      v144 = v137;
      v145 = v179;
      v146 = v202;
      v147 = v178;
      if (v143)
      {
        v148 = v182;
        sub_1BE04AEE4();

        v149 = v181;
        sub_1BE04AEF4();
        sub_1BE04AEA4();
        v150 = *(v146 + 8);
        v150(v149, v145);
        LOBYTE(v149) = sub_1BE04AE74();
        v150(v147, v145);
        if (v149)
        {
          v151 = v180;
          sub_1BE04D194();
          v152 = sub_1BE04D204();
          v153 = sub_1BE052C54();
          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            *v154 = 0;
            _os_log_impl(&dword_1BD026000, v152, v153, "Found a recent account update", v154, 2u);
            MEMORY[0x1BFB45F20](v154, -1, -1);
          }

          (v187)(v151, v206);
          v144 = v210;
          v155 = *(v138 + v210);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(aBlock) = 0;
          v156 = v155;
          sub_1BE04D8C4();
          v145 = v179;
          v150(v182, v179);
          v144[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate] = 1;
          v146 = v202;
        }

        else
        {
          v150(v148, v145);
          v146 = v202;
          v144 = v210;
        }
      }

      v157 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transactionFetcher;
      v158 = *&v144[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transactionFetcher];
      sub_1BE04AEF4();
      v159 = sub_1BE04AE64();
      v160 = *(v146 + 8);
      v160(v147, v145);
      v161 = PKStartOfDay();

      if (v161)
      {
        v162 = v201;
        sub_1BE04AEE4();

        v163 = sub_1BE04AE64();
        v160(v162, v145);
        sub_1BE04AEF4();
        v164 = sub_1BE04AE64();
        v160(v147, v145);
        v165 = PKEndOfDay();

        if (v165)
        {
          v166 = v183;
          sub_1BE04AEE4();

          v167 = sub_1BE04AE64();
          v160(v166, v145);
          [v158 setLimit:1 startDate:v163 endDate:v167];

          v168 = v210;
          [*&v210[v157] setDelegate_];
          v169 = *&v168[v157];
          v170 = swift_allocObject();
          swift_beginAccess();
          v171 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v99 = v169;

          v172 = swift_allocObject();
          *(v172 + 16) = 0x4014000000000000;
          *(v172 + 24) = v170;
          v219 = sub_1BD56E968;
          v220 = v172;
          aBlock = MEMORY[0x1E69E9820];
          v216 = 1107296256;
          v217 = sub_1BD56AD40;
          v218 = &block_descriptor_67_1;
          v173 = _Block_copy(&aBlock);

          [v99 reloadTransactionsWithCompletion_];

          _Block_release(v173);
          swift_unknownObjectRelease();
          goto LABEL_53;
        }

        goto LABEL_79;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    goto LABEL_51;
  }
}

uint64_t sub_1BD56CEC0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D194();
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BD026000, v12, v13, a4, v14, 2u);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  result = (*(v8 + 8))(v11, v7);
  if (a1)
  {
    return a1(a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD56D028(unint64_t a1, void *a2)
{
  v44 = a2;
  v3 = sub_1BE051F54();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BE051FA4();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v43 - v15;
  v17 = sub_1BE04AF64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v43 - v24;
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v43 - v29;
  if (!a1)
  {
    goto LABEL_15;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_15:
    (*(v18 + 56))(v16, 1, 1, v17, v28);
    return sub_1BD15D69C(v16);
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x1BFB40900](0, a1, v28);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v32 = *(a1 + 32);
  }

  v33 = v32;
  v34 = [v32 transactionDate];

  if (v34)
  {
    sub_1BE04AEE4();

    (*(v18 + 56))(v12, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v12, 1, 1, v17);
  }

  sub_1BD1CBBEC(v12, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1BD15D69C(v16);
  }

  (*(v18 + 32))(v30, v16, v17);
  sub_1BE04AEF4();
  sub_1BE04AEA4();
  v35 = *(v18 + 8);
  v35(v21, v17);
  v36 = sub_1BE04AE74();
  v35(v25, v17);
  if (v36)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v43 = sub_1BE052D54();
    v37 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_1BD56E974;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_71;
    v44 = _Block_copy(aBlock);

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
    v39 = v46;
    v40 = v49;
    sub_1BE053664();
    v42 = v43;
    v41 = v44;
    MEMORY[0x1BFB3FDF0](0, v8, v39, v44);
    _Block_release(v41);

    (*(v48 + 8))(v39, v40);
    (*(v45 + 8))(v8, v47);
  }

  return (v35)(v30, v17);
}

void sub_1BD56D624()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BE04D194();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C54();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, v8, "Found a recent transaction", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v6[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction] = 1;
    sub_1BD56D7A8();
  }
}

uint64_t sub_1BD56D7A8()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction;
  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction);
  v9 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate;
  v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate);
  sub_1BE04D194();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = v10;
    v15 = v13;
    *v13 = 67109376;
    *(v13 + 4) = v8;
    *(v13 + 8) = 1024;
    *(v13 + 10) = v14;
    _os_log_impl(&dword_1BD026000, v11, v12, "Check on timer,\nhasReceivedTransaction: %{BOOL}d,\nhasReceivedAccountUpdate: %{BOOL}d", v13, 0xEu);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  if (*(v1 + v7) == 1 && *(v1 + v9) == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1BE052E04();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1BD56DAA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate] = 1;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    sub_1BD56D7A8();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountService);
    v5 = v3;
    v6 = v4;

    if (v4)
    {
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      [v6 unregisterObserver_];
    }
  }
}

void sub_1BD56DC14(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v67 - v9;
  if (!a1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v76 = v10;
  v11 = *(v3 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferModel);
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentRequest);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v78 = v14;
  v14[4] = a3;
  v80 = v13;
  sub_1BE048964();
  v68 = a2;
  v67[1] = a3;
  sub_1BD0D44B8(a2);
  [a1 selectedMethods];
  PKSetAccountServiceTransferPrefersBank();
  v15 = [a1 peerPaymentBalance];
  v16 = *(v11 + 48);
  *(v11 + 48) = v15;

  v85 = MEMORY[0x1BFB403C0](0);
  v18 = v17;
  LODWORD(v77) = v19;
  v20 = MEMORY[0x1BFB403C0](0);
  v22 = v21;
  v84 = v23;
  v79 = v12;
  v24 = [v12 _transactionAmount];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  [v24 decimalValue];
  v82 = v90;
  v26 = v91;
  v87 = v92;
  v83 = v93;
  v89 = v94;
  v88 = v95;
  v27 = v96;
  v86 = v97;
  v28 = v98;

  v29 = [a1 selectedMethods];
  v81 = v11;
  v30 = *(v11 + 48);
  if (v30 && (v31 = [v30 amount]) != 0 && (v31, (v29 & 2) != 0))
  {
    v38 = v26;
    v37 = v87;
    v34 = v89;
    v39 = v22 >> 16;
    v33 = v88;
    v41 = HIDWORD(v22);
    v32 = v27;
    v43 = v84;
    v44 = HIWORD(v84);
    v35 = v83;
    v36 = v82;
    v27 = HIWORD(v22);
    v40 = v22;
    v42 = HIWORD(v20);
    v26 = HIDWORD(v20);
    v45 = v20;
    v46 = v86;
  }

  else if (v29)
  {
    v36 = v85;
    v38 = HIDWORD(v85);
    v32 = HIWORD(v18);
    v34 = v18 >> 16;
    v35 = v18;
    v37 = HIWORD(v85);
    v33 = HIDWORD(v18);
    v44 = v28;
    v46 = v77;
    v28 = WORD1(v77);
    v43 = v86;
    v40 = v83;
    v45 = v82;
    v41 = v88;
    v39 = v89;
    v42 = v87;
  }

  else
  {
    v26 = HIDWORD(v20);
    v32 = HIWORD(v18);
    v33 = HIDWORD(v18);
    v34 = v18 >> 16;
    v35 = v18;
    v36 = v85;
    v37 = HIWORD(v85);
    v38 = HIDWORD(v85);
    v27 = HIWORD(v22);
    v39 = v22 >> 16;
    v40 = v22;
    v41 = HIDWORD(v22);
    v42 = HIWORD(v20);
    v43 = v84;
    v44 = HIWORD(v84);
    v45 = v20;
    v46 = v77;
    v28 = WORD1(v77);
  }

  v75 = v38;
  v71 = v37;
  v70 = v35;
  v72 = v33;
  v73 = v34;
  v74 = v32;
  v86 = v46;
  v77 = v26;
  v87 = v42;
  v88 = v41;
  v89 = v39;
  v69 = v44;
  v47 = v79;
  sub_1BD8597AC(v79, a1, v36 | (v38 << 32) | (v37 << 48), v35 | (v34 << 16) | (v33 << 32) | (v32 << 48), v46 | (v28 << 16), v45 | (v26 << 32) | (v42 << 48), v40 | (v39 << 16) | (v41 << 32) | (v27 << 48), v43 | (v44 << 16));
  if (v48)
  {
    v49 = v48;
    v82 = v45;
    v83 = v40;
    v68 = v27;
    v85 = v36;
    v84 = v43;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v51 = [a1 selectedMethods];
    v52 = [a1 bankAccountInformation];
    v53 = [v47 paymentSummaryItemsWithFundingSources:v51 bankAccount:v52];

    v54 = v78;
    if (!v53)
    {
      sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
      sub_1BE052744();
      v53 = sub_1BE052724();
    }

    v55 = [objc_allocWithZone(MEMORY[0x1E69B8D88]) initWithPaymentSummaryItems_];

    v56 = sub_1BE0528D4();
    v57 = v76;
    (*(*(v56 - 8) + 56))(v76, 1, 1, v56);
    sub_1BE0528A4();
    v58 = v47;
    v59 = v81;
    sub_1BE048964();
    v60 = v49;
    sub_1BE048964();
    sub_1BE048964();
    v61 = v55;
    v62 = sub_1BE052894();
    v63 = swift_allocObject();
    v64 = MEMORY[0x1E69E85E0];
    *(v63 + 16) = v62;
    *(v63 + 24) = v64;
    *(v63 + 32) = v58;
    *(v63 + 40) = v59;
    *(v63 + 48) = v60;
    *(v63 + 56) = v85;
    *(v63 + 60) = v75;
    *(v63 + 62) = v71;
    *(v63 + 64) = v70;
    LOWORD(v64) = v72;
    *(v63 + 66) = v73;
    *(v63 + 68) = v64;
    *(v63 + 70) = v74;
    *(v63 + 72) = v86;
    *(v63 + 74) = v28;
    *(v63 + 76) = v82;
    *(v63 + 80) = v77;
    *(v63 + 82) = v87;
    *(v63 + 84) = v83;
    LOWORD(v64) = v88;
    *(v63 + 86) = v89;
    *(v63 + 88) = v64;
    *(v63 + 90) = v68;
    *(v63 + 92) = v84;
    *(v63 + 94) = v69;
    *(v63 + 96) = v50;
    *(v63 + 104) = sub_1BD56E994;
    *(v63 + 112) = v54;
    *(v63 + 120) = v61;
    sub_1BD122C00(0, 0, v57, &unk_1BE0E1F28, v63);

    goto LABEL_18;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v66 = *&Strong[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest];
    *&Strong[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest] = 0;
  }

  if (v68)
  {
    v68(0, 0);

LABEL_18:

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1BD56E334(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69B8468]) initWithApplePayTrustProtocol_];
  if (v7)
  {
    v8 = v7;
    [v7 setSignature_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v9 = aBlock[0];
    v10 = *&v3[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentWebService];
    if (v10)
    {
      v11 = swift_allocObject();
      v11[2] = v3;
      v11[3] = a2;
      v11[4] = a3;
      aBlock[4] = sub_1BD56E86C;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_35_2;
      v12 = _Block_copy(aBlock);
      v13 = v8;
      v14 = v9;
      v15 = v3;
      sub_1BD0D44B8(a2);

      [v10 applePayTrustSignatureRequestWithRequest:v13 account:v14 completion:v12];

      _Block_release(v12);
    }

    else
    {
    }
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69B8B80]) initWithStatus:1 errors:0];
    if (a2)
    {
      v17 = v16;
      a2();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD56E580()
{
  v0 = sub_1BE051F54();
  v13 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v8 = sub_1BE052D54();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD56E864;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_124;
  v10 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v7, v3, v10);
  _Block_release(v10);

  (*(v13 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v12);
}

uint64_t sub_1BD56E888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_44Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD56E9A0(uint64_t a1)
{
  v10 = v1[3];
  v11 = v1[2];
  v8 = v1[5];
  v9 = v1[4];
  v4 = v1[7];
  v12 = v1[8];
  v5 = v1[6];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BD0F985C;

  return sub_1BD858B20(a1, v11, v10, v9, v8, v5, v4, v12);
}

uint64_t type metadata accessor for PeerPaymentModel()
{
  result = qword_1EBD36460;
  if (!qword_1EBD36460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD56EB74()
{
  sub_1BD0E5E8C(319, &qword_1EBD4AD68);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AvailablePass(319);
    if (v1 <= 0x3F)
    {
      sub_1BD56EC98();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PKPaymentRequestType(319);
        if (v3 <= 0x3F)
        {
          sub_1BD56ECE8();
          if (v4 <= 0x3F)
          {
            sub_1BD0E5E8C(319, &qword_1EBD4AD80);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BD56EC98()
{
  if (!qword_1EBD4AD70)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4AD70);
    }
  }
}

void sub_1BD56ECE8()
{
  if (!qword_1EBD4AD78)
  {
    type metadata accessor for PKPeerPaymentRequestType(255);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4AD78);
    }
  }
}

void sub_1BD56ED40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PeerPaymentModel();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a1 peerPaymentPass];
  if (!v13)
  {

    v21 = 1;
LABEL_91:
    (*(v9 + 56))(a2, v21, 1, v8);
    return;
  }

  v89 = a2;

  v14 = [a1 paymentRequest];
  if (!v14)
  {
    __break(1u);
    goto LABEL_93;
  }

  v15 = v14;
  v16 = [v14 isPeerPaymentRequest];
  v17 = [v15 requestType];
  v18 = v17;
  v19 = v16;
  if ((v16 & 1) == 0)
  {
    v19 = v16;
    if (v17 == 2)
    {
      v19 = [v15 accountPaymentSupportsPeerPayment];
    }
  }

  v20 = [a1 itemForType_];
  v88 = v7;
  v86 = v18;
  if (v20)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  v95 = v93;
  v96 = v94;
  if (*(&v94 + 1))
  {
    sub_1BD0E5E8C(0, &qword_1EBD3E6D0);
    if (swift_dynamicCast())
    {
      v22 = v91;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_1BD0DE53C(&v95, &qword_1EBD3EC90);
    v22 = 0;
  }

  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  v95 = v93;
  v96 = v94;
  if (!*(&v94 + 1))
  {
    sub_1BD0DE53C(&v95, &qword_1EBD3EC90);
    if (!v22)
    {
      goto LABEL_31;
    }

    v23 = 0;
LABEL_27:
    v24 = v22;
    goto LABEL_28;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4AD98);
  if (swift_dynamicCast())
  {
    v23 = v91;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    goto LABEL_27;
  }

  if (v23)
  {
    v24 = v23;
    v23 = v91;
LABEL_28:
    v25 = [v24 showPeerPaymentBalance];
    if ((v19 | v25))
    {
      v82 = v19 ^ 1 | v25;
      goto LABEL_33;
    }

    goto LABEL_51;
  }

LABEL_31:
  if ((v19 & 1) == 0)
  {

LABEL_51:
    v21 = 1;
    a2 = v89;
    goto LABEL_91;
  }

  v23 = 0;
  v82 = 0;
LABEL_33:
  v81 = v22;
  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
  }

  v93 = v95;
  v94 = v96;
  sub_1BD0DE19C(&v93, &v95, &qword_1EBD3EC90);
  if (*(&v96 + 1))
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AD90);
    if (swift_dynamicCast())
    {
      v26 = v91;
      v83 = [v91 shouldShowDisclosure];

      v87 = 1;
      goto LABEL_41;
    }
  }

  else
  {
    sub_1BD0DE53C(&v95, &qword_1EBD3EC90);
  }

  v87 = 0;
  v83 = 0;
LABEL_41:
  v85 = [a1 peerPaymentAccount];
  if (!v85)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v79 = v4;
  v80 = v9;
  v27 = [a1 peerPaymentQuote];
  v84 = v15;
  v78 = v23;
  if (v27)
  {
    v28 = v27;
    v29 = [v27 isRecurringPayment];

    v30 = v29 & v19;
    if (v29 & 1) != 0 || ((v19 ^ 1))
    {
LABEL_53:
      v35 = [v15 accountServiceTransferRequest];
      if (v35)
      {
        v36 = v35;
        if ([v35 transferType] == 3)
        {

          v37 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
          if (!v16)
          {
            goto LABEL_56;
          }

LABEL_59:
          v38 = [a1 usePeerPaymentBalance];
          if (v19)
          {
            v39 = [a1 shouldShowPeerPaymentBalanceToggle];
LABEL_61:
            LOBYTE(v19) = v39;
            goto LABEL_70;
          }

LABEL_69:
          LOBYTE(v19) = 0;
LABEL_70:
          v41 = PKOslo2024UIUpdatesEnabled();
          v42 = [a1 peerPaymentPass];
          if (v42)
          {
            v76 = v42;
            LODWORD(v86) = v38;
            v77 = [a1 peerPaymentQuote];
            v43 = [a1 v37[60]];
            if (v43)
            {
              v44 = v43;
              v45 = (v87 ^ 1) & v19;
              v75 = [v43 requestType];

              v46 = [a1 v37[60]];
              if (v46)
              {
                v47 = v46;
                objc_opt_self();
                v48 = swift_dynamicCastObjCClass();
                v74 = v48 == 0;
                if (v48)
                {
                  v73 = [v48 peerPaymentType];
                }

                else
                {
                  v73 = 0;
                }
              }

              else
              {
                v73 = 0;
                v74 = 1;
              }

              v49 = v82 | v45;
              v82 = [a1 supportsPreservePeerPaymentBalance];
              *(v12 + v8[17]) = a1;
              v50 = v85;
              *v12 = v85;
              v51 = a1;
              v52 = v50;
              if ([v51 itemForType_])
              {
                sub_1BE053624();
                swift_unknownObjectRelease();
              }

              else
              {
                v91 = 0u;
                v92 = 0u;
              }

              v53 = (v41 ^ 1) & v49;
              v95 = v91;
              v96 = v92;
              if (*(&v92 + 1))
              {
                sub_1BD0E5E8C(0, &qword_1EBD3E6D0);
                if (swift_dynamicCast())
                {
                  v54 = v90;
                }

                else
                {
                  v54 = 0;
                }
              }

              else
              {
                sub_1BD0DE53C(&v95, &qword_1EBD3EC90);
                v54 = 0;
              }

              v55 = v77;
              v56 = v77;
              sub_1BD335440(v55, v54, v52, &v95);
              v57 = (v12 + v8[6]);
              v58 = v98;
              v57[2] = v97;
              v57[3] = v58;
              v59 = v100;
              v57[4] = v99;
              v57[5] = v59;
              v60 = v96;
              *v57 = v95;
              v57[1] = v60;
              *(v12 + v8[7]) = v75;
              v61 = v12 + v8[8];
              *v61 = v73;
              v61[8] = v74;
              *(v12 + v8[9]) = v82;
              *(v12 + v8[10]) = v86;
              *(v12 + v8[12]) = v19 & 1;
              *(v12 + v8[11]) = v83;
              *(v12 + v8[13]) = v87;
              *(v12 + v8[14]) = v53;
              v62 = [v51 paymentRequest];
              if (v62)
              {
                v63 = v62;
                v64 = [v62 isPeerPaymentRequest];

                *(v12 + v8[15]) = v64;
                a2 = v89;
                v65 = v88;
                v66 = v84;
                v67 = v78;
                if (v56)
                {
                  v68 = [v56 isRecurringPayment];
                }

                else
                {
                  v68 = 0;
                }

                *(v12 + v8[16]) = v68;
                v69 = v76;
                *v65 = v76;
                swift_storeEnumTagMultiPayload();
                v70 = v8[5];
                v71 = v69;
                sub_1BD4954F8(v65, v51, v12 + v70);

                sub_1BD0DE53C(&v93, &qword_1EBD3EC90);
                sub_1BD1B9B60(v12, a2);
                v21 = 0;
                v9 = v80;
                goto LABEL_91;
              }

              goto LABEL_96;
            }

LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v40 = [v36 transferType];

        if (v40 != 2)
        {
          LOBYTE(v19) = v30;
        }

        v37 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
        if (v16)
        {
          goto LABEL_59;
        }
      }

      else
      {
        LOBYTE(v19) = v30;
        v37 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
        if (v16)
        {
          goto LABEL_59;
        }
      }

LABEL_56:
      if (v86 != 2)
      {
        v38 = 0;
        goto LABEL_70;
      }

      v38 = [a1 usePeerPaymentBalance];
      if ((v19 & 1) != 0 && [v15 accountPaymentSupportsPeerPayment])
      {
        v39 = [v15 deviceSupportsPeerPaymentAccountPayment];
        goto LABEL_61;
      }

      goto LABEL_69;
    }
  }

  else if (!v19)
  {
    v30 = 0;
    goto LABEL_53;
  }

  v31 = [v85 currentBalance];
  if (!v31)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v32 = v31;
  v33 = [v31 amount];

  if (v33)
  {
    [v33 decimalValue];

    v34 = MEMORY[0x1BFB403C0](0);
    v30 = MEMORY[0x1BFB403F0](v34);
    v15 = v84;
    goto LABEL_53;
  }

LABEL_98:
  __break(1u);
}

uint64_t sub_1BD56F844(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  if ((sub_1BE053074() & 1) == 0)
  {
    goto LABEL_24;
  }

  v4 = type metadata accessor for PeerPaymentModel();
  if ((sub_1BD495008((a1 + v4[5]), a2 + v4[5]) & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = a1 + v4[6];
  v6 = *(v5 + 48);
  v56[2] = *(v5 + 32);
  v56[3] = v6;
  v7 = *(v5 + 80);
  v56[4] = *(v5 + 64);
  v56[5] = v7;
  v8 = *(v5 + 16);
  v56[0] = *v5;
  v56[1] = v8;
  v9 = a2 + v4[6];
  v10 = *(v9 + 48);
  v57[2] = *(v9 + 32);
  v57[3] = v10;
  v11 = *(v9 + 80);
  v57[4] = *(v9 + 64);
  v57[5] = v11;
  v12 = *(v9 + 16);
  v57[0] = *v9;
  v57[1] = v12;
  v13 = *&v56[0];
  v14 = *(v5 + 56);
  v52 = *(v5 + 40);
  v53 = v14;
  v54 = *(v5 + 72);
  v55 = *(v5 + 88);
  v15 = *(v5 + 24);
  v50 = *(v5 + 8);
  v51 = v15;
  if (*&v56[0] != 1)
  {
    if (*&v57[0] != 1)
    {
      *v34 = *&v57[0];
      *&v34[8] = *(v9 + 8);
      *&v34[24] = *(v9 + 24);
      *&v34[88] = *(v9 + 88);
      *&v34[72] = *(v9 + 72);
      *&v34[56] = *(v9 + 56);
      *&v34[40] = *(v9 + 40);
      *v42 = *v34;
      *&v42[16] = *&v34[16];
      *&v42[64] = *&v34[64];
      *&v42[80] = *&v34[80];
      *&v42[32] = *&v34[32];
      *&v42[48] = *&v34[48];
      v21 = *(v5 + 8);
      v60 = *(v5 + 24);
      v59 = v21;
      v22 = *(v5 + 40);
      v23 = *(v5 + 56);
      v24 = *(v5 + 72);
      v25 = *(v5 + 88);
      v63 = v24;
      v62 = v23;
      v61 = v22;
      v64 = v25;
      v58 = *&v56[0];
      sub_1BD0DE19C(v56, &v35, &unk_1EBD521D0);
      sub_1BD0DE19C(v57, &v35, &unk_1EBD521D0);
      v26 = sub_1BD334EE8(&v58, v42);
      sub_1BD0DE53C(v34, &unk_1EBD521D0);
      v35 = v13;
      v38 = v52;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v36 = v50;
      v37 = v51;
      sub_1BD0DE53C(&v35, &unk_1EBD521D0);
      if (!v26)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

LABEL_7:
    *&v42[40] = *(v5 + 40);
    *&v42[56] = *(v5 + 56);
    *&v42[72] = *(v5 + 72);
    v17 = *(v5 + 88);
    *v42 = *&v56[0];
    *&v42[88] = v17;
    v43 = *&v57[0];
    *&v42[8] = *(v5 + 8);
    *&v42[24] = *(v5 + 24);
    v45 = *(v9 + 24);
    v44 = *(v9 + 8);
    v18 = *(v9 + 40);
    v19 = *(v9 + 56);
    v20 = *(v9 + 72);
    v49 = *(v9 + 88);
    v48 = v20;
    v47 = v19;
    v46 = v18;
    sub_1BD0DE19C(v56, &v58, &unk_1EBD521D0);
    sub_1BD0DE19C(v57, &v58, &unk_1EBD521D0);
    sub_1BD0DE53C(v42, &qword_1EBD4AD88);
    goto LABEL_24;
  }

  if (*&v57[0] != 1)
  {
    goto LABEL_7;
  }

  *&v42[40] = *(v5 + 40);
  *&v42[56] = *(v5 + 56);
  *&v42[72] = *(v5 + 72);
  v16 = *(v5 + 88);
  *v42 = 1;
  *&v42[88] = v16;
  *&v42[8] = *(v5 + 8);
  *&v42[24] = *(v5 + 24);
  sub_1BD0DE19C(v56, &v58, &unk_1EBD521D0);
  sub_1BD0DE19C(v57, &v58, &unk_1EBD521D0);
  sub_1BD0DE53C(v42, &unk_1EBD521D0);
LABEL_9:
  if (*(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v27 = v4[8];
    v28 = (a1 + v27);
    v29 = *(a1 + v27 + 8);
    v30 = (a2 + v27);
    v31 = *(a2 + v27 + 8);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (*v28 != *v30)
      {
        LOBYTE(v31) = 1;
      }

      if (v31)
      {
        goto LABEL_24;
      }
    }

    if (*(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]) && *(a1 + v4[13]) == *(a2 + v4[13]) && *(a1 + v4[14]) == *(a2 + v4[14]) && *(a1 + v4[15]) == *(a2 + v4[15]) && *(a1 + v4[16]) == *(a2 + v4[16]))
    {
      v32 = sub_1BE053074();
      return v32 & 1;
    }
  }

LABEL_24:
  v32 = 0;
  return v32 & 1;
}

void sub_1BD56FCC8()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1BD39DBE0(Strong);
    swift_unknownObjectRelease();
  }
}

void sub_1BD56FD58(void *a1, char a2)
{
  v5 = [v2 viewControllers];
  sub_1BD28B6C0();
  v6 = sub_1BE052744();

  if (v6 >> 62)
  {
    v7 = sub_1BE053704();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {

    [v2 pushViewController:a1 animated:a2 & 1];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BE0B7020;
    *(v8 + 32) = a1;
    v9 = a1;
    v10 = sub_1BE052724();

    [v2 setViewControllers_];
  }
}

unint64_t sub_1BD56FEB8(void *a1, char a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if ([v6 transitioningDelegate])
    {
      swift_unknownObjectRelease();

      goto LABEL_15;
    }

    v8 = [v6 viewControllers];
    sub_1BD28B6C0();
    v9 = sub_1BE052744();

    if (v9 >> 62)
    {
      v10 = sub_1BE053704();
      if (v10)
      {
LABEL_6:
        v11 = __OFSUB__(v10, 1);
        result = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v9 + 8 * result + 32);
LABEL_11:
            v14 = v13;
LABEL_14:

            v15 = [v14 transitioningDelegate];

            [v6 setTransitioningDelegate_];
            swift_unknownObjectRelease();
            goto LABEL_15;
          }

          __break(1u);
          return result;
        }

        v13 = MEMORY[0x1BFB40900](result, v9);
        goto LABEL_11;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return [v2 presentViewController:a1 animated:a2 & 1 completion:0];
}

uint64_t sub_1BD570078()
{
  v1 = [v0 viewControllers];
  sub_1BD28B6C0();
  v2 = sub_1BE052744();

  return v2;
}

void sub_1BD5700D0(uint64_t a1, char a2)
{
  sub_1BD28B6C0();
  v4 = sub_1BE052724();
  [v2 setViewControllers:v4 animated:a2 & 1];
}

id sub_1BD57016C()
{
  result = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5701C8(uint64_t a1, uint64_t a2)
{
  sub_1BD5707B0(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_1BD570200(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v5 = [Strong viewControllers];
  sub_1BD28B6C0();
  v6 = sub_1BE052744();

  if (v6 >> 62)
  {
    v8 = sub_1BE053704();

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BE0B7020;
    *(v9 + 32) = a1;
    v10 = a1;
    v11 = sub_1BE052724();

    [v12 setViewControllers_];

    goto LABEL_8;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  [v12 pushViewController:a1 animated:a2 & 1];
LABEL_8:
}

void sub_1BD570380(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if ([v6 transitioningDelegate])
    {
      swift_unknownObjectRelease();

      goto LABEL_17;
    }

    v8 = [v6 viewControllers];
    sub_1BD28B6C0();
    v9 = sub_1BE052744();

    if (v9 >> 62)
    {
      v10 = sub_1BE053704();
      if (v10)
      {
LABEL_8:
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v9 + 8 * v12 + 32);
LABEL_13:
            v14 = v13;
LABEL_16:

            v15 = [v14 transitioningDelegate];

            [v6 setTransitioningDelegate_];
            swift_unknownObjectRelease();
            goto LABEL_17;
          }

          __break(1u);
          return;
        }

        v13 = MEMORY[0x1BFB40900](v12, v9);
        goto LABEL_13;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v14 = 0;
    goto LABEL_16;
  }

LABEL_17:
  [v16 presentViewController:a1 animated:a2 & 1 completion:0];
}

uint64_t sub_1BD5705E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = Strong;
  v2 = [Strong viewControllers];

  sub_1BD28B6C0();
  v3 = sub_1BE052744();

  return v3;
}

void sub_1BD570664()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD28B6C0();
    v2 = sub_1BE052724();
    [v1 setViewControllers:v2 animated:1];
  }
}

id sub_1BD570708()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E69DD258]);

    return [v1 init];
  }

  return result;
}

id sub_1BD57076C()
{
  result = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1BD5707B0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v8[4] = sub_1BD5708D8;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BD126964;
  v8[3] = &block_descriptor_125;
  v7 = _Block_copy(v8);

  [v2 setOnDismiss_];
  _Block_release(v7);
}

uint64_t type metadata accessor for ACHCredentialRow()
{
  result = qword_1EBD4ADA8;
  if (!qword_1EBD4ADA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD570958()
{
  result = sub_1BE049364();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD5709F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = sub_1BE04F6E4();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v67 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v69 = v64 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADC0);
  MEMORY[0x1EEE9AC00](v77, v9);
  v68 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v64 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADC8);
  MEMORY[0x1EEE9AC00](v73, v15);
  v17 = v64 - v16;
  v18 = sub_1BE04C744();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1BE04C734();
  v23 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v24);
  v26 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADD0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v80 = v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v79 = v64 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADD8);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v78 = v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v64 - v38;
  v40 = PKPassKitUIBundle();
  v75 = sub_1BE0515F4();
  *v39 = sub_1BE04F7C4();
  *(v39 + 1) = 0;
  v39[16] = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADE0);
  sub_1BD57123C(a1, &v39[*(v41 + 44)]);
  v42 = type metadata accessor for ACHCredentialRow();
  v43 = *(v42 + 24);
  v72 = a1;
  if (*(a1 + v43) == 1)
  {
    (*(v19 + 104))(v22, *MEMORY[0x1E69BC950], v18);
    sub_1BE04C724();
    v44 = v76;
    (*(v23 + 16))(v17, v26, v76);
    swift_storeEnumTagMultiPayload();
    sub_1BD571830(&qword_1EBD4ADE8, MEMORY[0x1E69BC938]);
    sub_1BD5717A4();
    v45 = v79;
    sub_1BE04F9A4();
    (*(v23 + 8))(v26, v44);
  }

  else
  {
    v46 = v42;
    v47 = sub_1BE051574();
    v64[1] = v47;
    v48 = sub_1BE0502D4();
    KeyPath = swift_getKeyPath();
    v50 = sub_1BE0511E4();
    v51 = swift_getKeyPath();
    v66 = v17;
    v65 = v14;
    v81 = v47;
    v82 = KeyPath;
    v83 = v48;
    v84 = v51;
    v85 = v50;
    v52 = v67;
    sub_1BE04F6B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170);
    sub_1BD0F1430();
    v53 = v69;
    sub_1BE050DA4();
    (*(v70 + 8))(v52, v71);

    if (*(v72 + *(v46 + 20)))
    {
      v54 = 1.0;
    }

    else
    {
      v54 = 0.0;
    }

    v55 = v68;
    sub_1BD0DE204(v53, v68, &qword_1EBD38BA8);
    *(v55 + *(v77 + 36)) = v54;
    v56 = v65;
    sub_1BD0DE204(v55, v65, &qword_1EBD4ADC0);
    sub_1BD0DE19C(v56, v66, &qword_1EBD4ADC0);
    swift_storeEnumTagMultiPayload();
    sub_1BD571830(&qword_1EBD4ADE8, MEMORY[0x1E69BC938]);
    sub_1BD5717A4();
    v45 = v79;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v56, &qword_1EBD4ADC0);
  }

  v57 = v78;
  sub_1BD0DE19C(v39, v78, &qword_1EBD4ADD8);
  v58 = v80;
  sub_1BD0DE19C(v45, v80, &qword_1EBD4ADD0);
  v59 = v39;
  v60 = v74;
  *v74 = v75;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADF8);
  sub_1BD0DE19C(v57, v60 + v61[12], &qword_1EBD4ADD8);
  v62 = v60 + v61[16];
  *v62 = 0;
  v62[8] = 1;
  sub_1BD0DE19C(v58, v60 + v61[20], &qword_1EBD4ADD0);
  sub_1BE048964();
  sub_1BD0DE53C(v45, &qword_1EBD4ADD0);
  sub_1BD0DE53C(v59, &qword_1EBD4ADD8);
  sub_1BD0DE53C(v58, &qword_1EBD4ADD0);
  sub_1BD0DE53C(v57, &qword_1EBD4ADD8);
}

uint64_t sub_1BD57123C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v65 = &v59 - v16;
  v17 = sub_1BE049344();
  if (v18)
  {
    v66 = v17;
    v67 = v18;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    v23 = v22;
    v60 = v3;
    v61 = a1;
    v24 = sub_1BE051464();
    v59 = v4;
    v66 = v24;
    v25 = sub_1BE050574();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_1BD0DDF10(v19, v21, v23 & 1);

    v66 = v25;
    v67 = v27;
    v68 = v29 & 1;
    v69 = v31;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v25, v27, v29 & 1);

    v32 = v10;
    v33 = v65;
    sub_1BD0DE204(v10, v65, &qword_1EBD452C0);
    (*(v59 + 56))(v33, 0, 1, v60);
  }

  else
  {
    (*(v4 + 56))(v65, 1, 1, v3);
    v32 = v10;
  }

  sub_1BE0492E4();
  v34 = _s9PassKitUI22BankCredentialListViewV8lastFour10fullNumberS2S_tFZ_0();
  v36 = v35;

  v66 = v34;
  v67 = v36;
  sub_1BD0DDEBC();
  v37 = sub_1BE0506C4();
  v39 = v38;
  LOBYTE(v36) = v40;
  v66 = sub_1BE051494();
  v41 = sub_1BE050574();
  v43 = v42;
  v45 = v44;
  sub_1BD0DDF10(v37, v39, v36 & 1);

  sub_1BE050454();
  v46 = sub_1BE0505F4();
  v48 = v47;
  LOBYTE(v39) = v49;
  v51 = v50;

  sub_1BD0DDF10(v41, v43, v45 & 1);

  v66 = v46;
  v67 = v48;
  v68 = v39 & 1;
  v69 = v51;
  sub_1BE052434();
  v52 = v32;
  sub_1BE050DE4();

  sub_1BD0DDF10(v46, v48, v39 & 1);

  v53 = v65;
  v54 = v62;
  sub_1BD0DE19C(v65, v62, &unk_1EBD5BB60);
  v55 = v63;
  sub_1BD0DE19C(v32, v63, &qword_1EBD452C0);
  v56 = v64;
  sub_1BD0DE19C(v54, v64, &unk_1EBD5BB60);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE00);
  sub_1BD0DE19C(v55, v56 + *(v57 + 48), &qword_1EBD452C0);
  sub_1BD0DE53C(v52, &qword_1EBD452C0);
  sub_1BD0DE53C(v53, &unk_1EBD5BB60);
  sub_1BD0DE53C(v55, &qword_1EBD452C0);
  return sub_1BD0DE53C(v54, &unk_1EBD5BB60);
}

uint64_t sub_1BD571750@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADB8);
  return sub_1BD5709F0(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_1BD5717A4()
{
  result = qword_1EBD4ADF0;
  if (!qword_1EBD4ADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ADC0);
    sub_1BD0F13A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ADF0);
  }

  return result;
}

uint64_t sub_1BD571830(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD571878()
{
  v0 = objc_allocWithZone(type metadata accessor for FundingSourcesModel(0));

  return [v0 init];
}

uint64_t sub_1BD5718B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE20);
  MEMORY[0x1EEE9AC00](v56, v3);
  v5 = v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE28);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v62 = v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE30);
  v11 = *(v10 - 8);
  v59 = v10;
  v60 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v63 = v54 - v13;
  *v5 = sub_1BE04F7B4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE38) + 44);
  *v70 = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE40);
  sub_1BE0516C4();
  *v70 = *&v67[0];
  *&v70[8] = *(v67 + 8);
  v64 = v1;
  v54[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE40);
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE48);
  sub_1BD0DE4F4(&qword_1EBD4AE50, &qword_1EBD3AE40);
  sub_1BD0DE4F4(&qword_1EBD4AE58, &qword_1EBD3AE40);
  sub_1BD0DE4F4(&qword_1EBD4AE60, &qword_1EBD3AE40);
  v14 = type metadata accessor for CurrencyAmountPickerView(255);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE68);
  v16 = sub_1BD573CC0(&qword_1EBD4AE70, type metadata accessor for CurrencyAmountPickerView);
  v17 = sub_1BD5738F0();
  v18 = sub_1BD573944();
  *&v67[0] = v14;
  *(&v67[0] + 1) = &type metadata for CurrencyAmountPickerView.Step;
  *&v67[1] = v15;
  *(&v67[1] + 1) = v16;
  v68 = v17;
  v69 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1BE04EBF4();
  v71[0] = *v2;
  *v70 = *(&v71[0] + 1);
  v19 = swift_allocObject();
  v20 = *(v2 + 112);
  *(v19 + 112) = *(v2 + 96);
  *(v19 + 128) = v20;
  *(v19 + 144) = *(v2 + 128);
  *(v19 + 160) = *(v2 + 144);
  v21 = *(v2 + 48);
  *(v19 + 48) = *(v2 + 32);
  *(v19 + 64) = v21;
  v22 = *(v2 + 80);
  *(v19 + 80) = *(v2 + 64);
  *(v19 + 96) = v22;
  v23 = *(v2 + 16);
  *(v19 + 16) = *v2;
  *(v19 + 32) = v23;
  sub_1BD0DE19C(v71, v67, &qword_1EBD3AE38);
  sub_1BD182A34(v2, v67);
  v55 = type metadata accessor for AccountModel();
  v24 = sub_1BD0DE4F4(&qword_1EBD4AE88, &qword_1EBD4AE20);
  v25 = sub_1BD573CC0(&qword_1EBD4AE90, type metadata accessor for AccountModel);
  v26 = v56;
  sub_1BE051064();

  sub_1BD0DE53C(v71, &qword_1EBD3AE38);
  sub_1BD086900(v5);
  type metadata accessor for FundingSourcesModel(0);
  sub_1BD573CC0(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel);
  v27 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *v70 = *&v67[0];
  v28 = swift_allocObject();
  v29 = *(v2 + 112);
  *(v28 + 112) = *(v2 + 96);
  *(v28 + 128) = v29;
  *(v28 + 144) = *(v2 + 128);
  *(v28 + 160) = *(v2 + 144);
  v30 = *(v2 + 48);
  *(v28 + 48) = *(v2 + 32);
  *(v28 + 64) = v30;
  v31 = *(v2 + 80);
  *(v28 + 80) = *(v2 + 64);
  *(v28 + 96) = v31;
  v32 = *(v2 + 16);
  *(v28 + 16) = *v2;
  *(v28 + 32) = v32;
  sub_1BD182A34(v2, v67);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE98);
  *&v67[0] = v26;
  *(&v67[0] + 1) = v55;
  *&v67[1] = v24;
  *(&v67[1] + 1) = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_1BD573A14();
  v36 = v62;
  v37 = v57;
  sub_1BE051064();

  (*(v58 + 8))(v36, v37);
  v38 = *(v2 + 104);
  v67[0] = *(v2 + 88);
  v67[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500);
  sub_1BE0516A4();
  v65 = *v70;
  v66 = *&v70[16];
  v39 = swift_allocObject();
  v40 = *(v2 + 112);
  *(v39 + 112) = *(v2 + 96);
  *(v39 + 128) = v40;
  *(v39 + 144) = *(v2 + 128);
  *(v39 + 160) = *(v2 + 144);
  v41 = *(v2 + 48);
  *(v39 + 48) = *(v2 + 32);
  *(v39 + 64) = v41;
  v42 = *(v2 + 80);
  *(v39 + 80) = *(v2 + 64);
  *(v39 + 96) = v42;
  v43 = *(v2 + 16);
  *(v39 + 16) = *v2;
  *(v39 + 32) = v43;
  sub_1BD182A34(v2, v67);
  type metadata accessor for Decimal(0);
  *&v67[0] = v37;
  *(&v67[0] + 1) = v33;
  *&v67[1] = OpaqueTypeConformance2;
  *(&v67[1] + 1) = v35;
  swift_getOpaqueTypeConformance2();
  sub_1BD573CC0(&qword_1EBD42530, type metadata accessor for Decimal);
  v44 = v61;
  v45 = v59;
  v46 = v63;
  sub_1BE051064();

  (*(v60 + 8))(v46, v45);
  v47 = swift_allocObject();
  v48 = *(v2 + 112);
  *(v47 + 112) = *(v2 + 96);
  *(v47 + 128) = v48;
  *(v47 + 144) = *(v2 + 128);
  *(v47 + 160) = *(v2 + 144);
  v49 = *(v2 + 48);
  *(v47 + 48) = *(v2 + 32);
  *(v47 + 64) = v49;
  v50 = *(v2 + 80);
  *(v47 + 80) = *(v2 + 64);
  *(v47 + 96) = v50;
  v51 = *(v2 + 16);
  *(v47 + 16) = *v2;
  *(v47 + 32) = v51;
  v52 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEC0) + 36));
  *v52 = sub_1BD573B54;
  v52[1] = v47;
  v52[2] = 0;
  v52[3] = 0;
  return sub_1BD182A34(v2, v67);
}

uint64_t sub_1BD572154(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BD5722F8(0, v5);
  v6 = swift_allocObject();
  v7 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a1 + 128);
  *(v6 + 160) = *(a1 + 144);
  v8 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v8;
  v9 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v9;
  v10 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v10;
  sub_1BD182A34(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE68);
  sub_1BD573CC0(&qword_1EBD4AE70, type metadata accessor for CurrencyAmountPickerView);
  sub_1BD5738F0();
  sub_1BD573944();
  sub_1BE050D64();

  return sub_1BD573B64(v5);
}

uint64_t sub_1BD5722F8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v72 = *v2;
  v7 = *(v2 + 48);
  v6 = *(v2 + 56);
  v70 = *(v2 + 64);
  v71 = v6;
  v8 = *(v2 + 104);
  v68 = *(v2 + 88);
  v69 = v8;
  v61 = *(&v72 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500);
  sub_1BE0516C4();
  type metadata accessor for FundingSourcesModel(0);
  sub_1BD573CC0(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel);
  v65 = sub_1BE04E3C4();
  v68 = *(v2 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60);
  sub_1BE0516A4();
  v63 = *(v2 + 80);
  v64 = *(v2 + 72);
  v9 = swift_allocObject();
  v10 = *(v3 + 112);
  *(v9 + 112) = *(v3 + 96);
  *(v9 + 128) = v10;
  *(v9 + 144) = *(v3 + 128);
  *(v9 + 160) = *(v3 + 144);
  v11 = *(v3 + 48);
  *(v9 + 48) = *(v3 + 32);
  *(v9 + 64) = v11;
  v12 = *(v3 + 80);
  *(v9 + 80) = *(v3 + 64);
  *(v9 + 96) = v12;
  v13 = *(v3 + 16);
  *(v9 + 16) = *v3;
  *(v9 + 32) = v13;
  v14 = swift_allocObject();
  v15 = *(v3 + 112);
  *(v14 + 112) = *(v3 + 96);
  *(v14 + 128) = v15;
  *(v14 + 144) = *(v3 + 128);
  *(v14 + 160) = *(v3 + 144);
  v16 = *(v3 + 48);
  *(v14 + 48) = *(v3 + 32);
  *(v14 + 64) = v16;
  v17 = *(v3 + 80);
  *(v14 + 80) = *(v3 + 64);
  *(v14 + 96) = v17;
  v18 = *(v3 + 16);
  *(v14 + 16) = *v3;
  *(v14 + 32) = v18;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD48);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for CurrencyAmountPickerView(0);
  v20 = v19[19];
  v60 = objc_opt_self();
  sub_1BD182A34(v3, &v68);
  sub_1BD182A34(v3, &v68);
  *(a2 + v20) = [v60 sharedService];
  v21 = a2 + v19[20];
  *v21 = sub_1BE04E274() & 1;
  *(v21 + 1) = v22;
  v21[16] = v23 & 1;
  v24 = a2 + v19[21];
  sub_1BE051694();
  v25 = *(&v68 + 1);
  *v24 = v68;
  *(v24 + 1) = v25;
  v26 = a2 + v19[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE051694();
  v27 = v69;
  *v26 = v68;
  *(v26 + 2) = v27;
  v28 = v19[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC88);
  sub_1BE051694();
  *(a2 + v28) = v68;
  v29 = a2 + v19[25];
  *v29 = sub_1BD791DB8;
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = a2 + v19[26];
  sub_1BE051694();
  v31 = *(&v68 + 1);
  *v30 = v68;
  *(v30 + 1) = v31;
  v32 = a2 + v19[27];
  sub_1BE051694();
  v33 = *(&v68 + 1);
  *v32 = v68;
  *(v32 + 1) = v33;
  v34 = a2 + v19[28];
  sub_1BE051694();
  v35 = *(&v68 + 1);
  *v34 = v68;
  *(v34 + 1) = v35;
  v36 = v19[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD40);
  sub_1BE051694();
  *(a2 + v36) = v68;
  v37 = v19[30];
  *(a2 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  *(a2 + v19[8]) = v7;
  *(a2 + v19[14]) = a1 & 1;
  v38 = (a2 + v19[5]);
  type metadata accessor for AccountModel();
  sub_1BD573CC0(&qword_1EBD3AE50, type metadata accessor for AccountModel);
  v62 = v61;
  *v38 = sub_1BE04E954();
  v38[1] = v39;
  v40 = v70;
  *(a2 + v19[9]) = v71;
  *(a2 + v19[10]) = v40;
  v41 = a2 + v19[22];
  v42 = v73[1];
  *v41 = v73[0];
  *(v41 + 1) = v42;
  *(v41 + 8) = v74;
  v43 = (a2 + v19[6]);
  sub_1BD0DE19C(&v71, &v68, &qword_1EBD4AEC8);
  sub_1BD0DE19C(&v70, &v68, &qword_1EBD496C8);
  sub_1BD0DE19C(v73, &v68, &unk_1EBD4EED0);
  v44 = v65;
  *v43 = sub_1BE04E954();
  v43[1] = v45;
  *(a2 + v19[15]) = v67;
  v46 = (a2 + v19[11]);
  *v46 = v64;
  v46[1] = v63;
  v47 = (a2 + v19[12]);
  *v47 = sub_1BD573C24;
  v47[1] = v9;
  v48 = (a2 + v19[13]);
  *v48 = sub_1BD573CB8;
  v48[1] = v14;
  type metadata accessor for AccountScheduleTransferModel();
  v49 = swift_allocObject();
  sub_1BD0DE19C(&v72, &v68, &qword_1EBD3AE38);
  v66 = v67;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v50 = [v60 sharedService];
  v49[5] = 0;
  v49[6] = 0;
  v49[4] = v50;
  swift_beginAccess();
  v51 = v62;
  v49[2] = sub_1BE04E954();
  v49[3] = v52;
  swift_endAccess();
  sub_1BD0DE53C(&v72, &qword_1EBD3AE38);
  *(a2 + v19[7]) = v49;
  v53 = a2 + v19[16];
  sub_1BE051694();
  v54 = *(&v68 + 1);
  *v53 = v68;
  *(v53 + 1) = v54;
  v55 = a2 + v19[17];
  sub_1BE051694();
  v56 = *(&v68 + 1);
  *v55 = v68;
  *(v55 + 1) = v56;
  v57 = a2 + v19[18];
  sub_1BE051694();

  sub_1BD0DE53C(v73, &unk_1EBD4EED0);
  result = sub_1BD0DE53C(&v72, &qword_1EBD3AE38);
  v59 = *(&v68 + 1);
  *v57 = v68;
  *(v57 + 1) = v59;
  return result;
}

uint64_t sub_1BD572A44@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CurrencyAmountPickerView(0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v5);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    v13 = v6;
    sub_1BD5722F8(1, v9);
    sub_1BD573BC0(v9, a2);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v11 = *(v6 + 56);

    return v11(a2, 1, 1, v4, v7);
  }
}

uint64_t sub_1BD572B8C()
{
  sub_1BD572D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60);
  return sub_1BE0516B4();
}

void sub_1BD572BE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = [*(v2 + 32) targetDevice];
    if (v4)
    {
      v5 = v4;
      if ([v4 respondsToSelector_] && (objc_msgSend(v5, sel_respondsToSelector_, sel_paymentWebService_deviceMetadataWithFields_completion_) & 1) != 0)
      {
        v11 = PKEdgeInsetsMake;
        v12 = 0;
        *&v8 = MEMORY[0x1E69E9820];
        *(&v8 + 1) = 1107296256;
        v9 = sub_1BD20815C;
        v10 = &block_descriptor_126;
        v6 = _Block_copy(&v8);
        swift_unknownObjectRetain();

        [v5 paymentWebService:v3 deviceMetadataWithFields:128 completion:v6];
        _Block_release(v6);
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v8 = *(a1 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60);
  sub_1BE0516A4();
  v7 = v13;
  if (v13)
  {
    sub_1BD85A4D8(v13);
  }
}

void sub_1BD572D70()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = v17;
  if (v17)
  {
    v3 = [v17 currencyCode];

    if (v3)
    {
      sub_1BE052434();
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  type metadata accessor for FundingSourcesModel(0);
  sub_1BD573CC0(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel);
  v5 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500);
  sub_1BE0516A4();
  v6 = sub_1BE053344();
  if (v2)
  {
    sub_1BE048C84();
    v7 = sub_1BE052404();
  }

  else
  {
    v7 = 0;
  }

  v8 = PKCurrencyAmountMake();

  if (v8)
  {

    v10 = v1[7];
    v9 = v1[8];
    v11 = v1[6];
    v12 = objc_allocWithZone(MEMORY[0x1E69B8410]);
    sub_1BD448C54();
    v13 = v17;
    v14 = sub_1BE052724();

    v15 = [v12 initWithAccount:v13 peerPaymentAccount:v10 peerPaymentPass:v9 transferType:v11 fundingSources:v14 currencyAmount:v8];

    if (v11 == 3)
    {
      if (v15)
      {
        [v15 setUseLocationBasedAuthorization_];
LABEL_14:
        v16 = v15;
        [v16 setUserWasShownAPCTransferSpeed_];
      }
    }

    else if (v15)
    {
      goto LABEL_14;
    }

    return;
  }

  __break(1u);
}

uint64_t sub_1BD5730C0(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = *(a1 + 128);
  v8 = v2;
  v9 = v1;
  v7[2] = v1;
  v7[3] = v2;
  sub_1BD0DE19C(&v9, v7, &qword_1EBD3AE40);
  sub_1BD0DE19C(&v8, v7, &qword_1EBD4AED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE40);
  sub_1BE0516A4();
  v3 = v7[4];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD1D925C(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1BD1D925C((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v3[v5 + 32] = 1;
  v7[0] = v1;
  v7[1] = v2;
  sub_1BE0516B4();
  sub_1BD0DE53C(&v9, &qword_1EBD3AE40);
  return sub_1BD0DE53C(&v8, &qword_1EBD4AED0);
}

uint64_t sub_1BD573214()
{
  sub_1BD572D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60);
  return sub_1BE0516B4();
}

uint64_t sub_1BD5732CC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD57334C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

id sub_1BD5733C4(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
    return sub_1BE048964();
  }
}

uint64_t destroy for CurrencyAmountPickerViewContainer(uint64_t a1)
{
  sub_1BD035CB4(*(a1 + 16), *(a1 + 24), *(a1 + 32));
}

uint64_t initializeWithCopy for CurrencyAmountPickerViewContainer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = v4;
  sub_1BD5733C4(v5, v6, v7);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v9 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v9;
  v10 = *(a2 + 56);
  *(a1 + 56) = v10;
  v11 = *(a2 + 80);
  v18 = *(a2 + 64);
  *(a1 + 64) = v18;
  *(a1 + 80) = v11;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v12;
  v13 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v13;
  *(a1 + 144) = *(a2 + 144);
  sub_1BE048964();
  v14 = v10;
  v15 = v18;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  v16 = v13;
  sub_1BE048964();
  return a1;
}

uint64_t assignWithCopy for CurrencyAmountPickerViewContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  sub_1BD5733C4(v7, v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_1BD035CB4(v10, v11, v12);
  *(a1 + 40) = *(a2 + 40);
  sub_1BE048964();

  *(a1 + 48) = *(a2 + 48);
  v13 = *(a1 + 56);
  v14 = *(a2 + 56);
  *(a1 + 56) = v14;
  v15 = v14;

  v16 = *(a1 + 64);
  v17 = *(a2 + 64);
  *(a1 + 64) = v17;
  v18 = v17;

  v19 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v19;
  sub_1BE048964();

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 112) = *(a2 + 112);
  sub_1BE048964();

  *(a1 + 120) = *(a2 + 120);
  sub_1BE048C84();

  *(a1 + 128) = *(a2 + 128);
  sub_1BE048964();

  v20 = *(a1 + 136);
  v21 = *(a2 + 136);
  *(a1 + 136) = v21;
  v22 = v21;

  *(a1 + 144) = *(a2 + 144);
  sub_1BE048964();

  return a1;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for CurrencyAmountPickerViewContainer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 32);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  sub_1BD035CB4(v7, v8, v9);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v10 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);

  *(a1 + 112) = *(a2 + 112);

  v11 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t getEnumTagSinglePayload for CurrencyAmountPickerViewContainer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t storeEnumTagSinglePayload for CurrencyAmountPickerViewContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD5738F0()
{
  result = qword_1EBD4AE78;
  if (!qword_1EBD4AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AE78);
  }

  return result;
}

unint64_t sub_1BD573944()
{
  result = qword_1EBD4AE80;
  if (!qword_1EBD4AE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE68);
    sub_1BD573CC0(&qword_1EBD4AE70, type metadata accessor for CurrencyAmountPickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AE80);
  }

  return result;
}

unint64_t sub_1BD573A14()
{
  result = qword_1EBD4AEA0;
  if (!qword_1EBD4AEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE98);
    sub_1BD573A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AEA0);
  }

  return result;
}

unint64_t sub_1BD573A98()
{
  result = qword_1EBD4AEA8;
  if (!qword_1EBD4AEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AEB0);
    sub_1BD573CC0(&qword_1EBD4AEB8, sub_1BD448C54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AEA8);
  }

  return result;
}

uint64_t sub_1BD573B64(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD573BC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrencyAmountPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_58()
{
  sub_1BD035CB4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1BD573CC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD573D08()
{
  result = qword_1EBD4AED8;
  if (!qword_1EBD4AED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AEC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE30);
    type metadata accessor for Decimal(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE20);
    type metadata accessor for AccountModel();
    sub_1BD0DE4F4(&qword_1EBD4AE88, &qword_1EBD4AE20);
    sub_1BD573CC0(&qword_1EBD4AE90, type metadata accessor for AccountModel);
    swift_getOpaqueTypeConformance2();
    sub_1BD573A14();
    swift_getOpaqueTypeConformance2();
    sub_1BD573CC0(&qword_1EBD42530, type metadata accessor for Decimal);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AED8);
  }

  return result;
}

uint64_t sub_1BD573F5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_1BE04FB94();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEE8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEF0);
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v51 = &v49 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEF8) - 8;
  MEMORY[0x1EEE9AC00](v60, v16);
  v61 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v53 = &v49 - v20;
  v21 = [objc_opt_self() systemGroupedBackgroundColor];
  v59 = sub_1BE0511C4();
  v58 = sub_1BE04EC54();
  v57 = sub_1BE0501D4();
  v63 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF00);
  sub_1BD5767A0();
  sub_1BE0504E4();
  v50 = v8;
  v11[*(v8 + 36)] = 1;
  sub_1BE04FB84();
  v22 = sub_1BD5768F0();
  v49 = v3;
  sub_1BE051144();
  (*(v4 + 8))(v7, v3);
  sub_1BD0DE53C(v11, &qword_1EBD4AEE8);
  v65 = *(a1 + 1);
  v66[0] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v23 = a1[1];
  v54 = *a1;
  v24 = a1[4];
  v25 = a1[5];
  v26 = swift_allocObject();
  v27 = *(a1 + 1);
  v26[1] = *a1;
  v26[2] = v27;
  v26[3] = *(a1 + 2);
  v52 = v23;
  sub_1BD0DE19C(v66, v64, &qword_1EBD54350);
  sub_1BD0D44B8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF48);
  v64[0] = v50;
  v64[1] = v49;
  v64[2] = v22;
  v64[3] = MEMORY[0x1E697C750];
  swift_getOpaqueTypeConformance2();
  sub_1BD5769B0();
  v28 = v53;
  v29 = v55;
  v30 = v51;
  sub_1BE050F64();

  (*(v56 + 8))(v30, v29);
  v31 = swift_allocObject();
  v32 = *(a1 + 1);
  *(v31 + 1) = *a1;
  *(v31 + 2) = v32;
  *(v31 + 3) = *(a1 + 2);
  v33 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF58) + 36));
  *v33 = sub_1BD576A6C;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  v34 = swift_allocObject();
  v35 = *(a1 + 1);
  v34[1] = *a1;
  v34[2] = v35;
  v34[3] = *(a1 + 2);
  v36 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF60) + 36));
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_1BD576A74;
  v36[3] = v34;
  v37 = v52;
  sub_1BD0DE19C(v66, v64, &qword_1EBD54350);
  sub_1BD0D44B8(v24);
  v38 = v37;
  sub_1BD0DE19C(v66, v64, &qword_1EBD54350);
  v39 = v24;
  sub_1BD0D44B8(v24);
  type metadata accessor for InStoreTopUpTokenModel();
  sub_1BD576DE4(&qword_1EBD40240, type metadata accessor for InStoreTopUpTokenModel);
  v40 = sub_1BE04E964();
  swift_getKeyPath();
  v41 = v28 + *(v60 + 44);
  sub_1BE04E974();

  v42 = (v41 + *(type metadata accessor for ErrorAlertModifier(0) + 20));
  *v42 = v39;
  v42[1] = v25;
  v43 = v61;
  sub_1BD0DE19C(v28, v61, &qword_1EBD4AEF8);
  v44 = v62;
  v45 = v58;
  *v62 = v59;
  v44[1] = v45;
  *(v44 + 16) = v57;
  v46 = v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF68);
  sub_1BD0DE19C(v43, v46 + *(v47 + 48), &qword_1EBD4AEF8);
  sub_1BD0D44B8(v39);
  sub_1BE048964();
  sub_1BD0DE53C(v28, &qword_1EBD4AEF8);
  sub_1BD0DE53C(v43, &qword_1EBD4AEF8);
}

uint64_t sub_1BD57467C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v20[0] = 0;
  *(&v20[0] + 1) = 0xE000000000000000;
  sub_1BE053834();

  *&v20[0] = 0xD000000000000016;
  *(&v20[0] + 1) = 0x80000001BE12EF40;
  v7 = sub_1BD85D55C();
  MEMORY[0x1BFB3F610](v7);

  (*(v3 + 104))(v6, *MEMORY[0x1E69B8060], v2);
  v8 = sub_1BE04B714();
  v10 = v9;

  (*(v3 + 8))(v6, v2);
  *&v20[0] = v8;
  *(&v20[0] + 1) = v10;
  sub_1BD0DDEBC();
  v22 = sub_1BE0506C4();
  v23 = v11;
  v24 = v12 & 1;
  v25 = v13;
  sub_1BD574904(v20);
  v17 = v20[0];
  v18 = v20[1];
  v19[0] = v21[0];
  *(v19 + 9) = *(v21 + 9);
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF28);
  sub_1BD0DE4F4(&qword_1EBD4AF10, &qword_1EBD4AF18);
  sub_1BD576864();
  return sub_1BE051A34();
}

double sub_1BD574904@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD576BB0(*&v4[0]);
  if (*&v4[0] >= 2uLL)
  {
    sub_1BD576398(v4);
  }

  sub_1BD10E4BC();
  sub_1BE04F9A4();
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 9);
  *(a1 + 41) = *(v5 + 9);
  return result;
}

void sub_1BD574A24(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF78);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v10 = sub_1BE052404();
  v11 = PKUIImageNamed(v10);

  if (v11)
  {
    v12 = sub_1BE051544();
    v13 = sub_1BE04F794();
    v18 = sub_1BE051424();
    v14 = sub_1BE0518D4();
    *v9 = sub_1BE04F504();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF80);
    sub_1BD574C6C(&v9[*(v15 + 44)]);
    v18 = sub_1BE051424();
    *&v9[*(v2 + 36)] = sub_1BE0518D4();
    sub_1BD0DE19C(v9, v5, &qword_1EBD4AF78);
    *a1 = v12;
    a1[1] = v13;
    a1[2] = sub_1BD574C64;
    a1[3] = 0;
    a1[4] = v14;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF88);
    sub_1BD0DE19C(v5, a1 + *(v16 + 48), &qword_1EBD4AF78);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE53C(v9, &qword_1EBD4AF78);
    sub_1BD0DE53C(v5, &qword_1EBD4AF78);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD574C6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF90);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - v8;
  *v9 = sub_1BE04F7B4();
  *(v9 + 1) = 0x4018000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF98);
  sub_1BD574DD8(&v9[*(v10 + 44)]);
  sub_1BD0DE19C(v9, v5, &qword_1EBD4AF90);
  *a1 = 0;
  *(a1 + 8) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFA0);
  sub_1BD0DE19C(v5, a1 + *(v11 + 48), &qword_1EBD4AF90);
  v12 = a1 + *(v11 + 64);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_1BD0DE53C(v9, &qword_1EBD4AF90);
  return sub_1BD0DE53C(v5, &qword_1EBD4AF90);
}

uint64_t sub_1BD574DD8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFA8);
  MEMORY[0x1EEE9AC00](v23, v1);
  v3 = (&v20 - v2);
  v4 = sub_1BE04FEB4();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFB0);
  MEMORY[0x1EEE9AC00](v22, v12);
  v14 = &v20 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = v26;
  if (v26 >= 2)
  {
    sub_1BD575294(v26, BYTE8(v26) & 1, BYTE9(v26) & 1, &v26);
    v19 = v27;
    *v3 = v26;
    v3[1] = v19;
    v3[2] = v28[0];
    *(v3 + 44) = *(v28 + 12);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE19C(&v26, v25, &qword_1EBD4AFB8);
    sub_1BD0DE19C(&v26, v25, &qword_1EBD4AFB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFB8);
    sub_1BD576C98();
    sub_1BD576E2C();
    sub_1BE04F9A4();
    sub_1BD576BB0(v15);
    sub_1BD0DE53C(&v26, &qword_1EBD4AFB8);
    return sub_1BD0DE53C(&v26, &qword_1EBD4AFB8);
  }

  else
  {
    sub_1BE04E4F4();
    sub_1BE04FEA4();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD576DE4(&qword_1EBD4A670, MEMORY[0x1E697C9C8]);
    sub_1BE050804();
    (*(v21 + 8))(v7, v4);
    (*(v20 + 8))(v11, v8);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v16 = &v14[*(v22 + 36)];
    v17 = v27;
    *v16 = v26;
    *(v16 + 1) = v17;
    *(v16 + 2) = v28[0];
    sub_1BD0DE19C(v14, v3, &qword_1EBD4AFB0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFB8);
    sub_1BD576C98();
    sub_1BD576E2C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v14, &qword_1EBD4AFB0);
  }
}

__n128 sub_1BD575294@<Q0>(void *a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, _OWORD *a4@<X8>)
{
  v52 = a4;
  v7 = sub_1BE051384();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BD85D214();
  if (v15)
  {
    v51 = a3 & 1u | ((a2 & 1) == 0);
    v47 = v15;
    if (a3)
    {
      v16 = v15;
      (*(v11 + 104))(v14, *MEMORY[0x1E69B8060], v10);
      v17 = v16;
      v18 = sub_1BE04B714();
      v20 = v19;
      (*(v11 + 8))(v14, v10);
    }

    else
    {
      v21 = v15;
      v22 = [a1 displayableToken];
      v18 = sub_1BE052434();
      v20 = v23;
    }

    *&v73 = v18;
    *(&v73 + 1) = v20;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    v28 = v27;
    sub_1BE050454();
    v29 = sub_1BE0505F4();
    v31 = v30;
    v33 = v32;

    sub_1BD0DDF10(v24, v26, v28 & 1);

    if (v51)
    {
      (*(v49 + 104))(v48, *MEMORY[0x1E69814D8], v50);
      sub_1BE0514B4();
    }

    else
    {
      sub_1BE0513F4();
    }

    v34 = sub_1BE050564();
    v36 = v35;
    v38 = v37;
    v40 = v39;

    sub_1BD0DDF10(v29, v31, v33 & 1);

    KeyPath = swift_getKeyPath();
    v69 = v38 & 1;
    *&v53 = v34;
    *(&v53 + 1) = v36;
    LOBYTE(v54[0]) = v38 & 1;
    *(v54 + 1) = *v68;
    DWORD1(v54[0]) = *&v68[3];
    *(&v54[0] + 1) = v40;
    *&v54[1] = KeyPath;
    WORD4(v54[1]) = 257;
    BYTE10(v54[1]) = 1;
    *(v56 + 11) = *(v54 + 11);
    v55[1] = v53;
    v56[0] = v54[0];
    *&v55[0] = v47;
    *(&v55[0] + 1) = v51;
    *(v67 + 11) = *(v56 + 11);
    v66 = v53;
    v67[0] = v54[0];
    v65 = v55[0];
    v57[0] = v34;
    v57[1] = v36;
    v58 = v38 & 1;
    *&v59[3] = *&v68[3];
    *v59 = *v68;
    v60 = v40;
    v61 = KeyPath;
    v62 = 257;
    v63 = 1;
    v42 = v47;
    sub_1BD0DE19C(&v53, &v73, &qword_1EBD4AFF0);
    sub_1BD0DE53C(v57, &qword_1EBD4AFF0);

    v64 = 0;
    v73 = v65;
    v74 = v66;
    *v75 = v67[0];
    *&v75[11] = *(v67 + 11);
    v75[27] = 0;
    sub_1BD0DE19C(v55, &v70, &qword_1EBD4AFF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFE8);
    sub_1BD0DE4F4(&qword_1EBD4AFD0, &qword_1EBD4AFD8);
    sub_1BD0DE4F4(&qword_1EBD4AFE0, &qword_1EBD4AFE8);
    sub_1BE04F9A4();

    sub_1BD0DE53C(v55, &qword_1EBD4AFF8);
    v73 = v70;
    v74 = v71;
    *v75 = *v72;
    *&v75[12] = *&v72[12];
  }

  else
  {
    sub_1BD575E44(&v73);
    LOBYTE(v65) = v75[8];
    LOBYTE(v55[0]) = 1;
    v70 = v73;
    v71 = v74;
    *v72 = *v75;
    v72[8] = v75[8];
    *&v72[16] = *&v75[16];
    v72[27] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFE8);
    sub_1BD0DE4F4(&qword_1EBD4AFD0, &qword_1EBD4AFD8);
    sub_1BD0DE4F4(&qword_1EBD4AFE0, &qword_1EBD4AFE8);
    sub_1BE04F9A4();
  }

  v43 = v74;
  v44 = v52;
  *v52 = v73;
  v44[1] = v43;
  v44[2] = *v75;
  result = *&v75[12];
  *(v44 + 44) = *&v75[12];
  return result;
}

uint64_t sub_1BD5758B0@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = type metadata accessor for SafariViewController();
  MEMORY[0x1EEE9AC00](v20, v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF70);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - v6;
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v20 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v17 = v22;
  if (v22 >= 2)
  {
    v19 = [v22 termsURL];
    sub_1BD576BB0(v17);
    sub_1BE04A9F4();

    (*(v9 + 32))(v16, v12, v8);
    (*(v9 + 16))(v3, v16, v8);
    sub_1BD576BD0(v3, v7);
    swift_storeEnumTagMultiPayload();
    sub_1BD576DE4(&qword_1EBD394A8, type metadata accessor for SafariViewController);
    sub_1BE04F9A4();
    sub_1BD576C34(v3);
    return (*(v9 + 8))(v16, v8);
  }

  else
  {
    sub_1BD576BB0(v22);
    swift_storeEnumTagMultiPayload();
    sub_1BD576DE4(&qword_1EBD394A8, type metadata accessor for SafariViewController);
    return sub_1BE04F9A4();
  }
}

void sub_1BD575C08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v0 > 1)
  {
    sub_1BD576BB0(v0);
    sub_1BD85C36C();
  }

  else
  {
    sub_1BD85D6DC();
  }
}

uint64_t sub_1BD575C9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD575D18(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  sub_1BD0DE19C(a1, &v15 - v10, &qword_1EBD416C0);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v11, v7, &qword_1EBD416C0);
  v13 = v12;
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v11, &qword_1EBD416C0);
}

uint64_t sub_1BD575E44@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v49 = &v43 - v4;
  v47 = sub_1BE050474();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v43 - v15;
  sub_1BE051574();
  sub_1BE04F7F4();
  v17 = sub_1BE04F824();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v48 = sub_1BE0515B4();

  sub_1BD0DE53C(v16, &qword_1EBD41F00);
  v46 = sub_1BE050294();
  KeyPath = swift_getKeyPath();
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1BE053834();

  v50 = 0xD000000000000019;
  v51 = 0x80000001BE12EFA0;
  v18 = sub_1BD85D55C();
  MEMORY[0x1BFB3F610](v18);

  (*(v9 + 104))(v12, *MEMORY[0x1E69B8060], v8);
  v19 = sub_1BE04B714();
  v21 = v20;

  (*(v9 + 8))(v12, v8);
  v50 = v19;
  v51 = v21;
  sub_1BD0DDEBC();
  v22 = sub_1BE0506C4();
  v24 = v23;
  v26 = v25;
  v27 = v45;
  v28 = v47;
  (*(v45 + 104))(v7, *MEMORY[0x1E6980F20], v47);
  v29 = sub_1BE050354();
  v30 = v49;
  (*(*(v29 - 8) + 56))(v49, 1, 1, v29);
  sub_1BE0503C4();
  sub_1BD0DE53C(v30, &qword_1EBD49130);
  (*(v27 + 8))(v7, v28);
  v31 = sub_1BE0505F4();
  v33 = v32;
  LOBYTE(v28) = v34;

  sub_1BD0DDF10(v22, v24, v26 & 1);

  sub_1BE0513B4();
  v35 = sub_1BE050564();
  v37 = v36;
  LOBYTE(v21) = v38;
  v40 = v39;

  sub_1BD0DDF10(v31, v33, v28 & 1);

  v41 = KeyPath;
  *a1 = v48;
  *(a1 + 8) = v41;
  *(a1 + 16) = v46;
  *(a1 + 24) = v35;
  *(a1 + 32) = v37;
  *(a1 + 40) = v21 & 1;
  *(a1 + 48) = v40;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D7F18(v35, v37, v21 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v35, v37, v21 & 1);
}

void sub_1BD576398(void *a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v29 = 0xE000000000000000;
  sub_1BE053834();

  aBlock = 0xD000000000000016;
  v29 = 0x80000001BE12EFC0;
  v36 = *v1;
  v8 = sub_1BD85D55C();
  MEMORY[0x1BFB3F610](v8);

  v9 = *MEMORY[0x1E69B8060];
  v10 = *(v4 + 104);
  v10(v7, v9, v3);
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1BE04B714();
  v25 = v13;
  v26 = v12;

  v14 = *(v4 + 8);
  v14(v7, v3);
  v10(v7, v9, v3);
  sub_1BE04B714();
  v14(v7, v3);
  v34 = v11;
  v35 = v2[1];
  v15 = *(v2 + 4);
  v16 = swift_allocObject();
  v17 = v2[1];
  v16[1] = *v2;
  v16[2] = v17;
  v16[3] = v2[2];
  v18 = objc_allocWithZone(PKTextRangeHyperlink);
  sub_1BD0DE19C(&v36, &aBlock, &qword_1EBD4B000);
  sub_1BD0DE19C(&v35, &aBlock, &qword_1EBD54350);
  sub_1BD0D44B8(v15);
  v19 = sub_1BE052404();

  v32 = sub_1BD576F5C;
  v33 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1BD126964;
  v31 = &block_descriptor_127;
  v20 = _Block_copy(&aBlock);

  v21 = [v18 initWithLinkText:v19 action:v20];
  _Block_release(v20);

  if (v21)
  {
    v22 = v21;
    MEMORY[0x1BFB3F7A0]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v11 = v34;
  }

  v23 = v27;
  *v27 = v11;
  v23[1] = 4;
  *(v23 + 16) = 0;
  v24 = v25;
  v23[3] = v26;
  v23[4] = v24;
  v23[5] = 0;
  v23[6] = 0;
}

uint64_t sub_1BD576734@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = v1[2];
  *a1 = sub_1BE051CD4();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEE0);
  return sub_1BD573F5C(v7, (a1 + *(v5 + 44)));
}

unint64_t sub_1BD5767A0()
{
  result = qword_1EBD4AF08;
  if (!qword_1EBD4AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AF00);
    sub_1BD0DE4F4(&qword_1EBD4AF10, &qword_1EBD4AF18);
    sub_1BD576864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AF08);
  }

  return result;
}

unint64_t sub_1BD576864()
{
  result = qword_1EBD4AF20;
  if (!qword_1EBD4AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AF28);
    sub_1BD10E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AF20);
  }

  return result;
}

unint64_t sub_1BD5768F0()
{
  result = qword_1EBD4AF30;
  if (!qword_1EBD4AF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AEE8);
    sub_1BD0DE4F4(&qword_1EBD4AF38, &qword_1EBD4AF40);
    sub_1BD389FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AF30);
  }

  return result;
}

unint64_t sub_1BD5769B0()
{
  result = qword_1EBD4AF50;
  if (!qword_1EBD4AF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AF48);
    sub_1BD576DE4(&qword_1EBD394A8, type metadata accessor for SafariViewController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AF50);
  }

  return result;
}

uint64_t sub_1BD576A98@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1BD576B20(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_1BD576BC0(v2);
  return sub_1BE04D8C4();
}

void sub_1BD576BB0(id a1)
{
  if (a1 >= 2)
  {
  }
}

id sub_1BD576BC0(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1BD576BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafariViewController();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD576C34(uint64_t a1)
{
  v2 = type metadata accessor for SafariViewController();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD576C98()
{
  result = qword_1EBD4AFC0;
  if (!qword_1EBD4AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AFB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51330);
    sub_1BE04FEB4();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD576DE4(&qword_1EBD4A670, MEMORY[0x1E697C9C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AFC0);
  }

  return result;
}

uint64_t sub_1BD576DE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD576E2C()
{
  result = qword_1EBD4AFC8;
  if (!qword_1EBD4AFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AFB8);
    sub_1BD0DE4F4(&qword_1EBD4AFD0, &qword_1EBD4AFD8);
    sub_1BD0DE4F4(&qword_1EBD4AFE0, &qword_1EBD4AFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AFC8);
  }

  return result;
}

uint64_t objectdestroyTm_59()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD576FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE050454();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B018);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B020) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = sub_1BE051234();
  v9 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B028);
  v11 = (a2 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

unint64_t sub_1BD5770C4()
{
  result = qword_1EBD4B030;
  if (!qword_1EBD4B030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B028);
    sub_1BD57717C();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B030);
  }

  return result;
}

unint64_t sub_1BD57717C()
{
  result = qword_1EBD4B038;
  if (!qword_1EBD4B038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B020);
    sub_1BD0DE4F4(&qword_1EBD4B040, &qword_1EBD4B018);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B038);
  }

  return result;
}

uint64_t type metadata accessor for AdditionalInfoView()
{
  result = qword_1EBD4B048;
  if (!qword_1EBD4B048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5772D4()
{
  result = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1BD57735C@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v93 = sub_1BE04BD74();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v1);
  v90 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B058);
  MEMORY[0x1EEE9AC00](v96, v3);
  v97 = (&v87 - v4);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B060);
  MEMORY[0x1EEE9AC00](v106, v5);
  v98 = &v87 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B068);
  MEMORY[0x1EEE9AC00](v95, v7);
  v94 = &v87 - v8;
  v9 = type metadata accessor for PassEligibleRewardsInfo();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v89 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v91 = &v87 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B070);
  MEMORY[0x1EEE9AC00](v110, v15);
  v111 = (&v87 - v16);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B078);
  MEMORY[0x1EEE9AC00](v103, v17);
  v105 = &v87 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B080);
  MEMORY[0x1EEE9AC00](v102, v19);
  v101 = (&v87 - v20);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B088);
  MEMORY[0x1EEE9AC00](v104, v21);
  v100 = &v87 - v22;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B090);
  MEMORY[0x1EEE9AC00](v109, v23);
  v107 = &v87 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v99 = &v87 - v27;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B098);
  MEMORY[0x1EEE9AC00](v88, v28);
  v30 = &v87 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B0A0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&v87 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B0A8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v87 - v37;
  v39 = type metadata accessor for PeerPaymentModel();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD5788F4(v108, v47, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v95 = v40;
    v96 = v31;
    v97 = v34;
    v64 = v99;
    v108 = v35;
    v98 = v38;
    v65 = v101;
    v66 = v100;
    if (EnumCaseMultiPayload)
    {
      v84 = *(v47 + 2);
      v85 = *(v47 + 3);
      *v101 = *v47;
      *(v65 + 16) = v84;
      *(v65 + 24) = v85;
      swift_storeEnumTagMultiPayload();
      sub_1BD578444();
      sub_1BD57865C();
      sub_1BE04F9A4();
      v61 = &qword_1EBD4B088;
      sub_1BD0DE19C(v66, v105, &qword_1EBD4B088);
      swift_storeEnumTagMultiPayload();
      sub_1BD5783B8();
      sub_1BD5786B0();
      v62 = v107;
      sub_1BE04F9A4();
      v63 = v66;
      goto LABEL_13;
    }

    sub_1BD57888C(v47, v43, type metadata accessor for PeerPaymentModel);
    v67 = &v43[*(v39 + 24)];
    v68 = *v67;
    v69 = *(v67 + 2);
    v70 = *(v67 + 3);
    v71 = *(v67 + 4);
    v119 = *(v67 + 3);
    v120 = v71;
    v118 = *(v67 + 2);
    if (v68 == 1 || !v70)
    {
      sub_1BD5788F4(v43, v64, type metadata accessor for PeerPaymentModel);
      (*(v95 + 56))(v64, 0, 1, v39);
      sub_1BD6D4050(v64, v30);
      sub_1BD0DE19C(v30, v97, &qword_1EBD4B098);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B0D0);
      sub_1BD5784D0();
      sub_1BD5785A8();
      v74 = v98;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v30, &qword_1EBD4B098);
    }

    else
    {
      v72 = v97;
      *v97 = v69;
      v72[1] = v70;
      v73 = *(v67 + 3);
      *(v72 + 1) = *(v67 + 2);
      *(v72 + 2) = v73;
      *(v72 + 3) = *(v67 + 4);
      swift_storeEnumTagMultiPayload();
      v114[0] = v69;
      v114[1] = v70;
      v115 = v118;
      v116 = v119;
      v117 = v120;
      sub_1BD5789BC(v114, v113);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B0D0);
      sub_1BD5784D0();
      sub_1BD5785A8();
      v74 = v98;
      sub_1BE04F9A4();
    }

    sub_1BD0DE19C(v74, v65, &qword_1EBD4B0A8);
    swift_storeEnumTagMultiPayload();
    sub_1BD578444();
    sub_1BD57865C();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v66, v105, &qword_1EBD4B088);
    swift_storeEnumTagMultiPayload();
    sub_1BD5783B8();
    sub_1BD5786B0();
    v86 = v107;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v66, &qword_1EBD4B088);
    sub_1BD0DE19C(v86, v111, &qword_1EBD4B090);
    swift_storeEnumTagMultiPayload();
    sub_1BD57832C();
    sub_1BD578838();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v86, &qword_1EBD4B090);
    sub_1BD0DE53C(v74, &qword_1EBD4B0A8);
    v81 = type metadata accessor for PeerPaymentModel;
    v80 = v43;
    return sub_1BD57895C(v80, v81);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v75 = v91;
    sub_1BD57888C(v47, v91, type metadata accessor for PassEligibleRewardsInfo);
    v76 = v89;
    sub_1BD5788F4(v75, v89, type metadata accessor for PassEligibleRewardsInfo);
    v77 = v94;
    sub_1BD38BA78(v76, v94);
    sub_1BD0DE19C(v77, v97, &qword_1EBD4B068);
    swift_storeEnumTagMultiPayload();
    sub_1BD57873C();
    sub_1BD2EE288();
    v78 = v98;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v78, v105, &qword_1EBD4B060);
    swift_storeEnumTagMultiPayload();
    sub_1BD5783B8();
    sub_1BD5786B0();
    v79 = v107;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v78, &qword_1EBD4B060);
    sub_1BD0DE19C(v79, v111, &qword_1EBD4B090);
    swift_storeEnumTagMultiPayload();
    sub_1BD57832C();
    sub_1BD578838();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v79, &qword_1EBD4B090);
    sub_1BD0DE53C(v77, &qword_1EBD4B068);
    v80 = v75;
    v81 = type metadata accessor for PassEligibleRewardsInfo;
    return sub_1BD57895C(v80, v81);
  }

  if (EnumCaseMultiPayload != 3)
  {
    v82 = *(v47 + 2);
    v83 = v111;
    *v111 = *v47;
    *(v83 + 2) = v82;
    swift_storeEnumTagMultiPayload();
    sub_1BD57832C();
    sub_1BD578838();
    return sub_1BE04F9A4();
  }

  v49 = *v47;
  v50 = *(v47 + 1);
  v51 = v92;
  v52 = v90;
  v53 = v93;
  (*(v92 + 104))(v90, *MEMORY[0x1E69B8070], v93);
  result = PKPassKitBundle();
  if (result)
  {
    v55 = result;
    v56 = sub_1BE04B6F4();
    v58 = v57;

    (*(v51 + 8))(v52, v53);
    v59 = v97;
    *v97 = v56;
    v59[1] = v58;
    v59[2] = v49;
    v59[3] = v50;
    swift_storeEnumTagMultiPayload();
    sub_1BD57873C();
    sub_1BD2EE288();
    v60 = v98;
    sub_1BE04F9A4();
    v61 = &qword_1EBD4B060;
    sub_1BD0DE19C(v60, v105, &qword_1EBD4B060);
    swift_storeEnumTagMultiPayload();
    sub_1BD5783B8();
    sub_1BD5786B0();
    v62 = v107;
    sub_1BE04F9A4();
    v63 = v60;
LABEL_13:
    sub_1BD0DE53C(v63, v61);
    sub_1BD0DE19C(v62, v111, &qword_1EBD4B090);
    swift_storeEnumTagMultiPayload();
    sub_1BD57832C();
    sub_1BD578838();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v62, &qword_1EBD4B090);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD57832C()
{
  result = qword_1EBD4B0B0;
  if (!qword_1EBD4B0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B090);
    sub_1BD5783B8();
    sub_1BD5786B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0B0);
  }

  return result;
}

unint64_t sub_1BD5783B8()
{
  result = qword_1EBD4B0B8;
  if (!qword_1EBD4B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B088);
    sub_1BD578444();
    sub_1BD57865C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0B8);
  }

  return result;
}

unint64_t sub_1BD578444()
{
  result = qword_1EBD4B0C0;
  if (!qword_1EBD4B0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B0A8);
    sub_1BD5784D0();
    sub_1BD5785A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0C0);
  }

  return result;
}

unint64_t sub_1BD5784D0()
{
  result = qword_1EBD4B0C8;
  if (!qword_1EBD4B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B0D0);
    sub_1BD578554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0C8);
  }

  return result;
}

unint64_t sub_1BD578554()
{
  result = qword_1EBD4B0D8;
  if (!qword_1EBD4B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0D8);
  }

  return result;
}

unint64_t sub_1BD5785A8()
{
  result = qword_1EBD4B0E0;
  if (!qword_1EBD4B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B098);
    sub_1BD5787F0(&qword_1EBD4B0E8, type metadata accessor for CashPromotionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0E0);
  }

  return result;
}

unint64_t sub_1BD57865C()
{
  result = qword_1EBD4B0F0;
  if (!qword_1EBD4B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0F0);
  }

  return result;
}

unint64_t sub_1BD5786B0()
{
  result = qword_1EBD4B0F8;
  if (!qword_1EBD4B0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B060);
    sub_1BD57873C();
    sub_1BD2EE288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0F8);
  }

  return result;
}

unint64_t sub_1BD57873C()
{
  result = qword_1EBD4B100;
  if (!qword_1EBD4B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B068);
    sub_1BD5787F0(&qword_1EBD4B108, type metadata accessor for AppleCardRewardsInfoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B100);
  }

  return result;
}

uint64_t sub_1BD5787F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD578838()
{
  result = qword_1EBD4B110;
  if (!qword_1EBD4B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B110);
  }

  return result;
}

uint64_t sub_1BD57888C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5788F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD57895C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD578A18()
{
  result = qword_1EBD4B118;
  if (!qword_1EBD4B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B120);
    sub_1BD57832C();
    sub_1BD578838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B118);
  }

  return result;
}

uint64_t type metadata accessor for PassEligibleRewardsInfo()
{
  result = qword_1EBD365E8;
  if (!qword_1EBD365E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD578B18()
{
  sub_1BD578BC4();
  if (v0 <= 0x3F)
  {
    sub_1BD578C14();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PKPaymentAuthorizationFundingMode(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD578BC4()
{
  if (!qword_1EBD4B128)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4B128);
    }
  }
}

void sub_1BD578C14()
{
  if (!qword_1EBD36A40)
  {
    sub_1BE04AF64();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD36A40);
    }
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BD578C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_1BD578CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_1BD578D58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a3;
  v135 = a1;
  v129 = sub_1BE04AF64();
  v130 = *(v129 - 8);
  v5 = MEMORY[0x1EEE9AC00](v129, v4);
  v121 = &v116[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v126 = &v116[-v9];
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v116[-v12];
  MEMORY[0x1EEE9AC00](v11, v14);
  *&v123 = &v116[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v122 = &v116[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v116[-v22];
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v128 = &v116[-v26];
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v131 = &v116[-v29];
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v116[-v32];
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v116[-v36];
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v116[-v40];
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v116[-v43];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v127 = &v116[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v47, v49);
  *&v124 = &v116[-v50];
  v51 = type metadata accessor for PassEligibleRewardsInfo();
  v132 = *(v51 - 8);
  v133 = v51;
  v53 = MEMORY[0x1EEE9AC00](v51, v52);
  v55 = &v116[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = MEMORY[0x1EEE9AC00](v53, v56);
  v59 = &v116[-v58];
  MEMORY[0x1EEE9AC00](v57, v60);
  v125 = &v116[-v61];
  v136 = a2;
  result = [a2 paymentRequest];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v63 = result;
  v64 = [result requestType];

  if (!v64)
  {
    v68 = v135;
    v69 = WrappedPass.secureElementPass.getter();
    if (!v69)
    {
      v65 = v68;
      goto LABEL_4;
    }

    v70 = v69;
    if (([v69 isAppleCardPass] & 1) == 0)
    {
      sub_1BD0E8E44(v68);

      goto LABEL_5;
    }

    v120 = v70;
    v71 = [v70 paymentPass];
    v72 = [v136 enhancedMerchantInfoForPass_];

    if (v72)
    {
      sub_1BD57B078(v137);
      v123 = v137[1];
      v124 = v137[0];
      v119 = v138;
      v118 = v139;
      v117 = v140;
      sub_1BD579A5C(v141);
      v73 = [v72 paymentSheetOverrideStart];
      if (v73)
      {
        v74 = v131;
        v75 = v73;
        sub_1BE04AEE4();

        v76 = v130;
        v77 = v130[7];
        v78 = v74;
        v79 = 0;
      }

      else
      {
        v76 = v130;
        v78 = v131;
        v77 = v130[7];
        v79 = 1;
      }

      v84 = v129;
      v77(v78, v79, 1, v129);
      v85 = v136;
      v86 = v128;
      v87 = [v72 paymentSheetOverrideEnd];
      if (v87)
      {
        v88 = v87;
        sub_1BE04AEE4();

        v89 = 0;
      }

      else
      {
        v89 = 1;
      }

      v77(v86, v89, 1, v84);
      v90 = [v85 fundingMode];
      sub_1BD0DE19C(v131, v23, &unk_1EBD39970);
      v91 = v76[6];
      if (v91(v23, 1, v84) == 1)
      {

        sub_1BD0E8E44(v135);
      }

      else
      {
        v129 = v90;
        v92 = v76[4];
        v92(v126, v23, v84);
        v23 = v122;
        sub_1BD0DE19C(v86, v122, &unk_1EBD39970);
        if (v91(v23, 1, v84) != 1)
        {
          v109 = v121;
          v92(v121, v23, v84);
          v110 = v126;
          v111 = sub_1BE04AE74();

          sub_1BD0E8E44(v135);
          v112 = v76[1];
          v112(v109, v84);
          v112(v110, v84);
          v86 = v128;
          v90 = v129;
          if (v111)
          {
            sub_1BD0DE53C(v141, &qword_1EBD4B138);
            sub_1BD57B3CC(v137);
            sub_1BD0DE53C(v86, &unk_1EBD39970);
            sub_1BD0DE53C(v131, &unk_1EBD39970);
            v98 = 1;
            v97 = v133;
            v96 = v127;
LABEL_27:
            v67 = v132;
            v99 = *(v132 + 56);
            v99(v96, v98, 1, v97);
            v100 = v97;
            if ((*(v67 + 48))(v96, 1, v97))
            {
LABEL_28:
              sub_1BD0DE53C(v96, &unk_1EBD4C940);
              v66 = v100;
              return (*(v67 + 56))(v134, 1, 1, v66);
            }

LABEL_34:
            v106 = v125;
            sub_1BD57AE20(v96, v125);
            v107 = v106;
            v108 = v134;
            sub_1BD57AE20(v107, v134);
            return (v99)(v108, 0, 1, v100);
          }

LABEL_26:
          *v55 = 1;
          *(v55 + 24) = v123;
          *(v55 + 8) = v124;
          v93 = v118;
          *(v55 + 5) = v119;
          *(v55 + 6) = v93;
          v55[56] = v117;
          v94 = v141[1];
          *(v55 + 4) = v141[0];
          *(v55 + 5) = v94;
          *(v55 + 6) = v141[2];
          v55[112] = v142;
          v95 = v133;
          sub_1BD0DE204(v131, &v55[*(v133 + 28)], &unk_1EBD39970);
          sub_1BD0DE204(v86, &v55[*(v95 + 32)], &unk_1EBD39970);
          *&v55[*(v95 + 36)] = v90;
          v96 = v127;
          sub_1BD57AE20(v55, v127);
          v97 = v95;
          v98 = 0;
          goto LABEL_27;
        }

        sub_1BD0E8E44(v135);
        (v76[1])(v126, v84);
        v86 = v128;
        v90 = v129;
      }

      sub_1BD0DE53C(v23, &unk_1EBD39970);
      goto LABEL_26;
    }

    v80 = v130;
    v81 = v130[7];
    v82 = v129;
    v81(v44, 1, 1, v129);
    v81(v41, 1, 1, v82);
    sub_1BD0DE19C(v44, v37, &unk_1EBD39970);
    v83 = v80[6];
    if (v83(v37, 1, v82) == 1)
    {

      sub_1BD0E8E44(v135);
    }

    else
    {
      v101 = v37;
      v102 = v80[4];
      v102(v123, v101, v82);
      sub_1BD0DE19C(v41, v33, &unk_1EBD39970);
      if (v83(v33, 1, v82) != 1)
      {
        v102(v13, v33, v82);
        v113 = v123;
        v114 = sub_1BE04AE74();

        sub_1BD0E8E44(v135);
        v115 = v130[1];
        v115(v13, v82);
        v115(v113, v82);
        v103 = v133;
        if (v114)
        {
          v100 = v133;
          sub_1BD0DE53C(v41, &unk_1EBD39970);
          sub_1BD0DE53C(v44, &unk_1EBD39970);
          v105 = 1;
          v96 = v124;
LABEL_33:
          v67 = v132;
          v99 = *(v132 + 56);
          v99(v96, v105, 1, v100);
          if ((*(v67 + 48))(v96, 1, v100))
          {
            goto LABEL_28;
          }

          goto LABEL_34;
        }

LABEL_32:
        *v59 = 0;
        *(v59 + 8) = xmmword_1BE0CB9B0;
        *(v59 + 24) = 0u;
        *(v59 + 40) = 0u;
        v59[56] = 0;
        *(v59 + 4) = xmmword_1BE0CB9B0;
        *(v59 + 5) = 0u;
        *(v59 + 6) = 0u;
        v59[112] = 0;
        v104 = v103;
        sub_1BD0DE204(v44, &v59[*(v103 + 28)], &unk_1EBD39970);
        sub_1BD0DE204(v41, &v59[*(v104 + 32)], &unk_1EBD39970);
        v100 = v104;
        *&v59[*(v104 + 36)] = 0;
        v96 = v124;
        sub_1BD57AE20(v59, v124);
        v105 = 0;
        goto LABEL_33;
      }

      sub_1BD0E8E44(v135);
      (v130[1])(v123, v82);
      v37 = v33;
    }

    sub_1BD0DE53C(v37, &unk_1EBD39970);
    v103 = v133;
    goto LABEL_32;
  }

  v65 = v135;
LABEL_4:
  sub_1BD0E8E44(v65);

LABEL_5:
  v67 = v132;
  v66 = v133;
  return (*(v67 + 56))(v134, 1, 1, v66);
}

uint64_t sub_1BD579A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1BD57A304(v5, v7) & 1;
}

void sub_1BD579A5C(uint64_t a1@<X8>)
{
  v3 = [v1 paymentSheetRewardsText];
  if (v3)
  {
    v4 = v3;
    sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v1 paymentSheetMerchantRewardsText];
  if (v7)
  {
    v8 = v7;
    sub_1BE052434();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v1 suppressPaymentSheetRewardsHint];
  if (v6)
  {
    v12 = sub_1BE052404();

    v13 = [v12 pk_stringIfNotEmpty];

    if (v13)
    {
      v6 = sub_1BE052434();
      v15 = v14;

      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
      v15 = 0;
      if (!v10)
      {
LABEL_16:
        sub_1BE048C84();
        v18 = v6;
        v20 = v15;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v15 = 0;
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v16 = sub_1BE052404();

  v17 = [v16 pk_stringIfNotEmpty];

  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = sub_1BE052434();
  v20 = v19;

LABEL_17:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v11;
}

uint64_t sub_1BD579C04()
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  MEMORY[0x1EEE9AC00](v52, v1);
  v54 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v55 = v48 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v53, v6);
  v50 = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v48 - v14;
  v16 = sub_1BE04AF64();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v51 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v56 = v48 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v48 - v25;
  v27 = type metadata accessor for PassEligibleRewardsInfo();
  sub_1BD0DE19C(v0 + *(v27 + 28), v15, &unk_1EBD39970);
  v28 = *(v17 + 48);
  if (v28(v15, 1, v16) == 1)
  {
    v29 = v17;
    sub_1BE04ADA4();
    if (v28(v15, 1, v16) != 1)
    {
      sub_1BD0DE53C(v15, &unk_1EBD39970);
    }
  }

  else
  {
    v29 = v17;
    (*(v17 + 32))(v26, v15, v16);
  }

  sub_1BD0DE19C(v0 + *(v27 + 32), v11, &unk_1EBD39970);
  if (v28(v11, 1, v16) == 1)
  {
    v30 = v56;
    sub_1BE04ADB4();
    v31 = v28(v11, 1, v16);
    v32 = v30;
    if (v31 != 1)
    {
      sub_1BD0DE53C(v11, &unk_1EBD39970);
    }
  }

  else
  {
    v32 = v56;
    (*(v29 + 32))(v56, v11, v16);
  }

  v33 = sub_1BD57ADDC(&qword_1EBD525D0);
  result = sub_1BE052314();
  if (result)
  {
    v35 = v29;
    v36 = *(v29 + 16);
    v37 = v26;
    v38 = v55;
    v49 = v37;
    v36(v55);
    v39 = v52;
    (v36)(v38 + *(v52 + 48), v32, v16);
    v48[1] = v33;
    v40 = v54;
    sub_1BD0DE19C(v38, v54, &unk_1EBD38810);
    v41 = *(v39 + 48);
    v42 = v50;
    v43 = *(v35 + 32);
    v43(v50, v40, v16);
    v44 = *(v35 + 8);
    v44(v40 + v41, v16);
    sub_1BD0DE204(v38, v40, &unk_1EBD38810);
    v43(&v42[*(v53 + 36)], v40 + *(v39 + 48), v16);
    v45 = v42;
    v44(v40, v16);
    v46 = v51;
    sub_1BE04AEF4();
    if (sub_1BE052314())
    {
      v47 = sub_1BE0522F4();
    }

    else
    {
      v47 = 0;
    }

    v44(v46, v16);
    sub_1BD0DE53C(v45, &qword_1EBD38DB8);
    v44(v56, v16);
    v44(v49, v16);
    return v47 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1BD57A1B8()
{
  if (sub_1BD579C04())
  {
    v1 = *(v0 + 72);
    if (v1 != 1)
    {
      v2 = *(v0 + 64);
      v3 = *(v0 + 88);
      v4 = *(v0 + 112);
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      if (PKOslo2024UIUpdatesEnabled())
      {
        if (v1 || (v4 & 1) != 0)
        {
          goto LABEL_13;
        }
      }

      else if ((v4 & 1) != 0 || v3)
      {
        goto LABEL_13;
      }

      sub_1BD38BF48(v2, v1);
    }
  }

  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    return 0;
  }

  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
LABEL_13:
  if (*v0 == 1 && (v4 & 1) == 0)
  {
    v6 = PKOslo2024UIUpdatesEnabled();

    if (v6)
    {
      return v1 != 0;
    }

    else
    {
      return v3 != 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1BD57A304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_24;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1BE053B84();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v3)
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1BE053B84();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_24;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (v15)
  {
    if (v16)
    {
      if (*(a1 + 32) == *(a2 + 32) && v15 == v16)
      {
        goto LABEL_22;
      }

      v17 = a1;
      v18 = a2;
      v19 = sub_1BE053B84();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if (v20)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  if (v16)
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v21 & 1;
}

BOOL sub_1BD57A43C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v84 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  if (*a1 != *a2)
  {
    return 0;
  }

  v97 = v8;
  v98 = v16;
  v99 = v5;
  v100 = &v84 - v22;
  v96 = v13;
  v101 = v4;
  v24 = *(a1 + 1);
  v25 = *(a1 + 2);
  v26 = *(a1 + 3);
  v27 = *(a1 + 4);
  v28 = *(a1 + 5);
  v29 = *(a1 + 6);
  v30 = a1[56];
  v31 = *(a2 + 1);
  v32 = *(a2 + 2);
  v33 = *(a2 + 3);
  v34 = *(a2 + 4);
  v36 = *(a2 + 5);
  v35 = *(a2 + 6);
  v37 = a2[56];
  if (v25 == 1)
  {
    if (v32 == 1)
    {
      v90 = v23;
      v91 = v21;
      v38 = v24;
      v94 = v27;
      v95 = v28;
      v102 = v29;
      LODWORD(v103) = v30;
      LODWORD(v93) = v37;
      sub_1BD57AD88(v24, 1);
      sub_1BD57AD88(v31, 1);
      sub_1BD38BF48(v38, 1);
      goto LABEL_8;
    }

LABEL_6:
    v104 = *(a1 + 1);
    v105 = v25;
    v106 = v26;
    v107 = v27;
    v108 = v28;
    v109 = v29;
    v110 = v30;
    v111 = v31;
    v112 = v32;
    v113 = v33;
    v114 = v34;
    v115 = v36;
    v116 = v35;
    v117 = v37;
    sub_1BD57AD88(v24, v25);
    v39 = v31;
    v40 = v32;
LABEL_13:
    sub_1BD57AD88(v39, v40);
    v56 = &unk_1EBD4B130;
    v57 = &v104;
LABEL_14:
    sub_1BD0DE53C(v57, v56);
    return 0;
  }

  if (v32 == 1)
  {
    goto LABEL_6;
  }

  v90 = v23;
  v91 = v21;
  v122[0] = v31;
  v122[1] = v32;
  v122[2] = v33;
  v122[3] = v34;
  v122[4] = v36;
  v122[5] = v35;
  v123 = v37 & 1;
  v120[0] = v24;
  v120[1] = v25;
  v120[2] = v26;
  v120[3] = v27;
  v120[4] = v28;
  v120[5] = v29;
  v121 = v30 & 1;
  v92 = v24;
  LODWORD(v103) = v30;
  v102 = v29;
  v85 = v36;
  v86 = v35;
  v94 = v27;
  v95 = v28;
  v87 = v26;
  v88 = a2;
  LODWORD(v93) = v37;
  v89 = sub_1BD57A304(v120, v122);
  sub_1BD57AD88(v92, v25);
  sub_1BD57AD88(v31, v32);
  sub_1BD38BF48(v31, v32);
  a2 = v88;
  sub_1BD38BF48(v92, v25);
  if ((v89 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v41 = *(a1 + 8);
  v42 = *(a1 + 9);
  v43 = *(a1 + 10);
  v44 = *(a1 + 11);
  v45 = *(a1 + 12);
  v46 = *(a1 + 13);
  v47 = a1[112];
  v49 = *(a2 + 8);
  v48 = *(a2 + 9);
  v50 = *(a2 + 10);
  v51 = *(a2 + 11);
  v53 = *(a2 + 12);
  v52 = *(a2 + 13);
  v54 = a2[112];
  if (v42 == 1)
  {
    if (v48 == 1)
    {
      v55 = *(a1 + 8);
      v94 = *(a1 + 10);
      v95 = v44;
      v93 = v45;
      v102 = v46;
      LODWORD(v103) = v47;
      sub_1BD57AD88(v41, 1);
      sub_1BD57AD88(v49, 1);
      sub_1BD38BF48(v55, 1);
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v48 == 1)
  {
LABEL_12:
    v104 = *(a1 + 8);
    v105 = v42;
    v106 = v43;
    v107 = v44;
    v108 = v45;
    v109 = v46;
    v110 = v47;
    v111 = v49;
    v112 = v48;
    v113 = v50;
    v114 = v51;
    v115 = v53;
    v116 = v52;
    v117 = v54;
    sub_1BD57AD88(v41, v42);
    v39 = v49;
    v40 = v48;
    goto LABEL_13;
  }

  v104 = *(a2 + 8);
  v105 = v48;
  v106 = v50;
  v107 = v51;
  v108 = v53;
  v109 = v52;
  v110 = v54 & 1;
  v118[0] = v41;
  v118[1] = v42;
  v118[2] = v43;
  v118[3] = v44;
  v118[4] = v45;
  v118[5] = v46;
  v119 = v47 & 1;
  v87 = v53;
  v88 = v41;
  v59 = v41;
  v92 = v42;
  v93 = v45;
  LODWORD(v103) = v47;
  v102 = v46;
  LODWORD(v86) = v54;
  v84 = v51;
  v85 = v52;
  v94 = v43;
  v95 = v44;
  v89 = sub_1BD57A304(v118, &v104);
  sub_1BD57AD88(v59, v92);
  sub_1BD57AD88(v49, v48);
  sub_1BD38BF48(v49, v48);
  sub_1BD38BF48(v88, v92);
  if ((v89 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v60 = type metadata accessor for PassEligibleRewardsInfo();
  v61 = v60[7];
  v62 = *(v91 + 48);
  v63 = v100;
  sub_1BD0DE19C(&a1[v61], v100, &unk_1EBD39970);
  sub_1BD0DE19C(&a2[v61], v63 + v62, &unk_1EBD39970);
  v64 = v99;
  v65 = *(v99 + 48);
  v66 = v101;
  if (v65(v63, 1, v101) == 1)
  {
    if (v65(v63 + v62, 1, v66) == 1)
    {
      v102 = v65;
      sub_1BD0DE53C(v63, &unk_1EBD39970);
      goto LABEL_23;
    }

LABEL_28:
    v56 = &qword_1EBD3A750;
    v57 = v63;
    goto LABEL_14;
  }

  v103 = v60;
  v67 = v98;
  sub_1BD0DE19C(v63, v98, &unk_1EBD39970);
  if (v65(v63 + v62, 1, v66) == 1)
  {
    (*(v64 + 8))(v67, v66);
    goto LABEL_28;
  }

  v102 = v65;
  v68 = v63 + v62;
  v69 = v97;
  (*(v64 + 32))(v97, v68, v66);
  sub_1BD57ADDC(&qword_1EBD3E460);
  v70 = sub_1BE052334();
  v71 = *(v64 + 8);
  v71(v69, v66);
  v71(v67, v66);
  sub_1BD0DE53C(v100, &unk_1EBD39970);
  v60 = v103;
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v72 = v60[8];
  v63 = v90;
  v73 = *(v91 + 48);
  sub_1BD0DE19C(&a1[v72], v90, &unk_1EBD39970);
  v74 = &a2[v72];
  v75 = v101;
  sub_1BD0DE19C(v74, v63 + v73, &unk_1EBD39970);
  v76 = v102;
  if (v102(v63, 1, v75) != 1)
  {
    v77 = v96;
    sub_1BD0DE19C(v63, v96, &unk_1EBD39970);
    if (v76(v63 + v73, 1, v75) == 1)
    {
      (*(v99 + 8))(v77, v75);
      goto LABEL_28;
    }

    v78 = v99;
    v79 = *(v99 + 32);
    v103 = v60;
    v80 = v97;
    v79(v97, v63 + v73, v75);
    sub_1BD57ADDC(&qword_1EBD3E460);
    v81 = sub_1BE052334();
    v82 = *(v78 + 8);
    v83 = v80;
    v60 = v103;
    v82(v83, v75);
    v82(v77, v75);
    sub_1BD0DE53C(v63, &unk_1EBD39970);
    if (v81)
    {
      return *&a1[v60[9]] == *&a2[v60[9]];
    }

    return 0;
  }

  if (v76(v63 + v73, 1, v75) != 1)
  {
    goto LABEL_28;
  }

  sub_1BD0DE53C(v63, &unk_1EBD39970);
  return *&a1[v60[9]] == *&a2[v60[9]];
}

uint64_t sub_1BD57AD88(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    sub_1BE048C84();
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD57ADDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BE04AF64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD57AE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassEligibleRewardsInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BD57AE84()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v16 - v7;
  v9 = *MEMORY[0x1E69B80B0];
  v10 = *(v1 + 104);
  v10(&v16 - v7, v9, v0);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();

    v14 = *(v1 + 8);
    v14(v8, v0);
    if (!PKOslo2024UIUpdatesEnabled())
    {
      return v13;
    }

    v10(v5, v9, v0);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v13 = sub_1BE04B6F4();

      v14(v5, v0);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}