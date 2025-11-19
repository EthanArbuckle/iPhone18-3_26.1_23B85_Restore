uint64_t sub_222A41E6C()
{
  v1 = MEMORY[0x277D85000];
  v2 = *MEMORY[0x277D85000] & *v0;
  v3 = *(v2 + 0x50);
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v4 = sub_222B02718();
  v5 = sub_222B02B28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v27 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = v27 - v17;
  v19 = *(v2 + 88);
  v20 = *(v0 + v19);
  if (v20 >= 2)
  {
    sub_222A42840(*(v0 + v19));
    v2 = *v1 & *v0;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v2 + 88);
  v22 = *(v0 + v21);
  *(v0 + v21) = 1;
  sub_222A34E38(v22);
  [v20 cancel];
  sub_222A40C30(v18);
  v23 = *(v4 - 8);
  (*(v23 + 56))(v15, 1, 1, v4);
  sub_222A40D2C(v15);
  (*(v6 + 16))(v11, v18, v5);
  if ((*(v23 + 48))(v11, 1, v4) == 1)
  {
    v24 = *(v6 + 8);
    v24(v18, v5);

    return (v24)(v11, v5);
  }

  else
  {
    sub_222B02728();
    sub_222A34DE0();
    v26 = swift_allocError();
    sub_222B02298();
    v27[1] = v26;
    sub_222B026F8();

    (*(v6 + 8))(v18, v5);
    return (*(v23 + 8))(v11, v4);
  }
}

void sub_222A42190(void *a1)
{
  v1 = a1;
  sub_222A41E6C();
}

void sub_222A421D8(uint64_t a1)
{
  v23 = a1;
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v3 = sub_222B02B28();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v8 = sub_222B02718();
  v9 = sub_222B02B28();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v22 - v17;
  sub_222A40C30(&v22 - v17);
  v19 = *(v8 - 8);
  v20 = (*(v19 + 48))(v18, 1, v8);
  (*(v10 + 8))(v18, v9);
  if (v20 == 1)
  {
    v21 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x58));
    if (v21)
    {
      if (v21 == 1)
      {
        (*(*(v2 - 8) + 56))(v7, 1, 1, v2);
        sub_222B02708();
      }

      else
      {
        (*(v19 + 16))(v15, v23, v8);
        (*(v19 + 56))(v15, 0, 1, v8);
        sub_222A42840(v21);
        sub_222A40D2C(v15);
        [v21 requestDemand_];
        sub_222A34E38(v21);
      }
    }

    else
    {
      (*(v19 + 16))(v15, v23, v8);
      (*(v19 + 56))(v15, 0, 1, v8);
      sub_222A40D2C(v15);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_222A42514()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_222A41E6C();
  v3 = *((v2 & v1) + 0x50);
  v5.receiver = v0;
  v5.super_class = _s17AsyncAwaitAdapterCMa();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_222A425AC(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];
  sub_222A34E38(*&a1[*((*MEMORY[0x277D85000] & *a1) + 0x58)]);
  v5 = *((*v2 & *a1) + 0x60);
  v6 = *((v4 & v3) + 0x50);
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  sub_222B02718();
  v7 = sub_222B02B28();
  v8 = *(*(v7 - 8) + 8);

  return v8(&a1[v5], v7);
}

id sub_222A426B8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_222A426EC()
{
  v1 = MEMORY[0x277D85000];
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  *&v0[*((*MEMORY[0x277D85000] & *v0) + 0x58)] = 0;
  v4 = *((*v1 & *v0) + 0x60);
  v5 = *((v3 & v2) + 0x50);
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v6 = sub_222B02718();
  (*(*(v6 - 8) + 56))(&v0[v4], 1, 1, v6);
  v8.receiver = v0;
  v8.super_class = _s17AsyncAwaitAdapterCMa();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_222A42840(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

unint64_t sub_222A42850()
{
  result = qword_27D01D130;
  if (!qword_27D01D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D130);
  }

  return result;
}

uint64_t UniversalSuggestionsCoreDataStorePolicies.runPolicy(store:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 24);
  return sub_222B02A58();
}

uint64_t sub_222A4290C(uint64_t a1, void *a2, void *a3)
{
  v38[5] = *MEMORY[0x277D85DE8];
  v7 = &v37;
  type metadata accessor for UniversalSuggestionEvictor();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_222A42E10;
  *(v8 + 24) = 0;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D140, qword_222B068D0);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v8;
  v12[4] = KeyPath;
  v12[5] = v10;
  v38[3] = v11;
  v38[4] = &protocol witness table for MaximumRecordCountPolicy<A, B, C, D>;
  v38[0] = v12;
  v33 = MEMORY[0x277D84F90];
  sub_222A23C04(0, 1, 0);
  v13 = v33;
  sub_222A42E40(v38, v34);
  v14 = v35;
  v15 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v32 = a2;
  (*(*(v15 + 8) + 16))(&v32, v14);
  if (v3)
  {
    a3 = v3;
LABEL_6:
    LOBYTE(v18) = 1;
    goto LABEL_7;
  }

  v16 = a3[3];
  v32 = 0;
  if (([v16 save_] & 1) == 0)
  {
    v19 = v32;
    a3 = sub_222B01628();

    swift_willThrow();
    goto LABEL_6;
  }

  v17 = v32;
  LOBYTE(v18) = 0;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v34);
  v21 = *(v13 + 16);
  v20 = *(v13 + 24);
  v22 = v21 + 1;
  if (v21 >= v20 >> 1)
  {
LABEL_23:
    sub_222A23C04((v20 > 1), v22, 1);
    v13 = v33;
  }

  *(v13 + 16) = v22;
  v23 = v13 + 16 * v21;
  *(v23 + 32) = a3;
  *(v23 + 40) = v18;
  __swift_destroy_boxed_opaque_existential_0((v7 + 32));
  v18 = 0;
  v21 = *(v13 + 16);
  v24 = MEMORY[0x277D84F90];
LABEL_9:
  v20 = v13 + 40 + 16 * v18;
  while (v21 != v18)
  {
    if (v18 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    v25 = v20 + 16;
    ++v18;
    v26 = *v20;
    v20 += 16;
    if (v26 == 1)
    {
      a3 = *(v25 - 24);
      v27 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_222AA9364(0, v24[2] + 1, 1, v24);
      }

      v7 = v24[2];
      v28 = v24[3];
      v22 = v7 + 1;
      if (v7 >= v28 >> 1)
      {
        v24 = sub_222AA9364((v28 > 1), v7 + 1, 1, v24);
      }

      v24[2] = v22;
      v24[v7 + 4] = a3;
      goto LABEL_9;
    }
  }

  if (v24[2])
  {
    sub_222A42EA4();
    swift_allocError();
    *v29 = v24;
    result = swift_willThrow();
  }

  else
  {
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222A42C64(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*a1 + 24);
  return sub_222B02A58();
}

uint64_t getEnumTagSinglePayload for UniversalSuggestionsCoreDataStorePolicies(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UniversalSuggestionsCoreDataStorePolicies(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_222A42D1C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UniversalSuggestionEvictor()
{
  result = qword_280CB5A30;
  if (!qword_280CB5A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222A42DD8()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_222A42E40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_222A42EA4()
{
  result = qword_27D01D148;
  if (!qword_27D01D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D148);
  }

  return result;
}

uint64_t UniversalSuggestion.candidates.getter()
{
  v1 = *(v0 + *(type metadata accessor for UniversalSuggestion(0) + 24));
}

uint64_t static UniversalSuggestion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_222B01888() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for UniversalSuggestion(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_222B02F78() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_222A43024(v11, v12);
}

uint64_t sub_222A43024(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for UniversalCandidate(0);
  v4 = *(*(v45 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v45, v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v12 = &v42 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v43 = *(v10 + 72);
  v44 = v8;
  while (1)
  {
    sub_222A43DEC(v15, v12);
    sub_222A43DEC(v16, v8);
    v17 = *(v45 + 20);
    v18 = *&v12[v17];
    v19 = *&v8[v17];
    v20 = sub_222B01C08();
    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 >> 62)
    {
      v29 = v20;
      v30 = sub_222B02DC8();
      v20 = v29;
      if (!v30)
      {
LABEL_16:

LABEL_17:
        v24 = 0;
        v26 = 0;
        goto LABEL_18;
      }
    }

    else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DC6F00](0, v20);
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

    v22 = *(v21 + 16);

    if (!v22)
    {
      break;
    }

LABEL_12:
    v46 = v18;
    v24 = sub_222A67BDC();
    v26 = v25;
    if (v25)
    {
      v46 = v18;
      v27 = sub_222A67F6C();
      if (v28)
      {
        v46 = v27;
        v47 = v28;

        MEMORY[0x223DC66E0](v24, v26);

        v24 = v46;
        v26 = v47;
      }
    }

LABEL_18:
    v31 = sub_222B01C08();
    if (!v31)
    {
      goto LABEL_28;
    }

    v32 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 >> 62)
    {
      v39 = v31;
      v40 = sub_222B02DC8();
      v31 = v39;
      if (!v40)
      {
LABEL_27:

LABEL_28:
        v34 = 0;
        v36 = 0;
        goto LABEL_29;
      }
    }

    else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((v31 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DC6F00](0, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = *(v32 + 16);

      if (!v33)
      {
        goto LABEL_43;
      }
    }

    v46 = v19;
    v34 = sub_222A67BDC();
    v36 = v35;
    if (v35)
    {
      v46 = v19;
      v37 = sub_222A67F6C();
      if (v38)
      {
        v46 = v37;
        v47 = v38;

        MEMORY[0x223DC66E0](v34, v36);

        v34 = v46;
        v36 = v47;
      }
    }

LABEL_29:
    if (v26)
    {
      if (!v36)
      {

        sub_222A4432C(v44);
        sub_222A4432C(v12);
        return 0;
      }

      if (v24 == v34 && v26 == v36)
      {

        v8 = v44;
        sub_222A4432C(v44);
        sub_222A4432C(v12);
      }

      else
      {
        v41 = sub_222B02F78();

        v8 = v44;
        sub_222A4432C(v44);
        sub_222A4432C(v12);
        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v8 = v44;
      sub_222A4432C(v44);
      sub_222A4432C(v12);
      if (v36)
      {

        return 0;
      }
    }

    v16 += v43;
    v15 += v43;
    if (!--v13)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_222A43424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_222B02F78() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_222A434B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_222B01888() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_222B02F78() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_222A43024(v12, v13);
}

uint64_t sub_222A43560(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_222A435F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UniversalCandidate.candidateEntity.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for UniversalCandidate(0) + 20));
}

uint64_t UniversalCandidate.score.setter(double a1)
{
  result = type metadata accessor for UniversalCandidate(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t UniversalCandidate.lastSurfaced.setter(double a1)
{
  result = type metadata accessor for UniversalCandidate(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

int *UniversalCandidate.init(id:node:score:lastSurfaced:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *a2;
  v12 = sub_222B018D8();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = type metadata accessor for UniversalCandidate(0);
  *(a5 + result[5]) = v11;
  *(a5 + result[6]) = a6;
  v14 = a3;
  if (a4)
  {
    v14 = 0.0;
  }

  *(a5 + result[7]) = v14;
  return result;
}

uint64_t static UniversalCandidate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for UniversalCandidate(0) + 20);
  v5 = *(a1 + v4);
  v7 = *(a2 + v4);
  v8 = v5;

  LOBYTE(a2) = _s28SiriPrivateLearningAnalytics15UniversalEntityO2eeoiySbAC_ACtFZ_0(&v8, &v7);

  return a2 & 1;
}

uint64_t sub_222A439A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v7 = *(a2 + v3);
  v8 = v4;

  v5 = _s28SiriPrivateLearningAnalytics15UniversalEntityO2eeoiySbAC_ACtFZ_0(&v8, &v7);

  return v5 & 1;
}

uint64_t UniversalSuggestionCandidate.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UniversalSuggestionCandidate(0) + 24);
  v4 = sub_222B018D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_222A43B40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a1(0) + 24);

  return a2(v5, a3);
}

uint64_t UniversalSuggestionCandidate.init(leftHandKey:rightHandValue:needsDisambiguation:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = *a1;
  v7 = type metadata accessor for UniversalSuggestionCandidate(0);
  result = sub_222A43E50(a2, a4 + *(v7 + 24));
  *a4 = a3;
  return result;
}

uint64_t _s28SiriPrivateLearningAnalytics18UniversalCandidateV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222B018D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UniversalSuggestionSurfaced.init(suggestionId:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_222B018D8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for UniversalSuggestionSurfaced(0);
  v10 = a4 + *(result + 20);
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  return result;
}

uint64_t static UniversalSuggestionSurfaced.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_222B01888() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for UniversalSuggestionSurfaced(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_222A43D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_222B01888())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = *(a2 + v6 + 8);
    if (v8)
    {
      if (v10)
      {
        return 1;
      }
    }

    else
    {
      if (*v7 != *v9)
      {
        LOBYTE(v10) = 1;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_222A43DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A43E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalCandidate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_222A43EFC()
{
  sub_222B018D8();
  if (v0 <= 0x3F)
  {
    sub_222A4407C(319, &qword_27D01D158, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222A43FCC()
{
  sub_222B018D8();
  if (v0 <= 0x3F)
  {
    sub_222A4407C(319, &qword_27D01D170, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222A4407C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UniversalCandidate(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_222A44104()
{
  result = sub_222B018D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222A441AC()
{
  result = type metadata accessor for UniversalCandidate(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_222A44258()
{
  sub_222B018D8();
  if (v0 <= 0x3F)
  {
    sub_222A442DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222A442DC()
{
  if (!qword_27D01D178)
  {
    v0 = sub_222B02B28();
    if (!v1)
    {
      atomic_store(v0, &qword_27D01D178);
    }
  }
}

uint64_t sub_222A4432C(uint64_t a1)
{
  v2 = type metadata accessor for UniversalCandidate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntentFeatureExtractor.intentTypes.getter()
{
  v0 = sub_222A446D4();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222B05250;
  *(v3 + 32) = swift_getAssociatedTypeWitness();
  return v3;
}

uint64_t IntentFeatureExtractor.extract(from:)(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 intent];
  swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = (*(a3 + 24))(v6, a2, a3);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t BiomeEventFeatureExtractorBase.extract(from:)(void *a1)
{
  v3 = *v1;
  if ([a1 error] != 1)
  {
    return MEMORY[0x277D84F90];
  }

  if (![a1 eventBody])
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D01D180, &qword_222B06AF8);
  v4 = *(v3 + 80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (*(*v1 + 96))();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_222A446D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D210, &qword_222B06C50);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D01D218;
    v3 = &unk_222B06C58;
  }

  else
  {
    v2 = &unk_27D01D220;
    v3 = &unk_222B06C60;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

id GroundTruthRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id GroundTruthRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for GroundTruthRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

uint64_t sub_222A449B4(uint64_t a1)
{
  v2 = sub_222A44B74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A449F0(uint64_t a1)
{
  v2 = sub_222A44B74();

  return MEMORY[0x2821FE720](a1, v2);
}

id GroundTruthRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroundTruthRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222A44A60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D230, &qword_222B06C70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A44B74();
  sub_222B031B8();
  return (*(v3 + 8))(v7, v2);
}

unint64_t sub_222A44B74()
{
  result = qword_27D01D238;
  if (!qword_27D01D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D238);
  }

  return result;
}

unint64_t sub_222A44C3C()
{
  result = qword_27D01D240;
  if (!qword_27D01D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D240);
  }

  return result;
}

unint64_t sub_222A44C94()
{
  result = qword_27D01D248;
  if (!qword_27D01D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D248);
  }

  return result;
}

uint64_t PLUSSchemaEventConstructor.__allocating_init(plusId:suggestionGenerationDomain:)(uint64_t a1, int a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId;
  v9 = sub_222B018D8();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = a2;
  return v7;
}

uint64_t PLUSSchemaEventConstructor.init(plusId:suggestionGenerationDomain:)(uint64_t a1, int a2)
{
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId;
  v6 = sub_222B018D8();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = a2;
  return v2;
}

void *sub_222A44DFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_222A45CBC();
  if (v5)
  {
    v6 = v5;
    v7 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D59DD8]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setSuggestionDomainMetadata_];
        [v10 setGeneratedSuggestion_];
        [v10 setSuggestionChangeDataCaptureMetadata_];
        [v6 setSuggestionGenerated_];

        return v6;
      }

      v6 = v8;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v11 = sub_222B02148();
  __swift_project_value_buffer(v11, qword_280CBC458);
  v12 = sub_222B02128();
  v13 = sub_222B028E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_222A230FC(0xD00000000000003ALL, 0x8000000222B11150, &v17);
    _os_log_impl(&dword_222A1C000, v12, v13, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DC7E30](v15, -1, -1);
    MEMORY[0x223DC7E30](v14, -1, -1);
  }

  return 0;
}

void *sub_222A44FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_222A45CBC();
  if (v7)
  {
    v8 = v7;
    v9 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v9)
    {
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x277D59DF0]) init];
      if (v11)
      {
        v12 = v11;
        [v11 setSuggestionDomainMetadata_];
        v13 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v14 = sub_222B01878();
        v15 = [v13 initWithNSUUID_];

        [v12 setSuggestionLinkId_];
        v16 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v17 = sub_222B01878();
        v18 = [v16 initWithNSUUID_];

        [v12 setOriginalRequestId_];
        [v12 setSuggestionOutcome_];
        [v12 setDomainOutcome_];
        [v8 setSuggestionOutcomeReported_];

        return v8;
      }

      v8 = v10;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v19 = sub_222B02148();
  __swift_project_value_buffer(v19, qword_280CBC458);
  v20 = sub_222B02128();
  v21 = sub_222B028E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_222A230FC(0xD00000000000005ELL, 0x8000000222B11190, &v25);
    _os_log_impl(&dword_222A1C000, v20, v21, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223DC7E30](v23, -1, -1);
    MEMORY[0x223DC7E30](v22, -1, -1);
  }

  return 0;
}

void *sub_222A452A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_222A45CBC();
  if (v5)
  {
    v6 = v5;
    v7 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D59DA0]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setSuggestionDomainMetadata_];
        v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v12 = sub_222B01878();
        v13 = [v11 initWithNSUUID_];

        [v10 setOriginalRequestId_];
        sub_222A45FB4();
        v14 = sub_222B025D8();
        [v10 setMatchedResults_];

        [v10 setMatchedResultsPopulated_];
        [v6 setPlusSuggesterQueried_];

        return v6;
      }

      v6 = v8;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v15 = sub_222B02148();
  __swift_project_value_buffer(v15, qword_280CBC458);
  v16 = sub_222B02128();
  v17 = sub_222B028E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_222A230FC(0xD00000000000004BLL, 0x8000000222B111F0, &v21);
    _os_log_impl(&dword_222A1C000, v16, v17, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223DC7E30](v19, -1, -1);
    MEMORY[0x223DC7E30](v18, -1, -1);
  }

  return 0;
}

void *sub_222A45510(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_222A45CBC();
  if (v6)
  {
    v7 = v6;
    v8 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v8)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(MEMORY[0x277D59D98]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setSuggestionDomainMetadata_];
        v12 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v13 = sub_222B01878();
        v14 = [v12 initWithNSUUID_];

        [v11 setOriginalRequestId_];
        [v11 setIsSuggesterEnabled_];
        [v11 setDomainConfiguredState_];
        [v7 setPlusSuggesterMetadataReported_];

        return v7;
      }

      v7 = v9;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v15 = sub_222B02148();
  __swift_project_value_buffer(v15, qword_280CBC458);
  v16 = sub_222B02128();
  v17 = sub_222B028E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_222A230FC(0xD000000000000056, 0x8000000222B11240, &v21);
    _os_log_impl(&dword_222A1C000, v16, v17, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223DC7E30](v19, -1, -1);
    MEMORY[0x223DC7E30](v18, -1, -1);
  }

  return 0;
}

