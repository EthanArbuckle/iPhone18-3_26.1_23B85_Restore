uint64_t UsageDetailChart.Model.lastY.getter()
{
  UsageDetailChart.Model.maxUsage.getter();
  if (v1 > 3600.0)
  {
    v2 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 28));
  }

  return UsageDetailChart.Model.maxUsage.getter();
}

uint64_t UsageDetailChart.Model.maxUsage.getter()
{
  v1 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 20));
  v18 = v0;

  sub_264D82E60(sub_264E17558, v17, v6);
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v19 = MEMORY[0x277D84F90];
    sub_264D8D0F4(0, v9, 0);
    v10 = v19;
    v11 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_264E16344(v11, v5, type metadata accessor for UsageDetailChart.HourlyUsage);
      v13 = *&v5[*(v1 + 20)];
      sub_264E163AC(v5);
      v19 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_264D8D0F4((v14 > 1), v15 + 1, 1);
        v10 = v19;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  sub_264D89928(v10);
}

uint64_t sub_264E15C7C(uint64_t a1)
{
  v2 = sub_264E245C8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_264E24688();
}

uint64_t _s16ScreenTimeUICore16UsageDetailChartV06HourlyD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_264E23878() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_264D81ED4(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_264D81ED4(v7, v8);
}

BOOL _s16ScreenTimeUICore16UsageDetailChartV5ModelV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78() & 1) != 0 && (v4 = type metadata accessor for UsageDetailChart.Model(0), (sub_264D84880(*(a1 + v4[5]), *(a2 + v4[5]))) && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264E15FB8()
{
  v1 = (type metadata accessor for UsageDetailChart(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_264E23AA8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for UsageDetailChart.Model(0);
  v7 = *(v0 + v3 + *(v6 + 20));

  v8 = *(v6 + 24);
  v9 = sub_264E23C38();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[7]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264E160FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E16164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UsageDetailChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_264E1478C(a1, v6, a2);
}

unint64_t sub_264E161E4()
{
  result = qword_27FFB3530;
  if (!qword_27FFB3530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3520, &qword_264E2A3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2450, &unk_264E2A400);
    sub_264E241F8();
    swift_getOpaqueTypeConformance2();
    sub_264D89EB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3530);
  }

  return result;
}

uint64_t sub_264E16344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E163AC(uint64_t a1)
{
  v2 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E16450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264E16510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageDetailChart.Model(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_264E165EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UsageDetailChart.Model(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_264E166A4()
{
  type metadata accessor for UsageDetailChart.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264E16728();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E16728()
{
  if (!qword_27FFB3560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3518, &qword_264E2A3F0);
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB3560);
    }
  }
}

uint64_t sub_264E167A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E238E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264E16870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E238E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_264E16928()
{
  sub_264E238E8();
  if (v0 <= 0x3F)
  {
    sub_264D8F9B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264E169C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264E16B00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23AA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264E16C24()
{
  sub_264E23AA8();
  if (v0 <= 0x3F)
  {
    sub_264E16CD8();
    if (v1 <= 0x3F)
    {
      sub_264E23C38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264E16CD8()
{
  if (!qword_27FFB3588)
  {
    type metadata accessor for UsageDetailChart.HourlyUsage(255);
    v0 = sub_264E251F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB3588);
    }
  }
}

unint64_t sub_264E16D34()
{
  result = qword_27FFB3590;
  if (!qword_27FFB3590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3548, &unk_264E2A410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3508, &qword_264E2A3E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3500, &qword_264E2A3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1998, &unk_264E27720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1A88, &qword_264E2A3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19A8, &unk_264E262F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB34F8, &qword_264E2A3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1968, &unk_264E27700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB34F0, &qword_264E2A3C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1988, &unk_264E262E0);
    sub_264D81DCC(&qword_27FFB3540, &qword_27FFB34F0, &qword_264E2A3C0);
    sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB3598, &qword_27FFB2480, &qword_264E27C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3590);
  }

  return result;
}

uint64_t sub_264E1709C()
{
  v1 = (type metadata accessor for UsageDetailChart.HourlyUsage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for UsageDetailChart(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = sub_264E238E8();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  v11 = *(v0 + v3 + v1[8]);

  v12 = *(v0 + v3 + v1[9]);

  v13 = sub_264E23AA8();
  (*(*(v13 - 8) + 8))(v0 + v7, v13);
  v14 = type metadata accessor for UsageDetailChart.Model(0);
  v15 = *(v0 + v7 + *(v14 + 20));

  v16 = *(v14 + 24);
  v17 = sub_264E23C38();
  (*(*(v17 - 8) + 8))(v0 + v7 + v16, v17);
  v18 = *(v0 + v7 + v5[7]);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_264E17294@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *(type metadata accessor for UsageDetailChart.HourlyUsage(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for UsageDetailChart(0) - 8);
  v15 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_264E14B20(a1, a2, a3, v5 + v12, v15, a4, a5);
}

uint64_t sub_264E173A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264E173D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 8));
}

uint64_t sub_264E1741C(uint64_t result, uint64_t a2)
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

    v2 = result;
    v4 = sub_264E251E8();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v2;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v2;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_264E174AC(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    v8 = sub_264E251E8();
    v9 = v8;
    *(v8 + 16) = a3;
    *(v8 + 32) = a4;
    *(v8 + 40) = v5;
    *(v8 + 48) = a2;
    v10 = a3 - 1;
    if (v10)
    {
      v11 = (v8 + 72);
      do
      {
        *(v11 - 2) = a4;
        *(v11 - 1) = v5;
        *v11 = a2;

        v11 += 3;
        --v10;
      }

      while (v10);
    }

    return v9;
  }

  return result;
}

void *sub_264E17574(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22A8, &qword_264E27740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264E2A670;
  v5 = objc_opt_self();
  v6 = [v5 systemBlueColor];
  *(inited + 32) = sub_264E24C38();
  v7 = [v5 systemTealColor];
  *(inited + 40) = sub_264E24C38();
  v8 = [v5 systemOrangeColor];
  *(inited + 48) = sub_264E24C38();
  if (qword_27FFB16A0 != -1)
  {
    swift_once();
  }

  *(inited + 56) = qword_27FFB6C48;
  v9 = swift_retain_n();
  v10 = sub_264E1741C(v9, a1);

  if ((a2 & 1) != 0 && __OFSUB__(a1--, 1))
  {
    goto LABEL_25;
  }

  if (a1 < 0)
  {
    __break(1u);
LABEL_23:
    v10 = sub_264E15D58(v10);
    if (!v10[2])
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  a2 = *(inited + 32);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v10[2])
  {
    goto LABEL_24;
  }

LABEL_9:
  v12 = v10[4];
  v10[4] = a2;

  if (a1 != 1)
  {
    a2 = *(inited + 40);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    while (1)
    {
      if (v10[2] >= 2uLL)
      {
        v13 = v10[5];
        v10[5] = a2;

        if (a1 == 2)
        {
          goto LABEL_21;
        }

        a2 = *(inited + 48);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_264E15D58(v10);
        }

        if (v10[2] >= 3uLL)
        {
          v14 = v10[6];
          v10[6] = a2;

          if (a1 == 3)
          {
            goto LABEL_21;
          }

          a1 = *(inited + 56);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_264E15D58(v10);
          }

          if (v10[2] >= 4uLL)
          {
            break;
          }
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v10 = sub_264E15D58(v10);
    }

    v15 = v10[7];
    v10[7] = a1;
  }

LABEL_21:

  return v10;
}

uint64_t ChartFormats.DataType.hashValue.getter()
{
  v1 = *v0;
  sub_264E254A8();
  MEMORY[0x26674F610](v1);
  return sub_264E254C8();
}

unint64_t sub_264E178A8()
{
  result = qword_27FFB35B8;
  if (!qword_27FFB35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB35B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartFormats.DataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChartFormats.DataType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_264E17A94()
{
  v0 = [objc_opt_self() bundle];
  result = sub_264E24CE8();
  qword_27FFB6C48 = result;
  return result;
}

uint64_t sub_264E17B2C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_264E24C38();
  *a3 = result;
  return result;
}

uint64_t sub_264E17B74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_264E249F8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_264E24A38();
  result = sub_264D817BC(v3, &qword_27FFB17B8, &qword_264E279E0);
  qword_27FFB6C70 = v5;
  return result;
}

uint64_t sub_264E17C60(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v2 setAllowedUnits_];
  [v2 setUnitsStyle_];
  [v2 setZeroFormattingBehavior_];
  if (a1 <= 3600.0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [v2 setMaximumUnitCount_];
  v4 = [v2 stringFromTimeInterval_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_264E25108();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_264E17D5C(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_264E23C38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v13 setAllowedUnits_];
  [v13 setUnitsStyle_];
  [v13 setZeroFormattingBehavior_];
  if (a2 <= 3600.0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  [v13 setMaximumUnitCount_];
  sub_264E17FD8(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_264D817BC(v7, &qword_27FFB1C50, &unk_264E267D0);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = sub_264E23BA8();
    [v13 setCalendar_];

    (*(v9 + 8))(v12, v8);
  }

  v16 = [v13 stringFromTimeInterval_];
  if (v16)
  {
    v17 = v16;
    v18 = sub_264E25108();
  }

  else
  {

    return 0;
  }

  return v18;
}

uint64_t sub_264E17FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ScreenTimeNotificationsAppIntentView.Model.App.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ScreenTimeNotificationsAppIntentView.Model.App.localizedName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_264E180B0()
{
  v1 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  result = sub_264D9C104(v0 + *(v1 + 24));
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 80;
    v7 = MEMORY[0x277D84F90];
    v29 = result + 80;
    v30 = *(result + 16);
    do
    {
      v31 = v7;
      v8 = (v6 + 56 * v5);
      v9 = v4 - v5;
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 - 6);
        v11 = *(v8 - 5);
        v12 = *(v8 - 2);
        if (v10 != *(v8 - 3) || v11 != v12)
        {
          v14 = *v8;
          v15 = *(v8 - 1);
          v16 = *(v8 - 4);
          v17 = *(v8 - 6);
          v18 = *(v8 - 5);
          v19 = *(v8 - 2);
          v20 = v3;
          v32 = *(v8 - 3);
          result = sub_264E25478();
          v3 = v20;
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v8 += 56;
        ++v5;
        if (!--v9)
        {
          v7 = v31;
          goto LABEL_19;
        }
      }

      v28 = v16;

      v7 = v31;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_264D8D4B4(0, *(v31 + 16) + 1, 1);
        v7 = v31;
      }

      v21 = v14;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      v24 = v23 + 1;
      v3 = v20;
      if (v23 >= v22 >> 1)
      {
        result = sub_264D8D4B4((v22 > 1), v23 + 1, 1);
        v24 = v23 + 1;
        v21 = v14;
        v3 = v20;
        v7 = v31;
      }

      ++v5;
      *(v7 + 16) = v24;
      v25 = v7 + 56 * v23;
      *(v25 + 32) = v10;
      *(v25 + 40) = v11;
      *(v25 + 48) = v28;
      *(v25 + 56) = v32;
      *(v25 + 64) = v12;
      *(v25 + 72) = v15;
      *(v25 + 80) = v21;
      v6 = v29;
      v4 = v30;
    }

    while (v9 != 1);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_19:

  if (*(v7 + 16) < 4uLL)
  {
    return v7;
  }

  sub_264E19228(v7, v7 + 32, 0, 7uLL);
  v27 = v26;

  return v27;
}

uint64_t sub_264E182C4()
{
  v0 = sub_264E180B0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    v2 = v0;
    sub_264D8D114(0, v1, 0);
    v3 = v2;
    v4 = 0;
    v5 = v18;
    v14 = v2;
    do
    {
      v6 = *(v3 + v4 + 40);
      v17 = *(v3 + v4 + 32);
      v7 = *(v3 + v4 + 48);
      v15 = *(v3 + v4 + 56);
      v8 = *(v3 + v4 + 64);
      v9 = *(v3 + v4 + 72);
      v16 = *(v3 + v4 + 80);
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);

      if (v11 >= v10 >> 1)
      {
        sub_264D8D114((v10 > 1), v11 + 1, 1);
      }

      *(v18 + 16) = v11 + 1;
      v12 = v18 + 56 * v11;
      *(v12 + 32) = v17;
      *(v12 + 40) = v6;
      v3 = v14;
      *(v12 + 48) = v15;
      *(v12 + 56) = v8;
      *(v12 + 64) = v9;
      *(v12 + 72) = v7;
      *(v12 + 80) = v16;
      *(v12 + 81) = 0;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t ScreenTimeNotificationsAppIntentView.Model.appsEmittingMostNotifications.getter()
{
  v0 = sub_264E180B0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_264D8D4EC(0, v1, 0);
    v2 = v13;
    v3 = (v0 + 64);
    do
    {
      v5 = *(v3 - 4);
      v4 = *(v3 - 3);
      v6 = *(v3 - 1);
      v12 = *(v3 - 2);
      v7 = *v3;
      v8 = *(v13 + 16);
      v9 = *(v13 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_264D8D4EC((v9 > 1), v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v10 = (v13 + 40 * v8);
      v10[4] = v5;
      v10[5] = v4;
      v10[6] = v6;
      v10[7] = v7;
      v10[8] = v12;
      v3 += 7;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t ScreenTimeNotificationsAppIntentView.Model.init(allActivityModel:mode:interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 1)
  {
    v7 = *(type metadata accessor for AllActivityView.Model(0) + 96);
  }

  else
  {
    if (a2)
    {
      v13[4] = type metadata accessor for ScreenTimeAppInfoCache();
      v13[5] = &off_2876A38A8;
      v13[1] = swift_allocObject();
      v13[9] = type metadata accessor for ScreenTimeAppIconCache();
      v13[10] = &off_2876A3880;
      v13[6] = swift_allocObject();
      v13[0] = sub_264DEB248(MEMORY[0x277D84F90]);
      goto LABEL_7;
    }

    v7 = *(type metadata accessor for AllActivityView.Model(0) + 100);
  }

  sub_264DEE850(a1 + v7, v13);
LABEL_7:
  v8 = type metadata accessor for AllActivityView.Model(0);
  sub_264DEE850(a1 + *(v8 + 100), a4);
  v9 = sub_264D9C98C(a3);
  sub_264E1938C(a1, type metadata accessor for AllActivityView.Model);
  sub_264E19318(v13);
  *(a4 + 88) = v9;
  v10 = *(type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0) + 24);
  v11 = sub_264E238E8();
  return (*(*(v11 - 8) + 32))(a4 + v10, a3, v11);
}

double ScreenTimeNotificationsAppIntentView.init(model:mode:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  sub_264E1940C(a1, v15 - v11, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  sub_264E1940C(v12, v9, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  sub_264E24D78();
  sub_264E1938C(v12, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  v13 = *(type metadata accessor for ScreenTimeNotificationsAppIntentView(0) + 20);
  v15[1] = a2;
  type metadata accessor for STActivityMode(0);
  sub_264E24D78();
  sub_264E1938C(a1, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  result = *&v16;
  *(a3 + v13) = v16;
  return result;
}

uint64_t ScreenTimeNotificationsAppIntentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ScreenTimeNotificationsAppIntentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_264E24828();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C0, &qword_264E2A740) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
  sub_264E24D88();
  v12 = sub_264E182C4();
  sub_264E1938C(v10, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  v16[1] = v12;
  sub_264E1940C(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScreenTimeNotificationsAppIntentView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_264E19478(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3050, &qword_264E2A750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35D0, &qword_264E2A758);
  sub_264D81DCC(&qword_27FFB35D8, &qword_27FFB3050, &qword_264E2A750);
  sub_264D81DCC(&qword_27FFB35E0, &qword_27FFB35D0, &qword_264E2A758);
  sub_264E02664();
  return sub_264E24EF8();
}

uint64_t sub_264E18A84@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v52 = sub_264E24EB8();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v52);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3620, &qword_264E2A848);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = a1[1];
  v72 = *a1;
  v73 = v20;
  v74[0] = a1[2];
  *(v74 + 15) = *(a1 + 47);
  sub_264E02700(&v72, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
  sub_264E24D88();
  v51 = *(v19 + 11);
  sub_264E1938C(v19, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  type metadata accessor for CGSize(0);
  v54[0] = 0uLL;
  sub_264E24D78();
  v21 = v59;
  v50 = v60;
  v54[0] = 0uLL;
  sub_264E24D78();
  v22 = v59;
  v49 = v60;
  v78 = v72;
  v79 = v73;
  *v80 = v74[0];
  *&v80[15] = *(v74 + 15);
  v77 = 0;
  v23 = v72;

  sub_264E24D88();
  v24 = sub_264E182C4();
  sub_264E1938C(v16, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  v25 = *(v24 + 16);
  if (!v25)
  {

    goto LABEL_7;
  }

  v26 = v24 + 56 * v25;
  v27 = *(v26 - 24);
  v28 = *(v26 - 8);
  v29 = *(v26 + 8);
  *&v61[15] = *(v26 + 23);
  v60 = v28;
  *v61 = v29;
  v59 = v27;
  sub_264E02700(&v59, v54);

  v30 = v59;

  sub_264E19C80(&v59);
  if (v23 != v30)
  {
    v31 = sub_264E25478();

    if (v31)
    {
      goto LABEL_6;
    }

LABEL_7:
    v32 = v48;
    sub_264E24EA8();
    v33 = v32;
    v34 = v52;
    (*(v4 + 32))(v12, v33, v52);
    (*(v4 + 56))(v12, 0, 1, v34);
    goto LABEL_8;
  }

LABEL_6:
  (*(v4 + 56))(v12, 1, 1, v52);
LABEL_8:
  v35 = v77;
  v36 = v53;
  sub_264E19CD4(v12, v53);
  v54[0] = v78;
  v54[1] = v79;
  v54[2] = *v80;
  v38 = v50;
  v37 = v51;
  *&v55 = *&v80[16];
  *(&v55 + 1) = v51;
  LOBYTE(v56) = v35;
  BYTE1(v56) = 2;
  *(&v56 + 2) = v75;
  WORD3(v56) = v76;
  *(&v56 + 1) = 0x4010000000000000;
  v57 = v21;
  *v58 = v50;
  *&v58[8] = v22;
  v39 = v49;
  *&v58[24] = v49;
  v40 = v78;
  v41 = v79;
  v42 = v55;
  a2[2] = *v80;
  a2[3] = v42;
  *a2 = v40;
  a2[1] = v41;
  v43 = v56;
  v44 = v57;
  v45 = *&v58[16];
  a2[6] = *v58;
  a2[7] = v45;
  a2[4] = v43;
  a2[5] = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3628, &unk_264E2A850);
  sub_264E19CD4(v36, a2 + *(v46 + 48));
  sub_264E19D44(v54, &v59);
  sub_264E19DA0(v12);
  sub_264E19DA0(v36);
  v59 = v78;
  v60 = v79;
  *v61 = *v80;
  *&v61[16] = *&v80[16];
  v62 = v37;
  v63 = v35;
  v64 = 2;
  v65 = v75;
  v66 = v76;
  v67 = 0x4010000000000000;
  v68 = v21;
  v69 = v38;
  v70 = v22;
  v71 = v39;
  return sub_264E19E08(&v59);
}

uint64_t sub_264E18F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_264E24828();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C0, &qword_264E2A740) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
  sub_264E24D88();
  v12 = sub_264E182C4();
  sub_264E1938C(v10, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  v16[1] = v12;
  sub_264E1940C(v3, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScreenTimeNotificationsAppIntentView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_264E19478(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3050, &qword_264E2A750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35D0, &qword_264E2A758);
  sub_264D81DCC(&qword_27FFB35D8, &qword_27FFB3050, &qword_264E2A750);
  sub_264D81DCC(&qword_27FFB35E0, &qword_27FFB35D0, &qword_264E2A758);
  sub_264E02664();
  return sub_264E24EF8();
}

void sub_264E19228(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A68, &qword_264E264E8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_264E1938C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264E1940C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E19478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenTimeNotificationsAppIntentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E19510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
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

uint64_t sub_264E195FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
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

void sub_264E196C4()
{
  sub_264E19780(319, &qword_27FFB35F8, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  if (v0 <= 0x3F)
  {
    sub_264E19780(319, &qword_27FFB1D18, type metadata accessor for STActivityMode);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E19780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_264E197E8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_264E198A8(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_264E1994C()
{
  result = sub_264E238E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264E199E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_264E19A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for ScreenTimeNotificationsAppIntentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 48));
  v6 = *(type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0) + 24);
  v7 = sub_264E238E8();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748) + 28));

  v9 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264E19C00@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(*(type metadata accessor for ScreenTimeNotificationsAppIntentView(0) - 8) + 80);

  return sub_264E18A84(a1, a2);
}

uint64_t sub_264E19CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3620, &qword_264E2A848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E19DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3620, &qword_264E2A848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UsageHeaderView.body.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  sub_264E19FE4(v1, &v15 - v4);
  v6 = type metadata accessor for UsageHeaderView(0);
  v7 = v6[6];
  v8 = *(v1 + v6[5]);
  v9 = v2[10];
  v10 = sub_264E238E8();
  (*(*(v10 - 8) + 16))(&v5[v9], v1 + v7, v10);
  v11 = *(v1 + v6[7]);
  *&v5[v2[9]] = v8;
  v12 = &v5[v2[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v5[v2[12]] = v11;
  v13 = &v5[v2[13]];
  *v13 = sub_264DF82C0;
  *(v13 + 1) = 0;
  sub_264E10FF8();

  sub_264E24C08();
  return sub_264E1A074(v5);
}

uint64_t sub_264E19FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E1A074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E1A0F8(int *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  sub_264E19FE4(v3, &v16 - v6);
  v8 = a1[6];
  v9 = *(v3 + a1[5]);
  v10 = v4[10];
  v11 = sub_264E238E8();
  (*(*(v11 - 8) + 16))(&v7[v10], v3 + v8, v11);
  v12 = *(v3 + a1[7]);
  *&v7[v4[9]] = v9;
  v13 = &v7[v4[11]];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v7[v4[12]] = v12;
  v14 = &v7[v4[13]];
  *v14 = sub_264DF82C0;
  *(v14 + 1) = 0;
  sub_264E10FF8();

  sub_264E24C08();
  return sub_264E1A074(v7);
}

uint64_t sub_264E1A284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageHeaderView.Model(0);
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

uint64_t sub_264E1A3D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UsageHeaderView.Model(0);
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

void sub_264E1A4D8()
{
  type metadata accessor for UsageHeaderView.Model(319);
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

uint64_t sub_264E1A5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E23C38();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E1A6B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E23C38();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264E1A7B8()
{
  sub_264E114FC();
  if (v0 <= 0x3F)
  {
    sub_264E23C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264E1A840(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_264E1A89C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_264E1A918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x26674ED70](v4, a3, &type metadata for AccessibilityLabelIfNotNil);
}

uint64_t sub_264E1A950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3650, &qword_264E2A9B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3658, &qword_264E2A9B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  if (a3)
  {
    v16[0] = a2;
    v16[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3660, &qword_264E2A9C0);
    sub_264E1ABF0();
    sub_264D89EB8();
    sub_264E24BE8();
    sub_264E1AC54(v13, v9);
    swift_storeEnumTagMultiPayload();
    sub_264E1AB64();
    sub_264E24858();
    return sub_264E1ACC4(v13);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3660, &qword_264E2A9C0);
    (*(*(v15 - 8) + 16))(v9, a1, v15);
    swift_storeEnumTagMultiPayload();
    sub_264E1AB64();
    sub_264E1ABF0();
    return sub_264E24858();
  }
}

unint64_t sub_264E1AB64()
{
  result = qword_27FFB3668;
  if (!qword_27FFB3668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3658, &qword_264E2A9B8);
    sub_264E1ABF0();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3668);
  }

  return result;
}

unint64_t sub_264E1ABF0()
{
  result = qword_27FFB3670;
  if (!qword_27FFB3670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3660, &qword_264E2A9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3670);
  }

  return result;
}

uint64_t sub_264E1AC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3658, &qword_264E2A9B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E1ACC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3658, &qword_264E2A9B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264E1AD30()
{
  result = qword_27FFB3678;
  if (!qword_27FFB3678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3680, &qword_264E2A9C8);
    sub_264E1AB64();
    sub_264E1ABF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3678);
  }

  return result;
}

uint64_t PickupsOverviewChart.body.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for OverviewChart(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DF2948(v0, v12);
  v13 = type metadata accessor for PickupsOverviewChart(0);
  v14 = *(v13 + 20);
  v15 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  sub_264E24E78();
  v16 = *(v1 + *(v13 + 24));
  v17 = v9[5];
  v18 = sub_264E23AA8();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  sub_264D93A14(v8, v5);

  sub_264E24D78();
  sub_264DF29CC(v8);
  v19 = v9[7];
  v20 = &v12[v9[8]];
  v26 = 0x4024000000000000;
  sub_264E24D78();
  v21 = v28;
  *v20 = v27;
  *(v20 + 1) = v21;
  v22 = &v12[v9[9]];
  v26 = 0;
  sub_264E24D78();
  v23 = v28;
  *v22 = v27;
  *(v22 + 1) = v23;
  v12[v9[10]] = 1;
  *&v12[v19] = v16;
  sub_264DF3344(&qword_27FFB2B30, type metadata accessor for OverviewChart);
  sub_264E24C08();
  return sub_264DF2A34(v12);
}

uint64_t sub_264E1B0B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PickupsOverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
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

  else
  {
    v16 = type metadata accessor for OverviewChart.Model(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_264E1B278(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PickupsOverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = type metadata accessor for OverviewChart.Model(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_264E1B3F8()
{
  type metadata accessor for PickupsOverviewChart.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264DF2F10(319, &qword_27FFB19F0, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_264DF2F10(319, &qword_27FFB22C0, &qword_27FFB22C8, &qword_264E27880, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for OverviewChart.Model(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_264E1B51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E23AA8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E1B620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E23AA8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_264E1B71C(uint64_t a1, uint64_t a2)
{
  if ((sub_264E23A78() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OverviewChart.Model(0);
  if ((sub_264D84128(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if ((sub_264E24C48() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v9 = *(type metadata accessor for PickupsOverviewChart.Model(0) + 20);

  return sub_264E23A78();
}

unint64_t sub_264E1B7F8()
{
  result = qword_27FFB36A8;
  if (!qword_27FFB36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB36A8);
  }

  return result;
}

uint64_t sub_264E1B84C(uint64_t a1, int a2)
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

uint64_t sub_264E1B894(uint64_t result, int a2, int a3)
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

uint64_t sub_264E1B914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36C0, &qword_264E2AC68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36C8, &qword_264E2AC70);
  v7 = *(v34 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v34);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36D0, &qword_264E2AC78);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  *v20 = sub_264E24768();
  *(v20 + 1) = 0x4030000000000000;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36D8, &qword_264E2AC80);
  sub_264E1BC8C(a1, &v20[*(v21 + 44)]);
  *v6 = sub_264E24778();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36E0, &qword_264E2AC88);
  sub_264E1CBB8(a1, &v6[*(v22 + 44)]);
  sub_264E24A28();
  sub_264D81DCC(&qword_27FFB36E8, &qword_27FFB36C0, &qword_264E2AC68);
  sub_264E24B98();
  sub_264D817BC(v6, &qword_27FFB36C0, &qword_264E2AC68);
  v23 = v17;
  v33 = v17;
  sub_264D81744(v20, v17, &qword_27FFB36D0, &qword_264E2AC78);
  v24 = v7[2];
  v25 = v34;
  v24(v10, v13, v34);
  v26 = v23;
  v27 = v35;
  sub_264D81744(v26, v35, &qword_27FFB36D0, &qword_264E2AC78);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36F0, &qword_264E2AC90);
  v29 = v27 + *(v28 + 48);
  *v29 = 0x4030000000000000;
  *(v29 + 8) = 0;
  v24((v27 + *(v28 + 64)), v10, v25);
  v30 = v7[1];
  v30(v13, v25);
  sub_264D817BC(v20, &qword_27FFB36D0, &qword_264E2AC78);
  v30(v10, v25);
  return sub_264D817BC(v33, &qword_27FFB36D0, &qword_264E2AC78);
}

uint64_t sub_264E1BC8C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3778, &qword_264E2AD20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  v11 = sub_264E24818();
  v21 = 1;
  sub_264E1BF4C(&v32);
  v24 = *&v33[16];
  v25 = *&v33[32];
  v26 = *&v33[48];
  v27 = v33[64];
  v22 = v32;
  v23 = *v33;
  v29 = v33[64];
  v28[2] = *&v33[16];
  v28[3] = *&v33[32];
  v28[4] = *&v33[48];
  v28[0] = v32;
  v28[1] = *v33;
  sub_264D81744(&v22, v30, &qword_27FFB3780, &qword_264E2AD28);
  sub_264D817BC(v28, &qword_27FFB3780, &qword_264E2AD28);
  *&v20[39] = v24;
  *&v20[55] = v25;
  *&v20[71] = v26;
  v20[87] = v27;
  *&v20[7] = v22;
  *&v20[23] = v23;
  v12 = v21;
  *v10 = sub_264E24818();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3788, &qword_264E2AD30);
  sub_264E1C0E4(a1, &v10[*(v13 + 44)]);
  sub_264D81744(v10, v7, &qword_27FFB3778, &qword_264E2AD20);
  v30[0] = v11;
  v30[1] = 0;
  LOBYTE(v31[0]) = v12;
  *(v31 + 1) = *v20;
  *(&v31[1] + 1) = *&v20[16];
  *(&v31[5] + 1) = *&v20[80];
  *(&v31[4] + 1) = *&v20[64];
  *(&v31[3] + 1) = *&v20[48];
  *(&v31[2] + 1) = *&v20[32];
  v14 = v31[0];
  *a2 = v11;
  a2[1] = v14;
  v15 = v31[1];
  v16 = v31[2];
  *(a2 + 89) = *(&v31[4] + 9);
  v17 = v31[4];
  a2[4] = v31[3];
  a2[5] = v17;
  a2[2] = v15;
  a2[3] = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3790, &qword_264E2AD38);
  sub_264D81744(v7, a2 + *(v18 + 48), &qword_27FFB3778, &qword_264E2AD20);
  sub_264D81744(v30, &v32, &qword_27FFB3798, &qword_264E2AD40);
  sub_264D817BC(v10, &qword_27FFB3778, &qword_264E2AD20);
  sub_264D817BC(v7, &qword_27FFB3778, &qword_264E2AD20);
  *&v33[33] = *&v20[32];
  *&v33[49] = *&v20[48];
  v34 = *&v20[64];
  *&v33[1] = *v20;
  v32 = v11;
  v33[0] = v12;
  v35 = *&v20[80];
  *&v33[17] = *&v20[16];
  return sub_264D817BC(&v32, &qword_27FFB3798, &qword_264E2AD40);
}

uint64_t sub_264E1BF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_264E24D18();
  v7 = [objc_opt_self() systemBlueColor];
  v8 = sub_264E24C38();
  KeyPath = swift_getKeyPath();
  v10 = sub_264E249F8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_264E24A38();
  sub_264D817BC(v5, &qword_27FFB17B8, &qword_264E279E0);
  v12 = swift_getKeyPath();
  v13 = sub_264E249A8();
  result = sub_264E243D8();
  *a1 = v6;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v8;
  *(a1 + 24) = v12;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_264E1C0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37A0, &qword_264E2AD48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  *v10 = sub_264E24778();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37A8, &qword_264E2AD50);
  sub_264E1C2D0(a1, &v10[*(v11 + 44)]);
  v21 = sub_264E24768();
  sub_264E1C938(a1, v22);
  v12 = v22[0];
  v13 = v22[1];
  v14 = v23;
  v15 = v24;
  v20 = v25;
  v16 = v26;
  LOBYTE(v22[0]) = 1;
  v28 = v23;
  v27 = v26;
  sub_264D81744(v10, v7, &qword_27FFB37A0, &qword_264E2AD48);
  sub_264D81744(v7, a2, &qword_27FFB37A0, &qword_264E2AD48);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37B0, &qword_264E2AD58) + 48);
  *v17 = v21;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  *(v17 + 24) = v12;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  v18 = v20;
  *(v17 + 48) = v15;
  *(v17 + 56) = v18;
  *(v17 + 64) = v16;
  sub_264D80F20(v12, v13, v14);

  sub_264D817BC(v10, &qword_27FFB37A0, &qword_264E2AD48);
  sub_264D817AC(v12, v13, v14);

  return sub_264D817BC(v7, &qword_27FFB37A0, &qword_264E2AD48);
}

uint64_t sub_264E1C2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37B8, &qword_264E2AD60);
  v5 = *(v4 - 8);
  v41 = v4 - 8;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v39[-v9];
  v11 = sub_264E247C8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_264E247B8();
  sub_264E247A8();
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  sub_264E24798();
  sub_264E247A8();
  v43[0] = *(a1 + 32);
  sub_264E24788();
  sub_264E247A8();
  sub_264E247E8();
  v15 = [objc_opt_self() bundle];
  v16 = sub_264E24AE8();
  v18 = v17;
  v20 = v19;
  sub_264E24A28();
  v21 = sub_264E24AA8();
  v23 = v22;
  v40 = v24;
  v26 = v25;
  sub_264D817AC(v16, v18, v20 & 1);

  v27 = swift_allocObject();
  v28 = *(a1 + 48);
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = v28;
  *(v27 + 80) = *(a1 + 64);
  *(v27 + 96) = *(a1 + 80);
  v29 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v29;
  sub_264DBD744(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37C0, &qword_264E2AD68);
  sub_264E1DCAC();
  sub_264E24DD8();
  v30 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37D0, &qword_264E2AD70) + 36)];
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37D8, &qword_264E2AD78) + 28);
  sub_264E24598();
  *v30 = swift_getKeyPath();
  v32 = &v10[*(v41 + 44)];
  v33 = *(sub_264E24568() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_264E247F8();
  (*(*(v35 - 8) + 104))(&v32->i8[v33], v34, v35);
  *v32 = vdupq_n_s64(0x4059000000000000uLL);
  *(v32->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3760, &qword_264E2ACD8) + 36)) = 256;
  v36 = v42;
  sub_264D81744(v10, v42, &qword_27FFB37B8, &qword_264E2AD60);
  *a2 = v21;
  *(a2 + 8) = v23;
  LOBYTE(v34) = v40 & 1;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37E0, &unk_264E2ADB0);
  sub_264D81744(v36, a2 + *(v37 + 64), &qword_27FFB37B8, &qword_264E2AD60);
  sub_264D80F20(v21, v23, v34);

  sub_264D817BC(v10, &qword_27FFB37B8, &qword_264E2AD60);
  sub_264D817BC(v36, &qword_27FFB37B8, &qword_264E2AD60);
  sub_264D817AC(v21, v23, v34);
}

