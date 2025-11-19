void *AtomicDictionary.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t AtomicDictionary.__deallocating_deinit()
{
  AtomicDictionary.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_2662E860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_2664E0258();

  return sub_2662E8668(a1, v9, a2, a3);
}

unint64_t sub_2662E8668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_2664E0298();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_2662E87F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2664E0528())
  {
    sub_2664E0CA8();
    v13 = sub_2664E0C98();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2664E0528();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2664E0508())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2664E0B48();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2662E860C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t CircularBuffer.__allocating_init(size:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CircularBuffer.init(size:)(a1);
  return v2;
}

void *CircularBuffer.init(size:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = sub_2664E0948();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v1[3] = 0;
  v1[4] = 0;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v10 = qword_280F91470;
  v14[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v14[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v14[0] = v10;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v2[5] = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000012, 0x80000002664F4380, 1, v14);
  (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
  v11 = sub_2662E9744(v9, a1, v5);
  (*(v6 + 8))(v9, v5);
  v2[2] = v11;
  return v2;
}

uint64_t sub_2662E8EE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = sub_2664E0948();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = v1[5];
  sub_2662A98AC();
  v11 = v2[4];
  swift_beginAccess();
  v12 = v2[2];

  v13 = sub_2664E0528();

  if (v13)
  {
    if (v11 == 0x8000000000000000 && v13 == -1)
    {
      goto LABEL_8;
    }

    v15 = v11 % v13;
    v16 = *(v4 - 8);
    (*(v16 + 16))(v9, a1, v4);
    (*(v16 + 56))(v9, 0, 1, v4);
    swift_beginAccess();
    sub_2664E0548();
    sub_2664E04D8();
    v17 = v2[2];
    sub_2662E96F0(v15, v17);
    (*(v6 + 40))(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v5);
    result = swift_endAccess();
    v18 = v2[4];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (!v19)
    {
      v2[4] = v20;
      v21 = v2[5];
      return sub_2662AA89C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2662E9134()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[5];
  sub_2662A98AC();
  swift_beginAccess();
  v8 = v1[2];
  v7 = *(v2 + 80);
  sub_2664E0948();
  sub_2664E0548();

  swift_getWitnessTable();
  v4 = sub_2664E0458();

  v5 = v1[5];
  sub_2662AA89C();
  return v4 & 1;
}

uint64_t sub_2662E924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v44 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E0948();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v35 - v13;
  v15 = *(v9 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v12);
  v42 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  (*(v6 + 16))(&v35 - v19, a2, a3);
  (*(v6 + 56))(v20, 0, 1, a3);
  v40 = TupleTypeMetadata2;
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = v15[2];
  v22(v14, v44, v9);
  v43 = v21;
  v22(&v14[v21], v20, v9);
  v41 = v6;
  v23 = *(v6 + 48);
  v44 = a3;
  if (v23(v14, 1, a3) != 1)
  {
    v36 = v15;
    v26 = v42;
    v22(v42, v14, v9);
    v28 = v43;
    v27 = v44;
    if (v23(&v14[v43], 1, v44) != 1)
    {
      v29 = v41;
      v30 = v37;
      (*(v41 + 32))(v37, &v14[v28], v27);
      v31 = v27;
      v25 = sub_2664E0298();
      v32 = *(v29 + 8);
      v32(v30, v31);
      v33 = v36[1];
      v33(v20, v9);
      v32(v42, v31);
      v33(v14, v9);
      return v25 & 1;
    }

    (v36[1])(v20, v9);
    (*(v41 + 8))(v26, v27);
    goto LABEL_6;
  }

  v24 = v15[1];
  v24(v20, v9);
  if (v23(&v14[v43], 1, v44) != 1)
  {
LABEL_6:
    (*(v39 + 8))(v14, v40);
    v25 = 0;
    return v25 & 1;
  }

  v24(v14, v9);
  v25 = 1;
  return v25 & 1;
}

uint64_t CircularBuffer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t CircularBuffer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_2662E96F0(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2662E9744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2664E04E8();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_2664E0548();
    return v8;
  }

  return result;
}

uint64_t sub_2662E995C()
{
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v0 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v0;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v1 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000016, 0x80000002664F4430, 1, v3);
  type metadata accessor for MorphunProvider();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84FA0];
  *(result + 24) = v1;
  qword_280072678 = result;
  return result;
}

uint64_t static MorphunProvider.shared.getter()
{
  if (qword_280071A98 != -1)
  {
    swift_once();
  }
}

uint64_t MorphunProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t MorphunProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2662E9B0C()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "#MorphunProvider unexpectedly called on non-tvOS.  returning false", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t SearchPodcastsAppIntent.init(criteria:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072680, &qword_2664E4578);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_2664DFA28();
  *a1 = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SearchPodcastsAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SearchPodcastsAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2662E9F54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v35 = a7;
  v36 = a8;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(sub_2664DE708());

  v22 = sub_2664DE6F8();
  if (v22)
  {
    v23 = v22;
    v24 = sub_2662CD3A4(v22, a3, a4, a5, a6, v35, v36, a9, a10);
  }

  else
  {
    v25 = a1;
    v26 = v17;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = v16;
    v28 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v29 = v20;
    (*(v26 + 16))(v20, v28, v27);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_2662A320C(v25, a2, &v37);
      _os_log_impl(&dword_26629C000, v30, v31, "Unexpected error unpacking storeid for show: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v26 + 8))(v29, v27);
    return 0;
  }

  return v24;
}

uint64_t sub_2662EA1F4(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v22[3] = type metadata accessor for MediaPlaybackProvider();
  v22[4] = &off_2877F3740;
  v22[0] = v11;
  sub_2662A5550(v22, v20);
  v12 = v21;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_2664DD13C(a1, *v16, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v18;
}

void sub_2662EA404(void (*a1)(void *), uint64_t a2)
{
  v5 = sub_2664DEC48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v13);
  v15 = (*(v14 + 16))(1025, v13, v14);
  v16 = [*(v2 + 16) privatePlayMediaIntentData];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 internalSignals];
  if (!v18)
  {

LABEL_15:
    if (v15)
    {

      sub_26636B8D0();
    }

    *v10 = 0;
    (*(v6 + 104))(v10, *MEMORY[0x277D60170], v5);
    a1(v10);

    goto LABEL_18;
  }

  v27[0] = v12;
  v27[1] = a2;
  v28 = a1;
  v29 = v5;
  v19 = v18;
  v20 = sub_2664E04A8();

  v21 = (v20 + 40);
  v22 = -*(v20 + 16);
  v23 = -1;
  do
  {
    v24 = v22 + v23;
    if (v22 + v23 == -1)
    {
      break;
    }

    if (++v23 >= *(v20 + 16))
    {
      __break(1u);
      return;
    }

    if (*(v21 - 1) == 0x6552656E65726950 && *v21 == 0xEC000000746C7573)
    {
      break;
    }

    v21 += 2;
  }

  while ((sub_2664E0D88() & 1) == 0);

  v10 = v27[0];
  *v27[0] = v24 != -1;
  v5 = v29;
  (*(v6 + 104))(v10, *MEMORY[0x277D60170], v29);
  v26 = v28;
  if (v15)
  {

    sub_26636B8D0();
  }

  v26(v10);

LABEL_18:
  (*(v6 + 8))(v10, v5);
}

uint64_t sub_2662EA720()
{
  v0 = qword_280072688;

  return v0;
}

void sub_2662EA768()
{
  sub_2662EA8CC();

  JUMPOUT(0x266781DA0);
}

uint64_t sub_2662EA7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2662EA8CC();

  return MEMORY[0x2821C57B8](a1, a2, a3, a4, v8);
}

uint64_t sub_2662EA810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2662EA8CC();

  return MEMORY[0x2821C5798](a1, a2, a3, a4, v8);
}

unint64_t sub_2662EA878()
{
  result = qword_280F90318[0];
  if (!qword_280F90318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F90318);
  }

  return result;
}

unint64_t sub_2662EA8CC()
{
  result = qword_280F90310;
  if (!qword_280F90310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F90310);
  }

  return result;
}

uint64_t static Completions.protect<A>(name:completion:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(), void *), uint64_t a6, uint64_t a7)
{
  sub_2664E0B28();

  MEMORY[0x2667833B0](a1, a2);
  MEMORY[0x2667833B0](41, 0xE100000000000000);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072698, &unk_2664E4810);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_2662ED444(0xD000000000000015, 0x80000002664F44B0, sub_2662EAAE8, 0);
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = sub_2662ED5D0;
  v18[4] = v17;

  a5(sub_2662ED5E0, v18);
}

uint64_t sub_2662EAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  v15 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a7;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  *(v16 + 6) = a6;
  (*(v12 + 32))(&v16[v15], v14, a7);

  sub_266489BC4(sub_2662EDC1C, v16);
}

uint64_t sub_2662EAC8C(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = sub_2664DFE38();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    return a4(a6);
  }

  v24 = v14;
  v25 = v16;
  v26 = v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = v26;
  v19 = __swift_project_value_buffer(v26, qword_280F914F0);
  swift_beginAccess();
  (*(v24 + 16))(v25, v19, v18);

  v20 = sub_2664DFE18();
  v21 = sub_2664E06D8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_2662A320C(a2, a3, v27);
    _os_log_impl(&dword_26629C000, v20, v21, "Completions#protect FATAL! Double computing completion with name: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v24 + 8))(v25, v26);
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000043, 0x80000002664F4570);
  MEMORY[0x2667833B0](a2, a3);
  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t static Completions.timeout<A>(name:timeoutQueue:workQueue:completion:timeoutMillis:fileABC:defaultValue:_:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, NSObject *a11, uint64_t a12)
{
  v131 = a8;
  v133 = a6;
  v132 = a5;
  v125 = a4;
  v134 = a3;
  v14 = a1;
  v15 = a12;
  v141 = *(a12 - 8);
  v16 = *(v141 + 64);
  v140 = a9;
  MEMORY[0x28223BE20](a1);
  v128 = v17;
  v129 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2664E0038();
  v18 = *(v147 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_2664E00B8();
  v151 = *(v145 - 8);
  v21 = *(v151 + 64);
  MEMORY[0x28223BE20](v145);
  v144 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2664DE438();
  v143 = *(v150 - 8);
  v23 = *(v143 + 64);
  v24 = MEMORY[0x28223BE20](v150);
  v139 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v25;
  MEMORY[0x28223BE20](v24);
  v149 = &v109 - v26;
  v27 = sub_2664DFE38();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v126 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v109 - v32;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v27, qword_280F914F0);
  swift_beginAccess();
  v35 = *(v28 + 16);
  v123 = v34;
  v122 = v28 + 16;
  v121 = v35;
  v35(v33, v34, v27);

  v36 = sub_2664DFE18();
  v37 = sub_2664E06C8();

  v38 = os_log_type_enabled(v36, v37);
  v152 = v18;
  v130 = a7;
  v135 = v28;
  if (v38)
  {
    v39 = a7;
    v40 = swift_slowAlloc();
    v41 = v14;
    v42 = swift_slowAlloc();
    aBlock = v42;
    *v40 = 136446466;
    *(v40 + 4) = sub_2662A320C(v41, a2, &aBlock);
    *(v40 + 12) = 2050;
    *(v40 + 14) = v39;
    v15 = a12;
    _os_log_impl(&dword_26629C000, v36, v37, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v43 = v42;
    v14 = v41;
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v40, -1, -1);

    v44 = v135;
  }

  else
  {

    v44 = v28;
  }

  (*(v44 + 8))(v33, v27);
  v142 = v15;
  v148 = v14;
  v127 = v27;
  v136 = a11;
  v124 = a10;
  v45 = v149;
  sub_2664DE428();
  v46 = dispatch_group_create();
  v137 = swift_allocBox();
  v47 = *(v141 + 16);
  v120 = v141 + 16;
  v119 = v47;
  v47(v48, v140, v15);
  aBlock = 0;
  v156 = 0xE000000000000000;
  sub_2664E0B28();

  aBlock = 0xD00000000000001ALL;
  v156 = 0x80000002664F44D0;
  MEMORY[0x2667833B0](v14, a2);
  v50 = aBlock;
  v49 = v156;
  type metadata accessor for AtomicOnce();
  v51 = swift_allocObject();
  v153 = a2;
  v52 = v51;
  *(v51 + 24) = 0;
  *(v51 + 32) = v50;
  *(v51 + 40) = v49;
  v53 = qword_280F91468;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = qword_280F91470;
  v158 = type metadata accessor for SiriKitTaskLoggingProvider();
  v159 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock = v54;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v52 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v50, v49, 1, &aBlock);
  dispatch_group_enter(v46);
  v55 = v143;
  v56 = *(v143 + 16);
  v57 = v46;
  v58 = v139;
  v59 = v45;
  v60 = v150;
  v115 = v143 + 16;
  v114 = v56;
  v56(v139, v59, v150);
  v61 = *(v55 + 80);
  v113 = ~v61;
  v62 = (v61 + 64) & ~v61;
  v63 = (v138 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v109 = v61;
  v65 = swift_allocObject();
  v66 = v124;
  *(v65 + 2) = v142;
  *(v65 + 3) = v66;
  *(v65 + 4) = v136;
  *(v65 + 5) = v52;
  v67 = v153;
  *(v65 + 6) = v148;
  *(v65 + 7) = v67;
  v68 = *(v55 + 32);
  v118 = v55 + 32;
  v117 = v68;
  v68(&v65[v62], v58, v60);
  *&v65[v63] = v137;
  v69 = v57;
  *&v65[v64] = v57;
  v159 = sub_2662ED608;
  v160 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v156 = 1107296256;
  v157 = sub_2662A3F90;
  v158 = &block_descriptor_5;
  v70 = _Block_copy(&aBlock);
  v71 = v153;

  v124 = v52;

  v136 = v69;
  v72 = v144;
  sub_2664E0068();
  v154 = MEMORY[0x277D84F90];
  v73 = sub_2662A6120();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v75 = sub_2662A5AC8();
  v76 = v146;
  v112 = v74;
  v111 = v75;
  v77 = v147;
  v116 = v73;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v72, v76, v70);
  _Block_release(v70);
  v78 = v152 + 8;
  v125 = *(v152 + 8);
  v125(v76, v77);
  v79 = *(v151 + 8);
  v151 += 8;
  v110 = v79;
  v79(v72, v145);

  v80 = v126;
  v81 = v127;
  v121(v126, v123, v127);

  v82 = sub_2664DFE18();
  v83 = sub_2664E06E8();
  v84 = v71;

  v85 = os_log_type_enabled(v82, v83);
  v86 = v148;
  v152 = v78;
  if (v85)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    aBlock = v88;
    *v87 = 136446210;
    *(v87 + 4) = sub_2662A320C(v86, v84, &aBlock);
    _os_log_impl(&dword_26629C000, v82, v83, "Completions#timeout waiting for completion: %{public}s...", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    MEMORY[0x266784AD0](v88, -1, -1);
    MEMORY[0x266784AD0](v87, -1, -1);
  }

  (*(v135 + 8))(v80, v81);
  v89 = v129;
  v90 = v142;
  v119(v129, v140, v142);
  v91 = v139;
  v114(v139, v149, v150);
  v92 = v141;
  v93 = (*(v141 + 80) + 56) & ~*(v141 + 80);
  v94 = (v128 + v109 + v93) & v113;
  v95 = v94 + v138;
  v96 = (((v94 + v138) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  v98 = v136;
  *(v97 + 2) = v90;
  *(v97 + 3) = v98;
  v99 = v148;
  *(v97 + 4) = v130;
  *(v97 + 5) = v99;
  *(v97 + 6) = v153;
  (*(v92 + 32))(&v97[v93], v89, v90);
  v100 = v150;
  v117(&v97[v94], v91, v150);
  v97[v95] = v131 & 1;
  v101 = &v97[v95 & 0xFFFFFFFFFFFFFFF8];
  v102 = v133;
  *(v101 + 1) = v132;
  *(v101 + 2) = v102;
  *&v97[v96] = v137;
  v159 = sub_2662ED6B8;
  v160 = v97;
  aBlock = MEMORY[0x277D85DD0];
  v156 = 1107296256;
  v157 = sub_2662A3F90;
  v158 = &block_descriptor_12;
  v103 = _Block_copy(&aBlock);

  v104 = v136;

  v105 = v144;
  sub_2664E0068();
  v154 = MEMORY[0x277D84F90];
  v107 = v146;
  v106 = v147;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v105, v107, v103);
  _Block_release(v103);

  v125(v107, v106);
  v110(v105, v145);
  (*(v143 + 8))(v149, v100);
}

uint64_t sub_2662EBCD0(void (*a1)(uint64_t (*)(uint64_t a1), char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v26 = a4;
  v27 = a8;
  v28 = a2;
  v29 = a1;
  v25 = a9;
  v13 = sub_2664DE438();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a6, v13);
  v17 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 2) = v25;
  *(v19 + 3) = a3;
  *(v19 + 4) = v20;
  *(v19 + 5) = a5;
  (*(v14 + 32))(&v19[v17], v16, v13);
  *&v19[v18] = a7;
  v21 = v27;
  *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;

  v22 = v21;
  v29(sub_2662EDB14, v19);
}

void sub_2662EBE80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v40 = a1;
  v10 = sub_2664DE438();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  (*(v18 + 16))(v21, v22, v17);
  (*(v11 + 16))(v16, a3, v10);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();
  v41 = v17;
  v25 = v10;
  v26 = v24;

  if (os_log_type_enabled(v23, v26))
  {
    v27 = a2;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = a7;
    v30 = v29;
    v45[0] = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_2662A320C(v40, v27, v45);
    *(v28 + 12) = 2050;
    v31 = v39;
    sub_2664DE428();
    sub_2664DE388();
    v33 = v32;
    v40 = v21;
    v34 = *(v11 + 8);
    v34(v31, v25);
    v34(v16, v25);
    *(v28 + 14) = v33;
    _os_log_impl(&dword_26629C000, v23, v26, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v35 = v30;
    a7 = v38;
    MEMORY[0x266784AD0](v35, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);

    (*(v18 + 8))(v40, v41);
  }

  else
  {

    (*(v11 + 8))(v16, v25);
    (*(v18 + 8))(v21, v41);
  }

  v36 = v42;
  swift_beginAccess();
  (*(*(a7 - 8) + 24))(v36, v43, a7);
  dispatch_group_leave(v44);
}

