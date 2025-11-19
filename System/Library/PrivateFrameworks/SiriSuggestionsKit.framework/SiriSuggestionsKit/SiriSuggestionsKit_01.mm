uint64_t sub_1BF8CEAB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      v7 = v3 + 3;
      v8 = 0xE300000000000000;
      v10 = *(v4 - 1);
      v9 = *v4;
      v11 = 5459817;
      switch(*(v3 - 16))
      {
        case 1:
          v8 = 0xE500000000000000;
          v11 = 0x534F63616DLL;
          break;
        case 2:
          v8 = 0xE400000000000000;
          v11 = 1397716596;
          break;
        case 3:
          v8 = 0xE700000000000000;
          v11 = 0x534F6863746177;
          break;
        case 4:
          v8 = 0xE800000000000000;
          v11 = 0x534F6E6F69736976;
          break;
        case 5:
          v8 = 0xE700000000000000;
          v11 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v12 = 0xE300000000000000;
      v13 = 5459817;
      switch(*(v4 - 16))
      {
        case 1:
          v12 = 0xE500000000000000;
          v13 = 0x534F63616DLL;
          break;
        case 2:
          v12 = 0xE400000000000000;
          v13 = 1397716596;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v13 = 0x534F6863746177;
          break;
        case 4:
          v12 = 0xE800000000000000;
          v13 = 0x534F6E6F69736976;
          break;
        case 5:
          v12 = 0xE700000000000000;
          v13 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v11 == v13 && v8 == v12)
      {

        if (v6 != v10 || v5 != v9)
        {
          return 0;
        }
      }

      else
      {
        v15 = sub_1BF9B56D8();

        result = 0;
        if ((v15 & 1) == 0)
        {
          return result;
        }

        if (v6 != v10 || v5 != v9)
        {
          return result;
        }
      }

      v4 += 3;
      v3 = v7;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_1BF8CECDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1BF8D2068(v14, v11);
        sub_1BF8D2068(v15, v8);
        v17 = static SiriSuggestions.IntentQuery.== infix(_:_:)(v11, v8);
        sub_1BF8D20CC(v8);
        sub_1BF8D20CC(v11);
        if (!v17)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    return 0;
  }

  return v17;
}

uint64_t sub_1BF8CEE50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 56)
    {
      sub_1BF8D1F54(v3, v16);
      sub_1BF8D1F54(i, v14);
      v5 = v16[0] == v14[0] && v16[1] == v14[1];
      if (!v5 && (sub_1BF9B56D8() & 1) == 0)
      {
        break;
      }

      sub_1BF8D2004(&v17, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
      v6 = sub_1BF9B4B08();
      v8 = v7;
      sub_1BF8D2004(&v15, v13);
      if (v6 == sub_1BF9B4B08() && v8 == v9)
      {

        sub_1BF8D1FB0(v14);
        sub_1BF8D1FB0(v16);
      }

      else
      {
        v11 = sub_1BF9B56D8();

        sub_1BF8D1FB0(v14);
        sub_1BF8D1FB0(v16);
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }

    sub_1BF8D1FB0(v14);
    sub_1BF8D1FB0(v16);
  }

  return 0;
}

uint64_t VersionedInvocation.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  sub_1BF8D09B4(a1, *v1);
  if (!v3)
  {
    return sub_1BF9B57C8();
  }

  sub_1BF9B57C8();

  return sub_1BF8D0880(a1, v3);
}

uint64_t VersionedInvocation.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1BF9B57A8();
  sub_1BF8D09B4(v4, v2);
  sub_1BF9B57C8();
  if (v1)
  {
    sub_1BF8D0880(v4, v1);
  }

  return sub_1BF9B57E8();
}

uint64_t sub_1BF8CF0EC()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_1BF9B57A8();
  VersionedInvocation.hash(into:)(v3);
  return sub_1BF9B57E8();
}

double sub_1BF8CF138()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6380;
  v2 = qword_1EDBF3B28;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EDBF3B30;
  *(v1 + 40) = unk_1EDBF3B38;
  if (qword_1EDBF3AC8 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = byte_1EDBF3AD0;
  result = dbl_1EDBF3AD8[0];
  *(v1 + 64) = *dbl_1EDBF3AD8;
  qword_1EDBF2718 = v0;
  unk_1EDBF2720 = v1;
  return result;
}

double sub_1BF8CF288()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6380;
  v2 = qword_1EBDE81E0;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EBDEA518;
  *(v1 + 40) = unk_1EBDEA520;
  if (qword_1EDBF3AC8 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = byte_1EDBF3AD0;
  result = dbl_1EDBF3AD8[0];
  *(v1 + 64) = *dbl_1EDBF3AD8;
  qword_1EBDE80A0 = v0;
  unk_1EBDE80A8 = v1;
  return result;
}

double sub_1BF8CF3D8()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6380;
  v2 = qword_1EDBF3B08;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EDBF3B10;
  *(v1 + 40) = unk_1EDBF3B18;
  if (qword_1EDBF3AC8 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = byte_1EDBF3AD0;
  result = dbl_1EDBF3AD8[0];
  *(v1 + 64) = *dbl_1EDBF3AD8;
  qword_1EDBF26F8 = v0;
  unk_1EDBF2700 = v1;
  return result;
}

double sub_1BF8CF528()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6380;
  v2 = qword_1EBDE81F0;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EBDEA530;
  *(v1 + 40) = unk_1EBDEA538;
  if (qword_1EDBF3AC8 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = byte_1EDBF3AD0;
  result = dbl_1EDBF3AD8[0];
  *(v1 + 64) = *dbl_1EDBF3AD8;
  qword_1EBDE80C0 = v0;
  unk_1EBDE80C8 = v1;
  return result;
}

double sub_1BF8CF678()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6380;
  v2 = qword_1EDBF3AE8;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EDBF3AF0;
  *(v1 + 40) = unk_1EDBF3AF8;
  if (qword_1EDBF3AC8 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = byte_1EDBF3AD0;
  result = dbl_1EDBF3AD8[0];
  *(v1 + 64) = *dbl_1EDBF3AD8;
  qword_1EDBF26D8 = v0;
  unk_1EDBF26E0 = v1;
  return result;
}

double sub_1BF8CF7C8()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6370;
  v2 = qword_1EBDE8200;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EBDEA548;
  result = *&algn_1EBDEA549[7];
  *(v1 + 40) = *&algn_1EBDEA549[7];
  qword_1EBDE80E0 = v0;
  *algn_1EBDE80E8 = v1;
  return result;
}

double sub_1BF8CF8D0()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6380;
  v2 = qword_1EDBF3AE8;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EDBF3AF0;
  *(v1 + 40) = unk_1EDBF3AF8;
  if (qword_1EDBF3AC8 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = byte_1EDBF3AD0;
  result = dbl_1EDBF3AD8[0];
  *(v1 + 64) = *dbl_1EDBF3AD8;
  qword_1EBDE80F8 = v0;
  unk_1EBDE8100 = v1;
  return result;
}

double sub_1BF8CFA20()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6370;
  v2 = qword_1EBDE8208;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EBDEA560;
  result = dbl_1EBDEA568[0];
  *(v1 + 40) = *dbl_1EBDEA568;
  qword_1EBDE8110 = v0;
  *algn_1EBDE8118 = v1;
  return result;
}

double sub_1BF8CFB28()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6380;
  v2 = qword_1EBDE8208;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EBDEA560;
  *(v1 + 40) = *dbl_1EBDEA568;
  if (qword_1EBDE8228 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = byte_1EBDEA5A8;
  result = *&algn_1EBDEA5A9[7];
  *(v1 + 64) = *&algn_1EBDEA5A9[7];
  qword_1EBDE8128 = v0;
  unk_1EBDE8130 = v1;
  return result;
}

double sub_1BF8CFC78()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6370;
  v2 = qword_1EBDE8210;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EBDEA578;
  result = dbl_1EBDEA580[0];
  *(v1 + 40) = *dbl_1EBDEA580;
  qword_1EBDE8140 = v0;
  *algn_1EBDE8148 = v1;
  return result;
}

double sub_1BF8CFD80()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6370;
  v2 = qword_1EDBF3AC8;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EDBF3AD0;
  result = dbl_1EDBF3AD8[0];
  *(v1 + 40) = *dbl_1EDBF3AD8;
  qword_1EBDE8158 = v0;
  unk_1EBDE8160 = v1;
  return result;
}

double sub_1BF8CFE88()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6370;
  v2 = qword_1EBDE8220;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EBDEA590;
  result = dbl_1EBDEA598[0];
  *(v1 + 40) = *dbl_1EBDEA598;
  qword_1EBDE8170 = v0;
  *algn_1EBDE8178 = v1;
  return result;
}

double sub_1BF8CFF90()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF9B6370;
  v2 = qword_1EBDE8228;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = byte_1EBDEA5A8;
  result = *&algn_1EBDEA5A9[7];
  *(v1 + 40) = *&algn_1EBDEA5A9[7];
  qword_1EBDE8188 = v0;
  unk_1EBDE8190 = v1;
  return result;
}

uint64_t sub_1BF8D0098()
{
  if (qword_1EDBF2710 != -1)
  {
    swift_once();
  }

  qword_1EDBF26C0 = qword_1EDBF2718;
  *algn_1EDBF26C8 = unk_1EDBF2720;
}

uint64_t sub_1BF8D0134@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = *a3;
  *a4 = *a2;
  a4[1] = v7;
}

void sub_1BF8D01A0()
{
  v1 = *v0;
  sub_1BF9591CC();
  *v0 = v2;
}

void sub_1BF8D01C0()
{
  v1 = *v0;
  sub_1BF9591E0();
  *v0 = v2;
}

void sub_1BF8D01E0()
{
  v1 = *v0;
  sub_1BF9592B0();
  *v0 = v2;
}

void sub_1BF8D0200()
{
  v1 = *v0;
  sub_1BF95938C();
  *v0 = v2;
}

void sub_1BF8D0220()
{
  v1 = *v0;
  sub_1BF9593B0();
  *v0 = v2;
}

void sub_1BF8D0240()
{
  v1 = *v0;
  sub_1BF959494();
  *v0 = v2;
}

void sub_1BF8D0260()
{
  v1 = *v0;
  sub_1BF9595A0();
  *v0 = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BF8D02C8()
{
  result = qword_1EDBF4440;
  if (!qword_1EDBF4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4440);
  }

  return result;
}

unint64_t sub_1BF8D031C()
{
  result = qword_1EDBF4A08;
  if (!qword_1EDBF4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A08);
  }

  return result;
}

unint64_t sub_1BF8D0370()
{
  result = qword_1EBDE82B0;
  if (!qword_1EBDE82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE82B0);
  }

  return result;
}

unint64_t sub_1BF8D03C4()
{
  result = qword_1EDBF49E8;
  if (!qword_1EDBF49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49E8);
  }

  return result;
}

unint64_t sub_1BF8D0418()
{
  result = qword_1EDBF2C18[0];
  if (!qword_1EDBF2C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF2C18);
  }

  return result;
}

unint64_t sub_1BF8D046C()
{
  result = qword_1EBDE82C0;
  if (!qword_1EBDE82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE82C0);
  }

  return result;
}

unint64_t sub_1BF8D04C0()
{
  result = qword_1EBDE82C8;
  if (!qword_1EBDE82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE82C8);
  }

  return result;
}

unint64_t sub_1BF8D0514()
{
  result = qword_1EBDE82D0;
  if (!qword_1EBDE82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE82D0);
  }

  return result;
}

void sub_1BF8D0588()
{
  v1 = *v0;
  sub_1BF959688();
  *v0 = v2;
}

void sub_1BF8D05A8()
{
  v1 = *v0;
  sub_1BF9596AC();
  *v0 = v2;
}

void sub_1BF8D05C8()
{
  v1 = *v0;
  sub_1BF9596D0();
  *v0 = v2;
}

void sub_1BF8D05E8()
{
  v1 = *v0;
  sub_1BF9597A0();
  *v0 = v2;
}

void sub_1BF8D0608()
{
  v1 = *v0;
  sub_1BF959874();
  *v0 = v2;
}

void sub_1BF8D0628()
{
  v1 = *v0;
  sub_1BF959950();
  *v0 = v2;
}

void sub_1BF8D0648()
{
  v1 = *v0;
  sub_1BF959A20();
  *v0 = v2;
}

void sub_1BF8D0668()
{
  v1 = *v0;
  sub_1BF959C04();
  *v0 = v2;
}

void sub_1BF8D0688()
{
  v1 = *v0;
  sub_1BF959C28();
  *v0 = v2;
}

