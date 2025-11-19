uint64_t sub_269CBCA64()
{
  type metadata accessor for ScheduleOccurrenceTableViewCell();
  sub_269CBD0B0(&qword_28034E3B0, type metadata accessor for ScheduleOccurrenceTableViewCell);
  return sub_269D97F90();
}

uint64_t sub_269CBCB00()
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269CBCB44()
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269CBCB80()
{
  sub_269CBE030();
  v2 = sub_269D9A660();
  MEMORY[0x26D650930](45, 0xE100000000000000);
  v0 = ScheduleOccurrenceViewModel.description.getter();
  MEMORY[0x26D650930](v0);

  return v2;
}

uint64_t sub_269CBCBF4(uint64_t a1)
{
  v2 = sub_269CBD0B0(&qword_28034F6F0, type metadata accessor for ScheduleOccurrenceRow);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_269CBCC74()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t sub_269CBCD20()
{
  sub_269CBE650();
  v5 = sub_269D9A660();
  MEMORY[0x26D650930](45, 0xE100000000000000);
  v0 = HKSPIdentifierStringForWeekdays();
  v1 = sub_269D9A630();
  v3 = v2;

  MEMORY[0x26D650930](v1, v3);

  return v5;
}

uint64_t sub_269CBCDBC(uint64_t a1)
{
  v2 = sub_269CBE5FC();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_269CBCE08()
{
  v1 = *(v0 + 8);
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269CBCE7C()
{
  v1 = *(v0 + 8);
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

id sub_269CBCF50()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1 == 2;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    result = HKHealthTintColor();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (v1 != 1)
  {
LABEL_12:
    result = sub_269D9B290();
    __break(1u);
    return result;
  }

  result = BPSBridgeTintColor();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_269CBD004(uint64_t a1)
{
  v2 = sub_269CBE0D4();

  return MEMORY[0x282169440](a1, v2);
}

unint64_t sub_269CBD05C()
{
  result = qword_28034F650;
  if (!qword_28034F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F650);
  }

  return result;
}

uint64_t sub_269CBD0B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269CBD0F8()
{
  if (!qword_28034F660)
  {
    sub_269D9AAD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F660);
    }
  }
}

uint64_t sub_269CBD160(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_269CBD20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = MEMORY[0x277D837D0];
  sub_269CBE1F8(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBF0;

  v10 = HKSPIdentifierStringForWeekdays();
  v11 = sub_269D9A630();
  v13 = v12;

  *(inited + 32) = v11;
  *(inited + 40) = v13;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x8000000269DB04D0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269DA0D60;
  *(v14 + 32) = sub_269D9A630();
  *(v14 + 40) = v15;
  *(v14 + 48) = 0x7065656C53;
  *(v14 + 56) = 0xE500000000000000;
  *(v14 + 64) = 0x696472616F626E4FLL;
  *(v14 + 72) = 0xEA0000000000676ELL;

  sub_269C49A1C(v16);
  sub_269CBE1F8(0, &qword_280C0B4F0, v8, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v17 = sub_269D9A520();
  v19 = v18;

  swift_setDeallocating();
  result = swift_arrayDestroy();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v17;
  a4[4] = v19;
  return result;
}

uint64_t sub_269CBD404(uint64_t a1, uint64_t a2)
{
  sub_269D987C0();
  v3 = [v8 occurrencesOnDays_];

  sub_269C1B0B8(0, &qword_28034E050);
  v4 = sub_269D9A7E0();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_269D9AF50();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D651260](0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

void sub_269CBD50C(void *a1)
{
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280C0B728);
  v4 = sub_269D98230();
  v5 = sub_269D9AB80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_269C2EACC(0xD000000000000040, 0x8000000269DB03F0, v36);
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Edit schedule occurrence row tapped", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  v33[0] = a1;
  sub_269C1B0B8(0, &qword_28034DC38);
  sub_269C3232C(0, &qword_28034F688);
  v8 = a1;
  if (swift_dynamicCast())
  {
    sub_269C25520(v34, v36);
    v9 = sub_269CBD404(*v1, *(v1 + 8));
    if (v9)
    {
      v10 = v9;
      v11 = v37;
      v12 = v38;
      __swift_project_boxed_opaque_existential_1Tm(v36, v37);
      (*(v12 + 16))(v10, v11, v12);
    }

    else
    {
      v34[0] = *(v1 + 24);

      sub_269CBDAB4(v34, v33);
      v24 = sub_269D98230();
      v25 = sub_269D9AB60();

      sub_269CBDB3C(v34);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33[0] = v27;
        *v26 = 136446466;
        *(v26 + 4) = sub_269C2EACC(0xD000000000000040, 0x8000000269DB03F0, v33);
        *(v26 + 12) = 2082;
        v28 = NSStringFromHKSPWeekdays();
        v29 = sub_269D9A630();
        v31 = v30;

        v32 = sub_269C2EACC(v29, v31, v33);

        *(v26 + 14) = v32;
        _os_log_impl(&dword_269C18000, v24, v25, "[%{public}s] Unable to edit occurrence for identifier: %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v27, -1, -1);
        MEMORY[0x26D652460](v26, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  else
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_269CBD9C4(v34);
    v13 = v8;
    v14 = sub_269D98230();
    v15 = sub_269D9AB80();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36[0] = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_269C2EACC(0xD000000000000040, 0x8000000269DB03F0, v36);
      *(v16 + 12) = 2082;
      v18 = v13;
      v19 = [v18 description];
      v20 = sub_269D9A630();
      v22 = v21;

      v23 = sub_269C2EACC(v20, v22, v36);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Unable to present schedule edit on unknown view controller: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v17, -1, -1);
      MEMORY[0x26D652460](v16, -1, -1);
    }
  }
}

uint64_t sub_269CBD9C4(uint64_t a1)
{
  sub_269CBDA4C(0, &qword_28034F690, &qword_28034F688, &protocol descriptor for ScheduleActionHandling, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269CBDA4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_269C3232C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_269CBDAB4(uint64_t a1, uint64_t a2)
{
  sub_269CBE1F8(0, &qword_280C0BF30, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CBDB3C(uint64_t a1)
{
  sub_269CBE1F8(0, &qword_280C0BF30, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269CBDBBC(void *a1)
{
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_269C2EACC(0xD00000000000003BLL, 0x8000000269DB0440, v24);
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Add schedule occurrence prompt row tapped", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v23 = a1;
  sub_269C1B0B8(0, &qword_28034DC38);
  sub_269C3232C(0, &qword_28034F688);
  v7 = a1;
  if (swift_dynamicCast())
  {
    sub_269C25520(v21, v24);
    v8 = v25;
    v9 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_269CBD9C4(v21);
    v10 = v7;
    v11 = sub_269D98230();
    v12 = sub_269D9AB80();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_269C2EACC(0xD00000000000003BLL, 0x8000000269DB0440, v24);
      *(v13 + 12) = 2082;
      v15 = v10;
      v16 = [v15 description];
      v17 = sub_269D9A630();
      v19 = v18;

      v20 = sub_269C2EACC(v17, v19, v24);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] Unable to present schedule compose on unknown view controller: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v14, -1, -1);
      MEMORY[0x26D652460](v13, -1, -1);
    }
  }
}

void sub_269CBDF00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269CBDF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_269CBDFDC()
{
  result = qword_28034F6A0;
  if (!qword_28034F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6A0);
  }

  return result;
}

unint64_t sub_269CBE030()
{
  result = qword_28034F6A8;
  if (!qword_28034F6A8)
  {
    type metadata accessor for ScheduleOccurrenceRow(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034F6A8);
  }

  return result;
}

uint64_t sub_269CBE078(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleOccurrenceRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269CBE0D4()
{
  result = qword_28034F6B0;
  if (!qword_28034F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6B0);
  }

  return result;
}

uint64_t sub_269CBE128(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_269D9B280() & 1;
  }
}

void sub_269CBE180()
{
  if (!qword_28034F6B8)
  {
    sub_269C1B0B8(255, &qword_28034E978);
    v0 = sub_269D987E0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F6B8);
    }
  }
}

void sub_269CBE1F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269CBE278()
{
  result = type metadata accessor for ScheduleOccurrenceViewModel();
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

uint64_t sub_269CBE2F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_269CBE340(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_269CBE398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_269CBE3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_269CBE464()
{
  result = qword_28034F6D0;
  if (!qword_28034F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6D0);
  }

  return result;
}

unint64_t sub_269CBE4BC()
{
  result = qword_28034F6D8;
  if (!qword_28034F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6D8);
  }

  return result;
}

unint64_t sub_269CBE5A8()
{
  result = qword_28034F6E8;
  if (!qword_28034F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6E8);
  }

  return result;
}

unint64_t sub_269CBE5FC()
{
  result = qword_28034F6F8;
  if (!qword_28034F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6F8);
  }

  return result;
}

unint64_t sub_269CBE650()
{
  result = qword_28034F700;
  if (!qword_28034F700)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034F700);
  }

  return result;
}

unint64_t sub_269CBE698()
{
  result = qword_28034F708;
  if (!qword_28034F708)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034F708);
  }

  return result;
}

uint64_t ScheduleStatus.enabledTitle.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t ScheduleStatus.disabledTitle.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t ScheduleStatus.hashValue.getter()
{
  sub_269D9B350();
  MEMORY[0x26D6515B0](0);
  return sub_269D9B390();
}

uint64_t sub_269CBE89C()
{
  sub_269D9B350();
  MEMORY[0x26D6515B0](0);
  return sub_269D9B390();
}

uint64_t sub_269CBE908()
{
  sub_269D9B350();
  MEMORY[0x26D6515B0](0);
  return sub_269D9B390();
}

unint64_t sub_269CBE94C()
{
  result = qword_28034F710;
  if (!qword_28034F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F710);
  }

  return result;
}

void sub_269CBE9B8(double a1)
{
  v1 = a1 / 3600.0;
  if (COERCE__INT64(fabs(a1 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = 3600 * v1;
  if ((v1 * 3600) >> 64 == v2 >> 63)
  {
    v3 = v2;
    v4 = a1 - v2;
    sub_269CC0AEC(0, &qword_280C0BBA0, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_269D9EBF0;
    *(v5 + 32) = v3;
    *(v5 + 40) = v4;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_269CBEA94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_269CC01F8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC0364();
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC029C();
  v14 = v13;
  v71 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v62 - v17;
  v18 = *(*(v1 + 8) + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (v18)
  {
    [v18 windDownTime];
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = type metadata accessor for ShorterDateComponentsFormatter();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
  v85.receiver = v22;
  v85.super_class = v21;
  v23 = objc_msgSendSuper2(&v85, sel_init);
  v24 = [v23 stringFromTimeInterval_];

  if (!v24)
  {
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v66 = v14;
  v72 = v8;
  v67 = v6;
  v68 = a1;
  v69 = v5;
  v25 = sub_269D9A630();
  v27 = v26;

  v28 = swift_allocObject();
  v29 = v2[3];
  v28[3] = v2[2];
  v28[4] = v29;
  v28[5] = v2[4];
  v30 = v2[1];
  v28[1] = *v2;
  v28[2] = v30;
  MEMORY[0x28223BE20](v28);
  *(&v62 - 2) = v25;
  *(&v62 - 1) = v27;
  sub_269CC0858(v2, &v79);
  sub_269CC0460();
  sub_269CC0DA4(&qword_28034F770, sub_269CC0460);
  sub_269D99EB0();

  v31 = sub_269D99D40();
  KeyPath = swift_getKeyPath();
  v33 = &v12[*(v10 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v86 = v2[2];
  v79 = v2[2];
  sub_269CC0890(0, &qword_28034F7A8, MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v34 = swift_allocObject();
  v35 = v2[3];
  v34[3] = v2[2];
  v34[4] = v35;
  v34[5] = v2[4];
  v36 = v2[1];
  v34[1] = *v2;
  v34[2] = v36;
  sub_269CC0858(v2, &v79);
  sub_269CC0AEC(0, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
  sub_269CC058C();
  sub_269CC066C();
  sub_269D99C70();

  sub_269CC09F4(v12, sub_269CC0364);
  v79 = v2[1];
  sub_269CC0AEC(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v70 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if (v75 == 1)
  {
    v44 = v2[4];
    v75 = v2[3];
    v76 = v44;
    sub_269CC0AEC(0, &qword_28034F7B0, &type metadata for WindDownPickerModel, MEMORY[0x277CE10B8]);
    sub_269D99E90();
    v37 = *(&v79 + 1);
    v70 = v79;
    v38 = v80;
    v39 = v81;
    v40 = v82;
    v75 = v86;
    sub_269D99E90();
    v42 = *(&v79 + 1);
    v41 = v79;
    v43 = v80;
  }

  v62 = v41;
  *&v63 = v42;
  *(&v63 + 1) = v43;
  v64 = v39;
  v45 = v71;
  v46 = *(v71 + 16);
  v47 = v73;
  v65 = v37;
  v48 = v66;
  v46(v73, v74, v66);
  v49 = v70;
  v50 = v72;
  v46(v72, v47, v48);
  sub_269CC022C();
  v52 = (v50 + *(v51 + 48));
  *&v75 = v49;
  v53 = v49;
  *(&v75 + 1) = v37;
  *&v76 = v38;
  v54 = v64;
  *(&v76 + 1) = v64;
  v55 = v62;
  *&v77 = v40;
  *(&v77 + 1) = v62;
  v56 = v63;
  v78 = v63;
  v57 = v76;
  *v52 = v75;
  v52[1] = v57;
  v58 = v78;
  v52[2] = v77;
  v52[3] = v58;
  sub_269CC098C(&v75, &v79, sub_269CC0700);
  v59 = *(v45 + 8);
  v59(v74, v48);
  *&v79 = v53;
  *(&v79 + 1) = v65;
  v80 = v38;
  v81 = v54;
  v82 = v40;
  v83 = v55;
  v84 = v56;
  sub_269CC09F4(&v79, sub_269CC0700);
  v59(v73, v48);
  v60 = v68;
  sub_269C1F00C(v72, v68);
  return (*(v67 + 56))(v60, 0, 1, v69);
}

uint64_t sub_269CBF254()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_269D9A1B0();
  sub_269D98BD0();
}

uint64_t sub_269CBF344(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  v5 = v4;
  v6 = *(&v4 + 1);
  sub_269CC098C(&v6, v3, sub_269CC0A70);
  sub_269CC0AEC(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v4 = v5;
  v3[0] = !v3[0];
  sub_269D99E80();
  sub_269CC0B3C(&v5);
}

double sub_269CBF488@<D0>(uint64_t a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_269D99090();
  v14 = 1;
  sub_269CBF608(&v8);
  v17 = v10;
  v18 = v11;
  v15 = v8;
  v16 = v9;
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v20[1] = v9;
  v19 = v12;
  v20[0] = v8;
  sub_269CC098C(&v15, &v7, sub_269CC04F4);
  sub_269CC09F4(v20, sub_269CC04F4);

  *&v13[7] = v15;
  *&v13[71] = v19;
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  v3 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v13[64];
  result = *v13;
  v5 = *&v13[16];
  *(a1 + 17) = *v13;
  v6 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 96) = *&v13[79];
  *(a1 + 33) = v5;
  return result;
}

uint64_t sub_269CBF608@<X0>(uint64_t a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v2 = qword_280C0D990;
  sub_269D972C0();

  sub_269C3EEE8();
  v3 = sub_269D99960();
  v22 = v4;
  v23 = v3;
  v21 = v5;
  v24 = v6;

  v7 = sub_269D99960();
  v9 = v8;
  v11 = v10;
  v12 = [objc_opt_self() tintColor];
  sub_269D99CC0();
  v13 = sub_269D998F0();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_269C41568(v7, v9, v11 & 1);

  *a1 = v23;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17 & 1;
  *(a1 + 72) = v19;
  sub_269C41668(v23, v22, v21 & 1);

  sub_269C41668(v13, v15, v17 & 1);

  sub_269C41568(v13, v15, v17 & 1);

  sub_269C41568(v23, v22, v21 & 1);
}

uint64_t sub_269CBF8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269CBFAF8();
  v5 = v4;
  v6 = *(a3 + 8);
  v7 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  v8 = *(v6 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (v8)
  {
    [v8 windDownTime];
    if (v9 != v5)
    {
      v10 = *(v6 + v7);
LABEL_11:
      [v10 setWindDownTime_];
      sub_269C78F44();
      sub_269CBFD18(v5);
      v12 = type metadata accessor for ShortHourDateComponentsFormatter();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = 4;
      v18.receiver = v13;
      v18.super_class = v12;
      v14 = objc_msgSendSuper2(&v18, sel_init);
      [v14 setUnitsStyle_];
      [v14 setAllowedUnits_];
      v15 = type metadata accessor for ShortMinuteDateComponentsFormatter();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC13SleepHealthUI34ShortMinuteDateComponentsFormatter_options] = 4;
      v17.receiver = v16;
      v17.super_class = v15;
      objc_msgSendSuper2(&v17, sel_init);
      sub_269CC0AEC(0, &qword_28034F7B0, &type metadata for WindDownPickerModel, MEMORY[0x277CE10B8]);
      sub_269D99E80();
    }
  }

  else if (v4 != 0.0)
  {
    v10 = 0;
    goto LABEL_11;
  }
}

double sub_269CBFAF8()
{
  sub_269CC0890(0, &qword_28034F7A8, MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v0 = *(v9 + 16);
  if (!v0)
  {
    v2 = 0.0;
    goto LABEL_10;
  }

  if (v0 <= 3)
  {
    v1 = 0;
    v2 = 0.0;
LABEL_8:
    v5 = v0 - v1;
    v6 = (v9 + 8 * v1 + 32);
    do
    {
      v7 = *v6++;
      v2 = v2 + v7;
      --v5;
    }

    while (v5);
    goto LABEL_10;
  }

  v1 = v0 & 0x7FFFFFFFFFFFFFFCLL;
  v3 = (v9 + 48);
  v2 = 0.0;
  v4 = v0 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v2 = v2 + *(v3 - 2) + *(v3 - 1) + *v3 + v3[1];
    v3 += 4;
    v4 -= 4;
  }

  while (v4);
  if (v0 != v1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return v2;
}

unint64_t sub_269CBFC2C(unint64_t result, unint64_t a2, uint64_t a3, id a4, id a5)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(a3 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(a3 + 8 * a2 + 32);
  if (*(v5 + 16) > result)
  {
    v6 = *(v5 + 8 * result + 32);
    if (a2)
    {
      v7 = [a5 stringFromTimeInterval_];
      if (v7)
      {
LABEL_7:
        v8 = v7;
        v9 = sub_269D9A630();

        return v9;
      }
    }

    else
    {
      v7 = [a4 stringFromTimeInterval_];
      if (v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_269CBFD18(double a1)
{
  v2 = *MEMORY[0x277D623D0] * 60.0;
  sub_269D70DE4(0.0, v2 + 1.0, 3600.0);
  v4 = v3;
  if (v2 <= a1)
  {
    v7 = &unk_287A9FF10;
    goto LABEL_5;
  }

  v5 = *MEMORY[0x277D623E8] * 60.0;
  if (v5 != 0.0)
  {
    sub_269D70DE4(0.0, 3600.0, v5);
    v7 = v6;
LABEL_5:
    sub_269CC0890(0, &qword_28034F718, MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_269D9EBF0;
    *(v8 + 32) = v4;
    *(v8 + 40) = v7;
    return;
  }

  __break(1u);
}

__n128 sub_269CBFE08@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  sub_269D99E60();
  type metadata accessor for SleepScheduleModel();
  sub_269CC0DA4(&qword_28034E860, type metadata accessor for SleepScheduleModel);
  v4 = a1;
  v21 = sub_269D98C70();
  v6 = v5;
  v7 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  v8 = *&v4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule];
  v9 = 0.0;
  v10 = 0.0;
  if (v8)
  {
    [v8 windDownTime];
  }

  sub_269CBE9B8(v10);
  sub_269CC0AEC(0, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
  sub_269D99E60();
  v11 = *&v4[v7];
  if (v11)
  {
    [v11 windDownTime];
    v9 = v12;
  }

  sub_269CBFD18(v9);
  v13 = type metadata accessor for ShortHourDateComponentsFormatter();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = 4;
  v27.receiver = v14;
  v27.super_class = v13;
  v15 = objc_msgSendSuper2(&v27, sel_init);
  [v15 setUnitsStyle_];
  [v15 setAllowedUnits_];
  v16 = type metadata accessor for ShortMinuteDateComponentsFormatter();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC13SleepHealthUI34ShortMinuteDateComponentsFormatter_options] = 4;
  v26.receiver = v17;
  v26.super_class = v16;
  v22 = objc_msgSendSuper2(&v26, sel_init);

  v18 = v15;
  v19 = v22;
  sub_269D99E60();

  result = v23;
  a2->n128_u64[0] = v21;
  a2->n128_u64[1] = v6;
  a2[1].n128_u8[0] = v23.n128_u8[0];
  a2[1].n128_u64[1] = v23.n128_u64[1];
  a2[2] = v23;
  a2[3] = v23;
  a2[4].n128_u64[0] = v24;
  a2[4].n128_u64[1] = v25;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_269CC00A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_269CC00F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_269CC0160(uint64_t a1)
{
  result = sub_269CC0188();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269CC0188()
{
  result = qword_28034F720;
  if (!qword_28034F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F720);
  }

  return result;
}

void sub_269CC022C()
{
  if (!qword_28034F730)
  {
    sub_269CC029C();
    sub_269CC0700(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F730);
    }
  }
}

void sub_269CC029C()
{
  if (!qword_28034F738)
  {
    sub_269CC0364();
    sub_269CC0AEC(255, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    sub_269CC058C();
    sub_269CC066C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F738);
    }
  }
}

void sub_269CC0364()
{
  if (!qword_28034F740)
  {
    sub_269CC03CC();
    sub_269C3C784();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F740);
    }
  }
}

void sub_269CC03CC()
{
  if (!qword_28034F748)
  {
    sub_269CC0460();
    sub_269CC0DA4(&qword_28034F770, sub_269CC0460);
    v0 = sub_269D99EE0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F748);
    }
  }
}

void sub_269CC0460()
{
  if (!qword_28034F750)
  {
    sub_269CC04F4(255);
    sub_269CC0DA4(&qword_28034F768, sub_269CC04F4);
    v0 = sub_269D99F00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F750);
    }
  }
}

void sub_269CC0528()
{
  if (!qword_28034F760)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28034F760);
    }
  }
}

unint64_t sub_269CC058C()
{
  result = qword_28034F778;
  if (!qword_28034F778)
  {
    sub_269CC0364();
    sub_269CC0DA4(&qword_28034F780, sub_269CC03CC);
    sub_269CC0DA4(&qword_280C0B5B8, sub_269C3C784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F778);
  }

  return result;
}

unint64_t sub_269CC066C()
{
  result = qword_28034F788;
  if (!qword_28034F788)
  {
    sub_269CC0AEC(255, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F788);
  }

  return result;
}

void sub_269CC0734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CC0798()
{
  if (!qword_28034F798)
  {
    sub_269CC07F4();
    v0 = type metadata accessor for MultiPicker();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F798);
    }
  }
}

unint64_t sub_269CC07F4()
{
  result = qword_28034F7A0;
  if (!qword_28034F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F7A0);
  }

  return result;
}

void sub_269CC0890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269CC0AEC(255, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_269CC098C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269CC09F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269CC0A70()
{
  if (!qword_28034F7B8)
  {
    sub_269CC0AEC(255, &qword_28034F7C0, MEMORY[0x277D839B0], MEMORY[0x277CDF3B0]);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F7B8);
    }
  }
}

void sub_269CC0AEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269CC0B3C(uint64_t a1)
{
  sub_269CC0AEC(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269CC0BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 > 3)
    {
      v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
      v4 = (a1 + 48);
      v3 = 0.0;
      v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v3 = v3 + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
        v4 += 4;
        v5 -= 4;
      }

      while (v5);
      if (v1 == v2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v2 = 0;
      v3 = 0.0;
    }

    v6 = v1 - v2;
    v7 = (a1 + 8 * v2 + 32);
    do
    {
      v8 = *v7++;
      v3 = v3 + v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v3 = 0.0;
  }

LABEL_10:
  v9 = *MEMORY[0x277D623D0] * 60.0;
  if (v3 <= v9)
  {
  }

  sub_269CC0AEC(0, &qword_280C0BBA0, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
  result = swift_allocObject();
  *(result + 16) = xmmword_269D9EBF0;
  *(result + 32) = v9;
  *(result + 40) = 0;
  return result;
}

unint64_t sub_269CC0CCC()
{
  result = qword_28034F7C8;
  if (!qword_28034F7C8)
  {
    sub_269CC0734(255, &qword_28034F7D0, sub_269CC01F8, MEMORY[0x277D83D88]);
    sub_269CC0DA4(&qword_28034F7D8, sub_269CC01F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F7C8);
  }

  return result;
}

uint64_t sub_269CC0DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269CC0DEC(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_269D9B3F0();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D9B3D0();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_269D9B440();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_269D9B450();
  v11 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC11A8();
  sub_269D9B420();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269D9EBF0;
  sub_269D9B400();
  sub_269D9B410();
  sub_269CF7698(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_269D9B430();
  sub_269D9B3C0();
  sub_269D9B3E0();
  sub_269D96EF0();

  (*(v21 + 8))(v4, v22);
  (*(v19 + 8))(v7, v20);
  (*(v8 + 8))(v10, v18);
  sub_269CC1200();
  v15 = v17;
  sub_269D9B460();
  (*(v11 + 8))(v13, v15);
  return v25;
}

void sub_269CC11A8()
{
  if (!qword_280C0AD78)
  {
    sub_269D9B420();
    v0 = sub_269D9B240();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0AD78);
    }
  }
}

unint64_t sub_269CC1200()
{
  result = qword_280C0AD58;
  if (!qword_280C0AD58)
  {
    sub_269D9B450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0AD58);
  }

  return result;
}

