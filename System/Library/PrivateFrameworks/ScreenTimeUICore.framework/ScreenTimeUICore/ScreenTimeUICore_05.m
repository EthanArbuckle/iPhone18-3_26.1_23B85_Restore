uint64_t sub_264DFDBBC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E88, &qword_264E29278);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = *a2;
  v15 = sub_264E238E8();
  (*(*(v15 - 8) + 16))(v13, a1, v15);
  *&v13[*(v10 + 56)] = v14;

  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  LOBYTE(a1) = sub_264E238C8();
  v16 = *(v5 + 8);
  v16(v8, v4);
  if (a1)
  {
    sub_264E23888();
    v17 = sub_264E238C8();
    v16(v8, v4);
  }

  else
  {
    v17 = 0;
  }

  sub_264D817BC(v13, &qword_27FFB2E88, &qword_264E29278);
  return v17 & 1;
}

uint64_t CategoriesLegendView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CategoriesLegendView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264DFE04C();
  v8 = sub_264DFE4E0(v7);

  *a1 = sub_264E24778();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DF0, &qword_264E290C0) + 44);
  v17[1] = v8;
  swift_getKeyPath();
  sub_264DFE684(v1, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_264DFE834(v6, v11 + v10, type metadata accessor for CategoriesLegendView);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_264DFE89C;
  *(v12 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DF8, &qword_264E290E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E00, &qword_264E290F0);
  sub_264D81DCC(&qword_27FFB2E08, &qword_27FFB2DF8, &qword_264E290E8);
  sub_264D81DCC(&qword_27FFB2E10, &qword_27FFB2E00, &qword_264E290F0);
  sub_264E24EE8();
  v13 = sub_264E249E8();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E18, &qword_264E29128);
  v16 = (a1 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  return result;
}

uint64_t sub_264DFE04C()
{
  v1 = type metadata accessor for CategoriesLegendView(0);
  v2 = sub_264DFD278(v0 + *(v1 + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_264D8D3A8(0, v3, 0);
    v4 = v13;
    v5 = (v2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v13 + 16);
      v10 = *(v13 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_264D8D3A8((v10 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v11 = (v13 + 24 * v9);
      v11[4] = v7;
      v11[5] = v6;
      v11[6] = v8;
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_264DFE168@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_264E24828();
  sub_264DFE298(a2, a1, &v24, a4);
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = *v28;
  *&v19 = v8;
  *(&v19 + 1) = 0x4014000000000000;
  LOBYTE(v20) = 0;
  *(&v20 + 1) = v24;
  *&v21 = v25;
  BYTE8(v21) = v26;
  v22 = v27;
  v23 = *v28;
  v14 = v20;
  *a3 = v19;
  *(a3 + 16) = v14;
  v15 = v22;
  v16 = v23;
  *(a3 + 32) = v21;
  *(a3 + 48) = v15;
  v18[80] = 1;
  *(a3 + 64) = v16;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  v24 = v8;
  v25 = 0x4014000000000000;
  v26 = 0;
  *&v27 = v9;
  *(&v27 + 1) = v10;
  v28[0] = v11;
  *&v28[8] = v12;
  v29 = v13;
  sub_264DFF2B8(&v19, v18);
  return sub_264D817BC(&v24, &qword_27FFB2E78, &qword_264E29230);
}

uint64_t sub_264DFE298@<X0>(uint64_t a1@<X1>, unint64_t a2@<X3>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = sub_264D89EB8();

  v10 = sub_264E24AF8();
  v12 = v11;
  v14 = v13;
  v15 = sub_264E17574(4, 1);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v15[2] <= a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15[a2 + 4];

  a1 = sub_264E24AB8();
  v9 = v17;
  v4 = v18;
  a2 = v19;
  sub_264D817AC(v10, v12, v14 & 1);

  if (qword_27FFB16A8 != -1)
  {
LABEL_7:
    swift_once();
  }

  v20 = qword_27FFB6C50;
  KeyPath = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = v4 & 1;
  *(a3 + 24) = a2;
  *(a3 + 32) = a4;
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = v20;

  sub_264D80F20(a1, v9, v4 & 1);

  sub_264D817AC(a1, v9, v4 & 1);
}

uint64_t sub_264DFE44C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264E246F8();
  *a1 = result;
  return result;
}

uint64_t sub_264DFE478(uint64_t *a1)
{
  v1 = *a1;

  return sub_264E24708();
}

uint64_t sub_264DFE4E0(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 48);
    while (1)
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {
        v10 = *(v6 - 1);

        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v12 = v2[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E80, &unk_264E29268);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 1;
        }

        v18 = v17 >> 5;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 5);
        v19 = v15 + 4;
        v20 = v2[3] >> 1;
        v5 = &v15[4 * v20 + 4];
        v21 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
        if (v2[2])
        {
          if (v15 != v2 || v19 >= &v2[4 * v20 + 4])
          {
            memmove(v19, v2 + 4, 32 * v20);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v15;
        v11 = __OFSUB__(v21, 1);
        v4 = v21 - 1;
        if (v11)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v9;
      v5 += 4;
      v6 += 3;
      if (v1 == ++v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v23 = v2[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v11 = __OFSUB__(v24, v4);
    v25 = v24 - v4;
    if (v11)
    {
      goto LABEL_32;
    }

    v2[2] = v25;
  }

  return v2;
}

uint64_t sub_264DFE684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoriesLegendView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DFE6E8()
{
  v1 = (type metadata accessor for CategoriesLegendView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(type metadata accessor for CategoriesLegendView.Model(0) + 32);
  v10 = sub_264E23C38();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[7];
  v12 = sub_264E238E8();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264DFE834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DFE89C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = *(*(type metadata accessor for CategoriesLegendView(0) - 8) + 80);

  return sub_264DFE168(a1, a2, a3, a4);
}

uint64_t sub_264DFE944()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264DFE97C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

uint64_t sub_264DFE9B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264E246F8();
  *a1 = result;
  return result;
}

uint64_t sub_264DFE9E0(uint64_t *a1)
{
  v1 = *a1;

  return sub_264E24708();
}

uint64_t sub_264DFEA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CategoriesLegendView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E238E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DFEB40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CategoriesLegendView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E238E8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_264DFEC3C()
{
  result = type metadata accessor for CategoriesLegendView.Model(319);
  if (v1 <= 0x3F)
  {
    result = sub_264E238E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264DFECD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_264DFED94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DFEE38()
{
  sub_264DDB800();
  if (v0 <= 0x3F)
  {
    sub_264DFEF04();
    if (v1 <= 0x3F)
    {
      sub_264DFEFA0();
      if (v2 <= 0x3F)
      {
        sub_264E23C38();
        if (v3 <= 0x3F)
        {
          type metadata accessor for STActivityMode(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_264DFEF04()
{
  if (!qword_27FFB2E40)
  {
    sub_264E238E8();
    sub_264DFF3EC(&qword_27FFB1ED8, MEMORY[0x277CC88A8]);
    v0 = sub_264E25028();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2E40);
    }
  }
}

void sub_264DFEFA0()
{
  if (!qword_27FFB2E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2E50, &qword_264E291D0);
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2E48);
    }
  }
}

unint64_t sub_264DFF008()
{
  result = qword_27FFB2E58;
  if (!qword_27FFB2E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2E18, &qword_264E29128);
    sub_264D81DCC(&qword_27FFB2E60, &qword_27FFB2E68, &unk_264E291D8);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2E58);
  }

  return result;
}

uint64_t sub_264DFF110(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    v8 = (MEMORY[0x277D84F90] + 32);
    v9 = (result + 48);
    while (1)
    {
      v10 = *(v9 - 2);
      v12 = *(v9 - 1);
      v11 = *v9;
      if (v7)
      {
        v13 = *v9;

        v14 = __OFSUB__(v7--, 1);
        if (v14)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v15 = v4[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 1;
        }

        v21 = v20 >> 5;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 5);
        v22 = v18 + 4;
        v23 = v4[3] >> 1;
        v8 = &v18[4 * v23 + 4];
        v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
        if (v4[2])
        {
          if (v18 != v4 || v22 >= &v4[4 * v23 + 4])
          {
            memmove(v22, v4 + 4, 32 * v23);
          }

          v4[2] = 0;
        }

        else
        {
        }

        v4 = v18;
        v14 = __OFSUB__(v24, 1);
        v7 = v24 - 1;
        if (v14)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return result;
        }
      }

      *v8 = v6;
      v8[1] = v10;
      v8[2] = v12;
      v8[3] = v11;
      v8 += 4;
      v9 += 3;
      if (v3 == ++v6)
      {
        goto LABEL_26;
      }
    }
  }

  v7 = 0;
LABEL_26:
  v26 = v4[3];
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v14 = __OFSUB__(v27, v7);
    v28 = v27 - v7;
    if (v14)
    {
      goto LABEL_32;
    }

    v4[2] = v28;
  }

  return v4;
}

uint64_t sub_264DFF2B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E78, &qword_264E29230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DFF350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E88, &qword_264E29278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DFF3C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_264DFF3EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DFF458(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_264DFF4A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264DFF524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_264DFF56C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_264DFF5DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_264DFF624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264DFF6A4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_264DFF6F0()
{
  v1 = *v0;
  sub_264E254A8();
  MEMORY[0x26674F610](v1);
  return sub_264E254C8();
}

uint64_t sub_264DFF764()
{
  v1 = *v0;
  sub_264E254A8();
  MEMORY[0x26674F610](v1);
  return sub_264E254C8();
}

uint64_t sub_264DFF7A8@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FF8, &qword_264E295E0);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = (&v42 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3000, &qword_264E295E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3008, &qword_264E295F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v50 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v20 = *(v1 + 16);
  v56 = *v1;
  v53 = *v1;

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3010, &qword_264E295F8);
  result = sub_264E24D88();
  if ((v52 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v44 = v14;
    v45 = v13;
    v46 = v3;
    v47 = v9;
    v48 = a1;
    v22 = *(v20 + 16);
    if (v22 >= v52)
    {
      v22 = v52;
    }

    v23 = 2 * v22;
    v24 = 1;
    *&v53 = v20;
    *(&v53 + 1) = v20 + 32;
    if (v52)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = 1;
    }

    v54 = 0;
    v55 = v25;
    v26 = swift_allocObject();
    v27 = *(v1 + 16);
    *(v26 + 16) = *v1;
    *(v26 + 32) = v27;
    *(v26 + 48) = *(v1 + 32);

    sub_264D81744(&v56, &v52, &qword_27FFB3010, &qword_264E295F8);
    v28 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3018, &qword_264E29600);
    sub_264D81DCC(&qword_27FFB3020, &qword_27FFB3018, &qword_264E29600);
    sub_264E02610();
    sub_264E02664();
    v29 = v19;
    sub_264E24EF8();
    v53 = v56;
    sub_264E24D88();
    if (v52 < *(v20 + 16))
    {
      v30 = sub_264E24778();
      v31 = v43;
      *v43 = v30;
      *(v31 + 8) = 0;
      *(v31 + 16) = 1;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3040, &unk_264E29610);
      sub_264DFFDA8(v1, v31 + *(v32 + 44));
      sub_264D90E64(v31, v12, &qword_27FFB2FF8, &qword_264E295E0);
      v24 = 0;
    }

    (*(v51 + 56))(v12, v24, 1, v46);
    v33 = v44;
    v34 = *(v44 + 16);
    v35 = v50;
    v36 = v28;
    v37 = v45;
    v34(v50, v29, v45);
    v38 = v47;
    sub_264D81744(v36, v47, &qword_27FFB3000, &qword_264E295E8);
    v39 = v48;
    v34(v48, v35, v37);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3038, &qword_264E29608);
    sub_264D81744(v38, &v39[*(v40 + 48)], &qword_27FFB3000, &qword_264E295E8);
    sub_264D817BC(v36, &qword_27FFB3000, &qword_264E295E8);
    v41 = *(v33 + 8);
    v41(v29, v37);
    sub_264D817BC(v38, &qword_27FFB3000, &qword_264E295E8);
    return (v41)(v35, v37);
  }

  return result;
}

__n128 sub_264DFFC98@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  *v14 = a1[2];
  *&v14[15] = *(a1 + 47);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  sub_264E02700(&v12, &v15);
  type metadata accessor for CGSize(0);
  sub_264E24D78();
  v7 = v15;
  v8 = v16;
  sub_264E24D78();
  v9 = v16;
  result = v15;
  v11 = v13;
  *v17 = *v14;
  *&v17[15] = *&v14[15];
  *a3 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = *v17;
  *(a3 + 48) = *&v17[16];
  *(a3 + 56) = v5;
  *(a3 + 64) = 0;
  *(a3 + 65) = v6;
  *(a3 + 70) = 0;
  *(a3 + 66) = 0;
  *(a3 + 72) = 0x4010000000000000;
  *(a3 + 80) = v7;
  *(a3 + 96) = v8;
  *(a3 + 104) = result;
  *(a3 + 120) = v9;
  return result;
}

uint64_t sub_264DFFDA8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1768, &unk_264E298C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3048, &unk_264E29620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v16 = sub_264E24D08();
  sub_264E24F58();
  sub_264E244B8();
  v17 = v29;
  v27 = v30;
  v26 = v31;
  v25 = v32;
  v23 = v34;
  v24 = v33;
  v36 = *a1;
  v35 = *(a1 + 2);
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  sub_264D81744(&v36, v28, &qword_27FFB3010, &qword_264E295F8);
  sub_264D81744(&v35, v28, &qword_27FFB3050, &qword_264E2A750);
  sub_264E24DD8();
  sub_264D81DCC(&qword_27FFB1798, &qword_27FFB1768, &unk_264E298C0);
  sub_264E24C08();
  (*(v5 + 8))(v8, v4);
  sub_264D81744(v15, v12, &qword_27FFB3048, &unk_264E29620);
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v27;
  *(a2 + 24) = v26;
  *(a2 + 32) = v25;
  v20 = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3058, &qword_264E29630);
  sub_264D81744(v12, a2 + *(v21 + 48), &qword_27FFB3048, &unk_264E29620);

  sub_264D817BC(v15, &qword_27FFB3048, &unk_264E29620);
  sub_264D817BC(v12, &qword_27FFB3048, &unk_264E29620);
}

uint64_t sub_264E0011C(__int128 *a1)
{
  v4 = *a1;
  v2[1] = *a1;
  v5 = *(&v4 + 1);
  sub_264D81744(&v5, v2, &qword_27FFB3060, &qword_264E29638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3010, &qword_264E295F8);
  result = sub_264E24D88();
  if (__OFADD__(v3, 8))
  {
    __break(1u);
  }

  else
  {
    v2[0] = v4;
    sub_264E24D98();
    return sub_264D817BC(&v4, &qword_27FFB3010, &qword_264E295F8);
  }

  return result;
}

uint64_t sub_264E001DC@<X0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  result = sub_264E24AE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_264E002A0@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_264DFF7A8(a1);
}

void sub_264E002F8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264E23C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = *(v2 + 40);
  if (!*(v2 + 65))
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v22 setAllowedUnits_];
    [v22 setUnitsStyle_];
    [v22 setZeroFormattingBehavior_];
    if (v16 <= 3600.0)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    v34 = v23;
    [v22 setMaximumUnitCount_];
    v24 = [v22 stringFromTimeInterval_];
    if (v24)
    {
      v25 = v24;
      v35 = sub_264E25108();
      v19 = v26;
    }

    else
    {

      v35 = 0;
      v19 = 0xE000000000000000;
    }

    (*(v5 + 56))(v15, 1, 1, v4);
    v27 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v27 setAllowedUnits_];
    [v27 setUnitsStyle_];
    [v27 setZeroFormattingBehavior_];
    [v27 setMaximumUnitCount_];
    sub_264D81744(v15, v12, &qword_27FFB1C50, &unk_264E267D0);
    if ((*(v5 + 48))(v12, 1, v4) == 1)
    {
      sub_264D817BC(v12, &qword_27FFB1C50, &unk_264E267D0);
    }

    else
    {
      (*(v5 + 32))(v8, v12, v4);
      v28 = sub_264E23BA8();
      [v27 setCalendar_];

      (*(v5 + 8))(v8, v4);
    }

    v29 = [v27 stringFromTimeInterval_];
    if (v29)
    {
      v30 = v29;
      v20 = sub_264E25108();
      v21 = v31;
    }

    else
    {

      v20 = 0;
      v21 = 0;
    }

    sub_264D817BC(v15, &qword_27FFB1C50, &unk_264E267D0);
    v17 = v35;
    goto LABEL_19;
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v16 < 9.22337204e18)
  {
    v36 = v16;
    sub_264D908C4();
    v17 = sub_264E25348();
    v19 = v18;
    v20 = 0;
    v21 = 0;
LABEL_19:
    *a1 = sub_264E24778();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EA8, &qword_264E29450);
    sub_264E0077C(v2, v17, v19, v20, v21, (a1 + *(v32 + 44)));

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_264E0077C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v50 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EB0, &qword_264E29458);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EB8, &qword_264E29460);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EC0, &qword_264E29468);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  v24 = *(a1 + 24);
  v47 = *(a1 + 16);
  v25 = *(a1 + 49);
  v26 = *(a1 + 50);
  v27 = *(a1 + 32);

  v49 = v24;

  *v23 = sub_264E24828();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EC8, &qword_264E29470);
  sub_264E00BFC(a1, v43, v44, v45, v46, &v23[*(v28 + 44)]);
  if (v25)
  {
    v46 = sub_264E24D18();
    v29 = sub_264E248C8();
    v30 = &v10[*(v7 + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EE0, &qword_264E29488) + 28);
    v32 = *MEMORY[0x277CE1050];
    v33 = sub_264E24D38();
    (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
    *v30 = swift_getKeyPath();
    *v10 = v46;
    *(v10 + 2) = v29;
    sub_264E01F5C();
    sub_264E24C08();
    sub_264D817BC(v10, &qword_27FFB2EB0, &qword_264E29458);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2ED0, &qword_264E29478);
  (*(*(v35 - 8) + 56))(v16, v34, 1, v35);
  sub_264D81744(v23, v20, &qword_27FFB2EC0, &qword_264E29468);
  v36 = v48;
  sub_264D81744(v16, v48, &qword_27FFB2EB8, &qword_264E29460);
  v37 = v16;
  v39 = v49;
  v38 = v50;
  v40 = v47;
  *v50 = v27;
  v38[1] = v40;
  v38[2] = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2ED8, &qword_264E29480);
  sub_264D81744(v20, v38 + *(v41 + 48), &qword_27FFB2EC0, &qword_264E29468);
  sub_264D81744(v36, v38 + *(v41 + 64), &qword_27FFB2EB8, &qword_264E29460);

  sub_264D817BC(v37, &qword_27FFB2EB8, &qword_264E29460);
  sub_264D817BC(v23, &qword_27FFB2EC0, &qword_264E29468);
  sub_264D817BC(v36, &qword_27FFB2EB8, &qword_264E29460);
  sub_264D817BC(v20, &qword_27FFB2EC0, &qword_264E29468);
}