void *sub_222A45764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_222A45CBC();
  if (v9)
  {
    v10 = v9;
    v11 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x277D59DA8]) init];
      if (v13)
      {
        v14 = v13;
        [v13 setSuggestionDomainMetadata_];
        v15 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v16 = sub_222B01878();
        v17 = [v15 initWithNSUUID_];

        [v14 setOriginalRequestId_];
        v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v19 = sub_222B01878();
        v20 = [v18 initWithNSUUID_];

        [v14 setSuggestionLinkId_];
        [v14 setSuggestionSurfaced_];
        [v14 setSuggestionNoveltyState_];
        [v14 setDomainSuggestionMetadata_];
        [v10 setPlusSuggesterSuggestionMetadataReported_];

        return v10;
      }

      v10 = v12;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v21 = sub_222B02148();
  __swift_project_value_buffer(v21, qword_280CBC458);
  v22 = sub_222B02128();
  v23 = sub_222B028E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_222A230FC(0xD00000000000008BLL, 0x8000000222B112A0, &v27);
    _os_log_impl(&dword_222A1C000, v22, v23, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223DC7E30](v25, -1, -1);
    MEMORY[0x223DC7E30](v24, -1, -1);
  }

  return 0;
}

void *sub_222A45A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_222A45CBC();
  if (v5)
  {
    v6 = v5;
    v7 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D59DB0]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setSuggestionDomainMetadata_];
        v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v12 = sub_222B01878();
        v13 = [v11 initWithNSUUID_];

        [v10 setOriginalRequestId_];
        v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v15 = sub_222B01878();
        v16 = [v14 initWithNSUUID_];

        [v10 setSuggestionLinkId_];
        [v10 setSuggestionRedundancyState_];
        [v6 setPlusSuggesterSuggestionRedundancyReported_];

        return v6;
      }

      v6 = v8;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v17 = sub_222B02148();
  __swift_project_value_buffer(v17, qword_280CBC458);
  v18 = sub_222B02128();
  v19 = sub_222B028E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_222A230FC(0xD000000000000064, 0x8000000222B11330, &v23);
    _os_log_impl(&dword_222A1C000, v18, v19, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x223DC7E30](v21, -1, -1);
    MEMORY[0x223DC7E30](v20, -1, -1);
  }

  return 0;
}

void *sub_222A45CBC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D59C50]) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277D59C58]) init];
    if (v2)
    {
      v3 = v2;
      v4 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v5 = sub_222B01878();
      v6 = [v4 initWithNSUUID_];

      [v3 setPlusId_];
      [v1 setEventMetadata_];

      return v1;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  v8 = sub_222B02128();
  v9 = sub_222B028E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_222A230FC(0xD000000000000015, 0x8000000222B11410, &v13);
    _os_log_impl(&dword_222A1C000, v8, v9, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DC7E30](v11, -1, -1);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

  return 0;
}

uint64_t PLUSSchemaEventConstructor.deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PLUSSchemaEventConstructor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_222A45FB4()
{
  result = qword_27D01D260;
  if (!qword_27D01D260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01D260);
  }

  return result;
}

uint64_t type metadata accessor for PLUSSchemaEventConstructor()
{
  result = qword_27D01D268;
  if (!qword_27D01D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A46054()
{
  result = sub_222B018D8();
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

void sub_222A461F4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_222A4624C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_222A46290(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id sub_222A462E8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void *CoreDataStore.init(path:modelFileName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_222A465B4(a1, a2, a3, a4);

  v5[3] = v7;
  v5[2] = [v7 newBackgroundContext];
  return v5;
}

id sub_222A465B4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v82 = a1;
  v83 = a2;
  v96 = *MEMORY[0x277D85DE8];
  v6 = sub_222B01748();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v84 = &v77 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v77 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v77 - v21;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  v85 = a3;
  v86 = a4;
  v25 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v26 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v27 = [v24 URLForResource:v25 withExtension:v26];

  if (!v27)
  {
    goto LABEL_8;
  }

  sub_222B01718();

  (*(v7 + 32))(v22, v19, v6);
  v28 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v29 = sub_222B016A8();
  v30 = [v28 initWithContentsOfURL_];

  v31 = v6;
  if (!v30)
  {
    (*(v7 + 8))(v22, v6);
LABEL_8:
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_222B02C88();

    strcpy(&aBlock, "Couldn't load ");
    HIBYTE(aBlock) = -18;
    MEMORY[0x223DC66E0](v85, v86);
    MEMORY[0x223DC66E0](0xD000000000000021, 0x8000000222B11490);
    v61 = aBlock;
    sub_222A47050();
    swift_allocError();
    *v62 = v61;
    swift_willThrow();
    goto LABEL_13;
  }

  v80 = v22;
  v32 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v25 = v30;
  v33 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v79 = [v32 initWithName:v33 managedObjectModel:v25];

  v34 = v84;
  sub_222B01688();
  v35 = [objc_opt_self() defaultManager];
  sub_222B01708();
  v36 = sub_222B016A8();
  v37 = v12;
  v38 = *(v7 + 8);
  v38(v37, v6);
  *&aBlock = 0;
  v39 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v40 = aBlock;
  if (v39)
  {
    v78 = v38;
    v82 = v25;
    v83 = v7 + 8;
    v41 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v42 = v40;
    v43 = [v41 init];
    v44 = sub_222B016A8();
    [v43 setURL_];

    [v43 setReadOnly_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_222B06DF0;
    *(v45 + 32) = v43;
    sub_222A470FC();
    v46 = v43;
    v47 = sub_222B025D8();

    v25 = v79;
    [v79 setPersistentStoreDescriptions_];

    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    v49 = (v48 + 16);
    v94 = sub_222A47148;
    v95 = v48;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v92 = sub_222A4F798;
    v93 = &block_descriptor_1;
    v50 = _Block_copy(&aBlock);

    [v25 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v50);
    swift_beginAccess();
    if (*v49)
    {
      v81 = v46;
      v51 = 0xE000000000000000;
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_222B02C88();

      v89 = 0xD00000000000001ELL;
      v90 = 0x8000000222B11530;
      MEMORY[0x223DC66E0](v85, v86);
      MEMORY[0x223DC66E0](32, 0xE100000000000000);
      if (*v49)
      {
        ErrorValue = swift_getErrorValue();
        v86 = &v77;
        v53 = v88;
        v54 = v31;
        v55 = *(v88 - 8);
        v56 = *(v55 + 64);
        MEMORY[0x28223BE20](ErrorValue, v87);
        v58 = &v77 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v58);
        v59 = sub_222B030C8();
        v51 = v60;
        (*(v55 + 8))(v58, v53);
        v31 = v54;
        v34 = v84;
      }

      else
      {
        v59 = 0;
      }

      MEMORY[0x223DC66E0](v59, v51);

      v71 = v89;
      v72 = v90;
      sub_222A47050();
      swift_allocError();
      *v73 = v71;
      v73[1] = v72;
      swift_willThrow();

      v74 = v78;
      v78(v34, v31);
      v74(v80, v31);
    }

    else
    {

      v70 = v78;
      v78(v34, v6);
      v70(v80, v6);
    }
  }

  else
  {
    v63 = aBlock;
    v64 = sub_222B01628();

    swift_willThrow();
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_222B02C88();

    *&aBlock = 0xD000000000000026;
    *(&aBlock + 1) = 0x8000000222B114C0;
    sub_222A470A4();
    v65 = sub_222B02F38();
    MEMORY[0x223DC66E0](v65);

    MEMORY[0x223DC66E0](0x3D726F727265202CLL, 0xE800000000000000);
    v89 = v64;
    v66 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    v67 = sub_222B023D8();
    MEMORY[0x223DC66E0](v67);

    v68 = aBlock;
    sub_222A47050();
    swift_allocError();
    *v69 = v68;
    swift_willThrow();

    v38(v34, v6);
    v38(v80, v6);
  }

LABEL_13:
  v75 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_222A46EF0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;
}

uint64_t CoreDataStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_222A47050()
{
  result = qword_27D01D278;
  if (!qword_27D01D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D278);
  }

  return result;
}

unint64_t sub_222A470A4()
{
  result = qword_280CB8310;
  if (!qword_280CB8310)
  {
    sub_222B01748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB8310);
  }

  return result;
}

unint64_t sub_222A470FC()
{
  result = qword_280CB8428;
  if (!qword_280CB8428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB8428);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222A47168(uint64_t a1, unsigned int a2)
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

uint64_t sub_222A471C4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222A47224(uint64_t a1, char a2)
{
  sub_222B03128();
  if (*&dbl_222B072F8[a2])
  {
    v3 = dbl_222B072F8[a2];
  }

  else
  {
    v3 = 0.0;
  }

  MEMORY[0x223DC73A0](*&v3);
  return sub_222B03168();
}

uint64_t static Feature.name.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D280, &qword_222B06ED0);
  v0 = sub_222B023D8();
  v2 = sub_222A472F8(v0, v1);

  return v2;
}

uint64_t sub_222A472F8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_7;
  }

  sub_222B02528();
  if ((sub_222B022F8() & 1) == 0)
  {

LABEL_7:

    return v3;
  }

  v5 = sub_222B023E8();

  sub_222AAA4AC(1uLL, v3, a2);

  sub_222A49F38();
  sub_222B02488();

  return v5;
}

uint64_t sub_222A4740C()
{
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D280, &qword_222B06ED0);
  v1 = sub_222B023D8();
  v3 = sub_222A472F8(v1, v2);

  return v3;
}

uint64_t sub_222A474A0()
{
  v1 = *v0;
  sub_222B02C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D280, &qword_222B06ED0);
  v2 = sub_222B023D8();
  v4 = sub_222A472F8(v2, v3);
  v6 = v5;

  MEMORY[0x223DC66E0](v4, v6);

  MEMORY[0x223DC66E0](0x203A65756C617620, 0xE800000000000000);
  v8 = *(v0 + 1);
  v9 = *(v0 + 32);
  sub_222B02D98();
  MEMORY[0x223DC66E0](0x656469666E6F6320, 0xED0000203A65636ELL);
  LOBYTE(v8) = *(v0 + 33);
  sub_222B02D98();
  return 0;
}

uint64_t Feature.__allocating_init(value:confidence:)(uint64_t *a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_222A48F30(v10, a2, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t Feature.init(value:confidence:)(uint64_t *a1, char *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_222A48F30(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

id sub_222A47814()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_222A2BE30(v3, v4, v5);
  v1 = sub_222A47880();
  sub_222A2BE78(v3, v4, v5);
  return v1;
}

id sub_222A47880()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 4)
  {
    if (*(v0 + 16) <= 1u)
    {
      if (*(v0 + 16))
      {
        v3 = [objc_opt_self() featureValueWithDouble_];
      }

      else
      {
        if (v1)
        {
          v7 = 1.0;
        }

        else
        {
          v7 = 0.0;
        }

        v3 = [objc_opt_self() featureValueWithDouble_];
      }

      return v3;
    }

    if (v2 == 2)
    {
      v3 = [objc_opt_self() featureValueWithDouble_];
      return v3;
    }

    if (v2 == 3)
    {
      v3 = [objc_opt_self() featureValueWithDouble_];
      return v3;
    }

    v15 = *(v0 + 1);
    v13 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v14 = [objc_opt_self() featureValueWithString_];
LABEL_27:
    v16 = v14;

    return v16;
  }

  if (*(v0 + 16) <= 6u)
  {
    if (v2 == 5)
    {
      v3 = [objc_opt_self() featureValueWithDouble_];
    }

    else
    {
      v3 = [objc_opt_self() featureValueWithDouble_];
    }

    return v3;
  }

  if (v2 == 7)
  {
    v25 = MEMORY[0x277D84F90];
    v8 = *(v1 + 16);
    if (v8)
    {
      v9 = (v1 + 32);
      do
      {
        v10 = *v9++;
        if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_])
        {
          MEMORY[0x223DC6810]();
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v11 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222B02648();
          }

          sub_222B02688();
        }

        --v8;
      }

      while (v8);
    }

    sub_222A34890();
    v12 = sub_222B025D8();

    v13 = [objc_opt_self() sequenceWithInt64Array_];

    v14 = [objc_opt_self() featureValueWithSequence_];
    goto LABEL_27;
  }

  if (v2 == 8)
  {
    v4 = sub_222B025D8();
    v5 = [objc_opt_self() sequenceWithStringArray_];

    v6 = [objc_opt_self() featureValueWithSequence_];
  }

  else
  {
    v18 = *(v1 + 16);
    if (v18)
    {
      v26 = MEMORY[0x277D84F90];
      v19 = *v0;
      sub_222B02D38();
      v20 = (v19 + 32);
      do
      {
        v21 = *v20++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_222B02D18();
        v22 = *(v26 + 16);
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        --v18;
      }

      while (v18);
    }

    sub_222A34890();
    v23 = sub_222B025D8();

    v5 = [objc_opt_self() sequenceWithInt64Array_];

    v6 = [objc_opt_self() featureValueWithSequence_];
  }

  v24 = v6;

  return v24;
}

uint64_t TypedFeature.__allocating_init(value:confidence:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_222A496A8(a1, a2);
  (*(*(*(v3 + 136) - 8) + 8))(a1);
  return v6;
}

uint64_t TypedFeature.init(value:confidence:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_222A496A8(a1, a2);
  (*(*(*(v4 + 136) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_222A47E2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[2];
  v5 = *(v1 + 32);
  v6 = *v1;
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {
        v7 = &unk_27D01D298;
        v8 = &unk_222B06EE8;
      }

      else if (v5 == 8)
      {
        v7 = &qword_27D01D290;
        v8 = &qword_222B06EE0;
      }

      else
      {
        v7 = &unk_27D01D288;
        v8 = &unk_222B06ED8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    }
  }

  else if (v5 >= 4)
  {
    v12 = v2[3];
  }

  v9 = *(v6 + 136);
  v10 = swift_dynamicCast();
  return (*(*(v9 - 8) + 56))(a1, v10 ^ 1u, 1, v9);
}

void TypedFeature.init(value:confidence:)()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 144);
  sub_222A497A4();
}

uint64_t sub_222A48084()
{
  sub_222A2BE78(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t Bool.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void sub_222A480D0(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t String.featureValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 4;
}

uint64_t sub_222A480F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 4;
}

void Double.featureValue.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void sub_222A4811C(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t Int32.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

void sub_222A48144(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t Int64.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

void sub_222A48168(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t UInt32.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

void sub_222A48190(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
}

uint64_t UInt64.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 6;
  return result;
}

void sub_222A481B4(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
}

void Array.featureValue.getter(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 == MEMORY[0x277D84A28])
  {
    v9 = sub_222B02E38();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v7 = 7;
  }

  else if (a1 == MEMORY[0x277D837D0])
  {
    v10 = sub_222B02E38();
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v7 = 8;
  }

  else if (a1 == MEMORY[0x277D839B0])
  {
    v11 = sub_222B02E38();
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v7 = 9;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v3 = sub_222B02148();
    __swift_project_value_buffer(v3, qword_280CBC458);
    v4 = sub_222B02128();
    v5 = sub_222B028E8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_222A1C000, v4, v5, "Element type is not supported, returning an empty FeatureValue.strings", v6, 2u);
      MEMORY[0x223DC7E30](v6, -1, -1);
    }

    v7 = 8;
    v8 = MEMORY[0x277D84F90];
  }

  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
}

uint64_t FeatureValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_222B02CE8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B03188();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v9 = sub_222B02F98() & 1;
    __swift_destroy_boxed_opaque_existential_0(v11);
    *a2 = v9;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FeatureValue.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B031A8();
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      if (v4 == 5)
      {
        sub_222B03068();
      }

      else
      {
        sub_222B03078();
      }
    }

    else
    {
      if (v4 == 7)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D298, &unk_222B06EE8);
        sub_222A49A40();
      }

      else
      {
        __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
        if (v4 == 8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
          sub_222A499C4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D288, &qword_222B06ED8);
          sub_222A49948();
        }
      }

      sub_222B03038();
    }
  }

  else if (v4 <= 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (v4)
    {
      sub_222B03028();
    }

    else
    {
      sub_222B03018();
    }
  }

  else if (v4 == 2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_222B03048();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (v4 == 3)
    {
      sub_222B03058();
    }

    else
    {
      sub_222B03008();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

SiriPrivateLearningAnalytics::Confidence_optional __swiftcall Confidence.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 1.0)
  {
    *v1 = 0;
  }

  else if (rawValue == 0.75)
  {
    *v1 = 1;
  }

  else
  {
    if (rawValue == 0.0)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }

    if (rawValue == 0.25)
    {
      v3 = 3;
    }

    else
    {
      v3 = v2;
    }

    if (rawValue == 0.5)
    {
      v4 = 2;
    }

    else
    {
      v4 = v3;
    }

    *v1 = v4;
  }

  return result;
}