uint64_t sub_264E1C760@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24[-v4];
  v6 = sub_264E24D18();
  v7 = sub_264E249F8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_264E24A38();
  sub_264D817BC(v5, &qword_27FFB17B8, &qword_264E279E0);
  sub_264E24A08();
  v8 = sub_264E24A58();

  KeyPath = swift_getKeyPath();
  v10 = sub_264E24C68();
  v11 = swift_getKeyPath();
  v12 = sub_264E24998();
  sub_264E243D8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v24[8] = 0;
  v21 = [objc_opt_self() quaternarySystemFillColor];
  v22 = sub_264E24C38();
  result = sub_264E24998();
  *a1 = v6;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v8;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v16;
  *(a1 + 64) = v18;
  *(a1 + 72) = v20;
  *(a1 + 80) = 0;
  *(a1 + 88) = v22;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_264E1C938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264E247C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_264E247B8();
  sub_264E247A8();
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  sub_264E24798();
  sub_264E247A8();
  sub_264E24798();
  sub_264E247A8();
  sub_264E247E8();
  v8 = [objc_opt_self() bundle];
  v9 = sub_264E24AE8();
  v11 = v10;
  LOBYTE(v7) = v12;
  sub_264E24CD8();
  v13 = sub_264E24AB8();
  v15 = v14;
  v17 = v16;

  sub_264D817AC(v9, v11, v7 & 1);

  sub_264E249D8();
  v18 = sub_264E24AD8();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_264D817AC(v13, v15, v17 & 1);

  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = 0x4030000000000000;
  *(a2 + 40) = 0;
  sub_264D80F20(v18, v20, v22 & 1);

  sub_264D817AC(v18, v20, v22 & 1);
}