void sub_1BF8D06A8()
{
  v1 = *v0;
  sub_1BF959CFC();
  *v0 = v2;
}

void sub_1BF8D06C8()
{
  v1 = *v0;
  sub_1BF959DDC();
  *v0 = v2;
}

void sub_1BF8D06E8()
{
  v1 = *v0;
  sub_1BF959EAC();
  *v0 = v2;
}

void sub_1BF8D0708()
{
  v1 = *v0;
  sub_1BF959F78();
  *v0 = v2;
}

void sub_1BF8D0728()
{
  v1 = *v0;
  sub_1BF95A064();
  *v0 = v2;
}

void sub_1BF8D0748()
{
  v1 = *v0;
  sub_1BF95A130();
  *v0 = v2;
}

void sub_1BF8D0768()
{
  v1 = *v0;
  sub_1BF95A1FC();
  *v0 = v2;
}

void sub_1BF8D0788()
{
  v1 = *v0;
  sub_1BF95A2CC();
  *v0 = v2;
}

void sub_1BF8D07A8()
{
  v1 = *v0;
  sub_1BF95A2F0();
  *v0 = v2;
}

void sub_1BF8D07C8()
{
  v1 = *v0;
  sub_1BF95A314();
  *v0 = v2;
}

void sub_1BF8D07E8()
{
  v1 = *v0;
  sub_1BF95A3E8();
  *v0 = v2;
}

void sub_1BF8D0808()
{
  v1 = *v0;
  sub_1BF95A508();
  *v0 = v2;
}

void sub_1BF8D0828()
{
  v1 = *v0;
  sub_1BF95A5E0();
  *v0 = v2;
}

void sub_1BF8D0848(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_19_1();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1BF8D0880(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1BFB5EAC0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 16);
      v8 = *(v5 - 1);
      v7 = *v5;
      v5 += 3;
      sub_1BF9B4B48();

      MEMORY[0x1BFB5EAC0](v8);
      result = MEMORY[0x1BFB5EAC0](v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1BF8D09B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1BFB5EAC0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      switch(v7 >> 8)
      {
        case 2u:
          v8 = 0;
          goto LABEL_9;
        case 3u:
          v8 = 1;
          goto LABEL_9;
        case 4u:
          v8 = 2;
          goto LABEL_9;
        case 5u:
          v8 = 4;
          goto LABEL_9;
        case 6u:
          v8 = 5;
LABEL_9:
          result = MEMORY[0x1BFB5EAC0](v8);
          goto LABEL_10;
        default:
          MEMORY[0x1BFB5EAC0](3);
          if (v6 == 2)
          {
            v9 = 0;
            goto LABEL_16;
          }

          if (v6 == 3)
          {
            v9 = 1;
LABEL_16:
            MEMORY[0x1BFB5EAC0](v9);
            goto LABEL_18;
          }

          MEMORY[0x1BFB5EAC0](2);
          sub_1BF9B4B48();

LABEL_18:
          sub_1BF9B4B48();

LABEL_10:
          if (!--v3)
          {
            return result;
          }

          break;
      }
    }
  }

  return result;
}

unint64_t sub_1BF8D0B2C()
{
  result = qword_1EDBF4308;
  if (!qword_1EDBF4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4308);
  }

  return result;
}

unint64_t sub_1BF8D0B80()
{
  result = qword_1EDBF42F0;
  if (!qword_1EDBF42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF42F0);
  }

  return result;
}

unint64_t sub_1BF8D0BD4()
{
  result = qword_1EBDE8340;
  if (!qword_1EBDE8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8340);
  }

  return result;
}

unint64_t sub_1BF8D0C28()
{
  result = qword_1EBDE8348;
  if (!qword_1EBDE8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8348);
  }

  return result;
}

unint64_t sub_1BF8D0C7C()
{
  result = qword_1EDBF42E0;
  if (!qword_1EDBF42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF42E0);
  }

  return result;
}

unint64_t sub_1BF8D0CD4()
{
  result = qword_1EDBF3500;
  if (!qword_1EDBF3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3500);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BF8D0DA4()
{
  result = qword_1EBDE83F8;
  if (!qword_1EBDE83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE83F8);
  }

  return result;
}

unint64_t sub_1BF8D0E2C()
{
  result = qword_1EBDE8410;
  if (!qword_1EBDE8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8410);
  }

  return result;
}

uint64_t sub_1BF8D0EB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF8D0F08()
{
  result = qword_1EBDE8428;
  if (!qword_1EBDE8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8428);
  }

  return result;
}

unint64_t sub_1BF8D0F60()
{
  result = qword_1EBDE8430;
  if (!qword_1EBDE8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8430);
  }

  return result;
}

unsigned __int16 *getEnumTagSinglePayload for InvocationType(unsigned __int16 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
LABEL_18:
    v6 = *(result + 1);
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 6)
    {
      return (v7 - 5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 65286;
    if (a2 + 65286 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(result + 2);
        if (!*(result + 2))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 16)) - 65286);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for InvocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65286;
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *(result + 1) = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF8D1148(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF8D1160(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BF8D119C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BF8D11BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF8D11FC(uint64_t result, int a2, int a3)
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

uint64_t _s18SiriSuggestionsKit20VersionedInvocationsOwet_0_0(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_27(a1);
}

_BYTE *_s18SiriSuggestionsKit20VersionedInvocationsOwst_0_0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionsOSType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InvocationType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF8D1514(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF8D1614()
{
  result = qword_1EBDE8438;
  if (!qword_1EBDE8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8438);
  }

  return result;
}

unint64_t sub_1BF8D166C()
{
  result = qword_1EBDE8440;
  if (!qword_1EBDE8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8440);
  }

  return result;
}

unint64_t sub_1BF8D16C4()
{
  result = qword_1EBDE8448;
  if (!qword_1EBDE8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8448);
  }

  return result;
}

unint64_t sub_1BF8D171C()
{
  result = qword_1EBDE8450;
  if (!qword_1EBDE8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8450);
  }

  return result;
}

unint64_t sub_1BF8D1774()
{
  result = qword_1EDBF4C18;
  if (!qword_1EDBF4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C18);
  }

  return result;
}

unint64_t sub_1BF8D17CC()
{
  result = qword_1EDBF4C20;
  if (!qword_1EDBF4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C20);
  }

  return result;
}

unint64_t sub_1BF8D1824()
{
  result = qword_1EDBF4BE8;
  if (!qword_1EDBF4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BE8);
  }

  return result;
}

unint64_t sub_1BF8D187C()
{
  result = qword_1EDBF4BF0;
  if (!qword_1EDBF4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BF0);
  }

  return result;
}

unint64_t sub_1BF8D18D4()
{
  result = qword_1EDBF4BC8;
  if (!qword_1EDBF4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BC8);
  }

  return result;
}

unint64_t sub_1BF8D192C()
{
  result = qword_1EDBF4BD0;
  if (!qword_1EDBF4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BD0);
  }

  return result;
}

unint64_t sub_1BF8D1984()
{
  result = qword_1EDBF4BF8;
  if (!qword_1EDBF4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BF8);
  }

  return result;
}

unint64_t sub_1BF8D19DC()
{
  result = qword_1EDBF4C00;
  if (!qword_1EDBF4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C00);
  }

  return result;
}

unint64_t sub_1BF8D1A34()
{
  result = qword_1EDBF4458;
  if (!qword_1EDBF4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4458);
  }

  return result;
}

unint64_t sub_1BF8D1A8C()
{
  result = qword_1EDBF4460;
  if (!qword_1EDBF4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4460);
  }

  return result;
}

unint64_t sub_1BF8D1AE4()
{
  result = qword_1EDBF4448;
  if (!qword_1EDBF4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4448);
  }

  return result;
}

unint64_t sub_1BF8D1B3C()
{
  result = qword_1EDBF4450;
  if (!qword_1EDBF4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4450);
  }

  return result;
}

unint64_t sub_1BF8D1B94()
{
  result = qword_1EDBF4418;
  if (!qword_1EDBF4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4418);
  }

  return result;
}

unint64_t sub_1BF8D1BEC()
{
  result = qword_1EDBF4420;
  if (!qword_1EDBF4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4420);
  }

  return result;
}

unint64_t sub_1BF8D1C44()
{
  result = qword_1EDBF43F8;
  if (!qword_1EDBF43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF43F8);
  }

  return result;
}

unint64_t sub_1BF8D1C9C()
{
  result = qword_1EDBF4400;
  if (!qword_1EDBF4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4400);
  }

  return result;
}

unint64_t sub_1BF8D1CF4()
{
  result = qword_1EDBF43E8;
  if (!qword_1EDBF43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF43E8);
  }

  return result;
}

unint64_t sub_1BF8D1D4C()
{
  result = qword_1EDBF43F0;
  if (!qword_1EDBF43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF43F0);
  }

  return result;
}

unint64_t sub_1BF8D1DA4()
{
  result = qword_1EDBF49F8;
  if (!qword_1EDBF49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49F8);
  }

  return result;
}

unint64_t sub_1BF8D1DFC()
{
  result = qword_1EDBF4410;
  if (!qword_1EDBF4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4410);
  }

  return result;
}

unint64_t sub_1BF8D1E54()
{
  result = qword_1EDBF4428;
  if (!qword_1EDBF4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4428);
  }

  return result;
}

unint64_t sub_1BF8D1EAC()
{
  result = qword_1EDBF4430;
  if (!qword_1EDBF4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4430);
  }

  return result;
}

unint64_t sub_1BF8D1F00()
{
  result = qword_1EDBF4300;
  if (!qword_1EDBF4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4300);
  }

  return result;
}