Swift::Void __swiftcall UICollectionView.registerGoalTimePickerCell()()
{
  v0 = type metadata accessor for GoalTimePickerCollectionViewCell();
  v1 = sub_269CC12C0();

  MEMORY[0x28216A168](v0, v0, v1);
}

unint64_t sub_269CC12C0()
{
  result = qword_28034F7E0;
  if (!qword_28034F7E0)
  {
    type metadata accessor for GoalTimePickerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F7E0);
  }

  return result;
}

id sub_269CC1314(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for GoalTimePickerCollectionViewCell();
  v9 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_269C628D0();

  v11 = sub_269D912B8();
  v12 = &v10[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
  v13 = *&v10[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 8];
  *v12 = v14;
  v12[1] = v15;
  *(v12 + 2) = v11;
  *(v12 + 24) = v16 & 1;
  if (v13 != v15)
  {
    [v10 reloadAllComponents];
    sub_269CD94E4(1);
  }

  return v9;
}

id sub_269CC14B4(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for GoalTimePickerCollectionViewCell();
  v3 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_269C628D0();

    v7 = sub_269D912B8();
    v8 = &v6[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
    v9 = *&v6[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 8];
    *v8 = v10;
    v8[1] = v11;
    *(v8 + 2) = v7;
    *(v8 + 24) = v12 & 1;
    if (v9 != v11)
    {
      [v6 reloadAllComponents];
      sub_269CD94E4(1);
    }
  }

  return v4;
}

id sub_269CC1620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GoalTimePickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_269CC169C()
{
  if (!qword_28034F800)
  {
    type metadata accessor for LockScreenContentModel();
    sub_269CC3564(&unk_28034EA90, type metadata accessor for LockScreenContentModel);
    v0 = sub_269D98C90();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F800);
    }
  }
}

uint64_t sub_269CC174C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D99040();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LockScreenGreetingView(0);
  sub_269CC6074(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269D98CA0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_269D9AB70();
    v13 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269CC1960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v102 = a2;
  v2 = type metadata accessor for LockScreenGreetingView(0);
  v95 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v96 = v3;
  v97 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269D98CA0();
  v91 = *(v4 - 8);
  v92 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v90 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v78 - v7;
  sub_269CC338C();
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v99 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v78 - v11;
  v12 = sub_269D997A0();
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x28223BE20](v12);
  v85 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269D97650();
  v83 = *(v14 - 8);
  v84 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_269D97580();
  v81 = *(v17 - 8);
  KeyPath = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_269D97670();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_269D977A0();
  v79 = *(v24 - 8);
  v80 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC2F90();
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v94 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v103 = &v78 - v30;
  sub_269D9A8E0();
  v93 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = *(v104 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v88 = v31;
  sub_269D98880();

  if (v123 > 2u)
  {
    (*(v21 + 104))(v23, *MEMORY[0x277CC9830], v20);
    sub_269D97680();
    (*(v21 + 8))(v23, v20);
    sub_269D97570();
    sub_269D97630();
    v34 = Calendar.dayPeriod(for:in:)(v19);
    (*(v83 + 8))(v16, v84);
    (*(v81 + 8))(v19, KeyPath);
    (*(v79 + 8))(v26, v80);
    *&v114 = 0;
    sub_269D71D6C(&v114, v34);
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v35 = qword_280C0D990;
    v36 = sub_269D972C0();
    v83 = v37;
    v84 = v36;

    KeyPath = swift_getKeyPath();
    v38 = swift_getKeyPath();
    LOBYTE(v114) = 0;
    LOBYTE(v105) = 1;
    v39 = sub_269D99D20();
    v40 = swift_getKeyPath();
    sub_269D99650();
    v42 = v85;
    v41 = v86;
    v43 = v87;
    (*(v86 + 104))(v85, *MEMORY[0x277CE0A10], v87);
    v44 = sub_269D997E0();

    (*(v41 + 8))(v42, v43);
    v45 = swift_getKeyPath();
    LOBYTE(v43) = sub_269D995F0();
    sub_269D98990();
    LOBYTE(v114) = 0;
    *&v105 = v84;
    *(&v105 + 1) = v83;
    LOBYTE(v106) = 0;
    *(&v106 + 1) = MEMORY[0x277D84F90];
    v107 = KeyPath;
    LOBYTE(v108) = 1;
    *(&v108 + 1) = v38;
    LOBYTE(v109) = 1;
    *(&v109 + 1) = v40;
    *&v110 = v39;
    *(&v110 + 1) = v45;
    *&v111 = v44;
    BYTE8(v111) = v43;
    *&v112 = v46;
    *(&v112 + 1) = v47;
    *v113 = v48;
    *&v113[8] = v49;
    v113[16] = 0;
    *&v113[17] = 256;
    sub_269CC3018(0);
    sub_269CC6B5C(&qword_28034F888, sub_269CC3018, sub_269CC5A5C);
    v33 = v103;
    sub_269D99BB0();
    v120 = v111;
    v121 = v112;
    *v122 = *v113;
    *&v122[15] = *&v113[15];
    v116 = v107;
    v117 = v108;
    v118 = v109;
    v119 = v110;
    v114 = v105;
    v115 = v106;
    sub_269CC5E10(&v114, sub_269CC3018);
    sub_269CC69F4(0, &qword_28034F828, sub_269CC3018, MEMORY[0x277CDE470]);
    (*(*(v50 - 8) + 56))(v33, 0, 1, v50);
  }

  else
  {
    sub_269CC69F4(0, &qword_28034F828, sub_269CC3018, MEMORY[0x277CDE470]);
    v33 = v103;
    (*(*(v32 - 8) + 56))(v103, 1, 1, v32);
  }

  v51 = v89;
  v52 = v104;
  sub_269CC174C(v89);
  v54 = v90;
  v53 = v91;
  v55 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x277CDF9A8], v92);
  sub_269CC3564(&qword_280C0B658, MEMORY[0x277CDFA28]);
  v56 = sub_269D9A540();
  v57 = *(v53 + 8);
  v57(v54, v55);
  v57(v51, v55);
  LOBYTE(v105) = v56 & 1;
  type metadata accessor for LockScreenContentModel();
  sub_269CC3564(&unk_28034EA90, type metadata accessor for LockScreenContentModel);
  v58 = v88;
  v59 = sub_269D98C70();
  v61 = v60;
  v62 = sub_269D98C70();
  LOBYTE(v114) = v105;
  *(&v114 + 1) = v59;
  *&v115 = v61;
  *(&v115 + 1) = v62;
  *&v116 = v63;
  v64 = v97;
  sub_269CC5DA8(v52, v97, type metadata accessor for LockScreenGreetingView);
  v65 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v66 = swift_allocObject();
  sub_269CC6AF4(v64, v66 + v65, type metadata accessor for LockScreenGreetingView);
  sub_269CC3440();
  sub_269CC3564(&qword_28034F880, sub_269CC3440);
  v67 = v98;
  sub_269D99AB0();

  v68 = v115;

  v69 = v94;
  sub_269CC5DA8(v33, v94, sub_269CC2F90);
  v71 = v99;
  v70 = v100;
  v72 = *(v100 + 16);
  v73 = v101;
  v72(v99, v67, v101);
  v74 = v102;
  sub_269CC5DA8(v69, v102, sub_269CC2F90);
  sub_269CC6944(0, &qword_28034F818, sub_269CC2F90, sub_269CC338C);
  v72((v74 + *(v75 + 48)), v71, v73);
  v76 = *(v70 + 8);
  v76(v67, v73);
  sub_269CC5E10(v103, sub_269CC2F90);
  v76(v71, v73);
  sub_269CC5E10(v69, sub_269CC2F90);
}

void sub_269CC2688(uint64_t a1)
{
  v2 = type metadata accessor for LockScreenGreetingView(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269CC5E70(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D973D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  v11 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D9A630();
  sub_269D973C0();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_269CC5E10(v6, sub_269CC5E70);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v12 = sub_269D98250();
    __swift_project_value_buffer(v12, qword_280351208);
    v13 = sub_269D98230();
    v14 = sub_269D9AB60();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_269C2EACC(0xD000000000000016, 0x8000000269DA4A50, &v29);
      _os_log_impl(&dword_269C18000, v13, v14, "[%{public}s] Error trying to open Weather app", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D652460](v16, -1, -1);
      MEMORY[0x26D652460](v15, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v17 = sub_269D98250();
    __swift_project_value_buffer(v17, qword_280351208);
    v18 = sub_269D98230();
    v19 = sub_269D9AB80();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[1] = v11;
      v22 = a1;
      v23 = v21;
      v29 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_269C2EACC(0xD000000000000016, 0x8000000269DA4A50, &v29);
      _os_log_impl(&dword_269C18000, v18, v19, "[%{public}s] Opening Weather app", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v24 = v23;
      a1 = v22;
      MEMORY[0x26D652460](v24, -1, -1);
      MEMORY[0x26D652460](v20, -1, -1);
    }

    sub_269CC5DA8(a1, v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LockScreenGreetingView);
    v25 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v26 = swift_allocObject();
    sub_269CC6AF4(v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for LockScreenGreetingView);
    DeepLinkOpener.open(url:completion:)(v10, sub_269CC5FE4, v26);

    (*(v8 + 8))(v10, v7);
  }
}

void sub_269CC2BC4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280351208);
    v6 = a1;
    v7 = sub_269D98230();
    v8 = sub_269D9AB60();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_269C2EACC(0xD000000000000016, 0x8000000269DA4A50, aBlock);
      *(v9 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v13 + 16))(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
      v14 = sub_269D9A660();
      v16 = sub_269C2EACC(v14, v15, aBlock);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Error trying to open Weather app: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v10, -1, -1);
      MEMORY[0x26D652460](v9, -1, -1);
    }

    else
    {
    }
  }

  v17 = *(a2 + 8);
  v18 = *&v17[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore];
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  aBlock[4] = sub_269CC6054;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C7A600;
  aBlock[3] = &block_descriptor_16;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  [v18 dismissGoodMorningWithCompletion_];
  _Block_release(v20);
}

uint64_t sub_269CC2EE4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_269D99190();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_269CC6224(0, &qword_28034F808, sub_269CC2F54);
  return sub_269CC1960(v1, a1 + *(v3 + 44));
}

void sub_269CC2F90()
{
  if (!qword_28034F820)
  {
    sub_269CC69F4(255, &qword_28034F828, sub_269CC3018, MEMORY[0x277CDE470]);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F820);
    }
  }
}

void sub_269CC3068(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D98D00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269CC30CC()
{
  if (!qword_28034F840)
  {
    sub_269CC314C();
    sub_269CC32D0(255, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F840);
    }
  }
}

void sub_269CC314C()
{
  if (!qword_28034F848)
  {
    sub_269CC31CC();
    sub_269CC32D0(255, &qword_280C0B5B0, &qword_280C0B580, MEMORY[0x277CE0F78]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F848);
    }
  }
}

void sub_269CC31CC()
{
  if (!qword_28034F850)
  {
    sub_269CC3258();
    sub_269CC333C(255, &qword_280C0B040, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F850);
    }
  }
}

void sub_269CC3258()
{
  if (!qword_28034F858)
  {
    sub_269CC32D0(255, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F858);
    }
  }
}

void sub_269CC32D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269CC333C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_269D99530();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269CC333C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269CC338C()
{
  if (!qword_28034F860)
  {
    sub_269CC3440();
    sub_269CC3564(&qword_28034F880, sub_269CC3440);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F860);
    }
  }
}

void sub_269CC3440()
{
  if (!qword_28034F868)
  {
    sub_269CC34BC();
    sub_269CC3510();
    v0 = type metadata accessor for OptionalContentGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F868);
    }
  }
}

unint64_t sub_269CC34BC()
{
  result = qword_28034F870;
  if (!qword_28034F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F870);
  }

  return result;
}

unint64_t sub_269CC3510()
{
  result = qword_28034F878;
  if (!qword_28034F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F878);
  }

  return result;
}

uint64_t sub_269CC3564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269CC35AC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WeatherIconView(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (v24 - v8);
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  v24[1] = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v13 = a1;
  sub_269D98880();

  v14 = type metadata accessor for CurrentWeatherModel(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14);
  v16 = 0xE000000000000000;
  v17 = sub_269C6C9C4;
  if (v15 == 1)
  {
    v18 = 0;
  }

  else
  {
    sub_269D9A460();
    swift_allocObject();
    sub_269D9A450();
    v18 = sub_269D9A440();
    v20 = v19;

    if (v20)
    {
      v16 = v20;
    }

    else
    {
      v18 = 0;
    }

    v17 = type metadata accessor for CurrentWeatherModel;
  }

  sub_269CC5E10(v12, v17);
  *(v9 + *(v4 + 20)) = swift_getKeyPath();
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LockScreenContentModel();
  sub_269CC3564(&unk_28034EA90, type metadata accessor for LockScreenContentModel);
  *v9 = sub_269D98C70();
  v9[1] = v21;
  sub_269CC5DA8(v9, v7, type metadata accessor for WeatherIconView);
  *a2 = v18;
  a2[1] = v16;
  sub_269CC63B0();
  sub_269CC5DA8(v7, a2 + *(v22 + 48), type metadata accessor for WeatherIconView);

  sub_269CC5E10(v9, type metadata accessor for WeatherIconView);
  sub_269CC5E10(v7, type metadata accessor for WeatherIconView);
}

uint64_t sub_269CC3990@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v2 = sub_269D97810();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97580();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CBA014(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeatherIconView(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v33 - v18);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v19 + *(v14 + 20)) = swift_getKeyPath();
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LockScreenContentModel();
  sub_269CC3564(&unk_28034EA90, type metadata accessor for LockScreenContentModel);
  v37;
  *v19 = sub_269D98C70();
  v19[1] = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v21 = type metadata accessor for CurrentWeatherModel(0);
  if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
  {
    v22 = sub_269C6C9C4;
    v23 = v10;
  }

  else
  {
    sub_269D97900();
    sub_269D97800();
    sub_269D97A00();
    (*(v35 + 8))(v4, v36);
    (*(v33 + 8))(v7, v34);
    sub_269CC5E10(v10, type metadata accessor for CurrentWeatherModel);
    v24 = sub_269D978A0();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v13, 1, v24) != 1)
    {
      v26 = DayWeather.shortNaturalLanguageDescription.getter();
      v27 = v28;
      (*(v25 + 8))(v13, v24);
      goto LABEL_9;
    }

    v22 = sub_269CBA014;
    v23 = v13;
  }

  sub_269CC5E10(v23, v22);
  v26 = 0;
  v27 = 0xE000000000000000;
