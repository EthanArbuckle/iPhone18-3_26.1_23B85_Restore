void sub_1BD9548F8()
{
  sub_1BD0EDF50();
  if (v0 <= 0x3F)
  {
    sub_1BD0EDFE4();
    if (v1 <= 0x3F)
    {
      sub_1BD259880();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v4 <= 0x3F)
          {
            sub_1BD1030A8();
            if (v5 <= 0x3F)
            {
              sub_1BD259914(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1BD7A8880(319, &qword_1EBD59638, &qword_1EBD59618, &unk_1BE1070F8, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1BD33A018();
                  if (v8 <= 0x3F)
                  {
                    sub_1BD259914(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD14639C();
                      if (v10 <= 0x3F)
                      {
                        sub_1BD259914(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                        if (v11 <= 0x3F)
                        {
                          sub_1BD7A8880(319, &qword_1EBD59668, &qword_1EBD59670, &unk_1BE107118, MEMORY[0x1E697DCC0]);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_1BD954B7C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1BE04C884() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_30;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((((((v10 + ((v12 + ((((((((((v11 + 48) & ~v11) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 56) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v8 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_30:
    if ((v7 & 0x80000000) != 0)
    {
      v22 = *(v6 + 48);

      return v22((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11, v7, v5);
    }

    else
    {
      v21 = *(a1 + 8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void sub_1BD954DE0(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1BE04C884() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((((((v12 + ((v14 + ((((((((((v13 + 48) & ~v13) + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 56) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v18 = 0;
    v19 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15)
    {
      v16 = 2;
    }

    else
    {
      v16 = a3 - v10 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if ((v9 & 0x80000000) != 0)
      {
        v21 = *(v22 + 56);

        v21((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }
  }

  if (v15)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (v15)
  {
    bzero(a1, v15);
    *a1 = ~v10 + a2;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_1BD9550F0()
{
  result = *(v0 + 16);
  if (!result)
  {
    sub_1BE04CDA4();
    sub_1BD9548B0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD95516C()
{
  type metadata accessor for AuthorizationSheet();

  return sub_1BD94E2C0();
}

void sub_1BD9551F8(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorizationSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1BD94E424(a1, v4);
}

unint64_t sub_1BD9552A8()
{
  result = qword_1EBD59728;
  if (!qword_1EBD59728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59708);
    sub_1BD955360();
    sub_1BD0DE4F4(&qword_1EBD36718, &unk_1EBD596E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59728);
  }

  return result;
}

unint64_t sub_1BD955360()
{
  result = qword_1EBD59730;
  if (!qword_1EBD59730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59738);
    sub_1BD9553EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59730);
  }

  return result;
}

unint64_t sub_1BD9553EC()
{
  result = qword_1EBD59740;
  if (!qword_1EBD59740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59748);
    sub_1BD9554A4();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59740);
  }

  return result;
}

unint64_t sub_1BD9554A4()
{
  result = qword_1EBD59750;
  if (!qword_1EBD59750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59758);
    sub_1BD95555C();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59750);
  }

  return result;
}

unint64_t sub_1BD95555C()
{
  result = qword_1EBD59760;
  if (!qword_1EBD59760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD59768);
    sub_1BD9555E8();
    sub_1BD2DF424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59760);
  }

  return result;
}

unint64_t sub_1BD9555E8()
{
  result = qword_1EBD367F0;
  if (!qword_1EBD367F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD59778);
    sub_1BD955674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367F0);
  }

  return result;
}

unint64_t sub_1BD955674()
{
  result = qword_1EBD36830;
  if (!qword_1EBD36830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD59788);
    sub_1BD9548B0(&unk_1EBD369E0, MEMORY[0x1E69BCAB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36830);
  }

  return result;
}

uint64_t sub_1BD955730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for AuthorizationSheet() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1BD94C700(a1, v8, v5, v6, a2);
}

uint64_t sub_1BD9557CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD955848()
{
  result = qword_1EBD36848;
  if (!qword_1EBD36848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59718);
    sub_1BD9548B0(&unk_1EBD36A00, MEMORY[0x1E69BCA28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36848);
  }

  return result;
}

unint64_t sub_1BD955904()
{
  result = qword_1EBD59798;
  if (!qword_1EBD59798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59798);
  }

  return result;
}

uint64_t sub_1BD95596C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for AuthorizationSheet() - 8);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return sub_1BD9506DC(v3, v1);
}

unint64_t sub_1BD9559F8()
{
  result = qword_1EBD36738;
  if (!qword_1EBD36738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD597B0);
    sub_1BD0DE4F4(&unk_1EBD36888, &unk_1EBD597C0);
    sub_1BD0DE4F4(&qword_1EBD36898, &unk_1EBD597D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36738);
  }

  return result;
}

uint64_t sub_1BD955AD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BD0D45CC();
  }

  return result;
}

unint64_t sub_1BD955B38()
{
  result = qword_1EBD366B8;
  if (!qword_1EBD366B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD366B8);
  }

  return result;
}

uint64_t sub_1BD955BB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for AuthorizationSheet() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1BD9542C4(a1, v8, v5, v6, a2);
}

double sub_1BD955C50@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for AuthorizationSheet() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1BD9535B8(v1 + v6, v3, v4, a1, v8, v9);
}

void sub_1BD955D1C()
{
  v1 = *(type metadata accessor for AuthorizationSheet() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_1BD9537E4(v0 + v2, v6, v7, v8);
}

uint64_t objectdestroyTm_114()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for AuthorizationSheet();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);

  sub_1BD0D45CC();

  v4 = v2[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BE04C884();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1BD0D4604(*(v3 + v2[21]), *(v3 + v2[21] + 8));
  sub_1BD0D4604(*(v3 + v2[22]), *(v3 + v2[22] + 8));
  sub_1BD25D6D4(*(v3 + v2[23]), *(v3 + v2[23] + 8));

  return swift_deallocObject();
}

uint64_t sub_1BD956078(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for AuthorizationSheet();
  sub_1BE048964();
  a2(0);
}

uint64_t sub_1BD956104()
{
  type metadata accessor for AuthorizationSheet();
  sub_1BE04E6A4();

  return sub_1BD9544F8();
}

uint64_t sub_1BD9561EC()
{
  v1 = *(sub_1BE04CA04() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD952BFC(v0 + v2, v3);
}

void (*sub_1BD9562A8())(void)
{
  sub_1BE04CA04();

  return sub_1BD95319C();
}

uint64_t sub_1BD956308()
{
  result = sub_1BE04F684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s21SpendingTrendIconViewVMa()
{
  result = qword_1EBD59850;
  if (!qword_1EBD59850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD95647C()
{
  result = type metadata accessor for FinanceKitSpendingTrend();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD956504@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FinanceKitSpendingTrend();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD363294(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v10 = sub_1BE0493F4();
    (*(*(v10 - 8) + 8))(v7, v10);
    v14 = sub_1BE051574();
    LOBYTE(v15) = 0;
  }

  else
  {
    if (EnumCaseMultiPayload - 2 >= 2)
    {
      v14 = 0;
      v15 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49090);
      sub_1BD50CBB4();
      result = sub_1BE04F9A4();
      goto LABEL_6;
    }

    v9 = sub_1BE0493F4();
    (*(*(v9 - 8) + 8))(v7, v9);
    v14 = sub_1BE051574();
    LOBYTE(v15) = 1;
  }

  sub_1BE048964();
  sub_1BE04F9A4();
  v14 = v16;
  v15 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49090);
  sub_1BD50CBB4();
  sub_1BE04F9A4();

LABEL_6:
  v12 = v17;
  v13 = v18;
  *a1 = v16;
  *(a1 + 8) = v12;
  *(a1 + 9) = v13;
  return result;
}

unint64_t sub_1BD956768()
{
  result = qword_1EBD59860;
  if (!qword_1EBD59860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59868);
    sub_1BD50CBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59860);
  }

  return result;
}

id sub_1BD9567F4()
{
  result = [objc_opt_self() systemFontOfSize_];
  qword_1EBD59870 = result;
  return result;
}

char *sub_1BD956838()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v38 - v12;
  result = PKPassKitUIBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE052404();

    v17 = sub_1BE052404();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (v18)
    {
      sub_1BE04A9F4();

      v19 = sub_1BE04AA64();
      (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
    }

    else
    {
      v19 = sub_1BE04AA64();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    }

    sub_1BD226B4C(v9, v13);
    sub_1BD38F438(v13, v5);
    sub_1BE04AA64();
    v20 = *(v19 - 8);
    v21 = 0;
    if ((*(v20 + 48))(v5, 1, v19) != 1)
    {
      v21 = sub_1BE04A9C4();
      (*(v20 + 8))(v5, v19);
    }

    v22 = PKUIScreenScale();
    v23 = PKUIImageFromPDF(v21, 80.0, 80.0, v22);

    if (v23)
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      *&v1[OBJC_IVAR____TtC9PassKitUI14BadgedHeroView_heroView] = v24;
      v25 = [v24 layer];
      [v25 setMasksToBounds_];
      [v25 setCornerRadius_];
      [v25 setCornerCurve_];
      v26 = [objc_opt_self() labelColor];
      v27 = [v26 colorWithAlphaComponent_];

      v28 = [v27 CGColor];
      [v25 setBorderColor_];

      [v25 setBorderWidth_];
      if (qword_1EBD36FC8 != -1)
      {
        swift_once();
      }

      v29 = [objc_opt_self() configurationWithFont_];
      v30 = sub_1BE052404();
      v31 = [objc_opt_self() systemImageNamed:v30 withConfiguration:v29];

      if (v31)
      {
        v32 = [v31 imageWithRenderingMode_];
      }

      else
      {
        v32 = 0;
      }

      v34 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      *&v1[OBJC_IVAR____TtC9PassKitUI14BadgedHeroView_badgeView] = v34;
      [v34 setContentMode_];
      v35 = type metadata accessor for BadgedHeroView();
      v38.receiver = v1;
      v38.super_class = v35;
      v36 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v37 = *&v36[OBJC_IVAR____TtC9PassKitUI14BadgedHeroView_heroView];
      v33 = v36;
      [v33 addSubview_];
      [v33 addSubview_];

      sub_1BD226BBC(v13);
    }

    else
    {
      sub_1BD226BBC(v13);
      type metadata accessor for BadgedHeroView();
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD956E0C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BadgedHeroView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC9PassKitUI14BadgedHeroView_heroView;
  [*&v0[OBJC_IVAR____TtC9PassKitUI14BadgedHeroView_heroView] sizeToFit];
  v2 = [v0 _shouldReverseLayoutDirection];
  [*&v0[v1] frame];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (v2)
  {
    MinX = CGRectGetMinX(*&v3);
    v12 = -16.0;
  }

  else
  {
    MinX = CGRectGetMaxX(*&v3) + -40.0;
    v12 = 16.0;
  }

  v15.origin.x = v7;
  v15.origin.y = v8;
  v15.size.width = v9;
  v15.size.height = v10;
  return [*&v0[OBJC_IVAR____TtC9PassKitUI14BadgedHeroView_badgeView] setFrame_];
}

id sub_1BD956FB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgedHeroView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MultiHyperLinkDetailSheet()
{
  result = qword_1EBD59888;
  if (!qword_1EBD59888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9570A4()
{
  sub_1BD957118();
  if (v0 <= 0x3F)
  {
    sub_1BD9571D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD957118()
{
  if (!qword_1EBD59898)
  {
    sub_1BD957184();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD59898);
    }
  }
}

unint64_t sub_1BD957184()
{
  result = qword_1EBD3CCE0;
  if (!qword_1EBD3CCE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3CCE0);
  }

  return result;
}

void sub_1BD9571D0()
{
  if (!qword_1EBD598A0)
  {
    v0 = sub_1BE04AA64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD598A0);
    }
  }
}

void sub_1BD957218(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for SafariViewController();
  MEMORY[0x1EEE9AC00](v28, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD598A8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v27 - v13);
  v15 = type metadata accessor for MultiHyperLinkDetailSheet();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD957708(a1, v18, type metadata accessor for MultiHyperLinkDetailSheet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v10, v18, v6);
    (*(v7 + 16))(v5, v10, v6);
    sub_1BD957708(v5, v14, type metadata accessor for SafariViewController);
    swift_storeEnumTagMultiPayload();
    sub_1BD10CD10();
    sub_1BD957770();
    sub_1BE04F9A4();
    sub_1BD9577C8(v5, type metadata accessor for SafariViewController);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v19 = *(v18 + 1);
    v20 = *(v18 + 2);
    v21 = *v18;
    sub_1BD45AAC4(v21, v19, v20, v30);
    v22 = *v30;
    v34 = *&v30[8];
    v32 = v31;
    v33 = *&v30[24];
    v23 = *(&v31 + 1);
    v24 = *&v30[16];
    *v14 = *v30;
    v14[1] = v24;
    v14[2] = v31;
    swift_storeEnumTagMultiPayload();
    v25 = v22;
    sub_1BD206260(&v34, v29);
    sub_1BD0DE19C(&v33, v29, &qword_1EBD468D0);
    sub_1BD0DE19C(&v32, v29, &qword_1EBD468E0);
    sub_1BD10CD10();
    sub_1BD957770();
    v26 = v23;
    sub_1BE04F9A4();

    sub_1BD1BCDE4(&v34);
    sub_1BD0DE53C(&v33, &qword_1EBD468D0);
    sub_1BD0DE53C(&v32, &qword_1EBD468E0);
  }
}

uint64_t sub_1BD9575E8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](v2, a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD957708(v6, v5, type metadata accessor for MultiHyperLinkDetailSheet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1BE04AA64();
    result = (*(*(v7 - 8) + 8))(v5, v7);
    v9 = 0xE600000000000000;
    v10 = 0x697261666173;
  }

  else
  {
    result = sub_1BD9577C8(v5, type metadata accessor for MultiHyperLinkDetailSheet);
    v9 = 0xE500000000000000;
    v10 = 0x736D726574;
  }

  *a2 = v10;
  a2[1] = v9;
  return result;
}

uint64_t sub_1BD957708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD957770()
{
  result = qword_1EBD394A8;
  if (!qword_1EBD394A8)
  {
    type metadata accessor for SafariViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD394A8);
  }

  return result;
}

uint64_t sub_1BD9577C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD9578EC(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v3 = sub_1BE04BAC4();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v28 = v2;
  v8 = sub_1BD188180(v2, KeyPath);

  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  v35 = 0x80000001BE1182F0;
  v36 = 0x80000001BE118310;
  v33 = 0x80000001BE118280;
  v34 = 0x80000001BE1182A0;
  v31 = 0x80000001BE118230;
  v32 = 0x80000001BE118260;
  while (2)
  {
    if (v9)
    {
      switch(*v10)
      {
        case 8:

          break;
        default:
          v11 = sub_1BE053B84();

          ++v10;
          --v9;
          if ((v11 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v16 = 0x6F63206775626564;
      v15 = 0xEC0000006769666ELL;
      v18 = 0;
    }

    else
    {

      sub_1BE04BC34();
      v12 = sub_1BE04BAB4();
      v13 = v27;
      v14 = *(v26 + 8);
      v14(v6, v27);
      if (v12)
      {
        v15 = 0x80000001BE11FE20;
        v16 = 0xD000000000000012;
      }

      else
      {
        sub_1BE04BC34();
        v17 = sub_1BE04B994();
        v14(v6, v13);
        if ((v17 & 1) == 0)
        {
          v19 = objc_opt_self();
          v20 = sub_1BE04BC84();
          v21 = sub_1BE04BBD4();
          v22 = swift_allocObject();
          v23 = v30;
          *(v22 + 16) = v29;
          *(v22 + 24) = v23;
          aBlock[4] = sub_1BD958378;
          aBlock[5] = v22;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD976224;
          aBlock[3] = &block_descriptor_216;
          v24 = _Block_copy(aBlock);
          sub_1BE048964();

          [v19 shouldOfferAMPEnrollmentForPass:v20 provisioningController:v21 withCompletion:v24];
          _Block_release(v24);

          return;
        }

        v16 = 0xD000000000000044;
        v15 = 0x80000001BE11BB10;
      }

      v18 = 1;
    }

    break;
  }

  v29(v16, v15, 0, v18);
}

uint64_t sub_1BD957E18(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  aBlock[4] = sub_1BD958380;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_9_8;
  v17 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v20);
}

id sub_1BD9580AC()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BBD4();
  v8 = sub_1BE04BC84();
  sub_1BE04BC34();
  v9 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v10 = [objc_allocWithZone(PKPaymentPassAMPEnrollmentViewController) initWithProvisioningController:v7 paymentPass:v8 context:v9];

  [v10 setFlowItemDelegate_];
  sub_1BE052434();
  v11 = sub_1BE04BB74();

  [v10 setReporter_];

  return v10;
}

uint64_t sub_1BD958244()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD958280(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD958498()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9584D4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD958520()
{
  v1 = [objc_allocWithZone(PKAppleBalanceExplanationViewController) initWithSetupController_];
  [v1 setDelegate_];
  return v1;
}

uint64_t sub_1BD958680()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5[0] = [objc_opt_self() userCancelError];
    v6 = 1;
    sub_1BD865A00(v0, &off_1F3BC6ED8, v5, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_1BD12FF7C(v5);
  }

  return result;
}

id sub_1BD95875C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A70);
  return sub_1BD9587B4(a1, (a2 + *(v4 + 44)));
}

id sub_1BD9587B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v3 = sub_1BE04BD74();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v90 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A78);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v89 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v87 - v15;
  v17 = sub_1BE04AA64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v91 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v92 = v24;
  v93 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v87 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A80);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v94 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v102 = &v87 - v34;
  v35 = type metadata accessor for WalletSettingsModel(0);
  v36 = *a1;
  v37 = [*a1 paymentPass];
  v100 = v18;
  v101 = v17;
  v96 = v35;
  if (v37)
  {
    v38 = v37;
    v88 = a1;
    v39 = sub_1BE052434();
    sub_1BD4089F0(v38, v39, v40, v16);

    v18 = v100;

    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      v41 = v18 + 32;
      v42 = *(v18 + 32);
      v87 = v6;
      v43 = v101;
      v42(v28, v16, v101);
      v44 = v89;
      v45 = v88;
      sub_1BD95906C(v89);
      v46 = *(v45 + 1);
      v104 = *(v45 + 3);
      v105 = v46;
      v47 = v93;
      v42(v93, v28, v43);
      v48 = (*(v41 + 48) + 56) & ~*(v41 + 48);
      v49 = swift_allocObject();
      v50 = *(v45 + 1);
      *(v49 + 16) = *v45;
      *(v49 + 32) = v50;
      *(v49 + 48) = v45[4];
      v42((v49 + v48), v47, v43);
      v18 = v100;
      v51 = v87;
      v52 = (v44 + *(v87 + 36));
      *v52 = sub_1BD95B4F4;
      v52[1] = v49;
      v53 = v102;
      sub_1BD0DE204(v44, v102, &qword_1EBD59A78);
      (*(v7 + 56))(v53, 0, 1, v51);
      v54 = v36;
      sub_1BD0DE19C(&v105, v103, &qword_1EBD54350);
      sub_1BD0DE19C(&v104, v103, &qword_1EBD54350);
      goto LABEL_6;
    }
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_1BD0DE53C(v16, &unk_1EBD3CF70);
  (*(v7 + 56))(v102, 1, 1, v6);
LABEL_6:
  v55 = v99;
  v56 = v97;
  v57 = [v36 paymentPass];
  v58 = v98;
  if (!v57)
  {
    (*(v18 + 56))(v56, 1, 1, v101);
    goto LABEL_11;
  }

  v59 = v57;
  v60 = sub_1BE052434();
  sub_1BD4089F0(v59, v60, v61, v56);

  v62 = v101;
  if ((*(v18 + 48))(v56, 1, v101) == 1)
  {
LABEL_11:
    sub_1BD0DE53C(v56, &unk_1EBD3CF70);
    v70 = 0;
    v72 = 0;
    v80 = 0;
    v76 = 0;
    v81 = 0;
    v79 = 0;
    goto LABEL_12;
  }

  v63 = *(v18 + 32);
  v63(v91, v56, v62);
  v64 = v90;
  (*(v58 + 104))(v90, *MEMORY[0x1E69B80F0], v55);
  result = PKPassKitBundle();
  if (result)
  {
    v66 = result;
    v67 = sub_1BE04B6F4();
    v69 = v68;

    (*(v58 + 8))(v64, v55);
    v103[0] = v67;
    v103[1] = v69;
    sub_1BD0DDEBC();
    v70 = sub_1BE0506C4();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = v93;
    v63(v93, v91, v62);
    v78 = (*(v100 + 80) + 16) & ~*(v100 + 80);
    v79 = swift_allocObject();
    v63((v79 + v78), v77, v62);
    v80 = v74 & 1;
    sub_1BD0D7F18(v70, v72, v80);
    sub_1BE048C84();
    sub_1BE048964();
    v81 = sub_1BD95B494;
LABEL_12:
    v82 = v102;
    v83 = v94;
    sub_1BD0DE19C(v102, v94, &qword_1EBD59A80);
    v84 = v95;
    *v95 = 0;
    *(v84 + 8) = 1;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A88);
    sub_1BD0DE19C(v83, v84 + *(v85 + 48), &qword_1EBD59A80);
    v86 = (v84 + *(v85 + 64));
    sub_1BD95B3D4(v70, v72, v80, v76, v81);
    sub_1BD95B434(v70, v72, v80, v76, v81);
    *v86 = v70;
    v86[1] = v72;
    v86[2] = v80;
    v86[3] = v76;
    v86[4] = v81;
    v86[5] = v79;
    sub_1BD0DE53C(v82, &qword_1EBD59A80);
    sub_1BD95B434(v70, v72, v80, v76, v81);
    return sub_1BD0DE53C(v83, &qword_1EBD59A80);
  }

  __break(1u);
  return result;
}

int *sub_1BD95906C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v9, *MEMORY[0x1E69B80F0], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v9, v4);
    *&v29 = v12;
    *(&v29 + 1) = v14;
    sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v29 = *(v2 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if (v28[15])
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 1.0;
    }

    v23 = sub_1BE051CD4();
    v25 = v24;
    v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A90) + 36);
    sub_1BD959E00(v2, v26);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A98);
    v27 = (v26 + result[9]);
    *v27 = v23;
    v27[1] = v25;
    *a1 = v15;
    *(a1 + 8) = v17;
    *(a1 + 16) = v19 & 1;
    *(a1 + 24) = v21;
    *(a1 + 32) = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD959290(id *a1)
{
  [*a1 isAppleCardPass];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  sub_1BD959310();
}

void sub_1BD959310()
{
  v1 = *v0;
  if ([*v0 isAppleCardPass] && (v2 = objc_msgSend(v1, sel_associatedAccountServiceAccountIdentifier)) != 0)
  {
    v3 = v2;
    v4 = [objc_opt_self() sharedInstance];
    if (v4)
    {
      v5 = v4;
      v16 = *(v0 + 8);
      v15 = *(v0 + 24);
      v6 = swift_allocObject();
      v7 = *(v0 + 16);
      *(v6 + 16) = *v0;
      *(v6 + 32) = v7;
      *(v6 + 48) = *(v0 + 32);
      aBlock[4] = sub_1BD95B558;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_217;
      v8 = _Block_copy(aBlock);
      v9 = v1;
      sub_1BD0DE19C(&v16, v13, &qword_1EBD54350);
      sub_1BD0DE19C(&v15, v13, &qword_1EBD54350);

      [v5 accountWithIdentifier:v3 completion:v8];
      _Block_release(v8);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    v10 = [objc_opt_self() sharedApplication];
    v11 = sub_1BE04A9C4();
    sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1BD95B5B4(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey);
    v12 = sub_1BE052224();

    [v10 openURL:v11 options:v12 completionHandler:0];
  }
}

void sub_1BD9595B0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_1BE04A9C4();
  sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD95B5B4(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey);
  v2 = sub_1BE052224();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

uint64_t sub_1BD9596BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A00);
  MEMORY[0x1EEE9AC00](v56, v3);
  v5 = &v55 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A08);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v57 = &v55 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v12 = swift_allocObject();
  v55 = xmmword_1BE0B69E0;
  *(v12 + 16) = xmmword_1BE0B69E0;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1BD110550();
  *(v12 + 64) = v14;
  *(v12 + 32) = 0xD000000000000010;
  *(v12 + 40) = 0x80000001BE142BC0;
  v15 = sub_1BE04C134();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v55;
  *(v18 + 56) = v13;
  *(v18 + 64) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  sub_1BE04C134();

  sub_1BE04F624();
  v19 = sub_1BE050694();
  v21 = v20;
  LOBYTE(v13) = v22;
  *&v55 = v23;
  KeyPath = swift_getKeyPath();
  v25 = *a1;
  v26 = *(a1 + 8);
  v64 = *(a1 + 24);
  v65 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = 0xD000000000000010;
  *(v27 + 24) = 0x80000001BE142BC0;
  v28 = *(a1 + 16);
  *(v27 + 32) = *a1;
  *(v27 + 48) = v28;
  *(v27 + 64) = *(a1 + 32);
  v29 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A10) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58050);
  v30 = v25;
  sub_1BD0DE19C(&v65, &v62, &qword_1EBD54350);
  sub_1BD0DE19C(&v64, &v62, &qword_1EBD54350);
  sub_1BE04E774();
  *v29 = KeyPath;
  *v5 = v19;
  *(v5 + 1) = v21;
  v5[16] = v13 & 1;
  *(v5 + 3) = v55;
  LOBYTE(v21) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A18) + 36)];
  *v39 = v21;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_1BE0502A4();
  v41 = swift_getKeyPath();
  v42 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A20) + 36)];
  *v42 = v41;
  v42[1] = v40;
  LODWORD(v40) = sub_1BE04FC94();
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A28) + 36)] = v40;
  v43 = swift_getKeyPath();
  v44 = &v5[*(v56 + 36)];
  *v44 = v43;
  v44[8] = 0;
  v63 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  type metadata accessor for AccountLegalDisclosureSheet();
  sub_1BD95B068();
  sub_1BD95B5B4(&qword_1EBD59A60, type metadata accessor for AccountLegalDisclosureSheet);
  v45 = v57;
  sub_1BE050F64();

  sub_1BD0DE53C(v5, &qword_1EBD59A00);
  v47 = v58;
  v46 = v59;
  v48 = *(v59 + 16);
  v49 = v45;
  v50 = v60;
  v48(v58, v45, v60);
  v51 = v61;
  v48(v61, v47, v50);
  v52 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59A68) + 48)];
  *v52 = 0;
  v52[8] = 1;
  v53 = *(v46 + 8);
  v53(v49, v50);
  return (v53)(v47, v50);
}

