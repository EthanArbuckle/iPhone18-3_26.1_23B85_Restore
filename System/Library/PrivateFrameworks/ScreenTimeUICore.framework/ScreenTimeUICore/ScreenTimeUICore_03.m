uint64_t sub_264DC6370(uint64_t a1)
{
  v2 = sub_264E23C18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21E8, qword_264E27508);
    v10 = sub_264E25388();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_264DC6980(&qword_27FFB21F0, MEMORY[0x277CC99D0]);
      v18 = sub_264E25038();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_264DC6980(&qword_27FFB21F8, MEMORY[0x277CC99D0]);
          v25 = sub_264E25068();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_264DC66B4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_264E25408())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21E0, &qword_264E27500);
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
      v8 = MEMORY[0x26674F510](v7, v1);
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
        sub_264E23F38();
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
        sub_264E23F38();
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

uint64_t sub_264DC6980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DC69E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_264DC6B10;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_264DC6B10(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_264DC6CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E23C18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264E23C38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  sub_264E23BF8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9968], v2);
  sub_264E23BC8();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v16 = sub_264E23AA8();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v15, 1, v16);
  if (result != 1)
  {
    return (*(v17 + 32))(a1, v15, v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_264DC6F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v21 - v5;
  v7 = *v1;
  v21[0] = sub_264E17C60(*v1);
  v21[1] = v8;
  sub_264D89EB8();
  v9 = sub_264E24AF8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_264E23C38();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = sub_264E17D5C(v6, v7);
  v19 = v18;
  result = sub_264DC7088(v6);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 40) = v19;
  return result;
}

uint64_t sub_264DC7088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264DC70F4()
{
  result = qword_27FFB2200;
  if (!qword_27FFB2200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2208, &qword_264E27648);
    sub_264DC7180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2200);
  }

  return result;
}

unint64_t sub_264DC7180()
{
  result = qword_27FFB2210;
  if (!qword_27FFB2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2210);
  }

  return result;
}

uint64_t sub_264DC71E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<D0>)
{
  v46 = a1;
  v50 = a2;
  v4 = sub_264E24148();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_264E24288();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1940, &unk_264E262B0);
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1938, &unk_264E276E0);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v39 = &v39 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1930, &unk_264E262A0);
  v23 = *(v22 - 8);
  v44 = v22;
  v45 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v40 = &v39 - v25;
  sub_264E247D8();
  v55[0] = a3;
  sub_264E240F8();

  sub_264E24278();
  v55[0] = sub_264E24C98();
  v26 = MEMORY[0x277CE0F78];
  v27 = MEMORY[0x277CBB450];
  v28 = MEMORY[0x277CE0F60];
  sub_264E24038();
  (*(v10 + 8))(v13, v9);

  sub_264E24478();
  v51 = v9;
  v52 = v26;
  v53 = v27;
  v54 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v39;
  sub_264E24078();
  sub_264DCF968(v55);
  (*(v41 + 8))(v17, v14);
  v31 = v47;
  sub_264E24138();
  sub_264E24F78();
  v51 = v14;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = MEMORY[0x277CE0BC8];
  v34 = MEMORY[0x277CE0BD8];
  v35 = v40;
  v36 = v42;
  sub_264E24028();
  (*(v48 + 8))(v31, v49);
  (*(v43 + 8))(v30, v36);
  v51 = v36;
  v52 = v34;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v44;
  sub_264E24068();
  return (*(v45 + 8))(v35, v37);
}

uint64_t OverviewChart.Day.init(date:value:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_264E23AF8();
  v8 = sub_264E23C38();
  (*(*(v8 - 8) + 8))(a2, v8);
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 8))(a1, v9);
  result = type metadata accessor for OverviewChart.Day(0);
  *(a3 + *(result + 20)) = a4;
  return result;
}

BOOL static OverviewChart.Day.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_264E23A78() & 1) == 0 || (sub_264E23A78() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OverviewChart.Day(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t OverviewChart.Model.init(startOfWeek:dailyCounts:calendar:barColor:chartDataType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = *a5;
  Calendar.startOfWeek(containing:)(a1, &v23 - v14);
  v17 = sub_264E23AA8();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v15, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 8))(a1, v17);
    (*(v18 + 32))(a6, v15, v17);
    v20 = type metadata accessor for OverviewChart.Model(0);
    *(a6 + v20[5]) = a2;
    v21 = v20[6];
    v22 = sub_264E23C38();
    result = (*(*(v22 - 8) + 32))(a6 + v21, a3, v22);
    *(a6 + v20[7]) = a4;
    *(a6 + v20[8]) = v16;
  }

  return result;
}

uint64_t sub_264DC7B34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  v23 = v1 + *(type metadata accessor for OverviewChart.Model(0) + 24);
  Calendar.startOfWeek(containing:)(a1, v22);
  (*(v5 + 16))(v19, v2, v4);
  (*(v5 + 56))(v19, 0, 1, v4);
  v24 = *(v9 + 56);
  sub_264D93A14(v22, v12);
  sub_264D93A14(v19, &v12[v24]);
  v25 = *(v5 + 48);
  if (v25(v12, 1, v4) != 1)
  {
    sub_264D93A14(v12, v16);
    if (v25(&v12[v24], 1, v4) != 1)
    {
      v27 = &v12[v24];
      v28 = v32;
      (*(v5 + 32))(v32, v27, v4);
      sub_264DCE658(&qword_27FFB1868, MEMORY[0x277CC9578]);
      v26 = sub_264E25068();
      v29 = *(v5 + 8);
      v29(v28, v4);
      sub_264D817BC(v19, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v22, &qword_27FFB1860, &qword_264E267E0);
      v29(v16, v4);
      sub_264D817BC(v12, &qword_27FFB1860, &qword_264E267E0);
      return v26 & 1;
    }

    sub_264D817BC(v19, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v22, &qword_27FFB1860, &qword_264E267E0);
    (*(v5 + 8))(v16, v4);
    goto LABEL_6;
  }

  sub_264D817BC(v19, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v22, &qword_27FFB1860, &qword_264E267E0);
  if (v25(&v12[v24], 1, v4) != 1)
  {
LABEL_6:
    sub_264D817BC(v12, &qword_27FFB1858, &unk_264E26200);
    v26 = 0;
    return v26 & 1;
  }

  sub_264D817BC(v12, &qword_27FFB1860, &qword_264E267E0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_264DC7F68(uint64_t a1)
{
  v40 = a1;
  v47 = sub_264E23AA8();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v47);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OverviewChart.Day(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for OverviewChart.Model(0);
  v39 = v1;
  v11 = *(v1 + *(v38 + 20));
  v12 = *(v11 + 16);
  if (!v12)
  {
    v15 = MEMORY[0x277D84F98];
LABEL_17:
    sub_264DD26C0(v15, v39, v39 + *(v38 + 24), v40);
  }

  v13 = 0;
  v14 = *(v6 + 20);
  v44 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v45 = v14;
  v46 = (v2 + 16);
  v41 = v2;
  v43 = (v2 + 8);
  v15 = MEMORY[0x277D84F98];
  v42 = v11;
  while (v13 < *(v11 + 16))
  {
    v16 = v7;
    sub_264DCE54C(v44 + *(v7 + 72) * v13, v10, type metadata accessor for OverviewChart.Day);
    v17 = *v46;
    (*v46)(v5, v10, v47);
    v18 = *&v10[v45];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v15;
    v20 = sub_264D9D5F4(v5);
    v22 = v15[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v15[3] < v25)
    {
      sub_264D9E6F0(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_264D9D5F4(v5);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v15 = v48;
      if (v26)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v35 = v20;
    sub_264DA12F8();
    v20 = v35;
    v15 = v48;
    if (v26)
    {
LABEL_3:
      *(v15[7] + 8 * v20) = v18;
      (*v43)(v5, v47);
      sub_264DCE5B4(v10);
      goto LABEL_4;
    }

LABEL_12:
    v28 = v10;
    v29 = v12;
    v15[(v20 >> 6) + 8] |= 1 << v20;
    v30 = v41;
    v31 = v20;
    v32 = v47;
    v17((v15[6] + *(v41 + 72) * v20), v5, v47);
    *(v15[7] + 8 * v31) = v18;
    (*(v30 + 8))(v5, v32);
    sub_264DCE5B4(v28);
    v33 = v15[2];
    v24 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v15[2] = v34;
    v12 = v29;
    v10 = v28;
LABEL_4:
    ++v13;
    v7 = v16;
    v11 = v42;
    if (v12 == v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DC8324@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverviewChart.Day(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  result = type metadata accessor for OverviewChart.Model(0);
  v12 = *(v1 + *(result + 20));
  v13 = *(v12 + 16);
  while (1)
  {
    if (!v13)
    {
      v18 = sub_264E23AA8();
      return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    }

    if (v13 > *(v12 + 16))
    {
      break;
    }

    --v13;
    v14 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13;
    sub_264DCE54C(v14, v7, type metadata accessor for OverviewChart.Day);
    v15 = *&v7[*(v3 + 20)];
    result = sub_264DCE5B4(v7);
    if (v15 > 0.0)
    {
      sub_264DCE54C(v14, v10, type metadata accessor for OverviewChart.Day);
      v16 = sub_264E23AA8();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v10, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }
  }

  __break(1u);
  return result;
}

char *sub_264DC8554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2308, &qword_264E27900);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27[-v6];
  v8 = type metadata accessor for OverviewChart.Day(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v14 = *(a1 + *(v8 + 20));
    if (v14 <= 0.0)
    {
      return MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v11);
    *&v27[-16] = a1;
    sub_264D93D38(sub_264D915F8, a2, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_264D817BC(v7, &qword_27FFB2308, &qword_264E27900);
      v15 = 0.0;
    }

    else
    {
      sub_264DCDEBC(v7, v13, type metadata accessor for OverviewChart.Day);
      v23 = *&v13[*(v8 + 20)];
      sub_264DCE5B4(v13);
      v15 = v23 / v14;
    }

    v16 = sub_264DBC37C(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = *(v16 + 2);
    v17 = *(v16 + 3);
    v25 = v17 >> 1;
    v18 = v24 + 1;
    if (v17 >> 1 <= v24)
    {
      v16 = sub_264DBC37C((v17 > 1), v24 + 1, 1, v16);
      v17 = *(v16 + 3);
      v25 = v17 >> 1;
    }

    *(v16 + 2) = v18;
    v26 = &v16[24 * v24];
    *(v26 + 4) = v15;
    *(v26 + 5) = 0x6F697463656C6573;
    *(v26 + 6) = 0xE90000000000006ELL;
    if (1.0 - v15 < 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0 - v15;
    }

    v19 = v24 + 2;
    if (v25 < v19)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = sub_264DBC37C(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    v19 = v18 + 1;
    v20 = 1.0;
    if (v18 >= v17 >> 1)
    {
LABEL_16:
      v16 = sub_264DBC37C((v17 > 1), v19, 1, v16);
    }
  }

  *(v16 + 2) = v19;
  v21 = &v16[24 * v18];
  *(v21 + 4) = v20;
  *(v21 + 5) = 0x65646E69616D6572;
  *(v21 + 6) = 0xE900000000000072;
  return v16;
}

uint64_t OverviewChart.init(model:interactive:selectedDay:selectedItem:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a4;
  v25 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v24[-v13];
  v15 = type metadata accessor for OverviewChart(0);
  v16 = v15[5];
  v17 = sub_264E23AA8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  sub_264D93A14(v14, v11);
  sub_264E24D78();
  sub_264D817BC(v14, &qword_27FFB1860, &qword_264E267E0);
  v18 = v15[7];
  v19 = (a5 + v15[8]);
  v27 = 0x4024000000000000;
  sub_264E24D78();
  v20 = v29;
  *v19 = v28;
  v19[1] = v20;
  v21 = (a5 + v15[9]);
  v27 = 0;
  sub_264E24D78();
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  sub_264DCDEBC(a1, a5, type metadata accessor for OverviewChart.Model);
  result = sub_264D90E64(a3, a5 + v15[6], &qword_27FFB1870, &unk_264E26210);
  *(a5 + v15[10]) = v25;
  *(a5 + v18) = v26;
  return result;
}

uint64_t OverviewChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v137 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1878, &unk_264E27650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = &v110 - v5;
  v6 = sub_264E23C18();
  v141 = *(v6 - 8);
  v142 = v6;
  v7 = *(v141 + 64);
  MEMORY[0x28223BE20](v6);
  *&v140 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v139 = &v110 - v11;
  v12 = sub_264E238E8();
  v138 = *(v12 - 8);
  v13 = *(v138 + 64);
  MEMORY[0x28223BE20](v12);
  v110 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for OverviewChart(0);
  v15 = *(v144 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v144);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2218, &qword_264E27660);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v110 - v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2220, &qword_264E27668);
  v113 = *(v114 - 8);
  v22 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v24 = &v110 - v23;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2228, &qword_264E27670);
  v116 = *(v117 - 8);
  v25 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = &v110 - v26;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2230, &unk_264E27678);
  v121 = *(v123 - 8);
  v27 = *(v121 + 64);
  MEMORY[0x28223BE20](v123);
  v118 = &v110 - v28;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BD8, &unk_264E26660);
  v125 = *(v129 - 8);
  v29 = *(v125 + 64);
  MEMORY[0x28223BE20](v129);
  v124 = &v110 - v30;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2238, &qword_264E27688);
  v134 = *(v135 - 8);
  v31 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v131 = &v110 - v32;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2240, &qword_264E27690);
  v132 = *(v133 - 8);
  v33 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v130 = &v110 - v34;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2248, &qword_264E27698);
  v35 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v127 = &v110 - v36;
  v146 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2250, &qword_264E276A0);
  sub_264DCDB28();
  sub_264E241C8();
  sub_264DCE54C(v2, &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverviewChart);
  v37 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v120 = *(v15 + 80);
  v119 = v37 + v16;
  v38 = swift_allocObject();
  v122 = v37;
  v136 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v12;
  sub_264DCDEBC(v136, v38 + v37, type metadata accessor for OverviewChart);
  v40 = type metadata accessor for OverviewChart.Model(0);
  v41 = sub_264D81DCC(&qword_27FFB2290, &qword_27FFB2218, &qword_264E27660);
  v42 = sub_264DCE658(&qword_27FFB2298, type metadata accessor for OverviewChart.Model);
  v112 = v24;
  sub_264E24C28();

  v43 = *(v18 + 8);
  v111 = v17;
  v44 = v17;
  v45 = v138;
  v43(v21, v44);
  v46 = v139;
  v143 = v40;
  v47 = *(v40 + 24);
  v49 = v141;
  v48 = v142;
  v50 = v140;
  (*(v141 + 104))(v140, *MEMORY[0x277CC9940], v142);
  v145 = v2;
  sub_264E23B08();
  (*(v49 + 8))(v50, v48);
  result = (*(v45 + 48))(v46, 1, v39);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v52 = v110;
    (*(v45 + 32))(v110, v46, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
    v53 = *(sub_264E23AA8() - 8);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    v140 = xmmword_264E261F0;
    *(v56 + 16) = xmmword_264E261F0;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23888();
    (*(v45 + 8))(v52, v39);
    v153 = v56;
    v57 = sub_264E242D8();
    v139 = *(*(v57 - 8) + 56);
    v58 = v126;
    (v139)(v126, 1, 1, v57);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1968, &unk_264E27700);
    v149 = v111;
    v150 = v143;
    v151 = v41;
    v152 = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    v62 = v115;
    v63 = v114;
    v64 = v112;
    sub_264E24B38();
    sub_264D817BC(v58, &qword_27FFB1878, &unk_264E27650);

    (*(v113 + 8))(v64, v63);
    v65 = (v145 + *(v144 + 8));
    v66 = *v65;
    v142 = v65[1];
    v149 = v66;
    v150 = v142;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
    sub_264E24D88();
    v67 = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
    v68 = swift_allocObject();
    *(v68 + 16) = v140;
    *(v68 + 32) = 0;
    *(v68 + 40) = v67;
    v148 = v68;
    (v139)(v58, 1, 1, v57);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1988, &unk_264E262E0);
    v149 = v63;
    v150 = v59;
    v151 = OpaqueTypeConformance2;
    v152 = v61;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    v72 = v118;
    v73 = v117;
    sub_264E24B48();
    sub_264D817BC(v58, &qword_27FFB1878, &unk_264E27650);

    (*(v116 + 8))(v62, v73);
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1998, &unk_264E27720);
    v149 = v73;
    v150 = v69;
    v151 = v70;
    v152 = v71;
    v74 = swift_getOpaqueTypeConformance2();
    *&v140 = MEMORY[0x277CBB460];
    v75 = sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720);
    v76 = v124;
    v77 = v123;
    sub_264E24B08();
    (*(v121 + 8))(v72, v77);
    v149 = v66;
    v78 = v142;
    v150 = v142;
    sub_264E24D88();
    v79 = *(v143 + 32);
    v80 = v145;
    LOBYTE(v149) = *(v145 + v79);
    Y13chartDataTypeSaySdGSd_AA0E7FormatsC0kL0OtFZ_0 = _s16ScreenTimeUICore13OverviewChartV5ModelV7yStride8forLastY13chartDataTypeSaySdGSd_AA0E7FormatsC0kL0OtFZ_0(&v149, v147);
    v149 = v66;
    v150 = v78;
    sub_264E24D88();
    v82 = v147;
    v83 = (v80 + *(v144 + 9));
    v84 = *v83;
    v85 = v83[1];
    v149 = v84;
    v150 = v85;
    v86 = sub_264E24D88();
    v144 = &v110;
    v87 = *(v80 + v79);
    MEMORY[0x28223BE20](v86);
    *(&v110 - 6) = Y13chartDataTypeSaySdGSd_AA0E7FormatsC0kL0OtFZ_0;
    *(&v110 - 5) = v88;
    *(&v110 - 32) = 0;
    *(&v110 - 3) = v82;
    *(&v110 - 16) = v89;
    *(&v110 - 1) = v76;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19A8, &unk_264E262F0);
    v149 = v77;
    v150 = v139;
    v151 = v74;
    v152 = v75;
    v91 = swift_getOpaqueTypeConformance2();
    v92 = sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0);
    v93 = v131;
    v94 = v129;
    sub_264E24B18();

    (*(v125 + 8))(v76, v94);
    v95 = v136;
    sub_264DCE54C(v80, v136, type metadata accessor for OverviewChart);
    v96 = swift_allocObject();
    sub_264DCDEBC(v95, v96 + v122, type metadata accessor for OverviewChart);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19B8, &qword_264E27730);
    v149 = v94;
    v150 = v90;
    v151 = v91;
    v152 = v92;
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19C0, &qword_27FFB19B8, &qword_264E27730);
    v97 = v130;
    v98 = v135;
    sub_264E24B58();

    (*(v134 + 8))(v93, v98);
    LOBYTE(v91) = sub_264E249A8();
    sub_264E243D8();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v107 = v127;
    (*(v132 + 32))(v127, v97, v133);
    v108 = v107 + *(v128 + 36);
    *v108 = v91;
    *(v108 + 8) = v100;
    *(v108 + 16) = v102;
    *(v108 + 24) = v104;
    *(v108 + 32) = v106;
    *(v108 + 40) = 0;
    v109 = v137;
    sub_264DCE4AC(v107, v137);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22A0, &qword_264E27738);
    *(v109 + *(result + 36)) = 0;
  }

  return result;
}

uint64_t sub_264DC9BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2310, &qword_264E27908);
  v4 = *(v3 - 8);
  v53 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C28, &qword_264E266A0);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v47 - v11;
  v12 = type metadata accessor for OverviewChart(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2268, &qword_264E276A8);
  v57 = *(v49 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v49);
  v55 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = *(a1 + *(type metadata accessor for OverviewChart.Model(0) + 20));
  v60 = a1;

  sub_264D82948(sub_264DCFE8C, v59, v21);
  v64 = v22;
  sub_264DCE54C(a1, &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverviewChart);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = swift_allocObject();
  sub_264DCDEBC(&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for OverviewChart);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22C8, &qword_264E27880);
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2278, &unk_264E276B0);
  sub_264D81DCC(&qword_27FFB2318, &qword_27FFB22C8, &qword_264E27880);
  sub_264DCDCFC();
  sub_264DCE658(&qword_27FFB2320, type metadata accessor for OverviewChart.Day);
  v48 = v20;
  sub_264E24EC8();
  v25 = (a1 + *(v13 + 44));
  v26 = *v25;
  v27 = v25[1];
  v62 = v26;
  v63 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
  sub_264E24D88();
  v28 = v56;
  sub_264DC71E0(&unk_2876A2C30, v56, v61);
  v29 = *(v57 + 16);
  v30 = v55;
  v31 = v49;
  v29(v55, v20, v49);
  v32 = v50;
  v33 = *(v50 + 16);
  v34 = v58;
  v35 = v28;
  v36 = v51;
  v33(v58, v35, v51);
  sub_264DCDE3C(&qword_27FFB2260, &qword_27FFB2268, &qword_264E276A8, sub_264DCDCFC);
  v37 = v52;
  v38 = v30;
  v39 = v31;
  v29(v52, v38, v31);
  sub_264E24288();
  v40 = v53;
  v41 = *(v53 + 56);
  v33(&v37[v41], v34, v36);
  v42 = v57;
  v43 = v54;
  (*(v57 + 32))(v54, v37, v39);
  (*(v32 + 32))(v43 + *(v40 + 56), &v37[v41], v36);
  v44 = *(v32 + 8);
  v44(v56, v36);
  v45 = *(v42 + 8);
  v45(v48, v39);
  v44(v58, v36);
  return (v45)(v55, v39);
}

