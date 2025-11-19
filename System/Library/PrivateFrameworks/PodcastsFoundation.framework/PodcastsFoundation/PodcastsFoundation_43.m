Swift::Bool __swiftcall AnyEpisodeBookmarkStateRule.canMove(from:to:)(PodcastsFoundation::EpisodeBookmarkState from, PodcastsFoundation::EpisodeBookmarkState to)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  return v3(from & 1, to & 1) & 1;
}

uint64_t sub_1D90FA550(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  return v3(*a1, *a2) & 1;
}

unint64_t sub_1D90FA584(uint64_t a1)
{
  result = sub_1D90FA5AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FA5AC()
{
  result = qword_1ECABA800;
  if (!qword_1ECABA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA800);
  }

  return result;
}

uint64_t sub_1D90FA614(char a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(*(*(v2 + 16) - 8) + 80);
  v7 = a1 & 1;
  v6 = a2 & 1;
  return (*(*(v3 + 8) + 24))(&v7, &v6) & 1;
}

void static EpisodeDownloadState.defaultState.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -64;
}

uint64_t EpisodeDownloadState.dictionaryKey.getter()
{
  v1 = 0x6E776F6E6B6E75;
  if (*(v0 + 16) >> 6 == 2)
  {
    v1 = 0x64616F6C6E776F64;
  }

  if (*(v0 + 16) >> 6 <= 1u)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D90FA780()
{
  v1 = 0x6E776F6E6B6E75;
  if (*(v0 + 16) >> 6 == 2)
  {
    v1 = 0x64616F6C6E776F64;
  }

  if (*(v0 + 16) >> 6 <= 1u)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return v1;
  }
}

uint64_t static EpisodeDownloadState.state(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 11);
  result = Set<>.firstEpisodeUUID.getter(*a1);
  if (!v7)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v8 = -2;
    goto LABEL_7;
  }

  if (v5)
  {

    *a2 = 0;
    *(a2 + 8) = 0;
    v8 = -64;
LABEL_7:
    *(a2 + 16) = v8;
    return result;
  }

  if (v3)
  {
    v8 = v4 | 0x80;
    *a2 = result;
    *(a2 + 8) = v7;
    goto LABEL_7;
  }

  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  return result;
}

void sub_1D90FA88C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

void static EpisodeDownloadState.state(for:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t _s18PodcastsFoundation20EpisodeDownloadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v7 >> 6;
  if (v7 >> 6 > 1)
  {
    if (v8 != 2)
    {
      v20 = v4 >= 0xC0 && (v2 | v3) == 0;
      if (v20 && v4 == 192)
      {
        sub_1D90FAC80(*a2, *(a2 + 8), v7);
        v21 = 0;
        v22 = 0;
        v23 = 192;
LABEL_32:
        sub_1D90FAC80(v21, v22, v23);
        v19 = 1;
        return v19 & 1;
      }

      goto LABEL_28;
    }

    if ((v4 & 0xC0) != 0x80)
    {
      goto LABEL_27;
    }

    if (v6 == v3 && v5 == v2)
    {
      sub_1D90FAC64(*a1, v2, v4);
      sub_1D90FAC64(v3, v2, v7);
      sub_1D90FAC80(v3, v2, v7);
      sub_1D90FAC80(v3, v2, v4);
    }

    else
    {
      v15 = *a2;
      v16 = *(a2 + 8);
      v17 = sub_1D9179ACC();
      sub_1D90FAC64(v3, v2, v4);
      sub_1D90FAC64(v6, v5, v7);
      sub_1D90FAC80(v6, v5, v7);
      sub_1D90FAC80(v3, v2, v4);
      if ((v17 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v19 = v7 ^ v4 ^ 1;
    return v19 & 1;
  }

  if (!v8)
  {
    if (v4 < 0x40)
    {
      if (v6 != v3 || v5 != v2)
      {
        v10 = *a2;
        v11 = *(a2 + 8);
        v12 = sub_1D9179ACC();
        sub_1D90FAC64(v3, v2, v4);
        sub_1D90FAC64(v6, v5, v7);
        sub_1D90FAC80(v6, v5, v7);
        sub_1D90FAC80(v3, v2, v4);
        return v12 & 1;
      }

      sub_1D90FAC64(*a1, v2, v4);
      sub_1D90FAC64(v3, v2, v7);
      sub_1D90FAC80(v3, v2, v7);
      v21 = v3;
      v22 = v2;
      v23 = v4;
      goto LABEL_32;
    }

LABEL_27:
    v24 = *(a2 + 8);

    goto LABEL_28;
  }

  if ((v4 & 0xC0) != 0x40)
  {
LABEL_28:
    sub_1D90FAC64(v3, v2, v4);
    sub_1D90FAC80(v6, v5, v7);
    sub_1D90FAC80(v3, v2, v4);
    goto LABEL_29;
  }

  v18 = *a1;
  sub_1D90FAC80(*a2, *(a2 + 8), v7);
  sub_1D90FAC80(v3, v2, v4);
  if (*&v6 != *&v3)
  {
LABEL_29:
    v19 = 0;
    return v19 & 1;
  }

  v19 = v5 ^ v2 ^ 1;
  return v19 & 1;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation20EpisodeDownloadStateO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D90FAB80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D90FABD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1D90FAC38(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_1D90FAC64(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (((a3 >> 6) & 1 | 2) == 2)
  {
  }

  return result;
}

uint64_t sub_1D90FAC80(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (((a3 >> 6) & 1 | 2) == 2)
  {
  }

  return result;
}

uint64_t EpisodeDownloadStateRule<>.eraseToAnyEpisodeDownloadStateRule()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(__int128 *a1, __int128 *a2)@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v3, a1, v8);
  return sub_1D90FAD7C(v10, a1, a2, a3);
}

uint64_t sub_1D90FAD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(__int128 *a1, __int128 *a2)@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  result = (*(v8 + 32))(v11 + v10, a1, a2);
  *a4 = sub_1D90FB5B8;
  a4[1] = v11;
  return result;
}

uint64_t AnyEpisodeDownloadStateRule.canMove(from:to:)(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = *v2;
  v6 = *(v2 + 8);
  v10 = *a1;
  v11 = v3;
  v8 = *a2;
  v9 = v4;
  return v5(&v10, &v8) & 1;
}

uint64_t sub_1D90FAEB8(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = *v2;
  v6 = *(v2 + 8);
  v10 = *a1;
  v11 = v3;
  v8 = *a2;
  v9 = v4;
  return v5(&v10, &v8) & 1;
}

uint64_t DownloadingRules.canMove(from:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xC0) != 0x40)
  {
    goto LABEL_11;
  }

  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a1 + 16) >> 6;
  v9 = v8 == 3 && *a1 == 0;
  if (v9 && v5 == -64)
  {
    sub_1D90FAC80(0, 0, 0xC0u);
    v11 = 0;
    v12 = 0;
    v13 = 192;
LABEL_15:
    sub_1D90FAC80(v11, v12, v13);
    v10 = 1;
    return v10 & 1;
  }

  sub_1D90FAC64(*a1, v3, v5);
  sub_1D90FAC80(0, 0, 0xC0u);
  sub_1D90FAC80(v4, v3, v5);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_11:
    v10 = 0;
  }

  else
  {
    if (v8 != 1)
    {
      sub_1D90FAC64(v4, v3, v5);
      sub_1D90FAC80(v4, v3, v5);
      v11 = v7;
      v12 = v6;
      v13 = v2;
      goto LABEL_15;
    }

    sub_1D90FAC80(v4, v3, v5);
    sub_1D90FAC80(v7, v6, v2);
    v10 = 1;
    if ((v3 & ~v6 & 1) == 0 && *&v4 >= *&v7)
    {
      v10 = (v3 ^ 1) & v6;
    }
  }

  return v10 & 1;
}

BOOL DownloadedRules.canMove(from:to:)(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xC0) != 0x80)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4 >> 6 == 3 && *a1 == 0;
  if (v5 && v4 == 192)
  {
    sub_1D90FAC80(0, 0, 0xC0u);
    sub_1D90FAC80(0, 0, 0xC0u);
    return 1;
  }

  else
  {
    sub_1D90FAC64(*a1, v3, v4);
    sub_1D90FAC80(0, 0, 0xC0u);
    sub_1D90FAC80(v2, v3, v4);
    return v4 >> 6 != 3;
  }
}

unint64_t sub_1D90FB144(uint64_t a1)
{
  result = sub_1D90FB16C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FB16C()
{
  result = qword_1ECABA818;
  if (!qword_1ECABA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA818);
  }

  return result;
}

unint64_t sub_1D90FB1C0(uint64_t a1)
{
  result = sub_1D90FB1E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FB1E8()
{
  result = qword_1ECABA820;
  if (!qword_1ECABA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA820);
  }

  return result;
}

unint64_t sub_1D90FB23C(uint64_t a1)
{
  result = sub_1D90FB264();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FB264()
{
  result = qword_1ECABA828;
  if (!qword_1ECABA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA828);
  }

  return result;
}

unint64_t sub_1D90FB2B8(uint64_t a1)
{
  result = sub_1D90FB2E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FB2E0()
{
  result = qword_1ECABA830;
  if (!qword_1ECABA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA830);
  }

  return result;
}

BOOL sub_1D90FB334(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xC0) != 0x80)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4 >> 6 == 3 && *a1 == 0;
  if (v5 && v4 == 192)
  {
    sub_1D90FAC80(0, 0, 0xC0u);
    sub_1D90FAC80(0, 0, 0xC0u);
    return 1;
  }

  else
  {
    sub_1D90FAC64(*a1, v3, v4);
    sub_1D90FAC80(0, 0, 0xC0u);
    sub_1D90FAC80(v2, v3, v4);
    return v4 >> 6 != 3;
  }
}

uint64_t sub_1D90FB448(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0xC0) != 0x40)
  {
    return 0;
  }

  v8 = a3 >> 6;
  if (v8 == 3 && !(a2 | a1) && a3 == 192)
  {
    sub_1D90FAC80(0, 0, 0xC0u);
    v9 = 0;
    v10 = 0;
    v11 = 192;
LABEL_16:
    sub_1D90FAC80(v9, v10, v11);
    v18 = 1;
    return v18 & 1;
  }

  sub_1D90FAC64(a1, a2, a3);
  sub_1D90FAC80(0, 0, 0xC0u);
  sub_1D90FAC80(a1, a2, a3);
  if ((a3 & 0x80) == 0)
  {
    if (v8 == 1)
    {
      sub_1D90FAC80(a1, a2, a3);
      sub_1D90FAC80(a4, a5, a6);
      v17 = (a2 ^ 1) & a5;
      if (*&a1 < *&a4)
      {
        v17 = 1;
      }

      if (a2 & ~a5)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      return v18 & 1;
    }

    sub_1D90FAC64(a1, a2, a3);
    sub_1D90FAC80(a1, a2, a3);
    v9 = a4;
    v10 = a5;
    v11 = a6;
    goto LABEL_16;
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D90FB5B8(__int128 *a1, __int128 *a2)
{
  v3 = *(v2 + 24);
  v4 = (*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v10 = *a1;
  v11 = v5;
  v8 = *a2;
  v9 = v6;
  return (*(*(v3 + 8) + 24))(&v10, &v8) & 1;
}

uint64_t sub_1D90FB680(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  swift_beginAccess();
  v4 = *(a1 + 80);

  [v4 lock];
  swift_beginAccess();
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 80);
  sub_1D90FAC64(v5, v6, v7);
  [v8 unlock];
  if (!(v7 >> 6))
  {
    sub_1D90FAC80(v5, v6, v7);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA850, &qword_1D91B7E08);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v2 + 24) = sub_1D917795C();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *(a1 + 80);

  [v13 lock];
  sub_1D90FC2A8(v2, sub_1D90FC538, v12, a1);
  [*(a1 + 80) unlock];

  return v2;
}

uint64_t sub_1D90FB868(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);

    swift_beginAccess();
    [*(a1 + 80) lock];
    swift_beginAccess();
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 80);
    sub_1D90FAC64(v4, v5, v6);
    [v7 unlock];
    v8 = v6 >> 6;
    if (v6 >> 6 > 1)
    {
      if (v8 == 2)
      {
        v9 = v5;
      }

      else
      {
        v4 = 0;
        v9 = 0;
      }

      if (v8 == 2)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else if (v8)
    {
      v10 = 0;
      v9 = v5 & 1;
    }

    else
    {
      sub_1D90FAC80(v4, v5, v6);
      v4 = 0;
      v9 = 0;
      v10 = 2;
    }

    sub_1D917790C();

    return sub_1D8D02FCC(v4, v9, v10);
  }

  return result;
}

uint64_t ModernEpisodeDownloadStateMachine.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ModernEpisodeDownloadStateMachine.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA848, &qword_1D91B7CE0);
  sub_1D9178E2C();
  type metadata accessor for ModernEpisodeDownloadStateMachine();
  v2 = swift_allocObject();
  sub_1D90FB680(v4);
  return v2;
}

{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA848, &qword_1D91B7CE0);
  sub_1D9178E2C();
  type metadata accessor for ModernEpisodeDownloadStateMachine();
  v2 = swift_allocObject();
  sub_1D90FB680(v4);
  return v2;
}