uint64_t sub_1BD959CB0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1BE04A9B4() == a4 && v7 == a5)
  {
  }

  else
  {
    v8 = sub_1BE053B84();

    if ((v8 & 1) == 0)
    {
      v9 = 0;
      return a2(v9);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v9 = 1;
  return a2(v9);
}

uint64_t sub_1BD959D8C@<X0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for AccountLegalDisclosureSheet() + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  result = swift_storeEnumTagMultiPayload();
  *a1 = 2;
  return result;
}

uint64_t sub_1BD959E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15[-v7];
  v16 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v15[15] == 1)
  {
    sub_1BE04E4F4();
    v9 = &v8[*(v4 + 36)];
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
    v11 = *MEMORY[0x1E697DC20];
    v12 = sub_1BE04E364();
    (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
    *v9 = swift_getKeyPath();
    sub_1BD0DE204(v8, a2, &qword_1EBD3ABE0);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

void sub_1BD959FBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BE051FA4();
  v9 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04AA64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v18 = a1;
  v19 = [v18 creditDetails];
  if (!v19)
  {

LABEL_6:
    sub_1BD14BE3C();
    v25 = sub_1BE052D54();
    v26 = *a3;
    v27 = *(a3 + 8);
    v52 = *(a3 + 24);
    v53 = v27;
    v28 = swift_allocObject();
    v29 = *(a3 + 16);
    *(v28 + 16) = *a3;
    *(v28 + 32) = v29;
    *(v28 + 48) = *(a3 + 32);
    v50 = sub_1BD95B560;
    v51 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1BD126964;
    v49 = &block_descriptor_26_3;
    v30 = _Block_copy(&aBlock);
    v31 = v26;
    sub_1BD0DE19C(&v53, v45, &qword_1EBD54350);
    sub_1BD0DE19C(&v52, v45, &qword_1EBD54350);

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD95B5B4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v12, v8, v30);
    _Block_release(v30);

    (*(v44 + 8))(v8, v5);
    (*(v9 + 8))(v12, v43);
    return;
  }

  v20 = v19;
  v21 = [objc_allocWithZone(MEMORY[0x1E69B84D8]) init];
  v22 = [v18 accountBaseURL];
  if (v22)
  {
    v23 = v22;
    sub_1BE04A9F4();

    v24 = sub_1BE04A9C4();
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v24 = 0;
  }

  [v21 setBaseURL_];

  v32 = [v20 termsIdentifier];
  [v21 setTermsIdentifier_];

  v33 = [v18 accountIdentifier];
  [v21 setAccountIdentifier_];

  v34 = [objc_opt_self() sharedService];
  if (v34)
  {
    v35 = v34;
    v36 = *a3;
    v37 = *(a3 + 8);
    v52 = *(a3 + 24);
    v53 = v37;
    v38 = swift_allocObject();
    v39 = *(a3 + 16);
    *(v38 + 16) = *a3;
    *(v38 + 32) = v39;
    *(v38 + 48) = *(a3 + 32);
    v50 = sub_1BD95B644;
    v51 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1BD14E1D8;
    v49 = &block_descriptor_32_4;
    v40 = _Block_copy(&aBlock);
    v41 = v21;
    v42 = v36;
    sub_1BD0DE19C(&v53, v45, &qword_1EBD54350);
    sub_1BD0DE19C(&v52, v45, &qword_1EBD54350);

    [v35 accountTermsDataWithRequest:v41 completion:v40];
    _Block_release(v40);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD95A5D8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BE051FA4();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v23 = sub_1BE052D54();
  v14 = *a3;
  v15 = *(a3 + 8);
  v27 = *(a3 + 24);
  v28 = v15;
  v16 = swift_allocObject();
  v17 = *(a3 + 16);
  *(v16 + 24) = *a3;
  *(v16 + 16) = a1;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a3 + 32);
  aBlock[4] = sub_1BD95B64C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_38_3;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = v14;
  sub_1BD0DE19C(&v28, v25, &qword_1EBD54350);
  sub_1BD0DE19C(&v27, v25, &qword_1EBD54350);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD95B5B4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v21 = v23;
  MEMORY[0x1BFB3FDF0](0, v13, v9, v18);
  _Block_release(v18);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v24);
}

uint64_t sub_1BD95A91C(void *a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  if (a1)
  {
    v16 = a1;
    v17 = [v16 termsDataFileName];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 termsData];
      if (v19)
      {
        v31 = v5;
        v32 = v8;
        v20 = v19;
        v33 = sub_1BE04AAC4();
        v34 = v21;

        v22 = NSTemporaryDirectory();
        if (!v22)
        {
          sub_1BE052434();
          v22 = sub_1BE052404();
        }

        v23 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initFileURLWithPath_];

        v24 = [v23 URLByAppendingPathComponent_];
        if (v24)
        {
          sub_1BE04A9F4();

          v25 = v32;
          (*(v32 + 32))(v15, v11, v7);
          v27 = v33;
          v26 = v34;
          sub_1BE04AAE4();
          (*(v25 + 8))(v15, v7);

          v28 = v27;
          v29 = v26;
        }

        else
        {

          v28 = v33;
          v29 = v34;
        }

        sub_1BD1245AC(v28, v29);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v36 = *(a2 + 8);
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD95AD2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD599C8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD599D0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18[-v12];
  v14 = *(v0 + 16);
  v20[0] = *v0;
  v20[1] = v14;
  v21 = *(v0 + 32);
  v19 = v20;
  v15 = 1;
  if ([*&v20[0] isAppleCardPass])
  {
    *v5 = sub_1BE04F504();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD599F8);
    sub_1BD9596BC(v20, &v5[*(v16 + 44)]);
    sub_1BD0DE204(v5, v9, &qword_1EBD599C8);
    v15 = 0;
  }

  (*(v2 + 56))(v9, v15, 1, v1);
  sub_1BD0DE204(v9, v13, &qword_1EBD599D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD599D8);
  sub_1BD0DE4F4(&qword_1EBD599E0, &qword_1EBD599D8);
  sub_1BD95AFAC();
  return sub_1BE051A54();
}

unint64_t sub_1BD95AFAC()
{
  result = qword_1EBD599E8;
  if (!qword_1EBD599E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD599D0);
    sub_1BD0DE4F4(&qword_1EBD599F0, &qword_1EBD599C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD599E8);
  }

  return result;
}

unint64_t sub_1BD95B068()
{
  result = qword_1EBD59A30;
  if (!qword_1EBD59A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59A00);
    sub_1BD95B120();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59A30);
  }

  return result;
}

unint64_t sub_1BD95B120()
{
  result = qword_1EBD59A38;
  if (!qword_1EBD59A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59A28);
    sub_1BD95B1D8();
    sub_1BD0DE4F4(&unk_1EBD4E900, &qword_1EBD3ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59A38);
  }

  return result;
}

unint64_t sub_1BD95B1D8()
{
  result = qword_1EBD59A40;
  if (!qword_1EBD59A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59A20);
    sub_1BD95B290();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59A40);
  }

  return result;
}

unint64_t sub_1BD95B290()
{
  result = qword_1EBD59A48;
  if (!qword_1EBD59A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59A18);
    sub_1BD95B31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59A48);
  }

  return result;
}

unint64_t sub_1BD95B31C()
{
  result = qword_1EBD59A50;
  if (!qword_1EBD59A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59A10);
    sub_1BD0DE4F4(&qword_1EBD59A58, &qword_1EBD58050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59A50);
  }

  return result;
}

uint64_t sub_1BD95B3D4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1BD0D7F18(result, a2, a3 & 1);
    sub_1BE048C84();

    return sub_1BD0D44B8(a5);
  }

  return result;
}

uint64_t sub_1BD95B434(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1BD0DDF10(result, a2, a3 & 1);

    return sub_1BD0D4744(a5);
  }

  return result;
}

void sub_1BD95B494()
{
  sub_1BE04AA64();

  sub_1BD9595B0();
}

void sub_1BD95B4F4()
{
  sub_1BE04AA64();

  sub_1BD959290((v0 + 16));
}

uint64_t sub_1BD95B5B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_19Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_1BD95B658()
{
  result = qword_1EBD59AA0;
  if (!qword_1EBD59AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59AA8);
    sub_1BD0DE4F4(&qword_1EBD599E0, &qword_1EBD599D8);
    sub_1BD95AFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59AA0);
  }

  return result;
}