uint64_t sub_264DCA194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v99 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2328, &unk_264E27910);
  v2 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v75 - v3;
  v4 = type metadata accessor for OverviewChart.Day(0);
  v5 = *(v4 - 8);
  v78 = v4 - 8;
  v90 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = v7;
  v93 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = type metadata accessor for OverviewChart(0);
  v87 = *(v84 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v84);
  v88 = v9;
  v89 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2288, &unk_264E276C0);
  v95 = *(v10 - 8);
  v96 = v10;
  v11 = *(v95 + 64);
  MEMORY[0x28223BE20](v10);
  v94 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v75 - v20;
  v22 = sub_264E23C18();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v75 = &v75 - v29;
  v79 = sub_264E241F8();
  v80 = *(v79 - 8);
  v30 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18F8, &qword_264E26280);
  v81 = *(v82 - 8);
  v33 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v75 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C60, &qword_264E266C8);
  v85 = *(v35 - 8);
  v86 = v35;
  v36 = *(v85 + 64);
  MEMORY[0x28223BE20](v35);
  v101 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v100 = &v75 - v39;
  sub_264E247D8();
  (*(v23 + 104))(v26, *MEMORY[0x277CC99B8], v22);
  v40 = sub_264E23C38();
  (*(*(v40 - 8) + 56))(v21, 1, 1, v40);
  v41 = v83;
  sub_264E240E8();

  sub_264D817BC(v21, &qword_27FFB1C50, &unk_264E267D0);
  (*(v23 + 8))(v26, v22);
  v42 = v41;
  sub_264E247D8();
  v103 = *(v41 + *(v78 + 28));
  sub_264E240F8();

  v43 = [objc_opt_self() currentDevice];
  v44 = [v43 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E23AA8();
  v45 = v76;
  sub_264E241E8();
  v46 = MEMORY[0x277CBB400];
  v47 = v79;
  sub_264E24058();
  (*(v80 + 8))(v32, v47);
  if (qword_27FFB16A0 != -1)
  {
    swift_once();
  }

  v104 = v46;
  v105 = qword_27FFB6C48;
  v103 = v47;
  swift_getOpaqueTypeConformance2();
  v48 = v100;
  v49 = v82;
  sub_264E24038();
  (*(v81 + 8))(v45, v49);
  v50 = v92;
  v51 = sub_264DC8554(v42, *(v92 + *(v84 + 28)));
  v52 = sub_264DFE4B8(v51);

  v103 = v52;
  swift_getKeyPath();
  v53 = v89;
  sub_264DCE54C(v50, v89, type metadata accessor for OverviewChart);
  v54 = v93;
  sub_264DCE54C(v42, v93, type metadata accessor for OverviewChart.Day);
  v55 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v56 = (v88 + *(v90 + 80) + v55) & ~*(v90 + 80);
  v57 = swift_allocObject();
  sub_264DCDEBC(v53, v57 + v55, type metadata accessor for OverviewChart);
  sub_264DCDEBC(v54, v57 + v56, type metadata accessor for OverviewChart.Day);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_264DCFCA4;
  *(v58 + 24) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2330, qword_264E27940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1918, &unk_264E26290);
  sub_264D81DCC(&qword_27FFB2338, &qword_27FFB2330, qword_264E27940);
  sub_264D89D98();
  v59 = v102;
  sub_264E24ED8();
  v60 = v85;
  v61 = v86;
  v62 = *(v85 + 16);
  v63 = v101;
  v62(v101, v48, v86);
  v64 = v94;
  v65 = v95;
  v93 = *(v95 + 16);
  v66 = v59;
  v67 = v96;
  (v93)(v94, v66, v96);
  v68 = v97;
  v62(v97, v63, v61);
  sub_264DCDE3C(&qword_27FFB2280, &qword_27FFB2288, &unk_264E276C0, sub_264D89D98);
  v69 = v98;
  v70 = *(v98 + 48);
  (v93)(&v68[v70], v64, v67);
  v71 = v99;
  (*(v60 + 32))(v99, v68, v61);
  (*(v65 + 32))(v71 + *(v69 + 48), &v68[v70], v67);
  v72 = *(v65 + 8);
  v72(v102, v67);
  v73 = *(v60 + 8);
  v73(v100, v61);
  v72(v64, v67);
  return (v73)(v101, v61);
}

uint64_t sub_264DCAD98()
{
  if (qword_27FFB1698 != -1)
  {
    swift_once();
  }

  v0 = sub_264E24F88();
  MEMORY[0x28223BE20](v0);
  sub_264E244E8();
}

uint64_t sub_264DCAE60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  OverviewChart.Model.maxCount.getter();
  v7 = v6;
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = 7200.0;
  if (*(a1 + *(v8 + 32)))
  {
    v9 = 10.0;
  }

  v10 = v9 * ceil(v7 / v9);
  if (v10 > v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = type metadata accessor for OverviewChart(0);
  v13 = (a1 + *(v12 + 32));
  v14 = *v13;
  v15 = v13[1];
  v23 = v14;
  v24 = v15;
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
  sub_264E24D98();
  v16 = sub_264E23AA8();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_264DC7F68(v5);
  v18 = v17;
  sub_264D817BC(v5, &qword_27FFB1860, &qword_264E267E0);
  v19 = (a1 + *(v12 + 36));
  v20 = *v19;
  v21 = v19[1];
  v23 = v20;
  v24 = v21;
  v25 = v18;
  return sub_264E24D98();
}

uint64_t OverviewChart.Model.lastY.getter()
{
  OverviewChart.Model.maxCount.getter();
  result = type metadata accessor for OverviewChart.Model(0);
  *(v0 + *(result + 32));
  return result;
}

uint64_t OverviewChart.Model.xAxisScale.getter()
{
  v0 = sub_264E23C18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for OverviewChart.Model(0) + 24);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9940], v0);
  sub_264E23B08();
  (*(v1 + 8))(v4, v0);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
    v16 = *(sub_264E23AA8() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_264E261F0;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23888();
    (*(v10 + 8))(v13, v9);
    return v19;
  }

  return result;
}

double static OverviewChart.Model.yAxisScale(forLastY:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_264E261F0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  return result;
}

uint64_t sub_264DCB3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v24 = sub_264E23FE8();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = type metadata accessor for OverviewChart(0);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_264E24868();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v23 = sub_264E24428();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E248E8();
  sub_264E24408();
  sub_264DCE54C(a2, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverviewChart);
  v14 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v24;
  (*(v4 + 16))(v14, v25, v24);
  v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v17 = (v7 + *(v4 + 80) + v16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_264DCDEBC(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for OverviewChart);
  (*(v4 + 32))(v18 + v17, v14, v15);
  sub_264DCE658(&qword_27FFB1C00, MEMORY[0x277CDD730]);
  v19 = v23;
  sub_264E24F08();

  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_264DCB728(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for OverviewChart(0);
  if (*(a2 + *(result + 40)) == 1)
  {
    return sub_264DCB77C();
  }

  return result;
}

uint64_t sub_264DCB77C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v15 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C08, &qword_264E26680);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E24418();
  sub_264E23FD8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C10, &qword_264E26688);
  if ((*(*(v13 - 8) + 48))(v7, 1, v13) == 1)
  {
    return sub_264D817BC(v7, &qword_27FFB1C08, &qword_264E26680);
  }

  (*(v9 + 32))(v12, v7, v8);
  (*(v9 + 16))(v3, v12, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  sub_264DCC834(v3);
  sub_264D817BC(v3, &qword_27FFB1860, &qword_264E267E0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_264DCBA08@<X0>(unint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v70 = a2;
  v71 = a3;
  v63 = a1;
  v68 = a6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1920, &unk_264E276D0);
  v66 = *(v67 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v74 = &v57[-v11];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C78, &qword_264E266F8);
  v64 = *(v65 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v73 = &v57[-v13];
  v14 = sub_264E23AA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v59 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v57[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v62 = &v57[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v57[-v27];
  MEMORY[0x28223BE20](v29);
  v31 = &v57[-v30];
  MEMORY[0x28223BE20](v32);
  v34 = &v57[-v33];
  v35 = *(type metadata accessor for OverviewChart(0) + 24);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v72 = a4;
  v61 = v35;
  v60 = v36;
  MEMORY[0x26674EFA0]();
  v37 = *(v15 + 16);
  v69 = a5;
  v37(v31, a5, v14);
  (*(v15 + 56))(v31, 0, 1, v14);
  v38 = *(v19 + 56);
  sub_264D93A14(v34, v22);
  sub_264D93A14(v31, &v22[v38]);
  v39 = *(v15 + 48);
  if (v39(v22, 1, v14) == 1)
  {
    v40 = &qword_27FFB1860;
    sub_264D817BC(v31, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v34, &qword_27FFB1860, &qword_264E267E0);
    if (v39(&v22[v38], 1, v14) == 1)
    {
      sub_264D817BC(v22, &qword_27FFB1860, &qword_264E267E0);
      v41 = v72;
      v42 = v73;
LABEL_11:
      v50 = v74;
      sub_264DCC2C0(v69, v70, v71, v74, a7);
      v80[0] = *(v41 + *(type metadata accessor for OverviewChart.Model(0) + 28));
      v51 = qword_27FFB16A0;

      if (v51 != -1)
      {
        swift_once();
      }

      v80[1] = qword_27FFB6C48;
      if (v63 <= 1)
      {
        v52 = v80[v63];

        swift_arrayDestroy();
        v79 = v52;
        v53 = sub_264E241F8();
        v54 = sub_264D89EB8();
        v75 = v53;
        v76 = MEMORY[0x277D837D0];
        v77 = MEMORY[0x277CBB400];
        v78 = v54;
        swift_getOpaqueTypeConformance2();
        v55 = v67;
        sub_264E24038();

        (*(v66 + 8))(v50, v55);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_264D93A14(v22, v28);
  if (v39(&v22[v38], 1, v14) == 1)
  {
    sub_264D817BC(v31, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v34, &qword_27FFB1860, &qword_264E267E0);
    (*(v15 + 8))(v28, v14);
LABEL_6:
    sub_264D817BC(v22, &qword_27FFB1858, &unk_264E26200);
    v41 = v72;
    v42 = v73;
    goto LABEL_7;
  }

  v48 = &v22[v38];
  v49 = v59;
  (*(v15 + 32))(v59, v48, v14);
  sub_264DCE658(&qword_27FFB1868, MEMORY[0x277CC9578]);
  v58 = sub_264E25068();
  v40 = *(v15 + 8);
  (v40)(v49, v14);
  sub_264D817BC(v31, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v34, &qword_27FFB1860, &qword_264E267E0);
  (v40)(v28, v14);
  sub_264D817BC(v22, &qword_27FFB1860, &qword_264E267E0);
  v41 = v72;
  v42 = v73;
  if (v58)
  {
    goto LABEL_11;
  }

LABEL_7:
  v40 = (v41 + v61);
  v43 = v62;
  MEMORY[0x26674EFA0](v60);
  v44 = v39(v43, 1, v14);
  sub_264D817BC(v43, &qword_27FFB1860, &qword_264E267E0);
  if (v44 == 1)
  {
    goto LABEL_11;
  }

  v40 = v74;
  sub_264DCC2C0(v69, v70, v71, v74, a7);
  if (qword_27FFB16A0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v79 = qword_27FFB6C48;
  v45 = sub_264E241F8();
  v46 = sub_264D89EB8();
  v75 = v45;
  v76 = MEMORY[0x277D837D0];
  v77 = MEMORY[0x277CBB400];
  v78 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v67;
  sub_264E24038();
  (*(v66 + 8))(v40, v47);
LABEL_15:
  (*(v64 + 32))(v68, v42, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C80, &unk_264E26700);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_264DCC2C0@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v37 = a2;
  v38 = a3;
  v33 = a1;
  v39 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_264E23C18();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v32 = &v32 - v20;
  v21 = sub_264E241F8();
  v22 = *(v21 - 8);
  v35 = v21;
  v36 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E247D8();
  (*(v14 + 104))(v17, *MEMORY[0x277CC99B8], v13);
  v26 = sub_264E23C38();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v27 = v33;
  sub_264E240E8();

  sub_264D817BC(v12, &qword_27FFB1C50, &unk_264E267D0);
  (*(v14 + 8))(v17, v13);
  sub_264E247D8();
  v40 = *(v27 + *(type metadata accessor for OverviewChart.Day(0) + 20)) * a5;
  sub_264E240F8();

  v28 = [objc_opt_self() currentDevice];
  v29 = [v28 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E23AA8();
  sub_264E241E8();
  v40 = v37;
  v41 = v38;
  sub_264D89EB8();
  v30 = v35;
  sub_264E24048();
  return (*(v36 + 8))(v25, v30);
}

uint64_t OverviewChart.Model.orderedStackedBarColors.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22A8, &qword_264E27740);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264E261F0;
  *(v1 + 32) = *(v0 + *(type metadata accessor for OverviewChart.Model(0) + 28));
  v2 = qword_27FFB16A0;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 40) = qword_27FFB6C48;

  return v1;
}

uint64_t sub_264DCC834(unsigned int (*a1)(char *, uint64_t, uint64_t))
{
  v67 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v2 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v4 = &v57 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2308, &qword_264E27900);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v57 - v7;
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v59 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v57 - v18;
  MEMORY[0x28223BE20](v19);
  v65 = &v57 - v20;
  MEMORY[0x28223BE20](v21);
  v64 = &v57 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v57 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v57 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v57 - v30;
  v32 = *(type metadata accessor for OverviewChart(0) + 24);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v68 = v31;
  MEMORY[0x26674EFA0]();
  v63 = v32;
  v69 = v1;
  v34 = v33;
  MEMORY[0x26674EFA0](v33);
  sub_264D93A14(v67, v25);
  v67 = *(v9 + 48);
  if (v67(v25, 1, v8) == 1)
  {
    sub_264D817BC(v25, &qword_27FFB1860, &qword_264E267E0);
    v35 = v64;
  }

  else
  {
    v57 = v33;
    v36 = v61;
    (*(v9 + 32))(v61, v25, v8);
    v37 = type metadata accessor for OverviewChart.Model(0);
    v38 = v9;
    v39 = v69;
    v40 = *(v69 + *(v37 + 20));
    MEMORY[0x28223BE20](v37);
    *(&v57 - 2) = v39;
    *(&v57 - 1) = v36;
    v41 = v60;
    sub_264D93D38(sub_264DCF8B8, v42, v60);
    v43 = type metadata accessor for OverviewChart.Day(0);
    v44 = (*(*(v43 - 8) + 48))(v41, 1, v43);
    sub_264D817BC(v41, &qword_27FFB2308, &qword_264E27900);
    if (v44 == 1)
    {
      (*(v38 + 8))(v61, v8);
      v9 = v38;
      v35 = v64;
    }

    else
    {
      v45 = v39 + *(v37 + 24);
      v35 = v64;
      v46 = v61;
      sub_264E23AF8();
      sub_264D817BC(v28, &qword_27FFB1860, &qword_264E267E0);
      (*(v38 + 56))(v35, 0, 1, v8);
      sub_264D90E64(v35, v28, &qword_27FFB1860, &qword_264E267E0);
      (*(v38 + 8))(v46, v8);
      v9 = v38;
    }

    v34 = v57;
  }

  v47 = v66;
  v48 = v67;
  v49 = *(v62 + 48);
  sub_264D93A14(v68, v4);
  sub_264D93A14(v28, &v4[v49]);
  if (v48(v4, 1, v8) == 1)
  {
    if (v48(&v4[v49], 1, v8) == 1)
    {
      sub_264D817BC(v4, &qword_27FFB1860, &qword_264E267E0);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  sub_264D93A14(v4, v47);
  if (v48(&v4[v49], 1, v8) == 1)
  {
    (*(v9 + 8))(v47, v8);
LABEL_12:
    sub_264D817BC(v4, &qword_27FFB1858, &unk_264E26200);
LABEL_13:
    v50 = v65;
    sub_264D93A14(v28, v65);
    goto LABEL_18;
  }

  v51 = &v4[v49];
  v52 = v58;
  (*(v9 + 32))(v58, v51, v8);
  sub_264DCE658(&qword_27FFB1868, MEMORY[0x277CC9578]);
  LODWORD(v64) = sub_264E25068();
  v53 = *(v9 + 8);
  v53(v52, v8);
  v53(v66, v8);
  sub_264D817BC(v4, &qword_27FFB1860, &qword_264E267E0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  v54 = v59;
  MEMORY[0x26674EFA0](v34);
  v55 = v67(v54, 1, v8);
  sub_264D817BC(v54, &qword_27FFB1860, &qword_264E267E0);
  v50 = v65;
  if (v55 == 1)
  {
    sub_264DC8324(v65);
  }

  else
  {
    (*(v9 + 56))(v65, 1, 1, v8);
  }

LABEL_18:
  sub_264D93A14(v50, v35);
  sub_264E24E58();
  sub_264D817BC(v50, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v28, &qword_27FFB1860, &qword_264E267E0);
  return sub_264D817BC(v68, &qword_27FFB1860, &qword_264E267E0);
}

uint64_t sub_264DCCFE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + *(type metadata accessor for OverviewChart.Model(0) + 24);
  sub_264E23AF8();
  LOBYTE(v8) = sub_264E23A78();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t OverviewChart.Model.maxCount.getter()
{
  v1 = type metadata accessor for OverviewChart.Day(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + *(type metadata accessor for OverviewChart.Model(0) + 20));
  v18 = v0;

  sub_264D82948(sub_264DCE51C, v17, v6);
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
      sub_264DCE54C(v11, v5, type metadata accessor for OverviewChart.Day);
      v13 = *&v5[*(v1 + 20)];
      sub_264DCE5B4(v5);
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

double OverviewChart.Model.minimumMaxYAxisUnit.getter()
{
  v1 = type metadata accessor for OverviewChart.Model(0);
  result = 7200.0;
  if (*(v0 + *(v1 + 32)))
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_264DCD340(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_264D9D5F4(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v20 = v13[3];
    if (v20 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v21 = *v4;
      if (v19)
      {
LABEL_8:
        *(v21[7] + 8 * v15) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v20 >= result && (a2 & 1) == 0)
    {
      result = sub_264DA12F8();
      goto LABEL_7;
    }

    sub_264D9E6F0(result, a2 & 1);
    v22 = *v4;
    result = sub_264D9D5F4(a1);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = result;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v12, a1, v8);
      return sub_264DA0BB4(v15, v12, v21, a3);
    }
  }

  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DCD4E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_264E238E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_264D9D6C8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_264DA1320();
      goto LABEL_7;
    }

    sub_264D9EAB4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_264D9D6C8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_264DA0BCC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_264DCD6B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_264D9D5F4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_264DA15FC();
      goto LABEL_7;
    }

    sub_264D9F268(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_264D9D5F4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_264DA0CB8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_264DCD87C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_264D9D5F4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_264DA1DB0();
      goto LABEL_7;
    }

    sub_264D9FE08(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_264D9D5F4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_264DA0F00(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for PickupsDetailLegendView.DayPickups(0) - 8) + 72) * v15;

  return sub_264DCFE20(a1, v23);
}

uint64_t _s16ScreenTimeUICore13OverviewChartV5ModelV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78() & 1) != 0 && (v4 = type metadata accessor for OverviewChart.Model(0), (sub_264D84128(*(a1 + v4[5]), *(a2 + v4[5]))) && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) != 0 && (v5 = v4[7], v6 = *(a1 + v5), v7 = *(a2 + v5), (sub_264E24C48()))
  {
    v8 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_264DCDB28()
{
  result = qword_27FFB2258;
  if (!qword_27FFB2258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2250, &qword_264E276A0);
    sub_264DCDE3C(&qword_27FFB2260, &qword_27FFB2268, &qword_264E276A8, sub_264DCDCFC);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1930, &unk_264E262A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1938, &unk_264E276E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1940, &unk_264E262B0);
    sub_264E24288();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2258);
  }

  return result;
}

unint64_t sub_264DCDCFC()
{
  result = qword_27FFB2270;
  if (!qword_27FFB2270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2278, &unk_264E276B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18F8, &qword_264E26280);
    sub_264E241F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264DCDE3C(&qword_27FFB2280, &qword_27FFB2288, &unk_264E276C0, sub_264D89D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2270);
  }

  return result;
}

uint64_t sub_264DCDE3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_264DCDEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DCDF24()
{
  v0 = *(*(type metadata accessor for OverviewChart(0) - 8) + 80);

  return sub_264DCAD98();
}

uint64_t _s16ScreenTimeUICore13OverviewChartV5ModelV7yStride8forLastY13chartDataTypeSaySdGSd_AA0E7FormatsC0kL0OtFZ_0(uint64_t result, double a2)
{
  v2 = 60.0;
  if (*result)
  {
    v2 = 1.0;
  }

  v3 = a2 * 0.25;
  if (a2 * 0.25 == 0.0)
  {
    goto LABEL_36;
  }

  v4 = v2 + a2;
  v5 = v2 + a2 >= 0.0;
  if (v3 > 0.0)
  {
    v5 = v2 + a2 <= 0.0;
  }

  if (!v5)
  {
    v7 = 0;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_34;
      }

      v8 = v6 * v3 + 0.0;
      v9 = v8 <= v4;
      if (v3 > 0.0)
      {
        v9 = v4 <= v8;
      }

      ++v7;
      if (v9)
      {
        goto LABEL_13;
      }
    }
  }

  v6 = 0;
LABEL_13:
  v20 = MEMORY[0x277D84F90];
  sub_264D8D0F4(0, v6, 0);
  result = v20;
  if (v6)
  {
    v10 = 1;
    v11 = 0.0;
    while (1)
    {
      v12 = v11 <= v4;
      if (v3 > 0.0)
      {
        v12 = v4 <= v11;
      }

      if (v12)
      {
        break;
      }

      v21 = result;
      v14 = *(result + 16);
      v13 = *(result + 24);
      if (v14 >= v13 >> 1)
      {
        sub_264D8D0F4((v13 > 1), v14 + 1, 1);
        result = v21;
      }

      v15 = v10 * v3 + 0.0;
      *(result + 16) = v14 + 1;
      *(result + 8 * v14 + 32) = v11;
      ++v10;
      v11 = v15;
      if (v10 - v6 == 1)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v15 = 0.0;
LABEL_23:
  v16 = v15 <= v4;
  if (v3 > 0.0)
  {
    v16 = v4 <= v15;
  }

  if (!v16)
  {
    while (!__OFADD__(v6, 1))
    {
      v22 = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        sub_264D8D0F4((v17 > 1), v18 + 1, 1);
        result = v22;
      }

      *(result + 8 * v18 + 32) = v15;
      v15 = (v6 + 1) * v3 + 0.0;
      *(result + 16) = v18 + 1;
      v19 = v15 <= v4;
      if (v3 > 0.0)
      {
        v19 = v4 <= v15;
      }

      ++v6;
      if (v19)
      {
        return result;
      }
    }

    goto LABEL_35;
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for OverviewChart(0);
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v24 = (v2 + 16) & ~v2;
  v25 = v0;
  v3 = v0 + v24;
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v24, v4);
  v7 = type metadata accessor for OverviewChart.Model(0);
  v8 = *(v0 + v24 + v7[5]);

  v9 = v7[6];
  v10 = sub_264E23C38();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = *(v3 + v7[7]);

  v12 = v3 + v1[5];
  v13 = *(v5 + 48);
  if (!v13(v12, 1, v4))
  {
    v6(v12, v4);
  }

  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0) + 28));

  v15 = (v3 + v1[6]);
  v16 = *v15;

  v17 = v15[1];

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v13(v15 + v18, 1, v4))
  {
    v6(v15 + v18, v4);
  }

  v19 = *(v3 + v1[7]);

  v20 = *(v3 + v1[8] + 8);

  v21 = *(v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v25, v24 + v23, v2 | 7);
}

uint64_t sub_264DCE42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OverviewChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_264DCB3CC(a1, v6, a2);
}

