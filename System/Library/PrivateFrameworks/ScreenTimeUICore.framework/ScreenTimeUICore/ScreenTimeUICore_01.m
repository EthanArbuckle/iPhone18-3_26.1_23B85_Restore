uint64_t sub_264D97128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF8, qword_264E26858);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264D97268()
{
  sub_264D9733C(319, &qword_27FFB1D10, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  if (v0 <= 0x3F)
  {
    sub_264D9733C(319, &qword_27FFB1D18, type metadata accessor for STActivityMode);
    if (v1 <= 0x3F)
    {
      sub_264D97390();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264D9733C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264E24DB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_264D97390()
{
  if (!qword_27FFB19F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1860, &qword_264E267E0);
    v0 = sub_264E24E98();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB19F0);
    }
  }
}

uint64_t sub_264D97408(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UsageHeaderView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UsageOverviewChart.Model(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = type metadata accessor for UsageDetailChart.Model(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for CategoriesLegendView.Model(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = type metadata accessor for UsageChartFooterView.Model(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_264E238E8();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_264D97634(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UsageHeaderView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for UsageOverviewChart.Model(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for UsageDetailChart.Model(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = type metadata accessor for CategoriesLegendView.Model(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = type metadata accessor for UsageChartFooterView.Model(0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_264E238E8();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_264D97858()
{
  result = type metadata accessor for UsageHeaderView.Model(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UsageOverviewChart.Model(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for UsageDetailChart.Model(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for CategoriesLegendView.Model(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for UsageChartFooterView.Model(319);
          if (v5 <= 0x3F)
          {
            result = sub_264E238E8();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_264D97940()
{
  result = qword_27FFB1D30;
  if (!qword_27FFB1D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1D38, &qword_264E268A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1D30);
  }

  return result;
}

uint64_t sub_264D979A4(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v79 = sub_264E23C18();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v63 - v9;
  v86 = sub_264E238E8();
  v10 = *(v86 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v86);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_264E23AA8();
  v68 = *(v85 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v85);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D98, &unk_264E268F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v82 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = v2;
  v81 = &v63 - v22;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v24 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) + 36));
  }

  v67 = v23;
  v25 = *(v23 + 64);
  v64 = v23 + 64;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v65 = v68 + 16;
  v84 = (v68 + 32);
  v77 = *MEMORY[0x277CC9940];
  v75 = (v4 + 8);
  v76 = (v4 + 104);
  v74 = (v10 + 48);
  v71 = (v10 + 32);
  v70 = (v10 + 8);
  v69 = (v68 + 8);

  v31 = 0;
  v32 = 0.0;
  v66 = v15;
  if (v28)
  {
    while (1)
    {
      v33 = v31;
LABEL_15:
      v36 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v37 = v36 | (v33 << 6);
      v38 = v67;
      v39 = v68;
      v40 = v83;
      v41 = v85;
      (*(v68 + 16))(v83, *(v67 + 48) + *(v68 + 72) * v37, v85);
      v42 = *(*(v38 + 56) + 8 * v37);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      v44 = *(v43 + 48);
      v45 = *(v39 + 32);
      v46 = v82;
      v45(v82, v40, v41);
      *&v46[v44] = v42;
      (*(*(v43 - 8) + 56))(v46, 0, 1, v43);
      v35 = v33;
      v47 = v46;
      v15 = v66;
LABEL_16:
      v48 = v81;
      sub_264D90E64(v47, v81, &qword_27FFB1D98, &unk_264E268F0);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
      {
      }

      v50 = v35;
      v51 = *(v48 + *(v49 + 48));
      v52 = v85;
      (*v84)(v15, v48, v85);
      v53 = v87;
      v55 = v78;
      v54 = v79;
      (*v76)(v78, v77, v79);
      sub_264E23B08();
      v56 = v86;
      (*v75)(v55, v54);
      result = (*v74)(v53, 1, v56);
      if (result == 1)
      {
        goto LABEL_25;
      }

      v57 = v72;
      v58 = v86;
      (*v71)(v72, v87, v86);
      v59 = v83;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v70)(v57, v58);
      LOBYTE(v57) = sub_264E23A78();
      v60 = *v69;
      (*v69)(v59, v52);
      result = v60(v15, v52);
      if (v57)
      {
        v32 = v32 + v51;
      }

      v31 = v50;
      if (!v28)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v29 <= v31 + 1)
    {
      v34 = v31 + 1;
    }

    else
    {
      v34 = v29;
    }

    v35 = v34 - 1;
    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v29)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
        v62 = v82;
        (*(*(v61 - 8) + 56))(v82, 1, 1, v61);
        v47 = v62;
        v28 = 0;
        goto LABEL_16;
      }

      v28 = *(v64 + 8 * v33);
      ++v31;
      if (v28)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_264D980BC()
{
  result = qword_27FFB1D68;
  if (!qword_27FFB1D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1D50, &qword_264E268C0);
    sub_264D98234(&qword_27FFB1D70, type metadata accessor for UsageDetailChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1D68);
  }

  return result;
}

unint64_t sub_264D98178()
{
  result = qword_27FFB1D78;
  if (!qword_27FFB1D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1D40, &qword_264E268B0);
    sub_264D98234(&qword_27FFB1D80, type metadata accessor for UsageOverviewChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1D78);
  }

  return result;
}

uint64_t sub_264D98234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264D9827C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_264D982F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_264D98338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264D983A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_264E244D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_264E24C88();
  (*(v13 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  (*(v13 + 32))(v17 + v16, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *a4 = v15;
  a4[1] = sub_264D987CC;
  a4[2] = v17;
  a4[3] = 0;
  a4[4] = 0;
}

uint64_t sub_264D98518()
{
  sub_264E244C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DB8, &qword_264E269B0);
  return sub_264E24E58();
}

uint64_t sub_264D985B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = v7;
  *(v9 + 5) = v8;

  v10 = sub_264E24F58();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA8, &qword_264E269A0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DB0, &qword_264E269A8);
  v15 = (a2 + *(result + 36));
  *v15 = sub_264D986F4;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

uint64_t sub_264D986B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264D98700()
{
  v1 = sub_264E244D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264D987CC()
{
  v1 = *(*(sub_264E244D8() - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  return sub_264D98518();
}

unint64_t sub_264D98838()
{
  result = qword_27FFB1DC0;
  if (!qword_27FFB1DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1DB0, &qword_264E269A8);
    sub_264D81DCC(&qword_27FFB1DC8, &qword_27FFB1DA8, &qword_264E269A0);
    sub_264D81DCC(&qword_27FFB1DD0, qword_27FFB1DD8, &qword_264E269B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1DC0);
  }

  return result;
}

uint64_t sub_264D98AB0(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_264D98E4C(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_264D99040(const void *a1)
{
  *(v1 + 56) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_264D990A8, 0, 0);
}

uint64_t sub_264D990A8()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E70, &qword_264E26AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264E269C0;
  sub_264E23F38();
  *(inited + 32) = sub_264E23F28();
  sub_264DC66B4(inited);
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  sub_264D9B7A4();
  v4 = sub_264E25268();

  (v1)[2](v1, v4, 0);

  _Block_release(v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264D991C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v46 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v46 - v6;
  v8 = sub_264E23928();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = v46 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E70, &qword_264E26AF0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_264E269D0;
  v13 = sub_264E23C38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v7, 1, 1, v13);
  v17 = sub_264E23C48();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v49 = v17;
  v19(v3, 1, 1, v17);
  v50 = v19;
  sub_264E23918();
  v15(v7, 1, 1, v13);
  v19(v3, 1, 1, v17);
  v21 = v20;
  sub_264E23918();
  v52 = sub_264E23F88();
  v22 = objc_allocWithZone(v52);
  *(v54 + 32) = sub_264E23F78();
  v46[1] = v16;
  v47 = v15;
  v15(v7, 1, 1, v13);
  v23 = v49;
  v24 = v50;
  v48 = v21;
  v50(v3, 1, 1, v49);
  sub_264E23918();
  v15(v7, 1, 1, v13);
  v24(v3, 1, 1, v23);
  sub_264E23918();
  v25 = objc_allocWithZone(v52);
  *(v54 + 40) = sub_264E23F78();
  v46[0] = v13;
  v26 = v47;
  v47(v7, 1, 1, v13);
  v27 = v50;
  v50(v3, 1, 1, v23);
  sub_264E23918();
  v26(v7, 1, 1, v13);
  v27(v3, 1, 1, v23);
  sub_264E23918();
  v28 = objc_allocWithZone(v52);
  *(v54 + 48) = sub_264E23F78();
  v29 = v46[0];
  v26(v7, 1, 1, v46[0]);
  v30 = v50;
  v50(v3, 1, 1, v23);
  sub_264E23918();
  v26(v7, 1, 1, v29);
  v30(v3, 1, 1, v23);
  v31 = v30;
  sub_264E23918();
  v32 = objc_allocWithZone(v52);
  *(v54 + 56) = sub_264E23F78();
  v33 = v29;
  v34 = v29;
  v35 = v47;
  v47(v7, 1, 1, v34);
  v36 = v49;
  v31(v3, 1, 1, v49);
  sub_264E23918();
  v35(v7, 1, 1, v33);
  v31(v3, 1, 1, v36);
  sub_264E23918();
  v37 = objc_allocWithZone(v52);
  *(v54 + 64) = sub_264E23F78();
  v35(v7, 1, 1, v33);
  v38 = v49;
  v31(v3, 1, 1, v49);
  sub_264E23918();
  v35(v7, 1, 1, v33);
  v39 = v38;
  v31(v3, 1, 1, v38);
  sub_264E23918();
  v40 = objc_allocWithZone(v52);
  *(v54 + 72) = sub_264E23F78();
  v41 = v46[0];
  v35(v7, 1, 1, v46[0]);
  v31(v3, 1, 1, v39);
  sub_264E23918();
  v35(v7, 1, 1, v41);
  v31(v3, 1, 1, v39);
  sub_264E23918();
  v42 = objc_allocWithZone(v52);
  v43 = sub_264E23F78();
  v44 = v54;
  *(v54 + 80) = v43;
  return v44;
}

uint64_t sub_264D9A1AC(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_264D9A258;

  return sub_264D9B588();
}

uint64_t sub_264D9A258(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_264E23948();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

void *sub_264D9A468()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t sub_264D9A498()
{
  sub_264D9A468();

  return swift_deallocClassInstance();
}

uint64_t sub_264D9A4E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264D9A59C;

  return sub_264D9A1AC(v2, v3);
}

uint64_t sub_264D9A59C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264D9A690(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_264D9BB74;

  return v7();
}

uint64_t sub_264D9A778()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264D9BB74;

  return sub_264D9A690(v2, v3, v5);
}

uint64_t sub_264D9A838(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_264D9A59C;

  return v8();
}

uint64_t sub_264D9A924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264D9BB74;

  return sub_264D9A838(a1, v4, v5, v7);
}

uint64_t sub_264D9A9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_264D9ACAC(a3, v25 - v11);
  v13 = sub_264E25248();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_264D9AD1C(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_264E25238();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_264E25208();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_264E25158() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_264D9AD1C(a3);

    return v23;
  }

LABEL_8:
  sub_264D9AD1C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_264D9ACAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D9AD1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264D9AD84(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D9AE7C;

  return v7(a1);
}

uint64_t sub_264D9AE7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264D9AF74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D9AFAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264D9BB74;

  return sub_264D9AD84(a1, v5);
}

uint64_t sub_264D9B064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264D9A59C;

  return sub_264D9AD84(a1, v5);
}

uint64_t sub_264D9B11C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_264E25418();
    sub_264E23F48();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_264E253A8();
    v4 = 0xD000000000000046;
    v3 = 0x8000000264E2B820;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  sub_264E23F48();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_264E253A8();
  v3 = 0x8000000264E2B7D0;
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x26674F2E0](v4, v3);
  MEMORY[0x26674F2E0](0x74696D694C707041, 0xE800000000000000);
  MEMORY[0x26674F2E0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_264E254D8();
  MEMORY[0x26674F2E0](v6);

  result = sub_264E253F8();
  __break(1u);
  return result;
}

void sub_264D9B2BC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_264E25408())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E68, &qword_264E26AD8);
      v3 = sub_264E25388();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_264E25408();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_264D9B11C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_264E252F8();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_264E23F48();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_264E25308();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_264E252F8();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_264E23F48();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_264E25308();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_264D9B5A4()
{
  sub_264D991C8();
  v1 = objc_allocWithZone(sub_264E23F68());
  sub_264E23F58();
  sub_264E23F18();
  sub_264E23F08();
  if (MEMORY[0x277D84F90] >> 62 && sub_264E25408())
  {
    sub_264D9B2BC(MEMORY[0x277D84F90]);
  }

  v2 = objc_allocWithZone(sub_264E23EF8());
  v3 = sub_264E23EE8();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_264D9B6B8()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D9B6F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264D9BB74;

  return sub_264D99040(v2);
}

unint64_t sub_264D9B7A4()
{
  result = qword_27FFB1E78;
  if (!qword_27FFB1E78)
  {
    sub_264E23F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1E78);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264D9B844()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264D9BB74;

  return sub_264D98E4C(v2, v3);
}

uint64_t sub_264D9B8FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264D9BB74;

  return sub_264D9BB3C(v2, v3, v5);
}

uint64_t objectdestroy_55Tm()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264D9BA0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264D9BB74;

  return sub_264D9BB40(v2, v3, v5);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_264D9BB9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_264D9BBE4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_264D9BC5C(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_264D9BD1C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for MostUsedListSectionNotifications()
{
  result = qword_27FFB1E80;
  if (!qword_27FFB1E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264D9BE0C()
{
  result = sub_264E238E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264D9BEA4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_264D9BEB0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E98, &qword_264E26C60);
  v15 = *(v5 - 8);
  v6 = *(v15 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = type metadata accessor for MostUsedListSectionNotifications();
  v10 = sub_264D9C104(v1 + *(v9 + 20));
  if (*(v10 + 16))
  {
    MEMORY[0x28223BE20](v10);
    *(&v14 - 2) = v11;
    *(&v14 - 1) = v1;
    sub_264D9CCEC();
    sub_264D9CE9C();
    sub_264D9CF58();
    sub_264E24F18();

    (*(v15 + 32))(a1, v8, v5);
    return (*(v15 + 56))(a1, 0, 1, v5);
  }

  else
  {

    v13 = *(v15 + 56);

    return v13(a1, 1, 1, v5);
  }
}

uint64_t sub_264D9C104(uint64_t a1)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
  v3 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v84 - v6;
  v92 = MEMORY[0x277D84F98];
  v7 = *v1;
  v91 = a1;
  sub_264DA260C(sub_264DA5CC8, v90, v7, &qword_27FFB1ED0, &qword_264E28610);
  v84 = 0;
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v89 = v8;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    v88 = v15;
    if (!v12)
    {
      break;
    }

LABEL_10:
    v17 = __clz(__rbit64(v12)) | (v14 << 6);
    v18 = v89;
    v19 = *(v89 + 48);
    v20 = sub_264E238E8();
    v21 = *(v20 - 8);
    v22 = v85;
    (*(v21 + 16))(v85, v19 + *(v21 + 72) * v17, v20);
    v23 = *(*(v18 + 56) + 8 * v17);
    v24 = v87;
    *&v22[*(v87 + 48)] = v23;
    v25 = v22;
    v26 = v86;
    sub_264DA56B8(v25, v86);
    v27 = *(v26 + *(v24 + 48));
    v28 = *(v21 + 8);

    v28(v26, v20);
    v29 = *(v27 + 16);
    v15 = v88;
    v30 = *(v88 + 2);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      sub_264E25498();
      __break(1u);
      goto LABEL_60;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v31 > *(v15 + 3) >> 1)
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      v15 = sub_264DBBCB4(isUniquelyReferenced_nonNull_native, v33, 1, v15);
    }

    v12 &= v12 - 1;
    if (*(v27 + 16))
    {
      if ((*(v15 + 3) >> 1) - *(v15 + 2) < v29)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v34 = *(v15 + 2);
        v35 = __OFADD__(v34, v29);
        v36 = v34 + v29;
        if (v35)
        {
          goto LABEL_57;
        }

        *(v15 + 2) = v36;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  v87 = *(v15 + 2);
  if (v87)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = v15 + 32;
    while (v39 < *(v88 + 2))
    {
      v89 = v39;
      v42 = *(v40 + 1);
      v41 = *(v40 + 2);
      v43 = *v40;
      v96 = v40[48];
      v94 = v42;
      v95 = v41;
      v93 = v43;
      v14 = *(&v43 + 1);
      v44 = v43;
      v45 = swift_allocObject();
      v47 = *(v40 + 1);
      v46 = *(v40 + 2);
      v48 = *v40;
      *(v45 + 64) = v40[48];
      *(v45 + 32) = v47;
      *(v45 + 48) = v46;
      *(v45 + 16) = v48;
      sub_264DA5778(&v93, v97);
      sub_264DA5778(&v93, v97);

      sub_264D91628(v37);
      v49 = swift_allocObject();
      *(v49 + 16) = sub_264DA5770;
      *(v49 + 24) = v45;
      v50 = v49;
      sub_264D91628(v38);
      v51 = v92;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v97[0] = v51;
      v54 = sub_264D9D57C(v44, v14);
      v55 = v51[2];
      v56 = (v53 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_50;
      }

      v58 = v53;
      if (v51[3] >= v57)
      {
        if ((v52 & 1) == 0)
        {
          sub_264DA1158(&qword_27FFB1EC0, &qword_264E26C78);
          v51 = v97[0];
        }
      }

      else
      {
        sub_264D9E3EC(v57, v52, &qword_27FFB1EC0, &qword_264E26C78);
        v51 = v97[0];
        v59 = sub_264D9D57C(v44, v14);
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_59;
        }

        v54 = v59;
      }

      v92 = v51;
      if (v58)
      {

        v61 = 56 * v54;
      }

      else
      {
        v62 = *(v50 + 24);
        (*(v50 + 16))(v97);
        v63 = v97[0];
        v64 = v97[1];
        v65 = v99;
        v66 = v100;
        v67 = v101;
        v61 = 56 * v54;
        v68 = v98;
        v51[(v54 >> 6) + 8] |= 1 << v54;
        v69 = (v51[6] + 16 * v54);
        *v69 = v44;
        v69[1] = v14;
        v70 = v51[7] + 56 * v54;
        *v70 = v63;
        *(v70 + 8) = v64;
        *(v70 + 16) = v68;
        *(v70 + 32) = v65;
        *(v70 + 40) = v66;
        *(v70 + 48) = v67 & 1;
        v71 = v51[2];
        v35 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v35)
        {
          goto LABEL_53;
        }

        v51[2] = v72;
      }

      v14 = v94;
      v73 = v51[7] + v61;
      v74 = *(v73 + 16);
      v35 = __OFADD__(v74, v94);
      v75 = v74 + v94;
      if (v35)
      {
        goto LABEL_51;
      }

      *(v73 + 16) = v75;
      v77 = sub_264D9D1F4(v97, 0x7070416C6C415F5FLL, 0xEB000000005F5F73);
      if (*(v76 + 8))
      {
        v78 = *(v76 + 16);
        v35 = __OFADD__(v78, v14);
        v79 = v78 + v14;
        if (v35)
        {
          goto LABEL_52;
        }

        *(v76 + 16) = v79;
      }

      (v77)(v97, 0);
      v39 = v89 + 1;
      sub_264DA5814(&v93);
      v40 += 56;
      v38 = sub_264DA57C0;
      v37 = sub_264DA5770;
      if (v87 == v39)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_49;
  }

  v37 = 0;
  v38 = 0;
LABEL_42:

  v80 = v92;
  v81 = v92[2];
  if (v81)
  {
    v14 = sub_264D8C320(v92[2], 0);
    v89 = sub_264D9163C(v97, v14 + 32, v81, v80);
    v88 = *(&v98 + 1);
    v87 = v99;
    swift_bridgeObjectRetain_n();
    sub_264D8F07C();
    if (v89 != v81)
    {
      goto LABEL_58;
    }
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v97[0] = v14;
  v14 = v84;
  sub_264DA5614(v97, &unk_2876A2C88);
  if (!v14)
  {

    v82 = v97[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB8, &qword_264E26C70);
    swift_arrayDestroy();

    sub_264D91628(v37);
    sub_264D91628(v38);
    return v82;
  }

LABEL_60:

  __break(1u);
  return result;
}

double sub_264D9C914@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = *(type metadata accessor for MostUsedListSectionNotifications() + 20);

  v7 = sub_264D9C98C(a2 + v6);
  sub_264E02738(a1, v10, v7);
  result = v10[0].n128_f64[0];
  v9 = v10[1];
  *a3 = v10[0];
  a3[1] = v9;
  a3[2].n128_u8[0] = v11;
  return result;
}

char *sub_264D9C98C(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
  v3 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v41 - v6;
  v7 = *v1;
  v48 = a1;
  sub_264DA260C(sub_264DA59A0, v47, v7, &qword_27FFB1ED0, &qword_264E28610);
  v9 = *(v8 + 64);
  v41 = 0;
  v42 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v46 = v8;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v12)
  {
LABEL_10:
    v18 = __clz(__rbit64(v12)) | (v15 << 6);
    v19 = v46;
    v20 = *(v46 + 48);
    v21 = sub_264E238E8();
    v22 = *(v21 - 8);
    v23 = v43;
    (*(v22 + 16))(v43, v20 + *(v22 + 72) * v18, v21);
    v24 = *(*(v19 + 56) + 8 * v18);
    v25 = v45;
    *&v23[*(v45 + 48)] = v24;
    v26 = v23;
    v27 = v44;
    sub_264DA56B8(v26, v44);
    v28 = *(v27 + *(v25 + 48));
    v29 = *(v22 + 8);

    result = v29(v27, v21);
    v30 = *(v28 + 16);
    v31 = *(v16 + 2);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
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

      result = sub_264DBBCB4(result, v33, 1, v16);
      v16 = result;
    }

    v12 &= v12 - 1;
    if (*(v28 + 16))
    {
      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v30)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v34 = *(v16 + 2);
        v35 = __OFADD__(v34, v30);
        v36 = v34 + v30;
        if (v35)
        {
          goto LABEL_32;
        }

        *(v16 + 2) = v36;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v42 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  v37 = 0;
  v38 = *(v16 + 2) + 1;
  v39 = 48;
  while (--v38)
  {
    v40 = *&v16[v39];
    v39 += 56;
    v35 = __OFADD__(v37, v40);
    v37 += v40;
    if (v35)
    {
      __break(1u);
      break;
    }
  }

  return v37;
}

uint64_t sub_264D9CCEC()
{
  sub_264E247D8();
  v0 = sub_264E24AE8();
  v2 = v1;
  v4 = v3;
  sub_264E24A78();
  v5 = sub_264E24AD8();
  v7 = v6;
  v9 = v8;

  sub_264D817AC(v0, v2, v4 & 1);

  sub_264E248D8();
  v10 = sub_264E24AC8();
  v12 = v11;
  LOBYTE(v0) = v13;
  sub_264D817AC(v5, v7, v9 & 1);

  sub_264E24C08();
  sub_264D817AC(v10, v12, v0 & 1);
}

unint64_t sub_264D9CE9C()
{
  result = qword_27FFB1EA0;
  if (!qword_27FFB1EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1E90, &unk_264E26F50);
    sub_264DA59C0(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1EA0);
  }

  return result;
}