uint64_t sub_2662EC260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(char *), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v98 = a8;
  v89 = a7;
  v86 = a6;
  v85 = a5;
  v87 = a4;
  v82 = a3;
  v99 = a2;
  v92 = a1;
  v97 = a9;
  v95 = sub_2664DE438();
  v88 = *(v95 - 8);
  v11 = *(v88 + 64);
  v12 = MEMORY[0x28223BE20](v95);
  v83 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v94 = &v78 - v14;
  v15 = sub_2664DFE38();
  v90 = *(v15 - 8);
  v91 = v15;
  v16 = *(v90 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v96 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a11;
  v19 = *(a11 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v93 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v78 - v23;
  v25 = sub_2664E0018();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = (&v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_2664E00E8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v78 - v36;
  v38 = swift_projectBox();
  sub_2664E00C8();
  *v29 = v99;
  (*(v26 + 104))(v29, *MEMORY[0x277D85178], v25);
  MEMORY[0x266783140](v35, v29);
  (*(v26 + 8))(v29, v25);
  v39 = *(v31 + 8);
  v39(v35, v30);
  sub_2664E0738();
  v39(v37, v30);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    v40 = v100;
    (*(v19 + 16))(v24, v38, v100);
    v98(v24);
    return (*(v19 + 8))(v24, v40);
  }

  else
  {
    v81 = v38;
    v84 = v24;
    v92 = v19;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v42 = v91;
    v43 = __swift_project_value_buffer(v91, qword_280F914F0);
    swift_beginAccess();
    v44 = v90;
    (*(v90 + 16))(v96, v43, v42);
    v45 = v92;
    v46 = v92 + 16;
    v47 = *(v92 + 16);
    v48 = v100;
    v47(v93, v85, v100);
    v49 = v88;
    (*(v88 + 16))(v94, v86, v95);
    v50 = v87;

    v51 = v50;
    v52 = sub_2664DFE18();
    v53 = sub_2664E06D8();

    v54 = os_log_type_enabled(v52, v53);
    v80 = v46;
    v79 = v47;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v101[0] = v86;
      *v55 = 136446978;
      *(v55 + 4) = sub_2662A320C(v82, v51, v101);
      v56 = v45;
      *(v55 + 12) = 2050;
      *(v55 + 14) = v99;
      *(v55 + 22) = 2080;
      v57 = v93;
      v47(v84, v93, v48);
      v58 = sub_2664E0318();
      v60 = v59;
      v61 = v56;
      v62 = v95;
      v63 = v53;
      v64 = *(v61 + 8);
      v64(v57, v100);
      v65 = sub_2662A320C(v58, v60, v101);
      v48 = v100;

      *(v55 + 24) = v65;
      *(v55 + 32) = 2050;
      v66 = v83;
      sub_2664DE428();
      v67 = v94;
      sub_2664DE388();
      v69 = v68;
      v70 = *(v49 + 8);
      v70(v66, v62);
      v70(v67, v62);
      *(v55 + 34) = v69;
      _os_log_impl(&dword_26629C000, v52, v63, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v55, 0x2Au);
      v71 = v86;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v71, -1, -1);
      MEMORY[0x266784AD0](v55, -1, -1);

      (*(v90 + 8))(v96, v91);
    }

    else
    {

      (*(v49 + 8))(v94, v95);
      v64 = *(v45 + 8);
      v64(v93, v48);
      (*(v44 + 8))(v96, v42);
    }

    v72 = v98;
    v73 = v81;
    if (v89)
    {
      v74 = sub_2664DF638();
      v75 = *(v74 + 48);
      v76 = *(v74 + 52);
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v77 = v84;
    v79(v84, v73, v48);
    v72(v77);
    return (v64)(v77, v48);
  }
}

uint64_t sub_2662ECB18(char a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v8, v9, "Completions#timeout completion did AutoBugCapture for completion wait timeout with: %{BOOL}d", v10, 8u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

SiriAudioSupport::Completions::TimeoutMillis_optional __swiftcall Completions.TimeoutMillis.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 4999)
  {
    if (rawValue <= 8000)
    {
      switch(rawValue)
      {
        case 5000:
          *v1 = 5;
          return rawValue;
        case 5001:
          *v1 = 12;
          return rawValue;
        case 8000:
          *v1 = 6;
          return rawValue;
      }
    }

    else if (rawValue > 29999)
    {
      if (rawValue == 30000)
      {
        *v1 = 7;
        return rawValue;
      }

      if (rawValue == 60000)
      {
        *v1 = 8;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 8001)
      {
        *v1 = 4;
        return rawValue;
      }

      if (rawValue == 10000)
      {
        *v1 = 13;
        return rawValue;
      }
    }

LABEL_34:
    *v1 = 14;
    return rawValue;
  }

  if (rawValue <= 499)
  {
    switch(rawValue)
    {
      case 20:
        *v1 = 10;
        return rawValue;
      case 100:
        *v1 = 2;
        return rawValue;
      case 499:
        *v1 = 3;
        return rawValue;
    }

    goto LABEL_34;
  }

  if (rawValue > 999)
  {
    if (rawValue == 1000)
    {
      *v1 = 11;
      return rawValue;
    }

    if (rawValue == 1001)
    {
      *v1 = 9;
      return rawValue;
    }

    goto LABEL_34;
  }

  if (rawValue == 500)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 501)
  {
    goto LABEL_34;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t sub_2662ECE6C()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](qword_2664E4938[v1]);
  return sub_2664E0EB8();
}

uint64_t sub_2662ECEF4()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](qword_2664E4938[v1]);
  return sub_2664E0EB8();
}

uint64_t sub_2662ECF60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  v12 = (v5 + *(*v5 + 112));
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  v13 = (v5 + *(*v5 + 120));
  *v13 = a3;
  v13[1] = a4;
  v14 = (v5 + *(*v5 + 128));
  *v14 = a1;
  v14[1] = a2;
  v15 = qword_280F91468;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91470;
  v18[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v18[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v18[0] = v16;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v18);
  return v5;
}

uint64_t sub_2662ED0F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  v12 = (v5 + *(*v5 + 112));
  sub_2662DC04C(v25);
  v13 = v25[7];
  v12[6] = v25[6];
  v12[7] = v13;
  v14 = v25[5];
  v12[4] = v25[4];
  v12[5] = v14;
  v15 = v25[11];
  v12[10] = v25[10];
  v12[11] = v15;
  v16 = v25[9];
  v12[8] = v25[8];
  v12[9] = v16;
  v17 = v25[1];
  *v12 = v25[0];
  v12[1] = v17;
  v18 = v25[3];
  v12[2] = v25[2];
  v12[3] = v18;
  v19 = (v5 + *(*v5 + 120));
  *v19 = a3;
  v19[1] = a4;
  v20 = (v5 + *(*v5 + 128));
  *v20 = a1;
  v20[1] = a2;
  v21 = qword_280F91468;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91470;
  v24[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v24[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v24[0] = v22;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v24);
  return v5;
}

uint64_t sub_2662ED2BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 112)) = 0;
  v12 = (v5 + *(*v5 + 120));
  *v12 = a3;
  v12[1] = a4;
  v13 = (v5 + *(*v5 + 128));
  *v13 = a1;
  v13[1] = a2;
  v14 = qword_280F91468;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_280F91470;
  v17[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v17[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v17[0] = v15;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v17);
  return v5;
}

uint64_t sub_2662ED444(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 112)) = 2;
  v12 = (v5 + *(*v5 + 120));
  *v12 = a3;
  v12[1] = a4;
  v13 = (v5 + *(*v5 + 128));
  *v13 = a1;
  v13[1] = a2;
  v14 = qword_280F91468;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_280F91470;
  v17[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v17[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v17[0] = v15;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v17);
  return v5;
}

uint64_t sub_2662ED5E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_2662ED608()
{
  v1 = *(v0 + 16);
  v2 = *(sub_2664DE438() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2662EBCD0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v3, *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), v1);
}

uint64_t sub_2662ED6B8()
{
  v1 = v0[2];
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_2664DE438() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  return sub_2662EC260(v0[3], v0[4], v0[5], v0[6], v0 + v2, v0 + v5, *(v0 + v6), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)), v1);
}

unint64_t sub_2662ED7D0()
{
  result = qword_2800726A0;
  if (!qword_2800726A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800726A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Completions.TimeoutMillis(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Completions.TimeoutMillis(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2662ED984(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  v12 = (v5 + *(*v5 + 112));
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (v5 + *(*v5 + 120));
  *v13 = a3;
  v13[1] = a4;
  v14 = (v5 + *(*v5 + 128));
  *v14 = a1;
  v14[1] = a2;
  v15 = qword_280F91468;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91470;
  v18[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v18[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v18[0] = v16;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v18);
  return v5;
}

uint64_t sub_2662EDB14(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(sub_2664DE438() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1 + v5;
  v11 = *(v1 + v6);
  v12 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14[2] = v3;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v14[6] = swift_projectBox();
  v14[7] = a1;
  v14[8] = v12;
  return sub_266469DF8(sub_2662EDC08, v14);
}

uint64_t PlaybackAttributes.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v16 = *(v0 + 3);
  v17 = *(v0 + 4);
  v5 = *(v0 + 5);
  v18 = v0[48];
  v19 = v0[49];
  v20 = v0[50];

  sub_2664E0B28();
  MEMORY[0x2667833B0](0x3A656C6666756873, 0xE800000000000000);
  if (v1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v6, v7);

  MEMORY[0x2667833B0](0xD00000000000001ELL, 0x80000002664F45C0);
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v8, v9);

  MEMORY[0x2667833B0](0xD000000000000017, 0x80000002664F45E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  v10 = sub_2664E0318();
  MEMORY[0x2667833B0](v10);

  MEMORY[0x2667833B0](0xD000000000000011, 0x80000002664F4600);
  v11 = MEMORY[0x2667834D0](v16, MEMORY[0x277D837D0]);
  MEMORY[0x2667833B0](v11);

  MEMORY[0x2667833B0](0x6574756F52657320, 0xEB000000003A6449);
  v12 = sub_2664E0318();
  MEMORY[0x2667833B0](v12);

  MEMORY[0x2667833B0](0xD000000000000017, 0x80000002664F4620);
  sub_2664E0C28();
  MEMORY[0x2667833B0](0x4D74616570657220, 0xEC0000003A65646FLL);
  sub_2664E0C28();
  MEMORY[0x2667833B0](0xD00000000000001ALL, 0x80000002664F4640);
  if (v20)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v20)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v13, v14);

  return 0;
}

uint64_t PlaybackAttributes.requesterSharedUserID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PlaybackAttributes.seRouteId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PlaybackAttributes.mediaRemoteRepeatMode.getter()
{
  v1 = *(v0 + 49);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2662EE0AC()
{
  v1 = *(v0 + 49);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2662EE0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2662EE120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2662EE198(uint64_t a1, __int128 *a2, char *a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v119 = a5;
  v120 = a6;
  v108 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v106 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v109 = &v106 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v106 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v25 = &v106 - v24;
  v26 = a2[1];
  v128 = *a2;
  v129 = v26;
  *v130 = a2[2];
  *&v130[15] = *(a2 + 47);
  v118 = a3;
  if (a3)
  {
    v106 = v22;
    LOBYTE(v127[0]) = v130[16];
    v27 = sub_2664C7D24(v127);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v29 = v11[2];
    v112 = v11 + 2;
    v113 = v28;
    v111 = v29;
    v29(v25, v28, v10);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v120;
    v116 = v7;
    v117 = v11;
    v110 = v27;
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v107 = v10;
      v36 = v35;
      *&v127[0] = v35;
      *v34 = 136315138;
      LODWORD(v122) = v27;
      v37 = sub_2664E0D48();
      v39 = sub_2662A320C(v37, v38, v127);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_26629C000, v30, v31, "PlaybackQueueLocationProvider#handleUpNext Handling insertion position %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v40 = v36;
      v10 = v107;
      MEMORY[0x266784AD0](v40, -1, -1);
      v41 = v34;
      v7 = v116;
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v114 = v11[1];
    v114(v25, v10);
    v42 = v118;
    v44 = *(&v129 + 1);
    v43 = *v130;
    v45 = *&v130[8];
    sub_2662F0CC0(v7, v127);
    v46 = swift_allocObject();
    v47 = v119;
    *(v46 + 16) = v119;
    *(v46 + 24) = v33;
    v48 = v127[3];
    *(v46 + 64) = v127[2];
    *(v46 + 80) = v48;
    *(v46 + 96) = v127[4];
    v49 = v127[1];
    *(v46 + 32) = v127[0];
    *(v46 + 48) = v49;
    *(v46 + 112) = v42;
    v50 = v110;
    *(v46 + 120) = v110;
    v51 = v128;
    v52 = v129;
    v53 = *v130;
    *(v46 + 175) = *&v130[15];
    *(v46 + 144) = v52;
    *(v46 + 160) = v53;
    *(v46 + 128) = v51;
    if (*(v44 + 16))
    {
      v54 = v115;
      v55 = v10;
      v111(v115, v113, v10);
      sub_2662D2A64(&v128, v127);

      v56 = sub_2664DFE18();
      v57 = sub_2664E06C8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_26629C000, v56, v57, "PlaybackQueueLocationProvider#handleUpNext Executing logic for hashedRouteUIDs (WHA)", v58, 2u);
        MEMORY[0x266784AD0](v58, -1, -1);
      }

      v114(v54, v55);
      v59 = __swift_project_boxed_opaque_existential_1((v116 + 40), *(v116 + 64));
      v60 = swift_allocObject();
      *(v60 + 16) = sub_2662F1BD4;
      *(v60 + 24) = v46;
      v61 = *v59;

      sub_2664A4F2C(v44, sub_2662F1BDC, v60);
LABEL_20:
    }

    v120 = v43;
    if (v45)
    {
      v84 = v109;
      v111(v109, v113, v10);
      sub_2662D2A64(&v128, v127);

      v85 = sub_2664DFE18();
      v86 = sub_2664E06C8();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = v10;
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_26629C000, v85, v86, "PlaybackQueueLocationProvider#handleUpNext Executing logic for seRouteId", v88, 2u);
        v89 = v88;
        v10 = v87;
        MEMORY[0x266784AD0](v89, -1, -1);
      }

      v114(v84, v10);
      v90 = __swift_project_boxed_opaque_existential_1((v116 + 40), *(v116 + 64));
      v91 = swift_allocObject();
      *(v91 + 16) = sub_2662F1BD4;
      *(v91 + 24) = v46;
      v92 = *v90;

      sub_2664A5784(v120, v45, sub_2662F1BDC, v91);

      goto LABEL_20;
    }

    sub_2662F0CC0(v116, v127);
    v94 = v10;
    v111(v106, v113, v10);

    sub_2662D2A64(&v128, &v122);
    sub_2662D2A64(&v128, &v122);

    v95 = v108;
    v96 = sub_2664DFE18();
    v97 = v33;
    v98 = sub_2664E06E8();
    if (os_log_type_enabled(v96, v98))
    {
      v99 = v50;
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_26629C000, v96, v98, "MediaPlaybackProvider#companionOriginIfAvailable On non-watch. Returning nil", v100, 2u);
      v101 = v100;
      v50 = v99;
      MEMORY[0x266784AD0](v101, -1, -1);
    }

    v114(v106, v94);
    sub_2662F0CC0(v127, &v122);
    v102 = swift_allocObject();
    v103 = v125;
    *(v102 + 48) = v124;
    *(v102 + 64) = v103;
    *(v102 + 80) = v126;
    v104 = v123;
    *(v102 + 16) = v122;
    *(v102 + 32) = v104;
    *(v102 + 96) = v118;
    *(v102 + 104) = v50;
    v105 = v129;
    *(v102 + 112) = v128;
    *(v102 + 128) = v105;
    *(v102 + 144) = *v130;
    *(v102 + 159) = *&v130[15];
    *(v102 + 168) = v47;
    *(v102 + 176) = v97;
    sub_2662D2A64(&v128, &v121);

    sub_2664AD07C(v95, sub_2662F1BD8, v102);

    sub_2662F0D28(v127);

    sub_2662D2B88(&v128);
  }

  else
  {
    v118 = v23;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v116 = v11[2];
    (v116)(v16, v62, v10);

    v63 = sub_2664DFE18();
    v64 = sub_2664E06D8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v117 = v11;
      v66 = v65;
      v67 = swift_slowAlloc();
      v115 = v62;
      v68 = v67;
      *&v122 = v67;
      *v66 = 136315138;

      v69 = sub_2664C8950();
      v107 = v10;
      v71 = v70;

      v72 = sub_2662A320C(v69, v71, &v122);
      v10 = v107;

      *(v66 + 4) = v72;
      _os_log_impl(&dword_26629C000, v63, v64, "PlaybackQueueLocationProvider#handleUpNext Nil playbackQueue for item: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      v73 = v68;
      v62 = v115;
      MEMORY[0x266784AD0](v73, -1, -1);
      v74 = v66;
      v11 = v117;
      MEMORY[0x266784AD0](v74, -1, -1);
    }

    v75 = v11[1];
    v75(v16, v10);
    v76 = v118;
    (v116)(v118, v62, v10);
    v77 = sub_2664DFE18();
    v78 = sub_2664E06B8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v10;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v122 = v81;
      *v80 = 134218498;
      *(v80 + 4) = 13;
      *(v80 + 12) = 2048;
      *(v80 + 14) = 7;
      *(v80 + 22) = 2080;
      *(v80 + 24) = sub_2662A320C(0x65756575516C694ELL, 0xEF6D657449726F46, &v122);
      _os_log_impl(&dword_26629C000, v77, v78, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v80, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x266784AD0](v81, -1, -1);
      MEMORY[0x266784AD0](v80, -1, -1);

      v82 = v76;
      v83 = v79;
    }

    else
    {

      v82 = v76;
      v83 = v10;
    }

    v75(v82, v83);
    v122 = xmmword_2664E4AC0;
    *&v123 = 0xEF6D657449726F46;
    v119(&v122);
  }
}