uint64_t sub_1BD95B734()
{
  sub_1BD95D644();
  sub_1BD226BBC(v0 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_contentURL);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DocumentExporter()
{
  result = qword_1EBD59AC8;
  if (!qword_1EBD59AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD95B800()
{
  sub_1BD3F7300();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD95B8A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = a1;
  v11 = sub_1BE04AA64();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04B3B4();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04AF64();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading;
  if ((*(v6 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading) & 1) == 0)
  {
    v51 = a6;
    sub_1BD95D644();
    v52 = v6;
    *(v6 + v23) = 1;
    v24 = [objc_allocWithZone(MEMORY[0x1E69B84A8]) init];
    v53 = a3;
    v54 = a4;
    v25 = sub_1BE052404();
    [v24 setFileFormat_];

    v26 = [a2 openingDate];
    sub_1BE04AEE4();

    v27 = sub_1BE04AE64();
    v28 = *(v19 + 8);
    v28(v22, v18);
    [v24 setBeginDate_];

    v29 = [a2 closingDate];
    sub_1BE04AEE4();

    v30 = sub_1BE04AE64();
    v28(v22, v18);
    [v24 setEndDate_];

    v31 = v61;
    v32 = [v61 accountIdentifier];
    [v24 setAccountIdentifier_];

    v33 = [v31 savingsDetails];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 productTimeZone];

      if (v35)
      {
        sub_1BE04B394();

        v36 = sub_1BE04B374();
        (*(v55 + 8))(v17, v56);
      }

      else
      {
        v36 = 0;
      }

      v37 = v53;
      v38 = v54;
      v39 = v52;
      [v24 setProductTimeZone_];

      v40 = [v31 accountBaseURL];
      if (v40)
      {
        v41 = v57;
        v42 = v40;
        sub_1BE04A9F4();

        v43 = sub_1BE04A9C4();
        (*(v58 + 8))(v41, v59);
      }

      else
      {
        v43 = 0;
      }

      [v24 setBaseURL_];

      v44 = *(v39 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_webService);
      if (v44)
      {
        v45 = swift_allocObject();
        swift_weakInit();
        v46 = swift_allocObject();
        v47 = v60;
        v46[2] = v45;
        v46[3] = v47;
        v46[4] = v51;
        v46[5] = v37;
        v46[6] = v38;
        aBlock[4] = sub_1BD95D974;
        aBlock[5] = v46;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD14E1D8;
        aBlock[3] = &block_descriptor_218;
        v48 = _Block_copy(aBlock);
        v49 = v24;
        sub_1BE048964();
        sub_1BE048C84();

        [v44 exportTransactionDataWithRequest:v49 completion:v48];

        _Block_release(v48);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD95BDE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v27 = a7;
  v11 = sub_1BE051F54();
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BE051FA4();
  v15 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v28 = sub_1BE052D54();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a1;
  v19[4] = a4;
  v19[5] = a5;
  v20 = v27;
  v19[6] = v26;
  v19[7] = v20;
  aBlock[4] = sub_1BD95D984;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_19_5;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v23 = v28;
  MEMORY[0x1BFB3FDF0](0, v18, v14, v21);
  _Block_release(v21);

  (*(v30 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v29);
}

uint64_t sub_1BD95C0A0(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t))
{
  v109 = a5;
  v110 = a6;
  v113 = sub_1BE04AA64();
  v9 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v10);
  v108 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v96 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v112 = &v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v111 = &v96 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v96 - v36;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading) = 0;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v39 = [a2 exportedTransactionInfo];
  if (!v39)
  {
    goto LABEL_17;
  }

  v40 = v39;
  v41 = [v39 transactionData];
  if (!v41)
  {
LABEL_16:

LABEL_17:
    (*(v9 + 56))(v22, 1, 1, v113);
    a3(v22);
    v26 = v22;
    return sub_1BD226BBC(v26);
  }

  v102 = v15;
  v103 = v37;
  v42 = a4;
  v107 = v40;
  v43 = v41;
  v44 = sub_1BE04AAC4();
  v46 = v45;

  v40 = v107;
  v47 = [v107 transactionDataFilename];
  if (!v47)
  {
    v65 = v44;
    v66 = v46;
LABEL_15:
    sub_1BD1245AC(v65, v66);
    goto LABEL_16;
  }

  v104 = v47;
  v106 = v44;
  v105 = v46;
  v48 = [v40 transactionDataHash];
  if (!v48)
  {

    v65 = v106;
    v66 = v105;
    goto LABEL_15;
  }

  v101 = v42;
  v49 = v48;
  v100 = sub_1BE052434();
  v51 = v50;

  v52 = v105;
  v53 = sub_1BE04AAB4();
  v54 = [v53 SHA256Hash];

  if (!v54)
  {

    sub_1BD1245AC(v106, v52);
    v40 = v107;
    goto LABEL_16;
  }

  v99 = a3;
  v55 = sub_1BE04AAC4();
  v57 = v56;

  v58 = sub_1BE04AAB4();
  sub_1BD1245AC(v55, v57);
  v59 = [v58 hexEncoding];
  if (!v59)
  {

    sub_1BD1245AC(v106, v105);

    v40 = v104;
    a3 = v99;
    goto LABEL_16;
  }

  v60 = v59;
  v98 = v58;
  v61 = sub_1BE052434();
  v63 = v62;

  if (v100 != v61 || v51 != v63)
  {
    v68 = sub_1BE053B84();

    a3 = v99;
    v64 = v103;
    if (v68)
    {
      goto LABEL_22;
    }

    sub_1BD1245AC(v106, v105);
    v40 = v104;
    goto LABEL_16;
  }

  a3 = v99;
  v64 = v103;
LABEL_22:
  swift_beginAccess();
  v69 = swift_weakLoadStrong();
  if (v69)
  {
    v70 = v69;
    swift_beginAccess();
    v71 = swift_weakLoadStrong();
    v100 = v70;
    if (v71)
    {

      v97 = [objc_opt_self() defaultManager];
      v72 = [v97 temporaryDirectory];
      sub_1BE04A9F4();

      v73 = sub_1BE04A9C4();
      v74 = v104;
      v75 = [v73 URLByAppendingPathComponent_];

      if (v75)
      {
        sub_1BE04A9F4();

        v76 = 0;
      }

      else
      {
        v76 = 1;
      }

      v81 = *(v9 + 56);
      v77 = v113;
      v81(v30, v76, 1, v113);
      v82 = v111;
      sub_1BD226B4C(v30, v111);
      if ((*(v9 + 48))(v82, 1, v77) == 1)
      {
        (*(v9 + 8))(v112, v77);

        sub_1BD226BBC(v82);
        v80 = v103;
        v81(v103, 1, 1, v77);
      }

      else
      {
        v104 = v81;
        v83 = v108;
        sub_1BE04A9D4();
        v110 = *(v9 + 8);
        v110(v82, v113);
        v111 = *(v9 + 32);
        (v111)(v102, v83, v113);
        sub_1BE04AA34();
        v84 = sub_1BE052404();

        v85 = sub_1BE04AAB4();
        v86 = v97;
        v87 = [v97 createFileAtPath:v84 contents:v85 attributes:0];

        v77 = v113;
        v88 = v110;
        v110(v112, v77);
        if (v87)
        {
          v80 = v103;
          (v111)(v103, v102, v77);
          v89 = v80;
          v90 = 0;
        }

        else
        {
          v88(v102, v77);
          v80 = v103;
          v89 = v103;
          v90 = 1;
        }

        v104(v89, v90, 1, v77);
      }

      a3 = v99;
    }

    else
    {

      v77 = v113;
      (*(v9 + 56))(v64, 1, 1, v113);
      v80 = v64;
    }

    v78 = v105;
    v79 = v106;
    v91 = OBJC_IVAR____TtC9PassKitUI16DocumentExporter_contentURL;
    v92 = v100;
    swift_beginAccess();
    sub_1BD4E30B0(v80, v92 + v91);
    swift_endAccess();
  }

  else
  {

    v77 = v113;
    v78 = v105;
    v79 = v106;
  }

  swift_beginAccess();
  v93 = swift_weakLoadStrong();
  if (v93)
  {
    v94 = OBJC_IVAR____TtC9PassKitUI16DocumentExporter_contentURL;
    v95 = v93;
    swift_beginAccess();
    sub_1BD38F438(v95 + v94, v26);
  }

  else
  {
    (*(v9 + 56))(v26, 1, 1, v77);
  }

  a3(v26);

  sub_1BD1245AC(v79, v78);
  return sub_1BD226BBC(v26);
}

uint64_t sub_1BD95CA70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE051F54();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v17 = sub_1BE052D54();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a1;
  v18[4] = a4;
  v18[5] = a5;
  aBlock[4] = sub_1BD95D994;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_25_3;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  sub_1BE048964();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v16, v12, v19);
  _Block_release(v19);

  (*(v23 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v22);
}

uint64_t sub_1BD95CD18(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v109 = a4;
  v108 = sub_1BE04AA64();
  v7 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v8);
  v105 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v107 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v94 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v106 = (&v94 - v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v94 - v34;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading) = 0;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v37 = [a2 documentPDFData];
  if (!v37)
  {
    goto LABEL_16;
  }

  v38 = v37;
  v101 = v13;
  v102 = v35;
  v39 = sub_1BE04AAC4();
  v41 = v40;

  v42 = [a2 documentDataFilename];
  if (!v42)
  {
    goto LABEL_14;
  }

  v43 = v42;
  v103 = v39;
  v104 = v41;
  v44 = [a2 documentDataHash];
  if (!v44)
  {

    v62 = v103;
    v63 = v104;
LABEL_15:
    sub_1BD1245AC(v62, v63);
    goto LABEL_16;
  }

  v99 = a1;
  v100 = v43;
  v45 = v44;
  v98 = sub_1BE052434();
  v47 = v46;

  v39 = v103;
  v41 = v104;
  v48 = sub_1BE04AAB4();
  v49 = [v48 SHA256Hash];

  if (!v49)
  {

LABEL_14:
    v62 = v39;
    v63 = v41;
    goto LABEL_15;
  }

  v50 = v47;
  v97 = a3;
  v51 = sub_1BE04AAC4();
  v53 = v52;

  v54 = sub_1BE04AAB4();
  sub_1BD1245AC(v51, v53);
  v55 = [v54 hexEncoding];
  if (!v55)
  {
    sub_1BD1245AC(v103, v104);

    a3 = v97;
    goto LABEL_16;
  }

  v56 = v55;
  v57 = sub_1BE052434();
  v59 = v58;

  v60 = v100;
  if (v98 != v57 || v50 != v59)
  {
    v65 = sub_1BE053B84();

    a3 = v97;
    v61 = v102;
    if (v65)
    {
      goto LABEL_20;
    }

    sub_1BD1245AC(v103, v104);

LABEL_16:
    (*(v7 + 56))(v20, 1, 1, v108);
    a3(v20);
    v24 = v20;
    return sub_1BD226BBC(v24);
  }

  a3 = v97;
  v61 = v102;
LABEL_20:
  swift_beginAccess();
  v66 = swift_weakLoadStrong();
  v67 = &qword_1EBD59000;
  v96 = v54;
  if (v66)
  {
    v68 = v66;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v99 = [objc_opt_self() defaultManager];
      v69 = [v99 temporaryDirectory];
      sub_1BE04A9F4();

      v70 = sub_1BE04A9C4();
      v71 = v100;
      v72 = [v70 URLByAppendingPathComponent_];

      if (v72)
      {
        sub_1BE04A9F4();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      v75 = v106;
      v76 = *(v7 + 56);
      v77 = v108;
      v76(v28, v73, 1, v108);
      v78 = v28;
      v74 = v77;
      sub_1BD226B4C(v78, v75);
      if ((*(v7 + 48))(v75, 1, v77) == 1)
      {

        (*(v7 + 8))(v107, v77);
        sub_1BD226BBC(v75);
        v76(v61, 1, 1, v77);
      }

      else
      {
        v106 = v76;
        v79 = v75;
        v80 = v105;
        sub_1BE04A9D4();
        v100 = *(v7 + 8);
        (v100)(v79, v74);
        v81 = *(v7 + 32);
        v98 = v7 + 32;
        v95 = v81;
        v81(v101, v80, v74);
        sub_1BE04AA34();
        v82 = sub_1BE052404();

        v83 = sub_1BE04AAB4();
        v84 = v99;
        LODWORD(v105) = [v99 createFileAtPath:v82 contents:v83 attributes:0];

        v85 = v100;
        (v100)(v107, v74);
        if (v105)
        {
          v61 = v102;
          v95(v102, v101, v74);
          v86 = v61;
          v87 = 0;
        }

        else
        {
          v85(v101, v74);
          v61 = v102;
          v86 = v102;
          v87 = 1;
        }

        v106(v86, v87, 1, v74);
      }

      a3 = v97;
      v67 = &qword_1EBD59000;
    }

    else
    {

      v74 = v108;
      (*(v7 + 56))(v61, 1, 1, v108);
    }

    v88 = v67[342];
    swift_beginAccess();
    sub_1BD4E30B0(v61, v68 + v88);
    swift_endAccess();
  }

  else
  {

    v74 = v108;
  }

  swift_beginAccess();
  v89 = swift_weakLoadStrong();
  if (v89)
  {
    v90 = v67[342];
    v91 = v89;
    swift_beginAccess();
    sub_1BD38F438(v91 + v90, v24);
  }

  else
  {
    (*(v7 + 56))(v24, 1, 1, v74);
  }

  v92 = v104;
  v93 = v103;
  a3(v24);
  sub_1BD1245AC(v93, v92);

  return sub_1BD226BBC(v24);
}

void sub_1BD95D644()
{
  v1 = v0;
  v24[6] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24[-1] - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9PassKitUI16DocumentExporter_contentURL;
  swift_beginAccess();
  sub_1BD38F438(v1 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD226BBC(v9);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v16 = [objc_opt_self() defaultManager];
    sub_1BE04AA34();
    v17 = sub_1BE052404();

    v24[0] = 0;
    v18 = [v16 removeItemAtPath:v17 error:v24];

    if (v18)
    {
      v19 = *(v11 + 8);
      v20 = v24[0];
      v19(v14, v10);
      (*(v11 + 56))(v5, 1, 1, v10);
      swift_beginAccess();
      sub_1BD4E30B0(v5, v1 + v15);
      swift_endAccess();
    }

    else
    {
      v21 = v24[0];
      v22 = sub_1BE04A854();

      swift_willThrow();
      (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t sub_1BD95D934@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DocumentExporter();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

char *RemoteNetworkPaymentLoadingViewInterface.__allocating_init(configuration:host:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1BD9607AC(a1, a2);

  swift_unknownObjectRelease();
  return v6;
}

char *RemoteNetworkPaymentLoadingViewInterface.init(configuration:host:)(void *a1, uint64_t a2)
{
  v3 = sub_1BD9607AC(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1BD95DAEC()
{
  v1 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 208);
  v2 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 176);
  v49 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 192);
  v50 = v1;
  v3 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 208);
  v51 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 224);
  v4 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 144);
  v5 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 112);
  v45 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 128);
  v46 = v4;
  v6 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 144);
  v7 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 176);
  v47 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 160);
  v48 = v7;
  v8 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 80);
  v9 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 48);
  v41 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 64);
  v42 = v8;
  v10 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 80);
  v11 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 112);
  v43 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 96);
  v44 = v11;
  v12 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 16);
  v38[0] = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView);
  v38[1] = v12;
  v13 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 48);
  v15 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView);
  v14 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 16);
  v39 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 32);
  v40 = v13;
  v34 = v49;
  v35 = v3;
  v36 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 224);
  v30 = v45;
  v31 = v6;
  v32 = v47;
  v33 = v2;
  v26 = v41;
  v27 = v10;
  v28 = v43;
  v29 = v5;
  v22 = v15;
  v23 = v14;
  v52 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 240);
  v37 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView + 240);
  v24 = v39;
  v25 = v9;
  sub_1BD6C82A0(v38, v21);
  sub_1BD960C74();
  v16 = sub_1BE0518D4();
  v17 = *(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_hostingControllerContext);
  sub_1BE04CDA4();
  sub_1BD960E30(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  v18 = sub_1BE04D804();
  *&v22 = v16;
  *(&v22 + 1) = v18;
  *&v23 = v17;
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59B00));
  swift_retain_n();
  return sub_1BE04CCC4();
}

uint64_t sub_1BD95DC94()
{
  v1 = sub_1BE051F54();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BE051FA4();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE051FC4();
  v34 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v33 = &v32 - v11;
  v32 = sub_1BE04D214();
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = PKRemoteNetworkPaymentLoadingViewDelay();
  if (v16)
  {
    aBlock = 0;
    LOBYTE(v43) = 1;
    v17 = v16;
    MEMORY[0x1BFB3FA90](v16, &aBlock);

    if (v43)
    {
      v18 = 3.0;
    }

    else
    {
      v18 = *&aBlock;
    }
  }

  else
  {
    v18 = 3.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  if (v43 != 1 || aBlock)
  {
    v19 = OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_reportedFailure;
    if ((*(v0 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_reportedFailure) & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8B4();

      if ((v43 & 1) == 0)
      {
        v20 = aBlock;
        LOBYTE(aBlock) = 0;
        sub_1BD6BB890(&aBlock, v20, 0);
        *(v0 + v19) = 1;
      }
    }
  }

  else
  {
    aBlock = 1;
    sub_1BD6BB890(&aBlock, 0, 1);
  }

  sub_1BE04D174();
  v21 = sub_1BE04D204();
  v22 = sub_1BE052C54();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v18;
    _os_log_impl(&dword_1BD026000, v21, v22, "LoadingViewInterface: Delaying request promise loading view by %fs", v23, 0xCu);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  (*(v12 + 8))(v15, v32);
  sub_1BD14BE3C();
  v24 = sub_1BE052D54();
  sub_1BE051FB4();
  v25 = v33;
  sub_1BE051FF4();
  v34 = *(v34 + 8);
  (v34)(v8, v41);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = sub_1BD960CC8;
  v47 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1BD126964;
  v45 = &block_descriptor_219;
  v27 = _Block_copy(&aBlock);

  v28 = v35;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD960E30(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  v29 = v37;
  v30 = v40;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v25, v28, v29, v27);
  _Block_release(v27);

  (*(v39 + 8))(v29, v30);
  (*(v36 + 8))(v28, v38);
  return (v34)(v25, v41);
}

uint64_t sub_1BD95E2F4()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v26 = v6;
    v27 = v5;
    v28 = v1;
    sub_1BE04D174();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "LoadingViewInterface: Queuing request promise loading", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v20 = *&v16[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingViewSerialQueue];
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    aBlock[4] = sub_1BD960E20;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_25_4;
    v22 = _Block_copy(aBlock);
    v23 = v20;
    v24 = v16;
    sub_1BE051F74();
    v29 = MEMORY[0x1E69E7CC0];
    sub_1BD960E30(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v9, v4, v22);
    _Block_release(v22);

    (*(v28 + 8))(v4, v0);
    (*(v26 + 8))(v9, v27);
  }

  return result;
}

id sub_1BD95E6F8(void *a1)
{
  v2 = sub_1BE051F54();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v35 - v17;
  sub_1BE04D174();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C54();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1BD026000, v19, v20, "LoadingViewInterface: Processing request promise loading", v21, 2u);
    MEMORY[0x1BFB45F20](v21, -1, -1);
  }

  v22 = *(v11 + 8);
  v22(v18, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  if (v40 == 1 && aBlock == 0.0)
  {
    sub_1BD14BE3C();
    v23 = sub_1BE052D54();
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    v43 = sub_1BD960E28;
    v44 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1BD126964;
    v42 = &block_descriptor_31_3;
    v25 = _Block_copy(&aBlock);
    v26 = a1;

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD960E30(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
    v27 = v38;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v9, v5, v25);
    _Block_release(v25);

    (*(v37 + 8))(v5, v27);
    (*(v35 + 8))(v9, v36);
    v28 = PKRemoteNetworkPaymentLoadingViewHold();
    if (v28)
    {
      aBlock = 0.0;
      LOBYTE(v40) = 1;
      v29 = v28;
      MEMORY[0x1BFB3FA90](v28, &aBlock);

      if (v40)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = aBlock;
      }
    }

    else
    {
      v30 = 1.0;
    }

    return [objc_opt_self() sleepForTimeInterval_];
  }

  else
  {
    sub_1BE04D174();
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C54();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1BD026000, v31, v32, "LoadingViewInterface: State already progressed, won't enter loading state", v33, 2u);
      MEMORY[0x1BFB45F20](v33, -1, -1);
    }

    return (v22)(v14, v10);
  }
}

void sub_1BD95EC54()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, v6, "LoadingViewInterface: Setting request promise loading", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 1;
  v11 = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  v9 = 2;
  sub_1BD6BB890(&v9, 0, 1);
}