unint64_t sub_264D9CF58()
{
  result = qword_27FFB1EA8;
  if (!qword_27FFB1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1EA8);
  }

  return result;
}

uint64_t sub_264D9CFAC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
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

  sub_264DA5898(v13);
  return v17 & 1;
}

uint64_t sub_264D9D194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
}

uint64_t (*sub_264D9D1F4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_264DA27AC(v6, a2, a3);
  return sub_264DA5CE8;
}

uint64_t (*sub_264D9D27C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_264DA2858(v6, a2, a3);
  return sub_264D9D304;
}

void sub_264D9D308(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_264D9D36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    result = 0;
  }

  else
  {
    result = sub_264E25478();
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_264D9D3C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *(a2 + 48);
  v17 = (a3 + 40);
  v18 = *(a1 + 48);
  v43 = v18;
  v27 = v8;
  v28 = v9;
  v25 = v6;
  v26 = v7;
  v23 = v4;
  v24 = v5;
  while (1)
  {
    v22 = v3;
    v20 = *(v17 - 1);
    v19 = *v17;
    v36 = v4;
    v37 = v5;
    v38 = v6;
    v39 = v7;
    v40 = v8;
    v41 = v9;
    v42 = v18;
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v35 = v16;

    v20(&v44, &v36, &v29);
    if (v44)
    {
      break;
    }

    v36 = v10;
    v37 = v11;
    v38 = v12;
    v39 = v13;
    v40 = v14;
    v41 = v15;
    v42 = v16;
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v34 = v28;
    v35 = v43;
    v20(&v44, &v36, &v29);
    if (v44)
    {
      break;
    }

    v17 += 2;
    v3 = v22 - 1;
    v4 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
    v9 = v28;
    v18 = v43;
    if (v22 == 1)
    {
      return 0;
    }
  }

  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v43;
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v20(&v44, &v36, &v29);

  return v44;
}