uint64_t sub_264E00BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a5;
  v53 = a4;
  v52 = a3;
  v51 = a2;
  v57 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F18, &qword_264E294D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F20, &qword_264E294D8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F28, &qword_264E294E0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v56 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v23);
  v55 = &v50 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F30, &qword_264E294E8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v50 - v30;
  *v31 = sub_264E24778();
  *(v31 + 1) = 0;
  v31[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F38, &qword_264E294F0);
  sub_264E010AC(a1, &v31[*(v32 + 44)]);
  v33 = *(a1 + 72);
  *v10 = sub_264E24778();
  *(v10 + 1) = v33;
  v10[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F40, &qword_264E294F8);
  sub_264E01458(a1, v51, v52, v53, v54, &v10[*(v34 + 44)]);
  sub_264E24F68();
  sub_264E24588();
  sub_264D90E64(v10, v15, &qword_27FFB2F18, &qword_264E294D0);
  v35 = &v15[*(v12 + 44)];
  v36 = v69;
  *(v35 + 4) = v68;
  *(v35 + 5) = v36;
  *(v35 + 6) = v70;
  v37 = v65;
  *v35 = v64;
  *(v35 + 1) = v37;
  v38 = v67;
  *(v35 + 2) = v66;
  *(v35 + 3) = v38;
  v62 = *(a1 + 80);
  v63 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F48, &qword_264E29500);
  sub_264E24DA8();
  v39 = v58;
  v40 = v59;
  v41 = v60;
  v42 = v61;
  sub_264D90E64(v15, v22, &qword_27FFB2F20, &qword_264E294D8);
  v43 = &v22[*(v17 + 44)];
  *v43 = v39;
  *(v43 + 1) = v40;
  *(v43 + 2) = v41;
  *(v43 + 3) = v42;
  v44 = v22;
  v45 = v55;
  sub_264D90E64(v44, v55, &qword_27FFB2F28, &qword_264E294E0);
  sub_264D81744(v31, v28, &qword_27FFB2F30, &qword_264E294E8);
  v46 = v56;
  sub_264D81744(v45, v56, &qword_27FFB2F28, &qword_264E294E0);
  v47 = v57;
  sub_264D81744(v28, v57, &qword_27FFB2F30, &qword_264E294E8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F50, &qword_264E29508);
  sub_264D81744(v46, v47 + *(v48 + 48), &qword_27FFB2F28, &qword_264E294E0);
  sub_264D817BC(v45, &qword_27FFB2F28, &qword_264E294E0);
  sub_264D817BC(v31, &qword_27FFB2F30, &qword_264E294E8);
  sub_264D817BC(v46, &qword_27FFB2F28, &qword_264E294E0);
  return sub_264D817BC(v28, &qword_27FFB2F30, &qword_264E294E8);
}

uint64_t sub_264E010AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FD0, &qword_264E295C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  if (*(a1 + 48))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FE8, &qword_264E295D0);
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  else
  {
    v20 = sub_264E24D18();
    v21 = sub_264E24CB8();
    v34 = v20;
    v35 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FD8, &qword_264E295C8);
    sub_264E0254C();
    sub_264E24C08();

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FE8, &qword_264E295D0);
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  }

  v34 = v17;
  v35 = v18;
  sub_264D89EB8();

  v23 = sub_264E24AF8();
  v25 = v24;
  v34 = v23;
  v35 = v24;
  v27 = v26 & 1;
  v36 = v26 & 1;
  v37 = v28;
  sub_264E24C08();
  sub_264D817AC(v23, v25, v27);

  sub_264D81744(v16, v13, &qword_27FFB2FD0, &qword_264E295C0);
  sub_264D81744(v9, v6, &qword_27FFB1E90, &unk_264E26F50);
  v29 = v33;
  sub_264D81744(v13, v33, &qword_27FFB2FD0, &qword_264E295C0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FF0, &qword_264E295D8);
  sub_264D81744(v6, v29 + *(v30 + 48), &qword_27FFB1E90, &unk_264E26F50);
  sub_264D817BC(v9, &qword_27FFB1E90, &unk_264E26F50);
  sub_264D817BC(v16, &qword_27FFB2FD0, &qword_264E295C0);
  sub_264D817BC(v6, &qword_27FFB1E90, &unk_264E26F50);
  return sub_264D817BC(v13, &qword_27FFB2FD0, &qword_264E295C0);
}

uint64_t sub_264E01458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a5;
  v53 = a4;
  v55 = a6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F58, &qword_264E29510);
  v9 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F60, &qword_264E29518);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v65 = *(a1 + 80);
  *&v66 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F48, &qword_264E29500);
  sub_264E24D88();
  v22 = *&v58;
  v65 = *(a1 + 104);
  *&v66 = *(a1 + 120);
  sub_264E24D88();
  v23 = *&v58;
  if (*(a1 + 65) == 1)
  {
    v24 = sub_264E24C78();
  }

  else
  {
    v25 = [objc_opt_self() quaternarySystemFillColor];
    v24 = sub_264E24C38();
  }

  v26 = 1.0;
  if (!v21)
  {
    v26 = v20;
  }

  v27 = v22 - v23 - *(a1 + 72);
  *&v65 = *(a1 + 40);
  *(&v65 + 1) = v26;
  *&v66 = v27;
  *(&v66 + 1) = 0x4014000000000000;
  *&v67 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F68, &unk_264E29520);
  sub_264E020CC();
  sub_264E24C08();

  *&v65 = a2;
  *(&v65 + 1) = a3;
  sub_264D89EB8();

  v28 = sub_264E24AF8();
  v30 = v29;
  v32 = v31;
  v51 = v19;
  v34 = v33;
  v58 = *(a1 + 104);
  *&v59 = *(a1 + 120);
  sub_264E24DA8();
  v35 = v65;
  v36 = v66;
  v37 = v32 & 1;
  LOBYTE(v65) = v32 & 1;
  v38 = sub_264E24A68();
  KeyPath = swift_getKeyPath();
  v40 = swift_getKeyPath();
  LOBYTE(v65) = 0;
  v41 = sub_264E248C8();
  *&v65 = v28;
  *(&v65 + 1) = v30;
  LOBYTE(v66) = v37;
  *(&v66 + 1) = v34;
  v67 = v35;
  v68 = v36;
  *&v69 = KeyPath;
  *(&v69 + 1) = v38;
  *&v70 = v40;
  *(&v70 + 1) = 1;
  LOBYTE(v71) = 0;
  HIDWORD(v71) = v41;
  v62 = v69;
  v63 = v70;
  v64 = v71;
  v58 = v65;
  v59 = v66;
  v61 = v36;
  v60 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F80, &qword_264E29590);
  sub_264E02244();
  sub_264E24C08();
  sub_264D817BC(&v65, &qword_27FFB2F80, &qword_264E29590);
  v42 = &v13[*(v52 + 36)];
  v43 = v57;
  *v42 = v53;
  *(v42 + 1) = v43;
  v44 = v51;
  v45 = v54;
  sub_264D81744(v51, v54, &qword_27FFB2F60, &qword_264E29518);
  v46 = v56;
  sub_264D81744(v13, v56, &qword_27FFB2F58, &qword_264E29510);
  v47 = v55;
  sub_264D81744(v45, v55, &qword_27FFB2F60, &qword_264E29518);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FC8, &unk_264E295B0);
  sub_264D81744(v46, v47 + *(v48 + 48), &qword_27FFB2F58, &qword_264E29510);

  sub_264D817BC(v13, &qword_27FFB2F58, &qword_264E29510);
  sub_264D817BC(v44, &qword_27FFB2F60, &qword_264E29518);
  sub_264D817BC(v46, &qword_27FFB2F58, &qword_264E29510);
  return sub_264D817BC(v45, &qword_27FFB2F60, &qword_264E29518);
}

void sub_264E01974(uint64_t a1@<X8>)
{
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_264E002F8(a1);
}

uint64_t sub_264E019C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v30 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3090, &qword_264E29740);
  v6 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3098, &qword_264E29748);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = sub_264E24D28();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB30A0, &qword_264E29750);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  if (a1)
  {
    (*(v14 + 104))(v17, *MEMORY[0x277CE0FE0], v13, v20);

    v23 = sub_264E24D48();
    (*(v14 + 8))(v17, v13);
    sub_264E24F58();
    sub_264E244B8();
    v42 = v44;
    v40 = v46;
    v31 = v23;
    v32 = v43;
    LOBYTE(v33) = v44;
    *(&v33 + 1) = *v41;
    HIDWORD(v33) = *&v41[3];
    v34 = v45;
    v35 = v46;
    *v36 = *v39;
    *&v36[3] = *&v39[3];
    v37 = v47;
    v38 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB30C0, &unk_264E29758);
    sub_264E02DEC();
    sub_264E24C08();

    v24 = &qword_27FFB30A0;
    v25 = &qword_264E29750;
    sub_264D81744(v22, v12, &qword_27FFB30A0, &qword_264E29750);
    swift_storeEnumTagMultiPayload();
    sub_264E02D60();
    sub_264E02ECC();
    sub_264E24858();

    v26 = v22;
  }

  else
  {
    v31 = a2;
    v32 = v28;
    v33 = 0x403D000000000000;
    sub_264E02D0C();
    sub_264E24C08();
    v24 = &qword_27FFB3090;
    v25 = &qword_264E29740;
    sub_264D81744(v8, v12, &qword_27FFB3090, &qword_264E29740);
    swift_storeEnumTagMultiPayload();
    sub_264E02D60();
    sub_264E02ECC();
    sub_264E24858();
    v26 = v8;
  }

  return sub_264D817BC(v26, v24, v25);
}

uint64_t sub_264E01DE4@<X0>(uint64_t a1@<X8>)
{
  result = sub_264E24718();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_264E01E18(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_264E24728();
}

uint64_t sub_264E01E90(uint64_t a1)
{
  v2 = sub_264E24D38();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_264E245E8();
}

unint64_t sub_264E01F5C()
{
  result = qword_27FFB2EE8;
  if (!qword_27FFB2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2EB0, &qword_264E29458);
    sub_264E02014();
    sub_264D81DCC(&qword_27FFB2F10, &qword_27FFB2EE0, &qword_264E29488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2EE8);
  }

  return result;
}

unint64_t sub_264E02014()
{
  result = qword_27FFB2EF0;
  if (!qword_27FFB2EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2EF8, &qword_264E294C0);
    sub_264D81DCC(&qword_27FFB2F00, &qword_27FFB2F08, &qword_264E294C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2EF0);
  }

  return result;
}

unint64_t sub_264E020CC()
{
  result = qword_27FFB2F70;
  if (!qword_27FFB2F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2F68, &unk_264E29520);
    sub_264E02184();
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2F70);
  }

  return result;
}

unint64_t sub_264E02184()
{
  result = qword_27FFB2F78;
  if (!qword_27FFB2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2F78);
  }

  return result;
}

uint64_t sub_264E021E0@<X0>(uint64_t a1@<X8>)
{
  result = sub_264E24718();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_264E02214(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_264E24728();
}

unint64_t sub_264E02244()
{
  result = qword_27FFB2F88;
  if (!qword_27FFB2F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2F80, &qword_264E29590);
    sub_264E022FC();
    sub_264D81DCC(&qword_27FFB2F00, &qword_27FFB2F08, &qword_264E294C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2F88);
  }

  return result;
}

unint64_t sub_264E022FC()
{
  result = qword_27FFB2F90;
  if (!qword_27FFB2F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2F98, &qword_264E29598);
    sub_264E023B4();
    sub_264D81DCC(&qword_27FFB1838, &qword_27FFB1840, &qword_264E280A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2F90);
  }

  return result;
}

unint64_t sub_264E023B4()
{
  result = qword_27FFB2FA0;
  if (!qword_27FFB2FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2FA8, &qword_264E295A0);
    sub_264E0246C();
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2FA0);
  }

  return result;
}

unint64_t sub_264E0246C()
{
  result = qword_27FFB2FB0;
  if (!qword_27FFB2FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2FB8, &qword_264E295A8);
    sub_264E024F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2FB0);
  }

  return result;
}

unint64_t sub_264E024F8()
{
  result = qword_27FFB2FC0;
  if (!qword_27FFB2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2FC0);
  }

  return result;
}

unint64_t sub_264E0254C()
{
  result = qword_27FFB2FE0;
  if (!qword_27FFB2FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2FD8, &qword_264E295C8);
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2FE0);
  }

  return result;
}

unint64_t sub_264E02610()
{
  result = qword_27FFB3028;
  if (!qword_27FFB3028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3028);
  }

  return result;
}

unint64_t sub_264E02664()
{
  result = qword_27FFB3030;
  if (!qword_27FFB3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3030);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

__n128 sub_264E02748@<Q0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>, double a4@<D0>)
{
  sub_264E24D78();
  v21 = v26;
  v8 = *(a1 + 16);
  if (v8)
  {
    v19 = a3;
    v20 = a2;
    v27 = MEMORY[0x277D84F90];
    sub_264D8D114(0, v8, 0);
    v9 = 0;
    v10 = v27;
    v22 = a1;
    do
    {
      v11 = *(a1 + v9 + 40);
      v25 = *(a1 + v9 + 32);
      v12 = *(a1 + v9 + 48);
      v23 = *(a1 + v9 + 56);
      v13 = *(a1 + v9 + 64);
      v14 = *(a1 + v9 + 72);
      v24 = *(a1 + v9 + 80);
      v15 = *(v27 + 16);
      v16 = *(v27 + 24);

      if (v15 >= v16 >> 1)
      {
        sub_264D8D114((v16 > 1), v15 + 1, 1);
      }

      *(v27 + 16) = v15 + 1;
      v17 = v27 + 56 * v15;
      *(v17 + 32) = v25;
      *(v17 + 40) = v11;
      a1 = v22;
      *(v17 + 48) = v23;
      *(v17 + 56) = v13;
      *(v17 + 64) = v14;
      *(v17 + 72) = v12;
      *(v17 + 80) = v24;
      *(v17 + 81) = 0;
      v9 += 56;
      --v8;
    }

    while (v8);

    a2 = v20;
    a3 = v19;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  result = v21;
  *a3 = v21;
  a3[1].n128_u64[0] = v10;
  a3[1].n128_f64[1] = a4;
  a3[2].n128_u8[0] = a2;
  return result;
}

__n128 sub_264E028EC@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>, double a3@<D0>)
{
  sub_264E24D78();
  v19 = v25;
  v6 = *(a1 + 16);
  if (v6)
  {
    v18 = a2;
    v26 = MEMORY[0x277D84F90];
    sub_264D8D114(0, v6, 0);
    v7 = 0;
    v8 = v26;
    v20 = a1;
    do
    {
      v9 = *(a1 + v7 + 40);
      v24 = *(a1 + v7 + 32);
      v10 = *(a1 + v7 + 48);
      v11 = *(a1 + v7 + 56);
      v12 = *(a1 + v7 + 64);
      v13 = *(a1 + v7 + 72);
      v22 = *(a1 + v7 + 81);
      v23 = *(a1 + v7 + 80);
      v21 = *(a1 + v7 + 82);
      v14 = *(v26 + 16);
      v15 = *(v26 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_264D8D114((v15 > 1), v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      v16 = v26 + 56 * v14;
      *(v16 + 32) = v24;
      *(v16 + 40) = v9;
      *(v16 + 48) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      *(v16 + 72) = v10;
      *(v16 + 80) = v23;
      *(v16 + 81) = v22;
      *(v16 + 82) = v21;
      v7 += 56;
      --v6;
      a1 = v20;
    }

    while (v6);

    a2 = v18;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  result = v19;
  *a2 = v19;
  a2[1].n128_u64[0] = v8;
  a2[1].n128_f64[1] = a3;
  a2[2].n128_u8[0] = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for MostUsedList.ItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MostUsedList.ItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264E02C9C()
{
  result = qword_27FFB3088;
  if (!qword_27FFB3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3088);
  }

  return result;
}

unint64_t sub_264E02D0C()
{
  result = qword_27FFB30A8;
  if (!qword_27FFB30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30A8);
  }

  return result;
}

unint64_t sub_264E02D60()
{
  result = qword_27FFB30B0;
  if (!qword_27FFB30B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB30A0, &qword_264E29750);
    sub_264E02DEC();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30B0);
  }

  return result;
}

unint64_t sub_264E02DEC()
{
  result = qword_27FFB30B8;
  if (!qword_27FFB30B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB30C0, &unk_264E29758);
    sub_264DD7B10();
    sub_264E02E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30B8);
  }

  return result;
}

unint64_t sub_264E02E78()
{
  result = qword_27FFB30C8;
  if (!qword_27FFB30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30C8);
  }

  return result;
}

unint64_t sub_264E02ECC()
{
  result = qword_27FFB30D0;
  if (!qword_27FFB30D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3090, &qword_264E29740);
    sub_264E02D0C();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30D0);
  }

  return result;
}

unint64_t sub_264E02F5C()
{
  result = qword_27FFB30D8;
  if (!qword_27FFB30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB30E0, qword_264E29768);
    sub_264E02D60();
    sub_264E02ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30D8);
  }

  return result;
}

uint64_t sub_264E03000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageChartFooterView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E238E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E03124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UsageChartFooterView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E238E8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264E03240()
{
  type metadata accessor for UsageChartFooterView.Model(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v1 <= 0x3F)
    {
      sub_264E238E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264E032F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264E033B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264E03454()
{
  sub_264E034D8();
  if (v0 <= 0x3F)
  {
    sub_264E23C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E034D8()
{
  if (!qword_27FFB3108)
  {
    sub_264E238E8();
    sub_264E03544();
    v0 = sub_264E25028();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB3108);
    }
  }
}

unint64_t sub_264E03544()
{
  result = qword_27FFB1ED8;
  if (!qword_27FFB1ED8)
  {
    sub_264E238E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1ED8);
  }

  return result;
}

uint64_t sub_264E035B8(unint64_t a1, uint64_t a2)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3118, &qword_264E29808);
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v53 - v8;
  MEMORY[0x28223BE20](v9);
  v56 = &v53 - v11;
  if (!a1)
  {
    return a1;
  }

  if (a1 == 1)
  {
    v12 = *v2;
    MEMORY[0x28223BE20](v10);
    *(&v53 - 2) = a2;
    v14 = sub_264DA2338(sub_264E04134, (&v53 - 4), v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v61 = MEMORY[0x277D84F90];
      sub_264D8D0F4(0, v15, 0);
      v16 = v61;
      v17 = v14 + 64;
      v18 = -1 << *(v14 + 32);
      v19 = sub_264E25368();
      v20 = 0;
      v53 = v14 + 72;
      v54 = v15;
      v55 = v14 + 64;
      do
      {
        if (v19 < 0 || v19 >= 1 << *(v14 + 32))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v23 = v19 >> 6;
        if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_34;
        }

        v60 = *(v14 + 36);
        v24 = *(v14 + 48);
        v25 = sub_264E238E8();
        v26 = *(v25 - 8);
        v27 = v26;
        v28 = v24 + *(v26 + 72) * v19;
        v29 = v56;
        (*(v26 + 16))(v56, v28, v25);
        v30 = *(*(v14 + 56) + 8 * v19);
        v31 = v57;
        (*(v27 + 32))(v57, v29, v25);
        v32 = v59;
        *&v31[*(v59 + 48)] = v30;
        v33 = v31;
        v34 = v58;
        sub_264E04154(v33, v58);
        v35 = *(v34 + *(v32 + 48));
        (*(v27 + 8))(v34, v25);
        v61 = v16;
        a1 = *(v16 + 16);
        v36 = *(v16 + 24);
        if (a1 >= v36 >> 1)
        {
          sub_264D8D0F4((v36 > 1), a1 + 1, 1);
          v16 = v61;
        }

        *(v16 + 16) = a1 + 1;
        *(v16 + 8 * a1 + 32) = v35;
        v21 = 1 << *(v14 + 32);
        v17 = v55;
        if (v19 >= v21)
        {
          goto LABEL_35;
        }

        v37 = *(v55 + 8 * v23);
        if ((v37 & (1 << v19)) == 0)
        {
          goto LABEL_36;
        }

        if (v60 != *(v14 + 36))
        {
          goto LABEL_37;
        }

        v38 = v37 & (-2 << (v19 & 0x3F));
        if (v38)
        {
          v21 = __clz(__rbit64(v38)) | v19 & 0x7FFFFFFFFFFFFFC0;
          v22 = v54;
        }

        else
        {
          v39 = v23 << 6;
          v40 = v23 + 1;
          v22 = v54;
          v41 = (v53 + 8 * v23);
          while (v40 < (v21 + 63) >> 6)
          {
            v42 = *v41++;
            a1 = v42;
            v39 += 64;
            ++v40;
            if (v42)
            {
              sub_264DFF3C0(v19, v60, 0);
              v21 = __clz(__rbit64(a1)) + v39;
              goto LABEL_6;
            }
          }

          sub_264DFF3C0(v19, v60, 0);
        }

LABEL_6:
        ++v20;
        v19 = v21;
      }

      while (v20 != v22);

      v43 = *(v16 + 16);
      if (!v43)
      {
        goto LABEL_25;
      }
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
      v43 = *(MEMORY[0x277D84F90] + 16);
      if (!v43)
      {
LABEL_25:

        return 0;
      }
    }

    if (v43 > 3)
    {
      v44 = v43 & 0x7FFFFFFFFFFFFFFCLL;
      v46 = (v16 + 48);
      v45 = 0.0;
      v47 = v43 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v48 = *v46;
        v45 = v45 + *(v46 - 2) + *(v46 - 1) + *v46 + v46[1];
        v46 += 4;
        v47 -= 4;
      }

      while (v47);
      if (v43 == v44)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v44 = 0;
      v45 = 0.0;
    }

    v49 = v43 - v44;
    v50 = (v16 + 8 * v44 + 32);
    do
    {
      v51 = *v50++;
      v45 = v45 + v51;
      --v49;
    }

    while (v49);