void sub_2662EECF8(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v83 = a7;
  v84 = a5;
  LODWORD(v85) = a6;
  v82 = a4;
  v87 = a3;
  v89 = sub_2664DFE38();
  v9 = *(v89 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v89);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v81 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v81 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v81 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v81 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v86 = (&v81 - v27);
  MEMORY[0x28223BE20](v26);
  v29 = &v81 - v28;
  v30 = *(a1 + 16);
  v88 = a2;
  if (v30 < 2)
  {
    if (v30)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v48 = v89;
      v49 = __swift_project_value_buffer(v89, qword_280F914F0);
      swift_beginAccess();
      v86 = v9[2];
      v86(v19, v49, v48);
      v50 = sub_2664DFE18();
      v51 = sub_2664E06D8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_26629C000, v50, v51, "PlaybackQueueLocationProvider#handleUpNext Correct number of endpoints", v52, 2u);
        MEMORY[0x266784AD0](v52, -1, -1);
      }

      v53 = v9[1];
      v54 = v89;
      v53(v19, v89);
      sub_2662A01E8(a1 + 32, &v91);
      sub_2662F0DB0();
      if (swift_dynamicCast())
      {
        v55 = v90;
        v56 = *__swift_project_boxed_opaque_existential_1((v82 + 40), *(v82 + 64));
        sub_2664A2C9C(v55, v84, v85, *(v83 + 8), *(v83 + 16), *(v83 + 8), *(v83 + 16), v88, v87);

        return;
      }

      v86(v16, v49, v54);
      v71 = sub_2664DFE18();
      v72 = sub_2664E06D8();
      v73 = v54;
      if (os_log_type_enabled(v71, v72))
      {
        v74 = v49;
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_26629C000, v71, v72, "PlaybackQueueLocationProvider#handleUpNext Guarenteed single endpoint not available", v75, 2u);
        v76 = v75;
        v49 = v74;
        MEMORY[0x266784AD0](v76, -1, -1);
      }

      v53(v16, v73);
      v86(v13, v49, v73);
      v77 = sub_2664DFE18();
      v78 = sub_2664E06B8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v91 = v80;
        *v79 = 134218498;
        *(v79 + 4) = 13;
        *(v79 + 12) = 2048;
        *(v79 + 14) = 7;
        *(v79 + 22) = 2080;
        *(v79 + 24) = sub_2662A320C(0xD000000000000024, 0x80000002664F4680, &v91);
        _os_log_impl(&dword_26629C000, v77, v78, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v79, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x266784AD0](v80, -1, -1);
        MEMORY[0x266784AD0](v79, -1, -1);
      }

      v53(v13, v73);
      v91 = xmmword_2664E4AD0;
      v92 = 0x80000002664F4680;
      v88(&v91);
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v57 = v89;
      v58 = __swift_project_value_buffer(v89, qword_280F914F0);
      swift_beginAccess();
      v59 = v9;
      v60 = v9[2];
      v60(v25, v58, v57);
      v61 = sub_2664DFE18();
      v62 = sub_2664E06D8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_26629C000, v61, v62, "PlaybackQueueLocationProvider#handleUpNext No endpoints found", v63, 2u);
        v64 = v63;
        v59 = v9;
        MEMORY[0x266784AD0](v64, -1, -1);
      }

      v65 = v59[1];
      v66 = v89;
      v65(v25, v89);
      v60(v22, v58, v66);
      v67 = sub_2664DFE18();
      v68 = sub_2664E06B8();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v93 = v70;
        *v69 = 134218498;
        *(v69 + 4) = 13;
        *(v69 + 12) = 2048;
        *(v69 + 14) = 7;
        *(v69 + 22) = 2080;
        *(v69 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F46B0, &v93);
        _os_log_impl(&dword_26629C000, v67, v68, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v69, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x266784AD0](v70, -1, -1);
        MEMORY[0x266784AD0](v69, -1, -1);
      }

      v65(v22, v66);
      v93 = xmmword_2664E4AE0;
      v94 = 0x80000002664F46B0;
      v88(&v93);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = v89;
    v32 = __swift_project_value_buffer(v89, qword_280F914F0);
    swift_beginAccess();
    v85 = v9[2];
    v85(v29, v32, v31);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v84 = v32;
      v36 = v35;
      v37 = swift_slowAlloc();
      *&v93 = v37;
      *v36 = 136315138;
      v90 = v30;
      v38 = sub_2664E0D48();
      v40 = sub_2662A320C(v38, v39, &v93);

      *(v36 + 4) = v40;
      v31 = v89;
      _os_log_impl(&dword_26629C000, v33, v34, "PlaybackQueueLocationProvider#handleUpNext Too many endpoints, count: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v37, -1, -1);
      v41 = v36;
      v32 = v84;
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v42 = v9[1];
    v42(v29, v31);
    v43 = v86;
    v85(v86, v32, v31);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06B8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v93 = v47;
      *v46 = 134218498;
      *(v46 + 4) = 13;
      *(v46 + 12) = 2048;
      *(v46 + 14) = 7;
      *(v46 + 22) = 2080;
      *(v46 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F46D0, &v93);
      _os_log_impl(&dword_26629C000, v44, v45, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v46, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x266784AD0](v47, -1, -1);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    v42(v43, v31);
    v93 = xmmword_2664E4AE0;
    v94 = 0x80000002664F46D0;
    v88(&v93);
  }
}

void sub_2662EF750(void (*a1)(_BYTE *, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a3;
  v90 = a6;
  v91 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v88 = &v82[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v82[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v82[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v82[-v24];
  if (a2)
  {
    v86 = a4;
    type metadata accessor for CFError(0);
    sub_2662F0D58();
    v26 = swift_allocError();
    *v27 = a2;
    v85 = a2;
    v28 = sub_2664DE198();

    v29 = [v28 code];
    v87 = a7;
    if (v29 == 33)
    {
      v83 = a5;
      v84 = v14;
      v30 = a8;
      v31 = [v28 domain];
      v32 = sub_2664E02C8();
      if (!*MEMORY[0x277D27AE0])
      {
        __break(1u);
        return;
      }

      v34 = v32;
      v35 = v33;

      if (v34 == sub_2664E02C8() && v35 == v36)
      {

        a8 = v30;
        v14 = v84;
        v37 = v87;
        v38 = v83;
LABEL_14:
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v55 = __swift_project_value_buffer(v13, qword_280F914F0);
        swift_beginAccess();
        (*(v14 + 16))(v23, v55, v13);
        v56 = sub_2664DFE18();
        v57 = sub_2664E06C8();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_26629C000, v56, v57, "PlaybackQueueLocationProvider#handleUpNext group leader legacy", v58, 2u);
          MEMORY[0x266784AD0](v58, -1, -1);
        }

        (*(v14 + 8))(v23, v13);
        v59 = *__swift_project_boxed_opaque_existential_1((v89 + 40), *(v89 + 64));
        sub_2664A2C9C(v91, v86, v38, *(v90 + 8), *(v90 + 16), *(v90 + 8), *(v90 + 16), v37, a8);

        return;
      }

      v54 = sub_2664E0D88();

      a8 = v30;
      v14 = v84;
      v37 = v87;
      v38 = v83;
      if (v54)
      {
        goto LABEL_14;
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v91 = *(v14 + 16);
    v91(v20, v60, v13);
    v61 = v14;
    v62 = v85;
    v63 = sub_2664DFE18();
    v64 = sub_2664E06D8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v84 = v61;
      v66 = v65;
      v67 = swift_slowAlloc();
      v90 = a8;
      v68 = v67;
      *&v92 = v67;
      *v66 = 136315138;
      v94 = a2;
      v69 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726B8, &qword_2664E4B08);
      v70 = sub_2664E0318();
      v72 = sub_2662A320C(v70, v71, &v92);

      *(v66 + 4) = v72;
      _os_log_impl(&dword_26629C000, v63, v64, "PlaybackQueueLocationProvider#handleUpNext group leader endpoint not found: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x266784AD0](v68, -1, -1);
      MEMORY[0x266784AD0](v66, -1, -1);

      v73 = v84;
    }

    else
    {

      v73 = v61;
    }

    v74 = *(v73 + 8);
    v74(v20, v13);
    v75 = v88;
    v91(v88, v60, v13);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06B8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v75;
      v80 = swift_slowAlloc();
      *&v92 = v80;
      *v78 = 134218498;
      *(v78 + 4) = 13;
      *(v78 + 12) = 2048;
      *(v78 + 14) = 7;
      *(v78 + 22) = 2080;
      *(v78 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F4660, &v92);
      _os_log_impl(&dword_26629C000, v76, v77, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v78, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x266784AD0](v80, -1, -1);
      MEMORY[0x266784AD0](v78, -1, -1);

      v81 = v79;
    }

    else
    {

      v81 = v75;
    }

    v74(v81, v13);
    v92 = xmmword_2664E4AF0;
    v93 = 0x80000002664F4660;
    v87(&v92);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v25, v39, v13);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06C8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v86 = a4;
      v44 = v43;
      *&v92 = v43;
      *v42 = 136315138;
      v94 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
      v45 = sub_2664E0318();
      v88 = v13;
      v47 = sub_2662A320C(v45, v46, &v92);
      v83 = a5;
      v48 = v14;
      v49 = a8;
      v50 = v47;

      *(v42 + 4) = v50;
      a8 = v49;
      _os_log_impl(&dword_26629C000, v40, v41, "PlaybackQueueLocationProvider#handleUpNext group leader endpoint %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v51 = v44;
      a4 = v86;
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);

      v52 = v91;
      (*(v48 + 8))(v25, v88);
      a5 = v83;
    }

    else
    {

      (*(v14 + 8))(v25, v13);
      v52 = v91;
    }

    v53 = *__swift_project_boxed_opaque_existential_1((v89 + 40), *(v89 + 64));
    sub_2664A2C9C(v52, a4, a5, *(v90 + 8), *(v90 + 16), *(v90 + 8), *(v90 + 16), a7, a8);
  }
}

uint64_t sub_2662F0024(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t *), uint64_t a7)
{
  v124 = a5;
  v116 = a4;
  v120 = a1;
  v11 = sub_2664DFE38();
  v125 = *(v11 - 8);
  v12 = *(v125 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v117 = &v114 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v118 = (&v114 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v121 = &v114 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v114 - v23;
  MEMORY[0x28223BE20](v22);
  v122 = (&v114 - v25);
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2662F0CB0;
  *(v27 + 24) = v26;
  v126 = v27;
  v28 = a2[1];
  v134 = *a2;
  v135 = v28;
  *v136 = a2[2];
  *&v136[15] = *(a2 + 47);
  v123 = v26;
  if (!a3)
  {
    v121 = v15;
    v122 = a6;
    v48 = qword_280F914E8;
    v124 = a7;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v50 = v125;
    v51 = v24;
    v118 = *(v125 + 16);
    v119 = v49;
    v118(v24, v49, v11);

    v52 = sub_2664DFE18();
    v53 = sub_2664E06D8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v115 = v11;
      v55 = v54;
      v56 = swift_slowAlloc();
      *&v129 = v56;
      *v55 = 136315138;

      v57 = sub_2664C8950();
      v59 = v58;

      v60 = sub_2662A320C(v57, v59, &v129);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_26629C000, v52, v53, "PlaybackQueueLocationProvider#handleUpNext Nil playbackQueue for item: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266784AD0](v56, -1, -1);
      v61 = v55;
      v11 = v115;
      MEMORY[0x266784AD0](v61, -1, -1);

      v62 = v125;
    }

    else
    {

      v62 = v50;
    }

    v91 = *(v62 + 8);
    v91(v51, v11);
    v92 = v121;
    v118(v121, v119, v11);
    v93 = sub_2664DFE18();
    v94 = v11;
    v95 = sub_2664E06B8();
    if (os_log_type_enabled(v93, v95))
    {
      v96 = v92;
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v129 = v98;
      *v97 = 134218498;
      *(v97 + 4) = 13;
      *(v97 + 12) = 2048;
      *(v97 + 14) = 7;
      *(v97 + 22) = 2080;
      *(v97 + 24) = sub_2662A320C(0x65756575516C694ELL, 0xEF6D657449726F46, &v129);
      _os_log_impl(&dword_26629C000, v93, v95, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v97, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      MEMORY[0x266784AD0](v98, -1, -1);
      MEMORY[0x266784AD0](v97, -1, -1);

      v99 = v96;
    }

    else
    {

      v99 = v92;
    }

    v91(v99, v94);
    v100 = v122;
    v129 = xmmword_2664E4AC0;
    *&v130 = 0xEF6D657449726F46;
    BYTE8(v130) = 1;

    sub_2663C6558(&v129, v100);
    sub_2662D2F30(v129, *(&v129 + 1), v130, SBYTE8(v130));
  }

  v120 = a3;
  LOBYTE(v129) = v136[16];

  v29 = sub_2664C7D24(&v129);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v31 = v125;
  v32 = *(v125 + 16);
  v33 = v122;
  v119 = v30;
  v32(v122, v30, v11);
  v34 = sub_2664DFE18();
  v35 = sub_2664E06C8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v115 = v11;
    v37 = v36;
    v38 = swift_slowAlloc();
    v114 = v32;
    v39 = v38;
    *&v129 = v38;
    *v37 = 136315138;
    LODWORD(v128[0]) = v29;
    v40 = sub_2664E0D48();
    v42 = v29;
    v43 = v31;
    v44 = sub_2662A320C(v40, v41, &v129);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_26629C000, v34, v35, "PlaybackQueueLocationProvider#handleUpNext Handling insertion position %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v45 = v39;
    v32 = v114;
    MEMORY[0x266784AD0](v45, -1, -1);
    v46 = v37;
    v11 = v115;
    MEMORY[0x266784AD0](v46, -1, -1);

    v47 = v122;
    v122 = *(v43 + 8);
    (v122)(v47, v11);
  }

  else
  {

    v122 = *(v31 + 8);
    (v122)(v33, v11);
    v42 = v29;
  }

  v64 = *(&v135 + 1);
  v63 = *v136;
  v65 = *&v136[8];
  sub_2662F0CC0(v124, &v129);
  v66 = swift_allocObject();
  v67 = v126;
  *(v66 + 16) = sub_2662F0CB8;
  *(v66 + 24) = v67;
  v68 = v132;
  *(v66 + 64) = v131;
  *(v66 + 80) = v68;
  *(v66 + 96) = v133;
  v69 = v130;
  *(v66 + 32) = v129;
  *(v66 + 48) = v69;
  *(v66 + 112) = v120;
  *(v66 + 120) = v42;
  v70 = v134;
  v71 = v135;
  v72 = *v136;
  *(v66 + 175) = *&v136[15];
  *(v66 + 144) = v71;
  *(v66 + 160) = v72;
  *(v66 + 128) = v70;
  if (*(v64 + 16))
  {
    v73 = v121;
    v32(v121, v119, v11);
    sub_2662D2A64(&v134, &v129);

    v74 = sub_2664DFE18();
    v75 = sub_2664E06C8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = v11;
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_26629C000, v74, v75, "PlaybackQueueLocationProvider#handleUpNext Executing logic for hashedRouteUIDs (WHA)", v77, 2u);
      v78 = v77;
      v11 = v76;
      MEMORY[0x266784AD0](v78, -1, -1);
    }

    (v122)(v73, v11);
    v79 = __swift_project_boxed_opaque_existential_1((v124 + 40), *(v124 + 64));
    v80 = swift_allocObject();
    *(v80 + 16) = sub_2662F0CF8;
    *(v80 + 24) = v66;
    v81 = *v79;

    sub_2664A4F2C(v64, sub_2662F0CFC, v80);

LABEL_19:
  }

  LODWORD(v121) = v42;
  if (v65)
  {
    v121 = v63;
    v82 = v118;
    v32(v118, v119, v11);
    sub_2662D2A64(&v134, &v129);

    v83 = sub_2664DFE18();
    v84 = sub_2664E06C8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = v11;
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_26629C000, v83, v84, "PlaybackQueueLocationProvider#handleUpNext Executing logic for seRouteId", v86, 2u);
      v87 = v86;
      v11 = v85;
      MEMORY[0x266784AD0](v87, -1, -1);
    }

    (v122)(v82, v11);
    v88 = __swift_project_boxed_opaque_existential_1((v124 + 40), *(v124 + 64));
    v89 = swift_allocObject();
    *(v89 + 16) = sub_2662F0CF8;
    *(v89 + 24) = v66;
    v90 = *v88;

    sub_2664A5784(v121, v65, sub_2662F1BDC, v89);

    goto LABEL_19;
  }

  sub_2662F0CC0(v124, &v129);
  v102 = v117;
  v32(v117, v119, v11);
  sub_2662D2A64(&v134, v128);

  sub_2662D2A64(&v134, v128);

  v103 = v116;
  v104 = sub_2664DFE18();
  v105 = sub_2664E06E8();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = v11;
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_26629C000, v104, v105, "MediaPlaybackProvider#companionOriginIfAvailable On non-watch. Returning nil", v107, 2u);
    v108 = v107;
    v11 = v106;
    MEMORY[0x266784AD0](v108, -1, -1);
  }

  (v122)(v102, v11);
  sub_2662F0CC0(&v129, v128);
  v109 = swift_allocObject();
  v110 = v128[3];
  *(v109 + 48) = v128[2];
  *(v109 + 64) = v110;
  *(v109 + 80) = v128[4];
  v111 = v128[1];
  *(v109 + 16) = v128[0];
  *(v109 + 32) = v111;
  *(v109 + 96) = v120;
  *(v109 + 104) = v121;
  v112 = v135;
  *(v109 + 112) = v134;
  *(v109 + 128) = v112;
  *(v109 + 144) = *v136;
  *(v109 + 159) = *&v136[15];
  v113 = v126;
  *(v109 + 168) = sub_2662F0CB8;
  *(v109 + 176) = v113;
  sub_2662D2A64(&v134, &v127);

  sub_2664AD07C(v103, sub_2662F0D24, v109);

  sub_2662F0D28(&v129);

  sub_2662D2B88(&v134);
}

uint64_t sub_2662F0CFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2662F0D58()
{
  result = qword_2800726B0;
  if (!qword_2800726B0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800726B0);
  }

  return result;
}

unint64_t sub_2662F0DB0()
{
  result = qword_2800726C0;
  if (!qword_2800726C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800726C0);
  }

  return result;
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v2 = v0[18];

  v3 = v0[19];

  v4 = v0[21];

  return MEMORY[0x2821FE8E8](v0, 179, 7);
}

