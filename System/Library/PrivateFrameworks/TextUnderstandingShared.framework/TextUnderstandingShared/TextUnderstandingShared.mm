uint64_t sub_26EF768D0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26EF76920(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t String.looksLikeAPhoneShortCode.getter()
{
  sub_26EF8586C();
  if ((sub_26EF9C290() & 1) != 0 || (sub_26EF8586C(), (sub_26EF9C290())) && (sub_26EF76B0C(), sub_26EF9C210() >= 5))
  {
    sub_26EF76B0C();
    v0 = sub_26EF9C210() < 10;
  }

  else
  {
    v0 = 0;
  }

  sub_26EF76B0C();
  if (sub_26EF9C210() <= 7)
  {
    sub_26EF8586C();
    v0 |= sub_26EF9C290();
  }

  v1 = sub_26EF76B0C();
  v3 = String.digitsOnly.getter(v1, v2);
  v5 = v4;
  sub_26EF8586C();
  if (sub_26EF9C290())
  {
    LOBYTE(v0) = (sub_26EF9C210() == 7) | v0;
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_26EF9C210();

    LOBYTE(v0) = (v7 < 7) | v0;
  }

  else
  {
  }

  return v0 & 1;
}

uint64_t sub_26EF76AB8()
{

  return swift_slowAlloc();
}

uint64_t sub_26EF76AE0()
{
  result = *(v0 - 336);
  v2 = *(v0 - 360);
  return result;
}

void sub_26EF76AF4()
{

  JUMPOUT(0x2743859D0);
}

uint64_t String.digitsOnly.getter(uint64_t a1, uint64_t a2)
{
  v5 = sub_26EF9BDF0();
  v6 = sub_26EF76CFC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_26EF85878();
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v19[0] = a1;
  v19[1] = a2;
  sub_26EF9BDA0();
  sub_26EF9BDE0();
  v14 = *(v8 + 8);
  v14(v13, v5);
  sub_26EF76DBC();
  v15 = sub_26EF9C4E0();
  v14(v2, v5);
  v19[0] = v15;
  sub_26EF784C0(&qword_2806CFC20, &qword_26EF9DC80);
  sub_26EF85818();
  sub_26EF76EB0(v16, &qword_2806CFC20, &qword_26EF9DC80);
  v17 = sub_26EF9C110();

  return v17;
}

uint64_t sub_26EF76CC4()
{

  return sub_26EF9C760();
}

uint64_t sub_26EF76D48()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t sub_26EF76D7C()
{

  return swift_slowAlloc();
}

unint64_t sub_26EF76DBC()
{
  result = qword_280E143A0[0];
  if (!qword_280E143A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E143A0);
  }

  return result;
}

uint64_t sub_26EF76E10()
{

  return sub_26EF9C760();
}

void sub_26EF76E34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_26EF76EB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_26EF7948C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26EF76F38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF79934();
  *a1 = result;
  return result;
}

uint64_t sub_26EF76FBC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EF770FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26EF9BFB0();
    v9 = a1 + *(a3 + 24);

    return sub_26EF7EC68(v9, a2, v8);
  }
}

uint64_t sub_26EF77184(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_26EF9BFB0();
    v8 = v5 + *(a4 + 24);

    return sub_26EF78FAC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26EF77204()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EF77260()
{
  sub_26EF76E7C();
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  sub_26EF76D10();
  v4 = v3;
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  v8 = *(sub_26EF9C4D0() - 8);
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(v0 + 5);

  (*(v4 + 8))(&v0[v5], v2);
  if (!sub_26EF7EC68(&v0[v9], 1, v1))
  {
    (*(*(v1 - 8) + 8))(&v0[v9], v1);
  }

  sub_26EF85944();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

__n128 sub_26EF77400(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_26EF77424()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EF7746C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  MEMORY[0x274385A60](v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26EF774CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  MEMORY[0x274385A60](v0 + 88);
  v5 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

__n128 sub_26EF7756C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_26EF77580()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EF775B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EF775F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26EF77630()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EF776FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26EF77744()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EF777D8()
{
  v1 = *(v0 + 32);

  sub_26EF976C8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26EF77824@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF76FB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CaptionPhraseResolver.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26EF778F0();

  if (v2)
  {
    v4 = sub_26EF77DD4();

    if (v4)
    {
      result = swift_bridgeObjectRelease_n();
    }

    else
    {

      v2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_26EF778F0()
{
  v0 = sub_26EF9C030();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  sub_26EF797BC(0, &qword_2806CFC10, 0x277CCA8D8);
  v11 = sub_26EF976F4();
  if (!v11)
  {
    sub_26EF9C020();
    v19 = sub_26EF9C010();
    v20 = sub_26EF9C390();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26EF75000, v19, v20, "Could not find TextUnderstandingShared bundle", v21, 2u);
      MEMORY[0x2743859D0](v21, -1, -1);
    }

    v22 = *(v1 + 8);
    v23 = v5;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = sub_26EF97CAC(0xD000000000000015, 0x800000026EFA0B70, 0x7473696C70, 0xE500000000000000, v11);
  if (!v14)
  {
    sub_26EF9C020();
    v30 = v12;
    v31 = sub_26EF9C010();
    v32 = sub_26EF9C390();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136315138;
      v35 = [v30 bundlePath];
      v36 = sub_26EF9C160();
      v43 = v0;
      v37 = v36;
      v39 = v38;

      v40 = sub_26EF7E624(v37, v39, &v44);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_26EF75000, v31, v32, "Could not find caption phrase deny list at bundle path %s", v33, 0xCu);
      sub_26EF79770(v34);
      MEMORY[0x2743859D0](v34, -1, -1);
      MEMORY[0x2743859D0](v33, -1, -1);

      v22 = *(v1 + 8);
      v23 = v8;
      goto LABEL_13;
    }

    v22 = *(v1 + 8);
    v23 = v8;
LABEL_16:
    v41 = v0;
    goto LABEL_17;
  }

  v15 = v13;
  v16 = v14;
  sub_26EF797BC(0, &qword_2806CFC18, 0x277CBEAC0);

  v17 = sub_26EF78A40();
  if (!v17 || (v44 = 0, sub_26EF784C0(&qword_2806CFC20, &qword_26EF9DC80), sub_26EF9C090(), (v18 = v44) == 0))
  {
    sub_26EF9C020();

    v24 = sub_26EF9C010();
    v25 = sub_26EF9C390();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v43 = v0;
      v27 = v26;
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      v29 = sub_26EF7E624(v15, v16, &v44);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_26EF75000, v24, v25, "Failed to load contents at %s", v27, 0xCu);
      sub_26EF79770(v28);
      MEMORY[0x2743859D0](v28, -1, -1);
      MEMORY[0x2743859D0](v27, -1, -1);

      v22 = *(v1 + 8);
      v23 = v10;
LABEL_13:
      v41 = v43;
LABEL_17:
      v22(v23, v41);
      return 0;
    }

    v22 = *(v1 + 8);
    v23 = v10;
    goto LABEL_16;
  }

  return v18;
}

uint64_t sub_26EF77DD4()
{
  v0 = sub_26EF9C030();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  sub_26EF797BC(0, &qword_2806CFC10, 0x277CCA8D8);
  v11 = sub_26EF976F4();
  if (!v11)
  {
    sub_26EF9C020();
    v19 = sub_26EF9C010();
    v20 = sub_26EF9C390();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26EF75000, v19, v20, "Could not find TextUnderstandingShared bundle", v21, 2u);
      MEMORY[0x2743859D0](v21, -1, -1);
    }

    v22 = *(v1 + 8);
    v23 = v5;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = sub_26EF97CAC(0xD000000000000017, 0x800000026EFA0B50, 0x7473696C70, 0xE500000000000000, v11);
  if (!v14)
  {
    sub_26EF9C020();
    v30 = v12;
    v31 = sub_26EF9C010();
    v32 = sub_26EF9C390();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136315138;
      v35 = [v30 bundlePath];
      v36 = sub_26EF9C160();
      v43 = v0;
      v37 = v36;
      v39 = v38;

      v40 = sub_26EF7E624(v37, v39, &v44);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_26EF75000, v31, v32, "Could not find caption token deny list at bundle path %s", v33, 0xCu);
      sub_26EF79770(v34);
      MEMORY[0x2743859D0](v34, -1, -1);
      MEMORY[0x2743859D0](v33, -1, -1);

      v22 = *(v1 + 8);
      v23 = v8;
      goto LABEL_13;
    }

    v22 = *(v1 + 8);
    v23 = v8;
LABEL_16:
    v41 = v0;
    goto LABEL_17;
  }

  v15 = v13;
  v16 = v14;
  sub_26EF797BC(0, &qword_2806CFC18, 0x277CBEAC0);

  v17 = sub_26EF78A40();
  if (!v17 || (v44 = 0, sub_26EF784C0(&qword_2806CFC20, &qword_26EF9DC80), sub_26EF9C090(), (v18 = v44) == 0))
  {
    sub_26EF9C020();

    v24 = sub_26EF9C010();
    v25 = sub_26EF9C390();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v43 = v0;
      v27 = v26;
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      v29 = sub_26EF7E624(v15, v16, &v44);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_26EF75000, v24, v25, "Failed to load contents at %s", v27, 0xCu);
      sub_26EF79770(v28);
      MEMORY[0x2743859D0](v28, -1, -1);
      MEMORY[0x2743859D0](v27, -1, -1);

      v22 = *(v1 + 8);
      v23 = v10;
LABEL_13:
      v41 = v43;
LABEL_17:
      v22(v23, v41);
      return 0;
    }

    v22 = *(v1 + 8);
    v23 = v10;
    goto LABEL_16;
  }

  return v18;
}