uint64_t sub_1BD95EE4C(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v5 = sub_1BE051F54();
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v18 = sub_1BE04D204();
  v19 = sub_1BE052C54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = v12;
    v21 = v8;
    v22 = a1;
    v23 = v5;
    v24 = a3;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_1BD026000, v18, v19, "LoadingViewInterface: Queuing request promise fulfillment", v20, 2u);
    v26 = v25;
    a3 = v24;
    v5 = v23;
    a1 = v22;
    v8 = v21;
    v12 = v36;
    MEMORY[0x1BFB45F20](v26, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v27 = v38;
  v28 = *&v38[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingViewSerialQueue];
  v29 = swift_allocObject();
  v29[2] = v27;
  v29[3] = a1;
  v29[4] = v37;
  v29[5] = a3;
  aBlock[4] = sub_1BD960E88;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_49_5;
  v30 = _Block_copy(aBlock);
  v31 = v28;
  v32 = v27;
  v33 = a1;
  sub_1BE048964();
  sub_1BE051F74();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1BD960E30(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v30);
  _Block_release(v30);

  (*(v41 + 8))(v8, v5);
  (*(v39 + 8))(v12, v40);
}

uint64_t sub_1BD95F260(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a4;
  v30 = a3;
  v5 = sub_1BE051F54();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v18 = sub_1BE04D204();
  v19 = sub_1BE052C54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1BD026000, v18, v19, "LoadingViewInterface: Processing request promise fulfillment", v20, 2u);
    MEMORY[0x1BFB45F20](v20, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  if (v37 != 1 || aBlock <= 2)
  {
    sub_1BD14BE3C();
    v22 = sub_1BE052D54();
    v23 = swift_allocObject();
    v24 = v30;
    v25 = v31;
    v23[2] = a1;
    v23[3] = v25;
    v26 = v32;
    v23[4] = v24;
    v23[5] = v26;
    v40 = sub_1BD960E94;
    v41 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1BD126964;
    v39 = &block_descriptor_55_3;
    v27 = _Block_copy(&aBlock);
    v28 = a1;
    v29 = v25;
    sub_1BE048964();

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD960E30(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v12, v8, v27);
    _Block_release(v27);

    (*(v35 + 8))(v8, v5);
    return (*(v33 + 8))(v12, v34);
  }

  return result;
}

uint64_t sub_1BD95F6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BD026000, v13, v14, "LoadingViewInterface: Setting request promise fulfillment", v15, 2u);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 2;
  LOBYTE(v21) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  LOBYTE(aBlock) = 3;
  sub_1BD6BB890(&aBlock, 0, 1);
  v16 = *(a1 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_host);
  result = [v16 respondsToSelector_];
  if (result)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v24 = sub_1BD960EA0;
    v25 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1BD3F08C0;
    v23 = &block_descriptor_61_3;
    v19 = _Block_copy(&aBlock);
    sub_1BE048964();
    sub_1BE048964();

    [v16 authorizationDidFulfillPaymentRequest:a2 completion:v19];
    _Block_release(v19);
  }

  return result;
}

uint64_t sub_1BD95F974(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE051F54();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04D214();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v11;
    v20 = v7;
    v21 = v2;
    v22 = v4;
    v23 = a1;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1BD026000, v17, v18, "LoadingViewInterface: Queuing request promise rejection", v19, 2u);
    v25 = v24;
    a1 = v23;
    v4 = v22;
    v2 = v21;
    v7 = v20;
    v11 = v33;
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v26 = *&v2[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingViewSerialQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = a1;
  aBlock[4] = sub_1BD960E78;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_37_3;
  v28 = _Block_copy(aBlock);
  v29 = v26;
  v30 = v2;
  sub_1BE051F74();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1BD960E30(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v28);
  _Block_release(v28);

  (*(v36 + 8))(v7, v4);
  (*(v34 + 8))(v11, v35);
}

uint64_t sub_1BD95FD6C(void *a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_1BE051F54();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C54();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BD026000, v16, v17, "LoadingViewInterface: Processing request promise rejection", v18, 2u);
    MEMORY[0x1BFB45F20](v18, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  if (v30 != 1 || aBlock <= 2)
  {
    sub_1BD14BE3C();
    v20 = sub_1BE052D54();
    v21 = swift_allocObject();
    v22 = v25;
    *(v21 + 16) = a1;
    *(v21 + 24) = v22;
    v33 = sub_1BD960E80;
    v34 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1BD126964;
    v32 = &block_descriptor_43_5;
    v23 = _Block_copy(&aBlock);
    v24 = a1;

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD960E30(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v10, v6, v23);
    _Block_release(v23);

    (*(v28 + 8))(v6, v3);
    return (*(v26 + 8))(v10, v27);
  }

  return result;
}

void sub_1BD9601B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v9, v10, "LoadingViewInterface: Setting request promise rejection", v11, 2u);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a2;
  v16 = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  v12 = OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_reportedFailure;
  if ((*(a1 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_reportedFailure) & 1) == 0)
  {
    v14 = 4;
    sub_1BD6BB890(&v14, a2, 0);
    *(a1 + v12) = 1;
  }
}

id RemoteNetworkPaymentLoadingViewInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteNetworkPaymentLoadingViewInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteNetworkPaymentLoadingViewInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD96052C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1BD9605B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD960638()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "LoadingViewInterface: Rejecting request to configuration", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_host);
  result = [v10 respondsToSelector_];
  if (result)
  {
    return [v10 authorizationDidRejectPaymentRequestPromise];
  }

  return result;
}

char *sub_1BD9607AC(void *a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v35 = sub_1BE052D44();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v34 = OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingViewSerialQueue;
  v10 = sub_1BD14BE3C();
  v33[1] = "horizationServiceProtocol>,N,R";
  v33[2] = v10;
  sub_1BE051F74();
  *&v42[0] = MEMORY[0x1E69E7CC0];
  sub_1BD960E30(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
  sub_1BD126024(&unk_1EBD35F10, &unk_1EBD3D420);
  sub_1BE053664();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v35);
  v11 = sub_1BE052D74();
  v13 = v36;
  v12 = v37;
  *&v36[v34] = v11;
  v13[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_reportedFailure] = 0;
  *&v13[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_configuration] = v12;
  *&v13[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_host] = v38;
  sub_1BE04CDA4();
  swift_allocObject();
  v14 = v12;
  swift_unknownObjectRetain();
  *&v13[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_hostingControllerContext] = sub_1BE04CD94();
  type metadata accessor for RemoteNetworkPaymentLoadingViewModel();
  v15 = swift_allocObject();
  *&v42[0] = 0;
  BYTE8(v42[0]) = 1;
  sub_1BE04D874();
  *(v15 + OBJC_IVAR____TtC9PassKitUI36RemoteNetworkPaymentLoadingViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingViewModel] = v15;
  sub_1BD960E30(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  sub_1BE048964();
  v16 = sub_1BE04EEC4();
  v18 = v17;
  sub_1BD6C80BC(v41);
  sub_1BD6C8AC0(v16, v18, v41, v42);
  v19 = &v13[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingView];
  v20 = v42[13];
  *(v19 + 12) = v42[12];
  *(v19 + 13) = v20;
  *(v19 + 14) = v42[14];
  *(v19 + 30) = v43;
  v21 = v42[9];
  *(v19 + 8) = v42[8];
  *(v19 + 9) = v21;
  v22 = v42[11];
  *(v19 + 10) = v42[10];
  *(v19 + 11) = v22;
  v23 = v42[5];
  *(v19 + 4) = v42[4];
  *(v19 + 5) = v23;
  v24 = v42[7];
  *(v19 + 6) = v42[6];
  *(v19 + 7) = v24;
  v25 = v42[1];
  *v19 = v42[0];
  *(v19 + 1) = v25;
  v26 = v42[3];
  *(v19 + 2) = v42[2];
  *(v19 + 3) = v26;
  v27 = type metadata accessor for RemoteNetworkPaymentLoadingViewService();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC9PassKitUI38RemoteNetworkPaymentLoadingViewService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v28[OBJC_IVAR____TtC9PassKitUI38RemoteNetworkPaymentLoadingViewService_configuration] = v14;
  v40.receiver = v28;
  v40.super_class = v27;
  v29 = v14;
  *&v13[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_internalService] = objc_msgSendSuper2(&v40, sel_init);
  v30 = type metadata accessor for RemoteNetworkPaymentLoadingViewInterface();
  v39.receiver = v13;
  v39.super_class = v30;
  v31 = objc_msgSendSuper2(&v39, sel_init);
  *(*&v31[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_loadingViewModel] + OBJC_IVAR____TtC9PassKitUI36RemoteNetworkPaymentLoadingViewModel_delegate + 8) = &off_1F3BC72F0;
  swift_unknownObjectWeakAssign();
  *(*&v31[OBJC_IVAR____PKRemoteNetworkPaymentLoadingViewInterface_internalService] + OBJC_IVAR____TtC9PassKitUI38RemoteNetworkPaymentLoadingViewService_delegate + 8) = &off_1F3BC72D8;
  swift_unknownObjectWeakAssign();
  return v31;
}

unint64_t sub_1BD960C74()
{
  result = qword_1EBD59AE8;
  if (!qword_1EBD59AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59AE8);
  }

  return result;
}

uint64_t sub_1BD960E30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD960F28(uint64_t a1)
{
  v2 = sub_1BE053674();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1BD965F9C(v2, *(a1 + 36), 0, a1);
  sub_1BE048C84();
  return v4;
}