uint64_t objectdestroy_11Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[16];

  v2 = v0[17];

  v3 = v0[19];

  v4 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2662F0EBC(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v112 = a5;
  v102 = a4;
  v109 = a1;
  v11 = sub_2664DFE38();
  v113 = *(v11 - 8);
  v12 = *(v113 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v103 = &v101 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v108 = &v101 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v110 = &v101 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v101 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v101 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a6;
  *(v27 + 24) = a7;
  v111 = v27;
  v28 = a2[1];
  v121 = *a2;
  v122 = v28;
  *v123 = a2[2];
  *&v123[15] = *(a2 + 47);
  if (a3)
  {
    v109 = a3;
    LOBYTE(v116) = v123[16];

    v29 = sub_2664C7D24(&v116);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v31 = v113;
    v32 = *(v113 + 16);
    v105 = (v113 + 16);
    v106 = v30;
    v104 = v32;
    v32(v26, v30, v11);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v116 = v107;
      *v35 = 136315138;
      LODWORD(v115[0]) = v29;
      v36 = sub_2664E0D48();
      v38 = v31;
      v39 = sub_2662A320C(v36, v37, &v116);

      *(v35 + 4) = v39;
      v40 = v111;
      _os_log_impl(&dword_26629C000, v33, v34, "PlaybackQueueLocationProvider#handleUpNext Handling insertion position %s", v35, 0xCu);
      v41 = v107;
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);

      v42 = v11;
      v107 = *(v38 + 8);
      (v107)(v26, v11);
    }

    else
    {

      v42 = v11;
      v107 = *(v31 + 8);
      (v107)(v26, v11);
      v40 = v111;
    }

    v66 = *(&v122 + 1);
    v67 = *v123;
    v68 = *&v123[8];
    sub_2662F0CC0(v112, &v116);
    v69 = swift_allocObject();
    *(v69 + 16) = sub_2662F0CB8;
    *(v69 + 24) = v40;
    v70 = v119;
    *(v69 + 64) = v118;
    *(v69 + 80) = v70;
    *(v69 + 96) = v120;
    v71 = v117;
    *(v69 + 32) = v116;
    *(v69 + 48) = v71;
    *(v69 + 112) = v109;
    *(v69 + 120) = v29;
    v72 = v121;
    v73 = v122;
    v74 = *v123;
    *(v69 + 175) = *&v123[15];
    *(v69 + 144) = v73;
    *(v69 + 160) = v74;
    *(v69 + 128) = v72;
    v111 = v66;
    if (*(v66 + 16))
    {
      v104(v110, v106, v42);
      sub_2662D2A64(&v121, &v116);

      v75 = sub_2664DFE18();
      v76 = sub_2664E06C8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_26629C000, v75, v76, "PlaybackQueueLocationProvider#handleUpNext Executing logic for hashedRouteUIDs (WHA)", v77, 2u);
        MEMORY[0x266784AD0](v77, -1, -1);
      }

      (v107)(v110, v42);
      v78 = __swift_project_boxed_opaque_existential_1((v112 + 40), *(v112 + 64));
      v79 = swift_allocObject();
      *(v79 + 16) = sub_2662F1BD4;
      *(v79 + 24) = v69;
      v80 = *v78;

      sub_2664A4F2C(v111, sub_2662F1BDC, v79);

LABEL_21:
    }

    if (v68)
    {
      v104(v108, v106, v42);
      sub_2662D2A64(&v121, &v116);

      v81 = sub_2664DFE18();
      v82 = sub_2664E06C8();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_26629C000, v81, v82, "PlaybackQueueLocationProvider#handleUpNext Executing logic for seRouteId", v83, 2u);
        MEMORY[0x266784AD0](v83, -1, -1);
      }

      (v107)(v108, v42);
      v84 = __swift_project_boxed_opaque_existential_1((v112 + 40), *(v112 + 64));
      v85 = swift_allocObject();
      *(v85 + 16) = sub_2662F1BD4;
      *(v85 + 24) = v69;
      v86 = *v84;

      sub_2664A5784(v67, v68, sub_2662F1BDC, v85);

      goto LABEL_21;
    }

    v89 = v107;
    LODWORD(v111) = v29;
    sub_2662F0CC0(v112, &v116);
    v104(v103, v106, v42);
    sub_2662D2A64(&v121, v115);

    sub_2662D2A64(&v121, v115);

    v90 = v102;
    v91 = v40;
    v92 = sub_2664DFE18();
    v93 = sub_2664E06E8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = v91;
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_26629C000, v92, v93, "MediaPlaybackProvider#companionOriginIfAvailable On non-watch. Returning nil", v95, 2u);
      v96 = v95;
      v91 = v94;
      MEMORY[0x266784AD0](v96, -1, -1);
    }

    (v89)(v103, v42);
    sub_2662F0CC0(&v116, v115);
    v97 = swift_allocObject();
    v98 = v115[3];
    *(v97 + 48) = v115[2];
    *(v97 + 64) = v98;
    *(v97 + 80) = v115[4];
    v99 = v115[1];
    *(v97 + 16) = v115[0];
    *(v97 + 32) = v99;
    *(v97 + 96) = v109;
    *(v97 + 104) = v111;
    v100 = v122;
    *(v97 + 112) = v121;
    *(v97 + 128) = v100;
    *(v97 + 144) = *v123;
    *(v97 + 159) = *&v123[15];
    *(v97 + 168) = sub_2662F0CB8;
    *(v97 + 176) = v91;
    sub_2662D2A64(&v121, &v114);

    sub_2664AD07C(v90, sub_2662F1BD8, v97);

    sub_2662F0D28(&v116);

    sub_2662D2B88(&v121);
  }

  else
  {
    v110 = v15;
    v108 = a6;
    v43 = qword_280F914E8;
    v112 = a7;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v45 = v11;
    v46 = v113;
    v107 = *(v113 + 16);
    (v107)(v24, v44, v11);

    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = v11;
      *&v116 = v105;
      *v49 = 136315138;

      v50 = v44;
      v51 = sub_2664C8950();
      v53 = v52;

      v54 = v51;
      v44 = v50;
      v55 = sub_2662A320C(v54, v53, &v116);
      v46 = v113;

      *(v49 + 4) = v55;
      _os_log_impl(&dword_26629C000, v47, v48, "PlaybackQueueLocationProvider#handleUpNext Nil playbackQueue for item: %s", v49, 0xCu);
      v56 = v105;
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      v45 = v106;
      MEMORY[0x266784AD0](v56, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v57 = *(v46 + 8);
    v57(v24, v45);
    v58 = v110;
    (v107)(v110, v44, v45);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06B8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v45;
      v63 = swift_slowAlloc();
      *&v116 = v63;
      *v61 = 134218498;
      *(v61 + 4) = 13;
      *(v61 + 12) = 2048;
      *(v61 + 14) = 7;
      *(v61 + 22) = 2080;
      *(v61 + 24) = sub_2662A320C(0x65756575516C694ELL, 0xEF6D657449726F46, &v116);
      _os_log_impl(&dword_26629C000, v59, v60, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v61, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x266784AD0](v63, -1, -1);
      MEMORY[0x266784AD0](v61, -1, -1);

      v64 = v58;
      v65 = v62;
    }

    else
    {

      v64 = v58;
      v65 = v45;
    }

    v57(v64, v65);
    v88 = v108;
    v116 = xmmword_2664E4AC0;
    *&v117 = 0xEF6D657449726F46;
    BYTE8(v117) = 1;

    v88(&v116);
    sub_2662D2F30(v116, *(&v116 + 1), v117, SBYTE8(v117));
  }
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

uint64_t sub_2662F1B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2662F1B70(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

SiriAudioSupport::BuildVersion_optional __swiftcall BuildVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

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

uint64_t BuildVersion.rawValue.getter()
{
  if (*v0)
  {
    return 4534578;
  }

  else
  {
    return 4272434;
  }
}

uint64_t sub_2662F1C78(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 4534578;
  }

  else
  {
    v2 = 4272434;
  }

  if (*a2)
  {
    v3 = 4534578;
  }

  else
  {
    v3 = 4272434;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2664E0D88();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2662F1CEC()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2662F1D50()
{
  *v0;
  sub_2664E0368();
}

uint64_t sub_2662F1D98()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2662F1DF8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2664E0CB8();

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

void sub_2662F1E58(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 4534578;
  }

  else
  {
    v2 = 4272434;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_2662F1E7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726F0, &qword_2664E4BE0);
  __swift_allocate_value_buffer(v0, qword_2800726C8);
  __swift_project_value_buffer(v0, qword_2800726C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280072700, qword_2664E4D40);
  return sub_2664DF7E8();
}

uint64_t CompanionProductPrefixParser.deviceType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CompanionProductPrefixParser.build.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CompanionProductPrefixParser.__allocating_init(for:)()
{
  v0 = swift_allocObject();
  CompanionProductPrefixParser.init(for:)();
  return v0;
}

uint64_t CompanionProductPrefixParser.init(for:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726E0, &qword_2664E4BD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726E8, &qword_2664E4BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  if (qword_280071AA0 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726F0, &qword_2664E4BE0);
  __swift_project_value_buffer(v10, qword_2800726C8);
  sub_2664DF7F8();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2662F226C(v4);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    swift_getKeyPath();
    sub_2664DF808();

    v12 = MEMORY[0x266783360](v19, v20, v21, v22);
    v14 = v13;

    *(v0 + 16) = v12;
    *(v0 + 24) = v14;
    swift_getKeyPath();
    sub_2664DF808();

    v15 = MEMORY[0x266783360](v19, v20, v21, v22);
    v17 = v16;

    (*(v6 + 8))(v9, v5);
    *(v0 + 32) = v15;
    *(v0 + 40) = v17;
  }

  return v0;
}

uint64_t sub_2662F226C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726E0, &qword_2664E4BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662F22D4(_BYTE *a1)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40))
  {
    v8 = *(v1 + 32);
    if (*a1)
    {
      v9 = 4534578;
    }

    else
    {
      v9 = 4272434;
    }

    v10 = sub_2664E0378();

    v11 = sub_2662F26E0(v10);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v35 = v15;
    v36 = v13;
    v18 = sub_2662F277C(v11, v13, v15, v17, v9, 0xE300000000000000);

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v7, v19, v3);

    v20 = sub_2664DFE18();
    v21 = sub_2664E06B8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      HIDWORD(v33) = v18;
      v23 = v22;
      v24 = swift_slowAlloc();
      v34 = v4;
      v25 = v24;
      v37 = v24;
      *v23 = 136315650;
      v26 = sub_2662A320C(v9, 0xE300000000000000, &v37);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = MEMORY[0x266783360](v11, v36, v35, v17);
      v29 = v28;

      v30 = sub_2662A320C(v27, v29, &v37);

      *(v23 + 14) = v30;
      *(v23 + 22) = 1024;
      v31 = BYTE4(v33) ^ 1;
      *(v23 + 24) = (BYTE4(v33) ^ 1) & 1;
      _os_log_impl(&dword_26629C000, v20, v21, "CompanionProductPrefixParser#isBuildEqualOrGreaterThan Build %s greater or equal to %s = %{BOOL}d", v23, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v25, -1, -1);
      MEMORY[0x266784AD0](v23, -1, -1);

      (*(v34 + 8))(v7, v3);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
      v31 = v18 ^ 1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_2662F2640(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t CompanionProductPrefixParser.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t CompanionProductPrefixParser.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_2662F26E0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2664E0388();

    return sub_2664E0428();
  }

  return result;
}

uint64_t sub_2662F277C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 0;
  }

  else
  {
    return sub_2664E0D38() & 1;
  }
}

