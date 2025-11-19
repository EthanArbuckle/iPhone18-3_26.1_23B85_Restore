uint64_t static Tvpb_CastAndCrew.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Tvpb_Person(0);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9268, &unk_1B964DA50);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  v20 = *v1 == *v0 && v1[1] == v0[1];
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_84_1();
  v23 = v20 && v21 == v22;
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_40_5();
  v26 = v20 && v24 == v25;
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  v27 = type metadata accessor for Tvpb_CastAndCrew(0);
  v28 = *(v27 + 32);
  v29 = *(v14 + 48);
  sub_1B8EE0AAC(v1 + v28, v19);
  sub_1B8EE0AAC(v0 + v28, &v19[v29]);
  OUTLINED_FUNCTION_178(v19, 1, v2);
  if (v20)
  {
    OUTLINED_FUNCTION_178(&v19[v29], 1, v2);
    if (v20)
    {
      sub_1B8D9207C(v19, &qword_1EBAB9260, &unk_1B9664DA0);
LABEL_28:
      v34 = *(v27 + 28);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_32();
      sub_1B8CD22E8(v35, v36);
      v31 = OUTLINED_FUNCTION_634();
      return v31 & 1;
    }

    goto LABEL_24;
  }

  sub_1B8EE0AAC(v19, v13);
  OUTLINED_FUNCTION_178(&v19[v29], 1, v2);
  if (v30)
  {
    sub_1B8EE0C04(v13);
LABEL_24:
    sub_1B8D9207C(v19, &qword_1EBAB9268, &unk_1B964DA50);
    goto LABEL_25;
  }

  sub_1B8EE0B3C(&v19[v29], v7);
  v33 = static Tvpb_Person.== infix(_:_:)(v13, v7);
  sub_1B8EE0C04(v7);
  sub_1B8EE0C04(v13);
  sub_1B8D9207C(v19, &qword_1EBAB9260, &unk_1B9664DA0);
  if (v33)
  {
    goto LABEL_28;
  }

LABEL_25:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1B8EE66D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE050, type metadata accessor for Tvpb_CastAndCrew);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE6758(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE67C8()
{
  sub_1B8CD22E8(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE6868()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC78);
  __swift_project_value_buffer(v0, qword_1EBABDC78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "canonical_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "thumbnail";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "gender";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_Person.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Tvpb_Person.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v0))
      {
        v10 = v1[6];
        v11 = v1[7];
        OUTLINED_FUNCTION_1();
        if (!v12 || (result = OUTLINED_FUNCTION_3(), !v0))
        {
          v13 = *(type metadata accessor for Tvpb_Person(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Tvpb_Person.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v3 + 48) == *(v2 + 48) && *(v3 + 56) == *(v2 + 56);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for Tvpb_Person(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  sub_1B8CD22E8(v15, v16);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EE6D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE048, type metadata accessor for Tvpb_Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE6E0C(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABDD38, type metadata accessor for Tvpb_Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE6E7C()
{
  sub_1B8CD22E8(&qword_1EBABDD38, type metadata accessor for Tvpb_Person);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE6F14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC90);
  __swift_project_value_buffer(v0, qword_1EBABDC90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "end";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_ProgramSignal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8EE71B4();
    }
  }

  return result;
}

uint64_t Tvpb_ProgramSignal.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_94_4(), sub_1B8EE72E0(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
    {
      if (!*(v2 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
      {
        v5 = *(type metadata accessor for Tvpb_ProgramSignal(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

unint64_t sub_1B8EE72E0()
{
  result = qword_1EBABDD50;
  if (!qword_1EBABDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDD50);
  }

  return result;
}

uint64_t static Tvpb_ProgramSignal.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  if (*(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24))
  {
    v6 = *(type metadata accessor for Tvpb_ProgramSignal(0) + 28);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_32();
    sub_1B8CD22E8(v7, v8);
    return OUTLINED_FUNCTION_634() & 1;
  }

  return 0;
}

uint64_t sub_1B8EE74B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE040, type metadata accessor for Tvpb_ProgramSignal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE7534(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABDF58, type metadata accessor for Tvpb_ProgramSignal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE75A4()
{
  sub_1B8CD22E8(&qword_1EBABDF58, type metadata accessor for Tvpb_ProgramSignal);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE7624()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDCA8);
  __swift_project_value_buffer(v0, qword_1EBABDCA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PROGRAM_SIGNAL_BOOST";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UMC_PRIORITY_CONTENT_SIGNAL";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE7974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE038, type metadata accessor for Tvpb_LastEpisodeOfSeason);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE79F4(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABDF70, type metadata accessor for Tvpb_LastEpisodeOfSeason);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE7A64()
{
  sub_1B8CD22E8(&qword_1EBABDF70, type metadata accessor for Tvpb_LastEpisodeOfSeason);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE7B14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B964EE60;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v15 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = "start";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v19 = *MEMORY[0x1E69AADC8];
  v17();
  v20 = (v12 + 2 * v9);
  v21 = v20 + v8[14];
  *v20 = 3;
  *v21 = "end";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v17();
  return sub_1B964C760();
}

uint64_t sub_1B8EE7D50()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t sub_1B8EE7DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  if (*v4 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v5))
  {
    if (!*(v6 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v5))
    {
      if (!*(v6 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v5))
      {
        v9 = *(a4(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8EE7EC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v5 + 8) != *(v6 + 8) || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = *(v4(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  sub_1B8CD22E8(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EE7FB4(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD22E8(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EE807C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE030, type metadata accessor for Tvpb_LastSeasonOfShow);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE80FC(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABDF88, type metadata accessor for Tvpb_LastSeasonOfShow);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE816C()
{
  sub_1B8CD22E8(&qword_1EBABDF88, type metadata accessor for Tvpb_LastSeasonOfShow);

  return sub_1B964C5D0();
}

unint64_t sub_1B8EE81EC()
{
  result = qword_1EBABDD70;
  if (!qword_1EBABDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDD70);
  }

  return result;
}

unint64_t sub_1B8EE8244()
{
  result = qword_1EBABDD78;
  if (!qword_1EBABDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDD78);
  }

  return result;
}

unint64_t sub_1B8EE829C()
{
  result = qword_1EBABDD80;
  if (!qword_1EBABDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDD80);
  }

  return result;
}

unint64_t sub_1B8EE8324()
{
  result = qword_1EBABDD98;
  if (!qword_1EBABDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDD98);
  }

  return result;
}

unint64_t sub_1B8EE837C()
{
  result = qword_1EBABDDA0;
  if (!qword_1EBABDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDA0);
  }

  return result;
}

unint64_t sub_1B8EE83D4()
{
  result = qword_1EBABDDA8;
  if (!qword_1EBABDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDA8);
  }

  return result;
}

unint64_t sub_1B8EE842C()
{
  result = qword_1EBABDDB0;
  if (!qword_1EBABDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDB0);
  }

  return result;
}

unint64_t sub_1B8EE8484()
{
  result = qword_1EBABDDB8;
  if (!qword_1EBABDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDB8);
  }

  return result;
}

unint64_t sub_1B8EE84DC()
{
  result = qword_1EBABDDC0;
  if (!qword_1EBABDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDC0);
  }

  return result;
}

unint64_t sub_1B8EE8534()
{
  result = qword_1EBABDDC8;
  if (!qword_1EBABDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDC8);
  }

  return result;
}

unint64_t sub_1B8EE858C()
{
  result = qword_1EBABDDD0;
  if (!qword_1EBABDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDD0);
  }

  return result;
}

unint64_t sub_1B8EE85E4()
{
  result = qword_1EBABDDD8;
  if (!qword_1EBABDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDD8);
  }

  return result;
}

unint64_t sub_1B8EE863C()
{
  result = qword_1EBABDDE0;
  if (!qword_1EBABDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDE0);
  }

  return result;
}

unint64_t sub_1B8EE8694()
{
  result = qword_1EBABDDE8;
  if (!qword_1EBABDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDE8);
  }

  return result;
}

unint64_t sub_1B8EE86EC()
{
  result = qword_1EBABDDF0;
  if (!qword_1EBABDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDF0);
  }

  return result;
}

unint64_t sub_1B8EE8744()
{
  result = qword_1EBABDDF8;
  if (!qword_1EBABDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDDF8);
  }

  return result;
}

unint64_t sub_1B8EE879C()
{
  result = qword_1EBABDE00;
  if (!qword_1EBABDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDE00);
  }

  return result;
}

unint64_t sub_1B8EE87F4()
{
  result = qword_1EBABDE08;
  if (!qword_1EBABDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDE08);
  }

  return result;
}

unint64_t sub_1B8EE893C()
{
  result = qword_1EBABDE60;
  if (!qword_1EBABDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDE60);
  }

  return result;
}

unint64_t sub_1B8EE8994()
{
  result = qword_1EBABDE68;
  if (!qword_1EBABDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDE68);
  }

  return result;
}

unint64_t sub_1B8EE89EC()
{
  result = qword_1EBABDE70;
  if (!qword_1EBABDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDE70);
  }

  return result;
}

unint64_t sub_1B8EE8A74()
{
  result = qword_1EBABDE88;
  if (!qword_1EBABDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDE88);
  }

  return result;
}

unint64_t sub_1B8EE8ACC()
{
  result = qword_1EBABDE90;
  if (!qword_1EBABDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDE90);
  }

  return result;
}

unint64_t sub_1B8EE8B24()
{
  result = qword_1EBABDE98;
  if (!qword_1EBABDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABDE98);
  }

  return result;
}

uint64_t sub_1B8EE9A84()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Tvpb_TvAvailability._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8EE9C98()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_132Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 40));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_133Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 40));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8EE9E08()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

void sub_1B8EE9EAC()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8EE9F48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EE9F48()
{
  if (!qword_1EBABDFE8)
  {
    type metadata accessor for Tvpb_Person(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBABDFE8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_150Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 32));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_151Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8EEA098()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_216Tm(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v7 = OUTLINED_FUNCTION_699(*(v2 + 28));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void __swift_store_extra_inhabitant_index_217Tm()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8EEA288()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

unint64_t sub_1B8EEA2F8()
{
  result = qword_1EBABE098;
  if (!qword_1EBABE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE098);
  }

  return result;
}

unint64_t sub_1B8EEA34C()
{
  result = qword_1EBABE0A0;
  if (!qword_1EBABE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE0A0);
  }

  return result;
}

unint64_t sub_1B8EEA3A0()
{
  result = qword_1EBABE0A8;
  if (!qword_1EBABE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE0A8);
  }

  return result;
}

unint64_t sub_1B8EEA3F4()
{
  result = qword_1EBABE0B0;
  if (!qword_1EBABE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE0B0);
  }

  return result;
}