uint64_t sub_264E1CBB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36F8, &qword_264E2AC98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3700, &qword_264E2ACA0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v35 - v12;
  MEMORY[0x28223BE20](v13);
  v36 = &v35 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  sub_264E243A8();
  v18 = sub_264E243C8();
  v35 = *(*(v18 - 8) + 56);
  v35(v6, 0, 1, v18);
  v19 = swift_allocObject();
  v20 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(a1 + 64);
  *(v19 + 96) = *(a1 + 80);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  sub_264DBD744(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3708, &qword_264E2ACA8);
  sub_264E1D970();
  sub_264E24DC8();
  sub_264E243B8();
  v35(v6, 0, 1, v18);
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = *(a1 + 80);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  sub_264DBD744(a1, v40);
  v25 = v36;
  sub_264E24DC8();
  v26 = v8[2];
  v27 = v37;
  v28 = v17;
  v26(v37, v17, v7);
  v29 = v38;
  v30 = v25;
  v26(v38, v25, v7);
  v31 = v39;
  v26(v39, v27, v7);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3768, &qword_264E2ACE0);
  v26(&v31[*(v32 + 48)], v29, v7);
  v33 = v8[1];
  v33(v30, v7);
  v33(v28, v7);
  v33(v29, v7);
  return (v33)(v27, v7);
}