uint64_t sub_264DCE4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2248, &qword_264E27698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DCE54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DCE5B4(uint64_t a1)
{
  v2 = type metadata accessor for OverviewChart.Day(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DCE658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DCE6D0(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
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

uint64_t sub_264DCE85C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DCE9C4()
{
  type metadata accessor for OverviewChart.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264D8F5E8(319, &qword_27FFB19E8, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_264D8F5E8(319, &qword_27FFB19F0, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_264D8F5E8(319, &qword_27FFB22C0, &qword_27FFB22C8, &qword_264E27880, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_264D8F64C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_264DCEB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DCEBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264DCEC28()
{
  result = sub_264E23AA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264DCECB0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_264DCEDE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_264DCEF0C()
{
  sub_264E23AA8();
  if (v0 <= 0x3F)
  {
    sub_264DCEFC0();
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

void sub_264DCEFC0()
{
  if (!qword_27FFB22F0)
  {
    type metadata accessor for OverviewChart.Day(255);
    v0 = sub_264E251F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB22F0);
    }
  }
}

unint64_t sub_264DCF01C()
{
  result = qword_27FFB22F8;
  if (!qword_27FFB22F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB22A0, &qword_264E27738);
    sub_264DCF0D4();
    sub_264D81DCC(&qword_27FFB1A50, &qword_27FFB1A58, &qword_264E26470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB22F8);
  }

  return result;
}

unint64_t sub_264DCF0D4()
{
  result = qword_27FFB2300;
  if (!qword_27FFB2300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2248, &qword_264E27698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2238, &qword_264E27688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19B8, &qword_264E27730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1BD8, &unk_264E26660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19A8, &unk_264E262F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2230, &unk_264E27678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1998, &unk_264E27720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2228, &qword_264E27670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1988, &unk_264E262E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2220, &qword_264E27668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1968, &unk_264E27700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2218, &qword_264E27660);
    type metadata accessor for OverviewChart.Model(255);
    sub_264D81DCC(&qword_27FFB2290, &qword_27FFB2218, &qword_264E27660);
    sub_264DCE658(&qword_27FFB2298, type metadata accessor for OverviewChart.Model);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19C0, &qword_27FFB19B8, &qword_264E27730);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2300);
  }

  return result;
}

uint64_t sub_264DCF4E4()
{
  v1 = type metadata accessor for OverviewChart(0);
  v27 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v29 = sub_264E23FE8();
  v2 = *(v29 - 8);
  v3 = *(v2 + 80);
  v28 = *(v2 + 64);
  v26 = (v27 + 16) & ~v27;
  v4 = v0 + v26;
  v5 = sub_264E23AA8();
  v6 = *(v5 - 8);
  v24 = *(v6 + 8);
  v24(v0 + v26, v5);
  v7 = type metadata accessor for OverviewChart.Model(0);
  v8 = *(v0 + v26 + v7[5]);

  v9 = v7[6];
  v10 = sub_264E23C38();
  (*(*(v10 - 8) + 8))(v0 + v26 + v9, v10);
  v11 = *(v0 + v26 + v7[7]);

  v12 = v0 + v26 + v1[5];
  v13 = *(v6 + 48);
  if (!v13(v12, 1, v5))
  {
    v24(v12, v5);
  }

  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0) + 28));

  v15 = (v4 + v1[6]);
  v16 = *v15;

  v17 = v15[1];

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v13(v15 + v18, 1, v5))
  {
    v24(v15 + v18, v5);
  }

  v19 = (v26 + v25 + v3) & ~v3;
  v20 = *(v4 + v1[7]);

  v21 = *(v4 + v1[8] + 8);

  v22 = *(v4 + v1[9] + 8);

  (*(v2 + 8))(v0 + v19, v29);

  return MEMORY[0x2821FE8E8](v0, v19 + v28, v27 | v3 | 7);
}

uint64_t sub_264DCF7E4(uint64_t a1)
{
  v3 = *(type metadata accessor for OverviewChart(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_264E23FE8() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_264DCB728(a1, v1 + v4);
}

uint64_t sub_264DCF8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OverviewChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_264DCA194(a1, a2);
}

uint64_t sub_264DCF9BC()
{
  v1 = type metadata accessor for OverviewChart(0);
  v2 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v3 = *(type metadata accessor for OverviewChart.Day(0) - 8);
  v4 = *(v3 + 80);
  v26 = *(v3 + 64);
  v27 = v0;
  v5 = (v0 + ((v2 + 16) & ~v2));
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v28 = *(v7 + 8);
  v28(v5, v6);
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *&v5[v8[5]];

  v10 = v8[6];
  v11 = sub_264E23C38();
  (*(*(v11 - 8) + 8))(&v5[v10], v11);
  v12 = *&v5[v8[7]];

  v13 = &v5[v1[5]];
  v14 = *(v7 + 48);
  if (!v14(v13, 1, v6))
  {
    v28(v13, v6);
  }

  v15 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0) + 28)];

  v16 = &v5[v1[6]];
  v17 = *v16;

  v18 = *(v16 + 1);

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v14(&v16[v19], 1, v6))
  {
    v28(&v16[v19], v6);
  }

  v20 = (((v2 + 16) & ~v2) + v25 + v4) & ~v4;
  v21 = *&v5[v1[7]];

  v22 = *&v5[v1[8] + 8];

  v23 = *&v5[v1[9] + 8];

  v28((v27 + v20), v6);

  return MEMORY[0x2821FE8E8](v27, v20 + v26, v2 | v4 | 7);
}

uint64_t sub_264DCFCA4@<X0>(unint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *(type metadata accessor for OverviewChart(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for OverviewChart.Day(0) - 8);
  v15 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_264DCBA08(a1, a2, a3, v5 + v12, v15, a4, a5);
}

uint64_t sub_264DCFDB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264DCFDE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 8));
}

uint64_t sub_264DCFE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AppLimitViewModel.__allocating_init(userID:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_264E23FB8();
  *(v5 + OBJC_IVAR____TtC16ScreenTimeUICore17AppLimitViewModel_userID) = a1;
  return v5;
}

uint64_t AppLimitViewModel.init(userID:)(uint64_t a1)
{
  sub_264E23FB8();
  *(v1 + OBJC_IVAR____TtC16ScreenTimeUICore17AppLimitViewModel_userID) = a1;
  return v1;
}

uint64_t AppLimitViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenTimeUICore17AppLimitViewModel_logger;
  v2 = sub_264E23FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppLimitViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenTimeUICore17AppLimitViewModel_logger;
  v2 = sub_264E23FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppLimitViewModel()
{
  result = qword_27FFB2350;
  if (!qword_27FFB2350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264DD0114()
{
  result = sub_264E23FC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_264DD01DC()
{
  v0 = sub_264E23FC8();
  __swift_allocate_value_buffer(v0, qword_27FFB6C08);
  __swift_project_value_buffer(v0, qword_27FFB6C08);
  return sub_264E23FB8();
}

uint64_t getEnumTagSinglePayload for Average(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Average(_WORD *result, int a2, int a3)
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

uint64_t sub_264DD0330()
{
  v0 = sub_264E24118();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264E24098();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_264E23C18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264E240B8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  (*(v9 + 104))(v12, *MEMORY[0x277CC9968], v8, v15);
  v16 = sub_264E23C38();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_264E240A8();
  sub_264D817BC(v7, &qword_27FFB1C50, &unk_264E267D0);
  (*(v9 + 8))(v12, v8);
  sub_264E24088();
  sub_264E24108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2360, &qword_264E279C0);
  sub_264DD22C8();
  return sub_264E24298();
}

uint64_t sub_264DD0618@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v86 = sub_264E24268();
  v85 = *(v86 - 8);
  v1 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2388, &qword_264E279D8);
  v88 = *(v89 - 8);
  v3 = *(v88 + 64);
  v4 = (MEMORY[0x28223BE20])(v89);
  v87 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v84 = v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = v69 - v9;
  v10 = sub_264E24168();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264E241B8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v74 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_264E239E8();
  v70 = *(v72 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_264E23A08();
  v19 = *(v71 - 8);
  v20 = *(v19 + 64);
  v21 = (MEMORY[0x28223BE20])(v71);
  v23 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v69[1] = v69 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2378, &qword_264E279D0);
  v73 = *(v25 - 8);
  v26 = *(v73 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = v69 - v27;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2370, &qword_264E279C8);
  v75 = *(v78 - 8);
  v29 = *(v75 + 64);
  MEMORY[0x28223BE20](v78);
  v31 = v69 - v30;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2390, &unk_264E279E8);
  v81 = *(v82 - 8);
  v32 = *(v81 + 64);
  v33 = (MEMORY[0x28223BE20])(v82);
  v93 = v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v92 = v69 - v35;
  v36 = sub_264E24008();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v79 = *(v80 - 8);
  v41 = *(v79 + 64);
  v42 = (MEMORY[0x28223BE20])(v80);
  v91 = v69 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v94 = v69 - v44;
  sub_264E24478();
  v105 = v96;
  v106 = v97;
  v107 = v98;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v45 = qword_27FFB6C60;
  *&v102 = qword_27FFB6C60;

  sub_264E24208();
  v46 = (*(v37 + 8))(v40, v36);
  MEMORY[0x26674D990](v46);
  sub_264E239D8();
  sub_264E239F8();
  (*(v70 + 8))(v18, v72);
  (*(v19 + 8))(v23, v71);
  sub_264E241A8();
  sub_264E24158();
  sub_264DD2668();
  sub_264E240C8();
  v47 = sub_264E249F8();
  v48 = v76;
  (*(*(v47 - 8) + 56))(v76, 1, 1, v47);
  sub_264E24A38();
  sub_264D817BC(v48, &qword_27FFB17B8, &qword_264E279E0);
  v49 = sub_264DD244C();
  sub_264E24218();

  (*(v73 + 8))(v28, v25);
  if (qword_27FFB16B8 != -1)
  {
    swift_once();
  }

  *&v99 = qword_27FFB6C68;
  *&v102 = v25;
  *(&v102 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v92;
  v51 = v78;
  sub_264E24208();
  (*(v75 + 8))(v31, v51);
  sub_264E24478();
  v102 = v99;
  v103 = v100;
  v104 = v101;
  v52 = v83;
  sub_264E24248();
  v95[0] = v45;
  v53 = v84;
  v54 = v86;
  sub_264E24208();

  (*(v85 + 8))(v52, v54);
  v55 = v79;
  v56 = v91;
  v57 = v80;
  (*(v79 + 16))(v91, v94, v80);
  v95[0] = v56;
  v58 = v81;
  v59 = v93;
  v60 = v50;
  v61 = v82;
  (*(v81 + 16))(v93, v60, v82);
  v95[1] = v59;
  v62 = v88;
  v63 = v87;
  v64 = v89;
  (*(v88 + 16))(v87, v53, v89);
  v95[2] = v63;
  sub_264DD1220(v95, v90);
  v65 = *(v62 + 8);
  v65(v53, v64);
  v66 = *(v58 + 8);
  v66(v92, v61);
  v67 = *(v55 + 8);
  v67(v94, v57);
  v65(v63, v64);
  v66(v93, v61);
  return (v67)(v91, v57);
}

uint64_t sub_264DD1220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB23A0, &qword_264E279F8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  sub_264E24008();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2390, &unk_264E279E8);
  sub_264DD244C();
  v12 = *(v5 + 56);
  v20 = v12;
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v8[v12], a1[1], v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2388, &qword_264E279D8);
  sub_264E24268();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v8[v15], v16, v14);
  (*(v10 + 32))(a2, v8, v9);
  (*(v13 + 32))(a2 + *(v5 + 56), &v8[v20], v11);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v8[v15], v14);
}

uint64_t sub_264DD145C()
{
  v0 = sub_264E24118();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264E24098();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);

  sub_264E24088();
  sub_264E24108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2360, &qword_264E279C0);
  sub_264E23AA8();
  sub_264DD22C8();
  return sub_264E242B8();
}

uint64_t sub_264DD15A4@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v1 = sub_264E24238();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v93 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_264E24268();
  v95 = *(v96 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2388, &qword_264E279D8);
  v98 = *(v99 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v74 - v12;
  v13 = sub_264E24168();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264E241B8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v84 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_264E239B8();
  v80 = *(v81 - 8);
  v19 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_264E239C8();
  v77 = *(v79 - 8);
  v22 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_264E23A08();
  v75 = *(v78 - 8);
  v25 = *(v75 + 64);
  MEMORY[0x28223BE20](v78);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v76 = &v74 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2378, &qword_264E279D0);
  v82 = *(v30 - 8);
  v31 = *(v82 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v74 - v32;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2370, &qword_264E279C8);
  v83 = *(v85 - 8);
  v34 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v36 = &v74 - v35;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2390, &unk_264E279E8);
  v90 = *(v91 - 8);
  v37 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v103 = &v74 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v101 = &v74 - v40;
  v41 = sub_264E24008();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v74 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v87 = *(v88 - 8);
  v46 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v102 = &v74 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v104 = &v74 - v49;
  sub_264E24478();
  v115 = v106;
  v116 = v107;
  v117 = v108;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v50 = qword_27FFB6C60;
  *&v112 = qword_27FFB6C60;

  sub_264E24208();
  v51 = (*(v42 + 8))(v45, v41);
  MEMORY[0x26674D990](v51);
  sub_264E239A8();
  sub_264E23998();
  (*(v80 + 8))(v21, v81);
  sub_264E23988();
  (*(v77 + 8))(v24, v79);
  (*(v75 + 8))(v27, v78);
  sub_264E24198();
  sub_264E24158();
  sub_264DD2668();
  sub_264E240C8();
  v52 = sub_264E249F8();
  v53 = v89;
  (*(*(v52 - 8) + 56))(v89, 1, 1, v52);
  sub_264E24A38();
  sub_264D817BC(v53, &qword_27FFB17B8, &qword_264E279E0);
  v54 = sub_264DD244C();
  sub_264E24218();

  (*(v82 + 8))(v33, v30);
  if (qword_27FFB16B8 != -1)
  {
    swift_once();
  }

  *&v109 = qword_27FFB6C68;
  *&v112 = v30;
  *(&v112 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v101;
  v56 = v85;
  sub_264E24208();
  (*(v83 + 8))(v36, v56);
  sub_264E24478();
  v112 = v109;
  v113 = v110;
  v114 = v111;
  sub_264E24228();
  v57 = v92;
  sub_264E24258();
  v105[0] = v50;
  v58 = v94;
  v59 = v96;
  sub_264E24208();

  (*(v95 + 8))(v57, v59);
  v60 = v87;
  v61 = v102;
  v62 = v88;
  (*(v87 + 16))(v102, v104, v88);
  v105[0] = v61;
  v63 = v90;
  v64 = v103;
  v65 = v55;
  v66 = v91;
  (*(v90 + 16))(v103, v65, v91);
  v105[1] = v64;
  v67 = v98;
  v68 = v97;
  v69 = v99;
  (*(v98 + 16))(v97, v58, v99);
  v105[2] = v68;
  sub_264DD1220(v105, v100);
  v70 = *(v67 + 8);
  v70(v58, v69);
  v71 = *(v63 + 8);
  v71(v101, v66);
  v72 = *(v60 + 8);
  v72(v104, v62);
  v70(v68, v69);
  v71(v103, v66);
  return (v72)(v102, v62);
}

unint64_t sub_264DD22C8()
{
  result = qword_27FFB2368;
  if (!qword_27FFB2368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2360, &qword_264E279C0);
    sub_264E24008();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2370, &qword_264E279C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2378, &qword_264E279D0);
    sub_264DD244C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264E24268();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2368);
  }

  return result;
}

unint64_t sub_264DD244C()
{
  result = qword_27FFB2380;
  if (!qword_27FFB2380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2378, &qword_264E279D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2380);
  }

  return result;
}

uint64_t sub_264DD24B0@<X0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24C98();
  v8 = sub_264E24AC8();
  v10 = v9;
  v12 = v11;
  sub_264D817AC(v3, v5, v7 & 1);

  if (qword_27FFB16C0 != -1)
  {
    swift_once();
  }

  v13 = sub_264E24AD8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_264D817AC(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

unint64_t sub_264DD2668()
{
  result = qword_27FFB2398;
  if (!qword_27FFB2398)
  {
    sub_264E23A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2398);
  }

  return result;
}

uint64_t sub_264DD26C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v81 = a3;
  v79 = a2;
  v78 = sub_264E23C18();
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v61 - v10;
  v76 = sub_264E238E8();
  v11 = *(v76 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v71 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264E23AA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D98, &unk_264E268F0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v82 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v80 = &v61 - v25;
  v26 = *(a1 + 64);
  v62 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v63 = v15 + 16;
  v84 = (v15 + 32);
  v75 = *MEMORY[0x277CC9940];
  v73 = (v5 + 8);
  v74 = (v5 + 104);
  v72 = (v11 + 48);
  v69 = (v11 + 8);
  v70 = (v11 + 32);
  v66 = v15;
  v67 = a1;
  v68 = (v15 + 8);

  v32 = 0;
  v33 = 0.0;
  v65 = v14;
  v64 = v18;
  if (v29)
  {
    while (1)
    {
      v34 = v32;
LABEL_12:
      v38 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v39 = v38 | (v34 << 6);
      v40 = v67;
      v41 = v66;
      v42 = v83;
      v43 = v65;
      (*(v66 + 16))(v83, *(v67 + 48) + *(v66 + 72) * v39, v65);
      v44 = *(*(v40 + 56) + 8 * v39);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      v46 = *(v45 + 48);
      v47 = *(v41 + 32);
      v14 = v43;
      v48 = v82;
      v47(v82, v42, v14);
      *&v48[v46] = v44;
      v37 = v48;
      (*(*(v45 - 8) + 56))(v48, 0, 1, v45);
      v36 = v34;
      v18 = v64;
LABEL_13:
      v49 = v80;
      sub_264DD2DA4(v37, v80);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
      {
        break;
      }

      v51 = v36;
      v52 = *(v49 + *(v50 + 48));
      (*v84)(v18, v49, v14);
      v53 = v85;
      v54 = v77;
      v55 = v78;
      (*v74)(v77, v75, v78);
      sub_264E23B08();
      (*v73)(v54, v55);
      v56 = v76;
      result = (*v72)(v53, 1, v76);
      if (result == 1)
      {
        goto LABEL_22;
      }

      v57 = v71;
      (*v70)(v71, v85, v56);
      v58 = v83;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v69)(v57, v56);
      LOBYTE(v57) = sub_264E23A78();
      v59 = *v68;
      (*v68)(v58, v14);
      result = v59(v18, v14);
      if (v57)
      {
        v33 = v33 + v52;
      }

      v32 = v51;
      if (!v29)
      {
        goto LABEL_5;
      }
    }

    return Calendar.numberOfDaysElapsedInWeek(containing:endDate:)(v79, v61);
  }

  else
  {
LABEL_5:
    if (v30 <= v32 + 1)
    {
      v35 = v32 + 1;
    }

    else
    {
      v35 = v30;
    }

    v36 = v35 - 1;
    v37 = v82;
    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= v30)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
        (*(*(v60 - 8) + 56))(v37, 1, 1, v60);
        v29 = 0;
        goto LABEL_13;
      }

      v29 = *(v62 + 8 * v34);
      ++v32;
      if (v29)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_264DD2DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D98, &unk_264E268F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DetailChart.init(model:selectedItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for DetailChart(0) + 20);
  result = sub_264DD68F4(a1, a3, type metadata accessor for DetailChart.Model);
  *(a3 + v6) = a2;
  return result;
}

uint64_t DetailChart.Hour.init(hour:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_264E238E8();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for DetailChart.Hour(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

BOOL static DetailChart.Hour.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v12 = sub_264E23A78();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v11, v4);
  if ((v12 & 1) == 0 || (sub_264E23878() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for DetailChart.Hour(0);
  return *(a1 + *(v14 + 20)) == *(a2 + *(v14 + 20));
}

BOOL sub_264DD30BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v14 = sub_264E23A78();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v13, v6);
  return (v14 & 1) != 0 && (sub_264E23878() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
}

uint64_t sub_264DD3224(uint64_t a1, uint64_t a2)
{
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v11 = a2 + *(type metadata accessor for DetailChart.Model(0) + 24);
  sub_264E23AF8();
  LOBYTE(v11) = sub_264E23A78();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v10, v3);
  return v11 & 1;
}

char *sub_264DD3368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB24A8, &qword_264E27D00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27[-v6];
  v8 = type metadata accessor for DetailChart.Hour(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v14 = *(a1 + *(v8 + 20));
    if (v14 <= 0.0)
    {
      return MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v11);
    *&v27[-16] = a1;
    sub_264D93DA0(sub_264DBCF90, a2, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_264D817BC(v7, &qword_27FFB24A8, &qword_264E27D00);
      v15 = 0.0;
    }

    else
    {
      sub_264DD68F4(v7, v13, type metadata accessor for DetailChart.Hour);
      v23 = *&v13[*(v8 + 20)];
      sub_264DD6898(v13);
      v15 = v23 / v14;
    }

    v16 = sub_264DBC398(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = *(v16 + 2);
    v17 = *(v16 + 3);
    v25 = v17 >> 1;
    v18 = v24 + 1;
    if (v17 >> 1 <= v24)
    {
      v16 = sub_264DBC398((v17 > 1), v24 + 1, 1, v16);
      v17 = *(v16 + 3);
      v25 = v17 >> 1;
    }

    *(v16 + 2) = v18;
    v26 = &v16[24 * v24];
    *(v26 + 4) = v15;
    *(v26 + 5) = 0x6F697463656C6573;
    *(v26 + 6) = 0xE90000000000006ELL;
    if (1.0 - v15 < 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0 - v15;
    }

    v19 = v24 + 2;
    if (v25 < v19)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = sub_264DBC398(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    v19 = v18 + 1;
    v20 = 1.0;
    if (v18 >= v17 >> 1)
    {
LABEL_16:
      v16 = sub_264DBC398((v17 > 1), v19, 1, v16);
    }
  }

  *(v16 + 2) = v19;
  v21 = &v16[24 * v18];
  *(v21 + 4) = v20;
  *(v21 + 5) = 0x65646E69616D6572;
  *(v21 + 6) = 0xE900000000000072;
  return v16;
}

uint64_t DetailChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264E24828();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB23A8, &qword_264E27A10);
  return sub_264DD36F4(v1, 0x655073746E756F63, 0xED000072756F4872, a1 + *(v3 + 44));
}