uint64_t sub_1BF8D2004(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BF8D2068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF8D20CC(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF8D2128(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return sub_1BF9B56D8();
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return sub_1BF9B52F8();
}

uint64_t OUTLINED_FUNCTION_38_0()
{
  v2 = *(v0 - 104);

  return sub_1BF9B5598();
}

uint64_t sub_1BF8D22A4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1BF93E7FC(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 2 * v7 + 32), (a1 + 32), 2 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BF8D2374(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_3(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5(v4, 1);
  v7 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  OUTLINED_FUNCTION_7_1();
  if (v11 != v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = OUTLINED_FUNCTION_8_1(v7 + v10);
  memcpy(v12, v13, v14);

  if (!v1)
  {
LABEL_8:
    *v2 = v7;
    return;
  }

  v15 = *(v7 + 16);
  v6 = __OFADD__(v15, v1);
  v16 = v15 + v1;
  if (!v6)
  {
    *(v7 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BF8D2464(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BF93F2CC(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  OUTLINED_FUNCTION_7_1();
  if (v9 != v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_1(v5 + 120 * v8);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v10 = __OFADD__(v11, v3);
  v12 = v11 + v3;
  if (!v10)
  {
    *(v5 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BF8D2540(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_3(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  v5(v4, 1);
  v11 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  OUTLINED_FUNCTION_7_1();
  if (v14 != v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v9);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v11;
    return;
  }

  v15 = *(v11 + 16);
  v8 = __OFADD__(v15, v1);
  v16 = v15 + v1;
  if (!v8)
  {
    *(v11 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t ObservedActionDTO.actionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ObservedActionDTO.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 56);
  *(a1 + 32) = v6;
  return sub_1BF8D2668(v2, v3, v4, v5, v6);
}

uint64_t sub_1BF8D2668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFCu)
  {
    return sub_1BF8C0D00(a1, a2, a3, a4, a5);
  }

  return a1;
}

__n128 ObservedActionDTO.init(actionId:observedTS:type:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  result = *a3;
  v7 = *(a3 + 16);
  *(a4 + 24) = *a3;
  *(a4 + 40) = v7;
  *(a4 + 56) = v5;
  return result;
}

uint64_t ObservedActionDTO.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 56);
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0x64496E6F69746361, 0xEA0000000000203ALL);
  MEMORY[0x1BFB5DE90](v1, v2);
  MEMORY[0x1BFB5DE90](0x76726573626F202CLL, 0xEE00203A53546465);
  sub_1BF9B4F58();
  MEMORY[0x1BFB5DE90](0x203A65707974202CLL, 0xE800000000000000);
  v8 = *(v0 + 5);
  v7 = *(v0 + 3);
  v5 = ObservedActionType.description.getter();
  MEMORY[0x1BFB5DE90](v5);

  return 0;
}

uint64_t static ObservedActionDTO.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v14 = *(a2 + 56);
  v37 = *(a1 + 24);
  if (v13)
  {
    if (v2 != v8)
    {
      v15 = 0;
      return v15 & 1;
    }

    goto LABEL_9;
  }

  v15 = 0;
  if (sub_1BF9B56D8())
  {
    v3 = v37;
    if (v2 == v8)
    {
LABEL_9:
      v40[0] = v3;
      v40[1] = v4;
      v40[2] = v5;
      v40[3] = v6;
      v41 = v7;
      v38[0] = v9;
      v38[1] = v10;
      v38[2] = v11;
      v38[3] = v12;
      v39 = v14;
      OUTLINED_FUNCTION_13_2();
      sub_1BF8D2668(v16, v17, v18, v19, v20);
      v21 = OUTLINED_FUNCTION_10_5();
      sub_1BF8D2668(v21, v22, v23, v24, v25);
      v15 = static ObservedActionType.== infix(_:_:)(v40, v38);
      v26 = OUTLINED_FUNCTION_10_5();
      sub_1BF8D4184(v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_13_2();
      sub_1BF8D4184(v31, v32, v33, v34, v35);
    }
  }

  return v15 & 1;
}

uint64_t static ObservedActionType.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = *(a2 + 32);
  if (v5 == 253)
  {
    if (v10 == 253)
    {
      v24 = OUTLINED_FUNCTION_1_0();
      sub_1BF8D4184(v24, v25, v26, v27, 253);
      v15 = OUTLINED_FUNCTION_2_4();
      v19 = -3;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v5 == 254)
  {
    if (v10 == 254)
    {
      v20 = OUTLINED_FUNCTION_1_0();
      sub_1BF8D4184(v20, v21, v22, v23, 254);
      v15 = OUTLINED_FUNCTION_2_4();
      v19 = -2;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v5 != 255)
  {
    if (v10 <= 0xFC)
    {
      *&v90 = *a1;
      *(&v90 + 1) = v2;
      v91 = v4;
      v92 = v3;
      v93 = v5;
      *&v94 = v7;
      *(&v94 + 1) = v6;
      v95 = v9;
      v96 = v8;
      v97 = v10;
      v46 = OUTLINED_FUNCTION_2_4();
      sub_1BF8D2668(v46, v47, v48, v49, v10);
      v50 = OUTLINED_FUNCTION_1_0();
      sub_1BF8D2668(v50, v51, v52, v53, v5);
      v54 = OUTLINED_FUNCTION_2_4();
      sub_1BF8D2668(v54, v55, v56, v57, v10);
      v58 = OUTLINED_FUNCTION_1_0();
      sub_1BF8D2668(v58, v59, v60, v61, v5);
      v88 = v8;
      v28 = sub_1BF8CA80C(&v90, &v94);
      v62 = OUTLINED_FUNCTION_1_0();
      v66 = sub_1BF8D4184(v62, v63, v64, v65, v5);
      v74 = OUTLINED_FUNCTION_11_5(v66, v67, v68, v69, v70, v71, v72, v73, v86, v88);
      OUTLINED_FUNCTION_11_5(v74, v75, v76, v77, v78, v79, v80, v81, v87, v89);
      v82 = OUTLINED_FUNCTION_1_0();
      sub_1BF8D4184(v82, v83, v84, v85, v5);
      return v28 & 1;
    }

    goto LABEL_12;
  }

  if (v10 != 255)
  {
LABEL_12:
    v29 = OUTLINED_FUNCTION_2_4();
    sub_1BF8D2668(v29, v30, v31, v32, v10);
    v33 = OUTLINED_FUNCTION_1_0();
    sub_1BF8D2668(v33, v34, v35, v36, v5);
    v37 = OUTLINED_FUNCTION_1_0();
    sub_1BF8D4184(v37, v38, v39, v40, v5);
    v41 = OUTLINED_FUNCTION_2_4();
    sub_1BF8D4184(v41, v42, v43, v44, v10);
    v28 = 0;
    return v28 & 1;
  }

  v11 = OUTLINED_FUNCTION_1_0();
  sub_1BF8D4184(v11, v12, v13, v14, 255);
  v15 = OUTLINED_FUNCTION_2_4();
  v19 = -1;
LABEL_10:
  sub_1BF8D4184(v15, v16, v17, v18, v19);
  v28 = 1;
  return v28 & 1;
}

uint64_t ObservedActionDTO.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v8 = *(v0 + 5);
  v9 = *(v0 + 3);
  v4 = *(v0 + 56);
  sub_1BF9B4B48();
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x1BFB5EAE0](*&v5);
  switch(v4)
  {
    case 253:
      v6 = 3;
      return MEMORY[0x1BFB5EAC0](v6);
    case 254:
      v6 = 1;
      return MEMORY[0x1BFB5EAC0](v6);
    case 255:
      v6 = 0;
      return MEMORY[0x1BFB5EAC0](v6);
  }

  MEMORY[0x1BFB5EAC0](2);
  DeliveryVehicle.rawValue.getter();
  OUTLINED_FUNCTION_29();
}

uint64_t ObservedActionDTO.hashValue.getter()
{
  sub_1BF9B57A8();
  ObservedActionDTO.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8D2BBC()
{
  sub_1BF9B57A8();
  ObservedActionDTO.hash(into:)();
  return sub_1BF9B57E8();
}

void *static ObservedActionType.allCases.getter()
{
  v0 = static DeliveryVehicle.allCases.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1BF8D0568(0, v1, 0);
    v2 = v14;
    v3 = (v0 + 64);
    do
    {
      v4 = *(v3 - 4);
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      sub_1BF8C0D00(v4, v5, v6, v7, *v3);
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        sub_1BF8D0568(v9 > 1, v10 + 1, 1);
        v11 = v10 + 1;
      }

      v3 += 40;
      *(v14 + 16) = v11;
      v12 = v14 + 40 * v10;
      *(v12 + 32) = v4;
      *(v12 + 40) = v5;
      *(v12 + 48) = v6;
      *(v12 + 56) = v7;
      *(v12 + 64) = v8;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF8BDF8C(v2);
  return &unk_1F3EF5318;
}

unint64_t ObservedActionType.description.getter()
{
  v1 = *(v0 + 32);
  switch(v1)
  {
    case 253:
      return 0xD00000000000001ALL;
    case 255:
      v2 = 1769105779;
      return v2 | 0x6974634100000000;
    case 254:
      v2 = 1802398060;
      return v2 | 0x6974634100000000;
  }

  sub_1BF9B5288();

  v6 = v0[1];
  v5 = *v0;
  v4 = DeliveryVehicle.rawValue.getter();
  MEMORY[0x1BFB5DE90](v4);

  MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1BF8D2E64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974634169726973 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697463416B6E696CLL && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001BF9CAE40 == a2;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001ALL && 0x80000001BF9CAE00 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1BF8D2FD8(char a1)
{
  result = 0x6974634169726973;
  switch(a1)
  {
    case 1:
      result = 0x697463416B6E696CLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF8D306C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E697375 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8D30FC()
{
  v1 = *v0;
  sub_1BF9B57A8();
  sub_1BF8C4E50(v3, v1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8D3148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8D2E64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8D3170@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF8D2FD0();
  *a1 = result;
  return result;
}

uint64_t sub_1BF8D3198(uint64_t a1)
{
  v2 = sub_1BF8D419C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8D31D4(uint64_t a1)
{
  v2 = sub_1BF8D419C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8D3210(uint64_t a1)
{
  v2 = sub_1BF8D42EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8D324C(uint64_t a1)
{
  v2 = sub_1BF8D42EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8D3288(uint64_t a1)
{
  v2 = sub_1BF8D4340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8D32C4(uint64_t a1)
{
  v2 = sub_1BF8D4340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8D3304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8D306C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8D3330(uint64_t a1)
{
  v2 = sub_1BF8D4244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8D336C(uint64_t a1)
{
  v2 = sub_1BF8D4244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8D33A8(uint64_t a1)
{
  v2 = sub_1BF8D41F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8D33E4(uint64_t a1)
{
  v2 = sub_1BF8D41F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObservedActionType.encode(to:)(void *a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8770, &qword_1BF9B73E0);
  OUTLINED_FUNCTION_1(v57);
  v55 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v53 = v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8778, &qword_1BF9B73E8);
  OUTLINED_FUNCTION_1(v58);
  v56 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v54 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8780, &qword_1BF9B73F0);
  v14 = OUTLINED_FUNCTION_1(v13);
  v51 = v15;
  v52 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8788, &qword_1BF9B73F8);
  OUTLINED_FUNCTION_1(v21);
  v50 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8790, &qword_1BF9B7400);
  v29 = OUTLINED_FUNCTION_1(v28);
  v59 = v30;
  v60 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  v34 = *v1;
  v48 = v1[1];
  v49 = v34;
  v35 = *(v1 + 32);
  v36 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1BF8D419C();
  sub_1BF9B5898();
  switch(v35)
  {
    case 253:
      LOBYTE(v61) = 3;
      sub_1BF8D41F0();
      v41 = v53;
      OUTLINED_FUNCTION_15_6();
      (*(v55 + 8))(v41, v57);
      goto LABEL_7;
    case 254:
      LOBYTE(v61) = 1;
      sub_1BF8D42EC();
      OUTLINED_FUNCTION_15_6();
      (*(v51 + 8))(v20, v52);
LABEL_7:
      v42 = OUTLINED_FUNCTION_9_1();
      return v43(v42, v36);
    case 255:
      LOBYTE(v61) = 0;
      sub_1BF8D4340();
      v37 = v60;
      sub_1BF9B5598();
      (*(v50 + 8))(v27, v21);
      v38 = OUTLINED_FUNCTION_9_1();
      v40 = v37;
      break;
    default:
      LOBYTE(v61) = 2;
      sub_1BF8D4244();
      v45 = v54;
      v46 = v60;
      sub_1BF9B5598();
      v61 = v49;
      v62 = v48;
      v63 = v35;
      sub_1BF8D4298();
      v47 = v58;
      sub_1BF9B5638();
      (*(v56 + 8))(v45, v47);
      v38 = OUTLINED_FUNCTION_9_1();
      v40 = v46;
      break;
  }

  return v39(v38, v40);
}

uint64_t ObservedActionType.hash(into:)()
{
  v1 = *(v0 + 32);
  switch(v1)
  {
    case 253:
      v2 = 3;
      return MEMORY[0x1BFB5EAC0](v2);
    case 254:
      v2 = 1;
      return MEMORY[0x1BFB5EAC0](v2);
    case 255:
      v2 = 0;
      return MEMORY[0x1BFB5EAC0](v2);
  }

  MEMORY[0x1BFB5EAC0](2);
  v5 = v0[1];
  v4 = *v0;
  DeliveryVehicle.rawValue.getter();
  OUTLINED_FUNCTION_29();
}

uint64_t ObservedActionType.hashValue.getter()
{
  v4 = v0[1];
  v5 = *v0;
  v1 = *(v0 + 32);
  sub_1BF9B57A8();
  switch(v1)
  {
    case 253:
      v2 = 3;
      break;
    case 254:
      v2 = 1;
      break;
    case 255:
      v2 = 0;
      break;
    default:
      MEMORY[0x1BFB5EAC0](2);
      DeliveryVehicle.rawValue.getter();
      sub_1BF9B4B48();

      return sub_1BF9B57E8();
  }

  MEMORY[0x1BFB5EAC0](v2);
  return sub_1BF9B57E8();
}

uint64_t ObservedActionType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE87C8, &qword_1BF9B7408);
  v80 = OUTLINED_FUNCTION_1(v3);
  v81 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v82 = v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE87D0, &qword_1BF9B7410);
  OUTLINED_FUNCTION_1(v87);
  v83 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v86 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE87D8, &qword_1BF9B7418);
  v15 = OUTLINED_FUNCTION_1(v14);
  v78 = v16;
  v79 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE87E0, &qword_1BF9B7420);
  OUTLINED_FUNCTION_1(v22);
  v77 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE87E8, &unk_1BF9B7428);
  OUTLINED_FUNCTION_1(v29);
  v85 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v72 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8D419C();
  v37 = v91;
  sub_1BF9B5868();
  if (v37)
  {
    goto LABEL_8;
  }

  v74 = v22;
  v75 = v28;
  v76 = v21;
  v39 = v86;
  v38 = v87;
  v91 = a1;
  v40 = sub_1BF9B5568();
  result = sub_1BF8D21BC(v40, 0);
  if (v43 == v44 >> 1)
  {
LABEL_7:
    v56 = sub_1BF9B5308();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v58 = &type metadata for ObservedActionType;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_3_1();
    v61(v60);
    a1 = v91;
LABEL_8:
    v62 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  if (v43 < (v44 >> 1))
  {
    v73 = *(v42 + v43);
    sub_1BF8D21AC(v43 + 1);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 == v48 >> 1)
    {
      v50 = v83;
      v49 = v84;
      switch(v73)
      {
        case 1:
          LOBYTE(v88) = 1;
          sub_1BF8D42EC();
          v67 = v76;
          OUTLINED_FUNCTION_6_4();
          swift_unknownObjectRelease();
          (*(v78 + 8))(v67, v79);
          v69 = OUTLINED_FUNCTION_3_1();
          v70(v69);
          v54 = 0uLL;
          v55 = -2;
          goto LABEL_13;
        case 2:
          LOBYTE(v88) = 2;
          sub_1BF8D4244();
          v63 = v39;
          OUTLINED_FUNCTION_6_4();
          sub_1BF8D4394();
          sub_1BF9B5558();
          v68 = v85;
          swift_unknownObjectRelease();
          (*(v50 + 8))(v63, v38);
          (*(v68 + 8))(v35, v29);
          v54 = v88;
          v71 = v89;
          v55 = v90;
          v49 = v84;
          goto LABEL_14;
        case 3:
          LOBYTE(v88) = 3;
          sub_1BF8D41F0();
          v64 = v82;
          OUTLINED_FUNCTION_6_4();
          swift_unknownObjectRelease();
          (*(v81 + 8))(v64, v80);
          v65 = OUTLINED_FUNCTION_3_1();
          v66(v65);
          v54 = 0uLL;
          v55 = -3;
          goto LABEL_13;
        default:
          LOBYTE(v88) = 0;
          sub_1BF8D4340();
          v51 = v75;
          OUTLINED_FUNCTION_6_4();
          swift_unknownObjectRelease();
          (*(v77 + 8))(v51, v74);
          v52 = OUTLINED_FUNCTION_3_1();
          v53(v52);
          v54 = 0uLL;
          v55 = -1;
LABEL_13:
          v71 = 0uLL;
LABEL_14:
          *v49 = v54;
          *(v49 + 16) = v71;
          *(v49 + 32) = v55;
          v62 = v91;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_1(v62);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF8D4108()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1BF9B57A8();
  ObservedActionType.hash(into:)();
  return sub_1BF9B57E8();
}

void *sub_1BF8D4158@<X0>(void *a1@<X8>)
{
  result = static ObservedActionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BF8D4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFCu)
  {
    return sub_1BF8C0CB8(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_1BF8D419C()
{
  result = qword_1EBDE8798;
  if (!qword_1EBDE8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8798);
  }

  return result;
}

unint64_t sub_1BF8D41F0()
{
  result = qword_1EBDE87A0;
  if (!qword_1EBDE87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE87A0);
  }

  return result;
}

unint64_t sub_1BF8D4244()
{
  result = qword_1EBDE87A8;
  if (!qword_1EBDE87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE87A8);
  }

  return result;
}

unint64_t sub_1BF8D4298()
{
  result = qword_1EBDE87B0;
  if (!qword_1EBDE87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE87B0);
  }

  return result;
}

unint64_t sub_1BF8D42EC()
{
  result = qword_1EBDE87B8;
  if (!qword_1EBDE87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE87B8);
  }

  return result;
}

unint64_t sub_1BF8D4340()
{
  result = qword_1EBDE87C0;
  if (!qword_1EBDE87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE87C0);
  }

  return result;
}

unint64_t sub_1BF8D4394()
{
  result = qword_1EBDE87F0;
  if (!qword_1EBDE87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE87F0);
  }

  return result;
}

unint64_t sub_1BF8D43EC()
{
  result = qword_1EDBF2F28[0];
  if (!qword_1EDBF2F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF2F28);
  }

  return result;
}

unint64_t sub_1BF8D4444()
{
  result = qword_1EDBF2B48[0];
  if (!qword_1EDBF2B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF2B48);
  }

  return result;
}

unint64_t sub_1BF8D449C()
{
  result = qword_1EBDE87F8;
  if (!qword_1EBDE87F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8800, &qword_1BF9B7558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE87F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit18ObservedActionTypeO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BF8D4530(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF8D4570(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF8D45D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 > 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF8D4618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -3 - a2;
    }
  }

  return result;
}

uint64_t sub_1BF8D4668(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 32) = -a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObservedActionType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ObservedActionType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObservedActionType.SuggestionActionCodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ObservedActionType.SuggestionActionCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BF8D4938()
{
  result = qword_1EBDE8808;
  if (!qword_1EBDE8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8808);
  }

  return result;
}

unint64_t sub_1BF8D4990()
{
  result = qword_1EBDE8810;
  if (!qword_1EBDE8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8810);
  }

  return result;
}

unint64_t sub_1BF8D49E8()
{
  result = qword_1EBDE8818;
  if (!qword_1EBDE8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8818);
  }

  return result;
}

unint64_t sub_1BF8D4A40()
{
  result = qword_1EBDE8820;
  if (!qword_1EBDE8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8820);
  }

  return result;
}

unint64_t sub_1BF8D4A98()
{
  result = qword_1EBDE8828;
  if (!qword_1EBDE8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8828);
  }

  return result;
}

unint64_t sub_1BF8D4AF0()
{
  result = qword_1EBDE8830;
  if (!qword_1EBDE8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8830);
  }

  return result;
}

unint64_t sub_1BF8D4B48()
{
  result = qword_1EBDE8838;
  if (!qword_1EBDE8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8838);
  }

  return result;
}

unint64_t sub_1BF8D4BA0()
{
  result = qword_1EBDE8840;
  if (!qword_1EBDE8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8840);
  }

  return result;
}