uint64_t sub_1D90FBB68@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = qword_1EDCD3488;
  swift_beginAccess();
  sub_1D8D088B4(v1 + v10, v9, &qword_1ECAB6DE0, &qword_1D9195250);
  v11 = sub_1D917734C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1D8D08A50(v9, &qword_1ECAB6DE0, &qword_1D9195250);
  if (qword_1EDCD0728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_1EDCD0730;

  sub_1D917730C();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1D8D25E44(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1D90FBDBC(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v56 = a2;
  v57 = a3;
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 24);
  if (*(v11 + 16))
  {
    v12 = *(a1 + 24);

    v13 = sub_1D8F0712C(v56, v57, a4 & 1);
    if (v14)
    {
      v15 = *(*(v11 + 56) + 8 * v13);

      return v15;
    }
  }

  v52 = v7;
  v50 = v4;
  v51 = a4;
  sub_1D9178F5C();
  if (qword_1EDCD0728 != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  swift_beginAccess();
  v17 = *(a1 + qword_1EDCD3490);
  v16 = *(a1 + qword_1EDCD3490 + 8);
  v18 = *(a1 + qword_1EDCD3490 + 16);
  v19 = qword_1EDCD0730;
  v20 = v53;
  sub_1D90FBB68(v53);
  v47 = v16;
  v48 = v17;
  v46 = v18;
  sub_1D91772FC();

  v21 = *(v8 + 8);
  v49 = v8 + 8;
  v45 = v21;
  v21(v20, v52);
  v8 = *(a1 + 16);
  if (!(v8 >> 62))
  {
    v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  if (v8 < 0)
  {
    v31 = *(a1 + 16);
  }

  v22 = sub_1D917935C();
  if (v22)
  {
LABEL_8:
    v43 = a1;
    a1 = 0;
    v54 = v8 & 0xFFFFFFFFFFFFFF8;
    v55 = v8 & 0xC000000000000001;
    v23 = v51 & 1;
    v44 = v51 & 1;
    while (1)
    {
      if (v55)
      {
        v24 = MEMORY[0x1DA72AA90](a1, v8);
        v25 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v29 = 0;
          v30 = 0;
          v28 = 192;
LABEL_19:
          a1 = v43;
          goto LABEL_26;
        }
      }

      else
      {
        if (a1 >= *(v54 + 16))
        {
          __break(1u);
LABEL_21:
          swift_once();
          goto LABEL_6;
        }

        v24 = *(v8 + 8 * a1 + 32);

        v25 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          goto LABEL_17;
        }
      }

      v26 = *(v24 + 72);
      v27 = v23;
      (*(v24 + 64))(&v58, v56, v57, v23);

      v28 = v60;
      v29 = v58;
      v30 = v59;
      if (v60 <= 0xFDu)
      {
        goto LABEL_19;
      }

      sub_1D90FC5B0(v58, v59, v60);
      ++a1;
      v23 = v27;
      if (v25 == v22)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_25:
  v29 = 0;
  v30 = 0;
  v44 = v51 & 1;
  v28 = 192;
LABEL_26:
  v32 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA848, &qword_1D91B7CE0);
  v15 = swift_allocObject();
  *(v15 + 64) = MEMORY[0x1E69E7CC0];
  v33 = objc_allocWithZone(MEMORY[0x1E696AE68]);
  sub_1D90FAC64(v29, v30, v28);

  v34 = [v33 init];
  v36 = v56;
  v35 = v57;
  *(v15 + 16) = v56;
  *(v15 + 24) = v35;
  LOBYTE(v33) = v51 & 1;
  *(v15 + 32) = v51 & 1;
  *(v15 + 40) = v29;
  *(v15 + 48) = v30;
  *(v15 + 56) = v28;
  *(v15 + 72) = v32;
  *(v15 + 80) = v34;
  swift_beginAccess();
  sub_1D8DB5EC8(v36, v35, v33);
  sub_1D8DB5EC8(v36, v35, v33);

  v37 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_1D8F51154(v15, v36, v35, v44, isUniquelyReferenced_nonNull_native);
  sub_1D8DB5FC8(v36, v35, v33);
  *(a1 + 24) = v61;
  swift_endAccess();
  sub_1D9178F4C();
  v39 = qword_1EDCD0730;
  v40 = v53;
  sub_1D90FBB68(v53);
  sub_1D91772FC();

  sub_1D90FAC80(v29, v30, v28);
  v45(v40, v52);
  return v15;
}

uint64_t sub_1D90FC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v14 = a2;
  v15 = a3;
  sub_1D8D088B4(v13, v12, &qword_1ECAB6058, &unk_1D91B7E10);
  swift_beginAccess();
  v7 = *(a4 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 64) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1D8ECDC14(0, v7[2] + 1, 1, v7);
    *(a4 + 64) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1D8ECDC14((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  sub_1D90FC540(v12, &v7[3 * v10 + 4]);
  *(a4 + 64) = v7;
  swift_endAccess();
  return sub_1D8D08A50(v13, &qword_1ECAB6058, &unk_1D91B7E10);
}

uint64_t _s18PodcastsFoundation26ModernEpisodeDownloadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 != a4 || a2 != a5)
        {
          return sub_1D9179ACC();
        }

        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  v7 = a5 ^ a2 ^ 1;
  if (*&a1 != *&a4)
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D90FC4A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D90FBDBC(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation26ModernEpisodeDownloadStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D90FC4F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D90FC540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6058, &unk_1D91B7E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D90FC5B0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D90FAC80(a1, a2, a3);
  }

  return a1;
}

uint64_t EpisodePlayState.init(positionInMilliseconds:completed:recordedDate:duration:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
    sub_1D8E964A4(a2, a3);
    *(a3 + v7) = 0;
    type metadata accessor for EpisodePlayState();
  }

  else
  {
    v9 = a4 / 1000.0;
    sub_1D8D08A50(a2, &qword_1ECAB75C0, &unk_1D9188A50);
    if (v9 > 15.0)
    {
      *a3 = v9;
      a3[1] = a5;
    }

    type metadata accessor for EpisodePlayState();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t static EpisodePlayState.initialState.getter()
{
  type metadata accessor for EpisodePlayState();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static EpisodePlayState.defaultState.getter()
{
  type metadata accessor for EpisodePlayState();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EpisodePlayState.dictionaryKey.getter()
{
  v1 = type metadata accessor for EpisodePlayState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        return 0x6C616974726170;
      }

      sub_1D8D08A50(v4, &qword_1ECAB75C0, &unk_1D9188A50);
      return 0x646579616C70;
    }

    v7 = 1684956528;
    return v7 | 0x676E6900000000;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v7 = 2036427888;
    return v7 | 0x676E6900000000;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 0x646579616C706E75;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

BOOL EpisodePlayState.isEpisodePlaying.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodePlayState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1D8D239FC(v1, &v11 - v7);
  v9 = 0;
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1D8D239FC(v8, v5);
    if (v5[16] != 1)
    {
      v9 = 1;
    }
  }

  sub_1D8D23A60(v8);
  return v9;
}

BOOL EpisodePlayState.isPending.getter()
{
  v1 = type metadata accessor for EpisodePlayState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1D8D23A60(v4);
  }

  return EnumCaseMultiPayload == 0;
}

BOOL EpisodePlayState.isEpisodePlayed.getter()
{
  v1 = type metadata accessor for EpisodePlayState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8D08A50(v4, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    sub_1D8D23A60(v4);
  }

  return EnumCaseMultiPayload == 2;
}

BOOL EpisodePlayState.isEpisodePaused.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodePlayState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1D8D239FC(v1, &v11 - v7);
  v9 = 0;
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1D8D239FC(v8, v5);
    if (v5[16])
    {
      v9 = 1;
    }
  }

  sub_1D8D23A60(v8);
  return v9;
}

BOOL EpisodePlayState.isPartial.getter()
{
  v1 = type metadata accessor for EpisodePlayState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1D8D23A60(v4);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t EpisodePlayState.timeRemaining.getter()
{
  v1 = type metadata accessor for EpisodePlayState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8D239FC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0xB) != 0)
  {
    v6 = v4[1] - *v4;
    if (v6 <= 0.0)
    {
      v6 = 0.0;
    }

    return *&v6;
  }

  else
  {
    result = 0;
    if (((1 << EnumCaseMultiPayload) & 0x30) == 0)
    {
      sub_1D8D08A50(v4, &qword_1ECAB75C0, &unk_1D9188A50);
      return 0;
    }
  }

  return result;
}

uint64_t EpisodePlayState.hash(into:)()
{
  v1 = sub_1D9176E3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for EpisodePlayState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8D239FC(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v25 = *v16;
      v26 = v16[1];
      v27 = *(v16 + 16);
      v28 = *(v16 + 17);
      v29 = *(v16 + 18);
      MEMORY[0x1DA72B390](4);
      if (v25 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v25;
      }

      MEMORY[0x1DA72B3C0](*&v30);
      if (v26 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v26;
      }

      MEMORY[0x1DA72B3C0](*&v31);
      sub_1D9179DDC();
      sub_1D9179DDC();
      return sub_1D9179DDC();
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v21 = 0;
      }

      else
      {
        v21 = 5;
      }

      return MEMORY[0x1DA72B390](v21);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *v16;
      v19 = v16[1];
      v20 = 1;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v16;
      v19 = v16[1];
      v20 = 2;
LABEL_9:
      MEMORY[0x1DA72B390](v20);
      if (v18 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v18;
      }

      MEMORY[0x1DA72B3C0](*&v22);
      if (v19 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v19;
      }

      return MEMORY[0x1DA72B3C0](*&v23);
    }

    v32 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48));
    sub_1D8E964A4(v16, v12);
    MEMORY[0x1DA72B390](3);
    sub_1D8D088B4(v12, v9, &qword_1ECAB75C0, &unk_1D9188A50);
    if ((*(v2 + 48))(v9, 1, v1) == 1)
    {
      sub_1D9179DDC();
    }

    else
    {
      (*(v2 + 32))(v5, v9, v1);
      sub_1D9179DDC();
      sub_1D8D230C4(&qword_1ECAB88E8, MEMORY[0x1E6969530]);
      sub_1D917814C();
      (*(v2 + 8))(v5, v1);
    }

    sub_1D9179DDC();
    return sub_1D8D08A50(v12, &qword_1ECAB75C0, &unk_1D9188A50);
  }
}

uint64_t EpisodePlayState.hashValue.getter()
{
  sub_1D9179DBC();
  EpisodePlayState.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D90FD17C(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        return 0x6C616974726170;
      }

      sub_1D8D08A50(v4, &qword_1ECAB75C0, &unk_1D9188A50);
      return 0x646579616C70;
    }

    v8 = 1684956528;
    return v8 | 0x676E6900000000;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v8 = 2036427888;
    return v8 | 0x676E6900000000;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 0x646579616C706E75;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t static EpisodePlayState.state(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  if (*(a1 + 11))
  {
    v11 = type metadata accessor for EpisodePlayState();
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a2;
    v15 = 1;
LABEL_11:

    return v12(v14, v15, 1, v13);
  }

  if (*(a1 + 12) == 1)
  {
    *a2 = *(a1 + 16);
    v16 = type metadata accessor for EpisodePlayState();
LABEL_10:
    swift_storeEnumTagMultiPayload();
    v12 = *(*(v16 - 8) + 56);
    v14 = a2;
    v15 = 0;
    v13 = v16;
    goto LABEL_11;
  }

  if (!*(a1 + 13))
  {
    v16 = type metadata accessor for EpisodePlayState();
    goto LABEL_10;
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = sub_1D9176E3C();
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  if (v17 > 0.0)
  {
    sub_1D9176CBC();
    sub_1D8D08A50(v10, &qword_1ECAB75C0, &unk_1D9188A50);
    v20(v7, 0, 1, v19);
    sub_1D8E964A4(v7, v10);
  }

  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
  sub_1D8E964A4(v10, a2);
  *(a2 + v21) = v18;
  v22 = type metadata accessor for EpisodePlayState();
  swift_storeEnumTagMultiPayload();
  return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
}

uint64_t sub_1D90FD5F0()
{
  sub_1D9179DBC();
  EpisodePlayState.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D90FD634()
{
  sub_1D9179DBC();
  EpisodePlayState.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v54 - v12;
  v13 = type metadata accessor for EpisodePlayState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v54 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v54 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA860, &unk_1D91B7EF0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v54 - v28;
  v31 = (&v54 + *(v30 + 56) - v28);
  sub_1D8D239FC(a1, &v54 - v28);
  sub_1D8D239FC(a2, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D8D239FC(v29, v22);
        v33 = v22[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = *v22;
          goto LABEL_12;
        }

        goto LABEL_27;
      }

      sub_1D8D239FC(v29, v19);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
      v43 = v19[v42];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D8D08A50(v19, &qword_1ECAB75C0, &unk_1D9188A50);
        goto LABEL_27;
      }

      v44 = *(v31 + v42);
      v45 = *(v10 + 48);
      v46 = v57;
      sub_1D8E964A4(v19, v57);
      sub_1D8E964A4(v31, v46 + v45);
      v48 = v58;
      v47 = v59;
      v49 = *(v58 + 48);
      if (v49(v46, 1, v59) == 1)
      {
        if (v49(v46 + v45, 1, v47) == 1)
        {
          sub_1D8D08A50(v46, &qword_1ECAB75C0, &unk_1D9188A50);
LABEL_34:
          v41 = v43 ^ v44;
          goto LABEL_35;
        }
      }

      else
      {
        v50 = v56;
        sub_1D8D088B4(v46, v56, &qword_1ECAB75C0, &unk_1D9188A50);
        if (v49(v46 + v45, 1, v47) != 1)
        {
          v51 = v55;
          (*(v48 + 32))(v55, v46 + v45, v47);
          sub_1D8D230C4(&qword_1ECAB75C8, MEMORY[0x1E6969530]);
          v52 = sub_1D91781BC();
          v53 = *(v48 + 8);
          v53(v51, v47);
          v53(v50, v47);
          sub_1D8D08A50(v46, &qword_1ECAB75C0, &unk_1D9188A50);
          if (v52)
          {
            goto LABEL_34;
          }

LABEL_31:
          sub_1D8D23A60(v29);
          return 0;
        }

        (*(v48 + 8))(v50, v47);
      }

      sub_1D8D08A50(v46, &qword_1ECAB75B8, &qword_1D9197C80);
      goto LABEL_31;
    }

    sub_1D8D239FC(v29, v25);
    v33 = v25[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = *v25;
LABEL_12:
      if (v34 == *v31)
      {
        v35 = v33 == v31[1];
        sub_1D8D23A60(v29);
        return v35;
      }

      goto LABEL_31;
    }

LABEL_27:
    sub_1D8D08A50(v29, &qword_1ECABA860, &unk_1D91B7EF0);
    return 0;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_27;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_27;
    }

    sub_1D8D23A60(v29);
    return 1;
  }

  sub_1D8D239FC(v29, v16);
  v37 = v16[1];
  v38 = *(v16 + 16);
  v39 = *(v16 + 17);
  v40 = *(v16 + 18);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_27;
  }

  if (*v16 != *v31 || v37 != v31[1] || v38 != *(v31 + 16) || v39 != *(v31 + 17))
  {
    goto LABEL_31;
  }

  v41 = v40 ^ *(v31 + 18);
LABEL_35:
  sub_1D8D23A60(v29);
  return v41 ^ 1u;
}

uint64_t EpisodePlayStateRule<>.eraseToAnyEpisodePlayStateRule()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v3, a1, v8);
  return sub_1D90FDDBC(v10, a1, a2, a3);
}

uint64_t sub_1D90FDDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  result = (*(v8 + 32))(v11 + v10, a1, a2);
  *a4 = sub_1D90FE40C;
  a4[1] = v11;
  return result;
}

uint64_t AnyEpisodePlayStateRule.canMove(from:to:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1() & 1;
}

uint64_t sub_1D90FDEC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1() & 1;
}

unint64_t sub_1D90FDEFC(uint64_t a1)
{
  result = sub_1D90FDF24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FDF24()
{
  result = qword_1ECABA868;
  if (!qword_1ECABA868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA868);
  }

  return result;
}

unint64_t sub_1D90FDF78(uint64_t a1)
{
  result = sub_1D90FDFA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FDFA0()
{
  result = qword_1ECABA870;
  if (!qword_1ECABA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA870);
  }

  return result;
}

BOOL sub_1D90FE004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1D8D239FC(a2, &v13 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    swift_storeEnumTagMultiPayload();
    _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(a1, v7);
    v10 = v7;
  }

  sub_1D8D23A60(v10);
  return EnumCaseMultiPayload == 3;
}

BOOL sub_1D90FE100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1D8D239FC(a2, &v13 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8CF5EF8(v10);
    swift_storeEnumTagMultiPayload();
    _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(a1, v7);
    v10 = v7;
  }

  sub_1D8D23A60(v10);
  return EnumCaseMultiPayload == 2;
}

BOOL sub_1D90FE204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1D8D239FC(a2, &v13 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    swift_storeEnumTagMultiPayload();
    _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(a1, v7);
    v10 = v7;
  }

  sub_1D8D23A60(v10);
  return EnumCaseMultiPayload == 1;
}

BOOL sub_1D90FE300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1D8D239FC(a2, &v13 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v10);
  if (EnumCaseMultiPayload == 4)
  {
    swift_storeEnumTagMultiPayload();
    _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(a1, v7);
    sub_1D8D23A60(v7);
  }

  return EnumCaseMultiPayload == 4;
}

uint64_t sub_1D90FE40C()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(*(v1 + 8) + 24))() & 1;
}

uint64_t EpisodeStateController.stateMachine(for:)()
{
  return sub_1D8DB5634();
}

{
  return sub_1D8DB5634();
}

char *EpisodeStateController.__allocating_init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_1D8D1F120(a1, a2);

  return v7;
}

uint64_t sub_1D90FE4F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D90FE8DC(a1);
  }

  return result;
}