uint64_t sub_264E1CFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3770, &qword_264E2AD18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_264E23978();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  sub_264E23968();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_264D817BC(v5, &qword_27FFB3770, &qword_264E2AD18);
  }

  (*(v7 + 32))(v10, v5, v6);
  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v15 = v14;
    v16 = sub_264E23958();
    [v15 openSensitiveURL:v16 withOptions:0];
  }

  return (*(v7 + 8))(v10, v6);
}

__n128 sub_264E1D1A4@<Q0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v26 = v4;
  v27 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_264E24818();
  v25 = sub_264E24778();
  LOBYTE(v24) = 1;
  LOWORD(v23) = 1;
  sub_264E24588();
  v10 = v6 & 1;
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  v13 = sub_264E24C38();
  KeyPath = swift_getKeyPath();
  v15 = [v11 quaternarySystemFillColor];
  v16 = sub_264E24C38();
  v17 = sub_264E24998();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3708, &qword_264E2ACA8) + 36));
  v19 = *(sub_264E24568() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_264E247F8();
  (*(*(v21 - 8) + 104))(&v18->i8[v19], v20, v21);
  *v18 = vdupq_n_s64(0x4059000000000000uLL);
  *(v18->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3760, &qword_264E2ACD8) + 36)) = 256;
  *a1 = v27;
  *(a1 + 8) = v26;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 96) = v32;
  *(a1 + 112) = v33;
  *(a1 + 128) = v34;
  *(a1 + 32) = v28;
  *(a1 + 48) = v29;
  result = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v31;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v13;
  *(a1 + 160) = v16;
  *(a1 + 168) = v17;
  return result;
}