unint64_t sub_1BF8D4BF8()
{
  result = qword_1EBDE8848;
  if (!qword_1EBDE8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8848);
  }

  return result;
}

unint64_t sub_1BF8D4C50()
{
  result = qword_1EBDE8850;
  if (!qword_1EBDE8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8850);
  }

  return result;
}

unint64_t sub_1BF8D4CA8()
{
  result = qword_1EBDE8858;
  if (!qword_1EBDE8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8858);
  }

  return result;
}

unint64_t sub_1BF8D4D00()
{
  result = qword_1EBDE8860;
  if (!qword_1EBDE8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8860);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_1BF9B54A8();
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1BF8D4184(v12, v11, v10, a10, v13);
}

uint64_t sub_1BF8D4E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = a4();
  v12 = swift_allocObject();
  v12[3] = a2;
  v12[4] = a3;
  v12[2] = a1;
  a6[3] = v11;
  a6[4] = a5;
  *a6 = v12;
}

_BYTE *storeEnumTagSinglePayload for Resolvers(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BF8D4F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_2();
}

void sub_1BF8D4F84()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[11] + 32);
  v0[12] = v1;
  v2 = *(v1 + 16);
  v0[13] = v2;
  v0[14] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_1BF8D2004(v1 + 32, (v0 + 2));
      v3 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_0_1();
      v12 = v4 + *v4;
      v6 = *(v5 + 4);
      v7 = swift_task_alloc();
      v0[15] = v7;
      *v7 = v0;
      v8 = OUTLINED_FUNCTION_1_1(v7);

      v9(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
    v11 = MEMORY[0x1E69E7CC0];

    v10(v11);
  }
}

uint64_t sub_1BF8D50D0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  v3 = *(v1 + 120);
  v6 = *v0;
  *(v2 + 128) = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1BF8D51D0, 0, 0);
}

uint64_t sub_1BF8D51D0()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[16] + 16) || (v1 = v0[14], result = , v3 = v1 + 1, v0[14] = v1 + 1, v1 + 1 == v0[13]))
  {
    OUTLINED_FUNCTION_4();

    return v4();
  }

  else
  {
    v5 = v0[12];
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1BF8D2004(v5 + 40 * v3 + 32, (v0 + 2));
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_0_1();
      v13 = v7 + *v7;
      v9 = *(v8 + 4);
      v10 = swift_task_alloc();
      v0[15] = v10;
      *v10 = v0;
      v11 = OUTLINED_FUNCTION_1_1();

      return v12(v11);
    }
  }

  return result;
}

uint64_t sub_1BF8D533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF8D5C68;

  return sub_1BF8D4F68(a1, a2, a3, a4);
}

uint64_t sub_1BF8D53FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF8D5418()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(*(v0 + 168) + 32);
  sub_1BF8D2004(*(v0 + 144), v0 + 16);
  sub_1BF8D2004(v2, v0 + 56);
  sub_1BF8D2004(v1, v0 + 96);
  v5 = swift_allocObject();
  *(v0 + 176) = v5;
  *(v5 + 16) = v3;
  sub_1BF8C2C9C((v0 + 16), v5 + 24);
  sub_1BF8C2C9C((v0 + 56), v5 + 64);
  sub_1BF8C2C9C((v0 + 96), v5 + 104);

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_1BF8D5568;

  return (sub_1BF8E90F0)(v4, 0, 0, 0, &unk_1BF9B7D30, v5);
}

void sub_1BF8D5568(uint64_t a1)
{
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  v6 = *(v4 + 184);
  v7 = *v2;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v1)
  {
  }

  else
  {
    v9 = *(v5 + 176);

    v10 = *(v7 + 8);

    v10(a1);
  }
}

uint64_t sub_1BF8D5698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF8D56C0, 0, 0);
}

uint64_t sub_1BF8D56C0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_0_1();
  v13 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1BF8D57D8;
  v8 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v10 = v0[4];

  return v13(v11, v10, v8, v9, v2, v3);
}

uint64_t sub_1BF8D57D8()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 56);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  OUTLINED_FUNCTION_4();

  return v7(v2);
}

uint64_t sub_1BF8D58C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1BF8D58F0()
{
  sub_1BF8D58C8();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF8D5924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF8D59E4;

  return sub_1BF8D53FC(a1, a2, a3, a4);
}

uint64_t sub_1BF8D59E4()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  OUTLINED_FUNCTION_4();

  return v7(v2);
}

uint64_t sub_1BF8D5ACC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8D5B7C;

  return sub_1BF8D5698(a1, v4, v1 + 24, v1 + 64, v1 + 104);
}

uint64_t sub_1BF8D5B7C()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  OUTLINED_FUNCTION_4();

  return v7(v2);
}

uint64_t Action.actionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Action.associatedAppId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

void __swiftcall Action.init(actionId:params:)(SiriSuggestionsKit::Action *__return_ptr retstr, Swift::String actionId, Swift::OpaquePointer params)
{
  OUTLINED_FUNCTION_4_4();

  v7 = OUTLINED_FUNCTION_3_2();
  v9 = sub_1BF8C482C(v7, v8, v3);
  v11 = v10;

  *v6 = v5;
  *(v6 + 8) = v4;
  *(v6 + 16) = v3;
  *(v6 + 24) = v9;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = v11;
  *(v6 + 56) = 0;
}

void __swiftcall Action.init(actionId:params:associatedAppId:)(SiriSuggestionsKit::Action *__return_ptr retstr, Swift::String actionId, Swift::OpaquePointer params, SiriSuggestionsKit::AppIdDetails_optional associatedAppId)
{
  OUTLINED_FUNCTION_4_4();
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  *v12 = v10;
  v12[1] = v11;
  v12[2] = v13;

  v14 = OUTLINED_FUNCTION_3_2();
  v16 = sub_1BF8C482C(v14, v15, v4);
  v18 = v17;

  *(v5 + 24) = v16;
  *(v5 + 32) = v18;
  *(v5 + 40) = v7;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
}

BOOL static Action.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v17 = *(a2 + 56);
  v18 = *(a1 + 56);
  if (!v12 && (sub_1BF9B56D8() & 1) == 0)
  {
    return 0;
  }

  sub_1BF8D5F08(v2, v8);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v3 == v7 && v4 == v10;
  if (!v14 && (sub_1BF9B56D8() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v11)
    {

      return 1;
    }

LABEL_22:

    return 0;
  }

  if (!v11)
  {
    goto LABEL_22;
  }

  if (v6 != v9 || v5 != v11)
  {
    OUTLINED_FUNCTION_3_2();
    if ((sub_1BF9B56D8() & 1) == 0)
    {
      return 0;
    }
  }

  return v18 == v17;
}