LABEL_9:
  sub_269CC5DA8(v19, v17, type metadata accessor for WeatherIconView);
  v29 = v38;
  sub_269CC5DA8(v17, v38, type metadata accessor for WeatherIconView);
  sub_269CC62C4();
  v31 = (v29 + *(v30 + 48));
  *v31 = v26;
  v31[1] = v27;

  sub_269CC5E10(v19, type metadata accessor for WeatherIconView);

  sub_269CC5E10(v17, type metadata accessor for WeatherIconView);
}

uint64_t sub_269CC3F60@<X0>(void (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  *a3 = sub_269D99190();
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = 0;
  a1(0);
  return a2(v8, v7);
}

uint64_t sub_269CC3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37[0] = a1;
  v37[1] = a3;
  v4 = sub_269D997A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC6C80(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_269D99370();
  KeyPath = swift_getKeyPath();
  sub_269CC6E64(0);
  v15 = &v11[*(v14 + 36)];
  sub_269CC6F78(0);
  v17 = *(v16 + 28);
  sub_269D9A160();
  v18 = sub_269D9A170();
  (*(*(v18 - 8) + 56))(v15 + v17, 0, 1, v18);
  *v15 = KeyPath;
  *v11 = v37[0];
  *(v11 + 1) = a2;
  v11[16] = 0;
  *(v11 + 3) = MEMORY[0x277D84F90];
  *(v11 + 8) = v12;
  v19 = swift_getKeyPath();
  sub_269CC69F4(0, &qword_28034F9B8, sub_269CC6E64, sub_269CC6FE0);
  v21 = &v11[*(v20 + 36)];
  sub_269CC6FE0(0);
  v23 = *(v22 + 28);
  v24 = *MEMORY[0x277CDF3C0];
  v25 = sub_269D989F0();
  (*(*(v25 - 8) + 104))(v21 + v23, v24, v25);
  *v21 = v19;
  sub_269D996C0();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
  v26 = sub_269D997E0();

  (*(v5 + 8))(v7, v4);
  v27 = swift_getKeyPath();
  sub_269CC6DB4();
  v29 = &v11[*(v28 + 36)];
  *v29 = v27;
  v29[1] = v26;
  v30 = swift_getKeyPath();
  sub_269CC6D34();
  v32 = &v11[*(v31 + 36)];
  *v32 = v30;
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = swift_getKeyPath();
  sub_269CC6CA8();
  v35 = &v11[*(v34 + 36)];
  *v35 = v33;
  v35[8] = 1;
  *&v11[*(v9 + 36)] = 256;
  sub_269CC7014();
  sub_269D99BB0();
  return sub_269CC5E10(v11, sub_269CC6C80);
}

uint64_t sub_269CC4364@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  sub_269CC6818();
  v22 = v2;
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D97920();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v19 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v15 = type metadata accessor for CurrentWeatherModel(0);
  if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
  {
    sub_269CC5E10(v7, sub_269C6C9C4);
    return (*(v20 + 56))(v21, 1, 1, v22);
  }

  else
  {
    (*(v9 + 16))(v12, v7, v8);
    sub_269CC5E10(v7, type metadata accessor for CurrentWeatherModel);
    (*(v9 + 32))(v14, v12, v8);
    *v4 = sub_269D99090();
    *(v4 + 1) = 0x4008000000000000;
    v4[16] = 0;
    sub_269CC6224(0, &qword_28034F980, sub_269CC68AC);
    sub_269CC46F0(v14, v19, &v4[*(v17 + 44)]);
    v18 = v21;
    sub_269CC6AF4(v4, v21, sub_269CC6818);
    (*(v20 + 56))(v18, 0, 1, v22);
    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_269CC46F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v90 = a1;
  v87 = a3;
  sub_269C424A0(0);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D9A370();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D9AC20();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC7628(0, &qword_28034E698, sub_269CB9FC8, MEMORY[0x277CC87D0]);
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v74 = &v70 - v10;
  sub_269C60724();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v86 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = &v70 - v14;
  v15 = sub_269D99D70();
  v71 = *(v15 - 8);
  v72 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C71694(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_269D979B0();
  v21 = *(v88 - 1);
  MEMORY[0x28223BE20](v88);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_269D9A360();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC69C0(0);
  v73 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v91 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v89 = &v70 - v31;
  sub_269D9A8E0();
  v78 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97910();
  sub_269D978D0();
  sub_269D97990();
  v70 = *(v21 + 8);
  v70(v23, v88);
  sub_269D9A350();
  (*(v25 + 8))(v27, v24);
  sub_269D99D60();
  v32 = *MEMORY[0x277CE1010];
  v33 = sub_269D99DA0();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v20, v32, v33);
  (*(v34 + 56))(v20, 0, 1, v33);
  sub_269D99D80();

  sub_269CC5E10(v20, sub_269C71694);
  v36 = v71;
  v35 = v72;
  (*(v71 + 104))(v17, *MEMORY[0x277CE0FE0], v72);
  v37 = sub_269D99DC0();

  (*(v36 + 8))(v17, v35);
  sub_269CC532C();
  sub_269CC532C();
  sub_269D9A180();
  sub_269D98AC0();
  *&v97[38] = v103;
  *&v97[22] = v102;
  *&v97[6] = v101;
  *&v96[2] = *v97;
  v98 = 1;
  v95 = v37;
  *v96 = 1;
  *&v96[18] = *&v97[16];
  *&v96[34] = *&v97[32];
  *&v96[48] = *(&v103 + 1);
  sub_269D97910();
  v38 = sub_269D979A0();
  v40 = v39;
  v70(v23, v88);
  v93 = v38;
  v94 = v40;
  sub_269CC6A68();
  sub_269CC6B5C(&qword_28034F988, sub_269CC6A68, sub_269CC6BDC);
  sub_269C3EEE8();
  v41 = v91;
  sub_269D99B50();

  v99[1] = *v96;
  v99[2] = *&v96[16];
  v99[3] = *&v96[32];
  v100 = *&v96[48];
  v99[0] = v95;
  sub_269CC5E10(v99, sub_269CC6A68);
  sub_269D98CE0();
  v88 = sub_269CC69C0;
  sub_269CC5E10(v41, sub_269CC69C0);
  v42 = v74;
  sub_269D978E0();
  v43 = v77;
  sub_269D9A340();
  v45 = v81;
  v44 = v82;
  v46 = v83;
  (*(v82 + 104))(v81, *MEMORY[0x277D7B408], v83);
  sub_269D97DE0();
  sub_269D97DD0();
  sub_269CC3564(&qword_28034E6A8, MEMORY[0x277D7B508]);
  v47 = v76;
  v48 = v80;
  v90 = sub_269D96F10();
  v73 = v49;

  (*(v44 + 8))(v45, v46);
  (*(v79 + 8))(v43, v48);
  (*(v75 + 8))(v42, v47);
  sub_269CC561C();
  sub_269D99710();
  v50 = sub_269D996F0();
  v51 = v84;
  (*(*(v50 - 8) + 56))(v84, 1, 1, v50);
  sub_269D99730();
  sub_269CC5E10(v51, sub_269C424A0);
  v52 = sub_269D99920();
  v54 = v53;
  LOBYTE(v44) = v55;

  sub_269D99D20();
  v56 = sub_269D998F0();
  v58 = v57;
  LOBYTE(v45) = v59;
  v61 = v60;

  sub_269C41568(v52, v54, v44 & 1);

  *&v95 = v56;
  *(&v95 + 1) = v58;
  v96[0] = v45 & 1;
  *&v96[8] = v61;
  v62 = v85;
  sub_269D99BB0();
  sub_269C41568(v56, v58, v45 & 1);

  v63 = v89;
  v64 = v91;
  sub_269CC5DA8(v89, v91, sub_269CC69C0);
  v65 = v86;
  sub_269CC5DA8(v62, v86, sub_269C60724);
  v66 = v87;
  sub_269CC5DA8(v64, v87, sub_269CC69C0);
  sub_269CC6944(0, &qword_28034F958, sub_269CC69C0, sub_269C60724);
  sub_269CC5DA8(v65, v66 + *(v67 + 48), sub_269C60724);
  sub_269CC5E10(v62, sub_269C60724);
  v68 = v88;
  sub_269CC5E10(v63, v88);
  sub_269CC5E10(v65, sub_269C60724);
  sub_269CC5E10(v64, v68);
}

double sub_269CC532C()
{
  v1 = sub_269D99040();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = sub_269D98CA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WeatherIconView(0);
  sub_269CC6074(v0 + *(v12 + 20), v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_269D9AB70();
    v13 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x277CDF9B8])
  {
    return 70.0;
  }

  if (v14 == *MEMORY[0x277CDF9D0])
  {
    return 79.0;
  }

  (*(v9 + 8))(v11, v8);
  return 60.0;
}

double sub_269CC561C()
{
  v1 = sub_269D99040();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = sub_269D98CA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WeatherIconView(0);
  sub_269CC6074(v0 + *(v12 + 20), v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_269D9AB70();
    v13 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x277CDF9B8])
  {
    return 56.0;
  }

  if (v14 == *MEMORY[0x277CDF9D0])
  {
    return 60.0;
  }

  (*(v9 + 8))(v11, v8);
  return 52.0;
}

uint64_t sub_269CC5908(uint64_t a1)
{
  sub_269CC6FAC(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269CC5DA8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_269CC6FAC);
  return sub_269D98F30();
}

uint64_t sub_269CC59A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_269D99010();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_269CC5A08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269D98F80();
  *a1 = result;
  return result;
}

unint64_t sub_269CC5A5C()
{
  result = qword_28034F890;
  if (!qword_28034F890)
  {
    sub_269CC3040(255);
    sub_269CC7218(&qword_28034F898, sub_269CC30CC, sub_269CC5B0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F890);
  }

  return result;
}

unint64_t sub_269CC5B0C()
{
  result = qword_28034F8A0;
  if (!qword_28034F8A0)
  {
    sub_269CC314C();
    sub_269CC70C4(&qword_28034F8A8, sub_269CC31CC, sub_269CC5BDC);
    sub_269CC5CF8(&qword_280C0B5B8, &qword_280C0B5B0, &qword_280C0B580, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F8A0);
  }

  return result;
}

unint64_t sub_269CC5BDC()
{
  result = qword_28034F8B0;
  if (!qword_28034F8B0)
  {
    sub_269CC3258();
    sub_269CC5CF8(&qword_28034E2D0, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F8B0);
  }

  return result;
}

unint64_t sub_269CC5C7C()
{
  result = qword_280C0B048;
  if (!qword_280C0B048)
  {
    sub_269CC333C(255, &qword_280C0B040, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B048);
  }

  return result;
}

uint64_t sub_269CC5CF8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269CC32D0(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269CC5D48()
{
  v1 = *(type metadata accessor for LockScreenGreetingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_269CC2688(v2);
}

uint64_t sub_269CC5DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269CC5E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for LockScreenGreetingView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_269D98CA0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_269CC5FE4(void *a1)
{
  v3 = *(type metadata accessor for LockScreenGreetingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_269CC2BC4(a1, v4);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269CC6074(uint64_t a1, uint64_t a2)
{
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269CC6128()
{
  if (!qword_28034F8C8)
  {
    sub_269CC2F54(255);
    sub_269CC3564(&qword_28034F8D0, sub_269CC2F54);
    v0 = sub_269D99FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F8C8);
    }
  }
}

void sub_269CC6224(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D98BB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269CC62C4()
{
  if (!qword_28034F8E8)
  {
    type metadata accessor for WeatherIconView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F8E8);
    }
  }
}

void sub_269CC63B0()
{
  if (!qword_28034F900)
  {
    type metadata accessor for WeatherIconView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F900);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_269CC7628(0, &qword_28034F7E8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_269CC7628(0, &qword_28034F7E8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_269CC65F4()
{
  sub_269CC169C();
  if (v0 <= 0x3F)
  {
    sub_269CC7628(319, &qword_28034F7E8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269CC66B8()
{
  if (!qword_28034F920)
  {
    sub_269CC6290(255);
    sub_269CC3564(&qword_28034F928, sub_269CC6290);
    v0 = sub_269D99FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F920);
    }
  }
}

void sub_269CC674C()
{
  if (!qword_28034F938)
  {
    sub_269CC637C(255);
    sub_269CC3564(&qword_28034F940, sub_269CC637C);
    v0 = sub_269D99FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F938);
    }
  }
}

void sub_269CC6818()
{
  if (!qword_28034F948)
  {
    sub_269CC68AC(255);
    sub_269CC3564(&qword_28034F978, sub_269CC68AC);
    v0 = sub_269D99F00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F948);
    }
  }
}

void sub_269CC68E8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_269CC6944(255, a3, a4, a5);
    v6 = sub_269D9A1C0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269CC6944(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269CC69F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_269D98D00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269CC6A68()
{
  if (!qword_28034F968)
  {
    sub_269CC6F24(255, &qword_28034F970, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F968);
    }
  }
}

uint64_t sub_269CC6AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269CC6B5C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269CC6BDC()
{
  result = qword_28034F990;
  if (!qword_28034F990)
  {
    sub_269CC6F24(255, &qword_28034F970, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F990);
  }

  return result;
}

void sub_269CC6CA8()
{
  if (!qword_28034F9A0)
  {
    sub_269CC6D34();
    sub_269CC333C(255, &qword_280C0B040, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F9A0);
    }
  }
}

void sub_269CC6D34()
{
  if (!qword_28034F9A8)
  {
    sub_269CC6DB4();
    sub_269CC32D0(255, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F9A8);
    }
  }
}

void sub_269CC6DB4()
{
  if (!qword_28034F9B0)
  {
    sub_269CC69F4(255, &qword_28034F9B8, sub_269CC6E64, sub_269CC6FE0);
    sub_269CC32D0(255, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F9B0);
    }
  }
}

void sub_269CC6E98()
{
  if (!qword_28034F9C8)
  {
    sub_269CC6F24(255, &qword_28034F9D0, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F9C8);
    }
  }
}

void sub_269CC6F24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_269CC7014()
{
  result = qword_28034F9F0;
  if (!qword_28034F9F0)
  {
    sub_269CC6C80(255);
    sub_269CC70C4(&qword_28034F9F8, sub_269CC6CA8, sub_269CC7148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F9F0);
  }

  return result;
}

uint64_t sub_269CC70C4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_269CC5C7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269CC7148()
{
  result = qword_28034FA00;
  if (!qword_28034FA00)
  {
    sub_269CC6D34();
    sub_269CC7218(&qword_28034FA08, sub_269CC6DB4, sub_269CC72BC);
    sub_269CC5CF8(&qword_28034E2D0, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA00);
  }

  return result;
}

uint64_t sub_269CC7218(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_269CC5CF8(&qword_28034E0D0, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269CC72BC()
{
  result = qword_28034FA10;
  if (!qword_28034FA10)
  {
    sub_269CC69F4(255, &qword_28034F9B8, sub_269CC6E64, sub_269CC6FE0);
    sub_269CC739C();
    sub_269CC3564(&qword_28034FA38, sub_269CC6FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA10);
  }

  return result;
}

unint64_t sub_269CC739C()
{
  result = qword_28034FA18;
  if (!qword_28034FA18)
  {
    sub_269CC6E64(255);
    sub_269CC744C();
    sub_269CC3564(&qword_28034FA30, sub_269CC6F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA18);
  }

  return result;
}

unint64_t sub_269CC744C()
{
  result = qword_28034FA20;
  if (!qword_28034FA20)
  {
    sub_269CC6E98();
    sub_269CC74CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA20);
  }

  return result;
}

unint64_t sub_269CC74CC()
{
  result = qword_28034FA28;
  if (!qword_28034FA28)
  {
    sub_269CC6F24(255, &qword_28034F9D0, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA28);
  }

  return result;
}

unint64_t sub_269CC7550()
{
  result = qword_28034FA40;
  if (!qword_28034FA40)
  {
    sub_269CC7628(255, &qword_28034FA48, sub_269CC6818, MEMORY[0x277D83D88]);
    sub_269CC3564(&qword_28034FA50, sub_269CC6818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA40);
  }

  return result;
}

void sub_269CC7628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_269CC768C()
{
  result = qword_28034FA58;
  if (!qword_28034FA58)
  {
    sub_269CC69F4(255, &qword_28034FA60, sub_269CC6C80, MEMORY[0x277CDE470]);
    sub_269CC7014();
    sub_269CC3564(&qword_28034E0A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA58);
  }

  return result;
}

id static UIColor.dynamic(light:dark:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11[4] = sub_269CC7B20;
  v11[5] = v4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_269CC7F6C;
  v11[3] = &block_descriptor_17;
  v6 = _Block_copy(v11);
  v7 = a1;
  v8 = a2;
  v9 = [v5 initWithDynamicProvider_];
  _Block_release(v6);

  return v9;
}

id static UIColor.invertedGroupedCellBackground.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = sub_269CC7C58;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_269CC7F6C;
  v4[3] = &block_descriptor_3_0;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

CGColorRef __swiftcall UIColor.cgColor(with:)(UITraitCollection with)
{
  v2 = [v1 resolvedColorWithTraitCollection_];
  v3 = [v2 CGColor];

  return v3;
}

id static UIColor.invertedGroupedTableViewBackground.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2 = [v0 systemGroupedBackgroundColor];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = sub_269CC80D0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269CC7F6C;
  v8[3] = &block_descriptor_10;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

id sub_269CC7AC0(void *a1, void *a2, void *a3)
{
  v4 = [a1 userInterfaceStyle];
  if (v4)
  {
    v5 = v4 == 2;
    v6 = a3;
    if (!v5)
    {
      v6 = a2;
    }
  }

  else
  {
    v6 = a3;
  }

  return v6;
}

id static UIColor.dynamic(light:dark:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13[4] = sub_269CC7FEC;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_269CC7F6C;
  v13[3] = &block_descriptor_16;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  return v11;
}

id sub_269CC7C70(void *a1, SEL *a2, SEL *a3, double a4)
{
  v8 = [a1 userInterfaceStyle];
  if (v8)
  {
    v9 = v8 == 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = [objc_opt_self() *a3];

    return v10;
  }

  else
  {
    v11 = [objc_opt_self() *a2];
    v12 = [v11 resolvedColorWithTraitCollection_];

    v13 = [v12 colorWithAlphaComponent_];
    return v13;
  }
}

UIColor __swiftcall UIColor.resolved(with:)(UITraitCollection with)
{
  v2 = [v1 resolvedColorWithTraitCollection_];

  return v2;
}

id static UIColor.ringGoalMetColor.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 secondarySystemBackgroundColor];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = sub_269CC80D0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269CC7F6C;
  v8[3] = &block_descriptor_23;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

id static UIColor.ringGoalMissColor.getter()
{
  v0 = [objc_opt_self() systemOrangeColor];

  return v0;
}

id sub_269CC7F6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269CC7FEC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = [a1 userInterfaceStyle];
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return v4(a1);
  }

  else
  {
    return v3(a1);
  }
}