uint64_t sub_1D90FE554()
{
  if (qword_1EDCD0728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDCD0730;

  return sub_1D917730C();
}

uint64_t sub_1D90FE5F8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v17 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - v7;
  v24 = v2[2];
  v18 = v5;
  v19 = *(v9 + 88);
  v20 = *(v9 + 96);
  v21 = a1;
  v22 = a2;
  v23 = v10 & 1;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyEpisodeStateDataSource();
  sub_1D91786FC();

  swift_getWitnessTable();
  v11 = sub_1D917843C();

  sub_1D8DB5634();
  v12 = 0;
  while (1)
  {
    if (v12 == sub_1D91786AC())
    {
      goto LABEL_11;
    }

    v13 = sub_1D917868C();
    sub_1D917862C();
    if (v13)
    {
      (*(v6 + 16))(v8, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v5);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1D91794BC();
    if (v17 != 8)
    {
      break;
    }

    v24 = result;
    (*(v6 + 16))(v8, &v24, v5);
    swift_unknownObjectRelease();
    if (__OFADD__(v12, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
    }

LABEL_5:
    v14 = sub_1D90FF5CC(v8);
    (*(v6 + 8))(v8, v5);
    ++v12;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90FE8DC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v5 = *v2;
      v2 += 24;
      sub_1D8DB5EC8(v3, v4, v5);
      sub_1D90FE5F8(v3, v4);
      result = sub_1D8DB5FC8(v3, v4, v5);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t EpisodeStateController.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_1D8D25DDC(v0 + qword_1EDCD3488);
  return v0;
}

uint64_t EpisodeStateController.__deallocating_deinit()
{
  EpisodeStateController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D90FE9F4(uint64_t *a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *a1;
  return sub_1D8DB6238(v3, v2, v4);
}

uint64_t sub_1D90FEAA4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return sub_1D90FE4F4(a1);
}

uint64_t sub_1D90FEAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1D8D1ED18(a1, a2, a3);
  return v6;
}

uint64_t sub_1D90FEB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_projectBox();
  swift_beginAccess();
  v6 = (*(a4 + 32))(a3, a4);
  swift_endAccess();
  return v6;
}

uint64_t sub_1D90FEB88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D90FECA0();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1D90FF138;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1D90FEBF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D90FF130;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1D8D1F93C(v3);
  sub_1D8D1F7DC(v6, v5);

  return sub_1D8D15664(v6);
}

uint64_t sub_1D90FECA0()
{
  v0 = sub_1D8D1F840();

  v2 = v0(v1);

  return v2;
}

uint64_t sub_1D90FECF8(uint64_t a1, uint64_t a2)
{
  sub_1D8D1F7DC(a1, a2);

  return sub_1D8D15664(a1);
}

uint64_t (*sub_1D90FED40(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1D90FECA0();
  a1[1] = v3;
  return sub_1D90FED88;
}

uint64_t sub_1D90FED88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1D8D1F93C(v5);
    sub_1D8D1F7DC(v2, v3);
    sub_1D8D15664(v2);
  }

  else
  {
    sub_1D8D1F7DC(v5, v3);
  }

  return sub_1D8D15664(v2);
}

void *AnyEpisodeStateDataSource.deinit()
{
  v1 = v0[3];

  v2 = v0[5];
  v3 = v0[7];

  v4 = v0[9];

  return v0;
}

uint64_t AnyEpisodeStateDataSource.__deallocating_deinit()
{
  AnyEpisodeStateDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D90FEEC0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D8D1F7DC(a1, a2);

  return sub_1D8D15664(a1);
}

void (*sub_1D90FEF0C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1D90FED40(v3);
  return sub_1D90FEF80;
}

void sub_1D90FEF80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t static EpisodeStateIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1D9179ACC();
}

uint64_t EpisodeStateIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1DA72B390](1);

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](a2);
  }
}

uint64_t EpisodeStateIdentifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D9179DBC();
  if (a3)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D90FF29C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D90FF324()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x1DA72B390](1);

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v1);
  }
}

uint64_t sub_1D90FF3AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1D90FF454(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D90FF4D4()
{
  sub_1D8DB7FB4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D90FF4FC(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D90FF560())()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D90FF5CC(uint64_t a1)
{
  v2 = *v1;
  v8[3] = a1;
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v6 = type metadata accessor for EpisodeStateMachine();
  Lockable.locked<A>(perform:)(sub_1D9100DD0, v8, v6, MEMORY[0x1E69E6370], &protocol witness table for EpisodeStateMachine<A, B>);
  return v9;
}

uint64_t sub_1D90FF688@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, char *a3@<X8>)
{
  v95 = a3;
  v5 = *a1;
  v6 = sub_1D917744C();
  v83 = *(v6 - 8);
  v84 = v6;
  v7 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v5[11];
  v10 = sub_1D91791BC();
  isa = v10[-1].isa;
  v86 = v10;
  v11 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v81 - v12;
  v94 = *(v9 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v81 - v17;
  v18 = v5[10];
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v81 - v24;
  sub_1D8DB8144(&v81 - v24);
  v26 = v5[12];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = *(AssociatedConformanceWitness + 8);
  v96 = a2;
  v29 = sub_1D91781BC();
  v91 = v19;
  v31 = *(v19 + 8);
  v30 = v19 + 8;
  v93 = v25;
  v89 = v31;
  result = (v31)(v25, v18);
  if (v29)
  {
    v33 = 1;
    goto LABEL_8;
  }

  v81 = v30;
  v34 = *(a1 + *(*a1 + 128));
  v100 = (*(AssociatedConformanceWitness + 32))(v18, AssociatedConformanceWitness);
  v101 = v35;
  v36 = v90;
  sub_1D91780FC();

  v37 = v94;
  if ((*(v94 + 48))(v36, 1, v9) == 1)
  {
    (*(isa + 1))(v36, v86);
    v38 = v96;
LABEL_7:
    v46 = v93;
    (*(v91 + 16))(v93, v38, v18);
    sub_1D90FF3AC(v46);
    result = sub_1D910017C();
    v33 = 1;
    goto LABEL_8;
  }

  v39 = v92;
  (*(v37 + 32))(v92, v36, v9);
  v40 = v93;
  sub_1D8DB8144(v93);
  v41 = v18;
  v42 = v96;
  v43 = (*(v26 + 24))(v40, v96, v9, v26);
  v44 = v40;
  v45 = v41;
  v89(v44, v41);
  if (v43)
  {
    (*(v37 + 8))(v39, v9);
    v38 = v42;
    v18 = v41;
    goto LABEL_7;
  }

  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v47 = v84;
  v48 = __swift_project_value_buffer(v84, qword_1ECAAFC48);
  swift_beginAccess();
  v49 = v83;
  v50 = v82;
  (*(v83 + 16))(v82, v48, v47);
  v51 = v96;
  v52 = v45;
  v96 = *(v91 + 16);
  v96(v87, v51, v45);
  (*(v94 + 16))(v88, v92, v9);

  v53 = sub_1D917741C();
  v54 = sub_1D9178CEC();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v102 = v91;
    *v55 = 136315906;
    v56 = *(a1 + 24);
    v57 = *(a1 + 32);
    DynamicType = *(a1 + 16);
    v98 = v56;
    v99 = v57;
    sub_1D8DB5EC8(DynamicType, v56, v57);
    v58 = sub_1D917826C();
    LODWORD(v90) = v54;
    v60 = v9;
    v61 = sub_1D8CFA924(v58, v59, &v102);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2080;
    v86 = v53;
    v62 = v93;
    sub_1D8DB8144(v93);
    v63 = sub_1D917826C();
    v65 = sub_1D8CFA924(v63, v64, &v102);

    *(v55 + 14) = v65;
    *(v55 + 22) = 2080;
    v66 = v87;
    v96(v62, v87, v52);
    v67 = sub_1D917826C();
    v68 = v52;
    v70 = v69;
    v89(v66, v68);
    v71 = sub_1D8CFA924(v67, v70, &v102);

    *(v55 + 24) = v71;
    *(v55 + 32) = 2080;
    v72 = v88;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v73 = sub_1D917826C();
    v75 = v74;
    v76 = *(v94 + 8);
    v76(v72, v60);
    v77 = sub_1D8CFA924(v73, v75, &v102);

    *(v55 + 34) = v77;
    v78 = v86;
    _os_log_impl(&dword_1D8CEC000, v86, v90, "Denied state change for %s: %s -> %s, rule: %s", v55, 0x2Au);
    v79 = v91;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v79, -1, -1);
    MEMORY[0x1DA72CB90](v55, -1, -1);

    (*(v83 + 8))(v82, v84);
    result = (v76)(v92, v60);
  }

  else
  {

    v89(v87, v52);
    (*(v49 + 8))(v50, v47);
    v80 = *(v94 + 8);
    v80(v92, v9);
    result = (v80)(v88, v9);
  }

  v33 = 0;
LABEL_8:
  *v95 = v33;
  return result;
}

uint64_t sub_1D90FFF2C(uint64_t a1)
{
  v2 = *v1;
  v8[3] = a1;
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v6 = type metadata accessor for EpisodeStateMachine();
  return Lockable.locked<A>(perform:)(sub_1D9100DEC, v8, v6, MEMORY[0x1E69E7CA8] + 8, &protocol witness table for EpisodeStateMachine<A, B>);
}

uint64_t sub_1D90FFFE4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  swift_beginAccess();
  v9 = *(a1 + v3);
  v6 = v2[10];
  v7 = v2[11];
  v8 = v2[12];
  type metadata accessor for StateMachineChangeObserverAction();
  sub_1D91786FC();

  swift_getWitnessTable();
  v4 = sub_1D917958C();
  return sub_1D90FF454(v4);
}

uint64_t sub_1D9100118(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_unknownObjectRelease();
      return v5 != a2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D910017C()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD888();
  v11 = sub_1D9178E1C();
  aBlock[4] = sub_1D910104C;
  v15 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_87;
  v12 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D91003EC(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v5 = type metadata accessor for EpisodeStateMachine();
  Lockable.locked<A>(perform:)(sub_1D9101054, a1, v5, MEMORY[0x1E69E7CA8] + 8, &protocol witness table for EpisodeStateMachine<A, B>);
  swift_getWitnessTable();
  sub_1D917788C();
  sub_1D917798C();
}

uint64_t sub_1D91004E4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  swift_beginAccess();
  v4 = *(a1 + v3);
  v16 = v2[11];
  v17 = v2[10];
  v15 = v2[12];
  v5 = type metadata accessor for StateMachineChangeObserverAction();

  if (sub_1D91786AC())
  {
    v6 = 0;
    v7 = v4 + 32;
    while (1)
    {
      v8 = sub_1D917868C();
      result = sub_1D917862C();
      if ((v8 & 1) == 0)
      {
        break;
      }

      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_10;
      }

      v11 = *(v5 - 8);
      (*(v11 + 16))(v18, v7, v5);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v19(a1);
      }

      (*(v11 + 8))(v18, v5);
      ++v6;
      v7 += 24;
      if (v10 == sub_1D91786AC())
      {
        goto LABEL_8;
      }
    }

    result = sub_1D91794BC();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:

    v12 = *(*a1 + 120);
    v13 = swift_beginAccess();
    v20 = *(a1 + v12);
    MEMORY[0x1EEE9AC00](v13);
    sub_1D91786FC();

    swift_getWitnessTable();
    v14 = sub_1D917958C();
    return sub_1D90FF454(v14);
  }

  return result;
}