Swift::Bool __swiftcall CaptionPhraseResolver.hasUninterestingCaption(with:languageCode:)(Swift::String_optional with, Swift::String_optional languageCode)
{
  object = languageCode.value._object;
  countAndFlagsBits = languageCode.value._countAndFlagsBits;
  v5 = with.value._object;
  v6 = with.value._countAndFlagsBits;
  v7 = sub_26EF784C0(&unk_2806CFB98, &qword_26EF9D8E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = *v2;
  if (!v11 || !v5)
  {
    return 0;
  }

  if (object)
  {
    v12 = countAndFlagsBits;
  }

  else
  {
    v12 = 0;
  }

  if (object)
  {
    v13 = object;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = *(v11 + 16);

  if (!v14)
  {

    return 0;
  }

  v15 = sub_26EF78F34(v12, v13);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = *(*(v11 + 56) + 8 * v15);
  v28 = v6;
  v29 = v5;
  sub_26EF76DBC();

  v27[2] = sub_26EF9C500();
  v27[3] = v19;

  sub_26EF9BF00();
  v20 = sub_26EF9BF50();
  sub_26EF78FAC(v10, 0, 1, v20);
  v21 = sub_26EF9C550();
  v23 = v22;
  sub_26EF78FD4(v10);

  v28 = v21;
  v29 = v23;
  MEMORY[0x28223BE20](v24);
  v27[-2] = &v28;
  v25 = sub_26EF790D0(sub_26EF79400, &v27[-4], v18);

  return v25;
}

uint64_t sub_26EF784C0(uint64_t *a1, uint64_t *a2)
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

Swift::Bool __swiftcall CaptionPhraseResolver.hasDisallowedCaption(with:languageCode:)(Swift::String_optional with, Swift::String_optional languageCode)
{
  object = languageCode.value._object;
  countAndFlagsBits = languageCode.value._countAndFlagsBits;
  v5 = with.value._object;
  v6 = with.value._countAndFlagsBits;
  v7 = sub_26EF784C0(&unk_2806CFB98, &qword_26EF9D8E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = *(v2 + 8);
  if (!v11 || !v5)
  {
    goto LABEL_13;
  }

  if (object)
  {
    v12 = countAndFlagsBits;
  }

  else
  {
    v12 = 0;
  }

  if (object)
  {
    v13 = object;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = *(v11 + 16);

  if (!v14)
  {

    goto LABEL_13;
  }

  v15 = sub_26EF78F34(v12, v13);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_13:
    v29 = 0;
    return v29 & 1;
  }

  v18 = *(*(v11 + 56) + 8 * v15);
  v32 = v6;
  v33 = v5;
  sub_26EF76DBC();

  v34 = sub_26EF9C500();
  v35 = v19;

  sub_26EF9BF00();
  v20 = sub_26EF9BF50();
  sub_26EF78FAC(v10, 0, 1, v20);
  v21 = sub_26EF9C550();
  v23 = v22;
  sub_26EF78FD4(v10);

  v24 = sub_26EF787A8(v18);
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x277D84F90];
  v26 = (v25 + 16);
  v32 = v21;
  v33 = v23;
  v34 = 15;

  sub_26EF784C0(&qword_2806CFBA8, qword_26EF9D8E8);
  sub_26EF79428();
  sub_26EF9C520();

  swift_beginAccess();
  v27 = *v26;

  v28 = sub_26EF787A8(v27);
  LOBYTE(v21) = sub_26EF78868(v24, v28);

  v29 = v21 ^ 1;
  return v29 & 1;
}

uint64_t sub_26EF787A8(uint64_t a1)
{
  result = MEMORY[0x2743849B0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_26EF7EDA0(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF78868(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      sub_26EF9C890();

      sub_26EF9C1F0();
      v19 = sub_26EF9C8B0();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = sub_26EF9C760();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id sub_26EF78A40()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26EF9C130();

  v2 = [v0 initWithContentsOfFile_];

  return v2;
}

uint64_t sub_26EF78AB4(uint64_t a1, id *a2)
{
  result = sub_26EF9C140();
  *a2 = 0;
  return result;
}

uint64_t sub_26EF78B2C(uint64_t a1, id *a2)
{
  v3 = sub_26EF9C150();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26EF78BB8()
{
  v0 = sub_26EF9C160();
  v1 = MEMORY[0x2743848F0](v0);

  return v1;
}

uint64_t sub_26EF78BF0()
{
  sub_26EF9C160();
  sub_26EF9C1F0();
}

uint64_t sub_26EF78C44()
{
  sub_26EF9C160();
  sub_26EF9C890();
  sub_26EF9C1F0();
  v0 = sub_26EF9C8B0();

  return v0;
}

uint64_t sub_26EF78CB8(uint64_t a1)
{
  v2 = sub_26EF79608(&qword_2806CFC48, type metadata accessor for NLLanguage);
  v3 = sub_26EF79608(&unk_2806CFC50, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26EF78D74(uint64_t a1)
{
  v2 = sub_26EF79608(&qword_2806CFBF0, type metadata accessor for NLTag);
  v3 = sub_26EF79608(&qword_2806CFBF8, type metadata accessor for NLTag);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26EF78E30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26EF9C130();

  *a2 = v5;
  return result;
}

uint64_t sub_26EF78E78(uint64_t a1)
{
  v2 = sub_26EF79608(&qword_2806CFC00, type metadata accessor for NLTagScheme);
  v3 = sub_26EF79608(&qword_2806CFC08, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_26EF78F34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26EF9C890();
  sub_26EF9C1F0();
  v6 = sub_26EF9C8B0();

  return sub_26EF79228(a1, a2, v6);
}

uint64_t sub_26EF78FD4(uint64_t a1)
{
  v2 = sub_26EF784C0(&unk_2806CFB98, &qword_26EF9D8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26EF7903C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26EF9C160();
  sub_26EF9C890();
  sub_26EF9C1F0();
  v4 = sub_26EF9C8B0();

  return sub_26EF792DC(a1, v4);
}

BOOL sub_26EF790D0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_26EF79180(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

unint64_t sub_26EF79228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26EF9C760() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26EF792DC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_26EF9C160();
    v8 = v7;
    if (v6 == sub_26EF9C160() && v8 == v9)
    {

      return i;
    }

    v11 = sub_26EF9C760();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_26EF79428()
{
  result = qword_280E13E50;
  if (!qword_280E13E50)
  {
    sub_26EF7948C(&qword_2806CFBA8, qword_26EF9D8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E13E50);
  }

  return result;
}

uint64_t sub_26EF7948C(uint64_t *a1, uint64_t *a2)
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

__n128 sub_26EF794D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26EF794F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26EF79514(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_26EF79608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EF79770(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26EF797BC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_26EF79810(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26EF79934()
{
  sub_26EF9C160();
  v0 = sub_26EF9C130();

  return v0;
}

uint64_t static HardwareDetection.isH13ANE()()
{
  v0 = objc_opt_self();
  if (![v0 hasANE])
  {
    goto LABEL_13;
  }

  v1 = [v0 aneSubType];
  v2 = sub_26EF9C160();
  v4 = v3;

  v5 = v2 == 3223912 && v4 == 0xE300000000000000;
  if (v5 || (sub_26EF9C760() & 1) != 0 || (v2 == 3289448 ? (v6 = v4 == 0xE300000000000000) : (v6 = 0), v6))
  {

LABEL_13:
    v8 = 0;
    return v8 & 1;
  }

  v7 = sub_26EF9C760();

  v8 = v7 ^ 1;
  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for HardwareDetection(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for HardwareDetection(_BYTE *result, int a2, int a3)
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

uint64_t static LanguageDetection.languageForLocaleIdentifier(_:)()
{
  v0 = sub_26EF76DBC();
  sub_26EF9C530();
  v1 = sub_26EF9C4F0();

  if (!*(v1 + 16))
  {
    __break(1u);
    goto LABEL_81;
  }

  v33 = *(v1 + 32);
  v34 = *(v1 + 40);
  v2 = sub_26EF9C4F0();
  if (!v2[2])
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v0 = v2[4];
  v3 = v2[5];

  v4 = *(v1 + 16);
  if (!v4)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v4 == 1)
  {

    v5 = v0 == 26746 && v3 == 0xE200000000000000;
    if (!v5 && (sub_26EF9C760() & 1) == 0)
    {
      return v0;
    }

    sub_26EF7A960();
    v0 = v0 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    goto LABEL_24;
  }

  v6 = v1 + 32 + 16 * v4;
  v8 = *(v6 - 16);
  v7 = *(v6 - 8);
  v9 = v0 == 26746 && v3 == 0xE200000000000000;
  if (!v9 && (sub_26EF76CC4() & 1) == 0)
  {
    v16 = v0 == 31349 && v3 == 0xE200000000000000;
    if (!v16 && (sub_26EF76CC4() & 1) == 0)
    {
      v23 = v0 == 29299 && v3 == 0xE200000000000000;
      if (v23 || (sub_26EF76CC4() & 1) != 0)
      {
        sub_26EF7A9A0();

        sub_26EF76E10();
        sub_26EF7A954();

        if (v1)
        {

          return 0x6E74614C2D7273;
        }

        return v0;
      }

      v27 = v0 == 26984 && v3 == 0xE200000000000000;
      if (v27 || (sub_26EF76CC4() & 1) != 0)
      {
        sub_26EF7A9A0();

        sub_26EF76E10();
        sub_26EF7A954();

        if ((v1 & 1) == 0)
        {
          return v0;
        }

        v0 = 26984;
        sub_26EF7A944();
      }

      goto LABEL_24;
    }

    v18 = *(v1 + 48);
    v17 = *(v1 + 56);
    v19 = v18 == 1819441475 && v17 == 0xE400000000000000;
    if (v19 || (v20 = *(v1 + 48), v21 = *(v1 + 56), (sub_26EF7A988() & 1) != 0))
    {

      return 31349;
    }

    v24 = v18 == 1650553409 && v17 == 0xE400000000000000;
    if (v24 || (sub_26EF7A988() & 1) != 0)
    {
      sub_26EF7A930();
LABEL_23:

LABEL_24:

      return v0;
    }

    if (v18 == 1853120844 && v17 == 0xE400000000000000)
    {
      v0 = 31349;
      sub_26EF7A944();

      goto LABEL_23;
    }

    sub_26EF76E10();
    sub_26EF7A954();

    if (v1)
    {
      v0 = 31349;
      sub_26EF7A944();

      goto LABEL_24;
    }

    sub_26EF784C0(&qword_2806CFD20, &unk_26EF9DE40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26EF9DE20;
    *(inited + 32) = 23125;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = 23105;
    *(inited + 56) = 0xE200000000000000;
    MEMORY[0x28223BE20](inited);
    sub_26EF7A970();
    sub_26EF790D0(sub_26EF79400, v30, inited);
    sub_26EF7A954();
    swift_setDeallocating();
    sub_26EF7A820();
    if (v8 != 17985 || v7 != 0xE200000000000000)
    {
      v32 = sub_26EF9C760();

      if ((v32 & 1) == 0)
      {
        return v0;
      }

      sub_26EF7A930();
      goto LABEL_24;
    }

LABEL_83:
    sub_26EF7A930();

    goto LABEL_24;
  }

  if (*(v1 + 16) >= 2uLL)
  {
    v12 = *(v1 + 48);
    v11 = *(v1 + 56);
    v13 = v12 == 1936613704 && v11 == 0xE400000000000000;
    if (v13 || (v14 = *(v1 + 48), v15 = *(v1 + 56), (sub_26EF7A988() & 1) != 0))
    {
      sub_26EF7A960();
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    }

    else
    {
      sub_26EF7A960();
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0x74000000000000;

      if (v12 != 1953390920 || v11 != 0xE400000000000000)
      {
        sub_26EF7A988();
        sub_26EF7A954();

        if ((v1 & 1) == 0)
        {
          sub_26EF784C0(&qword_2806CFD20, &unk_26EF9DE40);
          v25 = swift_initStackObject();
          *(v25 + 16) = xmmword_26EF9DE30;
          *(v25 + 32) = 19272;
          *(v25 + 40) = 0xE200000000000000;
          *(v25 + 48) = 20301;
          *(v25 + 56) = 0xE200000000000000;
          *(v25 + 64) = 22356;
          *(v25 + 72) = 0xE200000000000000;
          MEMORY[0x28223BE20](v25);
          sub_26EF7A970();
          sub_26EF790D0(sub_26EF7A910, v26, v25);
          sub_26EF7A954();
          swift_setDeallocating();
          sub_26EF7A820();

          return 0x736E61482D687ALL;
        }

        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t static LanguageDetection.languageStringForLanguageID(_:)(int a1)
{
  v1 = a1 - 2;
  if ((a1 - 2) > 0x38)
  {
    return 0;
  }

  result = *&aAr[8 * v1];
  v3 = qword_26EF9E030[v1];
  return result;
}

uint64_t static LanguageDetection.languageIdForLanguageString(_:)()
{
  v0 = 58;
  while (1)
  {
    static LanguageDetection.languageStringForLanguageID(_:)(v0);
    if (v1)
    {
      v2 = sub_26EF9C290();

      if (v2)
      {
        break;
      }
    }

    v0 = (v0 - 1);
    if (v0 <= 1)
    {
      return 1;
    }
  }

  return v0;
}

uint64_t static LanguageDetection.defaultLanguage()()
{
  v0 = sub_26EF9BF50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF9BF40();
  sub_26EF9BF10();
  (*(v1 + 8))(v4, v0);
  v5 = static LanguageDetection.languageForLocaleIdentifier(_:)();

  return v5;
}

uint64_t static LanguageDetection.userLanguages()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_26EF9C130();
  v2 = [v0 stringArrayForKey_];

  if (v2)
  {
    v3 = sub_26EF9C2E0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26EF7A448(v3);

  return v4;
}

uint64_t sub_26EF7A448(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v2 + 16);

  v5 = 0;
  v6 = v2 + 40;
  v36 = v1;
LABEL_5:
  v7 = (v6 + 16 * v5);
  while (v3 != v5)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v7 - 1);
    v9 = *v7;
    sub_26EF76DBC();

    if ((sub_26EF9C560() & 1) == 0 && (sub_26EF9C560() & 1) == 0)
    {
      v10 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26EF872A8(0, *(v36 + 16) + 1, 1);
        v10 = v36;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_26EF872A8((v11 > 1), v12 + 1, 1);
        v10 = v36;
      }

      ++v5;
      *(v10 + 16) = v12 + 1;
      v36 = v10;
      v13 = v10 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v9;
      v6 = v2 + 40;
      goto LABEL_5;
    }

    v7 += 2;
    ++v5;
  }

  v14 = *(v36 + 16);
  if (v14)
  {
    v37 = MEMORY[0x277D84F90];
    sub_26EF872A8(0, v14, 0);
    v15 = v37;
    v16 = (v36 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      v19 = sub_26EF9BF30();
      v21 = v20;

      v23 = *(v37 + 16);
      v22 = *(v37 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26EF872A8((v22 > 1), v23 + 1, 1);
      }

      *(v37 + 16) = v23 + 1;
      v24 = v37 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v16 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  if (!*(v15 + 16))
  {

    v25 = sub_26EF9BF20();
    v26 = *(v25 + 16);
    if (v26)
    {
      v38 = MEMORY[0x277D84F90];
      sub_26EF872A8(0, v26, 0);
      v15 = v38;
      v27 = (v25 + 40);
      do
      {
        v28 = *(v27 - 1);
        v29 = *v27;

        v30 = sub_26EF9BF30();
        v32 = v31;

        v34 = *(v38 + 16);
        v33 = *(v38 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_26EF872A8((v33 > 1), v34 + 1, 1);
        }

        *(v38 + 16) = v34 + 1;
        v35 = v38 + 16 * v34;
        *(v35 + 32) = v30;
        *(v35 + 40) = v32;
        v27 += 2;
        --v26;
      }

      while (v26);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }
  }

  return sub_26EF787A8(v15);
}

uint64_t sub_26EF7A79C()
{
  v0 = sub_26EF9C160();
  v2 = v1;
  if (v0 == sub_26EF9C160() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26EF9C760();
  }

  return v5 & 1;
}

uint64_t sub_26EF7A820()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

_BYTE *storeEnumTagSinglePayload for LanguageDetection(_BYTE *result, int a2, int a3)
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

uint64_t sub_26EF7A988()
{

  return sub_26EF9C760();
}

uint64_t sub_26EF7A9A0()
{
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
}

uint64_t LearnFromThisAppCheckerApplication.hashValue.getter()
{
  v1 = *v0;
  sub_26EF9C890();
  MEMORY[0x274384EF0](v1);
  return sub_26EF9C8B0();
}

uint64_t sub_26EF7AA54()
{
  v1 = *v0;
  sub_26EF9C890();
  MEMORY[0x274384EF0](v1);
  return sub_26EF9C8B0();
}

uint64_t static LearnFromThisAppChecker.isLearningAllowed(application:)(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
    case 5:
    case 9:
      sub_26EF76CE4();
      if (v1)
      {
        return 0;
      }

      goto LABEL_21;
    case 2:
    case 8:
      sub_26EF76CE4();
      if (!v1)
      {
        goto LABEL_19;
      }

      return 0;
    case 3:
      sub_26EF76CE4();
      if (!v1)
      {
        goto LABEL_19;
      }

      return 0;
    case 4:
      goto LABEL_21;
    case 6:
      sub_26EF76CE4();
      if (!v1)
      {
        goto LABEL_19;
      }

      return 0;
    case 7:
      sub_26EF76CE4();
      if (!v1)
      {
        goto LABEL_19;
      }

      return 0;
    case 0xA:
      sub_26EF76CE4();
      if (!v1)
      {
        goto LABEL_19;
      }

      return 0;
    case 0xB:
      sub_26EF76CE4();
      if (!v1)
      {
        goto LABEL_19;
      }

      return 0;
    case 0xC:
      sub_26EF76CE4();
      if (!v1)
      {
        goto LABEL_19;
      }

      return 0;
    default:
      sub_26EF76CE4();
      if (v1)
      {
        return 0;
      }

LABEL_19:
      sub_26EF7AF74();
LABEL_21:
      v3 = sub_26EF9C130();
      v2 = sub_26EF7AC90(v3);

      return v2;
  }
}

uint64_t static LearnFromThisAppChecker.isLearningAllowed(bundleIdentifier:)(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26EF9C130();
  v4 = sub_26EF7AC90(v3);

  return v4;
}

uint64_t sub_26EF7AC90(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

unint64_t sub_26EF7ACF0()
{
  result = qword_2806CFD28;
  if (!qword_2806CFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFD28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LearnFromThisAppCheckerApplication(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LearnFromThisAppCheckerApplication(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LearnFromThisAppChecker(_BYTE *result, int a2, int a3)
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

uint64_t sub_26EF7AF80(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_26EF7903C(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26EF7AFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26EF78F34(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_26EF7B030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26EF78F34(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_26EF7B080()
{
  v0 = static LanguageDetection.userLanguages()();
  v1 = sub_26EF7B5C8(v0);

  return LocaleDetection.init(languageLimit:preferredLocales:)(0, v1, &qword_280E141E8);
}

uint64_t LocaleDetection.init(languageLimit:preferredLocales:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v9 = MEMORY[0x277D84FA0];
  v5 = sub_26EF7BB90(a2, a1, &v9);

  v6 = sub_26EF7BCD0(v5);
  sub_26EF784C0(&qword_2806CFD30, &qword_26EF9E330);
  swift_allocObject();
  v7 = sub_26EF7E5D4(50);

  *a3 = a1;
  a3[1] = v7;
  a3[2] = v6;
  return result;
}

uint64_t static LocaleDetection.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_280E141E0 != -1)
  {
    swift_once();
  }

  v2 = unk_280E141F0;
  v3 = qword_280E141F8;
  *a1 = qword_280E141E8;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t static LocaleDetection.isLanguageMismatched(forIdentifier:otherIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26EF8018C();
  v9 = sub_26EF76CFC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF76AAC();
  if (sub_26EF9C210() >= 2)
  {
    sub_26EF801CC();
    if (sub_26EF9C210() >= 2)
    {
      sub_26EF76AAC();
      v21 = static LanguageDetection.languageForLocaleIdentifier(_:)();
      v23 = v22;
      sub_26EF801CC();
      if (v21 != static LanguageDetection.languageForLocaleIdentifier(_:)() || v23 != v24)
      {
        v26 = sub_26EF9C760();

        return v26 & 1;
      }

      goto LABEL_16;
    }
  }

  sub_26EF9C020();
  v16 = sub_26EF9C010();
  v17 = sub_26EF9C390();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26EF75000, v16, v17, "Provided locale identifiers for comparison are not the expected length", v18, 2u);
    sub_26EF76AF4();
  }

  (*(v11 + 8))(v15, v8);
  if (v5 == a3 && v4 == a4)
  {
LABEL_16:
    v20 = 1;
    return v20 & 1;
  }

  sub_26EF76AAC();
  v20 = sub_26EF9C760();
  return v20 & 1;
}

void *static LocaleDetection.languageTag(forLocaleIdentifier:)()
{
  v0 = sub_26EF8018C();
  v1 = sub_26EF76CFC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_26EF76DBC();
  if (sub_26EF9C560())
  {
    result = sub_26EF9C4F0();
    if (!result[2])
    {
      __break(1u);
      return result;
    }

    v8 = result[4];
    v7 = result[5];
  }

  else
  {
  }

  sub_26EF76AAC();
  if (sub_26EF9C210() >= 2)
  {
    sub_26EF76AAC();
    v19 = static LanguageDetection.languageForLocaleIdentifier(_:)();
  }

  else
  {

    sub_26EF9C020();
    v9 = sub_26EF9C010();
    v10 = sub_26EF9C390();
    if (sub_26EF8013C(v10))
    {
      *swift_slowAlloc() = 0;
      sub_26EF800D8();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      sub_26EF80018();
    }

    v16 = *(v3 + 8);
    v17 = sub_26EF801CC();
    v18(v17);
    return 0;
  }

  return v19;
}

uint64_t sub_26EF7B5C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26EF857F0(*(a1 + 16), 0);
  v4 = sub_26EF7FC48(&v6, (v3 + 32), v2, a1);
  sub_26EF770CC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_26EF7B658(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26EF857F0(*(a1 + 16), 0);
  v4 = sub_26EF7FDA4(&v6, (v3 + 32), v2, a1);
  sub_26EF770CC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

const void *sub_26EF7B6E8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_26EF800F8();
  if (v3 ^ v4 | v2)
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_26EF784C0(&qword_2806CFD58, &qword_26EF9E398);
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    sub_26EF80108(v6 - 32);
  }

  sub_26EF80170();
  return v5;
}

const void *sub_26EF7B774(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_26EF800F8();
  if (v3 ^ v4 | v2)
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_26EF784C0(&qword_2806CFD50, &qword_26EF9E390);
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    sub_26EF80108(v6 - 32);
  }

  sub_26EF80170();
  return v5;
}

const void *sub_26EF7B800(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_26EF800F8();
  if (v3 ^ v4 | v2)
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_26EF784C0(&qword_2806CFD48, &qword_26EF9E388);
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    sub_26EF80108(v6 - 32);
  }

  sub_26EF80170();
  return v5;
}

uint64_t sub_26EF7B88C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26EF9C030();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  if (a2 && *(*a3 + 16) >= a2)
  {
LABEL_7:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  if (sub_26EF9C210() < 2)
  {
    sub_26EF9C020();
    v16 = sub_26EF9C010();
    v17 = sub_26EF9C390();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26EF75000, v16, v17, "Locale used for language tag determination is not the right length", v18, 2u);
      MEMORY[0x2743859D0](v18, -1, -1);
    }

    result = (*(v9 + 8))(v13, v8);
    goto LABEL_7;
  }

  v19 = static LanguageDetection.languageForLocaleIdentifier(_:)();
  v21 = v20;
  v22 = *a3;

  v23 = sub_26EF7BAA4(v19, v21, v22);

  if (v23)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    *a4 = v19;
    *(a4 + 8) = v21;
    *(a4 + 16) = v15;
    *(a4 + 24) = v14;
  }

  sub_26EF7EDA0(&v24, v19, v21);
}

BOOL sub_26EF7BAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_26EF9C890();
  sub_26EF9C1F0();
  v7 = sub_26EF9C8B0();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_26EF9C760();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_26EF7BB90(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = *v5;
      v22[0] = *(v5 - 1);
      v22[1] = v7;

      sub_26EF7B88C(v22, a2, a3, &v18);
      if (v3)
      {
        break;
      }

      v8 = v19;
      if (v19)
      {
        v9 = v18;
        v10 = v20;
        v23 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_26EF850C0(0, *(v6 + 16) + 1, 1, v6);
        }

        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          v6 = sub_26EF850C0(v11 > 1, v12 + 1, 1, v6);
        }

        *(v6 + 16) = v12 + 1;
        v13 = (v6 + 32 * v12);
        v13[4] = v9;
        v13[5] = v8;
        v14 = v23;
        v13[6] = v10;
        v13[7] = v14;
      }

      v5 += 2;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_26EF7BCD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_26EF784C0(&qword_2806CFD78, &qword_26EF9E3B8);
    v1 = sub_26EF9C670();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_26EF7F6A0(v2, 1, &v4);

  return v4;
}

Swift::Bool __swiftcall LocaleDetection.isLanguageMismatched(forMessage:localeIdentifier:)(Swift::String forMessage, Swift::String localeIdentifier)
{
  object = localeIdentifier._object;
  countAndFlagsBits = localeIdentifier._countAndFlagsBits;
  v5 = sub_26EF9C030();
  v6 = sub_26EF76CFC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_26EF80088();
  v13 = v11 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v52 - v18);
  v53 = *v2;
  v54 = *(v2 + 8);
  v20 = sub_26EF800B4();
  v22 = sub_26EF7C14C(v20, v21, 0);
  if (!v23)
  {
    sub_26EF9C020();
    v40 = sub_26EF9C010();
    v41 = sub_26EF9C380();
    if (sub_26EF8013C(v41))
    {
      *swift_slowAlloc() = 0;
      sub_26EF800D8();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      sub_26EF80018();
    }

    (*(v8 + 8))(v13, v5);
    goto LABEL_20;
  }

  v24 = v22;
  v25 = v23;
  v52 = v5;
  v26 = static LocaleDetection.languageTag(forLocaleIdentifier:)();
  v28 = v27;
  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    sub_26EF9C020();

    v47 = sub_26EF9C010();
    sub_26EF9C380();

    if (sub_26EF80158())
    {
      sub_26EF800C0();
      v48 = sub_26EF80098();
      sub_26EF80130(v48);
      *v25 = 136315138;
      *(v25 + 4) = sub_26EF7E624(countAndFlagsBits, object, &v53);
      sub_26EF8005C(&dword_26EF75000, v49, v50, "Unable to get language tag for localeIdentifier %s");
      sub_26EF79770(v19);
      sub_26EF80018();
      sub_26EF80034();
    }

    (*(v8 + 8))(v17, v52);
    goto LABEL_20;
  }

  v30 = v26;
  sub_26EF9C020();

  v31 = sub_26EF9C010();
  v32 = sub_26EF9C380();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v53 = sub_26EF801A8();
    *v33 = 136315394;
    v34 = sub_26EF800B4();
    *(v33 + 4) = sub_26EF7E624(v34, v35, v36);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_26EF7E624(v30, v28, &v53);
    _os_log_impl(&dword_26EF75000, v31, v32, "Detected language for isLanguageMismatchedForMessage:withLocaleIdentifier: is %s, and language tag for comparison is %s.", v33, 0x16u);
    swift_arrayDestroy();
    sub_26EF76AF4();
    sub_26EF76AF4();
  }

  (*(v8 + 8))(v19, v52);
  if (v24 == v30 && v25 == v28)
  {

LABEL_20:
    v39 = 0;
    return v39 & 1;
  }

  sub_26EF800B4();
  v38 = sub_26EF9C760();

  v39 = v38 ^ 1;
  return v39 & 1;
}

uint64_t sub_26EF7C14C(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v86 = a1;
  v87 = a2;
  v5 = sub_26EF9C030();
  v6 = *(v5 - 8);
  v88 = v5;
  v89 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v84 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v83 = &v83 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v83 - v12;
  v85 = *v3;
  v14 = MEMORY[0x277D84F90];
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  v18 = 0;
LABEL_5:
  for (i = (v15 + 40 + 16 * v18); ; i += 2)
  {
    if (v16 == v18)
    {

      sub_26EF9C020();

      v29 = sub_26EF9C010();
      v30 = sub_26EF9C380();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v90 = v32;
        *v31 = 136315138;
        v33 = MEMORY[0x274384940](v14, MEMORY[0x277D837D0]);
        v35 = sub_26EF7E624(v33, v34, &v90);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_26EF75000, v29, v30, "Setting language tags as constraints: %s", v31, 0xCu);
        sub_26EF79770(v32);
        MEMORY[0x2743859D0](v32, -1, -1);
        MEMORY[0x2743859D0](v31, -1, -1);
      }

      v36 = v88;
      v37 = *(v89 + 8);
      v37(v13, v88);
      v38 = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
      v39 = *(v14 + 16);
      if (v39)
      {
        v90 = MEMORY[0x277D84F90];
        sub_26EF872C8(0, v39, 0);
        v40 = v90;
        v41 = (v14 + 40);
        do
        {
          v42 = *(v41 - 1);
          v43 = *v41;

          v44 = sub_26EF9C130();

          v90 = v40;
          v46 = *(v40 + 16);
          v45 = *(v40 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_26EF872C8((v45 > 1), v46 + 1, 1);
            v40 = v90;
          }

          *(v40 + 16) = v46 + 1;
          *(v40 + 8 * v46 + 32) = v44;
          v41 += 2;
          --v39;
        }

        while (v39);
      }

      type metadata accessor for NLLanguage(0);
      v47 = sub_26EF9C2D0();

      [v38 setLanguageConstraints_];

      v48 = sub_26EF9C130();
      [v38 processString_];

      result = v85;
      if (v85 < 0)
      {
        goto LABEL_48;
      }

      v49 = sub_26EF9C480();
      v50 = [v38 dominantLanguage];
      if (v50)
      {
        v51 = v50;
        v52 = *MEMORY[0x277CD8858];
        v53 = sub_26EF9C160();
        v55 = v54;
        if (v53 == sub_26EF9C160() && v55 == v56)
        {

          goto LABEL_34;
        }

        v58 = sub_26EF9C760();

        if (v58)
        {

LABEL_34:
          return 0;
        }

        v87 = v37;
        v60 = COERCE_DOUBLE(sub_26EF7AF80(v51, v49));
        v62 = v61;

        if ((v62 & 1) == 0 && v60 > 0.95)
        {
          v63 = v83;
          sub_26EF9C020();
          v64 = v51;
          v65 = sub_26EF9C010();
          v66 = sub_26EF9C380();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v90 = v68;
            *v67 = 136315394;
            v69 = sub_26EF9C160();
            v71 = sub_26EF7E624(v69, v70, &v90);

            *(v67 + 4) = v71;
            *(v67 + 12) = 2048;
            *(v67 + 14) = v60;
            _os_log_impl(&dword_26EF75000, v65, v66, "The probability for this message being for language %s is %f", v67, 0x16u);
            sub_26EF79770(v68);
            MEMORY[0x2743859D0](v68, -1, -1);
            MEMORY[0x2743859D0](v67, -1, -1);

            v72 = v88;
            v73 = v83;
          }

          else
          {

            v73 = v63;
            v72 = v36;
          }

          v87(v73, v72);
          v59 = sub_26EF9C160();

          return v59;
        }

        v74 = v84;
        sub_26EF9C020();
        v75 = v51;
        v76 = sub_26EF9C010();
        v77 = sub_26EF9C370();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v90 = v79;
          *v78 = 136315138;
          v80 = sub_26EF9C160();
          v82 = sub_26EF7E624(v80, v81, &v90);

          *(v78 + 4) = v82;
          _os_log_impl(&dword_26EF75000, v76, v77, "Unable to find probability or probability is too low for language %s", v78, 0xCu);
          sub_26EF79770(v79);
          MEMORY[0x2743859D0](v79, -1, -1);
          MEMORY[0x2743859D0](v78, -1, -1);
        }

        else
        {
        }

        v87(v74, v36);
      }

      else
      {
      }

      return 0;
    }

    if (v18 >= *(v15 + 16))
    {
      break;
    }

    v21 = *(i - 1);
    v20 = *i;

    v22 = static LocaleDetection.languageTag(forLocaleIdentifier:)();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26EF851D0(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_26EF851D0(v26 > 1, v27 + 1, 1, v14);
        v14 = result;
      }

      ++v18;
      *(v14 + 16) = v27 + 1;
      v28 = v14 + 16 * v27;
      *(v28 + 32) = v22;
      *(v28 + 40) = v24;
      goto LABEL_5;
    }

    ++v18;
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t LocaleDetection.locale(forMessage:outgoingMessageHistory:defaultLocale:defaultLocaleLastChangedDate:sender:forceRunLanguageDetection:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v216 = a2;
  v211 = a8;
  v212 = a3;
  v209 = a7;
  v213 = a1;
  v214 = a6;
  v12 = sub_26EF9C030();
  v218 = sub_26EF76CFC(v12);
  v219 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v218);
  sub_26EF80088();
  v206 = v16 - v17;
  sub_26EF80050();
  MEMORY[0x28223BE20](v18);
  sub_26EF8007C();
  v204 = v19;
  sub_26EF80050();
  MEMORY[0x28223BE20](v20);
  sub_26EF8007C();
  v207 = v21;
  sub_26EF80050();
  MEMORY[0x28223BE20](v22);
  sub_26EF8007C();
  v208 = v23;
  sub_26EF80050();
  MEMORY[0x28223BE20](v24);
  sub_26EF8007C();
  v203 = v25;
  sub_26EF80050();
  MEMORY[0x28223BE20](v26);
  sub_26EF8007C();
  v205 = v27;
  sub_26EF80050();
  MEMORY[0x28223BE20](v28);
  sub_26EF8007C();
  v202 = v29;
  sub_26EF80050();
  MEMORY[0x28223BE20](v30);
  sub_26EF801D8();
  MEMORY[0x28223BE20](v31);
  sub_26EF8007C();
  v215 = v32;
  sub_26EF80050();
  MEMORY[0x28223BE20](v33);
  countAndFlagsBits = &v201 - v34;
  v35 = sub_26EF784C0(&qword_2806CFD38, &qword_26EF9E338);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v201 - v37;
  v39 = sub_26EF9BEC0();
  v40 = sub_26EF76CFC(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_26EF80088();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v201 - v49;
  v51 = a4;
  if (a5)
  {
    v52 = a4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v52 = 0;
  }

  if (a5)
  {
    v53 = a5;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v52;
  }

  if (v54 && a5)
  {
    sub_26EF7EBF8(v214, v38);
    if (sub_26EF7EC68(v38, 1, v39) == 1)
    {
      sub_26EF7EC90(v38);

      v55 = v51;
      v56 = v51;
    }

    else
    {
      (*(v42 + 32))(v50, v38, v39);

      sub_26EF9BEB0();
      sub_26EF9BEA0();
      v63 = v62;
      v64 = *(v42 + 8);
      v64(v47, v39);
      v55 = v51;
      if (v63 <= 3600.0)
      {
        sub_26EF9C020();

        v110 = sub_26EF9C010();
        v111 = sub_26EF9C380();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = sub_26EF76D7C();
          v221 = sub_26EF801A8();
          *v112 = 136315650;
          v113 = sub_26EF801EC();
          *(v112 + 4) = sub_26EF7E624(v113, a5, v114);
          *(v112 + 12) = 2048;
          *(v112 + 14) = 0x40AC200000000000;
          *(v112 + 22) = 2080;
          v115 = sub_26EF801EC();
          *(v112 + 24) = sub_26EF7E624(v115, a5, v116);
          _os_log_impl(&dword_26EF75000, v110, v111, "Default locale %s was changed less than %f seconds ago, detection result %s.", v112, 0x20u);
          swift_arrayDestroy();
          v55 = v51;
          sub_26EF76AF4();
          sub_26EF76AF4();
        }

        (*(v219 + 8))(countAndFlagsBits, v218);
        v64(v50, v39);
        return v55;
      }

      v64(v50, v39);

      v56 = v51;
    }

    v61 = a5;
    v57 = v217;
  }

  else
  {
    if (v54)
    {
      v56 = v51;
    }

    else
    {
      v56 = 0;
    }

    v57 = v217;
    v58 = v217[2];

    v55 = sub_26EF7D9F4(v59);
    a5 = v60;

    v61 = 0;
  }

  v65 = *(v57[2] + 16);
  if ((a9 & 1) == 0 && v65 == 1)
  {
    if (v61)
    {
      v66 = v61;
    }

    else
    {
      v66 = 0xE300000000000000;
    }

    if (a5)
    {
      v67 = a5;
    }

    else
    {
      v67 = 0xE300000000000000;
    }

    v68 = v215;
    sub_26EF9C020();

    v69 = sub_26EF9C010();
    sub_26EF9C380();

    if (sub_26EF80118())
    {
      if (a5)
      {
        v70 = v55;
      }

      else
      {
        v70 = 7104878;
      }

      if (v61)
      {
        v71 = v56;
      }

      else
      {
        v71 = 7104878;
      }

      v72 = swift_slowAlloc();
      v221 = sub_26EF801A8();
      *v72 = 136315394;
      v73 = sub_26EF7E624(v71, v66, &v221);

      *(v72 + 4) = v73;
      *(v72 + 12) = 2080;
      v74 = sub_26EF7E624(v70, v67, &v221);

      *(v72 + 14) = v74;
      sub_26EF800E8();
      _os_log_impl(v75, v76, v77, v78, v79, 0x16u);
      swift_arrayDestroy();
      sub_26EF80018();
      sub_26EF80034();

      (*(v219 + 8))(v215, v218);
    }

    else
    {

      (*(v219 + 8))(v68, v218);
    }

    return v55;
  }

  v214 = v55;
  v215 = v56;
  sub_26EF9C020();
  v80 = sub_26EF9C010();
  v81 = sub_26EF9C380();
  v82 = sub_26EF8013C(v81);
  v83 = v219;
  if (v82)
  {
    v84 = sub_26EF800C0();
    *v84 = 134217984;
    *(v84 + 4) = v65;
    _os_log_impl(&dword_26EF75000, v80, v56, "Falling back to language detection due to %ld keyboard locales", v84, 0xCu);
    sub_26EF76AF4();
  }

  v85 = a9 ^ 1;

  v88 = *(v83 + 8);
  v86 = v83 + 8;
  v87 = v88;
  v88(v9, v218);
  if (v216)
  {
    v89 = HIBYTE(v216) & 0xF;
    if ((v216 & 0x2000000000000000) == 0)
    {
      v89 = v213 & 0xFFFFFFFFFFFFLL;
    }

    if (v89)
    {
      v90 = v217[1];
      v91 = v217[2];
      v221 = *v217;
      v222 = v90;
      v223 = v91;

      v92._countAndFlagsBits = v213;
      v92._object = v216;
      v93 = LocaleDetection.userLocaleDetected(fromString:limitToPreferredLocales:)(v92, v85 & 1);

      v219 = v90;

      if (v93.value._object)
      {
        v94 = (v93.value._object >> 56) & 0xF;
        countAndFlagsBits = v93.value._countAndFlagsBits;
        if ((v93.value._object & 0x2000000000000000) == 0)
        {
          v94 = v93.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v94)
        {

          if ((a9 & 1) == 0)
          {
LABEL_49:
            if (v61)
            {
              v97 = v61;
            }

            else
            {
              v97 = 0xE000000000000000;
            }

            v98 = v205;
            sub_26EF9C020();

            v99 = sub_26EF9C010();
            sub_26EF9C380();

            if (sub_26EF80118())
            {
              if (v61)
              {
                v100 = v215;
              }

              else
              {
                v100 = 0;
              }

              v101 = sub_26EF76D7C();
              v221 = sub_26EF801A8();
              *v101 = 134218498;
              *(v101 + 4) = sub_26EF9C210();

              *(v101 + 12) = 2080;
              v102 = sub_26EF7E624(v100, v97, &v221);

              *(v101 + 14) = v102;
              *(v101 + 22) = 2080;
              v103 = countAndFlagsBits;
              *(v101 + 24) = sub_26EF7E624(countAndFlagsBits, v93.value._object, &v221);
              sub_26EF800E8();
              _os_log_impl(v104, v105, v106, v107, v108, 0x20u);
              swift_arrayDestroy();
              sub_26EF80018();
              sub_26EF80034();

              v87(v205, v218);
              v109 = v211;
            }

            else
            {

              v87(v98, v218);
              v103 = countAndFlagsBits;
              v109 = v211;
            }

            if (v109)
            {

              sub_26EF7E110(v103, v93.value._object, v209, v109);
            }

            return v103;
          }

          v95 = countAndFlagsBits;
          sub_26EF7AFD8(countAndFlagsBits, v93.value._object, v91);
          if (v96)
          {

            goto LABEL_49;
          }

          v192 = v202;
          sub_26EF9C020();

          v193 = sub_26EF9C010();
          sub_26EF9C370();

          if (sub_26EF80118())
          {
            sub_26EF800C0();
            v194 = sub_26EF76AB8();
            v221 = v194;
            *v95 = 136315138;
            v195 = sub_26EF801EC();
            v197 = sub_26EF7E624(v195, v93.value._object, v196);

            *(v95 + 4) = v197;
            sub_26EF76E34(&dword_26EF75000, v198, v199, "ML language detection detected %s but returning nil for language since it's not one of the user's preferred locales");
            sub_26EF79770(v194);
            sub_26EF80034();
            sub_26EF76AF4();
          }

          else
          {
          }

          v87(v192, v218);
          return 0;
        }
      }
    }
  }

  v216 = v87;
  v219 = v86;
  if (v212)
  {
    v117 = v212;
  }

  else
  {
    v117 = MEMORY[0x277D84F90];
  }

  v221 = v117;

  sub_26EF784C0(&qword_2806CFC20, &qword_26EF9DC80);
  sub_26EF7EB94();
  v118 = sub_26EF9C110();
  v120 = v119;
  v121 = v217[1];
  v122 = v217[2];
  v221 = *v217;
  v222 = v121;
  v223 = v122;

  v123._countAndFlagsBits = v118;
  v123._object = v120;
  v124 = LocaleDetection.userLocaleDetected(fromString:limitToPreferredLocales:)(v123, v85 & 1);
  v55 = v124.value._countAndFlagsBits;

  if (!v124.value._object)
  {
LABEL_80:

    v146 = v215;
    if (!v61)
    {
      goto LABEL_86;
    }

    v147 = HIBYTE(v61) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v147 = v215 & 0xFFFFFFFFFFFFLL;
    }

    if (v147)
    {

      v148 = v207;
      sub_26EF9C020();

      v149 = sub_26EF9C010();
      sub_26EF9C380();

      v150 = sub_26EF80118();
      v151 = v216;
      if (v150)
      {
        sub_26EF800C0();
        v152 = v146;
        v153 = sub_26EF76AB8();
        v221 = v153;
        *a5 = 136315138;
        *(a5 + 4) = sub_26EF7E624(v152, v61, &v221);
        sub_26EF76E34(&dword_26EF75000, v154, v155, "Failed to detect a locale so falling back to the default locale: %s");
        sub_26EF79770(v153);
        sub_26EF80034();
        sub_26EF76AF4();

        v151(v148, v218);
        return v152;
      }

      else
      {

        v151(v148, v218);
        return v146;
      }
    }

    else
    {
LABEL_86:
      v156 = v216;
      if (v211 && (v157 = sub_26EF7E29C(v209, v211), v158))
      {
        v159 = v157;
        v160 = v158;

        v161 = v204;
        sub_26EF9C020();

        v162 = sub_26EF9C010();
        sub_26EF9C380();

        if (sub_26EF80158())
        {
          sub_26EF800C0();
          v163 = sub_26EF80098();
          v221 = v163;
          *v146 = 136315138;
          v164 = sub_26EF801EC();
          *(v146 + 4) = sub_26EF7E624(v164, v160, v165);
          sub_26EF8005C(&dword_26EF75000, v166, v167, "There was no default locale specified. Falling back to last confident locale for sender: %s");
          sub_26EF79770(v163);
          sub_26EF76AF4();
          sub_26EF80034();
        }

        v156(v161, v218);
        return v159;
      }

      else
      {
        v168 = v206;
        sub_26EF9C020();

        v169 = sub_26EF9C010();
        sub_26EF9C380();

        if (sub_26EF80118())
        {
          sub_26EF800C0();
          v170 = sub_26EF80098();
          *v146 = 136315138;
          v171 = v214;
          v220 = v170;
          v221 = v214;
          v222 = a5;

          sub_26EF784C0(&qword_2806CFD40, &qword_26EF9EE00);
          v172 = sub_26EF9C1C0();
          v174 = sub_26EF7E624(v172, v173, &v220);
          v55 = v171;

          *(v146 + 4) = v174;
          sub_26EF800E8();
          _os_log_impl(v175, v176, v177, v178, v179, 0xCu);
          sub_26EF79770(v170);
          sub_26EF80018();
          sub_26EF80034();

          v156(v168, v218);
        }

        else
        {

          v156(v168, v218);
          return v214;
        }
      }
    }

    return v55;
  }

  v125 = (v124.value._object >> 56) & 0xF;
  if ((v124.value._object & 0x2000000000000000) == 0)
  {
    v125 = v124.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v125)
  {

    goto LABEL_80;
  }

  if (a9)
  {
    v126 = sub_26EF801C0();
    sub_26EF7AFD8(v126, v127, v122);
    if (!v128)
    {

      v183 = v203;
      sub_26EF9C020();

      v184 = sub_26EF9C010();
      sub_26EF9C370();

      if (sub_26EF80158())
      {
        sub_26EF800C0();
        v185 = sub_26EF80098();
        v221 = v185;
        *v122 = 136315138;
        v186 = sub_26EF801C0();
        v189 = sub_26EF7E624(v186, v187, v188);

        *(v122 + 4) = v189;
        sub_26EF8005C(&dword_26EF75000, v190, v191, "ML language detection detected %s but returning nil for language since it's not one of the user's preferred locales");
        sub_26EF79770(v185);
        sub_26EF80018();
        sub_26EF80034();
      }

      else
      {
      }

      (v216)(v183, v218);
      return 0;
    }
  }

  if (v61)
  {
    v129 = v61;
  }

  else
  {
    v129 = 0xE000000000000000;
  }

  v130 = v208;
  sub_26EF9C020();

  v131 = sub_26EF9C010();
  v132 = sub_26EF9C380();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = v215;
    if (!v61)
    {
      v133 = 0;
    }

    v217 = v133;
    v134 = sub_26EF76D7C();
    v221 = sub_26EF801A8();
    *v134 = 134218498;
    v135 = *(v117 + 16);

    *(v134 + 4) = v135;

    *(v134 + 12) = 2080;
    v136 = sub_26EF7E624(v217, v129, &v221);

    *(v134 + 14) = v136;
    *(v134 + 22) = 2080;
    v137 = sub_26EF801C0();
    *(v134 + 24) = sub_26EF7E624(v137, v138, v139);
    sub_26EF800D8();
    _os_log_impl(v140, v141, v142, v143, v144, 0x20u);
    swift_arrayDestroy();
    sub_26EF76AF4();
    sub_26EF80018();

    v145 = v208;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v145 = v130;
  }

  (v216)(v145, v218);
  v180 = v211;
  if (v211)
  {

    v181 = sub_26EF801C0();
    sub_26EF7E110(v181, v182, v209, v180);
  }

  return v55;
}

uint64_t sub_26EF7D9F4(uint64_t a1)
{
  result = sub_26EF7FF00(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_26EF7FF40(result, v3, 0, a1);
  }
}

void sub_26EF7E110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_26EF784C0(&qword_2806CFD68, &qword_26EF9E3A8);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v10 = *(v4 + 16);
    v11 = sub_26EF784C0(&qword_2806CFD60, &qword_26EF9E3A0);
    v12 = objc_allocWithZone(v11);
    v13 = &v12[*((*MEMORY[0x277D85000] & *v12) + 0x60)];
    *v13 = a3;
    *(v13 + 1) = a4;
    v20.receiver = v12;
    v20.super_class = v11;

    v14 = objc_msgSendSuper2(&v20, sel_init);
    [v10 setObject:v9 forKey:{v14, v20.receiver, v20.super_class}];
  }

  else
  {
    v15 = *(v4 + 16);
    v16 = sub_26EF784C0(&qword_2806CFD60, &qword_26EF9E3A0);
    v17 = objc_allocWithZone(v16);
    v18 = &v17[*((*MEMORY[0x277D85000] & *v17) + 0x60)];
    *v18 = a3;
    *(v18 + 1) = a4;
    v21.receiver = v17;
    v21.super_class = v16;
    v19 = objc_msgSendSuper2(&v21, sel_init);
    [v15 removeObjectForKey_];
  }
}

uint64_t sub_26EF7E29C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = sub_26EF784C0(&qword_2806CFD60, &qword_26EF9E3A0);
  v7 = objc_allocWithZone(v6);
  v8 = &v7[*((*MEMORY[0x277D85000] & *v7) + 0x60)];
  *v8 = a1;
  *(v8 + 1) = a2;
  v14.receiver = v7;
  v14.super_class = v6;

  v9 = objc_msgSendSuper2(&v14, sel_init);
  v10 = [v5 objectForKey_];

  if (!v10)
  {
    return 0;
  }

  v11 = v10[2];
  v12 = v10[3];

  return v11;
}

uint64_t LocaleDetection.locale(forIncomingMessages:outgoingMessageHistory:defaultLocale:defaultLocaleLastChangedDate:sender:forceRunLanguageDetection:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1)
  {

    sub_26EF784C0(&qword_2806CFC20, &qword_26EF9DC80);
    sub_26EF7EB94();
    sub_26EF9C110();
  }

  v14 = sub_26EF801CC();
  v17 = LocaleDetection.locale(forMessage:outgoingMessageHistory:defaultLocale:defaultLocaleLastChangedDate:sender:forceRunLanguageDetection:)(v14, v15, a2, a3, a4, a5, a6, v16, a8 & 1);

  return v17;
}

uint64_t sub_26EF7E494()
{
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 16);
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v4)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = (*(v1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v4)))));
      v12 = *v10;
      v11 = v10[1];

      if (sub_26EF9C290())
      {
        break;
      }

      v4 &= v4 - 1;

      v8 = v9;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return v12;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v5)
      {

        return 0;
      }

      v4 = *(v1 + 64 + 8 * v9);
      ++v8;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EF7E5D4(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v1 + 16) = v3;
  [v3 setCountLimit_];
  return v1;
}