LABEL_31:

    return *&v45;
  }

LABEL_38:
  type metadata accessor for STActivityMode(0);
  v61 = a1;
  result = sub_264E25488();
  __break(1u);
  return result;
}

uint64_t sub_264E03A9C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3118, &qword_264E29808);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = *a2;
  v15 = sub_264E238E8();
  (*(*(v15 - 8) + 16))(v13, a1, v15);
  *&v13[*(v10 + 56)] = v14;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  LOBYTE(a1) = sub_264E238C8();
  v16 = *(v5 + 8);
  v16(v8, v4);
  if (a1)
  {
    sub_264E23888();
    v17 = sub_264E238C8();
    v16(v8, v4);
  }

  else
  {
    v17 = 0;
  }

  sub_264D817BC(v13, &qword_27FFB3118, &qword_264E29808);
  return v17 & 1;
}

uint64_t sub_264E03C94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UsageChartFooterView(0);
  result = sub_264E035B8(*(v1 + *(v3 + 20)), v1 + *(v3 + 24));
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  else
  {
    v13 = *&result;
    v14 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v14 setAllowedUnits_];
    [v14 setUnitsStyle_];
    v15 = [v14 stringFromTimeInterval_];
    if (v15)
    {
      v16 = v15;
      sub_264E25108();
    }

    else
    {
    }

    v6 = sub_264E24778();
    v23 = 1;
    sub_264E03E48(&v18);
    v26 = v20;
    v27 = v21;
    v24 = v18;
    v25 = v19;
    v29[1] = v19;
    v29[2] = v20;
    v29[3] = v21;
    v29[4] = v22;
    v28 = v22;
    v29[0] = v18;
    sub_264E040C4(&v24, v17);
    sub_264D817BC(v29, &qword_27FFB3110, &qword_264E29800);

    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    v12 = v28;
    v7 = v23;
  }

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 56) = v10;
  *(a1 + 72) = v11;
  *(a1 + 88) = v12;
  return result;
}

uint64_t sub_264E03E48@<X0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  LOWORD(v26) = 2;
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  v8 = [objc_opt_self() labelColor];
  sub_264E24C38();
  v9 = sub_264E24AB8();
  v28 = v10;
  v29 = v9;
  v27 = v11;
  v30 = v12;

  sub_264D817AC(v3, v5, v7 & 1);

  sub_264D89EB8();

  v13 = sub_264E24AF8();
  v15 = v14;
  v17 = v16;
  sub_264E24C68();
  v18 = sub_264E24AB8();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_264D817AC(v13, v15, v17 & 1);

  *a1 = v29;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v30;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 64) = v22 & 1;
  *(a1 + 72) = v24;
  sub_264D80F20(v29, v28, v27 & 1);

  sub_264D80F20(v18, v20, v22 & 1);

  sub_264D817AC(v18, v20, v22 & 1);

  sub_264D817AC(v29, v28, v27 & 1);
}

uint64_t sub_264E040C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3110, &qword_264E29800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E04154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3118, &qword_264E29808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264E041C8()
{
  result = qword_27FFB3120;
  if (!qword_27FFB3120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3128, &qword_264E29810);
    sub_264E0424C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3120);
  }

  return result;
}

unint64_t sub_264E0424C()
{
  result = qword_27FFB3130;
  if (!qword_27FFB3130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3138, &qword_264E29818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3130);
  }

  return result;
}

uint64_t AppLimitView.body.getter()
{
  v0 = sub_264E247D8();

  return MEMORY[0x2821300C8](v0);
}

uint64_t sub_264E04340()
{
  v0 = sub_264E247D8();

  return MEMORY[0x2821300C8](v0);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppLimitView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AppLimitView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264E044F8()
{
  result = qword_27FFB1798;
  if (!qword_27FFB1798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1768, &unk_264E298C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1798);
  }

  return result;
}

uint64_t UsageOverviewTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for UsageOverviewTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264E045FC()
{
  v0 = sub_264E238E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264D922CC(v4);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_264E046D8(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v27 = a1;
  v2 = sub_264E238E8();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v27 - v21;
  v23 = v12[2];
  v23(&v27 - v21, v27, v11, v20);
  (v23)(v18, v22, v11);
  (v23)(v15, v18, v11);
  v24 = v30 + *(type metadata accessor for ActivityNavigationState(0) + 20);
  (*(v28 + 16))(v5, v24 + *(v7 + 28), v29);
  sub_264D9173C(v15, v5, v10);
  v25 = v12[1];
  v25(v18, v11);
  v25(v22, v11);
  return sub_264D93A84(v10, v24);
}

uint64_t sub_264E04964@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (*a1)
    {
      type metadata accessor for STActivityMode(0);
      result = sub_264E25488();
      __break(1u);
      return result;
    }

    v5 = type metadata accessor for ActivityNavigationState(0);
    v6 = *(v5 + 20);
    v7 = a1 + *(v5 + 24);
    sub_264E23AF8();
    v3 = 0;
  }

  v8 = sub_264E23AA8();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v3, 1, v8);
}

uint64_t sub_264E04A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_264D93A14(a1, &v7 - v4);
  return sub_264D926C4(v5);
}

uint64_t sub_264E04ACC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE8, &unk_264E267E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-v8];
  v10 = *a2;
  v19 = a1;
  sub_264D93B98(sub_264E06684, v10, &v18[-v8]);
  v11 = type metadata accessor for UsageOverviewChart.Model(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_264E066BC(v9, a3, type metadata accessor for UsageOverviewChart.Model);
  }

  v13 = sub_264E23AA8();
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  v14 = *(type metadata accessor for UsageOverviewTabView.Model(0) + 20);
  v15 = v11[6];
  v16 = sub_264E23C38();
  (*(*(v16 - 8) + 16))(a3 + v15, a2 + v14, v16);
  *(a3 + v11[7]) = 3;
  *(a3 + v11[5]) = MEMORY[0x277D84F90];
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_264D817BC(v9, &qword_27FFB1CE8, &unk_264E267E8);
  }

  return result;
}

uint64_t UsageOverviewTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3140, &qword_264E298D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3148, &qword_264E298D8);
  sub_264E04E08(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB3150, &qword_27FFB3140, &qword_264E298D0);
  sub_264E24C08();
  return sub_264E052A8(v4);
}

uint64_t sub_264E04E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_264E24538();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_264E24558();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v33 - v20;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3190, &qword_264E29990);
  v22 = *(v34 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v34);
  v25 = &v33 - v24;
  v26 = a1 + *(type metadata accessor for UsageOverviewTabView(0) + 20);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v17, &qword_27FFB1F70, &qword_264E28470);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  v41 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3198, &qword_264E299C8);
  sub_264E065CC(&qword_27FFB19D0, MEMORY[0x277CC9578]);
  sub_264E06288();
  sub_264E24F48();
  sub_264E24528();
  v28 = v36;
  v29 = v37;
  (*(v36 + 16))(v35, v8, v37);
  sub_264E24548();
  (*(v28 + 8))(v8, v29);
  sub_264D81DCC(&qword_27FFB31A8, &qword_27FFB3190, &qword_264E29990);
  v30 = v34;
  v31 = v38;
  sub_264E24B68();
  (*(v39 + 8))(v13, v31);
  return (*(v22 + 8))(v25, v30);
}

uint64_t sub_264E052A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3140, &qword_264E298D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E0532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for UsageOverviewTabView(0);
  v4 = v3 - 8;
  v40 = *(v3 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = v6;
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_264E23AA8();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_264E238E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ActivityNavigationState(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v25);
  v26 = *(v20 + 28);
  v27 = v39;
  v28 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v15 + 16))(v18, &v23[v26 + *(v28 + 20)], v14);
  sub_264DA75F0(v23);
  LODWORD(v23) = *(type metadata accessor for UsageOverviewTabView.Model(0) + 20);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v29 = Calendar.startOfEachWeek(fromWeekContaining:throughWeekExcluding:)(v13, v10);
  v30 = *(v7 + 8);
  v30(v10, v27);
  v31 = (v30)(v13, v27);
  if (v29)
  {
    MEMORY[0x28223BE20](v31);
    v37 = a1;
    v32 = sub_264E0AE7C(sub_264E0633C, (&v38 - 4), v29);

    (*(v15 + 8))(v18, v14);
    v44 = v32;
    v33 = v42;
    sub_264E06614(a1, v42, type metadata accessor for UsageOverviewTabView);
    v34 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v35 = swift_allocObject();
    sub_264E066BC(v33, v35 + v34, type metadata accessor for UsageOverviewTabView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31B0, &unk_264E299D0);
    type metadata accessor for UsageOverviewChart(0);
    sub_264D81DCC(&qword_27FFB31B8, &qword_27FFB31B0, &unk_264E299D0);
    sub_264E065CC(&qword_27FFB1D80, type metadata accessor for UsageOverviewChart);
    v37 = sub_264E065CC(&qword_27FFB31C0, type metadata accessor for UsageOverviewChart.Model);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

double sub_264E05840@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = type metadata accessor for UsageOverviewChart(0);
  sub_264E06614(a1, a3 + v17[5], type metadata accessor for UsageOverviewChart.Model);
  v18 = a2 + *(type metadata accessor for UsageOverviewTabView(0) + 20);
  sub_264E24E78();
  swift_getKeyPath();
  v19 = a3 + v17[7];
  sub_264E24E68();

  sub_264D817BC(v16, &qword_27FFB1F70, &qword_264E28470);
  sub_264E23BF8();
  v20 = v17[6];
  v21 = sub_264E23AA8();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_264D93A14(v12, v9);
  sub_264E24D78();
  sub_264D817BC(v12, &qword_27FFB1860, &qword_264E267E0);
  *(a3 + v17[8]) = 0;
  v22 = (a3 + v17[9]);
  v28 = 0x40BC200000000000;
  sub_264E24D78();
  v23 = v30;
  *v22 = v29;
  *(v22 + 1) = v23;
  v24 = (a3 + v17[10]);
  v28 = 0;
  sub_264E24D78();
  result = v29;
  v26 = v30;
  *v24 = v29;
  *(v24 + 1) = v26;
  return result;
}

uint64_t sub_264E05ADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3140, &qword_264E298D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3148, &qword_264E298D8);
  sub_264E04E08(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB3150, &qword_27FFB3140, &qword_264E298D0);
  sub_264E24C08();
  return sub_264E052A8(v4);
}

uint64_t sub_264E05C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageOverviewTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E05D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UsageOverviewTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264E05E48()
{
  type metadata accessor for UsageOverviewTabView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264E06128(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264E05F10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264E05FD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264E06074()
{
  sub_264E06128(319, &qword_27FFB3178, type metadata accessor for UsageOverviewChart.Model, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_264E23C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E06128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_264E06190()
{
  result = qword_27FFB3180;
  if (!qword_27FFB3180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3188, &unk_264E29980);
    sub_264D81DCC(&qword_27FFB3150, &qword_27FFB3140, &qword_264E298D0);
    sub_264E065CC(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3180);
  }

  return result;
}

unint64_t sub_264E06288()
{
  result = qword_27FFB31A0;
  if (!qword_27FFB31A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3198, &qword_264E299C8);
    sub_264E065CC(&qword_27FFB1D80, type metadata accessor for UsageOverviewChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB31A0);
  }

  return result;
}

uint64_t sub_264E0635C()
{
  v1 = (type metadata accessor for UsageOverviewTabView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*v1 + 64);
  v4 = *(v0 + v3);

  v5 = *(type metadata accessor for UsageOverviewTabView.Model(0) + 20);
  v6 = sub_264E23C38();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = (v0 + v3 + v1[7]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470) + 32);
  v12 = type metadata accessor for ActivityNavigationState(0);
  v13 = &v11[*(v12 + 20)];
  v14 = sub_264E23AA8();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
  v16 = sub_264E238E8();
  (*(*(v16 - 8) + 8))(&v13[v15], v16);
  v7(&v11[*(v12 + 24)], v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v18, v2 | 7);
}

double sub_264E0654C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UsageOverviewTabView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_264E05840(a1, v6, a2);
}

uint64_t sub_264E065CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264E06614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E066BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E06750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v18[0] = sub_264E24888();
  v7 = *(v18[0] - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v18[0]);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31D0, &qword_264E29AB8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31E0, &qword_264E29AC0);
  sub_264E24E78();
  v21 = v19;
  v22 = v20;
  type metadata accessor for STActivityMode(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31E8, &qword_264E29AC8);
  sub_264E06EA0();
  sub_264D81DCC(&qword_27FFB31F8, &qword_27FFB31E8, &qword_264E29AC8);
  sub_264E24E18();
  sub_264E24878();
  sub_264D81DCC(&qword_27FFB31D8, &qword_27FFB31D0, &qword_264E29AB8);
  v16 = v18[0];
  sub_264E24BC8();
  (*(v7 + 8))(v10, v16);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_264E06A00@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3200, &qword_264E29AD0);
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v29 = &v29 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  sub_264E247D8();
  v13 = objc_opt_self();
  v14 = [v13 bundle];
  *v12 = sub_264E24AE8();
  *(v12 + 1) = v15;
  v12[16] = v16 & 1;
  *(v12 + 3) = v17;
  *(v12 + 4) = 1;
  v12[40] = 1;
  sub_264E247D8();
  v18 = [v13 bundle];
  *v9 = sub_264E24AE8();
  *(v9 + 1) = v19;
  v9[16] = v20 & 1;
  *(v9 + 3) = v21;
  *(v9 + 4) = 0;
  v9[40] = 1;
  v22 = v2[2];
  v23 = v29;
  v22(v29, v12, v1);
  v24 = v30;
  v22(v30, v9, v1);
  v25 = v31;
  v22(v31, v23, v1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3208, &qword_264E29AD8);
  v22(&v25[*(v26 + 48)], v24, v1);
  v27 = v2[1];
  v27(v9, v1);
  v27(v12, v1);
  v27(v24, v1);
  return (v27)(v23, v1);
}

uint64_t sub_264E06D3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31C8, &qword_264E29AB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  sub_264E06750(*v0, v0[1], v0[2], v8 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB31D0, &qword_264E29AB8);
  v5 = sub_264E24888();
  v6 = sub_264D81DCC(&qword_27FFB31D8, &qword_27FFB31D0, &qword_264E29AB8);
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = MEMORY[0x277CDE058];
  swift_getOpaqueTypeConformance2();
  return sub_264E24F18();
}

unint64_t sub_264E06EA0()
{
  result = qword_27FFB31F0;
  if (!qword_27FFB31F0)
  {
    type metadata accessor for STActivityMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB31F0);
  }

  return result;
}

unint64_t sub_264E06EFC()
{
  result = qword_27FFB3210;
  if (!qword_27FFB3210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3218, &qword_264E29AE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB31D0, &qword_264E29AB8);
    sub_264E24888();
    sub_264D81DCC(&qword_27FFB31D8, &qword_27FFB31D0, &qword_264E29AB8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3210);
  }

  return result;
}

uint64_t sub_264E07048@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v44 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3220, &qword_264E29B90);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v43 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3228, &qword_264E29B98);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3230, &qword_264E29BA0);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3238, &unk_264E29BA8);
  v13 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v15 = &v37 - v14;
  v16 = [objc_opt_self() bundle];
  sub_264E23938();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2610, &unk_264E27E60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_264E261E0;
  v18 = objc_opt_self();
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v20 = [v18 localizedStringFromNumber:v19 numberStyle:3];

  v21 = sub_264E25108();
  v23 = v22;

  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_264DDBB6C();
  *(v17 + 32) = v21;
  *(v17 + 40) = v23;
  v24 = sub_264E250F8();
  v26 = v25;

  if ((a2 < 0.05 || a2 > 2.0) && (a2 > -0.05 || a2 < -0.9))
  {

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3240, &qword_264E29BB8);
    v34 = *(*(v33 - 8) + 56);
    v35 = v33;
    v36 = v44;

    return v34(v36, 1, 1, v35);
  }

  else
  {
    v45 = v24;
    v46 = v26;
    sub_264D89EB8();
    sub_264E24D68();
    v45 = 0x400C000000000000;
    v27 = sub_264D81DCC(&qword_27FFB3248, &qword_27FFB3228, &qword_264E29B98);
    v28 = sub_264E077A0();
    sub_264E24BA8();
    (*(v38 + 8))(v8, v5);
    v45 = v5;
    v46 = &type metadata for DeltaLabelSpacing;
    v47 = v27;
    v48 = v28;
    swift_getOpaqueTypeConformance2();
    v29 = v40;
    sub_264E24C08();
    (*(v39 + 8))(v12, v29);
    sub_264E077F4(v15, v43);
    swift_storeEnumTagMultiPayload();
    sub_264E07864();
    v30 = v44;
    sub_264E24858();
    sub_264E07974(v15);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3240, &qword_264E29BB8);
    return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }
}

unint64_t sub_264E077A0()
{
  result = qword_27FFB3250;
  if (!qword_27FFB3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3250);
  }

  return result;
}

uint64_t sub_264E077F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3238, &unk_264E29BA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_264E07864()
{
  result = qword_27FFB3258;
  if (!qword_27FFB3258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3238, &unk_264E29BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3228, &qword_264E29B98);
    sub_264D81DCC(&qword_27FFB3248, &qword_27FFB3228, &qword_264E29B98);
    sub_264E077A0();
    swift_getOpaqueTypeConformance2();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3258);
  }

  return result;
}

uint64_t sub_264E07974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3238, &unk_264E29BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264E079F0()
{
  result = qword_27FFB3260;
  if (!qword_27FFB3260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3268, &qword_264E29BD8);
    sub_264E07A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3260);
  }

  return result;
}

unint64_t sub_264E07A74()
{
  result = qword_27FFB3270;
  if (!qword_27FFB3270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3240, &qword_264E29BB8);
    sub_264E07864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3270);
  }

  return result;
}

uint64_t sub_264E07B14@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = sub_264E24918();
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_264E248F8();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  sub_264E24908();
  sub_264E24928();
  v18 = *(v11 + 16);
  v18(v14, v17, v10);
  v19 = *(v3 + 16);
  v19(v6, v9, v1);
  v20 = v31;
  v18(v31, v14, v10);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3290, &qword_264E29C60) + 48)];
  v22 = v28;
  v19(v21, v6, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v6, v25);
  return (v26)(v14, v10);
}

uint64_t sub_264E07DA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_264E24758();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3278, &qword_264E29C18);
  sub_264E07B14((a1 + *(v4 + 44)));
  v5 = sub_264E249E8();
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3280, &qword_264E29C50) + 36));
  *v7 = KeyPath;
  v7[1] = v5;
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = sub_264E24C38();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3288, &qword_264E29C58);
  *(a1 + *(result + 36)) = v9;
  return result;
}

unint64_t sub_264E07E8C()
{
  result = qword_27FFB3298;
  if (!qword_27FFB3298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3288, &qword_264E29C58);
    sub_264E07F44();
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3298);
  }

  return result;
}

unint64_t sub_264E07F44()
{
  result = qword_27FFB32A0;
  if (!qword_27FFB32A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3280, &qword_264E29C50);
    sub_264D81DCC(&qword_27FFB32A8, &qword_27FFB32B0, &qword_264E29C68);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB32A0);
  }

  return result;
}

double STCommunicationSafetyToggleFooter.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24A78();
  v8 = sub_264E24AD8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_264D817AC(v3, v5, v7 & 1);

  v15 = sub_264E249B8();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

double STCommunicationSafetyViewChildSafetyResourcesFooter.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24A78();
  v8 = sub_264E24AD8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_264D817AC(v3, v5, v7 & 1);

  v15 = sub_264E249B8();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

double STCommunicationSafetyAnalyticsFooter.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24A78();
  v8 = sub_264E24AD8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_264D817AC(v3, v5, v7 & 1);

  v15 = sub_264E249B8();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