void sub_1BF8D5F08(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v5 = a1 + 64;
    v4 = *(a1 + 64);
    v6 = *(a1 + 32);
    OUTLINED_FUNCTION_1_2();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
LABEL_11:
      v16 = v13 | (v3 << 6);
      v17 = v7;
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(v7 + 56) + 16 * v16);
      v23 = *v21;
      v22 = v21[1];

      v24 = sub_1BF8C2E64(v19, v20);
      v26 = v25;

      if ((v26 & 1) == 0)
      {

        return;
      }

      v27 = (*(a2 + 56) + 16 * v24);
      if (*v27 == v23 && v27[1] == v22)
      {

        v7 = v17;
        v10 = v30;
      }

      else
      {
        v29 = sub_1BF9B56D8();

        v7 = v17;
        v10 = v30;
        if ((v29 & 1) == 0)
        {
          return;
        }
      }
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v12)
      {
        return;
      }

      v15 = *(v5 + 8 * v3);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v30 = (v15 - 1) & v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BF8D6094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736D61726170 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49676E6967676F6CLL && a2 == 0xE900000000000064;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746169636F737361 && a2 == 0xEF64497070416465)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BF8D61F8(char a1)
{
  result = 0x64496E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x736D61726170;
      break;
    case 2:
      result = 0x49676E6967676F6CLL;
      break;
    case 3:
      result = 0x746169636F737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF8D6290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8D6094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8D62B8(uint64_t a1)
{
  v2 = sub_1BF8D6AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8D62F4(uint64_t a1)
{
  v2 = sub_1BF8D6AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8880, &qword_1BF9B7D40);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v20 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v24 = v1[3];
  v25 = v13;
  v14 = v1[4];
  v22 = v1[5];
  v23 = v14;
  v21 = v1[6];
  v30 = *(v1 + 56);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8D6AE0();
  sub_1BF9B5898();
  LOBYTE(v27) = 0;
  v16 = v26;
  sub_1BF9B55F8();
  if (!v16)
  {
    v17 = v21;
    v18 = v22;
    v27 = v25;
    v31 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8888, &qword_1BF9B7D48);
    sub_1BF8D7594(&qword_1EDBF4758);
    sub_1BF9B5638();
    LOBYTE(v27) = 2;
    sub_1BF9B55F8();
    v27 = v18;
    v28 = v17;
    v29 = v30;
    v31 = 3;
    sub_1BF8D6B34();

    sub_1BF9B55E8();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t Action.hash(into:)(const void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  sub_1BF9B4B48();
  sub_1BF8D7448(a1, v5);
  sub_1BF9B4B48();
  if (!v9)
  {
    return sub_1BF9B57C8();
  }

  sub_1BF9B57C8();

  return sub_1BF9B4B48();
}

uint64_t Action.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  sub_1BF8D7448(v9, v3);
  sub_1BF9B4B48();
  sub_1BF9B57C8();
  if (v7)
  {
    sub_1BF9B4B48();
  }

  return sub_1BF9B57E8();
}

uint64_t Action.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8890, &qword_1BF9B7D50);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8D6AE0();
  sub_1BF9B5868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27[0]) = 0;
  v10 = sub_1BF9B5518();
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8888, &qword_1BF9B7D48);
  LOBYTE(v24) = 1;
  sub_1BF8D7594(&qword_1EDBF4E50);
  sub_1BF9B5558();
  v22 = v27[0];
  LOBYTE(v27[0]) = 2;
  v20 = sub_1BF9B5518();
  v21 = v12;
  v32 = 3;
  sub_1BF8D7600();
  sub_1BF9B5508();
  v13 = OUTLINED_FUNCTION_0_2();
  v14(v13);
  v19 = v29;
  v18 = v30;
  v15 = v31;
  *&v24 = v10;
  *(&v24 + 1) = v23;
  *&v25 = v22;
  *(&v25 + 1) = v20;
  *v26 = v21;
  *&v26[8] = v29;
  *&v26[16] = v30;
  v26[24] = v31;
  v16 = v25;
  *a2 = v24;
  a2[1] = v16;
  a2[2] = *v26;
  *(a2 + 41) = *&v26[9];
  sub_1BF8D7654(&v24, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v10;
  v27[1] = v23;
  v27[2] = v22;
  v27[3] = v20;
  v27[4] = v21;
  v27[5] = v19;
  v27[6] = v18;
  v28 = v15;
  return sub_1BF8D768C(v27);
}

uint64_t sub_1BF8D6AA0()
{
  sub_1BF9B57A8();
  Action.hash(into:)(v1);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF8D6AE0()
{
  result = qword_1EDBF4E70;
  if (!qword_1EDBF4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E70);
  }

  return result;
}

unint64_t sub_1BF8D6B34()
{
  result = qword_1EDBF4CF0;
  if (!qword_1EDBF4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4CF0);
  }

  return result;
}