uint64_t sub_264DD36F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a4;
  v7 = sub_264E23C18();
  v123 = *(v7 - 8);
  v124 = v7;
  v8 = *(v123 + 64);
  MEMORY[0x28223BE20](v7);
  v122 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = &v98 - v12;
  v127 = sub_264E238E8();
  v121 = *(v127 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x28223BE20](v127);
  v110 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1878, &unk_264E27650);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v115 = &v98 - v17;
  v18 = type metadata accessor for DetailChart(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB23F8, &qword_264E27C28);
  v117 = *(v116 - 8);
  v22 = *(v117 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v98 - v23;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2400, &qword_264E27C30);
  v119 = *(v126 - 8);
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v126);
  v129 = &v98 - v25;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2408, &qword_264E27C38);
  v99 = *(v100 - 8);
  v26 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v118 = &v98 - v27;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BC0, &qword_264E27C40);
  v103 = *(v106 - 8);
  v28 = *(v103 + 64);
  MEMORY[0x28223BE20](v106);
  v101 = &v98 - v29;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2410, &qword_264E27C48);
  v104 = *(v107 - 8);
  v30 = *(v104 + 64);
  MEMORY[0x28223BE20](v107);
  v102 = &v98 - v31;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2418, &qword_264E27C50);
  v108 = *(v109 - 8);
  v32 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v105 = &v98 - v33;
  v125 = type metadata accessor for DetailChart.Model(0);
  v34 = *(a1 + v125[5]);
  v131 = a1;

  sub_264D82BD4(sub_264DD7174, v130, v34);
  v136 = v35;
  v128 = a1;
  sub_264DD7194(a1, v21, type metadata accessor for DetailChart);
  v36 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v37 = (v20 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_264DD68F4(v21, v38 + v36, type metadata accessor for DetailChart);
  v39 = (v38 + v37);
  *v39 = a2;
  v39[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20F8, &unk_264E27330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2420, &qword_264E27C58);
  sub_264D81DCC(&qword_27FFB2428, &qword_27FFB20F8, &unk_264E27330);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2430, &qword_264E27C60);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2438, &qword_264E27C68);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2440, &unk_264E27C70);
  v43 = sub_264DD7414();
  v44 = sub_264DD7534();
  v132 = v41;
  v133 = v42;
  v134 = v43;
  v135 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_264D89EB8();
  v132 = v40;
  v133 = MEMORY[0x277D837D0];
  v134 = OpaqueTypeConformance2;
  v135 = v46;
  swift_getOpaqueTypeConformance2();
  sub_264DD760C(&qword_27FFB2468, type metadata accessor for DetailChart.Hour);
  v47 = v114;
  sub_264E241D8();
  v132 = DetailChart.Model.xAxisScale.getter();
  v48 = sub_264E242D8();
  v113 = *(*(v48 - 8) + 56);
  v49 = v115;
  v113(v115, 1, 1, v48);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1968, &unk_264E27700);
  v50 = sub_264D81DCC(&qword_27FFB2470, &qword_27FFB23F8, &qword_264E27C28);
  v51 = sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
  v52 = v116;
  sub_264E24B38();
  sub_264D817BC(v49, &qword_27FFB1878, &unk_264E27650);

  v53 = v47;
  v54 = v52;
  (*(v117 + 8))(v53, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_264E261F0;
  *(v55 + 32) = 0;
  v56 = v128;
  *(v55 + 40) = DetailChart.Model.lastY.getter();
  v136 = v55;
  v113(v49, 1, 1, v48);
  v57 = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1988, &unk_264E262E0);
  v132 = v54;
  v133 = v112;
  v134 = v50;
  v135 = v51;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
  v61 = v118;
  v62 = v126;
  v117 = v58;
  v63 = v120;
  v116 = v59;
  v64 = v129;
  sub_264E24B48();
  sub_264D817BC(v49, &qword_27FFB1878, &unk_264E27650);

  (*(v119 + 8))(v64, v62);
  v65 = v124;
  v66 = v57 + v125[6];
  v68 = v122;
  v67 = v123;
  (*(v123 + 104))(v122, *MEMORY[0x277CC9968], v124);
  sub_264E23B08();
  (*(v67 + 8))(v68, v65);
  v69 = v121;
  v70 = v127;
  result = (*(v121 + 48))(v63, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v72 = v110;
    (*(v69 + 32))(v110, v63, v70);
    v73 = sub_264E119C0(v72, v66);
    v129 = &v98;
    MEMORY[0x28223BE20](v73);
    *(&v98 - 2) = v74;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1998, &unk_264E27720);
    v132 = v126;
    v133 = v117;
    v134 = v116;
    v135 = v60;
    v76 = swift_getOpaqueTypeConformance2();
    v126 = MEMORY[0x277CBB460];
    v77 = sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720);
    v78 = v101;
    v79 = v100;
    sub_264E24B08();

    (*(v69 + 8))(v72, v127);
    (*(v99 + 8))(v61, v79);
    v80 = v128;
    DetailChart.Model.yStride.getter();
    v82 = v81;
    DetailChart.Model.lastY.getter();
    v83 = *(v80 + v125[8]);
    v85 = MEMORY[0x28223BE20](v84).n128_u64[0];
    *(&v98 - 6) = v82;
    *(&v98 - 5) = 0;
    *(&v98 - 32) = 1;
    *(&v98 - 3) = v85;
    *(&v98 - 16) = v86;
    *(&v98 - 1) = v78;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19A8, &unk_264E262F0);
    v132 = v79;
    v133 = v75;
    v134 = v76;
    v135 = v77;
    v88 = swift_getOpaqueTypeConformance2();
    v89 = sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0);
    v90 = v102;
    v91 = v106;
    sub_264E24B18();

    (*(v103 + 8))(v78, v91);
    v132 = v91;
    v133 = v87;
    v134 = v88;
    v135 = v89;
    swift_getOpaqueTypeConformance2();
    v92 = v105;
    v93 = v107;
    sub_264E24B28();
    (*(v104 + 8))(v90, v93);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2478, &qword_264E27C80);
    v95 = v111;
    v96 = (v111 + *(v94 + 36));
    v97 = v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2480, &qword_264E27C88) + 28);
    sub_264E245B8();
    *v96 = swift_getKeyPath();
    return (*(v108 + 32))(v95, v92, v109);
  }

  return result;
}

uint64_t sub_264DD45E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v7 = sub_264E24188();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264E24148();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DetailChart(0);
  v14 = v13 - 8;
  v46 = *(v13 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DetailChart.Hour(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2438, &qword_264E27C68);
  v52 = *(v50 - 8);
  v20 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2430, &qword_264E27C60);
  v24 = *(v23 - 8);
  v53 = v23;
  v54 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v49 = &v45 - v26;
  v27 = *(a2 + *(v14 + 28));
  v48 = a1;
  v28 = sub_264DD3368(a1, v27);
  v29 = sub_264DFE4CC(v28);

  v65 = v29;
  KeyPath = swift_getKeyPath();
  sub_264DD7194(a1, &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailChart.Hour);
  sub_264DD7194(a2, v16, type metadata accessor for DetailChart);
  v30 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v31 = (v19 + *(v46 + 80) + v30) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_264DD68F4(&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v30, type metadata accessor for DetailChart.Hour);
  sub_264DD68F4(v16, v32 + v31, type metadata accessor for DetailChart);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_264DD7860;
  *(v33 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2488, &unk_264E27CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2490, &qword_264E2A650);
  sub_264D81DCC(&qword_27FFB2498, &qword_27FFB2488, &unk_264E27CE0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2450, &unk_264E2A400);
  v67 = sub_264E241F8();
  v68 = MEMORY[0x277CE0F78];
  v69 = MEMORY[0x277CBB400];
  v70 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_264D89EB8();
  v67 = v34;
  v68 = MEMORY[0x277D837D0];
  v69 = OpaqueTypeConformance2;
  v70 = v46;
  swift_getOpaqueTypeConformance2();
  sub_264E24ED8();
  v36 = v51;
  sub_264E24128();
  v37 = v55;
  sub_264E24178();
  v63 = a2;
  v64 = v48;
  sub_264E24F58();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2440, &unk_264E27C70);
  v43 = sub_264DD7414();
  v44 = sub_264DD7534();
  v39 = v50;
  v40 = v49;
  sub_264E24018();
  (*(v58 + 8))(v37, v59);
  (*(v56 + 8))(v36, v57);
  (*(v52 + 8))(v22, v39);
  v65 = v60;
  v66 = v61;
  v67 = v39;
  v68 = v38;
  v69 = v43;
  v70 = v44;
  swift_getOpaqueTypeConformance2();
  v41 = v53;
  sub_264E24048();
  return (*(v54 + 8))(v40, v41);
}

uint64_t sub_264DD4D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = sub_264E238E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB24A0, &unk_264E27CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  if (*(a1 + *(type metadata accessor for DetailChart.Model(0) + 36)) != 1)
  {
    goto LABEL_8;
  }

  (*(v6 + 16))(v23, a2, v5);
  (*(v6 + 56))(v23, 0, 1, v5);
  DetailChart.Model.firstHour.getter(v20);
  v24 = *(v10 + 48);
  sub_264DD79E4(v23, v13);
  sub_264DD79E4(v20, &v13[v24]);
  v25 = *(v6 + 48);
  if (v25(v13, 1, v5) == 1)
  {
    sub_264D817BC(v20, &qword_27FFB1880, &qword_264E26220);
    sub_264D817BC(v23, &qword_27FFB1880, &qword_264E26220);
    if (v25(&v13[v24], 1, v5) == 1)
    {
      sub_264D817BC(v13, &qword_27FFB1880, &qword_264E26220);
LABEL_11:
      result = sub_264E24C68();
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_264DD79E4(v13, v17);
  if (v25(&v13[v24], 1, v5) == 1)
  {
    sub_264D817BC(v20, &qword_27FFB1880, &qword_264E26220);
    sub_264D817BC(v23, &qword_27FFB1880, &qword_264E26220);
    (*(v6 + 8))(v17, v5);
LABEL_7:
    sub_264D817BC(v13, &qword_27FFB24A0, &unk_264E27CF0);
    goto LABEL_8;
  }

  (*(v6 + 32))(v9, &v13[v24], v5);
  sub_264DD760C(&qword_27FFB1F20, MEMORY[0x277CC88A8]);
  v27 = sub_264E25068();
  v28 = *(v6 + 8);
  v28(v9, v5);
  sub_264D817BC(v20, &qword_27FFB1880, &qword_264E26220);
  sub_264D817BC(v23, &qword_27FFB1880, &qword_264E26220);
  v28(v17, v5);
  sub_264D817BC(v13, &qword_27FFB1880, &qword_264E26220);
  if (v27)
  {
    goto LABEL_11;
  }

LABEL_8:
  result = 0;
LABEL_9:
  *v30 = result;
  return result;
}

uint64_t DetailChart.Model.firstHour.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DetailChart.Hour(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  result = type metadata accessor for DetailChart.Model(0);
  v15 = *(v1 + *(result + 20));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    while (v17 < *(v15 + 16))
    {
      sub_264DD7194(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v7, type metadata accessor for DetailChart.Hour);
      if (*&v7[*(v3 + 20)] > 0.0)
      {
        sub_264DD68F4(v7, v10, type metadata accessor for DetailChart.Hour);
        sub_264DD68F4(v10, v13, type metadata accessor for DetailChart.Hour);
        v19 = sub_264E238E8();
        v20 = *(v19 - 8);
        (*(v20 + 32))(a1, v13, v19);
        return (*(v20 + 56))(a1, 0, 1, v19);
      }

      ++v17;
      result = sub_264DD6898(v7);
      if (v16 == v17)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v18 = sub_264E238E8();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  return result;
}

uint64_t DetailChart.Model.xAxisScale.getter()
{
  v0 = sub_264E23C18();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_264E238E8();
  v44 = *(v11 - 8);
  v12 = v44[8];
  MEMORY[0x28223BE20](v11);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v17 = *(sub_264E23AA8() - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v34 = *(v17 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_264E261F0;
  v20 = *(type metadata accessor for DetailChart.Model(0) + 24);
  v21 = v1[13];
  v39 = *MEMORY[0x277CC9968];
  v38 = v21;
  v21(v4);
  v40 = v20;
  sub_264E23B08();
  v22 = v1[1];
  v23 = v0;
  v24 = v44;
  v42 = v1 + 1;
  v43 = v23;
  v37 = v22;
  (v22)(v4);
  v36 = v24[6];
  result = v36(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v33 = v19;
    v26 = v19 + v18;
    v27 = v24[4];
    v27(v16, v10, v11);
    v32 = v26;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v28 = v24[1];
    v28(v16, v11);
    v29 = v43;
    v38(v4, v39, v43);
    v30 = v41;
    sub_264E23B08();
    v37(v4, v29);
    result = v36(v30, 1, v11);
    if (result != 1)
    {
      v31 = v35;
      v27(v35, v30, v11);
      sub_264E23888();
      v28(v31, v11);
      return v33;
    }
  }

  __break(1u);
  return result;
}

uint64_t DetailChart.Model.yAxisScale.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264E261F0;
  *(v1 + 32) = 0;
  if (*(v0 + *(type metadata accessor for DetailChart.Model(0) + 32)) == 1)
  {
    v2 = DetailChart.Model.maxCount.getter();
    v3 = 10.0;
    v4 = ceil(v2 / 10.0) * 10.0;
    if (v4 > 10.0)
    {
      v3 = v4;
    }
  }

  else
  {
    v3 = 3600.0;
  }

  *(v1 + 40) = v3;
  return v1;
}

void DetailChart.Model.yStride.getter()
{
  v0 = DetailChart.Model.strideLimit.getter();
  v1 = DetailChart.Model.lastY.getter() * 0.25;
  if (v1 == 0.0)
  {
    goto LABEL_34;
  }

  v2 = v0 >= 0.0;
  if (v1 > 0.0)
  {
    v2 = v0 <= 0.0;
  }

  if (!v2)
  {
    v4 = 0;
    while (1)
    {
      v3 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_32;
      }

      v5 = v3 * v1 + 0.0;
      v6 = v5 <= v0;
      if (v1 > 0.0)
      {
        v6 = v0 <= v5;
      }

      ++v4;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  v3 = 0;
LABEL_11:
  v18 = MEMORY[0x277D84F90];
  sub_264D8D0F4(0, v3, 0);
  v7 = v18;
  if (v3)
  {
    v8 = 1;
    v9 = 0.0;
    while (1)
    {
      v10 = v9 <= v0;
      if (v1 > 0.0)
      {
        v10 = v0 <= v9;
      }

      if (v10)
      {
        break;
      }

      v19 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_264D8D0F4((v11 > 1), v12 + 1, 1);
        v7 = v19;
      }

      v13 = v8 * v1 + 0.0;
      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v9;
      ++v8;
      v9 = v13;
      if (v8 - v3 == 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v13 = 0.0;
LABEL_21:
  v14 = v13 <= v0;
  if (v1 > 0.0)
  {
    v14 = v0 <= v13;
  }

  if (!v14)
  {
    while (!__OFADD__(v3, 1))
    {
      v20 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_264D8D0F4((v15 > 1), v16 + 1, 1);
        v7 = v20;
      }

      *(v7 + 8 * v16 + 32) = v13;
      v13 = (v3 + 1) * v1 + 0.0;
      *(v7 + 16) = v16 + 1;
      v17 = v13 <= v0;
      if (v1 > 0.0)
      {
        v17 = v0 <= v13;
      }

      ++v3;
      if (v17)
      {
        return;
      }
    }

    goto LABEL_33;
  }
}

double DetailChart.Model.lastY.getter()
{
  if (*(v0 + *(type metadata accessor for DetailChart.Model(0) + 32)) != 1)
  {
    return 3600.0;
  }

  result = ceil(DetailChart.Model.maxCount.getter() / 10.0) * 10.0;
  if (result <= 10.0)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_264DD5AFC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v61 = a5;
  v52 = a3;
  v51 = a2;
  v62 = a1;
  v53 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v57 = &v46 - v14;
  v56 = sub_264E23C18();
  v54 = *(v56 - 8);
  v15 = v54;
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_264E23AA8();
  v58 = *(v19 - 8);
  v59 = v19;
  v20 = *(v58 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v55 = &v46 - v25;
  v48 = sub_264E241F8();
  v46 = *(v48 - 8);
  v26 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2450, &unk_264E2A400);
  v49 = *(v50 - 8);
  v29 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v47 = &v46 - v30;
  sub_264E247D8();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v31 = v56;
  (*(v15 + 104))(v18, *MEMORY[0x277CC9980], v56);
  v32 = sub_264E23C38();
  v33 = v57;
  (*(*(v32 - 8) + 56))(v57, 1, 1, v32);
  sub_264E240E8();

  v34 = v28;

  sub_264D817BC(v33, &qword_27FFB1C50, &unk_264E267D0);
  (*(v54 + 8))(v18, v31);
  (*(v58 + 8))(v22, v59);
  sub_264E247D8();
  v63 = *(a4 + *(type metadata accessor for DetailChart.Hour(0) + 20)) * a7;
  sub_264E240F8();

  v35 = [objc_opt_self() currentDevice];
  v36 = [v35 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E241E8();
  v69[0] = *(v61 + *(type metadata accessor for DetailChart.Model(0) + 28));
  v37 = qword_27FFB16A0;

  if (v37 != -1)
  {
    swift_once();
  }

  result = qword_27FFB6C48;
  v69[1] = qword_27FFB6C48;
  if (v62 > 1)
  {
    __break(1u);
  }

  else
  {
    v39 = *&v69[v62];

    v40 = MEMORY[0x277CE0F78];
    swift_arrayDestroy();
    v63 = v39;
    v41 = MEMORY[0x277CBB400];
    v42 = MEMORY[0x277CE0F60];
    v43 = v47;
    v44 = *&v48;
    sub_264E24038();

    (*(v46 + 8))(v34, COERCE_DOUBLE(*&v44));
    v67 = v51;
    v68 = v52;
    v63 = v44;
    v64 = v40;
    v65 = v41;
    v66 = v42;
    swift_getOpaqueTypeConformance2();
    sub_264D89EB8();
    v45 = v50;
    sub_264E24048();
    return (*(v49 + 8))(v43, v45);
  }

  return result;
}

uint64_t DetailChart.Model.orderedStackedBarColors.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22A8, &qword_264E27740);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264E261F0;
  *(v1 + 32) = *(v0 + *(type metadata accessor for DetailChart.Model(0) + 28));
  v2 = qword_27FFB16A0;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 40) = qword_27FFB6C48;

  return v1;
}

uint64_t sub_264DD6324@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264E24828();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB23A8, &qword_264E27A10);
  return sub_264DD36F4(v1, 0x655073746E756F63, 0xED000072756F4872, a1 + *(v3 + 44));
}

uint64_t sub_264DD6398@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264E24D28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_264E24D18();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
  v9 = sub_264E24D48();

  (*(v4 + 8))(v7, v3);
  sub_264E24F58();
  sub_264E244B8();
  v10 = v15[1];
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v23 = v16;
  v21 = v18;
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 17) = *v22;
  *(a1 + 20) = *&v22[3];
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  LODWORD(v10) = *v20;
  *(a1 + 36) = *&v20[3];
  *(a1 + 33) = v10;
  *(a1 + 40) = v19;
  *(a1 + 56) = v8;
}