void *sub_1BD960FA4(uint64_t a1)
{
  v2 = sub_1BE053674();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1BD965FF0(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_1BD961028(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1BE052624();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD961084(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1BE0536A4();
    v7 = v6;
    v8 = sub_1BE053764();
    v10 = v9;
    v11 = MEMORY[0x1BFB40760](v5, v7, v8, v9);
    sub_1BD20DE9C(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1BD20DE9C(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_1BE053674();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1BD965D18(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_1BD20DE9C(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_1BD9612E8()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v69 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_product);
  if (!v15)
  {
    sub_1BE04D0E4();
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BD026000, v19, v20, "PaymentSetupIdentityFlowItem failed to configure region, no product associated", v21, 2u);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v71 = v15;
  v16 = [v71 clientInfo];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE052244();
  }

  else
  {
    v18 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  }

  sub_1BE04D0E4();
  sub_1BE048C84();
  v22 = sub_1BE04D204();
  v23 = sub_1BE052C54();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v70 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v69 = v1;
    v27 = v10;
    v28 = v3;
    v29 = v26;
    v74[0] = v26;
    *v25 = 136315138;
    v30 = sub_1BE052254();
    v32 = sub_1BD123690(v30, v31, v74);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_1BD026000, v22, v23, "Setting up proofing flow manager with info %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v33 = v29;
    v3 = v28;
    v10 = v27;
    v1 = v69;
    MEMORY[0x1BFB45F20](v33, -1, -1);
    v34 = v25;
    v2 = v70;
    MEMORY[0x1BFB45F20](v34, -1, -1);
  }

  v35 = *(v3 + 8);
  v35(v14, v2);
  v72 = sub_1BE052434();
  v73 = v36;
  sub_1BE0537C4();
  if (!*(v18 + 16))
  {
    goto LABEL_17;
  }

  v37 = sub_1BD149040(v74);
  if ((v38 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1BD038CD0(*(v18 + 56) + 32 * v37, v75);
  sub_1BD149CE8(v74);
  if (swift_dynamicCast())
  {
    v39 = v72;
    v40 = v73;
    v72 = sub_1BE052434();
    v73 = v41;
    sub_1BE0537C4();
    if (*(v18 + 16))
    {
      v42 = sub_1BD149040(v74);
      if (v43)
      {
        sub_1BD038CD0(*(v18 + 56) + 32 * v42, v75);
        sub_1BD149CE8(v74);

        if (swift_dynamicCast())
        {

          v44 = v72;
          v45 = v73;
          v46 = (v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region);
          v47 = *(v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region);
          v48 = *(v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region + 8);
          *v46 = v39;
          v46[1] = v40;
          v46[2] = v44;
          v46[3] = v45;
LABEL_23:
          sub_1BD27273C(v47, v48);
          return 1;
        }

        goto LABEL_28;
      }
    }

LABEL_17:

    sub_1BD149CE8(v74);
    goto LABEL_18;
  }

LABEL_28:

LABEL_18:
  v49 = *(v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_precursorPass);
  if (v49)
  {
    v50 = *(v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_precursorPass);
    v51 = v50;
    goto LABEL_20;
  }

  v64 = *(v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_credential);
  if (v64)
  {
    v65 = [v64 underlyingPaymentPass];
    v51 = v65;
    if (v65)
    {
      v50 = v65;
      v49 = 0;
LABEL_20:
      v52 = v49;
      v53 = [v50 issuerAdministrativeAreaCode];

      if (v53)
      {
        v54 = sub_1BE052434();
        v56 = v55;

        v57 = [v51 issuerCountryCode];
        if (v57)
        {
          v58 = v57;
          v59 = sub_1BE052434();
          v61 = v60;

          v62 = (v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region);
          v47 = *(v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region);
          v48 = *(v1 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region + 8);
          *v62 = v54;
          v62[1] = v56;
          v62[2] = v59;
          v62[3] = v61;
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v51 = 0;
  }

  sub_1BE04D0E4();
  v66 = sub_1BE04D204();
  v67 = sub_1BE052C54();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_1BD026000, v66, v67, "Failed to find region for proofing", v68, 2u);
    MEMORY[0x1BFB45F20](v68, -1, -1);
  }

  v35(v10, v2);
  return 0;
}

void sub_1BD961938(void (*a1)(void, __n128), uint64_t a2)
{
  v181 = a2;
  v184 = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04AA64();
  v177 = *(v4 - 8);
  v178 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v168 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v171 = &v157 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v167 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v169 = &v157 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v170 = &v157 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v179 = &v157 - v21;
  v22 = sub_1BE04D214();
  v172 = *(v22 - 8);
  v173 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v166 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v174 = &v157 - v27;
  v28 = sub_1BE04B654();
  v175 = *(v28 - 8);
  v176 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v180 = &v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE04B8D4();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v157 - v38;
  v40 = sub_1BE04B944();
  v41 = *(v40 - 8);
  v43.n128_f64[0] = MEMORY[0x1EEE9AC00](v40, v42);
  v45 = &v157 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = (v2 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region);
  v47 = *(v2 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region + 8);
  if (!v47 || (v48 = v2, (v49 = *(v2 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_product)) == 0))
  {
    a1(0, v43);
    return;
  }

  v160 = a1;
  v50 = v46[2];
  v51 = v46[3];
  v52 = *(v2 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_context);
  v162 = *v46;
  v165 = v47;
  v161 = v50;
  v164 = v51;
  v53 = v48;
  sub_1BD2726F8(v162, v47);
  v159 = v49;
  v54 = v45;
  v158 = v52;
  sub_1BE04BB94();
  sub_1BE04B924();
  v157 = *(v41 + 8);
  v157(v45, v40);
  (*(v32 + 104))(v35, *MEMORY[0x1E69B7F80], v31);
  LOBYTE(v52) = sub_1BE04B8C4();
  v55 = *(v32 + 8);
  v55(v35, v31);
  v55(v39, v31);
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  v163 = v53;
  if ((v52 & 1) == 0)
  {
    v75 = 0;
    v77 = 0;
    v78 = 1;
    v66 = v181;
    v67 = v160;
    goto LABEL_19;
  }

  v57 = *(v53 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_credential);
  if (!v57)
  {
    goto LABEL_24;
  }

  v58 = [v57 localPassCredential];
  if (!v58)
  {
    goto LABEL_24;
  }

  v59 = v58;
  sub_1BE04BB04();
  v60 = sub_1BE04B934();
  v157(v54, v40);
  v61 = [v60 secureElementIdentifiers];
  swift_unknownObjectRelease();
  v62 = [v59 paymentPass];
  if (!v62)
  {
LABEL_63:

    __break(1u);
    goto LABEL_64;
  }

  v63 = v62;
  v64 = [v62 paymentApplicationsForSecureElementIdentifiers_];

  if (!v64)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_1BD0E5E8C(0, &qword_1EBD43BA0);
  v65 = sub_1BE052744();

  if (v65 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_10;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

LABEL_10:
  if ((v65 & 0xC000000000000001) != 0)
  {
    v68 = MEMORY[0x1BFB40900](0, v65);
    v66 = v181;
    v67 = v160;
  }

  else
  {
    v66 = v181;
    v67 = v160;
    if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v68 = *(v65 + 32);
  }

  v69 = v59;

  v70 = [v68 subcredentials];

  if (!v70)
  {
    goto LABEL_66;
  }

  sub_1BD0E5E8C(0, &qword_1EBD398B8);
  sub_1BD60AC0C();
  v71 = sub_1BE052A34();

  v72 = sub_1BD961084(v71, &qword_1EBD398B8);

  if (v72)
  {
    v73 = [v72 identifier];
    if (v73)
    {
      v74 = v73;
      v75 = sub_1BE052434();
      v77 = v76;

      v78 = 2;
LABEL_19:
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v80 = swift_allocObject();
      v80[2] = v79;
      v80[3] = v56;
      v81 = v159;
      v82 = v162;
      v80[4] = v159;
      v80[5] = v82;
      v83 = v161;
      v80[6] = v165;
      v80[7] = v83;
      v80[8] = v164;
      v80[9] = v78;
      v80[10] = v75;
      v80[11] = v77;
      v80[12] = v67;
      v80[13] = v66;
      v84 = v81;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BD964684(sub_1BD965CC0, v80);

      return;
    }
  }

  else
  {
  }

LABEL_24:
  sub_1BE04BB04();
  if (*(v163 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_product))
  {
    [*(v163 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_product) hasPaymentOptionMatching_];
  }

  v85 = v180;
  objc_allocWithZone(sub_1BE04B624());
  sub_1BE048C84();
  sub_1BE048C84();
  v86 = sub_1BE04B614();
  sub_1BE04B5E4();
  v87 = sub_1BE04B644();
  v158 = v86;
  if (v87)
  {
    v88 = v87;
    v89 = v174;
    sub_1BE04D0E4();
    v90 = sub_1BE04D204();
    v91 = sub_1BE052C54();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v160;
    if (v92)
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1BD026000, v90, v91, "Sending user to Wallet to complete precursor action", v94, 2u);
      v95 = v94;
      v89 = v174;
      MEMORY[0x1BFB45F20](v95, -1, -1);
    }

    (*(v172 + 8))(v89, v173);
    v182 = sub_1BE052434();
    v183 = v96;
    v61 = &v182;
    MEMORY[0x1BFB3F610](3092282, 0xE300000000000000);
    v97 = sub_1BE052434();
    MEMORY[0x1BFB3F610](v97);

    MEMORY[0x1BFB3F610](47, 0xE100000000000000);
    v98 = [v88 uniqueID];
    if (v98)
    {
      v99 = v98;
      v100 = sub_1BE052434();
      v102 = v101;

      MEMORY[0x1BFB3F610](v100, v102);

      MEMORY[0x1BFB3F610](47, 0xE100000000000000);
      v103 = sub_1BE052434();
      MEMORY[0x1BFB3F610](v103);

      v104 = v179;
      sub_1BE04AA54();

      v105 = v170;
      sub_1BD38F438(v104, v170);
      v107 = v177;
      v106 = v178;
      if ((*(v177 + 48))(v105, 1, v178) == 1)
      {

        sub_1BD0DE53C(v105, &unk_1EBD3CF70);
        v109 = v175;
        v108 = v176;
LABEL_48:
        v93(0);

        sub_1BD0DE53C(v179, &unk_1EBD3CF70);
        (*(v109 + 8))(v85, v108);
LABEL_49:

        return;
      }

      (*(v107 + 32))(v171, v105, v106);
      v119 = [objc_opt_self() defaultWorkspace];
      if (v119)
      {
        v120 = v119;

        v121 = sub_1BE04A9C4();
        v182 = 0;
        v122 = [v120 openURL:v121 configuration:0 error:&v182];

        if (v122)
        {
          v123 = v182;
        }

        else
        {
          v144 = v182;
          v145 = sub_1BE04A854();

          swift_willThrow();
        }

        (*(v177 + 8))(v171, v178);
        v109 = v175;
        v108 = v176;
        goto LABEL_48;
      }

      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_63;
  }

  v110 = sub_1BE04B634();
  v66 = v181;
  v67 = v160;
  if (v110)
  {
    v111 = v110;
    v112 = [v110 devicePrimaryPaymentApplication];
    if (v112)
    {
      v113 = v112;
      v75 = [v112 subcredentials];

      if (v75)
      {
        sub_1BD0E5E8C(0, &qword_1EBD398B8);
        sub_1BD60AC0C();
        v114 = sub_1BE052A34();

        v115 = sub_1BD961084(v114, &qword_1EBD398B8);

        if (v115 && (v116 = [v115 identifier]) != 0)
        {
          v117 = v116;
          v75 = sub_1BE052434();
          v77 = v118;
        }

        else
        {
          v75 = 0;
          v77 = 0;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v75 = 0;
    }

    v77 = 0;
    v115 = 0;
LABEL_56:
    v151 = [v111 primaryAccountIdentifier];
    v152 = sub_1BE052434();
    v154 = v153;

    (*(v175 + 8))(v180, v176);
    *(v56 + 16) = v152;
    *(v56 + 24) = v154;

    v78 = 2;
    goto LABEL_19;
  }

  v124 = v166;
  sub_1BE04D0E4();
  v125 = sub_1BE04D204();
  v126 = sub_1BE052C54();
  v127 = os_log_type_enabled(v125, v126);
  v128 = v159;
  if (v127)
  {
    v129 = swift_slowAlloc();
    *v129 = 0;
    _os_log_impl(&dword_1BD026000, v125, v126, "Sending user to Wallet to complete combo proofing", v129, 2u);
    MEMORY[0x1BFB45F20](v129, -1, -1);
  }

  (*(v172 + 8))(v124, v173);
  v130 = [v128 productIdentifier];
  v132 = v168;
  v131 = v169;
  if (!v130)
  {
    goto LABEL_67;
  }

  v133 = v130;
  v134 = sub_1BE052434();
  v136 = v135;

  v182 = sub_1BE052434();
  v183 = v137;
  MEMORY[0x1BFB3F610](3092282, 0xE300000000000000);
  v138 = sub_1BE052434();
  MEMORY[0x1BFB3F610](v138);

  MEMORY[0x1BFB3F610](47, 0xE100000000000000);
  MEMORY[0x1BFB3F610](v134, v136);
  sub_1BE04AA54();

  v139 = v167;
  sub_1BD38F438(v131, v167);
  v141 = v177;
  v140 = v178;
  if ((*(v177 + 48))(v139, 1, v178) == 1)
  {

    sub_1BD0DE53C(v139, &unk_1EBD3CF70);
    v143 = v175;
    v142 = v176;
LABEL_59:
    v67(0);

    sub_1BD0DE53C(v131, &unk_1EBD3CF70);
    (*(v143 + 8))(v180, v142);
    goto LABEL_49;
  }

  (*(v141 + 32))(v132, v139, v140);
  v146 = [objc_opt_self() defaultWorkspace];
  if (v146)
  {
    v147 = v146;

    v148 = sub_1BE04A9C4();
    v182 = 0;
    v149 = [v147 openURL:v148 configuration:0 error:&v182];

    if (v149)
    {
      v150 = v182;
    }

    else
    {
      v155 = v182;
      v156 = sub_1BE04A854();

      swift_willThrow();
    }

    (*(v177 + 8))(v132, v178);
    v143 = v175;
    v142 = v176;
    goto LABEL_59;
  }

LABEL_68:
  __break(1u);
}

void sub_1BD962AA0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v134 = v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v124 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v132 = v25;
    v133 = Strong;
    v128 = a3;
    v130 = a5;
    if (a1)
    {
      v28 = a1;
      v29 = [v28 supplementalProvisioningData];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1BE04AAC4();
        v135 = v32;
        v136 = v31;

        v33 = [v28 accountKeyIdentifier];
        if (!v33)
        {

          v125 = 0;
          v129 = 0;
LABEL_46:
          v131 = [a4 hasPaymentOptionMatching_];
          v87 = [a4 productIdentifier];
          if (v87)
          {
            v88 = v87;
            v124[0] = sub_1BE052434();
            v90 = v89;
          }

          else
          {
            v124[0] = 0;
            v90 = 0;
          }

          v91 = sub_1BE04AA64();
          v92 = *(v91 - 8);
          v93 = *(v92 + 56);
          v93(v132, 1, 1, v91);
          v93(v134, 1, 1, v91);
          LODWORD(v130) = sub_1BD9636A8();
          v94 = 0;
          v95 = 0;
          if (v131)
          {
            v96 = v128;
            swift_beginAccess();
            v94 = v96[2];
            v95 = v96[3];
            sub_1BE048C84();
          }

          v124[1] = v94;
          sub_1BD041A38(v136, v135);
          v97 = sub_1BE052404();
          v127 = sub_1BE052404();
          if (a11)
          {
            v126 = sub_1BE052404();
          }

          else
          {
            v126 = 0;
          }

          v98 = v129;
          if (v90)
          {
            v99 = sub_1BE052404();
          }

          else
          {
            v99 = 0;
          }

          v128 = v97;
          if (v98)
          {
            v100 = sub_1BE052404();
          }

          else
          {
            v100 = 0;
          }

          v101 = *(v92 + 48);
          v102 = v132;
          if (v101(v132, 1, v91) == 1)
          {
            v103 = 0;
          }

          else
          {
            v103 = sub_1BE04A9C4();
            (*(v92 + 8))(v102, v91);
          }

          v104 = v134;
          if (v101(v134, 1, v91) == 1)
          {
            v105 = 0;
          }

          else
          {
            v106 = v104;
            v105 = sub_1BE04A9C4();
            (*(v92 + 8))(v106, v91);
          }

          v108 = v135;
          v107 = v136;
          v109 = sub_1BE04AAB4();
          sub_1BD1245AC(v107, v108);
          if (v95)
          {
            v110 = sub_1BE052404();
          }

          else
          {
            v110 = 0;
          }

          v111 = v130;
          v112 = v128;
          v113 = v127;
          v114 = objc_allocWithZone(MEMORY[0x1E6997E70]);
          LOBYTE(v123) = v111 & 1;
          v115 = v126;
          v116 = [v114 initWithState:v112 country:v113 target:a9 status:3 credentialIdentifier:v126 productIdentifier:v99 accountKeyIdentifier:v100 idType:v131 extendedReviewURL:v103 learnMoreURL:v105 supplementalProvisioningData:v109 isPairedWatchUnsupported:v123 proofingErrorMessage:0 piiTokenIdentifier:v110];

          v117 = v133;
          v118 = *&v133[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_proofingManager];
          if (v118)
          {
            v119 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v120 = swift_allocObject();
            v120[2] = v119;
            v120[3] = a12;
            v120[4] = a13;
            aBlock[4] = sub_1BD965F3C;
            aBlock[5] = v120;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD03E30C;
            aBlock[3] = &block_descriptor_21_6;
            v121 = _Block_copy(aBlock);
            v122 = v118;
            sub_1BE048964();

            [v122 startProofing:v116 completion:v121];
            sub_1BD1245AC(v136, v135);
            _Block_release(v121);

            return;
          }

          __break(1u);
          goto LABEL_73;
        }

        v34 = v33;
        v125 = sub_1BE052434();
        v129 = v35;

LABEL_45:
        goto LABEL_46;
      }
    }

    v36 = [objc_allocWithZone(MEMORY[0x1E69B8940]) init];
    v37 = OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_credential;
    v38 = *(v27 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_credential);
    if (!v38)
    {
      goto LABEL_16;
    }

    v39 = [v38 remoteCredential];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 passTypeIdentifier];
      [v36 setPassTypeIdentifier_];

      v42 = [v40 serialNumber];
      [v36 setPassSerialNumber_];

      v43 = *(v27 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_accountKeyIdentifier + 8);
      if (v43)
      {
        v125 = *(v27 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_accountKeyIdentifier);
        v44 = v43;
      }

      else
      {
        v57 = [v40 identityAccountKeyIdentifier];
        if (v57)
        {
          v58 = v57;
          v125 = sub_1BE052434();
          v44 = v59;
        }

        else
        {
          v125 = 0;
          v44 = 0;
        }
      }

      sub_1BE048C84();
      v63 = [v40 primaryAccountIdentifier];
      if (v63)
      {
        v64 = v63;
        v65 = sub_1BE052434();
        v67 = v66;
      }

      else
      {

        v65 = 0;
        v67 = 0;
      }

      v68 = v128;
      swift_beginAccess();
      v68[2] = v65;
      v68[3] = v67;

      sub_1BE048C84();
      if (!v44)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    }

    v45 = *(v27 + v37);
    if (v45 && (v46 = [v45 localPassCredential]) != 0)
    {
      v47 = v46;
      v127 = a6;
      v48 = [v46 passTypeIdentifier];
      [v36 setPassTypeIdentifier_];

      v49 = [v47 serialNumber];
      [v36 setPassSerialNumber_];

      v50 = *(v27 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_accountKeyIdentifier + 8);
      if (v50)
      {
        v125 = *(v27 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_accountKeyIdentifier);
        v44 = v50;
      }

      else
      {
        v136 = a7;
        v74 = [v47 paymentPass];
        if (!v74)
        {
LABEL_74:
          __break(1u);
          return;
        }

        v75 = v74;
        v76 = [v74 identityAccountKeyIdentifier];

        if (v76)
        {
          v125 = sub_1BE052434();
          v44 = v77;
        }

        else
        {
          v125 = 0;
          v44 = 0;
        }
      }

      sub_1BE048C84();
      v78 = [v47 paymentPass];
      if (!v78)
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v79 = v78;
      v80 = [v78 primaryAccountIdentifier];

      v81 = sub_1BE052434();
      v83 = v82;

      v84 = v128;
      swift_beginAccess();
      v84[2] = v81;
      v84[3] = v83;

      sub_1BE048C84();
    }

    else
    {
LABEL_16:
      v51 = *(v27 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_precursorPass);
      if (!v51)
      {
        v56 = 0;
        v125 = 0;
        v44 = 0;
LABEL_44:
        v129 = v44;
        [v36 setAccountKeyIdentifier_];

        v28 = [v36 dataRepresentation];
        v85 = sub_1BE04AAC4();
        v135 = v86;
        v136 = v85;

        goto LABEL_45;
      }

      v52 = v51;
      v53 = [v52 passTypeIdentifier];
      if (!v53)
      {
        sub_1BE052434();
        v53 = sub_1BE052404();
      }

      [v36 setPassTypeIdentifier_];

      v54 = [v52 serialNumber];
      if (!v54)
      {
        sub_1BE052434();
        v54 = sub_1BE052404();
      }

      [v36 setPassSerialNumber_];

      v55 = *(v27 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_accountKeyIdentifier + 8);
      v127 = a6;
      if (v55)
      {
        v125 = *(v27 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_accountKeyIdentifier);
        v44 = v55;
      }

      else
      {
        v60 = [v52 identityAccountKeyIdentifier];
        if (v60)
        {
          v61 = v60;
          v125 = sub_1BE052434();
          v44 = v62;
        }

        else
        {
          v125 = 0;
          v44 = 0;
        }
      }

      sub_1BE048C84();
      sub_1BE048C84();
      v69 = [v52 primaryAccountIdentifier];
      v70 = sub_1BE052434();
      v72 = v71;

      v73 = v128;
      swift_beginAccess();
      v73[2] = v70;
      v73[3] = v72;
    }

    if (!v44)
    {
LABEL_33:
      v56 = 0;
      goto LABEL_44;
    }

LABEL_43:
    v56 = sub_1BE052404();

    goto LABEL_44;
  }
}

uint64_t sub_1BD9636A8()
{
  v1 = sub_1BE04D214();
  v103 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v104 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v89 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v89 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v89 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v102 = &v89 - v18;
  v19 = sub_1BE04B8D4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v89 - v26;
  v28 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v28, v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v36 = &v89 - v35;
  v37 = *(v0 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_product);
  if (!v37)
  {
    v62 = v103;
    sub_1BE04D0E4();
    v63 = sub_1BE04D204();
    v64 = sub_1BE052C54();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1BD026000, v63, v64, "isPairedWatchUnsupported: Yes - product is not set up", v65, 2u);
      MEMORY[0x1BFB45F20](v65, -1, -1);
    }

    (*(v62 + 8))(v104, v1);
    return 1;
  }

  v95 = v7;
  v96 = v11;
  v93 = v0;
  v94 = v33;
  v90 = v15;
  v97 = v1;
  v38 = *(v0 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_context);
  v39 = v32;
  v40 = v34;
  v104 = v37;
  sub_1BE04BB94();
  sub_1BE04B924();
  v91 = v40;
  v42 = *(v40 + 8);
  v41 = v40 + 8;
  v100 = v42;
  v101 = v39;
  v42(v36, v39);
  v43 = *(v20 + 104);
  LODWORD(v98) = *MEMORY[0x1E69B7F78];
  v99 = v43;
  v43(v23);
  v44 = sub_1BE04B8C4();
  v92 = v20;
  v45 = *(v20 + 8);
  v45(v23, v19);
  v45(v27, v19);
  if ((v44 & 1) == 0 || (v89 = v38, sub_1BE04BB04(), sub_1BE04B924(), v100(v36, v101), v46 = v99, v99(v23, v98, v19), v47 = sub_1BE04B8C4(), v45(v23, v19), v45(v27, v19), (v47 & 1) == 0))
  {

    return 0;
  }

  v48 = PKIsPairedWithWatch();
  v49 = v104;
  if (!v48)
  {
    v66 = v95;
    sub_1BE04D0E4();
    v67 = sub_1BE04D204();
    v68 = sub_1BE052C54();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v97;
    if (v69)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_1BD026000, v67, v68, "isPairedWatchUnsupported: Yes - no paired watch found", v71, 2u);
      MEMORY[0x1BFB45F20](v71, -1, -1);
    }

    (*(v103 + 8))(v66, v70);
    return 1;
  }

  v50 = [objc_opt_self() watchWebServiceForIssuerProvisioning];
  v51 = v50;
  v52 = v97;
  if (!v50)
  {
    goto LABEL_21;
  }

  v53 = [v50 targetDevice];
  if (!v53)
  {
    goto LABEL_21;
  }

  v54 = v53;
  if (![v49 supportsDevice_])
  {
    swift_unknownObjectRelease();
LABEL_21:
    v72 = v96;
    sub_1BE04D0E4();
    v73 = sub_1BE04D204();
    v74 = sub_1BE052C54();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1BD026000, v73, v74, "isPairedWatchUnsupported: Yes - watch doesn't support product", v75, 2u);
      MEMORY[0x1BFB45F20](v75, -1, -1);
    }

    else
    {
    }

    (*(v103 + 8))(v72, v52);
    return 1;
  }

  v96 = v54;
  v98 = v41;
  v55 = v102;
  v46(v102, *MEMORY[0x1E69B7F80], v19);
  (*(v92 + 56))(v55, 0, 1, v19);
  v56 = v51;
  v57 = v94;
  v102 = v56;
  sub_1BE04B914();
  (*(v91 + 16))(v36, v57, v101);
  v58 = v93;
  if (*(v93 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_product))
  {
    v59 = [*(v93 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_product) hasPaymentOptionMatching_];
    v60 = 1;
    if (v59)
    {
      v60 = 2;
    }

    v99 = v60;
  }

  else
  {
    v99 = 0;
  }

  v76 = *(v58 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region);
  v77 = *(v58 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region + 8);
  v78 = objc_allocWithZone(sub_1BE04B624());
  sub_1BD2726F8(v76, v77);
  v79 = sub_1BE04B614();
  v80 = *(v58 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_precursorPass);
  v81 = v104;
  v82 = sub_1BE04B5F4();

  if (v82)
  {
    v83 = v90;
    sub_1BE04D0E4();
    v84 = sub_1BE04D204();
    v85 = sub_1BE052C54();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1BD026000, v84, v85, "isPairedWatchUnsupported: Yes - watch has conflicting identity pass", v86, 2u);
      MEMORY[0x1BFB45F20](v86, -1, -1);
    }

    swift_unknownObjectRelease();
    v87 = v102;

    (*(v103 + 8))(v83, v52);
    v100(v94, v101);
    return 1;
  }

  v100(v94, v101);

  v88 = v102;
  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1BD963FBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE051F54();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  aBlock[4] = sub_1BD965F48;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_28_4;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD965F54(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v19);
  _Block_release(v19);

  (*(v24 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v23);
}

void sub_1BD9642E8(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a2)
    {
      v14 = a2;
      v15 = sub_1BE04A844();
      v16 = PKDisplayableErrorForCommonType();

      if (v16)
      {
        sub_1BD964518(v16, a3, a4);

        return;
      }

      __break(1u);
      goto LABEL_11;
    }

    sub_1BE04D0E4();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "Presenting proofing view controller", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    v20 = *&v13[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_proofingManager];
    if (!v20)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v21 = [v20 proofingFlowViewController];
    v22 = *&v13[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_viewController];
    *&v13[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_viewController] = v21;

    a3(1);
  }
}

void sub_1BD964518(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1BE04A844();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v13[4] = sub_1BD1B5F6C;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1BD126964;
  v13[3] = &block_descriptor_34_3;
  v8 = _Block_copy(v13);
  sub_1BE048964();

  v9 = PKAlertForDisplayableErrorWithCancelHandler(v6, 0, v8);
  _Block_release(v8);

  if (v9)
  {
    v10 = v3 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 24))(v9, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a2(0);
  }
}