uint64_t sub_264E1D41C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3770, &qword_264E2AD18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_264E23978();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  sub_264E23968();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v13 = sub_264D817BC(v5, &qword_27FFB3770, &qword_264E2AD18);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v14 = [objc_opt_self() defaultWorkspace];
    if (v14)
    {
      v15 = v14;
      v16 = sub_264E23958();
      [v15 openSensitiveURL:v16 withOptions:0];
    }

    v13 = (*(v7 + 8))(v10, v6);
  }

  v17 = a1[8];
  return (a1[7])(v13);
}

__n128 sub_264E1D5F8@<Q0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v26 = v4;
  v27 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_264E24818();
  v25 = sub_264E24778();
  LOBYTE(v24) = 1;
  LOWORD(v23) = 1;
  sub_264E24588();
  v10 = v6 & 1;
  v11 = objc_opt_self();
  v12 = [v11 systemBlueColor];
  v13 = sub_264E24C38();
  KeyPath = swift_getKeyPath();
  v15 = [v11 systemBlueColor];
  sub_264E24C38();
  v16 = sub_264E24CC8();

  v17 = sub_264E24998();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3708, &qword_264E2ACA8) + 36));
  v19 = *(sub_264E24568() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_264E247F8();
  (*(*(v21 - 8) + 104))(&v18->i8[v19], v20, v21);
  *v18 = vdupq_n_s64(0x4059000000000000uLL);
  *(v18->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3760, &qword_264E2ACD8) + 36)) = 256;
  *a1 = v27;
  *(a1 + 8) = v26;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 96) = v32;
  *(a1 + 112) = v33;
  *(a1 + 128) = v34;
  *(a1 + 32) = v28;
  *(a1 + 48) = v29;
  result = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v31;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v13;
  *(a1 + 160) = v16;
  *(a1 + 168) = v17;
  return result;
}

uint64_t sub_264E1D88C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v3;
  v17[4] = *(v1 + 64);
  v18 = *(v1 + 80);
  v4 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v4;
  *a1 = sub_264E24818();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36B0, &qword_264E2AC58);
  sub_264E1B914(v17, a1 + *(v5 + 44));
  v6 = sub_264E24998();
  sub_264E243D8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36B8, &qword_264E2AC60);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

unint64_t sub_264E1D970()
{
  result = qword_27FFB3710;
  if (!qword_27FFB3710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3708, &qword_264E2ACA8);
    sub_264E1DA28();
    sub_264D81DCC(&qword_27FFB3758, &qword_27FFB3760, &qword_264E2ACD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3710);
  }

  return result;
}

unint64_t sub_264E1DA28()
{
  result = qword_27FFB3718;
  if (!qword_27FFB3718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3720, &qword_264E2ACB0);
    sub_264E1DAE0();
    sub_264D81DCC(&qword_27FFB3748, &qword_27FFB3750, &qword_264E2ACD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3718);
  }

  return result;
}

unint64_t sub_264E1DAE0()
{
  result = qword_27FFB3728;
  if (!qword_27FFB3728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3730, &qword_264E2ACB8);
    sub_264E1DB98();
    sub_264D81DCC(&qword_27FFB1800, &qword_27FFB1808, &qword_264E26150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3728);
  }

  return result;
}

unint64_t sub_264E1DB98()
{
  result = qword_27FFB3738;
  if (!qword_27FFB3738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3740, &unk_264E2ACC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3738);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_264E1DC84()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return v1();
}

unint64_t sub_264E1DCAC()
{
  result = qword_27FFB37C8;
  if (!qword_27FFB37C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB37C0, &qword_264E2AD68);
    sub_264D819BC();
    sub_264D81DCC(&qword_27FFB3748, &qword_27FFB3750, &qword_264E2ACD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB37C8);
  }

  return result;
}

uint64_t sub_264E1DD88(uint64_t a1)
{
  v2 = sub_264E245A8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_264E246A8();
}

unint64_t sub_264E1DE60()
{
  result = qword_27FFB37E8;
  if (!qword_27FFB37E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB36B8, &qword_264E2AC60);
    sub_264D81DCC(&qword_27FFB37F0, &qword_27FFB37F8, &unk_264E2ADF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB37E8);
  }

  return result;
}