unint64_t sub_2662F27FC()
{
  result = qword_2800726F8;
  if (!qword_2800726F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800726F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInstalledAs(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppInstalledAs(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2662F2A78(uint64_t a1)
{
  sub_2662F37D0();
  v2 = [swift_getObjCClassFromMetadata() identityKind];
  v3 = objc_allocWithZone(MEMORY[0x277CD5DA0]);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2662F381C;
  *(v4 + 24) = a1;
  v8[4] = sub_2662F3824;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26631C950;
  v8[3] = &block_descriptor_6;
  v5 = _Block_copy(v8);

  v6 = [v3 initWithModelKind:v2 block:v5];

  _Block_release(v5);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2662F2BE4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2662F382C;
  *(v4 + 24) = a2;
  v7[4] = sub_2662F3824;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2663F8490;
  v7[3] = &block_descriptor_21;
  v5 = _Block_copy(v7);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v5);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2662F2D24(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_2662F3020(*v13, a2, v19, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_2662F2F8C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_2662F3020(uint64_t a1, uint64_t *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v76 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v100[3] = v10;
  v100[4] = &off_2877F3740;
  v100[0] = a1;
  v99[3] = &type metadata for PlaybackStarter;
  v99[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v99[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v98[3] = &type metadata for PlaybackQueueLocationProvider;
  v98[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v98[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v100, v96);
  sub_2662A5550(a2, v95);
  sub_2662A5550(v99, v93);
  sub_2662A5550(v98, v91);
  v17 = v97;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v94;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v92;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v90[3] = v10;
  v90[4] = &off_2877F3740;
  v90[0] = v35;
  v89[3] = &type metadata for PlaybackStarter;
  v89[4] = &off_2877EE098;
  v36 = swift_allocObject();
  v89[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v87 = &type metadata for PlaybackQueueLocationProvider;
  v88 = &off_2877E8100;
  v39 = swift_allocObject();
  *&v86 = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  sub_2662A5550(v90, a5 + 16);
  sub_2662A5550(v95, a5 + 56);
  sub_2662A5550(v89, a5 + 104);
  sub_2662A5550(v90, v84);
  sub_2662A5550(v95, v83);
  sub_2662A5550(v89, v81);
  v42 = v85;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = v82;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v46;
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v79 = &off_2877EE098;
  v80[0] = v54;
  v78 = &type metadata for PlaybackStarter;
  v55 = swift_allocObject();
  v77[0] = v55;
  v56 = v52[3];
  v55[3] = v52[2];
  v55[4] = v56;
  v55[5] = v52[4];
  v57 = v52[1];
  v55[1] = *v52;
  v55[2] = v57;
  type metadata accessor for LocalPlaybackHelper();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v80, v10);
  v60 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v78;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v66 = *(v64[-1].Description + 8);
  MEMORY[0x28223BE20](v65);
  v68 = (&v75 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v62;
  v58[5] = v10;
  v58[6] = &off_2877F3740;
  v58[2] = v70;
  v58[15] = &type metadata for PlaybackStarter;
  v58[16] = &off_2877EE098;
  v71 = swift_allocObject();
  v58[12] = v71;
  v72 = v68[3];
  v71[3] = v68[2];
  v71[4] = v72;
  v71[5] = v68[4];
  v73 = v68[1];
  v71[1] = *v68;
  v71[2] = v73;
  sub_2662A8618(v83, (v58 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  *(a5 + 96) = v58;
  sub_2662A8618(&v86, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  return a5;
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_2662F37D0()
{
  result = qword_280072710;
  if (!qword_280072710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072710);
  }

  return result;
}

void sub_2662F382C(void *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = sub_2664E02A8();
  [a1 setGlobalPlaylistID_];
}

uint64_t Parse.playMediaIntent.getter()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v56 - v7;
  v8 = sub_2664DEBD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = sub_2664DEBF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v1, v19);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == *MEMORY[0x277D5C158])
  {
    (*(v20 + 96))(v23, v19);
    v25 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072848, &qword_2664E4DB8) + 48)];
    v26 = sub_2664DEBE8();

    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
    }

    else
    {

      v28 = 0;
    }

    v52 = sub_2664DF2D8();
    (*(*(v52 - 8) + 8))(v23, v52);
    return v28;
  }

  else
  {
    if (v24 == *MEMORY[0x277D5C150])
    {
      (*(v20 + 96))(v23, v19);
      v29 = v9;
      (*(v9 + 32))(v18, v23, v8);
      sub_2663DD4DC(v18, v63);
      if (v65)
      {
        if (v65 != 255)
        {
          sub_2662A9238(v63, &qword_280072840, &qword_2664E4DB0);
        }

        v30 = v59;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v31 = v61;
        v32 = __swift_project_value_buffer(v61, qword_280F914F0);
        swift_beginAccess();
        v33 = v60;
        (*(v60 + 16))(v30, v32, v31);
        v34 = *(v29 + 16);
        v34(v16, v18, v8);
        v35 = sub_2664DFE18();
        v36 = sub_2664E06D8();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v58 = v36;
          v38 = v29;
          v39 = v37;
          v57 = swift_slowAlloc();
          v62 = v57;
          *v39 = 136315138;
          v34(v13, v16, v8);
          v40 = sub_2664E0318();
          v42 = v41;
          v43 = *(v38 + 8);
          v43(v16, v8);
          v44 = sub_2662A320C(v40, v42, &v62);

          *(v39 + 4) = v44;
          _os_log_impl(&dword_26629C000, v35, v58, "Parse#playMediaIntent Unable to get INPlayMediaIntent from unsupported direct invocation use case %s", v39, 0xCu);
          v45 = v57;
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          MEMORY[0x266784AD0](v45, -1, -1);
          MEMORY[0x266784AD0](v39, -1, -1);

          (*(v33 + 8))(v59, v61);
          v43(v18, v8);
        }

        else
        {

          v55 = *(v29 + 8);
          v55(v16, v8);
          (*(v33 + 8))(v59, v61);
          v55(v18, v8);
        }
      }

      else
      {
        v54 = v64;
        (*(v9 + 8))(v18, v8);

        if (v54)
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v46 = v61;
      v47 = __swift_project_value_buffer(v61, qword_280F914F0);
      swift_beginAccess();
      v48 = v60;
      (*(v60 + 16))(v6, v47, v46);
      v49 = sub_2664DFE18();
      v50 = sub_2664E06D8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_26629C000, v49, v50, "Parse#playMediaIntent unable to get INPlayMediaIntent from parse", v51, 2u);
        MEMORY[0x266784AD0](v51, -1, -1);
      }

      (*(v48 + 8))(v6, v46);
      (*(v20 + 8))(v23, v19);
    }

    return 0;
  }
}

uint64_t Parse.siriKitIntent.getter()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DEBF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v1, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D5C158])
  {
    (*(v8 + 96))(v11, v7);
    v12 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072848, &qword_2664E4DB8) + 48)];
    v13 = sub_2664DF2D8();
    (*(*(v13 - 8) + 8))(v11, v13);
    v14 = sub_2664DEBE8();

    return v14;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v6, v16, v2);
    v17 = sub_2664DFE18();
    v18 = sub_2664E06E8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26629C000, v17, v18, "Parse#playMediaIntent Ignoring non-server-conversion parse", v19, 2u);
      MEMORY[0x266784AD0](v19, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t Parse.firstNLUUserDialogAct()@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v1 = sub_2664DEBD8();
  v109 = *(v1 - 8);
  v2 = *(v109 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v100 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v102 = &v99 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v99 - v7;
  v9 = sub_2664DFE38();
  v107 = *(v9 - 8);
  v108 = v9;
  v10 = *(v107 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v103 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v106 = (&v99 - v14);
  MEMORY[0x28223BE20](v13);
  v101 = &v99 - v15;
  v16 = sub_2664DF0B8();
  v104 = *(v16 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664DF0D8();
  v21 = *(v20 - 8);
  v110 = v20;
  v111 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2664DEC28();
  v25 = *(v105 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v105);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2664DEBF8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v33, v113, v29);
  v34 = (*(v30 + 88))(v33, v29);
  if (v34 == *MEMORY[0x277D5C150])
  {
    (*(v30 + 96))(v33, v29);
    v35 = v109;
    (*(v109 + 32))(v8, v33, v1);
    sub_2663DD4DC(v8, v116);
    v36 = v8;
    if (v117 == 4)
    {
      v54 = v116[0];

      if (v54)
      {
        v55 = v54;
        v56 = v112;
        sub_2664DFC88();

        (*(v35 + 8))(v36, v1);
        v57 = *(v111 + 56);
        v58 = v56;
LABEL_25:
        v61 = 0;
        return v57(v58, v61, 1, v110);
      }

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v62 = v108;
      v63 = __swift_project_value_buffer(v108, qword_280F914F0);
      swift_beginAccess();
      v64 = v107;
      v65 = v103;
      (*(v107 + 16))(v103, v63, v62);
      v66 = *(v35 + 16);
      v67 = v102;
      v66(v102, v36, v1);
      v68 = sub_2664DFE18();
      v69 = sub_2664E06D8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v113 = v36;
        v114 = v71;
        v106 = v71;
        *v70 = 136315138;
        v66(v100, v67, v1);
        v72 = sub_2664E0318();
        v74 = v73;
        v75 = *(v35 + 8);
        v75(v67, v1);
        v76 = sub_2662A320C(v72, v74, &v114);

        *(v70 + 4) = v76;
        _os_log_impl(&dword_26629C000, v68, v69, "Parse+Extension#firstUserDialogAct PlayMediaShim directInvocation doesn't contain audioExperience %s", v70, 0xCu);
        v77 = v106;
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        MEMORY[0x266784AD0](v77, -1, -1);
        MEMORY[0x266784AD0](v70, -1, -1);

        (*(v64 + 8))(v103, v108);
        v75(v113, v1);
      }

      else
      {

        v85 = *(v35 + 8);
        v85(v67, v1);
        (*(v64 + 8))(v65, v108);
        v85(v36, v1);
      }
    }

    else
    {
      if (v117 != 255)
      {
        sub_2662A9238(v116, &qword_280072840, &qword_2664E4DB0);
      }

      (*(v35 + 8))(v8, v1);
    }
  }

  else if (v34 == *MEMORY[0x277D5C148])
  {
    (*(v30 + 96))(v33, v29);
    v37 = *v33;
    v38 = sub_2664DFCC8();
    v39 = v38;
    if (v38 >> 62)
    {
      goto LABEL_38;
    }

    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = v107;
    for (i = v108; v40; i = v108)
    {
      v43 = 0;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x266783B70](v43, v39);
        }

        else
        {
          if (v43 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v44 = *(v39 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        sub_2664DFCD8();
        if (swift_dynamicCastClass())
        {

          v59 = v45;
          v60 = v112;
          sub_2664DFC88();

          v57 = *(v111 + 56);
          v58 = v60;
          goto LABEL_25;
        }

        ++v43;
        if (v46 == v40)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v40 = sub_2664E0A68();
      v42 = v107;
    }

LABEL_39:

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v86 = __swift_project_value_buffer(i, qword_280F914F0);
    swift_beginAccess();
    v87 = v106;
    (*(v42 + 16))(v106, v86, i);
    v88 = v37;
    v89 = sub_2664DFE18();
    v90 = sub_2664E06D8();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v115 = v92;
      *v91 = 136315138;
      v93 = sub_2664DFCC8();
      v94 = sub_2664DFC98();
      v95 = MEMORY[0x2667834D0](v93, v94);
      v97 = v96;

      v98 = sub_2662A320C(v95, v97, &v115);

      *(v91 + 4) = v98;
      _os_log_impl(&dword_26629C000, v89, v90, "Parse+Extension#firstUserDialogAct PommesResponse doesn't contain audioExperience %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x266784AD0](v92, -1, -1);
      MEMORY[0x266784AD0](v91, -1, -1);

      (*(v42 + 8))(v106, i);
    }

    else
    {

      (*(v42 + 8))(v87, i);
    }
  }

  else
  {
    if (v34 != *MEMORY[0x277D5C160])
    {
      (*(v111 + 56))(v112, 1, 1, v110);
      return (*(v30 + 8))(v33, v29);
    }

    (*(v30 + 96))(v33, v29);
    v47 = v25;
    v48 = v105;
    (*(v25 + 32))(v28, v33, v105);
    sub_2664DEC18();
    v49 = sub_2664DF0A8();
    (*(v104 + 8))(v19, v16);
    if (*(v49 + 16))
    {
      v51 = v110;
      v50 = v111;
      (*(v111 + 16))(v24, v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v110);

      (*(v47 + 8))(v28, v48);
      v52 = v112;
      (*(v50 + 32))(v112, v24, v51);
      return (*(v50 + 56))(v52, 0, 1, v51);
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v78 = v108;
    v79 = __swift_project_value_buffer(v108, qword_280F914F0);
    swift_beginAccess();
    v80 = v107;
    v81 = v101;
    (*(v107 + 16))(v101, v79, v78);
    v82 = sub_2664DFE18();
    v83 = sub_2664E06E8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_26629C000, v82, v83, "Parse+Extension#firstUserDialogAct No user dialog act found in userParse.", v84, 2u);
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    (*(v80 + 8))(v81, v78);
    (*(v47 + 8))(v28, v48);
  }

  v58 = v112;
  v57 = *(v111 + 56);
  v61 = 1;
  return v57(v58, v61, 1, v110);
}

uint64_t Parse.firstUsoTask()()
{
  v1 = sub_2664DFE38();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v48 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v47[1] = v47 - v6;
  MEMORY[0x28223BE20](v5);
  v47[0] = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v47 - v10;
  v12 = sub_2664DF0D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DEBF8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v0, v16);
  v21 = (*(v17 + 88))(v20, v16);
  v22 = *MEMORY[0x277D5C148];
  v23 = *MEMORY[0x277D5C160];
  (*(v17 + 8))(v20, v16);
  result = 0;
  if (v21 == v22 || v21 == v23)
  {
    Parse.firstNLUUserDialogAct()(v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_2662A9238(v11, &qword_280072850, &qword_2664EDE70);
      v27 = v50;
      v26 = v51;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v26, qword_280F914F0);
      swift_beginAccess();
      v29 = v48;
      (*(v27 + 16))(v48, v28, v26);
      v30 = sub_2664DFE18();
      v31 = sub_2664E06E8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_26629C000, v30, v31, "Parse+Extension#firstUsoTask No user dialog act found in userParse.", v32, 2u);
        MEMORY[0x266784AD0](v32, -1, -1);
      }

      (*(v27 + 8))(v29, v26);
      return 0;
    }

    v33 = v12;
    v34 = v13;
    v35 = v49;
    (*(v13 + 32))(v49, v11, v33);
    v36 = sub_2664DF108();
    v38 = v50;
    v37 = v51;
    if (v36 >> 62)
    {
      v41 = v36;
      v42 = sub_2664E0A68();
      v36 = v41;
      v39 = v47[0];
      if (v42)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v39 = v47[0];
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_17:
        if ((v36 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x266783B70](0);
          goto LABEL_20;
        }

        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v40 = *(v36 + 32);

LABEL_20:

          (*(v13 + 8))(v35, v33);
          return v40;
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    if (qword_280F914E8 == -1)
    {
LABEL_23:
      v43 = __swift_project_value_buffer(v37, qword_280F914F0);
      swift_beginAccess();
      (*(v38 + 16))(v39, v43, v37);
      v44 = sub_2664DFE18();
      v45 = sub_2664E06E8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_26629C000, v44, v45, "Parse+Extension#firstUsoTask No tasks found in input", v46, 2u);
        MEMORY[0x266784AD0](v46, -1, -1);
      }

      (*(v38 + 8))(v39, v37);
      (*(v34 + 8))(v35, v33);
      return 0;
    }

LABEL_27:
    swift_once();
    goto LABEL_23;
  }

  return result;
}

uint64_t Parse.getPommesResponse()()
{
  v1 = v0;
  v2 = sub_2664DEBF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D5C148])
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_2662F57BC()
{
  sub_2662F5824();
  result = sub_2664E0928();
  qword_280F91D48 = result;
  return result;
}

unint64_t sub_2662F5824()
{
  result = qword_280F914E0;
  if (!qword_280F914E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F914E0);
  }

  return result;
}

BOOL sub_2662F5880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  if (a1 == 6 || a1 == 1)
  {
    v14 = AFIsInternalInstall();
    v15 = 72;
    if (v14)
    {
      v15 = 80;
    }

    v16 = *(a2 + v15);
    v17 = v3[8];
    v18 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v17);
    v19 = (*(v18 + 72))(v17, v18);
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      sub_2662F632C(v19, 0.0, 1.0);
      v20 = v21 < v16;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v22, v6);
    sub_2662F63D0(v3, v42);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v6;
      v41 = v26;
      v27 = v26;
      *v25 = 136315650;
      if (v20)
      {
        v28 = 1702195828;
      }

      else
      {
        v28 = 0x65736C6166;
      }

      if (v20)
      {
        v29 = 0xE400000000000000;
      }

      else
      {
        v29 = 0xE500000000000000;
      }

      v30 = sub_2662A320C(v28, v29, &v41);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v16;
      *(v25 + 22) = 1024;
      v31 = v44;
      v32 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v33 = (*(v32 + 72))(v31, v32) & 1;
      sub_2662F6408(v42);
      *(v25 + 24) = v33;
      _os_log_impl(&dword_26629C000, v23, v24, "MegamodelConfiguration#shouldRecordMegamodel: record megamodel decision is %s collection rate: %f, force: %{BOOL}d", v25, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266784AD0](v27, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);

      (*(v7 + 8))(v13, v40);
    }

    else
    {
      sub_2662F6408(v42);

      (*(v7 + 8))(v13, v6);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v34, v6);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06C8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "MegamodelConfiguration#shouldRecordMegamodel: caller other than searchui and siri, record megamodel decision is false", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    return 0;
  }

  return v20;
}

uint64_t sub_2662F5CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 6 || a1 == 1)
  {
    v9 = *(a2 + 88);

    return sub_2662F5EDC(v9);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v11, v4);
    v12 = sub_2664DFE18();
    v13 = sub_2664E06C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26629C000, v12, v13, "MegamodelConfiguration#shouldEvaluateMegamodel: caller other than searchui and siri, evaluate megamodel decision is false", v14, 2u);
      MEMORY[0x266784AD0](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

uint64_t sub_2662F5EDC(char a1)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = v1[3];
  v15 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  if (v16)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v8, v17, v3);
    v18 = sub_2664DFE18();
    v19 = sub_2664E06D8();
    if (!os_log_type_enabled(v18, v19))
    {
      v23 = 0;
      v13 = v8;
LABEL_21:

      (*(v4 + 8))(v13, v3);
      return v23 & 1;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "MegamodelConfiguration#isMegamodelEvaluationAvailable: Megamodel evaluation is disabled on AppleTV", v20, 2u);
    v13 = v8;
LABEL_17:
    v23 = v16 ^ 1;
    MEMORY[0x266784AD0](v20, -1, -1);
    goto LABEL_21;
  }

  if (a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v13, v21, v3);
    v18 = sub_2664DFE18();
    v22 = sub_2664E06C8();
    if (!os_log_type_enabled(v18, v22))
    {
      v23 = 1;
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v22, "MegamodelConfiguration#isMegamodelEvaluationAvailable: evaluating megamodel: configuration enabled", v20, 2u);
    goto LABEL_17;
  }

  v24 = v1[8];
  v25 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v24);
  if ((*(v25 + 80))(v24, v25))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v11, v26, v3);
    v18 = sub_2664DFE18();
    v27 = sub_2664E06C8();
    if (!os_log_type_enabled(v18, v27))
    {
      v23 = 1;
      v13 = v11;
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v27, "MegamodelConfiguration#isMegamodelEvaluationAvailable: evaluating megamodel: forced evaluation", v20, 2u);
    v13 = v11;
    goto LABEL_17;
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_2662F632C(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x266784AF0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_2662F632C(v6, a2, a3);
  }

  return result;
}

uint64_t OnscreenEntityProvider.init(referenceResolver:siriAudioLinkServices:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2662A8618(a1, a3);

  return sub_2662A8618(a2, a3 + 40);
}