id sub_269CC8064(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 userInterfaceStyle];
  if (v4 == 2)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t SleepOnboardingViewRepresentation.init(healthStore:sleepStore:onboardingContext:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  v26 = *(a3 + 8);
  v27 = a3[2];
  v8 = [objc_allocWithZone(MEMORY[0x277D12978]) init];
  *a4 = v8;
  v9 = sub_269D97D80();
  v10 = v8;
  v11 = a1;
  v12 = a2;
  v13 = sub_269D97D70();
  type metadata accessor for HealthStatusFeatureProvider();
  v14 = swift_allocObject();
  v29 = v9;
  v30 = MEMORY[0x277D62630];
  *&v28 = v13;
  v15 = *MEMORY[0x277CCC0F0];
  v16 = objc_allocWithZone(MEMORY[0x277CCD460]);
  swift_retain_n();
  v17 = v11;
  v18 = [v16 initWithFeatureIdentifier:v15 healthStore:v17];
  v19 = sub_269CC8B20();
  v20 = MEMORY[0x277D113B8];
  v14[5] = v19;
  v14[6] = v20;
  v14[2] = v18;

  sub_269C25520(&v28, (v14 + 7));
  v21 = type metadata accessor for SleepOnboardingManager();
  v22 = swift_allocObject();
  v23 = sub_269CC88A4(v12, v17, v14, v13, v22);

  type metadata accessor for SleepOnboardingCoordinator();
  v24 = swift_allocObject();
  *(v24 + 40) = v21;
  *(v24 + 48) = &protocol witness table for SleepOnboardingManager;
  *(v24 + 16) = v23;
  *(v24 + 96) = 0;
  *(v24 + 56) = v7;
  *(v24 + 64) = v26;
  *(v24 + 80) = 0;
  *(v24 + 88) = v10;
  *(v24 + 72) = v27;
  a4[1] = v24;

  sub_269D31A08(0, 0, 0);
}

id SleepOnboardingViewRepresentation.makeCoordinator()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = type metadata accessor for SleepOnboardingViewRepresentation.Coordinator();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent];
  *v5 = v2;
  *(v5 + 1) = v1;
  v8.receiver = v4;
  v8.super_class = v3;
  v6 = v2;

  return objc_msgSendSuper2(&v8, sel_init);
}

id SleepOnboardingViewRepresentation.Coordinator.__allocating_init(_:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_269CC83A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = v4;
  a2[1] = v5;
  v6 = v4;
}

void sub_269CC8408(uint64_t a1, void *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v5 = *v4;
  *v4 = v3;
  *(v4 + 8) = v2;
  v6 = v3;
}

uint64_t sub_269CC8484@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = v4;
  a1[1] = v5;
  v6 = v4;
}

void sub_269CC84E0(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent);
  swift_beginAccess();
  v4 = *v3;
  *v3 = *a1;
}

id SleepOnboardingViewRepresentation.Coordinator.init(_:)(_OWORD *a1)
{
  *&v1[OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SleepOnboardingViewRepresentation.Coordinator();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SleepOnboardingViewRepresentation.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepOnboardingViewRepresentation.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingViewRepresentation.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269CC8700@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = type metadata accessor for SleepOnboardingViewRepresentation.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent];
  *v7 = v4;
  *(v7 + 1) = v3;
  v10.receiver = v6;
  v10.super_class = v5;
  v8 = v4;

  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_269CC87B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269CC8D44();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_269CC8818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269CC8D44();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_269CC887C()
{
  sub_269CC8D44();
  sub_269D99510();
  __break(1u);
}

void *sub_269CC88A4(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = type metadata accessor for HealthStatusFeatureProvider();
  v32 = &protocol witness table for HealthStatusFeatureProvider;
  *&v30 = a3;
  v28 = sub_269D97D80();
  v29 = MEMORY[0x277D62630];
  a5[2] = [a1 analyticsManager];
  a5[3] = a2;
  v10 = objc_opt_self();
  v11 = a2;
  v12 = [v10 hksp_healthNotificationCenter];
  type metadata accessor for SleepNotificationManager();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  a5[4] = v13;
  a5[8] = a1;
  v14 = type metadata accessor for SleepScheduleProvider();
  v15 = a1;
  v16 = SleepScheduleProvider.__allocating_init(sleepStore:)(v15);
  a5[12] = v14;
  a5[13] = &protocol witness table for SleepScheduleProvider;
  a5[9] = v16;
  v17 = v15;
  v18 = HKSPSleepStore.settings.getter();
  v19 = type metadata accessor for SleepSettingsProvider();
  v20 = objc_allocWithZone(v19);
  v21 = SleepSettingsProvider.init(sleepStore:sleepSettings:)(v17, v18);
  a5[17] = v19;
  a5[18] = &protocol witness table for SleepSettingsProvider;
  a5[14] = v21;
  a5[5] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0D0] sleepStore:v17];
  a5[6] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E0] sleepStore:v17];
  a5[7] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E8] sleepStore:v17];
  v22 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0C8] healthStore:v11];
  v23 = sub_269CC8B20();
  v24 = MEMORY[0x277D113B8];
  a5[22] = v23;
  a5[23] = v24;
  a5[19] = v22;
  v25 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0F8] healthStore:v11];
  a5[27] = v23;
  a5[28] = v24;
  a5[24] = v25;
  sub_269C25520(&v30, (a5 + 34));
  sub_269C25520(&v27, (a5 + 29));
  return a5;
}

unint64_t sub_269CC8B20()
{
  result = qword_28034F430;
  if (!qword_28034F430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034F430);
  }

  return result;
}

unint64_t sub_269CC8B94()
{
  result = qword_28034FA70;
  if (!qword_28034FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA70);
  }

  return result;
}

uint64_t sub_269CC8BE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_269CC8C30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_269CC8D44()
{
  result = qword_28034FA78;
  if (!qword_28034FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA78);
  }

  return result;
}

id WatchAppInstalledProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_269CC8DCC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

uint64_t sub_269CC8E4C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_269D98890();
}

uint64_t sub_269CC8EBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  return v1;
}

uint64_t sub_269CC8F30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_269D98890();
}

void (*sub_269CC8F9C(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

uint64_t sub_269CC9040()
{
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CC90C8(uint64_t a1)
{
  sub_269C45D88(0, &qword_28034DEF0, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_269CC926C()
{
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CC92F0(uint64_t a1)
{
  sub_269C45D88(0, &qword_28034DEF0, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_269CC9448(uint64_t *a1))(uint64_t a1, char a2)
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
  sub_269C45D88(0, &qword_28034DEF0, MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider__isWatchAppInstalled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C45F6C;
}

char *WatchAppInstalledProvider.init()()
{
  sub_269CC9A78();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D9ACD0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v31 = &v30 - v10;
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider__isWatchAppInstalled;
  v34 = 0;
  sub_269D98840();
  (*(v13 + 32))(&v0[v16], v15, v12);
  *&v0[OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider_watchAppStateObserver] = 0;
  v17 = type metadata accessor for WatchAppInstalledProvider();
  v33.receiver = v0;
  v33.super_class = v17;
  v18 = objc_msgSendSuper2(&v33, sel_init);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  v22 = HKSPActivePairedDeviceApplicationsInstalledDistributedNotification();
  if (!v22)
  {
    sub_269D9A630();
    v22 = sub_269D9A5F0();
  }

  v23 = v31;
  sub_269D9ACE0();

  v24 = [v19 defaultCenter];
  v25 = HKSPActivePairedDeviceApplicationsUninstalledDistributedNotification();
  if (!v25)
  {
    sub_269D9A630();
    v25 = sub_269D9A5F0();
  }

  v26 = v32;
  sub_269D9ACE0();

  sub_269CC9D74(&qword_280C0B4B0, MEMORY[0x277CC9DB0]);
  sub_269D988D0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269CC9D74(&qword_28034FA98, sub_269CC9A78);
  v27 = sub_269D98900();

  (*(v3 + 8))(v5, v2);
  *&v20[OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider_watchAppStateObserver] = v27;

  sub_269CCA164();

  v28 = *(v7 + 8);
  v28(v26, v6);
  v28(v23, v6);
  return v20;
}

void sub_269CC9A78()
{
  if (!qword_28034FA88)
  {
    sub_269D9ACD0();
    sub_269CC9D74(&qword_280C0B4B0, MEMORY[0x277CC9DB0]);
    v0 = sub_269D98700();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FA88);
    }
  }
}

uint64_t type metadata accessor for WatchAppInstalledProvider()
{
  result = qword_28034FAA0;
  if (!qword_28034FAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CC9B58()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v2 = sub_269D98250();
    __swift_project_value_buffer(v2, qword_280C0B728);
    v3 = v1;
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getObjectType();
      sub_269CCAC74();
      v8 = sub_269D9A660();
      v10 = sub_269C2EACC(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_269C18000, v4, v5, "[%s] Responding to watch application change", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    sub_269CCA164();
  }

  else
  {
  }
}

uint64_t sub_269CC9D74(unint64_t *a1, void (*a2)(uint64_t))
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

id WatchAppInstalledProvider.__allocating_init(isWatchAppInstalled:)(char a1)
{
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  v9 = OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider__isWatchAppInstalled;
  v13 = 0;
  sub_269D98840();
  (*(v5 + 32))(&v8[v9], v7, v4);
  *&v8[OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider_watchAppStateObserver] = 0;
  swift_beginAccess();
  (*(v5 + 8))(&v8[v9], v4);
  v12 = a1;
  sub_269D98840();
  swift_endAccess();
  v11.receiver = v8;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id WatchAppInstalledProvider.init(isWatchAppInstalled:)(char a1)
{
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider__isWatchAppInstalled;
  v13 = 0;
  sub_269D98840();
  (*(v5 + 32))(&v1[v8], v7, v4);
  *&v1[OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider_watchAppStateObserver] = 0;
  swift_beginAccess();
  (*(v5 + 8))(&v1[v8], v4);
  v12 = a1;
  sub_269D98840();
  swift_endAccess();
  v9 = type metadata accessor for WatchAppInstalledProvider();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_269CCA164()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4[4] = sub_269CCAB90;
    v4[5] = v2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_269C7A600;
    v4[3] = &block_descriptor_18;
    v3 = _Block_copy(v4);

    [v1 hksp:v3 activePairedDeviceHasSleepAppInstalledWithCompletion:?];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_269CCA26C(char a1, void *a2)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v9 = sub_269D98250();
      __swift_project_value_buffer(v9, qword_280C0B728);
      v10 = v8;
      v11 = a2;
      v12 = sub_269D98230();
      v13 = sub_269D9AB60();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v42 = v15;
        *v14 = 136315394;
        ObjectType = swift_getObjectType();
        sub_269CCAC74();
        v16 = sub_269D9A660();
        v18 = sub_269C2EACC(v16, v17, &v42);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        ObjectType = a2;
        v19 = a2;
        sub_269C80B44();
        v20 = sub_269D9A660();
        v22 = sub_269C2EACC(v20, v21, &v42);

        *(v14 + 14) = v22;
        _os_log_impl(&dword_269C18000, v12, v13, "[%s] Error fetching watch sleep app: %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v15, -1, -1);
        MEMORY[0x26D652460](v14, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v23 = sub_269D98250();
      __swift_project_value_buffer(v23, qword_280C0B728);
      v24 = v8;
      v25 = sub_269D98230();
      v26 = sub_269D9AB80();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315394;
        ObjectType = swift_getObjectType();
        sub_269CCAC74();
        v29 = sub_269D9A660();
        v31 = sub_269C2EACC(v29, v30, &v42);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        if (a1)
        {
          v32 = 1702195828;
        }

        else
        {
          v32 = 0x65736C6166;
        }

        if (a1)
        {
          v33 = 0xE400000000000000;
        }

        else
        {
          v33 = 0xE500000000000000;
        }

        v34 = sub_269C2EACC(v32, v33, &v42);

        *(v27 + 14) = v34;
        _os_log_impl(&dword_269C18000, v25, v26, "[%s] Sleep app is installed: %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v28, -1, -1);
        MEMORY[0x26D652460](v27, -1, -1);
      }

      v35 = sub_269D9A900();
      (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
      sub_269D9A8E0();
      v36 = v24;
      v37 = sub_269D9A8D0();
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D85700];
      *(v38 + 16) = v37;
      *(v38 + 24) = v39;
      *(v38 + 32) = v36;
      *(v38 + 40) = a1 & 1;
      sub_269C79F94(0, 0, v6, &unk_269DA50D0, v38);
    }
  }
}

uint64_t sub_269CCA710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 33) = a5;
  *(v5 + 16) = a4;
  sub_269D9A8E0();
  *(v5 + 24) = sub_269D9A8D0();
  v7 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269CCA7AC, v7, v6);
}

uint64_t sub_269CCA7AC()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;
  v3 = v2;
  sub_269D98890();
  v4 = *(v0 + 8);

  return v4();
}

id WatchAppInstalledProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchAppInstalledProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269CCA930@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WatchAppInstalledProvider();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

void sub_269CCA978()
{
  sub_269C45D88(319, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269CCABB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C71C08;

  return sub_269CCA710(a1, v4, v5, v6, v7);
}

unint64_t sub_269CCAC74()
{
  result = qword_28034FAB0;
  if (!qword_28034FAB0)
  {
    type metadata accessor for WatchAppInstalledProvider();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034FAB0);
  }

  return result;
}

uint64_t sub_269CCACE8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  sub_269CCB36C(0, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v16[0] = v7;
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;

  v11 = a1;
  sub_269D99EB0();
  v18 = a2;
  v19 = a3;
  sub_269CCB2CC();
  sub_269D99E90();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  sub_269CCB36C(0, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
  sub_269C9D934();
  sub_269CCB3C0();
  v13 = v11;

  v14 = v16[0];
  sub_269D99C00();

  return (*(v17 + 8))(v9, v14);
}

uint64_t sub_269CCAF74(uint64_t a1, char a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CCB4C0(a2 & 1, a3);
}

uint64_t sub_269CCB020@<X0>(uint64_t a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v2 = qword_280C0D990;
  sub_269D972C0();

  sub_269C3EEE8();
  v3 = sub_269D99960();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_269CCB198@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *MEMORY[0x277D62120];
  sub_269CCB2CC();
  v5 = a1;
  v6 = v4;
  sub_269D99E90();
  LOBYTE(v4) = sub_269D995D0();

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 33) = v4;
  return result;
}

void sub_269CCB2CC()
{
  if (!qword_28034E300)
  {
    v0 = sub_269D99EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E300);
    }
  }
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

void sub_269CCB36C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_269CCB3C0()
{
  result = qword_28034FAC0;
  if (!qword_28034FAC0)
  {
    sub_269CCB36C(255, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
    sub_269CCB46C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FAC0);
  }

  return result;
}

unint64_t sub_269CCB46C()
{
  result = qword_28034FAC8;
  if (!qword_28034FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FAC8);
  }

  return result;
}

uint64_t sub_269CCB4C0(char a1, uint64_t a2)
{
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_28035E4B8);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_269C2EACC(0xD000000000000012, 0x8000000269DA50F0, v10);
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Opening schedule editor", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  LOBYTE(v10[0]) = a1 & 1;
  v10[1] = a2;
  sub_269CCB2CC();
  return sub_269D99E80();
}

void SleepScheduleClock.set(bedtimeComponents:wakeUpComponents:timeInBedGoal:alarmEnabled:isForSingleDayOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  *&v50[0] = a3;
  v62 = a1;
  v11 = MEMORY[0x277D83D88];
  sub_269CCD978(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v50 - v13;
  sub_269CCD978(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v11);
  MEMORY[0x28223BE20](v15 - 8);
  v63 = v50 - v16;
  v17 = sub_269D971F0();
  v64 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v61 = v50 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v50 - v23;
  v25 = *(v6 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 152);
  v26 = *(v6 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 160);
  v60 = v6;
  v27 = (v6 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 1);
  v58 = a5;
  v59 = a6;
  v57 = a4;
  v55 = v20;
  v56 = a2;
  if (v29 == 60 && __OFADD__(*&v28, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v30 = sub_269D977A0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v52 = v31 + 56;
  v53 = v32;
  v32(v63, 1, 1, v30);
  v33 = sub_269D97810();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  *&v50[2] = v34 + 56;
  v51 = v35;
  v35(v14, 1, 1, v33);
  v54 = v14;
  sub_269D971D0();
  v36 = sub_269C6C098();
  v37 = v62;
  v38 = sub_269D9A560();
  v39 = *(v64 + 8);
  v39(v24, v17);
  if ((v38 & 1) == 0)
  {
    v40 = v61;
    (*(v64 + 16))(v61, v37, v17);
    sub_269D1F790(v40);
  }

  v41 = *(v27 + 2);
  v42 = *(v27 + 3);
  *&v50[1] = v36;
  if (v42 == 60 && __OFADD__(v41, 1))
  {
    goto LABEL_21;
  }

  v53(v63, 1, 1, v30);
  v51(v54, 1, 1, v33);
  v43 = v55;
  sub_269D971D0();
  v44 = v56;
  v45 = sub_269D9A560();
  v39(v43, v17);
  if ((v45 & 1) == 0)
  {
    v46 = v61;
    (*(v64 + 16))(v61, v44, v17);
    sub_269D1F92C(v46);
  }

  v48 = v58;
  v47 = v59;
  v49 = v57;
  if (v27[5])
  {
    if (v57)
    {
      goto LABEL_15;
    }
  }

  else if ((v57 & 1) == 0 && v27[4] == v50[0])
  {
    goto LABEL_15;
  }

  v27[4] = v50[0];
  *(v27 + 40) = v49 & 1;
LABEL_15:
  if (*(v27 + 41) != (v48 & 1))
  {
    *(v27 + 41) = v48 & 1;
  }

  if (*(v27 + 42) != (v47 & 1))
  {
    *(v27 + 42) = v47 & 1;
  }

  sub_269D1FAC8(v25, v26);
  swift_endAccess();
  sub_269CCBCFC();
}

uint64_t SleepScheduleClock.timeInBedGoalMet.getter()
{
  v1 = v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model;
  swift_beginAccess();
  v5 = *(v1 + 27);
  if (BYTE13(v5))
  {
    return 2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144);
  if (HIBYTE(v5))
  {
    sub_269CD2560();
  }

  else
  {
    sub_269C67AF0();
  }

  return *(&v5 + 5) <= v3 * round(v4 / v3);
}

void sub_269CCBCFC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring);
  v3 = sub_269CCE9B0();
  [v2 setPath_];

  v4 = sub_269CCE9B0();
  [v2 setShadowPath_];

  v5 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand);
  [v5 setCenter_];
  v6 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand);
  [v6 setCenter_];
  v7 = (v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v8 = *&v6[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_symbol];
  *&v6[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_symbol] = *(v7 + 41) | 0x1000;
  LOWORD(v64[0]) = v8;
  v56 = v6;
  sub_269D2F44C(v64);
  *&v67[11] = *(v7 + 27);
  v9 = v7[1];
  v66 = *v7;
  *v67 = v9;
  v10 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v57 = v7;
  if (v67[24])
  {
    goto LABEL_7;
  }

  v11 = *(v10 + 144);
  v12 = *&v67[16];
  if (v67[26])
  {
    sub_269CD2560();
  }

  else
  {
    sub_269C67AF0();
  }

  if (v12 <= v11 * round(v13 / v11))
  {
LABEL_7:
    sub_269D307FC(v58);
  }

  else
  {
    sub_269D30C08(v58);
  }

  v15 = v58[3];
  v49 = v59;
  v14 = v59;
  v17 = v58[1];
  v16 = v58[2];
  v18 = v58[0];
  v19 = *(v10 + 112);
  v20 = &v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v53 = *&v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8];
  v54 = *&v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v50 = *&v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24];
  v51 = *&v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16];
  *v20 = v58[0];
  *(v20 + 1) = v17;
  *(v20 + 2) = v16;
  *(v20 + 3) = v15;
  v64[0] = v54;
  v64[1] = v53;
  v64[2] = v51;
  v64[3] = v50;
  v52 = *(v20 + 2);
  *(v20 + 4) = v14;
  *(v20 + 5) = v19;
  v65 = v52;
  v21 = v14;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v21;
  v27 = v25;
  v28 = v24;
  v29 = v23;
  v30 = v22;
  v31 = v29;
  v32 = v28;
  v33 = v27;
  sub_269D2F550(v64);

  v34 = &v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v36 = *&v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v35 = *&v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8];
  v38 = *&v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16];
  v37 = *&v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24];
  *v34 = v30;
  *(v34 + 1) = v31;
  *(v34 + 2) = v32;
  *(v34 + 3) = v33;
  v62[0] = v36;
  v62[1] = v35;
  v62[2] = v38;
  v62[3] = v37;
  v55 = *(v34 + 2);
  *(v34 + 4) = v49;
  *(v34 + 5) = v19;
  v63 = v55;
  v39 = v26;
  v40 = v33;
  v41 = v32;
  v42 = v31;
  v43 = v30;
  sub_269D2F550(v62);

  sub_269CCE6F0();
  v44 = objc_opt_self();
  [v44 begin];
  [v44 setDisableActions_];
  v45 = (*(v57 + 1) / 60.0 + *v57) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    swift_once();
  }

    ;
  }

    ;
  }

  v47 = v57[1];
  v60 = *v57;
  v61[0] = v47;
  *(v61 + 11) = *(v57 + 27);
  sub_269C67AF0();
  sub_269CD22C8(i, v48);
  [v44 commit];
}