uint64_t SummaryView.Model.init(dateState:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a2;
  v84 = a1;
  v105 = sub_264E23AA8();
  v87 = *(v105 - 8);
  v4 = v87;
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v105);
  v101 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OverviewChart.Model(0);
  v7 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v12 = *(v11 - 8);
  v99 = (v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v79 - v14;
  v104 = sub_264E23C38();
  v16 = *(v104 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v79 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v79 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v86 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v98 = &v79 - v29;
  MEMORY[0x28223BE20](v30);
  v88 = &v79 - v31;
  MEMORY[0x28223BE20](v32);
  v94 = &v79 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v79 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v79 - v38;
  v80 = type metadata accessor for SummaryView.Model(0);
  v40 = *(v80 + 20);
  v85 = a3;
  v41 = a3 + v40;
  v42 = *(v4 + 56);
  v42(v39, 1, 1, v105);
  v91 = sub_264DEB44C(MEMORY[0x277D84F90]);
  sub_264E23BF8();
  v43 = *(type metadata accessor for UsageHeaderView.Model(0) + 20);
  v103 = v16;
  v44 = *(v16 + 16);
  v95 = v41;
  v45 = v41 + v43;
  v46 = v104;
  v44(v45, v24, v104);
  v97 = v24;
  v44(v21, v24, v46);
  v90 = v39;
  sub_264D81744(v39, v36, &qword_27FFB1860, &qword_264E267E0);
  v96 = v21;
  v47 = v21;
  v48 = v46;
  v44(v15, v47, v46);
  v49 = v99;
  v50 = *(v99 + 11);
  v51 = v105;
  v52 = v88;
  sub_264DEB44C(MEMORY[0x277D84F90]);
  v89 = *(v49 + 13);
  v92 = v42;
  v93 = v4 + 56;
  v42(&v15[v89], 1, 1, v51);

  v15[*(v49 + 12)] = 0;
  v99 = v15;
  *&v15[v50] = v91;
  sub_264D81744(v36, v52, &qword_27FFB1860, &qword_264E267E0);
  v53 = v87;
  v54 = *(v87 + 48);
  v55 = v54(v52, 1, v51);
  v91 = v54;
  if (v55 == 1)
  {
    v56 = v94;
    sub_264E23A98();
    sub_264D817BC(v36, &qword_27FFB1860, &qword_264E267E0);
    v57 = *(v103 + 8);
    v57(v96, v48);
    v57(v97, v48);
    sub_264D817BC(v90, &qword_27FFB1860, &qword_264E267E0);
    v58 = v53;
    if (v54(v52, 1, v51) != 1)
    {
      sub_264D817BC(v52, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    sub_264D817BC(v36, &qword_27FFB1860, &qword_264E267E0);
    v59 = *(v103 + 8);
    v59(v96, v48);
    v59(v97, v48);
    sub_264D817BC(v90, &qword_27FFB1860, &qword_264E267E0);
    v56 = v94;
    (*(v53 + 32))(v94, v52, v51);
    v58 = v53;
  }

  v92(v56, 0, 1, v51);
  v60 = v99;
  sub_264DEB634(v56, &v99[v89]);
  sub_264D90E64(v60, v95, &qword_27FFB1D90, &unk_264E268E0);
  v61 = v101;
  sub_264E23A98();
  v62 = v98;
  v63 = v51;
  Calendar.startOfWeek(containing:)(v61, v98);
  v64 = *(v58 + 8);
  v64(v61, v51);
  v65 = v91;
  result = v91(v62, 1, v51);
  v67 = v100;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v101 = sub_264E24C78();
    sub_264E23BF8();
    v68 = v86;
    Calendar.startOfWeek(containing:)(v62, v86);
    v69 = v68;
    result = v65(v68, 1, v63);
    v71 = v103;
    v70 = v104;
    if (result != 1)
    {
      v64(v62, v63);
      v72 = v82;
      (*(v58 + 32))(v82, v69, v63);
      v73 = v83;
      *(v72 + *(v83 + 20)) = MEMORY[0x277D84F90];
      v74 = *(v71 + 32);
      v74(v72 + v73[6], v67, v70);
      *(v72 + v73[7]) = v101;
      *(v72 + v73[8]) = 0;
      v75 = v81;
      sub_264E214F8(v72, v81, type metadata accessor for OverviewChart.Model);
      v76 = v75;
      v77 = v85;
      sub_264E214F8(v76, v85, type metadata accessor for OverviewChart.Model);
      v78 = v80;
      sub_264E214F8(v84, v77 + *(v80 + 24), type metadata accessor for ActivityNavigationState);
      return (v74)(v77 + *(v78 + 28), v102, v70);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264E1E78C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264E24748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3808, &qword_264E2AE38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_264D81744(v2, &v17 - v11, &qword_27FFB3808, &qword_264E2AE38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_264E243F8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_264E252B8();
    v16 = sub_264E24978();
    sub_264E23F98();

    sub_264E24738();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t SummaryView.Model.init(usageThisWeek:headerModel:totalUsageLastWeek:dateState:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v7 = *(v6 - 8);
  v58 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v53 - v9;
  v70 = sub_264E23C38();
  v10 = *(v70 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v70);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v62 = &v53 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v53 - v26;
  v64 = type metadata accessor for SummaryView.Model(0);
  v28 = *(v64 + 20);
  v68 = a5;
  v29 = a5 + v28;
  v30 = sub_264E23AA8();
  v55 = *(v30 - 8);
  v31 = v55 + 56;
  v71 = *(v55 + 56);
  v71(v27, 1, 1, v30);
  v54 = sub_264DEB44C(MEMORY[0x277D84F90]);
  sub_264E23BF8();
  v32 = *(type metadata accessor for UsageHeaderView.Model(0) + 20);
  v73 = v10;
  v33 = *(v10 + 16);
  v63 = v29;
  v34 = v70;
  (v33)(v29 + v32, v15, v70);
  v61 = v15;
  v35 = v56;
  v33();
  v59 = v27;
  v36 = v27;
  v37 = v30;
  sub_264D81744(v36, v24, &qword_27FFB1860, &qword_264E267E0);
  v38 = v72;
  (v33)(v72, v35, v34);
  v39 = v58;
  v40 = *(v58 + 44);
  sub_264DEB44C(MEMORY[0x277D84F90]);
  v57 = *(v39 + 52);
  v60 = v31;
  v71(&v38[v57], 1, 1, v37);
  v41 = v55;

  v38[*(v39 + 48)] = 0;
  *&v38[v40] = v54;
  sub_264D81744(v24, v19, &qword_27FFB1860, &qword_264E267E0);
  v42 = *(v41 + 48);
  v43 = v19;
  if (v42(v19, 1, v37) == 1)
  {
    v44 = v62;
    sub_264E23A98();
    sub_264D817BC(v24, &qword_27FFB1860, &qword_264E267E0);
    v45 = *(v73 + 8);
    v46 = v70;
    v45(v35, v70);
    v45(v61, v46);
    sub_264D817BC(v59, &qword_27FFB1860, &qword_264E267E0);
    if (v42(v43, 1, v37) != 1)
    {
      sub_264D817BC(v43, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    sub_264D817BC(v24, &qword_27FFB1860, &qword_264E267E0);
    v47 = *(v73 + 8);
    v46 = v70;
    v47(v35, v70);
    v47(v61, v46);
    sub_264D817BC(v59, &qword_27FFB1860, &qword_264E267E0);
    v44 = v62;
    (*(v41 + 32))(v62, v43, v37);
  }

  v71(v44, 0, 1, v37);
  v48 = v72;
  sub_264DEB634(v44, &v72[v57]);
  v49 = v63;
  sub_264D90E64(v48, v63, &qword_27FFB1D90, &unk_264E268E0);
  v50 = v68;
  sub_264E214F8(v65, v68, type metadata accessor for OverviewChart.Model);
  sub_264E21560(v66, v49);
  v51 = v64;
  sub_264E214F8(v67, v50 + *(v64 + 24), type metadata accessor for ActivityNavigationState);
  return (*(v73 + 32))(v50 + *(v51 + 28), v69, v46);
}

uint64_t SummaryView.init(bridge:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v3 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3800, &qword_264E2AE00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3808, &qword_264E2AE38);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for SummaryView(0);
  v17 = a2 + v16[5];
  v28 = 0;
  sub_264E24D78();
  v18 = v30;
  *v17 = v29;
  *(v17 + 1) = v18;
  v19 = v16[8];
  v20 = type metadata accessor for SummaryView.Model(0);
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  sub_264D81744(v15, v12, &qword_27FFB3800, &qword_264E2AE00);
  sub_264E24D78();
  sub_264D817BC(v15, &qword_27FFB3800, &qword_264E2AE00);
  v21 = v16[9];
  v22 = sub_264E23AA8();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_264D81744(v8, v5, &qword_27FFB1860, &qword_264E267E0);
  sub_264E24D78();
  sub_264D817BC(v8, &qword_27FFB1860, &qword_264E267E0);
  *(a2 + v16[6]) = v27;
  v23 = (a2 + v16[7]);
  v23[3] = type metadata accessor for ModelProvider();
  v23[4] = &protocol witness table for ModelProvider;
  __swift_allocate_boxed_opaque_existential_1(v23);
  return _s16ScreenTimeUICore13ModelProviderVACycfC_0();
}

uint64_t SummaryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = type metadata accessor for SummaryView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3810, &qword_264E2AE40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  sub_264E1F4A0(&v16 - v8);
  v10 = *(v1 + *(v3 + 32));
  swift_beginAccess();
  v11 = *(v6 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  swift_endAccess();
  sub_264E22764(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SummaryView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_264E214F8(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SummaryView);
  v14 = &v9[*(v6 + 56)];
  *v14 = sub_264E21610;
  *(v14 + 1) = v13;
  sub_264D81DCC(&qword_27FFB3830, &qword_27FFB3810, &qword_264E2AE40);
  sub_264E24C08();
  return sub_264D817BC(v9, &qword_27FFB3810, &qword_264E2AE40);
}

uint64_t sub_264E1F4A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  v84 = type metadata accessor for NoActivityView();
  v3 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v5 = (&v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38A8, &qword_264E2AF68);
  v6 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = &v70 - v7;
  v8 = sub_264E243F8();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38B0, &qword_264E2AF70);
  v14 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v16 = &v70 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38B8, &qword_264E2AF78);
  v17 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v70 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38C0, &qword_264E2AF80);
  v19 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v74 = &v70 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38C8, &qword_264E2AF88);
  v21 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v72 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v79 = &v70 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3800, &qword_264E2AE00);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v70 - v27;
  v29 = type metadata accessor for SummaryView.Model(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(type metadata accessor for SummaryView(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50);
  sub_264E24D88();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_264D817BC(v28, &qword_27FFB3800, &qword_264E2AE00);
    v35 = sub_264E249D8();
    v36 = [objc_opt_self() systemBackgroundColor];
    v37 = v84;
    v38 = *(v84 + 24);
    v39 = sub_264E23E98();
    (*(*(v39 - 8) + 56))(v5 + v38, 1, 1, v39);
    v40 = v5 + *(v37 + 28);
    v85 = 1;
    sub_264E24D78();
    v41 = v87;
    *v40 = v86;
    *(v40 + 1) = v41;
    *(v5 + *(v37 + 32)) = 0x4000000000000000;
    *v5 = v35;
    v5[1] = v36;
    sub_264E22764(v5, v82, type metadata accessor for NoActivityView);
    swift_storeEnumTagMultiPayload();
    sub_264E227FC(&qword_27FFB38D0, &qword_27FFB38C8, &qword_264E2AF88, sub_264E227CC);
    sub_264E229F0(&qword_27FFB3900, type metadata accessor for NoActivityView);
    sub_264E24858();
    v42 = type metadata accessor for NoActivityView;
    v43 = v5;
  }

  else
  {
    sub_264E214F8(v28, v33, type metadata accessor for SummaryView.Model);
    *v16 = sub_264E24828();
    *(v16 + 1) = 0x4024000000000000;
    v16[16] = 0;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3908, &qword_264E2AFA0);
    sub_264E20234(v33, v2, &v16[*(v44 + 44)]);
    v45 = sub_264E24988();
    sub_264E243D8();
    v46 = &v16[*(v70 + 36)];
    *v46 = v45;
    *(v46 + 1) = v47;
    *(v46 + 2) = v48;
    *(v46 + 3) = v49;
    *(v46 + 4) = v50;
    v46[40] = 0;
    sub_264E1E78C(v13);
    v52 = v77;
    v51 = v78;
    v53 = v71;
    (*(v77 + 104))(v71, *MEMORY[0x277CDF3C0], v78);
    v54 = sub_264E243E8();
    v55 = *(v52 + 8);
    v55(v53, v51);
    v55(v13, v51);
    v56 = objc_opt_self();
    v57 = &selRef_secondarySystemBackgroundColor;
    if ((v54 & 1) == 0)
    {
      v57 = &selRef_clearColor;
    }

    v58 = [v56 *v57];
    v59 = sub_264E24C38();
    v60 = sub_264E24998();
    v61 = v75;
    sub_264D90E64(v16, v75, &qword_27FFB38B0, &qword_264E2AF70);
    v62 = v61 + *(v76 + 36);
    *v62 = v59;
    *(v62 + 8) = v60;
    v63 = v61;
    v64 = v74;
    sub_264D90E64(v63, v74, &qword_27FFB38B8, &qword_264E2AF78);
    v65 = v72;
    v66 = (v64 + *(v73 + 36));
    *v66 = nullsub_1;
    v66[1] = 0;
    v66[2] = 0;
    v66[3] = 0;
    sub_264D90E64(v64, v65, &qword_27FFB38C0, &qword_264E2AF80);
    v67 = v79;
    v68 = (v65 + *(v80 + 36));
    *v68 = 0;
    v68[1] = 0;
    v68[2] = nullsub_1;
    v68[3] = 0;
    sub_264D90E64(v65, v67, &qword_27FFB38C8, &qword_264E2AF88);
    sub_264D81744(v67, v82, &qword_27FFB38C8, &qword_264E2AF88);
    swift_storeEnumTagMultiPayload();
    sub_264E227FC(&qword_27FFB38D0, &qword_27FFB38C8, &qword_264E2AF88, sub_264E227CC);
    sub_264E229F0(&qword_27FFB3900, type metadata accessor for NoActivityView);
    sub_264E24858();
    sub_264D817BC(v67, &qword_27FFB38C8, &qword_264E2AF88);
    v42 = type metadata accessor for SummaryView.Model;
    v43 = v33;
  }

  return sub_264E22A38(v43, v42);
}

uint64_t sub_264E1FD54(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3800, &qword_264E2AE00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v14 = *a1;
  v13 = a1[1];
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v15 = sub_264E23FC8();
  v16 = __swift_project_value_buffer(v15, qword_27FFB6C08);

  v36 = v16;
  v17 = sub_264E23FA8();
  v18 = sub_264E25298();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 136315138;
    if (v13)
    {
      v21 = v14;
    }

    else
    {
      v21 = 7104878;
    }

    v35 = v12;
    v22 = v14;
    v23 = v9;
    v24 = a2;
    if (v13)
    {
      v25 = v13;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_264DEA000(v21, v25, &v38);
    a2 = v24;
    v9 = v23;
    v14 = v22;
    v12 = v35;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_264D7D000, v17, v18, "SummaryView received userAltDSID %s; fetching model", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26674FCD0](v20, -1, -1);
    MEMORY[0x26674FCD0](v19, -1, -1);
  }

  v27 = type metadata accessor for SummaryView(0);
  v28 = (a2 + *(v27 + 28));
  v29 = v28[3];
  v30 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v30 + 24))(v14, v13, v29, v30);
  v31 = type metadata accessor for SummaryView.Model(0);
  (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
  v32 = *(v27 + 32);
  sub_264D81744(v12, v9, &qword_27FFB3800, &qword_264E2AE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50);
  sub_264E24D98();
  return sub_264D817BC(v12, &qword_27FFB3800, &qword_264E2AE00);
}

