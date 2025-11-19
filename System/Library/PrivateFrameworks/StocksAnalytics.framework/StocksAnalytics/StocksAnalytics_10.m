uint64_t AddEarningsToCalendarEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220306C1C(0, &qword_27CF28540, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220306678();
  sub_220370168();
  LOBYTE(v25) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    LOBYTE(v25) = *v13;
    v26 = v14;
    v27 = v15;
    v30 = 1;
    sub_2201FBD1C();

    sub_22036FFF8();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v18 = *(v16 + 16);
    v19 = v16[3];
    v20 = v16[4];
    v25 = *v16;
    v26 = v17;
    LOBYTE(v27) = v18;
    v28 = v19;
    v29 = v20;
    v30 = 2;
    sub_220230C50();

    sub_22036FFF8();

    v21 = (v3 + v12[7]);
    v22 = *v21;
    v23 = v21[1];
    LOWORD(v21) = *(v21 + 8);
    v25 = v22;
    v26 = v23;
    LOWORD(v27) = v21;
    v30 = 3;
    sub_220202110();

    sub_22036FFF8();

    LOBYTE(v25) = *(v3 + v12[8]);
    v30 = 4;
    sub_2202EEEBC();
    sub_22036FFF8();
    LOBYTE(v25) = *(v3 + v12[9]);
    v30 = 5;
    sub_220292214();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220306678()
{
  result = qword_27CF28548;
  if (!qword_27CF28548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28548);
  }

  return result;
}

uint64_t AddEarningsToCalendarEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_22036F388();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220306C1C(0, &qword_27CF28550, MEMORY[0x277D844C8]);
  v38 = v7;
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220306678();
  v37 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v18 = v34;
  v17 = v35;
  LOBYTE(v39) = 0;
  sub_2202366E0(&qword_2812666A0);
  v19 = v36;
  sub_22036FF28();
  (*(v17 + 32))(v16, v19, v4);
  v44 = 1;
  sub_2201FBCC4();
  sub_22036FF28();
  v20 = v40;
  v21 = v41;
  v22 = v16 + v11[5];
  *v22 = v39;
  *(v22 + 8) = v20;
  *(v22 + 16) = v21;
  v44 = 2;
  sub_220230BFC();
  v36 = 0;
  sub_22036FF28();
  v23 = v40;
  v24 = v41;
  v25 = v42;
  v26 = v43;
  v27 = v16 + v11[6];
  *v27 = v39;
  *(v27 + 8) = v23;
  *(v27 + 16) = v24;
  *(v27 + 24) = v25;
  *(v27 + 32) = v26;
  v44 = 3;
  sub_2202020B8();
  sub_22036FF28();
  v28 = v40;
  v29 = v41;
  v30 = v16 + v11[7];
  *v30 = v39;
  *(v30 + 8) = v28;
  *(v30 + 16) = v29;
  v44 = 4;
  sub_2202EEE64();
  sub_22036FF28();
  *(v16 + v11[8]) = v39;
  v44 = 5;
  sub_2202921BC();
  sub_22036FF28();
  (*(v18 + 8))(v37, v38);
  *(v16 + v11[9]) = v39;
  sub_220306C80(v16, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220306CE4(v16);
}