void sub_269CCC1A4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_gestureRecognizer];
  v3 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration];
  [v2 setMinimumPressDuration_];
  [v2 addTarget:v1 action:sel_gestureReconizerDidChange_];
  [v2 setDelegate_];
  [v2 setCancelsTouchesInView_];
  [v1 addGestureRecognizer_];
  v4 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track];
  [v4 setFillColor_];
  [v4 setLineWidth_];
  v5 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring];
  [v5 setShadowOffset_];
  [v5 setShadowRadius_];
  LODWORD(v6) = *(v3 + 16);
  [v5 setShadowOpacity_];
  v7 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
  *&v7[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_configuration] = vextq_s8(*(v3 + 120), *(v3 + 120), 8uLL);
  [v7 setNeedsLayout];
  v8 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand];
  [v8 frame];
  [v8 setFrame_];
  v9 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand];
  [v9 frame];
  [v9 setFrame_];
  v10 = *(v3 + 14);
  v12 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8];
  v13 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16];
  v14 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24];
  v34[0] = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v11 = v34[0];
  v34[1] = v12;
  v34[2] = v13;
  v34[3] = v14;
  v15 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 32];
  *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 40] = v10;
  v35 = v15;
  v16 = v15;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_269D2F550(v34);

  v21 = *(v3 + 14);
  v23 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8];
  v24 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16];
  v25 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24];
  v32[0] = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v22 = v32[0];
  v32[1] = v23;
  v32[2] = v24;
  v32[3] = v25;
  v26 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 32];
  *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 40] = v21;
  v33 = v26;
  v27 = v26;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  sub_269D2F550(v32);

  sub_269CCE6F0();
}

id sub_269CCC4EC(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_gestureRecognizer;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  v7 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v8 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v9 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand;
  sub_269D307FC(v47);
  v44[0] = 0;
  v10 = type metadata accessor for SleepScheduleClockHand();
  v11 = objc_allocWithZone(v10);
  *&v3[v9] = sub_269D2F848(v44, v47);
  v12 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand;
  sub_269D307FC(v48);
  v44[0] = 4097;
  v13 = objc_allocWithZone(v10);
  *&v3[v12] = sub_269D2F848(v44, v48);
  v14 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v17 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  *(v17 + 27) = *(a1 + 27);
  v18 = a1[1];
  *v17 = *a1;
  *(v17 + 1) = v18;
  memcpy(&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration], a2, 0x188uLL);
  v19 = *(a2 + 344);
  v49[8] = *(a2 + 328);
  v49[9] = v19;
  v20 = *(a2 + 376);
  v49[10] = *(a2 + 360);
  v49[11] = v20;
  v21 = *(a2 + 280);
  v49[4] = *(a2 + 264);
  v49[5] = v21;
  v22 = *(a2 + 312);
  v49[6] = *(a2 + 296);
  v49[7] = v22;
  v23 = *(a2 + 216);
  v49[0] = *(a2 + 200);
  v49[1] = v23;
  v24 = *(a2 + 248);
  v49[2] = *(a2 + 232);
  v49[3] = v24;
  v25 = objc_allocWithZone(type metadata accessor for SleepScheduleClockDial());
  sub_269C6AAB4(a2, v44);
  sub_269C6AB64(v49, v44);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dial] = sub_269CE8E8C(v49);
  v27 = *(a2 + 120);
  v26 = *(a2 + 128);
  v28 = objc_allocWithZone(type metadata accessor for RingGrabber());
  *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber] = sub_269CD1CF0(v26, v27);
  v43.receiver = v3;
  v43.super_class = type metadata accessor for SleepScheduleClock();
  v29 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v30 = sub_269D34838();
  v31 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration:v30 view:v29];

  v32 = sub_269C1B0B8(0, &qword_28034FC10);
  v45 = v32;
  v46 = &off_287AA50F8;
  *v44 = v31;
  v33 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
  swift_beginAccess();
  sub_269CD3534(v44, v29 + v33);
  swift_endAccess();
  v34 = sub_269D3485C();
  v35 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration:v34 view:v29];

  v45 = v32;
  v46 = &off_287AA50F8;
  *v44 = v35;
  v36 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
  swift_beginAccess();
  sub_269CD3534(v44, v29 + v36);
  swift_endAccess();
  sub_269CCD978(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_269D9EBF0;
  v38 = sub_269D983D0();
  v39 = MEMORY[0x277D74DB8];
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = sub_269D98290();
  v41 = MEMORY[0x277D74BF0];
  *(v37 + 48) = v40;
  *(v37 + 56) = v41;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_269C30054();
  sub_269D9AD50();
  swift_unknownObjectRelease();

  sub_269CCCA08();
  sub_269CCC1A4();
  sub_269C6AB10(a2);

  return v29;
}

void sub_269CCC93C()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_269CCC1A4();
  }

  else
  {
  }
}

void sub_269CCCA08()
{
  v1 = [v0 layer];
  [v1 addSublayer_];

  [v0 addSubview_];
  v2 = [v0 layer];
  [v2 addSublayer_];

  v4 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v4 addSublayer_];
  v3 = [v0 layer];
  [v3 addSublayer_];

  [v0 addSubview_];
  [v0 addSubview_];
}

id sub_269CCCC08()
{
  v1 = v0;
  swift_getObjectType();
  v18.receiver = v0;
  v18.super_class = type metadata accessor for SleepScheduleClock();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Layout subviews", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dial];
  v11 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88];
  [v1 bounds];
  v19.origin.x = sub_269CD18D0(v12, v13, v14, v15);
  v20 = CGRectInset(v19, v11, v11);
  return [v10 setFrame_];
}

void sub_269CCCE90(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v33.receiver = v2;
  v33.super_class = type metadata accessor for SleepScheduleClock();
  objc_msgSendSuper2(&v33, sel_layoutSublayersOfLayer_, a1);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B728);
  v5 = sub_269D98230();
  v6 = sub_269D9AB50();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v32[0] = v8;
    *v7 = 136446210;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, v32);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Layout sublayers", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  v12 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track];
  [v2 bounds];
  [v12 setFrame_];
  [v2 bounds];
  sub_269D9AD20();
  v13 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration];
  v16 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v14 startAngle:v15 endAngle:*&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5 - (*&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88] * 0.5) clockwise:{0.0, 6.28318531}];
  v17 = [v16 CGPath];

  [v12 setPath_];
  v18 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring];
  [v2 bounds];
  [v18 setFrame_];
  v19 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
  [v19 transform];
  v20 = *(MEMORY[0x277CD9DE8] + 80);
  v28 = *(MEMORY[0x277CD9DE8] + 64);
  v29 = v20;
  v21 = *(MEMORY[0x277CD9DE8] + 112);
  v30 = *(MEMORY[0x277CD9DE8] + 96);
  v31 = v21;
  v22 = *(MEMORY[0x277CD9DE8] + 16);
  v24 = *MEMORY[0x277CD9DE8];
  v25 = v22;
  v23 = *(MEMORY[0x277CD9DE8] + 48);
  v26 = *(MEMORY[0x277CD9DE8] + 32);
  v27 = v23;
  [v19 setTransform_];
  [v19 setFrame_];
  v28 = v32[4];
  v29 = v32[5];
  v30 = v32[6];
  v31 = v32[7];
  v24 = v32[0];
  v25 = v32[1];
  v26 = v32[2];
  v27 = v32[3];
  [v19 setTransform_];
  [v2 bounds];
  sub_269D9AD20();
  [v19 setPosition_];
  sub_269CCBCFC();
}

id sub_269CCD244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

uint64_t sub_269CCD470()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  result = swift_beginAccess();
  v3 = v1[2];
  if (__OFSUB__(v3, *v1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v1[3];
  v5 = v1[1];
  v6 = v4 - v5;
  if (__OFSUB__(v4, v5))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    if (v6 <= 0xFFFFFFFFFFFFFFC4)
    {
      v6 = -60;
    }

    v7 = v5 + v6;
    v8 = v7 == v4 ? v1[3] : v4 + 1;
    v9 = (v7 - v8) / 0x3CuLL;
    if (v7 != v4)
    {
      ++v9;
    }

    if ((v3 ^ 0x8000000000000000) - *v1 <= v9)
    {
      goto LABEL_15;
    }
  }

  return result;
}

id SleepScheduleClock.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_269CCD978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void SleepScheduleClock.accessibilitySetModel(_:wakeUpComponents:timeInBedGoal:alarmEnabled:)(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_269D97110();
  v8 = sub_269D97110();
  [v4 accessibilitySetModel:v7 wakeUpComponents:v8 timeInBedGoal:a4 & 1 alarmEnabled:0 isForSingleDayOverride:a1];
}

void SleepScheduleClock.accessibilitySetModel(_:wakeUpComponents:timeInBedGoal:alarmEnabled:isForSingleDayOverride:)(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v58 = a4;
  v61 = a1;
  v9 = MEMORY[0x277D83D88];
  sub_269CCD978(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v49 - v11;
  sub_269CCD978(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v9);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v49 - v14;
  v16 = sub_269D971F0();
  v62 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v60 = v49 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v49 - v22;
  v24 = *&v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 152];
  v25 = *&v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 160];
  v59 = v5;
  v26 = &v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v27 = *v26;
  v28 = *(v26 + 1);
  v57 = a3;
  v55 = v19;
  v56 = a2;
  if (v28 == 60 && __OFADD__(*&v27, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v29 = sub_269D977A0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v51 = v30 + 56;
  v52 = v31;
  v31(v15, 1, 1, v29);
  v32 = sub_269D97810();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v49[1] = v33 + 56;
  v50 = v34;
  v34(v12, 1, 1, v32);
  v53 = v15;
  v54 = v12;
  sub_269D971D0();
  sub_269C6C098();
  v35 = v61;
  v36 = sub_269D9A560();
  v37 = *(v62 + 8);
  v37(v23, v16);
  if ((v36 & 1) == 0)
  {
    v38 = v60;
    (*(v62 + 16))(v60, v35, v16);
    sub_269D1F790(v38);
  }

  v39 = *(v26 + 2);
  v40 = *(v26 + 3);
  v49[0] = v37;
  if (v40 == 60 && __OFADD__(v39, 1))
  {
    goto LABEL_18;
  }

  v52(v53, 1, 1, v29);
  v50(v54, 1, 1, v32);
  v41 = v55;
  sub_269D971D0();
  v42 = v56;
  v43 = sub_269D9A560();
  (v49[0])(v41, v16);
  if ((v43 & 1) == 0)
  {
    v44 = v60;
    (*(v62 + 16))(v60, v42, v16);
    sub_269D1F92C(v44);
  }

  v45 = v59;
  v46 = v57;
  if ((v26[5] & 1) != 0 || v26[4] != a5)
  {
    v26[4] = a5;
    *(v26 + 40) = 0;
  }

  v47 = v46 & 1;
  v48 = v58;
  if (*(v26 + 41) != v47)
  {
    *(v26 + 41) = v47;
  }

  if (*(v26 + 42) != (v48 & 1))
  {
    *(v26 + 42) = v48 & 1;
  }

  sub_269D1FAC8(v24, v25);
  swift_endAccess();
  sub_269CCBCFC();
  [v45 sendActionsForControlEvents_];
  sub_269CCBCFC();
}

id sub_269CCE53C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, double))
{
  v6 = sub_269D971F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  v11 = swift_beginAccess();
  v12 = v10[1];
  v15 = *v10;
  v16[0] = v12;
  *(v16 + 11) = *(v10 + 27);
  a4(v11, *(a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144));
  v13 = sub_269D97110();
  (*(v7 + 8))(v9, v6);

  return v13;
}

void sub_269CCE6F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track];
  v3 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration];
  v4 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 16];
  v5 = [v1 traitCollection];
  v6 = [v4 resolvedColorWithTraitCollection_];
  v7 = [v6 CGColor];

  [v2 setStrokeColor_];
  v8 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v24 = *(v8 + 27);
  if (BYTE13(v24))
  {
    goto LABEL_7;
  }

  v9 = *(v3 + 18);
  if (HIBYTE(v24))
  {
    sub_269CD2560();
  }

  else
  {
    sub_269C67AF0();
  }

  if (*(&v24 + 5) <= v9 * round(v10 / v9))
  {
LABEL_7:
    v12 = 24;
    v11 = v3;
  }

  else
  {
    v11 = (v3 + 8);
    v12 = 32;
  }

  v13 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring];
  v14 = *v11;
  v15 = [v1 traitCollection];
  v16 = [v14 resolvedColorWithTraitCollection_];
  v17 = [v16 CGColor];

  [v13 setFillColor_];
  v18 = [*(v3 + 5) CGColor];
  [v13 setShadowColor_];

  v19 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
  v20 = *&v3[v12];
  v21 = [v1 traitCollection];
  v22 = [v20 resolvedColorWithTraitCollection_];
  v23 = [v22 CGColor];

  [*(v19 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture) setStrokeColor_];
}

id sub_269CCE9B0()
{
  [v0 bounds];
  sub_269D9AD20();
  v16 = v1;
  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72];
  v5 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80];
  v6 = &v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v7 = (v6[1] / 60.0 + *v6) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    swift_once();
  }

  v8 = *&qword_28035E4B0;
    ;
  }

    ;
  }

    ;
  }

    ;
  }

  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v16 startAngle:v3 endAngle:v4 * 0.5 - v5 clockwise:{i, j}];
  [v11 addArcWithCenter:1 radius:sub_269CCEE50() startAngle:? endAngle:? clockwise:?];
  [v0 bounds];
  sub_269D9AD20();
    ;
  }

    ;
  }

    ;
  }

    ;
  }

  [v11 addArcWithCenter:0 radius:*&v16 startAngle:? endAngle:? clockwise:?];
  [v11 addArcWithCenter:1 radius:sub_269CCECFC() startAngle:? endAngle:? clockwise:?];
  [v11 closePath];
  v14 = [v11 CGPath];

  return v14;
}

CGFloat sub_269CCECFC()
{
  v1 = &v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v2 = (v1[1] / 60.0 + *v1) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    swift_once();
  }

    ;
  }

    ;
  }

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5 - (*&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88] * 0.5);
  v5 = __sincos_stret(i).__cosval * v4;
  [v0 bounds];
  v6 = CGRectGetMidX(v8) + v5;
  [v0 bounds];
  CGRectGetMidY(v9);
  return v6;
}

CGFloat sub_269CCEE50()
{
  v1 = &v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v2 = (v1[3] / 60.0 + v1[2]) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    swift_once();
  }

    ;
  }

    ;
  }

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5 - (*&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88] * 0.5);
  v5 = __sincos_stret(i).__cosval * v4;
  [v0 bounds];
  v6 = CGRectGetMidX(v8) + v5;
  [v0 bounds];
  CGRectGetMidY(v9);
  return v6;
}

void sub_269CCEFA4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 state];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        if (qword_280C0B720 != -1)
        {
          swift_once();
        }

        v18 = sub_269D98250();
        __swift_project_value_buffer(v18, qword_280C0B728);
        v19 = sub_269D98230();
        v20 = sub_269D9AB50();
        if (!os_log_type_enabled(v19, v20))
        {
          goto LABEL_39;
        }

        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = 136446210;
        v23 = sub_269D9B4D0();
        v25 = sub_269C2EACC(v23, v24, &v44);

        *(v21 + 4) = v25;
        v26 = "[%{public}s] Gesture ended";
        break;
      case 4:
        if (qword_280C0B720 != -1)
        {
          swift_once();
        }

        v39 = sub_269D98250();
        __swift_project_value_buffer(v39, qword_280C0B728);
        v19 = sub_269D98230();
        v20 = sub_269D9AB50();
        if (!os_log_type_enabled(v19, v20))
        {
LABEL_39:

          v5 = sel_gestureRecognizerDidEnd_;
          goto LABEL_40;
        }

        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = 136446210;
        v40 = sub_269D9B4D0();
        v42 = sub_269C2EACC(v40, v41, &v44);

        *(v21 + 4) = v42;
        v26 = "[%{public}s] Gesture cancelled";
        break;
      case 5:
        if (qword_280C0B720 != -1)
        {
          swift_once();
        }

        v6 = sub_269D98250();
        __swift_project_value_buffer(v6, qword_280C0B728);
        oslog = sub_269D98230();
        v7 = sub_269D9AB50();
        if (!os_log_type_enabled(oslog, v7))
        {
          goto LABEL_26;
        }

        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v44 = v9;
        *v8 = 136446210;
        v10 = sub_269D9B4D0();
        v12 = sub_269C2EACC(v10, v11, &v44);

        *(v8 + 4) = v12;
        v13 = "[%{public}s] Gesture failed";
LABEL_25:
        _os_log_impl(&dword_269C18000, oslog, v7, v13, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x26D652460](v9, -1, -1);
        MEMORY[0x26D652460](v8, -1, -1);

        return;
      default:
        goto LABEL_21;
    }

    _os_log_impl(&dword_269C18000, v19, v20, v26, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D652460](v22, -1, -1);
    MEMORY[0x26D652460](v21, -1, -1);
    goto LABEL_39;
  }

  switch(v4)
  {
    case 0:
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v14 = sub_269D98250();
      __swift_project_value_buffer(v14, qword_280C0B728);
      oslog = sub_269D98230();
      v7 = sub_269D9AB50();
      if (!os_log_type_enabled(oslog, v7))
      {
        goto LABEL_26;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v44 = v9;
      *v8 = 136446210;
      v15 = sub_269D9B4D0();
      v17 = sub_269C2EACC(v15, v16, &v44);

      *(v8 + 4) = v17;
      v13 = "[%{public}s] Gesture is possible";
      goto LABEL_25;
    case 1:
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v31 = sub_269D98250();
      __swift_project_value_buffer(v31, qword_280C0B728);
      v32 = sub_269D98230();
      v33 = sub_269D9AB50();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v34 = 136446210;
        v36 = sub_269D9B4D0();
        v38 = sub_269C2EACC(v36, v37, &v44);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_269C18000, v32, v33, "[%{public}s] Gesture began", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x26D652460](v35, -1, -1);
        MEMORY[0x26D652460](v34, -1, -1);
      }

      v5 = sel_gestureRecognizerDidStart_;
      goto LABEL_40;
    case 2:
      v5 = sel_gestureRecognizerDidMove_;
LABEL_40:

      [v2 v5];
      return;
  }

LABEL_21:
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v27 = sub_269D98250();
  __swift_project_value_buffer(v27, qword_280C0B728);
  oslog = sub_269D98230();
  v7 = sub_269D9AB60();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136446210;
    v28 = sub_269D9B4D0();
    v30 = sub_269C2EACC(v28, v29, &v44);

    *(v8 + 4) = v30;
    v13 = "[%{public}s] Unknown gesture state";
    goto LABEL_25;
  }

LABEL_26:
}

Swift::Bool __swiftcall SleepScheduleClock.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer _, UIGestureRecognizer shouldRecognizeSimultaneouslyWith)
{
  v3 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_gestureRecognizer);
  sub_269C1B0B8(0, &qword_28034FB10);
  v4 = v3;
  v5 = sub_269D9ADD0();

  return (v5 & 1) == 0;
}