unint64_t sub_1B8EEA448()
{
  result = qword_1EBABE0B8;
  if (!qword_1EBABE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE0B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;
  result = type metadata accessor for Tvpb_TvAvailability(0);
  v5 = *(result + 20);
  *(a1 + 84) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_13(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Tvpb_TvAvailability(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  result = type metadata accessor for Tvpb_TvAvailability(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + *(type metadata accessor for Tvpb_TvAvailability(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_17_10(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_22_10()
{
  v1 = *(v0 + *(type metadata accessor for Tvpb_TvAvailability(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_40_5()
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_4()
{
  v2 = *(v0 + 84);
  v3 = *(v0 + 88);

  return type metadata accessor for Tvpb_TvAvailability._StorageClass();
}

uint64_t OUTLINED_FUNCTION_58_4()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 64);

  return type metadata accessor for Tvpb_TvAvailability._StorageClass();
}

uint64_t OUTLINED_FUNCTION_67_4()
{
  v1 = *(v0 + *(type metadata accessor for Tvpb_TvAvailability(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_84_3()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);

  return type metadata accessor for Tvpb_TvAvailability._StorageClass();
}

uint64_t OUTLINED_FUNCTION_101_2(uint64_t a1)
{
  v3 = v1 + *(a1 + 28);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Typespb_Domain.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 1;
  switch(result)
  {
    case 0:
    case 1:
    case 2:
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 11:
    case 12:
    case 15:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 24:
    case 25:
    case 26:
      goto LABEL_5;
    case 7:
      result = 3;
      break;
    case 8:
      result = 4;
      break;
    case 10:
      result = 5;
      break;
    case 13:
      result = 6;
      break;
    case 14:
      result = 7;
      break;
    case 16:
      result = 8;
      break;
    case 22:
      result = 9;
      break;
    case 23:
      result = 10;
      break;
    case 27:
      result = 11;
      break;
    default:
      if (result == 42)
      {
        v2 = 1;
        result = 12;
      }

      else
      {
LABEL_5:
        v2 = 0;
      }

      break;
  }

  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Typespb_Domain.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B9667028[result];
  }

  return result;
}

uint64_t sub_1B8EEA904@<X0>(uint64_t *a1@<X8>)
{
  result = Typespb_Domain.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EEA938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DEE788();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Typespb_Domain.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABE0C0 = a1;
}

uint64_t sub_1B8EEAA9C@<X0>(uint64_t *a1@<X8>)
{
  result = static Typespb_Domain.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EEAAC4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5758);
  __swift_project_value_buffer(v0, qword_1EBAB5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B9653B20;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v4 = "DOMAIN_UNSPECIFIED";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 1;
  *v8 = "WEB";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "KG";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "SPORTS";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 8;
  *v14 = "MAPS";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "WEB_IMAGES";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "MOVIES";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 14;
  *v20 = "TV";
  *(v20 + 1) = 2;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 16;
  *v22 = "MEDIA";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 22;
  *v24 = "VISUAL_SHOPPING";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 23;
  *v26 = "VISUAL_ART_2D";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 27;
  *v28 = "VISUAL_3P";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 42;
  *v30 = "VISUAL_FOOD";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Typespb_Domain._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB5750 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAB5758);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B8EEAFD0()
{
  result = qword_1ED9CD970;
  if (!qword_1ED9CD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CD970);
  }

  return result;
}

unint64_t sub_1B8EEB028()
{
  result = qword_1ED9CD960;
  if (!qword_1ED9CD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CD960);
  }

  return result;
}

unint64_t sub_1B8EEB080()
{
  result = qword_1ED9CD968;
  if (!qword_1ED9CD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CD968);
  }

  return result;
}

unint64_t sub_1B8EEB0D8()
{
  result = qword_1EBABE0C8;
  if (!qword_1EBABE0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABE0D0, &qword_1B9666F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE0C8);
  }

  return result;
}

uint64_t Useragentpb_UserAgent.productVersion.getter()
{
  OUTLINED_FUNCTION_30_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_521();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8EEB1B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Useragentpb_UserAgent.productVersion.setter();
}

uint64_t Useragentpb_UserAgent.productVersion.setter()
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_112();
  v5 = *(type metadata accessor for Useragentpb_UserAgent(v4) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Useragentpb_UserAgent._StorageClass();
    OUTLINED_FUNCTION_28_9();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EECB04(v9);
    *(v3 + v5) = v8;
  }

  OUTLINED_FUNCTION_18();
  v10 = v8[3];
  v8[2] = v2;
  v8[3] = v0;
}

void (*Useragentpb_UserAgent.productVersion.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_30_12();
  *(v3 + 18) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_521();
  v6 = *(v5 + 24);
  v3[6] = *(v5 + 16);
  v3[7] = v6;

  return sub_1B8EEB32C;
}

void sub_1B8EEB32C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v4)
  {
    v5 = *(v1 + 64);

    OUTLINED_FUNCTION_461();
    Useragentpb_UserAgent.productVersion.setter();
    v6 = *(v1 + 56);
  }

  else
  {
    v7 = *(v1 + 72);
    v8 = *(v1 + 64);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 72);
      v13 = *(v1 + 64);
      type metadata accessor for Useragentpb_UserAgent._StorageClass();
      OUTLINED_FUNCTION_28_9();
      swift_allocObject();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EECB04(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_18();
    v15 = v11[3];
    v11[2] = v3;
    v11[3] = v2;
  }

  free(v1);
}

uint64_t Useragentpb_UserAgent.buildOsVersion.getter()
{
  OUTLINED_FUNCTION_30_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_521();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8EEB430(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Useragentpb_UserAgent.buildOsVersion.setter();
}

uint64_t Useragentpb_UserAgent.buildOsVersion.setter()
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_112();
  v5 = *(type metadata accessor for Useragentpb_UserAgent(v4) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Useragentpb_UserAgent._StorageClass();
    OUTLINED_FUNCTION_28_9();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EECB04(v9);
    *(v3 + v5) = v8;
  }

  OUTLINED_FUNCTION_18();
  v10 = v8[5];
  v8[4] = v2;
  v8[5] = v0;
}

void (*Useragentpb_UserAgent.buildOsVersion.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_30_12();
  *(v3 + 18) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_521();
  v6 = *(v5 + 40);
  v3[6] = *(v5 + 32);
  v3[7] = v6;

  return sub_1B8EEB580;
}

void sub_1B8EEB580(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v4)
  {
    v5 = *(v1 + 64);

    OUTLINED_FUNCTION_461();
    Useragentpb_UserAgent.buildOsVersion.setter();
    v6 = *(v1 + 56);
  }

  else
  {
    v7 = *(v1 + 72);
    v8 = *(v1 + 64);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 72);
      v13 = *(v1 + 64);
      type metadata accessor for Useragentpb_UserAgent._StorageClass();
      OUTLINED_FUNCTION_28_9();
      swift_allocObject();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EECB04(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_18();
    v15 = v11[5];
    v11[4] = v3;
    v11[5] = v2;
  }

  free(v1);
}

uint64_t Useragentpb_UserAgent.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Useragentpb_UserAgent(0) + 20);
  type metadata accessor for Useragentpb_UserAgent._StorageClass();
  result = swift_initStaticObject();
  *(a1 + v2) = result;
  return result;
}

uint64_t Useragentpb_Firmware.version.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Useragentpb_Firmware.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*Useragentpb_Firmware.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Useragentpb_Firmware(v0) + 20);
  return nullsub_1;
}

uint64_t Useragentpb_Firmware.init()@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_41_6(a1);
  v3 = v1 + *(type metadata accessor for Useragentpb_Firmware(v2) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Useragentpb_DeviceMetadata.firmware.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE138, &qword_1B9667090);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  v7 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  v8 = OUTLINED_FUNCTION_115(*(v7 + 24));
  sub_1B8DD9078(v8, v9, &qword_1EBABE138, &qword_1B9667090);
  v10 = type metadata accessor for Useragentpb_Firmware(0);
  OUTLINED_FUNCTION_57(v1);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v12 = a1 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBABE138, &qword_1B9667090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_28();
    return sub_1B8EECC44(v1, a1);
  }

  return result;
}

uint64_t Useragentpb_DeviceMetadata.firmware.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Useragentpb_DeviceMetadata(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBABE138, &qword_1B9667090);
  OUTLINED_FUNCTION_1_28();
  sub_1B8EECC44(v0, v1 + v3);
  type metadata accessor for Useragentpb_Firmware(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Useragentpb_DeviceMetadata.firmware.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE138, &qword_1B9667090);
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Useragentpb_Firmware(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_89_0(v8);
  v10 = *(type metadata accessor for Useragentpb_DeviceMetadata(v9) + 24);
  *(v0 + 40) = v10;
  v11 = OUTLINED_FUNCTION_115(v10);
  sub_1B8DD9078(v11, v12, &qword_1EBABE138, &qword_1B9667090);
  v13 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v13, v14, v5);
  if (v15)
  {
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    v16 = v7 + *(v5 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v5);
    if (!v15)
    {
      sub_1B8D9207C(v4, &qword_1EBABE138, &qword_1B9667090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_28();
    v19 = OUTLINED_FUNCTION_461();
    sub_1B8EECC44(v19, v20);
  }

  return sub_1B8EEBAB8;
}

uint64_t sub_1B8EEBB70@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1B8EEBC04()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t (*Useragentpb_DeviceMetadata.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Useragentpb_DeviceMetadata(v0) + 20);
  return nullsub_1;
}

uint64_t Useragentpb_DeviceMetadata.init()@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_41_6(a1);
  v3 = type metadata accessor for Useragentpb_DeviceMetadata(v2);
  v4 = v1 + *(v3 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 24);
  type metadata accessor for Useragentpb_Firmware(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Useragentpb_CompanionDevice.companionUserAgent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B8, &qword_1B964D9A0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  v7 = type metadata accessor for Useragentpb_CompanionDevice(0);
  v8 = OUTLINED_FUNCTION_115(*(v7 + 20));
  sub_1B8DD9078(v8, v9, &qword_1EBAB91B8, &qword_1B964D9A0);
  v10 = type metadata accessor for Useragentpb_UserAgent(0);
  OUTLINED_FUNCTION_57(v1);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v10 + 20);
    type metadata accessor for Useragentpb_UserAgent._StorageClass();
    *(a1 + v12) = swift_initStaticObject();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB91B8, &qword_1B964D9A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_18();
    return sub_1B8EECC44(v1, a1);
  }

  return result;
}

uint64_t Useragentpb_CompanionDevice.companionUserAgent.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Useragentpb_CompanionDevice(v2) + 20);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB91B8, &qword_1B964D9A0);
  OUTLINED_FUNCTION_3_18();
  sub_1B8EECC44(v0, v1 + v3);
  type metadata accessor for Useragentpb_UserAgent(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Useragentpb_CompanionDevice.companionUserAgent.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B8, &qword_1B964D9A0);
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v5 = type metadata accessor for Useragentpb_UserAgent(0);
  v0[2] = v5;
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 64);
  v0[3] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_89_0(v8);
  v10 = type metadata accessor for Useragentpb_CompanionDevice(v9);
  OUTLINED_FUNCTION_16_4(*(v10 + 20));
  OUTLINED_FUNCTION_178(v4, 1, v5);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v5 + 20);
    type metadata accessor for Useragentpb_UserAgent._StorageClass();
    *(v7 + v12) = swift_initStaticObject();
    OUTLINED_FUNCTION_178(v4, 1, v5);
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB91B8, &qword_1B964D9A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_18();
    sub_1B8EECC44(v4, v7);
  }

  return sub_1B8EEBFF8;
}

uint64_t Useragentpb_CompanionDevice.hasCompanionUserAgent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B8, &qword_1B964D9A0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  v5 = type metadata accessor for Useragentpb_CompanionDevice(0);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 20));
  sub_1B8DD9078(v6, v7, &qword_1EBAB91B8, &qword_1B964D9A0);
  type metadata accessor for Useragentpb_UserAgent(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1B8D9207C(v0, &qword_1EBAB91B8, &qword_1B964D9A0);
  return v12;
}

Swift::Void __swiftcall Useragentpb_CompanionDevice.clearCompanionUserAgent()()
{
  v1 = type metadata accessor for Useragentpb_CompanionDevice(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAB91B8, &qword_1B964D9A0);
  type metadata accessor for Useragentpb_UserAgent(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Useragentpb_CompanionDevice.deviceMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Useragentpb_CompanionDevice(0);
  sub_1B8DD9078(v1 + *(v9 + 24), v8, &qword_1EBAB91A8, &unk_1B964D990);
  v10 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  OUTLINED_FUNCTION_57(v8);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v12 = a1 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v10 + 24);
    type metadata accessor for Useragentpb_Firmware(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    result = OUTLINED_FUNCTION_57(v8);
    if (!v11)
    {
      return sub_1B8D9207C(v8, &qword_1EBAB91A8, &unk_1B964D990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_20();
    return sub_1B8EECC44(v8, a1);
  }

  return result;
}

uint64_t sub_1B8EEC258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1B8EECC9C(a1, &v16 - v13);
  return a7(v14);
}

uint64_t Useragentpb_CompanionDevice.deviceMetadata.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Useragentpb_CompanionDevice(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB91A8, &unk_1B964D990);
  OUTLINED_FUNCTION_4_20();
  sub_1B8EECC44(v0, v1 + v3);
  type metadata accessor for Useragentpb_DeviceMetadata(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Useragentpb_CompanionDevice.deviceMetadata.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v5 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  v0[2] = v5;
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 64);
  v0[3] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_89_0(v8);
  v10 = type metadata accessor for Useragentpb_CompanionDevice(v9);
  OUTLINED_FUNCTION_16_4(*(v10 + 24));
  OUTLINED_FUNCTION_178(v4, 1, v5);
  if (v11)
  {
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    v12 = v7 + *(v5 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v5 + 24);
    type metadata accessor for Useragentpb_Firmware(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_178(v4, 1, v5);
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB91A8, &unk_1B964D990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_20();
    sub_1B8EECC44(v4, v7);
  }

  return sub_1B8EEC4D8;
}

void sub_1B8EEC500(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    sub_1B8EECC9C((*a1)[4], v8);
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B8EECC44(v8, v12 + v7);
    OUTLINED_FUNCTION_187_1();
    sub_1B8EECCF4();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B8EECC44(v9, v12 + v7);
    OUTLINED_FUNCTION_187_1();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_1B8EEC630()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = v2(0);
  sub_1B8DD9078(v1 + *(v13 + 24), v12, v5, v3);
  v14 = v0(0);
  OUTLINED_FUNCTION_178(v12, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v17, v18, v19);
  return v16;
}

uint64_t sub_1B8EEC72C()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 24), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t _s10PegasusAPI21Useragentpb_UserAgentV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t _s10PegasusAPI21Useragentpb_UserAgentV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Useragentpb_CompanionDevice.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Useragentpb_CompanionDevice(0);
  v1 = *(v0 + 20);
  type metadata accessor for Useragentpb_UserAgent(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 24);
  type metadata accessor for Useragentpb_DeviceMetadata(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B8EEC914()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE0D8);
  __swift_project_value_buffer(v0, qword_1EBABE0D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 15;
  *v6 = "ProductVersion";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 17;
  *v10 = "BuildOsVersion";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void *sub_1B8EECB04(void *a1)
{
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  swift_beginAccess();
  v4 = a1[2];
  v3 = a1[3];
  swift_beginAccess();
  v1[2] = v4;
  v1[3] = v3;
  swift_beginAccess();
  v6 = a1[4];
  v5 = a1[5];

  swift_beginAccess();
  v7 = v1[5];
  v1[4] = v6;
  v1[5] = v5;

  return v1;
}

uint64_t sub_1B8EECC44(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_432();
  v9(v8);
  return a2;
}

uint64_t sub_1B8EECC9C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_432();
  v9(v8);
  return a2;
}