uint64_t *EpisodeStateMachine.deinit()
{
  v1 = *v0;
  sub_1D8DB5FC8(v0[2], v0[3], *(v0 + 32));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  v2 = *(v0 + *(*v0 + 120));

  v3 = *(v0 + *(*v0 + 128));

  v4 = *(v0 + *(*v0 + 136));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t EpisodeStateMachine.__deallocating_deinit()
{
  EpisodeStateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D91008E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  type metadata accessor for EpisodeStateMachine();
  result = sub_1D917788C();
  *a2 = result;
  return result;
}

uint64_t sub_1D9100928(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
LABEL_15:
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_16;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = MEMORY[0x1E69E7CD0];
  if (!v8)
  {
LABEL_16:
    if (a4)
    {
      return v9;
    }

    goto LABEL_37;
  }

  v10 = *(MEMORY[0x1E69E7CD0] + 40);
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](1);

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v11 = sub_1D9179E1C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = v15 + 24 * v13;
      if (*(v16 + 16) == 1)
      {
        v17 = *v16 == a1 && *(v16 + 8) == a2;
        if (v17 || (sub_1D9179ACC() & 1) != 0)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_15;
  }

LABEL_18:
  result = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v9 + 16);
  if (*(v9 + 24) <= v19)
  {
    if (result)
    {
      sub_1D8EFD2E0(v19 + 1);
    }

    else
    {
      sub_1D8F01E58(v19 + 1);
    }

    v20 = *(v9 + 40);
    sub_1D9179DBC();
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    result = sub_1D9179E1C();
    v21 = -1 << *(v9 + 32);
    v13 = result & ~v21;
    if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v22 = ~v21;
      v23 = *(v9 + 48);
      do
      {
        v24 = v23 + 24 * v13;
        if (*(v24 + 16) == 1)
        {
          if (*v24 == a1 && *(v24 + 8) == a2)
          {
            goto LABEL_56;
          }

          result = sub_1D9179ACC();
          if (result)
          {
            goto LABEL_56;
          }
        }

        v13 = (v13 + 1) & v22;
      }

      while (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }
  }

  else if (result)
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    result = sub_1D8F007E0();
  }

  *(v9 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v13;
  v26 = *(v9 + 48) + 24 * v13;
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = 1;
  v27 = *(v9 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
    goto LABEL_61;
  }

  *(v9 + 16) = v29;
  if (a4)
  {
    return v9;
  }

LABEL_37:
  if (!a3 || a3 == 1000000000000)
  {
    return v9;
  }

  v30 = *(v9 + 40);
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  MEMORY[0x1DA72B3C0](a3);
  v31 = sub_1D9179E1C();
  v32 = -1 << *(v9 + 32);
  a4 = v31 & ~v32;
  if ((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v33 = ~v32;
    do
    {
      v34 = *(v9 + 48) + 24 * a4;
      if ((*(v34 + 16) & 1) == 0 && *v34 == a3)
      {
        return v9;
      }

      a4 = (a4 + 1) & v33;
    }

    while (((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v9 + 16);
  if (*(v9 + 24) > v35)
  {
    if ((result & 1) == 0)
    {
      result = sub_1D8F007E0();
    }

    goto LABEL_57;
  }

  if (result)
  {
    sub_1D8EFD2E0(v35 + 1);
  }

  else
  {
    sub_1D8F01E58(v35 + 1);
  }

  v36 = *(v9 + 40);
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  MEMORY[0x1DA72B3C0](a3);
  result = sub_1D9179E1C();
  v37 = -1 << *(v9 + 32);
  a4 = result & ~v37;
  if ((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v38 = ~v37;
    while (1)
    {
      v39 = *(v9 + 48) + 24 * a4;
      if ((*(v39 + 16) & 1) == 0 && *v39 == a3)
      {
        break;
      }

      a4 = (a4 + 1) & v38;
      if (((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

LABEL_56:
    result = sub_1D9179CEC();
    __break(1u);
  }

LABEL_57:
  *(v9 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << a4;
  v40 = *(v9 + 48) + 24 * a4;
  *v40 = a3;
  *(v40 + 8) = 0;
  *(v40 + 16) = 0;
  v41 = *(v9 + 16);
  v28 = __OFADD__(v41, 1);
  v42 = v41 + 1;
  if (!v28)
  {
    *(v9 + 16) = v42;
    return v9;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of static EpisodeState.state(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 40))();
}

{
  return (*(a3 + 48))();
}

uint64_t sub_1D9100E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9100EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9101010()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1D9101070()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_1D91010B0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1D9100118(a1, v1[5]) & 1;
}

uint64_t InterestState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x4C74736567677573;
  v2 = 0x657469726F766166;
  if (a1 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    v1 = 0x6C61727475656ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D910115C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000737365;
  v3 = 0x4C74736567677573;
  v4 = *a1;
  v5 = 0x657469726F766166;
  v6 = 0xE900000000000064;
  v7 = 0xE700000000000000;
  if (v4 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v8 = 0x6C61727475656ELL;
  if (!*a1)
  {
    v8 = 0x4C74736567677573;
    v7 = 0xEB00000000737365;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x657469726F766166;
  v12 = 0xE900000000000064;
  if (*a2 != 2)
  {
    v11 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  if (*a2)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

uint64_t sub_1D91012A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation13InterestStateO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1D91012D4(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000737365;
  v3 = 0x4C74736567677573;
  v4 = 0xE900000000000064;
  v5 = 0x657469726F766166;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D910135C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D9101428()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D91014E0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation13InterestStateO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D917980C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D91015F8()
{
  result = qword_1ECABA888;
  if (!qword_1ECABA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA888);
  }

  return result;
}

void *InterestStateController.__allocating_init(dataSource:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_1D8E27A78(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA890, &unk_1D91B8510);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  v4[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = 0;
  v4[5] = v7;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *InterestStateController.init(dataSource:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D8E27A78(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA890, &unk_1D91B8510);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  v2[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = 0;
  v2[5] = v7;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t InterestStateController.stateMachine(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = v1[5];
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  *(v4 + 16) = 1;
  os_unfair_lock_unlock((v4 + 20));
  if ((v5 & 1) == 0)
  {
    v6 = v2[2];
    v7 = v2[3];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 24);
    v10 = swift_unknownObjectRetain();
    v9(v10, &protocol witness table for InterestStateController, ObjectType, v7);
    (*(v7 + 8))(ObjectType, v7);
  }

  v11 = v2[4];
  os_unfair_lock_lock((v11 + 24));
  sub_1D910189C((v11 + 16), a1, v2, &v13);
  os_unfair_lock_unlock((v11 + 24));
  return v13;
}

uint64_t sub_1D910189C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  if (*(*a1 + 16) && (v9 = sub_1D8D1AC44(a2), (v10 & 1) != 0))
  {
    *a4 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v12 = *(a3 + 16);
    v13 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 40))(a2, ObjectType, v13);
    if (v15 == 4)
    {
      v16 = 3;
    }

    else
    {
      v16 = v15;
    }

    type metadata accessor for InterestStateMachine();
    v17 = swift_allocObject();
    v18 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
    *(v17 + 40) = MEMORY[0x1E69E7CC0];
    *(v17 + 16) = v18;
    *(v17 + 24) = a2;
    *(v17 + 32) = v16;

    v19 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    result = sub_1D8F512B4(v17, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v21;
    *a4 = v17;
  }

  return result;
}

uint64_t sub_1D91019CC(uint64_t a1)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v1[2];
  ObjectType = swift_getObjectType();
  result = (*(v4 + 40))(a1, ObjectType, v4);
  if (result != 4)
  {
    v8 = result;
    v9 = v1[5];
    os_unfair_lock_lock((v9 + 20));
    v10 = *(v9 + 16);
    *(v9 + 16) = 1;
    os_unfair_lock_unlock((v9 + 20));
    if ((v10 & 1) == 0)
    {
      v11 = *(v4 + 24);
      v12 = swift_unknownObjectRetain();
      v11(v12, &protocol witness table for InterestStateController, ObjectType, v4);
      (*(v4 + 8))(ObjectType, v4);
    }

    v13 = v1[4];
    os_unfair_lock_lock((v13 + 24));
    sub_1D910189C((v13 + 16), a1, v2, v27);
    os_unfair_lock_unlock((v13 + 24));
    v14 = v27[0];
    swift_beginAccess();
    [*(v14 + 16) lock];
    if ((sub_1D8FDCBC4(*(v14 + 32), v8) & 1) == 0)
    {
      *(v14 + 32) = v8;
      sub_1D91020E8();
    }

    [*(v14 + 16) unlock];
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1ECAB0BF8);
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      sub_1D8E40A10();
      v20 = sub_1D9179A4C();
      v22 = sub_1D8CFA924(v20, v21, &v26);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      if (v8 > 1u)
      {
        if (v8 == 2)
        {
          v23 = 0xE900000000000064;
          v24 = 0x657469726F766166;
        }

        else
        {
          v23 = 0xE700000000000000;
          v24 = 0x6E776F6E6B6E75;
        }
      }

      else if (v8)
      {
        v23 = 0xE700000000000000;
        v24 = 0x6C61727475656ELL;
      }

      else
      {
        v23 = 0xEB00000000737365;
        v24 = 0x4C74736567677573;
      }

      v25 = sub_1D8CFA924(v24, v23, &v26);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Successfully transition interest with adamID %s to %s state.", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }
  }

  return result;
}

Swift::Void __swiftcall InterestStateController.refreshStates(for:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 32);
    do
    {
      v3 = *v2++;
      sub_1D91019CC(v3);
      --v1;
    }

    while (v1);
  }
}

void *InterestStateController.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t InterestStateController.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1D9101DD0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = *v2++;
      result = sub_1D91019CC(v3);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t InterestStateMachine.__allocating_init(identifier:initialState:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  return v4;
}

Swift::Bool __swiftcall InterestStateMachine.transition(to:)(PodcastsFoundation::InterestState to)
{
  swift_beginAccess();
  [*(v1 + 16) lock];
  if ((sub_1D8FDCBC4(*(v1 + 32), to) & 1) == 0)
  {
    *(v1 + 32) = to;
    sub_1D91020E8();
  }

  [*(v1 + 16) unlock];
  return 1;
}

uint64_t InterestStateMachine.lock.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t InterestStateMachine.lock.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t InterestStateMachine.currentState.getter()
{
  swift_beginAccess();
  [*(v0 + 16) lock];
  v1 = *(v0 + 32);
  [*(v0 + 16) unlock];
  return v1;
}

uint64_t InterestStateMachine.init(identifier:initialState:)(uint64_t a1, char a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v5;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_1D91020E8()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD888();
  v11 = sub_1D9178E1C();
  aBlock[4] = sub_1D9102C3C;
  v15 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_88;
  v12 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBEC8(&qword_1EDCD7B90, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

id InterestStateMachine.addStateTransitionObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  [*(v3 + 16) lock];
  swift_unknownObjectWeakInit();
  v13 = a2;
  v14 = a3;
  sub_1D9102AEC(v12, v11);
  swift_beginAccess();
  v6 = *(v3 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 40) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D8ECDDA4(0, v6[2] + 1, 1, v6);
    *(v3 + 40) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D8ECDDA4((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  sub_1D9102B74(v11, &v6[3 * v9 + 4]);
  *(v3 + 40) = v6;
  swift_endAccess();
  sub_1D9102BAC(v12);
  return [*(v3 + 16) unlock];
}

id InterestStateMachine.removeStateTransitionActions(for:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  [*(v1 + 16) lock];
  swift_beginAccess();
  v4 = *(v1 + 40);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    while (v7 < *(v4 + 16))
    {
      sub_1D9102AEC(v8, v17);
      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v11 = Strong, swift_unknownObjectRelease(), v11 == a1))
      {
        result = sub_1D9102BAC(v17);
      }

      else
      {
        sub_1D9102B74(v17, v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8E31894(0, *(v9 + 16) + 1, 1);
          v9 = v18;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D8E31894((v13 > 1), v14 + 1, 1);
          v9 = v18;
        }

        *(v9 + 16) = v14 + 1;
        result = sub_1D9102B74(v16, v9 + 24 * v14 + 32);
      }

      ++v7;
      v8 += 24;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    v15 = *(v2 + 40);
    *(v2 + 40) = v9;

    return [*(v2 + 16) unlock];
  }

  return result;
}

uint64_t sub_1D9102680(uint64_t a1)
{
  v2 = *a1;
  swift_beginAccess();
  [*(a1 + 16) lock];
  sub_1D91027E8(a1, &v9);
  [*(a1 + 16) unlock];
  v3 = *(v9 + 16);
  if (v3)
  {
    v4 = (v9 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v9 = a1;

      v6(&v9);

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  sub_1D8CFBEC8(&qword_1ECABA898, v7, type metadata accessor for InterestStateMachine);
  sub_1D917788C();
  sub_1D917798C();
}

uint64_t sub_1D91027E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v3 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v3 + 16))
    {
      sub_1D9102AEC(v7, v25);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D9102B74(v25, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8E31894(0, *(v8 + 16) + 1, 1);
          v8 = v28;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D8E31894((v10 > 1), v11 + 1, 1);
          v8 = v28;
        }

        *(v8 + 16) = v11 + 1;
        result = sub_1D9102B74(v24, v8 + 24 * v11 + 32);
      }

      else
      {
        result = sub_1D9102BAC(v25);
      }

      ++v6;
      v7 += 24;
      if (v4 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v12 = *(a1 + 40);
    *(a1 + 40) = v8;

    v13 = *(a1 + 40);
    v14 = *(v13 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v24[0] = MEMORY[0x1E69E7CC0];

      sub_1D8E318CC(0, v14, 0);
      v15 = v24[0];
      v16 = v13 + 32;
      do
      {
        sub_1D9102AEC(v16, v25);
        v18 = v26;
        v17 = v27;
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        *(v19 + 24) = v17;

        sub_1D9102BAC(v25);
        v24[0] = v15;
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D8E318CC((v20 > 1), v21 + 1, 1);
          v15 = v24[0];
        }

        *(v15 + 16) = v21 + 1;
        v22 = v15 + 16 * v21;
        *(v22 + 32) = sub_1D9102C44;
        *(v22 + 40) = v19;
        v16 += 24;
        --v14;
      }

      while (v14);
    }

    *a2 = v15;
  }

  return result;
}

uint64_t InterestStateMachine.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return v0;
}

uint64_t InterestStateMachine.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9102AA8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D9102B24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D917788C();
  *a1 = result;
  return result;
}

uint64_t sub_1D9102C44(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t PodcastStateController.__allocating_init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PodcastStateController.init(dataSources:transitionRules:)(a1, a2);
  return v4;
}

uint64_t sub_1D9102CC8()
{
  v1 = *(v0 + 48);
  type metadata accessor for PodcastStateMachine();
  sub_1D9178E2C();
  return v3;
}

uint64_t sub_1D9102D38()
{
  v1 = *(v0 + 48);
  type metadata accessor for PodcastStateMachine();
  sub_1D9178E2C();
  return v3;
}

id sub_1D9102DA8(uint64_t a1, uint64_t a2, char a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 mainQueueContext];

    v20[0] = 0;
    v7 = [v6 existingObjectWithID:a1 error:v20];

    v8 = v20[0];
    if (!v7)
    {
      v18 = v20[0];
      v19 = sub_1D9176A6C();

      swift_willThrow();
      result = 0;
      goto LABEL_8;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    v10 = v8;
    if (!v9 || (v11 = [v9 uuid]) == 0)
    {

      result = 0;
      goto LABEL_8;
    }

    v12 = v11;
    sub_1D917820C();

    v13 = *(v3 + 48);
    MEMORY[0x1EEE9AC00](v14);
    type metadata accessor for PodcastStateMachine();
    sub_1D9178E2C();
  }

  else
  {
    v15 = *(v3 + 48);
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for PodcastStateMachine();
    sub_1D9178E2C();
  }

  result = v20[0];
LABEL_8:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PodcastStateController.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return v0;
}

uint64_t PodcastStateController.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of PodcastStateController.stateMachine(for:initialState:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(*v2 + 184);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return v4(a1, v7);
}

uint64_t dispatch thunk of PodcastStateController.stateMachine(for:initialState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*v3 + 192);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v4;
  return v5(a1, a2, v8);
}

uint64_t dispatch thunk of PodcastStateController.stateMachine(for:initialState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  v6 = *(*v4 + 200);
  v7 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v7;
  v10 = v5;
  return v6(a1, a2, a3, v9);
}

uint64_t dispatch thunk of PodcastStateController.refreshStates(for:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

uint64_t dispatch thunk of PodcastStateDataSourceDelegate.refreshStates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t PodcastStateMachine.__allocating_init(adamId:initialState:rules:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PodcastStateMachine();
  v6 = swift_allocObject();
  *(v6 + 88) = MEMORY[0x1E69E7CC0];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8 = *(a2 + 16);
  *(v6 + 48) = *a2;
  *(v6 + 64) = v8;
  *(v6 + 80) = *(a2 + 32);
  *(v6 + 96) = a3;
  *(v6 + 104) = v7;
  return v6;
}

uint64_t PodcastStateMachine.__allocating_init(uuid:initialState:rules:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PodcastStateMachine();
  v8 = swift_allocObject();
  *(v8 + 88) = MEMORY[0x1E69E7CC0];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v8 + 24) = 1;
  *(v8 + 16) = 0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v10 = *(a3 + 16);
  *(v8 + 48) = *a3;
  *(v8 + 64) = v10;
  *(v8 + 80) = *(a3 + 32);
  *(v8 + 96) = a4;
  *(v8 + 104) = v9;
  return v8;
}

uint64_t PodcastState.dictionaryKey.getter()
{
  v1 = *(v0 + 16);
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465646461;
  if (v1 == 1)
  {
    v3 = 0x676E69646461;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x656C6261646461;
  }
}

uint64_t PodcastState.hash(into:)()
{
  v1 = *(v0 + 2);
  switch(v1)
  {
    case 2:
      v2 = 3;
      return MEMORY[0x1DA72B390](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x1DA72B390](v2);
    case 0:
      v2 = 0;
      return MEMORY[0x1DA72B390](v2);
  }

  v4 = v0[24];
  v5 = *v0;
  v6 = *(v0 + 1);
  v7 = *(v0 + 4);
  MEMORY[0x1DA72B390](2);
  sub_1D9179DDC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  return MEMORY[0x1DA72B3C0](v7);
}

uint64_t PodcastState.hashValue.getter()
{
  sub_1D9179DBC();
  v1 = *(v0 + 2);
  if (v1 == 2)
  {
    v2 = 3;
  }

  else if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (v1)
    {
      v3 = v0[24];
      v4 = *v0;
      v5 = *(v0 + 1);
      v6 = *(v0 + 4);
      MEMORY[0x1DA72B390](2);
      sub_1D9179DDC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      sub_1D9179DDC();
      MEMORY[0x1DA72B3C0](v6);
      return sub_1D9179E1C();
    }

    v2 = 0;
  }

  MEMORY[0x1DA72B390](v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D910367C()
{
  sub_1D9179DBC();
  PodcastState.hash(into:)();
  return sub_1D9179E1C();
}

BOOL sub_1D91036B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s18PodcastsFoundation12PodcastStateO2eeoiySbAC_ACtFZ_0(v5, v7);
}

uint64_t PodcastStateMachine.adamId.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PodcastStateMachine.uuid.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

id sub_1D9103740@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  [*(v1 + 104) lock];
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 104);
  sub_1D8D1C3BC(v3, v4, v5);
  result = [v8 unlock];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t sub_1D91037F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D9103850()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D9103888(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
  return swift_unknownObjectRelease();
}

uint64_t PodcastStateMachine.__allocating_init(adamId:uuid:initialState:rules:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 88) = MEMORY[0x1E69E7CC0];
  *(v12 + 104) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  if ((a2 & 1) != 0 && !a4)
  {
    result = sub_1D91796DC();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = a1;
    *(v12 + 24) = a2 & 1;
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    v13 = *(a5 + 16);
    *(v12 + 48) = *a5;
    *(v12 + 64) = v13;
    *(v12 + 80) = *(a5 + 32);
    *(v12 + 96) = a6;
    return v12;
  }

  return result;
}

uint64_t PodcastStateMachine.init(adamId:uuid:initialState:rules:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = MEMORY[0x1E69E7CC0];
  *(v6 + 104) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  if ((a2 & 1) != 0 && !a4)
  {
    result = sub_1D91796DC();
    __break(1u);
  }

  else
  {
    *(v6 + 16) = a1;
    *(v6 + 24) = a2 & 1;
    *(v6 + 32) = a3;
    *(v6 + 40) = a4;
    v13 = *(a5 + 16);
    *(v6 + 48) = *a5;
    *(v6 + 64) = v13;
    *(v6 + 80) = *(a5 + 32);
    *(v6 + 96) = a6;
    return v6;
  }

  return result;
}

uint64_t sub_1D9103B28(uint64_t a1)
{
  swift_beginAccess();
  [*(v1 + 104) lock];
  sub_1D8D1CB88(v1, a1, &v4);
  [*(v1 + 104) unlock];
  return v4;
}

id sub_1D9103BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  [*(v3 + 104) lock];
  swift_unknownObjectWeakInit();
  v13 = a2;
  v14 = a3;
  sub_1D91040E0(v12, v11);
  swift_beginAccess();
  v6 = *(v3 + 88);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 88) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D8ECDDC0(0, v6[2] + 1, 1, v6);
    *(v3 + 88) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D8ECDDC0((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  sub_1D9104118(v11, &v6[3 * v9 + 4]);
  *(v3 + 88) = v6;
  swift_endAccess();
  sub_1D9104150(v12);
  return [*(v3 + 104) unlock];
}

id sub_1D9103CFC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  [*(v1 + 104) lock];
  swift_beginAccess();
  v4 = *(v1 + 88);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    while (v7 < *(v4 + 16))
    {
      sub_1D91040E0(v8, v17);
      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v11 = Strong, swift_unknownObjectRelease(), v11 == a1))
      {
        result = sub_1D9104150(v17);
      }

      else
      {
        sub_1D9104118(v17, v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8E318EC(0, *(v9 + 16) + 1, 1);
          v9 = v18;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D8E318EC((v13 > 1), v14 + 1, 1);
          v9 = v18;
        }

        *(v9 + 16) = v14 + 1;
        result = sub_1D9104118(v16, v9 + 24 * v14 + 32);
      }

      ++v7;
      v8 += 24;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    v15 = *(v2 + 88);
    *(v2 + 88) = v9;

    return [*(v2 + 104) unlock];
  }

  return result;
}