void sub_1BD964684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04BBD4();
  v5 = [v4 identityProofingManager];

  if (v5)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v9[4] = sub_1BD965F30;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1BD964C58;
    v9[3] = &block_descriptor_220;
    v8 = _Block_copy(v9);
    sub_1BE048964();

    [v5 proofingFlowAvailability_];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD9647D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v49 = a6;
  v8 = sub_1BE04B8D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v46 - v15;
  v17 = sub_1BE04B944();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    sub_1BE04BB94();
    sub_1BE04B924();
    (*(v18 + 8))(v21, v17);
    (*(v9 + 104))(v12, *MEMORY[0x1E69B7F80], v8);
    v23 = sub_1BE04B8C4();
    v24 = *(v9 + 8);
    v24(v12, v8);
    v24(v16, v8);
    v25 = 1;
    if (v23)
    {
      v25 = 2;
    }

    v50 = v25;
    if (a2)
    {
      v26 = &v48[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region];
      v56 = *&v48[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region + 8];
      if (v56)
      {
        v54 = *v26;
        v28 = *(v26 + 2);
        v27 = *(v26 + 3);
        v53 = v28;
        v55 = v27;
        v47 = a2 & 0xFFFFFFFFFFFFFF8;
        if (a2 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
        {
          v46 = a5;
          v52 = a2 & 0xC000000000000001;
          sub_1BE048C84();
          sub_1BE048C84();
          v30 = 0;
          v51 = a2;
          while (1)
          {
            if (v52)
            {
              v31 = MEMORY[0x1BFB40900](v30, a2);
            }

            else
            {
              if (v30 >= *(v47 + 16))
              {
                goto LABEL_23;
              }

              v31 = *(a2 + 8 * v30 + 32);
            }

            v32 = v31;
            v33 = (v30 + 1);
            if (__OFADD__(v30, 1))
            {
              break;
            }

            a5 = i;
            v34 = [v31 country];
            v35 = sub_1BE052434();
            v37 = v36;

            v59 = v35;
            v60 = v37;
            v57 = v53;
            v58 = v55;
            sub_1BD0DDEBC();
            v38 = sub_1BE0535A4();

            v39 = [v32 state];
            v40 = sub_1BE052434();
            v42 = v41;

            v59 = v40;
            v60 = v42;
            v57 = v54;
            v58 = v56;
            v43 = v38 | sub_1BE0535A4();

            if (!v43)
            {
              v44 = [v32 target];
              if (v44 == v50)
              {

                v45 = v32;
                v46(v32);

                goto LABEL_20;
              }
            }

            ++v30;
            i = a5;
            a2 = v51;
            if (v33 == a5)
            {

              a5 = v46;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }
      }
    }

LABEL_19:
    a5(0);
LABEL_20:
  }
}

uint64_t sub_1BD964C58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1BD0E5E8C(0, &qword_1EBD59BE8);
    v5 = sub_1BE052744();
  }

  sub_1BE048964();
  v8 = a4;
  v7(a2, v5, a4);
}

uint64_t sub_1BD964D04()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD964D40(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD964D8C(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  if (sub_1BD9612E8())
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x80000001BE142F70;
    v2 = 0xD00000000000001ALL;
    v4 = 1;
  }

  return a1(v2, v3, 0, v4);
}

void *sub_1BD964E04()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD964E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1BE051F54();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BE051FA4();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a5;
  v19[4] = a1;
  v19[5] = a2;
  aBlock[4] = sub_1BD9665CC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_57_6;
  v20 = _Block_copy(aBlock);
  v21 = a5;
  sub_1BE048C84();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD965F54(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v20);
  _Block_release(v20);

  (*(v25 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v24);
}

void sub_1BD965160(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = &v60 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v65 = a3;
  if (a2)
  {
    *&v68[0] = a2;
    v17 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    type metadata accessor for CIDVUIProofingError(0);
    if (swift_dynamicCast())
    {
      v18 = v67;
      *&v68[0] = v67;
      sub_1BD965F54(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError);
      sub_1BE04A814();

      if (v67 == -5008)
      {
        goto LABEL_28;
      }
    }
  }

  v19 = *&v16[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_credential];
  if (!v19 || (v20 = [v19 remoteCredential]) == 0)
  {
    v21 = 0;
    if (a3 != 1 || !a4)
    {
      goto LABEL_33;
    }

    v62 = v8;
    v63 = v7;
    v64 = v16;
    if (a4 >> 62)
    {
LABEL_31:
      v22 = sub_1BE053704();
      if (v22)
      {
LABEL_14:
        v23 = 0;
        while (1)
        {
          if ((a4 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x1BFB40900](v23, a4);
          }

          else
          {
            if (v23 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v24 = *(a4 + 8 * v23 + 32);
          }

          v25 = v24;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          if ([v24 status] != 3 && objc_msgSend(v25, sel_target) == 1)
          {
            break;
          }

          ++v23;
          if (v26 == v22)
          {
            goto LABEL_32;
          }
        }

        v27 = v66;
        sub_1BE04D0E4();
        v28 = v25;
        v29 = sub_1BE04D204();
        v30 = sub_1BE052C54();

        v31 = os_log_type_enabled(v29, v30);
        v16 = v64;
        if (v31)
        {
          v32 = swift_slowAlloc();
          v60 = v32;
          v61 = swift_slowAlloc();
          *&v68[0] = v61;
          *v32 = 136315138;
          v33 = [v28 state];
          v34 = sub_1BE052434();
          v36 = v35;

          v37 = sub_1BD123690(v34, v36, v68);

          v38 = v60;
          *(v60 + 1) = v37;
          _os_log_impl(&dword_1BD026000, v29, v30, "Found active session with state %s", v38, 0xCu);
          v39 = v61;
          __swift_destroy_boxed_opaque_existential_0(v61);
          MEMORY[0x1BFB45F20](v39, -1, -1);
          MEMORY[0x1BFB45F20](v38, -1, -1);
        }

        else
        {
        }

        v8 = v62;
        v7 = v63;
        (*(v62 + 8))(v27, v63);
LABEL_28:
        v21 = 1;
        goto LABEL_33;
      }
    }

    else
    {
      v22 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_14;
      }
    }

LABEL_32:
    v21 = 0;
    v7 = v63;
    v16 = v64;
    v8 = v62;
    goto LABEL_33;
  }

  if (a2)
  {
  }

  else
  {
    v40 = v20;
    v41 = sub_1BE04BBD4();
    v42 = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
    sub_1BD0E5E8C(0, &qword_1EBD42930);
    v43 = v40;
    v44 = sub_1BE052724();
    [v41 updateStateAfterProvisioning:v42 credential:v43 passes:v44 moreInfoItems:0];
  }

  v21 = 0;
LABEL_33:
  sub_1BE04D0E4();
  sub_1BE048C84();
  v45 = sub_1BE04D204();
  v46 = sub_1BE052C54();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134218496;
    *(v47 + 4) = v65;
    *(v47 + 12) = 2048;
    if (a4)
    {
      v48 = v8;
      if (a4 >> 62)
      {
        v59 = v47;
        v49 = sub_1BE053704();
        v47 = v59;
      }

      else
      {
        v49 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v48 = v8;
      v49 = 0;
    }

    *(v47 + 14) = v49;
    v50 = v47;

    *(v50 + 22) = 1024;
    *(v50 + 24) = v21;
    _os_log_impl(&dword_1BD026000, v45, v46, "Proofing availability %lu - %ld configurations, returning to list: %{BOOL}d", v50, 0x1Cu);
    MEMORY[0x1BFB45F20](v50, -1, -1);

    v8 = v48;
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);
  v51 = &v16[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_delegate];
  v52 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    if (v52)
    {
      v53 = *(v51 + 1);
      ObjectType = swift_getObjectType();
      memset(v68, 0, sizeof(v68));
      v69 = 2;
      v55 = v16;
      sub_1BD865A00(v55, &off_1F3BC7530, v68, ObjectType, v53);
      swift_unknownObjectRelease();

      sub_1BD0DE53C(v68, &unk_1EBD3F510);
      return;
    }
  }

  else if (v52)
  {
    v56 = *(v51 + 1);
    v57 = swift_getObjectType();
    v58 = v16;
    sub_1BD8659A4(v58, &off_1F3BC7530, v57, v56);

    swift_unknownObjectRelease();
    return;
  }
}

void sub_1BD965898(unint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0E4();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "Proofing configurations have been updated, updating model", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v10 >> 62)
  {
    v11 = sub_1BE053704();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  v12 = sub_1BE04BBD4();
  sub_1BD0E5E8C(0, &qword_1EBD59BE8);
  v13 = sub_1BE052724();

  aBlock[4] = sub_1BD965AFC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_43_6;
  v14 = _Block_copy(aBlock);
  [v12 _applyIdentityConfiguration_activeConfigurations_completion_];
  _Block_release(v14);
}

uint64_t sub_1BD965AFC()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0E4();
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, v6, "Proofing configurations have been updated, model updated", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1BD965D18(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1BFB407B0](a1, a2, v9);
      sub_1BD0E5E8C(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1BD0E5E8C(0, a5);
    if (sub_1BE0536E4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1BE0536F4();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1BE053064();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1BE053074();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_1BD965F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD965F9C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1BD965FF0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1BD966040(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0E4();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "Asking for proofing availability", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = sub_1BE04BBD4();
  v11 = [v10 identityProofingManager];

  if (v11)
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    aBlock[4] = sub_1BD96656C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD964C58;
    aBlock[3] = &block_descriptor_50_4;
    v14 = _Block_copy(aBlock);
    v15 = a1;

    [v11 proofingFlowAvailability_];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD966294(uint64_t a1)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE051FA4();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  aBlock[4] = sub_1BD966564;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_40_4;
  v14 = _Block_copy(aBlock);
  sub_1BE048C84();
  v15 = v1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD965F54(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v18);
}

uint64_t objectdestroy_24Tm(void (*a1)(void))
{

  a1(*(v1 + 40));

  return swift_deallocObject();
}

id TransactionsModel.updateModelWithAccount(updatedAccount:)(void *a1)
{
  v2 = v1;
  v4 = a1;
  sub_1BD967D1C(a1);
  swift_getKeyPath();
  v21[0] = v2;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  v6 = v5;
  sub_1BD96AFAC(v5, v21);

  if (v21[0])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BE04B584();
    sub_1BD96B2D4(v21);
  }

  result = [v4 accountIdentifier];
  if (result)
  {
    v10 = result;
    v11 = sub_1BE052434();
    v13 = v12;

    swift_getKeyPath();
    sub_1BE04B594();

    v14 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
    swift_beginAccess();
    v15 = *(*(v2 + v14) + 16);
    swift_getKeyPath();
    sub_1BE04B594();

    swift_getKeyPath();
    sub_1BE04B5B4();

    swift_beginAccess();
    v16 = *(v2 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v14) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1BD1D8D50(0, *(v16 + 2) + 1, 1, v16);
      *(v2 + v14) = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1BD1D8D50((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[32 * v19];
    *(v20 + 4) = v11;
    *(v20 + 5) = v13;
    *(v20 + 6) = v15;
    *(v20 + 7) = 0;
    *(v2 + v14) = v16;
    swift_endAccess();
    swift_getKeyPath();
    sub_1BE04B5A4();

    return sub_1BD968B18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD96694C()
{
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  v2 = v1;
  return v1;
}

char **sub_1BD966A4C()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v51 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BE04B2D4();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v54 = v0;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__monthlyGroups);
  v54 = MEMORY[0x1E69E7CC0];
  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v13 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel_calendar;
    v47 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel_currentYear;
    v37 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel_currentMonth;
    sub_1BE048C84();
    if (!i)
    {
      break;
    }

    v42 = v10;
    v43 = v6;
    v14 = 0;
    v46 = v11 & 0xC000000000000001;
    v44 = v1;
    v45 = v11 & 0xFFFFFFFFFFFFFF8;
    v39 = *MEMORY[0x1E6969A68];
    v6 = (v7 + 104);
    v38 = v3 + 1;
    v3 = v7 + 8;
    v34 = *MEMORY[0x1E6969A78];
    v1 = &selRef_setUpNavigationBar;
    v35 = (v7 + 104);
    v36 = v2;
    v40 = i;
    v41 = v11;
    v50 = v13;
    v7 = v10;
    while (1)
    {
      if (v46)
      {
        v10 = v13;
        v16 = MEMORY[0x1BFB40900](v14, v11);
      }

      else
      {
        if (v14 >= *(v45 + 16))
        {
          goto LABEL_25;
        }

        v10 = v13;
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v53 = v14 + 1;
      v18 = v43;
      v49 = *v6;
      (v49)(v7, v39, v43);
      v19 = v1[492];
      v52 = v17;
      v20 = [v17 v19];
      v21 = v6;
      v22 = v51;
      sub_1BE04AEE4();

      v23 = v44;
      v24 = sub_1BE04B2E4();
      v10 = v38;
      v48 = *v38;
      v48(v22, v2);
      v25 = v2;
      v26 = *v3;
      (*v3)(v7, v18);
      if (v24 == *(v23 + v47))
      {
        (v49)(v7, v34, v18);
        v49 = v26;
        v27 = v52;
        v28 = [v52 startDate];
        v29 = v51;
        sub_1BE04AEE4();

        v30 = sub_1BE04B2E4();
        v48(v29, v25);
        v49(v7, v18);
        if (v30 == *(v23 + v37))
        {
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        v6 = v35;
        v2 = v36;
        v15 = v40;
        v11 = v41;
        v13 = v50;
      }

      else
      {

        v2 = v25;
        v15 = v40;
        v11 = v41;
        v13 = v50;
        v6 = v21;
      }

      ++v14;
      v1 = &selRef_setUpNavigationBar;
      if (v53 == v15)
      {
        v31 = v54;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_19:

  if ((v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
  {
    if (sub_1BE053704())
    {
      return v31;
    }

    goto LABEL_22;
  }

  if (!v31[2])
  {
LABEL_22:

    return 0;
  }

  return v31;
}

char *sub_1BD966F28()
{
  v1 = v0;
  v29 = sub_1BE04AF64();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B2D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v28 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30 = v0;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v10 = *&v0[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__yearlyGroups];
  v30 = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v26 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel_currentYear;
    v27 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel_calendar;
    sub_1BE048C84();
    v19 = v10;
    if (!i)
    {
      break;
    }

    v12 = 0;
    v24 = v10 & 0xFFFFFFFFFFFFFF8;
    v25 = v10 & 0xC000000000000001;
    v23 = *MEMORY[0x1E6969A68];
    v21 = (v2 + 8);
    v22 = (v7 + 104);
    v20 = (v7 + 8);
    while (1)
    {
      if (v25)
      {
        v13 = MEMORY[0x1BFB40900](v12, v10);
      }

      else
      {
        if (v12 >= *(v24 + 16))
        {
          goto LABEL_23;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v2 = v28;
      (*v22)(v28, v23, v6);
      v15 = [v14 startDate];
      sub_1BE04AEE4();

      v16 = sub_1BE04B2E4();
      (*v21)(v5, v29);
      (*v20)(v2, v6);
      if (v16 == *&v1[v26] || ![v14 transactionCount])
      {
      }

      else
      {
        sub_1BE0538C4();
        v2 = v1;
        sub_1BE0538F4();
        v10 = v19;
        sub_1BE053904();
        sub_1BE0538D4();
      }

      ++v12;
      if (v7 == i)
      {
        v17 = v30;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
  {
    if (sub_1BE053704())
    {
      return v17;
    }

    goto LABEL_20;
  }

  if (!*(v17 + 2))
  {
LABEL_20:

    return 0;
  }

  return v17;
}

uint64_t sub_1BD967304(void *a1)
{
  v33 = a1;
  v32 = sub_1BE04AF64();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v3);
  v31 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE04B2D4();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v6);
  v29 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v42 = v1;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v41 = v1;
  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__monthlyGroups);
  v42 = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v28 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel_calendar;
    sub_1BE048C84();
    if (!i)
    {
      break;
    }

    v10 = 0;
    v27 = v8 & 0xC000000000000001;
    v26 = v8 & 0xFFFFFFFFFFFFFF8;
    v40 = *MEMORY[0x1E6969A68];
    v22 = (v2 + 8);
    v23 = (v5 + 13);
    v21[1] = v5 + 1;
    v24 = i;
    v25 = v8;
    ++v5;
    while (1)
    {
      if (v27)
      {
        v11 = MEMORY[0x1BFB40900](v10, v8);
      }

      else
      {
        if (v10 >= *(v26 + 16))
        {
          goto LABEL_22;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v39 = v10 + 1;
      v36 = *v23;
      v13 = v29;
      v14 = v30;
      v36(v29, v40, v30);
      v15 = [v12 startDate];
      v16 = v31;
      sub_1BE04AEE4();

      v37 = sub_1BE04B2E4();
      v38 = v12;
      v35 = *v22;
      v2 = v32;
      v35(v16, v32);
      v34 = *v5;
      v34(v13, v14);
      v36(v13, v40, v14);
      v17 = [v33 startDate];
      sub_1BE04AEE4();

      v18 = sub_1BE04B2E4();
      v35(v16, v2);
      v34(v13, v14);
      if (v37 == v18)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      v8 = v25;
      ++v10;
      if (v39 == v24)
      {
        v19 = v42;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_16:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    if (sub_1BE053704())
    {
      return v19;
    }

    goto LABEL_19;
  }

  if (!*(v19 + 16))
  {
LABEL_19:

    return 0;
  }

  return v19;
}

void *sub_1BD967794@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v3 = (v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  result = sub_1BD550B20(v4, v5, v6, v7);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return result;
}

uint64_t sub_1BD967884(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD59CA0);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v3(v2);
}

uint64_t sub_1BD967970()
{
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BD967A14@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  *a3 = *(v5 + *a2);
  return sub_1BE048C84();
}

uint64_t sub_1BD967ACC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = sub_1BE048C84();
  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B584();
  }
}

id sub_1BD967C2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  *a2 = v4;

  return v4;
}

void sub_1BD967CEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD967D1C(v1);
}

void sub_1BD967D1C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t type metadata accessor for TransactionsModel()
{
  result = qword_1EBD59C88;
  if (!qword_1EBD59C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BD967F00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 8);
  v6 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 16);
  v7 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 24);
  v8 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 32);
  v9 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 40);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  return sub_1BD550B20(v4, v5, v6, v7);
}

uint64_t sub_1BD967FC8()
{
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B584();
}

void *sub_1BD9680A4(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 8);
  v5 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 16);
  v6 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 24);
  v7 = a2[1];
  *v2 = *a2;
  v2[1] = v7;
  v2[2] = a2[2];
  sub_1BD96CA70(a2, &v9);
  return sub_1BD550B80(v3, v4, v5, v6);
}

void sub_1BD96817C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection);
  sub_1BD0E5E8C(0, &qword_1EBD59CB0);
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
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B584();
  }
}