double DetailChart.Model.maxCount.getter()
{
  v1 = type metadata accessor for DetailChart.Hour(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for DetailChart.Model(0) + 20));
  v7 = *(v6 + 16);
  if (v7)
  {
    v20 = MEMORY[0x277D84F90];
    sub_264D8D0F4(0, v7, 0);
    v8 = v20;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_264DD7194(v9, v5, type metadata accessor for DetailChart.Hour);
      v11 = *&v5[*(v1 + 20)];
      sub_264DD6898(v5);
      v20 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        sub_264D8D0F4((v12 > 1), v13 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v14;
      *(v8 + 8 * v13 + 32) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    if (!v14)
    {
      v15 = 0.0;
      goto LABEL_15;
    }
  }

  v15 = *(v8 + 32);
  v16 = v14 - 1;
  if (v14 != 1)
  {
    v17 = 40;
    do
    {
      if (v15 < *(v8 + v17))
      {
        v15 = *(v8 + v17);
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

LABEL_15:

  return v15;
}

double DetailChart.Model.minimumMaxYAxisUnit.getter()
{
  v1 = type metadata accessor for DetailChart.Model(0);
  result = 3600.0;
  if (*(v0 + *(v1 + 32)))
  {
    return 10.0;
  }

  return result;
}

double DetailChart.Model.strideLimit.getter()
{
  if (*(v0 + *(type metadata accessor for DetailChart.Model(0) + 32)) != 1)
  {
    return 4500.0;
  }

  v1 = ceil(DetailChart.Model.maxCount.getter() / 10.0) * 10.0;
  if (v1 <= 10.0)
  {
    v1 = 10.0;
  }

  return v1 + 1.0;
}

BOOL _s16ScreenTimeUICore11DetailChartV5ModelV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78() & 1) != 0 && (v4 = type metadata accessor for DetailChart.Model(0), (sub_264D84338(*(a1 + v4[5]), *(a2 + v4[5]))) && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) != 0 && (v5 = v4[7], v6 = *(a1 + v5), v7 = *(a2 + v5), (sub_264E24C48()) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264DD6898(uint64_t a1)
{
  v2 = type metadata accessor for DetailChart.Hour(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DD68F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DD69D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailChart.Model(0);
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

uint64_t sub_264DD6AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DetailChart.Model(0);
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

void sub_264DD6B68()
{
  type metadata accessor for DetailChart.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264DBDF34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DD6C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E238E8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DD6C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E238E8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264DD6CF0()
{
  result = sub_264E238E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264DD6D78(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_264DD6EB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_264DD6FD4()
{
  sub_264E23AA8();
  if (v0 <= 0x3F)
  {
    sub_264DD709C();
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

void sub_264DD709C()
{
  if (!qword_27FFB23E0)
  {
    type metadata accessor for DetailChart.Hour(255);
    v0 = sub_264E251F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB23E0);
    }
  }
}

uint64_t sub_264DD7194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DD71FC()
{
  v1 = (type metadata accessor for DetailChart(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_264E23AA8();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for DetailChart.Model(0);
  v8 = *(v5 + v7[5]);

  v9 = v7[6];
  v10 = sub_264E23C38();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = *(v5 + v7[7]);

  v12 = *(v5 + v1[7]);

  v13 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_264DD7364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DetailChart(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_264DD45E0(a1, v2 + v6, v8, v9, a2);
}

unint64_t sub_264DD7414()
{
  result = qword_27FFB2448;
  if (!qword_27FFB2448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2438, &qword_264E27C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2450, &unk_264E2A400);
    sub_264E241F8();
    swift_getOpaqueTypeConformance2();
    sub_264D89EB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2448);
  }

  return result;
}

unint64_t sub_264DD7534()
{
  result = qword_27FFB2458;
  if (!qword_27FFB2458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2440, &unk_264E27C70);
    sub_264DD75B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2458);
  }

  return result;
}

unint64_t sub_264DD75B8()
{
  result = qword_27FFB2460;
  if (!qword_27FFB2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2460);
  }

  return result;
}

uint64_t sub_264DD760C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DD767C()
{
  v1 = *(type metadata accessor for DetailChart.Hour(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (type metadata accessor for DetailChart(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = sub_264E238E8();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  v11 = sub_264E23AA8();
  (*(*(v11 - 8) + 8))(v0 + v7, v11);
  v12 = type metadata accessor for DetailChart.Model(0);
  v13 = *(v0 + v7 + v12[5]);

  v14 = v12[6];
  v15 = sub_264E23C38();
  (*(*(v15 - 8) + 8))(v0 + v7 + v14, v15);
  v16 = *(v0 + v7 + v12[7]);

  v17 = *(v0 + v7 + v5[7]);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_264DD7860@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *(type metadata accessor for DetailChart.Hour(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for DetailChart(0) - 8);
  v15 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_264DD5AFC(a1, a2, a3, v5 + v12, v15, a4, a5);
}

uint64_t sub_264DD796C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264DD79A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 8));
}

uint64_t sub_264DD79E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_264DD7A58()
{
  result = qword_27FFB24B0;
  if (!qword_27FFB24B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB24B8, &qword_264E27D08);
    sub_264DD7B10();
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB24B0);
  }

  return result;
}

unint64_t sub_264DD7B10()
{
  result = qword_27FFB24C0;
  if (!qword_27FFB24C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB24C8, &qword_264E27D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB24C0);
  }

  return result;
}

uint64_t sub_264DD7BA0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_264E24FB8();
}

double sub_264DD7D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - v9;
  v11 = sub_264E238E8();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = sub_264E23AA8();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v44 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v44 - v29;
  v31 = 0.0;
  if (a1 == 1)
  {
    v46 = a3;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v47 = v4;
    Calendar.startOfWeek(containing:)(v27, v19);
    v48 = v21[1];
    v48(v27, v20);
    v32 = v21[6];
    if (v32(v19, 1, v20) == 1)
    {
      v33 = &qword_27FFB1860;
      v34 = &qword_264E267E0;
      v35 = v19;
LABEL_9:
      sub_264D817BC(v35, v33, v34);
      return v31;
    }

    v44 = v21[4];
    v45 = v32;
    v44(v30, v19, v20);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    Calendar.weeksPreceding(date:weekCount:)(v27, 2, v10);
    v48(v27, v20);
    v36 = v51;
    if ((*(v51 + 48))(v10, 1, v52) == 1)
    {
      v48(v30, v20);
      v33 = &qword_27FFB1880;
      v34 = &qword_264E26220;
LABEL_8:
      v35 = v10;
      goto LABEL_9;
    }

    (*(v36 + 32))(v50, v10, v52);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v10 = v49;
    Calendar.startOfWeek(containing:)(v27, v49);
    v48(v27, v20);
    if (v45(v10, 1, v20) == 1)
    {
      (*(v36 + 8))(v50, v52);
      v48(v30, v20);
      v33 = &qword_27FFB1860;
      v34 = &qword_264E267E0;
      goto LABEL_8;
    }

    v44(v24, v10, v20);
    v38 = v46;
    sub_264DD878C(v30, 0, v46);
    v40 = v39;
    sub_264DD878C(v24, 0, v38);
    v42 = v41;
    v43 = v48;
    v48(v24, v20);
    (*(v36 + 8))(v50, v52);
    v43(v30, v20);
    if (v42 > 0.0)
    {
      return (v40 - v42) / v42;
    }
  }

  return v31;
}

uint64_t sub_264DD8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  v36 = sub_264E238E8();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_264E23AA8();
  v15 = *(v39 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v39);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v34 = &v34 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  v35 = a4;
  if (a3)
  {
    v24 = a3;
  }

  else
  {
    v24 = *(v4 + *(a4 + 36));
  }

  if (v37 == 1)
  {

    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    Calendar.startOfWeek(containing:)(v18, v10);
    v25 = *(v15 + 8);
    v26 = v39;
    v25(v18, v39);
    if ((*(v15 + 48))(v10, 1, v26) == 1)
    {
      return sub_264D817BC(v10, &qword_27FFB1860, &qword_264E267E0);
    }

    else
    {
      v31 = v34;
      (*(v15 + 32))(v34, v10, v26);
      v32 = a3;
      if (!a3)
      {
        v32 = *(v4 + *(v35 + 36));
      }

      v33 = *(v35 + 44);

      sub_264DD26C0(v32, v31, v4, v4 + v33);

      return (v25)(v31, v26);
    }
  }

  else if (v37)
  {
    result = sub_264E253E8();
    __break(1u);
  }

  else
  {

    sub_264E23858();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*(v11 + 8))(v14, v36);
    if (*(v24 + 16) && (v28 = sub_264D9D5F4(v23), (v29 & 1) != 0))
    {
      v30 = *(*(v24 + 56) + 8 * v28);
      (*(v15 + 8))(v23, v39);
    }

    else
    {

      return (*(v15 + 8))(v23, v39);
    }
  }

  return result;
}

uint64_t ChartHeaderView.Model.init(calendar:chartDataType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for ChartHeaderView.Model();
  v7 = v6[9];
  *(a3 + v7) = sub_264DEB44C(MEMORY[0x277D84F90]);
  v8 = v6[11];
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = sub_264E23C38();
  result = (*(*(v10 - 8) + 32))(a3, a1, v10);
  *(a3 + v6[10]) = v5;
  return result;
}

uint64_t sub_264DD878C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a1;
  v83 = sub_264E23C18();
  v6 = *(v83 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v65 - v11;
  v12 = sub_264E238E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v75 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264E23AA8();
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v87 = &v65 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D98, &unk_264E268F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v86 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v84 = v3;
  v85 = &v65 - v26;
  if (a2)
  {
    v27 = a2;
  }

  else
  {
    v28 = *(v3 + *(a3 + 36));
  }

  v70 = v27;
  v29 = *(v27 + 64);
  v66 = v27 + 64;
  v30 = 1 << *(v27 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v67 = v71 + 16;
  v88 = (v71 + 32);
  v80 = *MEMORY[0x277CC9940];
  v78 = (v6 + 8);
  v79 = (v6 + 104);
  v77 = (v13 + 48);
  v73 = (v13 + 8);
  v74 = (v13 + 32);
  v72 = (v71 + 8);

  v35 = 0;
  v36 = 0.0;
  v81 = v12;
  v69 = v16;
  v68 = v19;
  if (v32)
  {
    while (1)
    {
      v37 = v35;
LABEL_15:
      v40 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v41 = v40 | (v37 << 6);
      v42 = v70;
      v43 = v71;
      v44 = v87;
      v45 = v69;
      (*(v71 + 16))(v87, *(v70 + 48) + *(v71 + 72) * v41, v69);
      v46 = *(*(v42 + 56) + 8 * v41);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      v48 = *(v47 + 48);
      v49 = *(v43 + 32);
      v16 = v45;
      v50 = v86;
      v49(v86, v44, v16);
      *&v50[v48] = v46;
      (*(*(v47 - 8) + 56))(v50, 0, 1, v47);
      v39 = v37;
      v51 = v50;
      v19 = v68;
LABEL_16:
      v52 = v85;
      sub_264DD2DA4(v51, v85);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
      {
      }

      v54 = v39;
      v55 = *(v52 + *(v53 + 48));
      (*v88)(v19, v52, v16);
      v56 = v89;
      v57 = v82;
      v58 = v83;
      (*v79)(v82, v80, v83);
      sub_264E23B08();
      (*v78)(v57, v58);
      v59 = v81;
      result = (*v77)(v56, 1, v81);
      if (result == 1)
      {
        goto LABEL_25;
      }

      v60 = v75;
      (*v74)(v75, v89, v59);
      v61 = v87;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v73)(v60, v59);
      LOBYTE(v60) = sub_264E23A78();
      v62 = *v72;
      (*v72)(v61, v16);
      result = v62(v19, v16);
      if (v60)
      {
        v36 = v36 + v55;
      }

      v35 = v54;
      if (!v32)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v33 <= v35 + 1)
    {
      v38 = v35 + 1;
    }

    else
    {
      v38 = v33;
    }

    v39 = v38 - 1;
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v33)
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
        v64 = v86;
        (*(*(v63 - 8) + 56))(v86, 1, 1, v63);
        v51 = v64;
        v32 = 0;
        goto LABEL_16;
      }

      v32 = *(v66 + 8 * v37);
      ++v35;
      if (v32)
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

uint64_t sub_264DD8E90(void (*a1)(_BYTE *, void, void *), uint64_t a2, _BYTE *a3)
{
  v131 = a3;
  v132 = a1;
  v4 = sub_264E250B8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v124 = &v106[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_264E23C38();
  v118 = *(v7 - 8);
  v119 = v7;
  v8 = *(v118 + 64);
  MEMORY[0x28223BE20](v7);
  v116 = &v106[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = sub_264E238E8();
  v111 = *(v112 - 8);
  v10 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v106[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = sub_264E23C18();
  v125 = *(v134 - 1);
  v12 = *(v125 + 64);
  MEMORY[0x28223BE20](v134);
  v14 = &v106[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v115 = &v106[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v121 = &v106[-v19];
  MEMORY[0x28223BE20](v20);
  v22 = &v106[-v21];
  v23 = sub_264E23AA8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v109 = &v106[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v113 = &v106[-v28];
  MEMORY[0x28223BE20](v29);
  v114 = &v106[-v30];
  MEMORY[0x28223BE20](v31);
  v108 = &v106[-v32];
  MEMORY[0x28223BE20](v33);
  v35 = &v106[-v34];
  MEMORY[0x28223BE20](v36);
  v38 = &v106[-v37];
  v39 = sub_264E23AD8();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v106[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = sub_264E250D8();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v106[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_264E25078();
  v126 = objc_opt_self();
  v47 = [v126 bundle];
  sub_264E23AC8();
  v127 = v46;
  v128 = v42;
  v123 = sub_264E25138();
  v129 = v48;
  v117 = a2;
  v49 = v130;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264D81744(v49 + *(v131 + 11), v22, &qword_27FFB1860, &qword_264E267E0);
  v50 = *(v24 + 48);
  v51 = (v50)(v22, 1, v23);
  v133 = v24;
  if (v51 == 1)
  {
    sub_264E23A98();
    if ((v50)(v22, 1, v23) != 1)
    {
      sub_264D817BC(v22, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    (*(v24 + 32))(v35, v22, v23);
  }

  v52 = v134;
  if (v132)
  {
    v124 = v50;
    v120 = v35;
    v131 = v38;
    v122 = v23;
    if (v132 == 1)
    {
      v54 = v14;
      v55 = v125;
      v56 = *(v125 + 104);
      v107 = *MEMORY[0x277CC9940];
      v132 = v56;
      v56(v14);
      v57 = v131;
      v58 = v120;
      v59 = sub_264E23BE8();
      v60 = *(v55 + 8);
      v60(v54, v52);
      if (v59)
      {
        v61 = *(v133 + 8);
        v62 = v122;
        v61(v58, v122);
        v61(v57, v62);
        return v123;
      }

      v132(v54, v107, v52);
      v70 = v121;
      sub_264E23BC8();
      v60(v54, v52);
      v71 = v122;
      if (v124(v70, 1, v122) == 1)
      {
        v130 = v60;
        sub_264D817BC(v70, &qword_27FFB1860, &qword_264E267E0);
        v72 = v133;
      }

      else
      {
        v78 = v133;
        v79 = v70;
        v80 = v108;
        (*(v133 + 32))(v108, v79, v71);
        v132(v54, v107, v52);
        v81 = sub_264E23BE8();
        v60(v54, v52);
        if (v81)
        {

          sub_264E25078();
          v82 = [v126 bundle];
          sub_264E23AC8();
          v83 = sub_264E25138();
          v84 = *(v78 + 8);
          v85 = v80;
          v86 = v122;
          v84(v85, v122);
          v84(v120, v86);
          v84(v131, v86);
          return v83;
        }

        v130 = v60;
        (*(v78 + 8))(v80, v122);
        v72 = v78;
        v52 = v134;
      }

      v87 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
      v88 = sub_264E250E8();
      v134 = v87;
      [v87 setDateTemplate_];

      v89 = v122;
      (*(v72 + 16))(v114, v131, v122);
      v90 = v113;
      sub_264E23888();
      v91 = v116;
      sub_264E23BF8();
      v132(v54, *MEMORY[0x277CC9968], v52);
      v92 = v52;
      v93 = v115;
      sub_264E23BC8();
      v130(v54, v92);
      v94 = v89;
      (*(v118 + 8))(v91, v119);
      if (v124(v93, 1, v89) != 1)
      {
        v95 = *(v72 + 8);
        v95(v90, v89);
        (*(v72 + 32))(v109, v93, v89);
        v96 = v110;
        sub_264E23898();
        v97 = sub_264E23868();
        (*(v111 + 8))(v96, v112);
        v98 = v134;
        v99 = [v134 stringFromDateInterval_];

        if (v99)
        {

          v100 = sub_264E25108();
          v102 = v101;

          sub_264E25078();
          v103 = [v126 bundle];
          sub_264E23AC8();
          sub_264E25138();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2610, &unk_264E27E60);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_264E261E0;
          *(v104 + 56) = MEMORY[0x277D837D0];
          *(v104 + 64) = sub_264DDBB6C();
          *(v104 + 32) = v100;
          *(v104 + 40) = v102;
          v105 = sub_264E25128();

          v95(v120, v94);
          v95(v131, v94);
          return v105;
        }

        v95(v120, v94);
        v95(v131, v94);
        return v123;
      }

      __break(1u);
    }

    result = sub_264E253E8();
    __break(1u);
    return result;
  }

  v53 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  if (sub_264E23B28() & 1) != 0 || (sub_264E23B88())
  {
    v63 = sub_264E250E8();
    [v53 setLocalizedDateFormatFromTemplate_];

    sub_264E250A8();
    sub_264E25098();
    v64 = sub_264E23A38();
    v65 = [v53 stringFromDate_];

    sub_264E25108();
    v66 = v35;

    sub_264E25088();

    sub_264E25098();
    sub_264E250C8();
    [v126 bundle];
    sub_264E23AC8();
    v67 = sub_264E25138();

    v68 = *(v133 + 8);
    v68(v66, v23);
    v68(v38, v23);
    return v67;
  }

  else
  {
    v73 = sub_264E250E8();
    [v53 setLocalizedDateFormatFromTemplate_];

    v74 = sub_264E23A38();
    v75 = [v53 stringFromDate_];

    v76 = sub_264E25108();
    v77 = *(v133 + 8);
    v77(v35, v23);
    v77(v38, v23);
    return v76;
  }
}

uint64_t sub_264DD9EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_264E23C38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  v19 = 0;
  if ((*(v3 + *(v16 + 40)) & 1) == 0)
  {
    sub_264DD8268(a1, a2, a3, v16);
    v21 = v20;
    (*(v8 + 56))(v18, 1, 1, v7);
    v22 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v22 setAllowedUnits_];
    [v22 setUnitsStyle_];
    [v22 setZeroFormattingBehavior_];
    if (v21 <= 3600.0)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    [v22 setMaximumUnitCount_];
    sub_264D81744(v18, v14, &qword_27FFB1C50, &unk_264E267D0);
    if ((*(v8 + 48))(v14, 1, v7) == 1)
    {
      sub_264D817BC(v14, &qword_27FFB1C50, &unk_264E267D0);
    }

    else
    {
      v24 = v30;
      (*(v8 + 32))(v30, v14, v7);
      v25 = sub_264E23BA8();
      [v22 setCalendar_];

      (*(v8 + 8))(v24, v7);
    }

    v26 = [v22 stringFromTimeInterval_];
    if (v26)
    {
      v27 = v26;
      v19 = sub_264E25108();
    }

    else
    {

      v19 = 0;
    }

    sub_264D817BC(v18, &qword_27FFB1C50, &unk_264E267D0);
  }

  return v19;
}

uint64_t ChartHeaderView.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_264E24948();
  sub_264E24508();
  sub_264E24508();
  swift_getTupleTypeMetadata3();
  sub_264E24FA8();
  swift_getWitnessTable();
  sub_264E24E08();
  swift_getTupleTypeMetadata2();
  sub_264E24FA8();
  swift_getWitnessTable();
  v6 = sub_264E24E38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v18[-v12];
  sub_264E24828();
  v14 = *(a1 + 24);
  v19 = v5;
  v20 = v14;
  v21 = v2;
  sub_264E24E28();
  swift_getWitnessTable();
  v15 = v7[2];
  v15(v13, v10, v6);
  v16 = v7[1];
  v16(v10, v6);
  v15(a2, v13, v6);
  return (v16)(v13, v6);
}

uint64_t sub_264DDA458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  sub_264E24948();
  sub_264E24508();
  sub_264E24508();
  swift_getTupleTypeMetadata3();
  v7 = sub_264E24FA8();
  WitnessTable = swift_getWitnessTable();
  v54 = v7;
  v8 = sub_264E24E08();
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v46 - v12;
  v13 = type metadata accessor for ChartHeaderView();
  v14 = (a1 + v13[11]);
  v15 = v14[1];
  v51 = a3;
  v52 = a1;
  v50 = a2;
  if (v15)
  {
    v16 = *v14;
    v17 = v15;
  }

  else
  {
    v18 = v13[10];
    v19 = *(a1 + v13[9]);
    v20 = type metadata accessor for ChartHeaderView.Model();
    v16 = sub_264DD8E90(v19, a1 + v18, v20);
  }

  v62 = v16;
  v63 = v17;
  sub_264D89EB8();

  v21 = sub_264E24AF8();
  v23 = v22;
  v25 = v24;
  sub_264E249E8();
  v26 = sub_264E24AD8();
  v28 = v27;
  v30 = v29;

  sub_264D817AC(v21, v23, v25 & 1);

  sub_264E24CD8();
  v31 = sub_264E24AB8();
  v47 = v32;
  v48 = v33;
  v49 = v34;

  sub_264D817AC(v26, v28, v30 & 1);

  v35 = sub_264E24758();
  MEMORY[0x28223BE20](v35);
  v36 = v51;
  *(&v46 - 4) = v50;
  *(&v46 - 3) = v36;
  *(&v46 - 2) = v52;
  v37 = v56;
  sub_264E24DF8();
  v54 = swift_getWitnessTable();
  v38 = v57;
  v39 = *(v57 + 16);
  v40 = v55;
  v39(v55, v37, v8);
  v57 = *(v38 + 8);
  (v57)(v37, v8);
  v41 = v47;
  v62 = v31;
  v63 = v47;
  v42 = v48 & 1;
  v64 = v48 & 1;
  v65 = v49;
  v66[0] = &v62;
  v39(v37, v40, v8);
  v66[1] = v37;
  sub_264D80F20(v31, v41, v42);

  v61[0] = MEMORY[0x277CE0BD8];
  v61[1] = v8;
  v59 = MEMORY[0x277CE0BC8];
  v60 = v54;
  sub_264DD7BA0(v66, 2uLL, v61);
  sub_264D817AC(v31, v41, v42);

  v43 = v40;
  v44 = v57;
  (v57)(v43, v8);
  v44(v37, v8);
  sub_264D817AC(v62, v63, v64);
}

uint64_t sub_264DDA8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v52 = a3;
  v47 = *(a2 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E24948();
  v46 = sub_264E24508();
  v50 = *(v46 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v42 - v10;
  v12 = sub_264E24508();
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v42 - v16;
  v17 = type metadata accessor for ChartHeaderView();
  v18 = a1 + v17[13];
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(a1 + v17[12]);
  v43 = a1;
  v22 = sub_264DDAD84(v21, v17);
  v19(v22);

  v45 = a2;
  v23 = v52;
  sub_264DFBAD8(60);
  (*(v47 + 8))(v8, a2);
  v24 = sub_264DDAF38(v17);
  v26 = v25;
  v27 = sub_264DDBAD0(&qword_27FFB1B10, MEMORY[0x277CDE470]);
  v60[5] = v23;
  v60[6] = v27;
  v28 = v46;
  WitnessTable = swift_getWitnessTable();
  v30 = v44;
  sub_264E1A918(v24, v26, v28);

  (*(v50 + 8))(v11, v28);
  v31 = sub_264DC7180();
  v60[3] = WitnessTable;
  v60[4] = v31;
  v50 = swift_getWitnessTable();
  v32 = v49;
  v33 = *(v49 + 16);
  v34 = v48;
  v33(v48, v30, v12);
  v35 = *(v32 + 8);
  v35(v30, v12);
  v36 = v17[10];
  v37 = v43;
  v38 = *(v43 + v17[9]);
  v39 = type metadata accessor for ChartHeaderView.Model();
  v40 = sub_264DD7D70(v38, v37 + v36, v39);
  v33(v30, v34, v12);
  v58 = 0;
  v59 = 1;
  v60[0] = v30;
  v60[1] = &v58;
  v60[2] = &v57;
  v56[0] = v12;
  v56[1] = MEMORY[0x277CE1180];
  v57 = v40;
  v56[2] = &type metadata for DeltaView;
  v53 = v50;
  v54 = MEMORY[0x277CE1170];
  v55 = sub_264DDBB18();
  sub_264DD7BA0(v60, 3uLL, v56);
  v35(v34, v12);
  return (v35)(v30, v12);
}

uint64_t sub_264DDAD84(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v2 + *(a2 + 36));
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = type metadata accessor for ChartHeaderView.Model();
  result = sub_264DD8268(v5, v2 + v4, a1, v8);
  if (*(v2 + *(v8 + 40)))
  {
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        sub_264D908C4();
        return sub_264E25348();
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v12 setAllowedUnits_];
  [v12 setUnitsStyle_];
  [v12 setZeroFormattingBehavior_];
  if (v11 <= 3600.0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [v12 setMaximumUnitCount_];
  v14 = [v12 stringFromTimeInterval_];
  if (v14)
  {
    v15 = v14;
    v16 = sub_264E25108();

    return v16;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_264DDAF38(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v1 + *(a1 + 36));
  v4 = *(v1 + *(a1 + 48));
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for ChartHeaderView.Model();

  return sub_264DD9EA0(v3, v1 + v2, v4);
}

uint64_t sub_264DDAF9C@<X0>(uint64_t a1@<X8>)
{
  v16 = *v1;
  v17 = v1[1];
  sub_264D89EB8();

  v3 = sub_264E24AF8();
  v5 = v4;
  v7 = v6;
  sub_264E249C8();
  v8 = sub_264E24AD8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_264D817AC(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

void sub_264DDB0D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for ChartHeaderView.Model();
  if (v3 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v4 <= 0x3F)
    {
      sub_264E238E8();
      if (v5 <= 0x3F)
      {
        sub_264DDB418();
        if (v6 <= 0x3F)
        {
          sub_264DDB468();
          if (v7 <= 0x3F)
          {
            sub_264D812B0();
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_264DDB1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for ChartHeaderView.Model();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, v10);
  }

  v13 = sub_264E238E8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v10 = v13;
    v11 = *(v14 + 48);
    v12 = a1 + *(a3 + 40);
    goto LABEL_5;
  }

  v16 = *(a1 + *(a3 + 52));
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_264DDB2F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = type metadata accessor for ChartHeaderView.Model();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
  }

  else
  {
    result = sub_264E238E8();
    v16 = *(result - 8);
    if (*(v16 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = (a2 - 1);
      return result;
    }

    v12 = result;
    v13 = *(v16 + 56);
    v14 = a1 + *(a4 + 40);
  }

  return v13(v14, a2, a2, v12);
}

void sub_264DDB418()
{
  if (!qword_27FFB2560)
  {
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2560);
    }
  }
}

void sub_264DDB468()
{
  if (!qword_27FFB2568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FFB2570, qword_264E27DA8);
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2568);
    }
  }
}

void sub_264DDB4D4()
{
  sub_264E23C38();
  if (v0 <= 0x3F)
  {
    sub_264DDB800();
    if (v1 <= 0x3F)
    {
      sub_264DDB89C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264DDB58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264DDB6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264DDB800()
{
  if (!qword_27FFB25F8)
  {
    sub_264E23AA8();
    sub_264DDBAD0(&qword_27FFB19D0, MEMORY[0x277CC9578]);
    v0 = sub_264E25028();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB25F8);
    }
  }
}

void sub_264DDB89C()
{
  if (!qword_27FFB2600)
  {
    sub_264E23AA8();
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2600);
    }
  }
}

uint64_t sub_264DDB8F4(uint64_t *a1)
{
  v1 = *a1;
  sub_264E24948();
  sub_264E24508();
  sub_264E24508();
  swift_getTupleTypeMetadata3();
  sub_264E24FA8();
  swift_getWitnessTable();
  sub_264E24E08();
  swift_getTupleTypeMetadata2();
  sub_264E24FA8();
  swift_getWitnessTable();
  sub_264E24E38();

  return swift_getWitnessTable();
}

uint64_t sub_264DDBA14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_264DDBA5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264DDBAD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264DDBB18()
{
  result = qword_27FFB2608;
  if (!qword_27FFB2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2608);
  }

  return result;
}

unint64_t sub_264DDBB6C()
{
  result = qword_27FFB2618;
  if (!qword_27FFB2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2618);
  }

  return result;
}

uint64_t sub_264DDBBCC()
{
  if (*(v0 + 2))
  {
    v1 = *(v0 + 2);

    sub_264E25258();

    v2 = *(v0 + 2);
  }

  v3 = OBJC_IVAR____TtC16ScreenTimeUICore13InstalledApps__bundleIdentifiers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2648, &qword_264E27F10);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC16ScreenTimeUICore13InstalledApps_userDSID + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InstalledApps()
{
  result = qword_27FFB2628;
  if (!qword_27FFB2628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264DDBD24()
{
  sub_264DDBDC8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264DDBDC8()
{
  if (!qword_27FFB2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2640, &qword_264E27EB8);
    v0 = sub_264E24358();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2638);
    }
  }
}

uint64_t sub_264DDBE38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InstalledApps();
  result = sub_264E242E8();
  *a1 = result;
  return result;
}

uint64_t NoActivityView.init(font:background:selectedDeviceModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for NoActivityView();
  v9 = a4 + v8[7];
  sub_264E24D78();
  *v9 = v11;
  *(v9 + 1) = v12;
  *(a4 + v8[8]) = 0x4000000000000000;
  *a4 = a1;
  a4[1] = a2;
  return sub_264DDBF68(a3, a4 + v8[6]);
}

uint64_t type metadata accessor for NoActivityView()
{
  result = qword_27FFB2678;
  if (!qword_27FFB2678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264DDBF68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2650, &qword_264E27F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NoActivityView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NoActivityView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(v1 + 8);
  v21 = sub_264E24C38();
  v8 = sub_264E24518();
  v9 = sub_264E24998();
  v10 = sub_264E24F58();
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2658, &qword_264E27F28) + 36);
  *v13 = sub_264E24818();
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2660, &qword_264E27F30);
  sub_264DDC1AC(v2, v13 + *(v14 + 44));
  sub_264DDCEF0(v2, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_264DDCF58(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2668, &qword_264E27F38) + 36));
  *v17 = sub_264DDCFBC;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2670, &qword_264E27F40);
  v19 = (v13 + *(result + 36));
  *v19 = v10;
  v19[1] = v12;
  *a1 = v21;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_264DDC1AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26E8, &qword_264E27FD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  sub_264DDC508(&v37);
  v28 = *(&v37 + 1);
  v29 = v37;
  v11 = v38;
  v27 = *(&v38 + 1);
  v12 = *a1;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  LOBYTE(v37) = v11;
  v14 = objc_opt_self();

  v15 = [v14 systemGrayColor];
  v16 = sub_264E24C38();
  v17 = swift_getKeyPath();
  v44 = 1;
  v18 = a1 + *(type metadata accessor for NoActivityView() + 28);
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v37) = v19;
  *(&v37 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26E0, &qword_264E27FD0);
  sub_264E24D88();
  v21 = 1.0;
  if (v30)
  {
    v21 = 0.0;
  }

  *&v30 = v29;
  *(&v30 + 1) = v28;
  LOBYTE(v31) = v11;
  *(&v31 + 1) = v27;
  *&v32 = KeyPath;
  *(&v32 + 1) = v12;
  *&v33 = v13;
  BYTE8(v33) = 1;
  *&v34 = v16;
  *(&v34 + 1) = v17;
  *&v35 = 0;
  BYTE8(v35) = 1;
  v36 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26F0, &qword_264E28070);
  sub_264DDD9F8();
  sub_264E24C08();
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  sub_264D817BC(&v37, &qword_27FFB26F0, &qword_264E28070);
  sub_264D81744(v10, v7, &qword_27FFB26E8, &qword_264E27FD8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2740, &qword_264E280A8);
  sub_264D81744(v7, a2 + *(v22 + 48), &qword_27FFB26E8, &qword_264E27FD8);
  v23 = a2 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_264D817BC(v10, &qword_27FFB26E8, &qword_264E27FD8);
  return sub_264D817BC(v7, &qword_27FFB26E8, &qword_264E27FD8);
}