Swift::Bool __swiftcall SleepScheduleClock.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer _, UITouch shouldReceive)
{
  [(objc_class *)shouldReceive.super.isa locationInView:v2];
  v4 = v3;
  v6 = v5;
  [*(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand) frame];
  v9.x = v4;
  v9.y = v6;
  if (CGRectContainsPoint(v11, v9))
  {
    return 1;
  }

  [*(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand) frame];
  v10.x = v4;
  v10.y = v6;
  if (CGRectContainsPoint(v12, v10))
  {
    return 1;
  }

  return sub_269CCF8A8(v4, v6);
}

BOOL sub_269CCF8A8(double a1, double i)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88] * 0.5;
  v7 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5 - (v6 + *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80]);
  v8 = v7 - v6;
  v9 = v6 + v7;
  if (v7 - v6 > v6 + v7)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  [v2 bounds];
  v10 = a1 - CGRectGetMidX(v35);
  [v2 bounds];
  MidY = CGRectGetMidY(v36);
  v12 = sqrt(v10 * v10 + (i - MidY) * (i - MidY));
  if (v8 > v12 || v12 > v9)
  {
    return 0;
  }

  [v2 bounds];
  v15 = a1 - CGRectGetMidX(v37);
  [v2 bounds];
  v16 = CGRectGetMidY(v38);
  v17 = atan2(i - v16, v15);
    ;
  }

    ;
  }

  if (qword_280C0B720 != -1)
  {
    goto LABEL_18;
  }

LABEL_13:
  v18 = sub_269D98250();
  __swift_project_value_buffer(v18, qword_280C0B728);
  v19 = sub_269D98230();
  v20 = sub_269D9AB50();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v33 = v22;
    *v21 = 136446466;
    v23 = sub_269D9B4D0();
    v25 = sub_269C2EACC(v23, v24, &v33);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_269CD33F0(0, &qword_28034E6B0, &qword_28034FC00, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_269D9EBE0;
    *(v26 + 56) = MEMORY[0x277D85048];
    *(v26 + 64) = sub_269CD34E0();
    *(v26 + 32) = i / 3.14159265;
    v27 = sub_269D9A640();
    v29 = sub_269C2EACC(v27, v28, &v33);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_269C18000, v19, v20, "[%{public}s] Checking angle: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v22, -1, -1);
    MEMORY[0x26D652460](v21, -1, -1);
  }

  v30 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v31 = *(v30 + 1);
  v33 = *v30;
  v34[0] = v31;
  *(v34 + 11) = *(v30 + 27);
  return sub_269D1F2A4(i);
}

uint64_t sub_269CCFD5C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_269D9B250();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v60[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 locationInView_];
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v12 = v9 - CGRectGetMidX(v67);
  [v2 bounds];
  MidY = CGRectGetMidY(v68);
    ;
  }

    ;
  }

  v15 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand];
  [v15 frame];
  v65.x = v9;
  v65.y = v11;
  if (CGRectContainsPoint(v69, v65))
  {
    v16 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
    swift_beginAccess();
    v17 = (v16[1] / 60.0 + *v16) / 24.0 * 6.28318531;
    if (qword_28034D638 != -1)
    {
      swift_once();
    }

    v18 = *&qword_28035E4B0;
      ;
    }

      ;
    }

    [v15 setHighlighted_];
    v20 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
      ;
    }

      ;
    }

    (*(v5 + 104))(v7, *MEMORY[0x277D84680], v4);
    v22 = sub_269CD1C9C();
    v23 = sub_269CD1A84(v7, v22, k);
    (*(v5 + 8))(v7, v4);
    v24 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset;
    *(v20 + v24) = fmod(v23 - k + *(v20 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset), *(v20 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle));
    v25 = 1;
    *(v20 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted) = 1;
  }

  else
  {
    v26 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand];
    [v26 frame];
    v66.x = v9;
    v66.y = v11;
    v27 = CGRectContainsPoint(v70, v66);
    v28 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
    if (v27)
    {
      swift_beginAccess();
      v29 = (v28[3] / 60.0 + v28[2]) / 24.0 * 6.28318531;
      if (qword_28034D638 != -1)
      {
        swift_once();
      }

        ;
      }

        ;
      }

      [v26 setHighlighted_];
      v25 = 2;
    }

    else
    {
      swift_beginAccess();
      v30 = (v28[1] / 60.0 + *v28) / 24.0 * 6.28318531;
      if (qword_28034D638 != -1)
      {
        swift_once();
      }

        ;
      }

        ;
      }

      v25 = 0;
    }
  }

  v31 = CACurrentMediaTime();
  v32 = [objc_opt_self() functionWithName_];
  v33 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState];
  swift_beginAccess();
  v34 = *(v33 + 5);
  *v33 = v25;
  *(v33 + 1) = i;
  *(v33 + 2) = v31;
  *(v33 + 3) = j;
  *(v33 + 4) = 0;
  *(v33 + 5) = v32;

  v35 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v36 = *(v35 + 1);
  v63 = *v35;
  v64[0] = v36;
  *(v64 + 11) = *(v35 + 27);
  v37 = sub_269D1EFD8(i);
  v39 = v38;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v40 = sub_269D98250();
  __swift_project_value_buffer(v40, qword_280C0B728);
  v41 = sub_269D98230();
  v42 = sub_269D9AB50();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v63 = v44;
    *v43 = 136446978;
    v45 = sub_269D9B4D0();
    v47 = sub_269C2EACC(v45, v46, &v63);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    sub_269CD33F0(0, &qword_28034E6B0, &qword_28034FC00, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_269D9EBE0;
    *(v48 + 56) = MEMORY[0x277D85048];
    *(v48 + 64) = sub_269CD34E0();
    *(v48 + 32) = i / 3.14159265;
    v49 = sub_269D9A640();
    v51 = sub_269C2EACC(v49, v50, &v63);

    *(v43 + 14) = v51;
    *(v43 + 22) = 2048;
    *(v43 + 24) = v37;
    *(v43 + 32) = 2048;
    *(v43 + 34) = v39;
    _os_log_impl(&dword_269C18000, v41, v42, "[%{public}s] Did start dragging at %s, or %ld:%ld", v43, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v44, -1, -1);
    MEMORY[0x26D652460](v43, -1, -1);
  }

  [v2 sendActionsForControlEvents_];
  v52 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
  swift_beginAccess();
  sub_269CD3360(&v2[v52], &v63);
  if (*(&v64[0] + 1))
  {
    sub_269C2DB5C(&v63, v60);
    sub_269CD3458(&v63);
    v53 = v61;
    v54 = v62;
    __swift_project_boxed_opaque_existential_1Tm(v60, v61);
    (*(v54 + 8))(v53, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  else
  {
    sub_269CD3458(&v63);
  }

  v55 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
  swift_beginAccess();
  sub_269CD3360(&v2[v55], &v63);
  if (!*(&v64[0] + 1))
  {
    return sub_269CD3458(&v63);
  }

  sub_269C2DB5C(&v63, v60);
  sub_269CD3458(&v63);
  v56 = v61;
  v57 = v62;
  __swift_project_boxed_opaque_existential_1Tm(v60, v61);
  (*(v57 + 8))(v56, v57);
  return __swift_destroy_boxed_opaque_existential_1Tm(v60);
}

void sub_269CD064C(void *a1)
{
  v2 = v1;
  [a1 locationInView_];
  v4 = v3;
  v6 = v5;
  v7 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v8 = *(v7 + 1);
  v45 = *v7;
  v46[0] = v8;
  *(v46 + 11) = *(v7 + 27);
  v9 = sub_269CCC48C();
  if (*(v10 + 40))
  {
    [v1 bounds];
    v11 = v4 - CGRectGetMidX(v47);
    [v1 bounds];
    MidY = CGRectGetMidY(v48);
      ;
    }

      ;
    }

    [v1 bounds];
    v14 = v4 - CGRectGetMidX(v49);
    [v1 bounds];
    v15 = CGRectGetMidY(v50);
    v16 = sub_269CBA204(i, sqrt(v14 * v14 + (v6 - v15) * (v6 - v15)) / (*&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5));
    (v9)(&v43, 0, v16);
  }

  else
  {
    (v9)(&v43, 0);
  }

  v17 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState];
  swift_beginAccess();
  v18 = *(v17 + 5);
  if (v18)
  {
    v19 = *(v17 + 3);
    if (*v17)
    {
      if (*v17 == 1)
      {
        v20 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 152];
        v21 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 160];
        swift_beginAccess();
        v22 = v18;
        sub_269D1F15C(v19, v20, v21);
        swift_endAccess();
        sub_269CCBCFC();
        [v2 sendActionsForControlEvents_];
        v43 = v45;
        v44[0] = v46[0];
        *(v44 + 11) = *(v46 + 11);
        if ((sub_269CD0C40(&v43, sub_269D1E794) & 1) == 0)
        {
          v43 = v45;
          v44[0] = v46[0];
          *(v44 + 11) = *(v46 + 11);
          if ((sub_269CD0FF8(&v43) & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_22:
          v35 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
LABEL_23:
          swift_beginAccess();
          sub_269CD3360(&v2[v35], &v43);
          if (*(&v44[0] + 1))
          {
            sub_269C2DB5C(&v43, &v41);
            sub_269CD3458(&v43);
            v36 = *&v42[8];
            v37 = *&v42[16];
            __swift_project_boxed_opaque_existential_1Tm(&v41, *&v42[8]);
            (*(v37 + 16))(v36, v37);

            __swift_destroy_boxed_opaque_existential_1Tm(&v41);
          }

          else
          {

            sub_269CD3458(&v43);
          }

          return;
        }
      }

      else
      {
        v31 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 152];
        v32 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 160];
        swift_beginAccess();
        v33 = *(v7 + 1);
        v43 = *v7;
        v44[0] = v33;
        *(v44 + 11) = *(v7 + 27);
        v22 = v18;
        *(v7 + 2) = sub_269D1EFD8(v19);
        *(v7 + 3) = v34;
        sub_269D1FAC8(v31, v32);
        swift_endAccess();
        sub_269CCBCFC();
        [v2 sendActionsForControlEvents_];
        v43 = v45;
        v44[0] = v46[0];
        *(v44 + 11) = *(v46 + 11);
        if ((sub_269CD0C40(&v43, sub_269D1EA14) & 1) == 0)
        {
          v43 = v45;
          v44[0] = v46[0];
          *(v44 + 11) = *(v46 + 11);
          if ((sub_269CD11D4(&v43) & 1) == 0)
          {
LABEL_30:

            return;
          }

          goto LABEL_22;
        }
      }

      v35 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
      goto LABEL_23;
    }

    swift_beginAccess();
    v23 = *(v7 + 1);
    v43 = *v7;
    v44[0] = v23;
    *(v44 + 11) = *(v7 + 27);
    v24 = sub_269D1F4CC();
    v26 = v25;
    v22 = v18;
    *v7 = sub_269D1EFD8(v19);
    *(v7 + 1) = v27;
    sub_269D1FC18(v24, v26);
    swift_endAccess();
    sub_269CCBCFC();
    [v2 sendActionsForControlEvents_];
    v41 = v45;
    *v42 = v46[0];
    *&v42[11] = *(v46 + 11);
    if (sub_269CD0C40(&v41, sub_269D1E794) & 1) != 0 || (v41 = v45, *v42 = v46[0], *&v42[11] = *(v46 + 11), (sub_269CD0C40(&v41, sub_269D1EA14)))
    {
      v28 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
    }

    else
    {
      v41 = v45;
      *v42 = v46[0];
      *&v42[11] = *(v46 + 11);
      if ((sub_269CD0FF8(&v41) & 1) == 0)
      {
        v41 = v45;
        *v42 = v46[0];
        *&v42[11] = *(v46 + 11);
        if ((sub_269CD11D4(&v41) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v28 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
    }

    swift_beginAccess();
    sub_269CD3360(&v2[v28], &v41);
    if (*&v42[8])
    {
      sub_269C2DB5C(&v41, v38);
      sub_269CD3458(&v41);
      v29 = v39;
      v30 = v40;
      __swift_project_boxed_opaque_existential_1Tm(v38, v39);
      (*(v30 + 16))(v29, v30);

      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    else
    {

      sub_269CD3458(&v41);
    }
  }
}

uint64_t sub_269CD0C40(_OWORD *a1, void (*a2)(uint64_t, double))
{
  v4 = v2;
  v6 = sub_269D971F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  v14 = a1[1];
  *v45 = *a1;
  *&v45[16] = v14;
  *&v45[27] = *(a1 + 27);
  v15 = (v4 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration);
  a2(v11, *(v4 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144));
  v16 = (v4 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  v17 = swift_beginAccess();
  v18 = v16[1];
  *v45 = *v16;
  *&v45[16] = v18;
  *&v45[27] = *(v16 + 27);
  a2(v17, v15[18]);
  v19 = sub_269D97150();
  if (v20)
  {
    goto LABEL_5;
  }

  v21 = v19;
  v22 = sub_269D971A0();
  if (v23)
  {
    goto LABEL_5;
  }

  v24 = v22;
  v43 = sub_269D97150();
  if (v25)
  {
    goto LABEL_5;
  }

  v26 = sub_269D971A0();
  if (v27)
  {
    goto LABEL_5;
  }

  v30 = v26;
  memcpy(v45, v15, sizeof(v45));
  v31 = v4 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState;
  swift_beginAccess();
  v32 = *(v31 + 32);
  v33 = *(v31 + 40);
  result = sub_269C6AAB4(v45, &v44);
  v35 = v21 != v43 || v24 != v30;
  if (!*&v45[184])
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v43 == 0x8000000000000000 && *&v45[184] == -1)
  {
    goto LABEL_53;
  }

  if (v43 % *&v45[184] || !v35)
  {
    if (v21 == 0x8000000000000000)
    {
      v36 = 0;
      goto LABEL_22;
    }

    if (v21 % *&v45[184])
    {
      if (v21 == v43)
      {
LABEL_46:
        sub_269C6AB10(v45);
LABEL_5:
        v28 = *(v7 + 8);
        v28(v10, v6);
        v28(v13, v6);
        return 0;
      }
    }

    else if (v21 == v43 || !v24)
    {
      goto LABEL_46;
    }

    v36 = 0;
    if (v43 <= v21)
    {
      v37 = v21;
    }

    else
    {
      v37 = v43;
    }

    goto LABEL_43;
  }

  v36 = v30 == 0;
  if (v21 != 0x8000000000000000)
  {
    goto LABEL_23;
  }

LABEL_22:
  if (*&v45[184] == -1)
  {
LABEL_54:
    __break(1u);
    return result;
  }

LABEL_23:
  if (v21 % *&v45[184])
  {
    if (v21 == v43)
    {
      goto LABEL_37;
    }
  }

  else if (v21 == v43 || !v24)
  {
    goto LABEL_37;
  }

  if (v43 <= v21)
  {
    v37 = v21;
  }

  else
  {
    v37 = v43;
  }

  if (v37 == 0x8000000000000000 && *&v45[184] == -1)
  {
    __break(1u);
LABEL_37:
    sub_269C6AB10(v45);
    v38 = *(v7 + 8);
    v38(v10, v6);
    v38(v13, v6);
    return v36;
  }

LABEL_43:
  v39 = v37 % *&v45[184];
  v40 = *(v7 + 8);
  v40(v10, v6);
  v40(v13, v6);
  sub_269C6AB10(v45);
  if (!v39)
  {
    v41 = fabs(v32);
    if (!v33)
    {
      v41 = 0.0;
    }

    return *&v45[168] < v41 || v36;
  }

  return v36;
}

uint64_t sub_269CD0FF8(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144) / 60.0;
  v4 = v3 * round(*(result + 8) / v3);
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = *(v2 + 176);
  v6 = *(v2 + 192);
  v7 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model;
  result = swift_beginAccess();
  v8 = v3 * round(*(v7 + 8) / v3);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState;
  result = swift_beginAccess();
  if (!v6)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v10 = v8 % 60;
  if (v10 == v4 % 60)
  {
    return 0;
  }

  v11 = fabs(*(v9 + 32));
  if (!*(v9 + 40))
  {
    v11 = 0.0;
  }

  v12 = v10 % v6;
  return v11 < v5 && v12 == 0;
}

uint64_t sub_269CD11D4(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144) / 60.0;
  v4 = v3 * round(*(result + 24) / v3);
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = *(v2 + 176);
  v6 = *(v2 + 192);
  v7 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model;
  result = swift_beginAccess();
  v8 = v3 * round(*(v7 + 24) / v3);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState;
  result = swift_beginAccess();
  if (!v6)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v10 = v8 % 60;
  if (v10 == v4 % 60)
  {
    return 0;
  }

  v11 = fabs(*(v9 + 32));
  if (!*(v9 + 40))
  {
    v11 = 0.0;
  }

  v12 = v10 % v6;
  return v11 < v5 && v12 == 0;
}

void sub_269CD13CC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

double sub_269CD18D0(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  Width = CGRectGetWidth(*&a1);
  v14.origin.x = v7;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  if (CGRectGetHeight(v14) >= Width)
  {
    v20.origin.x = v7;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    v12 = CGRectGetWidth(v20);
    v21.origin.x = v7;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    if (v12 < CGRectGetHeight(v21))
    {
      v22.origin.x = v7;
      v22.origin.y = a2;
      v22.size.width = a3;
      v22.size.height = a4;
      CGRectGetMaxY(v22);
      v23.origin.x = v7;
      v23.origin.y = a2;
      v23.size.width = a3;
      v23.size.height = a4;
      CGRectGetMinY(v23);
      v24.origin.x = v7;
      v24.origin.y = a2;
      v24.size.width = a3;
      v24.size.height = a4;
      CGRectGetWidth(v24);
      v25.origin.x = v7;
      v25.origin.y = a2;
      v25.size.width = a3;
      v25.size.height = a4;
      CGRectGetWidth(v25);
      v26.origin.x = v7;
      v26.origin.y = a2;
      v26.size.width = a3;
      v26.size.height = a4;
      CGRectGetWidth(v26);
    }
  }

  else
  {
    v15.origin.x = v7;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    MaxX = CGRectGetMaxX(v15);
    v16.origin.x = v7;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    v10 = MaxX - CGRectGetMinX(v16);
    v17.origin.x = v7;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    v11 = (v10 - CGRectGetHeight(v17)) * 0.5;
    v18.origin.x = v7;
    v18.origin.y = a2;
    v18.size.width = a3;
    v18.size.height = a4;
    CGRectGetHeight(v18);
    v19.origin.x = v7;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetHeight(v19);
    return v11;
  }

  return v7;
}

double sub_269CD1A84(uint64_t a1, double a2, double a3)
{
  v6 = sub_269D9B250();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 / a2;
  v16 = v10;
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x277D84678])
  {
    v12 = round(v10);
  }

  else if (v11 == *MEMORY[0x277D84670])
  {
    v12 = rint(v10);
  }

  else if (v11 == *MEMORY[0x277D84680])
  {
    v12 = ceil(v10);
  }

  else if (v11 == *MEMORY[0x277D84688])
  {
    v12 = floor(v10);
  }

  else if (v11 == *MEMORY[0x277D84660])
  {
    v12 = trunc(v10);
  }

  else if (v11 == *MEMORY[0x277D84668])
  {
    v12 = ceil(v10);
    v13 = floor(v10);
    if (v10 < 0.0)
    {
      v12 = v13;
    }
  }

  else
  {
    sub_269D9A920();
    (*(v7 + 8))(v9, v6);
    v12 = v16;
  }

  return v12 * a2;
}

uint64_t sub_269CD1C6C()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances);
  if (*(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances + 8) != 1)
  {
    return *v1;
  }

  result = 144;
  *v1 = 144;
  v1[8] = 0;
  return result;
}