void *PodcastStateMachine.deinit()
{
  v1 = v0[5];

  v2 = v0[9];
  v3 = v0[10];
  sub_1D8D1D59C(v0[6], v0[7], v0[8]);
  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[13];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PodcastStateMachine.__deallocating_deinit()
{
  v1 = v0[5];

  v2 = v0[9];
  v3 = v0[10];
  sub_1D8D1D59C(v0[6], v0[7], v0[8]);
  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[13];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9103F60()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 104);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D9103FA4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PodcastStateMachine();
  result = sub_1D917788C();
  *a1 = result;
  return result;
}

BOOL _s18PodcastsFoundation12PodcastStateO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 2);
  switch(v3)
  {
    case 2:
      return *(a2 + 2) == 2;
    case 1:
      return *(a2 + 2) == 1;
    case 0:
      return !*(a2 + 2);
  }

  v5 = *(a2 + 2);
  if (v5 < 3 || ((*a1 ^ *a2) & 1) != 0)
  {
    return 0;
  }

  v6 = a1[24];
  v7 = *(a1 + 4);
  v8 = a2[24];
  v9 = *(a2 + 4);
  if (*(a1 + 1) == *(a2 + 1) && v3 == v5)
  {
    if ((v6 ^ v8))
    {
      return 0;
    }

    return v7 == v9;
  }

  v10 = *(a1 + 1);
  v11 = sub_1D9179ACC();
  result = 0;
  if ((v11 & 1) != 0 && ((v6 ^ v8) & 1) == 0)
  {
    return v7 == v9;
  }

  return result;
}

unint64_t sub_1D9104184()
{
  result = qword_1ECABA8A0;
  if (!qword_1ECABA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8A0);
  }

  return result;
}

uint64_t sub_1D91041D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9104234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

double sub_1D910428C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of PodcastStateMachine.__allocating_init(adamId:uuid:initialState:rules:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 216);
  v7 = *(a5 + 32);
  v8 = *(a5 + 16);
  v10[0] = *a5;
  v10[1] = v8;
  v11 = v7;
  return v6(a1, a2 & 1, a3, a4, v10);
}

uint64_t dispatch thunk of PodcastStateMachine.transition(to:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 224);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6) & 1;
}