uint64_t sub_264DDC508@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2650, &qword_264E27F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - v4;
  v6 = sub_264E23E98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  sub_264E247D8();
  v42 = objc_opt_self();
  v14 = [v42 bundle];
  v15 = sub_264E24AE8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = type metadata accessor for NoActivityView();
  sub_264D81744(v1 + *(v22 + 24), v5, &qword_27FFB2650, &qword_264E27F20);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_264D817BC(v5, &qword_27FFB2650, &qword_264E27F20);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v10, v13, v6);
    v24 = (*(v7 + 88))(v10, v6);
    if (v24 == *MEMORY[0x277CC5800] || v24 == *MEMORY[0x277CC57D8])
    {
      result = (*(v7 + 8))(v13, v6);
    }

    else
    {
      v25 = *MEMORY[0x277CC57F8];
      v41 = v13;
      if (v24 == v25 || v24 == *MEMORY[0x277CC57F0] || v24 == *MEMORY[0x277CC57E8])
      {
        sub_264E247D8();
        v26 = v15;
        v27 = [v42 bundle];
        v15 = sub_264E24AE8();
        v29 = v28;
        v30 = v19;
        v19 = v31;
        v21 = v32;
        sub_264D817AC(v26, v17, v30 & 1);
      }

      else
      {
        v34 = v15;
        if (v24 != *MEMORY[0x277CC57E0])
        {
          v40 = *(v7 + 8);
          v40(v13, v6);
          result = (v40)(v10, v6);
          goto LABEL_12;
        }

        sub_264E247D8();
        v35 = [v42 bundle];
        v15 = sub_264E24AE8();
        v29 = v36;
        v37 = v19;
        v19 = v38;
        v21 = v39;
        sub_264D817AC(v34, v17, v37 & 1);
      }

      result = (*(v7 + 8))(v41, v6);
      v17 = v29;
    }
  }

LABEL_12:
  v33 = v43;
  *v43 = v15;
  v33[1] = v17;
  *(v33 + 16) = v19 & 1;
  v33[3] = v21;
  return result;
}

uint64_t sub_264DDCAAC(uint64_t a1)
{
  v30 = a1;
  v32 = sub_264E24FC8();
  v35 = *(v32 - 8);
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264E24FE8();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NoActivityView();
  v9 = v8 - 8;
  v28 = *(v8 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_264E25008();
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  sub_264DDD6B0(0, &qword_27FFB26C0, 0x277D85C78);
  v29 = sub_264E252E8();
  sub_264E24FF8();
  v19 = v30;
  v20 = *(v30 + *(v9 + 40));
  sub_264E25018();
  v21 = *(v12 + 8);
  v21(v15, v11);
  sub_264DDCEF0(v19, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v23 = swift_allocObject();
  sub_264DDCF58(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  aBlock[4] = sub_264DDD844;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264DDD060;
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);

  sub_264E24FD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264DDD8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26D0, &qword_264E27FC8);
  sub_264D81DCC(&qword_27FFB26D8, &qword_27FFB26D0, &qword_264E27FC8);
  v25 = v32;
  sub_264E25358();
  v26 = v29;
  MEMORY[0x26674F420](v18, v7, v3, v24);
  _Block_release(v24);

  (*(v35 + 8))(v3, v25);
  (*(v33 + 8))(v7, v34);
  return (v21)(v18, v31);
}

uint64_t sub_264DDCEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoActivityView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DDCF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoActivityView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DDCFF0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NoActivityView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26E0, &qword_264E27FD0);
  return sub_264E24D98();
}

uint64_t sub_264DDD060(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_264DDD0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 8);
  v22 = sub_264E24C38();
  v9 = sub_264E24518();
  v10 = sub_264E24998();
  v11 = sub_264E24F58();
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2658, &qword_264E27F28) + 36);
  *v14 = sub_264E24818();
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2660, &qword_264E27F30);
  sub_264DDC1AC(v3, v14 + *(v15 + 44));
  sub_264DDCEF0(v3, v7);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_264DDCF58(v7, v17 + v16);
  v18 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2668, &qword_264E27F38) + 36));
  *v18 = sub_264DDDD68;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2670, &qword_264E27F40);
  v20 = (v14 + *(result + 36));
  *v20 = v11;
  v20[1] = v13;
  *a2 = v22;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_264DDD284(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2650, &qword_264E27F20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_264DDD354(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2650, &qword_264E27F20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DDD404()
{
  sub_264DDD6B0(319, &qword_27FFB2688, 0x277D75348);
  if (v0 <= 0x3F)
  {
    sub_264DDD4C8();
    if (v1 <= 0x3F)
    {
      sub_264DDD520();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DDD4C8()
{
  if (!qword_27FFB2690)
  {
    sub_264E23E98();
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2690);
    }
  }
}

void sub_264DDD520()
{
  if (!qword_27FFB2698)
  {
    v0 = sub_264E24DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2698);
    }
  }
}

unint64_t sub_264DDD574()
{
  result = qword_27FFB26A0;
  if (!qword_27FFB26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2658, &qword_264E27F28);
    sub_264DDD62C();
    sub_264D81DCC(&qword_27FFB26B8, &qword_27FFB2670, &qword_264E27F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB26A0);
  }

  return result;
}

unint64_t sub_264DDD62C()
{
  result = qword_27FFB26A8;
  if (!qword_27FFB26A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB26B0, &qword_264E27FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB26A8);
  }

  return result;
}

uint64_t sub_264DDD6B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for NoActivityView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v1 + 24);
  v8 = sub_264E23E98();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + *(v1 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264DDD85C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoActivityView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264DDD8E8()
{
  result = qword_27FFB26C8;
  if (!qword_27FFB26C8)
  {
    sub_264E24FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB26C8);
  }

  return result;
}

uint64_t sub_264DDD940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264E246D8();
  *a1 = result;
  return result;
}

uint64_t sub_264DDD99C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264E246D8();
  *a1 = result;
  return result;
}

unint64_t sub_264DDD9F8()
{
  result = qword_27FFB26F8;
  if (!qword_27FFB26F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB26F0, &qword_264E28070);
    sub_264DDDA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB26F8);
  }

  return result;
}

unint64_t sub_264DDDA84()
{
  result = qword_27FFB2700;
  if (!qword_27FFB2700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2708, &qword_264E28078);
    sub_264DDDB3C();
    sub_264D81DCC(&qword_27FFB1838, &qword_27FFB1840, &qword_264E280A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2700);
  }

  return result;
}

unint64_t sub_264DDDB3C()
{
  result = qword_27FFB2710;
  if (!qword_27FFB2710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2718, &qword_264E28080);
    sub_264DDDBF4();
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2710);
  }

  return result;
}

unint64_t sub_264DDDBF4()
{
  result = qword_27FFB2720;
  if (!qword_27FFB2720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2728, &qword_264E28088);
    sub_264DDDCAC();
    sub_264D81DCC(&qword_27FFB1848, &qword_27FFB1850, &unk_264E261D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2720);
  }

  return result;
}

unint64_t sub_264DDDCAC()
{
  result = qword_27FFB2730;
  if (!qword_27FFB2730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2738, &unk_264E28090);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2730);
  }

  return result;
}