uint64_t sub_264E20234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39[1] = a2;
  v42 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  v10 = type metadata accessor for OverviewChart(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v41 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v39 - v15;
  v17 = type metadata accessor for UsageHeaderView(0);
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v39 - v23;
  v25 = type metadata accessor for SummaryView.Model(0);
  sub_264E22764(a1 + *(v25 + 20), v24, type metadata accessor for UsageHeaderView.Model);
  v26 = *(a1 + *(v25 + 24));
  sub_264D91F38(&v24[v18[8]]);
  *&v24[v18[7]] = v26;
  *&v24[v18[9]] = 0;
  sub_264E22764(a1, v16, type metadata accessor for OverviewChart.Model);
  LODWORD(a1) = *(type metadata accessor for SummaryView(0) + 36);
  v27 = v11[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
  sub_264E24DA8();
  v28 = v11[7];
  v29 = sub_264E23AA8();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_264D81744(v9, v6, &qword_27FFB1860, &qword_264E267E0);
  sub_264E24D78();
  sub_264D817BC(v9, &qword_27FFB1860, &qword_264E267E0);
  v30 = v11[9];
  v31 = &v16[v11[10]];
  v43 = 0x4024000000000000;
  sub_264E24D78();
  v32 = v45;
  *v31 = v44;
  *(v31 + 1) = v32;
  v33 = &v16[v11[11]];
  v43 = 0;
  sub_264E24D78();
  v34 = v45;
  *v33 = v44;
  *(v33 + 1) = v34;
  v16[v11[12]] = 0;
  *&v16[v30] = 0;
  sub_264E22764(v24, v21, type metadata accessor for UsageHeaderView);
  v35 = v41;
  sub_264E22764(v16, v41, type metadata accessor for OverviewChart);
  v36 = v42;
  sub_264E22764(v21, v42, type metadata accessor for UsageHeaderView);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3910, &unk_264E2AFA8);
  sub_264E22764(v35, v36 + *(v37 + 48), type metadata accessor for OverviewChart);
  sub_264E22A38(v16, type metadata accessor for OverviewChart);
  sub_264E22A38(v24, type metadata accessor for UsageHeaderView);
  sub_264E22A38(v35, type metadata accessor for OverviewChart);
  return sub_264E22A38(v21, type metadata accessor for UsageHeaderView);
}