void sub_220306C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220306678();
    v7 = a3(a1, &type metadata for AddEarningsToCalendarEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220306C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220306CE4(uint64_t a1)
{
  v2 = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220306E18@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220305A78(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220305A78(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220305A78(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_220305A78(0, &qword_27CF28530, sub_2202EEE64, sub_2202EEEBC);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_220305A78(0, &qword_27CF28538, sub_2202921BC, sub_220292214);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

void sub_220307118()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220305A78(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
    if (v1 <= 0x3F)
    {
      sub_220305A78(319, &qword_281266870, sub_220230BFC, sub_220230C50);
      if (v2 <= 0x3F)
      {
        sub_220305A78(319, &qword_281266728, sub_2202020B8, sub_220202110);
        if (v3 <= 0x3F)
        {
          sub_220305A78(319, &qword_27CF28530, sub_2202EEE64, sub_2202EEEBC);
          if (v4 <= 0x3F)
          {
            sub_220305A78(319, &qword_27CF28538, sub_2202921BC, sub_220292214);
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

uint64_t sub_22030733C()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2203073F0()
{
  result = qword_27CF28578;
  if (!qword_27CF28578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28578);
  }

  return result;
}

unint64_t sub_220307448()
{
  result = qword_27CF28580;
  if (!qword_27CF28580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28580);
  }

  return result;
}

unint64_t sub_2203074A0()
{
  result = qword_27CF28588;
  if (!qword_27CF28588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28588);
  }

  return result;
}

uint64_t sub_2203074F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002203918F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220391910 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22030770C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t ArticleViewData.viewSessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ArticleViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220307800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7373655377656976 && a2 == 0xED000044496E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_220307890(uint64_t a1)
{
  v2 = sub_220307A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203078CC(uint64_t a1)
{
  v2 = sub_220307A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewData.encode(to:)(void *a1)
{
  sub_220307C2C(0, &qword_281261C90, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220307A54();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220307A54()
{
  result = qword_2812656D0;
  if (!qword_2812656D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656D0);
  }

  return result;
}

uint64_t ArticleViewData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220307C2C(0, &qword_281261DE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220307A54();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FEE8();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220307C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220307A54();
    v7 = a3(a1, &type metadata for ArticleViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220307CB0(void *a1)
{
  sub_220307C2C(0, &qword_281261C90, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220307A54();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220307E20()
{
  result = qword_27CF28590;
  if (!qword_27CF28590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28590);
  }

  return result;
}

unint64_t sub_220307E78()
{
  result = qword_2812656C0;
  if (!qword_2812656C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656C0);
  }

  return result;
}

unint64_t sub_220307ED0()
{
  result = qword_2812656C8;
  if (!qword_2812656C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656C8);
  }

  return result;
}

uint64_t sub_220307FB0()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_220307FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2203080B8(uint64_t a1)
{
  v2 = sub_2203082DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203080F4(uint64_t a1)
{
  v2 = sub_2203082DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdJournalEntryData.encode(to:)(void *a1)
{
  sub_2203085BC(0, &qword_281261C50, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203082DC();
  sub_220370168();
  v18 = v10;
  v17 = 0;
  sub_220308330();
  sub_22036FFF8();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_220308384();
    sub_22036FF88();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2203082DC()
{
  result = qword_281264CB0;
  if (!qword_281264CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264CB0);
  }

  return result;
}

unint64_t sub_220308330()
{
  result = qword_281264360;
  if (!qword_281264360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264360);
  }

  return result;
}

unint64_t sub_220308384()
{
  result = qword_281264650[0];
  if (!qword_281264650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264650);
  }

  return result;
}

uint64_t AdJournalEntryData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2203085BC(0, &qword_27CF28598, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203082DC();
  sub_220370148();
  if (!v2)
  {
    v18 = 0;
    sub_220308620();
    sub_22036FF28();
    v12 = v19;
    v16 = 1;
    sub_220308674();
    sub_22036FEB8();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203085BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203082DC();
    v7 = a3(a1, &type metadata for AdJournalEntryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220308620()
{
  result = qword_27CF285A0;
  if (!qword_27CF285A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285A0);
  }

  return result;
}

unint64_t sub_220308674()
{
  result = qword_27CF285A8;
  if (!qword_27CF285A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdJournalEntryData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_2203087C8()
{
  result = qword_27CF285B0;
  if (!qword_27CF285B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285B0);
  }

  return result;
}

unint64_t sub_220308820()
{
  result = qword_281264CA0;
  if (!qword_281264CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264CA0);
  }

  return result;
}

unint64_t sub_220308878()
{
  result = qword_281264CA8;
  if (!qword_281264CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264CA8);
  }

  return result;
}

uint64_t AdData.impressionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AdData.impressionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AdData.iadCampaign.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AdData.iadCampaign.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AdData.iadLine.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AdData.iadLine.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AdData.iadAd.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t AdData.iadAd.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_220308B8C()
{
  v1 = *v0;
  v2 = 0x6973736572706D69;
  v3 = 0x61706D6143646169;
  v4 = 0x656E694C646169;
  if (v1 != 4)
  {
    v4 = 0x6441646169;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657079546461;
  if (v1 != 1)
  {
    v5 = 0x6974616572436461;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_220308C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220309624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220308C84(uint64_t a1)
{
  v2 = sub_220308F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220308CC0(uint64_t a1)
{
  v2 = sub_220308F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdData.encode(to:)(void *a1)
{
  sub_22030940C(0, &qword_27CF285B8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 16);
  v21 = *(v1 + 17);
  v22 = v11;
  v12 = v1[3];
  v20[4] = v1[4];
  v20[5] = v12;
  v13 = v1[5];
  v20[2] = v1[6];
  v20[3] = v13;
  v14 = v1[8];
  v20[0] = v1[7];
  v20[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220308F80();
  v16 = v4;
  sub_220370168();
  v31 = 0;
  v17 = v23;
  sub_22036FFB8();
  if (!v17)
  {
    v18 = v21;
    v30 = v22;
    v29 = 1;
    sub_220308FD4();
    sub_22036FFF8();
    v28 = v18;
    v27 = 2;
    sub_22028B818();
    sub_22036FFF8();
    v26 = 3;
    sub_22036FF68();
    v25 = 4;
    sub_22036FF68();
    v24 = 5;
    sub_22036FF68();
  }

  return (*(v5 + 8))(v8, v16);
}

unint64_t sub_220308F80()
{
  result = qword_27CF285C0;
  if (!qword_27CF285C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285C0);
  }

  return result;
}

unint64_t sub_220308FD4()
{
  result = qword_27CF285C8;
  if (!qword_27CF285C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285C8);
  }

  return result;
}

uint64_t AdData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22030940C(0, &qword_27CF285D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220308F80();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41[0]) = 0;
  v12 = sub_22036FEE8();
  v14 = v13;
  v55 = v12;
  LOBYTE(v36) = 1;
  sub_220309470();
  sub_22036FF28();
  v15 = LOBYTE(v41[0]);
  LOBYTE(v36) = 2;
  sub_22028BA68();
  sub_22036FF28();
  v34 = LOBYTE(v41[0]);
  v35 = v15;
  LOBYTE(v41[0]) = 3;
  v16 = sub_22036FE98();
  v18 = v17;
  v33 = v16;
  LOBYTE(v41[0]) = 4;
  v31 = sub_22036FE98();
  v32 = v19;
  v52 = 5;
  v20 = sub_22036FE98();
  v21 = v10;
  v23 = v22;
  (*(v7 + 8))(v21, v6);
  v24 = v55;
  *&v36 = v55;
  *(&v36 + 1) = v14;
  LOBYTE(v37) = v35;
  BYTE1(v37) = v34;
  *(&v37 + 2) = v53;
  WORD3(v37) = v54;
  *(&v37 + 1) = v33;
  *&v38 = v18;
  v25 = v31;
  *(&v38 + 1) = v31;
  *&v39 = v32;
  *(&v39 + 1) = v20;
  v40 = v23;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  *(a2 + 64) = v23;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  *a2 = v26;
  *(a2 + 16) = v27;
  sub_2202823D8(&v36, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41[0] = v24;
  v41[1] = v14;
  v42 = v35;
  v43 = v34;
  v44 = v53;
  v45 = v54;
  v46 = v33;
  v47 = v18;
  v48 = v25;
  v49 = v32;
  v50 = v20;
  v51 = v23;
  return sub_220282A40(v41);
}

void sub_22030940C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220308F80();
    v7 = a3(a1, &type metadata for AdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220309470()
{
  result = qword_27CF285D8;
  if (!qword_27CF285D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285D8);
  }

  return result;
}

unint64_t sub_220309520()
{
  result = qword_27CF285E0;
  if (!qword_27CF285E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285E0);
  }

  return result;
}

unint64_t sub_220309578()
{
  result = qword_27CF285E8;
  if (!qword_27CF285E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285E8);
  }

  return result;
}

unint64_t sub_2203095D0()
{
  result = qword_27CF285F0;
  if (!qword_27CF285F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285F0);
  }

  return result;
}

uint64_t sub_220309624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736572706D69 && a2 == 0xEC00000044496E6FLL;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657079546461 && a2 == 0xE600000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974616572436461 && a2 == 0xEE00657079546576 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61706D6143646169 && a2 == 0xEB000000006E6769 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E694C646169 && a2 == 0xE700000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6441646169 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t UserEventStorageData.init(onDiskSize:prunedSessionCount:prunedSessionSize:totalSessionsCount:oldestSessionAge:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_220309930()
{
  v1 = *v0;
  v2 = 0x69536B7369446E6FLL;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2203099E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22030A1B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220309A08(uint64_t a1)
{
  v2 = sub_220309C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220309A44(uint64_t a1)
{
  v2 = sub_220309C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEventStorageData.encode(to:)(void *a1)
{
  sub_220309EF4(0, &qword_281261C10, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v16[1] = v1[2];
  v16[2] = v9;
  v16[0] = v11;
  v12 = v1[4];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220309C68();
  sub_220370168();
  v21 = 0;
  v14 = v16[3];
  sub_220370018();
  if (!v14)
  {
    v20 = 1;
    sub_220370018();
    v19 = 2;
    sub_220370018();
    v18 = 3;
    sub_220370018();
    v17 = 4;
    sub_220370018();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220309C68()
{
  result = qword_281263B50;
  if (!qword_281263B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B50);
  }

  return result;
}

uint64_t UserEventStorageData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220309EF4(0, &qword_281261DA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220309C68();
  sub_220370148();
  if (!v2)
  {
    v23 = 0;
    v12 = sub_22036FF48();
    v22 = 1;
    v13 = sub_22036FF48();
    v21 = 2;
    v18 = sub_22036FF48();
    v20 = 3;
    v17 = sub_22036FF48();
    v19 = 4;
    v15 = sub_22036FF48();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v13;
    v16 = v17;
    a2[2] = v18;
    a2[3] = v16;
    a2[4] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220309EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220309C68();
    v7 = a3(a1, &type metadata for UserEventStorageData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220309F5C()
{
  result = qword_281263B28;
  if (!qword_281263B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B28);
  }

  return result;
}

unint64_t sub_220309FB4()
{
  result = qword_281263B30;
  if (!qword_281263B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B30);
  }

  return result;
}

uint64_t sub_22030A038(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22030A058(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_22030A0B0()
{
  result = qword_27CF285F8;
  if (!qword_27CF285F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285F8);
  }

  return result;
}

unint64_t sub_22030A108()
{
  result = qword_281263B40;
  if (!qword_281263B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B40);
  }

  return result;
}

unint64_t sub_22030A160()
{
  result = qword_281263B48;
  if (!qword_281263B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B48);
  }

  return result;
}

uint64_t sub_22030A1B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536B7369446E6FLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220391960 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220391980 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002203919A0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002203919C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_22030A400()
{
  if (*v0)
  {
    result = 0x6E6F7473656C696DLL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_22030A438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F7473656C696DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22030A51C(uint64_t a1)
{
  v2 = sub_22030A740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030A558(uint64_t a1)
{
  v2 = sub_22030A740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdEngagementData.encode(to:)(void *a1)
{
  sub_22030AA20(0, &qword_27CF28600, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030A740();
  sub_220370168();
  v18 = v10;
  v17 = 0;
  sub_22030A794();
  sub_22036FFF8();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_22030A7E8();
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22030A740()
{
  result = qword_27CF28608;
  if (!qword_27CF28608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28608);
  }

  return result;
}

unint64_t sub_22030A794()
{
  result = qword_27CF28610;
  if (!qword_27CF28610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28610);
  }

  return result;
}

unint64_t sub_22030A7E8()
{
  result = qword_27CF28618;
  if (!qword_27CF28618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28618);
  }

  return result;
}

uint64_t VideoAdEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22030AA20(0, &qword_27CF28620, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030A740();
  sub_220370148();
  if (!v2)
  {
    v18 = 0;
    sub_22030AA84();
    sub_22036FF28();
    v12 = v19;
    v16 = 1;
    sub_22030AAD8();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22030AA20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030A740();
    v7 = a3(a1, &type metadata for VideoAdEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22030AA84()
{
  result = qword_27CF28628;
  if (!qword_27CF28628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28628);
  }

  return result;
}

unint64_t sub_22030AAD8()
{
  result = qword_27CF28630;
  if (!qword_27CF28630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28630);
  }

  return result;
}

unint64_t sub_22030AB30()
{
  result = qword_27CF28638;
  if (!qword_27CF28638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28638);
  }

  return result;
}

unint64_t sub_22030AB88()
{
  result = qword_27CF28640;
  if (!qword_27CF28640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoAdEngagementData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for VideoAdEngagementData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22030AD74()
{
  result = qword_27CF28648;
  if (!qword_27CF28648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28648);
  }

  return result;
}

unint64_t sub_22030ADCC()
{
  result = qword_27CF28650;
  if (!qword_27CF28650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28650);
  }

  return result;
}

unint64_t sub_22030AE24()
{
  result = qword_27CF28658;
  if (!qword_27CF28658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28658);
  }

  return result;
}

uint64_t sub_22030AF40()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_2812657A8);
  __swift_project_value_buffer(v0, qword_2812657A8);
  return sub_22036F108();
}

uint64_t TelemetryEvent.networkEventData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22030B02C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_22030B02C()
{
  if (!qword_281266898)
  {
    type metadata accessor for NetworkEventData();
    sub_22030B0DC(&qword_2812651C8);
    sub_22030B0DC(&qword_2812651D0);
    v0 = sub_22036EE38();
    if (!v1)
    {
      atomic_store(v0, &qword_281266898);
    }
  }
}

uint64_t sub_22030B0DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NetworkEventData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TelemetryEvent.networkEventData.setter(uint64_t a1)
{
  sub_22030B02C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TelemetryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_22030B02C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22030B274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002203919E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22030B308(uint64_t a1)
{
  v2 = sub_22030B4F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030B344(uint64_t a1)
{
  v2 = sub_22030B4F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TelemetryEvent.Model.encode(to:)(void *a1)
{
  sub_22030B7D0(0, &qword_27CF28660, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030B4F4();
  sub_220370168();
  type metadata accessor for NetworkEventData();
  sub_22030B0DC(&qword_2812651D0);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22030B4F4()
{
  result = qword_27CF28668;
  if (!qword_27CF28668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28668);
  }

  return result;
}

uint64_t TelemetryEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for NetworkEventData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22030B7D0(0, &qword_27CF28670, MEMORY[0x277D844C8]);
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TelemetryEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030B4F4();
  sub_220370148();
  if (!v2)
  {
    v17 = v21;
    sub_22030B0DC(&qword_2812651C8);
    v18 = v22;
    sub_22036FF28();
    (*(v17 + 8))(v11, v8);
    sub_22030B854(v18, v15, type metadata accessor for NetworkEventData);
    sub_22030B854(v15, v20, type metadata accessor for TelemetryEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22030B7D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030B4F4();
    v7 = a3(a1, &type metadata for TelemetryEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22030B854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22030B8D4(void *a1)
{
  sub_22030B7D0(0, &qword_27CF28660, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030B4F4();
  sub_220370168();
  type metadata accessor for NetworkEventData();
  sub_22030B0DC(&qword_2812651D0);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22030BAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_22030B02C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_22030BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22030BD6C()
{
  result = qword_27CF28688;
  if (!qword_27CF28688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28688);
  }

  return result;
}

unint64_t sub_22030BDC4()
{
  result = qword_27CF28690;
  if (!qword_27CF28690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28690);
  }

  return result;
}

unint64_t sub_22030BE1C()
{
  result = qword_27CF28698;
  if (!qword_27CF28698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28698);
  }

  return result;
}

uint64_t sub_22030BF38()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281263A80);
  __swift_project_value_buffer(v0, qword_281263A80);
  return sub_22036F108();
}

uint64_t AppSessionResignEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionResignEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_22030C0F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22030C0F8()
{
  if (!qword_2812667D8)
  {
    sub_2201F8808();
    sub_2201F8860();
    v0 = sub_22036EE38();
    if (!v1)
    {
      atomic_store(v0, &qword_2812667D8);
    }
  }
}

uint64_t AppSessionResignEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_22030C0F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResignEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_22030C0F8();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AppSessionResignEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionResignEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AppSessionResignEvent.Model.init(eventData:orientationData:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AppSessionResignEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_22030C3D0()
{
  if (*v0)
  {
    result = 0x7461746E6569726FLL;
  }

  else
  {
    result = 0x746144746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_22030C41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22030C508(uint64_t a1)
{
  v2 = sub_22030C74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030C544(uint64_t a1)
{
  v2 = sub_22030C74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionResignEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22030CAF8(0, &qword_27CF286A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030C74C();
  sub_220370168();
  v15 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for AppSessionResignEvent.Model(0) + 20));
    v13[12] = 1;
    sub_2201F8860();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22030C74C()
{
  result = qword_27CF286A8;
  if (!qword_27CF286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286A8);
  }

  return result;
}

uint64_t AppSessionResignEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_22036F388();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22030CAF8(0, &qword_27CF286B0, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for AppSessionResignEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030C74C();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v32 = 0;
  sub_2202366E0(&qword_2812666A0);
  v18 = v29;
  v19 = v27;
  sub_22036FF28();
  v20 = v24;
  (*(v17 + 32))(v24, v6, v18);
  v30 = 1;
  sub_2201F8808();
  sub_22036FF28();
  (*(v28 + 8))(v11, v19);
  *(v20 + *(v23 + 20)) = v31;
  sub_22030CB5C(v20, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22030CBC0(v20);
}

void sub_22030CAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030C74C();
    v7 = a3(a1, &type metadata for AppSessionResignEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22030CB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionResignEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22030CBC0(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionResignEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22030CCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_22030C0F8();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_22030CDDC()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_22030C0F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22030CE88()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22030CF10()
{
  result = qword_27CF286C8;
  if (!qword_27CF286C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286C8);
  }

  return result;
}

unint64_t sub_22030CF68()
{
  result = qword_27CF286D0;
  if (!qword_27CF286D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286D0);
  }

  return result;
}

unint64_t sub_22030CFC0()
{
  result = qword_27CF286D8;
  if (!qword_27CF286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286D8);
  }

  return result;
}

StocksAnalytics::PerformanceDisplayType_optional __swiftcall PerformanceDisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PerformanceDisplayType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x614374656B72616DLL;
  if (*v0 != 2)
  {
    v2 = 0x61746E6563726570;
  }

  if (*v0)
  {
    v1 = 0x6563697270;
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

unint64_t sub_22030D100()
{
  result = qword_27CF286E0;
  if (!qword_27CF286E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286E0);
  }

  return result;
}

uint64_t sub_22030D154()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22030D21C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_22030D2D0()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

unint64_t sub_22030D450()
{
  result = qword_281263620;
  if (!qword_281263620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263620);
  }

  return result;
}

uint64_t sub_22030D56C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28718);
  __swift_project_value_buffer(v0, qword_27CF28718);
  return sub_22036F108();
}

uint64_t NonNewsArticleViewResignEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NonNewsArticleViewResignEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 20);
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResignEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 20);
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResignEvent.nonNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 24);
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResignEvent.nonNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 24);
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResignEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 28);
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResignEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 28);
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResignEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NonNewsArticleViewResignEvent(0);
  v5 = v4[5];
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t NonNewsArticleViewResignEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewResignEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t NonNewsArticleViewResignEvent.Model.nonNewsArticleData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewResignEvent.Model(0) + 24));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t NonNewsArticleViewResignEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

__n128 NonNewsArticleViewResignEvent.Model.init(eventData:viewData:nonNewsArticleData:orientationData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 8);
  v18 = a3[1];
  v19 = *a3;
  v10 = *(a3 + 4);
  v11 = *(a3 + 5);
  v12 = *a4;
  v13 = sub_22036F388();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  v15 = a5 + v14[5];
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v9;
  v16 = a5 + v14[6];
  result = v18;
  *v16 = v19;
  *(v16 + 16) = v18;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(a5 + v14[7]) = v12;
  return result;
}

uint64_t sub_22030DFA8(uint64_t a1)
{
  v2 = sub_22030E320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030DFE4(uint64_t a1)
{
  v2 = sub_22030E320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NonNewsArticleViewResignEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22030E7FC(0, &qword_27CF28730, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030E320();
  sub_220370168();
  LOBYTE(v23) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v23 = v14;
    v24 = v15;
    LOWORD(v25) = v13;
    v29 = 1;
    sub_220202110();

    sub_22036FFF8();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    v23 = *v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = 2;
    sub_22026C27C();

    sub_22036FFF8();

    LOWORD(v23) = *(v3 + v12[7]);
    v29 = 3;
    sub_2201F8860();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22030E320()
{
  result = qword_27CF28738;
  if (!qword_27CF28738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28738);
  }

  return result;
}

uint64_t NonNewsArticleViewResignEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_22036F388();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22030E7FC(0, &qword_27CF28740, MEMORY[0x277D844C8]);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030E320();
  v31 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v27;
  LOBYTE(v32) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v28;
  sub_22036FF28();
  (*(v16 + 32))(v14, v17, v4);
  v36 = 1;
  sub_2202020B8();
  sub_22036FF28();
  v18 = *(&v32 + 1);
  v19 = v33;
  v20 = &v14[v11[5]];
  *v20 = v32;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  v36 = 2;
  sub_22026C224();
  sub_22036FF28();
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = &v14[v11[6]];
  *v24 = v32;
  *(v24 + 1) = v21;
  *(v24 + 4) = v22;
  *(v24 + 5) = v23;
  v36 = 3;
  sub_2201F8808();
  sub_22036FF28();
  (*(v29 + 8))(v31, v30);
  *&v14[v11[7]] = v32;
  sub_22030E860(v14, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22030E8C4(v14);
}

void sub_22030E7FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030E320();
    v7 = a3(a1, &type metadata for NonNewsArticleViewResignEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22030E860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22030E8C4(uint64_t a1)
{
  v2 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22030EA5C()
{
  result = qword_27CF28768;
  if (!qword_27CF28768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28768);
  }

  return result;
}

unint64_t sub_22030EAB4()
{
  result = qword_27CF28770;
  if (!qword_27CF28770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28770);
  }

  return result;
}

unint64_t sub_22030EB0C()
{
  result = qword_27CF28778;
  if (!qword_27CF28778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28778);
  }

  return result;
}

uint64_t PurchaseData.purchaseID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PurchaseData.purchaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22030EC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6573616863727570 && a2 == 0xEA00000000004449;
  if (v5 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22030ED4C(uint64_t a1)
{
  v2 = sub_22030EF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030ED88(uint64_t a1)
{
  v2 = sub_22030EF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseData.encode(to:)(void *a1)
{
  sub_22030F210(0, &qword_281261CD8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = *(v1 + 16);
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_22030EF64();
  sub_220370168();
  v21 = 0;
  sub_22036FFB8();
  if (!v2)
  {
    v20 = v18;
    v19 = 1;
    sub_22030EFB8();
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_22030EF64()
{
  result = qword_281265D70;
  if (!qword_281265D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D70);
  }

  return result;
}

unint64_t sub_22030EFB8()
{
  result = qword_281265D48;
  if (!qword_281265D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D48);
  }

  return result;
}

uint64_t PurchaseData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22030F210(0, &qword_27CF28780, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030EF64();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v12 = sub_22036FEE8();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  sub_22030F274();
  sub_22036FF28();
  (*(v7 + 8))(v10, v6);
  v16 = v20;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22030F210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030EF64();
    v7 = a3(a1, &type metadata for PurchaseData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22030F274()
{
  result = qword_27CF28788;
  if (!qword_27CF28788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28788);
  }

  return result;
}

unint64_t sub_22030F324()
{
  result = qword_27CF28790;
  if (!qword_27CF28790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28790);
  }

  return result;
}

unint64_t sub_22030F37C()
{
  result = qword_281265D60;
  if (!qword_281265D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D60);
  }

  return result;
}

unint64_t sub_22030F3D4()
{
  result = qword_281265D68;
  if (!qword_281265D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D68);
  }

  return result;
}

uint64_t sub_22030F468(uint64_t a1)
{
  v2 = sub_22030F628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030F4A4(uint64_t a1)
{
  v2 = sub_22030F628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedPositionData.encode(to:)(void *a1)
{
  sub_22030F7FC(0, &qword_281261C70, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030F628();
  sub_220370168();
  sub_220370008();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22030F628()
{
  result = qword_2812652E0[0];
  if (!qword_2812652E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812652E0);
  }

  return result;
}

uint64_t FeedPositionData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_22030F7FC(0, qword_281267388, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030F628();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FF38();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22030F7FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030F628();
    v7 = a3(a1, &type metadata for FeedPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22030F880(void *a1)
{
  sub_22030F7FC(0, &qword_281261C70, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030F628();
  sub_220370168();
  sub_220370008();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22030F9EC()
{
  result = qword_27CF28798;
  if (!qword_27CF28798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28798);
  }

  return result;
}

unint64_t sub_22030FA44()
{
  result = qword_2812652D0;
  if (!qword_2812652D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812652D0);
  }

  return result;
}

unint64_t sub_22030FA9C()
{
  result = qword_2812652D8;
  if (!qword_2812652D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812652D8);
  }

  return result;
}

uint64_t ArticleScienceData.stocksFractionalCohortMembership.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t ArticleScienceData.init(newsComputedGlobalScoreCoefficient:newsUserFeedbackScore:newsAgedPersonalizationScore:newsDiversifiedPersonalizationScore:newsFeatureCtr:newsPersonalizationScore:newsPaidNonPaidSubscriptionCtr:newsSubscribedChannelCtr:newsAutoSubscribeCtr:newsFirstPassPersonalizationScore:stocksFractionalCohortMembership:stocksNewsPersonalizationScore:stocksGlobalScore:stocksTabiScore:stocksRealTimeUserFeedbackScore:stocksSubscriptionCount:stocksImportanceScore:stocksPublisherPrior:stocksHasBeenRead:stocksChannelDiversityRank:stocksImportanceScoreRank:stocksPersonalizedScore:stocksTimeDecayedScore:stocksDiversifiedScore:stocksArticleHalfLife:stocksArticleAge:)@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, double a14@<D7>, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22, __int128 a23, uint64_t a24)
{
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = a9;
  *(a6 + 24) = a10;
  *(a6 + 32) = a11;
  *(a6 + 40) = a12;
  *(a6 + 48) = a13;
  *(a6 + 56) = a14;
  *(a6 + 64) = a15;
  *(a6 + 72) = a16;
  *(a6 + 80) = result;
  *(a6 + 88) = a17;
  *(a6 + 104) = a18;
  *(a6 + 112) = a19;
  *(a6 + 120) = a2;
  *(a6 + 128) = a20;
  *(a6 + 136) = a21;
  *(a6 + 144) = a3;
  *(a6 + 148) = a4;
  *(a6 + 152) = a5;
  *(a6 + 160) = a22;
  *(a6 + 176) = a23;
  *(a6 + 192) = a24;
  return result;
}

unint64_t sub_220310050(char a1)
{
  result = 0x746165467377656ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    case 4:
      return result;
    case 5:
    case 7:
      result = 0xD000000000000018;
      break;
    case 6:
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 8:
    case 17:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 12:
    case 18:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6154736B636F7473;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 15:
    case 21:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 19:
      result = 0xD00000000000001ALL;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 22:
    case 23:
      result = 0xD000000000000016;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000022;
      break;
  }

  return result;
}

uint64_t sub_220310334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2203116BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220310368(uint64_t a1)
{
  v2 = sub_220310A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203103A4(uint64_t a1)
{
  v2 = sub_220310A48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleScienceData.encode(to:)(void *a1)
{
  sub_220311250(0, &qword_281261C40, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v32 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v45 = v1[2];
  v46 = v9;
  v12 = v1[5];
  v42 = v1[4];
  v43 = v11;
  v13 = v1[7];
  v40 = v1[6];
  v41 = v12;
  v14 = v1[9];
  v38 = v1[8];
  v39 = v13;
  v44 = v1[10];
  v15 = v1[12];
  v36 = v1[11];
  v37 = v14;
  v35 = v15;
  v16 = v1[14];
  v34 = v1[13];
  v33 = v16;
  v32[1] = *(v1 + 30);
  v18 = v1[16];
  v17 = v1[17];
  v32[0] = *(v1 + 144);
  v20 = *(v1 + 37);
  v19 = *(v1 + 38);
  v22 = v1[20];
  v21 = v1[21];
  v24 = v1[22];
  v23 = v1[23];
  v25 = v1[24];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220310A48();
  sub_220370168();
  LOBYTE(v49) = 0;
  v27 = v47;
  sub_22036FFD8();
  if (v27)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v29 = v20;
  v30 = v5;
  v31 = v44;
  LOBYTE(v49) = 1;
  sub_22036FFD8();
  LOBYTE(v49) = 2;
  v47 = v4;
  sub_22036FFD8();
  LOBYTE(v49) = 3;
  sub_22036FFD8();
  LOBYTE(v49) = 4;
  sub_22036FFD8();
  LOBYTE(v49) = 5;
  sub_22036FFD8();
  LOBYTE(v49) = 6;
  sub_22036FFD8();
  LOBYTE(v49) = 7;
  sub_22036FFD8();
  LOBYTE(v49) = 8;
  sub_22036FFD8();
  LODWORD(v46) = v29;
  LODWORD(v45) = v19;
  LOBYTE(v49) = 9;
  sub_22036FFD8();
  v49 = v31;
  v48 = 10;
  sub_220310A9C();
  sub_2203112B4(&qword_281261F18, sub_2202F4420);
  sub_22036FFF8();
  LOBYTE(v49) = 11;
  sub_22036FFD8();
  LOBYTE(v49) = 12;
  sub_22036FFD8();
  LOBYTE(v49) = 13;
  sub_22036FFD8();
  LOBYTE(v49) = 14;
  sub_22036FFD8();
  LOBYTE(v49) = 15;
  sub_220370008();
  LOBYTE(v49) = 16;
  sub_22036FFD8();
  LOBYTE(v49) = 17;
  sub_22036FFD8();
  LOBYTE(v49) = 18;
  sub_22036FFC8();
  LOBYTE(v49) = 19;
  sub_220370008();
  LOBYTE(v49) = 20;
  sub_220370008();
  LOBYTE(v49) = 21;
  sub_22036FFD8();
  LOBYTE(v49) = 22;
  sub_22036FFD8();
  LOBYTE(v49) = 23;
  sub_22036FFD8();
  LOBYTE(v49) = 24;
  sub_22036FFD8();
  LOBYTE(v49) = 25;
  sub_22036FFD8();
  return (*(v30 + 8))(v8, v47);
}

unint64_t sub_220310A48()
{
  result = qword_281264A98[0];
  if (!qword_281264A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264A98);
  }

  return result;
}

void sub_220310A9C()
{
  if (!qword_281261F20)
  {
    v0 = sub_22036FB88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261F20);
    }
  }
}

uint64_t ArticleScienceData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220311250(0, &qword_281261DC0, MEMORY[0x277D844C8]);
  v103 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220310A48();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  LOBYTE(v86[0]) = 0;
  sub_22036FF08();
  v13 = v12;
  LOBYTE(v86[0]) = 1;
  sub_22036FF08();
  v15 = v14;
  LOBYTE(v86[0]) = 2;
  sub_22036FF08();
  v17 = v16;
  LOBYTE(v86[0]) = 3;
  sub_22036FF08();
  v19 = v18;
  LOBYTE(v86[0]) = 4;
  sub_22036FF08();
  v21 = v20;
  LOBYTE(v86[0]) = 5;
  sub_22036FF08();
  v23 = v22;
  LOBYTE(v86[0]) = 6;
  sub_22036FF08();
  v25 = v24;
  LOBYTE(v86[0]) = 7;
  sub_22036FF08();
  v72 = v26;
  LOBYTE(v86[0]) = 8;
  sub_22036FF08();
  v28 = v27;
  LOBYTE(v86[0]) = 9;
  sub_22036FF08();
  v71 = v29;
  sub_220310A9C();
  LOBYTE(v73) = 10;
  sub_2203112B4(&qword_281261F10, sub_2202F43C8);
  sub_22036FF28();
  v30 = v86[0];
  LOBYTE(v86[0]) = 11;
  sub_22036FF08();
  v70 = v31;
  LOBYTE(v86[0]) = 12;
  sub_22036FF08();
  v69 = v32;
  LOBYTE(v86[0]) = 13;
  sub_22036FF08();
  v68 = v33;
  LOBYTE(v86[0]) = 14;
  sub_22036FF08();
  v67 = v34;
  LOBYTE(v86[0]) = 15;
  v35 = sub_22036FF38();
  LOBYTE(v86[0]) = 16;
  sub_22036FF08();
  v66 = v36;
  LOBYTE(v86[0]) = 17;
  sub_22036FF08();
  v65 = v37;
  LOBYTE(v86[0]) = 18;
  v64 = sub_22036FEF8();
  LOBYTE(v86[0]) = 19;
  v63 = sub_22036FF38();
  LOBYTE(v86[0]) = 20;
  v62 = sub_22036FF38();
  LOBYTE(v86[0]) = 21;
  sub_22036FF08();
  v61 = v38;
  LOBYTE(v86[0]) = 22;
  sub_22036FF08();
  v60 = v39;
  LOBYTE(v86[0]) = 23;
  sub_22036FF08();
  v59 = v40;
  LOBYTE(v86[0]) = 24;
  sub_22036FF08();
  v58 = v41;
  v100 = 25;
  sub_22036FF08();
  v57 = v42;
  v43 = v64 & 1;
  (*(v11 + 8))(v9, v103);
  *&v73 = v13;
  *(&v73 + 1) = v15;
  *&v74 = v17;
  *(&v74 + 1) = v19;
  *&v75 = v21;
  *(&v75 + 1) = v23;
  *&v76 = v25;
  *(&v76 + 1) = v72;
  *&v77 = v28;
  *(&v77 + 1) = v71;
  *&v78 = v30;
  *(&v78 + 1) = v70;
  *&v79 = v69;
  *(&v79 + 1) = v68;
  *&v80 = v67;
  DWORD2(v80) = v35;
  *&v81 = v66;
  *(&v81 + 1) = v65;
  LOBYTE(v82) = v43;
  BYTE3(v82) = v102;
  *(&v82 + 1) = v101;
  LODWORD(v11) = v62;
  v44 = v63;
  *(&v82 + 4) = __PAIR64__(v62, v63);
  *&v83 = v61;
  *(&v83 + 1) = v60;
  *&v84 = v59;
  *(&v84 + 1) = v58;
  v85 = v57;
  v45 = v73;
  v46 = v74;
  v47 = v76;
  *(a2 + 32) = v75;
  *(a2 + 48) = v47;
  *a2 = v45;
  *(a2 + 16) = v46;
  v48 = v77;
  v49 = v78;
  v50 = v80;
  *(a2 + 96) = v79;
  *(a2 + 112) = v50;
  *(a2 + 64) = v48;
  *(a2 + 80) = v49;
  v51 = v81;
  v52 = v82;
  v53 = v83;
  v54 = v84;
  *(a2 + 192) = v85;
  *(a2 + 160) = v53;
  *(a2 + 176) = v54;
  *(a2 + 128) = v51;
  *(a2 + 144) = v52;
  sub_220272A1C(&v73, v86);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v86[0] = v13;
  v86[1] = v15;
  v86[2] = v17;
  v86[3] = v19;
  v86[4] = v21;
  v86[5] = v23;
  v86[6] = v25;
  v86[7] = v72;
  v86[8] = v28;
  v86[9] = v71;
  v86[10] = v30;
  v86[11] = v70;
  v86[12] = v69;
  v86[13] = v68;
  v86[14] = v67;
  v87 = v35;
  v88 = v66;
  v89 = v65;
  v90 = v43;
  v91 = v101;
  v92 = v102;
  v93 = v44;
  v94 = v11;
  v95 = v61;
  v96 = v60;
  v97 = v59;
  v98 = v58;
  v99 = v57;
  return sub_22027391C(v86);
}

void sub_220311250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220310A48();
    v7 = a3(a1, &type metadata for ArticleScienceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2203112B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_220310A9C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_22031139C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2203113E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArticleScienceData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleScienceData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2203115B8()
{
  result = qword_27CF287A0;
  if (!qword_27CF287A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF287A0);
  }

  return result;
}

unint64_t sub_220311610()
{
  result = qword_281264A88;
  if (!qword_281264A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A88);
  }

  return result;
}

unint64_t sub_220311668()
{
  result = qword_281264A90;
  if (!qword_281264A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A90);
  }

  return result;
}

uint64_t sub_2203116BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000022 && 0x8000000220391A00 == a2;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220391A30 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220391A50 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000220391A70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746165467377656ELL && a2 == 0xEE00727443657275 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000220391AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000220391AC0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000220391AE0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220391B00 == a2 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000220391B20 == a2 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000220391B50 == a2 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000220391B80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220391BA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6154736B636F7473 && a2 == 0xEF65726F63536962 || (sub_220370048() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000220391BC0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220391BE0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220391C00 == a2 || (sub_220370048() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220391C20 == a2 || (sub_220370048() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220391C40 == a2 || (sub_220370048() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220391C60 == a2 || (sub_220370048() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220391C80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220391CA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220391CC0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220391CE0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220391D00 == a2 || (sub_220370048() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220391D20 == a2)
  {

    return 25;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

StocksAnalytics::LinkType_optional __swiftcall LinkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t LinkType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x72756F5361746164;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t sub_220311F40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72756F5361746164;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEA00000000006563;
  }

  if (*a2)
  {
    v6 = 0x72756F5361746164;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006563;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_220370048();
  }

  return v9 & 1;
}

unint64_t sub_220311FF0()
{
  result = qword_27CF287A8;
  if (!qword_27CF287A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF287A8);
  }

  return result;
}

uint64_t sub_220312044()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203120CC()
{
  *v0;
  sub_22036FB08();
}

uint64_t sub_220312140()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203121C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22036FE78();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_220312224(uint64_t *a1@<X8>)
{
  v2 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v2 = 0x72756F5361746164;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006563;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_220312328()
{
  result = qword_27CF287B0;
  if (!qword_27CF287B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF287B0);
  }

  return result;
}

uint64_t WatchedSymbolListData.symbols.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2203123F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_220312480(uint64_t a1)
{
  v2 = sub_220312694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203124BC(uint64_t a1)
{
  v2 = sub_220312694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchedSymbolListData.encode(to:)(void *a1)
{
  sub_2203128AC(0, &qword_281261C00, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312694();

  sub_220370168();
  v12[1] = v9;
  sub_220269D00();
  sub_22026A024(&qword_281261EF0);
  sub_22036FFF8();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220312694()
{
  result = qword_281263898;
  if (!qword_281263898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263898);
  }

  return result;
}

uint64_t WatchedSymbolListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2203128AC(0, &qword_281261D98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312694();
  sub_220370148();
  if (!v2)
  {
    sub_220269D00();
    sub_22026A024(&qword_281261EE0);
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203128AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220312694();
    v7 = a3(a1, &type metadata for WatchedSymbolListData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22031296C()
{
  result = qword_27CF287B8;
  if (!qword_27CF287B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF287B8);
  }

  return result;
}

unint64_t sub_2203129C4()
{
  result = qword_281263888;
  if (!qword_281263888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263888);
  }

  return result;
}

unint64_t sub_220312A1C()
{
  result = qword_281263890;
  if (!qword_281263890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263890);
  }

  return result;
}

uint64_t sub_220312B38()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF287F0);
  __swift_project_value_buffer(v0, qword_27CF287F0);
  return sub_22036F108();
}

uint64_t EditWatchListEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EditWatchListEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t EditWatchListEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_220312D54(uint64_t a1)
{
  v2 = sub_220312F40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220312D90(uint64_t a1)
{
  v2 = sub_220312F40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditWatchListEvent.Model.encode(to:)(void *a1)
{
  sub_22031322C(0, &qword_27CF28808, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312F40();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_220312F40()
{
  result = qword_27CF28810;
  if (!qword_27CF28810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28810);
  }

  return result;
}

uint64_t EditWatchListEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22036F388();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22031322C(0, &qword_27CF28818, MEMORY[0x277D844C8]);
  v8 = v7;
  v22 = *(v7 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for EditWatchListEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312F40();
  sub_220370148();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_2202366E0(&qword_2812666A0);
    sub_22036FF28();
    (*(v17 + 8))(v11, v8);
    (*(v18 + 32))(v15, v24, v4);
    sub_2203132B0(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031322C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220312F40();
    v7 = a3(a1, &type metadata for EditWatchListEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2203132B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditWatchListEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22031332C(void *a1)
{
  sub_22031322C(0, &qword_27CF28808, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312F40();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2203135CC()
{
  result = qword_27CF28840;
  if (!qword_27CF28840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28840);
  }

  return result;
}

unint64_t sub_220313624()
{
  result = qword_27CF28848;
  if (!qword_27CF28848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28848);
  }

  return result;
}

unint64_t sub_22031367C()
{
  result = qword_27CF28850;
  if (!qword_27CF28850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28850);
  }

  return result;
}

StocksAnalytics::ViewType_optional __swiftcall ViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ViewType.rawValue.getter()
{
  v1 = 1684366694;
  if (*v0 != 1)
  {
    v1 = 0x656C6369747261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_220313780(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684366694;
  if (v2 != 1)
  {
    v4 = 0x656C6369747261;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684366694;
  if (*a2 != 1)
  {
    v8 = 0x656C6369747261;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_220313878()
{
  result = qword_27CF28858;
  if (!qword_27CF28858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28858);
  }

  return result;
}

uint64_t sub_2203138CC()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220313968()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2203139F0()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220313A94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684366694;
  if (v2 != 1)
  {
    v5 = 0x656C6369747261;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_220313BAC()
{
  result = qword_2812620F8;
  if (!qword_2812620F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620F8);
  }

  return result;
}

uint64_t sub_220313CC8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28890);
  __swift_project_value_buffer(v0, qword_27CF28890);
  return sub_22036F108();
}

uint64_t CreateWatchlistEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CreateWatchlistEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t CreateWatchlistEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_220313EE4(uint64_t a1)
{
  v2 = sub_2203140D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220313F20(uint64_t a1)
{
  v2 = sub_2203140D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreateWatchlistEvent.Model.encode(to:)(void *a1)
{
  sub_2203143BC(0, &qword_27CF288A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203140D0();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2203140D0()
{
  result = qword_27CF288B0;
  if (!qword_27CF288B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF288B0);
  }

  return result;
}

uint64_t CreateWatchlistEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22036F388();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203143BC(0, &qword_27CF288B8, MEMORY[0x277D844C8]);
  v8 = v7;
  v22 = *(v7 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  Watchlist = type metadata accessor for CreateWatchlistEvent.Model(0);
  v13 = *(*(Watchlist - 8) + 64);
  MEMORY[0x28223BE20](Watchlist - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203140D0();
  sub_220370148();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_2202366E0(&qword_2812666A0);
    sub_22036FF28();
    (*(v17 + 8))(v11, v8);
    (*(v18 + 32))(v15, v24, v4);
    sub_220314440(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203143BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203140D0();
    v7 = a3(a1, &type metadata for CreateWatchlistEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220314440(uint64_t a1, uint64_t a2)
{
  Watchlist = type metadata accessor for CreateWatchlistEvent.Model(0);
  (*(*(Watchlist - 8) + 32))(a2, a1, Watchlist);
  return a2;
}

uint64_t sub_2203144BC(void *a1)
{
  sub_2203143BC(0, &qword_27CF288A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203140D0();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22031475C()
{
  result = qword_27CF288E0;
  if (!qword_27CF288E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF288E0);
  }

  return result;
}

unint64_t sub_2203147B4()
{
  result = qword_27CF288E8;
  if (!qword_27CF288E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF288E8);
  }

  return result;
}

unint64_t sub_22031480C()
{
  result = qword_27CF288F0;
  if (!qword_27CF288F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF288F0);
  }

  return result;
}

uint64_t sub_2203148CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546C6F72746E6F63 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_220314958(uint64_t a1)
{
  v2 = sub_220314B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220314994(uint64_t a1)
{
  v2 = sub_220314B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioControlMenuData.encode(to:)(void *a1)
{
  sub_220314D6C(0, &qword_27CF288F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220314B2C();
  sub_220370168();
  v13 = v9;
  sub_220314B80();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220314B2C()
{
  result = qword_27CF28900;
  if (!qword_27CF28900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28900);
  }

  return result;
}

unint64_t sub_220314B80()
{
  result = qword_27CF28908;
  if (!qword_27CF28908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28908);
  }

  return result;
}

uint64_t AudioControlMenuData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220314D6C(0, &qword_27CF28910, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220314B2C();
  sub_220370148();
  if (!v2)
  {
    sub_220314DD0();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220314D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220314B2C();
    v7 = a3(a1, &type metadata for AudioControlMenuData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220314DD0()
{
  result = qword_27CF28918;
  if (!qword_27CF28918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28918);
  }

  return result;
}

unint64_t sub_220314E28()
{
  result = qword_27CF28920;
  if (!qword_27CF28920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28920);
  }

  return result;
}

unint64_t sub_220314E80()
{
  result = qword_27CF28928;
  if (!qword_27CF28928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28928);
  }

  return result;
}

unint64_t sub_220314F28()
{
  result = qword_27CF28930;
  if (!qword_27CF28930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28930);
  }

  return result;
}

unint64_t sub_220314F80()
{
  result = qword_27CF28938;
  if (!qword_27CF28938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28938);
  }

  return result;
}

unint64_t sub_220314FD8()
{
  result = qword_27CF28940;
  if (!qword_27CF28940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28940);
  }

  return result;
}

uint64_t sub_2203150F4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28978);
  __swift_project_value_buffer(v0, qword_27CF28978);
  return sub_22036F108();
}

uint64_t SubscriptionResultEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscriptionResultEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 20);
  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 20);
  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 24);
  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 24);
  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 28);
  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 28);
  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 32);
  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 32);
  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 36);
  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 36);
  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 40);
  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 40);
  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 44);
  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 44);
  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.subscriptionResultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 48);
  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.subscriptionResultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 48);
  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.storeKitErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 52);
  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.storeKitErrorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 52);
  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.adReferralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 56);
  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.adReferralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 56);
  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 60);
  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2203163CC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SubscriptionResultEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 60);
  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscriptionResultEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84);
  (*(*(v23 - 8) + 104))(a1 + v22, v6, v23);
  v24 = v4[14];
  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228);
  (*(*(v25 - 8) + 104))(a1 + v24, v6, v25);
  v26 = v4[15];
  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v6, v27);
}

uint64_t SubscriptionResultEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2202669E8(v10, v9);
}

uint64_t SubscriptionResultEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_2202440A8(v4, v5);
}

uint64_t SubscriptionResultEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t SubscriptionResultEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_22023846C(v4, v5, v6);
}

uint64_t SubscriptionResultEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscriptionResultEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscriptionResultEvent.Model.paywallData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t SubscriptionResultEvent.Model.subscriptionResultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t SubscriptionResultEvent.Model.storeKitErrorData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t SubscriptionResultEvent.Model.adReferralData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22027C714(v4, v5);
}

uint64_t SubscriptionResultEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_220298C74(v4, v5);
}