uint64_t OnscreenEntityProvider.retrieveOnScreenMediaItem(matching:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v35 - v5;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v36 = v7[2];
  v36(v12, v13, v6);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem...", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  v17 = v7[1];
  v17(v12, v6);
  v18 = sub_2664DFC28();
  if (v19)
  {
    v18 = sub_2664E0328();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2664DFC38();
  if (!v23)
  {
    v24 = v22;
    v26 = 0;
    if (!v21)
    {
      goto LABEL_10;
    }

LABEL_14:
    v34 = v41;

    sub_26630128C(v37, v18, v21, v40, v34, v24, v26);
  }

  v24 = sub_2664E0328();
  v26 = v25;

  if (v21 | v26)
  {
    goto LABEL_14;
  }

LABEL_10:
  v27 = v38;
  v36(v38, v13, v6);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem there is no media item title to match with.", v30, 2u);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  v17(v27, v6);
  v31 = sub_2664DFC48();
  v32 = v39;
  (*(*(v31 - 8) + 56))(v39, 1, 1, v31);
  v40(v32);
  return sub_2662A9238(v32, &qword_280072858, &qword_2664E4E40);
}

uint64_t sub_2662F687C(uint64_t a1, uint64_t *a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v145 = a7;
  v148 = a6;
  v139 = a5;
  v140 = a4;
  v150 = a2;
  v142 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v138 = v128 - v10;
  v11 = sub_2664DFC48();
  v141 = *(v11 - 1);
  v12 = *(v141 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v131 = v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v147 = v128 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v132 = v128 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v133 = v128 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v128 - v21;
  v23 = sub_2664DFE38();
  v143 = *(v23 - 8);
  v144 = v23;
  v24 = *(v143 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v137 = v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v135 = v128 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v136 = v128 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v134 = v128 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = v128 - v33;
  v149 = v11;
  v146 = a3;
  if (a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v144;
    v36 = __swift_project_value_buffer(v144, qword_280F914F0);
    swift_beginAccess();
    v37 = v143;
    v38 = v143 + 16;
    v128[0] = *(v143 + 16);
    (v128[0])(v34, v36, v35);
    v39 = v146;

    v40 = sub_2664DFE18();
    v41 = sub_2664E06C8();

    v42 = os_log_type_enabled(v40, v41);
    v129 = v36;
    v128[1] = v38;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v151[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2662A320C(v150, v39, v151);
      _os_log_impl(&dword_26629C000, v40, v41, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem search in results matching title: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      v45 = v43;
      v11 = v149;
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v130 = *(v37 + 8);
    v130(v34, v35);
    v46 = *(v142 + 16);
    if (v46)
    {
      v47 = *(v141 + 16);
      v48 = v142 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v49 = (v141 + 8);
      v50 = *(v141 + 72);
      v47(v22, v48, v11);
      while (1)
      {
        sub_2664DFC28();
        if (v52)
        {
          v53 = sub_2664E0328();
          v55 = v54;

          if (v53 == v150 && v55 == v146)
          {

            v11 = v149;
LABEL_15:
            v56 = v134;
            v57 = v144;
            (v128[0])(v134, v129, v144);
            v58 = v133;
            v47(v133, v22, v11);
            v59 = sub_2664DFE18();
            v60 = sub_2664E06C8();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v149 = v59;
              v62 = v61;
              v150 = swift_slowAlloc();
              v151[0] = v150;
              *v62 = 136315138;
              LODWORD(v148) = v60;
              v47(v132, v58, v11);
              v147 = sub_2664E0318();
              v64 = v63;
              v65 = *v49;
              v66 = v11;
              (*v49)(v58, v11);
              v67 = v65;
              v68 = sub_2662A320C(v147, v64, v151);

              v69 = v62;
              *(v62 + 4) = v68;
              v70 = v149;
              _os_log_impl(&dword_26629C000, v149, v148, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem returning on-screen media item: %s.", v69, 0xCu);
              v71 = v150;
              __swift_destroy_boxed_opaque_existential_1Tm(v150);
              MEMORY[0x266784AD0](v71, -1, -1);
              MEMORY[0x266784AD0](v69, -1, -1);

              v72 = v144;
              v73 = v134;
            }

            else
            {

              v123 = *v49;
              v66 = v11;
              (*v49)(v58, v11);
              v67 = v123;
              v73 = v56;
              v72 = v57;
            }

            v130(v73, v72);
            v124 = v138;
            v47(v138, v22, v66);
            (*(v141 + 56))(v124, 0, 1, v66);
            v140(v124);
            sub_2662A9238(v124, &qword_280072858, &qword_2664E4E40);
            return (v67)(v22, v66);
          }

          v51 = sub_2664E0D88();

          v11 = v149;
          if (v51)
          {
            goto LABEL_15;
          }
        }

        (*v49)(v22, v11);
        v48 += v50;
        if (!--v46)
        {
          break;
        }

        v47(v22, v48, v11);
      }
    }
  }

  v74 = v147;
  if (!v145)
  {
    goto LABEL_33;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v75 = v144;
  v76 = __swift_project_value_buffer(v144, qword_280F914F0);
  swift_beginAccess();
  v77 = v143;
  v78 = *(v143 + 16);
  v79 = v136;
  v146 = v76;
  v134 = v78;
  (v78)(v136, v76, v75);
  v80 = v145;

  v81 = sub_2664DFE18();
  v82 = sub_2664E06C8();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v151[0] = v84;
    *v83 = 136315138;
    *(v83 + 4) = sub_2662A320C(v148, v80, v151);
    _os_log_impl(&dword_26629C000, v81, v82, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem search in results matching artist: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v85 = v84;
    v11 = v149;
    MEMORY[0x266784AD0](v85, -1, -1);
    v86 = v83;
    v74 = v147;
    MEMORY[0x266784AD0](v86, -1, -1);
  }

  v150 = *(v77 + 8);
  (v150)(v79, v75);
  v87 = *(v142 + 16);
  if (!v87)
  {
LABEL_33:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v113 = v144;
    v114 = __swift_project_value_buffer(v144, qword_280F914F0);
    swift_beginAccess();
    v115 = v143;
    v116 = v137;
    (*(v143 + 16))(v137, v114, v113);
    v117 = sub_2664DFE18();
    v118 = sub_2664E06C8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_26629C000, v117, v118, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem media item not found.", v119, 2u);
      v120 = v119;
      v11 = v149;
      MEMORY[0x266784AD0](v120, -1, -1);
    }

    (*(v115 + 8))(v116, v113);
    v121 = v138;
    (*(v141 + 56))(v138, 1, 1, v11);
    v140(v121);
    return sub_2662A9238(v121, &qword_280072858, &qword_2664E4E40);
  }

  v88 = *(v141 + 16);
  v89 = v142 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
  v90 = (v141 + 8);
  v91 = *(v141 + 72);
  v88(v74, v89, v11);
  while (1)
  {
    sub_2664DFC38();
    if (!v94)
    {
      goto LABEL_25;
    }

    v95 = sub_2664E0328();
    v97 = v96;

    if (v95 == v148 && v97 == v145)
    {
      break;
    }

    v92 = sub_2664E0D88();

    v11 = v149;
    if (v92)
    {
      goto LABEL_31;
    }

LABEL_25:
    v93 = v147;
    (*v90)(v147, v11);
    v89 += v91;
    if (!--v87)
    {
      goto LABEL_33;
    }

    v88(v93, v89, v11);
  }

  v11 = v149;
LABEL_31:
  v98 = v144;
  (v134)(v135, v146, v144);
  v99 = v131;
  v88(v131, v147, v11);
  v100 = sub_2664DFE18();
  v101 = v11;
  v102 = sub_2664E06C8();
  if (os_log_type_enabled(v100, v102))
  {
    v103 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v151[0] = v149;
    *v103 = 136315138;
    v88(v132, v99, v101);
    v104 = sub_2664E0318();
    v105 = v99;
    v148 = v104;
    v107 = v106;
    v108 = *v90;
    (*v90)(v105, v101);
    v109 = sub_2662A320C(v148, v107, v151);

    *(v103 + 4) = v109;
    _os_log_impl(&dword_26629C000, v100, v102, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem returning on-screen media item: %s.", v103, 0xCu);
    v110 = v149;
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    MEMORY[0x266784AD0](v110, -1, -1);
    MEMORY[0x266784AD0](v103, -1, -1);

    v111 = v144;
    v112 = v135;
  }

  else
  {

    v125 = *v90;
    (*v90)(v99, v101);
    v108 = v125;
    v112 = v135;
    v111 = v98;
  }

  (v150)(v112, v111);
  v126 = v138;
  v127 = v147;
  v88(v138, v147, v101);
  (*(v141 + 56))(v126, 0, 1, v101);
  v140(v126);
  sub_2662A9238(v126, &qword_280072858, &qword_2664E4E40);
  return (v108)(v127, v101);
}

void OnscreenEntityProvider.onscreenMediaItems(completion:)(void (*a1)(void), uint64_t a2)
{
  v159 = a2;
  v160 = a1;
  v2 = sub_2664DFE68();
  v3 = *(v2 - 8);
  v183 = v2;
  v184 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v182 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v181 = (&v151 - v7);
  v172 = sub_2664DFF28();
  v174 = *(v172 - 8);
  v8 = *(v174 + 64);
  MEMORY[0x28223BE20](v172);
  v171 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_2664DFE88();
  v10 = *(v173 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v173);
  v170 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v177 = &v151 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v169 = &v151 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v167 = (&v151 - v19);
  MEMORY[0x28223BE20](v18);
  v176 = (&v151 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v151 - v23;
  v25 = sub_2664DFF38();
  v26 = *(v25 - 8);
  v178 = v25;
  v179 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v175 = (&v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v180 = &v151 - v30;
  v31 = sub_2664DFE38();
  v32 = *(v31 - 8);
  v33 = *(v32 + 8);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v152 = &v151 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v164 = (&v151 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v163 = &v151 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v165 = (&v151 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v166 = &v151 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v151 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v151 - v50;
  v52 = sub_2664DF148();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  sub_2664DF138();
  v55 = MEMORY[0x266782230]();

  v161 = v55;
  if (v55)
  {
    if (qword_280F914E8 != -1)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v56 = __swift_project_value_buffer(v31, qword_280F914F0);
      swift_beginAccess();
      v57 = *(v32 + 2);
      v155 = v56;
      v154 = v32 + 16;
      v153 = v57;
      v57(v51, v56, v31);
      v58 = sub_2664DFE18();
      v59 = sub_2664E06C8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_26629C000, v58, v59, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v60, 2u);
        MEMORY[0x266784AD0](v60, -1, -1);
      }

      v61 = *(v32 + 1);
      v157 = v32 + 8;
      v156 = v61;
      v61(v51, v31);
      v186 = MEMORY[0x277D84F90];
      v62 = v158[4];
      __swift_project_boxed_opaque_existential_1(v158, v158[3]);
      v63 = sub_2664DFEA8();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();

      sub_2664DFE98();
      sub_2664DFCF8();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v185 = *v24;
        v66 = v185;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
        swift_willThrowTypedImpl();
        v153(v49, v155, v31);
        v67 = v66;
        v68 = sub_2664DFE18();
        v69 = sub_2664E06D8();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v185 = v71;
          *v70 = 136315138;
          swift_getErrorValue();
          v72 = sub_2664E0DE8();
          v74 = sub_2662A320C(v72, v73, &v185);

          *(v70 + 4) = v74;
          _os_log_impl(&dword_26629C000, v68, v69, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v71);
          MEMORY[0x266784AD0](v71, -1, -1);
          MEMORY[0x266784AD0](v70, -1, -1);
        }

        v156(v49, v31);
        v160(MEMORY[0x277D84F90]);

        return;
      }

      v81 = v179;
      v82 = v180;
      v32 = v178;
      (*(v179 + 32))(v180, v24, v178);
      v83 = v175;
      (*(v81 + 16))(v175, v82, v32);
      v84 = (*(v81 + 88))(v83, v32);
      v85 = v84 == *MEMORY[0x277D5FEC0];
      v151 = v31;
      v168 = v10;
      if (v85)
      {
        (*(v81 + 96))(v83, v32);
        v86 = *(v10 + 32);
        v87 = v176;
        v88 = v83;
        v89 = v173;
        v175 = (v10 + 32);
        v165 = v86;
        v86(v176, v88, v173);
        v90 = v166;
        v153(v166, v155, v31);
        v91 = v167;
        v164 = *(v10 + 16);
        v164(v167, v87, v89);
        v92 = sub_2664DFE18();
        v93 = sub_2664E06C8();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v185 = v95;
          *v94 = 136315138;
          sub_2663029EC();
          v96 = sub_2664E0D48();
          v97 = v91;
          v99 = v98;
          v49 = *(v10 + 8);
          (v49)(v97, v173);
          v100 = sub_2662A320C(v96, v99, &v185);

          *(v94 + 4) = v100;
          _os_log_impl(&dword_26629C000, v92, v93, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v95);
          v101 = v95;
          v32 = v178;
          MEMORY[0x266784AD0](v101, -1, -1);
          v102 = v94;
          v89 = v173;
          MEMORY[0x266784AD0](v102, -1, -1);
        }

        else
        {

          v49 = *(v10 + 8);
          (v49)(v91, v89);
        }

        v156(v90, v31);
        v111 = v169;
        v112 = v176;
        v164(v169, v176, v89);
        v113 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
        v115 = *(v113 + 2);
        v114 = *(v113 + 3);
        if (v115 >= v114 >> 1)
        {
          v113 = sub_266384A74(v114 > 1, v115 + 1, 1, v113);
        }

        v10 = v168;
        v116 = v112;
        v117 = v173;
        (v49)(v116, v173);
        (*(v179 + 8))(v180, v32);
        *(v113 + 2) = v115 + 1;
        v118 = &v113[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v115];
        v51 = v117;
        v165(v118, v111, v117);
        v186 = v113;
      }

      else
      {
        if (v84 == *MEMORY[0x277D5FED0])
        {
          (*(v81 + 96))(v83, v32);
          v103 = *v83;
          v49 = v165;
          v153(v165, v155, v31);

          v104 = sub_2664DFE18();
          v105 = sub_2664E06C8();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v185 = v107;
            *v106 = 136315138;
            v108 = MEMORY[0x2667834D0](v103, v173);
            v110 = sub_2662A320C(v108, v109, &v185);
            v32 = v178;

            *(v106 + 4) = v110;
            v81 = v179;
            _os_log_impl(&dword_26629C000, v104, v105, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v106, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v107);
            MEMORY[0x266784AD0](v107, -1, -1);
            MEMORY[0x266784AD0](v106, -1, -1);
          }

          v156(v49, v31);
          sub_2662FA148(v103, sub_266384A74, MEMORY[0x277D5FE08]);
          (*(v81 + 8))(v180, v32);
        }

        else if (v84 == *MEMORY[0x277D5FEC8] || v84 == *MEMORY[0x277D5FED8] || v84 != *MEMORY[0x277D5FEE0])
        {
          v123 = *(v81 + 8);
          v123(v83, v32);
          v124 = v164;
          v153(v164, v155, v31);
          v49 = (v81 + 8);
          v125 = sub_2664DFE18();
          v126 = sub_2664E06D8();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            *v127 = 0;
            _os_log_impl(&dword_26629C000, v125, v126, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v127, 2u);
            MEMORY[0x266784AD0](v127, -1, -1);
          }

          v156(v124, v31);
          v123(v180, v32);
        }

        else
        {
          v119 = v163;
          v153(v163, v155, v31);
          v120 = sub_2664DFE18();
          v121 = sub_2664E06C8();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            *v122 = 0;
            _os_log_impl(&dword_26629C000, v120, v121, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v122, 2u);
            MEMORY[0x266784AD0](v122, -1, -1);
          }

          v156(v119, v31);
          (*(v179 + 8))(v180, v32);
        }

        v51 = v173;
      }

      v128 = v186;
      v167 = *(v186 + 2);
      if (!v167)
      {
        break;
      }

      v24 = 0;
      v166 = (v10 + 16);
      v165 = (v174 + 8);
      v180 = (v184 + 16);
      LODWORD(v179) = *MEMORY[0x277D5FE90];
      v129 = *MEMORY[0x277D5FDF0];
      v178 = (v184 + 104);
      v31 = v184 + 8;
      v163 = (v10 + 32);
      v162 = (v10 + 8);
      v169 = MEMORY[0x277D84F90];
      v164 = v186;
      while (v24 < *(v128 + 2))
      {
        v175 = ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v174 = *(v10 + 72);
        (*(v10 + 16))(v177, v175 + v128 + v174 * v24++, v51);
        v176 = v24;
        v51 = v171;
        sub_2664DFE78();
        v130 = sub_2664DFF08();
        (*v165)(v51, v172);
        v10 = 0;
        v131 = *(v130 + 16);
        do
        {
          if (v131 == v10)
          {
            v51 = v173;
            (*v162)(v177, v173);

            goto LABEL_39;
          }

          if (v10 >= *(v130 + 16))
          {
            __break(1u);
            goto LABEL_58;
          }

          v51 = v183;
          v132 = v184;
          v24 = v181;
          (*(v184 + 16))(v181, v130 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v10++, v183);
          v133 = sub_2664DFEB8();
          v32 = v182;
          (*(*(v133 - 8) + 104))(v182, v179, v133);
          (*(v132 + 104))(v32, v129, v51);
          v134 = sub_2664DFE58();
          v49 = *(v132 + 8);
          (v49)(v32, v51);
          (v49)(v24, v51);
        }

        while ((v134 & 1) == 0);

        v135 = *v163;
        v51 = v173;
        (*v163)(v170, v177, v173);
        v136 = v169;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v185 = v136;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FD058(0, *(v136 + 16) + 1, 1);
          v136 = v185;
        }

        v138 = v175;
        v140 = *(v136 + 16);
        v139 = *(v136 + 24);
        if (v140 >= v139 >> 1)
        {
          sub_2662FD058(v139 > 1, v140 + 1, 1);
          v136 = v185;
        }

        *(v136 + 16) = v140 + 1;
        v169 = v136;
        v135(v138 + v136 + v140 * v174, v170, v51);
LABEL_39:
        v24 = v176;
        v10 = v168;
        v128 = v164;
        if (v176 == v167)
        {
          goto LABEL_51;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
    }

    v169 = MEMORY[0x277D84F90];
LABEL_51:

    v141 = v169;
    if (*(v169 + 2))
    {
      v142 = v158[8];
      v143 = v158[9];
      __swift_project_boxed_opaque_existential_1(v158 + 5, v142);
      (*(v143 + 8))(v141, v160, v159, v142, v143);
    }

    else
    {

      v144 = v152;
      v145 = v151;
      v153(v152, v155, v151);
      v146 = sub_2664DFE18();
      v147 = sub_2664E06C8();
      v148 = os_log_type_enabled(v146, v147);
      v149 = v160;
      if (v148)
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_26629C000, v146, v147, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v150, 2u);
        MEMORY[0x266784AD0](v150, -1, -1);
      }

      v156(v144, v145);
      v149(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v75 = __swift_project_value_buffer(v31, qword_280F914F0);
    swift_beginAccess();
    (*(v32 + 2))(v36, v75, v31);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06D8();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v160;
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_26629C000, v76, v77, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v80, 2u);
      MEMORY[0x266784AD0](v80, -1, -1);
    }

    (*(v32 + 1))(v36, v31);
    v79(MEMORY[0x277D84F90]);
  }
}

uint64_t OnscreenEntityProvider.firstOnScreenMediaItem(completion:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "OnscreenEntityProvider#firstOnScreenMediaItem...", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);

  sub_2663047E4(v3, a1, a2);
}

uint64_t sub_2662F8E50(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v67 = a3;
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - v6;
  v8 = sub_2664DFE38();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v58 - v13;
  v15 = sub_2664DFC48();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v58 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v58 - v23;
  if (*(a1 + 16))
  {
    v65 = v24;
    v66 = v7;
    v26 = *(v24 + 16);
    v26(&v58 - v23, a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v15);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v28 = v69;
    (*(v69 + 16))(v12, v27, v8);
    v26(v22, v25, v15);
    v64 = v8;
    v29 = v26;
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();
    v32 = os_log_type_enabled(v30, v31);
    v63 = v29;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v60 = v30;
      v34 = v15;
      v35 = v33;
      v61 = swift_slowAlloc();
      v70 = v61;
      *v35 = 136315138;
      v29(v19, v22, v34);
      v36 = sub_2664E0318();
      v62 = v12;
      v38 = v37;
      v39 = v65;
      v40 = *(v65 + 8);
      v58 = v36;
      v59 = v40;
      v40(v22, v34);
      v41 = sub_2662A320C(v58, v38, &v70);

      v42 = v35;
      v15 = v34;
      *(v42 + 1) = v41;
      v43 = v31;
      v44 = v60;
      v45 = v42;
      _os_log_impl(&dword_26629C000, v60, v43, "OnscreenEntityProvider#firstOnScreenMediaItem returning on-screen media item: %s).", v42, 0xCu);
      v46 = v61;
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);

      v47 = v59;
      (*(v28 + 8))(v62, v64);
    }

    else
    {

      v39 = v65;
      v47 = *(v65 + 8);
      v47(v22, v15);
      (*(v28 + 8))(v12, v64);
    }

    v57 = v66;
    v63(v66, v25, v15);
    (*(v39 + 56))(v57, 0, 1, v15);
    v68(v57);
    sub_2662A9238(v57, &qword_280072858, &qword_2664E4E40);
    return (v47)(v25, v15);
  }

  else
  {
    v48 = v24;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v50 = v69;
    v51 = v8;
    (*(v69 + 16))(v14, v49, v8);
    v52 = sub_2664DFE18();
    v53 = sub_2664E06C8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26629C000, v52, v53, "OnscreenEntityProvider#firstOnScreenMediaItem media item not found.", v54, 2u);
      v55 = v54;
      v50 = v69;
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    (*(v50 + 8))(v14, v51);
    (*(v48 + 56))(v7, 1, 1, v15);
    v68(v7);
    return sub_2662A9238(v7, &qword_280072858, &qword_2664E4E40);
  }
}

uint64_t OnscreenEntityProvider.onScreenMediaItem(at:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&dword_26629C000, v14, v15, "OnscreenEntityProvider#onScreenMediaItemAtIndex at index: %ld", v16, 0xCu);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);

  sub_266307C70(v4, a1, a2, a3);
}

uint64_t sub_2662F9658(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v66 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v55 - v9;
  v10 = sub_2664DFE38();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = sub_2664DFC48();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v55 - v23;
  result = MEMORY[0x28223BE20](v22);
  v28 = &v55 - v26;
  v29 = *(a1 + 16);
  v30 = a2;
  if (a2 < 0)
  {
    v30 = -a2;
    if (__OFSUB__(0, a2))
    {
      __break(1u);
      return result;
    }
  }

  if (v30 < v29)
  {
    if (a2 < 0 || v29 <= a2)
    {
      __break(1u);
    }

    else
    {
      v62 = v27;
      v63 = a4;
      v14 = *(v27 + 16);
      (v14)(&v55 - v26, a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * a2, v17);
      if (qword_280F914E8 == -1)
      {
LABEL_7:
        v31 = __swift_project_value_buffer(v10, qword_280F914F0);
        swift_beginAccess();
        v32 = v64;
        (*(v64 + 16))(v16, v31, v10);
        (v14)(v24, v28, v17);
        v61 = v10;
        v33 = sub_2664DFE18();
        v34 = sub_2664E06C8();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v60 = v14;
          v36 = v35;
          v57 = v35;
          v58 = swift_slowAlloc();
          v67 = v58;
          *v36 = 136315138;
          (v60)(v21, v24, v17);
          v55 = sub_2664E0318();
          v59 = v16;
          v38 = v37;
          v56 = v34;
          v39 = v62;
          v40 = *(v62 + 8);
          v40(v24, v17);
          v41 = sub_2662A320C(v55, v38, &v67);

          v42 = v57;
          *(v57 + 4) = v41;
          v43 = v40;
          _os_log_impl(&dword_26629C000, v33, v56, "OnscreenEntityProvider#onScreenMediaItemAtIndex returning on-screen media item: %s).", v42, 0xCu);
          v44 = v58;
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          MEMORY[0x266784AD0](v44, -1, -1);
          v14 = v60;
          MEMORY[0x266784AD0](v42, -1, -1);

          (*(v32 + 8))(v59, v61);
        }

        else
        {

          v39 = v62;
          v53 = v24;
          v43 = *(v62 + 8);
          v43(v53, v17);
          (*(v32 + 8))(v16, v61);
        }

        v54 = v65;
        (v14)(v65, v28, v17);
        (*(v39 + 56))(v54, 0, 1, v17);
        v66(v54);
        sub_2662A9238(v54, &qword_280072858, &qword_2664E4E40);
        return (v43)(v28, v17);
      }
    }

    swift_once();
    goto LABEL_7;
  }

  v45 = v27;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v47 = v64;
  v48 = v10;
  (*(v64 + 16))(v14, v46, v10);
  v49 = sub_2664DFE18();
  v50 = sub_2664E06C8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26629C000, v49, v50, "OnscreenEntityProvider#onScreenMediaItemAtIndex index seems to be out of bound.", v51, 2u);
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  (*(v47 + 8))(v14, v48);
  v52 = v65;
  (*(v45 + 56))(v65, 1, 1, v17);
  v66(v52);
  return sub_2662A9238(v52, &qword_280072858, &qword_2664E4E40);
}