uint64_t sub_1B8EECCF4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B8EECD48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1B8EECD70()
{
  v0 = sub_1B8EECD48();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t Useragentpb_UserAgent.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Useragentpb_UserAgent(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Useragentpb_UserAgent._StorageClass();
    OUTLINED_FUNCTION_28_9();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8EECB04(v6);
  }

  return sub_1B8EECE3C();
}

uint64_t sub_1B8EECE3C()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 17)
    {
      sub_1B8DC46F4();
    }

    else if (result == 15)
    {
      sub_1B8DAA85C();
    }
  }

  return result;
}

uint64_t Useragentpb_UserAgent.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Useragentpb_UserAgent(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8EECF2C(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8EECF2C(void *a1)
{
  swift_beginAccess();
  v3 = a1[3];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (v5 = a1[3], , sub_1B964C700(), result = , !v1))
  {
    result = swift_beginAccess();
    v7 = a1[4];
    v8 = a1[5];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {

      sub_1B964C700();
    }
  }

  return result;
}

uint64_t static Useragentpb_UserAgent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_28_1();
  v5 = *(type metadata accessor for Useragentpb_UserAgent(v4) + 20);
  v6 = *(v2 + v5);
  v7 = *(a2 + v5);
  if (v6 == v7)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_521();
  v8 = v6[2];
  v9 = v6[3];
  OUTLINED_FUNCTION_521();
  v10 = v8 == v7[2] && v9 == v7[3];
  if (v10 || (sub_1B964C9F0()) && ((OUTLINED_FUNCTION_521(), v11 = v6[4], v12 = v6[5], OUTLINED_FUNCTION_521(), v11 == v7[4]) ? (v13 = v12 == v7[5]) : (v13 = 0), v13 || (sub_1B964C9F0()))
  {
LABEL_12:
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_33();
    sub_1B8CD2330(v14, v15);
    v16 = sub_1B964C850();
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1B8EED1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2330(&qword_1EBABE1E0, type metadata accessor for Useragentpb_UserAgent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EED278(uint64_t a1)
{
  v2 = sub_1B8CD2330(&qword_1EBABE170, type metadata accessor for Useragentpb_UserAgent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EED2E8()
{
  sub_1B8CD2330(&qword_1EBABE170, type metadata accessor for Useragentpb_UserAgent);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EED380()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE0F0);
  __swift_project_value_buffer(v0, qword_1EBABE0F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Useragentpb_Firmware.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Useragentpb_Firmware.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = sub_1B964C700(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Useragentpb_Firmware(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Useragentpb_Firmware.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Useragentpb_Firmware(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_33();
  sub_1B8CD2330(v4, v5);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8EED748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2330(&qword_1EBABE1D8, type metadata accessor for Useragentpb_Firmware);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EED7C8(uint64_t a1)
{
  v2 = sub_1B8CD2330(&qword_1EBABE150, type metadata accessor for Useragentpb_Firmware);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EED838()
{
  sub_1B8CD2330(&qword_1EBABE150, type metadata accessor for Useragentpb_Firmware);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EED8D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE108);
  __swift_project_value_buffer(v0, qword_1EBABE108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "regulatory_device_model";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "firmware";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Useragentpb_DeviceMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8EEDB2C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8EEDB2C()
{
  v0 = *(type metadata accessor for Useragentpb_DeviceMetadata(0) + 24);
  type metadata accessor for Useragentpb_Firmware(0);
  sub_1B8CD2330(&qword_1EBABE150, type metadata accessor for Useragentpb_Firmware);
  return sub_1B964C580();
}

uint64_t Useragentpb_DeviceMetadata.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE138, &qword_1B9667090);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = type metadata accessor for Useragentpb_Firmware(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v17 = v16 - v15;
  v18 = *v3;
  v19 = v3[1];
  OUTLINED_FUNCTION_1();
  if (!v20 || (result = sub_1B964C700(), !v2))
  {
    v24[1] = a1;
    v22 = type metadata accessor for Useragentpb_DeviceMetadata(0);
    sub_1B8DD9078(v3 + *(v22 + 24), v10, &qword_1EBABE138, &qword_1B9667090);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBABE138, &qword_1B9667090);
    }

    else
    {
      sub_1B8EECC44(v10, v17);
      sub_1B8CD2330(&qword_1EBABE150, type metadata accessor for Useragentpb_Firmware);
      OUTLINED_FUNCTION_33_6();
      sub_1B964C740();
      result = sub_1B8EECCF4();
      if (v2)
      {
        return result;
      }
    }

    v23 = v3 + *(v22 + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Useragentpb_DeviceMetadata.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_112();
  v4 = type metadata accessor for Useragentpb_Firmware(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE138, &qword_1B9667090);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v39 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE158, &qword_1B9667098);
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_88();
  v21 = *v1 == *v0 && v1[1] == v0[1];
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_16;
  }

  v40 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  v22 = *(v40 + 24);
  v23 = *(v17 + 48);
  sub_1B8DD9078(v1 + v22, v2, &qword_1EBABE138, &qword_1B9667090);
  sub_1B8DD9078(v0 + v22, v2 + v23, &qword_1EBABE138, &qword_1B9667090);
  v24 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v24, v25, v4);
  if (v21)
  {
    OUTLINED_FUNCTION_178(v2 + v23, 1, v4);
    if (v21)
    {
      sub_1B8D9207C(v2, &qword_1EBABE138, &qword_1B9667090);
LABEL_23:
      v35 = *(v40 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_33();
      sub_1B8CD2330(v36, v37);
      v29 = sub_1B964C850();
      return v29 & 1;
    }

    goto LABEL_14;
  }

  sub_1B8DD9078(v2, v16, &qword_1EBABE138, &qword_1B9667090);
  OUTLINED_FUNCTION_178(v2 + v23, 1, v4);
  if (v26)
  {
    sub_1B8EECCF4();
LABEL_14:
    v27 = &qword_1EBABE158;
    v28 = &qword_1B9667098;
LABEL_15:
    sub_1B8D9207C(v2, v27, v28);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_28();
  sub_1B8EECC44(v2 + v23, v10);
  v30 = *v16 == *v10 && v16[1] == v10[1];
  if (!v30 && (sub_1B964C9F0() & 1) == 0)
  {
    sub_1B8EECCF4();
    sub_1B8EECCF4();
    v27 = &qword_1EBABE138;
    v28 = &qword_1B9667090;
    goto LABEL_15;
  }

  v31 = *(v4 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_33();
  sub_1B8CD2330(v32, v33);
  v34 = sub_1B964C850();
  sub_1B8EECCF4();
  sub_1B8EECCF4();
  sub_1B8D9207C(v2, &qword_1EBABE138, &qword_1B9667090);
  if (v34)
  {
    goto LABEL_23;
  }

LABEL_16:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1B8EEE208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2330(&qword_1EBABE1D0, type metadata accessor for Useragentpb_DeviceMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EEE288(uint64_t a1)
{
  v2 = sub_1B8CD2330(&qword_1EBABE168, type metadata accessor for Useragentpb_DeviceMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EEE2F8()
{
  sub_1B8CD2330(&qword_1EBABE168, type metadata accessor for Useragentpb_DeviceMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EEE390()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE120);
  __swift_project_value_buffer(v0, qword_1EBABE120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "companion_user_agent";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "device_metadata";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Useragentpb_CompanionDevice.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8EEE694();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8EEE5E0();
    }
  }

  return result;
}

uint64_t sub_1B8EEE5E0()
{
  v0 = *(type metadata accessor for Useragentpb_CompanionDevice(0) + 20);
  type metadata accessor for Useragentpb_UserAgent(0);
  sub_1B8CD2330(&qword_1EBABE170, type metadata accessor for Useragentpb_UserAgent);
  return sub_1B964C580();
}

uint64_t sub_1B8EEE694()
{
  v0 = *(type metadata accessor for Useragentpb_CompanionDevice(0) + 24);
  type metadata accessor for Useragentpb_DeviceMetadata(0);
  sub_1B8CD2330(&qword_1EBABE168, type metadata accessor for Useragentpb_DeviceMetadata);
  return sub_1B964C580();
}

uint64_t Useragentpb_CompanionDevice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  v35 = type metadata accessor for Useragentpb_DeviceMetadata(v11);
  v12 = OUTLINED_FUNCTION_59_1(v35);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v34 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B8, &qword_1B964D9A0);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v23 = type metadata accessor for Useragentpb_UserAgent(0);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v29 = v28 - v27;
  v30 = type metadata accessor for Useragentpb_CompanionDevice(0);
  v31 = *(v30 + 20);
  v36 = v6;
  sub_1B8DD9078(v6 + v31, v22, &qword_1EBAB91B8, &qword_1B964D9A0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAB91B8, &qword_1B964D9A0);
  }

  else
  {
    sub_1B8EECC44(v22, v29);
    sub_1B8CD2330(&qword_1EBABE170, type metadata accessor for Useragentpb_UserAgent);
    sub_1B964C740();
    result = sub_1B8EECCF4();
    if (v4)
    {
      return result;
    }
  }

  sub_1B8DD9078(v36 + *(v30 + 24), v5, &qword_1EBAB91A8, &unk_1B964D990);
  if (__swift_getEnumTagSinglePayload(v5, 1, v35) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBAB91A8, &unk_1B964D990);
  }

  else
  {
    sub_1B8EECC44(v5, v34);
    sub_1B8CD2330(&qword_1EBABE168, type metadata accessor for Useragentpb_DeviceMetadata);
    OUTLINED_FUNCTION_33_6();
    sub_1B964C740();
    result = sub_1B8EECCF4();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Useragentpb_CompanionDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  v5 = OUTLINED_FUNCTION_59_1(v58);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v54 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v53 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B0, &unk_1B96670A0);
  OUTLINED_FUNCTION_59_1(v57);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v53 - v18;
  v19 = type metadata accessor for Useragentpb_UserAgent(0);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B8, &qword_1B964D9A0);
  OUTLINED_FUNCTION_183(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v53 - v30;
  v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91C0, &qword_1B964D9A8) - 8);
  v33 = *(*v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_156();
  v56 = type metadata accessor for Useragentpb_CompanionDevice(v35);
  v36 = *(v56 + 20);
  v37 = v32[14];
  v60 = a1;
  sub_1B8DD9078(a1 + v36, v2, &qword_1EBAB91B8, &qword_1B964D9A0);
  sub_1B8DD9078(a2 + v36, v2 + v37, &qword_1EBAB91B8, &qword_1B964D9A0);
  OUTLINED_FUNCTION_178(v2, 1, v19);
  if (v38)
  {
    OUTLINED_FUNCTION_178(v2 + v37, 1, v19);
    if (v38)
    {
      sub_1B8D9207C(v2, &qword_1EBAB91B8, &qword_1B964D9A0);
      goto LABEL_11;
    }

LABEL_9:
    v39 = &qword_1EBAB91C0;
    v40 = &qword_1B964D9A8;
    v41 = v2;
LABEL_20:
    sub_1B8D9207C(v41, v39, v40);
    goto LABEL_21;
  }

  sub_1B8DD9078(v2, v31, &qword_1EBAB91B8, &qword_1B964D9A0);
  OUTLINED_FUNCTION_178(v2 + v37, 1, v19);
  if (v38)
  {
    sub_1B8EECCF4();
    goto LABEL_9;
  }

  sub_1B8EECC44(v2 + v37, v25);
  v42 = static Useragentpb_UserAgent.== infix(_:_:)(v31, v25);
  sub_1B8EECCF4();
  sub_1B8EECCF4();
  sub_1B8D9207C(v2, &qword_1EBAB91B8, &qword_1B964D9A0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v43 = *(v56 + 24);
  v44 = *(v57 + 48);
  v45 = v59;
  sub_1B8DD9078(v60 + v43, v59, &qword_1EBAB91A8, &unk_1B964D990);
  sub_1B8DD9078(a2 + v43, v45 + v44, &qword_1EBAB91A8, &unk_1B964D990);
  v46 = v58;
  OUTLINED_FUNCTION_178(v45, 1, v58);
  if (v38)
  {
    OUTLINED_FUNCTION_178(v45 + v44, 1, v46);
    if (v38)
    {
      sub_1B8D9207C(v45, &qword_1EBAB91A8, &unk_1B964D990);
LABEL_24:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_33();
      sub_1B8CD2330(v51, v52);
      v48 = sub_1B964C850();
      return v48 & 1;
    }

    goto LABEL_19;
  }

  sub_1B8DD9078(v45, v55, &qword_1EBAB91A8, &unk_1B964D990);
  OUTLINED_FUNCTION_178(v45 + v44, 1, v46);
  if (v47)
  {
    sub_1B8EECCF4();
LABEL_19:
    v39 = &qword_1EBAB91B0;
    v40 = &unk_1B96670A0;
    v41 = v45;
    goto LABEL_20;
  }

  sub_1B8EECC44(v45 + v44, v54);
  v50 = static Useragentpb_DeviceMetadata.== infix(_:_:)();
  sub_1B8EECCF4();
  sub_1B8EECCF4();
  sub_1B8D9207C(v45, &qword_1EBAB91A8, &unk_1B964D990);
  if (v50)
  {
    goto LABEL_24;
  }

LABEL_21:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_1B8EEEFD0()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2330(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EEF0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2330(&qword_1EBABE1C8, type metadata accessor for Useragentpb_CompanionDevice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EEF120(uint64_t a1)
{
  v2 = sub_1B8CD2330(&qword_1EBABE1B8, type metadata accessor for Useragentpb_CompanionDevice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EEF190()
{
  sub_1B8CD2330(&qword_1EBABE1B8, type metadata accessor for Useragentpb_CompanionDevice);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EEF6B8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Useragentpb_UserAgent._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8EEF78C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8EEF938(319, qword_1ED9F3288, type metadata accessor for Useragentpb_Firmware);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EEF864()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8EEF938(319, qword_1ED9CD338, type metadata accessor for Useragentpb_UserAgent);
    if (v1 <= 0x3F)
    {
      sub_1B8EEF938(319, qword_1ED9F25B8, type metadata accessor for Useragentpb_DeviceMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8EEF938(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_30_12()
{
  result = type metadata accessor for Useragentpb_UserAgent(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_6@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return 0;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.coarseClassificationResults.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(v9);
  OUTLINED_FUNCTION_115(*(v10 + 24));
  OUTLINED_FUNCTION_166_1();
  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = MEMORY[0x1E69E7CC0];
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBABE470, &qword_1B9667730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_11();
    OUTLINED_FUNCTION_182();
    return sub_1B8EF00A4();
  }

  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.coarseClassificationResults.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABE470, &qword_1B9667730);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_98_4();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  return OUTLINED_FUNCTION_279(v2);
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.coarseClassificationResults.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(v9);
  OUTLINED_FUNCTION_7_17(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = MEMORY[0x1E69E7CC0];
    v19 = v12 + *(v1 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBABE470, &qword_1B9667730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_11();
    OUTLINED_FUNCTION_461();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.objectDetectorResults.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0) + 28);
  OUTLINED_FUNCTION_166_1();
  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  OUTLINED_FUNCTION_178(v9, 1, v11);
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = MEMORY[0x1E69E7CC0];
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v11 + 28);
    type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_178(v9, 1, v11);
    if (!v12)
    {
      return sub_1B8D9207C(v9, &qword_1EBABE478, &qword_1B9667738);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_9();
    return sub_1B8EF00A4();
  }

  return result;
}

uint64_t sub_1B8EEFF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B8EF02A0();
  return a7(v7);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.objectDetectorResults.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBABE478, &qword_1B9667738);
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_98_4();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  OUTLINED_FUNCTION_279(v2);
  v3 = *(v2 + 28);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B8EF00A4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.objectDetectorResults.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 8) = v7;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  *(v0 + 40) = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(v14) + 28);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v7, 1, v8);
  if (v15)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = MEMORY[0x1E69E7CC0];
    v16 = v10 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v8 + 28);
    type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_178(v7, 1, v8);
    if (!v15)
    {
      sub_1B8D9207C(v7, &qword_1EBABE478, &qword_1B9667738);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_9();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8EF02A0()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8EF02F8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  *a1 = 0u;
  a1[1] = 0u;
  v3 = a1 + *(v2 + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.refinedRegion.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_74_5();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9210, &qword_1B9667740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_19();
    OUTLINED_FUNCTION_461();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EF0778()
{
  OUTLINED_FUNCTION_99_4();
  v1 = *(v0(0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t sub_1B8EF0820()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult.CoarseClassificatioLabel.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 2:
      a2 = 3;
      break;
    case 3:
      a2 = 4;
      break;
    case 4:
      a2 = 5;
      break;
    case 5:
      a2 = 6;
      break;
    case 6:
      a2 = 8;
      break;
    case 7:
      a2 = 9;
      break;
    case 8:
      a2 = 10;
      break;
    case 9:
      a2 = 11;
      break;
    case 10:
      a2 = 15;
      break;
    case 11:
      a2 = 2;
      break;
    case 14:
      a2 = 7;
      break;
    case 15:
      a2 = 14;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult.CoarseClassificatioLabel.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B9669300[result];
  }

  return result;
}

uint64_t sub_1B8EF09A0@<X0>(uint64_t *a1@<X8>)
{
  result = Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult.CoarseClassificatioLabel.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EF09D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EFCD1C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.version.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(v9);
  OUTLINED_FUNCTION_115(*(v10 + 28));
  OUTLINED_FUNCTION_166_1();
  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBABE480, &qword_1B9667748);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_182();
    return sub_1B8EF00A4();
  }

  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.version.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBABE480, &qword_1B9667748);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_98_4();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  return OUTLINED_FUNCTION_279(v3);
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.version.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(v9);
  OUTLINED_FUNCTION_7_17(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    v19 = v12 + *(v1 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBABE480, &qword_1B9667748);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_461();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8EF0D54()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_103();
  v9 = *(v1(v8) + 28);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v0(0);
  v10 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v15, v16, v17);
  return v14;
}

uint64_t sub_1B8EF0E3C()
{
  OUTLINED_FUNCTION_111_0();
  v2 = *(v1(0) + 28);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.domainPredictionNetModelUrn.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.domainPredictionNetModelUrn.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.results.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EF1024()
{
  OUTLINED_FUNCTION_99_4();
  v1 = *(v0(0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t sub_1B8EF10CC()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.classificationResults.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult.label.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(v7);
  OUTLINED_FUNCTION_115(*(v8 + 24));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_112_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9200, &qword_1B9667750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_29();
    OUTLINED_FUNCTION_182();
    return sub_1B8EF00A4();
  }

  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult.label.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9200, &qword_1B9667750);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_98_4();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8EF13F8()
{
  OUTLINED_FUNCTION_99_4();
  *v0 = MEMORY[0x1E69E7CC0];
  v2 = v0 + *(v1(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult.label.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_111_2(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9200, &qword_1B9667750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_29();
    OUTLINED_FUNCTION_461();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8EF15E8()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_103();
  v9 = *(v1(v8) + 24);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v0(0);
  v10 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v15, v16, v17);
  return v14;
}

uint64_t sub_1B8EF16D0()
{
  OUTLINED_FUNCTION_111_0();
  v2 = *(v1(0) + 24);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion.mappingVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion.mappingVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode.ontologyNodeQids.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EF1A3C(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = a1(v7);
  OUTLINED_FUNCTION_115(*(v8 + 32));
  sub_1B8D92024();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_275_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9210, &qword_1B9667740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8EF00A4();
  }

  return result;
}

uint64_t sub_1B8EF1B64()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_98_4();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_74_5();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9210, &qword_1B9667740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_19();
    OUTLINED_FUNCTION_461();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8EF1D10()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_103();
  v9 = *(v1(v8) + 32);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v0(0);
  v10 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v15, v16, v17);
  return v14;
}

uint64_t sub_1B8EF1DF8()
{
  OUTLINED_FUNCTION_111_0();
  v2 = *(v1(0) + 32);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.domainSignals.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(v7);
  OUTLINED_FUNCTION_115(*(v8 + 36));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_112_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBABE488, &unk_1B9667758);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_9();
    OUTLINED_FUNCTION_182();
    return sub_1B8EF00A4();
  }

  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.domainSignals.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBABE488, &unk_1B9667758);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_98_4();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.domainSignals.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_111_2(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBABE488, &unk_1B9667758);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_9();
    OUTLINED_FUNCTION_461();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.hasDomainSignals.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE488, &unk_1B9667758);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(v4);
  OUTLINED_FUNCTION_115(*(v5 + 36));
  OUTLINED_FUNCTION_161_2();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B9667758);
  return v10;
}

Swift::Void __swiftcall Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.clearDomainSignals()()
{
  v1 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBABE488, &unk_1B9667758);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.unknownFields.getter()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0) + 28);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_98_4();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_74_5();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9210, &qword_1B9667740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_19();
    OUTLINED_FUNCTION_461();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.ontologyNode.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(v7);
  OUTLINED_FUNCTION_115(*(v8 + 32));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_112_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9200, &qword_1B9667750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_29();
    OUTLINED_FUNCTION_182();
    return sub_1B8EF00A4();
  }

  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.ontologyNode.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9200, &qword_1B9667750);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_98_4();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.ontologyNode.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_111_2(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9200, &qword_1B9667750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_29();
    OUTLINED_FUNCTION_461();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  OUTLINED_FUNCTION_279(v1);
  v2 = *(v1 + 28);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = *(v1 + 32);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v8 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  v3 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  v4 = a1 + v3[7];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = v3[8];
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v3[9];
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  v11 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EF2B0C@<X0>(uint64_t *a1@<X8>)
{
  result = Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainPredictionSupportedDomain.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EF2B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EFCD70();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult.domain.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult.domain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EF2CB0()
{
  OUTLINED_FUNCTION_99_4();
  *v1 = 0;
  *(v0 + 8) = 1;
  *(v0 + 12) = 0;
  v3 = v2(0);
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t sub_1B8EF2D08()
{
  OUTLINED_FUNCTION_99_4();
  *v1 = 0;
  *(v0 + 8) = MEMORY[0x1E69E7CC0];
  v3 = v2(0);
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t sub_1B8EF2DA8(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = a1(v7);
  OUTLINED_FUNCTION_115(*(v8 + 28));
  sub_1B8D92024();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_275_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9210, &qword_1B9667740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8EF00A4();
  }

  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_98_4();
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_74_5();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9210, &qword_1B9667740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_19();
    OUTLINED_FUNCTION_461();
    sub_1B8EF00A4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8EF3024()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 10);
  v6 = (*v0)[3];
  v7 = (*v0)[4];
  v8 = (*v0)[1];
  v9 = (*v0)[2];
  v10 = **v0;
  if (v11)
  {
    v12 = (*v0)[4];
    sub_1B8EF02A0();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B8EF00A4();
    OUTLINED_FUNCTION_187_1();
    OUTLINED_FUNCTION_177_1();
    sub_1B8EF02F8();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B8EF00A4();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation(0);
  OUTLINED_FUNCTION_279(v2);
  v3 = *(v2 + 28);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.unknownFields.getter()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0) + 32);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  v3 = v1 + v2[5];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[6];
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v2[8];
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v15 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1B8EF352C@<X0>(uint64_t *a1@<X8>)
{
  result = static Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult.CoarseClassificatioLabel.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EF35E0@<X0>(uint64_t *a1@<X8>)
{
  result = static Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainPredictionSupportedDomain.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EF3624()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE1F8);
  __swift_project_value_buffer(v0, qword_1EBABE1F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "coarse_classification_results";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object_detector_results";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "refined_region";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 222;
  *v14 = "forgetme";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 222:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8EF39F0();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8EF873C(v3, v4, v5, v6, v7);
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8EF393C();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8EF393C()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0) + 24);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  sub_1B8EF3F40(&qword_1EBABE4A0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
  return sub_1B964C580();
}

uint64_t sub_1B8EF39F0()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0) + 28);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  sub_1B8EF3F40(&qword_1EBABE498, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  return sub_1B964C580();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v1;
  v60 = v4;
  v61 = v5;
  v59 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v56 = v11;
  v12 = OUTLINED_FUNCTION_201();
  v57 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v12);
  v13 = OUTLINED_FUNCTION_59_1(v57);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v55[0] = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE478, &qword_1B9667738);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v55 - v22;
  v58 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v24 = OUTLINED_FUNCTION_59_1(v58);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v55[1] = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE470, &qword_1B9667730);
  OUTLINED_FUNCTION_183(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  v33 = OUTLINED_FUNCTION_103();
  v34 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(v33);
  v35 = OUTLINED_FUNCTION_59_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v62 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  v38 = v62[6];
  sub_1B8D92024();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v39, v40, v41);
  if (v42)
  {
    sub_1B8D9207C(v2, &qword_1EBABE470, &qword_1B9667730);
  }

  else
  {
    sub_1B8EF00A4();
    sub_1B8EF3F40(&qword_1EBABE4A0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
    OUTLINED_FUNCTION_97_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_105_3();
    sub_1B8EF02F8();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  v43 = v62[7];
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v23, 1, v58);
  if (v42)
  {
    sub_1B8D9207C(v23, &qword_1EBABE478, &qword_1B9667738);
  }

  else
  {
    sub_1B8EF00A4();
    sub_1B8EF3F40(&qword_1EBABE498, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
    OUTLINED_FUNCTION_108_3();
    v3 = v1;
    sub_1B8EF02F8();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  v44 = v56;
  v45 = v62[8];
  sub_1B8D92024();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v46, v47, v48);
  if (v42)
  {
    sub_1B8D9207C(v44, &qword_1EBAB9210, &qword_1B9667740);
  }

  else
  {
    sub_1B8EF00A4();
    OUTLINED_FUNCTION_5_13();
    sub_1B8EF3F40(v49, v50);
    OUTLINED_FUNCTION_108_3();
    v3 = v1;
    sub_1B8EF02F8();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  v51 = *v0;
  v52 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v53 || (sub_1B964C700(), !v3))
  {
    v54 = v0 + v62[5];
    sub_1B964C290();
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8EF3F40(unint64_t *a1, void (*a2)(uint64_t))
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

void static Argos_Protos_Queryflow_ParseFlowIntermediateResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v78 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v6 = OUTLINED_FUNCTION_59_1(v78);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9218, &unk_1B964DA00);
  OUTLINED_FUNCTION_59_1(v77);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  v79 = v16;
  v17 = OUTLINED_FUNCTION_201();
  v81 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(v17);
  v18 = OUTLINED_FUNCTION_59_1(v81);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE478, &qword_1B9667738);
  OUTLINED_FUNCTION_183(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_185();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE4A8, &qword_1B9667768);
  OUTLINED_FUNCTION_59_1(v80);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_185();
  v82 = v28;
  v29 = OUTLINED_FUNCTION_201();
  v30 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(v29);
  v31 = OUTLINED_FUNCTION_59_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  v36 = (v35 - v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE470, &qword_1B9667730);
  OUTLINED_FUNCTION_183(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_79();
  v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE4B0, &qword_1B9667770) - 8);
  v42 = *(*v41 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_103();
  v83 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(v44);
  v84 = v5;
  v45 = v83[6];
  v46 = v41[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1);
  if (v51)
  {
    OUTLINED_FUNCTION_37_0(v1 + v46);
    if (v51)
    {
      sub_1B8D9207C(v1, &qword_1EBABE470, &qword_1B9667730);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v46);
  if (v51)
  {
    sub_1B8EF02F8();
LABEL_14:
    v52 = &qword_1EBABE4B0;
    v53 = &qword_1B9667770;
LABEL_24:
    v62 = v1;
LABEL_25:
    sub_1B8D9207C(v62, v52, v53);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_15_11();
  sub_1B8EF00A4();
  v54 = *v0 == *v36 && v0[1] == v36[1];
  if (!v54 && (sub_1B964C9F0() & 1) == 0 || (v55 = v0[2], v56 = v36[2], sub_1B8D627E8(), (v57 & 1) == 0))
  {
    sub_1B8EF02F8();
    sub_1B8EF02F8();
    v52 = &qword_1EBABE470;
    v53 = &qword_1B9667730;
    goto LABEL_24;
  }

  v58 = *(v30 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v59, v60);
  v61 = OUTLINED_FUNCTION_133_4();
  sub_1B8EF02F8();
  sub_1B8EF02F8();
  sub_1B8D9207C(v1, &qword_1EBABE470, &qword_1B9667730);
  if ((v61 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v47 = v83[7];
  v48 = *(v80 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v49 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_44(v49, v50);
  if (v51)
  {
    OUTLINED_FUNCTION_48(v82 + v48);
    if (v51)
    {
      sub_1B8D9207C(v82, &qword_1EBABE478, &qword_1B9667738);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v82 + v48);
  if (v64)
  {
    sub_1B8EF02F8();
LABEL_31:
    v52 = &qword_1EBABE4A8;
    v53 = &qword_1B9667768;
    v62 = v82;
    goto LABEL_25;
  }

  sub_1B8EF00A4();
  static Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.== infix(_:_:)();
  v66 = v65;
  sub_1B8EF02F8();
  sub_1B8EF02F8();
  sub_1B8D9207C(v82, &qword_1EBABE478, &qword_1B9667738);
  if ((v66 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_33:
  v67 = v83[8];
  v68 = *(v77 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_44(v79, 1);
  if (!v51)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v79 + v68);
    if (!v69)
    {
      OUTLINED_FUNCTION_23_8();
      sub_1B8EF00A4();
      v70 = OUTLINED_FUNCTION_461();
      v72 = static Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.== infix(_:_:)(v70, v71);
      sub_1B8EF02F8();
      OUTLINED_FUNCTION_182();
      sub_1B8EF02F8();
      sub_1B8D9207C(v79, &qword_1EBAB9210, &qword_1B9667740);
      if ((v72 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_43;
    }

    OUTLINED_FUNCTION_13_9();
    sub_1B8EF02F8();
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_48(v79 + v68);
  if (!v51)
  {
LABEL_41:
    v52 = &qword_1EBAB9218;
    v53 = &unk_1B964DA00;
    v62 = v79;
    goto LABEL_25;
  }

  sub_1B8D9207C(v79, &qword_1EBAB9210, &qword_1B9667740);
LABEL_43:
  v73 = *v84 == *v3 && v84[1] == v3[1];
  if (v73 || (sub_1B964C9F0() & 1) != 0)
  {
    v74 = v83[5];
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_34();
    sub_1B8EF3F40(v75, v76);
    v63 = sub_1B964C850();
    goto LABEL_27;
  }

LABEL_26:
  v63 = 0;
LABEL_27:
  OUTLINED_FUNCTION_264(v63);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8EF4768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE770, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF47E8(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE5F8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF4858()
{
  sub_1B8EF3F40(&qword_1EBABE5F8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EF48D8()
{
  result = MEMORY[0x1BFADC850](0xD00000000000001CLL, 0x80000001B96F2740);
  qword_1EBABE210 = 0xD000000000000033;
  *algn_1EBABE218 = 0x80000001B96F1DD0;
  return result;
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8EF8824();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C530();
    }
  }
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_127_2(), result = sub_1B964C700(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0), sub_1B8EF3F40(&qword_1EBABE4C0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v7 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v4 = *(v1 + 8);
  OUTLINED_FUNCTION_428();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 16);
  v9 = *(v0 + 16);
  sub_1B8D627E8();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  OUTLINED_FUNCTION_188_1(v11);
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EF4C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE768, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF4CD8(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE4A0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF4D48()
{
  sub_1B8EF3F40(&qword_1EBABE4A0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EF4DC8()
{
  result = MEMORY[0x1BFADC850](0xD00000000000001BLL, 0x80000001B96F2720);
  qword_1EBABE238 = 0xD000000000000033;
  unk_1EBABE240 = 0x80000001B96F1DD0;
  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v5 = *v0, v6 = *(v2 + 8), sub_1B8EFCD1C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (*(v2 + 12) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v1))
    {
      v4 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8EF5090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE760, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF5110(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE4C0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF5180()
{
  sub_1B8EF3F40(&qword_1EBABE4C0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EF5200()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE260);
  __swift_project_value_buffer(v0, qword_1EBABE260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9652FF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CoarseClassificatioLabelUnknown";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoarseClassificatioLabelAlbum";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CoarseClassificatioLabelArt";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CoarseClassificatioLabelCats";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CoarseClassificatioLabelDogs";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CoarseClassificatioLabelEventDestruction";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "CoarseClassificatioLabelLandmark";
  *(v20 + 1) = 32;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "CoarseClassificatioLabelMedia";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "CoarseClassificatioLabelNaturalLandmark";
  *(v24 + 1) = 39;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "CoarseClassificatioLabelNature";
  *(v26 + 1) = 30;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "CoarseClassificatioLabelScreenshot";
  *(v28 + 1) = 34;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "CoarseClassificatioLabelAnimal";
  *(v30 + 1) = 30;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "CoarseClassificatioLabelReserved3";
  *(v32 + 1) = 33;
  v32[16] = 2;
  v9();
  v33 = (v5 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "CoarseClassificatioLabelReserved2";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v9();
  v35 = (v5 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "CoarseClassificatioLabelHuman";
  *(v36 + 1) = 29;
  v36[16] = 2;
  v9();
  v37 = (v5 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 15;
  *v38 = "CoarseClassificatioLabelReserved1";
  *(v38 + 1) = 33;
  v38[16] = 2;
  v9();
  v39 = (v5 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 16;
  *v40 = "CoarseClassificatioLabelSculpture";
  *(v40 + 1) = 33;
  v40[16] = 2;
  v9();
  v41 = (v5 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 17;
  *v42 = "CoarseClassificatioLabelSkyline";
  *(v42 + 1) = 31;
  v42[16] = 2;
  v9();
  v43 = (v5 + 18 * v2);
  v44 = v43 + v1[14];
  *v43 = 18;
  *v44 = "CoarseClassificatioLabelReserved5";
  *(v44 + 1) = 33;
  v44[16] = 2;
  v9();
  v45 = (v5 + 19 * v2);
  v46 = v45 + v1[14];
  *v45 = 19;
  *v46 = "CoarseClassificatioLabelReserved4";
  *(v46 + 1) = 33;
  v46[16] = 2;
  v9();
  v47 = (v5 + 20 * v2);
  v48 = v47 + v1[14];
  *v47 = 20;
  *v48 = "CoarseClassificatioLabelReserved7";
  *(v48 + 1) = 33;
  v48[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EF5864()
{
  result = MEMORY[0x1BFADC850](0xD000000000000016, 0x80000001B96F23B0);
  qword_1EBABE278 = 0xD000000000000033;
  unk_1EBABE280 = 0x80000001B96F1DD0;
  return result;
}

uint64_t sub_1B8EF58F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE288);
  __swift_project_value_buffer(v0, qword_1EBABE288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "domain_prediction_net_model_urn";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "results";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8EF8824();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8EF5BF8();
        break;
    }
  }
}

uint64_t sub_1B8EF5BF8()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0) + 28);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  sub_1B8EF3F40(&qword_1EBABE4E8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
  return sub_1B964C580();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  v10 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(v9);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v23 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v14 = *(v23 + 28);
  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v15, v16, v17);
  if (v18)
  {
    sub_1B8D9207C(v2, &qword_1EBABE480, &qword_1B9667748);
  }

  else
  {
    sub_1B8EF00A4();
    sub_1B8EF3F40(&qword_1EBABE4E8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
    OUTLINED_FUNCTION_97_2();
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_105_3();
    sub_1B8EF02F8();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  if (!*(v0[2] + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0), sub_1B8EF3F40(&qword_1EBABE4E0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v1))
  {
    v19 = *v0;
    v20 = v0[1];
    OUTLINED_FUNCTION_1();
    if (!v21 || (OUTLINED_FUNCTION_153_1(), sub_1B964C700(), !v1))
    {
      v22 = v0 + *(v23 + 24);
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE480, &qword_1B9667748);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v44 - v16);
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE4F0, &unk_1B9667778) - 8);
  v19 = *(*v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_79();
  v45 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v21 = *(v45 + 28);
  v22 = v18[14];
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (!v23)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v0 + v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_12_13();
      sub_1B8EF00A4();
      v27 = *v17 == *v11 && v17[1] == v11[1];
      if (v27 || (sub_1B964C9F0() & 1) != 0)
      {
        v28 = v17[2] == v11[2] && v17[3] == v11[3];
        if (v28 || (sub_1B964C9F0() & 1) != 0)
        {
          v29 = *(v5 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_34();
          sub_1B8EF3F40(v30, v31);
          v32 = sub_1B964C850();
          sub_1B8EF02F8();
          OUTLINED_FUNCTION_686();
          sub_1B8EF02F8();
          sub_1B8D9207C(v0, &qword_1EBABE480, &qword_1B9667748);
          if ((v32 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      sub_1B8EF02F8();
      sub_1B8EF02F8();
      v24 = &qword_1EBABE480;
      v25 = &qword_1B9667748;
LABEL_10:
      sub_1B8D9207C(v0, v24, v25);
      goto LABEL_11;
    }

    sub_1B8EF02F8();
LABEL_9:
    v24 = &qword_1EBABE4F0;
    v25 = &unk_1B9667778;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v0 + v22);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBABE480, &qword_1B9667748);
LABEL_24:
  v33 = *v4;
  v34 = v4[1];
  OUTLINED_FUNCTION_428();
  if (v23)
  {
    v37 = v35 == v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37 || (sub_1B964C9F0() & 1) != 0)
  {
    v38 = v4[2];
    v39 = *(v2 + 16);
    sub_1B8D62AA4();
    if (v40)
    {
      v41 = *(v45 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_34();
      sub_1B8EF3F40(v42, v43);
      v26 = sub_1B964C850();
      goto LABEL_12;
    }
  }

LABEL_11:
  v26 = 0;
LABEL_12:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8EF62EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE758, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF636C(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE498, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF63DC()
{
  sub_1B8EF3F40(&qword_1EBABE498, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);

  return sub_1B964C5D0();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8EF87DC();
    }
  }
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0), sub_1B8EF3F40(&qword_1EBABE500, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8EF66F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE750, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF6778(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE550, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF67E8()
{
  sub_1B8EF3F40(&qword_1EBABE550, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EF6868()
{
  result = MEMORY[0x1BFADC850](0xD000000000000012, 0x80000001B96F2350);
  qword_1EBABE2C8 = 0xD000000000000033;
  unk_1EBABE2D0 = 0x80000001B96F1DD0;
  return result;
}

uint64_t sub_1B8EF6900()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE2D8);
  __swift_project_value_buffer(v0, qword_1EBABE2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_urn_index";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "classification_results";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C710(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0), sub_1B8EF3F40(&qword_1EBABE510, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v4 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8EF6CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE748, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF6D50(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE500, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF6DC0()
{
  sub_1B8EF3F40(&qword_1EBABE500, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EF6E40()
{
  if (qword_1EBAB66F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBABE2C8;
  v2 = unk_1EBABE2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1BFADC850](0xD000000000000015, 0x80000001B96F2300);

  qword_1EBABE2F0 = v1;
  *algn_1EBABE2F8 = v2;
  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C490();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8EF6FA8();
    }
  }

  return result;
}

uint64_t sub_1B8EF6FA8()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0) + 24);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  sub_1B8EF3F40(&qword_1EBABE520, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  return sub_1B964C580();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  v10 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(v9);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v14 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
  v15 = *(v14 + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v16, v17, v18);
  if (v19)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9200, &qword_1B9667750);
  }

  else
  {
    OUTLINED_FUNCTION_72_3();
    sub_1B8EF00A4();
    OUTLINED_FUNCTION_69_2();
    sub_1B8EF3F40(v20, v21);
    OUTLINED_FUNCTION_97_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_105_3();
    sub_1B8EF02F8();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  if (*v0 == 0.0 || (sub_1B964C6B0(), !v1))
  {
    v22 = v0 + *(v14 + 20);
    OUTLINED_FUNCTION_186();
    sub_1B964C290();
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9200, &qword_1B9667750);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_137();
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9208, &unk_1B964D9F0) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_22_3();
  v35 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(v20);
  v21 = *(v35 + 24);
  v22 = v17[14];
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v27)
  {
    OUTLINED_FUNCTION_37_0(v0 + v22);
    if (v27)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9200, &qword_1B9667750);
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v22);
  if (v27)
  {
    OUTLINED_FUNCTION_71_3();
    sub_1B8EF02F8();
LABEL_11:
    v28 = &qword_1EBAB9208;
    v29 = &unk_1B964D9F0;
LABEL_12:
    sub_1B8D9207C(v0, v28, v29);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1_29();
  sub_1B8EF00A4();
  v30 = sub_1B8D921A4(*v1, *v12);
  if ((v30 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1B8EF02F8();
    sub_1B8EF02F8();
    v28 = &qword_1EBAB9200;
    v29 = &qword_1B9667750;
    goto LABEL_12;
  }

  v31 = *(v6 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v32, v33);
  v34 = sub_1B964C850();
  sub_1B8EF02F8();
  sub_1B8EF02F8();
  sub_1B8D9207C(v0, &qword_1EBAB9200, &qword_1B9667750);
  if ((v34 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (*v5 != *v3)
  {
LABEL_13:
    v26 = 0;
    goto LABEL_14;
  }

  v23 = *(v35 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v24, v25);
  v26 = sub_1B964C850();
LABEL_14:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8EF75B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE740, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF7634(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE510, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF76A4()
{
  sub_1B8EF3F40(&qword_1EBABE510, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EF7724()
{
  result = MEMORY[0x1BFADC850](0xD000000000000016, 0x80000001B96F22E0);
  qword_1EBABE318 = 0xD000000000000033;
  unk_1EBABE320 = 0x80000001B96F1DD0;
  return result;
}

uint64_t sub_1B8EF77D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B964C780();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_461();
  __swift_project_value_buffer(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_120_1(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D060;
  v14 = (v13 + v12);
  v15 = v13 + v12 + *(v5 + 56);
  *v14 = 1;
  *v15 = "model_urn";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADE8];
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v10 + *(v5 + 56);
  *(v14 + v10) = 2;
  *v20 = a3;
  *(v20 + 1) = a4;
  v20[16] = 2;
  v21 = *MEMORY[0x1E69AADC8];
  v19();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_127_2(), result = sub_1B964C700(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_127_2(), result = sub_1B964C700(), !v1))
    {
      v10 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v4 = v1[1];
  OUTLINED_FUNCTION_428();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v1[2] == *(v0 + 16) && v1[3] == *(v0 + 24);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  OUTLINED_FUNCTION_188_1(v9);
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EF7BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE738, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF7C48(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE4E8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF7CB8()
{
  sub_1B8EF3F40(&qword_1EBABE4E8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);

  return sub_1B964C5D0();
}

void sub_1B8EF7DA4()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B964D050;
  v13 = v12 + v11 + v9[14];
  *(v12 + v11) = v5;
  *v13 = v3;
  *(v13 + 8) = v1;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v15 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v15);
  (*(v16 + 104))(v13, v14);
  sub_1B964C760();
  OUTLINED_FUNCTION_242();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C4F0();
    }
  }

  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C660(), !v1))
  {
    v3 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8EF8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a4(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EF8128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE730, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF81A8(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE520, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF8218()
{
  sub_1B8EF3F40(&qword_1EBABE520, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EF8298()
{
  result = MEMORY[0x1BFADC850](0xD00000000000001ALL, 0x80000001B96F2290);
  qword_1EBABE368 = 0xD000000000000033;
  unk_1EBABE370 = 0x80000001B96F1DD0;
  return result;
}

uint64_t sub_1B8EF832C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE378);
  __swift_project_value_buffer(v0, qword_1EBABE378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_results";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "boxScore";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "domain_prediction_net_results";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "domain_signals";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8EF873C(v3, v4, v5, v6, v7);
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8EF87DC();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8EF8824();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8EF886C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EF873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  OUTLINED_FUNCTION_5_13();
  sub_1B8EF3F40(v6, v7);
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_127_2();
  return sub_1B964C580();
}

void sub_1B8EF87DC()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B8EF8824()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8EF886C()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0) + 36);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  sub_1B8EF3F40(&qword_1EBABE550, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
  return sub_1B964C580();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v39 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE488, &unk_1B9667758);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v38 = v8;
  v9 = OUTLINED_FUNCTION_201();
  v36 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(v9);
  v10 = OUTLINED_FUNCTION_59_1(v36);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v35[1] = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v35 - v19;
  v21 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v37 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  v25 = v37[8];
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v26, v27, v28);
  if (v29)
  {
    sub_1B8D9207C(v20, &qword_1EBAB9210, &qword_1B9667740);
  }

  else
  {
    sub_1B8EF00A4();
    OUTLINED_FUNCTION_5_13();
    sub_1B8EF3F40(v30, v31);
    sub_1B964C740();
    sub_1B8EF02F8();
    if (v1)
    {
      goto LABEL_17;
    }
  }

  v32 = v38;
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0), sub_1B8EF3F40(&qword_1EBABE540, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_83_2(), sub_1B964C730(), (v2 = v1) == 0))
  {
    if (*(v0 + 8) == 0.0 || (v1 = v2, sub_1B964C6B0(), !v2))
    {
      if (!*(*(v0 + 16) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult(0), sub_1B8EF3F40(&qword_1EBABE548, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult), OUTLINED_FUNCTION_83_2(), sub_1B964C730(), (v2 = v1) == 0))
      {
        v33 = v37[9];
        sub_1B8D92024();
        OUTLINED_FUNCTION_178(v32, 1, v36);
        if (v29)
        {
          sub_1B8D9207C(v32, &qword_1EBABE488, &unk_1B9667758);
LABEL_16:
          v34 = v0 + v37[7];
          sub_1B964C290();
          goto LABEL_17;
        }

        sub_1B8EF00A4();
        sub_1B8EF3F40(&qword_1EBABE550, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
        OUTLINED_FUNCTION_83_2();
        sub_1B964C740();
        OUTLINED_FUNCTION_105_3();
        sub_1B8EF02F8();
        if (!v2)
        {
          goto LABEL_16;
        }
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v67 = v3;
  v5 = v4;
  v65 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  v6 = OUTLINED_FUNCTION_59_1(v65);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v61 = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE488, &unk_1B9667758);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v62 = v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE558, &qword_1B9667788);
  OUTLINED_FUNCTION_59_1(v63);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v66 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v21 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v20);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_137();
  v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9218, &unk_1B964DA00) - 8);
  v30 = *(*v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_151();
  v64 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(v32);
  v33 = v64[8];
  v34 = v29[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v2);
  if (v35)
  {
    OUTLINED_FUNCTION_75(v2 + v34);
    if (v35)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9210, &qword_1B9667740);
      goto LABEL_12;
    }

LABEL_9:
    v36 = &qword_1EBAB9218;
    v37 = &unk_1B964DA00;
    v38 = v2;
LABEL_10:
    sub_1B8D9207C(v38, v36, v37);
LABEL_28:
    v53 = 0;
    goto LABEL_29;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v2 + v34);
  if (v35)
  {
    OUTLINED_FUNCTION_13_9();
    sub_1B8EF02F8();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_23_8();
  sub_1B8EF00A4();
  v39 = static Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.== infix(_:_:)(v0, v1);
  sub_1B8EF02F8();
  sub_1B8EF02F8();
  sub_1B8D9207C(v2, &qword_1EBAB9210, &qword_1B9667740);
  if ((v39 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v40 = *v5;
  v41 = *v67;
  sub_1B8D61774();
  if ((v42 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v5[2] != v67[2])
  {
    goto LABEL_28;
  }

  v43 = *(v5 + 2);
  v44 = *(v67 + 2);
  sub_1B8D61EB4();
  if ((v45 & 1) == 0)
  {
    goto LABEL_28;
  }

  v46 = v64[9];
  v47 = *(v63 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  v48 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_44(v48, v49);
  if (v35)
  {
    OUTLINED_FUNCTION_48(v66 + v47);
    if (v35)
    {
      sub_1B8D9207C(v66, &qword_1EBABE488, &unk_1B9667758);
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v66 + v47);
  if (v54)
  {
    sub_1B8EF02F8();
LABEL_24:
    v36 = &qword_1EBABE558;
    v37 = &qword_1B9667788;
LABEL_25:
    v38 = v66;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_9();
  sub_1B8EF00A4();
  v55 = *v62;
  v56 = *v61;
  sub_1B8D62190();
  if ((v57 & 1) == 0)
  {
    sub_1B8EF02F8();
    sub_1B8EF02F8();
    v36 = &qword_1EBABE488;
    v37 = &unk_1B9667758;
    goto LABEL_25;
  }

  v58 = *(v65 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v59, v60);
  LOBYTE(v58) = OUTLINED_FUNCTION_132_3();
  sub_1B8EF02F8();
  sub_1B8EF02F8();
  sub_1B8D9207C(v66, &qword_1EBABE488, &unk_1B9667758);
  if ((v58 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  v50 = v64[7];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v51, v52);
  v53 = OUTLINED_FUNCTION_133_4();
LABEL_29:
  OUTLINED_FUNCTION_264(v53);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8EF92E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE728, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EF9364(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE4E0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EF93D4()
{
  sub_1B8EF3F40(&qword_1EBABE4E0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EF9454()
{
  if (qword_1EBAB6730 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBABE368;
  v2 = unk_1EBABE370;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1BFADC850](0x657463657465442ELL, 0xEF746C7573655264);

  qword_1EBABE390 = v1;
  *algn_1EBABE398 = v2;
  return result;
}

uint64_t sub_1B8EF9524()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE3A0);
  __swift_project_value_buffer(v0, qword_1EBABE3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "position";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bounding_box";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ontology_node";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "score";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C540();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8EF983C();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8EF98F0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EF983C()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0) + 28);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  sub_1B8EF3F40(&qword_1EBABE490, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  return sub_1B964C580();
}

uint64_t sub_1B8EF98F0()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0) + 32);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  sub_1B8EF3F40(&qword_1EBABE520, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  return sub_1B964C580();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v1;
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9200, &qword_1B9667750);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_103();
  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(v10);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_22_3();
  v20 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v19);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  if (*v5)
  {
    sub_1B964C710();
    if (v1)
    {
      goto LABEL_17;
    }

    v4 = 0;
  }

  v24 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  v25 = v24[7];
  sub_1B8D92024();
  v26 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v26, v27, v20);
  if (v28)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9210, &qword_1B9667740);
  }

  else
  {
    sub_1B8EF00A4();
    OUTLINED_FUNCTION_5_13();
    sub_1B8EF3F40(v29, v30);
    sub_1B964C740();
    sub_1B8EF02F8();
    if (v4)
    {
      goto LABEL_17;
    }
  }

  v31 = v24[8];
  sub_1B8D92024();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v32, v33, v34);
  if (v28)
  {
    sub_1B8D9207C(v3, &qword_1EBAB9200, &qword_1B9667750);
  }

  else
  {
    OUTLINED_FUNCTION_72_3();
    sub_1B8EF00A4();
    OUTLINED_FUNCTION_69_2();
    sub_1B8EF3F40(v35, v36);
    sub_1B964C740();
    sub_1B8EF02F8();
    if (v4)
    {
      goto LABEL_17;
    }
  }

  if (*(v5 + 4) == 0.0 || (sub_1B964C6B0(), !v4))
  {
    v37 = v5 + v24[6];
    sub_1B964C290();
  }

LABEL_17:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v77 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v7 = OUTLINED_FUNCTION_59_1(v77);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9200, &qword_1B9667750);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v76 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9208, &unk_1B964D9F0);
  OUTLINED_FUNCTION_59_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_22_3();
  v23 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v22);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_79();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9218, &unk_1B964DA00);
  OUTLINED_FUNCTION_59_1(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v73 - v35;
  if (*v6 != *v4)
  {
    goto LABEL_25;
  }

  v73 = v12;
  v37 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  v78 = v4;
  v38 = *(v37 + 28);
  v39 = *(v31 + 48);
  v74 = v37;
  v75 = v6;
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v40, v41, v42);
  if (v49)
  {
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_178(v43, v44, v45);
    if (v49)
    {
      sub_1B8D9207C(v36, &qword_1EBAB9210, &qword_1B9667740);
      goto LABEL_12;
    }

LABEL_10:
    v50 = &qword_1EBAB9218;
    v51 = &unk_1B964DA00;
    v52 = v36;
LABEL_24:
    sub_1B8D9207C(v52, v50, v51);
    goto LABEL_25;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v46, v47, v48);
  if (v49)
  {
    OUTLINED_FUNCTION_13_9();
    sub_1B8EF02F8();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_23_8();
  sub_1B8EF00A4();
  v53 = static Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.== infix(_:_:)(v1, v2);
  sub_1B8EF02F8();
  sub_1B8EF02F8();
  sub_1B8D9207C(v36, &qword_1EBAB9210, &qword_1B9667740);
  if ((v53 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v55 = v74;
  v54 = v75;
  v56 = *(v74 + 32);
  v57 = *(v18 + 48);
  OUTLINED_FUNCTION_161_2();
  v58 = v78;
  OUTLINED_FUNCTION_161_2();
  v59 = OUTLINED_FUNCTION_493();
  v60 = v77;
  OUTLINED_FUNCTION_44(v59, v61);
  if (v49)
  {
    OUTLINED_FUNCTION_48(v0 + v57);
    if (v49)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9200, &qword_1B9667750);
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v66 = v76;
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v0 + v57);
  if (v67)
  {
    OUTLINED_FUNCTION_71_3();
    sub_1B8EF02F8();
LABEL_22:
    v50 = &qword_1EBAB9208;
    v51 = &unk_1B964D9F0;
LABEL_23:
    v52 = v0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1_29();
  v68 = v73;
  sub_1B8EF00A4();
  v69 = sub_1B8D921A4(*v66, *v68);
  if ((v69 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1B8EF02F8();
    sub_1B8EF02F8();
    v50 = &qword_1EBAB9200;
    v51 = &qword_1B9667750;
    goto LABEL_23;
  }

  v70 = *(v60 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v71, v72);
  LOBYTE(v70) = OUTLINED_FUNCTION_132_3();
  sub_1B8EF02F8();
  v58 = v78;
  sub_1B8EF02F8();
  sub_1B8D9207C(v0, &qword_1EBAB9200, &qword_1B9667750);
  if ((v70 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (v54[1] != v58[1])
  {
LABEL_25:
    v65 = 0;
    goto LABEL_26;
  }

  v62 = *(v55 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v63, v64);
  v65 = sub_1B964C850();
LABEL_26:
  OUTLINED_FUNCTION_264(v65);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8EFA2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EFA32C(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE540, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EFA39C()
{
  sub_1B8EF3F40(&qword_1EBABE540, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EFA41C()
{
  result = MEMORY[0x1BFADC850](0xD00000000000001ALL, 0x80000001B96F2200);
  qword_1EBABE3B8 = 0xD000000000000033;
  unk_1EBABE3C0 = 0x80000001B96F1DD0;
  return result;
}

uint64_t sub_1B8EFA4B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE3C8);
  __swift_project_value_buffer(v0, qword_1EBABE3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "object_detector_result_position";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain_results";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B8EFA6F8()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_1B8EFA7B0();
    }

    else if (v1 == 1)
    {
      sub_1B964C540();
    }
  }
}

void sub_1B8EFA7B0()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C710(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(0), sub_1B8EF3F40(&qword_1EBABE570, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v4 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8EFA8F8(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if ((v7(*(v5 + 8), *(v6 + 8)) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  OUTLINED_FUNCTION_188_1(v8);
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EFAA18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE718, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EFAA98(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE548, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EFAB08()
{
  sub_1B8EF3F40(&qword_1EBABE548, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EFAB88()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE3E0);
  __swift_project_value_buffer(v0, qword_1EBABE3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1B9667720;
  v4 = v58 + v3 + v1[14];
  *(v58 + v3) = 0;
  *v4 = "DomainPredictionLabelUnknown";
  *(v4 + 8) = 28;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v58 + v3 + v2 + v1[14];
  *(v58 + v3 + v2) = 1;
  *v8 = "DomainPredictionLabelArt";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v58 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "DomainPredictionLabelNature";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v58 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "DomainPredictionLabelLandmark";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v7();
  v13 = (v58 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "DomainPredictionLabelMedia";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v58 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "DomainPredictionLabelPets";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v7();
  v17 = (v58 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "DomainPredictionLabelReserved1";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v7();
  v19 = (v58 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "DomainPredictionLabelNaturalLandmark";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v7();
  v21 = (v58 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "DomainPredictionLabelAnimals";
  *(v22 + 1) = 28;
  v22[16] = 2;
  v7();
  v23 = (v58 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "DomainPredictionLabelSculpture";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v7();
  v25 = (v58 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "DomainPredictionLabelSkyline";
  *(v26 + 1) = 28;
  v26[16] = 2;
  v7();
  v27 = (v58 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "DomainPredictionLabelCats";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v7();
  v29 = (v58 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "DomainPredictionLabelDogs";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v7();
  v31 = (v58 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "DomainPredictionLabelBook";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v58 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "DomainPredictionLabelAlbum";
  *(v34 + 1) = 26;
  v34[16] = 2;
  v7();
  v35 = (v58 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "DomainPredictionLabelBird";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v7();
  v37 = (v58 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "DomainPredictionLabelInsects";
  *(v38 + 1) = 28;
  v38[16] = 2;
  v7();
  v39 = (v58 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "DomainPredictionLabelMammal";
  *(v40 + 1) = 27;
  v40[16] = 2;
  v7();
  v41 = (v58 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "DomainPredictionLabelReptile";
  *(v42 + 1) = 28;
  v42[16] = 2;
  v7();
  v43 = (v58 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "DomainPredictionLabelApparel";
  *(v44 + 1) = 28;
  v44[16] = 2;
  v7();
  v45 = (v58 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "DomainPredictionLabelFood";
  *(v46 + 1) = 25;
  v46[16] = 2;
  v7();
  v47 = (v58 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "DomainPredictionLabelStorefront";
  *(v48 + 1) = 31;
  v48[16] = 2;
  v7();
  v49 = (v58 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "DomainPredictionLabelLaundryCareSymbol";
  *(v50 + 1) = 38;
  v50[16] = 2;
  v7();
  v51 = (v58 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "DomainPredictionLabelAutoSymbol";
  *(v52 + 1) = 31;
  v52[16] = 2;
  v7();
  v53 = (v58 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "DomainPredictionLabelBrandLogoSymbol";
  *(v54 + 1) = 36;
  v54[16] = 2;
  v7();
  v55 = (v58 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "DomainPredictionLabelAccessories";
  *(v56 + 1) = 32;
  v56[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8EFB314()
{
  if (qword_1EBAB6750 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBABE3B8;
  v2 = unk_1EBABE3C0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1BFADC850](0x526E69616D6F442ELL, 0xED0000746C757365);

  qword_1EBABE3F8 = v1;
  unk_1EBABE400 = v2;
  return result;
}

uint64_t sub_1B8EFB3FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_120_1(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B964D060;
  v16 = (v15 + v14);
  v17 = v15 + v14 + *(v7 + 56);
  *v16 = 1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = 2;
  v18 = *MEMORY[0x1E69AADC8];
  v19 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v19);
  v21 = *(v20 + 104);
  (v21)(v17, v18, v19);
  v22 = v16 + v12 + *(v7 + 56);
  *(v16 + v12) = 2;
  *v22 = "score";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v21();
  return sub_1B964C760();
}

uint64_t sub_1B8EFB5F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1B964C490();
    }

    else if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (sub_1B8D92198(*v0, *(v2 + 8), 0) || (sub_1B8EFCD70(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (*(v2 + 12) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v1))
    {
      v4 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8EFB7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v8(*v7, *(v5 + 8), *v4, *(v4 + 8)) & 1) == 0 || *(v5 + 12) != *(v4 + 12))
  {
    return 0;
  }

  v9 = a4(0);
  OUTLINED_FUNCTION_188_1(v9);
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EFB918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE710, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EFB998(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE570, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EFBA08()
{
  sub_1B8EF3F40(&qword_1EBABE570, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EFBA88()
{
  result = MEMORY[0x1BFADC850](0xD000000000000013, 0x80000001B96F1E30);
  qword_1EBABE420 = 0xD000000000000033;
  *algn_1EBABE428 = 0x80000001B96F1DD0;
  return result;
}

uint64_t sub_1B8EFBB1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE430);
  __swift_project_value_buffer(v0, qword_1EBABE430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence_score";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "bounding_box";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8EFBDD4();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8EFBDD4()
{
  v0 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation(0) + 28);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  sub_1B8EF3F40(&qword_1EBABE490, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  return sub_1B964C580();
}

void Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v13 = *v0;
  v14 = *(v0 + 1);
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_79_0(), sub_1B964C700(), (v3 = v1) == 0))
  {
    if (v0[4] == 0.0 || (OUTLINED_FUNCTION_79_0(), sub_1B964C6B0(), (v3 = v1) == 0))
    {
      v16 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation(0);
      v17 = *(v16 + 28);
      sub_1B8D92024();
      OUTLINED_FUNCTION_178(v2, 1, v9);
      if (v18)
      {
        sub_1B8D9207C(v2, &qword_1EBAB9210, &qword_1B9667740);
      }

      else
      {
        sub_1B8EF00A4();
        OUTLINED_FUNCTION_5_13();
        sub_1B8EF3F40(v19, v20);
        OUTLINED_FUNCTION_79_0();
        sub_1B964C740();
        OUTLINED_FUNCTION_105_3();
        sub_1B8EF02F8();
        if (v3)
        {
          goto LABEL_10;
        }
      }

      v21 = v0 + *(v16 + 24);
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v3 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9218, &unk_1B964DA00);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = *v1;
  v21 = *(v1 + 1);
  OUTLINED_FUNCTION_428();
  v24 = v24 && v22 == v23;
  if (!v24 && (sub_1B964C9F0() & 1) == 0 || v1[4] != *(v0 + 16))
  {
    goto LABEL_16;
  }

  v34 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation(0);
  v25 = *(v34 + 28);
  v26 = *(v14 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_16_2();
  if (v24)
  {
    OUTLINED_FUNCTION_75(&v19[v26]);
    if (v24)
    {
      sub_1B8D9207C(v19, &qword_1EBAB9210, &qword_1B9667740);
LABEL_19:
      v30 = *(v34 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_34();
      sub_1B8EF3F40(v31, v32);
      v28 = OUTLINED_FUNCTION_634();
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_75(&v19[v26]);
  if (v27)
  {
    OUTLINED_FUNCTION_13_9();
    sub_1B8EF02F8();
LABEL_15:
    sub_1B8D9207C(v19, &qword_1EBAB9218, &unk_1B964DA00);
    goto LABEL_16;
  }

  sub_1B8EF00A4();
  v29 = static Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.== infix(_:_:)(v2, v9);
  OUTLINED_FUNCTION_236();
  sub_1B8EF02F8();
  sub_1B8EF02F8();
  sub_1B8D9207C(v19, &qword_1EBAB9210, &qword_1B9667740);
  if (v29)
  {
    goto LABEL_19;
  }

LABEL_16:
  v28 = 0;
LABEL_17:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8EFC3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE708, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EFC428(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE6D0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EFC498()
{
  sub_1B8EF3F40(&qword_1EBABE6D0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EFC548(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD000000000000033;
  *a5 = 0x80000001B96F1DD0;
  return result;
}

uint64_t sub_1B8EFC5D4(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return v5;
}

uint64_t sub_1B8EFC628()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE458);
  __swift_project_value_buffer(v0, qword_1EBABE458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6F0(), !v1))
  {
    if (v2[1] == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6F0(), !v1))
    {
      if (v2[2] == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6F0(), !v1))
      {
        if (v2[3] == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6F0(), !v1))
        {
          v3 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 8) != *(v5 + 8) || *(v3 + 16) != *(v2 + 16) || *(v3 + 24) != *(v2 + 24))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_34();
  sub_1B8EF3F40(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EFCAF0()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8EF3F40(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EFCBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EF3F40(&qword_1EBABE700, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EFCC2C(uint64_t a1)
{
  v2 = sub_1B8EF3F40(&qword_1EBABE490, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EFCC9C()
{
  sub_1B8EF3F40(&qword_1EBABE490, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);

  return sub_1B964C5D0();
}

unint64_t sub_1B8EFCD1C()
{
  result = qword_1EBABE4D0;
  if (!qword_1EBABE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE4D0);
  }

  return result;
}

unint64_t sub_1B8EFCD70()
{
  result = qword_1EBABE580;
  if (!qword_1EBABE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE580);
  }

  return result;
}

unint64_t sub_1B8EFCDC8()
{
  result = qword_1EBABE5A0;
  if (!qword_1EBABE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE5A0);
  }

  return result;
}

unint64_t sub_1B8EFCE20()
{
  result = qword_1EBABE5A8;
  if (!qword_1EBABE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE5A8);
  }

  return result;
}

unint64_t sub_1B8EFCE78()
{
  result = qword_1EBABE5B0;
  if (!qword_1EBABE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE5B0);
  }

  return result;
}

unint64_t sub_1B8EFCED0()
{
  result = qword_1EBABE5B8;
  if (!qword_1EBABE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE5B8);
  }

  return result;
}

unint64_t sub_1B8EFCF28()
{
  result = qword_1EBABE5C0;
  if (!qword_1EBABE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE5C0);
  }

  return result;
}

unint64_t sub_1B8EFCF80()
{
  result = qword_1EBABE5C8;
  if (!qword_1EBABE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE5C8);
  }

  return result;
}

void sub_1B8EFE13C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8EFE290(319, &qword_1ED9C9420, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B8EFE290(319, &qword_1ED9C9438, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B8EFE290(319, &qword_1ED9C93D8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B8EFE290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8EFE3B8()
{
  sub_1B8EFE290(319, &qword_1ED9C8F18, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8EFE290(319, &qword_1ED9C93A0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8EFE4EC()
{
  sub_1B8EFE290(319, &qword_1ED9C8F38, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EFE618()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8EFE290(319, &qword_1ED9C9408, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swift_store_extra_inhabitant_index_32Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_258_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void __swift_store_extra_inhabitant_index_63Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_1B8EFE80C()
{
  sub_1B8DDBC10();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EFE8B8()
{
  sub_1B8EFE290(319, &qword_1ED9C8F20, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B8EFE290(319, &qword_1ED9C8F28, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B8EFE290(319, &qword_1ED9C93D8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B8EFE290(319, &qword_1ED9C93F0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B8EFEA74()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8EFE290(319, &qword_1ED9C93D8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B8EFE290(319, &qword_1ED9C9408, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8EFEBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1B8EFE290(319, a5, a6, MEMORY[0x1E69E62F8]);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_88_2();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_40Tm()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 24);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_41Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 24);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8EFED44()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_88_2();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_53Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_267_0();
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_54Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v2 = v0;
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v6 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      OUTLINED_FUNCTION_259_0();
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_1B8EFEF28()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8EFE290(319, &qword_1ED9C93D8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8EFF01C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_17(uint64_t result)
{
  *(v1 + 16) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_74_5()
{
  *v0 = 0u;
  v0[1] = 0u;
  v3 = v0 + *(v1 + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return sub_1B8EF3F40(v1, v0);
}

uint64_t OUTLINED_FUNCTION_98_4()
{

  return sub_1B8EF00A4();
}

uint64_t OUTLINED_FUNCTION_108_3()
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_111_2@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v4 = v1 + *(v2 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_112_2@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v4 = v1 + *(v2 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_114_4()
{

  return sub_1B8D9207C(v0 + v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_132_3()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_133_4()
{

  return sub_1B964C850();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.id.getter()
{
  OUTLINED_FUNCTION_30_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EFF508(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.id.setter();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_112();
  v5 = OUTLINED_FUNCTION_160_2(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F08990(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_10_12(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EFF634(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.id.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_55_3();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F08990(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_18();
    v14 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.clusterID.getter()
{
  OUTLINED_FUNCTION_30_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EFF710(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.clusterID.setter();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.clusterID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_112();
  v5 = OUTLINED_FUNCTION_160_2(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F08990(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 40);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.clusterID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_10_12(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EFF81C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.clusterID.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_55_3();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F08990(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_18();
    v14 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.templateType.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_30_13();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + 56);
  *a1 = *(v4 + 48);
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8EFF8FC@<X0>(uint64_t a1@<X8>)
{
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.templateType.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_1B8EFF940(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.templateType.setter();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.templateType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_160_2(0);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F08990(v8);
    *(v2 + v1) = v7;
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.templateType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_30_13();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 56);
  *(v1 + 72) = *(v4 + 48);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EFFA64()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v1);
  v3 = *(v2 + 72);
  v4 = *(v0 + 84);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_55_3();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8F08990(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_18();
  *(v9 + 48) = v3;
  *(v9 + 56) = v6;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.question.getter()
{
  OUTLINED_FUNCTION_30_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EFFB50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.question.setter();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.question.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_112();
  v5 = OUTLINED_FUNCTION_160_2(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F08990(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 72);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.question.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_10_12(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EFFC5C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.question.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_55_3();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F08990(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_18();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v3 = a1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0) + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.answer.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_30_13();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_117(v1);
  if (v15)
  {
    OUTLINED_FUNCTION_168_2(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_117(v1);
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBABE968, &qword_1B96693B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_10();
    OUTLINED_FUNCTION_246();
    sub_1B8F09548();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.context.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_10_12(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F00024(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.language.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.language.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_12(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8F00104(void *a1)
{
  OUTLINED_FUNCTION_30_13();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_6_2();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B8F00150(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.platform.setter();
}

void sub_1B8F0019C()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = v1;
  v6 = OUTLINED_FUNCTION_112();
  v7 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(v6) + 20);
  v8 = *(v1 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F08990(v11);
    *(v5 + v7) = v10;
  }

  v12 = (v10 + *v4);
  OUTLINED_FUNCTION_211_0();
  v13 = v12[1];
  *v12 = v2;
  v12[1] = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.platform.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_12(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.platformVersion.getter()
{
  OUTLINED_FUNCTION_30_13();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.platformVersion.setter()
{
  v4 = OUTLINED_FUNCTION_214_0();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v6 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8F08990(v6);
    *(v2 + v3) = v5;
  }

  v7 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  result = OUTLINED_FUNCTION_9_3();
  *(v5 + v7) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.platformVersion.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_30_13();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F003B8(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_55_3();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8F08990(v11);
    OUTLINED_FUNCTION_168(v12);
  }

  v13 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  OUTLINED_FUNCTION_18();
  *(v8 + v13) = v3;

  free(v1);
}

void sub_1B8F00468(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.actions.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.actions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8F00530(uint64_t *a1)
{
  OUTLINED_FUNCTION_30_13();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + v5);
}

void sub_1B8F00574(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.sources.setter();
}

void sub_1B8F005AC()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_313();
  v6 = OUTLINED_FUNCTION_160_2(v5);
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8F08990(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v4;
  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + v10);
  *(v7 + v10) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.sources.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F006A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.tipID.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.tipID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_12(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

float Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.score.getter()
{
  OUTLINED_FUNCTION_30_13();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score;
  OUTLINED_FUNCTION_6_2();
  return *v2;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.score.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F08990(v8);
    *(v2 + v4) = v7;
  }

  v9 = (v7 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
  result = OUTLINED_FUNCTION_18();
  *v9 = a1;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.score.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_30_13();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F008B8(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_55_3();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F08990(v11);
    *(v10 + v9) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
  OUTLINED_FUNCTION_211_0();
  *v12 = v3;

  free(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_30_13();
  v9 = *(v2 + v8);
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBABE970, &qword_1B96693B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
    return sub_1B8F09548();
  }

  return result;
}

uint64_t sub_1B8F00A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_177_1();
  sub_1B8F09598();
  return a7(v7);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.asset.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE970, &qword_1B96693B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_160_2(0);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8F08990(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_25_7();
  sub_1B8F09548();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  OUTLINED_FUNCTION_191_2(v3);
  v4 = *(v2 + 28);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.asset.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_30_13();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_117(v1);
  if (v16)
  {
    *v13 = 0;
    v13[8] = 1;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0xE000000000000000;
    v17 = &v13[*(v10 + 24)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v10 + 28);
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_117(v1);
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBABE970, &qword_1B96693B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
    OUTLINED_FUNCTION_246();
    sub_1B8F09548();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8F00E18()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8F09598();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B8F095E8();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B8F00EE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_30_13();
  v17 = *(v5 + v16);
  v18 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  v19 = a4(0);
  OUTLINED_FUNCTION_178(v7, 1, v19);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_1B8D9207C(v7, v6, v4);
  return v21;
}

void sub_1B8F00FE4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_208();
  v12 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v16 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B8F08990(v16);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F010E0(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.attributions.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.attributions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F011A8(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.disclaimer.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.disclaimer.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F01270(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.assetBaseURL.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.assetBaseURL.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_12(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F01350(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.deviceFamilies.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.deviceFamilies.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F01418(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.tipsCollectionID.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.tipsCollectionID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_12(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8F014F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = OUTLINED_FUNCTION_690();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_30_13();
  v13 = *(v2 + v12);
  v14 = *a1;
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_57(v3);
  if (v15)
  {
    v16 = MEMORY[0x1E69E7CC0];
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 8) = v16;
    *(a2 + 16) = v16;
    *(a2 + 24) = v16;
    *(a2 + 32) = v16;
    *(a2 + 40) = 0;
    *(a2 + 48) = v13;
    v17 = a2 + *(v14 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v3);
    if (!v15)
    {
      return sub_1B8D9207C(v3, &qword_1EBABE968, &qword_1B96693B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8F09548();
  }

  return result;
}

uint64_t sub_1B8F0162C(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE968, &qword_1B96693B0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0) + 20);
  v10 = *(v2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v13 = OUTLINED_FUNCTION_40_0();
    *(v4 + v9) = sub_1B8F08990(v13);
  }

  OUTLINED_FUNCTION_461();
  sub_1B8F09548();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = *a2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.summarizedAnswer.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_30_13();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_117(v1);
  if (v15)
  {
    OUTLINED_FUNCTION_168_2(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_117(v1);
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBABE968, &qword_1B96693B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_10();
    OUTLINED_FUNCTION_246();
    sub_1B8F09548();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8F01930(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.siriSuggestions.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.siriSuggestions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}