uint64_t AllPodcastStateRule.canMove(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v6 = *v2 + 32;
    v7 = 1;
    do
    {
      sub_1D8CFD9D8(v6, v11);
      if (v7)
      {
        v8 = v12;
        v9 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        v7 = (*(v9 + 8))(a1, a2, v8, v9);
      }

      else
      {
        v7 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t AnyPodcastStateRule.canMove(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = v3 + 32;
    do
    {
      sub_1D8CFD9D8(v8, v12);
      if (v7)
      {
        v7 = 1;
      }

      else
      {
        v9 = v13;
        v10 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        v7 = (*(v10 + 8))(a1, a2, v9, v10);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      v8 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t dispatch thunk of PodcastStateRule.canMove(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  v6 = *(a4 + 8);
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v4;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v11 = v5;
  return v6(v12, v10) & 1;
}

BOOL sub_1D9104690(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 == 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  return !*(a2 + 16) && v3;
}

uint64_t sub_1D910471C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v54 = MEMORY[0x1E69E7CC0];
  sub_1D8E31340(0, v1, 0);
  v2 = v54;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1D91792DC();
  if (result < 0 || (v7 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v35 = v3 + 72;
    v36 = v1;
    v8 = *(v3 + 36);
    v9 = 1;
    v37 = v8;
    v38 = v3 + 64;
    while (1)
    {
      v10 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        break;
      }

      if (v8 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v55 = v9;
      v11 = *(v3 + 56);
      v12 = (*(v3 + 48) + 96 * v7);
      v13 = v12[1];
      v45[0] = *v12;
      v45[1] = v13;
      v15 = v12[3];
      v14 = v12[4];
      v16 = v12[2];
      *(v46 + 11) = *(v12 + 75);
      v45[3] = v15;
      v46[0] = v14;
      v45[2] = v16;
      v17 = v12[1];
      v40 = *v12;
      v41 = v17;
      v18 = v12[2];
      v19 = v12[3];
      v20 = v12[4];
      *&v44[11] = *(v12 + 75);
      v43 = v19;
      *v44 = v20;
      v42 = v18;
      v21 = v3;
      v22 = *(v11 + 8 * v7);
      memmove(__dst, v12, 0x5BuLL);
      v49[2] = v42;
      v49[3] = v43;
      v49[4] = *v44;
      v49[5] = *&v44[16];
      v49[0] = v40;
      v49[1] = v41;
      v50 = v22;
      swift_bridgeObjectRetain_n();
      sub_1D8F0C914(v45, v39);
      sub_1D8F0C914(__dst, v39);
      sub_1D91072E8(v49);
      v51[2] = __dst[2];
      v51[3] = __dst[3];
      v52[0] = v48[0];
      *(v52 + 11) = *(v48 + 11);
      v51[0] = __dst[0];
      v51[1] = __dst[1];
      v53 = v22;
      v23 = *&__dst[0];

      result = sub_1D91072E8(v51);
      v54 = v2;
      v25 = *(v2 + 16);
      v24 = *(v2 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1D8E31340((v24 > 1), v25 + 1, 1);
        v2 = v54;
      }

      *(v2 + 16) = v25 + 1;
      v26 = v2 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v27 = 1 << *(v21 + 32);
      if (v7 >= v27)
      {
        goto LABEL_27;
      }

      v3 = v21;
      v4 = v38;
      v28 = *(v38 + 8 * v10);
      if ((v28 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v8 = v37;
      if (v37 != *(v3 + 36))
      {
        goto LABEL_29;
      }

      v29 = v28 & (-2 << (v7 & 0x3F));
      if (v29)
      {
        v7 = __clz(__rbit64(v29)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v10 << 6;
        v31 = v10 + 1;
        v32 = (v35 + 8 * v10);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_1D8D9B144(v7, v37, 0);
            v7 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        result = sub_1D8D9B144(v7, v37, 0);
        v7 = v27;
      }

LABEL_19:
      if (v55 == v36)
      {
        return v2;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        v9 = v55 + 1;
        if (v7 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t EpisodeStateDomain.propertiesToTrack.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D9197860;
      *(v2 + 32) = sub_1D917820C();
      *(v2 + 40) = v3;
      *(v2 + 48) = sub_1D917820C();
      *(v2 + 56) = v4;
      *(v2 + 64) = sub_1D917820C();
      *(v2 + 72) = v5;
      *(v2 + 80) = sub_1D917820C();
      *(v2 + 88) = v6;
      *(v2 + 96) = sub_1D917820C();
      *(v2 + 104) = v7;
      v8 = sub_1D917820C();
      result = v2;
      *(v2 + 112) = v8;
      *(v2 + 120) = v10;
    }

    else
    {
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D9189080;
      v16 = sub_1D917820C();
      result = v15;
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
    }
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D918A530;
    *(v11 + 32) = sub_1D917820C();
    *(v11 + 40) = v12;
    v13 = sub_1D917820C();
    result = v11;
    *(v11 + 48) = v13;
    *(v11 + 56) = v14;
  }

  return result;
}

PodcastsFoundation::EpisodeStateDomain_optional __swiftcall EpisodeStateDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EpisodeStateDomain.rawValue.getter()
{
  v1 = 0x7461745379616C70;
  if (*v0 != 1)
  {
    v1 = 0x6B72616D6B6F6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C6E776F64;
  }
}

uint64_t sub_1D9104C88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461745379616C70;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6B72616D6B6F6F62;
    v4 = 0xED00006574617453;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006574617453;
  }

  v7 = 0x7461745379616C70;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6B72616D6B6F6F62;
    v8 = 0xED00006574617453;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006574617453;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D9104D94()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D9104E44()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D9104EE0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D9104F98(uint64_t *a1@<X8>)
{
  v2 = 0xED00006574617453;
  v3 = *v1;
  v4 = 0xE900000000000065;
  v5 = 0x7461745379616C70;
  if (v3 != 1)
  {
    v5 = 0x6B72616D6B6F6F62;
    v4 = 0xED00006574617453;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64616F6C6E776F64;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_1D910502C()
{
  v0 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E27B80(MEMORY[0x1E69E7CC0]);
  qword_1EDCD41E8 = v0;
  unk_1EDCD41F0 = result;
  qword_1EDCD41F8 = v0;
  return result;
}

PodcastsFoundation::EpisodeStateChanges __swiftcall EpisodeStateChanges.init(inserted:updated:deleted:)(Swift::OpaquePointer inserted, Swift::OpaquePointer updated, Swift::OpaquePointer deleted)
{
  v3->_rawValue = inserted._rawValue;
  v3[1]._rawValue = updated._rawValue;
  v3[2]._rawValue = deleted._rawValue;
  result.deleted = deleted;
  result.updated = updated;
  result.inserted = inserted;
  return result;
}

uint64_t static EpisodeStateChanges.noChanges.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDCD41E0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *(&xmmword_1EDCD41E8 + 1);
  v2 = qword_1EDCD41F8;
  *a1 = xmmword_1EDCD41E8;
  a1[1] = v1;
  a1[2] = v2;
}

BOOL EpisodeStateChanges.isEmpty.getter()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(v0[1] + 16))
  {
    return 0;
  }

  return *(v0[2] + 16) == 0;
}

BOOL sub_1D91051B8(uint64_t a1, uint64_t a2)
{
  v3 = EpisodeStateDomain.propertiesToTrack.getter();

  v4 = sub_1D9106384(v3, a2);

  v5 = *(v4 + 16);

  return v5 != 0;
}

uint64_t EpisodeStateChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D917946C();

  v5 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v2 + 32);
    while (v7 < *(v2 + 16))
    {
      ++v7;
      v9 = *v8;
      v8 += 12;

      result = sub_1D8E2F94C(v10);
      if (v6 == v7)
      {
        v5 = v20;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v11 = MEMORY[0x1DA729BD0](v5, &type metadata for EpisodeStateIdentifier);
    v13 = v12;

    MEMORY[0x1DA7298F0](v11, v13);

    MEMORY[0x1DA7298F0](0x657461647075203BLL, 0xEB00000000203A64);
    v14 = sub_1D910471C(v1);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45B0, &qword_1D918A020);
    v16 = MEMORY[0x1DA729BD0](v14, v15);
    v18 = v17;

    MEMORY[0x1DA7298F0](v16, v18);

    MEMORY[0x1DA7298F0](0x6574656C6564203BLL, 0xEB00000000203A64);
    v19 = MEMORY[0x1DA729BD0](v3, &type metadata for EpisodeStateIdentifier);
    MEMORY[0x1DA7298F0](v19);

    return 0x6465747265736E69;
  }

  return result;
}

uint64_t EpisodeStateModel.podcastStateModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 90);
  v8 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 42) = v7;
  *(a1 + 40) = v8;
  return sub_1D9106E94(v2, v3, v4, v5, v6);
}

double EpisodeStateModel.init(episode:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = MTEpisode.allEpisodeStateIdentifiers.getter();
  sub_1D91054D8(a1, v4, v8);
  v5 = v8[3];
  a2[2] = v8[2];
  a2[3] = v5;
  a2[4] = v9[0];
  *(a2 + 75) = *(v9 + 11);
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

void sub_1D91054D8(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = [a1 isDownloaded];
    v7 = [a1 isFromITunesSync];
    v8 = [a1 isBookmarked];
    v9 = [a1 podcast];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 hidden];
    }

    else
    {
      v11 = 0;
    }

    if ([a1 isPartiallyPlayed] & 1) != 0 || (objc_msgSend(a1, sel_isPartiallyPlayedBackCatalogItem))
    {
      v12 = 1;
    }

    else
    {
      v12 = [a1 isPlayheadPartiallyPlayed];
    }

    if ([a1 isPlayed])
    {
      v13 = [a1 isBackCatalogItem] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    [a1 playhead];
    v15 = v14;
    [a1 duration];
    v17 = v16;
    [a1 lastDatePlayed];
    v19 = v18;
    v20 = sub_1D9105704(a1) & 1;
    PodcastStateModel.init(podcast:)([a1 podcast], v26);

    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v26[0];
    v25 = v26[1];
    *a3 = a2;
    *(a3 + 8) = v6;
    *(a3 + 9) = v7;
    *(a3 + 10) = v8;
    *(a3 + 11) = v11;
    *(a3 + 12) = v12;
    *(a3 + 13) = v13;
    *(a3 + 16) = v15;
    *(a3 + 24) = v17;
    *(a3 + 32) = v19;
    *(a3 + 40) = v20;
    *(a3 + 48) = v24;
    *(a3 + 64) = v25;
    *(a3 + 80) = v21;
    *(a3 + 90) = v23;
    *(a3 + 88) = v22;
  }

  else
  {

    *(a3 + 75) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }
}

id sub_1D9105704(void *a1)
{
  v2 = [a1 podcast];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 uuid];
  if (v4)
  {
    v5 = v4;
    if ([a1 isDownloaded] && objc_msgSend(v3, sel_deletePlayedEpisodesResolvedValue))
    {
      v6 = [objc_opt_self() predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:v5 deletePlayedEpisodes:1];

      v7 = [v6 evaluateWithObject_];
      v5 = v6;
    }

    else
    {
      v7 = 0;
    }

    v3 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t EpisodeStateModel.hash(into:)(__int128 *a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  v4 = *(v1 + 10);
  v5 = *(v1 + 11);
  v6 = *(v1 + 12);
  v7 = *(v1 + 13);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v28 = *(v1 + 56);
  v29 = *(v1 + 48);
  v12 = *(v1 + 64);
  v27 = *(v1 + 72);
  v13 = *(v1 + 80);
  v25 = *(v1 + 88);
  v26 = *(v1 + 90);
  sub_1D9106794(a1, *v1);
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  if (v8 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v8;
  }

  MEMORY[0x1DA72B3C0](*&v14);
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x1DA72B3C0](*&v15);
  if (v10 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v10;
  }

  MEMORY[0x1DA72B3C0](*&v16);
  sub_1D9179DDC();
  if (!v13)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  v17 = v12;
  v18 = v12;
  if (v12)
  {
    v20 = v28;
    v19 = v29;
    if (v17 == 1)
    {
      MEMORY[0x1DA72B390](1);
      v21 = v29;
      v22 = v28;
      v23 = 1;
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      v21 = v29;
      v22 = v28;
      v23 = 2;
    }

    sub_1D9106ED4(v21, v22, v23);

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    v19 = v29;
    MEMORY[0x1DA72B3C0](v29);
    v20 = v28;
    sub_1D9106ED4(v29, v28, 0);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();

  return sub_1D90B1ADC(v19, v20, v18, v27, v13);
}

uint64_t EpisodeStateModel.hashValue.getter()
{
  sub_1D9179DBC();
  EpisodeStateModel.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D9105A84()
{
  sub_1D9179DBC();
  EpisodeStateModel.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D9105AC8()
{
  sub_1D9179DBC();
  EpisodeStateModel.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t PodcastStateModel.id.getter()
{
  v1 = *v0;
  sub_1D9106ED4(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t PodcastStateModel.uuid.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PodcastStateModel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = *(v0 + 42);
  if (*(v0 + 16))
  {
    v7 = v0[1];
    if (*(v0 + 16) == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    MEMORY[0x1DA72B390](v8);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  sub_1D9179DDC();
  return sub_1D9179DDC();
}

uint64_t PodcastStateModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  v8 = *(v0 + 42);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    MEMORY[0x1DA72B390](v9);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  return sub_1D9179E1C();
}

uint64_t sub_1D9105D50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  v8 = *(v0 + 42);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    MEMORY[0x1DA72B390](v9);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  return sub_1D9179E1C();
}

unint64_t PodcastStateModel.SanitizedState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6465776F6C6C6F66;
  v2 = 0xD000000000000012;
  if (a1 != 2)
  {
    v2 = 0x65726F7473;
  }

  if (a1)
  {
    v1 = 0x7972617262696CLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9105EBC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6465776F6C6C6F66;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xD000000000000012;
  v6 = 0x80000001D91C84B0;
  v7 = 0xE500000000000000;
  if (v3 == 2)
  {
    v7 = 0x80000001D91C84B0;
  }

  else
  {
    v5 = 0x65726F7473;
  }

  v8 = 0x7972617262696CLL;
  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x6465776F6C6C6F66;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  v11 = 0xE800000000000000;
  v12 = 0xD000000000000012;
  if (*a2 != 2)
  {
    v12 = 0x65726F7473;
    v6 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x7972617262696CLL;
    v11 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v6;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

uint64_t sub_1D9105FF0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D91060B4()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D9106164()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D9106224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation17PodcastStateModelV09SanitizedD0O8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1D9106254(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6465776F6C6C6F66;
  v4 = 0x80000001D91C84B0;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x65726F7473;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x7972617262696CLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D9106384(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1D9106524(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1D9107350(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1D9106524(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_1D9179DBC();

          _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
          v14 = sub_1D9179E1C();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_1D9179ACC() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_1D90A7CC4(v26, a2, v25, a4);
}

void *sub_1D9106704(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D8DA7228(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D9106794(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_1D9179E1C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_11:
    v12 = *(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (v9 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_1D9179DBC();
    if (v15 == 1)
    {
      MEMORY[0x1DA72B390](1);

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1DA72B390](0);
      MEMORY[0x1DA72B3C0](v13);
    }

    v5 &= v5 - 1;
    v10 = sub_1D9179E1C();
    result = sub_1D8DB5FC8(v13, v14, v15);
    v8 ^= v10;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return MEMORY[0x1DA72B390](v8);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s18PodcastsFoundation17PodcastStateModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *(a1 + 42);
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = a2[3];
  v12 = a2[4];
  v13 = *(a2 + 40);
  v14 = *(a2 + 41);
  v15 = *(a2 + 42);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v19 = v3 == v9;
    result = 0;
    if (!v19)
    {
      return result;
    }

    goto LABEL_14;
  }

  v17 = a1[1];
  v18 = a2[1];
  if (*(a1 + 16) != 1)
  {
    if (v10 == 2)
    {
      if (v3 == v9 && v17 == v18)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    return 0;
  }

  if (v10 != 1)
  {
    return 0;
  }

  if (v3 == v9 && v17 == v18)
  {
    goto LABEL_14;
  }

LABEL_13:
  if ((sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  if (v4 == v11 && v5 == v12)
  {
    result = 0;
    if (v6 != v13)
    {
      return result;
    }

    goto LABEL_21;
  }

  v21 = sub_1D9179ACC();
  result = 0;
  if ((v21 & 1) != 0 && ((v6 ^ v13) & 1) == 0)
  {
LABEL_21:
    if (((v7 ^ v14) & 1) == 0)
    {
      return v8 ^ v15 ^ 1u;
    }
  }

  return result;
}

uint64_t _s18PodcastsFoundation17EpisodeStateModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v41 = *(a1 + 13);
  v43 = *(a1 + 12);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v39 = *(a1 + 40);
  v36 = *(a1 + 48);
  v37 = *(a1 + 64);
  v35 = *(a1 + 80);
  v31 = *(a1 + 88);
  v32 = *(a1 + 90);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 10);
  v12 = *(a2 + 11);
  v13 = *(a2 + 12);
  v14 = *(a2 + 13);
  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(a2 + 32);
  v38 = *(a2 + 40);
  v33 = *(a2 + 48);
  v34 = *(a2 + 64);
  v40 = *(a2 + 80);
  v29 = *(a2 + 88);
  v30 = *(a2 + 90);
  v18 = sub_1D8F66438(*a1, *a2);
  v19 = 0;
  if ((v18 & 1) != 0 && ((v2 ^ v9) & 1) == 0 && ((v3 ^ v10) & 1) == 0 && ((v4 ^ v11) & 1) == 0 && ((v5 ^ v12) & 1) == 0 && ((v43 ^ v13) & 1) == 0 && ((v41 ^ v14) & 1) == 0 && v7 == v16 && v6 == v15 && v8 == v17 && ((v39 ^ v38) & 1) == 0)
  {
    if (v35)
    {
      v20 = *(&v36 + 1);
      v21 = v36;
      v50 = v36;
      v23 = v37;
      v22 = *(&v37 + 1);
      *v51 = v37;
      *&v51[16] = v35;
      *&v51[24] = v31;
      v51[26] = (v31 | (v32 << 16)) >> 16;
      v25 = v34;
      v24 = *(&v34 + 1);
      v26 = *(&v33 + 1);
      if (v40)
      {
        v44 = v33;
        *v45 = v34;
        *&v45[16] = v40;
        v45[26] = (v29 | (v30 << 16)) >> 16;
        *&v45[24] = v29;
        v42 = _s18PodcastsFoundation17PodcastStateModelV2eeoiySbAC_ACtFZ_0(&v50, &v44);
        v46 = v44;
        v47[0] = *v45;
        *(v47 + 11) = *&v45[11];
        sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
        sub_1D9106E94(v33, *(&v33 + 1), v34, *(&v34 + 1), v40);
        sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
        sub_1D90CDA08(&v46);
        v48 = v50;
        v49[0] = *v51;
        *(v49 + 11) = *&v51[11];
        sub_1D90CDA08(&v48);
        sub_1D90B1ADC(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
        v19 = v42;
        return v19 & 1;
      }

      v48 = v50;
      v49[0] = *v51;
      *(v49 + 11) = *&v51[11];
      sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
      v27 = v33;
      sub_1D9106E94(v33, *(&v33 + 1), v34, *(&v34 + 1), 0);
      sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
      sub_1D90CDA08(&v48);
    }

    else
    {
      v20 = *(&v36 + 1);
      v21 = v36;
      v23 = v37;
      v22 = *(&v37 + 1);
      sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), 0);
      v25 = v34;
      v24 = *(&v34 + 1);
      v26 = *(&v33 + 1);
      if (!v40)
      {
        sub_1D9106E94(v33, *(&v33 + 1), v34, *(&v34 + 1), 0);
        sub_1D90B1ADC(v36, *(&v36 + 1), v37, *(&v37 + 1), 0);
        v19 = 1;
        return v19 & 1;
      }

      v27 = v33;
      sub_1D9106E94(v33, *(&v33 + 1), v34, *(&v34 + 1), v40);
    }

    sub_1D90B1ADC(v21, v20, v23, v22, v35);
    sub_1D90B1ADC(v27, v26, v25, v24, v40);
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t _s18PodcastsFoundation17PodcastStateModelV09SanitizedD0O8rawValueAESgSS_tcfC_0()
{
  v0 = sub_1D917980C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9106E94(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1D9106ED4(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D9106ED4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_1D9106EF4()
{
  result = qword_1ECABA8B8;
  if (!qword_1ECABA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8B8);
  }

  return result;
}

unint64_t sub_1D9106F4C()
{
  result = qword_1ECABA8C0;
  if (!qword_1ECABA8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA8C8, &qword_1D91B8BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8C0);
  }

  return result;
}

unint64_t sub_1D9106FB4()
{
  result = qword_1ECABA8D0;
  if (!qword_1ECABA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8D0);
  }

  return result;
}

unint64_t sub_1D910700C()
{
  result = qword_1ECABA8D8;
  if (!qword_1ECABA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation17PodcastStateModelVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D910709C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 91))
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

uint64_t sub_1D91070E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 91) = 1;
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

    *(result + 91) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PodcastStateModel.StateError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastStateModel.StateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1D9107294()
{
  result = qword_1ECABA8E0;
  if (!qword_1ECABA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8E0);
  }

  return result;
}

uint64_t sub_1D91072E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA8E8, &unk_1D91B9090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9107350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D9106524(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_1D9107384(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D917935C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_1D917930C();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1D91792DC();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_1D9109118(v39, v40, v41, v1, &unk_1EDCD0950, 0x1E695D6D8);
        v13 = v12;
        v14 = [v12 name];
        v15 = sub_1D917820C();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D8D41BE0((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_1D917932C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA950, &qword_1D91B91B0);
          v7 = sub_1D9178AFC();
          sub_1D91793AC();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_1D8D9B144(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_1D8D9B144(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_1D8D9B144(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t EpisodeStatePersistentHistoryTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  EpisodeStatePersistentHistoryTracker.init()();
  return v0;
}

uint64_t EpisodeStatePersistentHistoryTracker.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t EpisodeStatePersistentHistoryTracker.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall EpisodeStatePersistentHistoryTracker.startTrackingChanges()()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1D8D244B0;
  *(v2 + 24) = v0;
  v4[4] = sub_1D8D244E0;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D8D24488;
  v4[3] = &block_descriptor_90;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1D91078F0(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA930, &qword_1D91B9170);
  sub_1D8CF48EC(&qword_1EDCD0A40, &qword_1ECABA930, &qword_1D91B9170);
  return sub_1D917841C();
}

uint64_t sub_1D9107984@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_1D8DA55EC(v3);
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v11 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  return result;
}

void sub_1D9107A50(uint64_t *a1, void **a2)
{
  v4 = sub_1D917744C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = [v10 updatedProperties];
  if (v11)
  {
    v12 = v11;
    sub_1D8CF2154(0, &unk_1EDCD0950, 0x1E695D6D8);
    sub_1D8CF3274(&qword_1EDCD0948, &unk_1EDCD0950, 0x1E695D6D8);
    v13 = sub_1D9178A9C();

    sub_1D9107384(v13);
    v15 = v14;

    v16 = sub_1D8FC0F28(v15);

    v17 = [v10 changedObjectID];
    v18 = v17;
    v19 = *a1;
    if (*(*a1 + 16) && (v20 = sub_1D8D698BC(v17), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CD0];
    }

    v23 = [v10 changedObjectID];
    v24 = sub_1D8FB13E8(v22, v16);
    v25 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *a1;
    sub_1D8F513D8(v24, v23, isUniquelyReferenced_nonNull_native);

    *a1 = v35;
  }

  else
  {
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v4, qword_1ECAAFC48);
    swift_beginAccess();
    (*(v5 + 16))(v9, v27, v4);
    v28 = v10;
    v29 = sub_1D917741C();
    v30 = sub_1D9178CFC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_1D8CEC000, v29, v30, "Skipping update change with no updated properties %@", v31, 0xCu);
      sub_1D8D08A50(v32, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v32, -1, -1);
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_1D9107DD4@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_1D917744C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [*a1 tombstone];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = sub_1D917805C();

  v45 = sub_1D917820C();
  v46 = v15;
  sub_1D91793EC();
  if (!*(v14 + 16) || (v16 = sub_1D8D6550C(v47), (v17 & 1) == 0))
  {

    sub_1D8D9A308(v47);
LABEL_14:
    v48 = 0u;
    v49 = 0u;
    goto LABEL_15;
  }

  sub_1D8CFAD1C(*(v14 + 56) + 32 * v16, &v48);
  sub_1D8D9A308(v47);

  if (!*(&v49 + 1))
  {
LABEL_15:
    sub_1D8D08A50(&v48, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = v47[0];
  v18 = v47[1];
  v20 = [v11 tombstone];
  if (!v20)
  {

    goto LABEL_14;
  }

  v43 = v19;
  v44 = v18;
  v21 = v20;
  v22 = sub_1D917805C();

  v45 = sub_1D917820C();
  v46 = v23;
  sub_1D91793EC();
  if (!*(v22 + 16) || (v24 = sub_1D8D6550C(v47), (v25 & 1) == 0))
  {

    sub_1D8D9A308(v47);
    v48 = 0u;
    v49 = 0u;
    v3 = v2;
    goto LABEL_26;
  }

  sub_1D8CFAD1C(*(v22 + 56) + 32 * v24, &v48);
  sub_1D8D9A308(v47);

  v3 = v2;
  if (!*(&v49 + 1))
  {
LABEL_26:

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v26 = v47[0];
    if ([objc_opt_self() isEmpty_])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4580, &unk_1D9192000);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D9189080;
      v28 = v44;
      *(result + 32) = v43;
      *(result + 40) = v28;
      *(result + 48) = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4580, &unk_1D9192000);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D918A530;
      v41 = v44;
      *(result + 32) = v43;
      *(result + 40) = v41;
      *(result + 48) = 1;
      *(result + 56) = v26 & ~(v26 >> 63);
      *(result + 64) = 0;
      *(result + 72) = 0;
    }

    goto LABEL_24;
  }

LABEL_16:
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v5, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v6 + 16))(v10, v29, v5);
  v30 = v11;
  v31 = sub_1D917741C();
  v32 = sub_1D9178CFC();

  if (os_log_type_enabled(v31, v32))
  {
    v44 = v3;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v48 = v34;
    *v33 = 136315138;
    v35 = [v30 tombstone];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1D917805C();
    }

    else
    {
      v37 = 0;
    }

    v45 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA948, &unk_1D91B91A0);
    v38 = sub_1D917826C();
    v40 = sub_1D8CFA924(v38, v39, &v48);

    *(v33 + 4) = v40;
    _os_log_impl(&dword_1D8CEC000, v31, v32, "Tombstones from episode deletion must have a uuid and a valid adamId. Make sure the corresponding attributes in MTEpisode CoreData schema have Preserve After Deletion check enabled. Offending tombstone: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1DA72CB90](v34, -1, -1);
    MEMORY[0x1DA72CB90](v33, -1, -1);

    (*(v6 + 8))(v10, v5);
    result = MEMORY[0x1E69E7CC0];
  }

  else
  {

    (*(v6 + 8))(v10, v5);
    result = MEMORY[0x1E69E7CC0];
  }

LABEL_24:
  *v50 = result;
  return result;
}

uint64_t sub_1D9108378(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5, void *a6, char **a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = sub_1D8DA6664(a3, a6);
    v14 = a6;

    v16 = sub_1D8DA6894(v15, v14, a4);

    v17 = *a7;
    v18 = a7[1];
    v19 = a7[2];
    *a7 = v13;
    a7[1] = v16;
    a7[2] = a5;
  }

  return result;
}

void sub_1D9108464(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = *MEMORY[0x1E69E9840];
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v39 = 0;
  v15 = [a2 existingObjectWithID:v14 error:{&v39, v11}];
  v16 = v39;
  if (v15)
  {
    v17 = v15;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v20 = v16;
      v21 = MTEpisode.allEpisodeStateIdentifiers.getter();
      sub_1D91054D8(v19, v21, &v39);
      v47 = v42;
      v48 = v43;
      *v49 = *v44;
      *&v49[15] = *&v44[15];
      v45 = v40;
      v46 = v41;
      if (v39)
      {
        *a3 = v39;
      }

      else
      {
        *a3 = 0;
      }

      v35 = v48;
      *(a3 + 40) = v47;
      *(a3 + 56) = v35;
      *(a3 + 72) = *v49;
      *(a3 + 87) = *&v49[15];
      v36 = v46;
      *(a3 + 8) = v45;
      *(a3 + 24) = v36;
      goto LABEL_14;
    }

    v24 = v16;
  }

  else
  {
    v22 = v39;
    v23 = sub_1D9176A6C();

    swift_willThrow();
    v4 = 0;
  }

  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v8, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v9 + 16))(v13, v25, v8);
  v26 = v14;
  v27 = sub_1D917741C();
  v28 = sub_1D9178CFC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38[1] = v4;
    v31 = v9;
    v32 = v30;
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v33 = v26;
    _os_log_impl(&dword_1D8CEC000, v27, v28, "Cannot fetch inserted MTEpisode entity for %@. This might be an episode that has been inserted and then deleted in an upcoming change.", v29, 0xCu);
    sub_1D8D08A50(v32, &unk_1ECAB6C70, &unk_1D9188C30);
    v34 = v32;
    v9 = v31;
    MEMORY[0x1DA72CB90](v34, -1, -1);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  (*(v9 + 8))(v13, v8);
  *(a3 + 75) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
LABEL_14:
  v37 = *MEMORY[0x1E69E9840];
}

void sub_1D9108800(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1D917744C();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v69 - v15;
  v17 = *a1;
  v74 = 0;
  v18 = [a2 existingObjectWithID:v17 error:{&v74, v14}];
  v19 = v74;
  if (!v18)
  {
    v29 = v74;
    v30 = sub_1D9176A6C();

    swift_willThrow();
LABEL_7:
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v8, qword_1ECAAFC48);
    swift_beginAccess();
    (*(v9 + 16))(v12, v32, v8);
    v33 = v17;

    v34 = sub_1D917741C();
    v35 = sub_1D9178CFC();

    if (os_log_type_enabled(v34, v35))
    {
      v72 = v9;
      v71 = v8;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v80 = v38;
      *v36 = 138412546;
      *(v36 + 4) = v33;
      *v37 = v33;
      *(v36 + 12) = 2080;
      v39 = *(a3 + 16);
      v40 = v33;
      if (v39 && (v41 = sub_1D8D698BC(v40), (v42 & 1) != 0))
      {
        v43 = *(*(a3 + 56) + 8 * v41);
      }

      else
      {
        v44 = 0;
      }

      v85[0] = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA940, &unk_1D91B9180);
      v45 = sub_1D917826C();
      v47 = sub_1D8CFA924(v45, v46, &v80);

      *(v36 + 14) = v47;
      _os_log_impl(&dword_1D8CEC000, v34, v35, "Cannot fetch updated MTEpisode entity for %@; properties reported as updates: %s. This might be an episode that has been updated and then deleted in an upcoming change.", v36, 0x16u);
      sub_1D8D08A50(v37, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1DA72CB90](v38, -1, -1);
      MEMORY[0x1DA72CB90](v36, -1, -1);

      (*(v72 + 8))(v12, v71);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    goto LABEL_16;
  }

  v20 = v18;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    v31 = v19;

    goto LABEL_7;
  }

  v22 = v21;
  v72 = v9;
  v23 = v19;
  v24 = v20;
  v25 = MTEpisode.allEpisodeStateIdentifiers.getter();
  sub_1D91054D8(v22, v25, &v74);
  v26 = v74;
  v82 = v77;
  v83 = v78;
  v84[0] = *v79;
  *(v84 + 15) = *&v79[15];
  v80 = v75;
  v81 = v76;
  if (!v74)
  {
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v8, qword_1ECAAFC48);
    swift_beginAccess();
    v50 = v72;
    (*(v72 + 16))(v16, v49, v8);
    v51 = v8;
    v52 = v17;

    v53 = sub_1D917741C();
    v54 = sub_1D9178CFC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v85[0] = v71;
      *v55 = 138412546;
      *(v55 + 4) = v52;
      v70 = v56;
      *v56 = v52;
      *(v55 + 12) = 2080;
      v57 = *(a3 + 16);
      v58 = v52;
      if (v57)
      {
        v59 = sub_1D8D698BC(v58);
        v60 = v51;
        if (v61)
        {
          v62 = *(*(a3 + 56) + 8 * v59);
        }

        else
        {
          v63 = 0;
        }
      }

      else
      {
        v63 = 0;
        v60 = v51;
      }

      v73 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA940, &unk_1D91B9180);
      v64 = sub_1D917826C();
      v66 = sub_1D8CFA924(v64, v65, v85);

      *(v55 + 14) = v66;
      _os_log_impl(&dword_1D8CEC000, v53, v54, "The MTEpisode entity for %@ does not have any ID at all. We can do nothing with it. This was originally reported as a crash in rdar://79831648. Now we handle this weird condition by skipping this update. These are the reported updated properties: %s.", v55, 0x16u);
      v67 = v70;
      sub_1D8D08A50(v70, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v67, -1, -1);
      v68 = v71;
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x1DA72CB90](v68, -1, -1);
      MEMORY[0x1DA72CB90](v55, -1, -1);

      (*(v72 + 8))(v16, v60);
    }

    else
    {

      (*(v50 + 8))(v16, v51);
    }

LABEL_16:
    *(a4 + 75) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    goto LABEL_17;
  }

  *a4 = v26;
  v27 = v83;
  *(a4 + 40) = v82;
  *(a4 + 56) = v27;
  *(a4 + 72) = v84[0];
  *(a4 + 87) = *(v84 + 15);
  v28 = v81;
  *(a4 + 8) = v80;
  *(a4 + 24) = v28;
LABEL_17:
  v48 = *MEMORY[0x1E69E9840];
}

void sub_1D9108F18(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA72A940](a1, a2, v7);
      type metadata accessor for MTCategory();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for MTCategory();
    if (sub_1D917933C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D917934C();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1D917913C();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1D917914C();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
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

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

void sub_1D9109118(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA72A940](a1, a2, v11);
      sub_1D8CF2154(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D8CF2154(0, a5, a6);
    if (sub_1D917933C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D917934C();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_1D917913C();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_1D917914C();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t EpisodeStateRepository.__allocating_init(episodeStatePersistentHistoryTracker:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 storeContext];

  *(v5 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA958, &unk_1D91B9210);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_1D91778DC();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = v11;
  *(v5 + 48) = -1;
  v12 = OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID;
  v13 = sub_1D917734C();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker) = a1;
  return v5;
}

uint64_t sub_1D9109454@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID;
  swift_beginAccess();
  sub_1D8D25D6C(v1 + v10, v9);
  v11 = sub_1D917734C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1D8D25DDC(v9);
  if (qword_1EDCD0728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_1EDCD0730;

  sub_1D917730C();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1D8D25E44(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t EpisodeStateRepository.init(episodeStatePersistentHistoryTracker:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 storeContext];

  *(v2 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA958, &unk_1D91B9210);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1D91778DC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = v9;
  *(v2 + 48) = -1;
  v10 = OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID;
  v11 = sub_1D917734C();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker) = a1;
  return v2;
}

uint64_t EpisodeStateRepository.deinit()
{
  v1 = *(v0 + 24);

  sub_1D8DB6BF0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1D8D25DDC(v0 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker);

  return v0;
}

uint64_t EpisodeStateRepository.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_1D8DB6BF0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1D8D25DDC(v0 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D910986C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v114 = a4;
  v110 = sub_1D917744C();
  v112 = *(v110 - 8);
  v6 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v97[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v97[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v97[-v12];
  v14 = sub_1D917734C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v97[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v103 = v10;
    v102 = v13;
    v113 = a2;
    v107 = v14;
    sub_1D9178F5C();
    if (qword_1EDCD0728 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = qword_1EDCD0730;
    v21 = v111;
    sub_1D9109454(v111);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v23 = swift_allocObject();
    v105 = xmmword_1D9189080;
    *(v23 + 16) = xmmword_1D9189080;
    v118 = v113;
    *&v119 = a3;
    BYTE8(v119) = v114 & 1;
    v106 = a3;
    sub_1D8DB5EC8(v113, a3, v114 & 1);
    v24 = sub_1D917826C();
    v108 = v19;
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1D8D34978();
    *(v23 + 64) = v27;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v28 = v108;
    sub_1D91772EC();

    v29 = v107;
    v104 = *(v15 + 8);
    v104(v21, v107);
    v30 = *(v28 + 16);
    sub_1D8FD43E4();
    v31 = v30;
    v32 = sub_1D917908C();
    v100 = v22;
    v101 = v27;
    v109 = (v15 + 8);

    if (v32 >> 62)
    {
      v33 = sub_1D917935C();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v110;
    if (v33)
    {
      v35 = v112;
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1DA72AA90](0, v32);
        goto LABEL_10;
      }

      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v36 = *(v32 + 32);
LABEL_10:
        v37 = v36;

        v38 = v37;
        v39 = MTEpisode.allEpisodeStateIdentifiers.getter();
        sub_1D91054D8(v38, v39, &v118);
        v40 = v118;
        if (v118)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6040, &qword_1D9191FF8);
          v41 = swift_allocObject();
          *(v41 + 16) = v105;
          *(v41 + 32) = v40;
          v42 = v122;
          *(v41 + 72) = v121;
          *(v41 + 88) = v42;
          *(v41 + 104) = *v123;
          *(v41 + 119) = *&v123[15];
          v43 = v120;
          *(v41 + 40) = v119;
          *(v41 + 56) = v43;
          v44 = MEMORY[0x1E69E7CC0];
          v45 = sub_1D8E27B80(MEMORY[0x1E69E7CC0]);
          v46 = *(v28 + 24);
          v115 = v41;
          v116 = v45;
          v117 = v44;

          sub_1D91778BC();

          sub_1D9178F4C();
          v47 = qword_1EDCD0730;
          sub_1D9109454(v21);
          v48 = swift_allocObject();
          *(v48 + 16) = v105;
          v115 = v113;
          v116 = v106;
          LOBYTE(v117) = v114 & 1;
          sub_1D8DB5EC8(v113, v106, v114 & 1);
          v49 = sub_1D917826C();
          v50 = v101;
          *(v48 + 56) = MEMORY[0x1E69E6158];
          *(v48 + 64) = v50;
          *(v48 + 32) = v49;
          *(v48 + 40) = v51;
          sub_1D91772EC();

          v52 = v21;
          v53 = v29;
          return (v104)(v52, v53);
        }

        if (qword_1ECAAFC40 != -1)
        {
          swift_once();
        }

        v68 = __swift_project_value_buffer(v34, qword_1ECAAFC48);
        swift_beginAccess();
        v69 = v102;
        (*(v35 + 16))(v102, v68, v34);
        v70 = v38;
        v71 = sub_1D917741C();
        v72 = sub_1D9178CFC();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v99 = v73;
          v103 = swift_slowAlloc();
          v115 = v103;
          *v73 = 136380675;
          v74 = v70;
          v75 = [v74 description];
          v76 = sub_1D917820C();
          v98 = v72;
          v77 = v70;
          v78 = v76;
          v80 = v79;

          v81 = v78;
          v70 = v77;
          v82 = sub_1D8CFA924(v81, v80, &v115);

          v83 = v99;
          *(v99 + 1) = v82;
          v29 = v107;
          _os_log_impl(&dword_1D8CEC000, v71, v98, "Can't create an EpisodeStateModel for MTEpisode: %{private}s", v83, 0xCu);
          v84 = v103;
          __swift_destroy_boxed_opaque_existential_1Tm(v103);
          MEMORY[0x1DA72CB90](v84, -1, -1);
          MEMORY[0x1DA72CB90](v83, -1, -1);
        }

        (*(v35 + 8))(v69, v34);
        v85 = MEMORY[0x1E69E6158];
        sub_1D9178F4C();
        v86 = qword_1EDCD0730;
        sub_1D9109454(v21);
        v87 = swift_allocObject();
        *(v87 + 16) = v105;
        v115 = v113;
        v116 = v106;
        LOBYTE(v117) = v114 & 1;
        sub_1D8DB5EC8(v113, v106, v114 & 1);
        v88 = sub_1D917826C();
        v89 = v101;
        *(v87 + 56) = v85;
        *(v87 + 64) = v89;
        *(v87 + 32) = v88;
        *(v87 + 40) = v90;
        sub_1D91772EC();

        v52 = v21;
LABEL_22:
        v53 = v29;
        return (v104)(v52, v53);
      }

      __break(1u);
    }

    else
    {

      v35 = v112;
      if (qword_1ECAAFC40 == -1)
      {
LABEL_13:
        v54 = __swift_project_value_buffer(v34, qword_1ECAAFC48);
        swift_beginAccess();
        v55 = v103;
        (*(v35 + 16))(v103, v54, v34);
        v56 = v114 & 1;
        v57 = v113;
        v58 = v34;
        v59 = v106;
        sub_1D8DB5EC8(v113, v106, v114 & 1);
        v60 = sub_1D917741C();
        v61 = sub_1D9178CFC();
        sub_1D8DB5FC8(v57, v59, v56);
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v124 = v63;
          *v62 = 136380675;
          v115 = v57;
          v116 = v59;
          LOBYTE(v117) = v56;
          sub_1D8DB5EC8(v57, v59, v56);
          v64 = sub_1D917826C();
          v66 = sub_1D8CFA924(v64, v65, &v124);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_1D8CEC000, v60, v61, "Can't fetch any episode for identifier: %{private}s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          v67 = v63;
          v29 = v107;
          MEMORY[0x1DA72CB90](v67, -1, -1);
          MEMORY[0x1DA72CB90](v62, -1, -1);

          (*(v35 + 8))(v55, v110);
        }

        else
        {

          (*(v35 + 8))(v55, v58);
        }

        sub_1D9178F4C();
        v91 = qword_1EDCD0730;
        v92 = v111;
        sub_1D9109454(v111);
        v93 = swift_allocObject();
        *(v93 + 16) = v105;
        v115 = v57;
        v116 = v59;
        LOBYTE(v117) = v114 & 1;
        sub_1D8DB5EC8(v57, v59, v114 & 1);
        v94 = sub_1D917826C();
        v95 = v101;
        *(v93 + 56) = MEMORY[0x1E69E6158];
        *(v93 + 64) = v95;
        *(v93 + 32) = v94;
        *(v93 + 40) = v96;
        sub_1D91772EC();

        v52 = v92;
        goto LABEL_22;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D910A730(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1D8E31320(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1D91792DC();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + 8 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1D8E31320((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12 & ~(v12 >> 63);
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1D8D9B144(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1D8D9B144(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D910A950(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate);
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D910A9BC()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_1D910AA6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177E0C();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E9C();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D910A730(a1);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = (v10 + 32);
    do
    {
      v17 = *v13++;
      v16 = v17;
      if (v17)
      {
        v18 = v16 == 1000000000000;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8E31320(0, *(v12 + 16) + 1, 1);
          v12 = aBlock[0];
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D8E31320((v14 > 1), v15 + 1, 1);
          v12 = aBlock[0];
        }

        *(v12 + 16) = v15 + 1;
        *(v12 + 8 * v15 + 32) = v16;
      }

      --v11;
    }

    while (v11);
  }

  v20 = sub_1D8FC0E84(v12);

  v22 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_lock);
  MEMORY[0x1EEE9AC00](v21);
  *(&v36 - 2) = v2;
  *(&v36 - 1) = v20;
  MEMORY[0x1EEE9AC00](v23);
  *(&v36 - 2) = sub_1D910B43C;
  *(&v36 - 1) = v24;
  os_unfair_lock_lock(v22 + 4);
  sub_1D8D40CF8(aBlock);
  os_unfair_lock_unlock(v22 + 4);

  v25 = aBlock[0];
  v26 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_refreshQueue);
  v27 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v28;
  v30[4] = v25;
  aBlock[4] = sub_1D910B458;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_92;
  v31 = _Block_copy(aBlock);
  swift_unknownObjectRetain_n();
  v32 = v37;
  sub_1D9177E4C();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v33 = v40;
  v34 = v42;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v32, v33, v31);
  _Block_release(v31);
  swift_unknownObjectRelease();
  (*(v41 + 8))(v33, v34);
  (*(v38 + 8))(v32, v39);
}

uint64_t sub_1D910AED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_currentlyAddingShows);
  *(a1 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_currentlyAddingShows) = a2;
  v7 = v5;
  swift_bridgeObjectRetain_n();
  result = sub_1D910B2B0(a2);
  *a3 = v7;
  return result;
}

uint64_t sub_1D910AF48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = sub_1D8D1B584(*(a3 + 16), 0);
      v8 = sub_1D8D1B614(&v9, v6 + 4, v5, a3);

      result = sub_1D8E358FC();
      if (v8 != v5)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    ObjectType = swift_getObjectType();
    (*(a2 + 8))(v6, ObjectType, a2);
  }

  return result;
}

id AddingPodcastStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AddingPodcastStateDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddingPodcastStateDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double AddingPodcastStateDataSource.state(for:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1BE70(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

void AddingPodcastStateDataSource.state(for:)(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 3;
}

uint64_t sub_1D910B2B0(uint64_t result)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1D910F060(v11))
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 48) + ((v3 << 9) | (8 * v10)));
      v12 = *v1;
      if (*(*v1 + 16))
      {
        v13 = *(v12 + 40);
        sub_1D9179DBC();
        MEMORY[0x1DA72B3C0](v11);
        v14 = sub_1D9179E1C();
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          break;
        }
      }