uint64_t sub_222A48C3C()
{
  if (*&dbl_222B072F8[*v0])
  {
    v1 = dbl_222B072F8[*v0];
  }

  else
  {
    v1 = 0.0;
  }

  return MEMORY[0x223DC73A0](*&v1);
}

double sub_222A48C8C@<D0>(double *a1@<X8>)
{
  result = dbl_222B072F8[*v1];
  *a1 = result;
  return result;
}

void sub_222A48CA4(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  if (v3 > 4)
  {
    if (*(v1 + 32) > 6u)
    {
      if (v3 == 7)
      {
        v6 = &qword_27D01D298;
        v7 = &unk_222B06EE8;
        v5 = a1;
      }

      else
      {
        v5 = a1;
        if (v3 == 8)
        {
          v6 = &qword_27D01D290;
          v7 = &qword_222B06EE0;
        }

        else
        {
          v6 = &qword_27D01D288;
          v7 = &qword_222B06ED8;
        }
      }

      v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      *v5 = v2;
      goto LABEL_20;
    }

    if (v3 != 5)
    {
      v4 = MEMORY[0x277D84D38];
      goto LABEL_25;
    }

    v8 = MEMORY[0x277D84CC0];
LABEL_15:
    a1[3] = v8;
    *a1 = v2;
    return;
  }

  if (*(v1 + 32) <= 1u)
  {
    if (!*(v1 + 32))
    {
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v2 & 1;
      return;
    }

    v4 = MEMORY[0x277D839F8];
    goto LABEL_25;
  }

  if (v3 == 2)
  {
    v8 = MEMORY[0x277D849A8];
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v4 = MEMORY[0x277D84A28];
LABEL_25:
    a1[3] = v4;
    *a1 = v2;
    return;
  }

  v9 = *(v1 + 24);
  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v9;
LABEL_20:
}

uint64_t Feature.equalTo(_:)(uint64_t a1)
{
  sub_222A42E40(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9F0, &qword_222B04940);
  type metadata accessor for Feature();
  if (!swift_dynamicCast())
  {
    return 2;
  }

  v2 = _s28SiriPrivateLearningAnalytics7FeatureC2eeoiySbAC_ACtFZ_0(v1, v4);

  return v2;
}

uint64_t sub_222A48EA0(uint64_t a1)
{
  v2 = *v1;
  sub_222A42E40(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9F0, &qword_222B04940);
  type metadata accessor for Feature();
  if (!swift_dynamicCast())
  {
    return 2;
  }

  v3 = _s28SiriPrivateLearningAnalytics7FeatureC2eeoiySbAC_ACtFZ_0(v2, v5);

  return v3;
}

uint64_t sub_222A48F30(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v12);
  v13 = *a2;
  (*(a5 + 8))(&v16, a4, a5);
  v14 = v17;
  *(a3 + 16) = v16;
  *(a3 + 32) = v14;
  *(a3 + 33) = v13;
  (*(v9 + 8))(v12, a4);
  return a3;
}

uint64_t _s28SiriPrivateLearningAnalytics12FeatureValueO2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(result + 16) > 1u)
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          if (v7 == 3)
          {
            sub_222A2BE78(*result, v3, 3u);
            v8 = v5;
            v9 = v6;
            v10 = 3;
LABEL_53:
            sub_222A2BE78(v8, v9, v10);
            LOBYTE(v7) = v2 == v5;
            return v7 & 1;
          }

          goto LABEL_44;
        }

        v20 = *(result + 8);
        if (v7 == 4)
        {
          if (v2 != v5 || v3 != v6)
          {
            LOBYTE(v7) = sub_222B02F78();
            sub_222A2BE30(v5, v6, 4u);
            sub_222A2BE30(v2, v3, 4u);
            sub_222A2BE78(v2, v3, 4u);
            sub_222A2BE78(v5, v6, 4u);
            return v7 & 1;
          }

          sub_222A2BE30(v2, v3, 4u);
          sub_222A2BE30(v2, v3, 4u);
          sub_222A2BE78(v2, v3, 4u);
          v17 = v2;
          v18 = v3;
          v19 = 4;
          goto LABEL_41;
        }

        goto LABEL_43;
      }

      if (v7 == 2)
      {
        sub_222A2BE78(*result, v3, 2u);
        v12 = v5;
        v13 = v6;
        v14 = 2;
        goto LABEL_20;
      }

      goto LABEL_44;
    }

    if (*(result + 16))
    {
      if (v7 == 1)
      {
        v27 = *a2;
        sub_222A2BE78(*result, v3, 1u);
        sub_222A2BE78(v5, v6, 1u);
        if (*&v2 == *&v5)
        {
          return v7 & 1;
        }

        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (*(a2 + 16))
    {
      goto LABEL_44;
    }

    sub_222A2BE78(*result, v3, 0);
    sub_222A2BE78(v5, v6, 0);
    v7 = (v5 ^ v2) ^ 1;
    return v7 & 1;
  }

  if (*(result + 16) <= 6u)
  {
    if (v4 != 5)
    {
      if (v7 == 6)
      {
        sub_222A2BE78(*result, v3, 6u);
        v8 = v5;
        v9 = v6;
        v10 = 6;
        goto LABEL_53;
      }

      goto LABEL_44;
    }

    if (v7 == 5)
    {
      sub_222A2BE78(*result, v3, 5u);
      v12 = v5;
      v13 = v6;
      v14 = 5;
LABEL_20:
      sub_222A2BE78(v12, v13, v14);
      LOBYTE(v7) = v2 == v5;
      return v7 & 1;
    }

LABEL_44:
    sub_222A2BE30(v5, v6, v7);
    sub_222A2BE78(v2, v3, v4);
    v24 = v5;
    v25 = v6;
    v26 = v7;
LABEL_45:
    sub_222A2BE78(v24, v25, v26);
LABEL_46:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (v4 == 7)
  {
    if (v7 == 7)
    {
      v15 = *(v2 + 16);
      if (v15 != *(v5 + 16))
      {
LABEL_59:
        sub_222A2BE30(*a2, *(a2 + 8), 7u);
        sub_222A2BE30(v2, v3, 7u);
        sub_222A2BE78(v2, v3, 7u);
        v24 = v5;
        v25 = v6;
        v26 = 7;
        goto LABEL_45;
      }

      if (v15)
      {
        v16 = v2 == v5;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v28 = (v2 + 32);
        v29 = (v5 + 32);
        while (v15)
        {
          if (*v28 != *v29)
          {
            goto LABEL_59;
          }

          ++v28;
          ++v29;
          if (!--v15)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_28:
      sub_222A2BE30(*a2, *(a2 + 8), 7u);
      sub_222A2BE30(v2, v3, 7u);
      sub_222A2BE78(v2, v3, 7u);
      v17 = v5;
      v18 = v6;
      v19 = 7;
LABEL_41:
      sub_222A2BE78(v17, v18, v19);
      LOBYTE(v7) = 1;
      return v7 & 1;
    }

LABEL_42:
    v23 = *result;
    goto LABEL_43;
  }

  if (v4 == 8)
  {
    v11 = *result;
    if (v7 == 8)
    {
      LOBYTE(v7) = sub_222A43424(v11, *a2);
      sub_222A2BE30(v5, v6, 8u);
      sub_222A2BE30(v2, v3, 8u);
      sub_222A2BE78(v2, v3, 8u);
      sub_222A2BE78(v5, v6, 8u);
      return v7 & 1;
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v7 != 9)
  {
    goto LABEL_42;
  }

  v21 = *(v2 + 16);
  if (v21 != *(v5 + 16))
  {
LABEL_64:
    sub_222A2BE30(*a2, *(a2 + 8), 9u);
    sub_222A2BE30(v2, v3, 9u);
    sub_222A2BE78(v2, v3, 9u);
    v24 = v5;
    v25 = v6;
    v26 = 9;
    goto LABEL_45;
  }

  if (v21)
  {
    v22 = v2 == v5;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
LABEL_40:
    sub_222A2BE30(*a2, *(a2 + 8), 9u);
    sub_222A2BE30(v2, v3, 9u);
    sub_222A2BE78(v2, v3, 9u);
    v17 = v5;
    v18 = v6;
    v19 = 9;
    goto LABEL_41;
  }

  v30 = (v2 + 32);
  v31 = (v5 + 32);
  while (v21)
  {
    if (*v30 != *v31)
    {
      goto LABEL_64;
    }

    ++v30;
    ++v31;
    if (!--v21)
    {
      goto LABEL_40;
    }
  }

LABEL_66:
  __break(1u);
  return result;
}

BOOL _s28SiriPrivateLearningAnalytics7FeatureC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_222A4740C();
  v7 = v6;
  v24 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D280, &qword_222B06ED0);
  v8 = sub_222B023D8();
  v10 = sub_222A472F8(v8, v9);
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
  }

  else
  {
    v14 = sub_222B02F78();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v24 = *(a1 + 16);
  v25 = v15;
  v26 = v16;
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v21 = *(a2 + 16);
  v22 = v17;
  v23 = v18;
  sub_222A2BE30(v24, v15, v16);
  sub_222A2BE30(v21, v17, v18);
  v19 = _s28SiriPrivateLearningAnalytics12FeatureValueO2eeoiySbAC_ACtFZ_0(&v24, &v21);
  sub_222A2BE78(v21, v22, v23);
  sub_222A2BE78(v24, v25, v26);
  if (v19)
  {
    return dbl_222B072F8[*(a1 + 33)] == dbl_222B072F8[*(a2 + 33)];
  }

  return 0;
}

uint64_t sub_222A496A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v12[-v6];
  v13 = *v8;
  (*(v9 + 16))(&v12[-v6], v10, v4);
  return sub_222A48F30(v7, &v13, v2, v4, *(v3 + 144));
}

unint64_t sub_222A497D4()
{
  result = qword_27D01D2A0;
  if (!qword_27D01D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D298, &unk_222B06EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2A0);
  }

  return result;
}

unint64_t sub_222A49850()
{
  result = qword_27D01D2A8;
  if (!qword_27D01D2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D290, &qword_222B06EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2A8);
  }

  return result;
}

unint64_t sub_222A498CC()
{
  result = qword_27D01D2B0;
  if (!qword_27D01D2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D288, &qword_222B06ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2B0);
  }

  return result;
}

unint64_t sub_222A49948()
{
  result = qword_27D01D2B8;
  if (!qword_27D01D2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D288, &qword_222B06ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2B8);
  }

  return result;
}

unint64_t sub_222A499C4()
{
  result = qword_27D01D2C0;
  if (!qword_27D01D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D290, &qword_222B06EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2C0);
  }

  return result;
}

unint64_t sub_222A49A40()
{
  result = qword_27D01D2C8;
  if (!qword_27D01D2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D298, &unk_222B06EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2C8);
  }

  return result;
}

unint64_t sub_222A49AE4()
{
  result = qword_27D01D2D0;
  if (!qword_27D01D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2D0);
  }

  return result;
}

unint64_t sub_222A49B38(uint64_t a1)
{
  result = sub_222A49B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222A49B60()
{
  result = qword_27D01D2D8[0];
  if (!qword_27D01D2D8[0])
  {
    type metadata accessor for Feature();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D01D2D8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_222A49D44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_222A49D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t getEnumTagSinglePayload for Confidence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Confidence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222A49F38()
{
  result = qword_280CB4BE0;
  if (!qword_280CB4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4BE0);
  }

  return result;
}

id sub_222A49F98()
{
  if ([v0 anyEventType] == 6)
  {
    v1 = [v0 payload];
    if (v1)
    {
      v2 = v1;
      v3 = sub_222B01798();
      v5 = v4;

      v6 = sub_222B01788();
      sub_222A26530(v3, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

    if (v7)
    {
      v8 = [v7 event];
      if (v8)
      {
        v9 = v8;
        [v7 metadata];

        return v9;
      }
    }
  }

  return v0;
}

uint64_t MTCreateAlarmIntentFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000013;
  *(result + 24) = 0x8000000222B11620;
  return result;
}

uint64_t MTCreateAlarmIntentFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000222B11620;
  return result;
}

uint64_t sub_222A4A114(id *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v81 = &v78 - v6;
  v7 = sub_222B01848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v80 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v82 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D360, &unk_222B07328);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v78 - v18;
  v20 = sub_222B015F8();
  v84 = *(v20 - 8);
  v21 = *(v84 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v83 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = [*a1 intent];
  v26 = sub_222A816E4();
  if (!v27)
  {
    goto LABEL_16;
  }

  v29 = *(v1 + 16);
  v28 = *(v1 + 24);
  if (v26 == v29 && v27 == v28)
  {
  }

  else
  {
    v30 = sub_222B02F78();

    if ((v30 & 1) == 0)
    {
LABEL_16:

      return MEMORY[0x277D84F90];
    }
  }

  v31 = [v25 parametersByName];
  if (!v31)
  {
    goto LABEL_16;
  }

  v78 = v8;
  v79 = v7;
  v32 = v31;
  v33 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_222B05260;
  v35 = type metadata accessor for MTCreateAlarmEventFeature.EventType(0);
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  *(v36 + 24) = v28;
  *(v34 + 56) = v35;
  *(v34 + 64) = sub_222A4ABA8(&qword_27D01D368, type metadata accessor for MTCreateAlarmEventFeature.EventType);
  *(v34 + 32) = v36;

  v37 = [v24 _donatedBySiri];
  v38 = type metadata accessor for MTCreateAlarmEventFeature.DonatedBySiri(0);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v34 + 96) = v38;
  *(v34 + 104) = sub_222A4ABA8(&qword_27D01D370, type metadata accessor for MTCreateAlarmEventFeature.DonatedBySiri);
  *(v34 + 72) = v39;
  if (*(v33 + 16))
  {
    v40 = sub_222A26EC8(0x6C6562616CLL, 0xE500000000000000);
    if (v41)
    {
      sub_222A25344(*(v33 + 56) + 32 * v40, &v87);
      if (swift_dynamicCast())
      {
        v42 = v85;
        v43 = v86;
        v44 = type metadata accessor for MTCreateAlarmEventFeature.AlarmName(0);
        v45 = swift_allocObject();
        *(v45 + 16) = v42;
        *(v45 + 24) = v43;
        v34 = sub_222AA8FDC(1, 3, 1, v34);
        v88 = v44;
        v89 = sub_222A4ABA8(&qword_27D01D390, type metadata accessor for MTCreateAlarmEventFeature.AlarmName);
        *&v87 = v45;
        *(v34 + 16) = 3;
        sub_222A2577C(&v87, v34 + 112);
      }
    }
  }

  v47 = v78;
  v46 = v79;
  v49 = v83;
  v48 = v84;
  if (*(v33 + 16) && (v50 = sub_222A26EC8(0x706D6F4365746164, 0xEE0073746E656E6FLL), (v51 & 1) != 0))
  {
    sub_222A25344(*(v33 + 56) + 32 * v50, &v87);
    v52 = swift_dynamicCast();
    (*(v48 + 56))(v19, v52 ^ 1u, 1, v20);
    if ((*(v48 + 48))(v19, 1, v20) != 1)
    {
      (*(v48 + 32))(v49, v19, v20);
      v19 = v81;
      sub_222B015E8();
      if ((*(v47 + 48))(v19, 1, v46) != 1)
      {
        v79 = *(v47 + 32);
        v72 = v82;
        v79(v82, v19, v46);
        v73 = v80;
        (*(v47 + 16))(v80, v72, v46);
        v57 = type metadata accessor for MTCreateAlarmEventFeature.AlarmTime(0);
        v74 = *(v57 + 48);
        v75 = *(v57 + 52);
        v60 = swift_allocObject();
        v79(v60 + *(*v60 + 96), v73, v46);
        v49 = *(v34 + 16);
        v61 = *(v34 + 24);
        v48 = v49 + 1;
        if (v49 >= v61 >> 1)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      v53 = *(v48 + 8);
      v48 += 8;
      v53(v49, v20);
      v54 = &qword_27D01D700;
      v55 = &qword_222B07320;
      goto LABEL_19;
    }
  }

  else
  {
    v56 = *(v48 + 56);
    v48 += 56;
    v56(v19, 1, 1, v20);
  }

  v54 = &qword_27D01D360;
  v55 = &unk_222B07328;
LABEL_19:
  sub_222A34F20(v19, v54, v55);
  if (*(v33 + 16))
  {
    while (1)
    {
      v57 = v33;
      v58 = sub_222A26EC8(0x6353746165706572, 0xEE00656C75646568);
      if ((v59 & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_222A25344(*(v33 + 56) + 32 * v58, &v87);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D378, &qword_222B07338);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_33;
      }

      v60 = v85;
      if (v85 >> 62)
      {
        if (!sub_222B02DC8())
        {
          goto LABEL_32;
        }
      }

      else if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        break;
      }

      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v61)
      {
        v62 = *(v60 + 32);
LABEL_27:
        v63 = v62;

        v64 = [v63 displayString];
        v65 = sub_222B02388();
        v67 = v66;

        v68 = type metadata accessor for MTCreateAlarmEventFeature.AlarmRepeatSchedule(0);
        v69 = swift_allocObject();
        *(v69 + 16) = v65;
        *(v69 + 24) = v67;
        v71 = *(v34 + 16);
        v70 = *(v34 + 24);
        if (v71 >= v70 >> 1)
        {
          v34 = sub_222AA8FDC((v70 > 1), v71 + 1, 1, v34);
        }

        v88 = v68;
        v89 = sub_222A4ABA8(&qword_27D01D380, type metadata accessor for MTCreateAlarmEventFeature.AlarmRepeatSchedule);
        *&v87 = v69;
        *(v34 + 16) = v71 + 1;
        sub_222A2577C(&v87, v34 + 40 * v71 + 32);
        return v34;
      }

      __break(1u);
LABEL_39:
      v34 = sub_222AA8FDC((v61 > 1), v48, 1, v34);
LABEL_31:
      v76 = *(v47 + 8);
      v47 += 8;
      v76(v82, v46);
      (*(v84 + 8))(v83, v20);
      v88 = v57;
      v89 = sub_222A4ABA8(&qword_27D01D388, type metadata accessor for MTCreateAlarmEventFeature.AlarmTime);
      *&v87 = v60;
      *(v34 + 16) = v48;
      sub_222A2577C(&v87, v34 + 40 * v49 + 32);
      if (!*(v33 + 16))
      {
        goto LABEL_32;
      }
    }

    v62 = MEMORY[0x223DC6F00](0, v60);
    goto LABEL_27;
  }

LABEL_32:

LABEL_33:

  return v34;
}