uint64_t AllActivityView.Model.init(calendar:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v4 = *(v3 - 8);
  v133 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v140 = &v124 - v6;
  v7 = sub_264E23C38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v146 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v139 = &v124 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v124 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v127 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v138 = &v124 - v20;
  MEMORY[0x28223BE20](v21);
  v126 = &v124 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v124 - v24;
  v26 = type metadata accessor for AllActivityView.Model(0);
  v27 = v26[5];
  v142 = type metadata accessor for ScreenTimeAppInfoCache();
  *(a2 + v27) = swift_allocObject();
  v28 = v26[6];
  v141 = type metadata accessor for ScreenTimeAppIconCache();
  *(a2 + v28) = swift_allocObject();
  v143 = v26;
  v29 = v26[7];
  v136 = a2;
  v30 = a2 + v29;
  v31 = sub_264E23AA8();
  v125 = *(v31 - 8);
  v33 = v125 + 56;
  v32 = *(v125 + 56);
  v32(v25, 1, 1, v31);
  v34 = MEMORY[0x277D84F90];
  v124 = sub_264DEB44C(MEMORY[0x277D84F90]);
  sub_264E23BF8();
  v35 = *(type metadata accessor for UsageHeaderView.Model(0) + 20);
  v144 = v8;
  v36 = v8 + 16;
  v37 = *(v8 + 16);
  v131 = v30;
  v37(v30 + v35, v15, v7);
  v38 = v139;
  v132 = v15;
  v39 = v15;
  v40 = v7;
  v37(v139, v39, v7);
  v128 = v25;
  v41 = v126;
  sub_264D81744(v25, v126, &qword_27FFB1860, &qword_264E267E0);
  v42 = v140;
  v145 = v40;
  v134 = v37;
  v135 = v36;
  v37(v140, v38, v40);
  v43 = v133;
  v44 = *(v133 + 44);
  sub_264DEB44C(v34);
  v45 = *(v43 + 52);
  v129 = v32;
  v130 = v33;
  v32(&v42[v45], 1, 1, v31);
  v46 = v125;

  v42[*(v43 + 48)] = 0;
  *&v42[v44] = v124;
  v47 = v127;
  sub_264D81744(v41, v127, &qword_27FFB1860, &qword_264E267E0);
  v48 = *(v46 + 48);
  if (v48(v47, 1, v31) == 1)
  {
    sub_264E23A98();
    sub_264D817BC(v41, &qword_27FFB1860, &qword_264E267E0);
    v49 = v145;
    v50 = v144 + 8;
    v51 = *(v144 + 8);
    v51(v139, v145);
    v51(v132, v49);
    sub_264D817BC(v128, &qword_27FFB1860, &qword_264E267E0);
    v52 = v48(v47, 1, v31);
    v133 = v50 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v52 != 1)
    {
      sub_264D817BC(v47, &qword_27FFB1860, &qword_264E267E0);
    }

    v53 = v138;
  }

  else
  {
    sub_264D817BC(v41, &qword_27FFB1860, &qword_264E267E0);
    v54 = v145;
    v55 = *(v144 + 8);
    v133 = (v144 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55(v139, v145);
    v55(v132, v54);
    sub_264D817BC(v128, &qword_27FFB1860, &qword_264E267E0);
    v53 = v138;
    (*(v46 + 32))(v138, v47, v31);
  }

  v129(v53, 0, 1, v31);
  v56 = v140;
  sub_264DEB634(v53, &v140[v45]);
  sub_264D90E64(v56, v131, &qword_27FFB1D90, &unk_264E268E0);
  v57 = v143;
  v58 = v136;
  v59 = (v136 + v143[10]);
  v60 = type metadata accessor for CategoriesLegendView.Model(0);
  v61 = v59 + *(v60 + 32);
  sub_264E23BF8();
  v62 = MEMORY[0x277D84F90];
  *v59 = sub_264DEB44C(MEMORY[0x277D84F90]);
  v59[1] = sub_264DEB6A4(v62);
  v59[2] = sub_264DEB6A4(v62);
  v59[3] = 0;
  *(v59 + *(v60 + 36)) = 0;
  v63 = (v58 + v57[11]);
  v64 = sub_264DEB88C(v62);
  v65 = v63 + *(type metadata accessor for UsageChartFooterView.Model(0) + 20);
  sub_264E23BF8();
  *v63 = v64;
  v66 = (v58 + v57[12]);
  v67 = v142;
  v68 = swift_allocObject();
  v66[5] = v67;
  v66[6] = &off_2876A38A8;
  v66[2] = v68;
  v69 = v141;
  v70 = swift_allocObject();
  v66[10] = v69;
  v66[11] = &off_2876A3880;
  v66[7] = v70;
  v140 = sub_264DEB26C(v62, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  v139 = sub_264DEB26C(v62, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  sub_264DEB26C(v62, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  sub_264DEB26C(v62, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);

  v71 = v140;
  *v66 = v139;
  v66[1] = v71;
  v72 = v143;
  v73 = (v58 + v143[13]);
  v74 = swift_allocObject();
  v73[5] = v67;
  v73[6] = &off_2876A38A8;
  v73[2] = v74;
  v75 = swift_allocObject();
  v73[10] = v69;
  v73[11] = &off_2876A3880;
  v73[7] = v75;
  v76 = MEMORY[0x277D84F90];
  v77 = sub_264DEB26C(MEMORY[0x277D84F90], &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  v78 = sub_264DEB26C(v76, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  sub_264DEB26C(v76, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  sub_264DEB26C(v76, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);

  *v73 = v78;
  v73[1] = v77;
  v79 = v72[14];
  v80 = v146;
  sub_264E23BF8();
  PickupsHeaderView.Model.init(calendar:)(v80, v58 + v79);
  v81 = (v58 + v72[15]);
  v82 = v81 + *(type metadata accessor for PickupsOverviewTabView.Model(0) + 20);
  sub_264E23BF8();
  v83 = MEMORY[0x277D84F90];
  *v81 = MEMORY[0x277D84F90];
  v84 = (v58 + v72[16]);
  v85 = v84 + *(type metadata accessor for PickupsDetailTabView.Model(0) + 20);
  sub_264E23BF8();
  *v84 = v83;
  v86 = v58 + v72[17];
  sub_264E23BF8();
  v87 = *(type metadata accessor for PickupsOverviewLegendView.Model(0) + 20);
  *(v86 + v87) = sub_264DEBA74(v83);
  v88 = v58 + v72[18];
  sub_264E23BF8();
  v89 = *(type metadata accessor for PickupsDetailLegendView.Model(0) + 20);
  *(v88 + v89) = sub_264DEBC5C(v83);
  v90 = (v58 + v72[19]);
  v91 = v142;
  v92 = swift_allocObject();
  v90[4] = v91;
  v90[5] = &off_2876A38A8;
  v90[1] = v92;
  v93 = v141;
  v94 = swift_allocObject();
  v90[9] = v93;
  v90[10] = &off_2876A3880;
  v90[6] = v94;
  v95 = MEMORY[0x277D84F90];
  *v90 = sub_264DEB26C(MEMORY[0x277D84F90], &qword_27FFB2A90, &unk_264E28618, &qword_27FFB1EE0, &qword_264E26C90);
  v96 = (v58 + v72[20]);
  v97 = swift_allocObject();
  v96[4] = v91;
  v96[5] = &off_2876A38A8;
  v96[1] = v97;
  v98 = swift_allocObject();
  v96[9] = v93;
  v96[10] = &off_2876A3880;
  v96[6] = v98;
  v99 = v95;
  *v96 = sub_264DEB26C(v95, &qword_27FFB2A90, &unk_264E28618, &qword_27FFB1EE0, &qword_264E26C90);
  v100 = v72[21];
  v101 = v146;
  sub_264E23BF8();
  NotificationsHeaderView.Model.init(calendar:)(v101, v58 + v100);
  v102 = (v58 + v72[22]);
  v103 = v102 + *(type metadata accessor for NotificationsOverviewTabView.Model(0) + 20);
  sub_264E23BF8();
  *v102 = v99;
  v104 = (v58 + v72[23]);
  v105 = v104 + *(type metadata accessor for NotificationsDetailTabView.Model(0) + 20);
  sub_264E23BF8();
  *v104 = v99;
  v106 = (v58 + v72[24]);
  v107 = swift_allocObject();
  v106[4] = v91;
  v106[5] = &off_2876A38A8;
  v106[1] = v107;
  v108 = swift_allocObject();
  v106[9] = v93;
  v106[10] = &off_2876A3880;
  v106[6] = v108;
  *v106 = sub_264DEB26C(v99, &qword_27FFB2A88, &qword_264E28608, &qword_27FFB1ED0, &qword_264E28610);
  v109 = (v58 + v72[25]);
  v110 = swift_allocObject();
  v109[4] = v91;
  v109[5] = &off_2876A38A8;
  v109[1] = v110;
  v111 = swift_allocObject();
  v109[9] = v93;
  v109[10] = &off_2876A3880;
  v109[6] = v111;
  *v109 = sub_264DEB26C(v99, &qword_27FFB2A88, &qword_264E28608, &qword_27FFB1ED0, &qword_264E28610);
  v112 = v72[26];
  v113 = sub_264E238E8();
  (*(*(v113 - 8) + 56))(v58 + v112, 1, 1, v113);
  v114 = v137;
  v115 = v145;
  v116 = v134;
  v134(v58, v137, v145);
  v117 = (v58 + v72[8]);
  v118 = type metadata accessor for UsageOverviewTabView.Model(0);
  v116(v117 + *(v118 + 20), v114, v115);
  *v117 = v99;
  v119 = v146;
  v116(v146, v114, v115);
  v120 = (v58 + v72[9]);
  v121 = type metadata accessor for UsageDetailTabView.Model(0);
  v116(v120 + *(v121 + 20), v119, v115);
  v122 = *(v144 + 8);
  v122(v114, v115);
  result = (v122)(v119, v115);
  *v120 = v99;
  return result;
}

uint64_t sub_264DDE9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_264D81744(a3, v27 - v11, &qword_27FFB1E60, &qword_264E26A80);
  v13 = sub_264E25248();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_264D817BC(v12, &qword_27FFB1E60, &qword_264E26A80);
  }

  else
  {
    sub_264E25238();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_264E25208();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_264E25158() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28D0, &qword_264E28420);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_264D817BC(a3, &qword_27FFB1E60, &qword_264E26A80);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_264D817BC(a3, &qword_27FFB1E60, &qword_264E26A80);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28D0, &qword_264E28420);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_264DDECDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v49 = sub_264E23AA8();
  v53 = *(v49 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v49);
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = v47 - v6;
  MEMORY[0x28223BE20](v7);
  v52 = v47 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v47 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v47 - v13;
  MEMORY[0x28223BE20](v15);
  v54 = v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v47 - v19;
  v21 = sub_264E238E8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v47 - v27;
  sub_264E23D98();
  sub_264D81744(v55, v20, &qword_27FFB1880, &qword_264E26220);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_264D817BC(v20, &qword_27FFB1880, &qword_264E26220);
    (*(v22 + 32))(a2, v28, v21);
  }

  else
  {
    v29 = *(v22 + 32);
    v48 = v25;
    v29(v25, v20, v21);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v47[1] = sub_264DEC2DC(&qword_27FFB1BF0, MEMORY[0x277CC9578]);
    v30 = v49;
    v31 = sub_264E25048();
    v55 = a2;
    v32 = v53;
    v33 = *(v53 + 8);
    v47[0] = v33;
    v34 = (v31 & 1) == 0;
    if (v31)
    {
      v35 = v14;
    }

    else
    {
      v35 = v11;
    }

    if (v34)
    {
      v36 = v14;
    }

    else
    {
      v36 = v11;
    }

    v33(v35, v30);
    v37 = *(v32 + 32);
    v37(v54, v36, v30);
    v38 = v50;
    sub_264E23888();
    v39 = v51;
    sub_264E23888();
    v40 = sub_264E25058();
    v41 = (v40 & 1) == 0;
    if (v40)
    {
      v42 = v38;
    }

    else
    {
      v42 = v39;
    }

    if (v41)
    {
      v43 = v38;
    }

    else
    {
      v43 = v39;
    }

    (v47[0])(v42, v30);
    v44 = v55;
    v37(v52, v43, v30);
    a2 = v44;
    sub_264E23898();
    v45 = *(v22 + 8);
    v45(v48, v21);
    v45(v28, v21);
  }

  return (*(v22 + 56))(a2, 0, 1, v21);
}

uint64_t sub_264DDF17C()
{
  v0 = sub_264E23C38();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264E23AA8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModelProvider();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  _s16ScreenTimeUICore13ModelProviderVACycfC_0();
  sub_264E23A98();
  sub_264E23BF8();
  v15 = type metadata accessor for AllActivityView.Manager(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_264DED884(v14, v11, type metadata accessor for ModelProvider);
  v19 = sub_264DEA5B8(v11, v7, 4, v3, v18);
  sub_264DED9C0(v14, type metadata accessor for ModelProvider);
  return v19;
}

uint64_t AllActivityView.init(bridge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_264DDF17C;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(type metadata accessor for AllActivityView(0) + 24);
  v5 = type metadata accessor for AllActivityView.UnitTestOverrides(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + 24) = a1;
  return result;
}

uint64_t AllActivityView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AllActivityView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2748, &qword_264E280D0);
  sub_264DEBEC0();
  sub_264E24A98();
  sub_264DED884(v1, &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AllActivityView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_264DED774(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for AllActivityView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2768, &qword_264E280E8);
  v9 = (a1 + *(result + 36));
  *v9 = sub_264DEBF84;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_264DDF544@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2760, &unk_264E280D8);
  v3 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v124 = v111 - v4;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28F0, &qword_264E28450);
  v146 = *(v142 - 8);
  v5 = v146[8];
  MEMORY[0x28223BE20](v142);
  v123 = v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = v111 - v8;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28F8, &qword_264E28458);
  v145 = *(v141 - 8);
  v9 = v145[8];
  MEMORY[0x28223BE20](v141);
  v130 = v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v140 = v111 - v12;
  v13 = type metadata accessor for ActivityNavigationState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v120 = v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for MostUsedListSectionAppsAndCategories();
  v16 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v128 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v122 = v111 - v19;
  MEMORY[0x28223BE20](v20);
  v139 = v111 - v21;
  UpdatedView = type metadata accessor for LastUpdatedView();
  v22 = *(*(UpdatedView - 8) + 64);
  MEMORY[0x28223BE20](UpdatedView);
  v117 = v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2900, &qword_264E28460);
  v24 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v115 = (v111 - v25);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2908, &qword_264E28468);
  v144 = *(v138 - 8);
  v26 = v144[8];
  MEMORY[0x28223BE20](v138);
  v127 = v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v137 = v111 - v29;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  v30 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v112 = v111 - v31;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2910, &qword_264E28478);
  v32 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v132 = v111 - v33;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  v34 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v36 = v111 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = v111 - v39;
  v41 = type metadata accessor for AllActivityView.Model(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v143 = v111 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a1;
  v46 = *(a1 + 1);
  v136 = a1;
  LODWORD(a1) = *(a1 + 16);
  v47 = type metadata accessor for AllActivityView.Manager(0);
  v48 = sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  v113 = v46;
  LODWORD(v126) = a1;
  v125 = v47;
  v49 = v48;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v50 = *(v42 + 48);
  v114 = v41;
  if (v50(v40, 1, v41) == 1)
  {
    sub_264D817BC(v40, &qword_27FFB2830, &qword_264E282B0);
    sub_264E247D8();
    v51 = sub_264E24AE8();
    v53 = v52;
    *&v161 = v51;
    *(&v161 + 1) = v52;
    v55 = v54 & 1;
    LOBYTE(v162) = v54 & 1;
    *(&v162 + 1) = v56;
    sub_264E24C08();
    sub_264D817AC(v51, v53, v55);

    sub_264D81744(v36, v132, &qword_27FFB1E90, &unk_264E26F50);
    swift_storeEnumTagMultiPayload();
    sub_264D81DCC(&qword_27FFB2758, &qword_27FFB2760, &unk_264E280D8);
    sub_264D9CE9C();
    sub_264E24858();
    return sub_264D817BC(v36, &qword_27FFB1E90, &unk_264E26F50);
  }

  else
  {
    sub_264DED774(v40, v143, type metadata accessor for AllActivityView.Model);
    v111[2] = v49;
    sub_264E24458();
    swift_getKeyPath();
    v58 = v112;
    sub_264E244F8();

    swift_getKeyPath();
    sub_264E24E68();

    v59 = sub_264D817BC(v58, &qword_27FFB1F70, &qword_264E28470);
    v111[1] = v111;
    v167 = v161;
    *&v168 = v162;
    *(&v168 + 1) = nullsub_1;
    v169 = 0u;
    v170 = 0u;
    *&v171 = 0;
    *(&v171 + 1) = nullsub_1;
    v172 = 0;
    MEMORY[0x28223BE20](v59);
    v60 = sub_264E24778();
    v61 = v115;
    *v115 = v60;
    v61[1] = 0;
    *(v61 + 16) = 1;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2918, &qword_264E284A0);
    sub_264DE1B40(v61 + *(v62 + 44));
    v63 = v117;
    sub_264E23A98();
    v64 = sub_264E23AA8();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2920, &qword_264E284A8);
    v112 = MEMORY[0x277CE1138];
    sub_264D81DCC(&qword_27FFB2928, &qword_27FFB2900, &qword_264E28460);
    v119 = MEMORY[0x277CE14C0];
    sub_264D81DCC(&qword_27FFB2930, &qword_27FFB2920, &qword_264E284A8);
    sub_264DEC2DC(&qword_27FFB2938, type metadata accessor for LastUpdatedView);
    sub_264E24F28();
    sub_264E24448();
    swift_getKeyPath();
    swift_getKeyPath();
    v65 = v120;
    sub_264E24338();

    v66 = *v65;
    sub_264DED9C0(v65, type metadata accessor for ActivityNavigationState);
    v67 = 52;
    if (v66 == 1)
    {
      v67 = 48;
    }

    sub_264DEE7E4(v143 + *(v114 + v67), &v161);
    sub_264E24448();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264E24338();

    v69 = v121;
    v68 = v122;
    sub_264D91F38(&v122[*(v121 + 20)]);
    sub_264DED9C0(v65, type metadata accessor for ActivityNavigationState);
    v70 = v164;
    v68[2] = v163;
    v68[3] = v70;
    v71 = v166;
    v68[4] = v165;
    v68[5] = v71;
    v72 = v162;
    *v68 = v161;
    v68[1] = v72;
    v73 = v68 + *(v69 + 24);
    LOBYTE(v153[0]) = 0;
    sub_264E24D78();
    v74 = *(&v155 + 1);
    *v73 = v155;
    *(v73 + 1) = v74;
    v75 = sub_264DED774(v68, v139, type metadata accessor for MostUsedListSectionAppsAndCategories);
    v126 = v111;
    MEMORY[0x28223BE20](v75);
    v76 = sub_264E24778();
    sub_264E247D8();
    v77 = objc_opt_self();
    v78 = [v77 bundle];
    v79 = sub_264E24AE8();
    v155 = v76;
    LOBYTE(v156) = 1;
    *(&v156 + 1) = v79;
    *&v157 = v80;
    BYTE8(v157) = v81 & 1;
    *&v158 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2940, &qword_264E284B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2948, &qword_264E284B8);
    sub_264D81DCC(&qword_27FFB2950, &qword_27FFB2940, &qword_264E284B0);
    sub_264D81DCC(&qword_27FFB2958, &qword_27FFB2948, &qword_264E284B8);
    v83 = sub_264E24F18();
    v126 = v111;
    MEMORY[0x28223BE20](v83);
    v84 = sub_264E24778();
    sub_264E247D8();
    v85 = [v77 bundle];
    v86 = sub_264E24AE8();
    v155 = v84;
    LOBYTE(v156) = 1;
    *(&v156 + 1) = v86;
    *&v157 = v87;
    BYTE8(v157) = v88 & 1;
    *&v158 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2960, &qword_264E284C0);
    sub_264D81DCC(&qword_27FFB2968, &qword_27FFB2960, &qword_264E284C0);
    v90 = v133;
    sub_264E24F18();
    v91 = v127;
    v149 = v169;
    v150 = v170;
    v151 = v171;
    v152 = v172;
    v147 = v167;
    v148 = v168;
    v92 = v144[2];
    v92(v127, v137, v138);
    v136 = type metadata accessor for MostUsedListSectionAppsAndCategories;
    v93 = v128;
    sub_264DED884(v139, v128, type metadata accessor for MostUsedListSectionAppsAndCategories);
    v126 = v145[2];
    v126(v130, v140, v141);
    v125 = v146[2];
    v94 = v123;
    v125(v123, v90, v142);
    v95 = v150;
    v153[2] = v149;
    v153[3] = v150;
    v96 = v151;
    v153[4] = v151;
    v97 = v152;
    v154 = v152;
    v98 = v147;
    v99 = v148;
    v153[0] = v147;
    v153[1] = v148;
    v100 = v124;
    *(v124 + 2) = v149;
    *(v100 + 48) = v95;
    *(v100 + 64) = v96;
    *(v100 + 80) = v97;
    *v100 = v98;
    *(v100 + 16) = v99;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2970, &qword_264E284C8);
    v102 = v91;
    v103 = v138;
    v92((v100 + v101[12]), v102, v138);
    sub_264DED884(v93, v100 + v101[16], v136);
    v104 = v130;
    v105 = v141;
    v126((v100 + v101[20]), v130, v141);
    v106 = v100 + v101[24];
    v107 = v142;
    v125(v106, v94, v142);
    sub_264D81744(&v167, &v155, &qword_27FFB2978, &qword_264E284D0);
    sub_264D81744(v153, &v155, &qword_27FFB2978, &qword_264E284D0);
    v108 = v146[1];
    ++v146;
    v136 = v108;
    (v108)(v94, v107);
    v109 = v145[1];
    ++v145;
    v109(v104, v105);
    sub_264DED9C0(v128, type metadata accessor for MostUsedListSectionAppsAndCategories);
    v110 = v144[1];
    ++v144;
    v110(v127, v103);
    v157 = v149;
    v158 = v150;
    v159 = v151;
    v160 = v152;
    v155 = v147;
    v156 = v148;
    sub_264D817BC(&v155, &qword_27FFB2978, &qword_264E284D0);
    sub_264D81744(v100, v132, &qword_27FFB2760, &unk_264E280D8);
    swift_storeEnumTagMultiPayload();
    sub_264D81DCC(&qword_27FFB2758, &qword_27FFB2760, &unk_264E280D8);
    sub_264D9CE9C();
    sub_264E24858();
    sub_264D817BC(&v167, &qword_27FFB2978, &qword_264E284D0);
    sub_264D817BC(v100, &qword_27FFB2760, &unk_264E280D8);
    (v136)(v133, v142);
    v109(v140, v141);
    sub_264DED9C0(v139, type metadata accessor for MostUsedListSectionAppsAndCategories);
    v110(v137, v138);
    return sub_264DED9C0(v143, type metadata accessor for AllActivityView.Model);
  }
}

uint64_t sub_264DE08B4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ActivityNavigationState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_264DED884(a1, &v13 - v9, type metadata accessor for ActivityNavigationState);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264DED884(v10, v7, type metadata accessor for ActivityNavigationState);

  sub_264E24348();
  return sub_264DED9C0(v10, type metadata accessor for ActivityNavigationState);
}

uint64_t sub_264DE09E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = type metadata accessor for ActivityNavigationState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v38 - v9);
  v11 = type metadata accessor for UsageChartFooterView(0);
  v12 = *(v11 - 8);
  v41 = v11 - 8;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v42 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v38 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A50, &qword_264E285C8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v39 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  *v23 = sub_264E24828();
  *(v23 + 1) = 0x4024000000000000;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A58, &qword_264E285D0);
  sub_264DE0E30(a1, a2, &v23[*(v24 + 44)]);
  v25 = type metadata accessor for AllActivityView.Model(0);
  sub_264DED884(a1 + *(v25 + 44), v17, type metadata accessor for UsageChartFooterView.Model);
  v26 = *a2;
  v27 = *(a2 + 8);
  v28 = *(a2 + 16);
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v29 = *v10;
  sub_264DED9C0(v10, type metadata accessor for ActivityNavigationState);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v40;
  sub_264E24338();

  v31 = v41;
  v32 = v38;
  sub_264D91F38(&v38[*(v41 + 32)]);
  sub_264DED9C0(v30, type metadata accessor for ActivityNavigationState);
  *(v32 + *(v31 + 28)) = v29;
  v33 = v39;
  sub_264D81744(v23, v39, &qword_27FFB2A50, &qword_264E285C8);
  v34 = v42;
  sub_264DED884(v32, v42, type metadata accessor for UsageChartFooterView);
  v35 = v43;
  sub_264D81744(v33, v43, &qword_27FFB2A50, &qword_264E285C8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A60, &qword_264E285D8);
  sub_264DED884(v34, v35 + *(v36 + 48), type metadata accessor for UsageChartFooterView);
  sub_264DED9C0(v32, type metadata accessor for UsageChartFooterView);
  sub_264D817BC(v23, &qword_27FFB2A50, &qword_264E285C8);
  sub_264DED9C0(v34, type metadata accessor for UsageChartFooterView);
  return sub_264D817BC(v33, &qword_27FFB2A50, &qword_264E285C8);
}

uint64_t sub_264DE0E30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a1;
  v100 = a3;
  v97 = type metadata accessor for CategoriesLegendView(0);
  v5 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v101 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v82 - v8;
  v83 = type metadata accessor for UsageDetailTabView(0);
  v9 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v86 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A68, &qword_264E285E0);
  v94 = *(v93 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A70, &qword_264E285E8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v98 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v109 = &v82 - v19;
  v20 = type metadata accessor for UsageOverviewTabView(0);
  v21 = *(v20 - 8);
  v91 = v20 - 8;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v90 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A78, &qword_264E285F0);
  v25 = *(v24 - 8);
  v102 = v24 - 8;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v96 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v92 = &v82 - v29;
  MEMORY[0x28223BE20](v30);
  v110 = &v82 - v31;
  v32 = type metadata accessor for ActivityNavigationState(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v104 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v103 = &v82 - v36;
  v37 = type metadata accessor for UsageHeaderView(0);
  v38 = (v37 - 8);
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v95 = &v82 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v82 - v42;
  v107 = type metadata accessor for AllActivityView.Model(0);
  sub_264DED884(a1 + v107[7], v43, type metadata accessor for UsageHeaderView.Model);
  v44 = a2[1];
  v87 = *a2;
  v45 = *(a2 + 16);
  type metadata accessor for AllActivityView.Manager(0);
  v46 = sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  v106 = v44;
  v105 = v45;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v103;
  sub_264E24338();

  v88 = *v47;
  v89 = type metadata accessor for ActivityNavigationState;
  sub_264DED9C0(v47, type metadata accessor for ActivityNavigationState);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v104;
  sub_264E24338();

  sub_264D91F38(&v43[v38[8]]);
  sub_264DED9C0(v48, type metadata accessor for ActivityNavigationState);
  *&v43[v38[7]] = v88;
  v49 = v38[9];
  v104 = v43;
  *&v43[v49] = 0;
  v50 = v90;
  sub_264DED884(v108 + v107[8], v90, type metadata accessor for UsageOverviewTabView.Model);
  sub_264E24458();
  swift_getKeyPath();
  v51 = v50 + *(v91 + 28);
  sub_264E244F8();

  sub_264E24F58();
  v52 = 1;
  sub_264E24588();
  v53 = v50;
  v54 = v92;
  sub_264DED774(v53, v92, type metadata accessor for UsageOverviewTabView);
  v55 = (v54 + *(v102 + 44));
  v56 = v116;
  v55[4] = v115;
  v55[5] = v56;
  v55[6] = v117;
  v57 = v112;
  *v55 = v111;
  v55[1] = v57;
  v58 = v114;
  v55[2] = v113;
  v55[3] = v58;
  sub_264D90E64(v54, v110, &qword_27FFB2A78, &qword_264E285F0);
  v102 = v46;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v103;
  sub_264E24338();

  v60 = v59;

  v61 = v93;

  v62 = *v59;
  sub_264DED9C0(v59, v89);
  if (!v62)
  {
    v63 = v86;
    sub_264DED884(v108 + v107[9], v86, type metadata accessor for UsageDetailTabView.Model);
    sub_264E24458();
    swift_getKeyPath();
    v64 = v63 + *(v83 + 20);
    sub_264E244F8();

    sub_264E24F58();
    sub_264E24588();
    v65 = v63;
    v66 = v85;
    sub_264DED774(v65, v85, type metadata accessor for UsageDetailTabView);
    v67 = (v66 + *(v61 + 36));
    v68 = v123;
    v67[4] = v122;
    v67[5] = v68;
    v67[6] = v124;
    v69 = v119;
    *v67 = v118;
    v67[1] = v69;
    v70 = v121;
    v67[2] = v120;
    v67[3] = v70;
    v71 = v66;
    v72 = v84;
    sub_264D90E64(v71, v84, &qword_27FFB2A68, &qword_264E285E0);
    sub_264D90E64(v72, v109, &qword_27FFB2A68, &qword_264E285E0);
    v52 = 0;
  }

  v73 = v109;
  (*(v94 + 56))(v109, v52, 1, v61);
  v74 = v99;
  sub_264DED884(v108 + v107[10], v99, type metadata accessor for CategoriesLegendView.Model);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  sub_264D91F38(v74 + *(v97 + 20));
  sub_264DED9C0(v60, type metadata accessor for ActivityNavigationState);
  v75 = v95;
  sub_264DED884(v104, v95, type metadata accessor for UsageHeaderView);
  v76 = v96;
  sub_264D81744(v110, v96, &qword_27FFB2A78, &qword_264E285F0);
  v77 = v98;
  sub_264D81744(v73, v98, &qword_27FFB2A70, &qword_264E285E8);
  v78 = v101;
  sub_264DED884(v74, v101, type metadata accessor for CategoriesLegendView);
  v79 = v100;
  sub_264DED884(v75, v100, type metadata accessor for UsageHeaderView);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A80, &qword_264E285F8);
  sub_264D81744(v76, v79 + v80[12], &qword_27FFB2A78, &qword_264E285F0);
  sub_264D81744(v77, v79 + v80[16], &qword_27FFB2A70, &qword_264E285E8);
  sub_264DED884(v78, v79 + v80[20], type metadata accessor for CategoriesLegendView);
  sub_264DED9C0(v74, type metadata accessor for CategoriesLegendView);
  sub_264D817BC(v109, &qword_27FFB2A70, &qword_264E285E8);
  sub_264D817BC(v110, &qword_27FFB2A78, &qword_264E285F0);
  sub_264DED9C0(v104, type metadata accessor for UsageHeaderView);
  sub_264DED9C0(v78, type metadata accessor for CategoriesLegendView);
  sub_264D817BC(v77, &qword_27FFB2A70, &qword_264E285E8);
  sub_264D817BC(v76, &qword_27FFB2A78, &qword_264E285F0);
  return sub_264DED9C0(v75, type metadata accessor for UsageHeaderView);
}

uint64_t sub_264DE1B40@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A08, &qword_264E28550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  sub_264E247D8();
  v9 = [objc_opt_self() bundle];
  v10 = sub_264E24AE8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_264DE1D54(v8);
  sub_264D81744(v8, v5, &qword_27FFB2A08, &qword_264E28550);
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A10, &qword_264E28558);
  sub_264D81744(v5, a1 + *(v17 + 64), &qword_27FFB2A08, &qword_264E28550);
  sub_264D80F20(v10, v12, v14 & 1);

  sub_264D817BC(v8, &qword_27FFB2A08, &qword_264E28550);
  sub_264D817BC(v5, &qword_27FFB2A08, &qword_264E28550);
  sub_264D817AC(v10, v12, v14 & 1);
}