uint64_t sub_1BF8D6B88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1BF9B56D8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 32);
        v10 = *(v12 + 40);
        v14 = *(v12 + 48);
        v15 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v15;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF8D6C50(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1BF9B56D8();
        }

        v10 = v9 + 2;
        v15 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1BF9B56D8()))
          {
            break;
          }

          ++v10;
          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v17 = 32 * v10 - 16;
          v18 = 32 * v9 + 24;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v9 + a4;
          }

          if (v29 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v93 = v9;
            v32 = v9 - v10;
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (sub_1BF9B56D8() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v36 = *(v38 + 40);
                v40 = *(v38 + 48);
                v41 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v36;
                *(v38 + 16) = v40;
                *(v38 + 24) = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while (v33 + 1 != v29);
            v10 = v29;
            v9 = v93;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v92 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = v8[2];
        sub_1BF8DCF6C();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1BF8DCF6C();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v92;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
          {
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
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_1BF8D72A4((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v92;
      if (v92 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1BF8D7178(&v96, *a1, a3);
LABEL_102:
}

uint64_t sub_1BF8D7178(uint64_t *a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BF95B0FC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1BF8D72A4((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1BF8D72A4(_OWORD *a1, void *a2, _OWORD *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_1BF95E3A8(a1, (a2 - a1) / 32, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && v6[1] == v4[1];
      if (v12 || (sub_1BF9B56D8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 4;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 2;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 4;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = v13[1];
    *v7 = *v13;
    v7[1] = v14;
    goto LABEL_17;
  }

  sub_1BF95E3A8(a2, (a3 - a2) / 32, a4);
  v10 = &v4[4 * v9];
LABEL_19:
  v15 = v6 - 4;
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    v17 = *(v10 - 4) == *(v6 - 4) && *(v10 - 3) == *(v6 - 3);
    if (!v17 && (sub_1BF9B56D8() & 1) != 0)
    {
      v12 = v5 + 2 == v6;
      v6 -= 4;
      if (!v12)
      {
        v19 = v15[1];
        *v5 = *v15;
        v5[1] = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 2))
    {
      v18 = *(v10 - 1);
      *v5 = *(v10 - 2);
      v5[1] = v18;
    }

    v10 -= 4;
  }

LABEL_36:
  v20 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v20])
  {
    memmove(v6, v4, 32 * v20);
  }

  return 1;
}

uint64_t sub_1BF8D7448(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_1_2();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  for (i = 0; v8; v12 ^= result)
  {
    v14 = i;
LABEL_7:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = (v14 << 10) | (16 * v15);
    v17 = (*(a2 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a2 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    memcpy(__dst, a1, sizeof(__dst));

    sub_1BF9B4B48();

    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return MEMORY[0x1BFB5EAC0](v12);
    }

    v8 = *(v4 + 8 * v14);
    ++i;
    if (v8)
    {
      i = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF8D7594(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8888, &qword_1BF9B7D48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF8D7600()
{
  result = qword_1EDBF51D8;
  if (!qword_1EDBF51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF51D8);
  }

  return result;
}

unint64_t sub_1BF8D76C0()
{
  result = qword_1EDBF0960;
  if (!qword_1EDBF0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0960);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Action.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF8D7804()
{
  result = qword_1EBDE8898;
  if (!qword_1EBDE8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8898);
  }

  return result;
}

unint64_t sub_1BF8D785C()
{
  result = qword_1EDBF5588;
  if (!qword_1EDBF5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5588);
  }

  return result;
}

unint64_t sub_1BF8D78B4()
{
  result = qword_1EDBF4E68;
  if (!qword_1EDBF4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E68);
  }

  return result;
}

uint64_t sub_1BF8D7914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *SalientEntity.init(value:type:score:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = *a2;
  result = sub_1BF8C530C(a1, a3);
  *(a3 + 48) = v6;
  *(a3 + 56) = a4;
  return result;
}

void SalientEntity.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88B0, &qword_1BF9B7FD0);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8D7BB4();
  sub_1BF9B5868();
  if (!v2)
  {
    sub_1BF8D9DA4(0, &v20);
    v18 = 1;
    sub_1BF8DA248();
    sub_1BF9B5558();
    v14 = v19;
    v19 = 2;
    sub_1BF9B5538();
    v16 = v15;
    (*(v7 + 8))(v12, v5);
    sub_1BF8C530C(&v20, a2);
    *(a2 + 48) = v14;
    *(a2 + 56) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_56();
}

unint64_t sub_1BF8D7BB4()
{
  result = qword_1EBDE88B8;
  if (!qword_1EBDE88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE88B8);
  }

  return result;
}

void sub_1BF8D7C08()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_20_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_11_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B80, &qword_1BF9B86A0);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_35_0();
  if (!v0)
  {
    LOBYTE(v33) = 0;
    sub_1BF8DF378();
    OUTLINED_FUNCTION_22_2();
    v9 = OUTLINED_FUNCTION_59();
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_12_1(v9);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_23_2();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_33_1();
      sub_1BF9B4F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A48, &unk_1BF9B8540);
      OUTLINED_FUNCTION_51();
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v35, 0, 40);
      }

      sub_1BF8DFB90(v35, &v33, &qword_1EBDE8B90, &qword_1BF9B86A8);
      if (v34)
      {
        v20 = OUTLINED_FUNCTION_5_4();
        v21(v20);
        sub_1BF8C2C9C(&v33, v1);
        v22 = &qword_1EBDE8B90;
        v23 = &qword_1BF9B86A8;
        v24 = v35;
      }

      else
      {
        OUTLINED_FUNCTION_36_1();
        sub_1BF8DFBF0(v25, v26, v27);
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v28, v29);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_52();
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_14_0(v30);
        v31 = OUTLINED_FUNCTION_5_4();
        v32(v31);
        OUTLINED_FUNCTION_36_1();
      }

      sub_1BF8DFBF0(v24, v22, v23);
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v13, v14);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      OUTLINED_FUNCTION_75(v15);
      *(v1 + 24) = &unk_1F3EF7A98;
      v16 = sub_1BF8DF63C();
      OUTLINED_FUNCTION_40(v16);
      v17 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v17, v18, v19, v6);
      v7 = OUTLINED_FUNCTION_5_4();
      v8(v7);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8D7F58()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_20_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B20, &qword_1BF9B8638);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_35_0();
  if (!v0)
  {
    LOBYTE(v32) = 0;
    sub_1BF8DF378();
    OUTLINED_FUNCTION_22_2();
    v9 = OUTLINED_FUNCTION_59();
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_12_1(v9);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_23_2();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_33_1();
      sub_1BF9B4F68();
      OUTLINED_FUNCTION_51();
      if ((swift_dynamicCast() & 1) == 0)
      {
        v32 = 0;
      }

      if (v32)
      {
        v22 = *(v4 + 8);
        swift_unknownObjectRetain();
        v23 = OUTLINED_FUNCTION_25();
        v22(v23);
        *v1 = v32;
      }

      else
      {
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v24, v25);
        OUTLINED_FUNCTION_76();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_57(v26, v27, v28, v29);
        v30 = OUTLINED_FUNCTION_5_4();
        v31(v30);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v15, v16);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      OUTLINED_FUNCTION_75(v17);
      v1[3] = &type metadata for Intent.CodingKeys;
      v18 = sub_1BF8DF5A8();
      OUTLINED_FUNCTION_40(v18);
      v19 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v19, v20, v21, v8);
      v13 = OUTLINED_FUNCTION_5_4();
      v14(v13);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8D8230()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_20_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B20, &qword_1BF9B8638);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_35_0();
  if (!v0)
  {
    LOBYTE(v32) = 0;
    sub_1BF8DF378();
    OUTLINED_FUNCTION_22_2();
    v9 = OUTLINED_FUNCTION_59();
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_12_1(v9);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_23_2();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_33_1();
      sub_1BF9B4F68();
      OUTLINED_FUNCTION_51();
      if ((swift_dynamicCast() & 1) == 0)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
      }

      if (v32)
      {
        v22 = *(v4 + 8);
        swift_unknownObjectRetain();

        v23 = OUTLINED_FUNCTION_25();
        v22(v23);
        *v1 = v32;
        v1[1] = v33;
        v1[2] = v34;
      }

      else
      {
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v24, v25);
        OUTLINED_FUNCTION_76();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_57(v26, v27, v28, v29);
        v30 = OUTLINED_FUNCTION_5_4();
        v31(v30);
      }

      sub_1BF8DF5FC(v32);
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v15, v16);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      OUTLINED_FUNCTION_75(v17);
      v1[3] = &type metadata for Intent.CodingKeys;
      v18 = sub_1BF8DF5A8();
      OUTLINED_FUNCTION_40(v18);
      v19 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v19, v20, v21, v8);
      v13 = OUTLINED_FUNCTION_5_4();
      v14(v13);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8D8520()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_54_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v2);
  v38 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_71();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_68_0();
  if (!v0)
  {
    LOBYTE(v39) = 0;
    sub_1BF8DF378();
    OUTLINED_FUNCTION_22_2();
    v11 = OUTLINED_FUNCTION_59();
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_13(v11);
      v14 = *(v13 + 64);
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_32_0();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_45_0();
      sub_1BF9B4F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
      if ((OUTLINED_FUNCTION_66() & 1) == 0)
      {
        memset(v41, 0, 48);
      }

      sub_1BF8DFB90(v41, &v39, &qword_1EBDE89F8, &qword_1BF9B84F0);
      if (v40)
      {
        v22 = OUTLINED_FUNCTION_5_4();
        v23(v22);
        sub_1BF8C530C(&v39, v36);
        v24 = &qword_1EBDE89F8;
        v25 = &qword_1BF9B84F0;
        v26 = v41;
      }

      else
      {
        OUTLINED_FUNCTION_36_1();
        sub_1BF8DFBF0(v27, v28, v29);
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v30, v31);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_52();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_14_0(v32);
        v33 = OUTLINED_FUNCTION_5_4();
        v34(v33);
        OUTLINED_FUNCTION_36_1();
      }

      sub_1BF8DFBF0(v26, v24, v25);
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v15, v16);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v35 = *(v17 + 48);
      v37 = v17;
      *(v7 + 24) = &type metadata for CodableWrapper.ArrayKeys;
      *(v7 + 32) = sub_1BF8DF500();
      OUTLINED_FUNCTION_74();
      v18 = swift_allocObject();
      OUTLINED_FUNCTION_63(v18);
      sub_1BF9B4638();
      v19 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v19, v20, v21, v37);
      v8 = *(v38 + 8);
      v9 = OUTLINED_FUNCTION_25();
      v10(v9);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8D889C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_54_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v2);
  v38 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_71();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_68_0();
  if (!v0)
  {
    LOBYTE(v39) = 0;
    sub_1BF8DF378();
    OUTLINED_FUNCTION_22_2();
    v11 = OUTLINED_FUNCTION_59();
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_13(v11);
      v14 = *(v13 + 64);
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_32_0();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_45_0();
      sub_1BF9B4F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
      if ((OUTLINED_FUNCTION_66() & 1) == 0)
      {
        memset(v41, 0, 48);
      }

      sub_1BF8DFB90(v41, &v39, &qword_1EBDE89C8, &qword_1BF9B98D0);
      if (v40)
      {
        v22 = OUTLINED_FUNCTION_5_4();
        v23(v22);
        sub_1BF8C530C(&v39, v36);
        v24 = &qword_1EBDE89C8;
        v25 = &qword_1BF9B98D0;
        v26 = v41;
      }

      else
      {
        OUTLINED_FUNCTION_36_1();
        sub_1BF8DFBF0(v27, v28, v29);
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v30, v31);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_52();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_14_0(v32);
        v33 = OUTLINED_FUNCTION_5_4();
        v34(v33);
        OUTLINED_FUNCTION_36_1();
      }

      sub_1BF8DFBF0(v26, v24, v25);
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v15, v16);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v35 = *(v17 + 48);
      v37 = v17;
      *(v7 + 24) = &type metadata for CodableWrapper.ArrayKeys;
      *(v7 + 32) = sub_1BF8DF500();
      OUTLINED_FUNCTION_74();
      v18 = swift_allocObject();
      OUTLINED_FUNCTION_63(v18);
      sub_1BF9B4638();
      v19 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v19, v20, v21, v37);
      v8 = *(v38 + 8);
      v9 = OUTLINED_FUNCTION_25();
      v10(v9);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8D8C18()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A38, &qword_1BF9B8530);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_55();
  if (!v0)
  {
    LOBYTE(v33) = 0;
    sub_1BF8DF378();
    OUTLINED_FUNCTION_22_2();
    v9 = OUTLINED_FUNCTION_59();
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_12_1(v9);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_32_0();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_46();
      sub_1BF9B4F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
      if ((OUTLINED_FUNCTION_67_0() & 1) == 0)
      {
        memset(v35, 0, sizeof(v35));
      }

      sub_1BF8DFB90(v35, &v33, &qword_1EBDE89C8, &qword_1BF9B98D0);
      if (v34)
      {
        v20 = OUTLINED_FUNCTION_5_4();
        v21(v20);
        sub_1BF8C530C(&v33, v2);
        v22 = &qword_1EBDE89C8;
        v23 = &qword_1BF9B98D0;
        v24 = v35;
      }

      else
      {
        OUTLINED_FUNCTION_36_1();
        sub_1BF8DFBF0(v25, v26, v27);
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v28, v29);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_52();
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_14_0(v30);
        v31 = OUTLINED_FUNCTION_5_4();
        v32(v31);
        OUTLINED_FUNCTION_36_1();
      }

      sub_1BF8DFBF0(v24, v22, v23);
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v13, v14);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v16 = *(v15 + 48);
      *(v2 + 24) = &type metadata for TransportWrapper.CodingKeys;
      *(v2 + 32) = sub_1BF8BF584();
      sub_1BF9B4638();
      v17 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v17, v18, v19, v15);
      v7 = OUTLINED_FUNCTION_5_4();
      v8(v7);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8D8F70()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v46 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v11);
  v47 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - v16;
  v50 = v9;
  v51 = v7;
  v52 = v5;
  v53 = v3 & 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_68_0();
  if (!v1)
  {
    LOBYTE(v48[0]) = 0;
    sub_1BF8DF378();
    sub_1BF9B5558();
    v19 = OUTLINED_FUNCTION_59();
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_13(v19);
      v22 = *(v21 + 64);
      MEMORY[0x1EEE9AC00](v20);
      OUTLINED_FUNCTION_4_5();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_45_0();
      sub_1BF9B4F68();
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v49, 0, 64);
      }

      sub_1BF8DFB90(v49, v48, &qword_1EBDE8A60, &qword_1BF9B8558);
      v29 = v46;
      if (*(&v48[0] + 1))
      {
        v30 = OUTLINED_FUNCTION_61();
        v31(v30);
        v32 = v48[1];
        *v29 = v48[0];
        v29[1] = v32;
        v33 = v48[3];
        v29[2] = v48[2];
        v29[3] = v33;
        v34 = &qword_1EBDE8A60;
        v35 = &qword_1BF9B8558;
        v36 = v49;
      }

      else
      {
        OUTLINED_FUNCTION_36_1();
        sub_1BF8DFBF0(v37, v38, v39);
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v40, v41);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_52();
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_14_0(v42);
        v43 = OUTLINED_FUNCTION_61();
        v44(v43);
        OUTLINED_FUNCTION_36_1();
      }

      sub_1BF8DFBF0(v36, v34, v35);
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v23, v24);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v45[1] = *(v46 + 48);
      v18[3] = &type metadata for CodableWrapper.ArrayKeys;
      v18[4] = sub_1BF8DF500();
      OUTLINED_FUNCTION_74();
      v25 = swift_allocObject();
      *v18 = v25;
      *(v25 + 16) = v9;
      *(v25 + 24) = v7;
      *(v25 + 32) = v5;
      *(v25 + 40) = v3 & 1;

      sub_1BF9B4638();
      v26 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v26, v27, v28, v46);
      (*(v47 + 8))(v17, v0);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8D9388()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_20_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  v7 = v2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A8, &unk_1BF9B84B0);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_55();
  if (!v0)
  {
    LOBYTE(v34) = 0;
    sub_1BF8DF378();
    OUTLINED_FUNCTION_22_2();
    v10 = OUTLINED_FUNCTION_59();
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_12_1(v10);
      v13 = *(v12 + 64);
      MEMORY[0x1EEE9AC00](v11);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_23_2();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_46();
      sub_1BF9B4F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
      if ((OUTLINED_FUNCTION_67_0() & 1) == 0)
      {
        memset(v36, 0, sizeof(v36));
      }

      sub_1BF8DFB90(v36, &v34, &qword_1EBDE89C8, &qword_1BF9B98D0);
      if (v35)
      {
        v21 = OUTLINED_FUNCTION_5_4();
        v22(v21);
        sub_1BF8C530C(&v34, v1);
        v23 = &qword_1EBDE89C8;
        v24 = &qword_1BF9B98D0;
        v25 = v36;
      }

      else
      {
        OUTLINED_FUNCTION_36_1();
        sub_1BF8DFBF0(v26, v27, v28);
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v29, v30);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_52();
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_14_0(v31);
        v32 = OUTLINED_FUNCTION_5_4();
        v33(v32);
        OUTLINED_FUNCTION_36_1();
      }

      sub_1BF8DFBF0(v25, v23, v24);
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v14, v15);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v17 = *(v16 + 48);
      *(v1 + 24) = &unk_1F3EFE6C0;
      *(v1 + 32) = sub_1BF8DF458();
      *v1 = v7;
      sub_1BF9B4638();
      v18 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v18, v19, v20, v16);
      v8 = OUTLINED_FUNCTION_5_4();
      v9(v8);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8D96E8()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BA0, &qword_1BF9B8720);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_55();
  if (!v0)
  {
    LOBYTE(v33) = 0;
    sub_1BF8DF378();
    OUTLINED_FUNCTION_22_2();
    v9 = OUTLINED_FUNCTION_59();
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_12_1(v9);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_32_0();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_46();
      sub_1BF9B4F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v35, 0, sizeof(v35));
      }

      sub_1BF8DFB90(v35, &v33, &qword_1EBDE8BB8, &qword_1BF9B86C8);
      if (v34)
      {
        v20 = OUTLINED_FUNCTION_5_4();
        v21(v20);
        sub_1BF8DF6E4(&v33, v2);
        v22 = &qword_1EBDE8BB8;
        v23 = &qword_1BF9B86C8;
        v24 = v35;
      }

      else
      {
        OUTLINED_FUNCTION_36_1();
        sub_1BF8DFBF0(v25, v26, v27);
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v28, v29);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_52();
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_14_0(v30);
        v31 = OUTLINED_FUNCTION_5_4();
        v32(v31);
        OUTLINED_FUNCTION_36_1();
      }

      sub_1BF8DFBF0(v24, v22, v23);
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v13, v14);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v16 = *(v15 + 48);
      *(v2 + 24) = &unk_1F3EF7B28;
      *(v2 + 32) = sub_1BF8DF690();
      sub_1BF9B4638();
      v17 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v17, v18, v19, v15);
      v7 = OUTLINED_FUNCTION_5_4();
      v8(v7);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8D9A54()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_20_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_2_5(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_11_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A78, &unk_1BF9B8570);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_35_0();
  if (!v0)
  {
    LOBYTE(v33) = 0;
    sub_1BF8DF378();
    OUTLINED_FUNCTION_22_2();
    v9 = OUTLINED_FUNCTION_59();
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_12_1(v9);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_23_2();
      sub_1BF9B54C8();
      OUTLINED_FUNCTION_33_1();
      sub_1BF9B4F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A80, &unk_1BF9C3A90);
      OUTLINED_FUNCTION_51();
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v35, 0, 40);
      }

      sub_1BF8DFB90(v35, &v33, &qword_1EBDE8A88, &unk_1BF9B8580);
      if (v34)
      {
        v20 = OUTLINED_FUNCTION_5_4();
        v21(v20);
        sub_1BF8C2C9C(&v33, v1);
        v22 = &qword_1EBDE8A88;
        v23 = &unk_1BF9B8580;
        v24 = v35;
      }

      else
      {
        OUTLINED_FUNCTION_36_1();
        sub_1BF8DFBF0(v25, v26, v27);
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_0_3();
        sub_1BF8DF410(v28, v29);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_52();
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        OUTLINED_FUNCTION_14_0(v30);
        v31 = OUTLINED_FUNCTION_5_4();
        v32(v31);
        OUTLINED_FUNCTION_36_1();
      }

      sub_1BF8DFBF0(v24, v22, v23);
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_0_3();
      sub_1BF8DF410(v13, v14);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_43_1();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      OUTLINED_FUNCTION_75(v15);
      *(v1 + 24) = &unk_1F3EFE1B0;
      v16 = sub_1BF8DF554();
      OUTLINED_FUNCTION_40(v16);
      v17 = OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_57(v17, v18, v19, v6);
      v7 = OUTLINED_FUNCTION_5_4();
      v8(v7);
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF8D9DA4@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88B0, &qword_1BF9B7FD0);
  sub_1BF8BF518();
  result = sub_1BF9B54A8();
  if (!v2)
  {
    LOBYTE(v22) = 0;
    sub_1BF8DF378();
    sub_1BF9B5558();
    v11 = dynamic_cast_existential_1_conditional(*&v24[0]);
    if (v11)
    {
      v21[1] = v12;
      v13 = *(*(v11 - 8) + 64);
      MEMORY[0x1EEE9AC00](v11);
      v25 = 1;
      sub_1BF9B54C8();
      v21[0] = v21;
      sub_1BF9B4F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v24, 0, sizeof(v24));
      }

      sub_1BF8DFB90(v24, &v22, &qword_1EBDE89F8, &qword_1BF9B84F0);
      if (v23)
      {
        (*(v6 + 8))(v9, v5);
        sub_1BF8C530C(&v22, a2);
      }

      else
      {
        sub_1BF8DFBF0(&v22, &qword_1EBDE89F8, &qword_1BF9B84F0);
        type metadata accessor for CodingErrors();
        sub_1BF8DF410(qword_1EDBF36D8, type metadata accessor for CodingErrors);
        swift_allocError();
        v19 = v18;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
        swift_willThrow();
        (*(v6 + 8))(v9, v5);
      }

      return sub_1BF8DFBF0(v24, &qword_1EBDE89F8, &qword_1BF9B84F0);
    }

    else
    {
      type metadata accessor for CodingErrors();
      sub_1BF8DF410(qword_1EDBF36D8, type metadata accessor for CodingErrors);
      swift_allocError();
      v15 = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v17 = *(v16 + 48);
      *(v15 + 24) = &unk_1F3EF7198;
      *(v15 + 32) = sub_1BF8D7BB4();
      *v15 = a1;
      sub_1BF9B4638();
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
      swift_willThrow();
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

unint64_t sub_1BF8DA248()
{
  result = qword_1EBDE88C0;
  if (!qword_1EBDE88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE88C0);
  }

  return result;
}