uint64_t MTCreateAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MTCreateAlarmEventFeature.AlarmTime.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *(*v5 + 96);
  v7 = sub_222B01848();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

{
  v2 = v1;
  v4 = sub_222B01848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  v12 = swift_allocObject();
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D700, &qword_222B07320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    v13 = *(*v12 + 48);
    v14 = *(*v12 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v15 = *(v5 + 32);
    v15(v9, a1, v4);
    v15((v12 + *(*v12 + 96)), v9, v4);
  }

  return v12;
}

uint64_t MTCreateAlarmEventFeature.AlarmRepeatSchedule.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MTCreateAlarmEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A4ABA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MTCreateAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A4ACFC(char *a1)
{
  v1 = *a1;
  type metadata accessor for MTCreateAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A4AD34(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for MTCreateAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t sub_222A4ADC8(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A4AE1C(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t MTCreateAlarmEventFeature.AlarmRepeatSchedule.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MTCreateAlarmEventFeature.AlarmRepeatSchedule.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MTCreateAlarmEventFeature.AlarmRepeatSchedule.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t MTCreateAlarmEventFeature.AlarmTime.init(value:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = sub_222B01848();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

{
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v4 + 48))(a1, 1, v3) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D700, &qword_222B07320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    v9 = *(*v1 + 48);
    v10 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v11 = *(v4 + 32);
    v11(v8, a1, v3);
    v11((v1 + *(*v1 + 96)), v8, v3);
  }

  return v1;
}

uint64_t MTCreateAlarmEventFeature.AlarmTime.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MTCreateAlarmEventFeature.AlarmTime.__deallocating_deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SiriUserFeedbackLearningPluginRunResult.bundleName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriUserFeedbackLearningPluginRunResult.pluginResult.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_222A39234(v2, v3);
}

__n128 SiriUserFeedbackLearningPluginRunResult.init(bundleName:pluginResult:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t sub_222A4B574()
{
  if (*v0)
  {
    result = 0x65526E6967756C70;
  }

  else
  {
    result = 0x614E656C646E7562;
  }

  *v0;
  return result;
}

uint64_t sub_222A4B5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E656C646E7562 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_222B02F78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65526E6967756C70 && a2 == 0xEC000000746C7573)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222B02F78();

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

uint64_t sub_222A4B6B0(uint64_t a1)
{
  v2 = sub_222A4DE08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A4B6EC(uint64_t a1)
{
  v2 = sub_222A4DE08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriUserFeedbackLearningPluginRunResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D3F0, &qword_222B07490);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16 = v1[3];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A4DE08();
  sub_222B031B8();
  LOBYTE(v19) = 0;
  v13 = v18;
  sub_222B02EE8();
  if (!v13)
  {
    v19 = v17;
    v20 = v16;
    v21 = 1;
    sub_222A39234(v17, v16);
    sub_222A3925C();
    sub_222B02EF8();
    sub_222A39248(v19, v20);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t SiriUserFeedbackLearningPluginRunResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D3F8, &qword_222B07498);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A4DE08();
  sub_222B03198();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v19[0]) = 0;
  v12 = sub_222B02E88();
  v14 = v13;
  v15 = v12;
  v20 = 1;
  sub_222A39850();
  sub_222B02E98();
  (*(v6 + 8))(v10, v5);
  v16 = v19[0];
  v17 = v19[1];
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v17;

  sub_222A39234(v16, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_222A39248(v16, v17);
}

uint64_t SiriUserFeedbackLearningPluginLauncher.runPlugins(plugins:task:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_222A4BB3C, 0, 0);
}

uint64_t sub_222A4BB3C()
{
  v45 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_222B02148();
  v0[20] = __swift_project_value_buffer(v2, qword_280CBC458);
  sub_222A4DE5C(v1, (v0 + 2));
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_222A230FC(0xD000000000000019, 0x8000000222B11840, &v44);
    *(v5 + 12) = 2080;
    v7 = SiriUserFeedbackLearningTask.description.getter();
    v9 = v8;
    sub_222A4DEB8((v0 + 2));
    v10 = sub_222A230FC(v7, v9, &v44);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_222A1C000, v3, v4, "LaunchQueue.%s (async) mlrTask: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v6, -1, -1);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  else
  {

    sub_222A4DEB8((v0 + 2));
  }

  v11 = v0[18];

  v12 = sub_222B02128();
  v13 = sub_222B028D8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[18];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v44 = v16;
    *v15 = 136315138;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CAF0, &qword_222B049D8);
    v18 = MEMORY[0x223DC6850](v14, v17);
    v20 = sub_222A230FC(v18, v19, &v44);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_222A1C000, v12, v13, "plugins: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DC7E30](v16, -1, -1);
    MEMORY[0x223DC7E30](v15, -1, -1);
  }

  v21 = v0[18];
  v22 = *(v21 + 16);
  v0[21] = v22;
  if (v22)
  {
    v23 = MEMORY[0x277D84F90];
    v0[22] = 0;
    v0[23] = v23;
    sub_222A42E40(v21 + 32, (v0 + 9));
    v24 = v0[12];
    v25 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 9, v24);
    v26 = *(v25 + 24);
    v43 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_222A4C090;
    v29 = v0[19];

    return (v43)(v0 + 14, v29, v24, v25);
  }

  else
  {
    v31 = v0[20];
    v32 = sub_222B02128();
    v33 = sub_222B028D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_222A230FC(0xD000000000000019, 0x8000000222B11840, &v44);
      *(v34 + 12) = 2080;

      v37 = MEMORY[0x223DC6850](v36, &type metadata for SiriUserFeedbackLearningPluginRunResult);
      v39 = v38;

      v40 = sub_222A230FC(v37, v39, &v44);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_222A1C000, v32, v33, "LaunchQueue.%s results: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v35, -1, -1);
      MEMORY[0x223DC7E30](v34, -1, -1);
    }

    v41 = v0[1];
    v42 = MEMORY[0x277D84F90];

    return v41(v42);
  }
}

uint64_t sub_222A4C090()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222A4C18C, 0, 0);
}

uint64_t sub_222A4C18C()
{
  v40 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v36 = *(v0 + 128);
  v37 = *(v0 + 136);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v4);
  v6 = (*(v5 + 8))(v4, v5);
  v34 = v7;
  v35 = v6;
  sub_222A39234(v1, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_222AA9498(0, *(v9 + 2) + 1, 1, *(v0 + 184));
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_222AA9498((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 168);
  v13 = *(v0 + 176) + 1;
  sub_222A39248(v1, v3);

  *(v9 + 2) = v11 + 1;
  v14 = &v9[32 * v11];
  *(v14 + 4) = v35;
  *(v14 + 5) = v34;
  *(v14 + 6) = v1;
  *(v14 + 7) = v3;
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  if (v13 == v12)
  {
    v15 = *(v0 + 160);
    v16 = sub_222B02128();
    v17 = sub_222B028D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_222A230FC(0xD000000000000019, 0x8000000222B11840, &v39);
      *(v18 + 12) = 2080;

      v21 = MEMORY[0x223DC6850](v20, &type metadata for SiriUserFeedbackLearningPluginRunResult);
      v23 = v22;

      v24 = sub_222A230FC(v21, v23, &v39);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_222A1C000, v16, v17, "LaunchQueue.%s results: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v19, -1, -1);
      MEMORY[0x223DC7E30](v18, -1, -1);
    }

    v25 = *(v0 + 8);

    return v25(v9);
  }

  else
  {
    v27 = *(v0 + 176);
    *(v0 + 176) = v27 + 1;
    *(v0 + 184) = v9;
    sub_222A42E40(*(v0 + 144) + 40 * v27 + 72, v0 + 72);
    v28 = *(v0 + 96);
    v29 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v28);
    v30 = *(v29 + 24);
    v38 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    *(v0 + 192) = v32;
    *v32 = v0;
    v32[1] = sub_222A4C090;
    v33 = *(v0 + 152);

    return v38(v0 + 112, v33, v28, v29);
  }
}

unint64_t SiriUserFeedbackLearningPluginLauncher.runPlugins(plugins:task:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v6 = sub_222B021B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v38 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34[-v13];
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v15 = sub_222B02148();
  __swift_project_value_buffer(v15, qword_280CBC458);
  v39 = a2;
  sub_222A4DE5C(a2, v42);
  v16 = *(v7 + 16);
  v41 = a3;
  v16(v14, a3, v6);
  v17 = sub_222B02128();
  v18 = sub_222B028D8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v18;
    v20 = v19;
    v36 = swift_slowAlloc();
    v44 = v36;
    *v20 = 136315650;
    *(v20 + 4) = sub_222A230FC(0xD000000000000021, 0x8000000222B11860, &v44);
    *(v20 + 12) = 2080;
    v21 = SiriUserFeedbackLearningTask.description.getter();
    v37 = v3;
    v23 = v22;
    sub_222A4DEB8(v42);
    v24 = sub_222A230FC(v21, v23, &v44);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    v16(v38, v14, v6);
    v25 = sub_222B023D8();
    v27 = v26;
    (*(v7 + 8))(v14, v6);
    v28 = sub_222A230FC(v25, v27, &v44);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_222A1C000, v17, v35, "LaunchQueue.%s mlrTask: %s, timeout: %s", v20, 0x20u);
    v29 = v36;
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v29, -1, -1);
    MEMORY[0x223DC7E30](v20, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v14, v6);
    sub_222A4DEB8(v42);
  }

  sub_222A4DE5C(v39, v42);
  v30 = swift_allocObject();
  *(v30 + 16) = v40;
  v31 = v42[1];
  *(v30 + 24) = v42[0];
  *(v30 + 40) = v31;
  *(v30 + 56) = v42[2];
  *(v30 + 72) = v43;

  v32 = sub_222A4CADC(v41, &stru_222B074B8, v30);

  return v32;
}

uint64_t sub_222A4C91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_222A4C9BC;

  return SiriUserFeedbackLearningPluginLauncher.runPlugins(plugins:task:)(a2, a3);
}

uint64_t sub_222A4C9BC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_222A4CABC, 0, 0);
}

unint64_t sub_222A4CADC(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v60 = a2;
  v61 = a1;
  v4 = sub_222B021B8();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v57 = &v54 - v10;
  v11 = sub_222B02268();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v54 - v24;
  v26 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D418, &qword_222B07780);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = sub_222B02768();
  (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v60;
  v29[5] = a3;
  v29[6] = sub_222A4E498;
  v29[7] = v27;
  v29[8] = v26;
  swift_retain_n();

  v30 = v26;
  sub_222A72CE4(0, 0, v25, &unk_222B07790, v29);

  sub_222B02248();
  v31 = v61;
  sub_222B02258();
  v32 = *(v12 + 8);
  v32(v17, v11);
  sub_222B02A38();
  v32(v20, v11);
  if (sub_222B021C8())
  {
    v56 = v27;
    v60 = v30;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v33 = sub_222B02148();
    __swift_project_value_buffer(v33, qword_280CBC458);
    v35 = v57;
    v34 = v58;
    v36 = *(v58 + 16);
    v37 = v59;
    v36(v57, v31, v59);
    v38 = sub_222B02128();
    v39 = sub_222B028F8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      LODWORD(v61) = v39;
      v41 = v40;
      v54 = swift_slowAlloc();
      v62 = v54;
      *v41 = 136315138;
      v36(v55, v35, v37);
      v42 = sub_222B023D8();
      v43 = v35;
      v45 = v44;
      (*(v34 + 8))(v43, v37);
      v46 = sub_222A230FC(v42, v45, &v62);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_222A1C000, v38, v61, "a thread was blocked by a semaphore awaiting a Task and timed out after %s seconds", v41, 0xCu);
      v47 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x223DC7E30](v47, -1, -1);
      MEMORY[0x223DC7E30](v41, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v35, v37);
    }

    v50 = "t result from async Task";
    v51 = 0xD00000000000002FLL;
    v30 = v60;
    goto LABEL_11;
  }

  v48 = *(v27 + 16);
  if (!v48)
  {
    v50 = "ns:task:timeout:)";
    v51 = 0xD000000000000028;
LABEL_11:
    v48 = v50 | 0x8000000000000000;
    sub_222A4E3B4();
    swift_allocError();
    *v52 = v51;
    v52[1] = v48;
    swift_willThrow();

    return v48;
  }

  v49 = *(v27 + 16);

  return v48;
}

uint64_t sub_222A4D05C@<X0>(uint64_t *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a4;
  v67 = a2;
  v68 = a1;
  v5 = sub_222B021B8();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v61 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v64 = &v61 - v11;
  v12 = sub_222B02268();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v61 - v25;
  v27 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D408, &qword_222B07768);
  v28 = swift_allocObject();
  v29 = sub_222B02768();
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v67;
  v30[5] = a3;
  v30[6] = sub_222A4E2D0;
  v30[7] = v28;
  v30[8] = v27;
  swift_retain_n();

  v31 = v27;
  sub_222A732D8(0, 0, v26, &unk_222B07778, v30);

  sub_222B02248();
  v32 = v68;
  sub_222B02258();
  v33 = *(v13 + 8);
  v33(v18, v12);
  sub_222B02A38();
  v33(v21, v12);
  if (sub_222B021C8())
  {
    v67 = v31;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v34 = sub_222B02148();
    __swift_project_value_buffer(v34, qword_280CBC458);
    v36 = v64;
    v35 = v65;
    v37 = *(v65 + 16);
    v38 = v66;
    v37(v64, v32, v66);
    v39 = sub_222B02128();
    v40 = sub_222B028F8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v62 = v41;
      v68 = swift_slowAlloc();
      v69 = v68;
      *v41 = 136315138;
      LODWORD(v63) = v40;
      v37(v61, v36, v38);
      v42 = sub_222B023D8();
      v43 = v36;
      v45 = v44;
      (*(v35 + 8))(v43, v38);
      v46 = sub_222A230FC(v42, v45, &v69);

      v47 = v62;
      *(v62 + 4) = v46;
      _os_log_impl(&dword_222A1C000, v39, v63, "a thread was blocked by a semaphore awaiting a Task and timed out after %s seconds", v47, 0xCu);
      v48 = v68;
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x223DC7E30](v48, -1, -1);
      MEMORY[0x223DC7E30](v47, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v36, v38);
    }

    v57 = "t result from async Task";
    v58 = 0xD00000000000002FLL;
    v31 = v67;
  }

  else
  {
    v49 = *(v28 + 32);
    if (v49)
    {
      v50 = *(v28 + 40);
      v52 = *(v28 + 16);
      v51 = *(v28 + 24);
      sub_222A39234(v52, v51);
      v53 = v49;
      v54 = v50;

      v56 = v62;
      *v62 = v52;
      v56[1] = v51;
      v56[2] = v53;
      v56[3] = v50;
      return result;
    }

    v57 = "ns:task:timeout:)";
    v58 = 0xD000000000000028;
  }

  v59 = v57 | 0x8000000000000000;
  sub_222A4E3B4();
  swift_allocError();
  *v60 = v58;
  v60[1] = v59;
  swift_willThrow();
}

uint64_t sub_222A4D604(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A4D6A0;

  return SiriUserFeedbackLearningPluginLauncher.runPlugins(plugins:task:)(a1, a2);
}

uint64_t sub_222A4D6A0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_222A4D7B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v8[6] = v11;
  *v11 = v8;
  v11[1] = sub_222A4D8B4;

  return v13(a1);
}

uint64_t sub_222A4D8B4()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222A4D9B0, 0, 0);
}

uint64_t sub_222A4D9B0()
{
  v16 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v12 = *v3;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  sub_222A39234(v12, v5);
  v8 = v7;
  v9 = v6;
  v4(&v12);
  sub_222A4E408(v12, v13, v14, v15);
  sub_222B02A48();
  v10 = v0[1];

  return v10();
}

uint64_t sub_222A4DA60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a1;
  v8[4] = a6;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v8[7] = v10;
  *v10 = v8;
  v10[1] = sub_222A4DB58;

  return v12(v8 + 2);
}

uint64_t sub_222A4DB58()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222A4DC54, 0, 0);
}

uint64_t sub_222A4DC54()
{
  v9 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v8 = v0[2];
  v5 = v8;

  v3(&v8);

  sub_222B02A48();
  *v4 = v5;
  v6 = v0[1];

  return v6();
}

id sub_222A4DCF4(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  sub_222A4E408(v6, v7, v8, v9);

  return sub_222A4E450(v2, v3, v4, v5);
}

uint64_t _s28SiriPrivateLearningAnalytics0a12UserFeedbackC15PluginRunResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = 0, (sub_222B02F78() & 1) != 0))
  {
    v11 = v2;
    v12 = v3;
    v9 = v4;
    v10 = v5;
    sub_222A39234(v2, v3);
    sub_222A39234(v4, v5);
    v7 = _s28SiriPrivateLearningAnalytics0a12UserFeedbackC10TaskResultV6StatusO2eeoiySbAE_AEtFZ_0(&v11, &v9);
    sub_222A39248(v9, v10);
    sub_222A39248(v11, v12);
  }

  return v7 & 1;
}

unint64_t sub_222A4DE08()
{
  result = qword_280CBA1A8;
  if (!qword_280CBA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1A8);
  }

  return result;
}

uint64_t sub_222A4DF0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return sub_222A4C91C(a1, v4, v1 + 24);
}