unint64_t sub_264D9D57C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_264E254A8();
  sub_264E25168();
  v6 = sub_264E254C8();

  return sub_264D9D79C(a1, a2, v6);
}

unint64_t sub_264D9D5F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_264E23AA8();
  v5 = MEMORY[0x277CC9578];
  sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578]);
  v6 = sub_264E25038();
  return sub_264D9D854(a1, v6, MEMORY[0x277CC9578], &qword_27FFB1868, v5, MEMORY[0x277CC9598]);
}

unint64_t sub_264D9D6C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_264E238E8();
  v5 = MEMORY[0x277CC88A8];
  sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8]);
  v6 = sub_264E25038();
  return sub_264D9D854(a1, v6, MEMORY[0x277CC88A8], &qword_27FFB1F20, v5, MEMORY[0x277CC88C8]);
}

unint64_t sub_264D9D79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_264E25478())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264D9D854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8, v11);
      sub_264DA59C0(v25, v26);
      v21 = sub_264E25068();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

uint64_t sub_264D9D9F4(char *__src, char *a2, char *a3, char *__dst, uint64_t a5)
{
  v6 = v5;
  v79 = a5;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = (a2 - __src) / 56;
  v12 = a3 - a2;
  v13 = (a3 - a2) / 56;
  if (v11 < v13)
  {
    v14 = 56 * v11;
    if (__dst != __src || &__src[v14] <= __dst)
    {
      v15 = __dst;
      memmove(__dst, __src, v14);
      __dst = v15;
    }

    v16 = &__dst[v14];
    if (v10 < 56 || v8 >= v7)
    {
      v33 = v9;
      v17 = __dst;
      goto LABEL_47;
    }

    v17 = __dst;
    v65 = &__dst[v14];
    while (1)
    {
      v18 = *(v8 + 1);
      v19 = *(v8 + 4);
      v20 = *(v8 + 5);
      v21 = v8[48];
      v73 = *v8;
      v74 = v18;
      v75 = *(v8 + 1);
      v76 = v19;
      v77 = v20;
      v78 = v21;
      v22 = *(v17 + 1);
      v24 = *(v17 + 4);
      v23 = *(v17 + 5);
      v25 = v17[48];
      v67 = *v17;
      v68 = v22;
      v69 = *(v17 + 1);
      v70 = v24;
      v71 = v23;
      v72 = v25;

      v26 = sub_264D9D3C4(&v73, &v67, v79);
      if (v6)
      {

        v58 = 56 * ((v65 - v17) / 56);
        if (v9 < v17 || v9 >= &v17[v58] || v9 != v17)
        {
          v33 = v9;
          goto LABEL_50;
        }

        goto LABEL_52;
      }

      v27 = v26;

      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = v8;
      v29 = v9 == v8;
      v8 += 56;
      v16 = v65;
      if (!v29)
      {
        goto LABEL_14;
      }

LABEL_15:
      v9 += 56;
      if (v17 >= v16 || v8 >= v7)
      {
        v33 = v9;
        goto LABEL_47;
      }
    }

    v28 = v17;
    v29 = v9 == v17;
    v17 += 56;
    v16 = v65;
    if (v29)
    {
      goto LABEL_15;
    }

LABEL_14:
    v30 = *v28;
    v31 = *(v28 + 1);
    v32 = *(v28 + 2);
    *(v9 + 6) = *(v28 + 6);
    *(v9 + 1) = v31;
    *(v9 + 2) = v32;
    *v9 = v30;
    goto LABEL_15;
  }

  v34 = 56 * v13;
  v17 = __dst;
  if (__dst != a2 || &a2[v34] <= __dst)
  {
    memmove(__dst, a2, 56 * v13);
  }

  v16 = &v17[v34];
  if (v12 < 56 || v8 <= v9)
  {
    v33 = v8;
    goto LABEL_47;
  }

  __srca = v17;
  v61 = v9;
LABEL_24:
  v66 = v6;
  v35 = 0;
  v36 = v16;
  v62 = v8 - 56;
  v63 = v7;
  while (1)
  {
    v37 = v36;
    v38 = &v36[v35];
    v39 = &v36[v35 - 56];
    v40 = *&v36[v35 - 48];
    v41 = *&v36[v35 - 24];
    v42 = *&v36[v35 - 16];
    v43 = v36[v35 - 8];
    v44 = *(v38 - 40);
    v73 = *v39;
    v74 = v40;
    v75 = v44;
    v76 = v41;
    v77 = v42;
    v78 = v43;
    v45 = *(v8 - 6);
    v47 = *(v8 - 3);
    v46 = *(v8 - 2);
    v48 = *(v8 - 8);
    v67 = *(v8 - 7);
    v68 = v45;
    v69 = *(v8 - 40);
    v70 = v47;
    v71 = v46;
    v72 = v48;

    v49 = sub_264D9D3C4(&v73, &v67, v79);
    if (v66)
    {
      break;
    }

    v50 = v49;

    if (v50)
    {
      v33 = v8 - 56;
      v7 = v63 + v35 - 56;
      if (v63 + v35 != v8)
      {
        v55 = *v62;
        v56 = *(v8 - 40);
        v57 = *(v8 - 24);
        *(v63 + v35 - 8) = *(v8 - 1);
        *(v63 + v35 - 40) = v56;
        *(v63 + v35 - 24) = v57;
        *v7 = v55;
      }

      v16 = &v37[v35];
      v6 = 0;
      if (&v37[v35] <= __srca || (v8 -= 56, v62 <= v61))
      {
        v16 = &v37[v35];
        goto LABEL_46;
      }

      goto LABEL_24;
    }

    if (v63 + v35 != v38)
    {
      v51 = v63 + v35 - 56;
      v52 = *v39;
      v53 = *(v39 + 16);
      v54 = *(v39 + 32);
      *(v51 + 48) = *(v39 + 48);
      *(v51 + 16) = v53;
      *(v51 + 32) = v54;
      *v51 = v52;
    }

    v35 -= 56;
    v36 = v37;
    v16 = &v37[v35];
    if (&v37[v35] <= __srca)
    {
      v33 = v8;
LABEL_46:
      v17 = __srca;
LABEL_47:
      v58 = 56 * ((v16 - v17) / 56);
      if (v33 >= v17 && v33 < &v17[v58] && v33 == v17)
      {
        goto LABEL_52;
      }

LABEL_50:
      v59 = v17;
LABEL_51:
      memmove(v33, v59, v58);
      goto LABEL_52;
    }
  }

  v59 = __srca;
  v58 = 56 * ((v37 - __srca + v35) / 56);
  if (v8 < __srca || v8 >= &__srca[v58])
  {
    memmove(v8, __srca, v58);
    goto LABEL_52;
  }

  if (v8 != __srca)
  {
    v33 = v8;
    goto LABEL_51;
  }

LABEL_52:

  return 1;
}

uint64_t sub_264D9DF90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264D9E01C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_264D9E030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EC8, &unk_264E26C80);
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