__n128 SubscriptionResultEvent.Model.init(eventData:newsArticleData:channelData:feedData:groupData:purchaseSessionData:purchaseData:paywallData:subscriptionResultData:storeKitErrorData:adReferralData:campaignData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t *a12, uint64_t a13)
{
  v18 = *(a3 + 16);
  v39 = *a4;
  v19 = *(a4 + 2);
  v20 = *(a5 + 4);
  v21 = *(a5 + 5);
  v43 = *a6;
  v42 = a6[1];
  v46 = *a7;
  v45 = a7[1];
  v44 = *(a7 + 16);
  v47 = *a8;
  v48 = *a10;
  v49 = *a11;
  v50 = a12[1];
  v51 = *a12;
  v52 = *(a13 + 40);
  v53 = *(a13 + 32);
  v22 = sub_22036F388();
  v40 = *(a13 + 16);
  v41 = *a13;
  v37 = a5[1];
  v38 = *a5;
  v35 = a3[1];
  v36 = *a3;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for SubscriptionResultEvent.Model(0);
  v24 = a9 + v23[5];
  v25 = *(a2 + 48);
  *(v24 + 32) = *(a2 + 32);
  *(v24 + 48) = v25;
  *(v24 + 64) = *(a2 + 64);
  v26 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v26;
  v27 = a9 + v23[6];
  *v27 = v36;
  *(v27 + 16) = v35;
  *(v27 + 32) = v18;
  v28 = a9 + v23[7];
  *v28 = v39;
  *(v28 + 16) = v19;
  v29 = a9 + v23[8];
  *v29 = v38;
  *(v29 + 16) = v37;
  *(v29 + 32) = v20;
  *(v29 + 40) = v21;
  v30 = (a9 + v23[9]);
  *v30 = v43;
  v30[1] = v42;
  v31 = a9 + v23[10];
  *v31 = v46;
  *(v31 + 8) = v45;
  *(v31 + 16) = v44;
  *(a9 + v23[11]) = v47;
  *(a9 + v23[12]) = v48;
  *(a9 + v23[13]) = v49;
  v32 = (a9 + v23[14]);
  *v32 = v51;
  v32[1] = v50;
  v33 = a9 + v23[15];
  result = v41;
  *v33 = v41;
  *(v33 + 16) = v40;
  *(v33 + 32) = v53;
  *(v33 + 40) = v52;
  return result;
}