uint64_t sub_222A4DFB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_222A4E000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriUserFeedbackLearningPluginLaunching.runPlugins(plugins:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_222A4D6A0;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_222A4E1CC()
{
  result = qword_27D01D400;
  if (!qword_27D01D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D400);
  }

  return result;
}

unint64_t sub_222A4E224()
{
  result = qword_280CBA198;
  if (!qword_280CBA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA198);
  }

  return result;
}

unint64_t sub_222A4E27C()
{
  result = qword_280CBA1A0;
  if (!qword_280CBA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1A0);
  }

  return result;
}

uint64_t sub_222A4E2D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_222A35344;

  return sub_222A4D7B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_222A4E3B4()
{
  result = qword_27D01D410;
  if (!qword_27D01D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D410);
  }

  return result;
}

void sub_222A4E408(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    sub_222A39248(a1, a2);
  }
}

id sub_222A4E450(id result, unint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    sub_222A39234(result, a2);
    v6 = a3;

    return a4;
  }

  return result;
}

uint64_t sub_222A4E498(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222A4E528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_222A35344;

  return sub_222A4DA60(a1, v4, v5, v6, v7, v8, v9, v10);
}

void SiriUserFeedbackLearningMLRuntimePlatform.perform(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  sub_222A4DE5C(a1, aBlock);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_222A230FC(0xD000000000000016, 0x8000000222B11980, &v20);
    *(v9 + 12) = 2080;
    v11 = SiriUserFeedbackLearningTask.description.getter();
    v13 = v12;
    sub_222A4DEB8(aBlock);
    v14 = sub_222A230FC(v11, v13, &v20);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_222A1C000, v7, v8, "SiriUserFeedbackLearningPlatform.%s task: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v10, -1, -1);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  else
  {

    sub_222A4DEB8(aBlock);
  }

  v15 = objc_opt_self();
  v16 = *(a1 + 8);
  v17 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_222A4F0EC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4E970;
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);

  [v15 performTask:v16 forPluginID:v17 completionHandler:v19];
  _Block_release(v19);
}

void sub_222A4E8D4(void *a1, void *a2, void (*a3)(__int128 *))
{
  v6 = a1;
  v7 = a2;
  SiriUserFeedbackLearningPlatformResult.init(mlrTaskResult:error:)(a1, a2, &v11);
  v9 = v11;
  v10 = v12;
  a3(&v9);
  v8 = v10;
}

void sub_222A4E970(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t SiriUserFeedbackLearningMLRuntimePlatform.perform(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return MEMORY[0x2822009F8](sub_222A4EA1C, 0, 0);
}

uint64_t sub_222A4EA1C()
{
  v18 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  sub_222A4DE5C(v1, (v0 + 2));
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_222A230FC(0x286D726F66726570, 0xEB00000000293A5FLL, &v17);
    *(v5 + 12) = 2080;
    v7 = SiriUserFeedbackLearningTask.description.getter();
    v9 = v8;
    sub_222A4DEB8((v0 + 2));
    v10 = sub_222A230FC(v7, v9, &v17);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_222A1C000, v3, v4, "SiriUserFeedbackLearningMLRuntimePlugin.%s (async) task: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v6, -1, -1);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  else
  {

    sub_222A4DEB8((v0 + 2));
  }

  v11 = v0[10];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *(v12 + 16) = v11;
  v13 = *(MEMORY[0x277D859E0] + 4);
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_222A4ECA8;
  v15 = v0[9];

  return MEMORY[0x2822007B8](v15, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_222A4F10C, v12, &type metadata for SiriUserFeedbackLearningPlatformResult);
}

uint64_t sub_222A4ECA8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_222A4EDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D420, &unk_222B07840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  v10 = objc_opt_self();
  v11 = *(a2 + 8);
  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  (*(v5 + 16))(v9, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v9, v4);
  aBlock[4] = sub_222A4F26C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4E970;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);

  [v10 performTask:v11 forPluginID:v12 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_222A4EFB0(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  SiriUserFeedbackLearningPlatformResult.init(mlrTaskResult:error:)(a1, a2, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D420, &unk_222B07840);
  return sub_222B02708();
}

uint64_t sub_222A4F04C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return SiriUserFeedbackLearningMLRuntimePlatform.perform(_:)(a1, a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of SiriUserFeedbackLearningPlatform.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_222A34620;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_222A4F26C(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D420, &unk_222B07840) - 8) + 80);

  return sub_222A4EFB0(a1, a2);
}

void sub_222A4F38C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() namespaceNameFromId_];
  v7 = sub_222B02388();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

uint64_t sub_222A4F42C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

uint64_t static TrialConstants.ValueInferenceFactors.isPICSRestatementAndSuccessfulPhoneCallEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.ValueInferenceFactors.isPICSEnabledAtRuntimeInSiriVocab.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsOfflineLearningEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsSurfacingEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsPartialRepetitionSimilarityThreshold.getter()
{
  type metadata accessor for TrialDoubleFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsWakeWordTrimmingEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsPhantomTurnRemovalEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsPlatformFactors.isEventBasedSchedulerEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsPlatformFactors.uuflOfflineLearningEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsPlatformFactors.uuflSurfacingEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

void sub_222A4F798(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id sub_222A4F824()
{
  result = sub_222A4F844();
  qword_280CB5380 = result;
  return result;
}

id sub_222A4F844()
{
  v0 = sub_222B01748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferredGroundTruthStoreCoreData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v9 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v10 = [v7 URLForResource:v8 withExtension:v9];

  if (!v10)
  {
    goto LABEL_3;
  }

  sub_222B01718();

  v11 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v12 = sub_222B016A8();
  v13 = [v11 initWithContentsOfURL_];

  (*(v1 + 8))(v5, v0);
  result = v13;
  if (!v13)
  {
LABEL_3:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v15 = sub_222B02148();
    __swift_project_value_buffer(v15, qword_280CBC458);
    v16 = sub_222B02128();
    v17 = sub_222B028E8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_222A1C000, v16, v17, "InferredGroundTruthStoreCoreData: Error loading data base model from bundle", v18, 2u);
      MEMORY[0x223DC7E30](v18, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t InferredGroundTruthStoreCoreData.init(_:)(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_222B02938();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222B01748();
  v85 = *(v9 - 8);
  v10 = *(v85 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v73 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v73 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v86 = &v73 - v24;
  if (qword_280CB5378 != -1)
  {
    swift_once();
  }

  v25 = qword_280CB5380;
  if (!qword_280CB5380)
  {

LABEL_17:
    type metadata accessor for InferredGroundTruthStoreCoreData();
    swift_deallocPartialClassInstance();
    result = 0;
    goto LABEL_18;
  }

  v77 = v14;
  v82 = v2;
  v26 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v27 = v25;
  v79 = "perform(_:completion:)";
  v28 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v81 = v27;
  v80 = [v26 initWithName:v28 managedObjectModel:v27];

  v29 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
  [v29 setShouldInferMappingModelAutomatically_];
  [v29 setShouldMigrateStoreAutomatically_];
  if (a2)
  {
    sub_222B01688();

    v30 = [objc_opt_self() defaultManager];
    sub_222B01708();
    v31 = sub_222B016A8();
    v32 = *(v85 + 8);
    v33 = v9;
    v78 = v85 + 8;
    v32(v22, v9);
    aBlock[0] = 0;
    v34 = [v30 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:aBlock];

    v35 = v8;
    if (v34)
    {
      v36 = aBlock[0];
      v37 = v86;
    }

    else
    {
      v38 = aBlock[0];
      v39 = sub_222B01628();

      swift_willThrow();
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v40 = sub_222B02148();
      __swift_project_value_buffer(v40, qword_280CBC458);
      v37 = v86;
      (*(v85 + 16))(v18, v86, v9);
      v41 = v39;
      v42 = sub_222B02128();
      v43 = sub_222B028E8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v75 = v43;
        v45 = v44;
        v76 = swift_slowAlloc();
        aBlock[0] = v76;
        *v45 = 136315394;
        sub_222A55F24(&qword_280CB8310, MEMORY[0x277CC9260]);
        v74 = v42;
        v46 = sub_222B02F38();
        v47 = v29;
        v49 = v48;
        v32(v18, v33);
        v50 = sub_222A230FC(v46, v49, aBlock);
        v29 = v47;

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v87 = v39;
        v51 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
        v52 = sub_222B023D8();
        v54 = sub_222A230FC(v52, v53, aBlock);

        *(v45 + 14) = v54;
        v55 = v74;
        _os_log_impl(&dword_222A1C000, v74, v75, "InferredGroundTruthStoreCoreData: Unable to create the data directory, path=%s, error=%s", v45, 0x16u);
        v56 = v76;
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v56, -1, -1);
        MEMORY[0x223DC7E30](v45, -1, -1);
      }

      else
      {

        v32(v18, v9);
      }
    }

    v57 = sub_222B016A8();
    [v29 setURL_];

    type metadata accessor for InferredGroundTruthStoreCoreData();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v59 = [objc_opt_self() bundleForClass_];
    type metadata accessor for IncrementalMigrationManager();
    inited = swift_initStackObject();
    *(inited + 16) = v59;
    sub_222B02928();
    sub_222A9E100(v37, v35, 0xD000000000000010, v79 | 0x8000000000000000);
    swift_setDeallocating();

    (*(v83 + 8))(v35, v84);
    v32(v37, v33);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_222B06DF0;
  *(v61 + 32) = v29;
  sub_222A250BC(0, &qword_280CB8428, 0x277CBE4E0);
  v62 = v29;
  v63 = sub_222B025D8();

  v64 = v80;
  [v80 setPersistentStoreDescriptions_];

  v65 = swift_allocObject();
  v65[16] = 1;
  v66 = v65 + 16;
  aBlock[4] = sub_222A5082C;
  aBlock[5] = v65;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4F798;
  aBlock[3] = &block_descriptor_3;
  v67 = _Block_copy(aBlock);

  [v64 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v67);
  swift_beginAccess();
  if ((*v66 & 1) == 0)
  {

    goto LABEL_17;
  }

  v68 = v82;
  *(v82 + 24) = v64;
  v69 = v64;
  v70 = [v69 newBackgroundContext];

  *(v68 + 16) = v70;

  result = v68;
LABEL_18:
  v72 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222A5063C(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CBC458);
    v7 = a2;
    v8 = a1;
    v9 = sub_222B02128();
    v10 = sub_222B028E8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v11 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
      v14 = sub_222B02B18();
      v16 = sub_222A230FC(v14, v15, &v18);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v17 = v8;
      _os_log_impl(&dword_222A1C000, v9, v10, "InferredGroundTruthStoreCoreData: Unable to load persistent stores: %s : %@", v11, 0x16u);
      sub_222A34F20(v12, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DC7E30](v13, -1, -1);
      MEMORY[0x223DC7E30](v11, -1, -1);
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222A5084C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 16);
  (*(v6 + 16))(v8);
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = v3;
  (*(v6 + 32))(&v11[v10], v8, a2);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222A55664;
  *(v12 + 24) = v11;
  aBlock[4] = sub_222A556A4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A50B98;
  aBlock[3] = &block_descriptor_9;
  v13 = _Block_copy(aBlock);

  [v9 performBlockAndWait_];
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222A50A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_222A93124(a3, a3);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = *(a3 - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  swift_allocObject();
  v11 = sub_222B02618();
  (*(v8 + 16))(v12, a2, a3);
  sub_222A92F08(v11);
  sub_222A50D3C();
}

uint64_t sub_222A50BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v4;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_222A556CC;
  *(v10 + 24) = v9;
  v13[4] = sub_222A56A1C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_222A50B98;
  v13[3] = &block_descriptor_19;
  v11 = _Block_copy(v13);

  [v8 performBlockAndWait_];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

id sub_222A50D3C()
{
  sub_222B026C8();
  swift_getWitnessTable();
  sub_222B02578();
  return sub_222A54870();
}

uint64_t sub_222A50DD4()
{
  v1 = *(v0 + 16);
  sub_222B026C8();
  sub_222B02A58();
  return v3;
}

uint64_t sub_222A50E4C()
{
  v1 = *(v0 + 16);
  sub_222B026C8();
  sub_222B02A58();
  return v3;
}

uint64_t sub_222A50EC8()
{
  type metadata accessor for InferredGroundTruthStoreCoreData();
  v0 = sub_222B026C8();
  sub_222A517C8(sub_222A5690C, v0, &v2);
  result = v2;
  if (!v2)
  {
    return sub_222B02658();
  }

  return result;
}

void sub_222A50F88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v28 = a4;
  v26[1] = a7;
  v26[2] = a6;
  v27 = a8;
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v14 = [v12 initWithEntityName_];

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_222B05250;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_222A55E5C();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  v16 = sub_222B02888();
  [v14 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_222B06DF0;
  v18 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v19 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v20 = [v18 initWithKey:v19 ascending:0];

  *(v17 + 32) = v20;
  sub_222A250BC(0, &qword_280CB8448, 0x277CCAC98);
  v21 = sub_222B025D8();

  [v14 setSortDescriptors_];

  [v14 setFetchLimit_];
  [v14 setFetchOffset_];
  v22 = *(a5 + 16);
  type metadata accessor for GroundTruthRecord();
  v23 = sub_222B02A68();
  if (v29)
  {
  }

  else
  {
    v29 = v26;
    v30 = v23;
    MEMORY[0x28223BE20](v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D428, &qword_222B07988);
    sub_222A56958();
    v25 = sub_222B02568();

    *v27 = v25;
  }
}

uint64_t sub_222A512B8@<X0>(id *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v37 = a3;
  v36 = a2;
  v10 = sub_222B02B28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v35 - v14;
  v16 = [*a1 payload];
  v17 = sub_222B01798();
  v19 = v18;

  v20 = v19;
  v21 = *(a5 + 8);
  sub_222A54F98(a4, v15);
  v22 = *(a4 - 8);
  if ((*(v22 + 48))(v15, 1, a4) == 1)
  {
    v35 = a6;
    (*(v11 + 8))(v15, v10);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v23 = sub_222B02148();
    __swift_project_value_buffer(v23, qword_280CBC458);
    v24 = v37;

    v25 = sub_222B02128();
    v26 = sub_222B028E8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v20;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_222A230FC(v36, v24, &v38);
      _os_log_impl(&dword_222A1C000, v25, v26, "InferredGroundTruthStoreCoreData: Cannot decode an inferred ground truth of type %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223DC7E30](v29, -1, -1);
      MEMORY[0x223DC7E30](v28, -1, -1);

      v30 = v17;
      v31 = v27;
    }

    else
    {

      v30 = v17;
      v31 = v20;
    }

    sub_222A26530(v30, v31);
    v32 = 1;
    v33 = v35;
  }

  else
  {
    sub_222A26530(v17, v20);
    (*(v22 + 32))(a6, v15, a4);
    v32 = 0;
    v33 = a6;
  }

  return (*(v22 + 56))(v33, v32, 1, a4);
}

uint64_t sub_222A517C8@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  a1();
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_222A51A60()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222A55794;
  *(v2 + 24) = v0;
  v5[4] = sub_222A56A1C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222A50B98;
  v5[3] = &block_descriptor_26;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222A51B9C(uint64_t a1)
{

  sub_222A55F6C(0x746E497465736572, 0xEF29286C616E7265, a1);
}

void sub_222A51BFC(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 initWithEntityName_];

  v5 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v6 = *(a1 + 16);
  v16[0] = 0;
  v7 = [v6 executeRequest:v5 error:v16];
  if (!v7)
  {
    v14 = v16[0];
    sub_222B01628();

    swift_willThrow();
    goto LABEL_9;
  }

  v8 = v7;
  v9 = v16[0];

  if (sub_222A54870())
  {
LABEL_9:

    goto LABEL_10;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v10 = sub_222B02148();
  __swift_project_value_buffer(v10, qword_280CBC458);
  v11 = sub_222B02128();
  v12 = sub_222B028E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_222A1C000, v11, v12, "InferredGroundTruthStoreCoreData: Cannot reset store, failed to save", v13, 2u);
    MEMORY[0x223DC7E30](v13, -1, -1);
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_222A51DF8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D428, &qword_222B07988);
  sub_222B02A58();
  return v3;
}

uint64_t sub_222A51E6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = 0;

  sub_222A56160(0xD000000000000022, 0x8000000222B11AB0, 0, 0, 1, &v6, a1);

  v5 = v6;
  if (!v6)
  {
    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t sub_222A51EF8()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222A557B8;
  *(v2 + 24) = v0;
  v5[4] = sub_222A56A1C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222A50B98;
  v5[3] = &block_descriptor_33;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_222A52034()
{
  v2 = v0;
  v119[1] = *MEMORY[0x277D85DE8];
  v114 = sub_222B018D8();
  v3 = *(v114 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v114, v5);
  v113 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v8 = sub_222A52F50();
  if (__OFSUB__(v8, 0x100000))
  {
    __break(1u);
  }

  else
  {
    if (((v8 - 0x100000) & 0x8000000000000000) != 0)
    {
      goto LABEL_99;
    }

    v107 = v8 - 0x100000;
    v119[0] = 0;

    sub_222A56494(0xD00000000000001CLL, 0x8000000222B11A90, v119, v0);

    v10 = v119[0];
    if (!v119[0])
    {
      v10 = MEMORY[0x277D84F90];
    }

    v118 = v10;
    v108 = v10 >> 62;
    if (!(v10 >> 62))
    {
      v11 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v11 = sub_222B02DC8();
LABEL_7:
  v12 = &unk_280CBA000;
  v110 = v0;
  v109 = v7;
  if (v11)
  {
    if (v11 < 1)
    {
      __break(1u);
      goto LABEL_103;
    }

    v13 = 0;
    v117 = v118 & 0xC000000000000001;
    v112 = (v3 + 8);
    v1 = qword_280CBC458;
    *&v9 = 136315394;
    v111 = v9;
    do
    {
      if (v117)
      {
        v30 = MEMORY[0x223DC6F00](v13, v118);
      }

      else
      {
        v30 = *(v118 + 8 * v13 + 32);
      }

      v31 = v30;
      if (v12[197] != -1)
      {
        swift_once();
      }

      v32 = sub_222B02148();
      v33 = __swift_project_value_buffer(v32, qword_280CBC458);
      v34 = v31;
      v116 = v33;
      v35 = sub_222B02128();
      v36 = sub_222B028E8();

      if (os_log_type_enabled(v35, v36))
      {
        v14 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v119[0] = v115;
        *v14 = v111;
        v15 = [v34 id];
        v16 = v113;
        sub_222B01898();

        sub_222A55F24(&qword_280CB82F8, MEMORY[0x277CC95F0]);
        v17 = v11;
        v18 = v114;
        v19 = sub_222B02F38();
        v21 = v20;
        (*v112)(v16, v18);
        v22 = sub_222A230FC(v19, v21, v119);

        *(v14 + 4) = v22;
        *(v14 + 12) = 2080;
        v23 = [v34 type];
        v24 = sub_222B02388();
        v26 = v25;

        v27 = sub_222A230FC(v24, v26, v119);
        v11 = v17;
        v1 = qword_280CBC458;

        *(v14 + 14) = v27;
        _os_log_impl(&dword_222A1C000, v35, v36, "InferredGroundTruthStoreCoreData: Preparing to delete a GT record with zero payload; id=%s, type=%s", v14, 0x16u);
        v28 = v115;
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v28, -1, -1);
        v29 = v14;
        v12 = &unk_280CBA000;
        MEMORY[0x223DC7E30](v29, -1, -1);
      }

      else
      {
      }

      ++v13;
    }

    while (v11 != v13);
    if (v108)
    {
      v3 = sub_222B02DC8();
    }

    else
    {
      v3 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = v110;
    v7 = v109;
    if (v3)
    {
      v119[0] = MEMORY[0x277D84F90];
      sub_222B02D38();
      if ((v3 & 0x8000000000000000) != 0)
      {
LABEL_105:
        __break(1u);
LABEL_106:
        swift_once();
LABEL_83:
        v86 = sub_222B02148();
        __swift_project_value_buffer(v86, qword_280CBC458);

        v87 = sub_222B02128();
        v88 = sub_222B028D8();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 134217984;
          if (v1)
          {
            v90 = sub_222B02DC8();
          }

          else
          {
            v90 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v89 + 4) = v90;

          _os_log_impl(&dword_222A1C000, v87, v88, "InferredGroundTruthStoreCoreData: Deleted %ld records due to store size exceeding the threshold", v89, 0xCu);
          MEMORY[0x223DC7E30](v89, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        goto LABEL_99;
      }

      v37 = 0;
      do
      {
        if (v117)
        {
          v38 = MEMORY[0x223DC6F00](v37, v118);
        }

        else
        {
          v38 = *(v118 + 8 * v37 + 32);
        }

        v39 = v38;
        ++v37;
        v40 = [v38 objectID];

        sub_222B02D18();
        v41 = *(v119[0] + 2);
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
      }

      while (v3 != v37);
    }

    v42 = objc_allocWithZone(MEMORY[0x277CBE360]);
    sub_222A250BC(0, &qword_27D01D448, 0x277CBE448);
    v43 = sub_222B025D8();

    v44 = [v42 initWithObjectIDs_];

    v119[0] = 0;
    v45 = [v7 executeRequest:v44 error:v119];
    if (v45)
    {
      v46 = v45;
      v47 = v119[0];

      v48 = sub_222B02128();
      v49 = sub_222B028F8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        if (v108)
        {
          v1 = sub_222B02DC8();
        }

        else
        {
          v1 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v50 + 4) = v1;

        _os_log_impl(&dword_222A1C000, v48, v49, "InferredGroundTruthStoreCoreData: Deleted %ld invalid records with zero payload", v50, 0xCu);
        MEMORY[0x223DC7E30](v50, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      v51 = v119[0];

      v52 = sub_222B01628();

      swift_willThrow();
      v53 = v52;
      v54 = sub_222B02128();
      v55 = sub_222B028E8();

      if (os_log_type_enabled(v54, v55))
      {
        v1 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v119[0] = v56;
        *v1 = 136315138;
        swift_getErrorValue();
        v57 = sub_222B030C8();
        v59 = sub_222A230FC(v57, v58, v119);

        *(v1 + 4) = v59;
        _os_log_impl(&dword_222A1C000, v54, v55, "InferredGroundTruthStoreCoreData: Failed to delete records with zero payload, error=%s", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x223DC7E30](v56, -1, -1);
        MEMORY[0x223DC7E30](v1, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  v119[0] = 0;
  v60 = "readRecordsWithZeroPayload()";

  sub_222A56160(0xD000000000000022, 0x8000000222B11AB0, 1, 10, 0, v119, v2);

  if (v119[0])
  {
    v3 = v119[0];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (!(v3 >> 62))
  {
    v61 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_45;
    }

LABEL_57:

    v63 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v61 = sub_222B02DC8();
  if (!v61)
  {
    goto LABEL_57;
  }

LABEL_45:
  v119[0] = MEMORY[0x277D84F90];
  sub_222A23C88(0, v61 & ~(v61 >> 63), 0);
  if (v61 < 0)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v118 = "readRecordsWithZeroPayload()";
  v62 = 0;
  v63 = v119[0];
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x223DC6F00](v62, v3);
    }

    else
    {
      v64 = *(v3 + 8 * v62 + 32);
    }

    v65 = v64;
    v66 = [v64 payload];
    v1 = sub_222B01798();
    v68 = v67;

    v119[0] = v63;
    v70 = v63[2];
    v69 = v63[3];
    if (v70 >= v69 >> 1)
    {
      sub_222A23C88((v69 > 1), v70 + 1, 1);
      v63 = v119[0];
    }

    ++v62;
    v63[2] = v70 + 1;
    v71 = &v63[2 * v70];
    v71[4] = v1;
    v71[5] = v68;
  }

  while (v61 != v62);

  v2 = v110;
  v7 = v109;
  v12 = &unk_280CBA000;
  v60 = v118;
LABEL_58:
  v72 = sub_222A53830(v63);

  if (v72 <= 9)
  {
    v73 = 5;
  }

  else if ((v107 / (v72 / 0xAuLL)) <= 0)
  {
    v73 = 5;
  }

  else
  {
    v73 = v107 / (v72 / 0xAuLL);
  }

  v119[0] = 0;

  sub_222A56160(0xD000000000000022, v60 | 0x8000000000000000, 1, v73, 0, v119, v2);

  if (v119[0])
  {
    v3 = v119[0];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (!(v3 >> 62))
  {
    v74 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v74)
    {
      goto LABEL_68;
    }

LABEL_76:

    v3 = MEMORY[0x277D84F90];
    goto LABEL_77;
  }

  v74 = sub_222B02DC8();
  if (!v74)
  {
    goto LABEL_76;
  }

LABEL_68:
  v119[0] = MEMORY[0x277D84F90];
  sub_222B02D38();
  if (v74 < 0)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v75 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x223DC6F00](v75, v3);
    }

    else
    {
      v76 = *(v3 + 8 * v75 + 32);
    }

    v77 = v76;
    ++v75;
    v78 = [v76 objectID];

    sub_222B02D18();
    v79 = *(v119[0] + 2);
    sub_222B02D48();
    sub_222B02D58();
    sub_222B02D28();
  }

  while (v74 != v75);

  v3 = v119[0];
LABEL_77:
  v1 = (v3 >> 62);
  if (v3 >> 62)
  {
    if (!sub_222B02DC8())
    {
      goto LABEL_81;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_81;
  }

  v80 = objc_allocWithZone(MEMORY[0x277CBE360]);
  sub_222A250BC(0, &qword_27D01D448, 0x277CBE448);
  v81 = sub_222B025D8();
  v82 = [v80 initWithObjectIDs_];

  v119[0] = 0;
  v83 = [v7 executeRequest:v82 error:v119];
  if (!v83)
  {
    v95 = v119[0];

    v96 = sub_222B01628();

    swift_willThrow();
    if (v12[197] != -1)
    {
      swift_once();
    }

    v97 = sub_222B02148();
    __swift_project_value_buffer(v97, qword_280CBC458);
    v98 = v96;
    v99 = sub_222B02128();
    v100 = sub_222B028E8();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v119[0] = v102;
      *v101 = 136315138;
      swift_getErrorValue();
      v103 = sub_222B030C8();
      v105 = sub_222A230FC(v103, v104, v119);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_222A1C000, v99, v100, "InferredGroundTruthStoreCoreData: Cannot delete oldest records %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x223DC7E30](v102, -1, -1);
      MEMORY[0x223DC7E30](v101, -1, -1);
    }

    else
    {
    }

    goto LABEL_99;
  }

  v84 = v83;
  v85 = v119[0];

LABEL_81:
  if (sub_222A54870())
  {
    if (v12[197] == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_106;
  }

  if (v12[197] != -1)
  {
    swift_once();
  }

  v91 = sub_222B02148();
  __swift_project_value_buffer(v91, qword_280CBC458);
  v92 = sub_222B02128();
  v93 = sub_222B028E8();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_222A1C000, v92, v93, "InferredGroundTruthStoreCoreData: Cannot save context with deleted oldest records", v94, 2u);
    MEMORY[0x223DC7E30](v94, -1, -1);
  }

LABEL_99:
  v106 = *MEMORY[0x277D85DE8];
}

char *sub_222A52F50()
{
  v1 = v0;
  v70[4] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v67 - v9;
  v11 = sub_222B01748();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v1 persistentStoreCoordinator];
  if (!v17)
  {
    goto LABEL_40;
  }

  v18 = v17;
  v19 = [v17 persistentStores];

  sub_222A250BC(0, &qword_280CB4BA8, 0x277CBE4D0);
  v20 = sub_222B025F8();

  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  if (!sub_222B02DC8())
  {
LABEL_39:

LABEL_40:
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_41;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x223DC6F00](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v23 = [v22 URL];

  if (v23)
  {
    sub_222B01718();

    (*(v12 + 56))(v7, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v7, 1, 1, v11);
  }

  sub_222A5689C(v7, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_41:
    sub_222A34F20(v10, &qword_27D01D458, &unk_222B07E00);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v62 = sub_222B02148();
    __swift_project_value_buffer(v62, qword_280CBC458);
    v63 = sub_222B02128();
    v64 = sub_222B028E8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_222A1C000, v63, v64, "NSManagedObjectContext: Failed to get store URL", v65, 2u);
      MEMORY[0x223DC7E30](v65, -1, -1);
    }

    goto LABEL_46;
  }

  (*(v12 + 32))(v16, v10, v11);
  v24 = objc_opt_self();
  v25 = [v24 defaultManager];
  sub_222B01738();
  v26 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v69[0] = 0;
  v27 = [v25 attributesOfItemAtPath:v26 error:v69];

  v28 = v69[0];
  if (v27)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_222A55F24(&qword_280CB4BA0, type metadata accessor for FileAttributeKey);
    v29 = sub_222B022B8();
    v30 = v28;

    if (*(v29 + 16) && (v31 = *MEMORY[0x277CCA1C0], v32 = sub_222A27104(*MEMORY[0x277CCA1C0]), (v33 & 1) != 0))
    {
      sub_222A25344(*(v29 + 56) + 32 * v32, v70);

      if (swift_dynamicCast())
      {
        v68 = v69[0];
        v34 = [v24 defaultManager];
        v69[0] = sub_222B01738();
        v69[1] = v35;
        MEMORY[0x223DC66E0](1818326829, 0xE400000000000000);
        v36 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

        v69[0] = 0;
        v37 = [v34 attributesOfItemAtPath:v36 error:v69];

        v38 = v69[0];
        if (!v37)
        {
LABEL_37:
          v49 = v38;
          goto LABEL_26;
        }

        v39 = sub_222B022B8();
        v40 = v38;

        if (*(v39 + 16) && (v41 = sub_222A27104(v31), (v42 & 1) != 0))
        {
          sub_222A25344(*(v39 + 56) + 32 * v41, v70);
          v43 = *(v12 + 8);
          v12 += 8;
          v43(v16, v11);

          if (swift_dynamicCast())
          {
            v44 = v69[0];
LABEL_34:
            result = &v44[v68];
            if (!__OFADD__(v68, v44))
            {
              goto LABEL_47;
            }

            __break(1u);
            goto LABEL_37;
          }
        }

        else
        {

          v60 = *(v12 + 8);
          v12 += 8;
          v60(v16, v11);
        }

        v44 = 0;
        goto LABEL_34;
      }
    }

    else
    {
    }

    if (qword_280CBA628 == -1)
    {
LABEL_22:
      v45 = sub_222B02148();
      __swift_project_value_buffer(v45, qword_280CBC458);
      v46 = sub_222B02128();
      v47 = sub_222B028E8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_222A1C000, v46, v47, "NSManagedObjectContext: Failed to get store size", v48, 2u);
        MEMORY[0x223DC7E30](v48, -1, -1);
      }

      goto LABEL_31;
    }

LABEL_50:
    swift_once();
    goto LABEL_22;
  }

  v49 = v69[0];
LABEL_26:
  v50 = sub_222B01628();

  swift_willThrow();
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v51 = sub_222B02148();
  __swift_project_value_buffer(v51, qword_280CBC458);
  v52 = v50;
  v53 = sub_222B02128();
  v54 = sub_222B028E8();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v70[0] = v56;
    *v55 = 136315138;
    swift_getErrorValue();
    v57 = sub_222B030C8();
    v59 = sub_222A230FC(v57, v58, v70);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_222A1C000, v53, v54, "NSManagedObjectContext: Cannot determine store size %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x223DC7E30](v56, -1, -1);
    MEMORY[0x223DC7E30](v55, -1, -1);
  }

  else
  {
  }