uint64_t sub_264D9E134(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F08, &qword_264E28600);
  v37 = a2;
  result = sub_264E25438();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_264E254A8();
      sub_264E25168();
      result = sub_264E254C8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_264D9E3EC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = a2;
  result = sub_264E25438();
  v10 = result;
  if (*(v7 + 16))
  {
    v40 = v4;
    v41 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = (*(v7 + 48) + 16 * v24);
      v26 = v25[1];
      v47 = *v25;
      v27 = *(v7 + 56) + 56 * v24;
      v28 = *(v27 + 8);
      v45 = *v27;
      v46 = *(v27 + 16);
      v30 = *(v27 + 32);
      v29 = *(v27 + 40);
      v43 = *(v27 + 48);
      if ((v42 & 1) == 0)
      {
      }

      v31 = *(v10 + 40);
      sub_264E254A8();
      sub_264E25168();
      result = sub_264E254C8();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v18 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v47;
      v19[1] = v26;
      v20 = *(v10 + 56) + 56 * v18;
      v15 = v44;
      *v20 = v45;
      *(v20 + 8) = v28;
      *(v20 + 16) = v46;
      *(v20 + 32) = v30;
      *(v20 + 40) = v29;
      *(v20 + 48) = v43;
      ++*(v10 + 16);
      v7 = v41;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v5 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v7 + 32);
    v5 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_264D9E6F0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F28, &unk_264E26CD0);
  v43 = a2;
  result = sub_264E25438();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578]);
      result = sub_264E25038();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_264D9EAB4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_264E238E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F18, qword_264E28670);
  v43 = a2;
  result = sub_264E25438();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8]);
      result = sub_264E25038();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_264D9EE90(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_264E238E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F00, &unk_264E26CB0);
  v43 = a2;
  result = sub_264E25438();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8]);
      result = sub_264E25038();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_264D9F268(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F38, &qword_264E26CE0);
  v43 = a2;
  result = sub_264E25438();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578]);
      result = sub_264E25038();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_264D9F644(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F10, &unk_264E26CC0);
  v44 = a2;
  result = sub_264E25438();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578]);
      result = sub_264E25038();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_264D9FA18(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_264E238E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_264E25438();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8]);
      result = sub_264E25038();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_264D9FE08(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23AA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F30, &qword_264E28630);
  v48 = a2;
  result = sub_264E25438();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_264DA5A6C(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_264DA5A08(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578]);
      result = sub_264E25038();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_264DA5A6C(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_264DA026C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EF8, &qword_264E26CA8);
  v41 = a2;
  result = sub_264E25438();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 56 * v22;
      if (v41)
      {
        v42 = *(v26 + 8);
        v27 = *(v26 + 16);
        v43 = *(v26 + 32);
        v44 = *v26;
        v45 = *(v26 + 40);
        v46 = *(v26 + 24);
        v47 = *(v26 + 48);
        v48 = *(v26 + 49);
        v49 = *(v26 + 50);
      }

      else
      {
        v28 = *v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 32);
        *&v51[15] = *(v26 + 47);
        v50[1] = v29;
        *v51 = v30;
        v50[0] = v28;
        v48 = v51[17];
        v49 = v51[18];
        v47 = v51[16];
        v45 = *(&v30 + 1);
        v46 = *(&v29 + 1);
        v43 = v30;
        v27 = v29;
        v42 = *(&v28 + 1);
        v44 = v28;

        sub_264D90348(v50, v52);
      }

      v31 = *(v8 + 40);
      sub_264E254A8();
      sub_264E25168();
      result = sub_264E254C8();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 56 * v16;
      *v18 = v44;
      *(v18 + 8) = v42;
      *(v18 + 16) = v27;
      *(v18 + 24) = v46;
      *(v18 + 32) = v43;
      *(v18 + 40) = v45;
      *(v18 + 48) = v47;
      *(v18 + 49) = v48;
      *(v18 + 50) = v49;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_264DA05EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264E25378() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 40);
      v13 = (*(a2 + 48) + 16 * v6);
      v14 = *v13;
      v15 = v13[1];
      sub_264E254A8();

      sub_264E25168();
      v16 = sub_264E254C8();

      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v17)
      {
LABEL_10:
        v18 = *(a2 + 48);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
        }

        v21 = *(a2 + 56);
        v22 = v21 + 56 * v3;
        v23 = (v21 + 56 * v6);
        if (56 * v3 < (56 * v6) || v22 >= v23 + 56 || v3 != v6)
        {
          v9 = *v23;
          v10 = v23[1];
          v11 = v23[2];
          *(v22 + 48) = *(v23 + 6);
          *(v22 + 16) = v10;
          *(v22 + 32) = v11;
          *v22 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void sub_264DA07C4(int64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v43 = a2;
    v12 = ~v10;
    v13 = sub_264E25378();
    v14 = v12;
    a2 = v43;
    v42 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = v9;
    v41 = v16;
    v17 = *(v15 + 56);
    v39 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v41(v8, *(a2 + 48) + v17 * v11, v4);
      v22 = *(a2 + 40);
      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578]);
      v23 = sub_264E25038();
      (*v39)(v8, v4);
      v14 = v20;
      v24 = v23 & v20;
      if (a1 >= v42)
      {
        if (v24 >= v42 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v43 + 48) + v18 * a1 >= (*(v43 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v27 = *(v43 + 56);
          v28 = *(*(type metadata accessor for PickupsDetailLegendView.DayPickups(0) - 8) + 72);
          v29 = v28 * a1;
          v30 = v27 + v28 * a1;
          v31 = v28 * v11;
          v32 = v27 + v28 * v11 + v28;
          if (v29 < v31 || v30 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v40;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v34 = v29 == v31;
            v9 = v40;
            v14 = v20;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v42 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v40;
      a2 = v43;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

unint64_t sub_264DA0B08(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_264DA0B50(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_264DA0BFC(unint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), double a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a3[6];
  v10 = a4(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a3[7] + 8 * a1) = a5;
  v12 = a3[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v14;
  }

  return result;
}

uint64_t sub_264DA0CD0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_264DA0D8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_264E23AA8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_264DA0E48(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_264E238E8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_264DA0F00(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  result = sub_264DA5A6C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_264DA0FDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F08, &qword_264E28600);
  v2 = *v0;
  v3 = sub_264E25428();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_264DA1158(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264E25428();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v19 *= 56;
        v24 = *(v4 + 56) + v19;
        v25 = *v24;
        v26 = *(v24 + 8);
        v28 = *(v24 + 32);
        v27 = *(v24 + 40);
        v29 = *(v24 + 48);
        v30 = (*(v6 + 48) + v20);
        v31 = *(v24 + 16);
        *v30 = v22;
        v30[1] = v23;
        v32 = *(v6 + 56) + v19;
        *v32 = v25;
        *(v32 + 8) = v26;
        *(v32 + 16) = v31;
        *(v32 + 32) = v28;
        *(v32 + 40) = v27;
        *(v32 + 48) = v29;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_264DA1370(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v33 = a1(0);
  v35 = *(v33 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_264E25428();
  v11 = v10;
  if (*(v9 + 16))
  {
    v31[0] = v6;
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v34 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v31[1] = v35 + 32;
    v31[2] = v35 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v35;
        v26 = *(v35 + 72) * v24;
        v27 = v32;
        v28 = v33;
        (*(v35 + 16))(v32, *(v9 + 48) + v26, v33);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v34;
        result = (*(v25 + 32))(*(v34 + 48) + v26, v27, v28);
        *(*(v30 + 56) + 8 * v24) = v29;
        v19 = v36;
      }

      while (v36);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v31[0];
        v11 = v34;
        goto LABEL_21;
      }

      v23 = *(v9 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v36 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_264DA1624(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_264E25428();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *sub_264DA18A0()
{
  v1 = v0;
  v32 = sub_264E23AA8();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F10, &unk_264E26CC0);
  v4 = *v0;
  v5 = sub_264E25428();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_264DA1B38(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_264E238E8();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_264E25428();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_264DA1DB0()
{
  v1 = v0;
  v2 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_264E23AA8();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F30, &qword_264E28630);
  v7 = *v0;
  v8 = sub_264E25428();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_264DA5A08(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_264DA5A6C(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_264DA20B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EF8, &qword_264E26CA8);
  v2 = *v0;
  v3 = sub_264E25428();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 56;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[15] = *(v19 + v17 + 47);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 47) = *&v34[15];
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;

        result = sub_264D90348(&v32, v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_264DA2268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_264DA260C(a1, a2, a3, &qword_27FFB1EE0, &qword_264E26C90);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t sub_264DA22C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_264DA23AC(a1, a2, a3, sub_264DA2FA0, sub_264DA2FA0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264DA2338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_264DA23AC(a1, a2, a3, sub_264DA3228, sub_264DA3228);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264DA23AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = sub_264DA3A14(v17, v11, a3, v9, a2, a5);
  result = MEMORY[0x26674FCD0](v17, -1, -1);
  if (!v5)
  {
    result = v18;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264DA253C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_264DA23AC(a1, a2, a3, sub_264DA3480, sub_264DA3480);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_264DA25B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_264DA260C(a1, a2, a3, &qword_27FFB1EF0, &qword_264E26CA0);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_264DA260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a1;
  v17[1] = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      sub_264DA396C(v16, v12, a3, v10, a2, a4, a5);
      MEMORY[0x26674FCD0](v16, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v14 = v17 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, v13);
  sub_264DA36D8(v14, v12, a3, v10, a2, a4, a5);
  if (v5)
  {
    swift_willThrow();
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t (*sub_264DA27AC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_264DA2F44(v8);
  v8[9] = sub_264DA2968(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_264DA5CEC;
}

uint64_t (*sub_264DA2858(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_264DA2F6C(v8);
  v8[9] = sub_264DA2B18(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_264DA2904;
}

void sub_264DA2908(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_264DA2968(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[8] = a3;
  v10[9] = v4;
  v10[7] = a2;
  v12 = *v4;
  v13 = sub_264D9D57C(a2, a3);
  *(v11 + 49) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_264DA1158(&qword_27FFB1EC0, &qword_264E26C78);
      v13 = v21;
      goto LABEL_11;
    }

    sub_264D9E3EC(v18, a4 & 1, &qword_27FFB1EC0, &qword_264E26C78);
    v22 = *v5;
    v13 = sub_264D9D57C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[10] = v13;
  if (v19)
  {
    v24 = *(*v5 + 56) + 56 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 32);
    v29 = *(v24 + 40);
    v30 = *(v24 + 48);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0uLL;
  }

  *v11 = v25;
  v11[1] = v26;
  *(v11 + 1) = v27;
  v11[4] = v28;
  v11[5] = v29;
  *(v11 + 48) = v30;
  return sub_264DA5CF0;
}

uint64_t (*sub_264DA2B18(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[8] = a3;
  v10[9] = v4;
  v10[7] = a2;
  v12 = *v4;
  v13 = sub_264D9D57C(a2, a3);
  *(v11 + 49) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_264DA1158(&qword_27FFB1EE8, &qword_264E26C98);
      v13 = v21;
      goto LABEL_11;
    }

    sub_264D9E3EC(v18, a4 & 1, &qword_27FFB1EE8, &qword_264E26C98);
    v22 = *v5;
    v13 = sub_264D9D57C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[10] = v13;
  if (v19)
  {
    v24 = *(*v5 + 56) + 56 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 32);
    v29 = *(v24 + 40);
    v30 = *(v24 + 48);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0uLL;
  }

  *v11 = v25;
  v11[1] = v26;
  *(v11 + 1) = v27;
  v11[4] = v28;
  v11[5] = v29;
  *(v11 + 48) = v30;
  return sub_264DA2CC8;
}

void sub_264DA2CCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(v2 + 48);
  LOBYTE(v10) = *(v2 + 49);
  if (a2)
  {
    if (!v4)
    {
      if (*(v2 + 49))
      {
        v21 = v2[10];
        v22 = *v2[9];
        v23 = v3;
        v24 = v2[2];
        v25 = v2[3];
        v26 = v2[4];
        v27 = v2[5];
        sub_264DA5844(*(v22 + 48) + 16 * v21);
        sub_264DA05EC(v21, v22);
        v3 = v23;
      }

      goto LABEL_16;
    }

    v11 = v2[10];
    v12 = *v2[9];
    if (*(v2 + 49))
    {
      goto LABEL_9;
    }

    v14 = v2[7];
    v13 = v2[8];
    v12[(v11 >> 6) + 8] |= 1 << v11;
    v15 = (v12[6] + 16 * v11);
    *v15 = v14;
    v15[1] = v13;
    v10 = v12[7];
    v16 = v10 + 56 * v11;
    *v16 = v3;
    *(v16 + 8) = v4;
    *(v16 + 16) = v5;
    *(v16 + 24) = v6;
    *(v16 + 32) = v7;
    *(v16 + 40) = v8;
    *(v16 + 48) = v9 & 1;
    v17 = v12[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (!v18)
    {
LABEL_15:
      v36 = v3;
      v37 = v2[8];
      v12[2] = v19;

      v3 = v36;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (!v4)
  {
    if (v10)
    {
      v28 = v2[10];
      v29 = *v2[9];
      v30 = v3;
      sub_264DA5844(*(v29 + 48) + 16 * v28);
      sub_264DA05EC(v28, v29);
      v3 = v30;
    }

    goto LABEL_16;
  }

  v11 = v2[10];
  v12 = *v2[9];
  if ((v10 & 1) == 0)
  {
    v32 = v2[7];
    v31 = v2[8];
    v12[(v11 >> 6) + 8] |= 1 << v11;
    v33 = (v12[6] + 16 * v11);
    *v33 = v32;
    v33[1] = v31;
    v34 = v12[7] + 56 * v11;
    *v34 = v3;
    *(v34 + 8) = v4;
    *(v34 + 16) = v5;
    *(v34 + 24) = v6;
    *(v34 + 32) = v7;
    *(v34 + 40) = v8;
    *(v34 + 48) = v9 & 1;
    v35 = v12[2];
    v18 = __OFADD__(v35, 1);
    v19 = v35 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

LABEL_9:
  v20 = v12[7] + 56 * v11;
  *v20 = v3;
  *(v20 + 8) = v4;
  *(v20 + 16) = v5;
  *(v20 + 24) = v6;
  *(v20 + 32) = v7;
  *(v20 + 40) = v8;
  *(v20 + 48) = v9 & 1;
LABEL_16:
  v38 = *v2;
  v39 = v2[1];
  v40 = v2[2];
  v41 = v2[3];
  v42 = v2[4];
  v43 = v2[5];
  v44 = *(v2 + 48);
  sub_264DA5900(v3, v4);
  sub_264DA5950(v38, v39);

  free(v2);
}

uint64_t (*sub_264DA2F44(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_264DA5CC4;
}

uint64_t (*sub_264DA2F6C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_264DA2F94;
}

void sub_264DA2FA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *))
{
  v32 = a4;
  v25 = a2;
  v26 = a1;
  v5 = sub_264E238E8();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v33 = a3;
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a3 + 64);
  v27 = 0;
  v28 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v30 = v7 + 16;
  v31 = v7;
  v29 = (v7 + 8);
  while (v14)
  {
    v35 = (v14 - 1) & v14;
    v16 = __clz(__rbit64(v14)) | (v10 << 6);
    v17 = v34;
LABEL_11:
    v20 = v33;
    (*(v31 + 16))(v17, v33[6] + *(v31 + 72) * v16, v5, v8);
    v37 = *(v20[7] + 8 * v16);

    v21 = v36;
    v22 = v32(v17, &v37);
    v36 = v21;
    if (v21)
    {

      (*v29)(v17, v5);
      return;
    }

    v23 = v22;

    (*v29)(v17, v5);
    v14 = v35;
    if (v23)
    {
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        sub_264DA3E54(v26, v25, v27, v33);
        return;
      }
    }
  }

  v18 = v10;
  v17 = v34;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_16;
    }

    v19 = *(v28 + 8 * v10);
    ++v18;
    if (v19)
    {
      v35 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_264DA3228(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_264E238E8();
  v5 = *(*(v38 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v6 + 16;
  v34 = v6;
  v31 = 0;
  v32 = (v6 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v37;
    v20 = v38;
LABEL_11:
    v23 = v36;
    (*(v34 + 16))(v19, v36[6] + *(v34 + 72) * v18, v20, v7);
    v40 = *(v23[7] + 8 * v18);
    v24 = v39;
    v25 = v35(v19, &v40);
    v39 = v24;
    if (v24)
    {
      (*v32)(v19, v20);
      return;
    }

    v26 = v25;
    (*v32)(v19, v20);
    if (v26)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        sub_264DA41F4(v30, v29, v31, v36);
        return;
      }
    }
  }

  v21 = v9;
  v19 = v37;
  v20 = v38;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = v11[v9];
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_264DA3480(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_264E23AA8();
  v5 = *(*(v38 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v6 + 16;
  v34 = v6;
  v31 = 0;
  v32 = (v6 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v37;
    v20 = v38;
LABEL_11:
    v23 = v36;
    (*(v34 + 16))(v19, v36[6] + *(v34 + 72) * v18, v20, v7);
    v40 = *(v23[7] + 8 * v18);
    v24 = v39;
    v25 = v35(v19, &v40);
    v39 = v24;
    if (v24)
    {
      (*v32)(v19, v20);
      return;
    }

    v26 = v25;
    (*v32)(v19, v20);
    if (v26)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        sub_264DA458C(v30, v29, v31, v36);
        return;
      }
    }
  }

  v21 = v9;
  v19 = v37;
  v20 = v38;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = v11[v9];
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_264DA36D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v29 = a6;
  v30 = a7;
  v37 = a4;
  v28 = a2;
  v31 = a1;
  v8 = sub_264E238E8();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v38 = a3;
  v39 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = *(a3 + 64);
  v32 = 0;
  v33 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v35 = v10 + 16;
  v36 = v10;
  v34 = (v10 + 8);
  while (v17)
  {
    v40 = (v17 - 1) & v17;
    v19 = __clz(__rbit64(v17)) | (v13 << 6);
    v20 = v39;
LABEL_11:
    v23 = v38;
    (*(v36 + 16))(v20, v38[6] + *(v36 + 72) * v19, v8, v11);
    v42 = *(v23[7] + 8 * v19);

    v24 = v41;
    v25 = v37(v20, &v42);
    v41 = v24;
    if (v24)
    {

      (*v34)(v20, v8);
      return;
    }

    v26 = v25;

    (*v34)(v20, v8);
    v17 = v40;
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        sub_264DA3AB4(v31, v28, v32, v38, v29, v30);
        return;
      }
    }
  }

  v21 = v13;
  v20 = v39;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_16;
    }

    v22 = *(v33 + 8 * v13);
    ++v21;
    if (v22)
    {
      v40 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_264DA396C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    sub_264DA36D8(result, a2, a3, a4, a5, a6, a7);
    v15 = v14;

    return v15;
  }

  return result;
}

void *sub_264DA3A14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_264DA3AB4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v44 = a1;
  v52 = sub_264E238E8();
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v45 = &v39 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_264E25448();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v44;
  }

  v19 = 0;
  v41 = v11 + 16;
  v42 = result;
  v50 = v11 + 32;
  v20 = result + 64;
  v40 = a4;
  v43 = v11;
  v21 = v52;
  while (v18)
  {
    v22 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_16:
    v25 = v22 | (v19 << 6);
    v26 = a4[6];
    v49 = *(v11 + 72);
    v27 = v45;
    (*(v11 + 16))(v45, v26 + v49 * v25, v21);
    v28 = *(a4[7] + 8 * v25);
    v47 = *(v11 + 32);
    v47(v51, v27, v21);
    v17 = v42;
    v29 = *(v42 + 40);
    sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8]);
    v48 = v28;

    result = sub_264E25038();
    v30 = -1 << *(v17 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      v11 = v43;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v20 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v11 = v43;
LABEL_26:
    *(v20 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v47)(*(v17 + 48) + v33 * v49, v51, v52);
    *(*(v17 + 56) + 8 * v33) = v48;
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v18 = v46;
    if (!a3)
    {
      return v17;
    }
  }

  v23 = v19;
  while (1)
  {
    v19 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v24 = v44[v19];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v46 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_264DA3E54(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = sub_264E238E8();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F18, qword_264E28670);
  result = sub_264E25448();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8]);
    v44 = v24;

    result = sub_264E25038();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_264DA41F4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_264E238E8();
  v45 = *(v47 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F00, &unk_264E26CB0);
  result = sub_264E25448();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v39[1] = v45 + 16;
  v40 = result;
  v46 = v45 + 32;
  v17 = result + 64;
  v41 = a1;
  v39[0] = a4;
  v18 = v47;
  while (v15)
  {
    v19 = v10;
    v20 = __clz(__rbit64(v15));
    v43 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v45;
    v44 = *(v45 + 72);
    v26 = v42;
    (*(v45 + 16))(v42, v24 + v44 * v23, v18);
    v27 = *(a4[7] + 8 * v23);
    v28 = *(v25 + 32);
    v10 = v19;
    v28(v19, v26, v18);
    v14 = v40;
    v29 = *(v40 + 40);
    sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8]);
    result = sub_264E25038();
    v30 = -1 << *(v14 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      a1 = v41;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v17 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    a1 = v41;
LABEL_26:
    *(v17 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v28)(*(v14 + 48) + v33 * v44, v10, v47);
    *(*(v14 + 56) + 8 * v33) = v27;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39[0];
    v15 = v43;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v10;
      v20 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_264DA458C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = sub_264E23AA8();
  v47 = *(v49 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = &v38 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F10, &unk_264E26CC0);
  result = sub_264E25448();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v40 = v47 + 16;
  v41 = result;
  v48 = v47 + 32;
  v17 = result + 64;
  v42 = a1;
  v39 = a4;
  v18 = v49;
  while (v15)
  {
    v19 = v10;
    v20 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v47;
    v46 = *(v47 + 72);
    v26 = v43;
    (*(v47 + 16))(v43, v24 + v46 * v23, v18);
    v45 = *(a4[7] + 8 * v23);
    v27 = *(v25 + 32);
    v10 = v19;
    v27(v19, v26, v18);
    v14 = v41;
    v28 = *(v41 + 40);
    sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578]);
    result = sub_264E25038();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v42;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v42;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (v27)(*(v14 + 48) + v32 * v46, v10, v49);
    *(*(v14 + 56) + 8 * v32) = v45;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v10;
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_264DA4988(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x277D84F90];
LABEL_90:
    __dst = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 + 1 >= v7)
    {
      v26 = (v8 + 1);
    }

    else
    {
      __dst = v7;
      v10 = *a3;
      v11 = *a3 + 56 * (v8 + 1);
      v12 = *(v11 + 8);
      v13 = *(v11 + 32);
      v14 = *(v11 + 40);
      v15 = *(v11 + 48);
      v156 = *v11;
      v157 = v12;
      v158 = *(v11 + 16);
      v159 = v13;
      v160 = v14;
      v161 = v15;
      v16 = v10 + 56 * v8;
      v17 = *(v16 + 8);
      v19 = *(v16 + 32);
      v18 = *(v16 + 40);
      v20 = *(v16 + 48);
      v150 = *v16;
      v151 = v17;
      v152 = *(v16 + 16);
      v153 = v19;
      v154 = v18;
      v155 = v20;

      v21 = sub_264D9D3C4(&v156, &v150, a5);
      if (v6)
      {
LABEL_101:

        swift_bridgeObjectRelease_n();
      }

      v22 = v21;

      v23 = v8;
      v24 = (v8 + 2);
      v140 = v23;
      v145 = 56 * v23;
      v25 = (v10 + 56 * v23 + 160);
      while (1)
      {
        v26 = __dst;
        if (__dst == v24)
        {
          break;
        }

        v27 = *(v25 - 5);
        v28 = *(v25 - 2);
        v29 = *(v25 - 1);
        v30 = *v25;
        v156 = *(v25 - 6);
        v157 = v27;
        v158 = *(v25 - 2);
        v159 = v28;
        v160 = v29;
        v161 = v30;
        v31 = *(v25 - 12);
        v33 = *(v25 - 9);
        v32 = *(v25 - 8);
        v34 = *(v25 - 56);
        v150 = *(v25 - 13);
        v151 = v31;
        v152 = *(v25 - 88);
        v153 = v33;
        v154 = v32;
        v155 = v34;

        LODWORD(v29) = sub_264D9D3C4(&v156, &v150, a5);

        ++v24;
        v25 += 56;
        if ((v22 ^ v29))
        {
          v26 = v24 - 1;
          break;
        }
      }

      v8 = v140;
      if (v22)
      {
        if (v26 < v140)
        {
          goto LABEL_124;
        }

        if (v140 < v26)
        {
          v35 = 56 * v26 - 24;
          v36 = v145 + 48;
          v37 = v26;
          v38 = v140;
          do
          {
            if (v38 != --v37)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v39 = (v50 + v36);
              v40 = (v50 + v35);
              v41 = *(v39 - 6);
              v42 = *(v39 - 5);
              v43 = *(v39 - 2);
              v44 = *(v39 - 1);
              v45 = *v39;
              v46 = *(v39 - 2);
              v48 = *(v40 - 1);
              v47 = *v40;
              v49 = *(v40 - 2);
              *v39 = *(v40 + 2);
              *(v39 - 2) = v48;
              *(v39 - 1) = v47;
              *(v39 - 3) = v49;
              *(v40 - 4) = v41;
              *(v40 - 3) = v42;
              *(v40 - 1) = v46;
              *v40 = v43;
              *(v40 + 1) = v44;
              *(v40 + 16) = v45;
            }

            ++v38;
            v35 -= 56;
            v36 += 56;
          }

          while (v38 < v37);
        }
      }
    }

    v51 = a3[1];
    if (v26 >= v51)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v26, v8))
    {
      goto LABEL_120;
    }

    if (&v26[-v8] >= a4)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_127;
    }

    if (v8 + a4 >= v51)
    {
      v52 = a3[1];
    }

    else
    {
      v52 = (v8 + a4);
    }

    if (v52 < v8)
    {
      goto LABEL_123;
    }

    if (v26 == v52)
    {
LABEL_29:
      v53 = v26;
      if (v26 < v8)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v144 = v52;
      v146 = *a3;
      v105 = *a3 + 56 * v26 - 56;
      v141 = v8;
      v106 = v8 - v26;
      do
      {
        __dst = v26;
        v137 = v106;
        v138 = v105;
        v107 = v105;
        do
        {
          v108 = v107 + 56;
          v109 = *(v107 + 64);
          v110 = *(v107 + 88);
          v111 = *(v107 + 96);
          v112 = *(v107 + 104);
          v156 = *(v107 + 56);
          v157 = v109;
          v158 = *(v107 + 72);
          v159 = v110;
          v160 = v111;
          v161 = v112;
          v113 = *(v107 + 8);
          v115 = *(v107 + 32);
          v114 = *(v107 + 40);
          v116 = *(v107 + 48);
          v150 = *v107;
          v151 = v113;
          v152 = *(v107 + 16);
          v153 = v115;
          v154 = v114;
          v155 = v116;

          v117 = sub_264D9D3C4(&v156, &v150, a5);
          if (v6)
          {
            goto LABEL_101;
          }

          v118 = v117;

          if ((v118 & 1) == 0)
          {
            break;
          }

          if (!v146)
          {
            goto LABEL_126;
          }

          v120 = *(v107 + 56);
          v119 = *(v107 + 64);
          v121 = *(v107 + 88);
          v122 = *(v107 + 96);
          v123 = *(v107 + 104);
          v124 = *(v107 + 72);
          v125 = *(v107 + 16);
          v126 = *(v107 + 48);
          *v108 = *v107;
          *(v107 + 72) = v125;
          *(v107 + 88) = *(v107 + 32);
          *v107 = v120;
          *(v107 + 8) = v119;
          *(v107 + 16) = v124;
          *(v107 + 32) = v121;
          *(v107 + 40) = v122;
          *(v107 + 48) = v123;
          v107 -= 56;
          *(v108 + 48) = v126;
        }

        while (!__CFADD__(v106++, 1));
        v26 = __dst + 1;
        v105 = v138 + 56;
        v106 = v137 - 1;
        v53 = v144;
      }

      while (__dst + 1 != v144);
      v8 = v141;
      if (v144 < v141)
      {
        goto LABEL_119;
      }
    }

    v143 = v53;
    v54 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_264D9E030(0, *(v9 + 2) + 1, 1, v9);
    }

    v56 = *(v9 + 2);
    v55 = *(v9 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v9 = sub_264D9E030((v55 > 1), v56 + 1, 1, v9);
    }

    *(v9 + 2) = v57;
    v58 = &v9[16 * v56];
    *(v58 + 4) = v54;
    *(v58 + 5) = v143;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v56)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v143;
    if (v143 >= v7)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v59 = v57 - 1;
    if (v57 >= 4)
    {
      v64 = &v9[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_106;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_107;
      }

      v71 = &v9[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_109;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_112;
      }

      if (v75 >= v67)
      {
        v93 = &v9[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_118;
        }

        if (v62 < v96)
        {
          v59 = v57 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v57 == 3)
    {
      v60 = *(v9 + 4);
      v61 = *(v9 + 5);
      v70 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      v63 = v70;
LABEL_49:
      if (v63)
      {
        goto LABEL_108;
      }

      v76 = &v9[16 * v57];
      v78 = *v76;
      v77 = *(v76 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v82 = &v9[16 * v59 + 32];
      v84 = *v82;
      v83 = *(v82 + 1);
      v70 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v70)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v80, v85))
      {
        goto LABEL_115;
      }

      if (v80 + v85 >= v62)
      {
        if (v62 < v85)
        {
          v59 = v57 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v86 = &v9[16 * v57];
    v88 = *v86;
    v87 = *(v86 + 1);
    v70 = __OFSUB__(v87, v88);
    v80 = v87 - v88;
    v81 = v70;
LABEL_63:
    if (v81)
    {
      goto LABEL_110;
    }

    v89 = &v9[16 * v59];
    v91 = *(v89 + 4);
    v90 = *(v89 + 5);
    v70 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if (v70)
    {
      goto LABEL_113;
    }

    if (v92 < v80)
    {
      goto LABEL_3;
    }

LABEL_70:
    v97 = v59 - 1;
    if (v59 - 1 >= v57)
    {
      break;
    }

    v98 = *a3;
    if (!*a3)
    {
      goto LABEL_125;
    }

    v99 = *&v9[16 * v97 + 32];
    v100 = *&v9[16 * v59 + 40];
    v101 = (v98 + 56 * v99);
    v102 = (v98 + 56 * *&v9[16 * v59 + 32]);
    v103 = (v98 + 56 * v100);

    sub_264D9D9F4(v101, v102, v103, __dst, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();
    }

    if (v100 < v99)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_264D9E01C(v9);
    }

    if (v97 >= *(v9 + 2))
    {
      goto LABEL_105;
    }

    v104 = &v9[16 * v97];
    *(v104 + 4) = v99;
    *(v104 + 5) = v100;
    v162 = v9;
    sub_264D9DF90(v59);
    v9 = v162;
    v57 = *(v162 + 2);
    if (v57 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
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
  v9 = sub_264D9E01C(v9);
LABEL_92:
  v162 = v9;
  v128 = *(v9 + 2);
  if (v128 < 2)
  {
LABEL_100:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v129 = *a3;
      if (!*a3)
      {
        break;
      }

      v130 = *&v9[16 * v128];
      v131 = *&v9[16 * v128 + 24];
      v132 = (v129 + 56 * v130);
      v133 = (v129 + 56 * *&v9[16 * v128 + 16]);
      v134 = (v129 + 56 * v131);

      sub_264D9D9F4(v132, v133, v134, __dst, a5);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v131 < v130)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_264D9E01C(v9);
      }

      if (v128 - 2 >= *(v9 + 2))
      {
        goto LABEL_117;
      }

      v135 = &v9[16 * v128];
      *v135 = v130;
      *(v135 + 1) = v131;
      v162 = v9;
      sub_264D9DF90(v128 - 1);
      v9 = v162;
      v128 = *(v162 + 2);
      if (v128 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:

    __break(1u);
LABEL_128:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DA5318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v42 = *a4;
    v7 = v42 + 56 * a3 - 56;
    v8 = result - a3;
LABEL_4:
    v30 = v7;
    v31 = a3;
    v29 = v8;
    while (1)
    {
      v9 = v7 + 56;
      v10 = *(v7 + 64);
      v11 = *(v7 + 88);
      v12 = *(v7 + 96);
      v13 = *(v7 + 104);
      v37[0] = *(v7 + 56);
      v37[1] = v10;
      v38 = *(v7 + 72);
      v39 = v11;
      v40 = v12;
      v41 = v13;
      v14 = *(v7 + 8);
      v16 = *(v7 + 32);
      v15 = *(v7 + 40);
      v17 = *(v7 + 48);
      v32[0] = *v7;
      v32[1] = v14;
      v33 = *(v7 + 16);
      v34 = v16;
      v35 = v15;
      v36 = v17;

      v18 = sub_264D9D3C4(v37, v32, a5);

      if (v5)
      {
        break;
      }

      if (v18)
      {
        if (!v42)
        {
          __break(1u);
          return result;
        }

        v20 = *(v7 + 56);
        v19 = *(v7 + 64);
        v21 = *(v7 + 88);
        v22 = *(v7 + 96);
        v23 = *(v7 + 104);
        v24 = *(v7 + 72);
        v25 = *(v7 + 16);
        v26 = *(v7 + 48);
        *v9 = *v7;
        *(v7 + 72) = v25;
        *(v7 + 88) = *(v7 + 32);
        *v7 = v20;
        *(v7 + 8) = v19;
        *(v7 + 16) = v24;
        *(v7 + 32) = v21;
        *(v7 + 40) = v22;
        *(v7 + 48) = v23;
        v7 -= 56;
        *(v9 + 48) = v26;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v7 = v30 + 56;
      v8 = v29 - 1;
      if (v31 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_264DA54CC(uint64_t *a1, uint64_t a2)
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

      sub_264DA4988(v9, v10, a1, v6, a2);

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

    sub_264DA5318(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264DA5614(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_264DA4938(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_264DA54CC(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264DA56B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DA5728()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

double sub_264DA57C0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(v7);
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = *&v8;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_264DA5898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DA5900(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_264DA5950(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_264DA59C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DA5A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DA5A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_264DA5AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_264DA5B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264DA5B98()
{
  result = qword_27FFB1F40;
  if (!qword_27FFB1F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1F48, qword_264E26D20);
    sub_264DA5C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1F40);
  }

  return result;
}

unint64_t sub_264DA5C1C()
{
  result = qword_27FFB1F50;
  if (!qword_27FFB1F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1E98, &qword_264E26C60);
    sub_264D9CE9C();
    sub_264D9CF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1F50);
  }

  return result;
}

uint64_t NotificationsDetailTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for NotificationsDetailTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264DA5D94@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v6 = sub_264E23C38();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264E23AA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2008, &unk_264E26E70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - v16;
  v18 = *a2;
  v19 = a1;
  v45 = a1;
  sub_264D93C68(sub_264DA7718, v18, &v35 - v16);
  v46 = v3;
  v20 = type metadata accessor for NotificationsDetailChart.Model(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v40 = v21 + 48;
  v41 = v22;
  if (v22(v17, 1, v20) != 1)
  {
    return sub_264DA7738(v17, v44, type metadata accessor for NotificationsDetailChart.Model);
  }

  v23 = v9;
  v38 = v11;
  v24 = *(v11 + 16);
  v35 = a2;
  v36 = v24;
  v25 = v43;
  v24(v43, v19, v10);
  v26 = *(type metadata accessor for NotificationsDetailTabView.Model(0) + 20);
  v27 = v6;
  v39 = v20;
  v28 = v42;
  v29 = v44;
  v37 = v17;
  v30 = *(v42 + 16);
  v30(v9, v35 + v26, v6);
  v36(v29, v25, v10);
  v31 = type metadata accessor for DetailChart.Model(0);
  v30((v29 + v31[6]), v23, v6);
  v32 = v37;
  v33 = sub_264E24C58();
  (*(v28 + 8))(v23, v27);
  (*(v38 + 8))(v43, v10);
  *(v29 + v31[5]) = MEMORY[0x277D84F90];
  *(v29 + v31[7]) = v33;
  *(v29 + v31[8]) = 1;
  *(v29 + v31[9]) = 0;
  *(v29 + v31[10]) = 0x40AC200000000000;
  result = v41(v32, 1, v39);
  if (result != 1)
  {
    return sub_264D817BC(v32, &qword_27FFB2008, &unk_264E26E70);
  }

  return result;
}

uint64_t sub_264DA6140(uint64_t a1)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for DetailChart.Model(0) + 24);
  sub_264E23AF8();
  LOBYTE(v7) = sub_264E23A78();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t NotificationsDetailTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F58, &qword_264E26D60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F60, &qword_264E26D68);
  sub_264DA6368(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB1F68, &qword_27FFB1F58, &qword_264E26D60);
  sub_264E24C08();
  return sub_264DA6E2C(v4);
}

uint64_t sub_264DA6368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC0, &qword_264E26E28);
  v22 = *(v34 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v34);
  v25 = &v33 - v24;
  v26 = a1 + *(type metadata accessor for NotificationsDetailTabView(0) + 20);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v17, &qword_27FFB1F70, &qword_264E28470);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  v41 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FD0, &qword_264E26E60);
  sub_264DA766C(&qword_27FFB19D0, MEMORY[0x277CC9578]);
  sub_264DA753C();
  sub_264E24F48();
  sub_264E24528();
  v28 = v36;
  v29 = v37;
  (*(v36 + 16))(v35, v8, v37);
  sub_264E24548();
  (*(v28 + 8))(v8, v29);
  sub_264D81DCC(&qword_27FFB1FE8, &qword_27FFB1FC0, &qword_264E26E28);
  v30 = v34;
  v31 = v38;
  sub_264E24B68();
  (*(v39 + 8))(v13, v31);
  return (*(v22 + 8))(v25, v30);
}

uint64_t sub_264DA6808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v20 = *(type metadata accessor for NotificationsDetailTabView(0) + 20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v21);
  v22 = *(v16 + 28);
  v23 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v11 + 16))(v14, &v19[v22 + *(v23 + 20)], v10);
  sub_264DA75F0(v19);
  LODWORD(v16) = *(type metadata accessor for NotificationsDetailTabView.Model(0) + 20);
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
    v29 = sub_264E0AB28(sub_264DA764C, &v32[-4], v24);

    (*(v11 + 8))(v14, v10);
    v32[2] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FF0, &qword_264E26E68);
    type metadata accessor for NotificationsDetailChart(0);
    sub_264D81DCC(&qword_27FFB1FF8, &qword_27FFB1FF0, &qword_264E26E68);
    sub_264DA766C(&qword_27FFB1FE0, type metadata accessor for NotificationsDetailChart);
    v31 = sub_264DA766C(&qword_27FFB2000, type metadata accessor for NotificationsDetailChart.Model);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DA6C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotificationsDetailChart.Model(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DA76B4(a1, v7);
  v8 = type metadata accessor for NotificationsDetailChart(0);
  *(a2 + *(v8 + 24)) = 0;
  sub_264DA76B4(v7, a2);
  return sub_264DA7738(v7, a2 + *(v8 + 20), type metadata accessor for DetailChart.Model);
}

uint64_t sub_264DA6D0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F58, &qword_264E26D60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F60, &qword_264E26D68);
  sub_264DA6368(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB1F68, &qword_27FFB1F58, &qword_264E26D60);
  sub_264E24C08();
  return sub_264DA6E2C(v4);
}