LABEL_6:
      result = sub_1D8D1A770(v18, v11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v17 = ~v15;
    while (*(*(v12 + 48) + 8 * v16) != v11)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= i)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

uint64_t DefaultPodcastStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1D910B590()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t (*sub_1D910B5CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D910B660;
}

uint64_t DefaultPodcastStateDataSource.__deallocating_deinit()
{
  sub_1D8EB07F4(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D910B6BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D910B8D8;
}

void sub_1D910B750(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t dispatch thunk of DefaultPodcastStateDataSource.state(for:)()
{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 136))();
}

uint64_t sub_1D910B8DC(uint64_t a1, char a2)
{
  sub_1D9179DBC();
  sub_1D9179DDC();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1DA72B3C0](a1);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D910B9FC()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v2 = *v0;
    sub_1D9179DDC();
    MEMORY[0x1DA72B3C0](v2);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D910BAF8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1D9179DBC();
  sub_1D9179DDC();
  if (v2 != 1)
  {
    MEMORY[0x1DA72B3C0](v1);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D910BBFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return sub_1D8FDCBC4(v5, v7);
}

uint64_t LibraryInterestStateDataSource.delegate.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D18F10(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

double sub_1D910BCA4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1B980(&v5);
  os_unfair_lock_unlock(v3 + 4);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1D910BD18(__int128 *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  v5 = *a1;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v2 + 4);
  sub_1D8D04F5C(v3);
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

uint64_t LibraryInterestStateDataSource.delegate.setter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F40(v2);
  os_unfair_lock_unlock(v1 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D910BE18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[7] = a3;
  result = swift_unknownObjectWeakAssign();
  if (a2)
  {
    if (a1[5])
    {
      v17 = a1[2];
      aBlock[4] = sub_1D910DB0C;
      aBlock[5] = a1;
      v22 = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8CF5F60;
      aBlock[3] = &block_descriptor_93;
      v21 = v11;
      v20 = _Block_copy(aBlock);

      sub_1D9177E4C();
      aBlock[7] = MEMORY[0x1E69E7CC0];
      v19 = sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D91792CC();
      v18 = v20;
      MEMORY[0x1DA72A400](0, v15, v10, v20);
      _Block_release(v18);
      (*(v7 + 8))(v10, v6);
      (*(v12 + 8))(v15, v21);
    }
  }

  return result;
}

void (*LibraryInterestStateDataSource.delegate.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v5 + 4);
  sub_1D8D1B980(&v7);
  *(v4 + 32) = 0;
  os_unfair_lock_unlock(v5 + 4);
  *v4 = v7;
  return sub_1D910C1F0;
}