LABEL_31:
  (*(v12 + 8))(v16, v11);
LABEL_46:
  result = 0;
LABEL_47:
  v66 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222A53830(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 16);
  v4 = (a1 + 40);
  v5 = v3 + 1;
  while (--v5)
  {
    v6 = *(v4 - 1);
    v8 = *v4 >> 62;
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v11 = v6 + 16;
        v9 = *(v6 + 16);
        v10 = *(v11 + 8);
        v7 = __OFSUB__(v10, v9);
        v6 = v10 - v9;
        if (v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else if (v8)
    {
      v7 = __OFSUB__(HIDWORD(v6), v6);
      LODWORD(v6) = HIDWORD(v6) - v6;
      if (v7)
      {
        goto LABEL_17;
      }

      v6 = v6;
    }

    else
    {
      v6 = BYTE6(*v4);
    }

    v4 += 2;
    v7 = __OFADD__(result, v6);
    result += v6;
    if (v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_222A538B8()
{
  v1 = *(v0 + 16);
  sub_222B02A58();
  return v3;
}

uint64_t sub_222A53920()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 initWithEntityName_];

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222B05260;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_222A55E5C();
  *(v5 + 32) = 25705;
  *(v5 + 40) = 0xE200000000000000;
  v6 = sub_222B01878();
  *(v5 + 96) = sub_222A250BC(0, &qword_27D01D438, 0x277CCAD78);
  *(v5 + 104) = sub_222A55EB0(&qword_27D01D440, &qword_27D01D438, 0x277CCAD78);
  *(v5 + 72) = v6;
  v7 = sub_222B02888();
  [v4 setPredicate_];

  v8 = v4;
  v9 = sub_222A5668C(0xD000000000000015, 0x8000000222B11A70, v1);

  if (v9 == 2 || (v9 & 1) == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_222A54870();
  }

  return v10 & 1;
}

unint64_t sub_222A53B0C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *(a1 + 16);
  type metadata accessor for GroundTruthRecord();
  result = sub_222B02A68();
  if (!v2)
  {
    v6 = result;
    if (result >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223DC6F00](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        [v4 deleteObject_];

        ++v8;
        if (v11 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    *a2 = i != 0;
  }

  return result;
}

uint64_t sub_222A53C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 16);
  (*(v6 + 16))(v8);
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = v3;
  (*(v6 + 32))(&v11[v10], v8, a2);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222A558BC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_222A56A1C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A50B98;
  aBlock[3] = &block_descriptor_43;
  v13 = _Block_copy(aBlock);

  [v9 performBlockAndWait_];
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void sub_222A53E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v25 = a1;
  v28 = sub_222B018D8();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v10 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v29 = [v9 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222B07970;
  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v12 = swift_allocObject();
  v26 = xmmword_222B05260;
  *(v12 + 16) = xmmword_222B05260;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_222A55E5C();
  *(v12 + 64) = v13;
  *(v12 + 32) = 25705;
  *(v12 + 40) = 0xE200000000000000;
  v14 = v27;
  (*(a3 + 48))(v27, a3);
  v15 = sub_222B01878();
  (*(v4 + 8))(v8, v28);
  *(v12 + 96) = sub_222A250BC(0, &qword_27D01D438, 0x277CCAD78);
  *(v12 + 104) = sub_222A55EB0(&qword_27D01D440, &qword_27D01D438, 0x277CCAD78);
  *(v12 + 72) = v15;
  *(v11 + 32) = sub_222B02888();
  v16 = swift_allocObject();
  *(v16 + 16) = v26;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = v13;
  *(v16 + 32) = 1701869940;
  *(v16 + 40) = 0xE400000000000000;
  v18 = v25;
  v19 = (*(a3 + 56))(v14, a3);
  *(v16 + 96) = v17;
  *(v16 + 104) = v13;
  *(v16 + 72) = v19;
  *(v16 + 80) = v20;
  *(v11 + 40) = sub_222B02888();
  v21 = sub_222B025D8();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  v23 = v29;
  [v29 setPredicate_];

  v31 = v14;
  v32 = a3;
  v33 = v30;
  v34 = v23;
  v35 = v18;
  sub_222A515D0(0xD000000000000012, 0x8000000222B11A50, sub_222A55F00);
}

void sub_222A54204(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v74 = a3;
  v75 = a5;
  v8 = sub_222B018D8();
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a4 - 1);
  isa = v72[8].isa;
  v16 = MEMORY[0x28223BE20](v11, v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v66 - v20;
  v22 = *(a1 + 16);
  type metadata accessor for GroundTruthRecord();
  v23 = sub_222B02A68();
  if (!v5)
  {
    v24 = v23;
    v68 = a1;
    v69 = v21;
    v25 = v74;
    v70 = v18;
    v73 = 0;
    if (v23 >> 62)
    {
LABEL_31:
      v26 = sub_222B02DC8();
    }

    else
    {
      v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v8;
    v28 = v75;
    v29 = a4;
    if (v26)
    {
      v30 = sub_222B01528();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_222B01518();
      v33 = *(v28 + 16);
      v34 = v73;
      v35 = sub_222B01508();
      v73 = v34;
      if (v34)
      {

        return;
      }

      v8 = v35;
      v75 = v36;

      v25 = 0;
      v13 = (v24 & 0xC000000000000001);
      do
      {
        if (v13)
        {
          v58 = MEMORY[0x223DC6F00](v25, v24);
        }

        else
        {
          if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v58 = *(v24 + 8 * v25 + 32);
        }

        a4 = v58;
        v59 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v60 = sub_222B01788();
        [a4 setPayload_];

        ++v25;
      }

      while (v59 != v26);

      v61 = sub_222A54870();
      if (v61)
      {
        sub_222A26530(v8, v75);
        return;
      }

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v63 = sub_222B02148();
      __swift_project_value_buffer(v63, qword_280CBC458);
      v56 = sub_222B02128();
      v64 = sub_222B028E8();
      if (os_log_type_enabled(v56, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_222A1C000, v56, v64, "InferredGroundTruthStoreCoreData: Cannot save context after updating records", v65, 2u);
        MEMORY[0x223DC7E30](v65, -1, -1);
      }

      sub_222A26530(v8, v75);
    }

    else
    {
      v74 = v27;

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v37 = sub_222B02148();
      __swift_project_value_buffer(v37, qword_280CBC458);
      v38 = v72;
      v39 = v72[2].isa;
      v40 = v69;
      (v39)(v69, v25, a4);
      v41 = v70;
      (v39)(v70, v25, v29);
      v42 = sub_222B02128();
      v43 = sub_222B028E8();
      if (!os_log_type_enabled(v42, v43))
      {
        v62 = v38[1].isa;
        v62(v40, v29);

        v62(v41, v29);
        return;
      }

      v44 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v76 = v68;
      *v44 = 136315394;
      v45 = v75;
      v46 = *(v75 + 48);
      v67 = v43;
      v46(v29, v75);
      v66 = v38[1].isa;
      v66(v40, v29);
      sub_222A55F24(&qword_280CB82F8, MEMORY[0x277CC95F0]);
      v47 = v74;
      v48 = sub_222B02F38();
      v72 = v42;
      v50 = v49;
      (*(v71 + 8))(v13, v47);
      v51 = sub_222A230FC(v48, v50, &v76);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      v52 = (*(v45 + 56))(v29, v45);
      v54 = v53;
      v66(v41, v29);
      v55 = sub_222A230FC(v52, v54, &v76);

      *(v44 + 14) = v55;
      v56 = v72;
      _os_log_impl(&dword_222A1C000, v72, v67, "InferredGroundTruthStoreCoreData: No matching record found to update with id=%s and type=%s", v44, 0x16u);
      v57 = v68;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v57, -1, -1);
      MEMORY[0x223DC7E30](v44, -1, -1);
    }
  }
}

id sub_222A54870()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v18[0] = 0;
  v2 = [v1 save_];
  if (v2)
  {
    v3 = v18[0];
  }

  else
  {
    v4 = v18[0];
    v5 = sub_222B01628();

    swift_willThrow();
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CBC458);
    v7 = v5;
    v8 = sub_222B02128();
    v9 = sub_222B028E8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      v12 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v13 = sub_222B023D8();
      v15 = sub_222A230FC(v13, v14, v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222A1C000, v8, v9, "InferredGroundTruthStoreCoreData: Unresolved error in save changes error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DC7E30](v11, -1, -1);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    else
    {
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_222A54A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v51 = v3;
  v52 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v50 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v50 - v12;
  v14 = sub_222B018D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_222B01848();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B01838();
  sub_222B01818();
  v27 = v26;
  (*(v21 + 8))(v25, v20);
  (*(a3 + 56))(a2, a3);
  v28 = *(a3 + 8);
  v29 = *(a3 + 16);
  v30 = sub_222A55B0C(a1, a2);
  if (v31 >> 60 == 15)
  {

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v32 = sub_222B02148();
    __swift_project_value_buffer(v32, qword_280CBC458);
    v33 = v52;
    v34 = *(v52 + 16);
    v34(v13, a1, a2);
    v35 = sub_222B02128();
    v36 = sub_222B028E8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53 = v38;
      *v37 = 136315138;
      v34(v50, v13, a2);
      v39 = sub_222B023D8();
      v41 = v40;
      (*(v33 + 8))(v13, a2);
      v42 = sub_222A230FC(v39, v41, &v53);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_222A1C000, v35, v36, "InferredGroundTruthStoreCoreData: Cannot build a database record for an inferred ground truth:%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223DC7E30](v38, -1, -1);
      MEMORY[0x223DC7E30](v37, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v13, a2);
    }

    return 0;
  }

  else
  {
    v52 = v30;
    v50 = v31;
    type metadata accessor for GroundTruthRecord();
    v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    (*(a3 + 48))(a2, a3);
    v44 = sub_222B01878();
    (*(v15 + 8))(v19, v14);
    [v43 setId_];

    [v43 setTimestamp_];
    v45 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

    [v43 setType_];

    v46 = v52;
    v47 = v50;
    v48 = sub_222B01788();
    [v43 setPayload_];

    sub_222A398A4(v46, v47);
  }

  return v43;
}

uint64_t sub_222A54F98@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_222B014C8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_222B014B8();
  sub_222B014A8();

  v7 = *(*(a1 - 8) + 56);

  return v7(a2, 0, 1, a1);
}