unint64_t sub_264E084FC()
{
  result = qword_27FFB32B8;
  if (!qword_27FFB32B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB32C0, &qword_264E29E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB32B8);
  }

  return result;
}

uint64_t NotificationsLegendView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for NotificationsLegendView.Model(0) + 20);
  *(a2 + v4) = sub_264DEE390(MEMORY[0x277D84F90]);
  v5 = sub_264E23C38();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t sub_264E08638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v6 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v36 - v7;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_264E23AA8();
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v38);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v18 = type metadata accessor for NotificationsLegendView.Model(0);
    v19 = *(v2 + *(v18 + 20));
    MEMORY[0x28223BE20](v18);
    v34 = a2;
    v21 = sub_264DA253C(sub_264E0AB08, (&v36 - 4), v20);
    v10 = v21;
    v17 = (v21 + 64);
    v22 = 1 << *(v21 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v21 + 64);
    v13 = ((v22 + 63) >> 6);
    a1 = v14 + 16;

    v9 = 0;
    v25 = 0;
    while (v24)
    {
      v26 = v9;
LABEL_11:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v28 = v27 | (v26 << 6);
      (*(v14 + 16))(v8, *(v10 + 48) + *(v14 + 72) * v28, v38);
      v3 = *(*(v10 + 56) + 8 * v28);
      *&v8[*(v37 + 48)] = v3;
      sub_264D817BC(v8, &qword_27FFB1BB8, &unk_264E26640);
      v29 = __OFADD__(v25, v3);
      v25 += v3;
      if (v29)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    while (1)
    {
      v26 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v26 >= v13)
      {

        return v25;
      }

      v24 = *&v17[8 * v26];
      ++v9;
      if (v24)
      {
        v9 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_14:
  if (a1)
  {
LABEL_22:
    v35 = 0;
    v34 = 50;
    result = sub_264E253E8();
    __break(1u);
    return result;
  }

  sub_264E23858();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v10 + 8))(v13, v9);
  v30 = *(v3 + *(type metadata accessor for NotificationsLegendView.Model(0) + 20));
  if (*(v30 + 16) && (v31 = sub_264D9D5F4(v17), (v32 & 1) != 0))
  {
    v25 = *(*(v30 + 56) + 8 * v31);
    (*(v14 + 8))(v17, v38);
  }

  else
  {
    (*(v14 + 8))(v17, v38);
    return 0;
  }

  return v25;
}

uint64_t sub_264E08A18(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *a2;
  v10 = sub_264E23AA8();
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  *&v8[*(v5 + 56)] = v9;
  v11 = sub_264E238C8();
  sub_264D817BC(v8, &qword_27FFB1BB8, &unk_264E26640);
  return v11 & 1;
}

uint64_t NotificationsLegendView.init(model:mode:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for NotificationsLegendView(0);
  v9 = v8[7];
  v10 = sub_264E23AA8();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = (a4 + v8[8]);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  sub_264E09F08(a1, a4, type metadata accessor for NotificationsLegendView.Model);
  *(a4 + v8[5]) = a2;
  v12 = v8[6];
  v13 = sub_264E238E8();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

double NotificationsLegendView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NotificationsLegendView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_264E24C88();
  sub_264E24F58();
  sub_264E24588();
  sub_264E09CD4(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_264E09F08(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for NotificationsLegendView);
  v10 = sub_264E24F58();
  v11 = v16[2];
  *(a1 + 56) = v16[3];
  v12 = v16[5];
  *(a1 + 72) = v16[4];
  *(a1 + 88) = v12;
  *(a1 + 104) = v16[6];
  result = *v16;
  v14 = v16[1];
  *(a1 + 8) = v16[0];
  *(a1 + 24) = v14;
  *a1 = v7;
  *(a1 + 40) = v11;
  *(a1 + 120) = sub_264E09F70;
  *(a1 + 128) = v9;
  *(a1 + 136) = v10;
  *(a1 + 144) = v15;
  return result;
}

uint64_t sub_264E08DD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  result = sub_264E244C8();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = v9;
    *a2 = sub_264E24768();
    *(a2 + 8) = 0x4034000000000000;
    *(a2 + 16) = 0;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3328, &qword_264E29F38);
    sub_264E08F78(a1, v10, a2 + *(v11 + 44));
    v12 = sub_264E249F8();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = sub_264E24A38();
    sub_264D817BC(v7, &qword_27FFB17B8, &qword_264E279E0);
    KeyPath = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3330, &qword_264E29F70);
    v15 = (a2 + *(result + 36));
    *v15 = KeyPath;
    v15[1] = v13;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_264E08F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3338, &qword_264E29F78);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5);
  v61 = v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3340, &qword_264E29F80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v55 - v16;
  v18 = sub_264E23AA8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3348, &qword_264E29F88);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v65 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v64 = v55 - v27;
  v28 = type metadata accessor for NotificationsLegendView(0);
  v29 = (a1 + *(v28 + 32));
  if (v29[1])
  {
    v56 = a3;
    v30 = v8;
    v31 = a1;
    v32 = *v29;
    v33 = v29[2];
    v34 = *(v28 + 28);
    v57 = v31;
    sub_264D81744(v31 + v34, v17, &qword_27FFB1860, &qword_264E267E0);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v36 = (*(v19 + 32))(v22, v17, v18);
      v55[1] = v55;
      MEMORY[0x28223BE20](v36);
      v55[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3358, &qword_264E29FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3360, &qword_264E29FA8);
      sub_264E0A810();
      sub_264E0A8C8();
      v37 = v61;
      sub_264E24D58();
      sub_264E24F68();
      sub_264E24588();
      v38 = v59;
      (*(v62 + 32))(v59, v37, v63);
      v39 = v30;
      v40 = (v38 + *(v30 + 36));
      v41 = *&v75[103];
      v40[4] = *&v75[87];
      v40[5] = v41;
      v40[6] = *&v75[119];
      v42 = *&v75[39];
      *v40 = *&v75[23];
      v40[1] = v42;
      v43 = *&v75[71];
      v40[2] = *&v75[55];
      v40[3] = v43;
      v44 = v58;
      sub_264E0AA38(v38, v58);
      v35 = v64;
      sub_264E0AA38(v44, v64);
      (*(v9 + 56))(v35, 0, 1, v39);
      (*(v19 + 8))(v22, v18);
      a3 = v56;
      a1 = v57;
      goto LABEL_6;
    }

    sub_264D817BC(v17, &qword_27FFB1860, &qword_264E267E0);
    v8 = v30;
    a3 = v56;
    a1 = v57;
  }

  v35 = v64;
  (*(v9 + 56))(v64, 1, 1, v8);
LABEL_6:
  v45 = sub_264E24828();
  LOBYTE(v70[0]) = 0;
  sub_264E09A30(a1, v67);
  *&v66[7] = v67[0];
  *&v66[23] = v67[1];
  *&v66[39] = v67[2];
  *&v66[55] = v67[3];
  v46 = v70[0];
  v47 = v65;
  sub_264D81744(v35, v65, &qword_27FFB3348, &qword_264E29F88);
  sub_264D81744(v47, a3, &qword_27FFB3348, &qword_264E29F88);
  v48 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3350, &unk_264E29F90) + 48);
  *&v68 = v45;
  *(&v68 + 1) = 0x4014000000000000;
  v69[0] = v46;
  *&v69[1] = *v66;
  *&v69[17] = *&v66[16];
  *&v69[33] = *&v66[32];
  *&v69[49] = *&v66[48];
  v49 = *&v66[63];
  *&v69[64] = *&v66[63];
  v50 = *v69;
  *v48 = v68;
  *(v48 + 16) = v50;
  v51 = *&v69[16];
  v52 = *&v69[32];
  v53 = *&v69[48];
  *(v48 + 80) = v49;
  *(v48 + 48) = v52;
  *(v48 + 64) = v53;
  *(v48 + 32) = v51;
  sub_264D81744(&v68, v70, &qword_27FFB2BD8, &qword_264E28B28);
  sub_264D817BC(v35, &qword_27FFB3348, &qword_264E29F88);
  v70[0] = v45;
  v70[1] = 0x4014000000000000;
  v71 = v46;
  v73 = *&v66[16];
  v74 = *&v66[32];
  *v75 = *&v66[48];
  *&v75[15] = *&v66[63];
  v72 = *v66;
  sub_264D817BC(v70, &qword_27FFB2BD8, &qword_264E28B28);
  return sub_264D817BC(v47, &qword_27FFB3348, &qword_264E29F88);
}

double sub_264E09644@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_264E24828();
  sub_264E0971C(a1, a2, v10);
  *&v9[7] = v10[0];
  *&v9[23] = v10[1];
  *&v9[39] = v10[2];
  *&v9[55] = v10[3];
  v7 = sub_264E24998();
  *(a3 + 33) = *&v9[16];
  *(a3 + 49) = *&v9[32];
  *(a3 + 65) = *&v9[48];
  *a3 = v6;
  *(a3 + 8) = 0x4014000000000000;
  *(a3 + 16) = 0;
  *(a3 + 80) = *&v9[63];
  *(a3 + 17) = *v9;
  *(a3 + 88) = v7;
  result = 0.0;
  *(a3 + 96) = xmmword_264E29E30;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  return result;
}

uint64_t sub_264E0971C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_264D89EB8();

  v5 = sub_264E24AF8();
  v7 = v6;
  v9 = v8;
  sub_264E248D8();
  v10 = sub_264E24AC8();
  v12 = v11;
  v27 = v13;
  v15 = v14;
  sub_264D817AC(v5, v7, v9 & 1);

  if (*(a1 + 16))
  {
    v16 = sub_264D9D5F4(a2);
    if (v17)
    {
      v18 = *(*(a1 + 56) + 8 * v16);
    }
  }

  sub_264D908C4();
  sub_264E25348();
  v19 = sub_264E24AF8();
  v21 = v20;
  v23 = v22 & 1;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v27 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  *(a3 + 48) = v22 & 1;
  *(a3 + 56) = v24;
  sub_264D80F20(v10, v12, v27 & 1);

  sub_264D80F20(v19, v21, v23);

  sub_264D817AC(v19, v21, v23);

  sub_264D817AC(v10, v12, v27 & 1);
}

uint64_t sub_264E098F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264E24D18();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3388, &qword_264E29FB0) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EE0, &qword_264E29488) + 28);
  v5 = *MEMORY[0x277CE1050];
  v6 = sub_264E24D38();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  v7 = [objc_opt_self() systemRedColor];
  v8 = sub_264E24C38();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3360, &qword_264E29FA8);
  v11 = (a1 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  return result;
}

uint64_t sub_264E09A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_264E247D8();
  v4 = [objc_opt_self() bundle];
  v5 = sub_264E24AE8();
  v7 = v6;
  v9 = v8;
  sub_264E24C68();
  v10 = sub_264E24AC8();
  v12 = v11;
  v23 = v13;
  v15 = v14;
  sub_264D817AC(v5, v7, v9 & 1);

  v16 = type metadata accessor for NotificationsLegendView(0);
  sub_264E08638(*(a1 + *(v16 + 20)), a1 + *(v16 + 24));
  sub_264D908C4();
  sub_264E25348();
  sub_264D89EB8();
  v17 = sub_264E24AF8();
  v19 = v18;
  LOBYTE(v7) = v20 & 1;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v20 & 1;
  *(a2 + 56) = v21;
  sub_264D80F20(v10, v12, v23 & 1);

  sub_264D80F20(v17, v19, v7);

  sub_264D817AC(v17, v19, v7);

  sub_264D817AC(v10, v12, v23 & 1);
}

uint64_t sub_264E09C5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264E24638();
  *a1 = result;
  return result;
}

uint64_t sub_264E09C88(uint64_t *a1)
{
  v1 = *a1;

  return sub_264E24648();
}

uint64_t sub_264E09CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsLegendView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E09D38()
{
  v1 = type metadata accessor for NotificationsLegendView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_264E23C38();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + *(type metadata accessor for NotificationsLegendView.Model(0) + 20));

  v8 = v1[6];
  v9 = sub_264E238E8();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[7];
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v5 + v1[8];
  if (*(v13 + 8))
  {

    v14 = *(v13 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264E09F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E09F70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationsLegendView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_264E08DD4(v4, a1);
}

uint64_t sub_264E0A020(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for NotificationsLegendView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E238E8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_264E0A1A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for NotificationsLegendView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_264E238E8();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_264E0A304()
{
  type metadata accessor for NotificationsLegendView.Model(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v1 <= 0x3F)
    {
      sub_264E238E8();
      if (v2 <= 0x3F)
      {
        sub_264DDB89C();
        if (v3 <= 0x3F)
        {
          sub_264E0A3D0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_264E0A3D0()
{
  if (!qword_27FFB32D8)
  {
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB32D8);
    }
  }
}

uint64_t sub_264E0A434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264E0A504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_264E0A5BC()
{
  sub_264E23C38();
  if (v0 <= 0x3F)
  {
    sub_264E0A640();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E0A640()
{
  if (!qword_27FFB32F0)
  {
    sub_264E23AA8();
    sub_264DF24BC();
    v0 = sub_264E25028();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB32F0);
    }
  }
}

unint64_t sub_264E0A6B0()
{
  result = qword_27FFB32F8;
  if (!qword_27FFB32F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3300, &qword_264E29EE0);
    sub_264E0A768();
    sub_264D81DCC(&qword_27FFB3318, &qword_27FFB3320, &qword_264E29EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB32F8);
  }

  return result;
}

unint64_t sub_264E0A768()
{
  result = qword_27FFB3308;
  if (!qword_27FFB3308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3310, &qword_264E29EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3308);
  }

  return result;
}

double sub_264E0A804@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_264E09644(v1[4], v1[5], a1);
}

unint64_t sub_264E0A810()
{
  result = qword_27FFB3368;
  if (!qword_27FFB3368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3358, &qword_264E29FA0);
    sub_264D81DCC(&qword_27FFB3370, &qword_27FFB2BD8, &qword_264E28B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3368);
  }

  return result;
}

unint64_t sub_264E0A8C8()
{
  result = qword_27FFB3378;
  if (!qword_27FFB3378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3360, &qword_264E29FA8);
    sub_264E0A980();
    sub_264D81DCC(&qword_27FFB1800, &qword_27FFB1808, &qword_264E26150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3378);
  }

  return result;
}

unint64_t sub_264E0A980()
{
  result = qword_27FFB3380;
  if (!qword_27FFB3380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3388, &qword_264E29FB0);
    sub_264D81DCC(&qword_27FFB2F10, &qword_27FFB2EE0, &qword_264E29488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3380);
  }

  return result;
}

uint64_t sub_264E0AA38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3340, &qword_264E29F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0AAB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264E24638();
  *a1 = result;
  return result;
}

uint64_t sub_264E0AADC(uint64_t *a1)
{
  v1 = *a1;

  return sub_264E24648();
}

uint64_t sub_264E0ABD0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v26 = a6;
  v27 = a1;
  v8 = v6;
  v28 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    return v17;
  }

  v29 = MEMORY[0x277D84F90];
  v24 = a5;
  (a5)(0, v16, 0, v13);
  v17 = v29;
  v18 = *(sub_264E23AA8() - 8);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v25 = *(v18 + 72);
  while (1)
  {
    v27(v19);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v29 = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v24(v20 > 1, v21 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v21 + 1;
    sub_264E0CA00(v15, v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v26);
    v19 += v25;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264E0AED0(uint64_t a1)
{
  v2 = type metadata accessor for ActivityNavigationState(0);
  v3 = *(v2 + 20);
  v4 = a1 + *(v2 + 24);
  return sub_264E23AF8();
}

uint64_t sub_264E0AF18(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v27 = a1;
  v2 = sub_264E238E8();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v27 - v21;
  v23 = v12[2];
  v23(&v27 - v21, v27, v11, v20);
  (v23)(v18, v22, v11);
  (v23)(v15, v18, v11);
  v24 = v30 + *(type metadata accessor for ActivityNavigationState(0) + 20);
  (*(v28 + 16))(v5, v24 + *(v7 + 28), v29);
  sub_264D9173C(v15, v5, v10);
  v25 = v12[1];
  v25(v18, v11);
  v25(v22, v11);
  return sub_264D93A84(v10, v24);
}

uint64_t UsageDetailTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for UsageDetailTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264E0B244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CD8, &unk_264E267C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-v8];
  v10 = *a2;
  v19 = a1;
  sub_264D93C00(sub_264E0C9E0, v10, &v18[-v8]);
  v11 = type metadata accessor for UsageDetailChart.Model(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_264E0CA00(v9, a3, type metadata accessor for UsageDetailChart.Model);
  }

  v13 = sub_264E23AA8();
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  v14 = *(type metadata accessor for UsageDetailTabView.Model(0) + 20);
  v15 = v11[6];
  v16 = sub_264E23C38();
  (*(*(v16 - 8) + 16))(a3 + v15, a2 + v14, v16);
  *(a3 + v11[7]) = 0x40BC200000000000;
  *(a3 + v11[8]) = 3;
  *(a3 + v11[5]) = MEMORY[0x277D84F90];
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_264D817BC(v9, &qword_27FFB1CD8, &unk_264E267C0);
  }

  return result;
}

uint64_t sub_264E0B470(uint64_t a1)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for UsageDetailChart.Model(0) + 24);
  sub_264E23AF8();
  LOBYTE(v7) = sub_264E23A78();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t UsageDetailTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3390, &qword_264E2A020);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3398, &qword_264E2A028);
  sub_264E0B698(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB33A0, &qword_27FFB3390, &qword_264E2A020);
  sub_264E24C08();
  return sub_264E0BB38(v4);
}

uint64_t sub_264E0B698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_264E24538();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_264E24558();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v33 - v20;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB33E0, &qword_264E2A0E0);
  v22 = *(v34 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v34);
  v25 = &v33 - v24;
  v26 = a1 + *(type metadata accessor for UsageDetailTabView(0) + 20);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v17, &qword_27FFB1F70, &qword_264E28470);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  v41 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB33E8, &qword_264E2A118);
  sub_264E0C934(&qword_27FFB19D0, MEMORY[0x277CC9578]);
  sub_264E0C860();
  sub_264E24F48();
  sub_264E24528();
  v28 = v36;
  v29 = v37;
  (*(v36 + 16))(v35, v8, v37);
  sub_264E24548();
  (*(v28 + 8))(v8, v29);
  sub_264D81DCC(&qword_27FFB33F8, &qword_27FFB33E0, &qword_264E2A0E0);
  v30 = v34;
  v31 = v38;
  sub_264E24B68();
  (*(v39 + 8))(v13, v31);
  return (*(v22 + 8))(v25, v30);
}

uint64_t sub_264E0BB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3390, &qword_264E2A020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E0BBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[1] = a2;
  v32[0] = sub_264E23AA8();
  v3 = *(v32[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v32[0]);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = sub_264E238E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActivityNavigationState(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for UsageDetailTabView(0) + 20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v21);
  v22 = *(v16 + 28);
  v23 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v11 + 16))(v14, &v19[v22 + *(v23 + 20)], v10);
  sub_264DA75F0(v19);
  LODWORD(v16) = *(type metadata accessor for UsageDetailTabView.Model(0) + 20);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v24 = Calendar.startOfEachDay(fromDayContaining:throughDayExcluding:)();
  v25 = *(v3 + 8);
  v26 = v6;
  v27 = v32[0];
  v25(v26, v32[0]);
  v28 = v25(v9, v27);
  if (v24)
  {
    MEMORY[0x28223BE20](v28);
    v31 = a1;
    v29 = sub_264E0ABD0(sub_264E0C914, &v32[-4], v24, type metadata accessor for UsageDetailChart.Model, sub_264D8D42C, type metadata accessor for UsageDetailChart.Model);

    (*(v11 + 8))(v14, v10);
    v32[2] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3400, &unk_264E2A120);
    type metadata accessor for UsageDetailChart(0);
    sub_264D81DCC(&qword_27FFB3408, &qword_27FFB3400, &unk_264E2A120);
    sub_264E0C934(&qword_27FFB1D70, type metadata accessor for UsageDetailChart);
    v31 = sub_264E0C934(&qword_27FFB3410, type metadata accessor for UsageDetailChart.Model);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264E0C038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_264E0C97C(a1, a2);
  result = type metadata accessor for UsageDetailChart(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_264E0C070()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3390, &qword_264E2A020);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3398, &qword_264E2A028);
  sub_264E0B698(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB33A0, &qword_27FFB3390, &qword_264E2A020);
  sub_264E24C08();
  return sub_264E0BB38(v4);
}