void SalientEntity.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88C8, &qword_1BF9B7FD8);
  OUTLINED_FUNCTION_2_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_0();
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF8D7BB4();
  sub_1BF9B5898();
  v12 = *(v2 + 24);
  v13 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_1(v2, v12);
  v22[3] = v12;
  v22[4] = v13;
  __swift_allocate_boxed_opaque_existential_1Tm(v22);
  OUTLINED_FUNCTION_24_1();
  (*(v14 + 16))();
  sub_1BF8DA4D4();
  if (v1)
  {
    v15 = *(v7 + 8);
    v16 = OUTLINED_FUNCTION_25();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    LOBYTE(v22[0]) = *(v2 + 48);
    sub_1BF8DA9FC();
    OUTLINED_FUNCTION_53_0();
    v18 = *(v2 + 56);
    LOBYTE(v22[0]) = 2;
    sub_1BF9B5618();
    v19 = *(v7 + 8);
    v20 = OUTLINED_FUNCTION_25();
    v21(v20);
  }

  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8DA4D4()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_2_5(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_47();
  sub_1BF9B5598();
  OUTLINED_FUNCTION_44();
  v17[3] = v6;
  __swift_allocate_boxed_opaque_existential_1Tm(v17);
  OUTLINED_FUNCTION_24_1();
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_73();
  v13();
  OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_77_1(v14);
  sub_1BF8C328C();
  OUTLINED_FUNCTION_53_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_23_2();
    sub_1BF9B55A8();
    OUTLINED_FUNCTION_41();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  v15 = OUTLINED_FUNCTION_5_4();
  v16(v15);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8DA65C()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_2_5(v11);
  v23 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_0();
  v26 = v8;
  v27 = v6;
  v28 = v4;
  v29 = v2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_47();
  sub_1BF9B5598();
  OUTLINED_FUNCTION_44();
  v25 = v10;
  __swift_allocate_boxed_opaque_existential_1Tm(v24);
  OUTLINED_FUNCTION_24_1();
  v17 = *(v16 + 16);
  OUTLINED_FUNCTION_73();
  v18();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v19 = OUTLINED_FUNCTION_78();
  __swift_destroy_boxed_opaque_existential_1(v24);
  v24[0] = v19;
  sub_1BF8C328C();
  OUTLINED_FUNCTION_53_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_32_0();
    sub_1BF9B55A8();
    OUTLINED_FUNCTION_41();
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v20 = *(v23 + 8);
  v21 = OUTLINED_FUNCTION_25();
  v22(v21);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8DA81C()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_2_5(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D8, &qword_1BF9B84D8);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_47();
  sub_1BF9B5598();
  OUTLINED_FUNCTION_44();
  v16[3] = v2;
  __swift_allocate_boxed_opaque_existential_1Tm(v16);
  OUTLINED_FUNCTION_24_1();
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_73();
  v11();
  OUTLINED_FUNCTION_69();
  v12 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_77_1(v12);
  sub_1BF8C328C();
  OUTLINED_FUNCTION_53_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_23_2();
    sub_1BF9B55A8();
    OUTLINED_FUNCTION_41();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_25();
  v15(v14);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF8DA9FC()
{
  result = qword_1EBDE88D0;
  if (!qword_1EBDE88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE88D0);
  }

  return result;
}

uint64_t SalientEntity.debugValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88D8, &qword_1BF9B7FE0);
  OUTLINED_FUNCTION_72(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E0, &qword_1BF9B7FE8);
  OUTLINED_FUNCTION_72(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33[-v14];
  switch(*(v2 + 48))
  {
    case 1:
      OUTLINED_FUNCTION_50();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_5_2();
      goto LABEL_5;
    default:
LABEL_5:
      v16 = OUTLINED_FUNCTION_65_1();

      if (v16)
      {
LABEL_6:
        sub_1BF8D7914(v2, v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
        v17 = sub_1BF9B4768();
        if ((swift_dynamicCast() & 1) == 0)
        {
          OUTLINED_FUNCTION_37_0();
          __swift_storeEnumTagSinglePayload(v28, v29, v30, v17);
          v22 = &qword_1EBDE88D8;
          v23 = &qword_1BF9B7FE0;
          v24 = v9;
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_38();
        __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
        sub_1BF9B4758();
        (*(*(v17 - 8) + 8))(v9, v17);
        v21 = sub_1BF9B4868();
        if (__swift_getEnumTagSinglePayload(v15, 1, v21) == 1)
        {
          v22 = &qword_1EBDE88E0;
          v23 = &qword_1BF9B7FE8;
          v24 = v15;
LABEL_13:
          result = sub_1BF8DFBF0(v24, v22, v23);
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *a1 = 0u;
          return result;
        }

        *(a1 + 24) = v21;
        v31 = MEMORY[0x1E69DAE88];
        *(a1 + 32) = sub_1BF8DF410(&qword_1EBDE88F0, MEMORY[0x1E69DAE88]);
        *(a1 + 40) = sub_1BF8DF410(&qword_1EBDE88F8, v31);
        __swift_allocate_boxed_opaque_existential_1Tm(a1);
        OUTLINED_FUNCTION_24_1();
        return (*(v32 + 32))();
      }

      else
      {
        v25 = OUTLINED_FUNCTION_25();

        return sub_1BF8D7914(v25, v26);
      }
  }
}

uint64_t sub_1BF8DAD6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF8DAE50(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x65726F6373;
}

uint64_t sub_1BF8DAEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8DAD6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8DAEC8(uint64_t a1)
{
  v2 = sub_1BF8D7BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8DAF04(uint64_t a1)
{
  v2 = sub_1BF8D7BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static SalientEntity.createOnScreenApp(appId:isInFocus:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 24) = &type metadata for AppInView;
  *(a4 + 32) = sub_1BF8DB6CC();
  *(a4 + 40) = sub_1BF8DB720();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 48) = 0;
  *(a4 + 56) = a5;
}

SiriSuggestionsKit::AppInView __swiftcall AppInView.init(appBundleID:isInFocus:)(SiriSuggestionsKit::AppInView appBundleID, Swift::Bool isInFocus)
{
  *v2 = appBundleID.appBundleID;
  *(v2 + 16) = isInFocus;
  appBundleID.isInFocus = isInFocus;
  return appBundleID;
}

uint64_t AppInView.appBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppInView.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1BF8DB0B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75636F466E497369 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF8DB188(char a1)
{
  if (a1)
  {
    return 0x75636F466E497369;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1BF8DB1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8DB0B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8DB1FC(uint64_t a1)
{
  v2 = sub_1BF8DB774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8DB238(uint64_t a1)
{
  v2 = sub_1BF8DB774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppInView.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8910, &qword_1BF9B7FF8);
  OUTLINED_FUNCTION_2_5(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_0();
  v10 = *v0;
  v11 = v0[1];
  v16 = *(v0 + 16);
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF8DB774();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v1)
  {
    sub_1BF9B5608();
  }

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_25();
  v15(v14);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void AppInView.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8920, &qword_1BF9B8000);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF8DB774();
  sub_1BF9B5868();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = sub_1BF9B5518();
    v12 = v11;
    v13 = sub_1BF9B5528();
    v14 = OUTLINED_FUNCTION_60();
    v15(v14);
    *v4 = v10;
    *(v4 + 8) = v12;
    *(v4 + 16) = v13 & 1;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

SiriSuggestionsKit::SalientEntityType_optional __swiftcall SalientEntityType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SalientEntityType.rawValue.getter()
{
  result = 0x7070416E65706FLL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_50();
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = OUTLINED_FUNCTION_5_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF8DB6A4@<X0>(uint64_t *a1@<X8>)
{
  result = SalientEntityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BF8DB6CC()
{
  result = qword_1EBDE8900;
  if (!qword_1EBDE8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8900);
  }

  return result;
}

unint64_t sub_1BF8DB720()
{
  result = qword_1EBDE8908;
  if (!qword_1EBDE8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8908);
  }

  return result;
}

unint64_t sub_1BF8DB774()
{
  result = qword_1EBDE8918;
  if (!qword_1EBDE8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8918);
  }

  return result;
}

SiriSuggestionsKit::AppInView_optional __swiftcall SalientEntity.asAppInView()()
{
  v2 = v0;
  switch(*(v1 + 48))
  {
    case 1:
    case 2:
      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_5_2();
LABEL_4:
      v3 = sub_1BF9B56D8();

      if (v3)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    default:

LABEL_5:
      sub_1BF8D7914(v1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
      v4 = swift_dynamicCast();
      if (v4)
      {
        *v2 = v8;
        *(v2 + 8) = v9;
        *(v2 + 16) = v10;
      }

      else
      {
LABEL_7:
        *v2 = 0;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
      }

      result.value.appBundleID._object = v5;
      result.value.appBundleID._countAndFlagsBits = v4;
      result.is_nil = v7;
      result.value.isInFocus = v6;
      return result;
  }
}

uint64_t SalientEntity.asRetrievedContext()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88D8, &qword_1BF9B7FE0);
  OUTLINED_FUNCTION_72(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-v7];
  switch(*(v1 + 48))
  {
    case 1:
      OUTLINED_FUNCTION_50();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_5_2();
      goto LABEL_5;
    default:
LABEL_5:
      v9 = OUTLINED_FUNCTION_65_1();

      if ((v9 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      sub_1BF8D7914(v1, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
      v10 = sub_1BF9B4768();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_38();
        __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
        OUTLINED_FUNCTION_24_1();
        (*(v14 + 32))(a1, v8, v10);
        OUTLINED_FUNCTION_38();
        v18 = v10;
      }

      else
      {
        OUTLINED_FUNCTION_37_0();
        __swift_storeEnumTagSinglePayload(v19, v20, v21, v10);
        sub_1BF8DFBF0(v8, &qword_1EBDE88D8, &qword_1BF9B7FE0);
LABEL_9:
        sub_1BF9B4768();
        OUTLINED_FUNCTION_37_0();
      }

      return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }
}

uint64_t Array<A>.getValues<A>(transformer:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8928, &qword_1BF9B8008);
  sub_1BF8DBC00();
  return sub_1BF9B4C88();
}

unint64_t sub_1BF8DBC00()
{
  result = qword_1EBDE8930;
  if (!qword_1EBDE8930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8928, &qword_1BF9B8008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8930);
  }

  return result;
}

uint64_t Array<A>.getRetrievedContext()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88D8, &qword_1BF9B7FE0);
  OUTLINED_FUNCTION_72(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = sub_1BF9B4768();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v37 - v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + 32;
    v18 = "";
    v19 = MEMORY[0x1E69E7CC0];
    v37 = v14;
    v39 = (v14 + 32);
    v20 = 0x7070416E65706FLL;
    while (2)
    {
      sub_1BF8DC030(v17, v42);
      switch(v43)
      {
        case 1:
          OUTLINED_FUNCTION_50();
          goto LABEL_7;
        case 2:

          goto LABEL_8;
        case 3:
          OUTLINED_FUNCTION_5_2();
          goto LABEL_7;
        default:
LABEL_7:
          v21 = OUTLINED_FUNCTION_65_1();

          if (v21)
          {
LABEL_8:
            sub_1BF8C530C(v42, v41);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
            if (swift_dynamicCast())
            {
              v22 = v18;
              v23 = v20;
              OUTLINED_FUNCTION_38();
              __swift_storeEnumTagSinglePayload(v24, v25, v26, v8);
              v27 = v38;
              v28 = *v39;
              (*v39)(v38, v7, v8);
              v28(v40, v27, v8);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1BF8DDC14(0, *(v19 + 16) + 1, 1, v19, sub_1BF963CCC, MEMORY[0x1E69A90D0], sub_1BF958CE8);
                v19 = v34;
              }

              v30 = *(v19 + 16);
              v29 = *(v19 + 24);
              if (v30 >= v29 >> 1)
              {
                sub_1BF8DDC14(v29 > 1, v30 + 1, 1, v19, sub_1BF963CCC, MEMORY[0x1E69A90D0], sub_1BF958CE8);
                v19 = v35;
              }

              *(v19 + 16) = v30 + 1;
              v28((v19 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30), v40, v8);
              v20 = v23;
              v18 = v22;
            }

            else
            {
              OUTLINED_FUNCTION_37_0();
              __swift_storeEnumTagSinglePayload(v31, v32, v33, v8);
              sub_1BF8DFBF0(v7, &qword_1EBDE88D8, &qword_1BF9B7FE0);
            }
          }

          else
          {
            sub_1BF8DC068(v42);
          }

          v17 += 64;
          if (!--v16)
          {
            return v19;
          }

          continue;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t Array<A>.getAppInViewIds()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1BF8DC030(v2, v14);
    switch(v15)
    {
      case 1:
      case 2:
        goto LABEL_6;
      case 3:
        OUTLINED_FUNCTION_5_2();
LABEL_6:
        v4 = sub_1BF9B56D8();

        if (v4)
        {
          goto LABEL_7;
        }

        sub_1BF8DC068(v14);
        break;
      default:

LABEL_7:
        sub_1BF8C530C(v14, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = *(v3 + 16);
            sub_1BF8DD6D4();
            v3 = v8;
          }

          v5 = *(v3 + 16);
          if (v5 >= *(v3 + 24) >> 1)
          {
            sub_1BF8DD6D4();
            v3 = v9;
          }

          *(v3 + 16) = v5 + 1;
          v6 = v3 + 16 * v5;
          *(v6 + 32) = v11;
          *(v6 + 40) = v12;
        }

        break;
    }

    v2 += 64;
    --v1;
  }

  while (v1);
  return v3;
}