void sub_222A55290(uint64_t *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v7 = [v5 initWithEntityName_];

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_222B05260;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_222A55E5C();
  *(v8 + 32) = 0x64616F6C796170;
  *(v8 + 40) = 0xE700000000000000;
  v9 = sub_222B01788();
  *(v8 + 96) = sub_222A250BC(0, &qword_280CB8418, 0x277CBEA90);
  *(v8 + 104) = sub_222A55EB0(&qword_27D01D450, &qword_280CB8418, 0x277CBEA90);
  *(v8 + 72) = v9;
  v10 = sub_222B02888();
  [v7 setPredicate_];

  v11 = *(a2 + 16);
  type metadata accessor for GroundTruthRecord();
  v12 = sub_222B02A68();

  if (!v2)
  {
    v13 = *a1;
    *a1 = v12;
  }
}

uint64_t InferredGroundTruthStoreCoreData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A5557C()
{
  v1 = *(*v0 + 16);
  sub_222B02A58();
  return v3;
}

uint64_t sub_222A5562C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_222A556A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_222A556CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[4];
  return sub_222A50D3C();
}

uint64_t sub_222A556F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[4];
  result = sub_222A50EC8();
  *a1 = result;
  return result;
}

uint64_t sub_222A55748@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[4];
  result = sub_222A50EC8();
  *a1 = result;
  return result;
}

uint64_t sub_222A557BC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = sub_222A53920();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_222A558BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80));
  v4 = v0[4];
  sub_222A53E64(v3, v1, v2);
}

uint64_t dispatch thunk of InferredGroundTruthStoreCoreData.write<A>(_:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

uint64_t sub_222A55AB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_222A55B0C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  v3 = MEMORY[0x28223BE20](a1, a2);
  MEMORY[0x28223BE20](v3, v4);
  v5 = sub_222B01528();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_222B01518();
  v8 = sub_222B01508();

  return v8;
}

unint64_t sub_222A55E5C()
{
  result = qword_280CB4BE8;
  if (!qword_280CB4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4BE8);
  }

  return result;
}

uint64_t sub_222A55EB0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_222A250BC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222A55F24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222A56160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7)
{
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v13 = [v11 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222B06DF0;
  sub_222A250BC(0, &qword_280CB8448, 0x277CCAC98);
  swift_getKeyPath();
  *(v14 + 32) = sub_222B02908();
  v15 = sub_222B025D8();

  [v13 setSortDescriptors_];

  if ((a5 & 1) == 0)
  {
    [v13 setFetchLimit_];
  }

  v16 = *(a7 + 16);
  type metadata accessor for GroundTruthRecord();
  v17 = sub_222B02A68();

  v18 = *a6;
  *a6 = v17;

  return 0;
}

uint64_t sub_222A5689C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_222A56958()
{
  result = qword_280CB4BC8;
  if (!qword_280CB4BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D428, &qword_222B07988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4BC8);
  }

  return result;
}

void sub_222A569BC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
}

uint64_t TrialFactorResolving.resolveFlag(factor:scope:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  (*(a4 + 16))(&var1, a1, v8, MEMORY[0x277D839B0], &protocol witness table for Bool, a3, a4);
  if (!v4)
  {
    v6 = var1;
  }

  return v6 & 1;
}

double TrialFactorResolving.resolveDoubleFactor(factor:scope:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  (*(a4 + 16))(&v8, a1, v7, MEMORY[0x277D839F8], &protocol witness table for Double, a3, a4);
  if (!v4)
  {
    return v8;
  }

  return result;
}

uint64_t MTUpdateAlarmIntentFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000013;
  *(result + 24) = 0x8000000222B11B10;
  return result;
}

uint64_t MTUpdateAlarmIntentFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000222B11B10;
  return result;
}

uint64_t sub_222A56C38(id *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v81 = &v78 - v6;
  v7 = sub_222B01848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v80 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v82 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D360, &unk_222B07328);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v78 - v18;
  v20 = sub_222B015F8();
  v84 = *(v20 - 8);
  v21 = *(v84 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v83 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = [*a1 intent];
  v26 = sub_222A816E4();
  if (!v27)
  {
    goto LABEL_16;
  }

  v29 = *(v1 + 16);
  v28 = *(v1 + 24);
  if (v26 == v29 && v27 == v28)
  {
  }

  else
  {
    v30 = sub_222B02F78();

    if ((v30 & 1) == 0)
    {
LABEL_16:

      return MEMORY[0x277D84F90];
    }
  }

  v31 = [v25 parametersByName];
  if (!v31)
  {
    goto LABEL_16;
  }

  v78 = v8;
  v79 = v7;
  v32 = v31;
  v33 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_222B05260;
  v35 = type metadata accessor for MTUpdateAlarmEventFeature.EventType(0);
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  *(v36 + 24) = v28;
  *(v34 + 56) = v35;
  *(v34 + 64) = sub_222A576CC(&qword_27D01D468, type metadata accessor for MTUpdateAlarmEventFeature.EventType);
  *(v34 + 32) = v36;

  v37 = [v24 _donatedBySiri];
  v38 = type metadata accessor for MTUpdateAlarmEventFeature.DonatedBySiri(0);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v34 + 96) = v38;
  *(v34 + 104) = sub_222A576CC(&qword_27D01D470, type metadata accessor for MTUpdateAlarmEventFeature.DonatedBySiri);
  *(v34 + 72) = v39;
  if (*(v33 + 16))
  {
    v40 = sub_222A26EC8(0x6C6562616CLL, 0xE500000000000000);
    if (v41)
    {
      sub_222A25344(*(v33 + 56) + 32 * v40, &v87);
      if (swift_dynamicCast())
      {
        v42 = v85;
        v43 = v86;
        v44 = type metadata accessor for MTUpdateAlarmEventFeature.AlarmName(0);
        v45 = swift_allocObject();
        *(v45 + 16) = v42;
        *(v45 + 24) = v43;
        v34 = sub_222AA8FDC(1, 3, 1, v34);
        v88 = v44;
        v89 = sub_222A576CC(&qword_27D01D488, type metadata accessor for MTUpdateAlarmEventFeature.AlarmName);
        *&v87 = v45;
        *(v34 + 16) = 3;
        sub_222A2577C(&v87, v34 + 112);
      }
    }
  }

  v47 = v78;
  v46 = v79;
  v49 = v83;
  v48 = v84;
  if (*(v33 + 16) && (v50 = sub_222A26EC8(0x706D6F4365746164, 0xEE0073746E656E6FLL), (v51 & 1) != 0))
  {
    sub_222A25344(*(v33 + 56) + 32 * v50, &v87);
    v52 = swift_dynamicCast();
    (*(v48 + 56))(v19, v52 ^ 1u, 1, v20);
    if ((*(v48 + 48))(v19, 1, v20) != 1)
    {
      (*(v48 + 32))(v49, v19, v20);
      v19 = v81;
      sub_222B015E8();
      if ((*(v47 + 48))(v19, 1, v46) != 1)
      {
        v79 = *(v47 + 32);
        v72 = v82;
        v79(v82, v19, v46);
        v73 = v80;
        (*(v47 + 16))(v80, v72, v46);
        v57 = type metadata accessor for MTUpdateAlarmEventFeature.AlarmTime(0);
        v74 = *(v57 + 48);
        v75 = *(v57 + 52);
        v60 = swift_allocObject();
        v79(v60 + *(*v60 + 96), v73, v46);
        v49 = *(v34 + 16);
        v61 = *(v34 + 24);
        v48 = v49 + 1;
        if (v49 >= v61 >> 1)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      v53 = *(v48 + 8);
      v48 += 8;
      v53(v49, v20);
      v54 = &qword_27D01D700;
      v55 = &qword_222B07320;
      goto LABEL_19;
    }
  }

  else
  {
    v56 = *(v48 + 56);
    v48 += 56;
    v56(v19, 1, 1, v20);
  }

  v54 = &qword_27D01D360;
  v55 = &unk_222B07328;
LABEL_19:
  sub_222A34F20(v19, v54, v55);
  if (*(v33 + 16))
  {
    while (1)
    {
      v57 = v33;
      v58 = sub_222A26EC8(0x6353746165706572, 0xEE00656C75646568);
      if ((v59 & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_222A25344(*(v33 + 56) + 32 * v58, &v87);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D378, &qword_222B07338);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_33;
      }

      v60 = v85;
      if (v85 >> 62)
      {
        if (!sub_222B02DC8())
        {
          goto LABEL_32;
        }
      }

      else if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        break;
      }

      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v61)
      {
        v62 = *(v60 + 32);
LABEL_27:
        v63 = v62;

        v64 = [v63 displayString];
        v65 = sub_222B02388();
        v67 = v66;

        v68 = type metadata accessor for MTUpdateAlarmEventFeature.AlarmRepeatSchedule(0);
        v69 = swift_allocObject();
        *(v69 + 16) = v65;
        *(v69 + 24) = v67;
        v71 = *(v34 + 16);
        v70 = *(v34 + 24);
        if (v71 >= v70 >> 1)
        {
          v34 = sub_222AA8FDC((v70 > 1), v71 + 1, 1, v34);
        }

        v88 = v68;
        v89 = sub_222A576CC(&qword_27D01D478, type metadata accessor for MTUpdateAlarmEventFeature.AlarmRepeatSchedule);
        *&v87 = v69;
        *(v34 + 16) = v71 + 1;
        sub_222A2577C(&v87, v34 + 40 * v71 + 32);
        return v34;
      }

      __break(1u);
LABEL_39:
      v34 = sub_222AA8FDC((v61 > 1), v48, 1, v34);
LABEL_31:
      v76 = *(v47 + 8);
      v47 += 8;
      v76(v82, v46);
      (*(v84 + 8))(v83, v20);
      v88 = v57;
      v89 = sub_222A576CC(&qword_27D01D480, type metadata accessor for MTUpdateAlarmEventFeature.AlarmTime);
      *&v87 = v60;
      *(v34 + 16) = v48;
      sub_222A2577C(&v87, v34 + 40 * v49 + 32);
      if (!*(v33 + 16))
      {
        goto LABEL_32;
      }
    }

    v62 = MEMORY[0x223DC6F00](0, v60);
    goto LABEL_27;
  }

LABEL_32:

LABEL_33:

  return v34;
}

uint64_t MTUpdateAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MTUpdateAlarmEventFeature.AlarmTime.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *(*v5 + 96);
  v7 = sub_222B01848();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

{
  v2 = v1;
  v4 = sub_222B01848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  v12 = swift_allocObject();
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D700, &qword_222B07320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    v13 = *(*v12 + 48);
    v14 = *(*v12 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v15 = *(v5 + 32);
    v15(v9, a1, v4);
    v15((v12 + *(*v12 + 96)), v9, v4);
  }

  return v12;
}