uint64_t sub_264E0C1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageDetailTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E0C2B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UsageDetailTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264E0C3DC()
{
  type metadata accessor for UsageDetailTabView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264E0C6BC(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264E0C4A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264E0C564(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264E0C608()
{
  sub_264E0C6BC(319, &qword_27FFB33C8, type metadata accessor for UsageDetailChart.Model, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_264E23C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E0C6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_264E0C724()
{
  result = qword_27FFB33D0;
  if (!qword_27FFB33D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB33D8, &unk_264E2A0D0);
    sub_264D81DCC(&qword_27FFB33A0, &qword_27FFB3390, &qword_264E2A020);
    sub_264E0C934(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB33D0);
  }

  return result;
}

uint64_t sub_264E0C80C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityNavigationState(0);
  v3 = *(v2 + 20);
  v4 = a1 + *(v2 + 24);
  return sub_264E23AF8();
}

unint64_t sub_264E0C860()
{
  result = qword_27FFB33F0;
  if (!qword_27FFB33F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB33E8, &qword_264E2A118);
    sub_264E0C934(&qword_27FFB1D70, type metadata accessor for UsageDetailChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB33F0);
  }

  return result;
}

uint64_t sub_264E0C934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264E0C97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageDetailChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0CA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_264E0CA84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_264E0CACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264E0CB48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E238E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264E0CC08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E238E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MostUsedListSectionAppsAndCategories()
{
  result = qword_27FFB3418;
  if (!qword_27FFB3418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264E0CCF8()
{
  sub_264E238E8();
  if (v0 <= 0x3F)
  {
    sub_264E0CD8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E0CD8C()
{
  if (!qword_27FFB3428)
  {
    v0 = sub_264E24DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB3428);
    }
  }
}

uint64_t sub_264E0CDF8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3430, &qword_264E2A208);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-v5];
  v7 = type metadata accessor for MostUsedListSectionAppsAndCategories();
  v8 = v1 + *(v7 + 24);
  v9 = *v8;
  v10 = *(v8 + 1);
  v22 = *v8;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3438, &qword_264E2A210);
  sub_264E24D88();
  if (v21)
  {
    v11 = *v1;
  }

  else
  {
    v11 = v1[1];
  }

  v12 = sub_264E0E248(v11, v1 + *(v7 + 20));
  v22 = v9;
  v23 = v10;
  sub_264E24D88();
  v13 = v1 + *(v7 + 20);
  if ((v21 & 1) == 0)
  {
    v14 = sub_264E0D054(v13);
    if (*(v12 + 16))
    {
      goto LABEL_6;
    }

LABEL_8:

    v17 = 1;
    goto LABEL_9;
  }

  v14 = sub_264E0D404(v13);
  if (!*(v12 + 16))
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  *&v20[-16] = v12;
  *&v20[-8] = v15;
  *v6 = sub_264E24778();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3440, &qword_264E2A218);
  sub_264E0D7B4(v1, &v6[*(v16 + 44)]);
  sub_264E0E9D4();
  sub_264D9CF58();
  sub_264E24F18();

  v17 = 0;
LABEL_9:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3450, &qword_264E2A220);
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

char *sub_264E0D054(uint64_t a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v47 - v6;
  v7 = *(v1 + 8);
  v54 = a1;
  sub_264DA25B0(sub_264E0EA38, v53, v7);
  v47 = 0;
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v51 = v8;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v12)
  {
    v52 = v16;
LABEL_11:
    v18 = __clz(__rbit64(v12)) | (v15 << 6);
    v19 = v51;
    v20 = *(v51 + 48);
    v21 = sub_264E238E8();
    v22 = *(v21 - 8);
    v23 = v48;
    (*(v22 + 16))(v48, v20 + *(v22 + 72) * v18, v21);
    v24 = *(*(v19 + 56) + 8 * v18);
    v25 = v50;
    *&v23[*(v50 + 48)] = v24;
    v26 = v23;
    v27 = v49;
    sub_264E0F24C(v26, v49);
    v28 = *(v27 + *(v25 + 48));
    v29 = *(v22 + 8);

    result = v29(v27, v21);
    v30 = *(v28 + 16);
    v16 = v52;
    v31 = *(v52 + 2);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_34;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v32 > *(v16 + 3) >> 1)
    {
      if (v31 <= v32)
      {
        v33 = v31 + v30;
      }

      else
      {
        v33 = v31;
      }

      result = sub_264DBBD3C(result, v33, 1, v16);
      v16 = result;
    }

    v12 &= v12 - 1;
    if (*(v28 + 16))
    {
      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v30)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v34 = *(v16 + 2);
        v35 = __OFADD__(v34, v30);
        v36 = v34 + v30;
        if (v35)
        {
          goto LABEL_37;
        }

        *(v16 + 2) = v36;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      v37 = *(v16 + 2);
      if (v37)
      {
        if (v37 == 1)
        {
          v38 = 0;
          v39 = 0.0;
          goto LABEL_30;
        }

        v38 = v37 & 0x7FFFFFFFFFFFFFFELL;
        v40 = (v16 + 104);
        v39 = 0.0;
        v41 = v37 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v42 = *(v40 - 7);
          v43 = *v40;
          v40 += 14;
          v39 = v39 + v42 + v43;
          v41 -= 2;
        }

        while (v41);
        if (v37 != v38)
        {
LABEL_30:
          v44 = v37 - v38;
          v45 = &v16[56 * v38 + 48];
          do
          {
            v46 = *v45;
            v45 += 7;
            v39 = v39 + v46;
            --v44;
          }

          while (v44);
        }
      }
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v52 = v16;
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

char *sub_264E0D404(uint64_t a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v47 - v6;
  v7 = *v1;
  v54 = a1;
  sub_264DA25B0(sub_264E105FC, v53, v7);
  v47 = 0;
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v51 = v8;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v12)
  {
    v52 = v16;
LABEL_11:
    v18 = __clz(__rbit64(v12)) | (v15 << 6);
    v19 = v51;
    v20 = *(v51 + 48);
    v21 = sub_264E238E8();
    v22 = *(v21 - 8);
    v23 = v48;
    (*(v22 + 16))(v48, v20 + *(v22 + 72) * v18, v21);
    v24 = *(*(v19 + 56) + 8 * v18);
    v25 = v50;
    *&v23[*(v50 + 48)] = v24;
    v26 = v23;
    v27 = v49;
    sub_264E0F24C(v26, v49);
    v28 = *(v27 + *(v25 + 48));
    v29 = *(v22 + 8);

    result = v29(v27, v21);
    v30 = *(v28 + 16);
    v16 = v52;
    v31 = *(v52 + 2);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_34;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v32 > *(v16 + 3) >> 1)
    {
      if (v31 <= v32)
      {
        v33 = v31 + v30;
      }

      else
      {
        v33 = v31;
      }

      result = sub_264DBBD3C(result, v33, 1, v16);
      v16 = result;
    }

    v12 &= v12 - 1;
    if (*(v28 + 16))
    {
      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v30)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v34 = *(v16 + 2);
        v35 = __OFADD__(v34, v30);
        v36 = v34 + v30;
        if (v35)
        {
          goto LABEL_37;
        }

        *(v16 + 2) = v36;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      v37 = *(v16 + 2);
      if (v37)
      {
        if (v37 == 1)
        {
          v38 = 0;
          v39 = 0.0;
          goto LABEL_30;
        }

        v38 = v37 & 0x7FFFFFFFFFFFFFFELL;
        v40 = (v16 + 104);
        v39 = 0.0;
        v41 = v37 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v42 = *(v40 - 7);
          v43 = *v40;
          v40 += 14;
          v39 = v39 + v42 + v43;
          v41 -= 2;
        }

        while (v41);
        if (v37 != v38)
        {
LABEL_30:
          v44 = v37 - v38;
          v45 = &v16[56 * v38 + 48];
          do
          {
            v46 = *v45;
            v45 += 7;
            v39 = v39 + v46;
            --v44;
          }

          while (v44);
        }
      }
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v52 = v16;
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_264E0D7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v2 = type metadata accessor for MostUsedListSectionAppsAndCategories();
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3460, &unk_264E2A230);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  sub_264E247D8();
  v17 = [objc_opt_self() bundle];
  v18 = sub_264E24AE8();
  v20 = v19;
  v43 = v18;
  v44 = v19;
  v22 = v21 & 1;
  v45 = v21 & 1;
  v46 = v23;
  sub_264E24C08();
  sub_264D817AC(v18, v20, v22);

  v24 = v39;
  sub_264E0F2BC(v39, &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v26 = swift_allocObject();
  sub_264E0F438(&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3468, &qword_264E2A240);
  sub_264E0F504();
  sub_264E24DD8();
  v27 = sub_264E24A78();
  KeyPath = swift_getKeyPath();
  v29 = &v10[*(v5 + 44)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = v38;
  sub_264D81744(v16, v38, &qword_27FFB1E90, &unk_264E26F50);
  v31 = v40;
  sub_264D81744(v10, v40, &qword_27FFB3460, &unk_264E2A230);
  v32 = v41;
  sub_264D81744(v30, v41, &qword_27FFB1E90, &unk_264E26F50);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3478, &qword_264E2A278);
  v34 = v32 + *(v33 + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_264D81744(v31, v32 + *(v33 + 64), &qword_27FFB3460, &unk_264E2A230);
  sub_264D817BC(v10, &qword_27FFB3460, &unk_264E2A230);
  sub_264D817BC(v16, &qword_27FFB1E90, &unk_264E26F50);
  sub_264D817BC(v31, &qword_27FFB3460, &unk_264E2A230);
  return sub_264D817BC(v30, &qword_27FFB1E90, &unk_264E26F50);
}

uint64_t sub_264E0DBFC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MostUsedListSectionAppsAndCategories() + 24));
  v2 = *v1;
  v3 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3438, &qword_264E2A210);
  sub_264E24D88();
  return sub_264E24D98();
}

uint64_t sub_264E0DCA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3480, &unk_264E2A280);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = (a1 + *(type metadata accessor for MostUsedListSectionAppsAndCategories() + 24));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v22) = v11;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3438, &qword_264E2A210);
  sub_264E24D88();
  sub_264E247D8();
  v13 = [objc_opt_self() bundle];
  v14 = sub_264E24AE8();
  v16 = v15;
  v22 = v14;
  v23 = v15;
  v18 = v17 & 1;
  v24 = v17 & 1;
  v25 = v19;
  sub_264E24C08();
  sub_264D817AC(v14, v16, v18);

  sub_264D81744(v9, v5, &qword_27FFB1E90, &unk_264E26F50);
  swift_storeEnumTagMultiPayload();
  sub_264D9CE9C();
  sub_264E24858();
  return sub_264D817BC(v9, &qword_27FFB1E90, &unk_264E26F50);
}

uint64_t sub_264E0E050(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = *a2;
  v15 = sub_264E238E8();
  (*(*(v15 - 8) + 16))(v13, a1, v15);
  *&v13[*(v10 + 56)] = v14;

  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  LOBYTE(a1) = sub_264E238C8();
  v16 = *(v5 + 8);
  v16(v8, v4);
  if (a1)
  {
    sub_264E23888();
    v17 = sub_264E238C8();
    v16(v8, v4);
  }

  else
  {
    v17 = 0;
  }

  sub_264D817BC(v13, &qword_27FFB3458, &qword_264E2A228);
  return v17 & 1;
}

uint64_t sub_264E0E248(uint64_t a1, uint64_t a2)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  v4 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v71 - v7;
  v78 = a2;
  v8 = a1;
  v9 = 0;
  sub_264DA25B0(sub_264E105FC, v77, v8);
  v71 = 0;
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v76 = v10;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
LABEL_5:
  v75 = v17;
  if (v14)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
LABEL_10:
      v19 = __clz(__rbit64(v14)) | (v16 << 6);
      v20 = v76;
      v21 = v76[6];
      v22 = sub_264E238E8();
      v23 = *(v22 - 8);
      v24 = v23;
      v25 = v21 + *(v23 + 72) * v19;
      v26 = v72;
      (*(v23 + 16))(v72, v25, v22);
      v27 = *(v20[7] + 8 * v19);
      v28 = v74;
      *(v26 + *(v74 + 48)) = v27;
      v29 = v73;
      sub_264E0F24C(v26, v73);
      v9 = *(v29 + *(v28 + 48));
      v30 = *(v24 + 8);

      v30(v29, v22);
      v31 = *(v9 + 2);
      v17 = v75;
      v32 = *(v75 + 2);
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v33 > *(v17 + 3) >> 1)
      {
        if (v32 <= v33)
        {
          v35 = v32 + v31;
        }

        else
        {
          v35 = v32;
        }

        v17 = sub_264DBBD3C(isUniquelyReferenced_nonNull_native, v35, 1, v17);
      }

      v14 &= v14 - 1;
      if (*(v9 + 2))
      {
        if ((*(v17 + 3) >> 1) - *(v17 + 2) < v31)
        {
          goto LABEL_51;
        }

        swift_arrayInitWithCopy();

        if (v31)
        {
          v36 = *(v17 + 2);
          v37 = __OFADD__(v36, v31);
          v38 = v36 + v31;
          if (v37)
          {
            goto LABEL_52;
          }

          *(v17 + 2) = v38;
        }
      }

      else
      {

        if (v31)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_5;
    }
  }

  v74 = *(v17 + 2);
  if (v74)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = v17 + 32;
    v43 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v41 >= *(v75 + 2))
      {
        goto LABEL_46;
      }

      v46 = *(v42 + 1);
      v45 = *(v42 + 2);
      v47 = *v42;
      *&v84[15] = *(v42 + 47);
      v83 = v46;
      *v84 = v45;
      v82 = v47;
      v48 = *(&v47 + 1);
      v9 = v47;
      v49 = v39;
      v50 = v40;
      v51 = swift_allocObject();
      memmove((v51 + 16), v42, 0x33uLL);
      sub_264D90348(&v82, &v79);
      sub_264D90348(&v82, &v79);

      sub_264D91628(v49);
      v52 = swift_allocObject();
      *(v52 + 16) = sub_264E0F5D8;
      *(v52 + 24) = v51;
      v76 = v51;
      sub_264D91628(v50);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v79 = v43;
      v55 = sub_264D9D57C(v9, v48);
      v56 = v43[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_47;
      }

      v59 = v54;
      if (v43[3] >= v58)
      {
        if (v53)
        {
          if (v54)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_264DA20B4();
          v43 = v79;
          if (v59)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_264DA026C(v58, v53);
        v43 = v79;
        v60 = sub_264D9D57C(v9, v48);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_54;
        }

        v55 = v60;
        if (v59)
        {
LABEL_24:

          v44 = 56 * v55;
          goto LABEL_25;
        }
      }

      v62 = *(v52 + 24);
      (*(v52 + 16))(&v79);
      v43[(v55 >> 6) + 8] |= 1 << v55;
      v63 = (v43[6] + 16 * v55);
      *v63 = v9;
      v63[1] = v48;
      v44 = 56 * v55;
      v64 = v43[7] + 56 * v55;
      *v64 = v79;
      *(v64 + 16) = v80;
      *(v64 + 32) = v81[0];
      *(v64 + 47) = *(v81 + 15);
      v65 = v43[2];
      v37 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v37)
      {
        goto LABEL_48;
      }

      v43[2] = v66;
LABEL_25:
      ++v41;
      *(v43[7] + v44 + 16) = *&v83 + *(v43[7] + v44 + 16);
      sub_264E0F644(&v82);
      v42 += 56;
      v40 = sub_264E0F5F0;
      v39 = sub_264E0F5D8;
      if (v74 == v41)
      {
        goto LABEL_39;
      }
    }
  }

  v39 = 0;
  v40 = 0;
  v43 = MEMORY[0x277D84F98];
LABEL_39:

  v67 = v43[2];
  if (!v67)
  {

    v9 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v9 = sub_264D8C348(v43[2], 0);
  v68 = sub_264D8E80C(&v79, v9 + 32, v67, v43);
  v75 = *(&v80 + 1);
  v76 = v68;
  v74 = *&v81[0];
  swift_bridgeObjectRetain_n();
  sub_264D8F07C();
  if (v76 != v67)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    sub_264E25498();
    __break(1u);
    goto LABEL_55;
  }

LABEL_43:
  *&v79 = v9;
  v9 = v71;
  sub_264E10428(&v79, &unk_2876A2DC8);
  if (!v9)
  {

    v69 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB8, &qword_264E26C70);
    swift_arrayDestroy();

    sub_264D91628(v39);
    sub_264D91628(v40);
    return v69;
  }

LABEL_55:

  __break(1u);
  return result;
}

double sub_264E0E978@<D0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  sub_264E028EC(v5, v8, v4);
  result = v8[0].n128_f64[0];
  v7 = v8[1];
  *a1 = v8[0];
  a1[1] = v7;
  a1[2].n128_u8[0] = v9;
  return result;
}

unint64_t sub_264E0E9D4()
{
  result = qword_27FFB3448;
  if (!qword_27FFB3448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3430, &qword_264E2A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3448);
  }

  return result;
}

uint64_t sub_264E0EA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 49) = 0;
}

uint64_t sub_264E0EAD4(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v7 = *i;
    v9 = a1[1];
    v19 = *a1;
    v20 = v9;
    v21[0] = a1[2];
    *(v21 + 15) = *(a1 + 47);
    v10 = a2[1];
    v16 = *a2;
    v17 = v10;
    v18[0] = a2[2];
    *(v18 + 15) = *(a2 + 47);

    v8(&v22, &v19, &v16);
    if (v22)
    {
      break;
    }

    v11 = a2[1];
    v19 = *a2;
    v20 = v11;
    v21[0] = a2[2];
    *(v21 + 15) = *(a2 + 47);
    v12 = a1[1];
    v16 = *a1;
    v17 = v12;
    v18[0] = a1[2];
    *(v18 + 15) = *(a1 + 47);
    v8(&v22, &v19, &v16);
    if (v22)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  v14 = a1[1];
  v19 = *a1;
  v20 = v14;
  v21[0] = a1[2];
  *(v21 + 15) = *(a1 + 47);
  v15 = a2[1];
  v16 = *a2;
  v17 = v15;
  v18[0] = a2[2];
  *(v18 + 15) = *(a2 + 47);
  v8(&v22, &v19, &v16);

  return v22;
}