size_t sub_1BF8DC298(uint64_t a1)
{
  v2 = sub_1BF9B4868();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E0, &qword_1BF9B7FE8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BD8, &qword_1BF9B86E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010);
  v48 = *(v58 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v43 - v16;
  v55 = sub_1BF9B4768();
  v17 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v24 = *(v18 + 16);
  v22 = v18 + 16;
  v23 = v24;
  v25 = *(v22 + 64);
  v46 = (v25 + 32) & ~v25;
  v47 = v25;
  v26 = a1 + v46;
  v56 = *(v22 + 56);
  v44 = (v3 + 8);
  v45 = (v3 + 32);
  v51 = (v22 - 8);
  v60 = MEMORY[0x1E69E7CC0];
  v43 = xmmword_1BF9B6370;
  v27 = v2;
  v57 = v2;
  v28 = v55;
  v52 = v24;
  v53 = v22;
  do
  {
    v61 = v21;
    v23(v20, v26, v28);
    v29 = v62;
    sub_1BF9B4758();
    v30 = v59;
    sub_1BF8DFB90(v29, v59, &qword_1EBDE88E0, &qword_1BF9B7FE8);
    v31 = v30;
    v32 = v27;
    if (__swift_getEnumTagSinglePayload(v31, 1, v27) == 1)
    {
      sub_1BF8DFBF0(v62, &qword_1EBDE88E0, &qword_1BF9B7FE8);
      (*v51)(v20, v28);
      v33 = 1;
    }

    else
    {
      v34 = v49;
      (*v45)(v49, v59, v32);
      v50 = *(v58 + 48);
      sub_1BF9B4858();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE0, &unk_1BF9B86F0);
      v35 = v46;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      v23((v36 + v35), v20, v55);
      v37 = v55;
      (*v44)(v34, v57);
      v28 = v37;
      sub_1BF8DFBF0(v62, &qword_1EBDE88E0, &qword_1BF9B7FE8);
      (*v51)(v20, v37);
      v33 = 0;
      *&v14[v50] = v36;
      v32 = v57;
    }

    v38 = v58;
    __swift_storeEnumTagSinglePayload(v14, v33, 1, v58);
    if (__swift_getEnumTagSinglePayload(v14, 1, v38) == 1)
    {
      v27 = v32;
      sub_1BF8DFBF0(v14, &qword_1EBDE8BD8, &qword_1BF9B86E8);
    }

    else
    {
      sub_1BF8DFC48(v14, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1BF8DD844(0, *(v60 + 16) + 1, 1, v60);
      }

      v40 = *(v60 + 16);
      v39 = *(v60 + 24);
      if (v40 >= v39 >> 1)
      {
        v60 = sub_1BF8DD844(v39 > 1, v40 + 1, 1, v60);
      }

      v41 = v60;
      *(v60 + 16) = v40 + 1;
      sub_1BF8DFC48(v54, v41 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40);
      v27 = v57;
    }

    v26 += v56;
    v21 = v61 - 1;
    v23 = v52;
  }

  while (v61 != 1);
  return v60;
}

uint64_t Array<A>.indexByTypeIdentifier()(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010);
  v2 = OUTLINED_FUNCTION_1(v45);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37[-v10];
  v12 = sub_1BF8DC298(a1);
  if (qword_1EDBF08E8 != -1)
  {
    swift_once();
  }

  v13 = sub_1BF9B47C8();
  __swift_project_value_buffer(v13, qword_1EDBF08F0);
  swift_bridgeObjectRetain_n();

  v14 = sub_1BF9B47A8();
  v15 = sub_1BF9B5038();

  if (os_log_type_enabled(v14, v15))
  {
    v44 = v4;
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    v43 = v16;
    *v16 = 136315394;
    v17 = *(v12 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v38 = v15;
      v39 = v14;
      v40 = a1;
      v46 = MEMORY[0x1E69E7CC0];
      sub_1BF8D01C0();
      v18 = v46;
      v19 = *(v44 + 80);
      v41 = v12;
      v20 = v12 + ((v19 + 32) & ~v19);
      v44 = *(v44 + 72);
      do
      {
        sub_1BF8DFB90(v20, v11, &qword_1EBDE8938, &qword_1BF9B8010);
        sub_1BF8DFB90(v11, v9, &qword_1EBDE8938, &qword_1BF9B8010);
        v21 = *&v9[*(v45 + 48)];

        v22 = sub_1BF9B4878();
        v24 = v23;
        sub_1BF8DFBF0(v11, &qword_1EBDE8938, &qword_1BF9B8010);
        v25 = sub_1BF9B4888();
        OUTLINED_FUNCTION_13(v25);
        (*(v26 + 8))(v9);
        v46 = v18;
        v27 = *(v18 + 16);
        if (v27 >= *(v18 + 24) >> 1)
        {
          sub_1BF8D01C0();
          v18 = v46;
        }

        *(v18 + 16) = v27 + 1;
        v28 = v18 + 16 * v27;
        *(v28 + 32) = v22;
        *(v28 + 40) = v24;
        v20 += v44;
        --v17;
      }

      while (v17);
      a1 = v40;
      v12 = v41;
      v14 = v39;
      LOBYTE(v15) = v38;
    }

    v29 = MEMORY[0x1BFB5E030](v18, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1BF8DE810(v29, v31, &v47);

    v33 = v43;
    *(v43 + 1) = v32;
    *(v33 + 6) = 2048;
    v34 = *(a1 + 16);

    *(v33 + 14) = v34;

    _os_log_impl(&dword_1BF8B8000, v14, v15, "Got %s types from %ld retrieved contexts", v33, 0x16u);
    v35 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1BFB5F320](v35, -1, -1);
    MEMORY[0x1BFB5F320](v33, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return sub_1BF8DCBFC(v12);
}

uint64_t sub_1BF8DCBFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BC8, &qword_1BF9B86D8);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF8DF6FC(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1BF8DCC94(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_1BF8DCD08()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AE8, &unk_1BF9B8600);
      v8 = OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_19_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_8_2();
        sub_1BF958C60(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AF0, &qword_1BF9C27E0);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DCDC8()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8378, &qword_1BF9B85B0);
      v8 = OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_19_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_8_2();
        sub_1BF958C80(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_30_0();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DCEAC()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A18, &qword_1BF9B8510);
      v8 = OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_19_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_8_2();
        sub_1BF8C91C0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30_0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DCF6C()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8978, &unk_1BF9B8480);
      v8 = OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_19_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3AC(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v11 = OUTLINED_FUNCTION_30_0();
    memcpy(v11, v12, v13);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD020()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B10, &qword_1BF9C2B20);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF958CA0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_26_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD0D4()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A00, &qword_1BF9B84F8);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F8, &qword_1BF9B84F0);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD194()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89E8, &unk_1BF9B84E0);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD254()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B50, &qword_1BF9B8670);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C8, &qword_1BF9B98D0);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD314()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B48, &qword_1BF9B8668);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD3D4()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A68, &unk_1BF9B8560);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_19_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_8_2();
        sub_1BF958CC8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A60, &qword_1BF9B8558);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD49C()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A58, &qword_1BF9B8550);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_19_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_8_2();
        sub_1BF958CC8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_26_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD558()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AC0, &qword_1BF9B85C8);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF958CA0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD618()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B38, &unk_1BF9C2B10);
      v8 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B40, &qword_1BF9B8660);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD6D4()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
      v8 = OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_19_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_8_2();
        sub_1BF8C91E0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_26_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DD788()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AB0, &qword_1BF9B85B8);
      v8 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF8C9200(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AB8, &qword_1BF9B85C0);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_1BF8DD844(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = sub_1BF963CF4(*(a4 + 16), v7);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010) - 8) + 80);
  if (v5)
  {
    sub_1BF958D00();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v8;
}

void sub_1BF8DD964()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A08, &qword_1BF9B8500);
      v8 = OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_19_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3A8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A10, &qword_1BF9B8508);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DDA24()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B60, &unk_1BF9B8680);
      v8 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B68, &qword_1BF9B9C40);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DDB20()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B08, &unk_1BF9B8620);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF958C3C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_26_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DDC14(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_7_2();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_28_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF8DDD30(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DDE10()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B30, &unk_1BF9B8650);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF958EB4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v12 = OUTLINED_FUNCTION_30_0();
    memcpy(v12, v13, v14);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DDEC8()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8988, &qword_1BF9B8490);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF958EB4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8990, &qword_1BF9B8498);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DDF88()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B28, &unk_1BF9B8640);
      v8 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DE044()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AF8, &qword_1BF9B8610);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF958EDC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B00, &qword_1BF9B8618);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DE104()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8980, &unk_1BF9C2A70);
      v8 = OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_19_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_8_2();
        sub_1BF8C91C0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_30_0();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DE1B8()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AE0, &unk_1BF9B85F0);
      v8 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8870, &unk_1BF9B7C10);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DE274()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8998, &unk_1BF9B84A0);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF958F04(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_26_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DE328()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AA0, &qword_1BF9B85A0);
      v8 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AA8, &qword_1BF9B85A8);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DE3E4()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AD0, &unk_1BF9B85E0);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF958F2C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AD8, &qword_1BF9C3080);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DE4A4()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AC8, &qword_1BF9B85D8);
      v8 = OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF958F54(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_26_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DE558()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A90, &unk_1BF9C2AC0);
      v8 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8868, &unk_1BF9B8590);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}