uint64_t MTUpdateAlarmEventFeature.AlarmRepeatSchedule.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MTUpdateAlarmEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A576CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MTUpdateAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A57820(char *a1)
{
  v1 = *a1;
  type metadata accessor for MTUpdateAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A57858(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for MTUpdateAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t sub_222A578EC(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A57940(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t MTUpdateAlarmEventFeature.AlarmRepeatSchedule.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MTUpdateAlarmEventFeature.AlarmRepeatSchedule.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MTUpdateAlarmEventFeature.AlarmRepeatSchedule.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t MTUpdateAlarmEventFeature.AlarmTime.init(value:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = sub_222B01848();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

{
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v4 + 48))(a1, 1, v3) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D700, &qword_222B07320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    v9 = *(*v1 + 48);
    v10 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v11 = *(v4 + 32);
    v11(v8, a1, v3);
    v11((v1 + *(*v1 + 96)), v8, v3);
  }

  return v1;
}

uint64_t MTUpdateAlarmEventFeature.AlarmTime.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MTUpdateAlarmEventFeature.AlarmTime.__deallocating_deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

SiriPrivateLearningAnalytics::PLUSSuggestionGenerationDomain_optional __swiftcall PLUSSuggestionGenerationDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

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

unint64_t PLUSSuggestionGenerationDomain.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6964654D73756C50;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_222A580E4()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A58170()
{
  *v0;
  sub_222B02448();
}

uint64_t sub_222A581E8()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A58270@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222B02E48();

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

void sub_222A582D0(unint64_t *a1@<X8>)
{
  v2 = 0x8000000222B0FEB0;
  v3 = 0xD000000000000018;
  if (*v1)
  {
    v3 = 0x6964654D73756C50;
    v2 = 0xE900000000000061;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_222A58318(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6964654D73756C50;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  if (v3)
  {
    v5 = 0x8000000222B0FEB0;
  }

  else
  {
    v5 = 0xE900000000000061;
  }

  if (*a2)
  {
    v6 = 0x6964654D73756C50;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (*a2)
  {
    v7 = 0xE900000000000061;
  }

  else
  {
    v7 = 0x8000000222B0FEB0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

uint64_t static PLUSLoggingIdGenerator.derivePlusLoggingId(requestId:for:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_222B018D8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  (*(v11 + 16))(v10, a1);
  return sub_222A584E8(v10, a3);
}

uint64_t sub_222A584E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = sub_222B023C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B023B8();
  v10 = sub_222B02398();
  v12 = v11;

  (*(v5 + 8))(v9, v4);
  if (v12 >> 60 != 15)
  {
    v16 = sub_222B02668();
    *(v16 + 16) = 20;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    v39[0] = v16;
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v37[0] = sub_222B018B8();
    v37[1] = v17;
    sub_222A58C3C(v10, v12, v39, &c, v37, &c);
    v18 = v39[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_222A765A4(v18);
    }

    v19 = *(v18 + 2);
    if (v19 < 7)
    {
      __break(1u);
    }

    else
    {
      v18[38] = v18[38] & 0xF | 0x50;
      if (v19 >= 9)
      {
        v18[40] = v18[40] & 0x3F | 0x80;
        if (v19 != 9)
        {
          if (v19 >= 0xB)
          {
            if (v19 != 11)
            {
              if (v19 >= 0xD)
              {
                if (v19 != 13)
                {
                  if (v19 >= 0xF)
                  {
                    if (v19 != 15)
                    {
                      v20 = v18[32];
                      v21 = v18[33];
                      v22 = v18[34];
                      v23 = v18[35];
                      v24 = v18[36];
                      v25 = v18[37];
                      v26 = v18[39];
                      v35 = *(v18 + 23);
                      v34 = v18[45];
                      v33 = v18[44];
                      v32 = v18[43];
                      v31 = v18[42];
                      v30 = v18[41];
                      sub_222B018A8();
                      sub_222A398A4(v10, v12);
                      v27 = sub_222B018D8();
                      v28 = *(v27 - 8);
                      (*(v28 + 8))(a1, v27);

                      result = (*(v28 + 56))(a2, 0, 1, v27);
                      goto LABEL_15;
                    }

LABEL_24:
                    __break(1u);
                  }

LABEL_23:
                  __break(1u);
                  goto LABEL_24;
                }

LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v13 = sub_222B018D8();
  v14 = *(v13 - 8);
  (*(v14 + 8))(a1, v13);
  result = (*(v14 + 56))(a2, 1, 1, v13);
LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v30 - v8;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v30 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v30 - v22;
  v24 = *(v11 + 16);
  v24(&v30 - v22, a1, v10);
  v24(v20, a2, v10);
  v24(v16, v23, v10);
  sub_222B01868();
  sub_222A584E8(v16, v9);
  v25 = *(v11 + 8);
  v25(v20, v10);
  v25(v23, v10);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    sub_222A264C8(v9);
    v26 = 1;
    v27 = v31;
  }

  else
  {
    v28 = v31;
    (*(v11 + 32))(v31, v9, v10);
    v26 = 0;
    v27 = v28;
  }

  return (*(v11 + 56))(v27, v26, 1, v10);
}

unint64_t sub_222A58B34()
{
  result = qword_27D01D4E0;
  if (!qword_27D01D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D4E0);
  }

  return result;
}

unint64_t sub_222A58B8C()
{
  result = qword_27D01D4E8;
  if (!qword_27D01D4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D4F0, &qword_222B07C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D4E8);
  }

  return result;
}

uint64_t sub_222A58C3C(uint64_t a1, unint64_t a2, uint64_t *a3, CC_SHA1_CTX *a4, const void *a5, uint64_t a6)
{
  v13 = a2;
  data[2] = *MEMORY[0x277D85DE8];
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      memset(data, 0, 14);
      v6 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      goto LABEL_60;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = sub_222B015B8();
    if (v8)
    {
      v6 = v13 & 0x3FFFFFFFFFFFFFFFLL;
      v20 = sub_222B015D8();
      if (__OFSUB__(v19, v20))
      {
        goto LABEL_74;
      }

      v8 += v19 - v20;
    }

    v21 = __OFSUB__(v18, v19);
    v22 = v18 - v19;
    if (!v21)
    {
      v23 = sub_222B015C8();
      if (v23 >= v22)
      {
        v13 = v22;
      }

      else
      {
        v13 = v23;
      }

      v6 = *a3;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (v24)
      {
        goto LABEL_20;
      }

      goto LABEL_65;
    }

    goto LABEL_62;
  }

  if (v14)
  {
    goto LABEL_31;
  }

  v8 = v7;
  data[0] = a1;
  LOWORD(data[1]) = a2;
  BYTE2(data[1]) = BYTE2(a2);
  BYTE3(data[1]) = BYTE3(a2);
  BYTE4(data[1]) = BYTE4(a2);
  BYTE5(data[1]) = BYTE5(a2);
  v6 = *a3;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((v15 & 1) == 0)
  {
    v6 = sub_222A765A4(v6);
    *a3 = v6;
  }

  if (a5)
  {
    v16 = a6 - a5;
  }

  else
  {
    v16 = 0;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (HIDWORD(v16))
  {
    while (1)
    {
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_65:
        v6 = sub_222A765A4(v6);
        *a3 = v6;
LABEL_20:
        if (a5)
        {
          v25 = a6 - a5;
        }

        else
        {
          v25 = 0;
        }

        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_67;
        }

        if (HIDWORD(v25))
        {
          goto LABEL_69;
        }

        a1 = CC_SHA1_Update(a4, a5, v25);
        if (v8)
        {
          v26 = v13;
        }

        else
        {
          v26 = 0;
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        if (!HIDWORD(v26))
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_31:
        v27 = a1;
        v28 = (a1 >> 32) - a1;
        if (a1 >> 32 >= a1)
        {
          v8 = sub_222B015B8();
          if (!v8)
          {
            goto LABEL_35;
          }

          v29 = sub_222B015D8();
          if (__OFSUB__(v27, v29))
          {
            goto LABEL_75;
          }

          v8 += v27 - v29;
LABEL_35:
          v30 = sub_222B015C8();
          if (v30 >= v28)
          {
            v13 = v28;
          }

          else
          {
            v13 = v30;
          }

          v6 = *a3;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v6;
          if (v31)
          {
LABEL_39:
            if (a5)
            {
              v32 = a6 - a5;
            }

            else
            {
              v32 = 0;
            }

            if ((v32 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_69:
              __break(1u);
            }

            else if (!HIDWORD(v32))
            {
              CC_SHA1_Update(a4, a5, v32);
              if (v8)
              {
                v26 = v13;
              }

              else
              {
                v26 = 0;
              }

              if ((v26 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v26))
                {
LABEL_49:
                  CC_SHA1_Update(a4, v8, v26);
                  result = CC_SHA1_Final((v6 + 32), a4);
                  *a3 = v6;
                  goto LABEL_57;
                }

LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
              }

LABEL_72:
              __break(1u);
              goto LABEL_73;
            }

            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_67:
          v6 = sub_222A765A4(v6);
          *a3 = v6;
          goto LABEL_39;
        }

LABEL_59:
        __break(1u);
LABEL_60:
        v6 = sub_222A765A4(v6);
        *a3 = v6;
LABEL_51:
        v34 = a5 ? a6 - a5 : 0;
        if ((v34 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (!HIDWORD(v34))
        {
          CC_SHA1_Update(a4, a5, v34);
          CC_SHA1_Update(a4, data, 0);
          result = CC_SHA1_Final((v6 + 32), a4);
          *a3 = v6;
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
    }
  }

  CC_SHA1_Update(a4, a5, v16);
  CC_SHA1_Update(a4, data, BYTE6(v13));
  result = CC_SHA1_Final((v6 + 32), a4);
  *a3 = v6;
LABEL_57:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222A58FF8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_222A59034@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(a3, a1, *(a1 + 8));
  *(a3 + 8) = result;
  return result;
}

id sub_222A59074@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v45 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE58, &qword_222B05190);
  v9 = *(v48 - 8);
  v47 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v48, v10);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v45 - v14;
  v45 = sub_222B01848();
  v16 = *(v45 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v45, v18);
  v20 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v45 - v22;
  sub_222B01838();
  v24 = sub_222B02768();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v3;

  v26 = sub_222A5A3CC(0, 0, v8, &unk_222B07F18, v25, &qword_27D01D568, &qword_222B07E88);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_222A5F260;
  *(v27 + 24) = v26;
  v51 = sub_222A5F270;
  v52 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE60, &unk_222B051A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE68, &qword_222B07F30);
  sub_222A352E8(&qword_280CB7110, &qword_27D01CE60, &unk_222B051A0);
  sub_222B02DA8();
  v28 = *(v16 + 32);
  v29 = v23;
  v30 = v45;
  v28(v20, v29, v45);
  v31 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v50;
  v28((v32 + v31), v20, v30);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_222A5EFE4;
  *(v33 + 24) = v32;
  v34 = *(v9 + 32);
  v35 = v46;
  v36 = v48;
  v34(v46, v15, v48);
  v37 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v38 = (v47 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v34((v39 + v37), v35, v36);
  v40 = (v39 + v38);
  *v40 = sub_222A5F068;
  v40[1] = v33;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_222A3516C;
  *(v41 + 24) = v39;
  v42 = v49;
  *v49 = sub_222A35244;
  v42[1] = v41;
  v43 = v50;

  return v43;
}

uint64_t sub_222A59534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_222B01848();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);
  v12 = *(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8);
  (*(v7 + 16))(v11, a4, v6);

  sub_222B017C8();
  v15 = v14;
  v16 = type metadata accessor for StreamBookmark();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v18 = v13;
  *(v18 + 1) = v12;
  *&v17[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v19 = &v17[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v19 = v15;
  v19[8] = 0;
  v21.receiver = v17;
  v21.super_class = v16;
  objc_msgSendSuper2(&v21, sel_init);
  (*(v7 + 8))(v11, v6);
}

uint64_t sub_222A596C0(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D510, &qword_222B07E10);
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D580, &qword_222B07EA0);
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D588, &qword_222B07EA8);
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A598E4, 0, 0);
}

uint64_t sub_222A598E4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = sub_222A5B7A0();
  v0[16] = v5;
  sub_222A34E48(v1, v2, &qword_27D01D700, &qword_222B07320);
  v6 = (*(v4 + 48))(v2, 1, v3);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_222A34F20(v0[4], &qword_27D01D700, &qword_222B07320);
    v8 = 0;
  }

  else
  {
    sub_222B017C8();
    v10 = v9;
    (*(v4 + 8))(v7, v3);
    v8 = v10;
  }

  v11 = v6 == 1;
  v12 = v0[3];
  sub_222B01FA8();
  v13 = sub_222B01748();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = *(MEMORY[0x277CE4860] + 4);
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_222A59B34;
  v16 = v0[8];
  v19 = v0[3];

  return MEMORY[0x2821377B0](v16, v5, 0, 1, v8, v11, 0, 1);
}

uint64_t sub_222A59B34()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {
    sub_222A34F20(v2[3], &qword_27D01D458, &unk_222B07E00);

    v6 = sub_222A59EE0;
  }

  else
  {
    v7 = v2[5];
    v8 = v2[3];

    sub_222A34F20(v8, &qword_27D01D458, &unk_222B07E00);
    sub_222A34F20(v7, &qword_27D01D700, &qword_222B07320);
    v6 = sub_222A59CBC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222A59CBC()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v14 = v0[5];
  v15 = v0[4];
  v16 = v0[3];
  v12 = v0[14];
  v13 = v0[2];
  swift_getOpaqueTypeConformance2();
  sub_222B01F88();
  (*(v9 + 8))(v6, v8);
  sub_222A352E8(&qword_27D01D590, &qword_27D01D580, &qword_222B07EA0);
  sub_222B01998();
  (*(v4 + 8))(v5, v7);
  (*(v2 + 16))(v12, v1, v3);
  type metadata accessor for Turn();
  sub_222A352E8(&qword_27D01D598, &qword_27D01D588, &qword_222B07EA8);
  sub_222B02DA8();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_222A59EE0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[3];
  sub_222A34F20(v0[5], &qword_27D01D700, &qword_222B07320);

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_222A59FB8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_222A59FDC, 0, 0);
}

uint64_t sub_222A59FDC()
{
  v1 = v0[2];
  *v1 = sub_222A5A040(v0[3]);
  v2 = v0[1];

  return v2();
}

void *sub_222A5A040(uint64_t a1)
{
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v42 - v15;
  v17 = sub_222B01FB8();
  v18 = v17;
  v49 = MEMORY[0x277D84F90];
  v46 = v3;
  v47 = v2;
  v44 = a1;
  v45 = v7;
  v42 = v16;
  v43 = v13;
  v19 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
LABEL_21:
    v20 = sub_222B02DC8();
  }

  else
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v48 = MEMORY[0x277D84F90];
  while (v20 != v21)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x223DC6F00](v21, v18);
    }

    else
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_20;
      }

      v22 = *(v18 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = sub_222B01ED8();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v26 = result;
    v27 = [result wrapAsAnyEvent];

    ++v21;
    if (v27)
    {
      MEMORY[0x223DC6810]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      v48 = v49;
      v21 = v24;
    }
  }

  sub_222B02008();
  if (v29)
  {
    v30 = sub_222B01848();
    v31 = v42;
    (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
  }

  else
  {
    v31 = v42;
    sub_222B01808();
    v32 = sub_222B01848();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  }

  v34 = v46;
  v33 = v47;
  v35 = v45;
  v36 = v43;
  v37 = v48;
  sub_222B02018();
  sub_222A5E93C(v31, v36);
  v38 = type metadata accessor for Turn();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  (*(v34 + 32))(v41 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v35, v33);
  *(v41 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = v37;
  sub_222A5E93C(v36, v41 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);
  return v41;
}

uint64_t sub_222A5A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v29[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v29 - v15;
  sub_222A34E48(a3, v29 - v15, &qword_27D01D720, &qword_222B07760);
  v17 = sub_222B02768();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v16, 1, v17);

  if (v19 == 1)
  {
    sub_222A34F20(v16, &qword_27D01D720, &qword_222B07760);
  }

  else
  {
    sub_222B02758();
    (*(v18 + 8))(v16, v17);
  }

  v20 = *(a5 + 16);
  v21 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v22 = sub_222B026E8();
    v24 = v23;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25 = sub_222B02408() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v26 = (v24 | v22);
      if (v24 | v22)
      {
        v30[0] = 0;
        v30[1] = 0;
        v26 = v30;
        v30[2] = v22;
        v30[3] = v24;
      }

      v29[1] = 7;
      v29[2] = v26;
      v29[3] = v25;
      v27 = swift_task_create();

      sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);

      return v27;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v24 | v22)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v22;
    v30[7] = v24;
  }

  return swift_task_create();
}

id sub_222A5A67C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v45 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE10, &qword_222B05118);
  v9 = *(v48 - 8);
  v47 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v48, v10);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v45 - v14;
  v45 = sub_222B01848();
  v16 = *(v45 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v45, v18);
  v20 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v45 - v22;
  sub_222B01838();
  v24 = sub_222B02768();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v3;

  v26 = sub_222A5A3CC(0, 0, v8, &unk_222B07ED0, v25, &qword_27D01D500, &unk_222B07DE8);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_222A5F25C;
  *(v27 + 24) = v26;
  v51 = sub_222A5F26C;
  v52 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE18, &unk_222B07EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE20, &qword_222B05130);
  sub_222A352E8(qword_280CB7118, &qword_27D01CE18, &unk_222B07EE0);
  sub_222B02DA8();
  v28 = *(v16 + 32);
  v29 = v23;
  v30 = v45;
  v28(v20, v29, v45);
  v31 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v50;
  v28((v32 + v31), v20, v30);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_222A5ED40;
  *(v33 + 24) = v32;
  v34 = *(v9 + 32);
  v35 = v46;
  v36 = v48;
  v34(v46, v15, v48);
  v37 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v38 = (v47 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v34((v39 + v37), v35, v36);
  v40 = (v39 + v38);
  *v40 = sub_222A5EDCC;
  v40[1] = v33;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_222A34BAC;
  *(v41 + 24) = v39;
  v42 = v49;
  *v49 = sub_222A34BD4;
  v42[1] = v41;
  v43 = v50;

  return v43;
}

id sub_222A5AB3C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_222B01848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v17 = *(a4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);
  v16 = *(a4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8);
  (*(v10 + 16))(v14, a5, v9);

  sub_222B017C8();
  v19 = v18;
  v20 = type metadata accessor for StreamBookmark();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v22 = v17;
  *(v22 + 1) = v16;
  *&v21[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v23 = &v21[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v23 = v19;
  v23[8] = 0;
  v26.receiver = v21;
  v26.super_class = v20;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  (*(v10 + 8))(v14, v9);
  *a1 = v15;

  return v24;
}

uint64_t sub_222A5ACDC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D510, &qword_222B07E10);
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D518, &qword_222B07E18);
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D520, &qword_222B07E20);
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A5AF00, 0, 0);
}

uint64_t sub_222A5AF00()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = sub_222A5B7A0();
  v0[16] = v5;
  sub_222A34E48(v1, v2, &qword_27D01D700, &qword_222B07320);
  v6 = (*(v4 + 48))(v2, 1, v3);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_222A34F20(v0[4], &qword_27D01D700, &qword_222B07320);
    v8 = 0;
  }

  else
  {
    sub_222B017C8();
    v10 = v9;
    (*(v4 + 8))(v7, v3);
    v8 = v10;
  }

  v11 = v6 == 1;
  v12 = v0[3];
  sub_222B01FA8();
  v13 = sub_222B01748();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = *(MEMORY[0x277CE4860] + 4);
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_222A5B150;
  v16 = v0[8];
  v19 = v0[3];

  return MEMORY[0x2821377B0](v16, v5, 0, 1, v8, v11, 0, 1);
}