uint64_t sub_264E0EC44(char *__dst, char *__src, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 56;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 56;
  if (v12 < v14)
  {
    v15 = 56 * v12;
    v16 = a4;
    if (a4 != __dst || &__dst[v15] <= a4)
    {
      memmove(a4, __dst, v15);
    }

    v17 = &v16[v15];
    if (v11 >= 56 && v9 < v8)
    {
      while (1)
      {
        v18 = *v9;
        v19 = *(v9 + 1);
        v20 = *(v9 + 2);
        *(v78 + 15) = *(v9 + 47);
        v77 = v19;
        v78[0] = v20;
        v76 = v18;
        memmove(&__dsta, v9, 0x33uLL);
        v21 = *v16;
        v22 = *(v16 + 1);
        v23 = *(v16 + 2);
        *(v81 + 15) = *(v16 + 47);
        v80 = v22;
        v81[0] = v23;
        v79 = v21;
        memmove(&v70, v16, 0x33uLL);
        sub_264D90348(&v76, &v67);
        sub_264D90348(&v79, &v67);
        v24 = sub_264E0EAD4(&__dsta, &v70, a5);
        if (v5)
        {
          v64 = v70;
          v65 = v71;
          v66[0] = *v72;
          *(v66 + 15) = *&v72[15];
          sub_264E0F644(&v64);
          v67 = __dsta;
          v68 = v74;
          v69[0] = *v75;
          *(v69 + 15) = *&v75[15];
          sub_264E0F644(&v67);
          v58 = 56 * ((v17 - v16) / 56);
          if (v10 < v16 || v10 >= &v16[v58] || v10 != v16)
          {
            v59 = v10;
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        v25 = v24;
        v64 = v70;
        v65 = v71;
        v66[0] = *v72;
        *(v66 + 15) = *&v72[15];
        sub_264E0F644(&v64);
        v67 = __dsta;
        v68 = v74;
        v69[0] = *v75;
        *(v69 + 15) = *&v75[15];
        sub_264E0F644(&v67);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v26 = v9;
        v27 = v10 == v9;
        v9 += 56;
        if (!v27)
        {
          goto LABEL_13;
        }

LABEL_14:
        v10 += 56;
        if (v16 >= v17 || v9 >= v8)
        {
          goto LABEL_16;
        }
      }

      v26 = v16;
      v27 = v10 == v16;
      v16 += 56;
      if (v27)
      {
        goto LABEL_14;
      }

LABEL_13:
      v28 = *v26;
      v29 = *(v26 + 1);
      v30 = *(v26 + 2);
      *(v10 + 6) = *(v26 + 6);
      *(v10 + 1) = v29;
      *(v10 + 2) = v30;
      *v10 = v28;
      goto LABEL_14;
    }

LABEL_16:
    v9 = v10;
    goto LABEL_52;
  }

  v31 = 56 * v14;
  if (a4 != __src || &__src[v31] <= a4)
  {
    v32 = a4;
    memmove(a4, __src, 56 * v14);
    a4 = v32;
  }

  __srca = a4;
  v17 = (a4 + v31);
  if (v13 < 56 || v9 <= v10)
  {
    v16 = a4;
LABEL_52:
    v58 = 56 * ((v17 - v16) / 56);
    if (v9 < v16 || v9 >= &v16[v58] || v9 != v16)
    {
      v59 = v9;
LABEL_56:
      memmove(v59, v16, v58);
    }

LABEL_57:

    return 1;
  }

  v33 = -a4;
  v62 = -a4;
LABEL_23:
  v82 = v6;
  v34 = (v9 - 56);
  v35 = &v17[v33];
  v8 -= 56;
  v36 = v17;
  while (1)
  {
    v17 = v36;
    v36 -= 56;
    v40 = *(v17 - 56);
    v41 = *(v17 - 40);
    v42 = *(v17 - 24);
    *(v78 + 15) = *(v17 - 9);
    v77 = v41;
    v78[0] = v42;
    v76 = v40;
    memmove(&__dsta, v36, 0x33uLL);
    v43 = *(v9 - 40);
    v79 = *v34;
    v80 = v43;
    v81[0] = *(v9 - 24);
    v44 = v81[0];
    *(v81 + 15) = *(v9 - 9);
    v70 = v79;
    v71 = v43;
    *v72 = v44;
    *&v72[15] = *(v81 + 15);
    sub_264D90348(&v76, &v67);
    sub_264D90348(&v79, &v67);
    v45 = v82;
    v46 = sub_264E0EAD4(&__dsta, &v70, a5);
    v82 = v45;
    if (v45)
    {
      break;
    }

    v47 = v46;
    v64 = v70;
    v65 = v71;
    v66[0] = *v72;
    *(v66 + 15) = *&v72[15];
    sub_264E0F644(&v64);
    v67 = __dsta;
    v68 = v74;
    v69[0] = *v75;
    *(v69 + 15) = *&v75[15];
    sub_264E0F644(&v67);
    v48 = (v8 + 56);
    if (v47)
    {
      if (v48 < v9 || v8 >= v9)
      {
        v55 = *v34;
        v56 = *(v9 - 40);
        v57 = *(v9 - 24);
        *(v8 + 48) = *(v9 - 1);
        *(v8 + 16) = v56;
        *(v8 + 32) = v57;
        *v8 = v55;
        v6 = v82;
        v16 = __srca;
        v33 = v62;
        if (v17 <= __srca)
        {
LABEL_40:
          v9 = v34;
          goto LABEL_52;
        }
      }

      else
      {
        v6 = v82;
        v16 = __srca;
        v33 = v62;
        if (v48 != v9)
        {
          v52 = *v34;
          v53 = *(v9 - 40);
          v54 = *(v9 - 24);
          *(v8 + 48) = *(v9 - 1);
          *(v8 + 16) = v53;
          *(v8 + 32) = v54;
          *v8 = v52;
        }

        if (v17 <= __srca)
        {
          goto LABEL_40;
        }
      }

      v9 -= 56;
      if (v34 > v10)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

    if (v48 < v17 || v8 >= v17)
    {
      v37 = *v36;
      v38 = *(v36 + 1);
      v39 = *(v36 + 2);
      *(v8 + 48) = *(v36 + 6);
      *(v8 + 16) = v38;
      *(v8 + 32) = v39;
      *v8 = v37;
      v16 = __srca;
    }

    else
    {
      v16 = __srca;
      if (v48 != v17)
      {
        v49 = *v36;
        v50 = *(v36 + 1);
        v51 = *(v36 + 2);
        *(v8 + 48) = *(v36 + 6);
        *(v8 + 16) = v50;
        *(v8 + 32) = v51;
        *v8 = v49;
      }
    }

    v35 -= 56;
    v8 -= 56;
    if (v36 <= v16)
    {
      v17 = v36;
      goto LABEL_52;
    }
  }

  v64 = v70;
  v65 = v71;
  v66[0] = *v72;
  *(v66 + 15) = *&v72[15];
  sub_264E0F644(&v64);
  v67 = __dsta;
  v68 = v74;
  v69[0] = *v75;
  *(v69 + 15) = *&v75[15];
  sub_264E0F644(&v67);
  v60 = 56 * (v35 / 56);
  if (v9 >= __srca && v9 < &__srca[v60])
  {
    if (v9 != __srca)
    {
      memmove(v9, __srca, v60);
    }

    goto LABEL_57;
  }

  memmove(v9, __srca, v60);

  return 1;
}

uint64_t sub_264E0F24C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0F2BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MostUsedListSectionAppsAndCategories();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0F320()
{
  v1 = (type metadata accessor for MostUsedListSectionAppsAndCategories() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 56));
  v7 = v1[7];
  v8 = sub_264E238E8();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264E0F438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MostUsedListSectionAppsAndCategories();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0F49C()
{
  v1 = *(type metadata accessor for MostUsedListSectionAppsAndCategories() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_264E0DBFC(v2);
}

unint64_t sub_264E0F504()
{
  result = qword_27FFB3470;
  if (!qword_27FFB3470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3468, &qword_264E2A240);
    sub_264D9CE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3470);
  }

  return result;
}

uint64_t sub_264E0F590()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

double sub_264E0F5F0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(v7);
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v8[0];
  *(a1 + 32) = *v8;
  *(a1 + 47) = *(&v8[1] + 7);
  return result;
}

uint64_t sub_264E0F674(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  v176 = a5;
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_92:
    v140 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_94;
    }

    goto LABEL_132;
  }

  v136 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_18;
    }

    v13 = *a3;
    v14 = *a3 + 56 * v12;
    v15 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 32);
    *(v171 + 15) = *(v14 + 47);
    v170 = v16;
    v171[0] = v17;
    v169 = v15;
    v18 = *(v14 + 16);
    v166 = *v14;
    v167 = v18;
    v168[0] = *(v14 + 32);
    *(v168 + 15) = *(v14 + 47);
    v19 = v13 + 56 * v11;
    v21 = *(v19 + 16);
    v20 = *(v19 + 32);
    v22 = *v19;
    *&v174[15] = *(v19 + 47);
    v173 = v21;
    *v174 = v20;
    v172 = v22;
    v23 = *(v19 + 16);
    v163 = *v19;
    v164 = v23;
    v165[0] = *(v19 + 32);
    *(v165 + 15) = *(v19 + 47);
    sub_264D90348(&v169, &v160);
    sub_264D90348(&v172, &v160);
    v24 = sub_264E0EAD4(&v166, &v163, v176);
    if (v6)
    {
LABEL_103:
      v157 = v163;
      v158 = v164;
      v159[0] = v165[0];
      *(v159 + 15) = *(v165 + 15);
      sub_264E0F644(&v157);
      v160 = v166;
      v161 = v167;
      v162[0] = v168[0];
      *(v162 + 15) = *(v168 + 15);
      sub_264E0F644(&v160);
LABEL_104:
      swift_bridgeObjectRelease_n();
    }

    v25 = v24;
    v157 = v163;
    v158 = v164;
    v159[0] = v165[0];
    *(v159 + 15) = *(v165 + 15);
    sub_264E0F644(&v157);
    v160 = v166;
    v161 = v167;
    v162[0] = v168[0];
    *(v162 + 15) = *(v168 + 15);
    sub_264E0F644(&v160);
    v26 = (v11 + 2);
    if (v11 + 2 >= v8)
    {
      v28 = v11 + 2;
      if (v25)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v140 = v11;
      v27 = v13 + 56 * v11 + 112;
      while (1)
      {
        v28 = v26;
        v29 = *v27;
        v30 = *(v27 + 16);
        v31 = *(v27 + 32);
        *(v153 + 15) = *(v27 + 47);
        v152[1] = v30;
        v153[0] = v31;
        v152[0] = v29;
        v32 = *(v27 + 16);
        v149 = *v27;
        v150 = v32;
        v151[0] = *(v27 + 32);
        *(v151 + 15) = *(v27 + 47);
        v33 = *(v27 - 40);
        v34 = *(v27 - 24);
        v35 = *(v27 - 56);
        *(v156 + 15) = *(v27 - 9);
        v155 = v33;
        v156[0] = v34;
        v154 = v35;
        v36 = *(v27 - 40);
        v146 = *(v27 - 56);
        v147 = v36;
        v148[0] = *(v27 - 24);
        *(v148 + 15) = *(v27 - 9);
        sub_264D90348(v152, v144);
        sub_264D90348(&v154, v144);
        v37 = sub_264E0EAD4(&v149, &v146, v176);
        v142[0] = v146;
        v142[1] = v147;
        v143[0] = v148[0];
        *(v143 + 15) = *(v148 + 15);
        sub_264E0F644(v142);
        v144[0] = v149;
        v144[1] = v150;
        v145[0] = v151[0];
        *(v145 + 15) = *(v151 + 15);
        sub_264E0F644(v144);
        if ((v25 ^ v37))
        {
          break;
        }

        v26 = (v28 + 1);
        v27 += 56;
        if (v8 == v28 + 1)
        {
          v12 = v28;
          v28 = v8;
          goto LABEL_14;
        }
      }

      v12 = v28 - 1;
LABEL_14:
      v11 = v140;
      if (v25)
      {
LABEL_15:
        if (v28 < v11)
        {
          goto LABEL_126;
        }

        if (v11 <= v12)
        {
          v12 = v28;
          v112 = 56 * v28 - 56;
          v113 = 56 * v11;
          v114 = v28;
          v115 = v11;
          do
          {
            if (v115 != --v114)
            {
              v116 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v117 = (v116 + v113);
              v118 = (v116 + v112);
              v156[0] = v117[2];
              *(v156 + 15) = *(v117 + 47);
              v120 = *v117;
              v119 = v117[1];
              v122 = v118[1];
              v121 = v118[2];
              v123 = *v118;
              *(v117 + 6) = *(v118 + 6);
              v117[1] = v122;
              v117[2] = v121;
              *v117 = v123;
              *v118 = v120;
              v118[1] = v119;
              v118[2] = v156[0];
              *(v118 + 47) = *(v156 + 15);
            }

            ++v115;
            v112 -= 56;
            v113 += 56;
          }

          while (v115 < v114);
          goto LABEL_18;
        }
      }
    }

    v12 = v28;
LABEL_18:
    v38 = a3[1];
    if (v12 >= v38)
    {
      goto LABEL_135;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_122;
    }

    if (v12 - v11 >= v136)
    {
      goto LABEL_135;
    }

    v39 = (v11 + v136);
    if (__OFADD__(v11, v136))
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_128:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_129;
    }

    if (v39 >= v38)
    {
      v39 = a3[1];
    }

    if (v39 < v11)
    {
      goto LABEL_125;
    }

    if (v12 == v39)
    {
LABEL_135:
      if (v12 < v11)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v91 = *a3;
      v92 = *a3 + 56 * v12;
      v140 = v11;
      v93 = v11 - v12 + 1;
      v134 = v39;
      do
      {
        v139 = v12;
        v135 = v93;
        v94 = v93;
        v95 = v92;
        for (i = v92; ; i -= 56)
        {
          v97 = *i;
          v98 = *(i + 16);
          v99 = *(i + 32);
          *(v171 + 15) = *(i + 47);
          v170 = v98;
          v171[0] = v99;
          v169 = v97;
          v100 = *(i + 16);
          v166 = *i;
          v167 = v100;
          v168[0] = *(i + 32);
          *(v168 + 15) = *(i + 47);
          v101 = *(i - 40);
          v102 = *(i - 24);
          v103 = *(i - 56);
          *&v174[15] = *(i - 9);
          v173 = v101;
          *v174 = v102;
          v172 = v103;
          v104 = *(i - 40);
          v163 = *(i - 56);
          v164 = v104;
          v165[0] = *(i - 24);
          *(v165 + 15) = *(i - 9);
          sub_264D90348(&v169, &v160);
          sub_264D90348(&v172, &v160);
          v105 = sub_264E0EAD4(&v166, &v163, v176);
          if (v6)
          {
            goto LABEL_103;
          }

          v106 = v105;
          v157 = v163;
          v158 = v164;
          v159[0] = v165[0];
          *(v159 + 15) = *(v165 + 15);
          sub_264E0F644(&v157);
          v160 = v166;
          v161 = v167;
          v162[0] = v168[0];
          *(v162 + 15) = *(v168 + 15);
          sub_264E0F644(&v160);
          if ((v106 & 1) == 0)
          {
            break;
          }

          if (!v91)
          {
            goto LABEL_128;
          }

          v107 = i - 56;
          v156[0] = *(i + 32);
          *(v156 + 15) = *(i + 47);
          v154 = *i;
          v108 = v154;
          v155 = *(i + 16);
          v109 = v155;
          v110 = *(i - 40);
          *i = *(i - 56);
          *(i + 16) = v110;
          *(i + 32) = *(i - 24);
          *(i + 48) = *(i - 8);
          *v107 = v108;
          *(v107 + 47) = *(v156 + 15);
          v111 = v156[0];
          *(v107 + 16) = v109;
          *(v107 + 32) = v111;
          if (!v94)
          {
            break;
          }

          ++v94;
        }

        v12 = v139 + 1;
        v92 = v95 + 56;
        v93 = v135 - 1;
      }

      while (v139 + 1 != v134);
      v12 = v134;
      v11 = v140;
      if (v134 < v140)
      {
        goto LABEL_121;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_264D9E030(0, *(v10 + 2) + 1, 1, v10);
    }

    v41 = *(v10 + 2);
    v40 = *(v10 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v10 = sub_264D9E030((v40 > 1), v41 + 1, 1, v10);
    }

    *(v10 + 2) = v42;
    v43 = &v10[16 * v41];
    *(v43 + 4) = v11;
    *(v43 + 5) = v12;
    v138 = v12;
    v140 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v41)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v138;
    if (v138 >= v8)
    {
      goto LABEL_92;
    }
  }

  while (1)
  {
    v44 = v42 - 1;
    if (v42 >= 4)
    {
      v49 = &v10[16 * v42 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_108;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_109;
      }

      v56 = &v10[16 * v42];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_111;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_114;
      }

      if (v60 >= v52)
      {
        v78 = &v10[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v42 - 2;
        }

        goto LABEL_67;
      }

      goto LABEL_46;
    }

    if (v42 == 3)
    {
      v45 = *(v10 + 4);
      v46 = *(v10 + 5);
      v55 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      v48 = v55;
LABEL_46:
      if (v48)
      {
        goto LABEL_110;
      }

      v61 = &v10[16 * v42];
      v63 = *v61;
      v62 = *(v61 + 1);
      v64 = __OFSUB__(v62, v63);
      v65 = v62 - v63;
      v66 = v64;
      if (v64)
      {
        goto LABEL_113;
      }

      v67 = &v10[16 * v44 + 32];
      v69 = *v67;
      v68 = *(v67 + 1);
      v55 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v55)
      {
        goto LABEL_116;
      }

      if (__OFADD__(v65, v70))
      {
        goto LABEL_117;
      }

      if (v65 + v70 >= v47)
      {
        if (v47 < v70)
        {
          v44 = v42 - 2;
        }

        goto LABEL_67;
      }

      goto LABEL_60;
    }

    v71 = &v10[16 * v42];
    v73 = *v71;
    v72 = *(v71 + 1);
    v55 = __OFSUB__(v72, v73);
    v65 = v72 - v73;
    v66 = v55;
LABEL_60:
    if (v66)
    {
      goto LABEL_112;
    }

    v74 = &v10[16 * v44];
    v76 = *(v74 + 4);
    v75 = *(v74 + 5);
    v55 = __OFSUB__(v75, v76);
    v77 = v75 - v76;
    if (v55)
    {
      goto LABEL_115;
    }

    if (v77 < v65)
    {
      goto LABEL_3;
    }

LABEL_67:
    v82 = v44 - 1;
    if (v44 - 1 >= v42)
    {
      break;
    }

    v83 = *a3;
    if (!*a3)
    {
      goto LABEL_127;
    }

    v84 = *&v10[16 * v82 + 32];
    v85 = *&v10[16 * v44 + 40];
    v86 = (v83 + 56 * v84);
    v87 = (v83 + 56 * *&v10[16 * v44 + 32]);
    v88 = v83 + 56 * v85;
    v89 = v176;

    sub_264E0EC44(v86, v87, v88, v140, v89);
    if (v6)
    {
      goto LABEL_104;
    }

    if (v85 < v84)
    {
      goto LABEL_106;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_264D9E01C(v10);
    }

    if (v82 >= *(v10 + 2))
    {
      goto LABEL_107;
    }

    v90 = &v10[16 * v82];
    *(v90 + 4) = v84;
    *(v90 + 5) = v85;
    v175 = v10;
    sub_264D9DF90(v44);
    v10 = v175;
    v42 = *(v175 + 2);
    if (v42 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
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
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  v10 = sub_264D9E01C(v10);
LABEL_94:
  v175 = v10;
  v124 = *(v10 + 2);
  if (v124 < 2)
  {
LABEL_102:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v125 = *a3;
      if (!*a3)
      {
        break;
      }

      v126 = *&v10[16 * v124];
      v127 = *&v10[16 * v124 + 24];
      v128 = (v125 + 56 * v126);
      v129 = (v125 + 56 * *&v10[16 * v124 + 16]);
      v130 = v125 + 56 * v127;
      v131 = v176;

      sub_264E0EC44(v128, v129, v130, v140, v131);
      if (v6)
      {
        goto LABEL_102;
      }

      if (v127 < v126)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_264D9E01C(v10);
      }

      if (v124 - 2 >= *(v10 + 2))
      {
        goto LABEL_119;
      }

      v132 = &v10[16 * v124];
      *v132 = v126;
      *(v132 + 1) = v127;
      v175 = v10;
      sub_264D9DF90(v124 - 1);
      v10 = v175;
      v124 = *(v175 + 2);
      if (v124 <= 1)
      {
        goto LABEL_102;
      }
    }