uint64_t sub_264DE1D54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A18, &qword_264E28560);
  v3 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = &v52 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A20, &qword_264E28568);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v54 = &v52 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A28, &qword_264E28570);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A30, &qword_264E28578);
  v9 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A38, &unk_264E28580);
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v11);
  v63 = &v52 - v13;
  v14 = sub_264E23AA8();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_264E238E8();
  v67 = *(v18 - 8);
  v68 = v18;
  v19 = *(v67 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ActivityNavigationState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v62 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - v26;
  v28 = type metadata accessor for AllActivityView(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  sub_264DED884(v2, &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AllActivityView);
  v31 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v32 = swift_allocObject();
  sub_264DED774(&v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for AllActivityView);
  v33 = *v2;
  v34 = *(v2 + 8);
  v35 = *(v2 + 16);
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  v60 = v34;
  v61 = v33;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  sub_264D922CC(v21);
  sub_264DED9C0(v27, type metadata accessor for ActivityNavigationState);
  sub_264E23A98();
  LOBYTE(v33) = sub_264E238C8();
  (*(v69 + 8))(v17, v70);
  (*(v67 + 8))(v21, v68);
  if ((v33 & 1) == 0)
  {
    sub_264E24448();
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v62;
    sub_264E24338();

    v41 = *v40;
    sub_264DED9C0(v40, type metadata accessor for ActivityNavigationState);
    if (v41 == 1)
    {

      v43 = v55;
      sub_264E24DD8();
      v48 = sub_264E24A78();
      KeyPath = swift_getKeyPath();
      v50 = (v43 + *(v52 + 36));
      *v50 = KeyPath;
      v50[1] = v48;
      sub_264D81744(v43, v54, &qword_27FFB2A30, &qword_264E28578);
      swift_storeEnumTagMultiPayload();
      sub_264DEE9A4();
      v47 = v56;
      sub_264E24858();
      sub_264D81744(v47, v59, &qword_27FFB2A28, &qword_264E28570);
      swift_storeEnumTagMultiPayload();
      sub_264DEE920();
      v42 = v63;
    }

    else
    {
      v42 = v63;
      if (v41)
      {
        swift_storeEnumTagMultiPayload();
        sub_264DEE920();
        sub_264E24858();

        goto LABEL_9;
      }

      v43 = v55;
      sub_264E24DD8();
      v44 = sub_264E24A78();
      v45 = swift_getKeyPath();
      v46 = (v43 + *(v52 + 36));
      *v46 = v45;
      v46[1] = v44;
      sub_264D81744(v43, v54, &qword_27FFB2A30, &qword_264E28578);
      swift_storeEnumTagMultiPayload();
      sub_264DEE9A4();
      v47 = v56;
      sub_264E24858();
      sub_264D81744(v47, v59, &qword_27FFB2A28, &qword_264E28570);
      swift_storeEnumTagMultiPayload();
      sub_264DEE920();
    }

    sub_264E24858();

    sub_264D817BC(v47, &qword_27FFB2A28, &qword_264E28570);
    sub_264D817BC(v43, &qword_27FFB2A30, &qword_264E28578);
LABEL_9:
    v38 = v65;
    v37 = v66;
    v39 = v64;
    sub_264D90E64(v42, v66, &qword_27FFB2A38, &unk_264E28580);
    v36 = 0;
    return (*(v39 + 56))(v37, v36, 1, v38);
  }

  v36 = 1;
  v38 = v65;
  v37 = v66;
  v39 = v64;
  return (*(v39 + 56))(v37, v36, 1, v38);
}

uint64_t sub_264DE268C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v44 = a3;
  v5 = type metadata accessor for ActivityNavigationState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MostUsedListSectionPickups();
  v10 = *(v9 - 8);
  v41 = v9 - 8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v16);
  v42 = &v38 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29A8, &qword_264E28500);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v40 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  *v23 = sub_264E24828();
  *(v23 + 1) = 0x4024000000000000;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29B0, &qword_264E28508);
  sub_264DE2B14(a1, a2, &v23[*(v24 + 44)]);
  v25 = *a2;
  v38 = *(a2 + 8);
  v26 = *(a2 + 16);
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v27 = *v8;
  sub_264DED9C0(v8, type metadata accessor for ActivityNavigationState);
  v28 = type metadata accessor for AllActivityView.Model(0);
  v29 = 80;
  if (v27 == 1)
  {
    v29 = 76;
  }

  sub_264DEE8AC(v39 + *(v28 + v29), v45);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  sub_264D91F38(&v15[*(v41 + 28)]);
  sub_264DED9C0(v8, type metadata accessor for ActivityNavigationState);
  v30 = v45[3];
  *(v15 + 2) = v45[2];
  *(v15 + 3) = v30;
  *(v15 + 4) = v45[4];
  *(v15 + 10) = v46;
  v31 = v45[1];
  *v15 = v45[0];
  *(v15 + 1) = v31;
  v32 = v42;
  sub_264DED774(v15, v42, type metadata accessor for MostUsedListSectionPickups);
  v33 = v40;
  sub_264D81744(v23, v40, &qword_27FFB29A8, &qword_264E28500);
  v34 = v43;
  sub_264DED884(v32, v43, type metadata accessor for MostUsedListSectionPickups);
  v35 = v44;
  sub_264D81744(v33, v44, &qword_27FFB29A8, &qword_264E28500);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29B8, &qword_264E28510);
  sub_264DED884(v34, v35 + *(v36 + 48), type metadata accessor for MostUsedListSectionPickups);
  sub_264DED9C0(v32, type metadata accessor for MostUsedListSectionPickups);
  sub_264D817BC(v23, &qword_27FFB29A8, &qword_264E28500);
  sub_264DED9C0(v34, type metadata accessor for MostUsedListSectionPickups);
  return sub_264D817BC(v33, &qword_27FFB29A8, &qword_264E28500);
}

uint64_t sub_264DE2B14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v175 = a1;
  v152 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v127 - v7;
  v8 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v169 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for PickupsOverviewLegendView(0);
  v11 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v170 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v140 = &v127 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29C0, &qword_264E28518);
  v15 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v148 = &v127 - v16;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29C8, &qword_264E28520);
  v17 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v139 = &v127 - v18;
  v166 = sub_264E23AA8();
  v165 = *(v166 - 8);
  v19 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_264E238E8();
  v143 = *(v144 - 8);
  v21 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v168 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v135 = &v127 - v24;
  v25 = type metadata accessor for PickupsDetailLegendView.Model(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v134 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for PickupsDetailLegendView(0);
  v28 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v136 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v138 = &v127 - v31;
  v128 = type metadata accessor for PickupsDetailTabView(0);
  v32 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v131 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29D0, &qword_264E28528);
  v34 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v133 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v130 = &v127 - v37;
  MEMORY[0x28223BE20](v38);
  v137 = &v127 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29D8, &qword_264E28530);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v151 = &v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v145 = &v127 - v44;
  v45 = type metadata accessor for PickupsOverviewTabView(0);
  v46 = *(v45 - 8);
  v161 = v45 - 8;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v160 = &v127 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29E0, &qword_264E28538);
  v50 = *(v49 - 8);
  v163 = v49 - 8;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v150 = &v127 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v162 = &v127 - v54;
  MEMORY[0x28223BE20](v55);
  v173 = &v127 - v56;
  v57 = type metadata accessor for ActivityNavigationState(0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v141 = &v127 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v158 = &v127 - v61;
  MEMORY[0x28223BE20](v62);
  v64 = (&v127 - v63);
  v65 = type metadata accessor for PickupsHeaderView(0);
  v66 = (v65 - 8);
  v67 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v149 = &v127 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v71 = &v127 - v70;
  v174 = type metadata accessor for AllActivityView.Model(0);
  sub_264DED884(v4 + v174[14], v71, type metadata accessor for PickupsHeaderView.Model);
  v72 = *a2;
  v73 = a2[1];
  LODWORD(v4) = *(a2 + 16);
  v74 = type metadata accessor for AllActivityView.Manager(0);
  v153 = sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  v157 = v72;
  v171 = v73;
  v156 = v4;
  v155 = v74;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v172 = v64;
  v154 = *v64;
  v159 = type metadata accessor for ActivityNavigationState;
  sub_264DED9C0(v64, type metadata accessor for ActivityNavigationState);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v75 = v158;
  sub_264E24338();

  sub_264D91F38(&v71[v66[8]]);
  sub_264DED9C0(v75, type metadata accessor for ActivityNavigationState);
  *&v71[v66[7]] = v154;
  v76 = v66[9];
  v158 = v71;
  *&v71[v76] = 0;
  v77 = v160;
  sub_264DED884(v175 + v174[15], v160, type metadata accessor for PickupsOverviewTabView.Model);
  sub_264E24458();
  swift_getKeyPath();
  v78 = v77 + *(v161 + 28);
  sub_264E244F8();

  sub_264E24F58();
  sub_264E24588();
  v79 = v162;
  sub_264DED774(v77, v162, type metadata accessor for PickupsOverviewTabView);
  v80 = (v79 + *(v163 + 44));
  v81 = v181;
  v80[4] = v180;
  v80[5] = v81;
  v80[6] = v182;
  v82 = v177;
  *v80 = v176;
  v80[1] = v82;
  v83 = v179;
  v80[2] = v178;
  v80[3] = v83;
  sub_264D90E64(v79, v173, &qword_27FFB29E0, &qword_264E28538);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v172;
  sub_264E24338();

  v85 = *v84;
  sub_264DED9C0(v84, v159);
  if (!v85)
  {
    v100 = v131;
    sub_264DED884(v175 + v174[16], v131, type metadata accessor for PickupsDetailTabView.Model);
    sub_264E24458();
    swift_getKeyPath();
    v101 = v100 + *(v128 + 20);
    sub_264E244F8();

    sub_264E24F58();
    sub_264E24588();
    v102 = v130;
    sub_264DED774(v100, v130, type metadata accessor for PickupsDetailTabView);
    v103 = (v102 + *(v129 + 36));
    v104 = v188;
    v103[4] = v187;
    v103[5] = v104;
    v103[6] = v189;
    v105 = v184;
    *v103 = v183;
    v103[1] = v105;
    v106 = v186;
    v103[2] = v185;
    v103[3] = v106;
    v107 = v137;
    sub_264D90E64(v102, v137, &qword_27FFB29D0, &qword_264E28528);
    v108 = v134;
    sub_264DED884(v175 + v174[18], v134, type metadata accessor for PickupsDetailLegendView.Model);
    sub_264E24448();
    swift_getKeyPath();
    swift_getKeyPath();
    v109 = v172;
    sub_264E24338();

    v110 = v135;
    sub_264D91F38(v135);
    sub_264DED9C0(v109, type metadata accessor for ActivityNavigationState);
    v111 = v132;
    v112 = v138;
    v113 = &v138[*(v132 + 24)];
    *v113 = 0;
    *(v113 + 1) = 0;
    *(v113 + 2) = 0;
    sub_264DED884(v108, v112, type metadata accessor for PickupsDetailLegendView.Model);
    v114 = v164;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v115 = v112 + *(v111 + 20);
    sub_264E23AF8();
    (*(v165 + 8))(v114, v166);
    (*(v143 + 8))(v110, v144);
    sub_264DED9C0(v108, type metadata accessor for PickupsDetailLegendView.Model);
    v116 = v133;
    sub_264D81744(v107, v133, &qword_27FFB29D0, &qword_264E28528);
    v117 = v136;
    sub_264DED884(v112, v136, type metadata accessor for PickupsDetailLegendView);
    v118 = v139;
    sub_264D81744(v116, v139, &qword_27FFB29D0, &qword_264E28528);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A00, &qword_264E28548);
    sub_264DED884(v117, v118 + *(v119 + 48), type metadata accessor for PickupsDetailLegendView);
    sub_264DED9C0(v117, type metadata accessor for PickupsDetailLegendView);
    sub_264D817BC(v116, &qword_27FFB29D0, &qword_264E28528);
    sub_264D81744(v118, v148, &qword_27FFB29C8, &qword_264E28520);
    swift_storeEnumTagMultiPayload();
    sub_264D81DCC(&qword_27FFB29E8, &qword_27FFB29C8, &qword_264E28520);
    sub_264DEC2DC(&qword_27FFB29F0, type metadata accessor for PickupsOverviewLegendView);
    v99 = v145;
    sub_264E24858();
    sub_264D817BC(v118, &qword_27FFB29C8, &qword_264E28520);
    sub_264DED9C0(v112, type metadata accessor for PickupsDetailLegendView);
    sub_264D817BC(v107, &qword_27FFB29D0, &qword_264E28528);
    goto LABEL_5;
  }

  v86 = v167;
  v87 = v169;
  sub_264DED884(v175 + v174[17], v169, type metadata accessor for PickupsOverviewLegendView.Model);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v88 = v141;
  sub_264E24338();

  sub_264D91F38(v168);
  sub_264DED9C0(v88, type metadata accessor for ActivityNavigationState);
  sub_264DED884(v87, v170, type metadata accessor for PickupsOverviewLegendView.Model);
  v89 = v164;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v90 = v142;
  Calendar.startOfWeek(containing:)(v89, v142);
  v91 = v165;
  v92 = v166;
  (*(v165 + 8))(v89, v166);
  result = (*(v91 + 48))(v90, 1, v92);
  if (result != 1)
  {
    v94 = v86;
    v95 = *(v86 + 24);
    v96 = v170;
    v97 = (v170 + v95);
    (*(v143 + 8))(v168, v144);
    sub_264DED9C0(v169, type metadata accessor for PickupsOverviewLegendView.Model);
    (*(v91 + 32))(v96 + *(v94 + 20), v90, v92);
    v97[1] = 0;
    v97[2] = 0;
    *v97 = 0;
    v98 = v140;
    sub_264DED774(v96, v140, type metadata accessor for PickupsOverviewLegendView);
    sub_264DED884(v98, v148, type metadata accessor for PickupsOverviewLegendView);
    swift_storeEnumTagMultiPayload();
    sub_264D81DCC(&qword_27FFB29E8, &qword_27FFB29C8, &qword_264E28520);
    sub_264DEC2DC(&qword_27FFB29F0, type metadata accessor for PickupsOverviewLegendView);
    v99 = v145;
    sub_264E24858();
    sub_264DED9C0(v98, type metadata accessor for PickupsOverviewLegendView);
LABEL_5:
    v120 = v158;
    v121 = v149;
    sub_264DED884(v158, v149, type metadata accessor for PickupsHeaderView);
    v122 = v173;
    v123 = v150;
    sub_264D81744(v173, v150, &qword_27FFB29E0, &qword_264E28538);
    v124 = v151;
    sub_264D81744(v99, v151, &qword_27FFB29D8, &qword_264E28530);
    v125 = v152;
    sub_264DED884(v121, v152, type metadata accessor for PickupsHeaderView);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29F8, &qword_264E28540);
    sub_264D81744(v123, v125 + *(v126 + 48), &qword_27FFB29E0, &qword_264E28538);
    sub_264D81744(v124, v125 + *(v126 + 64), &qword_27FFB29D8, &qword_264E28530);
    sub_264D817BC(v99, &qword_27FFB29D8, &qword_264E28530);
    sub_264D817BC(v122, &qword_27FFB29E0, &qword_264E28538);
    sub_264DED9C0(v120, type metadata accessor for PickupsHeaderView);
    sub_264D817BC(v124, &qword_27FFB29D8, &qword_264E28530);
    sub_264D817BC(v123, &qword_27FFB29E0, &qword_264E28538);
    return sub_264DED9C0(v121, type metadata accessor for PickupsHeaderView);
  }

  __break(1u);
  return result;
}

uint64_t sub_264DE4074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_264E24828();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2980, &qword_264E284D8);
  return sub_264DE40DC(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_264DE40DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a1;
  v111 = a3;
  v107 = type metadata accessor for MostUsedListSectionNotifications();
  v5 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v112 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = &v93 - v8;
  MEMORY[0x28223BE20](v9);
  v110 = &v93 - v10;
  v94 = type metadata accessor for NotificationsDetailTabView(0);
  v11 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v97 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2988, &qword_264E284E0);
  v14 = *(v13 - 8);
  v104 = v13;
  v105 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v96 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2990, &qword_264E284E8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v109 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v124 = &v93 - v23;
  v24 = type metadata accessor for NotificationsOverviewTabView(0);
  v25 = *(v24 - 8);
  v101 = v24 - 8;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v100 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2998, &qword_264E284F0);
  v29 = *(v28 - 8);
  v103 = v28 - 8;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v106 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v102 = &v93 - v33;
  MEMORY[0x28223BE20](v34);
  v116 = &v93 - v35;
  v36 = type metadata accessor for ActivityNavigationState(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v114 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = (&v93 - v40);
  v42 = type metadata accessor for NotificationsHeaderView(0);
  v43 = (v42 - 8);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v115 = &v93 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v93 - v47;
  v120 = type metadata accessor for AllActivityView.Model(0);
  sub_264DED884(a1 + v120[21], v48, type metadata accessor for NotificationsHeaderView.Model);
  v49 = *a2;
  v50 = a2[1];
  v121 = *(a2 + 16);
  v51 = type metadata accessor for AllActivityView.Manager(0);
  v52 = sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  v117 = v49;
  v118 = v52;
  v122 = v50;
  v119 = v51;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v113 = v41;
  v98 = *v41;
  v99 = type metadata accessor for ActivityNavigationState;
  sub_264DED9C0(v41, type metadata accessor for ActivityNavigationState);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v114;
  sub_264E24338();

  sub_264D91F38(&v48[v43[8]]);
  sub_264DED9C0(v53, type metadata accessor for ActivityNavigationState);
  *&v48[v43[7]] = v98;
  v54 = v43[9];
  v114 = v48;
  *&v48[v54] = 0;
  v55 = v100;
  sub_264DED884(v123 + v120[22], v100, type metadata accessor for NotificationsOverviewTabView.Model);
  sub_264E24458();
  swift_getKeyPath();
  v56 = v55 + *(v101 + 28);
  sub_264E244F8();

  sub_264E24F58();
  v57 = 1;
  sub_264E24588();
  v58 = v102;
  sub_264DED774(v55, v102, type metadata accessor for NotificationsOverviewTabView);
  v59 = (v58 + *(v103 + 44));
  v60 = v130;
  v61 = v132;
  v62 = v133;
  v59[4] = v131;
  v59[5] = v61;
  v59[6] = v62;
  v63 = v128;
  *v59 = v127;
  v59[1] = v63;
  v59[2] = v129;
  v59[3] = v60;
  sub_264D90E64(v58, v116, &qword_27FFB2998, &qword_264E284F0);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v113;
  sub_264E24338();

  v65 = v104;

  v66 = *v64;
  sub_264DED9C0(v64, v99);
  if (!v66)
  {
    v67 = v97;
    sub_264DED884(v123 + v120[23], v97, type metadata accessor for NotificationsDetailTabView.Model);
    sub_264E24458();
    swift_getKeyPath();
    v68 = v67 + *(v94 + 20);
    sub_264E244F8();

    sub_264E24F58();
    sub_264E24588();
    v69 = v96;
    sub_264DED774(v67, v96, type metadata accessor for NotificationsDetailTabView);
    v70 = (v69 + *(v65 + 36));
    v71 = v139;
    v70[4] = v138;
    v70[5] = v71;
    v70[6] = v140;
    v72 = v135;
    *v70 = v134;
    v70[1] = v72;
    v73 = v137;
    v70[2] = v136;
    v70[3] = v73;
    v74 = v69;
    v75 = v95;
    sub_264D90E64(v74, v95, &qword_27FFB2988, &qword_264E284E0);
    sub_264D90E64(v75, v124, &qword_27FFB2988, &qword_264E284E0);
    v57 = 0;
  }

  (*(v105 + 56))(v124, v57, 1, v65);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = v113;
  sub_264E24338();

  v77 = *v76;
  sub_264DED9C0(v76, type metadata accessor for ActivityNavigationState);
  v78 = 25;
  if (v77 == 1)
  {
    v78 = 24;
  }

  sub_264DEE850(v123 + v120[v78], v125);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v79 = v108;
  sub_264D91F38(&v108[*(v107 + 20)]);
  sub_264DED9C0(v76, type metadata accessor for ActivityNavigationState);
  v80 = v125[3];
  *(v79 + 32) = v125[2];
  *(v79 + 48) = v80;
  *(v79 + 64) = v125[4];
  *(v79 + 80) = v126;
  v81 = v125[1];
  *v79 = v125[0];
  *(v79 + 16) = v81;
  v82 = v110;
  sub_264DED774(v79, v110, type metadata accessor for MostUsedListSectionNotifications);
  v83 = v115;
  sub_264DED884(v114, v115, type metadata accessor for NotificationsHeaderView);
  v84 = v116;
  v85 = v106;
  sub_264D81744(v116, v106, &qword_27FFB2998, &qword_264E284F0);
  v86 = v124;
  v87 = v109;
  sub_264D81744(v124, v109, &qword_27FFB2990, &qword_264E284E8);
  v88 = v112;
  sub_264DED884(v82, v112, type metadata accessor for MostUsedListSectionNotifications);
  v89 = v83;
  v90 = v111;
  sub_264DED884(v89, v111, type metadata accessor for NotificationsHeaderView);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29A0, &qword_264E284F8);
  sub_264D81744(v85, v90 + v91[12], &qword_27FFB2998, &qword_264E284F0);
  sub_264D81744(v87, v90 + v91[16], &qword_27FFB2990, &qword_264E284E8);
  sub_264DED884(v88, v90 + v91[20], type metadata accessor for MostUsedListSectionNotifications);
  sub_264DED9C0(v82, type metadata accessor for MostUsedListSectionNotifications);
  sub_264D817BC(v86, &qword_27FFB2990, &qword_264E284E8);
  sub_264D817BC(v84, &qword_27FFB2998, &qword_264E284F0);
  sub_264DED9C0(v114, type metadata accessor for NotificationsHeaderView);
  sub_264DED9C0(v88, type metadata accessor for MostUsedListSectionNotifications);
  sub_264D817BC(v87, &qword_27FFB2990, &qword_264E284E8);
  sub_264D817BC(v85, &qword_27FFB2998, &qword_264E284F0);
  return sub_264DED9C0(v115, type metadata accessor for NotificationsHeaderView);
}

uint64_t sub_264DE4D80(uint64_t *a1)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DE4ED8();
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  sub_264E24448();
  v10 = a1[3];
  sub_264E23A98();
  sub_264DE64B0(v10, v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264DE4ED8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2790, qword_264E281D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for AllActivityView.UnitTestOverrides(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AllActivityView(0);
  sub_264D81744(v0 + *(v10 + 24), v4, &qword_27FFB2790, qword_264E281D0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_264D817BC(v4, &qword_27FFB2790, qword_264E281D0);
  }

  sub_264DED774(v4, v9, type metadata accessor for AllActivityView.UnitTestOverrides);
  v12 = *v0;
  v13 = v0[1];
  v14 = *(v0 + 16);
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  v15 = sub_264E24448();
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v15 + 16), v9);
  swift_endAccess();

  v16 = sub_264E24448();
  v17 = *(v5 + 20);
  v18 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar;
  swift_beginAccess();
  v19 = sub_264E23C38();
  (*(*(v19 - 8) + 24))(v16 + v18, v9 + v17, v19);
  swift_endAccess();

  return sub_264DED9C0(v9, type metadata accessor for AllActivityView.UnitTestOverrides);
}

uint64_t sub_264DE519C(uint64_t *a1)
{
  v2 = sub_264E238E8();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v6 = *(v5 - 8);
  v33 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23AA8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v31 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 16);
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
  v31[1] = sub_264E24448();
  sub_264E23A98();
  swift_getKeyPath();
  swift_getKeyPath();
  v31[0] = sub_264E24328();
  v23 = v22;
  v24 = v10[2];
  v24(v15, v18, v9);
  v25 = v32;
  v24(v32, v15, v9);
  v26 = v23 + *(type metadata accessor for ActivityNavigationState(0) + 20);
  v27 = v35;
  (*(v36 + 16))(v35, v26 + *(v33 + 28), v37);
  v28 = v34;
  sub_264D9173C(v25, v27, v34);
  v29 = v10[1];
  v29(v15, v9);
  v29(v18, v9);
  sub_264D93A84(v28, v26);
  (v31[0])(v38, 0);
}

uint64_t sub_264DE5544@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_264DE55F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2748, &qword_264E280D0);
  sub_264DEBEC0();
  sub_264E24A98();
  sub_264DED884(v3, v7, type metadata accessor for AllActivityView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_264DED774(v7, v9 + v8, type metadata accessor for AllActivityView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2768, &qword_264E280E8);
  v11 = (a2 + *(result + 36));
  *v11 = sub_264DEEB00;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

ScreenTimeUICore::AllActivityView::Bridge::UserDevice __swiftcall AllActivityView.Bridge.UserDevice.init(userAltDSID:deviceIdentifier:)(Swift::String_optional userAltDSID, Swift::String_optional deviceIdentifier)
{
  *v2 = userAltDSID;
  v2[1] = deviceIdentifier;
  result.deviceIdentifier = deviceIdentifier;
  result.userAltDSID = userAltDSID;
  return result;
}

double sub_264DE5790@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_264DE5810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264DEE578(v2, v3);

  return sub_264E24348();
}

uint64_t sub_264DE58B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();
}

uint64_t sub_264DE5928(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  v4 = a1[1];

  return sub_264E24348();
}

void (*sub_264DE599C(uint64_t *a1))(void *a1)
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

void sub_264DE5A40(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_264DE5AA8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24308();
  return swift_endAccess();
}

uint64_t sub_264DE5B20(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2780, &qword_264E28140);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24318();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_264DE5CA4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24308();
  return swift_endAccess();
}