id sub_1BD968304(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_1BD9683B4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1BD968478(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher);
  sub_1BD0E5E8C(0, &qword_1EBD59CA8);
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
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD9685EC()
{
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD9686AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1BE048C84();
}

uint64_t sub_1BD968774()
{
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B584();
}

uint64_t sub_1BD968840(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1BE048C84();
}

uint64_t sub_1BD9688C4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  return *(v2 + *a2);
}

uint64_t sub_1BD968964@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight);
  return result;
}

uint64_t sub_1BD968A14(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD968B18()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v30 = &v29 - v7;
  swift_getKeyPath();
  v34 = v0;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v34 = v0;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v8 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
  swift_beginAccess();
  v9 = sub_1BD96A094();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_endAccess();
  v34 = v0;
  swift_getKeyPath();
  sub_1BE04B5A4();

  if (v11)
  {
    swift_getKeyPath();
    v34 = v0;
    sub_1BE04B594();

    v17 = *(v0 + v8);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 48);
      while (1)
      {
        if (v13 < *v19)
        {
          v20 = *(v19 - 2) == v9 && v11 == *(v19 - 1);
          if (v20 || (sub_1BE053B84() & 1) != 0)
          {
            break;
          }
        }

        v19 += 4;
        if (!--v18)
        {
          goto LABEL_15;
        }
      }

      v21 = v30;
      sub_1BE04D1E4();
      v22 = sub_1BE04D204();
      v23 = sub_1BE052C54();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = v13;
        _os_log_impl(&dword_1BD026000, v22, v23, "Don't process the request with priority %ld, we have since recieved a newer one", v24, 0xCu);
        MEMORY[0x1BFB45F20](v24, -1, -1);
      }

      (*(v32 + 8))(v21, v33);
      swift_getKeyPath();
      v34 = v1;
      sub_1BE04B594();

      if (*(*(v1 + v8) + 16))
      {
        return sub_1BD968B18(result);
      }
    }

    else
    {
LABEL_15:
      swift_getKeyPath();
      v34 = v1;
      sub_1BE04B594();

      if (*(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight))
      {

        v25 = v31;
        sub_1BE04D1E4();
        v26 = sub_1BE04D204();
        v27 = sub_1BE052C54();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1BD026000, v26, v27, "Request is currently in flight - skipping", v28, 2u);
          MEMORY[0x1BFB45F20](v28, -1, -1);
        }

        return (*(v32 + 8))(v25, v33);
      }

      else
      {
        sub_1BD969994(v9, v11, v13, v15);
      }
    }
  }

  return result;
}

id TransactionsModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (![*&v0[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass] isAppleCardPass])
  {
    goto LABEL_4;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    [result unregisterObserver_];

LABEL_4:
    sub_1BD0E5E8C(0, &qword_1EBD59C30);
    v4 = [swift_getObjCClassFromMetadata() defaultCenter];
    [v4 removeObserver_];

    v5 = [objc_opt_self() defaultCenter];
    [v5 removeObserver_];

    v6.receiver = v0;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_dealloc);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TransactionsModel.transactionsChanged(_:)(Swift::OpaquePointer_optional a1)
{
  v2 = v1;
  rawValue = a1.value._rawValue;
  swift_getKeyPath();
  v16 = v1;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher;
  v5 = *&v1[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v20 = sub_1BD96B33C;
  v21 = v6;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1BD967884;
  v19 = &block_descriptor_221;
  v7 = _Block_copy(&v16);
  v8 = v5;
  v9 = v2;

  [v8 transactionCountByPeriod:4 withCompletion:v7];
  _Block_release(v7);

  swift_getKeyPath();
  v16 = v9;
  sub_1BE04B594();

  v10 = *&v2[v4];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v20 = sub_1BD96B37C;
  v21 = v11;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1BD967884;
  v19 = &block_descriptor_18_2;
  v12 = _Block_copy(&v16);
  v13 = v9;
  v14 = v10;

  [v14 transactionCountByPeriod:8 withCompletion:v12];
  _Block_release(v12);

  if (rawValue)
  {
    v15 = sub_1BE048C84();
    sub_1BD967ACC(v15, &OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions, sub_1BD400D28);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD96957C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = a1;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1BE048C84();
    v5.value._rawValue = v4;
    TransactionsModel.transactionsChanged(_:)(v5);
  }
}

uint64_t sub_1BD969600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = v21;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);
  sub_1BE048C84();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD96C850(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v23);
}

void sub_1BD9698E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    sub_1BE048C84();
    sub_1BD967ACC(v7, a3, sub_1BD400D3C);
  }
}

void sub_1BD969994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight] == 1)
  {
    v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight] = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v27 = a3;
    MEMORY[0x1EEE9AC00](KeyPath, v15);
    *(&v26 - 2) = v4;
    *(&v26 - 8) = 1;
    aBlock[0] = v4;
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B584();

    a3 = v27;
  }

  sub_1BE04D1E4();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C54();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a3;
    _os_log_impl(&dword_1BD026000, v16, v17, "Processing update request with priority %ld", v18, 0xCu);
    MEMORY[0x1BFB45F20](v18, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  if (a4)
  {
    sub_1BD96B540(a4, v5, a3, v28, a2);
  }

  else
  {
    v19 = [objc_opt_self() sharedInstance];
    if (v19)
    {
      v20 = v19;
      v21 = v28;
      v22 = sub_1BE052404();
      v23 = swift_allocObject();
      v23[2] = v5;
      v23[3] = a3;
      v23[4] = v21;
      v23[5] = a2;
      v23[6] = a3;
      v23[7] = 0;
      aBlock[4] = sub_1BD96CAF8;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD30A6F0;
      aBlock[3] = &block_descriptor_86_1;
      v24 = _Block_copy(aBlock);
      v25 = v5;
      sub_1BE048C84();

      [v20 accountUsersForAccountWithIdentifier:v22 completion:v24];
      _Block_release(v24);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD969D1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  v29 = a6;
  v12 = sub_1BE051F54();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v16 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v30 = sub_1BE052D54();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v22 = v28;
  v21 = v29;
  v20[4] = a3;
  v20[5] = v22;
  v20[6] = a5;
  v20[7] = v21;
  v20[8] = a7;
  aBlock[4] = sub_1BD96CBB0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_97_3;
  v23 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048C84();
  v24 = a2;
  sub_1BE048C84();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD96C850(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v25 = v30;
  MEMORY[0x1BFB3FDF0](0, v19, v15, v23);
  _Block_release(v23);

  (*(v32 + 8))(v15, v12);
  return (*(v16 + 8))(v19, v31);
}

uint64_t sub_1BD96A020(uint64_t result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v9 = sub_1BD1DA5C8(result);
    sub_1BD96B540(v9, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1BD96A094()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      result = *(v1 + 32 * v3);
      *(v1 + 16) = v3 - 1;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_1BD4FFF90(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD96A114()
{
  swift_getKeyPath();
  v9[0] = v0;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedInstance];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 accountIdentifier];
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9[4] = sub_1BD96C898;
      v9[5] = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1BD14E1D8;
      v9[3] = &block_descriptor_47_3;
      v8 = _Block_copy(v9);

      [v5 accountWithIdentifier:v6 completion:v8];
      _Block_release(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD96A2DC(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE051F54();
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1BD96C8A0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_53_2;
  v16 = _Block_copy(aBlock);
  sub_1BE048964();
  v17 = a1;
  v18 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD96C850(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

void sub_1BD96A5C0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      if (!a3)
      {
        v7 = a2;
        TransactionsModel.updateModelWithAccount(updatedAccount:)(v7);

        v6 = v7;
      }
    }
  }
}

uint64_t sub_1BD96A684()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v45 - v7;
  v9 = sub_1BE051F54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BE04A2D4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  v50 = sub_1BE052434();
  v51 = v20;
  sub_1BE0537C4();
  if (!*(v19 + 16) || (v21 = sub_1BD149040(aBlock), (v22 & 1) == 0))
  {

    sub_1BD149CE8(aBlock);
LABEL_13:
    sub_1BE04D1E4();
    v34 = sub_1BE04D204();
    v35 = sub_1BE052C54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BD026000, v34, v35, "Unable to extract unique id from userInfo, canceling update of pass settings", v36, 2u);
      MEMORY[0x1BFB45F20](v36, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }

  v46 = v10;
  sub_1BD038CD0(*(v19 + 56) + 32 * v21, v52);
  sub_1BD149CE8(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v23 = v51;
  v45 = v50;
  v50 = sub_1BE052434();
  v51 = v24;
  sub_1BE0537C4();
  if (!*(v19 + 16) || (v25 = sub_1BD149040(aBlock), (v26 & 1) == 0))
  {

    sub_1BD149CE8(aBlock);
LABEL_19:
    sub_1BE04D1E4();
    v37 = sub_1BE04D204();
    v38 = sub_1BE052C54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1BD026000, v37, v38, "Unable to extract pass settings from userInfo, canceling update of pass settings", v39, 2u);
      MEMORY[0x1BFB45F20](v39, -1, -1);
    }

    return (*(v1 + 8))(v8, v0);
  }

  sub_1BD038CD0(*(v19 + 56) + 32 * v25, v52);
  sub_1BD149CE8(aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v27 = v50;
  v28 = v48;
  v29 = [*&v48[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass] uniqueID];
  if (!v29)
  {
  }

  v30 = v29;
  v31 = sub_1BE052434();
  v33 = v32;

  if (v45 == v31 && v23 == v33)
  {

LABEL_25:
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v41 = sub_1BE052D54();
    v42 = swift_allocObject();
    *(v42 + 16) = v27;
    *(v42 + 24) = v28;
    aBlock[4] = sub_1BD96C848;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_40_5;
    v43 = _Block_copy(aBlock);
    v44 = v28;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD96C850(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v17, v13, v43);
    _Block_release(v43);

    (*(v46 + 8))(v13, v9);
    return (*(v47 + 8))(v17, v14);
  }

  v40 = sub_1BE053B84();

  if (v40)
  {
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_1BD96AD08(unint64_t result, uint64_t a2)
{
  if (((result >> 3) & 1 ^ *(a2 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B584();
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled) = (result & 8) >> 3;
  }

  return result;
}

id TransactionsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1BD96AFAC(void *a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = a1;
  v4 = [v3 creditDetails];
  if (!v4)
  {

LABEL_14:
    v6 = 0;
LABEL_15:
    v8 = 0;
LABEL_16:
    v13 = 0;
LABEL_17:
    v11 = 0;
LABEL_18:
    v7 = 0;
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v4 accountSummary];
  if (!v6)
  {

    goto LABEL_15;
  }

  v7 = [v5 currencyCode];
  if (!v7)
  {

    v6 = 0;
    v8 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v8 = [v5 cardBalance];
  if (!v8)
  {

    v6 = 0;
    goto LABEL_16;
  }

  v9 = [v5 rates];
  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v6 creditLimit];
  if (!v11)
  {

LABEL_26:
    v6 = 0;
    v8 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  v12 = [v6 availableCredit];
  if (!v12)
  {

    v6 = 0;
    v8 = 0;
    v13 = 0;
    v11 = 0;
    v7 = 0;
    goto LABEL_20;
  }

  v13 = PKCurrencyAmountCreate(v11, v7);
  if (!v13)
  {

    v6 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v19 = v11;
  v14 = v12;
  v11 = PKCurrencyAmountCreate(v14, v7);

  if (!v11)
  {

    goto LABEL_26;
  }

  v18 = v14;
  v15 = [v10 formattedAPRForPurchasesPercentageString];
  if (v15)
  {
    v17 = v15;
    v7 = sub_1BE052434();
    v12 = v16;

LABEL_20:
    *a2 = v6;
    a2[1] = v8;
    a2[2] = v13;
    a2[3] = v11;
    a2[4] = v7;
    a2[5] = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_1BD96B2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD96B3C4()
{
  result = sub_1BE04B2F4();
  if (v1 <= 0x3F)
  {
    result = sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1BD96B540(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60[3] = MEMORY[0x1E69E7CD0];
  v8 = [*&a2[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass] paymentPass];
  if (!v8)
  {
    goto LABEL_51;
  }

  v9 = v8;
  v55 = a5;
  v10 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];

  v11 = v10;
  sub_1BD2A5D88(v60, v11);

  v56 = a2;
  if (a1 >> 62)
  {
    v12 = sub_1BE053704();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  if (v12 < 1)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v13 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB40900](v13, a1);
    }

    else
    {
      v14 = *(a1 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    sub_1BD2A5D88(v60, [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccountUser_]);
  }

  while (v12 != v13);
LABEL_11:
  v16 = objc_allocWithZone(MEMORY[0x1E69B9300]);
  sub_1BD0E5E8C(0, &unk_1EBD406C0);
  sub_1BD96CB08();
  v17 = sub_1BE052A24();
  v18 = [v16 initWithTransactionSources_];

  v19 = v56;
  sub_1BD96817C(v18);
  swift_getKeyPath();
  v60[0] = v56;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v20 = *&v56[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection];
  v21 = objc_allocWithZone(MEMORY[0x1E69B8BD8]);
  v22 = v20;
  v23 = [v21 init];
  v24 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v22 paymentDataProvider:v23];

  if (!v24)
  {
LABEL_52:
    __break(1u);
    return;
  }

  v50 = v11;
  sub_1BD968478(v24);
  swift_getKeyPath();
  v60[0] = v56;
  sub_1BE04B594();

  [*&v56[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher] setDelegate_];
  swift_getKeyPath();
  v60[0] = v56;
  sub_1BE04B594();

  v60[0] = v56;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v25 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
  swift_beginAccess();
  v58 = v25;
  v26 = *&v56[v25];
  v27 = *(v26 + 2);
  v28 = v55;
  if (v27)
  {
    v29 = 0;
    v30 = 0;
    while (1)
    {
      v31 = &v26[v29];
      if (*&v26[v29 + 48] < a3)
      {
        v32 = *(v31 + 4) == a4 && *(v31 + 5) == v55;
        if (v32 || (sub_1BE053B84() & 1) != 0)
        {
          break;
        }
      }

      ++v30;
      v29 += 32;
      if (v27 == v30)
      {
        goto LABEL_40;
      }
    }

    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_50;
    }

    v34 = *(v26 + 2);
    while (v33 != v34)
    {
      if (v33 >= v34)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v37 = *&v26[v29 + 64];
      v36 = *&v26[v29 + 72];
      v38 = *&v26[v29 + 80];
      if (v38 >= a3 || (v37 == a4 ? (v39 = v36 == v28) : (v39 = 0), !v39 && (sub_1BE053B84() & 1) == 0))
      {
        if (v33 != v30)
        {
          if (v30 >= v34)
          {
            goto LABEL_46;
          }

          v40 = &v26[32 * v30 + 32];
          v41 = v19;
          v42 = *(v40 + 1);
          v52 = *(v40 + 2);
          v53 = *v40;
          v43 = *(v40 + 3);
          v54 = *&v26[v29 + 88];
          sub_1BE048C84();
          v51 = v42;
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v41[v58] = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v26 = sub_1BD4FFF90(v26);
            *&v41[v58] = v26;
          }

          v45 = &v26[32 * v30];
          *(v45 + 4) = v37;
          *(v45 + 5) = v36;
          *(v45 + 6) = v38;
          *(v45 + 7) = v54;

          v19 = v56;
          *&v56[v58] = v26;
          if (v33 >= *(v26 + 2))
          {
            goto LABEL_47;
          }

          v35 = &v26[v29];
          *(v35 + 8) = v53;
          *(v35 + 9) = v51;
          *(v35 + 10) = v52;
          *(v35 + 11) = v43;

          *&v56[v58] = v26;
          v28 = v55;
        }

        ++v30;
      }

      ++v33;
      v34 = *(v26 + 2);
      v29 += 32;
    }
  }

  else
  {
LABEL_40:
    v30 = v27;
  }

  v46 = *(v26 + 2);
  if (v46 < v30)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_1BD1DE5BC(v30, v46);
  swift_endAccess();
  v60[0] = v19;
  swift_getKeyPath();
  sub_1BE04B5A4();

  v47 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight;
  if (v19[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v49);
    v60[0] = v19;
    sub_1BE04B584();
  }

  else
  {

    v19[v47] = 0;
  }
}

void sub_1BD96BBF4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v74 = a3;
  v75 = a1;
  v76 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_1BE04B2D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1BE04AF64();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04B2F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__yearlyGroups] = v18;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__monthlyGroups] = v18;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account] = 0;
  v19 = &v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo];
  *v19 = 0u;
  v19[1] = 0u;
  v19[2] = 0u;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue] = v18;
  v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight] = 0;
  sub_1BE04B5C4();
  sub_1BE04B1E4();
  sub_1BE04AEF4();
  v68 = v14;
  v20 = *(v14 + 16);
  v70 = v13;
  v20(&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_calendar], v17, v13);
  v21 = *(v6 + 104);
  v21(v9, *MEMORY[0x1E6969A68], v5);
  v22 = sub_1BE04B2E4();
  v23 = *(v6 + 8);
  v23(v9, v5);
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_currentYear] = v22;
  v21(v9, *MEMORY[0x1E6969A78], v5);
  v69 = v12;
  v67 = v17;
  v24 = sub_1BE04B2E4();
  v23(v9, v5);
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_currentMonth] = v24;
  v25 = v75;
  v26 = v76;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass] = v75;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_settingsModel] = v26;
  v27 = v25;
  sub_1BE048964();
  v28 = [v27 paymentPass];
  if (!v28)
  {
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];

  v31 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection] = v31;
  v32 = objc_allocWithZone(MEMORY[0x1E69B8BD8]);
  v33 = v31;
  v34 = [v32 init];
  v35 = objc_allocWithZone(MEMORY[0x1E69B8788]);
  v36 = v33;
  v37 = [v35 initWithTransactionSourceCollection:v36 paymentDataProvider:v34];

  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher] = v37;
  v38 = [v27 settings];
  v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled] = (v38 & 8) != 0;
  v78.receiver = v4;
  v78.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v78, sel_init);
  v40 = v74;
  if (v74)
  {
    v41 = v74;
    sub_1BD967D1C(v40);
    sub_1BD96AFAC(v40, v79);
    if (v79[0])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v43);
      *(&v64 - 2) = v39;
      *(&v64 - 1) = v79;
      aBlock[0] = v39;
      sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
      sub_1BE04B584();
      sub_1BD96B2D4(v79);
    }

    v75 = v36;
    v76 = v30;
    ObjectType = v41;
    v44 = [(objc_class *)v41 accountIdentifier];
    if (v44)
    {
      v45 = v44;
      v66 = sub_1BE052434();
      v65 = v46;

      swift_getKeyPath();
      aBlock[0] = v39;
      sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
      sub_1BE04B594();

      v47 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
      swift_beginAccess();
      v48 = *(*&v39[v47] + 16);
      swift_getKeyPath();
      aBlock[0] = v39;
      sub_1BE04B594();

      aBlock[0] = v39;
      swift_getKeyPath();
      sub_1BE04B5B4();

      swift_beginAccess();
      v49 = *&v39[v47];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v39[v47] = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = sub_1BD1D8D50(0, *(v49 + 2) + 1, 1, v49);
        *&v39[v47] = v49;
      }

      v52 = *(v49 + 2);
      v51 = *(v49 + 3);
      if (v52 >= v51 >> 1)
      {
        v49 = sub_1BD1D8D50((v51 > 1), v52 + 1, 1, v49);
      }

      *(v49 + 2) = v52 + 1;
      v53 = &v49[32 * v52];
      v54 = v65;
      *(v53 + 4) = v66;
      *(v53 + 5) = v54;
      *(v53 + 6) = v48;
      *(v53 + 7) = 0;
      *&v39[v47] = v49;
      swift_endAccess();
      aBlock[0] = v39;
      swift_getKeyPath();
      sub_1BE04B5A4();

      v36 = v75;
      v30 = v76;
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_12:
  if (![v27 isAppleCardPass])
  {
LABEL_15:
    sub_1BD0E5E8C(0, &qword_1EBD59C30);
    v58 = [swift_getObjCClassFromMetadata() defaultCenter];
    [v58 addObserver:v39 selector:sel_passSettingsDidChangeWithNotification_ name:*MEMORY[0x1E69BBF90] object:0];

    swift_getKeyPath();
    aBlock[0] = v39;
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B594();

    v59 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher;
    [*&v39[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher] setDelegate_];
    swift_getKeyPath();
    aBlock[0] = v39;
    sub_1BE04B594();

    v60 = *&v39[v59];
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD96CC20;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD56AD40;
    aBlock[3] = &block_descriptor_102_1;
    v62 = _Block_copy(aBlock);
    v63 = v60;

    [v63 reloadTransactionsWithCompletion_];
    _Block_release(v62);

    sub_1BD968B18();
    (*(v71 + 8))(v69, v72);
    (*(v68 + 8))(v67, v70);
    return;
  }

  v55 = [objc_opt_self() sharedInstance];
  if (v55)
  {
    v56 = v55;
    [v55 registerObserver_];

    v57 = [objc_opt_self() defaultCenter];
    [v57 addObserver:v39 selector:sel_accountDidUpdate name:*MEMORY[0x1E69B9E60] object:0];

    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

void sub_1BD96C698(void *a1)
{
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 merchant];
  if (v8 && (v9 = v8, v10 = [v8 displayName], v9, v10))
  {
    sub_1BE052434();
  }

  else
  {
    v11 = [a1 transactionDate];
    if (v11)
    {
      v12 = v11;
      sub_1BE04AEE4();

      v13 = sub_1BE04AE64();
      (*(v3 + 8))(v7, v2);
    }

    else
    {
      v13 = 0;
    }

    v14 = PKRelativeDateString();

    if (v14)
    {
      sub_1BE052434();

      sub_1BE0524C4();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD96C850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD96C9EC(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
  sub_1BE048C84();
}

void sub_1BD96CA30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher);
  *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher) = v2;
  v4 = v2;
}