double sub_269CD1C9C()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle);
  if ((*(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 6.28318531 / sub_269CD1C6C();
  *v1 = result;
  v1[8] = 0;
  return result;
}

char *sub_269CD1CF0(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_tickInterval] = 0x4082C00000000000;
  v6 = &v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_configuration];
  *v8 = a1;
  v8[1] = a2;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for RingGrabber();
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture;
  v11 = *&v9[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture];
  v12 = v9;
  [v12 addSublayer_];
  [*&v9[v10] setLineCap_];
  [*&v9[v10] setFillColor_];
  v13 = sub_269CD1C9C();
  CATransform3DMakeRotation(&v15, v13, 0.0, 0.0, 1.0);
  [v12 setInstanceTransform_];

  return v12;
}

id sub_269CD1E58(void *a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_tickInterval] = 0x4082C00000000000;
  v4 = &v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_configuration];
  *v6 = 0;
  v6[1] = 0;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v7 = sub_269D9B260();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RingGrabber();
  v8 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

void sub_269CD1FE0()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Layout sublayers", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture];
  [v1 bounds];
  [v10 setFrame_];
  v11 = &v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_configuration];
  [v10 setLineWidth_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  v13 = v11[1] * 0.5;
  [v1 bounds];
  v14 = CGRectGetMaxX(v19) - v13;
  [v1 bounds];
  [v12 moveToPoint_];
  [v1 bounds];
  v15 = v13 + CGRectGetMaxX(v21) - *v11;
  [v1 bounds];
  [v12 addLineToPoint_];
  v16 = [v12 CGPath];
  [v10 setPath_];
}

id sub_269CD22C8(double a1, double a2)
{
  v5 = sub_269D9B250();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted] == 1)
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D84680], v5);
    v9 = sub_269CD1C9C();
    a1 = sub_269CD1A84(v8, v9, a1);
    (*(v6 + 8))(v8, v5);
  }

  CATransform3DMakeRotation(&v12, a1 - *&v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset], 0.0, 0.0, 1.0);
  [v2 setTransform_];
  result = sub_269CD1C6C();
  v11 = floor(a2 / 60.0 / 60.0 / 24.0 * result);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 9.22337204e18)
  {
    return [v2 setInstanceCount_];
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_269CD24E8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_269CD2560()
{
  v1 = MEMORY[0x277D83D88];
  sub_269CCD978(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v29 - v3;
  sub_269CCD978(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v1);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v36 = sub_269D971F0();
  v7 = *(v36 - 8);
  v8 = MEMORY[0x28223BE20](v36);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D62490]) init];
  [v13 setWeekdays_];
  v14 = v0[2];
  v15 = v0[3];
  v38 = v7;
  v34 = v10;
  v35 = v0;
  if (v15 == 60 && __OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = sub_269D977A0();
    v17 = *(v16 - 8);
    v18 = *(v17 + 56);
    v31 = v17 + 56;
    v32 = v18;
    v18(v6, 1, 1, v16);
    v19 = sub_269D97810();
    v20 = *(v19 - 8);
    v21 = *(v20 + 56);
    v29 = v20 + 56;
    v30 = v21;
    v21(v37, 1, 1, v19);
    v33 = v6;
    sub_269D971D0();
    v22 = sub_269D97110();
    v23 = v38 + 8;
    v24 = *(v38 + 8);
    v24(v12, v36);
    [v13 setWakeUpComponents_];

    v25 = *v35;
    v26 = v35[1];
    v38 = v23;
    if (v26 != 60 || !__OFADD__(v25, 1))
    {
      v32(v33, 1, 1, v16);
      v30(v37, 1, 1, v19);
      v27 = v34;
      sub_269D971D0();
      v28 = sub_269D97110();
      v24(v27, v36);
      [v13 setBedtimeComponents_];

      [v13 actualSleepInterval];
      return;
    }
  }

  __break(1u);
}

void sub_269CD2AA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_gestureRecognizer;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  v3 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v4 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand;
  sub_269D307FC(v14);
  LOWORD(v15[0]) = 0;
  v6 = type metadata accessor for SleepScheduleClockHand();
  v7 = objc_allocWithZone(v6);
  *(v1 + v5) = sub_269D2F848(v15, v14);
  v8 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand;
  sub_269D307FC(v15);
  v13 = 4097;
  v9 = objc_allocWithZone(v6);
  *(v1 + v8) = sub_269D2F848(&v13, v15);
  v10 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v11 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = (v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState);
  *v12 = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  sub_269D9B100();
  __break(1u);
}

uint64_t sub_269CD2C1C()
{
  swift_getObjectType();
  v1 = COERCE_DOUBLE(sub_269D9B250());
  v2 = *(*&v1 - 8);
  MEMORY[0x28223BE20](*&v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v5 = sub_269D98250();
  __swift_project_value_buffer(v5, qword_280C0B728);
  v6 = v0;
  v7 = sub_269D98230();
  v8 = sub_269D9AB50();

  v9 = os_log_type_enabled(v7, v8);
  v47 = v4;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48.f64[0] = v1;
    v12 = v2;
    v13 = v11;
    v51.i64[0] = v11;
    *v10 = 136446466;
    v14 = sub_269D9B4D0();
    v16 = sub_269C2EACC(v14, v15, v51.i64);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2082;
    v17 = &v6[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
    swift_beginAccess();
    v49 = *v17;
    v50[0] = *(v17 + 1);
    *(v50 + 11) = *(v17 + 27);
    v18 = sub_269D1F5F8();
    v20 = sub_269C2EACC(v18, v19, v51.i64);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Done editing model: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    v21 = v13;
    v2 = v12;
    v1 = v48.f64[0];
    MEMORY[0x26D652460](v21, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  v22 = &v6[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState];
  result = swift_beginAccess();
  v24 = *(v22 + 5);
  if (v24)
  {
    v25 = *v22;
    v26 = *&v6[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144];
    v27 = &v6[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
    swift_beginAccess();
    v28 = vcvtq_f64_s64(*v27);
    v48 = vdupq_n_s64(0x404E000000000000uLL);
    v29 = vmulq_f64(v28, v48);
    sub_269D225A8(v51.i64, v26 * round((60.0 * v29.f64[0] + v29.f64[1]) / v26));
    *v27 = v51;
    v30 = vmulq_f64(vcvtq_f64_s64(v27[1]), v48);
    sub_269D225A8(v51.i64, v26 * round((60.0 * v30.f64[0] + v30.f64[1]) / v26));
    v27[1] = v51;
    swift_endAccess();
    v31 = v24;
    sub_269CCBCFC();
    if (v25)
    {
      if (v25 == 1)
      {
        [*&v6[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand] setHighlighted_];
        v32 = *&v6[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
        v33 = (v27->i64[1] / 60.0 + v27->i64[0]) / 24.0 * 6.28318531;
        if (qword_28034D638 != -1)
        {
          swift_once();
        }

        v34 = v33 + *&qword_28035E4B0;
          ;
        }

          ;
        }

        (*(v2 + 104))(v47, *MEMORY[0x277D84680], COERCE_FLOAT64_T(*&v1));
        v36 = sub_269CD1C9C();
        v37 = sub_269CD1A84(i, v36, v34);
        (*(v2 + 8))(i, COERCE_FLOAT64_T(*&v1));
        v38 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset;
        *(v32 + v38) = fmod(v37 - v34 + *(v32 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset), *(v32 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle));
        *(v32 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted) = 0;
      }

      else
      {
        [*&v6[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand] setHighlighted_];
      }
    }

    [v6 sendActionsForControlEvents_];
    [v6 sendActionsForControlEvents_];
    v39 = *(v22 + 5);
    *v22 = 0u;
    *(v22 + 1) = 0u;
    *(v22 + 2) = 0u;

    v40 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
    swift_beginAccess();
    sub_269CD3360(&v6[v40], &v49);
    if (*(&v50[0] + 1))
    {
      sub_269C2DB5C(&v49, &v51);
      sub_269CD3458(&v49);
      v41 = v52;
      v42 = v53;
      __swift_project_boxed_opaque_existential_1Tm(&v51, v52);
      (*(v42 + 24))(v41, v42);
      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    }

    else
    {
      sub_269CD3458(&v49);
    }

    v43 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
    swift_beginAccess();
    sub_269CD3360(&v6[v43], &v49);
    if (*(&v50[0] + 1))
    {
      sub_269C2DB5C(&v49, &v51);
      sub_269CD3458(&v49);
      v44 = v52;
      v45 = v53;
      __swift_project_boxed_opaque_existential_1Tm(&v51, v52);
      (*(v45 + 24))(v44, v45);

      return __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    }

    else
    {

      return sub_269CD3458(&v49);
    }
  }

  return result;
}

void sub_269CD3284()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_tickInterval) = 0x4082C00000000000;
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle;
  *v3 = 0;
  *(v3 + 8) = 1;
  sub_269D9B100();
  __break(1u);
}

uint64_t sub_269CD3360(uint64_t a1, uint64_t a2)
{
  sub_269CD33F0(0, &qword_28034FBE8, &unk_28034FBF0, &protocol descriptor for FeedbackGenerator, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269CD33F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_269C3232C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_269CD3458(uint64_t a1)
{
  sub_269CD33F0(0, &qword_28034FBE8, &unk_28034FBF0, &protocol descriptor for FeedbackGenerator, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269CD34E0()
{
  result = qword_28034FC08;
  if (!qword_28034FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FC08);
  }

  return result;
}

uint64_t sub_269CD3534(uint64_t a1, uint64_t a2)
{
  sub_269CD33F0(0, &qword_28034FBE8, &unk_28034FBF0, &protocol descriptor for FeedbackGenerator, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id HKHealthStore.isSleepCoachingSupported.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result hksp_supportsSleep];

    result = 0;
    if (v3)
    {
      v4 = [v0 profileIdentifier];
      v5 = [v4 type];

      if (v5 != 3)
      {
        return 1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL HKHealthStore.isSleepDataEntrySupported.getter()
{
  v1 = [v0 profileIdentifier];
  v2 = [v1 type];

  return v2 != 3;
}

uint64_t sub_269CD36E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_269CD3744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_269CD37C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v14 = v4;
  if (v3)
  {
    v11 = v3;
    sub_269CD411C(&v14, v11, v12);
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    *(v6 + 32) = v4;
    v7 = v12[3];
    *(a1 + 32) = v12[2];
    *(a1 + 48) = v7;
    v8 = v13;
    v9 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v9;
    *(a1 + 64) = v8;
    *(a1 + 72) = sub_269CD4324;
    *(a1 + 80) = v6;

    return v11;
  }

  else
  {
    type metadata accessor for SleepActivityConfigurationModel();
    sub_269CD73A4(&qword_28034F248, type metadata accessor for SleepActivityConfigurationModel);
    result = sub_269D98E30();
    __break(1u);
  }

  return result;
}

uint64_t sub_269CD38D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_269D99190();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_269CD4330();
  return sub_269CD3934(a1, a2 + *(v4 + 44));
}

uint64_t sub_269CD3934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269CD43D4();
  v5 = v4;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  sub_269D9A8E0();
  v30[0] = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_269D99090();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_269CD45FC();
  sub_269CD3C84(&v10[*(v11 + 44)]);
  v12 = sub_269D995E0();
  sub_269D98990();
  v13 = &v10[*(v5 + 36)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel);
  v18 = sub_269D98E40();
  if (a1)
  {
    v20 = v18;
    v21 = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = a1;
    sub_269D98880();

    v23 = v30[1];
    v24 = sub_269D98760();
    sub_269CD74A4(v10, v8, sub_269CD43D4);
    sub_269CD74A4(v8, a2, sub_269CD43D4);
    sub_269CD6C8C(0, &qword_28034FC28, sub_269CD43D4, sub_269CD456C);
    v26 = (a2 + *(v25 + 48));
    *v26 = v20;
    v26[1] = v21;
    v26[2] = v24;
    v26[3] = v23;
    v27 = v20;

    v28 = v23;
    sub_269CD73EC(v10, sub_269CD43D4);

    sub_269CD73EC(v8, sub_269CD43D4);
  }

  else
  {
    type metadata accessor for SleepActivityConfigurationModel();
    sub_269CD73A4(&qword_28034F248, type metadata accessor for SleepActivityConfigurationModel);
    result = sub_269D98E30();
    __break(1u);
  }

  return result;
}

uint64_t sub_269CD3C84@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  sub_269C51C58();
  v45 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = (&v41 - v4);
  sub_269D9A8E0();
  v46 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v6 = qword_280C0D990;
  v7 = sub_269D972C0();
  v9 = v8;

  v49 = v7;
  v50 = v9;
  sub_269C3EEE8();
  v10 = sub_269D99960();
  v12 = v11;
  v14 = v13;
  if (qword_28034D7C0 != -1)
  {
    swift_once();
  }

  v15 = sub_269D99920();
  v17 = v16;
  v19 = v18;
  sub_269C41568(v10, v12, v14 & 1);

  v20 = objc_opt_self();
  v21 = [v20 labelColor];
  sub_269D99CC0();
  v22 = sub_269D998F0();
  v24 = v23;
  v43 = v25;
  v44 = v26;

  sub_269C41568(v15, v17, v19 & 1);

  v42 = sub_269D99D60();
  v27 = [v20 tertiaryLabelColor];
  v28 = sub_269D99CC0();
  KeyPath = swift_getKeyPath();
  sub_269D996C0();
  v30 = sub_269D996D0();

  v31 = swift_getKeyPath();
  v32 = (v5 + *(v45 + 36));
  sub_269C51E5C();
  v34 = *(v33 + 28);
  v35 = *MEMORY[0x277CE1050];
  v36 = sub_269D99DB0();
  (*(*(v36 - 8) + 104))(v32 + v34, v35, v36);
  *v32 = swift_getKeyPath();
  *v5 = v42;
  v5[1] = KeyPath;
  v5[2] = v28;
  v5[3] = v31;
  v5[4] = v30;
  v37 = v48;
  sub_269CD74A4(v5, v48, sub_269C51C58);
  v38 = v47;
  *v47 = v22;
  v38[1] = v24;
  LOBYTE(v28) = v43 & 1;
  *(v38 + 16) = v43 & 1;
  v38[3] = v44;
  v38[4] = 0;
  *(v38 + 40) = 1;
  sub_269CD44FC();
  sub_269CD74A4(v37, v38 + *(v39 + 64), sub_269C51C58);
  sub_269C41668(v22, v24, v28);

  sub_269CD73EC(v5, sub_269C51C58);
  sub_269CD73EC(v37, sub_269C51C58);
  sub_269C41568(v22, v24, v28);
}

void sub_269CD411C(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_269D99E60();
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
  *(a3 + 64) = v5;
  type metadata accessor for SleepActivityConfigurationModel();
  sub_269CD73A4(&qword_28034F248, type metadata accessor for SleepActivityConfigurationModel);
  v6 = a2;
  *a3 = sub_269D98C70();
  *(a3 + 8) = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel);
  *(a3 + 16) = sub_269D98C70();
  *(a3 + 24) = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  type metadata accessor for SleepSettingsModel();
  sub_269CD73A4(&qword_28034F568, type metadata accessor for SleepSettingsModel);
  v9 = sub_269D98C70();
  v11 = v10;

  *(a3 + 32) = v9;
  *(a3 + 40) = v11;
}

void sub_269CD4330()
{
  if (!qword_28034FC18)
  {
    sub_269CD4398(255);
    v0 = sub_269D98BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FC18);
    }
  }
}

void sub_269CD43D4()
{
  if (!qword_28034FC30)
  {
    sub_269CD4434();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FC30);
    }
  }
}

void sub_269CD4434()
{
  if (!qword_28034FC38)
  {
    sub_269CD44C8(255);
    sub_269CD73A4(&qword_28034FC50, sub_269CD44C8);
    v0 = sub_269D99F00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FC38);
    }
  }
}

void sub_269CD44FC()
{
  if (!qword_28034FC48)
  {
    sub_269C51C58();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28034FC48);
    }
  }
}

void sub_269CD45FC()
{
  if (!qword_28034FC70)
  {
    sub_269CD44C8(255);
    v0 = sub_269D98BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FC70);
    }
  }
}

uint64_t sub_269CD4664@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v35 = sub_269D99070();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD6658();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD6E7C();
  v36 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD6F4C();
  v39 = v12;
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[3];
  v49 = v1[2];
  v50 = v14;
  v51 = *(v1 + 64);
  v15 = v1[1];
  v47 = *v1;
  v48 = v15;
  v41 = &v47;
  sub_269CD6708(0);
  sub_269CD73A4(&qword_28034FD40, sub_269CD6708);
  sub_269D99870();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v16 = qword_280C0D990;
  v17 = sub_269D972C0();
  v19 = v18;

  v42 = v17;
  v43 = v19;
  v20 = sub_269CD73A4(&qword_28034FD50, sub_269CD6658);
  v21 = sub_269C3EEE8();
  v22 = MEMORY[0x277D837D0];
  sub_269D99B00();

  (*(v6 + 8))(v8, v5);
  v23 = v34;
  v24 = v35;
  (*(v34 + 104))(v3, *MEMORY[0x277CDDDC0], v35);
  v42 = v5;
  v43 = v22;
  v44 = v20;
  v45 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v37;
  v27 = v36;
  sub_269D99BD0();
  (*(v23 + 8))(v3, v24);
  (*(v33 + 8))(v11, v27);
  v46 = v50;
  sub_269CD7054(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E90();
  v28 = swift_allocObject();
  v29 = v50;
  *(v28 + 48) = v49;
  *(v28 + 64) = v29;
  *(v28 + 80) = v51;
  v30 = v48;
  *(v28 + 16) = v47;
  *(v28 + 32) = v30;
  sub_269CD70AC(&v47, &v42);
  sub_269CD70E4(0, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
  v42 = v27;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_269CCB3C0();
  v31 = v39;
  sub_269D99C00();

  return (*(v38 + 8))(v26, v31);
}

uint64_t sub_269CD4CA8@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  sub_269CD6B8C();
  v4 = v3;
  v73 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v70 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD6B58(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v82 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v70 - v9;
  sub_269CD6968();
  v87 = v10;
  v75 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v81 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v70 - v13;
  sub_269CD690C();
  v80 = v14;
  v74 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v86 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - v17;
  sub_269CD67D0();
  v85 = v19;
  v79 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v78 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v70 - v22;
  sub_269D9A8E0();
  v72 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = a1[3];
  v94 = a1[2];
  v95 = v24;
  v96 = *(a1 + 64);
  v25 = a1[1];
  v92 = *a1;
  v93 = v25;
  v88 = sub_269CD56D0();
  v89 = v26;
  v90 = v27 & 1;
  v91 = v28;
  MEMORY[0x28223BE20](v88);
  sub_269CD6D30(0, &qword_28034FCC8, sub_269CD687C, sub_269CD4594, MEMORY[0x277CDFAB8]);
  sub_269CD7140();
  v77 = v23;
  v29 = sub_269D9A0D0();
  MEMORY[0x28223BE20](v29);
  sub_269CD7340();
  v30 = v18;
  sub_269D9A0C0();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v31 = qword_280C0D990;
  v32 = sub_269D972C0();
  v34 = v33;

  *&v92 = v32;
  *(&v92 + 1) = v34;
  sub_269C3EEE8();
  *&v92 = sub_269D99960();
  *(&v92 + 1) = v35;
  LOBYTE(v93) = v36 & 1;
  *(&v93 + 1) = v37;
  MEMORY[0x28223BE20](v92);
  sub_269CD69D0();
  sub_269CD456C(255);
  v39 = v38;
  v40 = sub_269CD6A54();
  v88 = v39;
  v89 = v40;
  v41 = 1;
  swift_getOpaqueTypeConformance2();
  sub_269D9A0B0();
  v42 = v4;
  v43 = v73;
  if (*(a1 + 64) == 4)
  {
    v44 = v31;
    v45 = sub_269D972C0();
    v47 = v46;

    *&v92 = v45;
    *(&v92 + 1) = v47;
    *&v92 = sub_269D99960();
    *(&v92 + 1) = v48;
    LOBYTE(v93) = v49 & 1;
    *(&v93 + 1) = v50;
    MEMORY[0x28223BE20](v92);
    sub_269CD6BF4(0);
    sub_269CD73A4(&qword_28034FD88, sub_269CD6BF4);
    v51 = v70;
    sub_269D9A0B0();
    v43[4](v83, v51, v42);
    v41 = 0;
  }

  v52 = v83;
  (v43[7])(v83, v41, 1, v42);
  v53 = *(v79 + 16);
  v54 = v78;
  v53(v78, v77, v85);
  v55 = v74;
  v73 = *(v74 + 16);
  v71 = v30;
  (v73)(v86, v30, v80);
  v56 = v75;
  v70 = *(v75 + 16);
  v57 = v81;
  (v70)(v81, v84, v87);
  sub_269CD74A4(v52, v82, sub_269CD6B58);
  v58 = v76;
  v53(v76, v54, v85);
  sub_269CD673C();
  v60 = v59;
  v61 = v80;
  (v73)(&v58[*(v59 + 48)], v86, v80);
  v62 = v87;
  (v70)(&v58[*(v60 + 64)], v57, v87);
  v63 = v82;
  sub_269CD74A4(v82, &v58[*(v60 + 80)], sub_269CD6B58);
  sub_269CD73EC(v83, sub_269CD6B58);
  v64 = *(v56 + 8);
  v64(v84, v62);
  v65 = *(v55 + 8);
  v66 = v61;
  v65(v71, v61);
  v67 = *(v79 + 8);
  v68 = v85;
  v67(v77, v85);
  sub_269CD73EC(v63, sub_269CD6B58);
  v64(v81, v87);
  v65(v86, v66);
  v67(v78, v68);
}

uint64_t sub_269CD56D0()
{
  v1 = *(v0 + 24);
  [*(*(v0 + 40) + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) scheduledSleepMode];
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (v2)
  {
    [v2 windDownTime];
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v3 = qword_280C0D990;
  sub_269D972C0();

  sub_269C3EEE8();
  return sub_269D99960();
}

uint64_t sub_269CD5868@<X0>(uint64_t *a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepSettingsModel();
  sub_269CD73A4(&qword_28034F568, type metadata accessor for SleepSettingsModel);
  v2 = sub_269D98E40();
  v10 = v3;
  v11 = v2;
  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel);
  v4 = sub_269D98E40();
  v6 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v7 = sub_269D98760();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v8 = sub_269D98760();

  *a1 = v11;
  a1[1] = v10;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v12;
  a1[6] = v8;
  a1[7] = v12;
  return result;
}

__n128 sub_269CD5A90@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 16);
  v4 = *(&v8 + 1);
  sub_269CD74A4(&v8, v7, sub_269CD750C);
  sub_269CBFE08(v4, v7);

  v5 = v7[3];
  a2[2] = v7[2];
  a2[3] = v5;
  a2[4] = v7[4];
  result = v7[1];
  *a2 = v7[0];
  a2[1] = result;
  return result;
}