uint64_t sub_264E20654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = a1 - 8;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3810, &qword_264E2AE40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  sub_264E1F4A0(&v16 - v8);
  v10 = *(v2 + *(v3 + 32));
  swift_beginAccess();
  v11 = *(v6 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  swift_endAccess();
  sub_264E22764(v2, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SummaryView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_264E214F8(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SummaryView);
  v14 = &v9[*(v6 + 56)];
  *v14 = sub_264E22A9C;
  *(v14 + 1) = v13;
  sub_264D81DCC(&qword_27FFB3830, &qword_27FFB3810, &qword_264E2AE40);
  sub_264E24C08();
  return sub_264D817BC(v9, &qword_27FFB3810, &qword_264E2AE40);
}

double sub_264E208AC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_264E2092C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264E24348();
}

uint64_t sub_264E209B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  return v1;
}

uint64_t sub_264E20A24()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264E24348();
}

void (*sub_264E20AA0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264E24328();
  return sub_264DE5A40;
}

uint64_t sub_264E20B44(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  return swift_endAccess();
}

uint64_t sub_264E20BBC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3838, &qword_264E2AEA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24318();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_264E20D40()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  return swift_endAccess();
}

uint64_t sub_264E20DB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3838, &qword_264E2AEA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24318();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_264E20EEC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3838, &qword_264E2AEA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  swift_endAccess();
  return sub_264DE5FC0;
}

uint64_t SummaryView.Bridge.__allocating_init(userAltDSID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v16 = 0;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3840, &qword_264E2AEB0);
  sub_264E242F8();
  (*(v7 + 32))(v13 + v14, v10, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a1;
  v17 = a2;

  sub_264E24348();
  return v13;
}

uint64_t SummaryView.Bridge.init(userAltDSID:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v12 = 0;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3840, &qword_264E2AEB0);
  sub_264E242F8();
  (*(v6 + 32))(v2 + v10, v9, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v13 = a2;

  sub_264E24348();
  return v2;
}

uint64_t SummaryView.Bridge.deinit()
{
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SummaryView.Bridge.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264E21430(uint64_t a1)
{
  v2 = sub_264E243F8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_264E24608();
}

uint64_t sub_264E214F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E21560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageHeaderView.Model(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E21654(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3848, qword_264E2AF10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_264E21800(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3848, qword_264E2AF10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_264E21998()
{
  sub_264E21AD4();
  if (v0 <= 0x3F)
  {
    sub_264DDD520();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SummaryView.Bridge(319);
      if (v2 <= 0x3F)
      {
        sub_264DED6E4();
        if (v3 <= 0x3F)
        {
          sub_264E2210C(319, &qword_27FFB3868, &qword_27FFB3800, &qword_264E2AE00, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_264E2210C(319, &qword_27FFB19E8, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE10B8]);
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

void sub_264E21AD4()
{
  if (!qword_27FFB3860)
  {
    sub_264E243F8();
    v0 = sub_264E24438();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB3860);
    }
  }
}

uint64_t sub_264E21B60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UsageHeaderView.Model(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for ActivityNavigationState(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_264E23C38();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_264E21CFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for UsageHeaderView.Model(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for ActivityNavigationState(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_264E23C38();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_264E21E90()
{
  result = type metadata accessor for OverviewChart.Model(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UsageHeaderView.Model(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ActivityNavigationState(319);
      if (v3 <= 0x3F)
      {
        result = sub_264E23C38();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_264E21F4C()
{
  sub_264E2210C(319, &qword_27FFB3890, &qword_27FFB3840, &qword_264E2AEB0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264E2210C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_264E22174()
{
  result = qword_27FFB3898;
  if (!qword_27FFB3898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB38A0, &qword_264E2AF60);
    sub_264D81DCC(&qword_27FFB3830, &qword_27FFB3810, &qword_264E2AE40);
    sub_264E229F0(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3898);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = v0;
  v2 = type metadata accessor for SummaryView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = (v0 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3808, &qword_264E2AE38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_264E243F8();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v2[5] + 8);

  v10 = *(v6 + v2[6]);

  __swift_destroy_boxed_opaque_existential_1Tm((v6 + v2[7]));
  v11 = v6 + v2[8];
  v12 = type metadata accessor for SummaryView.Model(0);
  if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
  {
    v38 = v5;
    v39 = (v3 + 16) & ~v3;
    v40 = v3;
    v41 = v0;
    v13 = sub_264E23AA8();
    v42 = *(v13 - 8);
    v43 = *(v42 + 8);
    v43(v11, v13);
    v14 = type metadata accessor for OverviewChart.Model(0);
    v15 = *&v11[v14[5]];

    v16 = v14[6];
    v17 = sub_264E23C38();
    v18 = *(*(v17 - 8) + 8);
    v18(&v11[v16], v17);
    v19 = *&v11[v14[7]];

    v20 = &v11[v12[5]];
    v37 = v18;
    v18(v20, v17);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
    v22 = *&v20[*(v21 + 36)];

    v23 = *(v21 + 44);
    if (!(*(v42 + 48))(&v20[v23], 1, v13))
    {
      v43(&v20[v23], v13);
    }

    v24 = type metadata accessor for UsageHeaderView.Model(0);
    v18(&v20[*(v24 + 20)], v17);
    v25 = &v11[v12[6]];
    v36 = v25;
    v26 = type metadata accessor for ActivityNavigationState(0);
    v27 = &v25[*(v26 + 20)];
    v43(v27, v13);
    v28 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
    v29 = sub_264E238E8();
    (*(*(v29 - 8) + 8))(&v27[v28], v29);
    v37(&v36[*(v26 + 24)], v17);
    v37(&v11[v12[7]], v17);
    v3 = v40;
    v1 = v41;
    v5 = v38;
    v4 = v39;
  }

  v30 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50) + 28)];

  v31 = v6 + v2[9];
  v32 = sub_264E23AA8();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v31, 1, v32))
  {
    (*(v33 + 8))(v31, v32);
  }

  v34 = *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0) + 28)];

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_264E226F4(uint64_t *a1)
{
  v3 = *(type metadata accessor for SummaryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_264E1FD54(a1, v4);
}

uint64_t sub_264E22764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E227FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264E22880()
{
  result = qword_27FFB38E0;
  if (!qword_27FFB38E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB38B8, &qword_264E2AF78);
    sub_264E22938();
    sub_264D81DCC(&qword_27FFB3748, &qword_27FFB3750, &qword_264E2ACD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB38E0);
  }

  return result;
}

unint64_t sub_264E22938()
{
  result = qword_27FFB38E8;
  if (!qword_27FFB38E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB38B0, &qword_264E2AF70);
    sub_264D81DCC(&qword_27FFB38F0, &qword_27FFB38F8, &unk_264E2AF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB38E8);
  }

  return result;
}

uint64_t sub_264E229F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264E22A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264E22AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LastUpdatedView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_264E22B70();
  sub_264D89EB8();
  result = sub_264E24AF8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_264E22B70()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3928, qword_264E2B038);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v10 = sub_264E23AA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264D93A14(v1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_264D817BC(v9, &qword_27FFB1860, &qword_264E267E0);
    v15 = [objc_opt_self() bundle];
    v16 = sub_264E23938();
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v17 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v17 setTimeStyle_];
    [v17 setDateStyle_];
    [v17 setDoesRelativeDateFormatting_];
    [v17 setFormattingContext_];
    v18 = [objc_opt_self() bundle];
    v29[1] = sub_264E23938();

    v19 = [objc_opt_self() currentLocale];
    sub_264E23AB8();

    v20 = sub_264E23AD8();
    (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2610, &unk_264E27E60);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_264E261E0;
    v22 = v5;
    v23 = sub_264E23A38();
    v24 = [v17 stringFromDate_];

    v25 = sub_264E25108();
    v27 = v26;

    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_264DDBB6C();
    *(v21 + 32) = v25;
    *(v21 + 40) = v27;
    v16 = sub_264E25118();

    sub_264D817BC(v22, &qword_27FFB3928, qword_264E2B038);
    (*(v11 + 8))(v14, v10);
  }

  return v16;
}

uint64_t sub_264E23024@<X0>(uint64_t a1@<X8>)
{
  sub_264E22B70();
  sub_264D89EB8();
  result = sub_264E24AF8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_264E23090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264E2311C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LastUpdatedView()
{
  result = qword_27FFB3918;
  if (!qword_27FFB3918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264E231E4()
{
  sub_264DDB89C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27FFB6BF0 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27FFB6BE4 > a2)
  {
    return 1;
  }

  if (dword_27FFB6BE4 < a2)
  {
    return 0;
  }

  return dword_27FFB6BE8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27FFB6BF8 == -1)
  {
    if (qword_27FFB6C00)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27FFB6C00)
    {
      goto LABEL_3;
    }
  }

  if (qword_27FFB6BF0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27FFB6BE4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27FFB6BE4 >= a3)
      {
        result = dword_27FFB6BE8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27FFB6C00;
  if (qword_27FFB6C00)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27FFB6C00 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x26674F720](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27FFB6BE4, &dword_27FFB6BE8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}