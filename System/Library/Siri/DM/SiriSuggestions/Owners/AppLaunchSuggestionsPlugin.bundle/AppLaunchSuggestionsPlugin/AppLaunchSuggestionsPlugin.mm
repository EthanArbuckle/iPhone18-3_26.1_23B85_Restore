uint64_t sub_1638@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1A14(a1, a1[3]);
  v4 = sub_76E0();
  sub_1954(7368801, 0xE300000000000000, v4, &v22);

  if (v23)
  {
    sub_1AC0(&qword_10338, &qword_7F00);
    if (swift_dynamicCast())
    {
      v5 = v21;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A58(&v22);
  }

  v5 = 0;
LABEL_6:
  sub_1AC0(&qword_10308, &qword_7EE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_7E70;
  strcpy((inited + 32), "appIdentifier");
  *(inited + 46) = -4864;
  v7 = sub_1AC0(&qword_10310, &qword_7EF0);
  *(inited + 72) = v7;
  v8 = sub_1B50(&qword_10318);
  *(inited + 80) = v8;
  v9 = sub_1B50(&qword_10320);
  *(inited + 88) = v9;
  if (v5)
  {

    v10 = sub_19B8(0x6449707061, 0xE500000000000000, v5);
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *(inited + 96) = 0x656D614E707061;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 136) = v7;
  *(inited + 144) = v8;
  *(inited + 152) = v9;
  if (v5)
  {
    v13 = sub_19B8(0x656D614E707061, 0xE700000000000000, v5);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *(inited + 112) = v13;
  *(inited + 120) = v15;
  sub_1AC0(&qword_10328, &qword_7EF8);
  sub_7970();
  v16 = sub_7760();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_7750();
  a2[3] = v16;
  result = sub_1BBC();
  a2[4] = result;
  *a2 = v19;
  return result;
}

double sub_1954@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_69D0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1C14(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_19B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_69D0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

void *sub_1A14(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A58(uint64_t a1)
{
  v2 = sub_1AC0(&qword_10300, &qword_7EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1B08(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1B50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B08(&qword_10310, &qword_7EF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBC()
{
  result = qword_10330;
  if (!qword_10330)
  {
    sub_7760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10330);
  }

  return result;
}

uint64_t sub_1C14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_1C70(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1CBC(uint64_t result, int a2, int a3)
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

unint64_t sub_1D0C()
{
  result = qword_10340;
  if (!qword_10340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10340);
  }

  return result;
}

uint64_t sub_1D60(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_7780();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_7950();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1E7C, 0, 0);
}

uint64_t sub_1E7C()
{
  v37 = v0;
  if (qword_102D0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = sub_27AC(v3, qword_10DD0);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_7940();
  v10 = sub_7A10();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[9];
  v12 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  if (v11)
  {
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v18 = 136315138;
    v35 = v12;
    v36 = v34;
    v0[2] = sub_7770();
    sub_78C0();
    v33 = v10;
    sub_27E4();
    v19 = sub_7B00();
    v21 = v20;

    (*(v16 + 8))(v15, v17);
    v22 = sub_6450(v19, v21, &v36);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v9, v33, "Updating context with signal: %s", v18, 0xCu);
    sub_283C(v34);

    (*(v13 + 8))(v35, v14);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v23 = v0[3];
  v24 = v0[4];
  v0[11] = *v23;
  v25 = v23[1];
  v0[12] = v25;
  v0[13] = swift_getObjectType();
  sub_7770();
  v26 = sub_78A0();
  v28 = v27;

  v0[14] = v26;
  v0[15] = v28;
  v29 = *(*(v25 + 8) + 8);
  v31 = sub_7A00();

  return _swift_task_switch(sub_2158, v31, v30);
}

uint64_t sub_2158()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  sub_2898(v0[14], v0[15]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21E8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_221C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B8;

  return sub_1D60(a1, a2);
}

uint64_t sub_22B8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_2888();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_23A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValid(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2454;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t sub_2454(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  sub_2888();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_2548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F8;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t sub_25F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v8 = *v3;
  sub_2888();
  *v9 = v8;

  v10 = *(v8 + 8);

  return v10(a1, a2, a3);
}

uint64_t sub_2704(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758();

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

unint64_t sub_2758()
{
  result = qword_10348;
  if (!qword_10348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10348);
  }

  return result;
}

uint64_t sub_27AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_27E4()
{
  result = qword_10350;
  if (!qword_10350)
  {
    sub_78C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10350);
  }

  return result;
}

uint64_t sub_283C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2898(uint64_t a1, uint64_t a2)
{
  if (qword_102D8 != -1)
  {
    sub_2A50();
  }

  v4 = qword_10DE8;
  v7[3] = sub_7660();
  v7[4] = &protocol witness table for DomainOwner;
  v7[0] = v4;
  v6[3] = &type metadata for String;
  v6[0] = a1;
  v6[1] = a2;

  sub_2A70();
  sub_78E0();
  sub_283C(v6);
  return sub_283C(v7);
}

uint64_t sub_2964()
{
  if (qword_102D8 != -1)
  {
    sub_2A50();
  }

  v0 = qword_10DE8;
  v2[3] = sub_7660();
  v2[4] = &protocol witness table for DomainOwner;
  v2[0] = v0;

  sub_2A70();
  sub_78D0();
  sub_283C(v2);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A58(v3);
    return 0;
  }
}

uint64_t sub_2A50()
{

  return swift_once();
}

uint64_t sub_2A90()
{
  v1 = [objc_opt_self() sharedPreferences];
  v2 = sub_2B90(v1);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    sub_1AC0(&qword_10358, &unk_8020);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_8010;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    isa = sub_79D0().super.isa;

    v8 = [v0 localizedNameWithPreferredLocalizations:isa];
  }

  else
  {
    v8 = [v0 localizedName];
  }

  v9 = sub_79A0();

  return v9;
}

uint64_t sub_2B90(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_79A0();

  return v3;
}

void *sub_2C00(uint64_t a1)
{
  v1[2] = 0x746E657571657266;
  v1[3] = 0xEB00000000707041;
  v1[4] = a1;
  v2 = *sub_7910();
  v1[8] = sub_7920();
  v1[9] = &protocol witness table for InstalledAppProvider;
  v1[5] = v2;

  return v1;
}

void *sub_2C6C()
{
  v1 = [objc_allocWithZone(ATXProactiveSuggestionClient) initWithConsumerSubType:45];
  v2 = [v1 suggestionLayoutFromCache];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 allSuggestionsInLayout];

    sub_3E18(0, &qword_10428, ATXProactiveSuggestion_ptr);
    v5 = sub_79E0();
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  sub_2EF8(5, v5, sub_2EA4, 0, __src);
  __src[6] = sub_34F4;
  __src[7] = v0;
  __src[8] = sub_3528;
  __src[9] = 0;
  __src[10] = sub_3538;
  __src[11] = 0;

  sub_39FC(__src);
  v19 = v6;
  sub_3590();
  sub_3D50(__src, &qword_10420, &qword_8118);
  v7 = sub_309C(2, v19);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_7B20();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = &_swiftEmptyArrayStorage;
  }

  v16 = v15[2];

  if (__OFSUB__(v13 >> 1, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v16 != (v13 >> 1) - v11)
  {
LABEL_15:
    swift_unknownObjectRelease();
LABEL_5:
    sub_370C(v7, v9, v11, v13);
    goto LABEL_11;
  }

  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    swift_unknownObjectRelease_n();
    return &_swiftEmptyArrayStorage;
  }

LABEL_11:
  v17 = v14;
  swift_unknownObjectRelease();

  return v17;
}

BOOL sub_2EA4(id *a1)
{
  v1 = [*a1 executableSpecification];
  v2 = [v1 executableType];

  return v2 == &dword_0 + 1;
}

Swift::Int sub_2EF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(id *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = a4;
  v6 = a3;
  v7 = a5;
  sub_3E58(a2, a3);
  v11 = v10;
  v12 = sub_3504(a2);
  sub_3F30(v11, a1, v12, a2, v6);
  if (v14)
  {
    v13 = sub_3504(a2);
  }

  v15 = v13;
  sub_3E58(a2, v6);
  if (v15 < v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  sub_39A4(v16, a2);
  result = sub_39A4(v15, a2);
  if ((a2 & 0xC000000000000001) == 0 || v17 == v15)
  {
  }

  else
  {
    if (v17 >= v15)
    {
      goto LABEL_20;
    }

    sub_3E18(0, &qword_10428, ATXProactiveSuggestion_ptr);

    result = v17;
    do
    {
      v19 = result + 1;
      sub_7A60(result);
      result = v19;
    }

    while (v15 != v19);
  }

  if (a2 >> 62)
  {
LABEL_18:

    v20 = sub_7AF0();
    v21 = v23;
    v17 = v24;
    v22 = v25;

    goto LABEL_15;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {

    v20 = a2 & 0xFFFFFFFFFFFFFF8;
    v21 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = (2 * v15) | 1;
LABEL_15:
    *v7 = v20;
    v7[1] = v21;
    v7[2] = v17;
    v7[3] = v22;
    v7[4] = v6;
    v7[5] = v5;
    return result;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_309C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_3958(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_38EC(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_3130(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [*a1 executableSpecification];
  v6 = [v5 executableObject];

  if (!v6)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_6:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v8 = v7;
  v9 = a2[9];
  sub_1A14(a2 + 5, a2[8]);
  v10 = sub_79A0();
  v11 = a2[4];
  v12 = (*(v9 + 24))(v10);

  if (v12)
  {
    sub_1AC0(&qword_10440, &qword_8138);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_7E70;
    *(inited + 32) = 0x656D614E707061;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = sub_2A90();
    *(inited + 56) = v14;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x6449707061;
    *(inited + 88) = 0xE500000000000000;
    *(inited + 120) = sub_3E18(0, &qword_10448, NSString_ptr);
    *(inited + 96) = v8;
    swift_unknownObjectRetain();
    v15 = sub_7970();
    *(a3 + 24) = sub_1AC0(&qword_10450, &unk_8140);

    swift_unknownObjectRelease();
    *a3 = v15;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_3350()
{
  v1 = *(v0 + 24);

  sub_283C((v0 + 40));

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_33B4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_33E8()
{
  v2 = *v0;
  v3 = sub_2C6C();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_34B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FrequentAppResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3504(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_7AE0();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

_OWORD *sub_3538@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_3DB0(a1, &v4, &qword_10300, &qword_7EE0);
  if (v5)
  {
    return sub_3D40(&v4, a2);
  }

  __break(1u);
  return result;
}

void sub_3590()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      *&v12[0] = 0;
      swift_stdlib_random();
      v5 = (*&v12[0] * v2) >> 64;
      if (v2 > *&v12[0] * v2)
      {
        v6 = -v2 % v2;
        if (v6 > *&v12[0] * v2)
        {
          do
          {
            *&v12[0] = 0;
            swift_stdlib_random();
          }

          while (v6 > *&v12[0] * v2);
          v5 = (*&v12[0] * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 2);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        sub_1C14(&v1[32 * v4 + 32], v12);
        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        sub_1C14(&v1[32 * v7 + 32], v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_3D2C(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v9 = v1 + 32;
        sub_283C(&v1[32 * v4 + 32]);
        sub_3D40(v11, &v1[32 * v4 + 32]);
        if (v7 >= *(v1 + 2))
        {
          goto LABEL_23;
        }

        sub_283C(&v9[32 * v7]);
        sub_3D40(v12, &v9[32 * v7]);
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_370C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1AC0(&qword_10430, &qword_8120);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 32);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

char *sub_37E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AC0(&qword_10430, &qword_8120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_38EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_3958(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_39A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_7AE0();
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_39FC(void (**__src)(__int128 *__return_ptr, __int128 *))
{
  memcpy(__dst, __src, 0x50uLL);
  v2 = __src[11];
  v29 = __src[10];
  v3 = __dst[1];
  v33 = __dst[8];
  v5 = __dst[2];
  v4 = __dst[3];
  v6 = __dst[4];
  v32 = __dst[6];
  sub_3DB0(__dst, v41, &qword_10438, &unk_8128);
  v7 = v4 >> 1;

  v8 = 0;
  v34 = &_swiftEmptyArrayStorage;
  v9 = &_swiftEmptyArrayStorage + 32;
  v10 = v5;
  while (2)
  {
    v30 = v9;
    while (2)
    {
      for (i = v10; ; ++i)
      {
        if (v7 == i)
        {
          goto LABEL_32;
        }

        if (v10 < v5 || i >= v7)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v35 = *(v3 + 8 * i);
        v13 = v35;
        if (v6(&v35))
        {
          break;
        }
      }

      v35 = v13;
      v32(v36, &v35);

      v37 = v36[0];
      v38 = v36[1];
      v10 = i + 1;
      if ((v33(&v37) & 1) == 0)
      {
        sub_3D50(&v37, &qword_10300, &qword_7EE0);
        continue;
      }

      break;
    }

    v14 = v30;
    if (*(&v38 + 1) == 1)
    {
LABEL_32:
      v39 = 0u;
      v40 = 0u;
LABEL_33:

      swift_unknownObjectRelease();
      sub_3D50(&v39, &qword_10300, &qword_7EE0);
      v26 = v34[3];
      if (v26 < 2)
      {
        return;
      }

      v27 = v26 >> 1;
      v25 = __OFSUB__(v27, v8);
      v28 = v27 - v8;
      if (!v25)
      {
        v34[2] = v28;
        return;
      }

      goto LABEL_37;
    }

    v29(&v39, &v37);
    sub_3D50(&v37, &qword_10300, &qword_7EE0);
    if (!*(&v40 + 1))
    {
      goto LABEL_33;
    }

    sub_3D40(&v39, v41);
    if (!v8)
    {
      v15 = v34[3];
      if (((v15 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_39;
      }

      v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      sub_1AC0(&qword_10430, &qword_8120);
      v18 = swift_allocObject();
      v19 = (j__malloc_size(v18) - 32) / 32;
      v18[2] = v17;
      v18[3] = 2 * v19;
      v20 = (v18 + 4);
      v21 = v34[3];
      v22 = v21 >> 1;
      if (v34[2])
      {
        if (v18 != v34 || v20 >= &v34[4 * v22 + 4])
        {
          v31 = v19;
          v24 = v34[3];
          memmove(v18 + 4, v34 + 4, 32 * v22);
          v21 = v24;
          v19 = v31;
        }

        v34[2] = 0;
      }

      v14 = (v20 + 32 * v22);
      v8 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - (v21 >> 1);

      v34 = v18;
    }

    v25 = __OFSUB__(v8--, 1);
    if (!v25)
    {
      sub_3D40(v41, v14);
      v9 = (v14 + 2);
      continue;
    }

    break;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

_OWORD *sub_3D40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3D50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1AC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3DB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1AC0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_3E18(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_3E58(unint64_t a1, uint64_t (*a2)(id *))
{
  v4 = sub_3504(a1);
  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_7A70();
    }

    else
    {
      if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v10 = v6;
    v8 = a2(&v10);

    if (v8)
    {
      return;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }
}

void sub_3F30(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(id *))
{
  v6 = a2;
  v8 = (a2 > 0) | (a2 >> 63);
  if (((a2 >> 63) & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_6;
  }

  v9 = sub_3504(a4);
  sub_3958(v9, v8, 0);
  v10 = __OFSUB__(0, v6);
  v6 = -v6;
  if (v10)
  {
LABEL_30:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_6:
  if (a1 == a3)
  {
    return;
  }

  v11 = sub_3504(a4);
  v12 = a4 & 0xC000000000000001;
  v13 = a4 & 0xFFFFFFFFFFFFFF8;
  v20 = v6;
  v14 = a4 + 32;
  v15 = 1;
  while (2)
  {
    v22 = v15;
    v16 = a1;
    while (1)
    {
      a1 = v16 + v8;
      if (__OFADD__(v16, v8))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (a1 == v11)
      {
        break;
      }

      if (v12)
      {
        v17 = sub_7A70();
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (a1 >= *(v13 + 16))
        {
          goto LABEL_26;
        }

        v17 = *(v14 + 8 * a1);
      }

      v18 = v17;
      v24 = v17;
      v19 = a5(&v24);

      v16 += v8;
      if (v19)
      {
        goto LABEL_19;
      }
    }

    a1 = v11;
LABEL_19:
    if (v22 == v20)
    {
      return;
    }

    if (v22 >= v20)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (a1 != a3)
    {
      continue;
    }

    break;
  }
}

void *sub_40CC(uint64_t a1)
{
  v1[2] = 0x746E6176656C6572;
  v1[3] = 0xEB00000000707041;
  v1[4] = a1;
  v2 = *sub_7910();
  v1[8] = sub_7920();
  v1[9] = &protocol witness table for InstalledAppProvider;
  v1[5] = v2;

  return v1;
}

uint64_t sub_4138(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a2;
  *(v3 + 120) = v2;
  return _swift_task_switch(sub_4158, 0, 0);
}

uint64_t sub_4158()
{
  v1 = v0[14];
  v2 = v1[4];
  sub_1A14(v1, v1[3]);
  v3 = sub_7700();
  v5 = v4;
  v0[16] = v3;
  v0[17] = v4;
  v0[18] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_7A00();

  return _swift_task_switch(sub_4208, v8, v7);
}

uint64_t sub_4208()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = sub_2964();
  v6 = v5;
  swift_unknownObjectRelease();
  v0[19] = v4;
  v0[20] = v6;

  return _swift_task_switch(sub_4290, 0, 0);
}

uint64_t sub_4290()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = v0[19];
    v3 = v0[15];
    v4 = v3[8];
    v5 = v3[9];
    sub_1A14(v3 + 5, v4);
    v6 = (*(v5 + 24))(v2, v1, v3[4], v4, v5);
    if (v6)
    {
      v7 = v6;
      v8 = v0[19];
      sub_1AC0(&qword_10430, &qword_8120);
      v9 = swift_allocObject();
      v9[1] = xmmword_8010;
      sub_1AC0(&qword_10518, &qword_8248);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_7E70;
      *(inited + 32) = 0x656D614E707061;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = sub_2A90();
      *(inited + 56) = v11;
      *(inited + 64) = 0x6449707061;
      *(inited + 72) = 0xE500000000000000;
      *(inited + 80) = v8;
      *(inited + 88) = v1;
      v12 = sub_7970();
      *(v9 + 7) = sub_1AC0(&qword_10338, &qword_7F00);
      *(v9 + 4) = v12;

      goto LABEL_6;
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_6:
  v13 = v0[1];

  return v13(v9);
}

uint64_t sub_4464(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_44FC;

  return sub_4138(v6, a2);
}

uint64_t sub_44FC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_4660(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RelevantAppResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_46A0()
{
  v0 = sub_7950();
  sub_472C(v0, qword_10DD0);
  sub_27AC(v0, qword_10DD0);
  if (qword_102F8 != -1)
  {
    swift_once();
  }

  v1 = qword_10E10;
  return sub_7960();
}

uint64_t *sub_472C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_4790()
{
  v0 = sub_7660();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_7670();
  qword_10DE8 = result;
  return result;
}

uint64_t sub_47E8()
{
  sub_1AC0(&qword_10618, &qword_82F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7E70;
  sub_1AC0(&qword_10620, &qword_8300);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_8010;
  v2 = sub_7930();
  *(v1 + 32) = *v2;
  sub_55A4();
  sub_1AC0(&qword_10630, &qword_8308);
  sub_55F8();
  sub_7A40();
  v3 = type metadata accessor for RelevantAppResolver();
  swift_allocObject();
  v4 = sub_40CC(v9);
  *(v0 + 56) = v3;
  *(v0 + 64) = sub_6E10(&qword_10640, type metadata accessor for RelevantAppResolver);
  *(v0 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_8010;
  *(v5 + 32) = *v2;
  sub_7A40();
  v6 = type metadata accessor for FrequentAppResolver();
  swift_allocObject();
  v7 = sub_2C00(v9);
  *(v0 + 96) = v6;
  *(v0 + 104) = sub_6E10(&qword_10648, type metadata accessor for FrequentAppResolver);
  *(v0 + 72) = v7;
  sub_78F0();
}

uint64_t sub_4A50()
{
  sub_7720();
  result = sub_7710();
  qword_10DF0 = result;
  return result;
}

uint64_t sub_4AA4(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return _swift_task_switch(sub_4AC8, 0, 0);
}

uint64_t sub_4AC8()
{
  if (qword_102D8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = qword_10DE8;
  v0[10] = sub_7660();
  v0[11] = sub_6E10(&qword_105E0, &type metadata accessor for DomainOwner);
  v0[7] = v2;

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_4C48;
  v5 = v0[18];

  return v7(v0 + 7);
}

uint64_t sub_4C48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(v2 + 168) = a1;

  sub_283C((v2 + 56));

  return _swift_task_switch(sub_4D50, 0, 0);
}

uint64_t sub_4D50()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  *(v0 + 120) = &type metadata for AppLaunchConfigurationProvider;
  *(v0 + 128) = sub_538C();
  sub_7830();

  sub_283C((v0 + 96));
  *(swift_task_alloc() + 16) = v2;
  sub_7840();

  sub_7850();

  sub_1AC0(&qword_105F0, &qword_82E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_8010;
  sub_53E8((v0 + 16), v3 + 32);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_4EB8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v13 = *(a1 + 32);
  sub_1A14(a1, v1);
  sub_1AC0(&qword_105F8, &qword_82E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_8250;
  sub_78C0();
  *(v2 + 32) = sub_7880();
  v25 = v1;
  v26 = v13;
  sub_5400(v24);
  sub_7650();

  v3 = v25;
  v13 = v26;
  sub_1A14(v24, v25);
  *&v20 = &type metadata for RelevantAppConfigurator;
  *(&v20 + 1) = sub_1D0C();
  v19[0] = 0xD00000000000002ELL;
  v19[1] = 0x80000000000088D0;
  *v23 = v3;
  *&v23[8] = v13;
  sub_5400(v22);
  sub_7640();
  sub_283C(v19);
  v4 = *&v23[16];
  v13 = *v23;
  sub_1A14(v22, *v23);
  v20 = v13;
  v21 = v4;
  sub_5400(v19);
  sub_77D0();
  v5 = v21;
  v13 = v20;
  sub_1A14(v19, v20);
  if (qword_102E0 != -1)
  {
    swift_once();
  }

  sub_5460(&unk_10520, v15);
  if (qword_102E8 != -1)
  {
    swift_once();
  }

  v17 = v13;
  v18 = v5;
  sub_5400(v16);
  sub_77E0();
  sub_3D50(v15, &qword_10600, &qword_82F0);
  v6 = v17;
  v7 = sub_1A14(v16, v17);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = &type metadata for LaunchAppActionProvider;
  v14[4] = sub_54C4();
  v15[3] = &type metadata for AppViewProvider;
  v15[4] = sub_5518();
  v15[0] = swift_allocObject();
  sub_6EA4(0xD00000000000001ELL, 0x8000000000008A10, v14);
  sub_77C0();
  (*(v8 + 8))(v11, v6);
  sub_283C(v15);
  sub_283C(v16);
  sub_283C(v19);
  sub_283C(v22);
  return sub_283C(v24);
}

uint64_t sub_52E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_44FC;

  return sub_4AA4(a1, a2);
}

unint64_t sub_538C()
{
  result = qword_105E8;
  if (!qword_105E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105E8);
  }

  return result;
}

uint64_t sub_53E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *sub_5400(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_5460(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_54C4()
{
  result = qword_10608;
  if (!qword_10608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10608);
  }

  return result;
}

unint64_t sub_5518()
{
  result = qword_10610;
  if (!qword_10610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10610);
  }

  return result;
}

uint64_t sub_556C()
{
  sub_283C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_55A4()
{
  result = qword_10628;
  if (!qword_10628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10628);
  }

  return result;
}

unint64_t sub_55F8()
{
  result = qword_10638;
  if (!qword_10638)
  {
    sub_1B08(&qword_10630, &qword_8308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10638);
  }

  return result;
}

uint64_t sub_566C(uint64_t a1)
{
  v2 = sub_76D0();
  v3 = sub_6E70(v2);
  v58 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1AC0(&qword_10650, &qword_8358);
  v8 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v10 = &v52 - v9;
  v11 = sub_1AC0(&qword_10658, &qword_8360);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v67 = &v52 - v16;
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v19 = sub_7950();
  v20 = sub_6E70(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  v26 = (&v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_102D0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v27 = sub_27AC(v19, qword_10DD0);
  (*(v22 + 16))(v26, v27, v19);

  v28 = sub_7940();
  v29 = sub_7A20();

  v30 = os_log_type_enabled(v28, v29);
  v59 = a1;
  v55 = v10;
  v56 = v18;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68[0] = v66;
    *v31 = 136315138;
    sub_78C0();
    v32 = sub_79F0();
    v34 = sub_6450(v32, v33, v68);
    v18 = v56;

    *(v31 + 4) = v34;
    a1 = v59;
    _os_log_impl(&dword_0, v28, v29, "Generating configurators for signals: %s", v31, 0xCu);
    sub_283C(v66);

    v10 = v55;
  }

  v35 = *(v22 + 8);
  v22 += 8;
  v35(v26, v19);
  v69[0] = &_swiftEmptyArrayStorage;
  v36 = sub_3500(a1);
  v37 = 0;
  v65 = a1 & 0xC000000000000001;
  v66 = v36;
  v64 = a1 & 0xFFFFFFFFFFFFFF8;
  v62 = enum case for CoreSignalTypes.app(_:);
  v61 = (v58 + 13);
  v53 = (v58 + 4);
  ++v58;
  v19 = &qword_8360;
  while (v66 != v37)
  {
    if (v65)
    {
      sub_7A70();
    }

    else
    {
      if (v37 >= *(v64 + 16))
      {
        goto LABEL_34;
      }

      v38 = *(a1 + 8 * v37 + 32);
    }

    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_7890();
    sub_1AC0(&qword_10660, &qword_8368);
    v39 = swift_dynamicCast();
    sub_630C(v18, v39 ^ 1u, 1, v2);
    v40 = v67;
    (*v61)(v67, v62, v2);
    sub_630C(v40, 0, 1, v2);
    v22 = *(v63 + 48);
    sub_6334(v18, v10);
    sub_6334(v40, &v10[v22]);
    sub_6E84(v10);
    if (v41)
    {
      v26 = &qword_10658;
      sub_6E58(v67);
      sub_6E84(&v10[v22]);
      if (!v41)
      {
        goto LABEL_18;
      }

      sub_6E58(v10);
      sub_6E58(v18);
    }

    else
    {
      sub_6334(v10, v60);
      sub_6E84(&v10[v22]);
      if (v41)
      {
        v26 = &qword_10658;
        sub_6E58(v67);
        (*v58)(v60, v2);
LABEL_18:
        sub_3D50(v10, &qword_10650, &qword_8358);
        sub_6E58(v18);
LABEL_19:

        goto LABEL_22;
      }

      v42 = &v10[v22];
      v43 = v60;
      v44 = v54;
      (*v53)(v54, v42, v2);
      sub_6E10(&qword_10668, &type metadata accessor for CoreSignalTypes);
      v57 = sub_7990();
      v26 = v58;
      v45 = *v58;
      v46 = v67;
      v22 = v56;
      (*v58)(v44, v2);
      sub_3D50(v46, &qword_10658, &qword_8360);
      v10 = v55;
      v45(v43, v2);
      a1 = v59;
      sub_3D50(v10, &qword_10658, &qword_8360);
      v18 = v22;
      sub_3D50(v22, &qword_10658, &qword_8360);
      if ((v57 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v26 = v69;
    sub_7A90();
    v47 = *(v69[0] + 16);
    sub_7AB0();
    a1 = v59;
    sub_7AC0();
    sub_7AA0();
LABEL_22:
    ++v37;
  }

  v48 = v69[0];
  sub_78C0();
  sub_1AC0(&qword_10670, &qword_8370);
  sub_6E10(&qword_10678, &type metadata accessor for Signal);
  v68[0] = sub_7970();
  v26 = sub_3500(v48);
  v49 = 0;
  v2 = 0;
  v22 = v48 & 0xC000000000000001;
  while (v26 != v49)
  {
    if (v22)
    {
      v50 = sub_7A70();
    }

    else
    {
      if (v49 >= *(v48 + 16))
      {
        goto LABEL_36;
      }

      v50 = *(v48 + 8 * v49 + 32);
    }

    if (__OFADD__(v49, 1))
    {
      goto LABEL_35;
    }

    v69[0] = v50;
    sub_5E58(v68, v69);

    v49 = (v49 + 1);
  }

  return v68[0];
}

uint64_t sub_5E58(uint64_t *a1, uint64_t *a2)
{
  v36 = a1;
  v3 = sub_7950();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AC0(&qword_10688, &qword_8380);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31 - v10;
  v12 = sub_76B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  sub_78B0();
  if (sub_63A4(v11, 1, v12) == 1)
  {
    return sub_3D50(v11, &qword_10688, &qword_8380);
  }

  (*(v13 + 32))(v16, v11, v12);
  if (sub_76A0() & 1) == 0 && (sub_7690())
  {
    if (qword_102D0 != -1)
    {
      swift_once();
    }

    v19 = sub_27AC(v3, qword_10DD0);
    (*(v4 + 16))(v7, v19, v3);

    v20 = sub_7940();
    v21 = sub_7A20();

    v35 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = v22;
      v33 = swift_slowAlloc();
      v38 = v33;
      *v22 = 136315138;
      v37 = v17;
      sub_78C0();
      sub_6E10(&qword_10350, &type metadata accessor for Signal);
      v32 = v20;
      v23 = sub_7B00();
      v25 = sub_6450(v23, v24, &v38);

      v26 = v34;
      *(v34 + 1) = v25;
      v20 = v32;
      _os_log_impl(&dword_0, v32, v35, "Adding LaunchApp configuration for signal: %s", v26, 0xCu);
      sub_283C(v33);
    }

    (*(v4 + 8))(v7, v3);
    sub_1AC0(&qword_10690, &qword_8388);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_8010;
    *(v27 + 56) = &type metadata for RelevantAppConfigurator;
    *(v27 + 64) = sub_2758();
    *(v27 + 32) = 0xD00000000000002ELL;
    *(v27 + 40) = 0x80000000000088D0;
    v28 = v36;
    v29 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v28;
    sub_6CA0(v27, v17, isUniquelyReferenced_nonNull_native);
    *v28 = v38;
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_62C0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_6334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC0(&qword_10658, &qword_8360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_63F4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_6450(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_6450(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_6514(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1C14(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_283C(v11);
  return v7;
}

unint64_t sub_6514(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_6614(a5, a6);
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
    result = sub_7A80();
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

char *sub_6614(uint64_t a1, unint64_t a2)
{
  v4 = sub_6660(a1, a2);
  sub_6778(&off_C7B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_6660(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_79C0())
  {
    result = sub_685C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_7A50();
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

        v9 = result + 32;
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
          result = sub_7A80();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
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

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_6778(uint64_t result)
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

    result = sub_68CC(result, v8, 1, v3);
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

void *sub_685C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1AC0(&qword_10680, &qword_8378);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_68CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AC0(&qword_10680, &qword_8378);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_69C0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_69D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_7B40();
  sub_79B0();
  v6 = sub_7B50();

  return sub_6AF4(a1, a2, v6);
}

unint64_t sub_6A48(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_78C0();
  sub_6E10(&qword_10678, &type metadata accessor for Signal);
  v4 = sub_7980();
  return sub_6BA8(a1, v4);
}

unint64_t sub_6AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_7B10() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_6BA8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_78C0();
    v6 = *(*(v2 + 48) + 8 * i);
    sub_6E10(&qword_106A0, &type metadata accessor for Signal);
    if (sub_7990())
    {
      break;
    }
  }

  return i;
}

uint64_t sub_6CA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_6A48(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_1AC0(&qword_10698, &unk_8390);
  if (!sub_7AD0(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_6A48(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_78C0();
    result = sub_7B30();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    sub_6DCC(v14, a2, a1, v19);
  }
}

unint64_t sub_6DCC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_6E10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6E58(uint64_t a1)
{

  return sub_3D50(a1, v1, v2);
}

uint64_t sub_6EA4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (*(*(sub_1AC0(&qword_106A8, &qword_83A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v15[-1] - v5;
  if (qword_102F0 != -1)
  {
    swift_once();
  }

  v7 = sub_7630();
  sub_27AC(v7, qword_10DF8);
  v8 = sub_7860();
  sub_630C(v6, 1, 1, v8);
  v9 = sub_7740();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_7730();
  v15[3] = v9;
  v15[4] = &protocol witness table for StaticIconUrlProvider;
  v15[0] = v12;
  sub_76C0();

  sub_283C(a3);
  return sub_283C(v15);
}

uint64_t sub_7088(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void))
{
  v5 = v2[3];
  v6 = v2[4];
  sub_1A14(v2, v5);
  return a2(a1, v5, *(v6 + 16));
}

uint64_t sub_70EC()
{
  sub_74E8();
  v1 = *(v0 + 16);
  return sub_77A0();
}

uint64_t sub_7138()
{
  v0 = 0xEE00697269732E65;
  v1 = 0x6C7070612E6D6F63;
  v2 = sub_1AC0(&qword_106A8, &qword_83A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (v13 - v4);
  sub_74E8();
  v6 = sub_76F0();
  sub_1954(7368801, 0xE300000000000000, v6, &v14);

  if (v15)
  {
    sub_1AC0(&qword_10338, &qword_7F00);
    if (swift_dynamicCast())
    {
      v7 = sub_19B8(0x6449707061, 0xE500000000000000, v13[1]);
      v9 = v8;

      if (v9)
      {
        v1 = v7;
        v0 = v9;
      }
    }
  }

  else
  {
    sub_1A58(&v14);
  }

  *v5 = v1;
  v5[1] = v0;
  v10 = enum case for Image.appIcon(_:);
  v11 = sub_7860();
  (*(*(v11 - 8) + 104))(v5, v10, v11);
  sub_630C(v5, 0, 1, v11);
  return sub_7870();
}

__n128 sub_738C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_73A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_73E0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_743C()
{
  result = qword_106B0;
  if (!qword_106B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106B0);
  }

  return result;
}

unint64_t sub_7494()
{
  result = qword_106B8;
  if (!qword_106B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106B8);
  }

  return result;
}

uint64_t sub_750C()
{
  v0 = sub_7630();
  sub_472C(v0, qword_10DF8);
  sub_27AC(v0, qword_10DF8);
  return sub_7620();
}

uint64_t sub_7574()
{
  sub_75DC();
  result = sub_7A30();
  qword_10E10 = result;
  return result;
}

unint64_t sub_75DC()
{
  result = qword_106C0;
  if (!qword_106C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_106C0);
  }

  return result;
}