unint64_t sub_220317064(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7272656665526461;
    if (a1 != 10)
    {
      v6 = 0x6E676961706D6163;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000011;
    }

    v7 = 0xD000000000000016;
    if (a1 == 7)
    {
      v7 = 0x446C6C6177796170;
    }

    if (a1 == 6)
    {
      v7 = 0x6573616863727570;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6174614464656566;
    v3 = 0x74614470756F7267;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x697472417377656ELL;
    if (a1 != 1)
    {
      v4 = 0x446C656E6E616863;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22031722C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2203191A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220317254(uint64_t a1)
{
  v2 = sub_2203178F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220317290(uint64_t a1)
{
  v2 = sub_2203178F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionResultEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203182F4(0, &qword_27CF28998, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v45 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203178F8();
  sub_220370168();
  v63 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for SubscriptionResultEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 16);
    v15 = *(v13 + 48);
    v58 = *(v13 + 32);
    v59 = v15;
    v16 = *(v13 + 16);
    v57[0] = *v13;
    v57[1] = v16;
    v17 = *(v13 + 48);
    v54 = v58;
    v55 = v17;
    v60 = *(v13 + 64);
    v56 = *(v13 + 64);
    v52 = v57[0];
    v53 = v14;
    v62 = 1;
    sub_2202669E8(v57, v50);
    sub_22022EDA0();
    sub_22036FF88();
    v50[2] = v54;
    v50[3] = v55;
    v51 = v56;
    v50[0] = v52;
    v50[1] = v53;
    sub_220267640(v50);
    v18 = v3 + v12[6];
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = *(v18 + 32);
    *&v45 = *v18;
    *(&v45 + 1) = v19;
    v46 = v20;
    v47 = v21;
    LOWORD(v48) = v22;
    v61 = 2;
    sub_2202440A8(v45, v19);
    sub_220236A84();
    sub_22036FF88();
    sub_220244C08(v45, *(&v45 + 1));
    v23 = (v3 + v12[7]);
    v24 = *(v23 + 2);
    v45 = *v23;
    v46 = v24;
    v61 = 3;
    sub_2201FBD1C();

    sub_22036FF88();

    v25 = (v3 + v12[8]);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v30 = v25[5];
    *&v45 = *v25;
    *(&v45 + 1) = v26;
    v46 = v27;
    v47 = v28;
    v48 = v29;
    v49 = v30;
    v61 = 4;
    sub_22023846C(v45, v26, v27);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v45, *(&v45 + 1), v46);
    v32 = (v3 + v12[9]);
    v33 = v32[1];
    *&v45 = *v32;
    *(&v45 + 1) = v33;
    v61 = 5;
    sub_220265D28();

    sub_22036FFF8();

    v34 = (v3 + v12[10]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v34) = *(v34 + 16);
    *&v45 = v35;
    *(&v45 + 1) = v36;
    LOBYTE(v46) = v34;
    v61 = 6;
    sub_220265F80();

    sub_22036FFF8();

    LOBYTE(v45) = *(v3 + v12[11]);
    v61 = 7;
    sub_220266254();
    sub_22036FFF8();
    LOBYTE(v45) = *(v3 + v12[12]);
    v61 = 8;
    sub_22029F61C();
    sub_22036FFF8();
    LOBYTE(v45) = *(v3 + v12[13]);
    v61 = 9;
    sub_22027FD84();
    sub_22036FF88();
    v37 = (v3 + v12[14]);
    v38 = v37[1];
    *&v45 = *v37;
    *(&v45 + 1) = v38;
    v61 = 10;
    sub_22027C714(v45, v38);
    sub_220284228();
    sub_22036FF88();
    sub_22027D3B4(v45, *(&v45 + 1));
    v39 = (v3 + v12[15]);
    v40 = v39[1];
    v41 = v39[2];
    v42 = v39[3];
    v43 = v39[4];
    v44 = v39[5];
    *&v45 = *v39;
    *(&v45 + 1) = v40;
    v46 = v41;
    v47 = v42;
    v48 = v43;
    v49 = v44;
    v61 = 11;
    sub_220298C74(v45, v40);
    sub_2202981C0();
    sub_22036FF88();
    sub_220299818(v45, *(&v45 + 1));
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2203178F8()
{
  result = qword_27CF289A0;
  if (!qword_27CF289A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289A0);
  }

  return result;
}

uint64_t SubscriptionResultEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_22036F388();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203182F4(0, &qword_27CF289A8, MEMORY[0x277D844C8]);
  v47 = v7;
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for SubscriptionResultEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203178F8();
  v46 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = a1;
  v39 = v11;
  v40 = v14;
  LOBYTE(v51) = 0;
  sub_2202366E0(&qword_2812666A0);
  v16 = v44;
  sub_22036FF28();
  v17 = v40;
  (*(v43 + 32))(v40, v16, v4);
  v57 = 1;
  sub_22022ED48();
  sub_22036FEB8();
  v38 = v4;
  v44 = 0;
  v18 = v39;
  v19 = &v17[v39[5]];
  v20 = v54;
  *(v19 + 2) = v53;
  *(v19 + 3) = v20;
  *(v19 + 16) = v55;
  v21 = v52;
  *v19 = v51;
  *(v19 + 1) = v21;
  v56 = 2;
  sub_220236A30();
  sub_22036FEB8();
  v22 = v50;
  v23 = &v17[v18[6]];
  v24 = v49;
  *v23 = v48;
  *(v23 + 1) = v24;
  *(v23 + 16) = v22;
  v56 = 3;
  sub_2201FBCC4();
  sub_22036FEB8();
  v25 = v49;
  v26 = &v17[v18[7]];
  *v26 = v48;
  *(v26 + 2) = v25;
  v56 = 4;
  sub_220236C88();
  sub_22036FEB8();
  v27 = &v17[v18[8]];
  v28 = v49;
  *v27 = v48;
  *(v27 + 1) = v28;
  *(v27 + 2) = v50;
  v56 = 5;
  sub_220265CD4();
  sub_22036FF28();
  v29 = *(&v48 + 1);
  v30 = &v17[v18[9]];
  *v30 = v48;
  *(v30 + 1) = v29;
  v56 = 6;
  sub_220265F2C();
  sub_22036FF28();
  v31 = *(&v48 + 1);
  v32 = v49;
  v33 = &v17[v18[10]];
  *v33 = v48;
  *(v33 + 1) = v31;
  v33[16] = v32;
  v56 = 7;
  sub_220266200();
  sub_22036FF28();
  v17[v18[11]] = v48;
  v56 = 8;
  sub_22029F5C4();
  sub_22036FF28();
  v17[v18[12]] = v48;
  v56 = 9;
  sub_22027FD2C();
  sub_22036FEB8();
  v40[v39[13]] = v48;
  v56 = 10;
  sub_2202841D0();
  sub_22036FEB8();
  *&v40[v39[14]] = v48;
  v56 = 11;
  sub_22029816C();
  sub_22036FEB8();
  (*(v45 + 8))(v46, v47);
  v34 = v40;
  v35 = &v40[v39[15]];
  v36 = v49;
  *v35 = v48;
  *(v35 + 1) = v36;
  *(v35 + 2) = v50;
  sub_220318358(v34, v42);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_2203183BC(v34);
}

void sub_2203182F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203178F8();
    v7 = a3(a1, &type metadata for SubscriptionResultEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220318358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionResultEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203183BC(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionResultEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2203184F0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84);
  (*(*(v24 - 8) + 104))(a2 + v23, v7, v24);
  v25 = a1[14];
  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228);
  (*(*(v26 - 8) + 104))(a2 + v25, v7, v26);
  v27 = a1[15];
  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v7, v28);
}