uint64_t sub_264DA6E2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F58, &qword_264E26D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DA6EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationsDetailTabView.Model(0);
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

uint64_t sub_264DA6FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationsDetailTabView.Model(0);
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

void sub_264DA70FC()
{
  type metadata accessor for NotificationsDetailTabView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264DA73DC(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DA71C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_264DA7284(void *result, uint64_t a2, int a3, uint64_t a4)
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

void sub_264DA7328()
{
  sub_264DA73DC(319, &qword_27FFB1FA0, type metadata accessor for NotificationsDetailChart.Model, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_264E23C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DA73DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_264DA7444()
{
  result = qword_27FFB1FA8;
  if (!qword_27FFB1FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1FB0, "Į");
    sub_264D81DCC(&qword_27FFB1F68, &qword_27FFB1F58, &qword_264E26D60);
    sub_264DA766C(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1FA8);
  }

  return result;
}

unint64_t sub_264DA753C()
{
  result = qword_27FFB1FD8;
  if (!qword_27FFB1FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1FD0, &qword_264E26E60);
    sub_264DA766C(&qword_27FFB1FE0, type metadata accessor for NotificationsDetailChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1FD8);
  }

  return result;
}

uint64_t sub_264DA75F0(uint64_t a1)
{
  v2 = type metadata accessor for ActivityNavigationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DA766C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DA76B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsDetailChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DA7738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DA77C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_264DA7884(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for MostUsedListSectionPickups()
{
  result = qword_27FFB2010;
  if (!qword_27FFB2010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264DA7974()
{
  result = sub_264E238E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264DA7A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E98, &qword_264E26C60);
  v15 = *(v5 - 8);
  v6 = *(v15 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = type metadata accessor for MostUsedListSectionPickups();
  v10 = sub_264DA7C60(v1 + *(v9 + 20));
  if (*(v10 + 16))
  {
    MEMORY[0x28223BE20](v10);
    *(&v14 - 2) = v11;
    *(&v14 - 1) = v1;
    sub_264DA87FC();
    sub_264D9CE9C();
    sub_264D9CF58();
    sub_264E24F18();

    (*(v15 + 32))(a1, v8, v5);
    return (*(v15 + 56))(a1, 0, 1, v5);
  }

  else
  {

    v13 = *(v15 + 56);

    return v13(a1, 1, 1, v5);
  }
}

uint64_t sub_264DA7C60(uint64_t a1)
{
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
  v3 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v83 - v6;
  v91 = MEMORY[0x277D84F98];
  v7 = *v1;
  v90 = a1;
  v8 = 0;
  sub_264DA2268(sub_264DA8FE0, v89, v7);
  v83 = 0;
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v88 = v9;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    v87 = v16;
    if (!v13)
    {
      break;
    }

LABEL_10:
    v18 = __clz(__rbit64(v13)) | (v15 << 6);
    v19 = v88;
    v20 = *(v88 + 48);
    v21 = sub_264E238E8();
    v22 = *(v21 - 8);
    v23 = v84;
    (*(v22 + 16))(v84, v20 + *(v22 + 72) * v18, v21);
    v24 = v86;
    *&v23[*(v86 + 48)] = *(*(v19 + 56) + 8 * v18);
    v25 = v23;
    v26 = v85;
    sub_264DA8E34(v25, v85);
    v27 = *(v26 + *(v24 + 48));
    v28 = *(v22 + 8);

    v28(v26, v21);
    v8 = *(v27 + 16);
    v16 = v87;
    v29 = *(v87 + 2);
    v30 = v8 + v29;
    if (__OFADD__(v29, v8))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      sub_264E25498();
      __break(1u);
      goto LABEL_60;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v30 > *(v16 + 3) >> 1)
    {
      if (v29 <= v30)
      {
        v32 = v8 + v29;
      }

      else
      {
        v32 = v29;
      }

      v16 = sub_264DBBCD0(isUniquelyReferenced_nonNull_native, v32, 1, v16);
    }

    v13 &= v13 - 1;
    if (*(v27 + 16))
    {
      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v8)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v8)
      {
        v33 = *(v16 + 2);
        v34 = __OFADD__(v33, v8);
        v35 = v8 + v33;
        if (v34)
        {
          goto LABEL_57;
        }

        *(v16 + 2) = v35;
      }
    }

    else
    {

      if (v8)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  v86 = *(v16 + 2);
  v36 = 0;
  if (v86)
  {
    v37 = 0;
    v38 = 0;
    v39 = v16 + 32;
    while (v38 < *(v16 + 2))
    {
      v88 = v38;
      v41 = *(v39 + 1);
      v40 = *(v39 + 2);
      v42 = *v39;
      v95 = v39[48];
      v93 = v41;
      v94 = v40;
      v92 = v42;
      v43 = *(&v42 + 1);
      v8 = v42;
      v44 = swift_allocObject();
      v46 = *(v39 + 1);
      v45 = *(v39 + 2);
      v47 = *v39;
      *(v44 + 64) = v39[48];
      *(v44 + 32) = v46;
      *(v44 + 48) = v45;
      *(v44 + 16) = v47;
      sub_264DA8F54(&v92, v96);
      sub_264DA8F54(&v92, v96);

      sub_264D91628(v36);
      v48 = swift_allocObject();
      *(v48 + 16) = sub_264DA5770;
      *(v48 + 24) = v44;
      v49 = v48;
      sub_264D91628(v37);
      v50 = v91;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v96[0] = v50;
      v53 = sub_264D9D57C(v8, v43);
      v54 = v50[2];
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_50;
      }

      v57 = v52;
      if (v50[3] >= v56)
      {
        if ((v51 & 1) == 0)
        {
          sub_264DA1144();
          v50 = v96[0];
        }
      }

      else
      {
        sub_264D9E3D8(v56, v51);
        v50 = v96[0];
        v58 = sub_264D9D57C(v8, v43);
        if ((v57 & 1) != (v59 & 1))
        {
          goto LABEL_59;
        }

        v53 = v58;
      }

      v91 = v50;
      if (v57)
      {

        v60 = 56 * v53;
      }

      else
      {
        v61 = *(v49 + 24);
        (*(v49 + 16))(v96);
        v62 = v96[0];
        v63 = v96[1];
        v64 = v98;
        v65 = v99;
        v66 = v100;
        v60 = 56 * v53;
        v67 = v97;
        v50[(v53 >> 6) + 8] |= 1 << v53;
        v68 = (v50[6] + 16 * v53);
        *v68 = v8;
        v68[1] = v43;
        v69 = v50[7] + 56 * v53;
        *v69 = v62;
        *(v69 + 8) = v63;
        *(v69 + 16) = v67;
        *(v69 + 32) = v64;
        *(v69 + 40) = v65;
        *(v69 + 48) = v66 & 1;
        v70 = v50[2];
        v34 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v34)
        {
          goto LABEL_53;
        }

        v50[2] = v71;
      }

      v8 = v93;
      v72 = v50[7] + v60;
      v73 = *(v72 + 16);
      v34 = __OFADD__(v73, v93);
      v74 = v73 + v93;
      v16 = v87;
      if (v34)
      {
        goto LABEL_51;
      }

      *(v72 + 16) = v74;
      v76 = sub_264D9D27C(v96, 0x7070416C6C415F5FLL, 0xEB000000005F5F73);
      if (*(v75 + 8))
      {
        v77 = *(v75 + 16);
        v34 = __OFADD__(v77, v8);
        v78 = v8 + v77;
        if (v34)
        {
          goto LABEL_52;
        }

        *(v75 + 16) = v78;
      }

      (v76)(v96, 0);
      v38 = v88 + 1;
      sub_264DA8F9C(&v92);
      v39 += 56;
      v37 = sub_264DA57C0;
      v36 = sub_264DA5770;
      if (v86 == v38)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_49;
  }

  v37 = 0;
LABEL_42:

  v79 = v91;
  v80 = v91[2];
  if (v80)
  {
    v8 = sub_264D8C334(v91[2], 0);
    v88 = sub_264D9163C(v96, v8 + 4, v80, v79);
    v87 = *(&v97 + 1);
    v86 = v98;
    swift_bridgeObjectRetain_n();
    sub_264D8F07C();
    if (v88 != v80)
    {
      goto LABEL_58;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v96[0] = v8;
  v8 = v83;
  sub_264DA8D70(v96, &unk_2876A2CC8);
  if (!v8)
  {

    v81 = v96[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB8, &qword_264E26C70);
    swift_arrayDestroy();

    sub_264D91628(v36);
    sub_264D91628(v37);
    return v81;
  }

LABEL_60:

  __break(1u);
  return result;
}

double sub_264DA8434@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = *(type metadata accessor for MostUsedListSectionPickups() + 20);

  v7 = sub_264DA84AC(a2 + v6);
  sub_264E02740(a1, v10, v7);
  result = v10[0].n128_f64[0];
  v9 = v10[1];
  *a3 = v10[0];
  a3[1] = v9;
  a3[2].n128_u8[0] = v11;
  return result;
}

char *sub_264DA84AC(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
  v3 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v41 - v6;
  v7 = *v1;
  v48 = a1;
  sub_264DA2268(sub_264DA8E14, v47, v7);
  v9 = *(v8 + 64);
  v41 = 0;
  v42 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v46 = v8;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v12)
  {
LABEL_10:
    v18 = __clz(__rbit64(v12)) | (v15 << 6);
    v19 = v46;
    v20 = *(v46 + 48);
    v21 = sub_264E238E8();
    v22 = *(v21 - 8);
    v23 = v43;
    (*(v22 + 16))(v43, v20 + *(v22 + 72) * v18, v21);
    v24 = *(*(v19 + 56) + 8 * v18);
    v25 = v45;
    *&v23[*(v45 + 48)] = v24;
    v26 = v23;
    v27 = v44;
    sub_264DA8E34(v26, v44);
    v28 = *(v27 + *(v25 + 48));
    v29 = *(v22 + 8);

    result = v29(v27, v21);
    v30 = *(v28 + 16);
    v31 = *(v16 + 2);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
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

      result = sub_264DBBCD0(result, v33, 1, v16);
      v16 = result;
    }

    v12 &= v12 - 1;
    if (*(v28 + 16))
    {
      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v30)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v34 = *(v16 + 2);
        v35 = __OFADD__(v34, v30);
        v36 = v34 + v30;
        if (v35)
        {
          goto LABEL_32;
        }

        *(v16 + 2) = v36;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v42 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  v37 = 0;
  v38 = *(v16 + 2) + 1;
  v39 = 48;
  while (--v38)
  {
    v40 = *&v16[v39];
    v39 += 56;
    v35 = __OFADD__(v37, v40);
    v37 += v40;
    if (v35)
    {
      __break(1u);
      break;
    }
  }

  return v37;
}

uint64_t sub_264DA87FC()
{
  sub_264E247D8();
  v0 = [objc_opt_self() bundle];
  v1 = sub_264E24AE8();
  v3 = v2;
  v5 = v4;
  sub_264E24A78();
  v6 = sub_264E24AD8();
  v8 = v7;
  v10 = v9;

  sub_264D817AC(v1, v3, v5 & 1);

  sub_264E248D8();
  v11 = sub_264E24AC8();
  v13 = v12;
  LOBYTE(v1) = v14;
  sub_264D817AC(v6, v8, v10 & 1);

  sub_264E24C08();
  sub_264D817AC(v11, v13, v1 & 1);
}

unint64_t sub_264DA89E8()
{
  result = qword_27FFB1B10;
  if (!qword_27FFB1B10)
  {
    sub_264E24948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1B10);
  }

  return result;
}

uint64_t sub_264DA8A40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
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

  sub_264DA8EA4(v13);
  return v17 & 1;
}

uint64_t sub_264DA8C28(uint64_t *a1, uint64_t a2)
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

      sub_264DA4988(v9, v10, a1, v6, a2);

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

    sub_264DA5318(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264DA8D70(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_264DA494C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_264DA8C28(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264DA8E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DA8EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DA8F0C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_264DA8FFC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_264DA90EC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_264D817BC(a1, &qword_27FFB20A8, &qword_264E270C8);
    sub_264DBC7A8(a2, v8);
    v15 = sub_264E23AA8();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_264D817BC(v8, &qword_27FFB20A8, &qword_264E270C8);
  }

  else
  {
    sub_264DBD214(a1, v13, type metadata accessor for PickupsDetailLegendView.DayPickups);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_264DCD87C(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_264E23AA8();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_264DA930C()
{
  v0 = sub_264E23FC8();
  __swift_allocate_value_buffer(v0, qword_27FFB2028);
  v1 = __swift_project_value_buffer(v0, qword_27FFB2028);
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FFB6C08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ModelProvider.allActivityModel(forInterval:userAltDSID:deviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29[4] = a5;
  v29[2] = a3;
  v29[3] = a4;
  v29[1] = a2;
  v8 = sub_264E23EA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = sub_264E23EC8();
  v13 = *(v29[0] - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v29[0]);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_264E23C38();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AllActivityView.Model(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23BF8();
  AllActivityView.Model.init(calendar:)(v20, v24);
  sub_264E238D8();
  if (v25 <= 0.0)
  {
    return sub_264DBD214(v24, a6, type metadata accessor for AllActivityView.Model);
  }

  v26 = sub_264E238E8();
  (*(*(v26 - 8) + 16))(v12, a1, v26);
  (*(v9 + 104))(v12, *MEMORY[0x277CC5830], v8);

  sub_264E23EB8();
  v27 = v29[7];
  sub_264DA9728(v16, v29[5], v24);
  (*(v13 + 8))(v16, v29[0]);
  if (!v27)
  {
    sub_264DBD27C(v24, a6, type metadata accessor for AllActivityView.Model);
  }

  return sub_264DBD184(v24, type metadata accessor for AllActivityView.Model);
}

void sub_264DA9728(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v103 = sub_264E23AA8();
  v108 = *(v103 - 8);
  v5 = *(v108 + 8);
  MEMORY[0x28223BE20](v103);
  v93 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_264E238E8();
  v107 = *(v102 - 8);
  v7 = *(v107 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v82 - v13;
  v105 = sub_264E23DB8();
  v96 = *(v105 - 8);
  v14 = *(v96 + 64);
  MEMORY[0x28223BE20](v105);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2078, &qword_264E270A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v104 = &v82 - v19;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2080, &qword_264E270A8);
  v94 = *(v111 - 8);
  v20 = v94[8];
  MEMORY[0x28223BE20](v111);
  v106 = &v82 - v21;
  v22 = sub_264E23E58();
  v109 = *(v22 - 8);
  v23 = v109[8];
  MEMORY[0x28223BE20](v22);
  v97 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v98 = (&v82 - v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v82 - v28;
  v30 = sub_264E23DF8();
  v31 = *(v30 - 8);
  v32 = v31[8];
  MEMORY[0x28223BE20](v30);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v110;
  v36 = sub_264E23E68();
  if (v35)
  {
    v112 = v35;
    v37 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2088, &unk_264E270B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_9:

      return;
    }

    v38 = v109;
    v39 = v98;
    (v109[4])(v98, v29, v22);
    v40 = v97;
    (v38[13])(v97, *MEMORY[0x277CC57A8], v22);
    v41 = sub_264E23E48();
    a1 = v38[1];
    a1(v40, v22);
    if ((v41 & 1) == 0)
    {
LABEL_8:
      sub_264DBD13C(&qword_27FFB2090, MEMORY[0x277CC57B0]);
      swift_allocError();
      (v38[2])(v46, v39, v22);
      swift_willThrow();
      a1(v39, v22);
      goto LABEL_9;
    }

    if (qword_27FFB1690 == -1)
    {
LABEL_5:
      v42 = sub_264E23FC8();
      __swift_project_value_buffer(v42, qword_27FFB6C08);
      v43 = sub_264E23FA8();
      v44 = sub_264E252B8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_264D7D000, v43, v44, "enumerateActivitySegments DeviceActivityDataSource exception: dataSourceUnavailable", v45, 2u);
        MEMORY[0x26674FCD0](v45, -1, -1);
      }

      goto LABEL_8;
    }

LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  v90 = v34;
  v91 = v31;
  v92 = v30;
  v47 = v106;
  v82 = 0;
  v89 = *(v36 + 16);
  if (v89)
  {
    v39 = 0;
    v38 = v91;
    v86 = v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v85 = v91 + 2;
    v84 = v91 + 1;
    v83 = (v94 + 1);
    v48 = v104;
    v22 = v105;
    v49 = v92;
    v88 = a1;
    v87 = v36;
    v109 = (v96 + 32);
    v110 = (v96 + 48);
    v97 = (v107 + 8);
    v98 = (v108 + 8);
    v95 = a3;
    v96 += 8;
    while (v39 < *(v36 + 16))
    {
      v51 = v38[9];
      v94 = v39;
      v52 = v86 + v51 * v39;
      v53 = v90;
      (v38[2])(v90, v52, v49);
      sub_264E23DC8();
      (v38[1])(v53, v49);
      v54 = v111;
      sub_264E23E08();
      v55 = *v110;
      v56 = (*v110)(v48, 1, v22);
      v57 = v93;
      if (v56 != 1)
      {
        v107 = *v109;
        v108 = v55;
        do
        {
          (v107)(v16, v48, v22);
          v58 = type metadata accessor for AllActivityView.Model(0);
          v59 = v58[26];
          v60 = v99;
          sub_264DDECDC(a3 + v59, v99);
          sub_264DBD0D4(v60, a3 + v59, &qword_27FFB1880, &qword_264E26220);
          v61 = a3 + v58[8];
          sub_264DB0668(v16);
          v62 = a3 + v58[10];
          sub_264DB203C(v16);
          v63 = a3 + v58[7];
          v64 = v100;
          sub_264E23D98();
          _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
          v65 = *v97;
          v66 = v64;
          v67 = v102;
          (*v97)(v66, v102);
          sub_264E23D78();
          v69 = v68;
          v70 = v63 + *(type metadata accessor for UsageHeaderView.Model(0) + 20);
          v71 = v101;
          Calendar.fullDay(for:)(v57, v101);
          v22 = v105;
          sub_264DB5838(v69, v71, 0, 1, &qword_27FFB1D90, &unk_264E268E0);
          v72 = v67;
          a3 = v95;
          v65(v71, v72);
          v47 = v106;
          v54 = v111;
          (*v98)(v57, v103);
          v73 = a3 + v58[11];
          sub_264DB2CC0();
          v74 = a3 + v58[12];
          sub_264DB2EC8(v16);
          v75 = a3 + v58[14];
          sub_264DB54B4(v16);
          v76 = a3 + v58[15];
          sub_264DB5A50(v16);
          v77 = a3 + v58[17];
          sub_264DB80BC(v16);
          v78 = a3 + v58[19];
          sub_264DB424C(v16);
          v79 = a3 + v58[21];
          sub_264DB92B0(v16);
          v80 = a3 + v58[22];
          sub_264DB9640(v16);
          v81 = v58[24];
          v48 = v104;
          sub_264DB4A64(v16);
          (*v96)(v16, v22);
          sub_264E23E08();
        }

        while ((v108)(v48, 1, v22) != 1);
      }

      v50 = v54;
      v39 = (v94 + 1);
      (*v83)(v47, v50);
      a1 = v88;
      v49 = v92;
      v38 = v91;
      v36 = v87;
      if (v39 == v89)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_18:
}

void sub_264DAA1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264E23C38();
  v181 = *(v5 - 8);
  v6 = *(v181 + 8);
  MEMORY[0x28223BE20](v5);
  v8 = v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OverviewChart.Day(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v149 = v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_264E23AA8();
  v150 = *(v186 - 8);
  v12 = *(v150 + 64);
  MEMORY[0x28223BE20](v186);
  v159 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v158 = v132 - v15;
  MEMORY[0x28223BE20](v16);
  v178 = v132 - v17;
  MEMORY[0x28223BE20](v18);
  v179 = v132 - v19;
  v187 = sub_264E23C18();
  v185 = *(v187 - 8);
  v20 = v185[8];
  MEMORY[0x28223BE20](v187);
  v180 = v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v157 = v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v168 = (v132 - v26);
  v184 = sub_264E238E8();
  v173 = *(v184 - 8);
  v27 = *(v173 + 64);
  MEMORY[0x28223BE20](v184);
  v177 = v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v156 = v132 - v30;
  MEMORY[0x28223BE20](v31);
  v183 = v132 - v32;
  MEMORY[0x28223BE20](v33);
  v155 = v132 - v34;
  v160 = sub_264E23DB8();
  v172 = *(v160 - 8);
  v35 = *(v172 + 64);
  MEMORY[0x28223BE20](v160);
  v190 = (v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2078, &qword_264E270A0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v167 = v132 - v39;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2080, &qword_264E270A8);
  v171 = *(v166 - 8);
  v40 = *(v171 + 64);
  MEMORY[0x28223BE20](v166);
  v165 = v132 - v41;
  v42 = sub_264E23E58();
  v176 = *(v42 - 1);
  v43 = *(v176 + 8);
  MEMORY[0x28223BE20](v42);
  v174 = v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v175 = (v132 - v46);
  MEMORY[0x28223BE20](v47);
  v188 = v132 - v48;
  v49 = sub_264E23DF8();
  v142 = *(v49 - 8);
  v50 = *(v142 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = v132 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v189;
  v54 = sub_264E23E68();
  if (v53)
  {
    v191 = v53;
    v55 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2088, &unk_264E270B0);
    v56 = v188;
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_9:

      return;
    }

    v9 = v175;
    v8 = v176;
    (*(v176 + 4))(v175, v56, v42);
    v57 = v174;
    (*(v8 + 13))(v174, *MEMORY[0x277CC57A8], v42);
    v58 = sub_264E23E48();
    v59 = *(v8 + 1);
    v59(v57, v42);
    if ((v58 & 1) == 0)
    {
LABEL_8:
      sub_264DBD13C(&qword_27FFB2090, MEMORY[0x277CC57B0]);
      swift_allocError();
      (*(v8 + 2))(v64, v9, v42);
      swift_willThrow();
      v59(v9, v42);
      goto LABEL_9;
    }

    if (qword_27FFB1690 == -1)
    {
LABEL_5:
      v60 = sub_264E23FC8();
      __swift_project_value_buffer(v60, qword_27FFB6C08);
      v61 = sub_264E23FA8();
      v62 = sub_264E252B8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_264D7D000, v61, v62, "enumerateActivitySegments DeviceActivityDataSource exception: dataSourceUnavailable", v63, 2u);
        MEMORY[0x26674FCD0](v63, -1, -1);
      }

      goto LABEL_8;
    }

LABEL_43:
    swift_once();
    goto LABEL_5;
  }

  v140 = v52;
  v141 = v49;
  v132[1] = 0;
  v139 = *(v54 + 16);
  if (v139)
  {
    v65 = 0;
    v66 = v142;
    v138 = v54 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v137 = v142 + 16;
    v136 = v142 + 8;
    v164 = (v172 + 48);
    v162 = (v172 + 32);
    v154 = *MEMORY[0x277CC9940];
    v176 = (v185 + 13);
    v189 = (v150 + 8);
    v175 = (v185 + 1);
    v174 = (v173 + 48);
    v170 = (v173 + 32);
    v145 = (v181 + 16);
    v144 = (v181 + 8);
    v153 = *MEMORY[0x277CC9968];
    v152 = (v150 + 16);
    v151 = (v172 + 8);
    v133 = (v171 + 8);
    v67 = v160;
    v59 = v190;
    v182 = a3;
    v135 = a1;
    v148 = v5;
    v147 = v8;
    v146 = v9;
    v134 = v54;
    v185 = (v173 + 8);
    while (1)
    {
      if (v65 >= *(v54 + 16))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v68 = *(v66 + 72);
      v143 = v65;
      v69 = v138 + v68 * v65;
      v70 = v140;
      v71 = v141;
      v72 = v66;
      (*(v66 + 16))(v140, v69, v141);
      v8 = v165;
      sub_264E23DC8();
      (*(v72 + 8))(v70, v71);
      v73 = v167;
      v74 = v166;
      sub_264E23E08();
      v163 = *v164;
      v75 = v163(v73, 1, v67);
      v42 = v168;
      v9 = v184;
      if (v75 != 1)
      {
        break;
      }

LABEL_12:
      v65 = v143 + 1;
      (*v133)(v8, v74);
      v66 = v142;
      v54 = v134;
      if (v65 == v139)
      {
        goto LABEL_38;
      }
    }

    v161 = *v162;
    v161(v59, v73, v67);
    while (1)
    {
      v188 = type metadata accessor for SummaryView.Model(0);
      v78 = *(v188 + 7);
      v8 = v180;
      v173 = *v176;
      (v173)(v180, v154, v187);
      v79 = v179;
      sub_264E23A98();
      v80 = v79;
      sub_264E23B08();
      v59 = *v189;
      (*v189)(v79, v186);
      v172 = *v175;
      (v172)(v8, v187);
      v171 = *v174;
      if ((v171)(v42, 1, v9) == 1)
      {
        break;
      }

      v81 = v155;
      v169 = *v170;
      v169(v155, v42, v9);
      v82 = v183;
      sub_264E23D98();
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      v83 = *v185;
      (*v185)(v82, v9);
      v84 = sub_264E238C8();
      v85 = v80;
      v86 = v186;
      v181 = v59;
      v59(v85, v186);
      v83(v81, v9);
      if (v84)
      {
        v87 = v183;
        sub_264E23D98();
        v88 = v179;
        _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
        v83(v87, v9);
        sub_264E23D78();
        v90 = v89;
        v91 = v182 + v78;
        v92 = v147;
        v93 = v148;
        (*v145)(v147, v91, v148);
        v94 = v149;
        sub_264E23AF8();
        (*v144)(v92, v93);
        v181(v88, v186);
        *(v94 + *(v146 + 20)) = v90;
        sub_264DAE2D0(v94);
        v95 = v94;
        v9 = v184;
        v86 = v186;
        sub_264DBD184(v95, type metadata accessor for OverviewChart.Day);
      }

      v96 = v86;
      v97 = v182 + *(v188 + 5);
      v98 = v156;
      sub_264E23D98();
      v99 = v178;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      v188 = v83;
      v83(v98, v9);
      sub_264E23D78();
      v101 = v100;
      v59 = *(type metadata accessor for UsageHeaderView.Model(0) + 20);
      v102 = v180;
      v103 = v187;
      (v173)(v180, v153, v187);
      v104 = v157;
      sub_264E23B08();
      v105 = v102;
      v9 = v184;
      (v172)(v105, v103);
      v106 = (v171)(v104, 1, v9);
      v107 = v158;
      if (v106 == 1)
      {
        sub_264D817BC(v104, &qword_27FFB1880, &qword_264E26220);
        sub_264E23AF8();
        (*v152)(v107, v99, v96);
        sub_264E23898();
      }

      else
      {
        v169(v177, v104, v9);
      }

      v8 = v159;
      v108 = v183;
      sub_264E23858();
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (v188)(v108, v9);
      v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) + 36);
      v110 = *(v97 + v109);
      v111 = 0.0;
      if (*(v110 + 16))
      {
        v112 = sub_264D9D5F4(v8);
        v113 = v96;
        if (v114)
        {
          v111 = *(*(v110 + 56) + 8 * v112);
        }
      }

      else
      {
        v113 = v96;
      }

      v115 = *(v97 + v109);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v191 = *(v97 + v109);
      v117 = v191;
      v118 = sub_264D9D5F4(v8);
      v120 = v117[2];
      v121 = (v119 & 1) == 0;
      v122 = __OFADD__(v120, v121);
      v123 = v120 + v121;
      v42 = v181;
      if (v122)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v59 = v119;
      if (v117[3] >= v123)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v131 = v118;
          sub_264DA12F8();
          v118 = v131;
        }
      }

      else
      {
        sub_264D9E6F0(v123, isUniquelyReferenced_nonNull_native);
        v118 = sub_264D9D5F4(v8);
        if ((v59 & 1) != (v124 & 1))
        {
          sub_264E25498();
          __break(1u);
          return;
        }
      }

      v125 = v188;
      v126 = v101 + v111;
      v127 = v191;
      if (v59)
      {
        *(v191[7] + v118) = v126;
      }

      else
      {
        v191[(v118 >> 6) + 8] = (v191[(v118 >> 6) + 8] | (1 << v118));
        v128 = v118;
        (*(v150 + 16))(v127[6] + *(v150 + 72) * v118, v8, v113);
        *(v127[7] + v128) = v126;
        v129 = v127[2];
        v122 = __OFADD__(v129, 1);
        v130 = (v129 + 1);
        if (v122)
        {
          goto LABEL_40;
        }

        v127[2] = v130;
        v125 = v188;
      }

      v42(v8, v113);
      *(v97 + v109) = v127;
      v9 = v184;
      v125(v177, v184);
      v42(v178, v113);
      v59 = v190;
      v67 = v160;
      (*v151)(v190, v160);
      v76 = v167;
      v74 = v166;
      v8 = v165;
      sub_264E23E08();
      v77 = v163(v76, 1, v67);
      v42 = v168;
      if (v77 == 1)
      {
        goto LABEL_12;
      }

      v161(v59, v76, v67);
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_38:
}