uint64_t sub_1BD96CA70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD96CB08()
{
  result = qword_1EBD58560;
  if (!qword_1EBD58560)
  {
    sub_1BD0E5E8C(255, &unk_1EBD406C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58560);
  }

  return result;
}

void sub_1BD96CB70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection);
  *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection) = v2;
  v4 = v2;
}

void sub_1BD96CBE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account) = v2;
  v4 = v2;
}

id sub_1BD96CC28(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 amount];
  if (v8)
  {
    v9 = v8;
    v10 = [a1 currencyCode];
    if (v10)
    {
      v11 = v10;
      if ([a1 transactionStatus] != 3)
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
        [v15 setNumberStyle_];
        [v15 setCurrencyCode_];

        v16 = [v15 stringFromNumber_];
        if (v16)
        {
          v17 = v16;
          v14 = sub_1BE052434();
        }

        else
        {

          return 0;
        }

        return v14;
      }
    }

    else
    {
      v11 = v9;
    }
  }

  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();

    (*(v3 + 8))(v7, v2);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PaymentOfferSetupProvisioningMetadata()
{
  result = qword_1EBD59CB8;
  if (!qword_1EBD59CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD96CF68()
{
  sub_1BD3F7300();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BD96CFF0(void *a1, void *a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  v17 = *(v25 + 24);
  v18 = *(v13 + 48);
  sub_1BD38F438(a1 + v17, v16);
  sub_1BD38F438(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &unk_1EBD3CF70);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1BD38F438(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1BD0DE53C(v16, &qword_1EBD44E78);
LABEL_12:
    v22 = 0;
    return v22 & 1;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1BD96D338();
  v20 = sub_1BE052334();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v12, v4);
  sub_1BD0DE53C(v16, &unk_1EBD3CF70);
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  if (*(a1 + *(v25 + 28)) != *(a2 + *(v25 + 28)))
  {
    goto LABEL_12;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1BE053B84();
  }

  return v22 & 1;
}

unint64_t sub_1BD96D338()
{
  result = qword_1EBD5AAF0;
  if (!qword_1EBD5AAF0)
  {
    sub_1BE04AA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AAF0);
  }

  return result;
}

uint64_t type metadata accessor for PassName()
{
  result = qword_1EBD59CC8;
  if (!qword_1EBD59CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD96D404()
{
  type metadata accessor for AvailablePass(319);
  if (v0 <= 0x3F)
  {
    sub_1BD96D490();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD96D490()
{
  if (!qword_1EBD392F0)
  {
    sub_1BD131A80();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD392F0);
    }
  }
}

uint64_t sub_1BD96D504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CE0);
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v95 = (v92 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v94 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v93 = v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CE8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v105 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v110 = v92 - v17;
  v101 = sub_1BE050554();
  v18 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v19);
  v100 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v102 = v92 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CF0);
  MEMORY[0x1EEE9AC00](v103, v24);
  v26 = v92 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CF8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v104 = v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v109 = v92 - v32;
  v111 = sub_1BD96DDD4();
  v112 = v33;
  v92[1] = sub_1BD0DDEBC();
  v34 = sub_1BE0506C4();
  v36 = v35;
  v38 = v37;
  v39 = *(type metadata accessor for PassName() + 24);
  v96 = a1;
  v92[0] = *(a1 + v39);
  v40 = sub_1BE0505F4();
  v42 = v41;
  LOBYTE(a1) = v43;
  v44 = v36;
  v45 = v100;
  sub_1BD0DDF10(v34, v44, v38 & 1);

  sub_1BE051224();
  v98 = sub_1BE050564();
  v97 = v46;
  v48 = v47;
  v99 = v49;

  v50 = v42;
  v51 = v101;
  sub_1BD0DDF10(v40, v50, a1 & 1);

  KeyPath = swift_getKeyPath();
  v53 = *(v18 + 104);
  v53(v45, *MEMORY[0x1E6980FB0], v51);
  if (PKBankConnectEnabled())
  {
    (*(v18 + 8))(v45, v51);
    v53(v45, *MEMORY[0x1E6980FA8], v51);
  }

  v54 = *(v18 + 32);
  v55 = v102;
  v54(v102, v45, v51);
  v56 = swift_getKeyPath();
  v57 = &v26[*(v103 + 36)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318);
  v54(v57 + *(v58 + 28), v55, v51);
  *v57 = v56;
  v59 = v97;
  *v26 = v98;
  *(v26 + 1) = v59;
  v26[16] = v48 & 1;
  *(v26 + 3) = v99;
  *(v26 + 4) = KeyPath;
  v60 = 1;
  *(v26 + 5) = 1;
  v26[48] = 0;
  sub_1BE052434();
  sub_1BD96E11C();
  v61 = v109;
  sub_1BE050DE4();

  sub_1BD0DE53C(v26, &qword_1EBD59CF0);
  if (PKBankConnectEnabled())
  {
    v62 = sub_1BD494550();
    if (v63)
    {
      v111 = v62;
      v112 = v63;
      v64 = sub_1BE0506C4();
      v66 = v65;
      v68 = v67;
      v69 = sub_1BE0505F4();
      v71 = v70;
      v73 = v72;
      sub_1BD0DDF10(v64, v66, v68 & 1);

      sub_1BE051224();
      v74 = sub_1BE050564();
      v76 = v75;
      v78 = v77;
      v80 = v79;

      sub_1BD0DDF10(v69, v71, v73 & 1);

      v81 = swift_getKeyPath();
      v111 = v74;
      v112 = v76;
      LOBYTE(v71) = v78 & 1;
      v113 = v78 & 1;
      v114 = v80;
      v115 = v81;
      v116 = 1;
      v117 = 0;
      sub_1BE052434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
      sub_1BD1B9C50();
      v82 = v93;
      v61 = v109;
      sub_1BE050DE4();

      sub_1BD0DDF10(v74, v76, v71);

      v83 = v94;
      sub_1BD0DE19C(v82, v94, &qword_1EBD3C0E8);
      v84 = v95;
      *v95 = 0;
      *(v84 + 8) = 1;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59D10);
      sub_1BD0DE19C(v83, v84 + *(v85 + 48), &qword_1EBD3C0E8);
      sub_1BD0DE53C(v82, &qword_1EBD3C0E8);
      sub_1BD0DE53C(v83, &qword_1EBD3C0E8);
      sub_1BD96E1D4(v84, v110);
      v60 = 0;
    }

    else
    {
      v60 = 1;
    }
  }

  v86 = v110;
  (*(v106 + 56))(v110, v60, 1, v107);
  v87 = v104;
  sub_1BD0DE19C(v61, v104, &qword_1EBD59CF8);
  v88 = v105;
  sub_1BD0DE19C(v86, v105, &qword_1EBD59CE8);
  v89 = v108;
  sub_1BD0DE19C(v87, v108, &qword_1EBD59CF8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59D08);
  sub_1BD0DE19C(v88, v89 + *(v90 + 48), &qword_1EBD59CE8);
  sub_1BD0DE53C(v86, &qword_1EBD59CE8);
  sub_1BD0DE53C(v61, &qword_1EBD59CF8);
  sub_1BD0DE53C(v88, &qword_1EBD59CE8);
  return sub_1BD0DE53C(v87, &qword_1EBD59CF8);
}

uint64_t sub_1BD96DDD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v30 - v3;
  v5 = type metadata accessor for IdentityCredential(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BD49C818(v8);
  v32 = v11;
  v33 = v12;
  v13 = WrappedPass.secureElementPass.getter();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 isIdentityPass];

    if (v15)
    {
      v16 = type metadata accessor for AvailablePass(0);
      sub_1BD0DE19C(v0 + *(v16 + 24), v4, &qword_1EBD3F190);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_1BD0DE53C(v4, &qword_1EBD3F190);
      }

      else
      {

        sub_1BD697B1C(v4, v10);
        v11 = *&v10[*(v5 + 24)];
        sub_1BE048C84();
        sub_1BD96E244(v10);
      }

      return v11;
    }
  }

  v17 = type metadata accessor for AvailablePass(0);
  v18 = *(v0 + *(v17 + 56));
  if (v18 >> 62)
  {
    v29 = v17;
    v19 = sub_1BE053704();
    v17 = v29;
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = *(v0 + *(v17 + 60));
  if (v20 >> 62)
  {
    result = sub_1BE053704();
    v22 = v19 + result;
    if (!__OFADD__(v19, result))
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v19 + result;
    if (!__OFADD__(v19, result))
    {
LABEL_9:
      if (v22 >= 2)
      {
        v23 = *(v0 + *(type metadata accessor for PassName() + 20));
        if (v23)
        {
          v24 = [v23 displayName];
          if (v24)
          {
            v25 = v24;
            v26 = sub_1BE052434();
            v28 = v27;

            v30 = 10272;
            v31 = 0xE200000000000000;
            MEMORY[0x1BFB3F610](v26, v28);

            MEMORY[0x1BFB3F610](41, 0xE100000000000000);
            MEMORY[0x1BFB3F610](v30, v31);

            return v32;
          }
        }
      }

      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD96E0C8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CD8);
  return sub_1BD96D504(v1, a1 + *(v3 + 44));
}

unint64_t sub_1BD96E11C()
{
  result = qword_1EBD59D00;
  if (!qword_1EBD59D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59CF0);
    sub_1BD1B9C50();
    sub_1BD0DE4F4(&qword_1EBD4FA38, &qword_1EBD3C318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59D00);
  }

  return result;
}

uint64_t sub_1BD96E1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD96E244(uint64_t a1)
{
  v2 = type metadata accessor for IdentityCredential(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD96E2A0(void *a1, uint64_t a2, void *a3, char a4)
{
  if (!a4)
  {
    sub_1BE053834();

    strcpy(v17, "linkable with ");
    HIBYTE(v17[1]) = -18;
    v11 = [a1 institutionIdentifier];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0x612064656B6E696CLL, 0xEF20746E756F6363);
    v6 = [a1 fullyQualifiedAccountIdentifier];
    v7 = [v6 accountID];

    v8 = sub_1BE052434();
    v10 = v9;

    MEMORY[0x1BFB3F610](v8, v10);

    MEMORY[0x1BFB3F610](0x206874697720, 0xE600000000000000);
    type metadata accessor for FKConsentStatus(0);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](0xD000000000000011, 0x80000001BE143480);
    v11 = [a3 institutionIdentifier];
LABEL_5:
    v12 = v11;
    v13 = sub_1BE052434();
    v15 = v14;

    MEMORY[0x1BFB3F610](v13, v15);

    return v17[0];
  }

  return 0x62616B6E696C6E75;
}

void *PKPassDetailBankConnectSectionController.sectionIdentifiers.getter()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 currentSegment])
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = *&v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass];
  if (result)
  {
    if (![result activationState])
    {
      v10 = &v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
      if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24])
      {
        if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
        {
          v11 = *(v10 + 1);
          v12 = *v10;
          v13 = [v12 isAccountEnabled];

          if ((v13 & (v11 == 0)) != 0)
          {
            v9 = &unk_1F3B8FA10;
          }

          else
          {
            v9 = &unk_1F3B8FA50;
          }
        }

        else
        {
          v9 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v9 = &unk_1F3B8F9E0;
      }

      sub_1BE04D114();
      sub_1BE048C84();
      v14 = sub_1BE04D204();
      v15 = sub_1BE052C54();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315138;
        v18 = MEMORY[0x1BFB3F7F0](v9, MEMORY[0x1E69E6158]);
        v20 = v19;

        v21 = sub_1BD123690(v18, v20, &v23);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_1BD026000, v14, v15, "Reloaded section identifiers for PKPassDetailBankConnectSectionController: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1BFB45F20](v17, -1, -1);
        MEMORY[0x1BFB45F20](v16, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v7, v2);
      return v9;
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

char *PKPassDetailBankConnectSectionController.init(pass:delegate:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass;
  *&v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass] = 0;
  swift_unknownObjectWeakInit();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = a1;

  swift_unknownObjectWeakAssign();
  sub_1BE049DD4();
  v8 = [v7 primaryAccountIdentifier];
  sub_1BE052434();

  v9 = sub_1BE049DB4();

  *&v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_accountProvider] = v9;
  *&v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_institutionMatcher] = [objc_allocWithZone(sub_1BE049DF4()) init];
  v10 = &v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  v10[24] = 2;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_accountProvider];
  v13 = v11;
  v14 = v12;
  sub_1BE049DC4();

  swift_unknownObjectRelease();
  return v13;
}

uint64_t PKPassDetailBankConnectSectionController.preflight()()
{
  v1[2] = v0;
  v2 = sub_1BE04D214();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_1BE0528A4();
  v1[8] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD96EB34, v4, v3);
}

uint64_t sub_1BD96EB34()
{
  if ([*(v0 + 16) detailViewStyle] == 2)
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1BE04D114();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "Running preflight for PKPassDetailBankConnectSectionController", v5, 2u);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    v6 = *(v0 + 56);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);

    v9 = *(v8 + 8);
    *(v0 + 88) = v9;
    v9(v6, v7);
    v11 = (*MEMORY[0x1E6967C10] + MEMORY[0x1E6967C10]);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_1BD96ED04;

    return v11();
  }
}

uint64_t sub_1BD96ED04(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_1BD96EFA0;
  }

  else
  {
    v7 = sub_1BD96EE48;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD96EE48()
{
  v1 = *(v0 + 104);

  if (v1)
  {
    v2 = *(v0 + 104);
    sub_1BD96F4AC(v2);
  }

  else
  {
    sub_1BE04D114();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "Did not find a stored account, starting institutions matching", v5, 2u);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    v6 = *(v0 + 88);
    v7 = *(v0 + 48);
    v8 = *(v0 + 24);

    v6(v7, v8);
    sub_1BD96F148();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD96EFA0()
{
  v1 = *(v0 + 112);

  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 112);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to preflight a Bank Connect section: %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 88))(*(v0 + 40), *(v0 + 24));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BD96F148()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE051FA4();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  aBlock[4] = sub_1BD97616C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_69_2;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v17);
  result = PKRunningInViewService();
  if ((result & 1) == 0)
  {
    result = *&v13[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass];
    if (result)
    {
      v15 = [result fkPaymentPass];
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      sub_1BE049DE4();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD96F4AC(void *a1)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE051FA4();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BD976164;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_63_3;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = a1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

uint64_t sub_1BD96F8EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1BE0528A4();
  v2[4] = sub_1BE052894();
  v4 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD96F984, v4, v3);
}

uint64_t sub_1BD96F984()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BD29AF2C;

  return PKPassDetailBankConnectSectionController.preflight()();
}

Swift::Void __swiftcall PKPassDetailBankConnectSectionController.update(pass:)(PKPaymentPass pass)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - v6;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass;
  v14 = *&v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass];
  if (!v14 || (sub_1BD0E5E8C(0, &unk_1EBD40340), v15 = pass.super.super.super.super.isa, v16 = v14, v17 = sub_1BE053074(), v15, v16, (v17 & 1) == 0))
  {
    sub_1BE04D114();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v18, v19, "Updating pass in PKPassDetailBankConnectSectionController", v20, 2u);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v21 = *&v2[v13];
    *&v2[v13] = pass;

    v22 = sub_1BE0528D4();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v2;
    v24 = pass.super.super.super.super.isa;
    v25 = v2;
    sub_1BD122C00(0, 0, v7, &unk_1BE107EA0, v23);
  }
}

uint64_t sub_1BD96FCE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return PKPassDetailBankConnectSectionController.preflight()();
}