void sub_220318AD4()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2203163CC(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
    if (v1 <= 0x3F)
    {
      sub_2203163CC(319, &qword_281266858, sub_220236A30, sub_220236A84);
      if (v2 <= 0x3F)
      {
        sub_2203163CC(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
        if (v3 <= 0x3F)
        {
          sub_2203163CC(319, &qword_281266718, sub_220236C88, sub_220236CDC);
          if (v4 <= 0x3F)
          {
            sub_2203163CC(319, &qword_281266788, sub_220265CD4, sub_220265D28);
            if (v5 <= 0x3F)
            {
              sub_2203163CC(319, &qword_281266820, sub_220265F2C, sub_220265F80);
              if (v6 <= 0x3F)
              {
                sub_2203163CC(319, &qword_281266848, sub_220266200, sub_220266254);
                if (v7 <= 0x3F)
                {
                  sub_2203163CC(319, &qword_27CF28990, sub_22029F5C4, sub_22029F61C);
                  if (v8 <= 0x3F)
                  {
                    sub_2203163CC(319, &qword_27CF27360, sub_22027FD2C, sub_22027FD84);
                    if (v9 <= 0x3F)
                    {
                      sub_2203163CC(319, &qword_27CF27368, sub_2202841D0, sub_220284228);
                      if (v10 <= 0x3F)
                      {
                        sub_2203163CC(319, &qword_281266830, sub_22029816C, sub_2202981C0);
                        if (v11 <= 0x3F)
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

void sub_220318ED8()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF26930);
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF26288);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262190);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262048);
          if (v4 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_27CF273A8);
            if (v5 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_27CF273B0);
              if (v6 <= 0x3F)
              {
                sub_22023A8F4(319, &qword_281265DA0);
                if (v7 <= 0x3F)
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

unint64_t sub_22031909C()
{
  result = qword_27CF289D0;
  if (!qword_27CF289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289D0);
  }

  return result;
}

unint64_t sub_2203190F4()
{
  result = qword_27CF289D8;
  if (!qword_27CF289D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289D8);
  }

  return result;
}

unint64_t sub_22031914C()
{
  result = qword_27CF289E0;
  if (!qword_27CF289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289E0);
  }

  return result;
}

uint64_t sub_2203191A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002203909D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220391D40 == a2 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390DE0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7272656665526461 && a2 == 0xEE00617461446C61 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144)
  {

    return 11;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t FlushAnalyticsBatchesStartupTask.group.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_group;
  v4 = sub_22036F5C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_220319640()
{
  sub_2201FA9C4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_22036F7D8();
}

uint64_t sub_220319694(uint64_t a1)
{
  v218[1] = *MEMORY[0x277D85DE8];
  sub_22031BFC8();
  v185 = v2;
  v184 = *(v2 - 8);
  v3 = *(v184 + 64);
  MEMORY[0x28223BE20](v2);
  v183 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22036E3D8();
  v188 = *(v189 - 8);
  v5 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v187 = (&v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = sub_22036F3C8();
  v197 = *(v198 - 8);
  v7 = *(v197 + 64);
  MEMORY[0x28223BE20](v198);
  v196 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_22036E5D8();
  v195 = *(v204 - 8);
  v9 = *(v195 + 64);
  MEMORY[0x28223BE20](v204);
  v194 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_22036F388();
  v200 = *(v209 - 8);
  v11 = *(v200 + 64);
  MEMORY[0x28223BE20](v209);
  v201 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for AppSessionEndEvent.Model(0);
  v13 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v190 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_22036EC08();
  v191 = *(v207 - 8);
  v15 = *(v191 + 64);
  MEMORY[0x28223BE20](v207);
  v206 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D83D88];
  sub_22031C388(0, &qword_281266698, MEMORY[0x277CEAEB0], MEMORY[0x277D83D88]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v205 = &v165 - v20;
  sub_22031C388(0, &qword_281266980, MEMORY[0x277CEAC78], v17);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v212 = &v165 - v23;
  sub_22031C388(0, &qword_281266AC0, MEMORY[0x277CC9578], v17);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v208 = &v165 - v26;
  v215 = sub_22036E5A8();
  v211 = *(v215 - 8);
  v27 = *(v211 + 64);
  MEMORY[0x28223BE20](v215);
  v214 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22031C05C();
  v213 = v29;
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v193 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v192 = &v165 - v34;
  MEMORY[0x28223BE20](v33);
  v199 = &v165 - v35;
  v202 = type metadata accessor for StocksSession();
  v36 = *(*(v202 - 1) + 64);
  MEMORY[0x28223BE20](v202);
  v203 = (&v165 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_22036EC68();
  v210 = *(v38 - 8);
  v39 = *(v210 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (&v165 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_22036EC88();
  v216 = *(v42 - 8);
  v43 = *(v216 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v165 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = (&v165 - v47);
  v49 = sub_22036F3D8();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = (&v165 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_22036F228())
  {
    goto LABEL_4;
  }

  v177 = v50;
  v180 = v48;
  v178 = v41;
  v179 = v38;
  v175 = v46;
  v181 = v42;
  sub_22036F278();
  if (v54)
  {

    goto LABEL_4;
  }

  v57 = a1;
  v58 = sub_22036F418();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v61 = sub_22036F408();
  *v53 = sub_22031B1A0;
  v53[1] = 0;
  (*(v177 + 104))(v53, *MEMORY[0x277D6C9B0], v49);
  sub_22036F3E8();
  v62 = objc_opt_self();
  sub_22036F268();
  sub_22031C0C4();
  v63 = sub_22036FB58();

  v218[0] = 0;
  v64 = [v62 dataWithJSONObject:v63 options:0 error:v218];

  v65 = v218[0];
  if (!v64)
  {
    v72 = v65;
    sub_22036E4B8();

    swift_willThrow();
    goto LABEL_11;
  }

  v66 = sub_22036E518();
  v68 = v67;

  sub_22031C388(0, &qword_281261F80, MEMORY[0x277CEAC80], MEMORY[0x277D83940]);
  sub_22031C128();
  v69 = v217;
  sub_22036F3F8();
  if (v69)
  {
    v70 = v66;
    v71 = v68;
LABEL_9:
    sub_2202A6560(v70, v71);

    goto LABEL_5;
  }

  v171 = v62;
  v173 = v68;
  v172 = v57;
  v174 = v66;
  v217 = 0;
  v73 = 0;
  v74 = v218[0];
  v177 = *(v218[0] + 2);
  v75 = v216;
  v176 = v216 + 16;
  v76 = (v210 + 8);
  v210 = v216 + 8;
  v77 = v181;
  v78 = v180;
  while (1)
  {
    if (v177 == v73)
    {
      v170 = v74;
      v169 = 0x8000000220391DF0;
      sub_22036F238();
      v85 = sub_22036FA48();

      v218[0] = 0;
      v86 = [v171 dataWithJSONObject:v85 options:0 error:v218];

      v87 = v218[0];
      v88 = v217;
      v89 = v204;
      if (v86)
      {
        v90 = sub_22036E518();
        v92 = v91;

        v93 = v90;
        sub_22031C504(&qword_2812662B0, type metadata accessor for StocksSession);
        sub_22036F3F8();
        v94 = v174;
        if (v88)
        {
          sub_2202A6560(v93, v92);

          v70 = v94;
          v71 = v173;
          goto LABEL_9;
        }

        v166 = v93;
        v167 = v92;
        v168 = v61;
        v217 = 0;
        if (v177)
        {
          v96 = v170 + ((*(v216 + 80) + 32) & ~*(v216 + 80));
          v179 = *(v216 + 72);
          v180 = (v211 + 56);
          v191 += 8;
          v178 = (v200 + 48);
          v171 = (v200 + 8);
          v97 = MEMORY[0x277D84F90];
          v216 = *(v216 + 16);
          v98 = (v211 + 32);
          v99 = v208;
          v100 = v175;
          while (1)
          {
            v102 = v181;
            (v216)(v100, v96, v181);
            v103 = v212;
            sub_22036EC38();
            v104 = v103;
            v105 = sub_22036EC28();
            v106 = *(v105 - 8);
            if ((*(v106 + 48))(v104, 1, v105) != 1)
            {
              break;
            }

            sub_22031C200(v104, &qword_281266980, MEMORY[0x277CEAC78]);
            v107 = v206;
            sub_22036EC48();
            v108 = v205;
            sub_22036EBF8();
            (*v191)(v107, v207);
            v109 = v209;
            if ((*v178)(v108, 1, v209) != 1)
            {
              sub_22036F368();
              (*v210)(v100, v181);
              (*v171)(v108, v109);
LABEL_32:
              v111 = v214;
              v110 = v215;
              (*v180)(v99, 0, 1, v215);
              v112 = *v98;
              (*v98)(v111, v99, v110);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v97 = sub_220287E50(0, *(v97 + 2) + 1, 1, v97);
              }

              v113 = v211;
              v115 = *(v97 + 2);
              v114 = *(v97 + 3);
              if (v115 >= v114 >> 1)
              {
                v116 = sub_220287E50(v114 > 1, v115 + 1, 1, v97);
                v113 = v211;
                v97 = v116;
              }

              *(v97 + 2) = v115 + 1;
              v112(&v97[((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v115], v214, v215);
              v101 = v213;
              v100 = v175;
              goto LABEL_27;
            }

            (*v210)(v100, v181);
            sub_22031C200(v108, &qword_281266698, MEMORY[0x277CEAEB0]);
            (*v180)(v99, 1, 1, v215);
            sub_22031C200(v99, &qword_281266AC0, MEMORY[0x277CC9578]);
            v101 = v213;
LABEL_27:
            v96 += v179;
            if (!--v177)
            {

              v89 = v204;
              goto LABEL_39;
            }
          }

          sub_22036EC18();
          (*(v106 + 8))(v104, v105);
          v99 = v208;
          sub_22036E568();
          (*v210)(v100, v102);
          goto LABEL_32;
        }

        v97 = MEMORY[0x277D84F90];
        v101 = v213;
LABEL_39:
        v117 = v199;
        sub_22031B268(v199, v199 + *(v101 + 48), v172, v97);

        if (sub_22036F258())
        {
          v118 = 3;
        }

        else
        {
          v118 = 4;
        }

        LODWORD(v216) = v118;
        v119 = v194;
        sub_22036E5C8();
        sub_22036E5B8();
        (*(v195 + 8))(v119, v89);
        v120 = v192;
        sub_22031C270(v117, v192);
        v121 = *(v101 + 48);
        v122 = v203;
        v123 = *v203;
        v124 = v203[1];
        v126 = v203[2];
        v125 = v203[3];

        v127 = v122;
        sub_22036F378();
        v128 = *(v211 + 8);
        v129 = v215;
        v128(v120, v215);
        sub_22031C270(v117, v120);
        v130 = v213;
        v131 = *(v213 + 48);
        v132 = v193;
        sub_22031C270(v117, v193);
        v133 = v132 + *(v130 + 48);
        v134 = v196;
        sub_22036F3B8();
        v128(v132, v129);
        v135 = v120 + v131;
        v136 = v127;
        v128(v135, v129);
        v137 = *(v127 + v202[14]);
        if (v137)
        {
          v138 = v134;
          v139 = v117;
          v140 = *(v136 + v202[13]);
          v141 = v198;
          v142 = v197;
          v143 = v200;
          if ((v140 & 0xFF00) == 0x500)
          {
            v144 = 0x8000000220391E40;
            sub_22031C2D4();
            swift_allocError();
            v146 = 0xD000000000000027;
LABEL_50:
            *v145 = v146;
            v145[1] = v144;
            swift_willThrow();

            sub_2202A6560(v174, v173);

            sub_2202A6560(v166, v167);

            (*(v142 + 8))(v138, v141);
            (*(v143 + 8))(v201, v209);
            sub_22031C328(v139, sub_22031C05C);
            v148 = v136;
            goto LABEL_51;
          }

          v149 = *(v136 + v202[15]);
          if (!v149)
          {
            v144 = 0x8000000220391E70;
            sub_22031C2D4();
            swift_allocError();
            v146 = 0xD00000000000002CLL;
            goto LABEL_50;
          }

          v150 = v138;
          v78 = v190;
          (*(v200 + 32))(v190, v201, v209);
          v151 = v186;
          (*(v142 + 32))(v78 + *(v186 + 20), v150, v141);
          *(v78 + v151[6]) = v137;
          *(v78 + v151[7]) = v140;
          *(v78 + v151[8]) = v216;
          *(v78 + v151[9]) = v149;
          v152 = v78 + v151[10];
          *(v152 + 32) = 0;
          *v152 = 0u;
          *(v152 + 16) = 0u;
          *(v152 + 40) = 1;
          v153 = sub_22036E418();
          v154 = *(v153 + 48);
          v155 = *(v153 + 52);
          swift_allocObject();

          sub_22036E408();
          v156 = v187;
          *v187 = sub_22031BCA0;
          v156[1] = 0;
          (*(v188 + 104))(v156, *MEMORY[0x277CC8770], v189);
          sub_22036E3E8();
          sub_22031C504(&qword_281264C00, type metadata accessor for AppSessionEndEvent.Model);
          v157 = v217;
          sub_22036E3F8();
          if (!v157)
          {
            v217 = 0;
            v158 = objc_allocWithZone(sub_22036F208());
            if (sub_22036F218())
            {
              sub_22036F278();
              sub_22036F228();
              type metadata accessor for AppSessionEndEvent(0);
              sub_22031C504(qword_281264B50, type metadata accessor for AppSessionEndEvent);
              v159 = v183;
              sub_22036ED38();
              v160 = *(v182 + OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_loggingEventProcessor);
              sub_22036F088();
              sub_22031C388(0, &qword_281261B38, sub_22031C3EC, MEMORY[0x277D84560]);
              v161 = swift_allocObject();
              *(v161 + 16) = xmmword_220371600;
              v162 = v185;
              *(v161 + 56) = v185;
              *(v161 + 64) = sub_22031C504(&qword_2812668B8, sub_22031BFC8);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v161 + 32));
              (*(v184 + 32))(boxed_opaque_existential_1, v159, v162);
              sub_2202A6560(v174, v173);

              sub_2202A6560(v166, v167);

              sub_22031C328(v78, type metadata accessor for AppSessionEndEvent.Model);
              sub_22031C328(v199, sub_22031C05C);
              sub_22031C328(v203, type metadata accessor for StocksSession);
              result = v161;
              goto LABEL_5;
            }

            goto LABEL_55;
          }

          sub_2202A6560(v174, v173);

          sub_2202A6560(v166, v167);

          sub_22031C328(v78, type metadata accessor for AppSessionEndEvent.Model);
          sub_22031C328(v199, sub_22031C05C);
          v148 = v203;
        }

        else
        {
          sub_22031C2D4();
          swift_allocError();
          *v147 = 0xD00000000000002DLL;
          v147[1] = 0x8000000220391E10;
          swift_willThrow();
          sub_2202A6560(v174, v173);

          sub_2202A6560(v166, v167);
          (*(v197 + 8))(v134, v198);
          (*(v200 + 8))(v201, v209);
          sub_22031C328(v117, sub_22031C05C);
          v148 = v127;
        }

LABEL_51:
        result = sub_22031C328(v148, type metadata accessor for StocksSession);
        goto LABEL_5;
      }

      v95 = v87;

      sub_22036E4B8();

      swift_willThrow();
      sub_2202A6560(v174, v173);
LABEL_11:

      goto LABEL_5;
    }

    if (v73 >= v74[2])
    {
      __break(1u);
LABEL_55:
      sub_22031C2D4();
      swift_allocError();
      *v164 = 0xD00000000000001CLL;
      v164[1] = 0x8000000220391EA0;
      swift_willThrow();
      sub_2202A6560(v174, v173);

      sub_2202A6560(v166, v167);

      sub_22031C328(v78, type metadata accessor for AppSessionEndEvent.Model);
      sub_22031C328(v199, sub_22031C05C);
      v148 = v203;
      goto LABEL_51;
    }

    v80 = v74;
    (*(v75 + 16))(v78, v74 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v73, v77);
    v81 = v178;
    sub_22036EC78();
    v82 = sub_22036EC58();
    v84 = v83;
    (*v76)(v81, v179);
    if (v82 == 0xD000000000000012 && 0x8000000220391DF0 == v84)
    {
      break;
    }

    ++v73;
    v79 = sub_220370048();

    v78 = v180;
    v77 = v181;
    (*v210)(v180, v181);
    v74 = v80;
    v75 = v216;
    if (v79)
    {
      goto LABEL_19;
    }
  }

  (*v210)(v180, v181);
LABEL_19:

  sub_2202A6560(v174, v173);

LABEL_4:
  result = MEMORY[0x277D84F90];
LABEL_5:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22031B1A0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220370138();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_220370058();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return sub_22036E568();
  }

  return result;
}

uint64_t sub_22031B268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a1;
  v40 = a2;
  sub_22031C388(0, &qword_281266AC0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_22036E5A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  sub_22036F248();
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    sub_22036E598();
    if (v25(v13, 1, v14) != 1)
    {
      sub_22031C200(v13, &qword_281266AC0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v15 + 32))(v24, v13, v14);
  }

  v26 = v38;
  sub_22031B740(v38, v11);
  if (v25(v11, 1, v14) == 1)
  {
    (*(v15 + 16))(v22, v24, v14);
    if (v25(v11, 1, v14) != 1)
    {
      sub_22031C200(v11, &qword_281266AC0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v15 + 32))(v22, v11, v14);
  }

  sub_22031B9F0(v26, v8);
  if (v25(v8, 1, v14) == 1)
  {
    (*(v15 + 16))(v19, v24, v14);
    v27 = v25(v8, 1, v14);
    v28 = v39;
    if (v27 != 1)
    {
      sub_22031C200(v8, &qword_281266AC0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v15 + 32))(v19, v8, v14);
    v28 = v39;
  }

  sub_22031C504(&qword_281266AC8, MEMORY[0x277CC9578]);
  v29 = sub_22036FA98();
  v30 = *(v15 + 16);
  if (v29)
  {
    v31 = v22;
  }

  else
  {
    v31 = v24;
  }

  v30(v28, v31, v14);
  v32 = sub_22036FAA8();
  v33 = v22;
  v34 = v28;
  v35 = *(v15 + 8);
  v35(v33, v14);
  v35(v24, v14);
  if (v32)
  {
    return (*(v15 + 32))(v40, v19, v14);
  }

  v35(v19, v14);
  return (v30)(v40, v34, v14);
}

uint64_t sub_22031B740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036E5A8();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_22031C504(&qword_281266AC8, MEMORY[0x277CC9578]);
        v21 = sub_22036FA98();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_22031B9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036E5A8();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_22031C504(&qword_281266AC8, MEMORY[0x277CC9578]);
        v21 = sub_22036FA98();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_22031BCA0(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220370158();
  result = sub_22036E578();
  v5 = v4 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_220370068();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t FlushAnalyticsBatchesStartupTask.deinit()
{
  v1 = OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_group;
  v2 = sub_22036F5C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_flushManager);

  v4 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_loggingEventProcessor);

  return v0;
}

uint64_t FlushAnalyticsBatchesStartupTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_group;
  v2 = sub_22036F5C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_flushManager);

  v4 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_loggingEventProcessor);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t static StartupTaskGroup.flushAnalytics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281266660 != -1)
  {
    swift_once();
  }

  v2 = sub_22036F5C8();
  v3 = __swift_project_value_buffer(v2, qword_281266668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_22031BFC8()
{
  if (!qword_2812668B0)
  {
    type metadata accessor for AppSessionEndEvent(255);
    sub_22031C504(qword_281264B50, type metadata accessor for AppSessionEndEvent);
    v0 = sub_22036ED58();
    if (!v1)
    {
      atomic_store(v0, &qword_2812668B0);
    }
  }
}

void sub_22031C05C()
{
  if (!qword_281266AD8)
  {
    sub_22036E5A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281266AD8);
    }
  }
}

void sub_22031C0C4()
{
  if (!qword_281261F90)
  {
    v0 = sub_22036FA68();
    if (!v1)
    {
      atomic_store(v0, &qword_281261F90);
    }
  }
}

unint64_t sub_22031C128()
{
  result = qword_281261F78;
  if (!qword_281261F78)
  {
    sub_22031C388(255, &qword_281261F80, MEMORY[0x277CEAC80], MEMORY[0x277D83940]);
    sub_22031C504(&qword_281266978, MEMORY[0x277CEAC80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261F78);
  }

  return result;
}

uint64_t sub_22031C200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22031C388(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22031C270(uint64_t a1, uint64_t a2)
{
  sub_22031C05C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22031C2D4()
{
  result = qword_2812665F8;
  if (!qword_2812665F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812665F8);
  }

  return result;
}

uint64_t sub_22031C328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22031C388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22031C3EC()
{
  result = qword_2812666E0;
  if (!qword_2812666E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812666E0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22031C504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22031C574(uint64_t a1)
{
  v2 = sub_22036E778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_22031C71C(&v12);
    v7 = v12;
    if (v12 != 12)
    {
      v8 = *(v6 + 16);
      sub_22036EF08();
      (*(v3 + 16))(&v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v10 = swift_allocObject();
      (*(v3 + 32))(v10 + v9, &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
      *(v10 + v9 + v4) = v7;
      sub_22036F308();
    }
  }

  return result;
}

uint64_t sub_22031C71C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22036E778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D691E8])
  {
    v10 = 6;
LABEL_5:
    *a1 = v10;
    return (*(v5 + 8))(v8, v4);
  }

  if (v9 == *MEMORY[0x277D69208])
  {
    v10 = 4;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D69218])
  {
    (*(v5 + 96))(v8, v4);
    sub_22031DC6C();
    v13 = *(v12 + 48);
    *a1 = 0;
LABEL_17:
    v19 = sub_22036E6A8();
    (*(*(v19 - 8) + 8))(&v8[v13], v19);
    v20 = sub_22036F6F8();
    return (*(*(v20 - 8) + 8))(v8, v20);
  }

  if (v9 == *MEMORY[0x277D69210])
  {
    (*(v5 + 96))(v8, v4);
    sub_22031DC6C();
    v13 = *(v14 + 48);
    v15 = 2;
LABEL_16:
    *a1 = v15;
    goto LABEL_17;
  }

  if (v9 == *MEMORY[0x277D69220])
  {
    (*(v5 + 96))(v8, v4);
    sub_22031DC6C();
    v13 = *(v16 + 48);
    v15 = 1;
    goto LABEL_16;
  }

  if (v9 == *MEMORY[0x277D69228])
  {
    (*(v5 + 96))(v8, v4);
    sub_22031DC6C();
    v13 = *(v17 + 48);
    v15 = 3;
    goto LABEL_16;
  }

  if (v9 == *MEMORY[0x277D691E0])
  {
    (*(v5 + 96))(v8, v4);
    sub_22031DC6C();
    v13 = *(v18 + 48);
    v15 = 5;
    goto LABEL_16;
  }

  if (v9 == *MEMORY[0x277D69200])
  {
    v10 = 7;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D691D0])
  {
    v10 = 8;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D691F0])
  {
    v10 = 9;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D69230])
  {
    v10 = 10;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D691F8])
  {
    v21 = 11;
  }

  else
  {
    v21 = 12;
  }

  *a1 = v21;
  return (*(v5 + 8))(v8, v4);
}