LABEL_129:

    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_131:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_132:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_264E100BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 56 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    v44 = v9;
    while (1)
    {
      v12 = *v9;
      v13 = *(v9 + 16);
      v14 = *(v9 + 32);
      *(v41 + 15) = *(v9 + 47);
      v40[1] = v13;
      v41[0] = v14;
      v40[0] = v12;
      v15 = *(v9 + 16);
      v37 = *v9;
      v38 = v15;
      v39[0] = *(v9 + 32);
      *(v39 + 15) = *(v9 + 47);
      v16 = *(v9 - 40);
      v17 = *(v9 - 24);
      v18 = *(v9 - 56);
      *&v43[15] = *(v9 - 9);
      v42[1] = v16;
      *v43 = v17;
      v42[0] = v18;
      v19 = *(v9 - 40);
      v34 = *(v9 - 56);
      v35 = v19;
      v36[0] = *(v9 - 24);
      *(v36 + 15) = *(v9 - 9);
      sub_264D90348(v40, &v31);
      sub_264D90348(v42, &v31);
      v20 = sub_264E0EAD4(&v37, &v34, a5);
      if (v5)
      {
        v28 = v34;
        v29 = v35;
        v30[0] = v36[0];
        *(v30 + 15) = *(v36 + 15);
        sub_264E0F644(&v28);
        v31 = v37;
        v32 = v38;
        v33[0] = v39[0];
        *(v33 + 15) = *(v39 + 15);
        return sub_264E0F644(&v31);
      }

      v21 = v20;
      v28 = v34;
      v29 = v35;
      v30[0] = v36[0];
      *(v30 + 15) = *(v36 + 15);
      sub_264E0F644(&v28);
      v31 = v37;
      v32 = v38;
      v33[0] = v39[0];
      *(v33 + 15) = *(v39 + 15);
      result = sub_264E0F644(&v31);
      if ((v21 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 = v44 + 56;
        --v10;
        if (v7 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v22 = v9 - 56;
      v23 = *(v9 + 16);
      *v27 = *(v9 + 32);
      *&v27[15] = *(v9 + 47);
      v24 = *v9;
      v25 = *(v9 - 40);
      *v9 = *(v9 - 56);
      *(v9 + 16) = v25;
      *(v9 + 32) = *(v9 - 24);
      *(v9 + 48) = *(v9 - 8);
      *(v22 + 47) = *&v27[15];
      *(v22 + 16) = v23;
      *(v22 + 32) = *v27;
      *v22 = v24;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
      v9 -= 56;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_264E102E0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_264E25458();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_264E251E8();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_264E0F674(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_264E100BC(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264E10428(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_264DA4974(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_264E102E0(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_264E104E0()
{
  result = qword_27FFB3488;
  if (!qword_27FFB3488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3490, qword_264E2A2C8);
    sub_264E10564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3488);
  }

  return result;
}

unint64_t sub_264E10564()
{
  result = qword_27FFB3498;
  if (!qword_27FFB3498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3450, &qword_264E2A220);
    sub_264E0E9D4();
    sub_264D9CF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3498);
  }

  return result;
}

uint64_t PickupsHeaderView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v4 = *(v3 - 8);
  v61 = (v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v47 - v12;
  MEMORY[0x28223BE20](v13);
  v50 = &v47 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = sub_264E23C38();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v49 = sub_264DEB44C(MEMORY[0x277D84F90]);
  v55 = v19;
  v26 = *(v19 + 16);
  v59 = a1;
  v26(v25, a1, v18);
  v27 = sub_264E23AA8();
  v48 = *(v27 - 8);
  v28 = v48 + 56;
  v29 = *(v48 + 56);
  v29(v17, 1, 1, v27);
  v56 = v25;
  v26(v22, v25, v18);
  v58 = v17;
  v30 = v29;
  v31 = v50;
  sub_264D93A14(v17, v50);
  v51 = v22;
  v32 = v22;
  v33 = v18;
  v26(v7, v32, v18);
  v34 = v61;
  v35 = *(v61 + 11);
  sub_264DEB44C(MEMORY[0x277D84F90]);
  v53 = *(v34 + 13);
  v54 = v30;
  v57 = v28;
  v30(&v7[v53], 1, 1, v27);

  v7[*(v34 + 12)] = 1;
  v61 = v7;
  *&v7[v35] = v49;
  v36 = v52;
  v37 = v31;
  v38 = v48;
  v39 = v37;
  sub_264D93A14(v37, v52);
  v40 = *(v38 + 48);
  if (v40(v36, 1, v27) == 1)
  {
    v41 = v60;
    sub_264E23A98();
    v42 = *(v55 + 8);
    v42(v59, v33);
    sub_264D817BC(v39, &qword_27FFB1860, &qword_264E267E0);
    v42(v51, v33);
    sub_264D817BC(v58, &qword_27FFB1860, &qword_264E267E0);
    v42(v56, v33);
    v43 = v41;
    if (v40(v36, 1, v27) != 1)
    {
      sub_264D817BC(v36, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    v44 = *(v55 + 8);
    v44(v59, v33);
    sub_264D817BC(v39, &qword_27FFB1860, &qword_264E267E0);
    v44(v51, v33);
    sub_264D817BC(v58, &qword_27FFB1860, &qword_264E267E0);
    v44(v56, v33);
    v43 = v60;
    (*(v38 + 32))(v60, v36, v27);
  }

  v54(v43, 0, 1, v27);
  v45 = v61;
  sub_264DEB634(v43, &v61[v53]);
  return sub_264E10EE4(v45, v62);
}

uint64_t PickupsHeaderView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PickupsHeaderView.Model(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  sub_264E10F74(v1, v5);
  sub_264E10EE4(v5, v9);
  v10 = type metadata accessor for PickupsHeaderView(0);
  v11 = v10[6];
  v12 = *(v1 + v10[5]);
  v13 = v6[10];
  v14 = sub_264E238E8();
  (*(*(v14 - 8) + 16))(&v9[v13], v1 + v11, v14);
  v15 = *(v1 + v10[7]);
  *&v9[v6[9]] = v12;
  v16 = &v9[v6[11]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v9[v6[12]] = v15;
  v17 = &v9[v6[13]];
  *v17 = sub_264DF82C0;
  *(v17 + 1) = 0;
  sub_264E10FF8();

  sub_264E24C08();
  return sub_264D817BC(v9, &qword_27FFB34A0, &qword_264E2A310);
}

uint64_t sub_264E10D0C(int *a1)
{
  v3 = v1;
  v4 = type metadata accessor for PickupsHeaderView.Model(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  sub_264E10F74(v3, v7);
  sub_264E10EE4(v7, v11);
  v12 = a1[6];
  v13 = *(v3 + a1[5]);
  v14 = v8[10];
  v15 = sub_264E238E8();
  (*(*(v15 - 8) + 16))(&v11[v14], v3 + v12, v15);
  v16 = *(v3 + a1[7]);
  *&v11[v8[9]] = v13;
  v17 = &v11[v8[11]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v11[v8[12]] = v16;
  v18 = &v11[v8[13]];
  *v18 = sub_264DF82C0;
  *(v18 + 1) = 0;
  sub_264E10FF8();

  sub_264E24C08();
  return sub_264D817BC(v11, &qword_27FFB34A0, &qword_264E2A310);
}

uint64_t sub_264E10EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E10F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsHeaderView.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_264E10FF8()
{
  result = qword_27FFB34A8;
  if (!qword_27FFB34A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB34A0, &qword_264E2A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB34A8);
  }

  return result;
}

uint64_t sub_264E1108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsHeaderView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
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

uint64_t sub_264E111B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsHeaderView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E238E8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264E112C0()
{
  type metadata accessor for PickupsHeaderView.Model(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v1 <= 0x3F)
    {
      sub_264E238E8();
      if (v2 <= 0x3F)
      {
        sub_264DDB468();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_264E11388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264E11414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_264E11490()
{
  sub_264E114FC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_264E114FC()
{
  if (!qword_27FFB34D0)
  {
    sub_264E11558();
    v0 = type metadata accessor for ChartHeaderView.Model();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB34D0);
    }
  }
}

unint64_t sub_264E11558()
{
  result = qword_27FFB34D8;
  if (!qword_27FFB34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB34D8);
  }

  return result;
}

unint64_t sub_264E115B0()
{
  result = qword_27FFB34E0;
  if (!qword_27FFB34E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB34E8, &qword_264E2A3B8);
    sub_264E10FF8();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB34E0);
  }

  return result;
}

uint64_t UsageDetailChart.Model.contains(date:)()
{
  v1 = sub_264E23AA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 24);
  sub_264E23AF8();
  v7 = sub_264E23A78();
  (*(v2 + 8))(v5, v1);
  return v7 & 1;
}

uint64_t UsageDetailChart.Model.init(startOfDay:usage:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UsageDetailChart.Model(0);
  *(a4 + v8[7]) = 0x40BC200000000000;
  *(a4 + v8[8]) = 3;
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  *(a4 + v8[5]) = a2;
  v10 = v8[6];
  v11 = sub_264E23C38();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

int *UsageDetailChart.HourlyUsage.init(hour:totalUsage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_264E238E8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a2, a1, v6);
  v8 = MEMORY[0x277D84F90];
  v9 = sub_264DEB098(MEMORY[0x277D84F90]);
  v10 = sub_264DEB098(v8);
  (*(v7 + 8))(a1, v6);
  result = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  *(a2 + result[5]) = a3;
  *(a2 + result[6]) = v9;
  *(a2 + result[7]) = v10;
  return result;
}

size_t sub_264E119C4(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v80 = sub_264E23B78();
  v68 = *(v80 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v80);
  v67 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_264E23B98();
  v66 = *(v79 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_264E23B38();
  v76 = *(v78 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v83 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v61 - v14;
  v65 = sub_264E23928();
  v64 = *(v65 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v81 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v61 - v19;
  v84 = sub_264E23C18();
  v20 = *(v84 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v84);
  v75 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_264E23AA8();
  v85 = *(v23 - 8);
  v25 = v85;
  v24 = v85;
  v26 = *(v85 + 64);
  MEMORY[0x28223BE20](v23);
  v91 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v61 - v29;
  MEMORY[0x28223BE20](v31);
  v61 = &v61 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v61 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v61 - v37;
  v89 = a1;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v39 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v88 = *(v24 + 72);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_264E261E0;
  v87 = v39;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v73 = *MEMORY[0x277CC9980];
  v71 = v20[13];
  v72 = v20 + 13;
  v41 = v75;
  v71(v75);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v74 = sub_264E23C28();
  v90 = *(v85 + 8);
  v90(v35, v23);
  v42 = v20[1];
  v69 = v20 + 1;
  v70 = v42;
  v43 = v41;
  v44 = v84;
  v42(v41, v84);
  (v71)(v41, v73, v44);
  sub_264E23888();
  v45 = v74 | sub_264E23C28();
  v90(v35, v23);
  v70(v43, v44);
  if (v45)
  {
    v46 = v85;
  }

  else
  {
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v47 = sub_264E23C38();
    (*(*(v47 - 8) + 56))(v62, 1, 1, v47);
    v48 = sub_264E23C48();
    (*(*(v48 - 8) + 56))(v63, 1, 1, v48);
    sub_264E23918();
    (*(v76 + 104))(v83, *MEMORY[0x277CC9878], v78);
    v49 = v66;
    (*(v66 + 104))(v77, *MEMORY[0x277CC9900], v79);
    v50 = v68;
    v51 = v67;
    (*(v68 + 104))(v67, *MEMORY[0x277CC98E8], v80);
    sub_264E23C08();
    (*(v50 + 8))(v51, v80);
    (*(v49 + 8))(v77, v79);
    (*(v76 + 8))(v83, v78);
    (*(v64 + 8))(v81, v65);
    v90(v35, v23);
    v46 = v85;
    if ((*(v85 + 48))(v82, 1, v23) == 1)
    {
      sub_264D817BC(v82, &qword_27FFB1860, &qword_264E267E0);
    }

    else
    {
      v52 = *(v46 + 32);
      v53 = v61;
      v52(v61, v82, v23);
      (*(v46 + 16))(v35, v53, v23);
      v40 = sub_264DBC178(1uLL, 2, 1, v40);
      v90(v38, v23);
      *(v40 + 16) = 2;
      v52((v40 + v87 + v88), v35, v23);
      v52(v38, v53, v23);
    }
  }

  v54 = (v46 + 16);
  for (i = (v46 + 32); ; (*i)(v40 + v87 + v59 * v88, v91, v23))
  {
    sub_264E23A68();
    sub_264E23888();
    sub_264E16450(&qword_27FFB1BF0, MEMORY[0x277CC9578]);
    v56 = sub_264E25048();
    v57 = v90;
    v90(v30, v23);
    v57(v35, v23);
    if (v56)
    {
      break;
    }

    sub_264E23A88();
    (*v54)(v91, v38, v23);
    v59 = *(v40 + 16);
    v58 = *(v40 + 24);
    if (v59 >= v58 >> 1)
    {
      v40 = sub_264DBC178(v58 > 1, v59 + 1, 1, v40);
    }

    *(v40 + 16) = v59 + 1;
  }

  v57(v38, v23);
  return v40;
}

uint64_t sub_264E12550@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_264E125C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23858();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v12 + 8))(v15, v11);
  v16 = a2 + *(type metadata accessor for UsageDetailChart.Model(0) + 24);
  sub_264E23AF8();
  LOBYTE(v16) = sub_264E23A78();
  v17 = *(v4 + 8);
  v17(v7, v3);
  v17(v10, v3);
  return v16 & 1;
}

void sub_264E127A8()
{
  v20 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 20));
  v22 = v0;

  sub_264D82E60(sub_264E17558, v21, v8);
  v10 = v9;
  v19 = *(v9 + 16);
  if (v19)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v14 = *(v1 + 72);
      sub_264E16344(v10 + v13 + v14 * v11, v7, type metadata accessor for UsageDetailChart.HourlyUsage);
      if (*(*&v7[*(v20 + 24)] + 16))
      {
        sub_264E160FC(v7, v4, type metadata accessor for UsageDetailChart.HourlyUsage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D470(0, *(v12 + 16) + 1, 1);
          v12 = v23;
        }

        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_264D8D470(v16 > 1, v17 + 1, 1);
          v12 = v23;
        }

        *(v12 + 16) = v17 + 1;
        sub_264E160FC(v4, v12 + v13 + v17 * v14, type metadata accessor for UsageDetailChart.HourlyUsage);
      }

      else
      {
        sub_264E163AC(v7);
      }

      if (v19 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_13:

    v18 = *(v12 + 16);
  }
}

uint64_t sub_264E12A20()
{
  v60 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v5 = *(v60 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v60);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264DEB098(MEMORY[0x277D84F90]);
  sub_264E127A8();
  isUniquelyReferenced_nonNull_native = v9;
  v11 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 20));
  v64 = v0;

  sub_264D82E60(sub_264E17558, v63, v11);
  v53 = 0;
  v58 = *(v12 + 16);
  if (!v58)
  {

    v13 = 0;
    goto LABEL_30;
  }

  v13 = 0;
  v14 = 0;
  v57 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v15 = 28;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v15 = 24;
  }

  v55 = v5;
  v56 = v15;
  v54 = v12;
  while (2)
  {
    if (v14 >= *(v12 + 16))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v16 = v59;
    sub_264E16344(v57 + v5[9] * v14, v59, type metadata accessor for UsageDetailChart.HourlyUsage);
    v61 = v14 + 1;
    v17 = *(v16 + *(v60 + v56));

    sub_264E163AC(v16);
    v1 = 0;
    v3 = v17 + 64;
    v18 = *(v17 + 64);
    v62 = v17;
    v19 = 1 << *(v17 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v2 = v20 & v18;
    v14 = (v19 + 63) >> 6;
    while (v2)
    {
LABEL_18:
      v24 = __clz(__rbit64(v2)) | (v1 << 6);
      v25 = *(v62 + 48) + 16 * v24;
      v5 = *v25;
      v4 = *(v25 + 8);
      v26 = *(*(v62 + 56) + 8 * v24);

      sub_264D91628(v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v8;
      v22 = sub_264D9D57C(v5, v4);
      v28 = v8[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v13 = v27;
      if (v8[3] < v31)
      {
        sub_264D9E134(v31, isUniquelyReferenced_nonNull_native);
        v22 = sub_264D9D57C(v5, v4);
        if ((v13 & 1) != (v32 & 1))
        {
          sub_264E25498();
          __break(1u);
          goto LABEL_56;
        }

LABEL_23:
        v8 = v65[0];
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v36 = v22;
      sub_264DA0FDC();
      v22 = v36;
      v8 = v65[0];
      if (v13)
      {
LABEL_11:
        v21 = v22;

        v22 = v21;
        goto LABEL_12;
      }

LABEL_24:
      v8[(v22 >> 6) + 8] |= 1 << v22;
      v33 = (v8[6] + 16 * v22);
      *v33 = v5;
      v33[1] = v4;
      *(v8[7] + 8 * v22) = 0;
      v34 = v8[2];
      v30 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v30)
      {
        goto LABEL_52;
      }

      v8[2] = v35;
LABEL_12:
      v2 &= v2 - 1;
      *(v8[7] + 8 * v22) = v26 + *(v8[7] + 8 * v22);
      v13 = sub_264D80DA8;
    }

    while (1)
    {
      v23 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v23 >= v14)
      {
        break;
      }

      v2 = *(v3 + 8 * v23);
      ++v1;
      if (v2)
      {
        v1 = v23;
        goto LABEL_18;
      }
    }

    v14 = v61;
    v12 = v54;
    v5 = v55;
    if (v61 != v58)
    {
      continue;
    }

    break;
  }

LABEL_30:
  v37 = v8[2];
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    isUniquelyReferenced_nonNull_native = sub_264D8C20C(v8[2], 0);
    v14 = sub_264D8E104(v65, (isUniquelyReferenced_nonNull_native + 32), v37, v8);
    v1 = v65[0];
    v2 = v65[1];
    v3 = v65[2];
    v4 = v65[3];
    v5 = v65[4];

    sub_264D8F07C();
    if (v14 == v37)
    {
      v38 = MEMORY[0x277D84F90];
      goto LABEL_34;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    sub_264D8D0D4((v4 > 1), v5, 1);
    v40 = v65[0];
LABEL_40:
    v40[2] = v5;
    v41 = &v40[2 * v3];
    v41[4] = v2;
    v41[5] = isUniquelyReferenced_nonNull_native;
    if (v1 != 1)
    {
      v43 = *(v14 + 56);
      v42 = *(v14 + 64);
      v65[0] = v40;
      v44 = v40[2];
      v45 = v40[3];

      if (v44 >= v45 >> 1)
      {
        sub_264D8D0D4((v45 > 1), v44 + 1, 1);
        v40 = v65[0];
      }

      v40[2] = v44 + 1;
      v46 = &v40[2 * v44];
      v46[4] = v43;
      v46[5] = v42;
      if (v1 != 2)
      {
        v48 = *(v14 + 80);
        v47 = *(v14 + 88);
        v65[0] = v40;
        v49 = v40[2];
        v50 = v40[3];

        if (v49 >= v50 >> 1)
        {
          sub_264D8D0D4((v50 > 1), v49 + 1, 1);
          v40 = v65[0];
        }

        v40[2] = v49 + 1;
        v51 = &v40[2 * v49];
        v51[4] = v48;
        v51[5] = v47;
      }
    }

    sub_264D91628(v13);
    return v40;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
LABEL_34:
  v65[0] = isUniquelyReferenced_nonNull_native;
  v14 = v53;
  sub_264D8C4F4(v65);
  if (v14)
  {
LABEL_56:

    __break(1u);
  }

  else
  {
    v14 = v65[0];
    v1 = v65[0][2];
    if (v1)
    {
      if (v1 >= 3)
      {
        v39 = 3;
      }

      else
      {
        v39 = v65[0][2];
      }

      v65[0] = v38;
      sub_264D8D0D4(0, v39, 0);
      v40 = v65[0];
      v2 = *(v14 + 32);
      isUniquelyReferenced_nonNull_native = *(v14 + 40);
      v3 = v65[0][2];
      v4 = v65[0][3];
      v5 = (v3 + 1);

      if (v3 >= v4 >> 1)
      {
        goto LABEL_55;
      }

      goto LABEL_40;
    }

    sub_264D91628(v13);
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_264E12FF8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35B0, &qword_264E2A658);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v73 - v8;
  v10 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v73 - v16;
  v17 = *(v2 + *(type metadata accessor for UsageDetailChart.Model(0) + 32));
  sub_264E127A8();
  v19 = result;
  if (!a2 || !*(a2 + 16))
  {
    v23 = sub_264E12A20();
    sub_264E16344(a1, v80, type metadata accessor for UsageDetailChart.HourlyUsage);
    if (v19)
    {
      v24 = 28;
    }

    else
    {
      v24 = 24;
    }

    v28 = v17;
    v29 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_10;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v75 = v11;
  v76 = v9;
  v20 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v77 = v10;
  v21 = *(v20 + *(v10 + 24));
  v22 = *(v21 + 16);
  if (v22)
  {
    v78 = 0;
    v79 = a1;
    v23 = sub_264D8C29C(v22, 0);
    v74 = sub_264D8E260(&v81, v23 + 4, v22, v21);

    result = sub_264D8F07C();
    if (v74 != v22)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v5 = v78;
    a1 = v79;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v28 = v23[2];
  MEMORY[0x28223BE20](result);
  *(&v73 - 2) = a1;

  v55 = v76;
  sub_264D93ED8(sub_264DBCF90, a2, v76);
  v56 = *(v75 + 48);
  if ((v56)(v55, 1, v77) == 1)
  {
    v57 = sub_264E238E8();
    (*(*(v57 - 8) + 16))(v14, a1, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B80, &unk_264E27060);
    result = swift_initStackObject();
    *(result + 16) = xmmword_264E261E0;
    if (!v23[2])
    {
LABEL_66:
      __break(1u);
      return result;
    }

    v58 = v23[5];
    *(result + 32) = v23[4];
    v59 = result + 32;
    *(result + 40) = v58;
    *(result + 48) = 0;
    v60 = result;

    v61 = sub_264DEB098(v60);
    swift_setDeallocating();
    sub_264D817BC(v59, &qword_27FFB1B88, &qword_264E26610);
    v62 = sub_264DEB098(MEMORY[0x277D84F90]);
    v64 = v76;
    v63 = v77;
    *&v14[*(v77 + 20)] = 0;
    *&v14[*(v63 + 24)] = v61;
    *&v14[*(v63 + 28)] = v62;
    if (v56(v64, 1) != 1)
    {
      sub_264D817BC(v64, &qword_27FFB35B0, &qword_264E2A658);
    }
  }

  else
  {
    sub_264E160FC(v55, v14, type metadata accessor for UsageDetailChart.HourlyUsage);
  }

  sub_264E160FC(v14, v80, type metadata accessor for UsageDetailChart.HourlyUsage);
  v24 = 24;
  v10 = v77;
  v29 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    goto LABEL_46;
  }

LABEL_10:
  v78 = v5;
  v5 = sub_264E174AC(0x65646E69616D6572, 0xE900000000000072, v29, 0.0);
  v30 = *(v80 + *(v10 + v24));
  v31 = v23[2];
  v77 = v28;
  if (v31)
  {
    v32 = v10;
    v79 = a1;

    v33 = 0;
    v34 = v23 + 5;
    v35 = v31 - 1;
    v36 = 0.0;
    do
    {
      if (*(v30 + 16) && (v38 = *(v34 - 1), v37 = *v34, , v39 = sub_264D9D57C(v38, v37), LOBYTE(v38) = v40, , (v38 & 1) != 0))
      {
        v36 = v36 + *(*(v30 + 56) + 8 * v39);
        if (v35 == v33)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v36 = v36 + 0.0;
        if (v35 == v33)
        {
          goto LABEL_19;
        }
      }

      ++v33;
      v34 += 2;
    }

    while (v33 < v23[2]);
    __break(1u);
LABEL_19:

    v41 = *(v32 + 20);
    if (v36 > *(v79 + v41))
    {
      v42 = v36;
    }

    else
    {
      v42 = *(v79 + v41);
    }
  }

  else
  {

    v42 = *(a1 + *(v10 + 20));
    if (v42 < 0.0)
    {
LABEL_37:
      sub_264E163AC(v80);

      return v5;
    }
  }

  if (v42 <= 0.0)
  {
    goto LABEL_37;
  }

  v24 = v23[2];
  if (!v24)
  {
LABEL_34:

    v25 = *(v5 + 16);
    v26 = 0.0;
    v27 = 0.0;
    v24 = v77;
    if (!v25)
    {
LABEL_52:
      v72 = round((1.0 - v27) * 100.0) / 100.0;
      if (v72 > 0.0)
      {
        v42 = v72;
      }

      else
      {
        v42 = v26;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_56;
    }

    if (v25 == 1)
    {
      v54 = 0;
LABEL_50:
      v69 = v25 - v54;
      v70 = (v5 + 24 * v54 + 32);
      do
      {
        v71 = *v70;
        v70 += 3;
        v27 = v27 + v71;
        --v69;
      }

      while (v69);
      goto LABEL_52;
    }

LABEL_47:
    v54 = v25 & 0x7FFFFFFFFFFFFFFELL;
    v65 = (v5 + 56);
    v66 = v25 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v67 = *(v65 - 3);
      v68 = *v65;
      v65 += 6;
      v27 = v27 + v67 + v68;
      v66 -= 2;
    }

    while (v66);
    if (v25 == v54)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v43 = 0;
  v44 = 0;
  v45 = v23 + 5;
  while (v44 < v23[2])
  {
    v47 = *(v45 - 1);
    v46 = *v45;
    v48 = *(v30 + 16);

    if (v48)
    {
      v49 = sub_264D9D57C(v47, v46);
      if (v50)
      {
        v51 = *(*(v30 + 56) + 8 * v49);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_32;
        }

LABEL_30:
        v5 = sub_264E15E34(v5);
        goto LABEL_32;
      }
    }

    v51 = 0.0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    if (v44 >= *(v5 + 16))
    {
      goto LABEL_61;
    }

    v52 = v5 + v43;
    *(v52 + 32) = round(v51 * 100.0 / v42) / 100.0;
    v53 = *(v5 + v43 + 48);
    ++v44;
    *(v52 + 40) = v47;
    *(v52 + 48) = v46;

    v43 += 24;
    v45 += 2;
    if (v24 == v44)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  v5 = sub_264E15E34(v5);
LABEL_56:

  result = sub_264E163AC(v80);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v24 >= *(v5 + 16))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *(v5 + 24 * v24 + 32) = v42;
  return v5;
}

uint64_t sub_264E1376C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t UsageDetailChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v95 = sub_264E23AA8();
  v94 = *(v95 - 8);
  v2 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v116 = &v93 - v6;
  v124 = sub_264E238E8();
  v118 = *(v124 - 8);
  v7 = *(v118 + 64);
  MEMORY[0x28223BE20](v124);
  v96 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v117 = &v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1878, &unk_264E27650);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v105 = (&v93 - v13);
  v14 = type metadata accessor for UsageDetailChart(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34F0, &qword_264E2A3C0);
  v101 = *(v102 - 8);
  v17 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v19 = &v93 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34F8, &qword_264E2A3C8);
  v103 = *(v121 - 8);
  v20 = *(v103 + 64);
  MEMORY[0x28223BE20](v121);
  v22 = &v93 - v21;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A88, &qword_264E2A3D0);
  v107 = *(v122 - 8);
  v23 = *(v107 + 64);
  MEMORY[0x28223BE20](v122);
  v106 = &v93 - v24;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3500, &qword_264E2A3D8);
  v109 = *(v112 - 8);
  v25 = *(v109 + 64);
  MEMORY[0x28223BE20](v112);
  v123 = &v93 - v26;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3508, &qword_264E2A3E0);
  v110 = *(v113 - 8);
  v27 = *(v110 + 64);
  MEMORY[0x28223BE20](v113);
  v108 = &v93 - v28;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3510, &qword_264E2A3E8);
  v114 = *(v115 - 8);
  v29 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v111 = &v93 - v30;
  v31 = type metadata accessor for UsageDetailChart.Model(0);
  v32 = *(v1 + *(v31 + 20));
  v126 = v1;

  v104 = v32;
  sub_264D82E60(sub_264E15F98, v125, v32);
  v127 = v33;
  sub_264E16344(v1, &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageDetailChart);
  v34 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v35 = swift_allocObject();
  sub_264E160FC(&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for UsageDetailChart);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3518, &qword_264E2A3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3520, &qword_264E2A3F8);
  sub_264D81DCC(&qword_27FFB3528, &qword_27FFB3518, &qword_264E2A3F0);
  sub_264E161E4();
  sub_264E16450(&qword_27FFB3538, type metadata accessor for UsageDetailChart.HourlyUsage);
  v100 = v19;
  sub_264E241D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_264E261F0;
  *(v36 + 32) = 0;
  UsageDetailChart.Model.maxUsage.getter();
  v37 = 3600.0;
  if (v38 > 3600.0)
  {
    v37 = *(v1 + *(v31 + 28));
  }

  UsageDetailChart.Model.maxUsage.getter();
  v40 = v37 * ceil(v39 / v37);
  if (v40 <= v37)
  {
    v40 = v37;
  }

  *(v36 + 40) = v40;
  v127 = v36;
  v41 = sub_264E242D8();
  v42 = *(v41 - 8);
  v98 = *(v42 + 56);
  v99 = v42 + 56;
  v43 = v105;
  v98(v105, 1, 1, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1988, &unk_264E262E0);
  v120 = v31;
  v97 = v44;
  v45 = sub_264D81DCC(&qword_27FFB3540, &qword_27FFB34F0, &qword_264E2A3C0);
  v46 = v1;
  v47 = sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
  v48 = v102;
  v49 = v100;
  sub_264E24B48();
  sub_264D817BC(v43, &qword_27FFB1878, &unk_264E27650);

  (*(v101 + 8))(v49, v48);
  v131 = UsageDetailChart.Model.xAxisScale.getter();
  v98(v43, 1, 1, v41);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1968, &unk_264E27700);
  v127 = v48;
  v128 = v97;
  v129 = v45;
  v130 = v47;
  v51 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
  v54 = v106;
  v55 = v121;
  sub_264E24B38();
  sub_264D817BC(v43, &qword_27FFB1878, &unk_264E27650);

  (*(v103 + 8))(v22, v55);
  v56 = UsageDetailChart.Model.yStride.getter();
  UsageDetailChart.Model.maxUsage.getter();
  if (v57 > 3600.0)
  {
    v58 = *(v51 + *(v120 + 28));
  }

  v59 = UsageDetailChart.Model.maxUsage.getter();
  v105 = &v93;
  v60 = MEMORY[0x28223BE20](v59).n128_u64[0];
  *(&v93 - 6) = v56;
  *(&v93 - 5) = 0;
  *(&v93 - 32) = 1;
  *(&v93 - 3) = v60;
  *(&v93 - 16) = 0;
  *(&v93 - 1) = v54;
  v103 = v51;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19A8, &unk_264E262F0);
  v127 = v121;
  v128 = v50;
  v129 = OpaqueTypeConformance2;
  v130 = v53;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0);
  v64 = v122;
  v121 = v61;
  sub_264E24B18();

  (*(v107 + 8))(v54, v64);
  v65 = v104;
  v66 = v124;
  if (*(v104 + 16))
  {
    v67 = *(type metadata accessor for UsageDetailChart.HourlyUsage(0) - 8);
    v68 = v118;
    v69 = v65 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v70 = v96;
    (*(v118 + 16))(v96, v69, v66);
    v71 = v116;
    sub_264E23858();
    (*(v68 + 8))(v70, v66);
    (*(v68 + 56))(v71, 0, 1, v66);
    v72 = v117;
    (*(v68 + 32))(v117, v71, v66);
    v73 = v103;
  }

  else
  {
    v68 = v118;
    v74 = v116;
    (*(v118 + 56))(v116, 1, 1, v124);
    v75 = *(v120 + 24);
    v76 = v93;
    sub_264E23A98();
    v77 = v103;
    v72 = v117;
    Calendar.fullDay(for:)(v76, v117);
    (*(v94 + 8))(v76, v95);
    v73 = v77;
    if ((*(v68 + 48))(v74, 1, v66) != 1)
    {
      sub_264D817BC(v74, &qword_27FFB1880, &qword_264E26220);
    }
  }

  v78 = v123;
  v79 = sub_264E119C4(v72, v73 + *(v120 + 24));
  MEMORY[0x28223BE20](v79);
  *(&v93 - 2) = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1998, &unk_264E27720);
  v127 = v122;
  v128 = v121;
  v129 = v62;
  v130 = v63;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720);
  v84 = v108;
  v85 = v112;
  sub_264E24B08();

  (*(v68 + 8))(v72, v124);
  (*(v109 + 8))(v78, v85);
  v127 = v85;
  v128 = v81;
  v129 = v82;
  v130 = v83;
  swift_getOpaqueTypeConformance2();
  v86 = v111;
  v87 = v113;
  sub_264E24B28();
  (*(v110 + 8))(v84, v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3548, &unk_264E2A410);
  v89 = v119;
  v90 = (v119 + *(v88 + 36));
  v91 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2480, &qword_264E27C88) + 28);
  sub_264E245B8();
  *v90 = swift_getKeyPath();
  return (*(v114 + 32))(v89, v86, v115);
}