uint64_t sub_2662F9CB0(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2663846F4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2662F9DA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2664E0A68();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_2664E0A68();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2662FE5D4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2662FE674(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2662F9E94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_266385394(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_26640D17C(v39, &v3[8 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v12 + 64) >> 6;
      if (v20 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = (v12 + 64) >> 6;
      }

      v22 = v21 - 1;
      do
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v23 >= v20)
        {
          v41 = v22;
          v42 = 0;
          goto LABEL_13;
        }

        v24 = *(v13 + 8 * v23);
        ++v17;
      }

      while (!v24);
      v18 = (v24 - 1) & v24;
      v19 = __clz(__rbit64(v24)) | (v23 << 6);
      v17 = v23;
      goto LABEL_27;
    }

    *(v3 + 2) = v17;
  }

  result = v39[0];
  if (v14 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v13 = v39[1];
  v12 = v40;
  v17 = v41;
  if (!v42)
  {
    goto LABEL_19;
  }

  v18 = (v42 - 1) & v42;
  v19 = __clz(__rbit64(v42)) | (v41 << 6);
  v20 = (v40 + 64) >> 6;
LABEL_27:
  v25 = *(*(result + 48) + 8 * v19);
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v27)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v36 = v17;
  v37 = v20;
  v38 = result;
  v31 = v13;
  v32 = v3;
  v33 = v18;
  v34 = sub_266385394((v26 > 1), v6 + 1, 1, v32);
  v18 = v33;
  v17 = v36;
  v20 = v37;
  v13 = v31;
  v3 = v34;
  result = v38;
  v27 = *(v3 + 3) >> 1;
  if (v6 >= v27)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v25;
    if (!v18)
    {
      break;
    }

LABEL_34:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = *(*(result + 48) + ((v17 << 9) | (8 * v28)));
    if (v6 == v27)
    {
      v6 = v27;
      goto LABEL_30;
    }
  }

  v29 = v17;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v30 >= v20)
    {
      break;
    }

    v18 = *(v13 + 8 * v30);
    ++v29;
    if (v18)
    {
      v17 = v30;
      goto LABEL_34;
    }
  }

  if (v20 <= v17 + 1)
  {
    v35 = v17 + 1;
  }

  else
  {
    v35 = v20;
  }

  v40 = v12;
  v41 = v35 - 1;
  v42 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_2662B793C();
  *v1 = v3;
  return result;
}

uint64_t sub_2662FA148(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::String_optional __swiftcall OnscreenEntityProvider.retrieveOnScreenApp()()
{
  v0 = sub_2664DFE68();
  v208 = *(v0 - 1);
  v1 = *(v208 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (&v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v206 = &v174 - v5;
  v193 = sub_2664DFF28();
  v180 = *(v193 - 8);
  v6 = *(v180 + 64);
  v7 = MEMORY[0x28223BE20](v193);
  v177 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v192 = &v174 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072870, &qword_2664E4E58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v179 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v178 = &v174 - v14;
  v194 = sub_2664DFE88();
  v195 = *(v194 - 8);
  v15 = *(v195 + 64);
  v16 = MEMORY[0x28223BE20](v194);
  v176 = &v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v198 = &v174 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v202 = &v174 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v203 = &v174 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v201 = &v174 - v25;
  MEMORY[0x28223BE20](v24);
  v207 = &v174 - v26;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  v27 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  v29 = &v174 - v28;
  v30 = sub_2664DFF38();
  v31 = *(v30 - 8);
  v209 = v30;
  v210 = v31;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v205 = &v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v213 = &v174 - v35;
  v36 = sub_2664DFE38();
  v37 = *(v36 - 8);
  v38 = v37[8];
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39);
  v175 = &v174 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v199 = &v174 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v197 = &v174 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v200 = (&v174 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v204 = &v174 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v174 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v174 - v55;
  v57 = sub_2664DF238();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  sub_2664DF228();
  v60 = MEMORY[0x266782230]();

  v187 = v60;
  if (v60)
  {
    v196 = v4;
    if (qword_280F914E8 != -1)
    {
      goto LABEL_68;
    }

    while (1)
    {
      v61 = __swift_project_value_buffer(v36, qword_280F914F0);
      swift_beginAccess();
      v62 = v37[2];
      v183 = v61;
      v182 = v37 + 2;
      v181 = v62;
      v62(v56, v61, v36);
      v63 = sub_2664DFE18();
      v64 = sub_2664E06C8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_26629C000, v63, v64, "OnscreenAppProvider#retrieveOnScreenApp Checking for Onscreen App", v65, 2u);
        MEMORY[0x266784AD0](v65, -1, -1);
      }

      v66 = v37[1];
      v185 = v37 + 1;
      v184 = v66;
      v66(v56, v36);
      v215 = MEMORY[0x277D84F90];
      v67 = v212[4];
      __swift_project_boxed_opaque_existential_1(v212, v212[3]);
      v68 = sub_2664DFEA8();
      v69 = *(v68 + 48);
      v70 = *(v68 + 52);
      swift_allocObject();

      sub_2664DFE98();
      sub_2664DFCF8();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v214 = *v29;
        v71 = v214;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
        swift_willThrowTypedImpl();
        v181(v54, v183, v36);
        v72 = v71;
        v73 = sub_2664DFE18();
        v74 = sub_2664E06D8();

        v75 = v36;
        if (os_log_type_enabled(v73, v74))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v214 = v77;
          *v76 = 136315138;
          swift_getErrorValue();
          v78 = sub_2664E0DE8();
          v80 = sub_2662A320C(v78, v79, &v214);

          *(v76 + 4) = v80;
          _os_log_impl(&dword_26629C000, v73, v74, "OnscreenAppProvider#retrieveOnScreenApp reference resolution failed with error: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x266784AD0](v77, -1, -1);
          MEMORY[0x266784AD0](v76, -1, -1);
        }

        else
        {
        }

        v184(v54, v75);
        goto LABEL_64;
      }

      v174 = v36;
      v54 = v209;
      v85 = v210;
      v86 = v213;
      (*(v210 + 32))(v213, v29, v209);
      v87 = v205;
      (*(v85 + 16))(v205, v86, v54);
      v88 = (*(v85 + 88))(v87, v54);
      if (v88 == *MEMORY[0x277D5FEC0])
      {
        v212 = v0;
        (*(v85 + 96))(v87, v54);
        v89 = v195;
        v90 = *(v195 + 32);
        v91 = v207;
        v92 = v194;
        v211 = v195 + 32;
        v205 = v90;
        (v90)(v207, v87, v194);
        v93 = v204;
        v94 = v174;
        v181(v204, v183, v174);
        v95 = *(v89 + 16);
        v96 = v201;
        v95(v201, v91, v92);
        v97 = sub_2664DFE18();
        v98 = sub_2664E06C8();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v200 = v95;
          v100 = v99;
          v101 = swift_slowAlloc();
          v214 = v101;
          *v100 = 136315138;
          sub_2663029EC();
          v102 = sub_2664E0D48();
          v103 = v96;
          v105 = v104;
          v201 = *(v89 + 8);
          (v201)(v103, v92);
          v106 = sub_2662A320C(v102, v105, &v214);

          *(v100 + 4) = v106;
          _os_log_impl(&dword_26629C000, v97, v98, "OnscreenAppProvider#retrieveOnScreenApp found match: %s", v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v101);
          MEMORY[0x266784AD0](v101, -1, -1);
          v107 = v100;
          v95 = v200;
          MEMORY[0x266784AD0](v107, -1, -1);

          v108 = v204;
        }

        else
        {

          v201 = *(v89 + 8);
          (v201)(v96, v92);
          v108 = v93;
        }

        v184(v108, v94);
        v110 = v196;
        v37 = v206;
        v54 = v203;
        v95(v203, v207, v92);
        v123 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
        v125 = v123[2];
        v124 = v123[3];
        v36 = v92;
        v126 = v209;
        if (v125 >= v124 >> 1)
        {
          v123 = sub_266384A74(v124 > 1, v125 + 1, 1, v123);
        }

        v0 = v212;
        v29 = v195;
        (v201)(v207, v36);
        (*(v210 + 8))(v213, v126);
        v123[2] = v125 + 1;
        v127 = v29;
        (v205)(v123 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v125, v54, v36);
        v215 = v123;
      }

      else
      {
        v109 = v174;
        v110 = v196;
        if (v88 == *MEMORY[0x277D5FED0])
        {
          (*(v85 + 96))(v87, v54);
          v111 = *v87;
          v112 = v200;
          v181(v200, v183, v109);

          v113 = sub_2664DFE18();
          v29 = sub_2664E06C8();

          if (os_log_type_enabled(v113, v29))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v214 = v115;
            *v114 = 136315138;
            v36 = v194;
            v116 = MEMORY[0x2667834D0](v111, v194);
            v118 = sub_2662A320C(v116, v117, &v214);
            v212 = v111;
            v119 = v112;
            v120 = v118;
            v110 = v196;

            *(v114 + 4) = v120;
            _os_log_impl(&dword_26629C000, v113, v29, "OnscreenAppProvider#retrieveOnScreenApp found multiple matches: %s", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v115);
            v121 = v115;
            v85 = v210;
            MEMORY[0x266784AD0](v121, -1, -1);
            MEMORY[0x266784AD0](v114, -1, -1);

            v122 = v119;
            v111 = v212;
            v184(v122, v174);
          }

          else
          {

            v184(v112, v109);
            v36 = v194;
          }

          v37 = v206;
          sub_2662FA148(v111, sub_266384A74, MEMORY[0x277D5FE08]);
          (*(v85 + 8))(v213, v54);
          v127 = v195;
        }

        else
        {
          if (v88 == *MEMORY[0x277D5FEC8] || v88 == *MEMORY[0x277D5FED8] || v88 != *MEMORY[0x277D5FEE0])
          {
            v131 = *(v85 + 8);
            v131(v87, v54);
            v29 = v199;
            v181(v199, v183, v109);
            v132 = sub_2664DFE18();
            v133 = sub_2664E06D8();
            if (os_log_type_enabled(v132, v133))
            {
              v29 = swift_slowAlloc();
              *v29 = 0;
              _os_log_impl(&dword_26629C000, v132, v133, "OnscreenAppProvider#retrieveOnScreenApp Unknown/unsupported result type", v29, 2u);
              MEMORY[0x266784AD0](v29, -1, -1);

              v134 = v199;
            }

            else
            {

              v134 = v29;
            }

            v184(v134, v109);
            v131(v213, v54);
          }

          else
          {
            v128 = v197;
            v181(v197, v183, v174);
            v129 = sub_2664DFE18();
            v130 = sub_2664E06C8();
            if (os_log_type_enabled(v129, v130))
            {
              v29 = swift_slowAlloc();
              *v29 = 0;
              _os_log_impl(&dword_26629C000, v129, v130, "OnscreenAppProvider#retrieveOnScreenApp No app on screen", v29, 2u);
              MEMORY[0x266784AD0](v29, -1, -1);
            }

            v184(v128, v109);
            (*(v85 + 8))(v213, v54);
          }

          v36 = v194;
          v127 = v195;
          v37 = v206;
        }
      }

      v135 = v215;
      v191 = v215[2];
      if (!v191)
      {
        break;
      }

      v136 = 0;
      v190 = v127 + 16;
      v189 = (v180 + 8);
      v207 = (v208 + 16);
      LODWORD(v206) = *MEMORY[0x277D5FE90];
      LODWORD(v209) = *MEMORY[0x277D5FDF0];
      v56 = (v208 + 104);
      v205 = (v208 + 8);
      LODWORD(v203) = *MEMORY[0x277D5FE78];
      v196 = (v127 + 32);
      v186 = (v127 + 8);
      v197 = MEMORY[0x277D84F90];
      v188 = v215;
      v204 = (v208 + 104);
      while (v136 < v135[2])
      {
        v200 = ((*(v127 + 80) + 32) & ~*(v127 + 80));
        v199 = *(v127 + 72);
        (*(v127 + 16))(v202, v200 + v135 + v199 * v136, v36);
        v201 = v136 + 1;
        v137 = v192;
        sub_2664DFE78();
        v138 = sub_2664DFF08();
        (*v189)(v137, v193);
        v139 = 0;
        v140 = *(v138 + 16);
        v210 = v138;
        v211 = v140;
        v141 = v209;
        while (1)
        {
          if (v211 == v139)
          {
            v36 = v194;
            (*v186)(v202, v194);

            v127 = v195;
            goto LABEL_41;
          }

          if (v139 >= *(v138 + 16))
          {
            __break(1u);
            goto LABEL_67;
          }

          v142 = v208;
          v143 = v138 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
          v144 = *(v208 + 72);
          v212 = v139;
          (*(v208 + 16))(v37, v143 + v144 * v139, v0);
          v145 = sub_2664DFEB8();
          v146 = *(*(v145 - 8) + 104);
          v146(v110, v206, v145);
          v147 = *(v142 + 104);
          v147(v110, v141, v0);
          LODWORD(v213) = sub_2664DFE58();
          v54 = *(v142 + 8);
          (v54)(v110, v0);
          if (v213)
          {
            break;
          }

          v148 = v212 + 1;
          v146(v110, v203, v145);
          v36 = v209;
          v149 = v204;
          v147(v110, v209, v0);
          v29 = sub_2664DFE58();
          (v54)(v110, v0);
          (v54)(v37, v0);
          v139 = v148;
          v141 = v36;
          v56 = v149;
          v138 = v210;
          if (v29)
          {

            goto LABEL_50;
          }
        }

        (v54)(v37, v0);
        v56 = v204;
LABEL_50:
        v150 = *v196;
        v36 = v194;
        (*v196)(v198, v202, v194);
        v151 = v197;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v214 = v151;
        if (isUniquelyReferenced_nonNull_native)
        {
          v127 = v195;
          v153 = v151;
        }

        else
        {
          sub_2662FD058(0, *(v151 + 16) + 1, 1);
          v153 = v214;
          v127 = v195;
        }

        v155 = *(v153 + 16);
        v154 = *(v153 + 24);
        v29 = v155 + 1;
        if (v155 >= v154 >> 1)
        {
          sub_2662FD058(v154 > 1, v155 + 1, 1);
          v127 = v195;
          v153 = v214;
        }

        *(v153 + 16) = v29;
        v197 = v153;
        v150(v200 + v153 + v155 * v199, v198, v36);
LABEL_41:
        v136 = v201;
        v135 = v188;
        if (v201 == v191)
        {
          goto LABEL_57;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      swift_once();
    }

    v197 = MEMORY[0x277D84F90];
LABEL_57:

    if (*(v197 + 2))
    {
      v156 = v178;
      (*(v127 + 16))(v178, &v197[(*(v127 + 80) + 32) & ~*(v127 + 80)], v36);
      v157 = 0;
      v158 = v174;
      v159 = v36;
    }

    else
    {
      v157 = 1;
      v158 = v174;
      v159 = v36;
      v156 = v178;
    }

    (*(v127 + 56))(v156, v157, 1, v159);
    v160 = v179;
    sub_2662A7224(v156, v179, &qword_280072870, &qword_2664E4E58);
    if ((*(v127 + 48))(v160, 1, v159) != 1)
    {
      v167 = v176;
      (*(v127 + 32))(v176, v160, v159);
      v168 = v177;
      v169 = v127;
      sub_2664DFE78();
      v170 = sub_2664DFEC8();
      v172 = v171;

      (*(v180 + 8))(v168, v193);
      (*(v169 + 8))(v167, v159);
      sub_2662A9238(v156, &qword_280072870, &qword_2664E4E58);
      v166 = v172;
      v165 = v170;
      goto LABEL_69;
    }

    sub_2662A9238(v160, &qword_280072870, &qword_2664E4E58);
    v161 = v175;
    v181(v175, v183, v158);
    v162 = sub_2664DFE18();
    v163 = sub_2664E06C8();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&dword_26629C000, v162, v163, "OnscreenAppProvider#retrieveOnScreenApp foreground App not found", v164, 2u);
      MEMORY[0x266784AD0](v164, -1, -1);
    }

    v184(v161, v158);
    sub_2662A9238(v156, &qword_280072870, &qword_2664E4E58);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v81 = __swift_project_value_buffer(v36, qword_280F914F0);
    swift_beginAccess();
    (v37[2])(v41, v81, v36);
    v82 = sub_2664DFE18();
    v83 = sub_2664E06D8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_26629C000, v82, v83, "OnscreenAppProvider#retrieveOnScreenApp failed to create App from builder", v84, 2u);
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    (v37[1])(v41, v36);
  }

LABEL_64:
  v165 = 0;
  v166 = 0;
LABEL_69:
  result.value._object = v166;
  result.value._countAndFlagsBits = v165;
  return result;
}