id sub_22031CAC0(char *a1, uint64_t a2, int a3)
{
  sub_22031DBC0(0, &qword_281266AB8, MEMORY[0x277D691D8], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v92 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v91 = &v69 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v69 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v69 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - v15;
  v17 = sub_22036E5A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NetworkEventData();
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedNetworkReachability];
  if (!result)
  {
    goto LABEL_54;
  }

  v27 = result;
  if ([result isNetworkReachableViaWiFi])
  {

    v88 = 1;
  }

  else
  {
    v87 = v16;
    v28 = v18;
    v29 = a1;
    v30 = a3;
    v31 = v21;
    v32 = [v27 cellularRadioAccessTechnology];

    if ((v32 - 1) > 0xC)
    {
      v88 = 0;
    }

    else
    {
      v88 = byte_220387482[(v32 - 1)];
    }

    v21 = v31;
    a3 = v30;
    a1 = v29;
    v18 = v28;
    v16 = v87;
  }

  sub_22036E768();
  result = sub_22036E6B8();
  v34 = v33 * 1000.0;
  if (COERCE__INT64(fabs(v33 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = sub_22036E708();
  v36 = v35 * 1000.0;
  if (COERCE__INT64(fabs(v35 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v36 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_22036E718();
  v38 = v37 * 1000.0;
  if (COERCE__INT64(fabs(v37 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  result = sub_22036E728();
  v40 = v39 * 1000.0;
  if (COERCE__INT64(fabs(v39 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = sub_22036E6D8();
  v42 = v41 * 1000.0;
  if (COERCE__INT64(fabs(v41 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v84 = v18;
  v85 = v17;
  v86 = a3;
  v87 = a1;
  v82 = sub_22036E6C8();
  v81 = sub_22036E6F8();
  v80 = sub_22036E758();
  sub_22036E748();
  v43 = sub_22036E6A8();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v16, 1, v43) == 1)
  {
    sub_22031DB34(v16);
    v79 = 0;
    v78 = 0;
  }

  else
  {
    v79 = sub_22036E658();
    v78 = v46;
    (*(v44 + 8))(v16, v43);
  }

  sub_22036E748();
  v47 = v89;
  v48 = v45(v89, 1, v43);
  v83 = v21;
  if (v48 == 1)
  {
    sub_22031DB34(v47);
    v77 = 0;
  }

  else
  {
    v77 = sub_22036E698();
    (*(v44 + 8))(v47, v43);
  }

  sub_22036E748();
  v49 = v90;
  v50 = v45(v90, 1, v43);
  if (v50 == 1)
  {
    sub_22031DB34(v49);
    v89 = 0;
  }

  else
  {
    v89 = sub_22036E688();
    (*(v44 + 8))(v49, v43);
  }

  sub_22036E748();
  v51 = v91;
  if (v45(v91, 1, v43) == 1)
  {
    sub_22031DB34(v51);
    v90 = MEMORY[0x277D84F90];
  }

  else
  {
    v90 = sub_22036E678();
    (*(v44 + 8))(v51, v43);
  }

  sub_22036E748();
  v52 = v92;
  if (v45(v92, 1, v43) == 1)
  {
    sub_22031DB34(v52);
    v91 = MEMORY[0x277D84F90];
  }

  else
  {
    v91 = sub_22036E668();
    (*(v44 + 8))(v52, v43);
  }

  LODWORD(v92) = v50 == 1;
  v76 = v48 == 1;
  v70 = v38;
  v72 = v40;
  v71 = v42;
  v75 = sub_22036E6E8();
  v74 = v53;
  v73 = sub_22036E738();
  v54 = &v25[v22[10]];
  v55 = &v25[v22[16]];
  v56 = &v25[v22[17]];
  v57 = v22[18];
  v69 = v22[19];
  v58 = &v25[v57];
  v59 = v22[20];
  v60 = &v25[v22[21]];
  (*(v84 + 32))(v25, v83, v85);
  v25[v22[5]] = 2;
  *&v25[v22[6]] = v34;
  *&v25[v22[7]] = v36;
  *&v25[v22[8]] = v70;
  *&v25[v22[9]] = v72;
  *v54 = v71;
  v54[8] = 0;
  *&v25[v22[11]] = v82;
  *&v25[v22[12]] = v81;
  *&v25[v22[13]] = v80;
  v25[v22[14]] = v86;
  v25[v22[15]] = v88;
  v61 = v78;
  *v55 = v79;
  v55[1] = v61;
  *v56 = v77;
  v56[8] = v76;
  *v58 = v89;
  v58[8] = v92;
  v62 = v91;
  *&v25[v69] = v90;
  *&v25[v59] = v62;
  v63 = v74;
  *v60 = v75;
  v60[1] = v63;
  v25[v22[22]] = v73 & 1;
  sub_22031DBC0(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v64 = sub_22036EE48();
  v65 = *(v64 - 8);
  v66 = *(v65 + 72);
  v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_220371600;
  (*(v65 + 104))(v68 + v67, *MEMORY[0x277CEAD18], v64);
  sub_22031DC24(&qword_2812651D8, type metadata accessor for NetworkEventData);
  sub_22036EDA8();

  sub_2201FB380(v25, type metadata accessor for NetworkEventData);
  type metadata accessor for TelemetryEvent(0);
  sub_22031DC24(&unk_281265790, type metadata accessor for TelemetryEvent);
  memset(v93, 0, 32);
  sub_22036EDC8();
  return sub_2201FB380(v93, sub_220235980);
}

uint64_t sub_22031D5B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_22031D600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036E5A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_22036E598();
  sub_22036EEA8();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22031D784()
{
  v1 = sub_22036E5A8();
  v17 = *(v1 - 8);
  v18 = v1;
  v2 = *(v17 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036E5D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22036F2D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 16);
  (*(v11 + 104))(v14, *MEMORY[0x277CEAE78], v10);
  sub_22036E5C8();
  sub_22036E5B8();
  (*(v6 + 8))(v9, v5);
  sub_22036E598();
  sub_22036EEC8();

  (*(v17 + 8))(v4, v18);
  return (*(v11 + 8))(v14, v10);
}

id sub_22031DAA4(char *a1)
{
  v3 = *(sub_22036E778() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_22031CAC0(a1, v4, v5);
}

uint64_t sub_22031DB34(uint64_t a1)
{
  sub_22031DBC0(0, &qword_281266AB8, MEMORY[0x277D691D8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22031DBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22031DC24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22031DC6C()
{
  if (!qword_281266638)
  {
    sub_22036F6F8();
    sub_22036E6A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281266638);
    }
  }
}

uint64_t sub_22031DD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000220391FC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22031DDE4(uint64_t a1)
{
  v2 = sub_22031DFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22031DE20(uint64_t a1)
{
  v2 = sub_22031DFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdEngagementData.encode(to:)(void *a1)
{
  sub_22031E1F8(0, &qword_27CF289E8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031DFB8();
  sub_220370168();
  v13 = v9;
  sub_22031E00C();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22031DFB8()
{
  result = qword_27CF289F0;
  if (!qword_27CF289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289F0);
  }

  return result;
}

unint64_t sub_22031E00C()
{
  result = qword_27CF289F8;
  if (!qword_27CF289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289F8);
  }

  return result;
}

uint64_t AdEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22031E1F8(0, &qword_27CF28A00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031DFB8();
  sub_220370148();
  if (!v2)
  {
    sub_22031E25C();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031E1F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22031DFB8();
    v7 = a3(a1, &type metadata for AdEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22031E25C()
{
  result = qword_27CF28A08;
  if (!qword_27CF28A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A08);
  }

  return result;
}

unint64_t sub_22031E30C()
{
  result = qword_27CF28A10;
  if (!qword_27CF28A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A10);
  }

  return result;
}

unint64_t sub_22031E364()
{
  result = qword_27CF28A18;
  if (!qword_27CF28A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A18);
  }

  return result;
}

unint64_t sub_22031E3BC()
{
  result = qword_27CF28A20;
  if (!qword_27CF28A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A20);
  }

  return result;
}

uint64_t sub_22031E4D8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28A58);
  __swift_project_value_buffer(v0, qword_27CF28A58);
  return sub_22036F108();
}

uint64_t ClearRecommendationsEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClearRecommendationsEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ClearRecommendationsEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_22031E6F4(uint64_t a1)
{
  v2 = sub_22031E8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22031E730(uint64_t a1)
{
  v2 = sub_22031E8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClearRecommendationsEvent.Model.encode(to:)(void *a1)
{
  sub_22031EBCC(0, &qword_27CF28A70, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031E8E0();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22031E8E0()
{
  result = qword_27CF28A78;
  if (!qword_27CF28A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A78);
  }

  return result;
}

uint64_t ClearRecommendationsEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22036F388();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22031EBCC(0, &qword_27CF28A80, MEMORY[0x277D844C8]);
  v8 = v7;
  v22 = *(v7 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for ClearRecommendationsEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031E8E0();
  sub_220370148();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_2202366E0(&qword_2812666A0);
    sub_22036FF28();
    (*(v17 + 8))(v11, v8);
    (*(v18 + 32))(v15, v24, v4);
    sub_22031EC50(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031EBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22031E8E0();
    v7 = a3(a1, &type metadata for ClearRecommendationsEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22031EC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClearRecommendationsEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22031ECCC(void *a1)
{
  sub_22031EBCC(0, &qword_27CF28A70, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031E8E0();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22031EF6C()
{
  result = qword_27CF28AA8;
  if (!qword_27CF28AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AA8);
  }

  return result;
}

unint64_t sub_22031EFC4()
{
  result = qword_27CF28AB0;
  if (!qword_27CF28AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AB0);
  }

  return result;
}

unint64_t sub_22031F01C()
{
  result = qword_27CF28AB8;
  if (!qword_27CF28AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AB8);
  }

  return result;
}

uint64_t sub_22031F0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000220391FE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22031F16C(uint64_t a1)
{
  v2 = sub_22031F340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22031F1A8(uint64_t a1)
{
  v2 = sub_22031F340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingScreenData.encode(to:)(void *a1)
{
  sub_22031F580(0, &qword_27CF28AC0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031F340();
  sub_220370168();
  v13 = v9;
  sub_22031F394();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22031F340()
{
  result = qword_27CF28AC8;
  if (!qword_27CF28AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AC8);
  }

  return result;
}

unint64_t sub_22031F394()
{
  result = qword_27CF28AD0;
  if (!qword_27CF28AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AD0);
  }

  return result;
}

uint64_t OnboardingScreenData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22031F580(0, &qword_27CF28AD8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031F340();
  sub_220370148();
  if (!v2)
  {
    sub_22031F5E4();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031F580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22031F340();
    v7 = a3(a1, &type metadata for OnboardingScreenData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22031F5E4()
{
  result = qword_27CF28AE0;
  if (!qword_27CF28AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AE0);
  }

  return result;
}

unint64_t sub_22031F694()
{
  result = qword_27CF28AE8;
  if (!qword_27CF28AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AE8);
  }

  return result;
}

unint64_t sub_22031F6EC()
{
  result = qword_27CF28AF0;
  if (!qword_27CF28AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AF0);
  }

  return result;
}

unint64_t sub_22031F744()
{
  result = qword_27CF28AF8;
  if (!qword_27CF28AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AF8);
  }

  return result;
}

uint64_t URLReferralData.referralData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_220235490(v8, &v7);
}

uint64_t URLReferralData.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_220298C74(v2, v3);
}

uint64_t URLReferralData.adReferralData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = v2;
  a1[1] = v3;
  return sub_22027C714(v2, v3);
}

uint64_t get_enum_tag_for_layout_string_15StocksAnalytics12CampaignDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15StocksAnalytics14AdReferralDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_22031F874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22031F8BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22031F998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000220392000 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22031FA2C(uint64_t a1)
{
  v2 = sub_22031FC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22031FA68(uint64_t a1)
{
  v2 = sub_22031FC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolChartData.encode(to:)(void *a1)
{
  sub_22031FE40(0, &qword_27CF28B00, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031FC00();
  sub_220370168();
  v13 = v9;
  sub_22031FC54();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22031FC00()
{
  result = qword_27CF28B08;
  if (!qword_27CF28B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B08);
  }

  return result;
}

unint64_t sub_22031FC54()
{
  result = qword_27CF28B10;
  if (!qword_27CF28B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B10);
  }

  return result;
}

uint64_t SymbolChartData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22031FE40(0, &qword_27CF28B18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031FC00();
  sub_220370148();
  if (!v2)
  {
    sub_22031FEA4();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031FE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22031FC00();
    v7 = a3(a1, &type metadata for SymbolChartData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22031FEA4()
{
  result = qword_27CF28B20;
  if (!qword_27CF28B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B20);
  }

  return result;
}

unint64_t sub_22031FEFC()
{
  result = qword_27CF28B28;
  if (!qword_27CF28B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B28);
  }

  return result;
}

unint64_t sub_22031FF54()
{
  result = qword_27CF28B30;
  if (!qword_27CF28B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B30);
  }

  return result;
}

unint64_t sub_22031FFFC()
{
  result = qword_27CF28B38;
  if (!qword_27CF28B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B38);
  }

  return result;
}

unint64_t sub_220320054()
{
  result = qword_27CF28B40;
  if (!qword_27CF28B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B40);
  }

  return result;
}

unint64_t sub_2203200AC()
{
  result = qword_27CF28B48;
  if (!qword_27CF28B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B48);
  }

  return result;
}

__n128 AppSessionEndEvent.Model.init(eventData:timedData:watchedSymbolListData:orientationData:viewEndData:watchlistSummaryData:userEventStorageData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int16 *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *(a7 + 32);
  v17 = *(a7 + 40);
  v18 = sub_22036F388();
  v24 = *(a7 + 16);
  v25 = *a7;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for AppSessionEndEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F3C8();
  (*(*(v21 - 8) + 32))(a8 + v20, a2, v21);
  *(a8 + v19[6]) = v12;
  *(a8 + v19[7]) = v13;
  *(a8 + v19[8]) = v14;
  *(a8 + v19[9]) = v15;
  v22 = a8 + v19[10];
  result = v25;
  *v22 = v25;
  *(v22 + 16) = v24;
  *(v22 + 32) = v16;
  *(v22 + 40) = v17;
  return result;
}

uint64_t sub_2203202FC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281264C28);
  __swift_project_value_buffer(v0, qword_281264C28);
  return sub_22036F108();
}

uint64_t AppSessionEndEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.watchedSymbolListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.watchedSymbolListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.watchlistSummaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.watchlistSummaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userEventStorageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220320CA4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AppSessionEndEvent.userEventStorageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionEndEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v15, v16, v17);
}

uint64_t sub_22032118C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AppSessionEndEvent.Model.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 24));
}

uint64_t AppSessionEndEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AppSessionEndEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AppSessionEndEvent.Model.watchlistSummaryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 36));
}

__n128 AppSessionEndEvent.Model.userEventStorageData.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 40);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_220321350()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x7461746E6569726FLL;
  if (v1 != 3)
  {
    v4 = 0x44646E4577656976;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 == 1)
  {
    v5 = 0x74614464656D6974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_220321448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2203227E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220321470(uint64_t a1)
{
  v2 = sub_22032189C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203214AC(uint64_t a1)
{
  v2 = sub_22032189C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220321F48(0, &qword_281261C48, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22032189C();
  sub_220370168();
  LOBYTE(v19[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for AppSessionEndEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v19[0]) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    *&v19[0] = *(v3 + v12[6]);
    v22 = 2;
    sub_22023D96C();

    sub_22036FFF8();

    LOWORD(v19[0]) = *(v3 + v12[7]);
    v22 = 3;
    sub_2201F8860();
    sub_22036FFF8();
    LOBYTE(v19[0]) = *(v3 + v12[8]);
    v22 = 4;
    sub_2202310D4();
    sub_22036FFF8();
    *&v19[0] = *(v3 + v12[9]);
    v22 = 5;
    sub_2202AADBC();

    sub_22036FFF8();

    v15 = v3 + v12[10];
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    v18 = *(v15 + 16);
    v19[0] = *v15;
    v19[1] = v18;
    v20 = v16;
    v21 = v17;
    v22 = 6;
    sub_220309FB4();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22032189C()
{
  result = qword_281264C18;
  if (!qword_281264C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264C18);
  }

  return result;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_22036F3C8();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F388();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220321F48(0, &qword_281261DC8, MEMORY[0x277D844C8]);
  v41 = v10;
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = type metadata accessor for AppSessionEndEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22032189C();
  v40 = v13;
  v19 = v42;
  sub_220370148();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v42 = v14;
  v21 = v17;
  v23 = v35;
  v22 = v36;
  v24 = v37;
  LOBYTE(v43) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  v25 = *(v23 + 32);
  v26 = v39;
  v39 = v7;
  v25(v21, v26);
  LOBYTE(v43) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v22 + 32))(v21 + v42[5], v20, v24);
  v47 = 2;
  sub_22023D918();
  sub_22036FF28();
  v27 = v38;
  *(v21 + v42[6]) = v43;
  v47 = 3;
  sub_2201F8808();
  sub_22036FF28();
  *(v21 + v42[7]) = v43;
  v47 = 4;
  sub_220231080();
  sub_22036FF28();
  *(v21 + v42[8]) = v43;
  v47 = 5;
  sub_2202AAD64();
  sub_22036FF28();
  *(v21 + v42[9]) = v43;
  v47 = 6;
  sub_220309F5C();
  sub_22036FEB8();
  (*(v27 + 8))(v40, v41);
  v28 = v45;
  v29 = v46;
  v30 = v21 + v42[10];
  v31 = v44;
  *v30 = v43;
  *(v30 + 16) = v31;
  *(v30 + 32) = v28;
  *(v30 + 40) = v29;
  sub_220321FAC(v21, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220322010(v21);
}

void sub_220321F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22032189C();
    v7 = a3(a1, &type metadata for AppSessionEndEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220321FAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220322010(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220322144@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v16, v17, v18);
}

void sub_220322490()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_220320CA4(319, &qword_281266770, sub_22023D918, sub_22023D96C);
      if (v2 <= 0x3F)
      {
        sub_220320CA4(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
        if (v3 <= 0x3F)
        {
          sub_220320CA4(319, &qword_281266840, sub_220231080, sub_2202310D4);
          if (v4 <= 0x3F)
          {
            sub_220320CA4(319, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
            if (v5 <= 0x3F)
            {
              sub_220320CA4(319, &qword_2812668A0, sub_220309F5C, sub_220309FB4);
              if (v6 <= 0x3F)
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

unint64_t sub_2203226E0()
{
  result = qword_27CF28B50;
  if (!qword_27CF28B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B50);
  }

  return result;
}

unint64_t sub_220322738()
{
  result = qword_281264C08;
  if (!qword_281264C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264C08);
  }

  return result;
}

unint64_t sub_220322790()
{
  result = qword_281264C10;
  if (!qword_281264C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264C10);
  }

  return result;
}

uint64_t sub_2203227E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203903B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392020 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392040 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_220322A74()
{
  v0 = sub_22036EB48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22036EB38();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v13[15] = 0;
  sub_2201F9084(0, &qword_281266998);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_22036EB88();
  qword_281266A48 = result;
  return result;
}

uint64_t Settings.Analytics2.Debugging.Jitter.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22036EB38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 48);
  v12 = *(v4 + 52);
  swift_allocObject();
  (*(v7 + 16))(v10, a4, v6);
  v13 = sub_22036EB08();
  (*(v7 + 8))(a4, v6);
  return v13;
}

uint64_t sub_220322DB0()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036EAF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203235CC();
  (*(v6 + 104))(v9, *MEMORY[0x277D6D040], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  result = sub_22036EB58();
  qword_281266A70 = result;
  return result;
}

uint64_t sub_220322F80()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22036EB48();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v13[15] = 1;
  sub_2201F9084(0, &qword_281266998);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_22036EB88();
  qword_27CF28B58 = result;
  return result;
}

uint64_t sub_220323174()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201F9084(0, &qword_27CF28B70);
  v6[3] = 0xC082C00000000000;
  v6[1] = 0;
  v6[2] = 0xFFEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_22036EB68();
  qword_27CF28B60 = result;
  return result;
}

uint64_t sub_2203232E0()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201F9084(0, &qword_27CF28B70);
  v6[2] = 0;
  v6[3] = 0x4082C00000000000;
  v6[1] = 0x7FEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_22036EB68();
  qword_27CF28B68 = result;
  return result;
}

uint64_t Settings.Analytics2.Debugging.Jitter.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22036EB38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5);
  v9 = sub_22036EB08();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t Settings.Analytics2.Debugging.Jitter.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C15StocksAnalyticsE10Analytics2V9DebuggingV6JitterCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

void sub_2203235CC()
{
  if (!qword_2812669A8)
  {
    sub_22036EAF8();
    sub_220323630();
    v0 = sub_22036EB78();
    if (!v1)
    {
      atomic_store(v0, &qword_2812669A8);
    }
  }
}

unint64_t sub_220323630()
{
  result = qword_2812669B0;
  if (!qword_2812669B0)
  {
    sub_22036EAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812669B0);
  }

  return result;
}

uint64_t sub_220323750()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28B78);
  __swift_project_value_buffer(v0, qword_27CF28B78);
  return sub_22036F108();
}

uint64_t EOAFeedViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EOAFeedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}