void sub_1D910C1F0(__int128 **a1, char a2)
{
  v2 = *a1;
  v8 = *(*a1 + 2);
  v9 = **a1;
  v4 = *(*a1 + 3);
  v3 = *(*a1 + 4);
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v4 + 4);
    sub_1D8D04F5C(v5);
    os_unfair_lock_unlock(v4 + 4);
    swift_unknownObjectRelease();
    v6 = *v2;
  }

  else
  {
    os_unfair_lock_lock(v4 + 4);
    sub_1D8D04F5C(v7);
    os_unfair_lock_unlock(v4 + 4);
  }

  swift_unknownObjectRelease();
  free(v2);
}

void *LibraryInterestStateDataSource.__allocating_init(contextProvider:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D910D2D8(a1);
  swift_unknownObjectRelease();
  return v2;
}

void *LibraryInterestStateDataSource.init(contextProvider:)(void *a1)
{
  v1 = sub_1D910D2D8(a1);
  swift_unknownObjectRelease();
  return v1;
}

id sub_1D910C364@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 adamID];
  result = [a1 interestValue];
  if (v6 == 1.0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  if (v6 == 0.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == -1.0)
  {
    v8 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v8 << 8;
  return result;
}

uint64_t sub_1D910C3E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  if (v4)
  {
    if (!v6)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 1;
    }
  }

  return (sub_1D8FDCBC4(v5, v7) ^ 1) & 1;
}

uint64_t sub_1D910C44C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  v5 = sub_1D8FC1374(v4);

  *a2 = v5;
  return result;
}

uint64_t sub_1D910C494(uint64_t a1)
{
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 16);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1D9177F4C();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v12 = *(v1 + 24);
    MEMORY[0x1EEE9AC00](result);
    *(&v15 - 2) = v1;
    *(&v15 - 1) = a1;
    MEMORY[0x1EEE9AC00](v13);
    *(&v15 - 2) = sub_1D910DAF0;
    *(&v15 - 1) = v14;
    os_unfair_lock_lock(v12 + 4);
    sub_1D8DA3D30(&v16);
    os_unfair_lock_unlock(v12 + 4);
    sub_1D910C9F0(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D910C644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = MEMORY[0x1E69E7CD0];
  v5 = *(a1 + 64);
  if (*(a2 + 16) <= *(v5 + 16) >> 3)
  {
    v45 = *(a1 + 64);

    result = sub_1D910E7E8(a2);
    v7 = v5;
  }

  else
  {

    result = sub_1D90A582C(a2, v5);
    v7 = result;
  }

  v8 = 0;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_14:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(v7 + 48) + ((v8 << 10) | (16 * v14));
    if ((*(v15 + 8) & 1) == 0)
    {
      v16 = *v15;
      sub_1D8D1A770(&v45, *v15);
      swift_beginAccess();
      v17 = *(a1 + 72);
      v18 = sub_1D8D1AC44(v16);
      if (v19)
      {
        v20 = v18;
        v21 = *(a1 + 72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(a1 + 72);
        v46 = v23;
        *(a1 + 72) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1D8F85C98();
          v23 = v46;
        }

        sub_1D8F815BC(v20, v23);
        *(a1 + 72) = v23;
      }

      result = swift_endAccess();
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      v24 = *(a1 + 64);
      if (*(v24 + 16) <= *(a2 + 16) >> 3)
      {
        v45 = a2;

        sub_1D910E7E8(v24);

        v25 = v45;
      }

      else
      {

        v25 = sub_1D90A582C(v24, a2);
      }

      v26 = 0;
      v27 = 1 << *(v25 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(v25 + 56);
      v30 = (v27 + 63) >> 6;
      while (v29)
      {
LABEL_29:
        v32 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v33 = *(v25 + 48) + ((v26 << 10) | (16 * v32));
        if ((*(v33 + 8) & 1) == 0)
        {
          v34 = *v33;
          v35 = *(v33 + 9);
          sub_1D8D1A770(&v45, *v33);
          swift_beginAccess();
          v36 = *(a1 + 72);
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v46 = *(a1 + 72);
          *(a1 + 72) = 0x8000000000000000;
          sub_1D8F51520(v35, v34, v37);
          *(a1 + 72) = v46;
          result = swift_endAccess();
        }
      }

      while (1)
      {
        v31 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_37;
        }

        if (v31 >= v30)
        {
          break;
        }

        v29 = *(v25 + 56 + 8 * v31);
        ++v26;
        if (v29)
        {
          v26 = v31;
          goto LABEL_29;
        }
      }

      v38 = *(a1 + 64);
      *(a1 + 64) = a2;

      v39 = v47;
      v40 = *(v47 + 16);
      if (v40)
      {
        v41 = sub_1D8D1B584(*(v47 + 16), 0);
        v42 = sub_1D8D1B614(&v45, v41 + 4, v40, v39);
        result = sub_1D8D1B144();
        if (v42 != v40)
        {
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
LABEL_34:

        v41 = MEMORY[0x1E69E7CC0];
      }

      *a3 = v41;
      return result;
    }

    v11 = *(v7 + 56 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_1D910C9F0(uint64_t a1)
{
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + 16);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1D9177F4C();
  v11 = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    if (*(a1 + 16))
    {
      v12 = *(v1 + 24);
      MEMORY[0x1EEE9AC00](v11);
      *&v15[-16] = sub_1D8D1B9B0;
      *&v15[-8] = v1;
      os_unfair_lock_lock(v12 + 4);
      sub_1D8D1B980(&v16);
      os_unfair_lock_unlock(v12 + 4);
      if (v16)
      {
        v13 = *(&v16 + 1);
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(a1, ObjectType, v13);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D910CBA4(uint64_t a1)
{
  v1 = *(a1 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8F58B40(&v3);
  os_unfair_lock_unlock(v1 + 4);
  sub_1D910C9F0(v3);
}

uint64_t sub_1D910CC24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v6 = *(a1 + 72);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v8;
    return result;
  }

  v10[9] = v2;
  v8 = sub_1D8D1B584(v7, 0);
  v9 = sub_1D8DB8018(v10, v8 + 4, v7, v6);

  result = sub_1D8D1B144();
  if (v9 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall LibraryInterestStateDataSource.startObservingChanges()()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1D910CD70(uint64_t result)
{
  if (!*(result + 40))
  {
    v4 = *(result + 32);
    v1 = result;
    swift_allocObject();
    swift_weakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9A0, &qword_1D91B94D8);
    sub_1D8CF48EC(&qword_1ECAB0350, &qword_1ECABA9A0, &qword_1D91B94D8);
    v2 = sub_1D9177D9C();

    v3 = *(v1 + 40);
    *(v1 + 40) = v2;
  }

  return result;
}

uint64_t sub_1D910CE88(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D910C494(v1);
  }

  return result;
}

uint64_t LibraryInterestStateDataSource.state(for:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D910D918(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1D910CF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 72);
  if (*(v6 + 16) && (v7 = sub_1D8D1AC44(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);
  }

  else
  {
    v9 = 4;
  }

  *a3 = v9;
  return swift_endAccess();
}

uint64_t LibraryInterestStateDataSource.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_1D8EB07F4(v0 + 48);
  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return v0;
}

uint64_t LibraryInterestStateDataSource.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_1D8EB07F4(v0 + 48);
  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_1D910D098()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1D910D0F8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D1B980(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1D910D160()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
  return swift_unknownObjectRelease();
}

void (*sub_1D910D1D8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = LibraryInterestStateDataSource.delegate.modify(v2);
  return sub_1D90FEF80;
}

uint64_t sub_1D910D248()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D910DB48(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void *sub_1D910D2D8(void *a1)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9A8, &qword_1D91B94E0);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v35 = v32 - v6;
  v33 = sub_1D9178E0C();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9178D8C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1D9177E9C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v32[0] = "expectedInterestStatesByAdamID";
  v32[1] = v15;
  sub_1D9177E4C();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8090], v33);
  v1[2] = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v1[3] = v16;
  v1[5] = 0;
  v1[7] = 0;
  swift_unknownObjectWeakInit();
  v17 = MEMORY[0x1E69E7CC8];
  v1[8] = MEMORY[0x1E69E7CD0];
  v1[9] = v17;
  v18 = [objc_opt_self() truePredicate];
  v19 = [v34 importContext];
  v20 = v1[2];
  v21 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v22 = v20;
  v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v24 = [v21 initWithEntityName_];

  [v24 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v25 = sub_1D91785DC();
  [v24 setSortDescriptors_];

  [v24 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9B0, &qword_1D91B94E8);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;

  v26[14] = v27;
  v26[2] = 0xD00000000000001ELL;
  v26[3] = 0x80000001D91B9400;
  v26[4] = v24;
  v26[5] = v19;
  v26[6] = v22;
  v26[7] = sub_1D910C364;
  v26[8] = 0;
  v26[9] = sub_1D910C3E8;
  v26[10] = 0;
  v26[11] = sub_1D8D38B78;
  v26[12] = 0;
  v38 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9B8, &qword_1D91B94F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9C0, &qword_1D91B94F8);
  sub_1D8CF48EC(&qword_1ECAB1860, &qword_1ECABA9B8, &qword_1D91B94F0);
  v28 = v35;
  sub_1D9177B9C();

  sub_1D8CF48EC(&qword_1ECAB07D8, &qword_1ECABA9A8, &qword_1D91B94E0);
  v29 = v36;
  v30 = sub_1D9177B1C();
  (*(v37 + 8))(v28, v29);
  v2[4] = v30;
  return v2;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryInterestStateDataSource.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 10))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryInterestStateDataSource.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1D910DA94()
{
  result = qword_1ECAB1448;
  if (!qword_1ECAB1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1448);
  }

  return result;
}

uint64_t sub_1D910DB90()
{
  v1 = *v0;
  v2 = v0[1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  if (*(v0 + 24) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v3 = v0[2];
    sub_1D9179DDC();
    MEMORY[0x1DA72B3C0](v3);
  }

  v4 = v0[6];
  switch(v4)
  {
    case 2:
      v5 = 3;
      return MEMORY[0x1DA72B390](v5);
    case 1:
      v5 = 1;
      return MEMORY[0x1DA72B390](v5);
    case 0:
      v5 = 0;
      return MEMORY[0x1DA72B390](v5);
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = v0[8];
  v10 = v0[5];
  MEMORY[0x1DA72B390](2);
  sub_1D9179DDC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  return MEMORY[0x1DA72B3C0](v9);
}

uint64_t sub_1D910DC6C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  sub_1D9179DBC();
  sub_1D910DB90();
  return sub_1D9179E1C();
}

uint64_t sub_1D910DCC8()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_1D910DB90();
}

uint64_t sub_1D910DD0C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  sub_1D9179DBC();
  sub_1D910DB90();
  return sub_1D9179E1C();
}

BOOL sub_1D910DD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D9110788(v7, v9);
}

uint64_t sub_1D910DDC0(__int128 *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  v5 = *a1;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v2 + 4);
  sub_1D8D04F5C(v3);
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D910DE48()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D18F10(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1D910DEB0()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F40(v2);
  os_unfair_lock_unlock(v1 + 4);
  return swift_unknownObjectRelease();
}

void (*sub_1D910DF28(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v5 + 4);
  sub_1D8D1B980(&v7);
  *(v4 + 32) = 0;
  os_unfair_lock_unlock(v5 + 4);
  *v4 = v7;
  return sub_1D910E010;
}

void sub_1D910E010(__int128 **a1, char a2)
{
  v2 = *a1;
  v8 = *(*a1 + 2);
  v9 = **a1;
  v4 = *(*a1 + 3);
  v3 = *(*a1 + 4);
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v4 + 4);
    sub_1D8D04F5C(v5);
    os_unfair_lock_unlock(v4 + 4);
    swift_unknownObjectRelease();
    v6 = *v2;
  }

  else
  {
    os_unfair_lock_lock(v4 + 4);
    sub_1D8D04F5C(v7);
    os_unfair_lock_unlock(v4 + 4);
  }

  swift_unknownObjectRelease();
  free(v2);
}

void *LibraryPodcastStateDataSource.__allocating_init(contextProvider:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D8D10A70(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D910E150(uint64_t a1)
{
  v1 = *(a1 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D1B980(&v3);
  os_unfair_lock_unlock(v1 + 4);
  sub_1D8D1B714(v3, *(&v3 + 1));
}

uint64_t sub_1D910E1DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 80);
  v5 = *(v4 + 16);
  v14 = a2;
  if (v5)
  {
    v6 = sub_1D8D1B418(v5, 0);
    v7 = sub_1D8F0CAD8(&v13, v6 + 4, v5, v4);

    result = sub_1D8D1B144();
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_11;
    }

    a2 = v14;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v6;
  result = swift_beginAccess();
  v9 = *(a1 + 72);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v11 = sub_1D8D1B584(*(v9 + 16), 0);
  v12 = sub_1D8DB8018(&v13, v11 + 4, v10, v9);

  result = sub_1D8D1B144();
  if (v12 == v10)
  {
    a2 = v14;
LABEL_9:
    a2[1] = v11;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}