uint64_t OnscreenEntityProvider.resolveSalientOnscreenMediaItem(from:using:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v72 = a3;
  v73 = a4;
  v70 = a2;
  v5 = sub_2664DFC48();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v67 - v10;
  v12 = sub_2664DFE38();
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v67 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v67 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v67 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v67 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (CommonIntentSignals.hasDefiniteReferenceRequest()())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = v75;
    v30 = __swift_project_value_buffer(v75, qword_280F914F0);
    swift_beginAccess();
    v31 = v74;
    (*(v74 + 16))(v27, v30, v29);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06B8();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v73;
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "OnscreenAppProvider#resolveSalientOnscreenMediaItem intent is definite reference for onscreen entity. Fetching first onscreen media item...", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    (*(v31 + 8))(v27, v29);

    sub_2663092DC(v71, v72, v35);
  }

  else
  {
    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v76 = CommonIntentSignals.onscreenMediaItemListPosition()();
    if (v76.is_nil)
    {
      if (v70)
      {
        INMediaSearch.toAudioMediaItem()();
        v40 = v68;
        v39 = v69;
        (*(v68 + 32))(v11, v9, v69);
        v41 = v73;
        v42 = v74;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v43 = v75;
        v44 = __swift_project_value_buffer(v75, qword_280F914F0);
        swift_beginAccess();
        (*(v42 + 16))(v19, v44, v43);
        v45 = sub_2664DFE18();
        v46 = sub_2664E06B8();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_26629C000, v45, v46, "OnscreenAppProvider#resolveSalientOnscreenMediaItem looking for onscreen entity matching search...", v47, 2u);
          MEMORY[0x266784AD0](v47, -1, -1);
        }

        (*(v42 + 8))(v19, v43);

        sub_266300E6C(v11, v71, v72, v41);

        return (*(v40 + 8))(v11, v39);
      }

      else
      {
        v61 = v74;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v62 = v75;
        v63 = __swift_project_value_buffer(v75, qword_280F914F0);
        swift_beginAccess();
        (*(v61 + 16))(v16, v63, v62);
        v64 = sub_2664DFE18();
        v65 = sub_2664E06E8();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_26629C000, v64, v65, "OnscreenAppProvider#resolveSalientOnscreenMediaItem no conditions met, returning nil", v66, 2u);
          MEMORY[0x266784AD0](v66, -1, -1);
        }

        (*(v61 + 8))(v16, v62);
        return v72(0);
      }
    }

    else
    {
      value = v76.value;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v49 = v75;
      v50 = __swift_project_value_buffer(v75, qword_280F914F0);
      swift_beginAccess();
      v51 = *(v74 + 16);
      v51(v25, v50, v49);
      v52 = sub_2664DFE18();
      v53 = sub_2664E06B8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = value;
        _os_log_impl(&dword_26629C000, v52, v53, "OnscreenAppProvider#resolveSalientOnscreenMediaItem onscreen media item list position was found: %ld", v54, 0xCu);
        MEMORY[0x266784AD0](v54, -1, -1);
      }

      v55 = v75;
      v56 = *(v74 + 8);
      v56(v25, v75);
      v51(v22, v50, v55);
      v57 = v73;
      swift_retain_n();
      v58 = sub_2664DFE18();
      v59 = sub_2664E06C8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 134217984;
        *(v60 + 4) = value;
        _os_log_impl(&dword_26629C000, v58, v59, "OnscreenEntityProvider#onScreenMediaItemAtIndex at index: %ld", v60, 0xCu);
        MEMORY[0x266784AD0](v60, -1, -1);
      }

      v56(v22, v75);
      sub_2663064A4(v71, value, value, v72, v57);
    }
  }
}

uint64_t sub_2662FC3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v57 = a4;
  v58 = a3;
  v56 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v55 = &v49[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49[-v14];
  v16 = sub_2664DFC48();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2662A7224(a1, v15, &qword_280072858, &qword_2664E4E40);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2662A9238(v15, &qword_280072858, &qword_2664E4E40);
LABEL_9:
    v42 = v5;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v10, v43, v5);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06B8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = v56;
      _os_log_impl(&dword_26629C000, v44, v45, "OnscreenAppProvider#resolveSalientOnscreenMediaItem no onscreen mediaItem found at: %ld", v46, 0xCu);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    (*(v6 + 8))(v10, v42);
    return v58(0);
  }

  (*(v17 + 32))(v20, v15, v16);
  v21 = _sSo11INMediaItemC16SiriAudioSupportE4from010audioMediaB0ABSg0cD11IntentUtils0dhB0V_tFZ_0(v20);
  if (!v21)
  {
    (*(v17 + 8))(v20, v16);
    goto LABEL_9;
  }

  v22 = v21;
  v23 = v5;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v25 = v55;
  (*(v6 + 16))(v55, v24, v23);
  v26 = v22;
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v53 = v27;
    v30 = v29;
    v52 = swift_slowAlloc();
    v59 = v52;
    *v30 = 136315394;
    v31 = v26;
    v54 = v26;
    v32 = v31;
    v33 = v22;
    v34 = [v31 description];
    v35 = sub_2664E02C8();
    v51 = v23;
    v36 = v35;
    v50 = v28;
    v38 = v37;

    v26 = v54;
    v39 = sub_2662A320C(v36, v38, &v59);

    *(v30 + 4) = v39;
    v22 = v33;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v56;
    v40 = v53;
    _os_log_impl(&dword_26629C000, v53, v50, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem: %s at: %ld", v30, 0x16u);
    v41 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);

    (*(v6 + 8))(v55, v51);
  }

  else
  {

    (*(v6 + 8))(v25, v23);
  }

  v48 = v26;
  v58(v22);

  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_2662FC988(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, const char *a4, const char *a5)
{
  v59 = a4;
  v60 = a5;
  v62 = a3;
  v63 = a2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v54 - v15;
  v17 = sub_2664DFC48();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662A7224(a1, v16, &qword_280072858, &qword_2664E4E40);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2662A9238(v16, &qword_280072858, &qword_2664E4E40);
LABEL_9:
    v47 = v6;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v48, v6);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06B8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, v60, v51, 2u);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    (*(v7 + 8))(v11, v47);
    return v63(0);
  }

  (*(v18 + 32))(v21, v16, v17);
  v22 = _sSo11INMediaItemC16SiriAudioSupportE4from010audioMediaB0ABSg0cD11IntentUtils0dhB0V_tFZ_0(v21);
  if (!v22)
  {
    (*(v18 + 8))(v21, v17);
    goto LABEL_9;
  }

  v23 = v22;
  v24 = v6;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v26 = v61;
  (*(v7 + 16))(v61, v25, v24);
  v27 = v23;
  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v55 = v28;
    v31 = v30;
    v57 = swift_slowAlloc();
    v64 = v57;
    *v31 = 136315138;
    v32 = v27;
    v60 = v27;
    v33 = v32;
    v34 = [v32 description];
    v58 = v23;
    v35 = v34;
    v36 = sub_2664E02C8();
    v56 = v24;
    v37 = v36;
    v38 = v29;
    v40 = v39;

    v27 = v60;
    v41 = sub_2662A320C(v37, v40, &v64);

    v42 = v31;
    *(v31 + 4) = v41;
    v23 = v58;
    v43 = v38;
    v44 = v55;
    v45 = v42;
    _os_log_impl(&dword_26629C000, v55, v43, v59, v42, 0xCu);
    v46 = v57;
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);

    (*(v7 + 8))(v61, v56);
  }

  else
  {

    (*(v7 + 8))(v26, v24);
  }

  v53 = v27;
  v63(v23);

  return (*(v18 + 8))(v21, v17);
}

char *sub_2662FCF04(char *a1, int64_t a2, char a3)
{
  result = sub_2662FD284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FCF24(char *a1, int64_t a2, char a3)
{
  result = sub_2662FD3A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FCF44(char *a1, int64_t a2, char a3)
{
  result = sub_2662FD4B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FCF64(void *a1, int64_t a2, char a3)
{
  result = sub_2662FD5BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FCF84(char *a1, int64_t a2, char a3)
{
  result = sub_2662FE1B4(a1, a2, a3, *v3, &unk_280073AA0, &unk_2664E4F40);
  *v3 = result;
  return result;
}

void *sub_2662FCFB4(void *a1, int64_t a2, char a3)
{
  result = sub_2662FD728(a1, a2, a3, *v3, &qword_2800728B0, &unk_2664F0500, &qword_2800728B8, &unk_2664E4F20);
  *v3 = result;
  return result;
}

size_t sub_2662FCFF4(size_t a1, int64_t a2, char a3)
{
  result = sub_2662FE3F8(a1, a2, a3, *v3, &qword_280072930, &unk_2664E4FB0, MEMORY[0x277D5BCE8]);
  *v3 = result;
  return result;
}

char *sub_2662FD038(char *a1, int64_t a2, char a3)
{
  result = sub_2662FD870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2662FD058(size_t a1, int64_t a2, char a3)
{
  result = sub_2662FE3F8(a1, a2, a3, *v3, &qword_280072928, &qword_2664E4FA8, MEMORY[0x277D5FE08]);
  *v3 = result;
  return result;
}

void *sub_2662FD09C(void *a1, int64_t a2, char a3)
{
  result = sub_2662FD980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FD0BC(char *a1, int64_t a2, char a3)
{
  result = sub_2662FDAB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FD0DC(void *a1, int64_t a2, char a3)
{
  result = sub_2662FDBB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FD0FC(char *a1, int64_t a2, char a3)
{
  result = sub_2662FDCEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2662FD11C(size_t a1, int64_t a2, char a3)
{
  result = sub_2662FE3F8(a1, a2, a3, *v3, &qword_280072920, &qword_2664E4FA0, type metadata accessor for SearchItem);
  *v3 = result;
  return result;
}

char *sub_2662FD160(char *a1, int64_t a2, char a3)
{
  result = sub_2662FE1B4(a1, a2, a3, *v3, &qword_280072548, &qword_2664E39B0);
  *v3 = result;
  return result;
}

void *sub_2662FD190(void *a1, int64_t a2, char a3)
{
  result = sub_2662FDDF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FD1B0(void *a1, int64_t a2, char a3)
{
  result = sub_2662FDF38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FD1D0(void *a1, int64_t a2, char a3)
{
  result = sub_2662FE06C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FD1F0(char *a1, int64_t a2, char a3)
{
  result = sub_2662FE1B4(a1, a2, a3, *v3, &qword_2800728F0, &qword_2664E4F60);
  *v3 = result;
  return result;
}

void *sub_2662FD220(void *a1, int64_t a2, char a3)
{
  result = sub_2662FE2B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2662FD240(size_t a1, int64_t a2, char a3)
{
  result = sub_2662FE3F8(a1, a2, a3, *v3, &qword_280072908, &qword_2664E4F78, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

char *sub_2662FD284(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072940, &unk_2664E4FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FD3A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FD4B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072938, qword_2664EBFD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FD5BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072878, &qword_2664E4ED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072880, &unk_2664E4EE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FD728(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2662FD870(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C8, &qword_2664E4F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FD980(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728F8, &qword_2664E4F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072900, &qword_2664E4F70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FDAB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C0, &unk_2664EAA90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2662FDBB8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072888, &qword_2664E4EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072890, &qword_2664E4EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FDCEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072898, &qword_2664E4F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2662FDDF0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FDF38(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072910, &unk_2664E4F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FE06C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728A0, &qword_2664E4F08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728A8, &unk_2664E4F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FE1B4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_2662FE2B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728E8, &unk_2664E4F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2662FE3F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2662FE5D4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2664E0A68();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2664E0B68();
  *v1 = result;
  return result;
}

uint64_t sub_2662FE674(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2664E0A68();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2664E0A68();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_266309518();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728D8, &qword_2664E4F38);
            v9 = sub_2663D13C0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2663094CC();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2662FE7F4(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t a7)
{
  v133 = a6;
  v134 = a7;
  v139 = a5;
  v142 = a4;
  v144 = a2;
  v136 = a1;
  v8 = sub_2664DFC48();
  v135 = *(v8 - 1);
  v9 = *(v135 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v122 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v126 = v122 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v125 = v122 - v18;
  MEMORY[0x28223BE20](v17);
  v141 = v122 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v132 = v122 - v22;
  v23 = sub_2664DFE38();
  v137 = *(v23 - 8);
  v138 = v23;
  v24 = *(v137 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v128 = v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v129 = v122 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v131 = v122 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v130 = v122 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = v122 - v33;
  v143 = v8;
  v140 = a3;
  if (a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v138;
    v36 = __swift_project_value_buffer(v138, qword_280F914F0);
    swift_beginAccess();
    v37 = v137;
    v38 = v137 + 16;
    v122[0] = *(v137 + 16);
    (v122[0])(v34, v36, v35);
    v39 = v140;

    v40 = sub_2664DFE18();
    v41 = sub_2664E06C8();

    v42 = os_log_type_enabled(v40, v41);
    v123 = v36;
    v122[1] = v38;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v145[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2662A320C(v144, v39, v145);
      _os_log_impl(&dword_26629C000, v40, v41, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem search in results matching title: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      v45 = v43;
      v8 = v143;
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v124 = *(v37 + 8);
    v124(v34, v35);
    v46 = *(v136 + 16);
    if (v46)
    {
      v47 = *(v135 + 16);
      v48 = v136 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
      v49 = (v135 + 8);
      v50 = *(v135 + 72);
      v47(v14, v48, v8);
      while (1)
      {
        sub_2664DFC28();
        if (v52)
        {
          v53 = sub_2664E0328();
          v55 = v54;

          if (v53 == v144 && v55 == v140)
          {

            v8 = v143;
LABEL_15:
            v56 = v128;
            (v122[0])(v128, v123, v138);
            v57 = v127;
            v47(v127, v14, v8);
            v58 = sub_2664DFE18();
            v59 = v8;
            v60 = sub_2664E06C8();
            if (os_log_type_enabled(v58, v60))
            {
              v61 = swift_slowAlloc();
              v144 = swift_slowAlloc();
              v145[0] = v144;
              *v61 = 136315138;
              v47(v126, v57, v59);
              v142 = sub_2664E0318();
              v62 = v57;
              v64 = v63;
              LODWORD(v143) = v60;
              v65 = *v49;
              (*v49)(v62, v59);
              v66 = sub_2662A320C(v142, v64, v145);

              *(v61 + 4) = v66;
              _os_log_impl(&dword_26629C000, v58, v143, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem returning on-screen media item: %s.", v61, 0xCu);
              v67 = v144;
              __swift_destroy_boxed_opaque_existential_1Tm(v144);
              MEMORY[0x266784AD0](v67, -1, -1);
              MEMORY[0x266784AD0](v61, -1, -1);

              v68 = v128;
            }

            else
            {

              v65 = *v49;
              (*v49)(v57, v59);
              v68 = v56;
            }

            v124(v68, v138);
            v119 = v132;
            v47(v132, v14, v59);
            (*(v135 + 56))(v119, 0, 1, v59);
            sub_2662FC988(v119, v133, v134, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem matching request: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no matching onscreen mediaItem found.");
            sub_2662A9238(v119, &qword_280072858, &qword_2664E4E40);
            v120 = v14;
            return (v65)(v120, v59);
          }

          v51 = sub_2664E0D88();

          v8 = v143;
          if (v51)
          {
            goto LABEL_15;
          }
        }

        (*v49)(v14, v8);
        v48 += v50;
        if (!--v46)
        {
          break;
        }

        v47(v14, v48, v8);
      }
    }
  }

  v69 = v141;
  if (!v139)
  {
    goto LABEL_33;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v70 = v138;
  v71 = __swift_project_value_buffer(v138, qword_280F914F0);
  swift_beginAccess();
  v72 = v137;
  v73 = *(v137 + 16);
  v74 = v130;
  v140 = v71;
  v128 = v73;
  (v73)(v130, v71, v70);
  v75 = v139;

  v76 = sub_2664DFE18();
  v77 = sub_2664E06C8();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v145[0] = v79;
    *v78 = 136315138;
    *(v78 + 4) = sub_2662A320C(v142, v75, v145);
    _os_log_impl(&dword_26629C000, v76, v77, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem search in results matching artist: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    v80 = v79;
    v8 = v143;
    MEMORY[0x266784AD0](v80, -1, -1);
    v81 = v78;
    v69 = v141;
    MEMORY[0x266784AD0](v81, -1, -1);
  }

  v144 = *(v72 + 8);
  (v144)(v74, v70);
  v82 = *(v136 + 16);
  if (!v82)
  {
LABEL_33:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v109 = v138;
    v110 = __swift_project_value_buffer(v138, qword_280F914F0);
    swift_beginAccess();
    v111 = v137;
    v112 = v131;
    (*(v137 + 16))(v131, v110, v109);
    v113 = sub_2664DFE18();
    v114 = sub_2664E06C8();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_26629C000, v113, v114, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem media item not found.", v115, 2u);
      v116 = v115;
      v8 = v143;
      MEMORY[0x266784AD0](v116, -1, -1);
    }

    (*(v111 + 8))(v112, v109);
    v117 = v132;
    (*(v135 + 56))(v132, 1, 1, v8);
    sub_2662FC988(v117, v133, v134, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem matching request: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no matching onscreen mediaItem found.");
    return sub_2662A9238(v117, &qword_280072858, &qword_2664E4E40);
  }

  v83 = *(v135 + 16);
  v84 = v136 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
  v85 = (v135 + 8);
  v86 = *(v135 + 72);
  v83(v69, v84, v8);
  while (1)
  {
    sub_2664DFC38();
    if (!v89)
    {
      goto LABEL_25;
    }

    v90 = sub_2664E0328();
    v92 = v91;

    if (v90 == v142 && v92 == v139)
    {
      break;
    }

    v87 = sub_2664E0D88();

    v8 = v143;
    if (v87)
    {
      goto LABEL_31;
    }

LABEL_25:
    v88 = v141;
    (*v85)(v141, v8);
    v84 += v86;
    if (!--v82)
    {
      goto LABEL_33;
    }

    v83(v88, v84, v8);
  }

  v8 = v143;
LABEL_31:
  v93 = v138;
  (v128)(v129, v140, v138);
  v94 = v125;
  v95 = v141;
  v83(v125, v141, v8);
  v96 = sub_2664DFE18();
  v59 = v8;
  v97 = sub_2664E06C8();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v145[0] = v143;
    *v98 = 136315138;
    v83(v126, v94, v59);
    v99 = sub_2664E0318();
    v100 = v94;
    v101 = v99;
    v103 = v102;
    LODWORD(v142) = v97;
    v65 = *v85;
    (*v85)(v100, v59);
    v104 = sub_2662A320C(v101, v103, v145);

    *(v98 + 4) = v104;
    _os_log_impl(&dword_26629C000, v96, v142, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem returning on-screen media item: %s.", v98, 0xCu);
    v105 = v143;
    __swift_destroy_boxed_opaque_existential_1Tm(v143);
    MEMORY[0x266784AD0](v105, -1, -1);
    v106 = v98;
    v95 = v141;
    MEMORY[0x266784AD0](v106, -1, -1);

    v107 = v138;
    v108 = v129;
  }

  else
  {

    v65 = *v85;
    (*v85)(v94, v59);
    v108 = v129;
    v107 = v93;
  }

  (v144)(v108, v107);
  v121 = v132;
  v83(v132, v95, v59);
  (*(v135 + 56))(v121, 0, 1, v59);
  sub_2662FC988(v121, v133, v134, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem matching request: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no matching onscreen mediaItem found.");
  sub_2662A9238(v121, &qword_280072858, &qword_2664E4E40);
  v120 = v95;
  return (v65)(v120, v59);
}