void sub_269CD5B7C(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel);
  v2 = sub_269D98E40();
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v5 = v9[0];
  v9[9] = v2;
  v9[10] = v4;
  v9[11] = sub_269D98760();
  v9[12] = v9[0];
  v6 = swift_allocObject();
  v7 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  sub_269CD70AC(a1, v9);
  sub_269CD456C(0);
  sub_269CD6A54();
  sub_269D99AB0();
}

uint64_t sub_269CD5D7C(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_28035E4B8);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_269C2EACC(0xD000000000000037, 0x8000000269DB0C20, &v8);
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Opening schedule editor", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v8 = *(a1 + 48);
  sub_269CD7054(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E80();
}

void sub_269CD5F70(void *a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel);
  v2 = sub_269D98E40();
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v5 = v10[0];
  v6 = sub_269D98760();
  v11 = 2;
  v12 = 0u;
  v13 = 0u;
  v14 = 256;
  sub_269C9B4D0(&v11, v10);
  sub_269CD74A4(v10, v9, sub_269C98B8C);
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  sub_269CD74A4(v9, (a1 + 4), sub_269C98B8C);
  v7 = v2;

  v8 = v5;
  sub_269CD73EC(v10, sub_269C98B8C);
  sub_269CD73EC(v9, sub_269C98B8C);
}

double sub_269CD6190@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[3];
  v18 = a1[2];
  v19 = v4;
  v20 = *(a1 + 64);
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  sub_269CD6274(&v11);

  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 33) = v9;
  return result;
}

uint64_t sub_269CD6274@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_269D98880();

  v5 = *&v11[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24];
  v6 = *&v11[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v11[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider], v5);
  v7 = (*(v6 + 8))(v5, v6);

  v8 = *MEMORY[0x277D62120];
  sub_269CD7054(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  v9 = v8;
  sub_269D99E90();
  result = sub_269D995D0();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 33) = result;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_269CD63F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_269CD6438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269CD649C()
{
  if (!qword_28034FC80)
  {
    sub_269CD6554();
    sub_269CD73A4(&qword_28034FC98, sub_269CD6554);
    sub_269CD65E8();
    v0 = type metadata accessor for NavigationLinkWithoutChevron();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FC80);
    }
  }
}

void sub_269CD6554()
{
  if (!qword_28034FC88)
  {
    sub_269CD4398(255);
    sub_269CD73A4(&qword_28034FC90, sub_269CD4398);
    v0 = sub_269D99FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FC88);
    }
  }
}

unint64_t sub_269CD65E8()
{
  result = qword_28034FCA0;
  if (!qword_28034FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FCA0);
  }

  return result;
}

void sub_269CD6658()
{
  if (!qword_28034FCA8)
  {
    sub_269CD6708(255);
    sub_269CD73A4(&qword_28034FD40, sub_269CD6708);
    v0 = sub_269D99880();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FCA8);
    }
  }
}

void sub_269CD673C()
{
  if (!qword_28034FCB8)
  {
    sub_269CD67D0();
    sub_269CD690C();
    sub_269CD6968();
    sub_269CD6B58(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28034FCB8);
    }
  }
}

void sub_269CD67D0()
{
  if (!qword_28034FCC0)
  {
    sub_269CD6D30(255, &qword_28034FCC8, sub_269CD687C, sub_269CD4594, MEMORY[0x277CDFAB8]);
    v0 = sub_269D9A0E0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FCC0);
    }
  }
}

void sub_269CD690C()
{
  if (!qword_28034FCE8)
  {
    v0 = sub_269D9A0E0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FCE8);
    }
  }
}

void sub_269CD6968()
{
  if (!qword_28034FCF0)
  {
    sub_269CD69D0();
    v0 = sub_269D9A0E0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FCF0);
    }
  }
}

void sub_269CD69D0()
{
  if (!qword_28034FCF8)
  {
    sub_269CD456C(255);
    sub_269CD6A54();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034FCF8);
    }
  }
}

unint64_t sub_269CD6A54()
{
  result = qword_28034FD00;
  if (!qword_28034FD00)
  {
    sub_269CD456C(255);
    sub_269CD6B04();
    sub_269CD73A4(&qword_28034FD10, sub_269CD4594);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD00);
  }

  return result;
}

unint64_t sub_269CD6B04()
{
  result = qword_28034FD08;
  if (!qword_28034FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD08);
  }

  return result;
}

void sub_269CD6B8C()
{
  if (!qword_28034FD20)
  {
    sub_269CD6BF4(255);
    v0 = sub_269D9A0E0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FD20);
    }
  }
}

void sub_269CD6C30(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_269CD6C8C(255, a3, a4, a5);
    v6 = sub_269D9A1C0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269CD6C8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269CD6D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_269CD6DB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D98D00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269CD6E18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CD6E7C()
{
  if (!qword_28034FD48)
  {
    sub_269CD6658();
    sub_269CD73A4(&qword_28034FD50, sub_269CD6658);
    sub_269C3EEE8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034FD48);
    }
  }
}

void sub_269CD6F4C()
{
  if (!qword_28034FD58)
  {
    sub_269CD6E7C();
    sub_269CD6658();
    sub_269CD73A4(&qword_28034FD50, sub_269CD6658);
    sub_269C3EEE8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034FD58);
    }
  }
}

void sub_269CD7054(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269CD70E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_269CD7140()
{
  result = qword_28034FD60;
  if (!qword_28034FD60)
  {
    sub_269CD6D30(255, &qword_28034FCC8, sub_269CD687C, sub_269CD4594, MEMORY[0x277CDFAB8]);
    sub_269CD7234();
    sub_269CD73A4(&qword_28034FD10, sub_269CD4594);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD60);
  }

  return result;
}

unint64_t sub_269CD7234()
{
  result = qword_28034FD68;
  if (!qword_28034FD68)
  {
    sub_269CD687C(255);
    sub_269CD72E4();
    sub_269CD73A4(&qword_28034FD78, sub_269CD68A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD68);
  }

  return result;
}

unint64_t sub_269CD72E4()
{
  result = qword_28034FD70;
  if (!qword_28034FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD70);
  }

  return result;
}

unint64_t sub_269CD7340()
{
  result = qword_28034FD80;
  if (!qword_28034FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD80);
  }

  return result;
}

uint64_t sub_269CD73A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269CD73EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_31Tm()
{

  return swift_deallocObject();
}

uint64_t sub_269CD74A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269CD750C()
{
  if (!qword_28034FD90)
  {
    type metadata accessor for SleepScheduleModel();
    sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel);
    v0 = sub_269D98C90();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FD90);
    }
  }
}

uint64_t sub_269CD75A0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

uint64_t sub_269CD7620()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269D98890();
}

uint64_t sub_269CD769C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();
}

uint64_t sub_269CD7714()
{
  swift_beginAccess();
  sub_269CD9254(0, &qword_28034FDA0, &type metadata for SectionsViewModel, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CD77A4(uint64_t a1)
{
  sub_269CD9254(0, &qword_28034FDE8, &type metadata for SectionsViewModel, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_269CD9254(0, &qword_28034FDA0, &type metadata for SectionsViewModel, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_269CD7960()
{
  swift_beginAccess();
  sub_269CD9254(0, &qword_28034FDA0, &type metadata for SectionsViewModel, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CD79EC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

uint64_t sub_269CD7A6C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_269D98890();
}

uint64_t sub_269CD7AE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();
}

uint64_t sub_269CD7B5C()
{
  swift_beginAccess();
  sub_269CD91D0(0, &qword_28034FDB0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CD7BE4(uint64_t a1)
{
  sub_269CD91D0(0, &qword_28034FDE0, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_269CD91D0(0, &qword_28034FDB0, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_269CD7D88()
{
  swift_beginAccess();
  sub_269CD91D0(0, &qword_28034FDB0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

id SleepActivityConfigurationDataSource.__allocating_init()()
{
  sub_269CD9254(0, &qword_28034E708, &type metadata for SleepActivityConfigurationSectionLayout, MEMORY[0x277CBCED0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v43 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v6 = objc_allocWithZone(MEMORY[0x277D62528]);
  v7 = sub_269D9A5F0();
  v8 = [v6 initWithIdentifier:v7 healthStore:v5];

  type metadata accessor for SleepScheduleProvider();
  v9 = v8;
  v10 = SleepScheduleProvider.__allocating_init(sleepStore:)(v9);
  v11 = v9;
  v45 = v10;
  v12 = HKSPSleepStore.settings.getter();
  v13 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  v14 = SleepSettingsProvider.init(sleepStore:sleepSettings:)(v11, v12);
  v15 = *MEMORY[0x277CCC0E0];
  v16 = objc_allocWithZone(MEMORY[0x277D62460]);
  v44 = v14;
  v47 = v11;
  v46 = [v16 initWithFeatureIdentifier:v15 sleepStore:v11];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v18 = result;
    v19 = HKSPCurrentDateProvider();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v21 = [objc_allocWithZone(type metadata accessor for WatchAppInstalledProvider()) init];
    v43 = [objc_opt_self() hksp_internalUserDefaults];
    v22 = type metadata accessor for SleepActivityConfigurationModel();
    v23 = objc_allocWithZone(v22);
    v24 = OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel__layout;
    v51 = 0;
    sub_269D98840();
    (*(v2 + 32))(&v23[v24], v4, v1);
    v25 = &v23[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_configUIVisitedKey];
    *v25 = sub_269D9A630();
    v25[1] = v26;
    *&v23[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_subscriptions] = MEMORY[0x277D84FA0];
    sub_269D97D80();
    v27 = sub_269D97D70();
    v28 = objc_allocWithZone(type metadata accessor for SleepSettingsModel());
    v29 = v44;
    v30 = sub_269CB5A60(v29, v27, v28);

    swift_beginAccess();
    v50 = v30;
    sub_269D98840();
    swift_endAccess();
    v31 = objc_allocWithZone(type metadata accessor for SleepScheduleModel());
    v32 = v45;

    v33 = sub_269C79AD0(v32, sub_269C79AA4, v20, v31);

    swift_beginAccess();
    v50 = v33;
    sub_269D98840();
    swift_endAccess();
    v34 = v46;
    *&v23[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_featureAvailability] = v46;
    *&v23[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_watchAppInstalledProvider] = v21;
    *&v23[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] = v18;
    v49.receiver = v23;
    v49.super_class = v22;
    v35 = v34;
    v36 = v21;
    v37 = v18;
    v38 = objc_msgSendSuper2(&v49, sel_init);

    v39 = sub_269D9A5F0();

    v40 = v43;
    [v43 setBool:1 forKey:v39];

    sub_269C734BC();
    sub_269C72FDC();
    sub_269C55300();
    v41 = sub_269D9AC40();
    [v35 registerObserver:v38 queue:v41];

    v42 = (*(v48 + 232))(v38);

    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SleepActivityConfigurationDataSource.__allocating_init(sleepModel:)(void *a1)
{
  swift_allocObject();
  v2 = sub_269CD887C(a1);

  return v2;
}

uint64_t SleepActivityConfigurationDataSource.init(sleepModel:)(void *a1)
{
  v2 = sub_269CD887C(a1);

  return v2;
}

uint64_t sub_269CD83FC(uint64_t a1, uint64_t a2, char *a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  sub_269C5BE08(a3, &v8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_269D98890();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v4 = v8;
  if ([*&a3[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] isDeviceSupported])
  {
    v5 = v4 > 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = a3;
  }

  else
  {
    a3 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = a3;

  sub_269D98890();
}

uint64_t SleepActivityConfigurationDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI36SleepActivityConfigurationDataSource__viewModel;
  sub_269CD9254(0, &qword_28034FDA0, &type metadata for SectionsViewModel, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13SleepHealthUI36SleepActivityConfigurationDataSource__sleepTreatmentRowViewProvider;
  sub_269CD91D0(0, &qword_28034FDB0, MEMORY[0x277CBCED0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t SleepActivityConfigurationDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI36SleepActivityConfigurationDataSource__viewModel;
  sub_269CD9254(0, &qword_28034FDA0, &type metadata for SectionsViewModel, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13SleepHealthUI36SleepActivityConfigurationDataSource__sleepTreatmentRowViewProvider;
  sub_269CD91D0(0, &qword_28034FDB0, MEMORY[0x277CBCED0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_269CD883C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SleepActivityConfigurationDataSource();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

uint64_t sub_269CD887C(void *a1)
{
  v2 = v1;
  sub_269C71370(0);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD9254(0, &qword_28034E838, &type metadata for SleepActivityConfigurationSectionLayout, MEMORY[0x277CBCEC0]);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  sub_269CD92A4();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD93A8();
  v41 = v12;
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD91D0(0, &qword_28034FDB0, MEMORY[0x277CBCED0]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC13SleepHealthUI36SleepActivityConfigurationDataSource__sleepTreatmentRowViewProvider;
  v43 = 0;
  sub_269CD9254(0, &qword_28034FDB8, &type metadata for SleepTreatmentRowViewProvider, MEMORY[0x277D83D88]);
  sub_269D98840();
  (*(v17 + 32))(v2 + v20, v19, v16);
  *(v2 + OBJC_IVAR____TtC13SleepHealthUI36SleepActivityConfigurationDataSource_subscriptions) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC13SleepHealthUI36SleepActivityConfigurationDataSource_sleepModel) = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = a1;
  sub_269D98880();

  LOBYTE(v42) = v43;
  sub_269C5BE08(v21, &v44);
  v22 = v44;
  swift_beginAccess();
  v42 = v22;
  sub_269D98840();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v23 = v43;
  v24 = 0;
  if ([*&v21[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] isDeviceSupported] && v23 > 1)
  {
    v25 = v21;
    v24 = v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v24;

  sub_269D98890();
  swift_beginAccess();
  sub_269CD9254(0, &qword_28034E708, &type metadata for SleepActivityConfigurationSectionLayout, MEMORY[0x277CBCED0]);
  sub_269D98850();
  swift_endAccess();
  sub_269CD932C();
  v26 = v36;
  sub_269D988F0();
  (*(v35 + 8))(v8, v26);
  sub_269C55300();
  v27 = sub_269D9AC40();
  v43 = v27;
  v28 = sub_269D9AC30();
  v29 = v40;
  (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
  sub_269CD9494(&qword_28034FE08, sub_269CD92A4);
  sub_269CD9494(&qword_280C0AEC0, sub_269C55300);
  v30 = v38;
  sub_269D988E0();
  sub_269C476EC(v29);

  (*(v37 + 8))(v11, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  *(v31 + 24) = v21;
  sub_269CD9494(&unk_28034FE10, sub_269CD93A8);
  v32 = v21;

  v33 = v41;
  sub_269D98900();

  (*(v39 + 8))(v14, v33);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  return v2;
}

uint64_t type metadata accessor for SleepActivityConfigurationDataSource()
{
  result = qword_28034FDD0;
  if (!qword_28034FDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CD8FF0()
{
  sub_269CD9254(319, &qword_28034FDA0, &type metadata for SectionsViewModel, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_269CD91D0(319, &qword_28034FDB0, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_269CD91D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269CD9254(255, &qword_28034FDB8, &type metadata for SleepTreatmentRowViewProvider, MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_269CD9254(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269CD92A4()
{
  if (!qword_28034FDF0)
  {
    sub_269CD9254(255, &qword_28034E838, &type metadata for SleepActivityConfigurationSectionLayout, MEMORY[0x277CBCEC0]);
    sub_269CD932C();
    v0 = sub_269D986D0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FDF0);
    }
  }
}

unint64_t sub_269CD932C()
{
  result = qword_28034FDF8;
  if (!qword_28034FDF8)
  {
    sub_269CD9254(255, &qword_28034E838, &type metadata for SleepActivityConfigurationSectionLayout, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FDF8);
  }

  return result;
}

void sub_269CD93A8()
{
  if (!qword_28034FE00)
  {
    sub_269CD92A4();
    sub_269C55300();
    sub_269CD9494(&qword_28034FE08, sub_269CD92A4);
    sub_269CD9494(&qword_280C0AEC0, sub_269C55300);
    v0 = sub_269D98710();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FE00);
    }
  }
}

uint64_t sub_269CD9494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269CD94E4(uint64_t result)
{
  v2 = v1;
  if (*&v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher])
  {
    v3 = result;

    sub_269D987C0();

    if ((v14 & 1) == 0)
    {
      result = Double.hoursAndMinutes.getter(v13);
      if ((v5 & 1) == 0)
      {
        v6 = &v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
        if ((v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 24] & 1) == 0)
        {
          return sub_269CDA618(result, v4, v3 & 1);
        }

        v7 = 60 * result;
        if ((result * 60) >> 64 == (60 * result) >> 63)
        {
          v8 = __OFADD__(v7, v4);
          v9 = v7 + v4;
          if (!v8)
          {
            v10 = *(v6 + 2);
            if (v10)
            {
              if (v9 != 0x8000000000000000 || v10 != -1)
              {
                v11 = v9 / v10;
                result = [v2 pickerView:v2 numberOfRowsInComponent:0];
                if (result >= v11)
                {
                  [v2 selectRow:v11 inComponent:(v6[24] & 1) == 0 animated:0];
                  return sub_269CDA7D8(v11, (v6[24] & 1) == 0, v3 & 1, v12);
                }

                return result;
              }

LABEL_17:
              __break(1u);
              return result;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_16;
      }
    }
  }

  return result;
}