uint64_t sub_264E1478C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = type metadata accessor for UsageDetailChart(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_264E12FF8(a1, *(a2 + *(v6 + 28)));
  v13 = sub_264DFF0FC(v12);

  v27 = v13;
  swift_getKeyPath();
  sub_264E16344(a1, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageDetailChart.HourlyUsage);
  sub_264E16344(a2, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageDetailChart);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_264E160FC(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for UsageDetailChart.HourlyUsage);
  sub_264E160FC(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for UsageDetailChart);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_264E17294;
  *(v17 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35A0, &qword_264E2A648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2490, &qword_264E2A650);
  sub_264D81DCC(&qword_27FFB35A8, &qword_27FFB35A0, &qword_264E2A648);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2450, &unk_264E2A400);
  v23 = sub_264E241F8();
  v24 = MEMORY[0x277CE0F78];
  v25 = MEMORY[0x277CBB400];
  v26 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_264D89EB8();
  v23 = v18;
  v24 = MEMORY[0x277D837D0];
  v25 = OpaqueTypeConformance2;
  v26 = v20;
  swift_getOpaqueTypeConformance2();
  return sub_264E24ED8();
}

uint64_t sub_264E14B20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v57 = a5;
  v58 = a2;
  v59 = a3;
  v60 = a6;
  v56 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47 - v14;
  v16 = sub_264E23C18();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_264E23AA8();
  v47 = *(v48 - 8);
  v21 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v61 = &v47 - v26;
  v27 = sub_264E241F8();
  v28 = *(v27 - 8);
  v52 = v27;
  v53 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v49 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2450, &unk_264E2A400);
  v32 = *(v31 - 8);
  v54 = v31;
  v55 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v50 = &v47 - v34;
  sub_264E247D8();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v17 + 104))(v20, *MEMORY[0x277CC9980], v16);
  v35 = sub_264E23C38();
  (*(*(v35 - 8) + 56))(v15, 1, 1, v35);
  sub_264E240E8();

  sub_264D817BC(v15, &qword_27FFB1C50, &unk_264E267D0);
  (*(v17 + 8))(v20, v16);
  (*(v47 + 8))(v23, v48);
  sub_264E247D8();
  v62 = *(a4 + *(type metadata accessor for UsageDetailChart.HourlyUsage(0) + 20)) * a7;
  sub_264E240F8();

  v36 = [objc_opt_self() currentDevice];
  v37 = [v36 model];

  sub_264E25108();
  sub_264E251A8();

  v38 = v49;
  sub_264E241E8();
  v39 = type metadata accessor for UsageDetailChart(0);
  v62 = COERCE_DOUBLE(UsageDetailChart.Model.orderedStackedBarColors(index:selectedItem:)(v56, *(v57 + *(v39 + 20))));
  v40 = MEMORY[0x277CE0F78];
  v41 = MEMORY[0x277CBB400];
  v42 = MEMORY[0x277CE0F60];
  v43 = v50;
  v44 = *&v52;
  sub_264E24038();

  (*(v53 + 8))(v38, COERCE_DOUBLE(*&v44));
  v66 = v58;
  v67 = v59;
  v62 = v44;
  v63 = v40;
  v64 = v41;
  v65 = v42;
  swift_getOpaqueTypeConformance2();
  sub_264D89EB8();
  v45 = v54;
  sub_264E24048();
  return (*(v55 + 8))(v43, v45);
}

void *UsageDetailChart.Model.orderedStackedBarColors(index:selectedItem:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for UsageDetailChart.Model(0) + 32));
  if (a2 && *(a2 + 16))
  {
    v6 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
    v7 = *(a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(v6 + 24));
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = sub_264D8C29C(*(v7 + 16), 0);
      v10 = sub_264D8E260(&v13, v9 + 4, v8, v7);

      sub_264D8F07C();
      if (v10 == v8)
      {
LABEL_7:
        v5 = v9[2];

        goto LABEL_8;
      }

      __break(1u);
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

LABEL_8:
  result = (v5 + 1);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = sub_264E17574(result, 1);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result[2] > a1)
  {
    v12 = result[a1 + 4];

    return v12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t UsageDetailChart.Model.yAxisScale.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264E261F0;
  *(v1 + 32) = 0;
  UsageDetailChart.Model.maxUsage.getter();
  v2 = 3600.0;
  if (v3 > 3600.0)
  {
    v2 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 28));
  }

  UsageDetailChart.Model.maxUsage.getter();
  v5 = v2 * ceil(v4 / v2);
  if (v5 <= v2)
  {
    v5 = v2;
  }

  *(v1 + 40) = v5;
  return v1;
}

uint64_t UsageDetailChart.Model.xAxisScale.getter()
{
  v1 = sub_264E23AA8();
  v28 = *(v1 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for UsageDetailChart.Model(0);
  v18 = *(v0 + *(v17 + 20));
  if (*(v18 + 16))
  {
    v19 = *(type metadata accessor for UsageDetailChart.HourlyUsage(0) - 8);
    (*(v10 + 16))(v13, v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v9);
    sub_264E23858();
    (*(v10 + 8))(v13, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v16, v8, v9);
    v20 = v28;
  }

  else
  {
    v21 = v17;
    (*(v10 + 56))(v8, 1, 1, v9);
    v22 = *(v21 + 24);
    sub_264E23A98();
    Calendar.fullDay(for:)(v4, v16);
    v20 = v28;
    (*(v28 + 8))(v4, v1);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_264D817BC(v8, &qword_27FFB1880, &qword_264E26220);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v23 = *(v20 + 72);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_264E261F0;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  (*(v10 + 8))(v16, v9);
  return v25;
}

uint64_t UsageDetailChart.Model.yStride.getter()
{
  UsageDetailChart.Model.maxUsage.getter();
  v1 = 3600.0;
  if (v2 > 3600.0)
  {
    v1 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 28));
  }

  UsageDetailChart.Model.maxUsage.getter();
  v4 = v1 * ceil(v3 / v1);
  if (v4 > v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v1;
  }

  result = type metadata accessor for UsageDetailChart.Model(0);
  v7 = v5 * 0.25;
  if (v5 * 0.25 == 0.0)
  {
    goto LABEL_39;
  }

  v8 = *(v0 + *(result + 28)) * 0.25 + v5;
  v9 = v8 >= 0.0;
  if (v7 > 0.0)
  {
    v9 = v8 <= 0.0;
  }

  if (!v9)
  {
    v11 = 0;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_37;
      }

      v12 = v10 * v7 + 0.0;
      v13 = v12 <= v8;
      if (v7 > 0.0)
      {
        v13 = v8 <= v12;
      }

      ++v11;
      if (v13)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = 0;
LABEL_16:
  v24 = MEMORY[0x277D84F90];
  sub_264D8D0F4(0, v10, 0);
  result = v24;
  if (v10)
  {
    v14 = 1;
    v15 = 0.0;
    while (1)
    {
      v16 = v15 <= v8;
      if (v7 > 0.0)
      {
        v16 = v8 <= v15;
      }

      if (v16)
      {
        break;
      }

      v25 = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        sub_264D8D0F4((v17 > 1), v18 + 1, 1);
        result = v25;
      }

      v19 = v14 * v7 + 0.0;
      *(result + 16) = v18 + 1;
      *(result + 8 * v18 + 32) = v15;
      ++v14;
      v15 = v19;
      if (v14 - v10 == 1)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  v19 = 0.0;
LABEL_26:
  v20 = v19 <= v8;
  if (v7 > 0.0)
  {
    v20 = v8 <= v19;
  }

  if (!v20)
  {
    while (!__OFADD__(v10, 1))
    {
      v26 = result;
      v22 = *(result + 16);
      v21 = *(result + 24);
      if (v22 >= v21 >> 1)
      {
        sub_264D8D0F4((v21 > 1), v22 + 1, 1);
        result = v26;
      }

      *(result + 8 * v22 + 32) = v19;
      v19 = (v10 + 1) * v7 + 0.0;
      *(result + 16) = v22 + 1;
      v23 = v19 <= v8;
      if (v7 > 0.0)
      {
        v23 = v8 <= v19;
      }

      ++v10;
      if (v23)
      {
        return result;
      }
    }

    goto LABEL_38;
  }

  return result;
}