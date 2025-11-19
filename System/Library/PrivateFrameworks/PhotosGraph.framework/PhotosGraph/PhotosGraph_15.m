uint64_t storeEnumTagSinglePayload for GraphBuilder.GraphBuilderError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22F20B76C()
{
  result = qword_27DAB2598;
  if (!qword_27DAB2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2598);
  }

  return result;
}

uint64_t MusicMaestro.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

id sub_22F20B8AC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(id, id, id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7(v10, v11, v12);

  return v13;
}

id MusicMaestro.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicMaestro.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicMaestro.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_22F20BA80(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB25B0, &qword_22F77A6D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v41 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
  v48 = *(v51 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v51);
  v11 = &v41 - v10;
  v47 = type metadata accessor for MaestroRanker();
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MusicMaestro - curateMusicForNormalizedSupportedKeywordsByAssetCollectionLocalIdentifier", 88, 2u, 0, 1, qword_2810B4E90, v50);
  v15 = sub_22F7416B0();
  v17 = v16;
  v18 = [a1 columnLabels];
  if (!v18)
  {
    sub_22F20C580();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

LABEL_15:
    sub_22F1B2BBC(0);

    return v11;
  }

  v44 = v14;
  v45 = v6;
  v46 = v5;
  v43 = a1;
  v19 = v17;
  v20 = v18;
  sub_22F741180();

  v21 = [a2 name];
  if (v21)
  {
    v22 = v21;
    sub_22F740E20();
  }

  v24 = sub_22F741550();
  if (v2)
  {

    goto LABEL_15;
  }

  v25 = v24;

  if (!v25)
  {
    sub_22F20C580();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();

    goto LABEL_15;
  }

  v26 = v15;
  sub_22F7416A0();
  v42 = v19;
  v28 = v25;
  v29 = [v28 matrix];
  v30 = [v29 wrapper];

  sub_22F73FB80();
  result = [v28 rowLabels];
  if (result)
  {
    v32 = result;
    v33 = sub_22F741180();

    v34 = v49;
    v35 = v51;
    sub_22F73FCB0();
    v36 = v46;
    v37 = sub_22F73FCA0();
    v41 = v28;

    result = (*(v45 + 8))(v34, v36);
    v38 = v44;
    if (v37 == *(v33 + 16))
    {
      (*(v48 + 32))(v44, v11, v35);
      *(v38 + *(v47 + 20)) = v33;
      v11 = sub_22F1A7C44(v43);
      v39 = v42;
      sub_22F7416A0();
      v40 = v41;
      sub_22F20C5D4(v38);

      sub_22F1B2BBC(0);

      return v11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_22F20BFD4(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  if (qword_2810A9BD0 != -1)
  {
LABEL_39:
    swift_once();
  }

  sub_22F1B560C("MusicMaestro - curateMusicForNormalizedKeywordsByAssetCollectionLocalIdentifier", 79, 2u, 0, 1, qword_2810B4E90, v43);
  v8 = [a2 columnLabels];
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = v8;
  v10 = sub_22F741180();

  v11 = [a1 columnLabels];
  if (!v11)
  {

LABEL_27:
    sub_22F20C580();
    swift_allocError();
    *v30 = 0;
    goto LABEL_28;
  }

  v38 = a1;
  v39 = v4;
  v37 = a2;
  v12 = v11;
  v13 = sub_22F741180();

  v14 = sub_22F1515F8(v13);

  a3 = v10;
  v42 = *(v10 + 16);
  if (!v42)
  {
    goto LABEL_29;
  }

  a1 = 0;
  v41 = v10 + 32;
  v4 = v14 + 56;
  v15 = MEMORY[0x277D84F90];
  v40 = a3;
  do
  {
    v16 = a1;
    while (1)
    {
      if (v16 >= *(a3 + 2))
      {
        __break(1u);
        goto LABEL_39;
      }

      a1 = (v16 + 1);
      if (*(v14 + 16))
      {
        break;
      }

LABEL_8:
      v16 = a1;
      if (a1 == v42)
      {
        goto LABEL_29;
      }
    }

    v17 = (v41 + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v14 + 40);
    sub_22F742170();

    sub_22F740D60();
    v21 = sub_22F7421D0();
    v22 = -1 << *(v14 + 32);
    v23 = v21 & ~v22;
    if (((*(v4 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_7:

      goto LABEL_8;
    }

    a2 = ~v22;
    while (1)
    {
      v24 = (*(v14 + 48) + 16 * v23);
      v25 = *v24 == v18 && v24[1] == v19;
      if (v25 || (sub_22F742040() & 1) != 0)
      {
        break;
      }

      v23 = (v23 + 1) & a2;
      if (((*(v4 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F146454(0, *(v15 + 16) + 1, 1);
      v15 = v44;
    }

    v28 = *(v15 + 16);
    v27 = *(v15 + 24);
    a2 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      sub_22F146454((v27 > 1), v28 + 1, 1);
      v15 = v44;
    }

    *(v15 + 16) = a2;
    v29 = v15 + 16 * v28;
    *(v29 + 32) = v18;
    *(v29 + 40) = v19;
    a3 = v40;
  }

  while (a1 != v42);
LABEL_29:

  a3 = v38;
  v31 = [v38 name];
  if (v31)
  {
    v32 = v31;
    sub_22F740E20();
  }

  v33 = sub_22F741550();
  if (!v39)
  {
    v35 = v33;

    if (v35)
    {
      a3 = sub_22F20BA80(v35, v37);

      sub_22F1B2BBC(0);

      return a3;
    }

    sub_22F20C580();
    swift_allocError();
    *v36 = 1;
LABEL_28:
    swift_willThrow();
    goto LABEL_33;
  }

LABEL_33:
  sub_22F1B2BBC(0);

  return a3;
}

uint64_t *sub_22F20C400(uint64_t *a1)
{
  sub_22F741690();
  if (!v1)
  {
    v3 = sub_22F741520();
    if (*(v3 + 16) && (v4 = sub_22F1229E8(*a1, a1[1]), (v5 & 1) != 0))
    {
      a1 = *(*(v3 + 56) + 8 * v4);

      sub_22F7416A0();
    }

    else
    {

      sub_22F7416A0();
      sub_22F20C580();
      swift_allocError();
      *v6 = 2;
      swift_willThrow();
    }
  }

  return a1;
}

unint64_t sub_22F20C4F8()
{
  result = qword_27DAB25A0;
  if (!qword_27DAB25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB25A0);
  }

  return result;
}

unint64_t sub_22F20C580()
{
  result = qword_27DAB25A8;
  if (!qword_27DAB25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB25A8);
  }

  return result;
}

uint64_t sub_22F20C5D4(uint64_t a1)
{
  v2 = type metadata accessor for MaestroRanker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22F20C630(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v3 = *(*(v2 - 8) + 64);
  *&v4 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v6 = &v25 - v5;
  v7 = [a1 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_22F740E20();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 localIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22F740E20();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = sub_22F73F090();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = type metadata accessor for GraphSearchEntity();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR___PGGraphSearchEntity_type] = 1300;
  v20 = &v19[OBJC_IVAR___PGGraphSearchEntity_label];
  *v20 = v9;
  v20[1] = v11;
  v21 = &v19[OBJC_IVAR___PGGraphSearchEntity_identifier];
  *v21 = v14;
  v21[1] = v16;
  *&v19[OBJC_IVAR___PGGraphSearchEntity_confidence] = 0;
  *&v19[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = 0;
  v22 = &v19[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
  *v22 = 0;
  *(v22 + 1) = 0;
  sub_22F1EDD04(v6, &v19[OBJC_IVAR___PGGraphSearchEntity_dateInterval]);
  *&v19[OBJC_IVAR___PGGraphSearchEntity_synonyms] = MEMORY[0x277D84F90];
  v25.receiver = v19;
  v25.super_class = v18;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  sub_22F1EDFCC(v6);
  return v23;
}

id sub_22F20C84C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v3 = *(*(v2 - 8) + 64);
  *&v4 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v6 = &v23 - v5;
  v7 = [a1 name];
  v8 = sub_22F740E20();
  v10 = v9;

  v11 = [a1 localIdentifier];
  v12 = sub_22F740E20();
  v14 = v13;

  v15 = sub_22F73F090();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = type metadata accessor for GraphSearchEntity();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR___PGGraphSearchEntity_type] = 1330;
  v18 = &v17[OBJC_IVAR___PGGraphSearchEntity_label];
  *v18 = v8;
  v18[1] = v10;
  v19 = &v17[OBJC_IVAR___PGGraphSearchEntity_identifier];
  *v19 = v12;
  v19[1] = v14;
  *&v17[OBJC_IVAR___PGGraphSearchEntity_confidence] = 0;
  *&v17[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = 0;
  v20 = &v17[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
  *v20 = 0;
  *(v20 + 1) = 0;
  sub_22F1EDD04(v6, &v17[OBJC_IVAR___PGGraphSearchEntity_dateInterval]);
  *&v17[OBJC_IVAR___PGGraphSearchEntity_synonyms] = MEMORY[0x277D84F90];
  v23.receiver = v17;
  v23.super_class = v16;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_22F1EDFCC(v6);
  return v21;
}

uint64_t DataSampler.__allocating_init(_:samplingPolicy:positivesOversamplingFactor:negativesOversamplingFactor:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  DataSampler.init(_:samplingPolicy:positivesOversamplingFactor:negativesOversamplingFactor:)(a1, a2, a3, a4);
  return v11;
}

{
  v5 = v4;
  v8 = *a2;
  v9 = *(v5 + 80);
  sub_22F741280();
  sub_22F740CD0();
  swift_getWitnessTable();
  v10 = sub_22F741290();
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  result = sub_22F740830();
  if (a3 < 1 || a4 <= 0)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v10;
    *(v13 + 24) = v8;
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    return v13;
  }

  return result;
}

uint64_t DataSampler.init(_:samplingPolicy:positivesOversamplingFactor:negativesOversamplingFactor:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  result = sub_22F740830();
  if (a3 < 1 || a4 < 1)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = a1;
    *(v4 + 24) = v8;
    *(v4 + 32) = a3;
    *(v4 + 40) = a4;
    return v4;
  }

  return result;
}

uint64_t DataSampler.SamplingPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F20CCE4()
{
  sub_22F742170();
  DataSampler.SamplingPolicy.hash(into:)();
  return sub_22F7421D0();
}

uint64_t sub_22F20CD20(uint64_t a1)
{
  v2 = *v1;
  v11 = v1[2];
  v9[1] = *(v2 + 80);
  v10 = a1;
  v3 = sub_22F741280();
  v4 = sub_22F741280();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_22F26FD00(sub_22F20F874, v9, v4, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  return v7;
}

uint64_t sub_22F20CE18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_22F741280();

  swift_getWitnessTable();
  result = sub_22F741B90();
  *a2 = result;
  return result;
}

uint64_t sub_22F20CEBC()
{
  sub_22F741280();
  swift_getWitnessTable();
  return sub_22F7410C0() & 1;
}

uint64_t sub_22F20CF44(uint64_t a1, uint64_t a2, float (*a3)(uint64_t, char *), uint64_t a4)
{
  v5 = v4;
  v61 = a3;
  v62 = a4;
  v68 = a1;
  v7 = *v5;
  v8 = *(*v5 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v57 = &v49 - v11;
  v56 = sub_22F741860();
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v60 = &v49 - v15;
  v16 = *(v8 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v64 = &v49 - v20;
  v21 = sub_22F73FE50();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v63 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = TupleTypeMetadata2;
  v25 = sub_22F740C60();
  v72 = v25;
  v26 = v5[2];
  v51 = v21;
  v50 = v22;
  v52 = v12;
  v53 = v16;
  if (a2)
  {

    v27 = sub_22F20CD20(a2);

    v26 = v27;
  }

  else
  {
  }

  v70 = v26;
  MEMORY[0x28223BE20](v28);
  v29 = *(v7 + 88);
  *(&v49 - 2) = v8;
  *(&v49 - 1) = v29;
  v67 = v29;
  sub_22F741280();
  v30 = sub_22F741280();

  swift_getWitnessTable();
  v58 = v30;
  v31 = sub_22F741B90();

  v71 = v31;
  v32 = sub_22F741230();

  v33 = v64;
  if (v32)
  {
    sub_22F20E164(v31, v63);
    v34 = qword_27DAB25B8;
    if (sub_22F741230() >= 1)
    {
      v65 = (v53 + 1);
      v59 = (v53 + 6);
      v54 = (v53 + 4);
      v53 += 2;
      ++v52;
      v66 = v34;
      while (sub_22F741230() < v68)
      {
        if (v5[3])
        {
          swift_beginAccess();
          v35 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          sub_22F20F4CC(v35);
        }

        else
        {
          result = sub_22F741230();
          if (result < 0)
          {
            goto LABEL_25;
          }

          v37 = result;
          result = swift_beginAccess();
          if (!v37)
          {
            goto LABEL_26;
          }

          sub_22F20F35C(v37);
          swift_endAccess();
        }

        sub_22F7412B0();
        v38 = v70;
        result = sub_22F741230();
        if (result < 0)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v39 = result;
        result = swift_beginAccess();
        if (!v39)
        {
          goto LABEL_24;
        }

        sub_22F20F35C(v39);
        swift_endAccess();
        v40 = sub_22F7412B0();
        v70 = v38;
        MEMORY[0x28223BE20](v40);
        v41 = v67;
        *(&v49 - 4) = v8;
        *(&v49 - 3) = v41;
        *(&v49 - 2) = v33;
        swift_getWitnessTable();
        v42 = sub_22F741B90();
        if (sub_22F741230() < 1)
        {

          sub_22F741250();

          (*v65)(v33, v8);
        }

        else
        {
          v43 = v60;
          sub_22F20E430(v33, v42, v61, v62, v60);

          if ((*v59)(v43, 1, v8) == 1)
          {
            (*v52)(v43, v56);
            (*v65)(v33, v8);
          }

          else
          {
            v44 = v55;
            (*v54)(v55, v43, v8);
            v45 = *(v69 + 48);
            v46 = *v53;
            v47 = v57;
            (*v53)(v57, v64, v8);
            v46(&v47[v45], v44, v8);
            v33 = v64;
            sub_22F741280();
            sub_22F741240();
            v48 = *v65;
            (*v65)(v44, v8);
            v48(v33, v8);
          }
        }

        if (sub_22F741230() <= 0)
        {
          break;
        }
      }
    }

    (*(v50 + 8))(v63, v51);

    return v72;
  }

  else
  {

    return v25;
  }
}

uint64_t sub_22F20D754(uint64_t a1, uint64_t a2, float (*a3)(void, void), uint64_t a4)
{
  v76 = a3;
  v77 = a4;
  v79 = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v69 = &v58 - v10;
  v68 = sub_22F741860();
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v68);
  v15 = &v58 - v14;
  v16 = *(v7 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v67 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  v62 = sub_22F73FE50();
  v63 = *(v62 - 8);
  v22 = *(v63 + 64);
  v23 = MEMORY[0x28223BE20](v62);
  v61 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v70 = &v58 - v25;
  v81 = TupleTypeMetadata2;
  v26 = sub_22F740C60();
  v85 = v26;
  v80 = v11;
  v75 = v16;
  if (a2)
  {
    v27 = a2;
    v28 = v4;
    v29 = sub_22F20CD20(v27);
  }

  else
  {
    v28 = v4;
    v30 = v4[2];
  }

  v83 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = *(v6 + 88);
  *(&v58 - 2) = v7;
  *(&v58 - 1) = v31;
  v78 = v31;
  v32 = sub_22F741280();
  v33 = sub_22F741280();
  swift_getWitnessTable();
  v82 = v33;
  v34 = sub_22F741B90();
  if (sub_22F741230() >= 2)
  {
    sub_22F20E164(v34, v70);
    v35 = qword_27DAB25B8;
    v36 = sub_22F741230();
    if (v36 >= 1)
    {
      v37 = v36;
      v71 = (v75 + 48);
      v66 = (v75 + 32);
      v65 = (v75 + 16);
      v73 = (v75 + 8);
      v64 = (v80 + 8);
      v60 = (v63 + 8);
      v59 = (v63 + 32);
      v72 = v15;
      v80 = v32;
      v74 = v35;
LABEL_8:
      v75 = v34;
      while (sub_22F741230() < v79)
      {
        v84 = v34;
        if (v28[3])
        {
          swift_beginAccess();

          v38 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          sub_22F20F4CC(v38);
        }

        else
        {
          swift_beginAccess();

          sub_22F20F35C(v37);
          swift_endAccess();
        }

        sub_22F741250();
        result = sub_22F741230();
        if (result < 0)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        v40 = result;
        result = swift_beginAccess();
        if (!v40)
        {
          goto LABEL_24;
        }

        sub_22F20F35C(v40);
        swift_endAccess();
        sub_22F7412B0();

        v83 = v84;
        MEMORY[0x28223BE20](v41);
        v42 = v21;
        v43 = v78;
        *(&v58 - 4) = v7;
        *(&v58 - 3) = v43;
        *(&v58 - 2) = v21;
        swift_getWitnessTable();
        v44 = sub_22F741060();

        v84 = v44;

        v45 = sub_22F741230();

        if (v45 < 1)
        {

          v83 = v75;
          MEMORY[0x28223BE20](v52);
          v53 = v78;
          *(&v58 - 4) = v7;
          *(&v58 - 3) = v53;
          *(&v58 - 2) = v42;
          v54 = sub_22F741060();

          v55 = v61;
          sub_22F20E164(v54, v61);
          v56 = v70;
          v57 = v62;
          (*v60)(v70, v62);
          (*v59)(v56, v55, v57);
          (*v73)(v42, v7);
          v37 = sub_22F741230();
          v34 = v54;
          v21 = v42;
          if (v37 > 0)
          {
            goto LABEL_8;
          }

          break;
        }

        v46 = v72;
        sub_22F20EA20(v42, &v84, v76, v77, v72);

        v21 = v42;
        if ((*v71)(v46, 1, v7) == 1)
        {
          (*v64)(v46, v68);
          (*v73)(v42, v7);
        }

        else
        {
          v47 = v67;
          (*v66)(v67, v46, v7);
          v48 = *(v81 + 48);
          v49 = *v65;
          v50 = v69;
          (*v65)(v69, v42, v7);
          v49(&v50[v48], v47, v7);
          sub_22F741280();
          v21 = v42;
          sub_22F741240();
          v51 = *v73;
          (*v73)(v47, v7);
          v51(v42, v7);
        }

        v34 = v75;
        v37 = sub_22F741230();
        if (v37 <= 0)
        {
          break;
        }
      }
    }

    (*(v63 + 8))(v70, v62);

    return v85;
  }

  else
  {
  }

  return v26;
}

uint64_t sub_22F20E094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_22F741280();

  swift_getWitnessTable();
  v3 = sub_22F741B90();
  result = sub_22F741230();
  if (result < 1)
  {

    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_22F20E164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22F73FE50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a1;
  v20 = *(v6 + 80);
  sub_22F741280();
  v12 = sub_22F741280();

  swift_getWitnessTable();
  v13 = sub_22F741B90();
  v14 = sub_22F741230();
  v15 = 0.0;
  sub_22F73FE30();
  if (v14 < 1)
  {

    return (*(v8 + 32))(a2, v11, v7);
  }

  else
  {
    v24 = v13;
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x231900C20](&v21, v12, WitnessTable);

    v23 = v21;
    sub_22F741D90();
    sub_22F741D60();
    sub_22F741D80();
    sub_22F741D70();
    while (v22)
    {
      v17 = sub_22F741230();

      v15 = v15 + v17;
      sub_22F73FE80();
      sub_22F741D70();
    }

    sub_22F73FDC0();
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_22F20E430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v49 = a1;
  v9 = *(*v5 + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v38 - v12;
  v48 = sub_22F741860();
  v14 = *(v48 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v48);
  v16 = *(v10 + 56);
  v47 = &v38 - v17;
  v44 = v16;
  v45 = v10 + 56;
  v16();
  v50 = a3;
  if (!a3 || (v18 = v5[4], v18 < 2))
  {
    result = sub_22F741230();
    if ((result & 0x8000000000000000) == 0)
    {
      v24 = result;
      result = swift_beginAccess();
      if (v24)
      {
        sub_22F20F35C(v24);
        swift_endAccess();
        sub_22F7412B0();
        (*(v14 + 8))(v47, v48);
        return (v44)(a5, 0, 1, v9);
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_22F741230();
  v38 = a5;
  v39 = v14;
  if (v18 < result)
  {
    v52 = a2;
    swift_beginAccess();
    sub_22F741280();
    sub_22F740840();
    swift_getWitnessTable();
    sub_22F20F7E0();
    v20 = sub_22F7410B0();
    swift_endAccess();
    v52 = v20;
    swift_getWitnessTable();
    sub_22F741500();
    v21 = v53;
    v22 = v54;
    v23 = v55;
LABEL_10:
    swift_unknownObjectRetain_n();
    v28 = sub_22F741930();
    swift_unknownObjectRelease();
    v29 = sub_22F741950();
    v46 = v28;
    if (v28 == v29)
    {
LABEL_14:
      swift_unknownObjectRelease();
      sub_22F107E14(v50);
      swift_unknownObjectRelease();
      return (*(v39 + 32))(v38, v47, v48);
    }

    result = sub_22F741940();
    if (v46 >= v22)
    {
      v43 = v23 >> 1;
      if ((v23 >> 1) > v46)
      {
        v30 = (v39 + 8);
        v41 = (v10 + 32);
        v42 = v10 + 16;
        v31 = v46 + 1;
        (*(v10 + 16))(v13, v21 + *(v10 + 72) * v46, v9);
        v32 = v50(v49, v13);
        v33 = *v30;
        v34 = v47;
        v40 = v30;
        v33(v47, v48);
        (*(v10 + 32))(v34, v13, v9);
        (v44)(v34, 0, 1, v9);
        if (v31 == sub_22F741950())
        {
          goto LABEL_14;
        }

        while (1)
        {
          result = sub_22F741940();
          if (v46 < v22 || v43 <= v31)
          {
            break;
          }

          (*(v10 + 16))(v13, v21 + *(v10 + 72) * v31, v9);
          v35 = v50(v49, v13);
          if (v32 < v35)
          {
            (*(v10 + 8))(v13, v9);
          }

          else
          {
            v36 = v35;
            v37 = v47;
            (*v40)(v47, v48);
            (*v41)(v37, v13, v9);
            (v44)(v37, 0, 1, v9);
            v32 = v36;
          }

          if (++v31 == sub_22F741950())
          {
            goto LABEL_14;
          }
        }
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_22F7412A0();
    v21 = v25;
    v22 = v26;
    v23 = v27;
    goto LABEL_10;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22F20EA20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, float (*a3)(void, void)@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v77 = a1;
  v11 = *(*v5 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v66 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v67 = sub_22F73FE50();
  v18 = *(v67 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v67);
  v78 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22F741860();
  v61 = *(v71 - 8);
  v21 = *(v61 + 64);
  MEMORY[0x28223BE20](v71);
  v22 = *(v12 + 56);
  v70 = &v59 - v23;
  v69 = v12 + 56;
  v68 = v22;
  result = v22();
  v25 = *(v6 + 40);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v60 = a5;
    if (!v25)
    {
      return (*(v61 + 32))(v60, v70, v71);
    }

    v26 = 0;
    v76 = *(v6 + 24);
    v63 = (v18 + 8);
    if (a3)
    {
      v27 = v25 == 1;
    }

    else
    {
      v27 = 1;
    }

    v28 = !v27;
    v74 = v28;
    v62 = (v12 + 8);
    v64 = (v61 + 8);
    v65 = (v12 + 32);
    v29 = 1;
    v30 = 0.0;
    v80 = a3;
    v81 = a4;
    v75 = v11;
    v72 = v25;
    v73 = a2;
    v82 = v17;
    while (1)
    {
      v83 = v26;
      v35 = *a2;
      LODWORD(v84) = v29;
      if (v76)
      {
        sub_22F20E164(v35, v78);
        swift_beginAccess();
        sub_22F740840();
        sub_22F20F7E0();
          ;
        }

        v37 = vcvts_n_f32_u64(HIDWORD(i), 0x18uLL) + 0.0;
        swift_endAccess();
        v38 = v78;
        v39 = sub_22F20F4CC(v37);
        (*v63)(v38, v67);
      }

      else
      {
        sub_22F741280();
        result = sub_22F741230();
        if (result < 0)
        {
          goto LABEL_37;
        }

        v40 = result;
        result = swift_beginAccess();
        if (!v40)
        {
          goto LABEL_38;
        }

        sub_22F740840();
        sub_22F20F7E0();
        v41 = sub_22F740D30();
        v39 = (v41 * v40) >> 64;
        if (v40 > v41 * v40)
        {
          v42 = -v40 % v40;
          if (v42 > v41 * v40)
          {
            do
            {
              v43 = sub_22F740D30();
            }

            while (v42 > v43 * v40);
            v39 = (v43 * v40) >> 64;
          }
        }

        swift_endAccess();
      }

      sub_22F741280();
      sub_22F7412B0();
      result = sub_22F741230();
      if (result < 0)
      {
        break;
      }

      v44 = result;
      result = swift_beginAccess();
      if (!v44)
      {
        goto LABEL_36;
      }

      v79 = v39;
      sub_22F740840();
      sub_22F20F7E0();
      v45 = sub_22F740D30();
      if (v44 > v45 * v44)
      {
        v46 = -v44 % v44;
        if (v46 > v45 * v44)
        {
            ;
          }
        }
      }

      swift_endAccess();
      v47 = v82;
      v48 = v75;
      sub_22F7412B0();

      if (!v74)
      {
        (*v64)(v70, v71);
        v58 = v60;
        (*v65)(v60, v47, v48);
        return (v68)(v58, 0, 1, v48);
      }

      v49 = v80;
      v50 = v80(v77, v47);
      if (v84 & 1 | (v50 >= v30))
      {
        v31 = v50;
        v32 = v70;
        (*v64)(v70, v71);
        sub_22F107E14(v49);
        (*v65)(v32, v47, v48);
        (v68)(v32, 0, 1, v48);
        v30 = v31;
        v33 = v72;
        a2 = v73;
        v34 = v83;
      }

      else
      {
        v51 = sub_22F741280();
        v52 = v73;
        sub_22F7411E0();
        sub_22F20F308(v79, *v52);
        v53 = v66;
        sub_22F741250();
        v84 = *v62;
        v84(v53, v48);
        GEOLocationCoordinate2DMake(v51);
        v54 = *v52;
        sub_22F7412B0();
        v55 = sub_22F741230();

        if (!v55)
        {
          sub_22F741250();
        }

        v56 = *v52;
        v57 = sub_22F741230();
        sub_22F107E14(v80);
        v84(v82, v48);
        a2 = v52;
        v33 = v72;
        v34 = v83;
        if (!v57)
        {
          return (*(v61 + 32))(v60, v70, v71);
        }
      }

      v29 = 0;
      v26 = v34 + 1;
      if (v26 == v33)
      {
        return (*(v61 + 32))(v60, v70, v71);
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DataSampler.deinit()
{
  v1 = *(v0 + 16);

  v2 = qword_27DAB25B8;
  v3 = sub_22F740840();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t DataSampler.__deallocating_deinit()
{
  DataSampler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F20F308(unint64_t a1, uint64_t a2)
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

unint64_t sub_22F20F35C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_22F740840();
    sub_22F20F7E0();
    v2 = sub_22F740D30();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = sub_22F740D30();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F20F3F4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    sub_22F740840();
    sub_22F20F7E0();
    v3 = sub_22F740D30() * v2;
    if (v3 < v1)
    {
        ;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_22F20F494(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_22F741230() > 1;
}

uint64_t sub_22F20F4CC(float a1)
{
  result = sub_22F73FDF0();
  v3 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v4 = 0;
    while (1)
    {
      if (v3 < v4)
      {
        return v4;
      }

      if (__OFSUB__(v3, v4))
      {
        break;
      }

      v5 = v3 - v4;
      v6 = v4 + (v3 - v4) / 2;
      if (__OFADD__(v4, (v3 - v4) / 2))
      {
        goto LABEL_17;
      }

      sub_22F73FE70();
      if (v7 == a1)
      {
        goto LABEL_14;
      }

      result = sub_22F73FE70();
      if (v8 >= a1)
      {
        v3 = v6 - 1;
        if (__OFSUB__(v6, 1))
        {
          __break(1u);
LABEL_14:
          v4 += v5 / 2;
          return v4;
        }
      }

      else
      {
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_22F20F578(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_22F741230() > 0;
}

uint64_t sub_22F20F5B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_22F20E094(a1, a2);
}

uint64_t sub_22F20F5E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_22F20E094(a1, a2);
}

uint64_t sub_22F20F634()
{
  result = sub_22F740840();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22F20F7E0()
{
  result = qword_27DAB26C0;
  if (!qword_27DAB26C0)
  {
    sub_22F740840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26C0);
  }

  return result;
}

BOOL sub_22F20F838()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return (sub_22F740DE0() & 1) == 0;
}

uint64_t sub_22F20F874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_22F20CE18(a1, a2);
}

uint64_t sub_22F20F898()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_22F20CEBC() & 1;
}

uint64_t MaestroKeywordManager.__allocating_init(keywordProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_22F100260(a1, v2 + 16);
  return v2;
}

uint64_t MaestroKeywordManager.songs<A>(from:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v154 = a2;
  v9 = sub_22F741860();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v122 - v13;
  v153 = *(a3 - 8);
  v15 = *(v153 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22F741230() < 1)
  {
    v23 = sub_22F741280();
    v24 = MEMORY[0x277D837D0];
    swift_getTupleTypeMetadata2();
    v25 = sub_22F7411F0();
    v22 = sub_22F210EE4(v25, v24, v23, MEMORY[0x277D837E0]);

    return v22;
  }

  v151 = v10;
  v152 = v9;
  swift_beginAccess();
  v18 = *(v4 + 40);
  v19 = *(v4 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 16, v18);
  v20 = (*(v19 + 8))(v18, v19);
  v22 = v21;
  swift_endAccess();
  if (v22)
  {
    v156 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    return v22;
  }

  v26 = [v20 rowLabels];
  if (!v26)
  {
    goto LABEL_32;
  }

  v150 = v14;
  v146 = v17;
  v148 = v20;
  v27 = v26;
  v149 = sub_22F741180();

  v158 = a1;
  v28 = sub_22F740C50();
  v147 = &v122;
  v155 = v28;
  MEMORY[0x28223BE20](v28);
  *(&v122 - 2) = a3;
  *(&v122 - 1) = a4;
  v144 = a4;
  v29 = sub_22F741280();
  sub_22F740CE0();
  WitnessTable = swift_getWitnessTable();
  v145 = v29;
  v139 = WitnessTable;
  v31 = v149;
  sub_22F741090();
  v32 = v156;
  sub_22F740CC0();

  swift_getWitnessTable();
  sub_22F7414A0();
  v156 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F211764();
  sub_22F741440();
  v22 = sub_22F741460();

  if (v22 < 1)
  {

    if (qword_2810A9460 == -1)
    {
LABEL_10:
      v34 = sub_22F740B90();
      __swift_project_value_buffer(v34, qword_2810B4D90);

      v35 = sub_22F740B70();
      v36 = sub_22F7415C0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = sub_22F741230();

        _os_log_impl(&dword_22F0FC000, v35, v36, "[MemoriesMusic] None of the %ld input songs are in the Maestro data set", v37, 0xCu);
        MEMORY[0x2319033A0](v37, -1, -1);
      }

      else
      {
      }

      v64 = v148;
      v65 = MEMORY[0x277D837D0];
      v66 = v145;
      swift_getTupleTypeMetadata2();
      v67 = sub_22F7411F0();
      v22 = sub_22F210EE4(v67, v65, v66, MEMORY[0x277D837E0]);

      sub_22F21173C(v64);
      return v22;
    }

LABEL_78:
    swift_once();
    goto LABEL_10;
  }

  v20 = v148;
  v33 = sub_22F741550();
  if (v5)
  {

LABEL_33:
    sub_22F21173C(v20);
    return v22;
  }

  if (!v33)
  {
LABEL_31:

LABEL_32:
    sub_22F2116E8();
    swift_allocError();
    *v68 = 1;
    swift_willThrow();
    goto LABEL_33;
  }

  v22 = v33;
  v38 = [v33 columnLabels];
  if (!v38)
  {

    goto LABEL_31;
  }

  v138 = v32;
  v123 = v22;
  v39 = v38;
  v40 = sub_22F741180();

  v41 = *(v40 + 16);
  v154 = 0;
  v147 = v41;
  if (v41)
  {
    v42 = 0;
    v43 = (v40 + 40);
    v44 = MEMORY[0x277D84F98];
    while (v42 < *(v40 + 16))
    {
      v49 = *(v43 - 1);
      v50 = *v43;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v156 = v44;
      v52 = sub_22F13A8F4(v42);
      v54 = v44[2];
      v55 = (v53 & 1) == 0;
      v56 = __OFADD__(v54, v55);
      v57 = v54 + v55;
      if (v56)
      {
        goto LABEL_75;
      }

      v58 = v53;
      if (v44[3] >= v57)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = v52;
          sub_22F135B64();
          v52 = v63;
        }
      }

      else
      {
        sub_22F12822C(v57, isUniquelyReferenced_nonNull_native);
        v52 = sub_22F13A8F4(v42);
        if ((v58 & 1) != (v59 & 1))
        {
          goto LABEL_81;
        }
      }

      v44 = v156;
      if (v58)
      {
        v45 = (*(v156 + 56) + 16 * v52);
        v46 = v156;
        v47 = v45[1];
        *v45 = v49;
        v45[1] = v50;

        v44 = v46;
      }

      else
      {
        *(v156 + 8 * (v52 >> 6) + 64) |= 1 << v52;
        *(v44[6] + 8 * v52) = v42;
        v60 = (v44[7] + 16 * v52);
        *v60 = v49;
        v60[1] = v50;

        v61 = v44[2];
        v56 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v56)
        {
          goto LABEL_77;
        }

        v44[2] = v62;
      }

      v48 = v150;
      ++v42;
      v43 += 2;
      if (v147 == v42)
      {
        goto LABEL_36;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v44 = MEMORY[0x277D84F98];
  v48 = v150;
LABEL_36:
  v141 = v44;

  v70 = *(v144 + 8);
  v135 = sub_22F741490();
  v140 = sub_22F740C50();
  v130 = [v123 matrix];
  v71 = [v130 rows];
  if ((v71 & 0x8000000000000000) == 0)
  {
    v72 = v71;
    v73 = v146;
    v74 = v149;
    if (!v71)
    {
      v131 = 0;
      v147 = 0;
      v132 = 0;
LABEL_70:

      v158 = v140;

      v155 = sub_22F740C50();
      MEMORY[0x28223BE20](v155);
      v120 = v144;
      *(&v122 - 2) = a3;
      *(&v122 - 1) = v120;
      sub_22F740CE0();
      sub_22F740CE0();
      swift_getWitnessTable();
      sub_22F741090();

      sub_22F21173C(v148);
      swift_bridgeObjectRelease_n();
      sub_22F107E14(v131);
      sub_22F107E14(v132);
      return v156;
    }

    v131 = 0;
    v147 = 0;
    v132 = 0;
    v75 = 0;
    v76 = 0;
    v137 = v149 + 32;
    v136 = (v153 + 48);
    v128 = (v153 + 32);
    v124 = v153 + 16;
    v126 = (v153 + 8);
    v127 = (v151 + 8);
    v143 = v140;
    v125 = v71;
    while (v76 < *(v74 + 16))
    {
      v77 = (v137 + 16 * v76);
      v78 = v77[1];
      v156 = *v77;
      v157 = v78;

      sub_22F740D10();

      v79 = (*v136)(v48, 1, a3);
      v151 = v76;
      if (v79 == 1)
      {
        (*v127)(v48, v152);
      }

      else
      {
        v142 = v75;
        (*v128)(v73, v48, a3);
        v80 = [v130 row_];
        v81 = [v80 array];

        sub_22F170D8C();
        v82 = sub_22F741180();

        if (v82 >> 62)
        {
          v83 = sub_22F741A00();
          v84 = v141;
          if (v83)
          {
LABEL_45:
            v85 = 0;
            v86 = v140;
            while (1)
            {
              v140 = v86;
              v22 = v85;
              while (1)
              {
                if ((v82 & 0xC000000000000001) != 0)
                {
                  v87 = MEMORY[0x2319016F0](v22, v82);
                }

                else
                {
                  if (v22 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_73;
                  }

                  v87 = *(v82 + 8 * v22 + 32);
                }

                v88 = v87;
                v85 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  __break(1u);
LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

                [v87 floatValue];
                if (v89 > 0.0)
                {
                  break;
                }

                ++v22;
                if (v85 == v83)
                {
                  goto LABEL_67;
                }
              }

              if (!v84[2] || (v90 = sub_22F13A8F4(v22), (v91 & 1) == 0))
              {

                sub_22F2116E8();
                swift_allocError();
                *v121 = 2;
                swift_willThrow();

                sub_22F21173C(v148);
                (*v126)(v146, a3);
                sub_22F107E14(v131);
                sub_22F107E14(v132);
                return v22;
              }

              v92 = (v141[7] + 16 * v90);
              v93 = v92[1];
              v133 = *v92;
              v140 = v93;
              v94 = swift_allocObject();
              v134 = v94;
              v95 = v144;
              *(v94 + 16) = a3;
              *(v94 + 24) = v95;

              sub_22F107E14(v131);
              v96 = sub_22F210E70(a3, a3);
              v97 = v153;
              v98 = *(v153 + 80);
              v99 = ((v98 + *(v96 + 48)) & ~v98) + *(v153 + 72);
              v100 = v98 | *(v96 + 52);
              swift_allocObject();
              v101 = sub_22F7411A0();
              (*(v97 + 16))(v102, v146, a3);
              v158 = v101;
              v103 = swift_allocObject();
              v104 = v144;
              v103[2] = a3;
              v103[3] = v104;
              v129 = v103;
              v105 = v134;
              v103[4] = sub_22F2117E4;
              v103[5] = v105;
              sub_22F107E14(v132);
              v106 = v143;
              LODWORD(v142) = swift_isUniquelyReferenced_nonNull_native();
              v156 = v106;
              v147 = sub_22F1229E8(v133, v140);
              v107 = *(v106 + 16);
              LODWORD(v143) = v108;
              if (__OFADD__(v107, (v108 & 1) == 0))
              {
                break;
              }

              sub_22F741C80();
              v109 = sub_22F741C60();
              v86 = v156;
              if (v109)
              {
                v110 = sub_22F1229E8(v133, v140);
                v112 = v143;
                if ((v143 & 1) != (v111 & 1))
                {
                  goto LABEL_82;
                }

                v113 = v110;
              }

              else
              {
                v113 = v147;
                v112 = v143;
              }

              if ((v112 & 1) == 0)
              {
                v147 = v113;
                v114 = v129[5];
                v115 = (v129[4])();
                v113 = v147;
                v155 = v115;
                v156 = v133;
                v157 = v140;

                sub_22F741C70();
              }

              v116 = *(v86 + 56) + 8 * v113;
              sub_22F741480();

              v132 = sub_22F2117F0;
              v131 = sub_22F2117E4;
              v117 = v129;
              v142 = v129;
              v118 = v134;
              v147 = v134;
              v143 = v86;
              v140 = v86;
              v84 = v141;
              if (v85 == v83)
              {
                goto LABEL_68;
              }
            }

            __break(1u);
            goto LABEL_80;
          }
        }

        else
        {
          v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v84 = v141;
          if (v83)
          {
            goto LABEL_45;
          }
        }

LABEL_67:
        v117 = v142;
        v86 = v143;
        v118 = v147;
LABEL_68:
        v119 = v117;

        v73 = v146;
        (*v126)(v146, a3);
        v143 = v86;
        v147 = v118;
        v75 = v119;
        v74 = v149;
        v48 = v150;
        v72 = v125;
      }

      v76 = v151 + 1;
      if (v151 + 1 == v72)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_76;
  }

LABEL_80:
  __break(1u);
LABEL_81:
  sub_22F7420C0();
  __break(1u);
LABEL_82:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F2109F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22F741860();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v16 - v9;
  v11 = (*(a4 + 16))(a3, a4);
  v13 = v12;
  v14 = *(a3 - 8);
  (*(v14 + 16))(v10, a2, a3);
  (*(v14 + 56))(v10, 0, 1, a3);
  v16[0] = v11;
  v16[1] = v13;
  sub_22F740CE0();
  return sub_22F740D20();
}

uint64_t sub_22F210B48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = a2[1];
  v8 = a2[2];
  v6 = *(a4 + 8);
  sub_22F741490();

  swift_getWitnessTable();
  sub_22F741290();
  sub_22F741280();
  sub_22F740CE0();
  return sub_22F740D20();
}

uint64_t MaestroKeywordManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_22F210C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_22F740D40();

  return sub_22F210CE8(a1, v9, a2, a3);
}

unint64_t sub_22F210CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v21 = sub_22F740DE0();
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

uint64_t sub_22F210E70(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t sub_22F210EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_22F741230())
  {
    sub_22F741E00();
    v13 = sub_22F741DF0();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_22F741230();
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
        if (sub_22F741210())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_22F741B30();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_22F210C8C(v12, a2, v27);
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

char *sub_22F2111D0(uint64_t a1)
{
  v3 = v1;
  if (qword_2810A9BD0 != -1)
  {
    goto LABEL_28;
  }

LABEL_2:
  v5 = qword_2810B4E90;
  *&v6 = CACurrentMediaTime();
  sub_22F1B560C("MaestroKeywordDataFrameCreation", 31, 2u, v6, 0, v5, v42);
  sub_22F741690();
  if (v3)
  {
    goto LABEL_3;
  }

  v2 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v3 = v2;
  for (i = a1; v11; v3 = v41)
  {
LABEL_12:
    v15 = __clz(__rbit64(v11)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(a1 + 56) + 4 * v15);
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_22F13E1A8(0, *(v2 + 2) + 1, 1, v2);
    }

    v21 = *(v2 + 2);
    v20 = *(v2 + 3);
    if (v21 >= v20 >> 1)
    {
      v2 = sub_22F13E1A8((v20 > 1), v21 + 1, 1, v2);
    }

    *(v2 + 2) = v21 + 1;
    v22 = &v2[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v18;
    v23 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v24) = v19;
    [v23 initWithFloat_];

    MEMORY[0x231900D00](v25);
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    v11 &= v11 - 1;
    sub_22F741220();
    a1 = i;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_2;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22F771340;
  *(v27 + 32) = v3;
  v28 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v29 = sub_22F741160();

  v30 = [v28 initWithArray_];

  v31 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v32 = v30;
  v33 = sub_22F741160();
  v34 = sub_22F741160();

  v2 = [v31 initWithName:0 rowLabels:v33 columnLabels:v34 matrix:v32];

  if (v2)
  {
    sub_22F7416A0();

    sub_22F1B2BBC(0);
  }

  else
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v35 = sub_22F740B90();
    __swift_project_value_buffer(v35, qword_2810B4D90);
    v36 = sub_22F740B70();
    v37 = sub_22F7415E0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22F0FC000, v36, v37, "[MemoriesMusic] - MaestroKeywordManager failed to create keyword data frame", v38, 2u);
      MEMORY[0x2319033A0](v38, -1, -1);
    }

    sub_22F2116E8();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();

LABEL_3:
    sub_22F1B2BBC(0);
  }

  return v2;
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

unint64_t sub_22F2116E8()
{
  result = qword_27DAB26C8;
  if (!qword_27DAB26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26C8);
  }

  return result;
}

unint64_t sub_22F211764()
{
  result = qword_27DAB26D0;
  if (!qword_27DAB26D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26D0);
  }

  return result;
}

uint64_t sub_22F2117F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t sub_22F211898()
{
  result = qword_27DAB26D8;
  if (!qword_27DAB26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26D8);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EspressoEventLabeler.init()(PhotosGraph::EspressoEventLabeler *__return_ptr retstr)
{
  _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0();
  if (v3)
  {
    v4 = objc_allocWithZone(PGEventLabelerE5Model);
    v5 = sub_22F212148();
    if (!v1)
    {
      retstr->model.super.isa = v5;
    }
  }

  else
  {
    sub_22F176594();
    swift_allocError();
    swift_willThrow();
  }
}

id EspressoEventLabeler.featureNames()()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v9[0] = 0;
  v2 = [v1 inputNamesWithError_];
  v3 = v9[0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_22F741420();
    v6 = v3;
  }

  else
  {
    v5 = v9[0];
    sub_22F73F370();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

char *EspressoEventLabeler.label(event:progressReporter:)(void *a1)
{
  v3 = v2;
  v40 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v6 = sub_22F7416B0();
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 16))(v6, v9, v10);
  if (v2)
  {
  }

  else
  {
    if (qword_27DAAFD88 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v11 = qword_27DAD0E78;
      *&v12 = CACurrentMediaTime();
      sub_22F1B560C("EspressoEventLabeler", 20, 2u, v12, 0, v11, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
      v13 = sub_22F740C80();

      v37[0] = 0;
      v5 = [v5 computeWithFeatures:v13 error:v37];

      v14 = v37[0];
      if (!v5)
      {
        break;
      }

      v34 = v6;
      v35 = v8;
      sub_22F170D8C();
      v15 = sub_22F740CA0();
      v16 = v14;

      v17 = 1 << *(v15 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v15 + 64);
      v20 = (v17 + 63) >> 6;

      v6 = 0;
      v5 = MEMORY[0x277D84F90];
      while (v19)
      {
LABEL_13:
        v22 = __clz(__rbit64(v19)) | (v6 << 6);
        v23 = *(v15 + 48) + 16 * v22;
        v24 = *(*(v15 + 56) + 8 * v22);
        v26 = *v23;
        v25 = *(v23 + 8);
        v19 &= v19 - 1;
        v37[0] = v26;
        v37[1] = v25;
        v37[2] = v24;
        sub_22F211E50(v37, v38);
        v8 = LOBYTE(v38[0]);
        if (LOBYTE(v38[0]) != 23)
        {
          v27 = v38[1];
          v36 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_22F13E7BC(0, *(v5 + 2) + 1, 1, v5);
          }

          v29 = *(v5 + 2);
          v28 = *(v5 + 3);
          if (v29 >= v28 >> 1)
          {
            v5 = sub_22F13E7BC((v28 > 1), v29 + 1, 1, v5);
          }

          *(v5 + 2) = v29 + 1;
          v30 = &v5[16 * v29];
          v30[32] = v8;
          *(v30 + 5) = v27;
          v3 = v36;
        }
      }

      while (1)
      {
        v21 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v21 >= v20)
        {

          sub_22F7416A0();
          sub_22F1B2BBC(0);

          goto LABEL_21;
        }

        v19 = *(v15 + 64 + 8 * v21);
        ++v6;
        if (v19)
        {
          v6 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    v31 = v37[0];
    sub_22F73F370();

    swift_willThrow();
    sub_22F1B2BBC(1);
  }

LABEL_21:
  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_22F211E50(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_22F740B90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = qword_27DAAFCC0;

  v30 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = off_27DAB14F0;
  if (*(off_27DAB14F0 + 2) && (v15 = sub_22F1229E8(v11, v10), (v16 & 1) != 0))
  {
    v17 = v15;

    v18 = *(v14[7] + v17);
    v19 = v30;
    [v30 doubleValue];
    v21 = v20;

    v22 = v31;
    *v31 = v18;
    v22[1] = v21;
  }

  else
  {
    if (qword_27DAAFD88 != -1)
    {
      swift_once();
    }

    sub_22F1B3158(v9);

    v23 = sub_22F740B70();
    v24 = sub_22F7415E0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v3;
      v27 = v26;
      v32 = v26;
      *v25 = 136315138;
      v28 = sub_22F145F20(v11, v10, &v32);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_22F0FC000, v23, v24, "[EspressoEventLabeler] Espresso model returned output with unknown event label: %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x2319033A0](v27, -1, -1);
      MEMORY[0x2319033A0](v25, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    *v31 = xmmword_22F77A900;
  }
}

id sub_22F212148()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22F740DF0();

  v7[0] = 0;
  v2 = [v0 initWithFilePath:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22F73F370();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_22F212238()
{
  result = qword_27DAB26F0;
  if (!qword_27DAB26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26F0);
  }

  return result;
}

uint64_t sub_22F21228C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_22F7400A0() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_22F21F158(&unk_2810A94E0, MEMORY[0x277D3C148]);
  v7 = 0;
  while ((sub_22F740DE0() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_22F2123AC(unsigned __int8 a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  v26 = a2;
  if ((a3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(a2 + 16);
    }
  }

  else if (v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 >> 32;
  v8 = a1;
  v24 = a2 >> 16;
  v25 = a2 >> 8;
  v22 = HIDWORD(a2);
  v23 = a2 >> 24;
  v20 = HIWORD(a2);
  v21 = a2 >> 40;
  v18 = v6;
  v19 = HIBYTE(a2);
  if (v5 > 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = BYTE6(a3);
  if (v5)
  {
    v9 = a2 >> 32;
  }

  while (v6 != v9)
  {
    if (v5 == 2)
    {
      if (v6 < *(a2 + 16))
      {
        goto LABEL_36;
      }

      if (v6 >= *(a2 + 24))
      {
        goto LABEL_38;
      }

      v14 = sub_22F73F170();
      if (!v14)
      {
        goto LABEL_43;
      }

      v11 = v14;
      v15 = sub_22F73F190();
      v13 = v6 - v15;
      if (__OFSUB__(v6, v15))
      {
        goto LABEL_40;
      }

      goto LABEL_25;
    }

    if (v5 == 1)
    {
      if (v6 < v26 || v6 >= v7)
      {
        goto LABEL_37;
      }

      v10 = sub_22F73F170();
      if (!v10)
      {
        goto LABEL_42;
      }

      v11 = v10;
      v12 = sub_22F73F190();
      v13 = v6 - v12;
      if (__OFSUB__(v6, v12))
      {
        goto LABEL_39;
      }

LABEL_25:
      if (*(v11 + v13) == v8)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (v6 >= BYTE6(a3))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27[0] = a2;
    v27[1] = v25;
    v27[2] = v24;
    v27[3] = v23;
    v27[4] = v22;
    v27[5] = v21;
    v27[6] = v20;
    v27[7] = v19;
    v28 = a3;
    v29 = BYTE2(a3);
    v30 = BYTE3(a3);
    v31 = BYTE4(a3);
    v32 = BYTE5(a3);
    if (v27[v6] == v8)
    {
      goto LABEL_34;
    }

LABEL_29:
    ++v6;
    if (v5 <= 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (v5 != 2)
    {
      if (!v18)
      {
        v6 = 0;
        goto LABEL_34;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v9 = *(a2 + 24);
  }

  v6 = 0;
LABEL_34:
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_22F212614(unsigned __int8 a1, uint64_t a2)
{
  v18 = *(a2 + 16);
  v2 = 0;
  if (v18)
  {
    v3 = a2 + 32;
    v4 = 0xE600000000000000;
    v5 = a1;
    while (1)
    {
      v6 = *(v3 + v2);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v9 = 0x6557664F74726170;
          v10 = 0xEA00000000006B65;
        }

        else
        {
          if (v6 == 4)
          {
            v9 = 0x616559664F796164;
          }

          else
          {
            v9 = 0x6144664F74726170;
          }

          if (v6 == 4)
          {
            v10 = 0xE900000000000072;
          }

          else
          {
            v10 = 0xE900000000000079;
          }
        }
      }

      else
      {
        if (v6 == 1)
        {
          v7 = 0x6E6F73616573;
        }

        else
        {
          v7 = 0x59664F6567646577;
        }

        if (v6 == 1)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xEB00000000726165;
        }

        if (*(v3 + v2))
        {
          v9 = v7;
        }

        else
        {
          v9 = 1918985593;
        }

        if (*(v3 + v2))
        {
          v10 = v8;
        }

        else
        {
          v10 = 0xE400000000000000;
        }
      }

      v11 = 0xE900000000000079;
      v12 = 0x616559664F796164;
      if (v5 == 4)
      {
        v11 = 0xE900000000000072;
      }

      else
      {
        v12 = 0x6144664F74726170;
      }

      if (v5 == 3)
      {
        v12 = 0x6557664F74726170;
        v11 = 0xEA00000000006B65;
      }

      if (v5 == 1)
      {
        v13 = 0x6E6F73616573;
      }

      else
      {
        v13 = 0x59664F6567646577;
      }

      if (v5 != 1)
      {
        v4 = 0xEB00000000726165;
      }

      if (!v5)
      {
        v13 = 1918985593;
        v4 = 0xE400000000000000;
      }

      v14 = v5 <= 2 ? v13 : v12;
      v15 = v5 <= 2 ? v4 : v11;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_22F742040();

      if (v16)
      {
        return v2;
      }

      ++v2;
      v4 = 0xE600000000000000;
      if (v18 == v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_22F21282C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6557664F74726170;
  v5 = 0xEA00000000006B65;
  v6 = 0x616559664F796164;
  v7 = 0xE900000000000072;
  if (a1 != 4)
  {
    v6 = 0x6144664F74726170;
    v7 = 0xE900000000000079;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6E6F73616573;
  if (a1 != 1)
  {
    v9 = 0x59664F6567646577;
    v8 = 0xEB00000000726165;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1918985593;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEA00000000006B65;
      if (v10 != 0x6557664F74726170)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x616559664F796164)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000079;
      if (v10 != 0x6144664F74726170)
      {
LABEL_34:
        v13 = sub_22F742040();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F73616573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB00000000726165;
      if (v10 != 0x59664F6567646577)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1918985593)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_22F212A2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000023;
  v3 = "alysis";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0xD00000000000001CLL;
  }

  if (a1 == 4)
  {
    v6 = "ntitiesSimulation";
  }

  else
  {
    v6 = "Graph.EventLabeling";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000031;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 3)
  {
    v6 = "ibrarySimulation";
  }

  v8 = 0xD000000000000030;
  if (v4 == 1)
  {
    v8 = 0xD000000000000023;
    v9 = "com.apple.PhotosGraph";
  }

  else
  {
    v9 = "Graph.MemoriesMusic";
  }

  if (!v4)
  {
    v8 = 0xD000000000000015;
    v9 = "alysis";
  }

  if (v4 > 2)
  {
    v10 = v6;
  }

  else
  {
    v7 = v8;
    v10 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000031;
      v3 = "ibrarySimulation";
    }

    else if (a2 == 4)
    {
      v3 = "ntitiesSimulation";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v3 = "Graph.EventLabeling";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "com.apple.PhotosGraph";
    }

    else
    {
      v2 = 0xD000000000000030;
      v3 = "Graph.MemoriesMusic";
    }
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (v7 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F742040();
  }

  return v11 & 1;
}

uint64_t sub_22F212B98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6867756F6E4574;
  if (a1 > 4u)
  {
    v3 = 0x800000022F78E480;
    v4 = 0xD000000000000020;
    v10 = 0x800000022F78E4B0;
    v11 = 0xD00000000000001FLL;
    if (a1 == 8)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v10 = 0x800000022F78E4D0;
    }

    if (a1 != 7)
    {
      v4 = v11;
      v3 = v10;
    }

    v7 = 0x800000022F78E440;
    v8 = 0xD000000000000022;
    if (a1 != 5)
    {
      v8 = 0x457265696C74756FLL;
      v7 = 0xED0000797469746ELL;
    }

    v9 = a1 <= 6u;
  }

  else
  {
    v3 = 0x800000022F78E3F0;
    v4 = 0xD000000000000019;
    v5 = 0x746E656D6F4D6F6ELL;
    v6 = 0xE900000000000073;
    if (a1 != 3)
    {
      v5 = 0xD000000000000010;
      v6 = 0x800000022F78E420;
    }

    if (a1 != 2)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x800000022F78E3C0;
    v8 = 0xD000000000000017;
    if (a1)
    {
      v8 = 0x6E65636552746F6ELL;
      v7 = 0xEF6867756F6E4574;
    }

    v9 = a1 <= 1u;
  }

  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (v9)
  {
    v13 = v7;
  }

  else
  {
    v13 = v3;
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (v12 != 0x6E65636552746F6ELL)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v2 = 0x800000022F78E3C0;
        if (v12 != 0xD000000000000017)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 2)
    {
      v2 = 0x800000022F78E3F0;
      if (v12 != 0xD000000000000019)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000073;
      if (v12 != 0x746E656D6F4D6F6ELL)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v14 = "notEnoughMoments";
LABEL_44:
    v2 = (v14 - 32) | 0x8000000000000000;
    if (v12 != 0xD000000000000010)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v2 = 0x800000022F78E480;
      if (v12 != 0xD000000000000020)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    if (a2 != 8)
    {
      v2 = 0x800000022F78E4D0;
      if (v12 != 0xD00000000000001FLL)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v14 = "lifespanNotFound";
    goto LABEL_44;
  }

  if (a2 == 5)
  {
    v2 = 0x800000022F78E440;
    if (v12 != 0xD000000000000022)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v2 = 0xED0000797469746ELL;
    if (v12 != 0x457265696C74756FLL)
    {
LABEL_53:
      v15 = sub_22F742040();
      goto LABEL_54;
    }
  }

LABEL_51:
  if (v13 != v2)
  {
    goto LABEL_53;
  }

  v15 = 1;
LABEL_54:

  return v15 & 1;
}

uint64_t sub_22F212EAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 2037672259;
    }

    else
    {
      v5 = 1701736270;
    }

    v6 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x7972746E756F43;
    if (a1 != 3)
    {
      v4 = 0xD000000000000010;
      v3 = 0x800000022F78E820;
    }

    if (a1 == 2)
    {
      v5 = 0x6574617453;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 2037672259;
    }

    else
    {
      v11 = 1701736270;
    }

    v10 = 0xE400000000000000;
    if (v5 != v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0x7972746E756F43;
    v8 = 0x800000022F78E820;
    if (a2 == 3)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x6574617453;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_32;
    }
  }

  if (v6 != v10)
  {
LABEL_32:
    v12 = sub_22F742040();
    goto LABEL_33;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_22F213018(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000073746ELL;
  v3 = 0x656C617669757165;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E612D6F69647561;
    }

    else
    {
      v5 = 0x612D6C6D78656C66;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00736973796C61;
    }

    else
    {
      v6 = 0xEF736973796C616ELL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x73636972796CLL;
    }

    else
    {
      v5 = 0x656C617669757165;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB0000000073746ELL;
    }
  }

  v7 = 0x6E612D6F69647561;
  v8 = 0xEE00736973796C61;
  if (a2 != 2)
  {
    v7 = 0x612D6C6D78656C66;
    v8 = 0xEF736973796C616ELL;
  }

  if (a2)
  {
    v3 = 0x73636972796CLL;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F742040();
  }

  return v11 & 1;
}

uint64_t sub_22F213188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE300000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x79616C506E6163;
    if (a1 != 2)
    {
      v13 = 0xD000000000000010;
      v12 = 0x800000022F78D720;
    }

    v14 = 0x64656C6C61636572;
    if (a1)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v14 = 6580597;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x656D614E676E6F73;
    v5 = 0xE800000000000000;
    v6 = 0x7364726F7779656BLL;
    if (a1 != 7)
    {
      v6 = 0x734449676174;
      v5 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6E6564646968;
    if (a1 != 4)
    {
      v8 = 0x614E747369747261;
      v7 = 0xEA0000000000656DLL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x79616C506E6163)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0x800000022F78D720;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x64656C6C61636572)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      if (v9 != 6580597)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6E6564646968)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEA0000000000656DLL;
      if (v9 != 0x614E747369747261)
      {
LABEL_52:
        v16 = sub_22F742040();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x656D614E676E6F73)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x7364726F7779656BLL)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x734449676174)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_22F213440(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7465737265707573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x696F41706F74;
    }

    else
    {
      v4 = 1701670760;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E69727275636572;
    }

    else
    {
      v4 = 0x7465737265707573;
    }

    if (v3)
    {
      v5 = 0xED00007069725467;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x696F41706F74;
  if (a2 != 2)
  {
    v8 = 1701670760;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6E69727275636572;
    v6 = 0xED00007069725467;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F742040();
  }

  return v11 & 1;
}

uint64_t sub_22F213584(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v3 == 2)
    {
      v4 = "minimumFailureCadenceSeconds";
    }

    else
    {
      v4 = "failureBackoffMultiplier";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "minimumSuccessCadenceSeconds";
    }

    else
    {
      v4 = "";
    }

    v5 = 0xD00000000000001CLL;
  }

  v6 = "minimumFailureCadenceSeconds";
  v7 = 0xD000000000000018;
  if (a2 != 2)
  {
    v7 = 0xD00000000000001CLL;
    v6 = "failureBackoffMultiplier";
  }

  if (a2)
  {
    v2 = "minimumSuccessCadenceSeconds";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD00000000000001CLL;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22F742040();
  }

  return v10 & 1;
}

uint64_t sub_22F2136B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_22F740E20();
  v7(a2, v8, v9, a4);
}

uint64_t sub_22F213728(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22F107D08(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22F107D08(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22F741A70();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22F107D08(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_22F2139E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1380, &unk_22F771790);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_22F13A100(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_22F107D08(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2780, &qword_22F77AD28);
        swift_dynamicCast();
        sub_22F107D08(&v25, v27);
        sub_22F107D08(v27, v28);
        sub_22F107D08(v28, &v26);
        result = sub_22F1229E8(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_22F107D08(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_22F107D08(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22F213C6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22F107D08(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22F107D08(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22F741A70();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22F107D08(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22F213F3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2768, &qword_22F77AD20);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v14 = *(*(a1 + 56) + v13);
    v26 = *(*(a1 + 48) + v13);

    swift_dynamicCast();
    v15 = *(v2 + 40);
    result = sub_22F741A70();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    *(*(v2 + 56) + 8 * v10) = v14;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22F214198(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2768, &qword_22F77AD20);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = *(*(a1 + 56) + 8 * v13);
    v27 = *v14;
    v28 = v14[1];

    swift_dynamicCast();
    v16 = *(v2 + 40);
    result = sub_22F741A70();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    *(*(v2 + 56) + 8 * v10) = v15;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22F2143F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22F13A100(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22F107D08(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22F107D08(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22F107D08(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22F741A70();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22F107D08(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22F2146C0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0AE0, &qword_22F770C68);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1048, &qword_22F78B5C0);
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  v46 = v1;
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v28 = v8 >> 6;

    v29 = 0;
    while (v7)
    {
      v35 = v29;
LABEL_35:
      v36 = __clz(__rbit64(v7)) | (v35 << 6);
      v37 = (*(v1 + 48) + 16 * v36);
      v38 = *(*(v1 + 56) + 8 * v36);
      v7 &= v7 - 1;
      v50 = *v37;
      v52 = v37[1];

      v39 = v38;
      swift_dynamicCast();
      v40 = sub_22F123310(v47, v48);
      if (v41)
      {
        v30 = (*(v2 + 48) + 16 * v40);
        v31 = v30[1];
        *v30 = v47;
        v30[1] = v48;
        v32 = v40;

        v33 = *(v2 + 56);
        v34 = *(v33 + 8 * v32);
        *(v33 + 8 * v32) = v39;
      }

      else
      {
        if (*(v2 + 16) >= *(v2 + 24))
        {
          goto LABEL_43;
        }

        *(v2 + 64 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v42 = (*(v2 + 48) + 16 * v40);
        *v42 = v47;
        v42[1] = v48;
        *(*(v2 + 56) + 8 * v40) = v39;
        v43 = *(v2 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_44;
        }

        *(v2 + 16) = v45;
      }

      v29 = v35;
      v1 = v46;
    }

    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v28)
      {
LABEL_39:

        return;
      }

      v7 = *(v4 + 8 * v35);
      ++v29;
      if (v7)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v15 = __clz(__rbit64(v7)) | (v11 << 6);
      v16 = (*(v1 + 48) + 16 * v15);
      v17 = *(*(v1 + 56) + 8 * v15);
      v49 = *v16;
      v51 = v16[1];

      v18 = v17;
      swift_dynamicCast();
      v19 = *(v2 + 40);
      sub_22F742170();
      sub_22F742190();
      if (v48)
      {
        sub_22F740D60();
      }

      v20 = sub_22F7421D0();
      v21 = -1 << *(v2 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v2 + 48) + 16 * v12);
      *v13 = v47;
      v13[1] = v48;
      *(*(v2 + 56) + 8 * v12) = v18;
      ++*(v2 + 16);
      v1 = v46;
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_39;
      }

      v7 = *(v4 + 8 * v14);
      ++v11;
      if (v7)
      {
        v11 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_22F214A98(uint64_t a1)
{
  v2 = sub_22F73FE50();
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2760, &qword_22F77AD18);
  v6 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = v41 - v9;
  v49 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2768, &qword_22F77AD20);
    v10 = sub_22F741DF0();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v49 + 64;
  v12 = 1 << *(v49 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v49 + 64);
  v15 = (v12 + 63) >> 6;
  v41[1] = v48 + 16;
  v41[0] = v48 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v42 = v10;
  while (v14)
  {
LABEL_15:
    v22 = __clz(__rbit64(v14)) | (v18 << 6);
    v24 = v48;
    v23 = v49;
    v25 = v43;
    v26 = v47;
    (*(v48 + 16))(v43, *(v49 + 48) + *(v48 + 72) * v22, v47);
    v27 = *(*(v23 + 56) + 8 * v22);
    v28 = v45;
    *&v25[*(v45 + 48)] = v27;
    v29 = v25;
    v30 = v44;
    sub_22F21EF98(v29, v44);
    v31 = *(v28 + 48);
    (*(v24 + 32))(v46, v30, v26);

    swift_dynamicCast();
    v32 = *(v30 + v31);
    v53 = v50;
    v10 = v42;
    v33 = *(v42 + 40);
    result = sub_22F741A70();
    v34 = -1 << *(v10 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v16 + 8 * (v35 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v34) >> 6;
      while (++v36 != v38 || (v37 & 1) == 0)
      {
        v39 = v36 == v38;
        if (v36 == v38)
        {
          v36 = 0;
        }

        v37 |= v39;
        v40 = *(v16 + 8 * v36);
        if (v40 != -1)
        {
          v19 = __clz(__rbit64(~v40)) + (v36 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v35) & ~*(v16 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v20 = *(v10 + 48) + 40 * v19;
    *v20 = v50;
    *(v20 + 16) = v51;
    *(v20 + 32) = v52;
    *(*(v10 + 56) + 8 * v19) = v32;
    ++*(v10 + 16);
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v21);
    ++v18;
    if (v14)
    {
      v18 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_22F214E90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1380, &unk_22F771790);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_22F139EC4(*(a1 + 56) + 48 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v29[2] = v31[2];
        v19 = v30;
        sub_22F139F28(v29, v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2758, &qword_22F77AD10);
        swift_dynamicCast();
        sub_22F107D08(&v25, v27);
        sub_22F107D08(v27, v28);
        sub_22F107D08(v28, &v26);
        result = sub_22F1229E8(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_22F107D08(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_22F107D08(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22F215124(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22F139EC4(*(a1 + 56) + 48 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    *&v33[5] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v34[2] = v36[2];
    v25[3] = v35;

    swift_dynamicCast();
    sub_22F139F28(v34, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2758, &qword_22F77AD10);
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_22F107D08(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_22F107D08(v33, v25);
    v17 = *(v2 + 40);
    result = sub_22F741A70();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_22F107D08(v25, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_22F215428(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1380, &unk_22F771790);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_22F107D08(&v27, v29);
        sub_22F107D08(v29, v30);
        sub_22F107D08(v30, &v28);
        result = sub_22F1229E8(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_22F107D08(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_22F107D08(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22F215680(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = sub_22F10B47C(*(a1 + 16), 0);
  v10 = sub_22F120B40(&v16, v9 + 4, v8, a1);
  sub_22F0FF590();
  if (v10 != v8)
  {
    __break(1u);
LABEL_4:

    v9 = MEMORY[0x277D84F90];
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  result = sub_22F740830();
  if (a3 < 1 || a4 < 1)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v9;
    *(v14 + 24) = a2 & 1;
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
    return v14;
  }

  return result;
}

uint64_t sub_22F215784(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_22F146954(0, v3, 0);
  v7 = 0;
  v4 = v13;
  while (v7 < *(v2 + 16))
  {
    v8 = *(v2 + 32 + 8 * v7);

    v10 = sub_22F21588C(v9, a1);

    v12 = *(v13 + 16);
    v11 = *(v13 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_22F146954((v11 > 1), v12 + 1, 1);
    }

    ++v7;
    *(v13 + 16) = v12 + 1;
    *(v13 + 8 * v12 + 32) = v10;
    if (v3 == v7)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F21588C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 40;
  v6 = MEMORY[0x277D84F90];
  v15 = result + 40;
  do
  {
    v16 = v6;
    v7 = (v5 + 16 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      v17[0] = v10;
      v17[1] = v9;
      MEMORY[0x28223BE20](result);
      v14[2] = v17;

      if (sub_22F1C0E04(sub_22F15A388, v14, a2))
      {
        break;
      }

      v7 += 2;
      if (v4 == v2)
      {
        return v16;
      }
    }

    v6 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    v18 = v6;
    if ((result & 1) == 0)
    {
      result = sub_22F146454(0, *(v6 + 16) + 1, 1);
      v6 = v18;
    }

    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_22F146454((v11 > 1), v12 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = v10;
    *(v13 + 40) = v9;
    v5 = v15;
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_22F215A34(uint64_t a1, uint64_t a2, float (*a3)(void *, uint64_t *), uint64_t a4)
{
  v5 = v4;
  v46 = a3;
  v47 = a4;
  v50 = a1;
  v7 = sub_22F73FE50();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 16);
  v44 = v12;
  v45 = v9;
  if (a2)
  {

    v13 = sub_22F215784(a2);

    v11 = v13;
  }

  else
  {
  }

  v15 = 0;
  v16 = *(v11 + 16);
  v17 = MEMORY[0x277D84F90];
  while (v16 != v15)
  {
    if (v15 >= *(v11 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return result;
    }

    v18 = *(v11 + 8 * v15++ + 32);
    if (*(v18 + 16) >= 2uLL)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v51[0] = v17;
      v19 = v5;
      if ((result & 1) == 0)
      {
        result = sub_22F146954(0, *(v17 + 16) + 1, 1);
        v17 = v51[0];
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_22F146954((v20 > 1), v21 + 1, 1);
        v17 = v51[0];
      }

      *(v17 + 16) = v21 + 1;
      *(v17 + 8 * v21 + 32) = v18;
      v5 = v19;
    }
  }

  v52 = v17;
  v22 = *(v17 + 16);

  if (v22)
  {
    sub_22F2165F0(v17, v48);
    v23 = v52;
    v25 = (v52 + 16);
    v24 = *(v52 + 16);
    if (v24)
    {
      v26 = MEMORY[0x277D84F90];
      v49 = qword_27DAB25B8;
      while (v26[2] < v50)
      {
        if (*(v5 + 24))
        {
          swift_beginAccess();
          v27 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          result = sub_22F20F4CC(v27);
          v28 = result;
        }

        else
        {
          swift_beginAccess();
          v28 = sub_22F20F35C(v24);
          result = swift_endAccess();
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v28 >= *v25)
        {
          goto LABEL_41;
        }

        v29 = v23;
        v30 = *(v23 + 8 * v28 + 32);
        v31 = *(v30 + 16);
        result = swift_beginAccess();
        if (!v31)
        {
          goto LABEL_42;
        }

        v32 = sub_22F20F35C(v31);
        result = swift_endAccess();
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v32 >= *(v30 + 16))
        {
          goto LABEL_44;
        }

        v33 = v5;
        v34 = v30 + 16 * v32;
        v36 = *(v34 + 32);
        v35 = *(v34 + 40);
        v51[0] = v36;
        v51[1] = v35;
        MEMORY[0x28223BE20](result);
        *(&v44 - 2) = v51;

        v37 = sub_22F3A06C8(sub_22F21F1C8, (&v44 - 4), v30);
        if (*(v37 + 16))
        {
          v38 = sub_22F216850(v36, v35, v37, v46);
          v40 = v39;

          if (v40)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_22F13F03C(0, v26[2] + 1, 1, v26);
            }

            v42 = v26[2];
            v41 = v26[3];
            if (v42 >= v41 >> 1)
            {
              v26 = sub_22F13F03C((v41 > 1), v42 + 1, 1, v26);
            }

            v26[2] = v42 + 1;
            v43 = &v26[4 * v42];
            v43[4] = v36;
            v43[5] = v35;
            v43[6] = v38;
            v43[7] = v40;

            v23 = v52;
          }

          else
          {

            v23 = v29;
          }
        }

        else
        {

          sub_22F215FC0(v28);

          v23 = v52;
        }

        v25 = (v23 + 16);
        v24 = *(v23 + 16);
        v5 = v33;
        if (!v24)
        {
          break;
        }
      }
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    (*(v44 + 8))(v48, v45);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v26;
}

uint64_t sub_22F215F34(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22F2F2C80(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22F215FC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22F2F2C94(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22F216048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a3;
  v56 = a4;
  v58 = a1;
  v7 = sub_22F73FE50();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v48 - v12;
  if (a2)
  {
    result = sub_22F215784(a2);
    v14 = result;
  }

  else
  {
    v14 = *(v4 + 16);
  }

  v15 = 0;
  v16 = *(v14 + 16);
  v17 = MEMORY[0x277D84F90];
  while (v16 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    v18 = *(v14 + 8 * v15++ + 32);
    if (*(v18 + 16))
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v59[0] = v17;
      if ((result & 1) == 0)
      {
        result = sub_22F146954(0, *(v17 + 16) + 1, 1);
        v17 = v59[0];
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_22F146954((v19 > 1), v20 + 1, 1);
        v17 = v59[0];
      }

      *(v17 + 16) = v20 + 1;
      *(v17 + 8 * v20 + 32) = v18;
    }
  }

  v21 = *(v17 + 16);
  v57 = (v17 + 16);
  if (v21 >= 2)
  {
    sub_22F2165F0(v17, v54);
    v23 = *(v17 + 16);
    if (v23)
    {
      v49 = (v53 + 32);
      v50 = (v53 + 8);
      v22 = MEMORY[0x277D84F90];
      v24 = v17;
      while (v22[2] < v58)
      {
        v60 = v24;
        if (*(v5 + 24))
        {
          swift_beginAccess();

          v25 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          v26 = sub_22F20F4CC(v25);
        }

        else
        {
          swift_beginAccess();

          v27 = sub_22F20F35C(v23);
          swift_endAccess();
          v26 = v27;
        }

        v28 = sub_22F215FC0(v26);
        v29 = *(v28 + 16);
        result = swift_beginAccess();
        if (!v29)
        {
          goto LABEL_40;
        }

        v30 = sub_22F20F35C(v29);
        result = swift_endAccess();
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v30 >= *(v28 + 16))
        {
          goto LABEL_42;
        }

        v31 = v28 + 16 * v30;
        v33 = *(v31 + 32);
        v32 = *(v31 + 40);

        v59[0] = v33;
        v59[1] = v32;
        v35 = v60;
        MEMORY[0x28223BE20](v34);
        *(&v48 - 2) = v59;
        v36 = sub_22F2D0160(sub_22F21F008, (&v48 - 4), v35);

        v60 = v36;
        if (v36[2])
        {
          v37 = sub_22F216AB8(v33, v32, &v60, v55, v56);
          v39 = v38;

          if (v39)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_22F13F03C(0, v22[2] + 1, 1, v22);
            }

            v46 = v22[2];
            v45 = v22[3];
            v48 = v46 + 1;
            if (v46 >= v45 >> 1)
            {
              v22 = sub_22F13F03C((v45 > 1), v46 + 1, 1, v22);
            }

            v22[2] = v48;
            v47 = &v22[4 * v46];
            v47[4] = v33;
            v47[5] = v32;
            v47[6] = v37;
            v47[7] = v39;
          }

          v23 = *v57;
          if (!*v57)
          {
            break;
          }
        }

        else
        {

          MEMORY[0x28223BE20](v40);
          *(&v48 - 2) = v59;
          v41 = sub_22F2D0160(sub_22F21F038, (&v48 - 4), v24);

          v42 = v51;
          sub_22F2165F0(v41, v51);
          v43 = v54;
          v44 = v52;
          (*v50)(v54, v52);
          (*v49)(v43, v42, v44);

          v23 = v41[2];
          v57 = v41 + 2;
          v24 = v41;
          if (!v23)
          {
            break;
          }
        }
      }
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    (*(v53 + 8))(v54, v52);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v22;
}

unint64_t sub_22F2165F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F73FE50();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  while (v10 != v9)
  {
    if (v9 >= v10)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_19;
    }

    v13 = *(a1 + 32 + 8 * v9++);
    if (*(v13 + 16))
    {
      v21 = a2;

      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v11;
      if ((result & 1) == 0)
      {
        result = sub_22F146954(0, *(v11 + 16) + 1, 1);
        v11 = v23;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_22F146954((v14 > 1), v15 + 1, 1);
        v11 = v23;
      }

      *(v11 + 16) = v15 + 1;
      *(v11 + 8 * v15 + 32) = v13;
      v9 = v12;
      a2 = v21;
    }
  }

  v16 = *(v11 + 16);
  v17 = 0.0;
  sub_22F73FE30();
  if (!v16)
  {

    return (*(v22 + 32))(a2, v8, v4);
  }

  v18 = *(v11 + 16);
  if (!v18)
  {
LABEL_16:

    sub_22F73FDC0();
    return (*(v22 + 8))(v8, v4);
  }

  result = 0;
  while (result < *(v11 + 16))
  {
    v19 = result + 1;
    v17 = v17 + *(*(v11 + 32 + 8 * result) + 16);
    sub_22F73FE80();
    result = v19;
    if (v18 == v19)
    {
      goto LABEL_16;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22F216850(uint64_t a1, uint64_t a2, uint64_t a3, float (*a4)(void *, uint64_t *))
{
  v32[0] = a1;
  v32[1] = a2;
  if (a4)
  {
    v6 = *(v4 + 32);
    if (v6 >= 2)
    {
      v8 = *(a3 + 16);
      if (v6 >= v8)
      {
        v11 = a3 + 32;
        sub_22F21F088(a4);

        v13 = 0;
        v15 = v8 > 0;
        if (v8)
        {
          goto LABEL_5;
        }
      }

      else
      {
        swift_beginAccess();
        sub_22F21F088(a4);

        sub_22F35A224();
        swift_endAccess();
        result = sub_22F39A078(v6, a3);
        v11 = v10;
        v13 = v12;
        v8 = v14 >> 1;
        v15 = v12 < (v14 >> 1);
        if (v12 != v14 >> 1)
        {
LABEL_5:
          if (!v15)
          {
            goto LABEL_22;
          }

          v16 = (v11 + 16 * v13);
          v17 = *v16;
          v18 = v16[1];
          swift_unknownObjectRetain();
          v30 = v17;
          v31 = v18;

          v19 = a4(v32, &v30);

          if (v13 + 1 != v8)
          {
            v24 = ~v13 + v8;
            v25 = v16 + 3;
            do
            {
              v27 = *(v25 - 1);
              v26 = *v25;
              v30 = v27;
              v31 = v26;

              v28 = a4(v32, &v30);
              if (v19 < v28)
              {
              }

              else
              {
                v29 = v28;

                v19 = v29;
                v17 = v27;
              }

              v25 += 2;
              --v24;
            }

            while (v24);
          }

          sub_22F107E14(a4);
          swift_unknownObjectRelease_n();
          return v17;
        }
      }

      sub_22F107E14(a4);
      swift_unknownObjectRelease();
      return 0;
    }
  }

  v20 = *(a3 + 16);
  result = swift_beginAccess();
  if (v20)
  {
    v21 = sub_22F20F35C(v20);
    result = swift_endAccess();
    if (v21 < v20)
    {
      v22 = a3 + 16 * v21;
      v17 = *(v22 + 32);
      v23 = *(v22 + 40);

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_22F216AB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52 = sub_22F73FE50();
  v12 = *(*(v52 - 8) + 64);
  result = MEMORY[0x28223BE20](v52);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[0] = a1;
  v65[1] = a2;
  v16 = *(v6 + 40);
  if (v16 < 0)
  {
    goto LABEL_49;
  }

  if (!v16)
  {
    v43 = 0;
    v59 = 0;
    return v43;
  }

  v17 = 0;
  v18 = 0;
  v53 = 0;
  v59 = 0;
  v58 = *(v6 + 24);
  v50 = (v14 + 8);
  if (a4)
  {
    v19 = v16 == 1;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  v57 = v20;
  v21 = 0.0;
  v54 = v16;
  v55 = a3;
  v56 = a5;
  while (1)
  {
    v63 = v17;
    v25 = *a3;
    v62 = v18;
    if (v58)
    {
      break;
    }

    v29 = a4;
    v30 = v25;
    v31 = *(v25 + 16);
    result = swift_beginAccess();
    if (!v31)
    {
      goto LABEL_46;
    }

    sub_22F740840();
    sub_22F21F158(&qword_27DAB26C0, MEMORY[0x277D3C700]);
    v32 = sub_22F740D30();
    v28 = (v32 * v31) >> 64;
    if (v31 > v32 * v31)
    {
      v33 = -v31 % v31;
      if (v33 > v32 * v31)
      {
        do
        {
          v34 = sub_22F740D30();
        }

        while (v33 > v34 * v31);
        v28 = (v34 * v31) >> 64;
      }
    }

    result = swift_endAccess();
    v25 = v30;
    a4 = v29;
LABEL_21:
    if (v28 >= *(v25 + 16))
    {
      goto LABEL_43;
    }

    v35 = a4;
    v60 = v25;
    v36 = *(v25 + 8 * v28 + 32);
    v37 = *(v36 + 16);
    result = swift_beginAccess();
    if (!v37)
    {
      goto LABEL_44;
    }

    v61 = v28;
    sub_22F740840();
    sub_22F21F158(&qword_27DAB26C0, MEMORY[0x277D3C700]);

    v38 = sub_22F740D30();
    v39 = (v38 * v37) >> 64;
    if (v37 > v38 * v37)
    {
      v40 = -v37 % v37;
      if (v40 > v38 * v37)
      {
        do
        {
          v41 = sub_22F740D30();
        }

        while (v40 > v41 * v37);
        v39 = (v41 * v37) >> 64;
      }
    }

    result = swift_endAccess();
    if (v39 >= *(v36 + 16))
    {
      goto LABEL_45;
    }

    v42 = v36 + 16 * v39;
    v43 = *(v42 + 32);
    v44 = *(v42 + 40);

    v64[0] = v43;
    v64[1] = v44;
    if (v57)
    {

      v59 = v44;
      return v43;
    }

    a4 = v35;
    v45 = v35(v65, v64);
    if ((v63 & (v45 < v21)) == 1)
    {
      v46 = v60;
      result = swift_isUniquelyReferenced_nonNull_native();
      a3 = v55;
      if ((result & 1) == 0)
      {
        result = sub_22F2F2C94(v46);
        v46 = result;
      }

      if (v61 >= v46[2])
      {
        goto LABEL_47;
      }

      v47 = &v46[v61];
      sub_22F215F34(v39);
      v48 = v61;

      *a3 = v46;
      if (v48 >= v46[2])
      {
        goto LABEL_48;
      }

      if (*(v47[4] + 16))
      {

        sub_22F107E14(a4);
      }

      else
      {
        sub_22F215FC0(v48);
        sub_22F107E14(a4);
      }

      v23 = v54;
      v24 = v62;
      if (!*(*a3 + 16))
      {
        return v53;
      }

      v43 = v53;
    }

    else
    {
      v22 = v45;

      sub_22F107E14(v35);
      v21 = v22;
      v59 = v44;
      v53 = v43;
      v23 = v54;
      a3 = v55;
      v24 = v62;
    }

    v18 = v24 + 1;
    v17 = 1;
    if (v18 == v23)
    {
      return v43;
    }
  }

  v26 = v51;
  sub_22F2165F0(v25, v51);
  swift_beginAccess();
  v27 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
  swift_endAccess();
  v28 = sub_22F20F4CC(v27);
  result = (*v50)(v26, v52);
  if ((v28 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t TimeIndex.CreationOptions.subdomains.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t TimeIndex.CreationOptions.init(subdomains:wedgeOfYearSize:positivesOversamplingFactor:negativesOversamplingFactor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

PhotosGraph::TimeIndex::Subdomain_optional __swiftcall TimeIndex.Subdomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F741E30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TimeIndex.Subdomain.rawValue.getter()
{
  v1 = *v0;
  v2 = 1918985593;
  v3 = 0x6557664F74726170;
  v4 = 0x616559664F796164;
  if (v1 != 4)
  {
    v4 = 0x6144664F74726170;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F73616573;
  if (v1 != 1)
  {
    v5 = 0x59664F6567646577;
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

uint64_t sub_22F2171DC()
{
  *v0;
  *v0;
  *v0;
  sub_22F740D60();
}

void sub_22F2172E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1918985593;
  v5 = 0xEA00000000006B65;
  v6 = 0x6557664F74726170;
  v7 = 0x616559664F796164;
  v8 = 0xE900000000000072;
  if (v2 != 4)
  {
    v7 = 0x6144664F74726170;
    v8 = 0xE900000000000079;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6E6F73616573;
  if (v2 != 1)
  {
    v10 = 0x59664F6567646577;
    v9 = 0xEB00000000726165;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_22F2173B8()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[9];

  v4 = v0[12];

  return swift_deallocClassInstance();
}

uint64_t sub_22F217408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F7727B0;
  v1 = *MEMORY[0x277D27600];
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277D275F0];
  *(v0 + 48) = sub_22F740E20();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277D275F8];
  *(v0 + 64) = sub_22F740E20();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277D275E8];
  result = sub_22F740E20();
  *(v0 + 80) = result;
  *(v0 + 88) = v9;
  off_27DAB26F8 = v0;
  return result;
}

uint64_t sub_22F2174AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F770DE0;
  v1 = *MEMORY[0x277D275D0];
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277D275E0];
  *(v0 + 48) = sub_22F740E20();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277D275C0];
  *(v0 + 64) = sub_22F740E20();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277D275C8];
  *(v0 + 80) = sub_22F740E20();
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277D275D8];
  result = sub_22F740E20();
  *(v0 + 96) = result;
  *(v0 + 104) = v11;
  off_27DAB2700 = v0;
  return result;
}

uint64_t sub_22F217564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F770DF0;
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v1;
  result = sub_22F740E20();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  off_27DAB2708 = v0;
  return result;
}

uint64_t static TimeIndex.create(using:with:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v79 = a2[1];
  v4 = a2[2];
  v84 = a2[3];
  if (qword_27DAAFDA8 != -1)
  {
    swift_once();
  }

  v5 = qword_27DAD0E90;
  *&v6 = CACurrentMediaTime();
  sub_22F1B560C("CreateTimeIndex", 15, 2u, v6, 0, v5, v102);
  v7 = *(v3 + 16);
  v83 = v3;
  if (v7)
  {
    v8 = sub_22F10B4C8(v7, 0);
    v9 = sub_22F11B9DC(&aBlock, v8 + 32, v7, v3);

    sub_22F0FF590();
    if (v9 == v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_7:
  aBlock = v8;
  sub_22F21DF28(&aBlock, &unk_2843DAF18);
  if (!v2)
  {
    v10 = aBlock;
    v11 = *(aBlock + 2);
    if (!v11)
    {

      sub_22F21DFCC();
      swift_allocError();
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *v18 = 0;
      *(v18 + 24) = 3;
      swift_willThrow();
      sub_22F1B2BBC(1);

      return v4;
    }

    v78 = v4;
    v103 = MEMORY[0x277D84F98];
    v12 = aBlock + 32;
    v13 = aBlock + 32;
    do
    {
      v15 = v11;
      v16 = v11-- != 0;
      if (!v16)
      {
        break;
      }

      v17 = *v13;
      if (v17 <= 2 && v17 != 1 && v17 != 2)
      {

        break;
      }

      v14 = sub_22F742040();

      ++v13;
    }

    while ((v14 & 1) == 0);
    v88 = v10;
    v19 = *(v10 + 2);
    v20 = v12;
    do
    {
      v22 = v19;
      v16 = v19-- != 0;
      if (!v16)
      {
        break;
      }

      v23 = *v20;
      if (v23 >= 4 && v23 != 5)
      {

        break;
      }

      v21 = sub_22F742040();

      ++v20;
    }

    while ((v21 & 1) == 0);
    v24 = *(v88 + 16);
    v25 = v12;
    do
    {
      v27 = v24;
      v16 = v24-- != 0;
      if (!v16)
      {
        break;
      }

      v28 = *v25;
      if (v28 == 2)
      {

        break;
      }

      v26 = sub_22F742040();

      ++v25;
    }

    while ((v26 & 1) == 0);
    sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
    v87 = [swift_getObjCClassFromMetadata() nodesInGraph_];
    if (v15 || v22 || v27)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v22 != 0;
      *(v32 + 17) = v27 != 0;
      *(v32 + 18) = v15 != 0;
      *(v32 + 24) = v83;
      *(v32 + 32) = v79;
      *(v32 + 40) = v78;
      *(v32 + 48) = v84;
      *(v32 + 56) = &v103;
      *(v32 + 64) = v80;
      v33 = swift_allocObject();
      v31 = sub_22F21EC18;
      *(v33 + 16) = sub_22F21EC18;
      *(v33 + 24) = v32;
      v100 = sub_22F1F68E8;
      v101 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v97 = 1107296256;
      v98 = sub_22F107E24;
      v99 = &block_descriptor_14_0;
      v34 = _Block_copy(&aBlock);

      [v87 enumerateUsingBlock_];
      _Block_release(v34);
      LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

      if ((v34 & 1) == 0)
      {
        v83 = 0;
        goto LABEL_40;
      }

      __break(1u);
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = &v103;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_22F21E020;
      *(v29 + 24) = v27;
      v100 = sub_22F21E028;
      v101 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v97 = 1107296256;
      v98 = sub_22F2136B4;
      v99 = &block_descriptor_9;
      v30 = _Block_copy(&aBlock);

      [v87 enumerateUUIDsUsingBlock_];
      _Block_release(v30);
      LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

      if ((v30 & 1) == 0)
      {
        v83 = sub_22F21E020;
        v31 = 0;
LABEL_40:
        v35 = *(v88 + 16);
        v36 = v12;
        while (v35)
        {
          v38 = *v36;
          if (v38 <= 2 && *v36 && v38 != 2)
          {

LABEL_49:
            sub_22F21E068(v87, &v103);
            break;
          }

          v37 = sub_22F742040();

          ++v36;
          --v35;
          if (v37)
          {
            goto LABEL_49;
          }
        }

        v81 = v31;
        v39 = *(v88 + 16);
        v40 = v12;
        while (v39)
        {
          v42 = *v40;
          if (v42 > 2 && v42 != 4 && v42 != 5)
          {

LABEL_59:
            sub_22F21E448(a1, &v103);
            break;
          }

          v41 = sub_22F742040();

          ++v40;
          --v39;
          if (v41)
          {
            goto LABEL_59;
          }
        }

        v43 = *(v88 + 16);
        while (v43)
        {
          v45 = *v12;
          if (v45 > 4)
          {

LABEL_65:
            sub_22F21E7A4(v87, &v103);
            break;
          }

          v44 = sub_22F742040();

          ++v12;
          --v43;
          if (v44)
          {
            goto LABEL_65;
          }
        }

        v27 = v81;
        v95 = MEMORY[0x277D84F98];
        aBlock = MEMORY[0x277D84F98];
        v93 = MEMORY[0x277D84F98];
        v94 = MEMORY[0x277D84F98];
        v91 = MEMORY[0x277D84F98];
        v92 = MEMORY[0x277D84F98];
        if (qword_27DAAFDC8 == -1)
        {
LABEL_67:
          v46 = off_27DAB26F8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2718, &unk_22F7889A0);
          v47 = swift_allocObject();
          v48 = v46[2];
          swift_bridgeObjectRetain_n();
          v49 = sub_22F1515F8(v46);

          v50 = *(v49 + 16);

          if (v48 == v50)
          {
            *(v47 + 16) = v46;
            if (qword_27DAAFDD0 != -1)
            {
              swift_once();
            }

            v51 = off_27DAB2700;
            v52 = swift_allocObject();
            v53 = v51[2];
            swift_bridgeObjectRetain_n();
            v54 = sub_22F1515F8(v51);

            v55 = *(v54 + 16);

            if (v53 == v55)
            {
              v82 = v27;
              v77 = v52;
              *(v52 + 16) = v51;
              if (qword_27DAAFDD8 != -1)
              {
                swift_once();
              }

              v56 = off_27DAB2708;
              v57 = swift_allocObject();
              v58 = v56[2];
              swift_bridgeObjectRetain_n();
              v59 = sub_22F1515F8(v56);

              v4 = *(v59 + 16);

              if (v58 == v4)
              {
                *(v57 + 16) = v56;
                v89 = MEMORY[0x277D84F98];
                v90 = MEMORY[0x277D84F98];
                v60 = v46[2];
                v61 = v51[2];

                sub_22F21B13C(v62, v88, &aBlock, &v92, &v94, v47, &v95, v60, v77, &v93, v61, v57, &v91, &v89, &v90);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2730, &qword_22F77AA28);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_22F777170;
                *(inited + 32) = 0;
                v66 = sub_22F213F3C(aBlock);
                *(inited + 40) = sub_22F215680(v66, 1, v78, v84);
                *(inited + 48) = 1;
                v67 = sub_22F214198(v95);
                *(inited + 56) = sub_22F215680(v67, 1, v78, v84);
                *(inited + 64) = 2;
                v68 = sub_22F213F3C(v94);
                *(inited + 72) = sub_22F215680(v68, 1, v78, v84);
                *(inited + 80) = 3;
                v69 = sub_22F214198(v91);
                *(inited + 88) = sub_22F215680(v69, 1, v78, v84);
                *(inited + 96) = 4;
                v70 = sub_22F213F3C(v92);
                *(inited + 104) = sub_22F215680(v70, 1, v78, v84);
                *(inited + 112) = 5;
                v71 = sub_22F214198(v93);
                *(inited + 120) = sub_22F215680(v71, 1, v78, v84);
                v85 = sub_22F14F5D0(inited);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2738, &qword_22F77AA30);
                swift_arrayDestroy();

                v73 = sub_22F151AB8(v72);

                v74 = v90;

                v75 = sub_22F21E940(v88);

                v76 = v89;
                type metadata accessor for TimeIndex();
                v4 = swift_allocObject();
                v4[2] = v73;
                v4[3] = v74;
                v4[4] = v75;
                v4[5] = v76;
                v4[6] = v85;

                sub_22F1B2BBC(0);

                sub_22F107E14(v83);
                sub_22F107E14(v82);
                return v4;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
              sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20);
              swift_allocError();
              swift_willThrow();

              swift_deallocPartialClassInstance();

              sub_22F1B2BBC(1);

              sub_22F107E14(v83);
              v63 = v82;
LABEL_78:
              sub_22F107E14(v63);
              return v4;
            }

            v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
            sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20);
            swift_allocError();
            swift_willThrow();
          }

          else
          {

            v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
            sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20);
            swift_allocError();
            swift_willThrow();
          }

          swift_deallocPartialClassInstance();

          sub_22F1B2BBC(1);

          sub_22F107E14(v83);
          v63 = v27;
          goto LABEL_78;
        }

LABEL_83:
        swift_once();
        goto LABEL_67;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  __break(1u);
  return result;
}

unint64_t sub_22F218970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  type metadata accessor for TimeIndex.MomentData();
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v9 + 40) = 1;
  *(v9 + 48) = v10;
  *(v9 + 56) = 0;
  *(v9 + 64) = 1;
  *(v9 + 72) = v10;
  *(v9 + 80) = 0;
  *(v9 + 88) = 1;
  *(v9 + 96) = v10;
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v11 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a5;
  *a5 = 0x8000000000000000;
  result = sub_22F13142C(v9, a1, isUniquelyReferenced_nonNull_native);
  *a5 = v14;
  return result;
}

void sub_22F218A38(void *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v122 = a7;
  v126 = a5;
  v136 = a3;
  LODWORD(v137) = a4;
  v148[1] = *MEMORY[0x277D85DE8];
  v11 = sub_22F73F270();
  v134 = *(v11 - 8);
  v135 = v11;
  v12 = *(v134 + 64);
  MEMORY[0x28223BE20](v11);
  v140 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73F990();
  v138 = *(v14 - 8);
  v139 = v14;
  v15 = *(v138 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v123 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v121 - v18;
  v19 = sub_22F73F7D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22F73F9B0();
  v132 = *(v24 - 8);
  v133 = v24;
  v25 = *(v132 + 64);
  MEMORY[0x28223BE20](v24);
  v145 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v121 - v29;
  v144 = sub_22F73FA10();
  v146 = *(v144 - 8);
  v31 = *(v146 + 64);
  v32 = MEMORY[0x28223BE20](v144);
  v34 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v141 = &v121 - v35;
  v147 = sub_22F73F690();
  v143 = *(v147 - 8);
  v36 = *(v143 + 64);
  v37 = MEMORY[0x28223BE20](v147);
  v125 = &v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v124 = &v121 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v121 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v121 - v44;
  v142 = a1;
  v46 = [a1 localIdentifier];
  if (!v46)
  {
    sub_22F740E20();
    v46 = sub_22F740DF0();
  }

  sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
  v47 = [swift_getObjCClassFromMetadata() uuidFromLocalIdentifier_];

  if (v47)
  {
    v48 = sub_22F740E20();
    v50 = v49;

    type metadata accessor for TimeIndex.MomentData();
    v51 = swift_allocObject();
    *(v51 + 32) = 0;
    v52 = MEMORY[0x277D84F90];
    *(v51 + 40) = 1;
    *(v51 + 48) = v52;
    *(v51 + 56) = 0;
    *(v51 + 64) = 1;
    *(v51 + 72) = v52;
    *(v51 + 80) = 0;
    *(v51 + 88) = 1;
    *(v51 + 96) = v52;
    *(v51 + 104) = 0;
    *(v51 + 112) = 1;
    v121 = v48;
    *(v51 + 16) = v48;
    *(v51 + 24) = v50;
    v131 = v50;

    v53 = v142;
    v54 = [v142 universalStartDate];
    sub_22F73F640();

    sub_22F73F620();
    *(v51 + 104) = v55;
    *(v51 + 112) = 0;
    v56 = [v53 localStartDate];
    sub_22F73F640();

    sub_22F73F590();
    v58 = v57;
    v59 = v57;
    v60 = *(v143 + 8);
    v130 = v143 + 8;
    v129 = v60;
    v60(v43, v147);
    if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v58 > -9.22337204e18)
    {
      if (v58 < 9.22337204e18)
      {
        sub_22F73F9F0();
        v61 = v146;
        v62 = v144;
        if ((*(v146 + 48))(v30, 1, v144) == 1)
        {
          v129(v45, v147);

          sub_22F120ADC(v30, &qword_27DAB24E0, &unk_22F77C6B0);
          goto LABEL_29;
        }

        v127 = v45;
        v63 = v141;
        (*(v61 + 32))(v141, v30, v62);
        (*(v20 + 104))(v23, *MEMORY[0x277CC9830], v19);
        sub_22F73F7E0();
        (*(v20 + 8))(v23, v19);
        (*(v61 + 16))(v34, v63, v62);
        sub_22F73F980();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
        v64 = v138;
        v65 = (*(v138 + 80) + 32) & ~*(v138 + 80);
        v66 = v65 + *(v138 + 72);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_22F771340;
        v68 = *MEMORY[0x277CC9988];
        v69 = *(v64 + 104);
        v70 = v139;
        v69(v67 + v65, v68, v139);
        v71 = v136 | v137;
        if ((v136 | v137))
        {
          v72 = v128;
          v69(v128, *MEMORY[0x277CC9998], v70);
          v67 = sub_22F13F014(1uLL, 2, 1, v67);
          *(v67 + 16) = 2;
          (*(v64 + 32))(v67 + v66, v72, v70);
        }

        v45 = v140;
        sub_22F151AEC(v67);

        sub_22F73F860();

        v73 = sub_22F73F1F0();
        v53 = v131;
        if (v74)
        {
          if (qword_27DAAFD58 == -1)
          {
LABEL_13:
            v75 = sub_22F740B90();
            __swift_project_value_buffer(v75, qword_27DAD0E40);
            v76 = v125;
            v77 = v147;
            (*(v143 + 16))(v125, v127, v147);

            v78 = sub_22F740B70();
            v79 = sub_22F7415E0();

            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v148[0] = v81;
              *v80 = 136315394;
              v82 = sub_22F145F20(v121, v53, v148);

              *(v80 + 4) = v82;
              *(v80 + 12) = 2080;
              sub_22F21F158(&qword_2810AC6F8, MEMORY[0x277CC9578]);
              v83 = sub_22F742010();
              v85 = v84;
              v86 = v76;
              v87 = v129;
              v129(v86, v77);
              v88 = sub_22F145F20(v83, v85, v148);

              *(v80 + 14) = v88;
              _os_log_impl(&dword_22F0FC000, v78, v79, "Failed to extract year date component for moment (%s) with universalDate: %s", v80, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2319033A0](v81, -1, -1);
              MEMORY[0x2319033A0](v80, -1, -1);

              (*(v134 + 8))(v140, v135);
              (*(v132 + 8))(v145, v133);
              (*(v146 + 8))(v141, v144);
              v87(v127, v77);
              goto LABEL_29;
            }

            v113 = v76;
LABEL_28:
            v118 = v129;
            v129(v113, v77);
            (*(v134 + 8))(v45, v135);
            (*(v132 + 8))(v145, v133);
            (*(v146 + 8))(v141, v144);
            v118(v127, v77);
            goto LABEL_29;
          }

LABEL_46:
          swift_once();
          goto LABEL_13;
        }

        v89 = v146;
        if (v126)
        {
          *(v51 + 32) = v73;
          *(v51 + 40) = 0;
        }

        if ((v71 & 1) == 0)
        {

          v114 = v147;
LABEL_26:
          v115 = [v142 identifier];
          v116 = *a10;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v148[0] = *a10;
          *a10 = 0x8000000000000000;
          sub_22F13142C(v51, v115, isUniquelyReferenced_nonNull_native);
          *a10 = v148[0];
          (*(v134 + 8))(v45, v135);
          (*(v132 + 8))(v145, v133);
          (*(v89 + 8))(v141, v144);
          v129(v127, v114);
          goto LABEL_29;
        }

        v137 = v73;
        v90 = sub_22F73F210();
        if (v91)
        {
          goto LABEL_20;
        }

        v92 = v90;
        v93 = v128;
        v94 = v139;
        v69(v128, *MEMORY[0x277CC9968], v139);
        v95 = v123;
        v69(v123, v68, v94);
        v96 = sub_22F73F7F0();
        v98 = v97;
        v99 = *(v138 + 8);
        v99(v95, v94);
        v100 = v94;
        v53 = v131;
        v99(v93, v100);
        if (v98)
        {
LABEL_20:
          if (qword_27DAAFD58 != -1)
          {
            swift_once();
          }

          v101 = sub_22F740B90();
          __swift_project_value_buffer(v101, qword_27DAD0E40);
          v102 = v124;
          v77 = v147;
          (*(v143 + 16))(v124, v127, v147);

          v103 = sub_22F740B70();
          v104 = sub_22F7415E0();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v148[0] = v106;
            *v105 = 136315394;
            v107 = sub_22F145F20(v121, v53, v148);

            *(v105 + 4) = v107;
            *(v105 + 12) = 2080;
            sub_22F21F158(&qword_2810AC6F8, MEMORY[0x277CC9578]);
            v108 = sub_22F742010();
            v110 = v109;
            v111 = v129;
            v129(v102, v77);
            v112 = sub_22F145F20(v108, v110, v148);

            *(v105 + 14) = v112;
            _os_log_impl(&dword_22F0FC000, v103, v104, "Failed to extract month and day of year components for moment (%s) with universalDate: %s", v105, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v106, -1, -1);
            MEMORY[0x2319033A0](v105, -1, -1);

            (*(v134 + 8))(v140, v135);
            (*(v132 + 8))(v145, v133);
            (*(v146 + 8))(v141, v144);
            v111(v127, v77);
            goto LABEL_29;
          }

          v113 = v102;
          goto LABEL_28;
        }

        if (v92 >= 3)
        {
          v89 = v146;
          if (!(v137 % 400) || (v137 & 3) == 0 && v137 % 100 || (v120 = __OFADD__(v96, 1), ++v96, !v120))
          {
LABEL_38:
            *(v51 + 80) = v96;
            *(v51 + 88) = 0;
            if (__OFSUB__(v96, 1))
            {
              __break(1u);
            }

            else
            {
              v114 = v147;
              if (v122)
              {
                if (v96 != 0x8000000000000001 || v122 != -1)
                {
                  *(v51 + 56) = (v96 - 1) / v122;
                  *(v51 + 64) = 0;
                  goto LABEL_26;
                }

LABEL_49:
                __break(1u);
              }
            }

            __break(1u);
            goto LABEL_49;
          }

          __break(1u);
        }

        v89 = v146;
        goto LABEL_38;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_29:
  v119 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22F219AC0(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];

  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a2;
  v27 = *a2;
  *a2 = 0x8000000000000000;
  v13 = sub_22F1229E8(v8, v7);
  v14 = *(v11 + 2);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_15:
    v11 = sub_22F13E1A8(0, *(v11 + 2) + 1, 1, v11);
    *(v7 + 8 * v13) = v11;
    goto LABEL_11;
  }

  v17 = v12;
  if (*(v11 + 3) >= v16)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F135844();
      v11 = v27;
    }
  }

  else
  {
    sub_22F127C90(v16, isUniquelyReferenced_nonNull_native);
    v11 = v27;
    v18 = sub_22F1229E8(v8, v7);
    if ((v17 & 1) != (v19 & 1))
    {
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    v13 = v18;
  }

  v20 = *a2;
  *a2 = v11;

  v21 = *a2;
  if (v17)
  {
  }

  else
  {
    sub_22F1534CC(v13, v8, v7, MEMORY[0x277D84F90], *a2);
  }

  v7 = *(v21 + 7);
  v11 = *(v7 + 8 * v13);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8 * v13) = v11;
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v24 = *(v11 + 2);
  v23 = *(v11 + 3);
  if (v24 >= v23 >> 1)
  {
    v11 = sub_22F13E1A8((v23 > 1), v24 + 1, 1, v11);
    *(v7 + 8 * v13) = v11;
  }

  *(v11 + 2) = v24 + 1;
  v25 = &v11[16 * v24];
  *(v25 + 4) = a3;
  *(v25 + 5) = a4;
}

uint64_t sub_22F219D7C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t))
{
  v10 = v6;
  v12 = *a2;
  if (sub_22F15EAD4(*a2, *(v6 + 16)) & 1) != 0 && (v13 = *(v6 + 48), *(v13 + 16)) && (v14 = sub_22F122EF8(v12), (v15))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = v10;

    swift_retain_n();
    v18 = a6(a1, 0, a5, v17);

    return v18;
  }

  else
  {
    sub_22F21DFCC();
    swift_allocError();
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *v20 = v12;
    *(v20 + 24) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_22F219EAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 40);
  if (*(v5 + 16))
  {
    result = sub_22F1229E8(result, a2);
    if (v8)
    {
      if (*(v5 + 16))
      {
        v9 = *(*(v5 + 56) + 8 * result);
        result = sub_22F1229E8(a3, a4);
        if (v10)
        {
          v11 = *(*(v5 + 56) + 8 * result);
        }
      }
    }
  }

  return result;
}

uint64_t sub_22F219F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B20, &unk_22F788B60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = *(v3 + 24);
  if (*(v12 + 16) && (v13 = sub_22F1229E8(a1, a2), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = sub_22F73FE50();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v11, v16 + *(v18 + 72) * v15, v17);
    (*(v18 + 56))(v11, 0, 1, v17);
    return (*(v18 + 32))(a3, v11, v17);
  }

  else
  {
    v20 = sub_22F73FE50();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v11, 1, 1, v20);
    v22 = *(*(v4 + 32) + 16);
    sub_22F73FE00();
    result = (*(v21 + 48))(v11, 1, v20);
    if (result != 1)
    {
      return sub_22F120ADC(v11, &qword_27DAB0B20, &unk_22F788B60);
    }
  }

  return result;
}

uint64_t sub_22F21A174(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (*(v5 + 16))
  {
    result = sub_22F1229E8(result, a2);
    if (v8)
    {
      if (*(v5 + 16))
      {
        v9 = *(*(v5 + 56) + 8 * result);
        result = sub_22F1229E8(a3, a4);
        if (v10)
        {
          v11 = *(*(v5 + 56) + 8 * result);
        }
      }
    }
  }

  return result;
}

uint64_t sub_22F21A20C()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  v1 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v21 - v2;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_22F741B00();

  v25 = 0xD000000000000014;
  v26 = 0x800000022F792360;
  v4 = MEMORY[0x231900D40](*(v0 + 32), MEMORY[0x277D837D0]);
  MEMORY[0x231900B10](v4);

  MEMORY[0x231900B10](2570, 0xE200000000000000);
  v5 = *(v0 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; result = sub_22F120ADC(v3, &qword_27DAB1060, &unk_22F771490))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v5 + 56);
    v16 = (*(v5 + 48) + 16 * v14);
    v18 = *v16;
    v17 = v16[1];
    v19 = sub_22F73FE50();
    (*(*(v19 - 8) + 16))(&v3[*(v22 + 48)], v15 + *(*(v19 - 8) + 72) * v14, v19);
    *v3 = v18;
    *(v3 + 1) = v17;
    v23 = v18;
    v24 = v17;
    swift_bridgeObjectRetain_n();
    MEMORY[0x231900B10](8250, 0xE200000000000000);
    v20 = sub_22F73FDB0();
    MEMORY[0x231900B10](v20);

    MEMORY[0x231900B10](10, 0xE100000000000000);
    MEMORY[0x231900B10](v23, v24);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v25;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F21A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(PGGraphSeasonNodeCollection);
  v14 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v15 = [v13 initWithGraph:a6 elementIdentifiers:v14];

  v16 = [v15 elementIdentifiers];
  v17 = [a5 targetsForSources_];

  v18 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a6 elementIdentifiers:v17];
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a2;
  v19[4] = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F21F14C;
  *(v20 + 24) = v19;
  v23[4] = sub_22F15A9A4;
  v23[5] = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_22F107F34;
  v23[3] = &block_descriptor_121;
  v21 = _Block_copy(v23);

  [v18 enumerateIdentifiersAsCollectionsWithBlock_];

  _Block_release(v21);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F21A6B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  if (*(*a4 + 16))
  {
    result = sub_22F122B68(result);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * result);
      swift_beginAccess();
      v11 = *(v10 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 48) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_22F13E1A8(0, *(v11 + 2) + 1, 1, v11);
        *(v10 + 48) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_22F13E1A8((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[16 * v14];
      *(v15 + 4) = a5;
      *(v15 + 5) = a6;
      *(v10 + 48) = v11;
      swift_endAccess();
    }
  }

  return result;
}

unint64_t sub_22F21A7BC(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*(*a3 + 16))
  {
    result = sub_22F122B68(result);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * result);
      v8 = *a4;
      v9 = sub_22F740E20();
      v11 = v10;
      swift_beginAccess();
      v12 = *(v7 + 72);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 72) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_22F13E1A8(0, *(v12 + 2) + 1, 1, v12);
        *(v7 + 72) = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        v12 = sub_22F13E1A8((v14 > 1), v15 + 1, 1, v12);
      }

      *(v12 + 2) = v15 + 1;
      v16 = &v12[16 * v15];
      *(v16 + 4) = v9;
      *(v16 + 5) = v11;
      *(v7 + 72) = v12;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_22F21A8C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_msgSend(a1 graph)];
  swift_unknownObjectRelease();
  v9 = [v8 concreteGraph];

  if (v9)
  {
    v10 = [a1 elementIdentifiers];
    v11 = [v9 adjacencyWithSources:v10 relation:a2];

    swift_unknownObjectRetain();
    v12 = [v11 transposed];
    swift_unknownObjectRelease();

    v13 = objc_allocWithZone(PGGraphPartOfDayNodeCollection);
    v14 = [v12 sources];
    v15 = [v13 initWithGraph:v9 elementIdentifiers:v14];

    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v9;
    v16[4] = a3;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_22F21F098;
    *(v17 + 24) = v16;
    aBlock[4] = sub_22F21F1C0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F2136B4;
    aBlock[3] = &block_descriptor_73;
    v18 = _Block_copy(aBlock);
    v19 = v12;
    swift_unknownObjectRetain();

    [v15 enumerateNamesUsingBlock_];

    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if ((v15 & 1) == 0)
    {
      *a4 = v19;
      a4[1] = v9;
      return result;
    }

    __break(1u);
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F21ABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(PGGraphPartOfDayNodeCollection);
  v14 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v15 = [v13 initWithGraph:a6 elementIdentifiers:v14];

  v16 = [v15 elementIdentifiers];
  v17 = [a5 targetsForSources_];

  v18 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a6 elementIdentifiers:v17];
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a2;
  v19[4] = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F21F0A4;
  *(v20 + 24) = v19;
  v23[4] = sub_22F15A3B8;
  v23[5] = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_22F107F34;
  v23[3] = &block_descriptor_82;
  v21 = _Block_copy(v23);

  [v18 enumerateIdentifiersAsCollectionsWithBlock_];

  _Block_release(v21);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F21ADF8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  if (*(*a4 + 16))
  {
    result = sub_22F122B68(result);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * result);
      swift_beginAccess();
      v11 = *(v10 + 96);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 96) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_22F13E1A8(0, *(v11 + 2) + 1, 1, v11);
        *(v10 + 96) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_22F13E1A8((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[16 * v14];
      *(v15 + 4) = a5;
      *(v15 + 5) = a6;
      *(v10 + 96) = v11;
      swift_endAccess();
    }
  }

  return result;
}

void *TimeIndex.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t TimeIndex.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_22F21AFB8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[2] = v10;

  result = sub_22F3A06C8(a3, v9, v6);
  if (!*(result + 16))
  {

    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_22F21B034(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return (sub_22F742040() ^ 1) & 1;
  }
}

uint64_t sub_22F21B094(uint64_t result, char **a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      sub_22F219AC0(v11, a2, a3, a4);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_22F21B13C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v173 = a7;
  v172 = a6;
  v180 = a5;
  v179 = a4;
  v178 = a3;
  v175 = a14;
  v177 = a13;
  v176 = a12;
  v171 = a10;
  v170 = a9;
  v18 = sub_22F73FE50();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v181 = v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v174 = v158 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v27 = v158 - v26;
  v28 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a1 + 64);
  v32 = (v29 + 63) >> 6;
  v168 = a2;
  v33 = (a2 + 32);
  v34 = v24;
  v159 = v33;
  v182 = (v25 + 8);
  v165 = a11;
  v166 = a8;
  v163 = (v25 + 16);
  v158[2] = v25 + 32;
  v162 = v25;
  v158[1] = v25 + 40;

  v35 = 0;
  v186 = v34;
  v184 = v27;
  v161 = a1 + 64;
  v160 = v32;
  v167 = a1;
  v164 = a15;
  if (v31)
  {
LABEL_8:
    while (1)
    {
      v169 = v31;
      v37 = *(*(a1 + 56) + ((v35 << 9) | (8 * __clz(__rbit64(v31)))));

      sub_22F73FE40();
      v38 = *(v37 + 24);
      v188 = *(v37 + 16);
      v39 = *(v168 + 16);
      v183 = v37;
      if (v39)
      {
        break;
      }

LABEL_64:
      if (*(v37 + 112))
      {
        sub_22F21DFCC();
        swift_allocError();
        *v156 = v188;
        v157 = 1;
        v188 = v38;
        v38 = 0;
LABEL_93:
        *(v156 + 8) = v188;
        *(v156 + 16) = v38;
        *(v156 + 24) = v157;
        swift_willThrow();
        (*v182)(v27, v186);
      }

      v120 = *(v37 + 104);
      sub_22F73FE20();

      v121 = v175;
      v122 = *v175;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = *v121;
      v189 = v124;
      v125 = sub_22F1229E8(v188, v38);
      v127 = v124[2];
      v128 = (v126 & 1) == 0;
      v103 = __OFADD__(v127, v128);
      v129 = v127 + v128;
      a1 = v167;
      if (v103)
      {
        goto LABEL_101;
      }

      v130 = v126;
      if (v124[3] >= v129)
      {
        v132 = v164;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v153 = v125;
          sub_22F1341D8();
          v125 = v153;
        }
      }

      else
      {
        sub_22F12572C(v129, isUniquelyReferenced_nonNull_native);
        v125 = sub_22F1229E8(v188, v38);
        v132 = v164;
        if ((v130 & 1) != (v131 & 1))
        {
          goto LABEL_106;
        }
      }

      v133 = v184;
      v134 = v189;
      if (v130)
      {
        *(v189[7] + 8 * v125) = v120;
      }

      else
      {
        v189[(v125 >> 6) + 8] |= 1 << v125;
        v135 = (v134[6] + 16 * v125);
        *v135 = v188;
        v135[1] = v38;
        *(v134[7] + 8 * v125) = v120;
        v136 = v134[2];
        v103 = __OFADD__(v136, 1);
        v137 = v136 + 1;
        if (v103)
        {
          goto LABEL_103;
        }

        v134[2] = v137;
      }

      *v175 = v134;
      (*v163)(v174, v133, v186);
      v138 = *v132;
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v189 = *v132;
      v140 = v189;
      v141 = sub_22F1229E8(v188, v38);
      v143 = v140[2];
      v144 = (v142 & 1) == 0;
      v103 = __OFADD__(v143, v144);
      v145 = v143 + v144;
      if (v103)
      {
        goto LABEL_102;
      }

      v146 = v142;
      if (v140[3] >= v145)
      {
        if ((v139 & 1) == 0)
        {
          v154 = v141;
          sub_22F135E28();
          v141 = v154;
        }
      }

      else
      {
        sub_22F128740(v145, v139);
        v141 = sub_22F1229E8(v188, v38);
        if ((v146 & 1) != (v147 & 1))
        {
          goto LABEL_106;
        }
      }

      v27 = v184;
      v148 = v189;
      if (v146)
      {
        v149 = v186;
        (*(v162 + 40))(v189[7] + *(v162 + 72) * v141, v174, v186);
      }

      else
      {
        v189[(v141 >> 6) + 8] |= 1 << v141;
        v150 = (v148[6] + 16 * v141);
        *v150 = v188;
        v150[1] = v38;
        (*(v162 + 32))(v148[7] + *(v162 + 72) * v141, v174, v186);
        v151 = v148[2];
        v103 = __OFADD__(v151, 1);
        v152 = v151 + 1;
        if (v103)
        {
          goto LABEL_104;
        }

        v148[2] = v152;
        v149 = v186;
      }

      v31 = (v169 - 1) & v169;
      *v132 = v148;
      (*v182)(v27, v149);

      v28 = v161;
      v32 = v160;
      v34 = v149;
      if (!v31)
      {
        goto LABEL_4;
      }
    }

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v40 = v159;
    v187 = v38;
    while (1)
    {
      v51 = *v40++;
      v50 = v51;
      if (v51 > 2)
      {
        if (v50 == 3)
        {
          v89 = *(v37 + 72);
          if (!*(v89 + 16))
          {
            sub_22F21DFCC();
            swift_allocError();
            v157 = 0;
            *v156 = 3;
            goto LABEL_93;
          }

          v90 = *(v37 + 72);

          v92 = v181;
          sub_22F26AF34(v91);
          sub_22F73FE10();
          v93 = v92;
          v34 = v186;
          v38 = v187;
          (*v182)(v93, v186);

          v47 = v89;
          v48 = &v194;
        }

        else
        {
          if (v50 == 4)
          {
            if (*(v37 + 88))
            {
              sub_22F21DFCC();
              swift_allocError();
              v157 = 0;
              *v156 = 4;
              goto LABEL_93;
            }

            v65 = *(v37 + 80);
            sub_22F73FE20();
            v66 = v179;
            v67 = *v179;
            v68 = swift_isUniquelyReferenced_nonNull_native();
            v189 = *v66;
            v69 = v189;
            *v66 = 0x8000000000000000;
            v58 = sub_22F13A8F4(v65);
            v71 = v69[2];
            v72 = (v70 & 1) == 0;
            v73 = v71 + v72;
            if (__OFADD__(v71, v72))
            {
              goto LABEL_97;
            }

            v74 = v70;
            if (v69[3] >= v73)
            {
              if ((v68 & 1) == 0)
              {
                sub_22F135E50();
                v69 = v189;
              }
            }

            else
            {
              sub_22F128768(v73, v68);
              v69 = v189;
              v75 = sub_22F13A8F4(v65);
              if ((v74 & 1) != (v76 & 1))
              {
                goto LABEL_105;
              }

              v58 = v75;
            }

            v108 = v179;
            v109 = *v179;
            *v179 = v69;

            v101 = *v108;
            if ((v74 & 1) == 0)
            {
              v101[(v58 >> 6) + 8] |= 1 << v58;
              *(v101[6] + 8 * v58) = v65;
              *(v101[7] + 8 * v58) = MEMORY[0x277D84F90];
              v110 = v101[2];
              v103 = __OFADD__(v110, 1);
              v104 = v110 + 1;
              if (v103)
              {
                goto LABEL_100;
              }

LABEL_54:
              v101[2] = v104;
            }

LABEL_55:
            v111 = v101[7];
            v112 = *(v111 + 8 * v58);
            v113 = swift_isUniquelyReferenced_nonNull_native();
            *(v111 + 8 * v58) = v112;
            if ((v113 & 1) == 0)
            {
              v112 = sub_22F13E1A8(0, *(v112 + 2) + 1, 1, v112);
              *(v111 + 8 * v58) = v112;
            }

            v115 = *(v112 + 2);
            v114 = *(v112 + 3);
            if (v115 >= v114 >> 1)
            {
              v112 = sub_22F13E1A8((v114 > 1), v115 + 1, 1, v112);
              *(v111 + 8 * v58) = v112;
            }

            v27 = v184;
            *(v112 + 2) = v115 + 1;
            v116 = &v112[16 * v115];
            v38 = v187;
            *(v116 + 4) = v188;
            *(v116 + 5) = v38;

            v34 = v186;
            v37 = v183;
            goto LABEL_13;
          }

          v41 = v34;
          v94 = *(v37 + 96);
          if (!*(v94 + 16))
          {
            v117 = v181;
            v118 = &v190;
            goto LABEL_62;
          }

          v95 = *(v37 + 96);

          v97 = v181;
          sub_22F26AF34(v96);
          sub_22F73FE10();
          v98 = v97;
          v38 = v187;
          (*v182)(v98, v34);

          v47 = v94;
          v48 = &v192;
        }
      }

      else
      {
        if (!v50)
        {
          if (*(v37 + 40))
          {
            sub_22F21DFCC();
            swift_allocError();
            v157 = 0;
            *v156 = 0;
            goto LABEL_93;
          }

          v77 = *(v37 + 32);
          sub_22F73FE20();
          v78 = v178;
          v79 = *v178;
          v80 = swift_isUniquelyReferenced_nonNull_native();
          v189 = *v78;
          v81 = v189;
          *v78 = 0x8000000000000000;
          v58 = sub_22F13A8F4(v77);
          v83 = v81[2];
          v84 = (v82 & 1) == 0;
          v85 = v83 + v84;
          if (__OFADD__(v83, v84))
          {
            goto LABEL_95;
          }

          v86 = v82;
          if (v81[3] >= v85)
          {
            if ((v80 & 1) == 0)
            {
              sub_22F135E50();
              v81 = v189;
            }
          }

          else
          {
            sub_22F128768(v85, v80);
            v81 = v189;
            v87 = sub_22F13A8F4(v77);
            if ((v86 & 1) != (v88 & 1))
            {
              goto LABEL_105;
            }

            v58 = v87;
          }

          v99 = v178;
          v100 = *v178;
          *v178 = v81;

          v101 = *v99;
          if ((v86 & 1) == 0)
          {
            v101[(v58 >> 6) + 8] |= 1 << v58;
            *(v101[6] + 8 * v58) = v77;
            *(v101[7] + 8 * v58) = MEMORY[0x277D84F90];
            v102 = v101[2];
            v103 = __OFADD__(v102, 1);
            v104 = v102 + 1;
            if (v103)
            {
              goto LABEL_99;
            }

            goto LABEL_54;
          }

          goto LABEL_55;
        }

        if (v50 != 1)
        {
          if (*(v37 + 64))
          {
            sub_22F21DFCC();
            swift_allocError();
            v157 = 0;
            *v156 = 2;
            goto LABEL_93;
          }

          v52 = *(v37 + 56);
          sub_22F73FE20();
          v53 = v180;
          v54 = *v180;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v189 = *v53;
          v56 = v189;
          *v53 = 0x8000000000000000;
          v58 = sub_22F13A8F4(v52);
          v59 = v56[2];
          v60 = (v57 & 1) == 0;
          v61 = v59 + v60;
          if (__OFADD__(v59, v60))
          {
            goto LABEL_96;
          }

          v62 = v57;
          if (v56[3] >= v61)
          {
            if ((v55 & 1) == 0)
            {
              sub_22F135E50();
              v56 = v189;
            }
          }

          else
          {
            sub_22F128768(v61, v55);
            v56 = v189;
            v63 = sub_22F13A8F4(v52);
            if ((v62 & 1) != (v64 & 1))
            {
              goto LABEL_105;
            }

            v58 = v63;
          }

          v105 = v180;
          v106 = *v180;
          *v180 = v56;

          v101 = *v105;
          if ((v62 & 1) == 0)
          {
            v101[(v58 >> 6) + 8] |= 1 << v58;
            *(v101[6] + 8 * v58) = v52;
            *(v101[7] + 8 * v58) = MEMORY[0x277D84F90];
            v107 = v101[2];
            v103 = __OFADD__(v107, 1);
            v104 = v107 + 1;
            if (v103)
            {
              goto LABEL_98;
            }

            goto LABEL_54;
          }

          goto LABEL_55;
        }

        v41 = v34;
        v42 = *(v37 + 48);
        if (!*(v42 + 16))
        {
          v117 = v181;
          v118 = &v191;
LABEL_62:
          v119 = *(v118 - 32);
          sub_22F73FE30();
          sub_22F73FE10();
          v34 = v41;
          (*v182)(v117, v41);
          goto LABEL_13;
        }

        v43 = *(v37 + 48);

        v45 = v181;
        sub_22F26AF34(v44);
        sub_22F73FE10();
        v46 = v45;
        v38 = v187;
        (*v182)(v46, v34);

        v47 = v42;
        v48 = &v193;
      }

      v49 = v185;
      sub_22F21B094(v47, *(v48 - 32), v188, v38);
      v185 = v49;

LABEL_13:
      if (!--v39)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_4:
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v32)
    {
    }

    v31 = *(v28 + 8 * v36);
    ++v35;
    if (v31)
    {
      v35 = v36;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  sub_22F7420C0();
  __break(1u);
LABEL_106:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

unint64_t sub_22F21BEBC(unint64_t __src, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *__dst, uint64_t a5)
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = &a2[-__src];
  v10 = a3 - a2;
  if (&a2[-__src] < (a3 - a2))
  {
    if (__dst != __src || __dst >= a2)
    {
      __src = memmove(__dst, __src, v9);
    }

    v11 = &v5[v9];
    if (v9 < 1)
    {
      v7 = v8;
      if (v8 != v5)
      {
        goto LABEL_234;
      }

      goto LABEL_233;
    }

    if (v7 < v6)
    {
      v85 = &v5[v9];
      v12 = a5 + 32;
      v79 = v6;
LABEL_8:
      v87 = v7;
      v13 = *(a5 + 16);
      if (!v13)
      {
        goto LABEL_244;
      }

      v81 = v8;
      v14 = 0;
      v15 = *v87;
      __srca = v5;
      v16 = *v5;
      while (1)
      {
        v17 = *(v12 + v14);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v20 = 0x6557664F74726170;
            v21 = 0xEA00000000006B65;
            if (v15 > 2)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v17 == 4)
            {
              v20 = 0x616559664F796164;
            }

            else
            {
              v20 = 0x6144664F74726170;
            }

            if (v17 == 4)
            {
              v21 = 0xE900000000000072;
            }

            else
            {
              v21 = 0xE900000000000079;
            }

            if (v15 > 2)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v18 = 0x59664F6567646577;
          if (v17 == 1)
          {
            v18 = 0x6E6F73616573;
          }

          v19 = 0xEB00000000726165;
          if (v17 == 1)
          {
            v19 = 0xE600000000000000;
          }

          if (*(v12 + v14))
          {
            v20 = v18;
          }

          else
          {
            v20 = 1918985593;
          }

          if (*(v12 + v14))
          {
            v21 = v19;
          }

          else
          {
            v21 = 0xE400000000000000;
          }

          if (v15 > 2)
          {
LABEL_35:
            v24 = 0xE900000000000079;
            v26 = 0x616559664F796164;
            if (v15 == 4)
            {
              v24 = 0xE900000000000072;
            }

            else
            {
              v26 = 0x6144664F74726170;
            }

            v22 = v15 == 3;
            if (v15 == 3)
            {
              v23 = 0x6557664F74726170;
            }

            else
            {
              v23 = v26;
            }

            v25 = 0xEA00000000006B65;
            goto LABEL_42;
          }
        }

        if (!v15)
        {
          v27 = 0xE400000000000000;
          if (v20 != 1918985593)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        v22 = v15 == 1;
        if (v15 == 1)
        {
          v23 = 0x6E6F73616573;
        }

        else
        {
          v23 = 0x59664F6567646577;
        }

        v24 = 0xEB00000000726165;
        v25 = 0xE600000000000000;
LABEL_42:
        if (v22)
        {
          v27 = v25;
        }

        else
        {
          v27 = v24;
        }

        if (v20 != v23)
        {
          goto LABEL_47;
        }

LABEL_46:
        if (v21 == v27)
        {

LABEL_55:
          v29 = 0;
          while (2)
          {
            if (v13 == v29)
            {
              goto LABEL_239;
            }

            v30 = *(v12 + v29);
            if (v30 > 2)
            {
              if (v30 == 3)
              {
                v33 = 0x6557664F74726170;
                v34 = 0xEA00000000006B65;
                if (v16 <= 2)
                {
                  goto LABEL_69;
                }
              }

              else
              {
                if (v30 == 4)
                {
                  v33 = 0x616559664F796164;
                }

                else
                {
                  v33 = 0x6144664F74726170;
                }

                if (v30 == 4)
                {
                  v34 = 0xE900000000000072;
                }

                else
                {
                  v34 = 0xE900000000000079;
                }

                if (v16 <= 2)
                {
                  goto LABEL_69;
                }
              }
            }

            else
            {
              v31 = 0x59664F6567646577;
              if (v30 == 1)
              {
                v31 = 0x6E6F73616573;
              }

              v32 = 0xEB00000000726165;
              if (v30 == 1)
              {
                v32 = 0xE600000000000000;
              }

              if (*(v12 + v29))
              {
                v33 = v31;
              }

              else
              {
                v33 = 1918985593;
              }

              if (*(v12 + v29))
              {
                v34 = v32;
              }

              else
              {
                v34 = 0xE400000000000000;
              }

              if (v16 <= 2)
              {
LABEL_69:
                if (v16)
                {
                  v35 = v16 == 1;
                  if (v16 == 1)
                  {
                    v36 = 0x6E6F73616573;
                  }

                  else
                  {
                    v36 = 0x59664F6567646577;
                  }

                  v37 = 0xEB00000000726165;
                  v38 = 0xE600000000000000;
                  goto LABEL_89;
                }

                v40 = 0xE400000000000000;
                if (v33 != 1918985593)
                {
LABEL_94:
                  v41 = sub_22F742040();

                  if (v41)
                  {
                    goto LABEL_102;
                  }

                  if (v13 == ++v29)
                  {
                    goto LABEL_243;
                  }

                  continue;
                }

LABEL_93:
                if (v34 == v40)
                {

LABEL_102:
                  if (v14 >= v29)
                  {
                    v42 = __srca;
                    v45 = v79;
                    v44 = v81;
                    v43 = v87;
                    if (v81 < __srca)
                    {
                      v5 = __srca + 1;
                      goto LABEL_110;
                    }

                    v5 = __srca + 1;
                    if (v81 >= (__srca + 1))
                    {
LABEL_110:
                      *v44 = *v42;
                    }
                  }

                  else
                  {
                    v42 = v87;
                    v43 = v87 + 1;
                    v45 = v79;
                    v44 = v81;
                    v5 = __srca;
                    if (v81 < v87 || v81 >= v43)
                    {
                      goto LABEL_110;
                    }
                  }

                  v8 = (v44 + 1);
                  if (v5 < v85)
                  {
                    v7 = v43;
                    if (v43 < v45)
                    {
                      goto LABEL_8;
                    }
                  }

                  v7 = v8;
                  v11 = v85;
                  if (v8 == v5)
                  {
                    goto LABEL_233;
                  }

                  goto LABEL_234;
                }

                goto LABEL_94;
              }
            }

            break;
          }

          v37 = 0xE900000000000079;
          v39 = 0x616559664F796164;
          if (v16 == 4)
          {
            v37 = 0xE900000000000072;
          }

          else
          {
            v39 = 0x6144664F74726170;
          }

          v35 = v16 == 3;
          if (v16 == 3)
          {
            v36 = 0x6557664F74726170;
          }

          else
          {
            v36 = v39;
          }

          v38 = 0xEA00000000006B65;
LABEL_89:
          if (v35)
          {
            v40 = v38;
          }

          else
          {
            v40 = v37;
          }

          if (v33 != v36)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

LABEL_47:
        v28 = sub_22F742040();

        if (v28)
        {
          goto LABEL_55;
        }

        if (v13 == ++v14)
        {
          goto LABEL_240;
        }
      }
    }

    v7 = v8;
LABEL_232:
    if (v7 != v5)
    {
      goto LABEL_234;
    }

LABEL_233:
    if (v7 >= v11)
    {
      goto LABEL_234;
    }

    return 1;
  }

  if (__dst != a2 || __dst >= a3)
  {
    __src = memmove(__dst, a2, a3 - a2);
  }

  v11 = &v5[v10];
  if (v10 < 1 || v7 <= v8)
  {
    goto LABEL_232;
  }

  v46 = a5 + 32;
  __srcb = v5;
  while (2)
  {
    v47 = v7 - 1;
    v88 = v7;
    v77 = v7 - 1;
LABEL_124:
    v48 = *(a5 + 16);
    if (!v48)
    {
      goto LABEL_245;
    }

    v49 = 0;
    v86 = v11;
    v50 = *(v11 - 1);
    v78 = v11 - 1;
    v80 = v6;
    v51 = *v47;
    while (1)
    {
      v52 = *(v46 + v49);
      if (v52 > 2)
      {
        if (v52 == 3)
        {
          v55 = 0x6557664F74726170;
          v56 = 0xEA00000000006B65;
          if (v50 > 2)
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (v52 == 4)
          {
            v55 = 0x616559664F796164;
          }

          else
          {
            v55 = 0x6144664F74726170;
          }

          if (v52 == 4)
          {
            v56 = 0xE900000000000072;
          }

          else
          {
            v56 = 0xE900000000000079;
          }

          if (v50 > 2)
          {
            goto LABEL_151;
          }
        }
      }

      else
      {
        v53 = 0x59664F6567646577;
        if (v52 == 1)
        {
          v53 = 0x6E6F73616573;
        }

        v54 = 0xEB00000000726165;
        if (v52 == 1)
        {
          v54 = 0xE600000000000000;
        }

        if (*(v46 + v49))
        {
          v55 = v53;
        }

        else
        {
          v55 = 1918985593;
        }

        if (*(v46 + v49))
        {
          v56 = v54;
        }

        else
        {
          v56 = 0xE400000000000000;
        }

        if (v50 > 2)
        {
LABEL_151:
          v59 = 0xE900000000000079;
          v61 = 0x616559664F796164;
          if (v50 == 4)
          {
            v59 = 0xE900000000000072;
          }

          else
          {
            v61 = 0x6144664F74726170;
          }

          v57 = v50 == 3;
          if (v50 == 3)
          {
            v58 = 0x6557664F74726170;
          }

          else
          {
            v58 = v61;
          }

          v60 = 0xEA00000000006B65;
LABEL_158:
          if (v57)
          {
            v62 = v60;
          }

          else
          {
            v62 = v59;
          }

          if (v55 != v58)
          {
            goto LABEL_163;
          }

          goto LABEL_162;
        }
      }

      if (v50)
      {
        v57 = v50 == 1;
        if (v50 == 1)
        {
          v58 = 0x6E6F73616573;
        }

        else
        {
          v58 = 0x59664F6567646577;
        }

        v59 = 0xEB00000000726165;
        v60 = 0xE600000000000000;
        goto LABEL_158;
      }

      v62 = 0xE400000000000000;
      if (v55 != 1918985593)
      {
        goto LABEL_163;
      }

LABEL_162:
      if (v56 == v62)
      {
        break;
      }

LABEL_163:
      v63 = sub_22F742040();

      if (v63)
      {
        goto LABEL_171;
      }

      if (v48 == ++v49)
      {
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
        return __src;
      }
    }

LABEL_171:
    v64 = 0;
    while (2)
    {
      if (v48 == v64)
      {
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
        goto LABEL_241;
      }

      v65 = *(v46 + v64);
      if (v65 > 2)
      {
        if (v65 == 3)
        {
          v68 = 0x6557664F74726170;
          v69 = 0xEA00000000006B65;
          if (v51 <= 2)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (v65 == 4)
          {
            v68 = 0x616559664F796164;
          }

          else
          {
            v68 = 0x6144664F74726170;
          }

          if (v65 == 4)
          {
            v69 = 0xE900000000000072;
          }

          else
          {
            v69 = 0xE900000000000079;
          }

          if (v51 <= 2)
          {
            goto LABEL_185;
          }
        }

        goto LABEL_198;
      }

      v66 = 0x59664F6567646577;
      if (v65 == 1)
      {
        v66 = 0x6E6F73616573;
      }

      v67 = 0xEB00000000726165;
      if (v65 == 1)
      {
        v67 = 0xE600000000000000;
      }

      if (*(v46 + v64))
      {
        v68 = v66;
      }

      else
      {
        v68 = 1918985593;
      }

      if (*(v46 + v64))
      {
        v69 = v67;
      }

      else
      {
        v69 = 0xE400000000000000;
      }

      if (v51 > 2)
      {
LABEL_198:
        v72 = 0xE900000000000079;
        v74 = 0x616559664F796164;
        if (v51 == 4)
        {
          v72 = 0xE900000000000072;
        }

        else
        {
          v74 = 0x6144664F74726170;
        }

        v70 = v51 == 3;
        if (v51 == 3)
        {
          v71 = 0x6557664F74726170;
        }

        else
        {
          v71 = v74;
        }

        v73 = 0xEA00000000006B65;
LABEL_205:
        if (v70)
        {
          v75 = v73;
        }

        else
        {
          v75 = v72;
        }

        if (v68 != v71)
        {
          goto LABEL_210;
        }

        break;
      }

LABEL_185:
      if (v51)
      {
        v70 = v51 == 1;
        if (v51 == 1)
        {
          v71 = 0x6E6F73616573;
        }

        else
        {
          v71 = 0x59664F6567646577;
        }

        v72 = 0xEB00000000726165;
        v73 = 0xE600000000000000;
        goto LABEL_205;
      }

      v75 = 0xE400000000000000;
      if (v68 != 1918985593)
      {
LABEL_210:
        v76 = sub_22F742040();

        if (v76)
        {
          goto LABEL_218;
        }

        if (v48 == ++v64)
        {
          goto LABEL_242;
        }

        continue;
      }

      break;
    }

    if (v69 != v75)
    {
      goto LABEL_210;
    }

LABEL_218:
    v6 = v80 - 1;
    if (v49 < v64)
    {
      v5 = __srcb;
      v11 = v86;
      if (v80 < v88 || v6 >= v88)
      {
        *v6 = *v77;
      }

      if (v86 > __srcb)
      {
        v7 = v77;
        if (v77 > v8)
        {
          continue;
        }
      }

      v7 = v77;
    }

    else
    {
      v5 = __srcb;
      v7 = v88;
      v47 = v77;
      if (v80 < v86 || v6 >= v86)
      {
        *v6 = *v78;
      }

      v11 = v78;
      if (v78 > __srcb)
      {
        goto LABEL_124;
      }

      v11 = v78;
    }

    break;
  }

  if (v7 == v5)
  {
    goto LABEL_233;
  }

LABEL_234:
  memmove(v7, v5, v11 - v5);
  return 1;
}