uint64_t sub_26EF7E624(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26EF7E6E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26EF7FFBC(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_26EF79770(v11);
  return v7;
}

unint64_t sub_26EF7E6E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26EF7E7E8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_26EF9C5F0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26EF7E7E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26EF7E834(a1, a2);
  sub_26EF7E94C(&unk_287F03A38);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26EF7E834(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26EF9C260())
  {
    result = sub_26EF7EA30(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26EF9C5C0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26EF9C5F0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26EF7E94C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_26EF7EAA0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26EF7EA30(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_26EF784C0(&qword_2806CFD70, &qword_26EF9E3B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26EF7EAA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_26EF784C0(&qword_2806CFD70, &qword_26EF9E3B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_26EF7EB94()
{
  result = qword_280E13F20;
  if (!qword_280E13F20)
  {
    sub_26EF7948C(&qword_2806CFC20, &qword_26EF9DC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E13F20);
  }

  return result;
}

uint64_t sub_26EF7EBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF784C0(&qword_2806CFD38, &qword_26EF9E338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF7EC90(uint64_t a1)
{
  v2 = sub_26EF784C0(&qword_2806CFD38, &qword_26EF9E338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_26EF7ECF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26EF7ED0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26EF7ED4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_26EF7EDA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26EF9C890();
  sub_26EF9C1F0();
  v9 = sub_26EF9C8B0();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_26EF9C760() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_26EF7F148(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_26EF7EEEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_26EF784C0(&qword_2806CFD90, &qword_26EF9E3D0);
  result = sub_26EF9C5B0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_26EF7F2B0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_26EF9C890();
    sub_26EF9C1F0();
    result = sub_26EF9C8B0();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26EF7F148(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26EF7EEEC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_26EF7F46C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_26EF9C890();
      sub_26EF9C1F0();
      result = sub_26EF9C8B0();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_26EF9C760() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26EF7F314();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_26EF9C830();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_26EF7F2B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26EF9E320;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_26EF7F314()
{
  v1 = v0;
  sub_26EF784C0(&qword_2806CFD90, &qword_26EF9E3D0);
  v2 = *v0;
  v3 = sub_26EF9C5A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_26EF7F46C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_26EF784C0(&qword_2806CFD90, &qword_26EF9E3D0);
  result = sub_26EF9C5B0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_26EF9C890();

        sub_26EF9C1F0();
        result = sub_26EF9C8B0();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_26EF7F6A0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v28 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_26EF9C840();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_26EF78F34(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_26EF784C0(&qword_2806CFD80, &qword_26EF9E3C0);
      sub_26EF9C630();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v30 + 1;
    a2 = 1;
  }

  sub_26EF7F994(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_26EF78F34(v7, v6);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_26EF784C0(&qword_2806CFD88, &qword_26EF9E3C8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000001BLL, 0x800000026EFA0D90);
  sub_26EF9C600();
  MEMORY[0x2743848A0](39, 0xE100000000000000);
  sub_26EF9C640();
  __break(1u);
}

uint64_t sub_26EF7F994(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_26EF784C0(&qword_2806CFD78, &qword_26EF9E3B8);
  v39 = a2;
  result = sub_26EF9C660();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_26EF7F2B0(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_26EF9C890();
    sub_26EF9C1F0();
    result = sub_26EF9C8B0();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_26EF7FC48(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF7FDA4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF7FF00(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_26EF9C590();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_26EF7FF40(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 56) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26EF7FFBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26EF80018()
{

  JUMPOUT(0x2743859D0);
}

void sub_26EF80034()
{

  JUMPOUT(0x2743859D0);
}

void sub_26EF8005C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_26EF80098()
{

  return swift_slowAlloc();
}

uint64_t sub_26EF800C0()
{

  return swift_slowAlloc();
}

BOOL sub_26EF80118()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_26EF8013C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_26EF80158()
{

  return os_log_type_enabled(v0, v1);
}

void *sub_26EF80170()
{

  return memcpy((v2 + 32), v0, v1);
}

uint64_t sub_26EF8018C()
{

  return sub_26EF9C030();
}

uint64_t sub_26EF801A8()
{

  return swift_slowAlloc();
}

id static OVSResolver.containsOVS(in:localeIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (!a1)
  {
    v4 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = sub_26EF9C2D0();
  if (v3)
  {
LABEL_3:
    v3 = sub_26EF9C130();
  }

LABEL_4:
  v5 = [objc_opt_self() containsOVSInTokens:v4 forLocaleIdentifier:v3];

  return v5;
}

_BYTE *storeEnumTagSinglePayload for OVSResolver(_BYTE *result, int a2, int a3)
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

uint64_t static NSProcessInfo.processNameForPID(_:)(int a1)
{
  v2 = sub_26EF9C190();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = swift_slowAlloc();
  if (proc_name(a1, v4, 0x400u) < 0)
  {
    MEMORY[0x2743859D0](v4, -1, -1);
    return 0;
  }

  else
  {
    sub_26EF9C180();
    v5 = sub_26EF9C170();
    MEMORY[0x2743859D0](v4, -1, -1);
  }

  return v5;
}

uint64_t Signposter.name.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t Signposter.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Signposter() + 24);
  v4 = sub_26EF9BFB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Signposter()
{
  result = qword_280E14430;
  if (!qword_280E14430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Signposter.init(name:state:signposter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = *(type metadata accessor for Signposter() + 24);
  v9 = sub_26EF9BFB0();
  v10 = *(*(v9 - 8) + 32);

  return v10(a6 + v8, a5, v9);
}

uint64_t static Signposter.begin(logger:name:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v55 = a2;
  v56 = a3;
  v54 = a4;
  v52 = sub_26EF9BF80();
  v7 = sub_26EF76CFC(v52);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = sub_26EF9C030();
  v18 = sub_26EF76CFC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_26EF810E0();
  v25 = v24 - v23;
  v53 = sub_26EF9BFB0();
  v26 = sub_26EF76CFC(v53);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_26EF810E0();
  v33 = v32 - v31;
  (*(v20 + 16))(v25, a1, v17);
  v34 = v16;
  v35 = v56;
  sub_26EF9BF90();
  sub_26EF9BFA0();
  sub_26EF9BF60();
  v36 = sub_26EF9BFA0();
  v37 = sub_26EF9C470();
  result = sub_26EF9C4C0();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v51 = v28;
  if ((v54 & 1) == 0)
  {
    v39 = v55;
    if (v55)
    {
      v40 = v34;
LABEL_9:
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = sub_26EF9BF70();
      _os_signpost_emit_with_name_impl(&dword_26EF75000, v36, v37, v42, v39, "", v41, 2u);
      v43 = v41;
      v34 = v40;
      MEMORY[0x2743859D0](v43, -1, -1);
      v35 = v56;
      v28 = v51;
LABEL_10:

      v44 = v52;
      (*(v9 + 16))(v14, v34, v52);
      v45 = sub_26EF9BFF0();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      v48 = sub_26EF9BFE0();
      (*(v9 + 8))(v34, v44);
      *a5 = v55;
      *(a5 + 8) = v35;
      *(a5 + 16) = v54;
      *(a5 + 24) = v48;
      v49 = type metadata accessor for Signposter();
      return (*(v28 + 32))(a5 + *(v49 + 24), v33, v53);
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v55 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v55 & 0xFFFFF800) != 0xD800)
  {
    if (v55 >> 16 <= 0x10)
    {
      v40 = v34;
      v39 = &v57;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Signposter.end()()
{
  v1 = sub_26EF9BFC0();
  v2 = sub_26EF76CFC(v1);
  v28 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_26EF810E0();
  v8 = v7 - v6;
  v9 = sub_26EF9BF80();
  v10 = sub_26EF76CFC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_26EF810E0();
  v17 = v16 - v15;
  v18 = type metadata accessor for Signposter();
  v19 = *v0;
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = v0 + *(v18 + 24);
  v23 = sub_26EF9BFA0();
  sub_26EF9BFD0();
  v27 = sub_26EF9C460();
  if ((sub_26EF9C4C0() & 1) == 0)
  {
LABEL_13:

    (*(v12 + 8))(v17, v9);
    return;
  }

  if ((v20 & 1) == 0)
  {
    if (v19)
    {
LABEL_9:

      sub_26EF9C000();

      if ((*(v28 + 88))(v8, v1) == *MEMORY[0x277D85B00])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v8, v1);
        v24 = "";
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_26EF9BF70();
      _os_signpost_emit_with_name_impl(&dword_26EF75000, v23, v27, v26, v19, v24, v25, 2u);
      MEMORY[0x2743859D0](v25, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v19 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v19 & 0xFFFFF800) != 0xD800)
  {
    if (v19 >> 16 <= 0x10)
    {
      v19 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t withSignpost<A>(logger:name:closure:)(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 a4, void (*a5)(uint64_t))
{
  v10 = type metadata accessor for Signposter();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_26EF810E0();
  v14 = v13 - v12;
  v15 = static Signposter.begin(logger:name:)(a1, a2, a3, a4, v13 - v12);
  a5(v15);
  Signposter.end()();
  return sub_26EF80FC8(v14);
}

uint64_t withSignpostAsync<A>(logger:name:closure:)()
{
  sub_26EF76E54();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 88) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  v8 = *(*(type metadata accessor for Signposter() - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF80CD8, 0, 0);
}

uint64_t sub_26EF80CD8()
{
  sub_26EF76E54();
  v1 = *(v0 + 48);
  static Signposter.begin(logger:name:)(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 88), *(v0 + 64));
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_26EF80DD8;
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);

  return v7(v5);
}

uint64_t sub_26EF80DD8()
{
  sub_26EF76E54();
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_26EF80F58;
  }

  else
  {
    v3 = sub_26EF80EE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26EF80EE8()
{
  sub_26EF76E54();
  v1 = *(v0 + 64);
  Signposter.end()();
  sub_26EF80FC8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EF80F58()
{
  sub_26EF76E54();
  v1 = v0[8];
  Signposter.end()();
  sub_26EF80FC8(v1);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_26EF80FC8(uint64_t a1)
{
  v2 = type metadata accessor for Signposter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EF8104C()
{
  result = sub_26EF9BFF0();
  if (v1 <= 0x3F)
  {
    result = sub_26EF9BFB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t String.tokens()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = (v0 + 16);

  sub_26EF784C0(&qword_2806CFBA8, qword_26EF9D8E8);
  sub_26EF76DBC();
  sub_26EF76E60();
  sub_26EF76EB0(v2, v3, qword_26EF9D8E8);
  sub_26EF9C520();

  swift_beginAccess();
  v4 = *v1;

  return v4;
}

uint64_t sub_26EF81210()
{
  result = sub_26EF9C130();
  qword_2806CFD98 = result;
  return result;
}

uint64_t sub_26EF81248()
{
  result = sub_26EF9C130();
  qword_2806CFDA0 = result;
  return result;
}

uint64_t sub_26EF8127C()
{
  result = sub_26EF9C130();
  qword_2806CFDA8 = result;
  return result;
}

uint64_t sub_26EF812B0()
{
  result = sub_26EF9C130();
  qword_2806CFDB0 = result;
  return result;
}

uint64_t sub_26EF812E8()
{
  result = sub_26EF9C130();
  qword_2806CFDB8 = result;
  return result;
}

uint64_t sub_26EF81324()
{
  result = sub_26EF9C130();
  qword_2806CFDC0 = result;
  return result;
}

id sub_26EF8135C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_26EF84E68(0xD000000000000084, 0x800000026EFA0E20, 1);
  if (!result)
  {
    result = 0;
  }

  qword_2806CFDC8 = result;
  return result;
}

BOOL String.containsAPhoneNumber.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v1 = sub_26EF84F44(2048);
  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  sub_26EF76AAC();
  v4 = sub_26EF9C130();
  v5 = sub_26EF76AAC();
  v6 = [v3 matchesInString:v4 options:0 range:{0, MEMORY[0x2743848D0](v5)}];

  sub_26EF797BC(0, &qword_2806CFDD0, 0x277CCACC0);
  v7 = sub_26EF9C2E0();

  v8 = sub_26EF8509C(v7);

  return v8 != 0;
}

uint64_t String.looksLikeAnEmailAddress.getter()
{
  if (qword_2806CFB88 != -1)
  {
    swift_once();
  }

  if (!qword_2806CFDC8)
  {
    return 0;
  }

  v0 = qword_2806CFDC8;
  sub_26EF76B0C();
  v1 = sub_26EF9C130();
  sub_26EF76B0C();
  v2 = [v0 firstMatchInString:v1 options:0 range:{0, sub_26EF9C210()}];

  if (!v2)
  {
    return 0;
  }

  return 1;
}

BOOL String.isURL.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v1 = sub_26EF84F44(32);
  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  v4 = sub_26EF76AAC();
  v5 = MEMORY[0x2743848D0](v4);
  sub_26EF76AAC();
  v6 = sub_26EF9C130();
  v7 = [v3 rangeOfFirstMatchInString:v6 options:0 range:{0, v5}];
  v9 = v8;

  return !v7 && v5 == v9;
}

Swift::String_optional __swiftcall String.primaryLanguageTag()()
{
  v0 = objc_opt_self();
  sub_26EF76B0C();
  v1 = sub_26EF9C130();
  v2 = [v0 dominantLanguageForString_];

  if (v2)
  {
    v3 = sub_26EF9C160();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall String.lemmatized()()
{
  sub_26EF797BC(0, &qword_2806CFDD8, 0x277CD89D8);
  sub_26EF784C0(&qword_2806CFDE0, &qword_26EF9E480);
  v0 = sub_26EF858B8();
  *(v0 + 16) = xmmword_26EF9E430;
  v1 = *MEMORY[0x277CD8958];
  *(v0 + 32) = *MEMORY[0x277CD8958];
  v2 = v1;
  v3 = sub_26EF818B8();
  sub_26EF85918();
  sub_26EF85614(v4, v5, v6);
  sub_26EF85830();
  sub_26EF9C4B0();

  sub_26EF784C0(&qword_2806CFC20, &qword_26EF9DC80);
  sub_26EF85818();
  sub_26EF76EB0(v7, &qword_2806CFC20, &qword_26EF9DC80);
  v8 = sub_26EF9C110();
  v10 = v9;
  swift_bridgeObjectRelease_n();

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

id sub_26EF818B8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v1 = sub_26EF9C2D0();

  v2 = [v0 initWithTagSchemes_];

  return v2;
}

uint64_t sub_26EF81930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a1)
  {
    v7 = sub_26EF9C160();
    v9 = v8;
  }

  else
  {
    v10 = sub_26EF9C2C0();
    v7 = MEMORY[0x274384830](v10);
    v9 = v11;
  }

  sub_26EF84FF8(sub_26EF851D0);
  v12 = *(*a6 + 16);
  sub_26EF85054(v12, sub_26EF851D0);
  v13 = *a6;
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 16 * v12;
  *(v14 + 32) = v7;
  *(v14 + 40) = v9;
  return 1;
}

Swift::String __swiftcall String.trimMessageGreeting()()
{
  sub_26EF76E7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_26EF9BDF0();
  v5 = sub_26EF76CFC(v4);
  v41 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26EF784C0(&unk_2806CFB98, &qword_26EF9D8E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  sub_26EF797BC(0, &qword_2806CFDD8, 0x277CD89D8);
  sub_26EF784C0(&qword_2806CFDE0, &qword_26EF9E480);
  v14 = sub_26EF858B8();
  *(v14 + 16) = xmmword_26EF9E430;
  v15 = *MEMORY[0x277CD8970];
  *(v14 + 32) = *MEMORY[0x277CD8970];
  v15;
  v16 = sub_26EF818B8();
  v17 = sub_26EF801CC();
  sub_26EF85614(v17, v18, v16);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v19 = v3;
  }

  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  v52 = 0;
  v53 = 0xE000000000000000;
  v51 = 0;
  v42 = v54;
  v43 = v3;
  v44 = v1;
  v45 = &v51;
  v46 = &v52;
  sub_26EF9C4B0();
  if (v51 == 1)
  {
    v39 = v4;
    v49 = v3;
    v50 = v1;
    v47 = v52;
    v48 = v53;
    v20 = sub_26EF9BF50();
    sub_26EF78FAC(v13, 1, 1, v20);
    sub_26EF76DBC();

    sub_26EF85904();
    sub_26EF9C540();
    v22 = v21;
    v24 = v23;
    sub_26EF78FD4(v13);

    if (v24)
    {
      v25 = v39;
    }

    else
    {
      v26 = v22 ^ (v19 << 16);
      v25 = v39;
      if (v26 >= 0x4000)
      {
        sub_26EF85918();
        sub_26EF9C220();
      }
    }

    sub_26EF85918();
    v30 = sub_26EF81FA0(v27, v28, v29);
    v31 = MEMORY[0x274384830](v30);
    v33 = v32;

    v49 = v31;
    v50 = v33;
    v34 = v40;
    sub_26EF9BDC0();
    sub_26EF9C510();
    sub_26EF85938();

    (*(v41 + 8))(v34, v25);
  }

  else
  {
  }

  sub_26EF801CC();
  sub_26EF85944();
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

uint64_t sub_26EF81D68(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t *a8)
{
  if (!a1)
  {
    return 1;
  }

  v10 = qword_2806CFB60;
  v36 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_26EF9C160();
  v13 = v12;
  if (v11 == sub_26EF9C160() && v13 == v14)
  {

    goto LABEL_12;
  }

  v16 = sub_26EF9C760();

  if (v16)
  {
LABEL_12:
    v18 = sub_26EF9C2C0();
    v19 = MEMORY[0x274384830](v18);
    v21 = v20;

    v22 = a4[1];
    *a4 = v19;
    a4[1] = v21;

    *a7 = 1;
  }

  v23 = *MEMORY[0x277CD8920];
  v24 = sub_26EF9C160();
  v26 = v25;
  if (v24 == sub_26EF9C160() && v26 == v27)
  {
  }

  else
  {
    v29 = sub_26EF9C760();

    if ((v29 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (*a7)
  {
    v30 = sub_26EF9C2C0();
    v31 = MEMORY[0x274384830](v30);
    v33 = v32;

    v34 = a8[1];
    *a8 = v31;
    a8[1] = v33;

    return 0;
  }

LABEL_22:

  return 1;
}

unint64_t sub_26EF81FA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_26EF9C2C0();
  }

  __break(1u);
  return result;
}

uint64_t String.trimLeadingCharacters(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_26EF784C0(&unk_2806CFB98, &qword_26EF9D8E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v19 = a2;
  v20 = a3;
  sub_26EF76DBC();
  v9 = sub_26EF9C510();
  v19 = a2;
  v20 = a3;
  v18[0] = v9;
  v18[1] = v10;
  v11 = sub_26EF9BF50();
  sub_26EF78FAC(v8, 1, 1, v11);
  sub_26EF85904();
  v12 = sub_26EF9C540();
  v14 = v13;
  sub_26EF78FD4(v8);

  if (v14)
  {

    return sub_26EF801CC();
  }

  v16 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v16 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v16 >= v12 >> 14)
  {
    v17 = sub_26EF9C2C0();
    MEMORY[0x274384830](v17);
    sub_26EF85938();

    return sub_26EF801CC();
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall String.looksLikeAnAcronym()()
{
  sub_26EF76E7C();
  v2 = v1;
  v4 = v3;
  v5 = sub_26EF9BDF0();
  v6 = sub_26EF76CFC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_26EF85878();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  sub_26EF9BDB0();
  sub_26EF9BDC0();
  if ((v2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v29 = v8;
    v30 = v5;
    v31 = v2 & 0xFFFFFFFFFFFFFFLL;

    v15 = 0;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        sub_26EF9C5D0();
        v21 = v20;
      }

      else
      {
        if ((v2 & 0x2000000000000000) != 0)
        {
          v32[0] = v4;
          v32[1] = v31;
          v17 = *(v32 + v15);
          if (v17 < 0)
          {
            sub_26EF858A0();
            switch(v22)
            {
              case 1:
LABEL_20:
                v23 = v18[1] & 0x3F | ((v17 & 0x1F) << 6);
                v21 = 2;
                break;
              case 2:
LABEL_21:
                v24 = ((v17 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3Fu;
                v21 = 3;
                break;
              case 3:
LABEL_22:
                v25 = ((v17 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3Fu;
                v21 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v16 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v4 & 0x1000000000000000) == 0)
          {
            v16 = sub_26EF9C5F0();
          }

          v17 = *(v16 + v15);
          if (v17 < 0)
          {
            sub_26EF858A0();
            switch(v19)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v21 = 1;
      }

LABEL_15:
      if ((sub_26EF9BDD0() & 1) == 0 && (sub_26EF9BDD0() & 1) == 0)
      {
        v15 += v21;
        if (v15 < v14)
        {
          continue;
        }
      }

      v8 = v29;
      v5 = v30;
      break;
    }
  }

  v26 = *(v8 + 8);
  v26(v0, v5);
  v26(v13, v5);
  sub_26EF85944();
  return result;
}

uint64_t sub_26EF82430(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    v6 = *MEMORY[0x277CD8980];
    v7 = sub_26EF9C160();
    v9 = v8;
    if (v7 == sub_26EF9C160() && v9 == v10)
    {
      v14 = a1;
    }

    else
    {
      v12 = sub_26EF9C760();
      v13 = a1;

      if ((v12 & 1) == 0)
      {

        return 1;
      }
    }

    v15 = sub_26EF9C2C0();
    v16 = MEMORY[0x274384830](v15);
    v18 = v17;

    sub_26EF84FF8(sub_26EF851D0);
    v19 = *(*a4 + 16);
    sub_26EF85054(v19, sub_26EF851D0);

    v20 = *a4;
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 16 * v19;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
  }

  return 1;
}

uint64_t sub_26EF825A4(uint64_t a1, uint64_t a2, void **a3)
{
  sub_26EF797BC(0, &qword_2806CFDD8, 0x277CD89D8);
  sub_26EF784C0(&qword_2806CFDE0, &qword_26EF9E480);
  v4 = sub_26EF858B8();
  *(v4 + 16) = xmmword_26EF9E430;
  v5 = *a3;
  *(v4 + 32) = *a3;
  v6 = v5;
  v7 = sub_26EF818B8();
  v8 = sub_26EF76AAC();
  sub_26EF85614(v8, v9, v7);
  v11 = MEMORY[0x277D84F90];
  sub_26EF85830();
  sub_26EF9C4B0();

  return v11;
}

uint64_t sub_26EF826D0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    v5 = qword_2806CFB78;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_26EF9C160();
    v9 = v8;
    if (v7 == sub_26EF9C160() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_26EF9C760();

      if ((v12 & 1) == 0)
      {

        return 1;
      }
    }

    v13 = sub_26EF9C2C0();
    v14 = MEMORY[0x274384830](v13);
    v16 = v15;

    sub_26EF84FF8(sub_26EF851D0);
    v17 = *(*a4 + 16);
    sub_26EF85054(v17, sub_26EF851D0);

    v18 = *a4;
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 16 * v17;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  return 1;
}

uint64_t String.nounLikeTokens(includePronouns:)()
{
  sub_26EF797BC(0, &qword_2806CFDD8, 0x277CD89D8);
  sub_26EF784C0(&qword_2806CFDE0, &qword_26EF9E480);
  v0 = sub_26EF858B8();
  *(v0 + 16) = xmmword_26EF9E430;
  v1 = *MEMORY[0x277CD8970];
  *(v0 + 32) = *MEMORY[0x277CD8970];
  v2 = v1;
  v3 = sub_26EF818B8();
  v4 = sub_26EF801CC();
  sub_26EF85614(v4, v5, v3);
  sub_26EF76D94();
  v7 = MEMORY[0x277D84F90];
  sub_26EF85830();
  sub_26EF9C4B0();

  return v7;
}

uint64_t sub_26EF82978(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  if (a1)
  {
    if (a4)
    {
      v7 = *MEMORY[0x277CD8938];
      v8 = sub_26EF9C160();
      v10 = v9;
      if (v8 == sub_26EF9C160() && v10 == v11)
      {
        v56 = a1;
        goto LABEL_46;
      }

      v13 = sub_26EF9C760();
      v14 = a1;

      if (v13)
      {
        goto LABEL_47;
      }

      if (qword_2806CFB58 != -1)
      {
        swift_once();
      }

      v15 = sub_26EF9C160();
      v17 = v16;
      if (v15 == sub_26EF9C160() && v17 == v18)
      {
LABEL_46:

        goto LABEL_47;
      }

      v20 = sub_26EF9C760();

      if (v20)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v21 = a1;
    }

    v22 = *MEMORY[0x277CD8908];
    v23 = sub_26EF9C160();
    v25 = v24;
    if (v23 != sub_26EF9C160() || v25 != v26)
    {
      v28 = sub_26EF9C760();

      if (v28)
      {
        goto LABEL_47;
      }

      v29 = *MEMORY[0x277CD88F8];
      v30 = sub_26EF9C160();
      v32 = v31;
      if (v30 != sub_26EF9C160() || v32 != v33)
      {
        v35 = sub_26EF9C760();

        if (v35)
        {
          goto LABEL_47;
        }

        v36 = *MEMORY[0x277CD8920];
        v37 = sub_26EF9C160();
        v39 = v38;
        if (v37 != sub_26EF9C160() || v39 != v40)
        {
          v42 = sub_26EF9C760();

          if (v42)
          {
            goto LABEL_47;
          }

          v43 = *MEMORY[0x277CD8928];
          v44 = sub_26EF9C160();
          v46 = v45;
          if (v44 != sub_26EF9C160() || v46 != v47)
          {
            v49 = sub_26EF9C760();

            if (v49)
            {
              goto LABEL_47;
            }

            if (qword_2806CFB80 != -1)
            {
              swift_once();
            }

            v50 = sub_26EF9C160();
            v52 = v51;
            if (v50 != sub_26EF9C160() || v52 != v53)
            {
              v55 = sub_26EF9C760();

              if ((v55 & 1) == 0)
              {

                return 1;
              }

LABEL_47:
              v57 = sub_26EF9C2C0();
              v58 = MEMORY[0x274384830](v57);
              v60 = v59;

              sub_26EF84FF8(sub_26EF851D0);
              v61 = *(*a5 + 16);
              sub_26EF85054(v61, sub_26EF851D0);

              v62 = *a5;
              *(v62 + 16) = v61 + 1;
              v63 = v62 + 16 * v61;
              *(v63 + 32) = v58;
              *(v63 + 40) = v60;
              return 1;
            }
          }
        }
      }
    }

    goto LABEL_46;
  }

  return 1;
}

uint64_t sub_26EF82DA8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    v6 = *MEMORY[0x277CD8908];
    v7 = sub_26EF9C160();
    v9 = v8;
    if (v7 == sub_26EF9C160() && v9 == v10)
    {
      v28 = a1;
    }

    else
    {
      v12 = sub_26EF9C760();
      v13 = a1;

      if (v12)
      {
        goto LABEL_20;
      }

      v14 = *MEMORY[0x277CD8920];
      v15 = sub_26EF9C160();
      v17 = v16;
      if (v15 != sub_26EF9C160() || v17 != v18)
      {
        v20 = sub_26EF9C760();

        if (v20)
        {
          goto LABEL_20;
        }

        v21 = *MEMORY[0x277CD8928];
        v22 = sub_26EF9C160();
        v24 = v23;
        if (v22 != sub_26EF9C160() || v24 != v25)
        {
          v27 = sub_26EF9C760();

          if ((v27 & 1) == 0)
          {

            return 1;
          }

LABEL_20:
          v29 = sub_26EF9C2C0();
          v30 = MEMORY[0x274384830](v29);
          v32 = v31;

          sub_26EF84FF8(sub_26EF851D0);
          v33 = *(*a4 + 16);
          sub_26EF85054(v33, sub_26EF851D0);

          v34 = *a4;
          *(v34 + 16) = v33 + 1;
          v35 = v34 + 16 * v33;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
          return 1;
        }
      }
    }

    goto LABEL_20;
  }

  return 1;
}

Swift::String __swiftcall String.firstCaptionNounPhrase()()
{
  v2 = v1;
  v3 = v0;
  sub_26EF797BC(0, &qword_2806CFDD8, 0x277CD89D8);
  sub_26EF784C0(&qword_2806CFDE0, &qword_26EF9E480);
  v4 = sub_26EF858B8();
  *(v4 + 16) = xmmword_26EF9E430;
  v5 = *MEMORY[0x277CD8960];
  *(v4 + 32) = *MEMORY[0x277CD8960];
  v6 = v5;
  v7 = sub_26EF818B8();
  sub_26EF85614(v3, v2, v7);
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  CaptionPhraseResolver.init()(v12);
  sub_26EF85830();
  sub_26EF9C4B0();

  String.nounPhrasesContaining(_:isProperNoun:allowConjunctions:)();
  if (v8[2])
  {
    v3 = v8[4];
    v2 = v8[5];
  }

  else
  {
  }

  v9 = v3;
  v10 = v2;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_26EF83180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = *MEMORY[0x277CD8910];
  }

  v9 = a1;
  v10 = sub_26EF9C2C0();
  v11 = MEMORY[0x274384830](v10);
  v13 = v12;

  if (qword_2806CFB80 != -1)
  {
    swift_once();
  }

  v14 = sub_26EF9C160();
  v16 = v15;
  if (v14 == sub_26EF9C160() && v16 == v17)
  {

    goto LABEL_13;
  }

  v19 = sub_26EF9C760();

  if ((v19 & 1) == 0)
  {
    v23 = *MEMORY[0x277CD88F8];
    v24 = sub_26EF9C160();
    v26 = v25;
    if (v24 == sub_26EF9C160() && v26 == v27)
    {
    }

    else
    {
      v29 = sub_26EF9C760();

      if ((v29 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    v30.value._countAndFlagsBits = v11;
    v30.value._object = v13;
    v31.value._countAndFlagsBits = 28261;
    v31.value._object = 0xE200000000000000;
    v32 = CaptionPhraseResolver.hasUninterestingCaption(with:languageCode:)(v30, v31);

    if (!v32)
    {
      goto LABEL_13;
    }

LABEL_23:
    v20 = 1;
    goto LABEL_14;
  }

LABEL_13:
  v20 = 0;
  v21 = a6[1];
  *a6 = v11;
  a6[1] = v13;
LABEL_14:

  return v20;
}

void String.nounPhrasesContaining(_:isProperNoun:allowConjunctions:)()
{
  sub_26EF76E7C();
  v155 = v0;
  v154 = v1;
  v3 = v2;
  v5 = v4;
  LODWORD(v160) = v6;
  LOBYTE(i) = (v7 & 1) != 0 || String.looksLikeAnAcronym()();
  v166 = v5;
  v167 = v3;
  sub_26EF76DBC();
  sub_26EF9C500();
  sub_26EF797BC(0, &qword_2806CFDD8, 0x277CD89D8);
  sub_26EF784C0(&qword_2806CFDE0, &qword_26EF9E480);
  v9 = sub_26EF858B8();
  *(v9 + 16) = xmmword_26EF9E430;
  v10 = *MEMORY[0x277CD8960];
  *(v9 + 32) = *MEMORY[0x277CD8960];
  v10;
  v11 = sub_26EF818B8();
  sub_26EF85614(v154, v155, v11);
  v165 = MEMORY[0x277D84F90];
  v166 = MEMORY[0x277D84F90];
  v164 = 0;
  MEMORY[0x28223BE20](v12);
  sub_26EF9C4B0();

  if (*(v165 + 16))
  {
    v153 = v165;
    sub_26EF784C0(&qword_2806CFDE8, &qword_26EF9E488);
    inited = swift_initStackObject();
    v151 = xmmword_26EF9E440;
    *(inited + 16) = xmmword_26EF9E440;
    v14 = *MEMORY[0x277CD88F8];
    v15 = *MEMORY[0x277CD8918];
    *(inited + 32) = *MEMORY[0x277CD88F8];
    *(inited + 40) = v15;
    v16 = qword_2806CFB68;
    v158 = v14;
    v163 = v15;
    if (v16 != -1)
    {
      goto LABEL_70;
    }

    while (1)
    {
      v17 = qword_2806CFDA8;
      v18 = *MEMORY[0x277CD8900];
      *(inited + 48) = qword_2806CFDA8;
      *(inited + 56) = v18;
      v19 = *MEMORY[0x277CD88E8];
      v20 = *MEMORY[0x277CD8998];
      *(inited + 64) = *MEMORY[0x277CD88E8];
      *(inited + 72) = v20;
      v21 = *MEMORY[0x277CD88D8];
      *(inited + 80) = *MEMORY[0x277CD88D8];
      v22 = qword_2806CFB70;
      v157 = v17;
      v23 = v18;
      *&v156 = v19;
      v24 = v20;
      v25 = v21;
      if (v22 != -1)
      {
        swift_once();
      }

      v26 = qword_2806CFDB0;
      *(inited + 88) = qword_2806CFDB0;
      v27 = "mn";
      v28 = MEMORY[0x277CD8920];
      v152 = v11;
      if (i)
      {
        v29 = v26;

        v30 = sub_26EF858D0();
        v161 = xmmword_26EF9E460;
        v31 = MEMORY[0x277CD8908];
        *(v30 + 16) = xmmword_26EF9E460;
        v32 = v28;
        v33 = *v31;
        v34 = *v32;
        v35 = MEMORY[0x277CD8928];
        *(v30 + 32) = v33;
        *(v30 + 40) = v34;
        v36 = *v35;
        v37 = v163;
        *(v30 + 48) = *v35;
        *(v30 + 56) = v37;
        v38 = v157;
        *(v30 + 64) = v157;
        *(v30 + 72) = v23;
        v162 = v30;
        v39 = swift_allocObject();
        v156 = xmmword_26EF9E470;
        *(v39 + 16) = xmmword_26EF9E470;
        *(v39 + 32) = v33;
        *(v39 + 40) = v34;
        *(v39 + 48) = v36;
        *(v39 + 56) = v38;
        v159 = v39;
        *(v39 + 64) = v23;
        v40 = sub_26EF858D0();
        *(v40 + 16) = v161;
        *(v40 + 32) = v33;
        *(v40 + 40) = v34;
        *(v40 + 48) = v36;
        *(v40 + 56) = v37;
        v41 = v158;
        *(v40 + 64) = v158;
        *(v40 + 72) = v23;
        v160 = v40;
        v42 = swift_allocObject();
        *(v42 + 16) = v156;
        *(v42 + 32) = v33;
        *(v42 + 40) = v34;
        *(v42 + 48) = v36;
        *(v42 + 56) = v41;
        *(v42 + 64) = v23;
        v43 = v23;
        v44 = v33;
        v45 = v34;
        v46 = v36;
        v47 = v43;
        v48 = v44;
        v49 = v45;
        v50 = v46;
        *&v161 = v38;
        v51 = v37;
        v52 = v47;
        i = v48;
      }

      else
      {
        *&v161 = v24;
        v162 = inited;
        v150 = v26;
        if (v160)
        {
          v53 = v26;

          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_26EF9E450;
          v55 = v158;
          v56 = v163;
          *(v54 + 32) = v158;
          *(v54 + 40) = v56;
          v57 = v157;
          *(v54 + 48) = v157;
          *(v54 + 56) = v23;
          v58 = v156;
          v59 = v161;
          *(v54 + 64) = v156;
          *(v54 + 72) = v59;
          *(v54 + 80) = v25;
          *(v54 + 88) = v53;
          v60 = *MEMORY[0x277CD88E0];
          *(v54 + 96) = *MEMORY[0x277CD88E0];
          v162 = qword_2806CFB80;
          v61 = v55;
          v62 = v56;
          v63 = v57;
          v64 = v23;
          v65 = v58;
          v66 = v59;
          v67 = v25;
          v68 = v53;
          v69 = v60;
          if (v162 != -1)
          {
            sub_26EF8584C();
          }

          v70 = qword_2806CFDC0;
          v28 = MEMORY[0x277CD8920];
          v71 = *MEMORY[0x277CD8920];
          *(v54 + 104) = qword_2806CFDC0;
          *(v54 + 112) = v71;
          v162 = v54;
          v72 = v70;
          v73 = 1;
          v27 = "mn";
        }

        else
        {
          v73 = qword_2806CFB80 == -1;
          v71 = v26;
        }

        v74 = v71;
        v75 = sub_26EF858D0();
        *(v75 + 16) = *(v27 + 70);
        v76 = v158;
        *(v75 + 32) = v25;
        *(v75 + 40) = v76;
        v77 = v157;
        *(v75 + 48) = v157;
        *(v75 + 56) = v23;
        v78 = v76;
        v79 = v77;
        v80 = v23;
        v48 = v25;
        if (!v73)
        {
          sub_26EF8584C();
        }

        v47 = qword_2806CFDC0;
        v50 = *v28;
        *(v75 + 64) = qword_2806CFDC0;
        *(v75 + 72) = v50;
        v159 = v75;
        v81 = swift_allocObject();
        *(v81 + 16) = v151;
        v82 = v163;
        *(v81 + 32) = v78;
        *(v81 + 40) = v82;
        v51 = v156;
        v83 = v161;
        *(v81 + 48) = v156;
        *(v81 + 56) = v83;
        i = v150;
        *(v81 + 64) = v150;
        *(v81 + 72) = v47;
        *(v81 + 80) = v50;
        *(v81 + 88) = v48;
        v160 = v81;
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_26EF9DE30;
        *(v42 + 32) = v48;
        *(v42 + 40) = v78;
        *(v42 + 48) = v47;
        v49 = v47;
        v52 = v48;
      }

      v84 = v153;
      v85 = v47;
      v86 = v48;
      v87 = v49;
      v88 = v50;
      v89 = v51;
      v90 = v161;
      v91 = v52;
      v92 = i;
      v93 = v87;
      v94 = v88;
      v148 = *(v84 + 16);
      if (!v148)
      {
        break;
      }

      v95 = v166;
      *&v161 = *(v166 + 2) - 1;
      *&v151 = v84 + 32;
      v96 = v158;
      v97 = v163;
      v98 = 0;
      inited = 0;
      v150 = v95 + 32;
      v149 = v95 + 40;
      v163 = v95;
      v147 = v95 + 48;
      v11 = MEMORY[0x277D84F90];
      v146 = v42;
      while (v98 < *(v84 + 16))
      {
        v157 = v11;
        v11 = *(v151 + 8 * v98);
        *&v156 = v98 + 1;
        v158 = 24 * v11;
        v99 = &v150[24 * v11];
        v100 = &v149[24 * v11];
        v101 = v99;
        for (i = v11; i >= 1; --i)
        {
          sub_26EF85894();
          if (i >= v102)
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          sub_26EF858F8(*v101);
          MEMORY[0x28223BE20](v103);
          v105 = sub_26EF857F4(v104);
          v106 = sub_26EF858EC();
          v108 = sub_26EF79180(v106, v107, v162);

          if (!v108)
          {
            break;
          }

          v101 -= 3;
          v100 -= 24;
        }

        v109 = i;
        v110 = v159;
        while (v109 < v11)
        {
          if (i < 0)
          {
            goto LABEL_59;
          }

          sub_26EF85894();
          if (v109 >= v111)
          {
            goto LABEL_60;
          }

          sub_26EF858F8(*(v100 - 1));
          MEMORY[0x28223BE20](v112);
          v114 = sub_26EF857F4(v113);
          v115 = sub_26EF858EC();
          v117 = sub_26EF79180(v115, v116, v110);

          if (v117)
          {
            break;
          }

          ++v109;
          v100 += 24;
        }

        v118 = &v147[v158];
        for (j = v11; j < v161; ++j)
        {
          if (v11 < 0)
          {
            goto LABEL_61;
          }

          sub_26EF85894();
          if (j >= v120)
          {
            goto LABEL_62;
          }

          i = &v145;
          sub_26EF858F8(*v99);
          MEMORY[0x28223BE20](v121);
          v123 = sub_26EF857F4(v122);
          v124 = sub_26EF858EC();
          v126 = sub_26EF79180(v124, v125, v160);

          if (!v126)
          {
            break;
          }

          v99 += 3;
          v118 += 24;
        }

        v127 = v146;
        while (v11 < j)
        {
          if ((j & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          sub_26EF85894();
          if (j >= v128)
          {
            goto LABEL_64;
          }

          i = &v145;
          sub_26EF858F8(*(v118 - 2));
          MEMORY[0x28223BE20](v129);
          v131 = sub_26EF857F4(v130);
          v132 = sub_26EF858EC();
          v134 = sub_26EF79180(v132, v133, v127);

          if (v134)
          {
            break;
          }

          --j;
          v118 -= 24;
        }

        i = v152;
        v11 = v157;
        if ((v109 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        sub_26EF85894();
        if (v109 >= v135)
        {
          goto LABEL_67;
        }

        if (j >= v135)
        {
          goto LABEL_68;
        }

        if (*v118 >> 14 < *v100 >> 14)
        {
          goto LABEL_69;
        }

        v136 = sub_26EF9C2C0();
        v137 = MEMORY[0x274384830](v136);
        v139 = v138;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_26EF851D0(0, *(v11 + 16) + 1, 1, v11);
        }

        v84 = v153;
        v141 = *(v11 + 16);
        v140 = *(v11 + 24);
        if (v141 >= v140 >> 1)
        {
          v11 = sub_26EF851D0(v140 > 1, v141 + 1, 1, v11);
        }

        *(v11 + 16) = v141 + 1;
        v142 = v11 + 16 * v141;
        *(v142 + 32) = v137;
        *(v142 + 40) = v139;
        v98 = v156;
        if (v156 == v148)
        {

          goto LABEL_56;
        }
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      swift_once();
    }

    v143 = v158;
    v144 = v163;

LABEL_56:
  }

  else
  {
  }

  sub_26EF85944();
}

Swift::String_optional __swiftcall String.shortenedCaptionPhrase()()
{
  sub_26EF76E7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_26EF9BDF0();
  v5 = sub_26EF76CFC(v4);
  v36 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v10 = (v9 + 16);
  v37 = v3;
  v38 = v1;
  v44[1] = 15;

  sub_26EF784C0(&qword_2806CFBA8, qword_26EF9D8E8);
  sub_26EF76DBC();
  sub_26EF76E60();
  sub_26EF76EB0(v11, v12, qword_26EF9D8E8);
  sub_26EF9C520();

  swift_beginAccess();
  v13 = *v10;

  v14 = *(v13 + 16);

  if (v14 < 6)
  {
  }

  else
  {
    sub_26EF797BC(0, &qword_2806CFDD8, 0x277CD89D8);
    sub_26EF784C0(&qword_2806CFDE0, &qword_26EF9E480);
    v15 = sub_26EF858B8();
    *(v15 + 16) = xmmword_26EF9E430;
    v16 = *MEMORY[0x277CD8960];
    *(v15 + 32) = *MEMORY[0x277CD8960];
    v16;
    v17 = sub_26EF818B8();
    v18 = sub_26EF801CC();
    sub_26EF85614(v18, v19, v17);
    sub_26EF76D94();
    v43 = -1;
    v44[0] = -1;
    v41 = -1;
    v42 = -1;
    MEMORY[0x28223BE20](v20);
    *(&v36 - 6) = v44;
    *(&v36 - 5) = v3;
    *(&v36 - 4) = v1;
    *(&v36 - 3) = &v41;
    *(&v36 - 2) = &v42;
    *(&v36 - 1) = &v43;
    sub_26EF9C4B0();
    if (v43 != -1 && v41 < v43)
    {
      sub_26EF9C240();
      v37 = sub_26EF9C2C0();
      v38 = v24;
      v39 = v25;
      v40 = v26;
      sub_26EF9BDC0();
      sub_26EF8577C();
      v27 = sub_26EF9C510();
      v29 = v28;
      v30 = *(v36 + 8);
      v31 = sub_26EF76AAC();
      v32(v31);

      v37 = v27;
      v38 = v29;
      sub_26EF9C2B0();
      sub_26EF85938();
    }

    else
    {
      if (v41 < 0)
      {
        sub_26EF801CC();
        sub_26EF9C210();
      }

      sub_26EF85918();
      v23 = sub_26EF84838(v22);
      MEMORY[0x274384830](v23);
      sub_26EF85938();
    }
  }

  sub_26EF801CC();
  sub_26EF85944();
  result.value._object = v34;
  result.value._countAndFlagsBits = v33;
  return result;
}

uint64_t sub_26EF84310(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  if (!a1)
  {
    return 1;
  }

  v12 = *MEMORY[0x277CD88F8];
  v13 = sub_26EF9C160();
  v15 = v14;
  if (v13 == sub_26EF9C160() && v15 == v16)
  {
    v69 = a1;
LABEL_48:

    goto LABEL_49;
  }

  v18 = sub_26EF9C760();
  v19 = a1;

  if (v18)
  {
    goto LABEL_49;
  }

  v20 = *MEMORY[0x277CD8938];
  v21 = sub_26EF9C160();
  v23 = v22;
  if (v21 == sub_26EF9C160() && v23 == v24)
  {
    goto LABEL_48;
  }

  v26 = sub_26EF9C760();

  if (v26)
  {
    goto LABEL_49;
  }

  v27 = qword_2806CFB58;
  v74 = v19;
  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_26EF9C160();
  v30 = v29;
  if (v28 == sub_26EF9C160() && v30 == v31)
  {
    goto LABEL_54;
  }

  v33 = sub_26EF9C760();

  if (v33)
  {
    goto LABEL_49;
  }

  v34 = qword_2806CFB78;
  v74 = v74;
  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_26EF9C160();
  v37 = v36;
  if (v35 == sub_26EF9C160() && v37 == v38)
  {
LABEL_54:

    goto LABEL_48;
  }

  v40 = sub_26EF9C760();

  if (v40)
  {
    goto LABEL_49;
  }

  v41 = *MEMORY[0x277CD8908];
  v42 = sub_26EF9C160();
  v44 = v43;
  if (v42 == sub_26EF9C160() && v44 == v45)
  {
    goto LABEL_48;
  }

  v47 = sub_26EF9C760();

  if (v47)
  {
LABEL_49:
    *a4 = sub_26EF9C270();
    if (*a7 == -1)
    {
      v70 = sub_26EF9C270();

      *a7 = v70;
    }

    else
    {
    }

    *a8 = -1;
    return 1;
  }

  v48 = *MEMORY[0x277CD8928];
  v49 = sub_26EF9C160();
  v51 = v50;
  if (v49 == sub_26EF9C160() && v51 == v52)
  {
    goto LABEL_48;
  }

  v54 = sub_26EF9C760();

  if (v54)
  {
    goto LABEL_49;
  }

  v55 = *MEMORY[0x277CD8930];
  v56 = sub_26EF9C160();
  v58 = v57;
  if (v56 == sub_26EF9C160() && v58 == v59)
  {
  }

  else
  {
    v61 = sub_26EF9C760();

    if ((v61 & 1) == 0)
    {
      v62 = *MEMORY[0x277CD88D8];
      v63 = sub_26EF9C160();
      v65 = v64;
      if (v63 == sub_26EF9C160() && v65 == v66)
      {
      }

      else
      {
        v68 = sub_26EF9C760();

        if ((v68 & 1) == 0)
        {
LABEL_61:

          return 1;
        }
      }

      if (*a8 == -1)
      {
        v73 = sub_26EF9C270();

        *a8 = v73;
        return 1;
      }

      goto LABEL_61;
    }
  }

  if (*a4 == -1 || *a4 >= sub_26EF9C270())
  {
    goto LABEL_61;
  }

  v72 = sub_26EF9C270();

  *a9 = v72;
  return 1;
}

uint64_t sub_26EF84838(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26EF9C230();
    v1 = sub_26EF9C2C0();

    return v1;
  }

  return result;
}

uint64_t sub_26EF848F8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = *MEMORY[0x277CD8910];
  }

  v17 = a1;
  v18 = v16;
  sub_26EF84FF8(sub_26EF853BC);
  v19 = *(*a5 + 16);
  sub_26EF85054(v19, sub_26EF853BC);
  v20 = *a5;
  *(v20 + 16) = v19 + 1;
  v21 = (v20 + 24 * v19);
  v21[4] = v18;
  v21[5] = a2;
  v21[6] = a3;
  v22 = sub_26EF9C2C0();
  MEMORY[0x274384830](v22);

  v23 = *MEMORY[0x277CD88F8];
  v24 = sub_26EF9C160();
  v26 = v25;
  if (v24 == sub_26EF9C160() && v26 == v27)
  {
    goto LABEL_16;
  }

  v29 = sub_26EF9C760();

  if (v29)
  {
    goto LABEL_17;
  }

  if (qword_2806CFB80 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v30 = sub_26EF9C160();
    v32 = v31;
    if (v30 == sub_26EF9C160() && v32 == v33)
    {
LABEL_16:
    }

    else
    {
      v35 = sub_26EF9C760();

      if ((v35 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_17:
    v36 = sub_26EF9C210();
    if (v36 != sub_26EF9C210())
    {
LABEL_24:

LABEL_25:

      goto LABEL_28;
    }

    sub_26EF76DBC();
    v37 = sub_26EF9C500();
    v39 = v38;

    if (v37 == a8 && v39 == a9)
    {
    }

    else
    {
      a8 = sub_26EF9C760();

      if ((a8 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v41 = *a4;
    a8 = sub_26EF852C4;
    sub_26EF84FF8(sub_26EF852C4);
    v42 = *(*a10 + 16);
    sub_26EF85054(v42, sub_26EF852C4);

    v43 = *a10;
    *(v43 + 16) = v42 + 1;
    *(v43 + 8 * v42 + 32) = v41;
LABEL_28:
    if (!__OFADD__(*a4, 1))
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  ++*a4;
  return 1;
}

uint64_t sub_26EF84C14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();

    sub_26EF84FF8(sub_26EF851D0);
    v11 = *(*(a8 + 16) + 16);
    sub_26EF85054(v11, sub_26EF851D0);
    v12 = *(a8 + 16);
    *(v12 + 16) = v11 + 1;
    v13 = v12 + 16 * v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = a2;
    *(a8 + 16) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t String.rangeToInt(from:)()
{
  sub_26EF784C0(&qword_2806CFD48, &qword_26EF9E388);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26EF9DE20;
  sub_26EF76DBC();
  *(v0 + 32) = sub_26EF9C200();
  *(v0 + 40) = sub_26EF9C200();
  return v0;
}

Swift::String __swiftcall String.slice(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = 0;
  v3 = 0xE000000000000000;
  if ((from & 0x8000000000000000) == 0 && from < to)
  {
    if (sub_26EF9C210() >= to)
    {
      sub_26EF8586C();
      v4 = sub_26EF9C240();
      sub_26EF8586C();
      v5 = sub_26EF9C240();
      if (v5 >> 14 < v4 >> 14)
      {
        __break(1u);
        goto LABEL_9;
      }

      sub_26EF8586C();
      v7 = sub_26EF9C2C0();
      v2 = MEMORY[0x274384830](v7);
      v3 = v8;
    }

    else
    {
      v2 = 0;
    }
  }

  v5 = v2;
  v6 = v3;
LABEL_9:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

id sub_26EF84E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26EF9C130();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_26EF9BE30();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_26EF84F44(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_26EF9BE30();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_26EF84FF8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_26EF85054(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_26EF8509C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_26EF850C0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26EF784C0(&qword_2806CFE08, &qword_26EF9E4A8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_26EF87240((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26EF784C0(&qword_2806CFE10, &qword_26EF9E4B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF851D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26EF784C0(&qword_2806CFD20, &unk_26EF9DE40);
      v10 = swift_allocObject();
      j__malloc_size(v10);
      sub_26EF85924();
      *(v10 + 16) = v8;
      *(v10 + 24) = v11;
      if (v5)
      {
LABEL_13:
        sub_26EF87220((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF852C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26EF784C0(&qword_2806CFD48, &qword_26EF9E388);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26EF87260((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF853BC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26EF784C0(&qword_2806CFDF8, &qword_26EF9E498);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26EF87280((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26EF784C0(&qword_2806CFE00, &qword_26EF9E4A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26EF854D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_26EF784C0(&qword_2806CFD20, &unk_26EF9DE40);
  v4 = swift_allocObject();
  j__malloc_size(v4);
  sub_26EF85924();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t sub_26EF85544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26EF9C760() & 1;
  }
}

uint64_t sub_26EF85588()
{
  v0 = sub_26EF9C160();
  v2 = v1;
  if (v0 == sub_26EF9C160() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26EF9C760();
  }

  return v5 & 1;
}

void sub_26EF85614(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26EF9C130();
  [a3 setString_];
}

uint64_t sub_26EF85688(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  return sub_26EF82430(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_26EF85694(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  return sub_26EF826D0(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_26EF856A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  return sub_26EF82978(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_26EF856B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  return sub_26EF82DA8(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_26EF856BC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  return sub_26EF83180(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

uint64_t sub_26EF85704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26EF85588() & 1;
}

unint64_t sub_26EF8577C()
{
  result = qword_2806CFDF0;
  if (!qword_2806CFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFDF0);
  }

  return result;
}

id sub_26EF857F4@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t sub_26EF8584C()
{

  return swift_once();
}

uint64_t sub_26EF858B8()
{

  return swift_allocObject();
}

uint64_t sub_26EF858D0()
{

  return swift_allocObject();
}

uint64_t sub_26EF8595C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_26EF85994()
{
  v1 = *(v0 + 16);
  sub_26EF9C3C0();
  return v3;
}

uint64_t sub_26EF859F4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_26EF8595C();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  v7 = MEMORY[0x274384710]();

  *a2 = v7 & 1;
  return result;
}

uint64_t sub_26EF85AAC()
{
  v1 = *(v0 + 16);
  sub_26EF9C3C0();
  return v3;
}

uint64_t sub_26EF85B0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_26EF8595C();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  v7 = sub_26EF9C0B0();

  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v7;
  }

  return result;
}

uint64_t ThreadsafeDictionary.__allocating_init()()
{
  v0 = swift_allocObject();
  ThreadsafeDictionary.init()();
  return v0;
}

void ThreadsafeDictionary.init()()
{
  sub_26EF76E7C();
  v29 = *v0;
  sub_26EF9C3B0();
  sub_26EF76D10();
  v27 = v2;
  v28 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_26EF810E0();
  v26 = v6 - v5;
  v7 = sub_26EF9C3A0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  sub_26EF810E0();
  v9 = sub_26EF9C070();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26EF810E0();
  v11 = sub_26EF9BEF0();
  sub_26EF76D10();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  sub_26EF810E0();
  v19 = v18 - v17;
  sub_26EF85F10();
  sub_26EF9C5E0();

  sub_26EF9BEE0();
  v20 = sub_26EF9BED0();
  v22 = v21;
  (*(v13 + 8))(v19, v11);
  MEMORY[0x2743848A0](v20, v22);

  sub_26EF9C050();
  sub_26EF85F54();
  sub_26EF784C0(&qword_2806CFE18, &qword_26EF9E4C0);
  sub_26EF85FAC();
  sub_26EF9C580();
  (*(v27 + 104))(v26, *MEMORY[0x277D85260], v28);
  v0[2] = sub_26EF9C3D0();
  v23 = v29[10];
  v24 = v29[11];
  v25 = v29[12];
  v0[3] = sub_26EF9C080();
  sub_26EF85944();
}

unint64_t sub_26EF85F10()
{
  result = qword_280E13EF8;
  if (!qword_280E13EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E13EF8);
  }

  return result;
}

unint64_t sub_26EF85F54()
{
  result = qword_280E13F00;
  if (!qword_280E13F00)
  {
    sub_26EF9C3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E13F00);
  }

  return result;
}

unint64_t sub_26EF85FAC()
{
  result = qword_280E13F18;
  if (!qword_280E13F18)
  {
    sub_26EF7948C(&qword_2806CFE18, &qword_26EF9E4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E13F18);
  }

  return result;
}

void sub_26EF86010(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v9 = sub_26EF9C4D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v19 - v13;
  v15 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  (*(v17 + 16))(&v19 - v16, a3, v8);
  (*(v10 + 16))(v14, a1, v9);
  v18 = *a2;
  sub_26EF862BC();
}

uint64_t sub_26EF86180()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  sub_26EF9C4D0();
  return sub_26EF9C3C0();
}

uint64_t sub_26EF86200(void *a1)
{
  v1 = *a1;
  sub_26EF8595C();
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  sub_26EF9C0E0();
}

void sub_26EF862BC()
{
  sub_26EF76E7C();
  v1 = v0;
  v3 = v2;
  v33 = v2;
  v34 = v4;
  v29 = *v0;
  v30 = *(v29 + 88);
  v5 = sub_26EF9C4D0();
  sub_26EF76D10();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = *(v29 + 80);
  sub_26EF76D10();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  v32 = v1[2];
  (*(v15 + 16))(&v29 - v19, v3, v13);
  (*(v7 + 16))(v12, v34, v5);
  v21 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v22 = (v17 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = swift_allocObject();
  v25 = v29;
  v24 = v30;
  v31 = v13;
  *(v23 + 2) = v13;
  *(v23 + 3) = v24;
  *(v23 + 4) = *(v25 + 96);
  *(v23 + 5) = v1;
  (*(v15 + 32))(&v23[v21], v20, v13);
  v26 = v7;
  (*(v7 + 32))(&v23[v22], v12, v5);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26EF86800;
  *(v27 + 24) = v23;
  v35[4] = sub_26EF868C0;
  v35[5] = v27;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 1107296256;
  v35[2] = sub_26EF868E8;
  v35[3] = &unk_287F03F70;
  v28 = _Block_copy(v35);

  dispatch_sync(v32, v28);
  _Block_release(v28);
  (*(v15 + 8))(v33, v31);
  (*(v26 + 8))(v34, v5);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    sub_26EF85944();
  }
}

uint64_t sub_26EF86618(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v4 = *a1;
  v5 = *(*a1 + 88);
  v6 = sub_26EF9C4D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - v10;
  v12 = *(v4 + 80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v15 + 16))(&v18 - v14, a2, v12);
  (*(v7 + 16))(v11, v18, v6);
  swift_beginAccess();
  v16 = *(v4 + 96);
  sub_26EF9C0D0();
  sub_26EF9C0F0();
  return swift_endAccess();
}

uint64_t sub_26EF86800()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_26EF76D10();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(sub_26EF9C4D0() - 8);
  v8 = v0[5];
  v9 = v0 + ((v4 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_26EF86618(v8, v0 + v4, v9);
}

uint64_t sub_26EF868C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26EF86910(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_26EF86928(void *a1))()
{
  v3 = sub_26EF86BB0(0x48uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = sub_26EF9C4D0();
  v3[1] = v6;
  v7 = *(v6 - 8);
  v3[2] = v7;
  v8 = *(v7 + 64);
  v3[3] = sub_26EF86BB0(v8);
  v3[4] = sub_26EF86BB0(v8);
  v3[5] = *(v4 + 80);
  sub_26EF76D10();
  v10 = v9;
  v3[6] = v9;
  v12 = *(v11 + 64);
  v3[7] = sub_26EF86BB0(v12);
  v3[8] = sub_26EF86BB0(v12);
  (*(v10 + 16))();
  sub_26EF86180();
  return sub_26EF86ABC;
}

void sub_26EF86ABC()
{
  sub_26EF76E7C();
  v1 = *v0;
  v2 = (*v0)[7];
  v3 = (*v0)[8];
  if (v4)
  {
    v5 = v1[5];
    v6 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[1];
    v10 = v1[2];
    v11 = *v1;
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v2, v3, v5);
    sub_26EF862BC();
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v1[3];
    v7 = v1[4];
    v12 = *v1;
    sub_26EF862BC();
  }

  free(v3);
  free(v2);
  free(v7);
  free(v8);
  sub_26EF85944();

  free(v13);
}

void *sub_26EF86BB0(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t ThreadsafeDictionary.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ThreadsafeDictionary.__deallocating_deinit()
{
  ThreadsafeDictionary.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t TokenizerOutput.processedInput.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall TokenizerOutput.init(tokenIds:attentionMask:tokenizerWordRangesUTF8:wordIds:processedInput:)(TextUnderstandingShared::TokenizerOutput *__return_ptr retstr, Swift::OpaquePointer tokenIds, Swift::OpaquePointer attentionMask, Swift::OpaquePointer tokenizerWordRangesUTF8, Swift::OpaquePointer wordIds, Swift::String processedInput)
{
  retstr->tokenIds = tokenIds;
  retstr->attentionMask = attentionMask;
  retstr->tokenizerWordRangesUTF8 = tokenizerWordRangesUTF8;
  retstr->wordIds = wordIds;
  retstr->processedInput = processedInput;
}

void __swiftcall TokenizerOutput.init(tokenizerOutputObjc:padId:processedInput:)(TextUnderstandingShared::TokenizerOutput *__return_ptr retstr, TokenizerOutputObjc tokenizerOutputObjc, Swift::Float padId, Swift::String processedInput)
{
  tokenRanges = tokenizerOutputObjc._tokenRanges;
  tokenIds = tokenizerOutputObjc._tokenIds;
  isa = tokenizerOutputObjc.super.isa;
  v8 = [(objc_class *)tokenizerOutputObjc.super.isa tokenIds:tokenizerOutputObjc._tokenRanges];
  sub_26EF9BE70();

  v9 = isa;
  v10 = sub_26EF87BDC();
  v14 = sub_26EF870F8(v10, v11, v9, v12, v13);
  v15 = sub_26EF87BDC();
  sub_26EF870A0(v15, v16);
  v17 = *(v14 + 2);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v38 = tokenRanges;
    v40 = MEMORY[0x277D84F90];
    sub_26EF872E8(0, v17, 0);
    v18 = v40;
    v19 = v14 + 8;
    v20 = v40[2];
    do
    {
      if (*v19 == padId)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v22 = v40[3];
      if (v20 >= v22 >> 1)
      {
        sub_26EF872E8((v22 > 1), v20 + 1, 1);
      }

      v40[2] = v20 + 1;
      *(v40 + v20 + 8) = v21;
      ++v19;
      ++v20;
      --v17;
    }

    while (v17);
  }

  v23 = [(objc_class *)v9 tokenRanges];
  sub_26EF9BE70();

  v24 = v9;
  v25 = sub_26EF87BDC();
  v29 = sub_26EF870F8(v25, v26, v24, v27, v28);
  v30 = sub_26EF87BDC();
  sub_26EF870A0(v30, v31);
  v32 = [(objc_class *)v24 wordIndexes];
  v33 = sub_26EF9BE70();
  v35 = v34;

  v36 = v24;
  v37 = sub_26EF870F8(v33, v35, v36, sub_26EF876E4, sub_26EF87978);
  sub_26EF870A0(v33, v35);

  retstr->tokenIds._rawValue = v14;
  retstr->attentionMask._rawValue = v18;
  retstr->tokenizerWordRangesUTF8._rawValue = v29;
  retstr->wordIds._rawValue = v37;
  retstr->processedInput._countAndFlagsBits = tokenIds;
  retstr->processedInput._object = tokenRanges;
}

uint64_t sub_26EF870A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26EF870F8(uint64_t result, unint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t, id), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, id))
{
  v8 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v18 = result >> 32;
      if (result >> 32 >= result)
      {
        v19 = result;
        v9 = a3;
        v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v14 = v19;
        v15 = v18;
        goto LABEL_7;
      }

      __break(1u);
      return result;
    case 2uLL:
      v11 = *(result + 16);
      v12 = *(result + 24);
      v9 = a3;
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v11;
      v15 = v12;
LABEL_7:
      v10 = a5(v14, v15, v13, v9);
      goto LABEL_8;
    case 3uLL:
      v16 = a3;
      v17 = a4(0, 0, v16);

      return v17;
    default:
      v9 = a3;
      v10 = a4(v8, a2 & 0xFFFFFFFFFFFFFFLL, v9);
LABEL_8:
      v17 = v10;

      return v17;
  }
}

char *sub_26EF87220(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_26EF76D20(a3, result);
  }

  return result;
}

char *sub_26EF87240(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_26EF76D20(a3, result);
  }

  return result;
}

char *sub_26EF87260(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_26EF76D20(a3, result);
  }

  return result;
}

char *sub_26EF87280(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_26EF76D20(a3, result);
  }

  return result;
}

char *sub_26EF872A8(char *a1, int64_t a2, char a3)
{
  result = sub_26EF873B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26EF872C8(void *a1, int64_t a2, char a3)
{
  result = sub_26EF874C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26EF872E8(char *a1, int64_t a2, char a3)
{
  result = sub_26EF875E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 sub_26EF87308(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26EF8731C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26EF8735C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_26EF873B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_26EF784C0(&qword_2806CFD20, &unk_26EF9DE40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26EF874C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_26EF784C0(&qword_2806CFE20, &qword_26EF9E590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for NLLanguage(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26EF875E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_26EF784C0(&qword_2806CFD58, &qword_26EF9E398);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

const void *sub_26EF876E4(uint64_t a1, uint64_t a2, id a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v14 = WORD2(a2);
  v13 = a2;
  v4 = [a3 wordIndexes];
  v5 = sub_26EF9BE70();
  v7 = v6;

  v8 = MEMORY[0x2743844D0](v5, v7);
  v9 = sub_26EF7B800(&v12, v8 / 8);
  sub_26EF870A0(v5, v7);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const void *sub_26EF877C0(uint64_t a1, uint64_t a2, id a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v14 = WORD2(a2);
  v13 = a2;
  v4 = [a3 tokenRanges];
  v5 = sub_26EF9BE70();
  v7 = v6;

  v8 = MEMORY[0x2743844D0](v5, v7);
  v9 = sub_26EF7B774(&v12, v8 / 16);
  sub_26EF870A0(v5, v7);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const void *sub_26EF8789C(uint64_t a1, uint64_t a2, id a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v14 = WORD2(a2);
  v13 = a2;
  v4 = [a3 tokenIds];
  v5 = sub_26EF9BE70();
  v7 = v6;

  v8 = MEMORY[0x2743844D0](v5, v7);
  v9 = sub_26EF7B6E8(&v12, v8 / 4);
  sub_26EF870A0(v5, v7);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_26EF87978(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26EF9BE00();
  if (!v6)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v7 = v6;
  result = sub_26EF9BE20();
  if (!__OFSUB__(a1, result))
  {
    v9 = a1 - result + v7;
LABEL_5:
    sub_26EF9BE10();
    v10 = [a4 wordIndexes];
    v11 = sub_26EF9BE70();
    v13 = v12;

    v14 = MEMORY[0x2743844D0](v11, v13);
    v15 = sub_26EF7B800(v9, v14 / 8);
    sub_26EF870A0(v11, v13);

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF87A44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26EF9BE00();
  if (!v6)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v7 = v6;
  result = sub_26EF9BE20();
  if (!__OFSUB__(a1, result))
  {
    v9 = a1 - result + v7;
LABEL_5:
    sub_26EF9BE10();
    v10 = [a4 tokenRanges];
    v11 = sub_26EF9BE70();
    v13 = v12;

    v14 = MEMORY[0x2743844D0](v11, v13);
    v15 = sub_26EF7B774(v9, v14 / 16);
    sub_26EF870A0(v11, v13);

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF87B10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26EF9BE00();
  if (!v6)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v7 = v6;
  result = sub_26EF9BE20();
  if (!__OFSUB__(a1, result))
  {
    v9 = a1 - result + v7;
LABEL_5:
    sub_26EF9BE10();
    v10 = [a4 tokenIds];
    v11 = sub_26EF9BE70();
    v13 = v12;

    v14 = MEMORY[0x2743844D0](v11, v13);
    v15 = sub_26EF7B6E8(v9, v14 / 4);
    sub_26EF870A0(v11, v13);

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF87BE8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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