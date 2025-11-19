uint64_t PlusClientEventIdFeature.__allocating_init(value:)(uint64_t a1)
{
  v3 = sub_222C9367C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_222C93EEC();
  (*(v4 + 8))(a1, v3);
  return v10;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  swift_allocObject();
  sub_222B4FC6C(a1, v6, &unk_27D026290, &qword_222C96B40);
  v9 = sub_222C93EDC();

  sub_222B4FCD4(a1, &unk_27D026290, &qword_222C96B40);
  if (v9)
  {
  }

  return v9;
}

uint64_t sub_222BA82D4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BA8320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    sub_222BADB30(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a2, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t mapSuggestionDomain(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result & 0x1FFFFFFFCLL) != 0)
  {
    v2 = 4;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_222BA840C(void **a1@<X0>, void (**a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v51 = a2;
  v53 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = sub_222C9367C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v52 = (&v41 - v19);
  v20 = *a1;
  v21 = [v20 contactSuggesterQueryContext];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v21 ended];

  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = [v23 results];

  if (!v24)
  {
    goto LABEL_10;
  }

  sub_222B505A8(0, &qword_280FDB758, 0x277D59CA8);
  v25 = sub_222C9471C();

  v26 = [v20 eventMetadata];
  if (!v26 || (v27 = v26, v28 = [v26 plusId], v27, !v28))
  {

    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  sub_222C94A1C();

  v44 = *(v14 + 48);
  v45 = v14 + 48;
  if (v44(v12, 1, v13) == 1)
  {

LABEL_9:
    sub_222B4FCD4(v12, &unk_27D026290, &qword_222C96B40);
LABEL_10:
    *v53 = MEMORY[0x277D84F90];
    return;
  }

  v42 = *(v14 + 32);
  v43 = v14 + 32;
  v42(v52, v12, v13);
  if (v25 >> 62)
  {
    goto LABEL_31;
  }

  v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = v25;
  if (v29)
  {
LABEL_13:
    v30 = 0;
    v48 = v25 & 0xFFFFFFFFFFFFFF8;
    v49 = v25 & 0xC000000000000001;
    v25 = MEMORY[0x277D84F90];
    v41 = (v14 + 56);
    v46 = v29;
    v47 = v4;
    while (1)
    {
      if (v49)
      {
        v32 = MEMORY[0x223DC9B30](v30, v50);
      }

      else
      {
        if (v30 >= *(v48 + 16))
        {
          goto LABEL_30;
        }

        v32 = *(v50 + 8 * v30 + 32);
      }

      v33 = v32;
      v4 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v29 = sub_222C94C6C();
        v50 = v25;
        if (!v29)
        {
          break;
        }

        goto LABEL_13;
      }

      v34 = [v32 suggestionId];
      if (v34)
      {
        v35 = v34;
        sub_222C94A1C();

        if (v44(v10, 1, v13) != 1)
        {
          v42(v18, v10, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_222B4A2C8(0, *(v25 + 16) + 1, 1, v25);
          }

          v37 = *(v25 + 16);
          v36 = *(v25 + 24);
          if (v37 >= v36 >> 1)
          {
            v25 = sub_222B4A2C8(v36 > 1, v37 + 1, 1, v25);
          }

          *(v25 + 16) = v37 + 1;
          v42((v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v37), v18, v13);
          goto LABEL_16;
        }
      }

      else
      {

        (*v41)(v10, 1, 1, v13);
      }

      sub_222B4FCD4(v10, &unk_27D026290, &qword_222C96B40);
LABEL_16:
      ++v30;
      v31 = v4 == v46;
      v4 = v47;
      if (v31)
      {
        goto LABEL_33;
      }
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_33:

  MEMORY[0x28223BE20](v38);
  v39 = v52;
  *(&v41 - 2) = v51;
  *(&v41 - 1) = v39;
  v40 = sub_222BDC1F4(sub_222BAEBE4, (&v41 - 4), v25);

  *v53 = v40;
  (*(v14 + 8))(v39, v13);
}

uint64_t sub_222BA898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a2 + 16))
  {
    v10 = 0;
    goto LABEL_9;
  }

  v8 = sub_222B8CA54(a1);
  if ((v9 & 1) == 0)
  {
    v10 = 0;
    if (*(a2 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v10 = *(*(a2 + 56) + 2 * v8);
  if (!*(a2 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  v11 = sub_222B8CA54(a1);
  if ((v12 & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = *(*(a2 + 56) + 2 * v11 + 1);
LABEL_10:
  v14 = sub_222C9367C();
  v15 = *(*(v14 - 8) + 16);
  v15(a4, a1, v14);
  v16 = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0);
  v15(a4 + v16[5], a3, v14);
  *(a4 + v16[6]) = v10;
  *(a4 + v16[7]) = v13;
  return (*(*(v16 - 1) + 56))(a4, 0, 1, v16);
}

void *sub_222BA8AF0(unint64_t a1)
{
  v23 = *v1;
  v24 = sub_222BAE908(a1);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222C94C6C())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DC9B30](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v26 = v6;
      sub_222BA8D30(&v26, v24, v23, &v25);

      v9 = v25;
      v10 = *(v25 + 16);
      v11 = v5[2];
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= v5[3] >> 1)
      {
        if (*(v9 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v5 = sub_222B4B09C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
        if (*(v9 + 16))
        {
LABEL_19:
          v15 = (v5[3] >> 1) - v5[2];
          v16 = *(type metadata accessor for PlusGenericSuggestionRuntimeSummary(0) - 8);
          if (v15 < v10)
          {
            goto LABEL_28;
          }

          v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
          v18 = *(v16 + 72);
          swift_arrayInitWithCopy();

          if (v10)
          {
            v19 = v5[2];
            v20 = __OFADD__(v19, v10);
            v21 = v19 + v10;
            if (v20)
            {
              goto LABEL_29;
            }

            v5[2] = v21;
          }

          goto LABEL_5;
        }
      }

      if (v10)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v4;
      if (v8 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_32:

  return v5;
}

void sub_222BA8D30(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v48 = a2;
  v49 = a3;
  v56 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = sub_222C9367C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v17 = MEMORY[0x28223BE20](v14);
  v55 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = [v21 plusSuggesterQueried];
  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = v22;
  v24 = [v22 matchedResults];

  if (!v24)
  {
    goto LABEL_9;
  }

  sub_222B505A8(0, &qword_27D025D20, 0x277D59DE0);
  v25 = sub_222C9471C();

  v26 = [v21 eventMetadata];
  if (!v26 || (v27 = v26, v28 = [v26 plusId], v27, !v28))
  {

    (*(v15 + 7))(v13, 1, 1, v14);
    goto LABEL_8;
  }

  sub_222C94A1C();

  v50 = *(v15 + 6);
  v51 = v15 + 48;
  if (v50(v13, 1, v14) == 1)
  {

LABEL_8:
    sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
LABEL_9:
    *v56 = MEMORY[0x277D84F90];
    return;
  }

  v46 = *(v15 + 4);
  v47 = v15 + 32;
  v46(v20, v13, v14);
  if (v25 >> 62)
  {
    goto LABEL_33;
  }

  v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v43 = v20;
  v44 = v5;
  v54 = v25;
  if (v29)
  {
    v30 = 0;
    v52 = v25 & 0xFFFFFFFFFFFFFF8;
    v53 = v25 & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v45 = (v15 + 56);
    v20 = v15;
    v25 = v29;
    while (1)
    {
      if (v53)
      {
        v31 = MEMORY[0x223DC9B30](v30, v54);
      }

      else
      {
        if (v30 >= *(v52 + 16))
        {
          goto LABEL_32;
        }

        v31 = *(v54 + 8 * v30 + 32);
      }

      v15 = v31;
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v29 = sub_222C94C6C();
        goto LABEL_12;
      }

      v33 = [v31 suggestionId];
      if (v33)
      {
        v34 = v33;
        sub_222C94A1C();

        if (v50(v11, 1, v14) != 1)
        {
          v46(v55, v11, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_222B4A2C8(0, v5[2] + 1, 1, v5);
          }

          v36 = v5[2];
          v35 = v5[3];
          if (v36 >= v35 >> 1)
          {
            v5 = sub_222B4A2C8(v35 > 1, v36 + 1, 1, v5);
          }

          v5[2] = v36 + 1;
          v37 = v5 + ((v20[80] + 32) & ~v20[80]) + *(v20 + 9) * v36;
          v15 = v20;
          v46(v37, v55, v14);
          goto LABEL_16;
        }
      }

      else
      {

        (*v45)(v11, 1, 1, v14);
      }

      sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
      v15 = v20;
LABEL_16:
      ++v30;
      if (v32 == v25)
      {
        goto LABEL_30;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_30:

  MEMORY[0x28223BE20](v38);
  v39 = v49;
  v40 = v43;
  *(&v42 - 4) = v48;
  *(&v42 - 3) = v40;
  *(&v42 - 2) = v39;
  v41 = sub_222BDC510(sub_222BAEB40, (&v42 - 6), v5);

  *v56 = v41;
  (*(v15 + 1))(v40, v14);
}

uint64_t sub_222BA9294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  if (*(a2 + 16) && (v16 = sub_222B8CA54(a1), (v17 & 1) != 0))
  {
    sub_222BADB30(*(a2 + 56) + *(v9 + 72) * v16, v13, type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata);
    sub_222BADC98(v13, v15, type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata);
    v33 = *v15;
    v18 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
    v31 = v18[5];
    v19 = sub_222C9367C();
    v20 = *(v19 - 8);
    v32 = a3;
    v21 = v20;
    v22 = *(v20 + 16);
    v22(&a4[v31], a1, v19);
    v23 = v18[6];
    v22(&a4[v23], &v15[v8[5]], v19);
    (*(v21 + 56))(&a4[v23], 0, 1, v19);
    v22(&a4[v18[7]], v32, v19);
    LOBYTE(v23) = v15[v8[6]];
    LOBYTE(v21) = v15[v8[7]];
    sub_222BADBB4(v15, type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata);
    *a4 = v33;
    a4[v18[8]] = v23;
    a4[v18[9]] = v21;
    return (*(*(v18 - 1) + 56))(a4, 0, 1, v18);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v25 = sub_222C9431C();
    __swift_project_value_buffer(v25, qword_280FE2340);
    v26 = sub_222C942FC();
    v27 = sub_222C94A4C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      if (qword_27D0246D8 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_222B437C0(qword_27D025E98, unk_27D025EA0, &v34);
      _os_log_impl(&dword_222B39000, v26, v27, "%s Generic suggestion summary not extracted - suggestionId/requestId was missing", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x223DCA8C0](v29, -1, -1);
      MEMORY[0x223DCA8C0](v28, -1, -1);
    }

    v30 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
    return (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
  }
}

uint64_t sub_222BA96AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v5 = *a1;
  sub_222C947FC();
  swift_getWitnessTable();
  return sub_222C949CC();
}

void sub_222BA9754(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 payload];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9350C();
    v7 = v6;

    v8 = sub_222C934FC();
    sub_222B803C0(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) initWithData_];

  *a2 = v9;
}

id sub_222BA97F8(id *a1)
{
  result = [*a1 source];
  if (result)
  {
    v2 = result;
    v3 = [result component];

    return (v3 == 19);
  }

  return result;
}

void sub_222BA9850(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 source];
  if (v3 && (v4 = v3, v7 = [v3 uuid], v4, v7))
  {
    sub_222C94A1C();
  }

  else
  {
    v5 = sub_222C9367C();
    v6 = *(*(v5 - 8) + 56);

    v6(a2, 1, 1, v5);
  }
}

uint64_t PlusClientEventFeatureExtractor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PlusClientEventFeatureExtractor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PlusContactSuggestionRuntimeSummary.runtimeSuggestionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlusGenericSuggestionRuntimeSummary.suggestionLinkId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlusGenericSuggestionRuntimeSummary(0) + 20);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlusGenericSuggestionRuntimeSummary.originalPlusId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlusGenericSuggestionRuntimeSummary(0) + 28);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlusGenericSuggestionRuntimeSummary.suggestionSurfacedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t PlusGenericSuggestionRuntimeSummary.suggestionNoveltyState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t PlusRuntimeContactSuggestions.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t _s28SiriPrivateLearningInference29PlusRuntimeContactSuggestionsC5valueACSgSayAA0eg10SuggestionF7SummaryVGSg_tcfC_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BA9DA0(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BA9E08(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PlusForcePrompted.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t PlusForcePrompted.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t PlusClientEventIdFeature.init(value:)(uint64_t a1)
{
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_222C93EEC();
  (*(v3 + 8))(a1, v2);
  return v6;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_222B4FC6C(a1, &v7 - v4, &unk_27D026290, &qword_222C96B40);
  v5 = sub_222C93EDC();

  sub_222B4FCD4(a1, &unk_27D026290, &qword_222C96B40);
  if (v5)
  {
  }

  return v5;
}

uint64_t _s28SiriPrivateLearningInference17PlusForcePromptedC5valueACSgSbSg_tcfC_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BAA210(char *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BAA278(char *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BAA2EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222B8C9DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_222B92DDC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_222B8E22C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_222B8C9DC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_222C0000C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_222BAA434(__int16 a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_222B8CB28(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_222B92F9C();
    result = v17;
    goto LABEL_8;
  }

  sub_222B8E524(v14, a3 & 1);
  v18 = *v4;
  result = sub_222B8CB28(a2);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 2 * result) = a1;
  }

  else
  {
    sub_222C00054(result, a2, a1, v20);
    return sub_222B554C0(a2, v21);
  }

  return result;
}

uint64_t sub_222BAA538(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_222B8CB9C(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      sub_222B93140();
      result = v23;
      goto LABEL_8;
    }

    sub_222B8E85C(v20, a6 & 1);
    v24 = *v7;
    result = sub_222B8CB9C(a2, a3, a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_14:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 4 * result;
    *v27 = a1;
    *(v27 + 3) = HIBYTE(a1);
    *(v27 + 1) = a1 >> 8;
  }

  else
  {
    sub_222C000B4(result, a2, a3, a4, a5, a1, v26);
  }

  return result;
}

uint64_t sub_222BAA6B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_222B8CC2C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_222B932D4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_222B8EB44(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_222B8CC2C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_222C9386C();
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {
    sub_222C00E80(v9, a2, a1, v20);
  }
}

uint64_t sub_222BAA7DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_222B8CCFC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_222B932E8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_222B8EB58(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_222B8CCFC(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_222C9378C();
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {
    sub_222C00E80(v9, a2, a1, v20);
  }
}

uint64_t sub_222BAA908(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_222B8CA54(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_222B932FC();
      goto LABEL_7;
    }

    sub_222B8EE1C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_222B8CA54(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_222C00158(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_222BAAAD4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222C9367C();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222B8CA54(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_222B93310();
      goto LABEL_9;
    }

    sub_222B8EE30(v17, a3 & 1);
    v20 = *v4;
    v21 = sub_222B8CA54(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = *v4;
  if (v18)
  {
    v24 = *(v28 + 40);
    v25 = v23[7] + *(v28 + 72) * v14;

    return v24(v25, a1, v8);
  }

  else
  {
    (*(v28 + 16))(v11, a2, v8);
    return sub_222C00210(v14, v11, a1, v23);
  }
}

uint64_t sub_222BAACB8(__int16 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_222B8CA54(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 2 * v15);
      *v22 = a1 & 1;
      v22[1] = HIBYTE(a1) & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_222B93BE4();
    goto LABEL_7;
  }

  sub_222B9046C(result, a3 & 1);
  v23 = *v4;
  result = sub_222B8CA54(a2);
  if ((v19 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_222C002EC(v15, v12, a1 & 0x101, v21);
}

uint64_t sub_222BAAE68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_222B8CA54(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_222B93E70();
      goto LABEL_7;
    }

    sub_222B90844(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_222B8CA54(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_222C003B4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_222C9526C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0) - 8) + 72) * v15;

  return sub_222BAEB80(a1, v23);
}

uint64_t sub_222BAB050(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_222B8C9DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_222B941C4();
      result = v19;
      goto LABEL_8;
    }

    sub_222B90CF4(v16, a4 & 1);
    v20 = *v5;
    result = sub_222B8C9DC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    sub_222C00490(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

uint64_t sub_222BAB184(__int128 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222B8CFCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_222B9490C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_222B91808(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_222B8CFCC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_222B405A0(a1, v23);
  }

  else
  {
    sub_222C004D8(v11, a2, a3, a1, v22);

    return sub_222B95830(a2, a3);
  }
}

uint64_t sub_222BAB340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_222B4FC6C(a1, &v11 - v6, &unk_27D026290, &qword_222C96B40);
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

void sub_222BAB45C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = v0[3];
  v33 = v0[2];
  v34 = v6;
  v35 = v0[4];
  v7 = *(v0 + 11);
  v36 = *(v0 + 10);
  v8 = v0[1];
  v31 = *v0;
  v32 = v8;
  v25 = *(v0 + 12);
  v26 = v7;
  v30 = sub_222BAB678();
  v23 = v33;
  v24 = *(&v32 + 1);
  v21[2] = v35;
  v22 = *(&v34 + 1);
  v9 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 < 0)
  {
    v10 = v31;
  }

  else
  {
    v10 = v31 & 0xFFFFFFFFFFFFFF8;
  }

  v21[1] = v10;
  v27 = v31 & 0xC000000000000001;
  v11 = v31 + 32;
  v21[0] = v31;
  v12 = v31 >> 62;
  if (v31 >> 62)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = *(v9 + 16); v30 != i; i = sub_222C94C6C())
  {
    if (v27)
    {
      v14 = MEMORY[0x223DC9B30](v30, v21[0]);
    }

    else
    {
      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      if (v30 >= *(v9 + 16))
      {
        goto LABEL_18;
      }

      v14 = *(v11 + 8 * v30);
    }

    v15 = v14;
    v17 = *(v1 + 13);
    v16 = *(v1 + 14);
    v28 = v14;
    v24(&v29, &v28);

    v18 = v29;
    v28 = v29;
    v22(&v29, &v28);

    v19 = v29;
    v26(&v29);

    v20 = v17(v5);
    sub_222B4FCD4(v5, &unk_27D026290, &qword_222C96B40);
    if (v20)
    {
      return;
    }

    sub_222BABB0C(&v30);
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }
}

uint64_t sub_222BAB678()
{
  v1 = v0;
  v2 = v0[1];
  v25 = *v0;
  v26 = v2;
  v27 = v0[2];
  v3 = *(v0 + 7);
  v28 = *(v0 + 6);
  v20 = *(v0 + 8);
  v21 = v3;
  v4 = sub_222BAB808();
  v5 = v4;
  v24 = v4;
  v6 = v25;
  v19 = *(&v26 + 1);
  if (v25 >> 62)
  {
    goto LABEL_15;
  }

  v7 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 != v7)
  {
    do
    {
      v8 = *(v1 + 9);
      v1 = *(v1 + 10);
      v9 = v6 & 0xC000000000000001;
      v10 = v6 & 0xFFFFFFFFFFFFFF8;
      v18 = v6;
      v11 = (v6 + 32);
      while (1)
      {
        if (v9)
        {
          v12 = MEMORY[0x223DC9B30](v5, v18);
          goto LABEL_8;
        }

        if ((v5 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v5 >= *(v10 + 16))
        {
          goto LABEL_14;
        }

        v12 = v11[v5];
LABEL_8:
        v13 = v12;
        v22 = v12;
        v19(&v23, &v22);

        v14 = v23;
        v22 = v23;
        v21(&v23, &v22);

        v15 = v23;
        v22 = v23;
        v16 = v8(&v22);

        if (v16)
        {
          return v5;
        }

        v6 = &v25;
        sub_222BABCA0(&v24);
        v5 = v24;
        if (v24 == v7)
        {
          return v7;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v7 = sub_222C94C6C();
    }

    while (v5 != v7);
  }

  return v5;
}

unint64_t sub_222BAB808()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v18 = v0[4];
  v19 = v0[3];
  v4 = sub_222BABA1C(*v0, v2);
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); v4 != i; i = sub_222C94C6C())
  {
    v16 = v0[6];
    v17 = v0[5];
    v6 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    v15 = i;
    while (2)
    {
      if (v6)
      {
        v8 = MEMORY[0x223DC9B30](v4, v1);
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          break;
        }

        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v8 = *(v20 + 8 * v4);
      }

      v9 = v8;
      v21 = v8;
      v19(&v22, &v21);

      v10 = v22;
      v21 = v22;
      v0 = v17(&v21);

      if (v0)
      {
        return v4;
      }

      if (!(v1 >> 62))
      {
        v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 != v11)
        {
          goto LABEL_18;
        }

        goto LABEL_32;
      }

      if (v4 != sub_222C94C6C())
      {
        v11 = sub_222C94C6C();
        while (1)
        {
LABEL_18:
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (v7 == v11)
          {
            break;
          }

          if (v6)
          {
            v12 = MEMORY[0x223DC9B30](v4 + 1, v1);
          }

          else
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v12 = *(v20 + 8 * v7);
          }

          v13 = v12;
          v22 = v12;
          v0 = v2(&v22);

          ++v4;
          if (v0)
          {
            goto LABEL_5;
          }
        }

        v7 = v11;
LABEL_5:
        v4 = v7;
        if (v7 != v15)
        {
          continue;
        }

        return v15;
      }

      break;
    }

    __break(1u);
LABEL_34:
    ;
  }

  return v4;
}

uint64_t sub_222BABA1C(unint64_t a1, uint64_t (*a2)(id *))
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_222C94C6C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DC9B30](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a2(&v12);

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return v5;
}

void sub_222BABB0C(unint64_t *a1)
{
  v2 = v1[2];
  v25 = v1[1];
  v26 = v2;
  v24 = *v1;
  v3 = *(v1 + 7);
  v27 = *(v1 + 6);
  v19 = *(v1 + 8);
  v20 = v3;
  v4 = *a1;
  v23 = *a1;
  v5 = v24;
  v18 = *(&v25 + 1);
  v6 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 >> 62)
  {
    goto LABEL_16;
  }

  v7 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 == v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  while (2)
  {
    v9 = *(v1 + 9);
    v8 = *(v1 + 10);
    v10 = v5 & 0xC000000000000001;
    v16 = v5;
    v4 = v5 + 32;
    while (1)
    {
      v1 = &v24;
      sub_222BABCA0(&v23);
      v5 = v23;
      if (v23 == v7)
      {
        v5 = v7;
LABEL_13:
        *a1 = v5;
        return;
      }

      if (!v10)
      {
        break;
      }

      v11 = MEMORY[0x223DC9B30](v23, v16);
LABEL_9:
      v12 = v11;
      v21 = v11;
      v18(&v22, &v21);

      v13 = v22;
      v21 = v22;
      v20(&v22, &v21);

      v14 = v22;
      v21 = v22;
      v15 = v9(&v21);

      if (v15)
      {
        goto LABEL_13;
      }
    }

    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 >= *(v6 + 16))
      {
        goto LABEL_15;
      }

      v11 = *(v4 + 8 * v23);
      goto LABEL_9;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    if (v4 != sub_222C94C6C())
    {
      v7 = sub_222C94C6C();
      continue;
    }

    break;
  }

LABEL_19:
  __break(1u);
}

void sub_222BABCA0(unint64_t *a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v18 = *(v1 + 32);
  v19 = *(v1 + 24);
  v5 = *a1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  if (*v1 >> 62)
  {
    goto LABEL_33;
  }

  if (v5 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  else
  {
    v7 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v7;
    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222C94C6C())
    {
      v16 = *(v1 + 48);
      v17 = *(v1 + 40);
      v8 = v3 & 0xC000000000000001;
      v14 = v3;
      v9 = (v3 + 32);
      while (2)
      {
        if (v5 == v20)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
        }

        else
        {
          v3 = v5;
          while (1)
          {
            v5 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            if (v5 == v7)
            {
              break;
            }

            if (v8)
            {
              v10 = MEMORY[0x223DC9B30](v3 + 1, v14);
            }

            else
            {
              if ((v5 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              if (v5 >= *(v6 + 16))
              {
                goto LABEL_29;
              }

              v10 = *&v9[8 * v5];
            }

            v11 = v10;
            v23 = v10;
            v1 = v2(&v23);

            ++v3;
            if (v1)
            {
              goto LABEL_17;
            }
          }

          v5 = v7;
LABEL_17:
          if (v5 == i)
          {
            v5 = i;
            goto LABEL_26;
          }

          if (v8)
          {
            v12 = MEMORY[0x223DC9B30](v5, v14);
            goto LABEL_22;
          }

          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          if (v5 < *(v6 + 16))
          {
            v12 = *&v9[8 * v5];
LABEL_22:
            v13 = v12;
            v22 = v12;
            v19(&v23, &v22);

            v3 = v23;
            v22 = v23;
            v1 = v16;
            LOBYTE(v13) = v17(&v22);

            if ((v13 & 1) == 0)
            {
              continue;
            }

LABEL_26:
            *a1 = v5;
            return;
          }
        }

        break;
      }

      __break(1u);
LABEL_33:
      if (v5 == sub_222C94C6C())
      {
        break;
      }

      v20 = sub_222C94C6C();
      v7 = sub_222C94C6C();
    }
  }

  __break(1u);
}

id sub_222BABEA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s28SiriPrivateLearningInference35PlusGenericSuggestionRuntimeSummaryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v18 = *(v17 + 20);
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v19 = a1;
  v20 = v5;
  v34 = v17;
  v21 = *(v17 + 24);
  v22 = *(v13 + 48);
  v32 = v19;
  sub_222B4FC6C(&v19[v21], v16, &unk_27D026290, &qword_222C96B40);
  v33 = a2;
  sub_222B4FC6C(&a2[v21], &v16[v22], &unk_27D026290, &qword_222C96B40);
  v23 = *(v20 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_222B4FC6C(v16, v12, &unk_27D026290, &qword_222C96B40);
    if (v23(&v16[v22], 1, v4) != 1)
    {
      (*(v20 + 32))(v8, &v16[v22], v4);
      sub_222BAC6B0(&qword_280FE02A0, 255, MEMORY[0x277CC95F0]);
      v24 = sub_222C9447C();
      v25 = *(v20 + 8);
      v25(v8, v4);
      v25(v12, v4);
      sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v20 + 8))(v12, v4);
LABEL_8:
    sub_222B4FCD4(v16, &qword_27D025290, &unk_222C97C30);
    return 0;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
LABEL_10:
  v26 = v33;
  v27 = v34;
  v28 = *(v34 + 28);
  v29 = v32;
  if ((sub_222C9362C() & 1) != 0 && v29[*(v27 + 32)] == v26[*(v27 + 32)])
  {
    return v29[*(v27 + 36)] == v26[*(v27 + 36)];
  }

  return 0;
}

uint64_t _s28SiriPrivateLearningInference35PlusContactSuggestionRuntimeSummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  if ((sub_222C9362C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v18 = a1;
  v19 = a2;
  v29 = v17;
  v30 = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_222B4FC6C(v18 + v20, v16, &unk_27D026290, &qword_222C96B40);
  v22 = v19 + v20;
  v23 = v19;
  sub_222B4FC6C(v22, &v16[v21], &unk_27D026290, &qword_222C96B40);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) != 1)
  {
    sub_222B4FC6C(v16, v12, &unk_27D026290, &qword_222C96B40);
    if (v24(&v16[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v21], v4);
      sub_222BAC6B0(&qword_280FE02A0, 255, MEMORY[0x277CC95F0]);
      v25 = sub_222C9447C();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v12, v4);
      v23 = v19;
      sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_222B4FCD4(v16, &qword_27D025290, &unk_222C97C30);
    goto LABEL_10;
  }

  if (v24(&v16[v21], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
LABEL_9:
  if (*(v30 + *(v29 + 24)) == *(v23 + *(v29 + 24)))
  {
    v27 = *(v30 + *(v29 + 28)) ^ *(v23 + *(v29 + 28)) ^ 1;
    return v27 & 1;
  }

LABEL_10:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_222BAC6B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222BAC6F8(uint64_t a1)
{
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v40 - v12;
  v13 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v14 = *(a1 + 16);
  if (!v14)
  {
    return v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v11 + 72);
  v17 = a1 + ((v15 + 32) & ~v15);
  v48 = (v15 + 32) & ~v15;
  v49 = (v3 + 16);
  v43 = v3 + 32;
  v44 = v15;
  v42 = (v3 + 8);
  v41 = xmmword_222C97C40;
  v46 = v6;
  v47 = v3;
  v45 = v7;
  v51 = v16;
  while (1)
  {
    v19 = v52;
    sub_222BADB30(v17, v52, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
    (*v49)(v6, v19 + *(v7 + 20), v2);
    v21 = sub_222B8CA54(v6);
    v22 = v13[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v13[3] < v24)
    {
      sub_222B90068(v24, 1);
      v13 = v53;
      v26 = sub_222B8CA54(v6);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v21 = v26;
    }

    if (v25)
    {
      v28 = v2;
      (*v42)(v6, v2);
      v29 = v13[7];
      sub_222BADC98(v52, v50, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v30 = *(v29 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v21) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_222B4B09C(0, v30[2] + 1, 1, v30);
        *(v29 + 8 * v21) = v30;
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_222B4B09C(v32 > 1, v33 + 1, 1, v30);
        *(v29 + 8 * v21) = v30;
      }

      v2 = v28;
      v30[2] = v33 + 1;
      v18 = v51;
      sub_222BADC98(v50, v30 + v48 + v33 * v51, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v7 = v45;
      v6 = v46;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CB8, &qword_222C96A90);
      v34 = v48;
      v35 = swift_allocObject();
      *(v35 + 16) = v41;
      sub_222BADC98(v52, v35 + v34, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v13[(v21 >> 6) + 8] |= 1 << v21;
      (*(v47 + 32))(v13[6] + *(v47 + 72) * v21, v6, v2);
      *(v13[7] + 8 * v21) = v35;
      v36 = v13[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v13[2] = v38;
      v18 = v51;
    }

    v17 += v18;
    if (!--v14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222BACB2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v51 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v41 - v14;
  v15 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v16 = *(a1 + 16);
  if (!v16)
  {
    return v15;
  }

  v45 = *(v13 + 80);
  v17 = v5;
  v18 = *(v13 + 72);
  v50 = (v45 + 32) & ~v45;
  v19 = a1 + v50;
  v43 = (v17 + 8);
  v44 = v17 + 32;
  v42 = xmmword_222C97C40;
  v46 = v17;
  v47 = a2;
  v48 = v4;
  v49 = v18;
  while (1)
  {
    sub_222BADB30(v19, v52, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
    v21 = a2;
    swift_getAtKeyPath();
    v23 = sub_222B8CA54(v8);
    v24 = v15[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v15[3] < v26)
    {
      sub_222B90458(v26, 1);
      v15 = v53;
      v28 = sub_222B8CA54(v8);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {
      (*v43)(v8, v4);
      v30 = v15[7];
      sub_222BADC98(v52, v51, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      v31 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_222B4B074(0, v31[2] + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_222B4B074(v33 > 1, v34 + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v31[2] = v34 + 1;
      v4 = v48;
      v20 = v49;
      sub_222BADC98(v51, v31 + v50 + v34 * v49, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      a2 = v47;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F28, &qword_222C9B820);
      v35 = v50;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_222BADC98(v52, v36 + v35, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      v15[(v23 >> 6) + 8] |= 1 << v23;
      (*(v46 + 32))(v15[6] + *(v46 + 72) * v23, v8, v4);
      *(v15[7] + 8 * v23) = v36;
      v37 = v15[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v15[2] = v39;
      v20 = v49;
      a2 = v21;
    }

    v19 += v20;
    if (!--v16)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:

  result = sub_222C9526C();
  __break(1u);
  return result;
}

void sub_222BACF48(uint64_t *a1, id *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = [*a2 suggestionId];
  if (v14)
  {
    v15 = v14;
    sub_222C94A1C();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      v16 = [v13 isSuggestionPresentInModelOutput];
      v17 = [v13 isDuplicateSuggestion];
      v18 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *a1;
      if (v17)
      {
        v20 = 256;
      }

      else
      {
        v20 = 0;
      }

      sub_222BAACB8(v20 | v16, v12, isUniquelyReferenced_nonNull_native);
      (*(v9 + 8))(v12, v8);
      *a1 = v27;
      return;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_222B4FCD4(v7, &unk_27D026290, &qword_222C96B40);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v21 = sub_222C9431C();
  __swift_project_value_buffer(v21, qword_280FE2340);
  v22 = sub_222C942FC();
  v23 = sub_222C94A4C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136315138;
    if (qword_27D0246D8 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_222B437C0(qword_27D025E98, unk_27D025EA0, &v27);
    _os_log_impl(&dword_222B39000, v22, v23, "%s Contact suggestion metadata not extracted - suggestionId was missing", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x223DCA8C0](v25, -1, -1);
    MEMORY[0x223DCA8C0](v24, -1, -1);
  }
}

uint64_t sub_222BAD2B4(unint64_t a1)
{
  v11 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222C94C6C())
  {
    swift_bridgeObjectRetain_n();
    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC9B30](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 contactSuggesterSuggestionMetadataReported];

      if (v7)
      {
        v10 = v7;
        sub_222BACF48(&v11, &v10);
      }

      ++v3;
      if (v6 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = MEMORY[0x277D84F98];
LABEL_15:
  swift_bridgeObjectRelease_n();
  return v8;
}

uint64_t sub_222BAD420(unint64_t a1)
{
  v13 = sub_222BAD2B4(a1);
  v16 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222C94C6C())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC9B30](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 contactSuggesterQueryContext];
      if (v7 && (v8 = v7, v9 = [v7 ended], v8, v9) && (v10 = objc_msgSend(v9, sel_hasMatchingResults), v9, v10))
      {
        v15 = v5;
        sub_222BA840C(&v15, v13, &v14);

        sub_222B499F4(v14);
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        v11 = v16;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_20:

  return v11;
}

void *sub_222BAD5C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F40, &qword_222C9B790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v45 - v2;
  v4 = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F48, &qword_222C9B798);
  v10 = *(*(v56 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v53 = &v45 - v15;
  v65 = v4;
  v66 = &off_28360A960;
  KeyPath = swift_getKeyPath();

  v18 = sub_222BACB2C(v17, KeyPath);

  v58 = v4;
  v63 = v4;
  v64 = &off_28360A960;
  v59 = swift_getKeyPath();
  v60 = v18;
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v47 = v5;
  v50 = (v5 + 48);

  v25 = 0;
  v49 = MEMORY[0x277D84F90];
  v51 = v23;
  v52 = v18 + 64;
  v57 = v3;
  v26 = v53;
LABEL_4:
  v27 = v25;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
    v25 = v27;
LABEL_9:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v28 | (v25 << 6);
    v30 = v60;
    v31 = *(v60 + 48);
    v62 = sub_222C9367C();
    v32 = *(v62 - 8);
    (*(v32 + 16))(v26, v31 + *(v32 + 72) * v29, v62);
    v61 = *(*(v30 + 56) + 8 * v29);
    v33 = v56;
    *(v26 + *(v56 + 48)) = v61;
    v34 = v54;
    sub_222B4FC6C(v26, v54, &qword_27D025F48, &qword_222C9B798);
    v35 = *(v33 + 48);
    v36 = *(v34 + v35);
    v37 = v55;
    (*(v32 + 32))(v55, v34, v62);
    *(v37 + v35) = v36;

    v38 = v57;
    swift_getAtKeyPath();
    sub_222B4FCD4(v37, &qword_27D025F48, &qword_222C9B798);
    sub_222B4FCD4(v26, &qword_27D025F48, &qword_222C9B798);
    if ((*v50)(v38, 1, v58) != 1)
    {
      v39 = v46;
      sub_222BADC98(v38, v46, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      sub_222BADC98(v39, v48, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = sub_222B4B074(0, v49[2] + 1, 1, v49);
      }

      v19 = v52;
      v42 = v49[2];
      v41 = v49[3];
      if (v42 >= v41 >> 1)
      {
        v49 = sub_222B4B074(v41 > 1, v42 + 1, 1, v49);
      }

      v43 = v48;
      v44 = v49;
      v49[2] = v42 + 1;
      result = sub_222BADC98(v43, v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      goto LABEL_4;
    }

    result = sub_222B4FCD4(v38, &qword_27D025F40, &qword_222C9B790);
    v27 = v25;
    v23 = v51;
    v19 = v52;
  }

  while (v22);
LABEL_6:
  while (1)
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      return v49;
    }

    v22 = *(v19 + 8 * v25);
    ++v27;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222BADB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BADBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222BADC34()
{
  result = qword_27D025ED8;
  if (!qword_27D025ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025EE0, &qword_222C9B2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025ED8);
  }

  return result;
}

uint64_t sub_222BADC98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_222BADD8C()
{
  result = qword_27D025EF8;
  if (!qword_27D025EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025EF8);
  }

  return result;
}

unint64_t sub_222BADDE4()
{
  result = qword_27D025F00;
  if (!qword_27D025F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025F00);
  }

  return result;
}

unint64_t sub_222BADE3C()
{
  result = qword_27D025F08;
  if (!qword_27D025F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025F08);
  }

  return result;
}

void sub_222BADF08()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222B56160();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222BADFC4()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222B56160();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_222BAE12C()
{
  result = sub_222C9367C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_222BAE1A4(uint64_t a1, void **a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F38, &qword_222C9B788);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v67 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - v12;
  v14 = sub_222C9367C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v65 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v60 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v60 - v22;
  v24 = *a2;
  v25 = [v24 suggestionLinkId];
  if (!v25)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_8;
  }

  v26 = v25;
  v63 = a1;
  v66 = v2;
  sub_222C94A1C();

  v27 = *(v15 + 48);
  if (v27(v13, 1, v14) == 1)
  {
LABEL_8:
    sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v33 = sub_222C9431C();
    __swift_project_value_buffer(v33, qword_280FE2340);
    v34 = sub_222C942FC();
    v35 = sub_222C94A4C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v68 = v37;
      *v36 = 136315138;
      if (qword_27D0246D8 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_222B437C0(qword_27D025E98, unk_27D025EA0, &v68);
      _os_log_impl(&dword_222B39000, v34, v35, "%s Generic suggestion metadata not extracted - suggestionId/requestId was missing", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x223DCA8C0](v37, -1, -1);
      MEMORY[0x223DCA8C0](v36, -1, -1);
    }

    return;
  }

  v62 = v21;
  v28 = v13;
  v29 = *(v15 + 32);
  v29(v23, v28, v14);
  v30 = [v24 originalRequestId];
  if (!v30)
  {
    (*(v15 + 8))(v23, v14);
    v13 = v67;
    (*(v15 + 56))(v67, 1, 1, v14);
    goto LABEL_8;
  }

  v31 = v30;
  v61 = v23;
  v32 = v67;
  sub_222C94A1C();

  if (v27(v32, 1, v14) == 1)
  {
    (*(v15 + 8))(v61, v14);
    v13 = v32;
    goto LABEL_8;
  }

  v38 = v14;
  v29(v62, v32, v14);
  v39 = [v24 suggestionNoveltyState];
  if (v39 <= 3 && (v40 = v39, v41 = [v24 suggestionSurfaced], v41 <= 3) && (v42 = v41, (v43 = objc_msgSend(v24, sel_suggestionDomainMetadata)) != 0) && (v44 = v43, v45 = objc_msgSend(v43, sel_suggestionGenerationDomain), v44, v45 <= 3))
  {
    v46 = v15;
    v67 = *(v15 + 16);
    v47 = v38;
    (v67)(v65, v61, v38);
    v48 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
    v49 = v64;
    (v67)(&v64[v48[5]], v62, v47);
    *v49 = v45;
    v49[v48[6]] = v42;
    v49[v48[7]] = v40;
    (*(*(v48 - 1) + 56))(v49, 0, 1, v48);
    sub_222C4AAF0(v49, v65);
    v50 = *(v46 + 8);
    v50(v62, v47);
    v50(v61, v47);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v51 = sub_222C9431C();
    __swift_project_value_buffer(v51, qword_280FE2340);
    v52 = sub_222C942FC();
    v53 = sub_222C94A4C();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v38;
    v56 = v61;
    if (v54)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68 = v58;
      *v57 = 136315138;
      if (qword_27D0246D8 != -1)
      {
        swift_once();
      }

      *(v57 + 4) = sub_222B437C0(qword_27D025E98, unk_27D025EA0, &v68);
      _os_log_impl(&dword_222B39000, v52, v53, "%s Generic suggestion metadata not extracted - unexpected enum values", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x223DCA8C0](v58, -1, -1);
      MEMORY[0x223DCA8C0](v57, -1, -1);
    }

    v59 = *(v15 + 8);
    v59(v62, v55);
    v59(v56, v55);
  }
}

unint64_t sub_222BAE908(unint64_t a1)
{
  v1 = a1;
  v17 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_28:
    v3 = sub_222C94C6C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223DC9B30](v4, v1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_25;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v9 = [v6 plusSuggesterSuggestionMetadataReported];

    ++v4;
    if (v9)
    {
      MEMORY[0x223DC94A0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      sub_222C947AC();
      v5 = v17;
      v4 = v8;
    }
  }

  v17 = MEMORY[0x277D84F98];
  if (v5 >> 62)
  {
    v11 = sub_222C94C6C();
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_16:
      v1 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223DC9B30](v1, v5);
        }

        else
        {
          if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v5 + 8 * v1 + 32);
        }

        v13 = v12;
        v2 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_26;
        }

        v16 = v12;
        sub_222BAE1A4(&v17, &v16);

        ++v1;
        if (v2 == v11)
        {
          v14 = v17;
          goto LABEL_31;
        }
      }
    }
  }

  v14 = MEMORY[0x277D84F98];
LABEL_31:

  return v14;
}

uint64_t sub_222BAEB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PlusClientEventFeatureExtractor.SuggestionMetadata(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PlusClientEventFeatureExtractor.SuggestionMetadata(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_222BAED98()
{
  result = sub_222C9367C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PICSStoreApi.__allocating_init(store:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PICSStoreApi.init(store:)(a1);
  return v2;
}

uint64_t PICSStoreApi.init(store:)(uint64_t a1)
{
  sub_222B4FC6C(a1, &v8, &qword_27D025F60, &unk_222C9B880);
  if (v9)
  {
    sub_222B405A0(&v8, v10);
    sub_222B43E3C(v10, &v8);
    sub_222C9403C();
    type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
    v3 = swift_allocObject();
    sub_222B4FCD4(a1, &qword_27D025F60, &unk_222C9B880);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v3[8] = 0xD000000000000030;
    v3[9] = 0x8000000222CAAB10;
    sub_222B405A0(&v8, (v3 + 2));
    type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
    v4 = swift_allocObject();
    type metadata accessor for SELFEventLogEmitters();
    v5 = swift_allocObject();
    sub_222B405A0(&v7, v5 + 16);
    *(v4 + 16) = v5;
    v3[7] = v4;
  }

  else
  {
    sub_222B4FCD4(a1, &qword_27D025F60, &unk_222C9B880);
    sub_222B4FCD4(&v8, &qword_27D025F60, &unk_222C9B880);
    v3 = 0;
  }

  *(v1 + 16) = v3;
  return v1;
}

unint64_t sub_222BAF028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v16 = sub_222C9431C();
  __swift_project_value_buffer(v16, qword_280FE2340);
  v17 = sub_222C942FC();
  v18 = sub_222C94A4C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v10;
    v20 = a3;
    v21 = a2;
    v22 = v19;
    *v19 = 0;
    _os_log_impl(&dword_222B39000, v17, v18, "PICSStoreApi is deprecated and usage should be migrated to PlusContactSuggestionStoreRuntimeQueryWrapper.", v19, 2u);
    v23 = v22;
    a2 = v21;
    a3 = v20;
    v4 = v3;
    v10 = v33;
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

  if (*(v4 + 16))
  {
    v24 = *(v4 + 16);

    v25 = sub_222BAF9C8(&unk_283607B80);
    sub_222B4FC6C(a3, v10, &unk_27D026290, &qword_222C96B40);
    v26 = *(v12 + 48);
    if (v26(v10, 1, v11) == 1)
    {
      sub_222C9366C();
      if (v26(v10, 1, v11) != 1)
      {
        sub_222B4FCD4(v10, &unk_27D026290, &qword_222C96B40);
      }
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
    }

    v30 = sub_222C2A580(a2, v25, v15);

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v27 = sub_222C942FC();
    v28 = sub_222C94A4C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_222B39000, v27, v28, "PICSStoreApi for SiriInference: queryWrapper is nil", v29, 2u);
      MEMORY[0x223DCA8C0](v29, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v30;
}

uint64_t PICSStoreApi.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PICSStoreApi.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222BAF404(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025648, &qword_222C9B8E0);
    v3 = sub_222C94CFC();
    v4 = 0;
    v5 = v3 + 56;
    v33 = v1;
    v34 = a1 + 32;
    while (1)
    {
      v6 = *(v34 + v4);
      v35 = v4 + 1;
      v7 = *(v3 + 40);
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          v14 = *(*(v3 + 48) + v10);
          if (v14 > 3)
          {
            if (*(*(v3 + 48) + v10) > 5u)
            {
              if (v14 == 6)
              {
                v19 = 0xD000000000000013;
                v20 = 0x8000000222CA93E0;
                if (v6 > 3)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v19 = 0xD000000000000012;
                v20 = 0x8000000222CA9400;
                if (v6 > 3)
                {
                  goto LABEL_34;
                }
              }
            }

            else
            {
              if (v14 == 4)
              {
                v19 = 0x7972617262696CLL;
              }

              else
              {
                v19 = 0xD000000000000011;
              }

              if (v14 == 4)
              {
                v20 = 0xE700000000000000;
              }

              else
              {
                v20 = 0x8000000222CA93C0;
              }

              if (v6 > 3)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
            v15 = 0x6974636572726F63;
            if (v14 == 2)
            {
              v15 = 0x6574616E696D6F6ELL;
            }

            v16 = 0xEA00000000006E6FLL;
            if (v14 == 2)
            {
              v16 = 0xE900000000000064;
            }

            v17 = 0x754D6E69616D6F64;
            if (*(*(v3 + 48) + v10))
            {
              v17 = 0x656D7269666E6F63;
            }

            v18 = 0xEB00000000636973;
            if (*(*(v3 + 48) + v10))
            {
              v18 = 0xE900000000000064;
            }

            if (*(*(v3 + 48) + v10) <= 1u)
            {
              v19 = v17;
            }

            else
            {
              v19 = v15;
            }

            if (*(*(v3 + 48) + v10) <= 1u)
            {
              v20 = v18;
            }

            else
            {
              v20 = v16;
            }

            if (v6 > 3)
            {
LABEL_34:
              v21 = 0xD000000000000013;
              if (v6 != 6)
              {
                v21 = 0xD000000000000012;
              }

              v22 = 0x8000000222CA9400;
              if (v6 == 6)
              {
                v22 = 0x8000000222CA93E0;
              }

              v23 = 0x7972617262696CLL;
              if (v6 != 4)
              {
                v23 = 0xD000000000000011;
              }

              v24 = 0x8000000222CA93C0;
              if (v6 == 4)
              {
                v24 = 0xE700000000000000;
              }

              if (v6 <= 5)
              {
                v25 = v23;
              }

              else
              {
                v25 = v21;
              }

              if (v6 <= 5)
              {
                v26 = v24;
              }

              else
              {
                v26 = v22;
              }

              if (v19 != v25)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }
          }

          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v29 = 0x6574616E696D6F6ELL;
            }

            else
            {
              v29 = 0x6974636572726F63;
            }

            if (v6 == 2)
            {
              v26 = 0xE900000000000064;
            }

            else
            {
              v26 = 0xEA00000000006E6FLL;
            }

            if (v19 != v29)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v27 = 0x754D6E69616D6F64;
            v26 = 0xEB00000000636973;
            if (v6)
            {
              v27 = 0x656D7269666E6F63;
              v26 = 0xE900000000000064;
            }

            if (v19 != v27)
            {
              goto LABEL_56;
            }
          }

LABEL_55:
          if (v20 == v26)
          {

            goto LABEL_4;
          }

LABEL_56:
          v28 = sub_222C951FC();

          if (v28)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v30 = *(v3 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v3 + 16) = v32;
LABEL_4:
      v4 = v35;
      if (v35 == v33)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_222BAF88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F68, &qword_222C9B8E8);
    v3 = sub_222C94CFC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_222C952FC();
      MEMORY[0x223DCA0B0](v10);
      result = sub_222C9534C();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_222BAF9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025650, &unk_222C98A70);
    v3 = sub_222C94CFC();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4++);
      v7 = *(v3 + 40);
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          v14 = *(*(v3 + 48) + v10);
          if (v14 <= 1)
          {
            if (*(*(v3 + 48) + v10))
            {
              v15 = 0x68506E69616D6F64;
            }

            else
            {
              v15 = 0x654D6E69616D6F64;
            }

            if (*(*(v3 + 48) + v10))
            {
              v16 = 0xEF6C6C6143656E6FLL;
            }

            else
            {
              v16 = 0xEE00736567617373;
            }

            if (v6 <= 1)
            {
LABEL_34:
              v19 = 0x654D6E69616D6F64;
              v20 = 0xEE00736567617373;
              if (v6)
              {
                v19 = 0x68506E69616D6F64;
                v20 = 0xEF6C6C6143656E6FLL;
              }

              goto LABEL_36;
            }
          }

          else if (v14 == 2)
          {
            v15 = 0x656D7269666E6F63;
            v16 = 0xE900000000000064;
            if (v6 <= 1)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v14 == 3)
            {
              v15 = 0x6574616E696D6F6ELL;
            }

            else
            {
              v15 = 0x6974636572726F63;
            }

            if (v14 == 3)
            {
              v16 = 0xE900000000000064;
            }

            else
            {
              v16 = 0xEA00000000006E6FLL;
            }

            if (v6 <= 1)
            {
              goto LABEL_34;
            }
          }

          v17 = 0x6974636572726F63;
          if (v6 == 3)
          {
            v17 = 0x6574616E696D6F6ELL;
          }

          v18 = 0xEA00000000006E6FLL;
          if (v6 == 3)
          {
            v18 = 0xE900000000000064;
          }

          if (v6 == 2)
          {
            v19 = 0x656D7269666E6F63;
          }

          else
          {
            v19 = v17;
          }

          if (v6 == 2)
          {
            v20 = 0xE900000000000064;
          }

          else
          {
            v20 = v18;
          }

LABEL_36:
          if (v15 == v19 && v16 == v20)
          {

            goto LABEL_4;
          }

          v21 = sub_222C951FC();

          if (v21)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v3 + 16) = v24;
LABEL_4:
      if (v4 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_222BAFDE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
    v3 = sub_222C94CFC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_222C952FC();

      sub_222C9452C();
      result = sub_222C9534C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_222C951FC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

id PlusMediaSuggestion.toCascadeInstance()()
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for PlusMediaSuggestion();
  sub_222C0A220(*(v0 + *(v1 + 20)), &v36);
  result = 0;
  v3 = v37;
  if (v37 == 1)
  {
    goto LABEL_23;
  }

  v4 = v39;
  v5 = v40;
  v6 = v41;
  v7 = (v0 + *(v1 + 24));
  v8 = v7[1];
  v34 = *v7;
  if (v38)
  {
    v9 = sub_222C9448C();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = 0;
    if (v39)
    {
LABEL_4:
      v10 = sub_222C9448C();
      if (v5)
      {
        goto LABEL_5;
      }

LABEL_11:
      v11 = 0;
      if (!v3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v10 = 0;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v11 = sub_222C9448C();
  if (v3)
  {
LABEL_6:
    v3 = sub_222C9448C();
  }

LABEL_7:
  if (v6)
  {
    v12 = sub_222C9448C();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(MEMORY[0x277D21140]);
  v14 = sub_222C9448C();
  v35 = 0;
  v15 = [v13 initWithUserPhrasedSongName:v9 userPhrasedArtistName:v10 userPhrasedAlbumName:v11 userPhrasedEntityName:v3 userPhrasedVersion:v12 suggestedAdamId:v14 error:&v35];

  if (v15)
  {
    v16 = v35;
    sub_222B4FCD4(&v36, &qword_27D0256C8, &unk_222C98AB0);
    sub_222C9360C();
    v17 = objc_allocWithZone(MEMORY[0x277D21148]);
    v29 = sub_222BB0A6C();
    v30 = objc_allocWithZone(MEMORY[0x277CF94C8]);
    v35 = 0;
    v31 = [v30 initWithContent:v15 metaContent:v29 error:&v35];
    v32 = v35;
    if (v31)
    {

      result = v31;
      goto LABEL_23;
    }

    v33 = v32;
    v19 = sub_222C9342C();

    swift_willThrow();
  }

  else
  {
    v18 = v35;
    v19 = sub_222C9342C();

    swift_willThrow();
    sub_222B4FCD4(&v36, &qword_27D0256C8, &unk_222C98AB0);
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);
  v21 = v19;
  v22 = sub_222C942FC();
  v23 = sub_222C94A4C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v19;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_222B39000, v22, v23, "Error occured during mapping PIMS to CCSiriLearnedMedia %@", v24, 0xCu);
    sub_222B4FCD4(v25, &qword_27D025F70, &unk_222C9E7C0);
    MEMORY[0x223DCA8C0](v25, -1, -1);
    MEMORY[0x223DCA8C0](v24, -1, -1);
  }

  else
  {
  }

  result = 0;
LABEL_23:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

id PlusContactSuggestion.toCascadeInstance()()
{
  v28[2] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for PlusContactSuggestion();
  v2 = *(v0 + *(v1 + 20));
  v3 = sub_222C0AFD4();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = (v0 + *(v1 + 24));
    v8 = *v7;
    v9 = v7[1];
    objc_allocWithZone(MEMORY[0x277D21130]);

    v10 = sub_222BB0958(v5, v6, v8, v9);
    sub_222C9360C();
    v11 = objc_allocWithZone(MEMORY[0x277D21138]);
    v12 = sub_222BB0A6C();
    v23 = v12;
    v28[0] = 0;
    v24 = [objc_allocWithZone(MEMORY[0x277CF94C8]) initWithContent:v10 metaContent:v12 error:v28];
    v25 = v28[0];
    if (v24)
    {

      result = v24;
      goto LABEL_9;
    }

    v26 = v25;
    v27 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = v27;
    v15 = sub_222C942FC();
    v16 = sub_222C94A4C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v27;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_222B39000, v15, v16, "Error occured during building CCSiriLearnedContact %@", v17, 0xCu);
      sub_222B4FCD4(v18, &qword_27D025F70, &unk_222C9E7C0);
      MEMORY[0x223DCA8C0](v18, -1, -1);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    else
    {
    }
  }

  result = 0;
LABEL_9:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

SiriPrivateLearningInference::DonationCandidateType_optional __swiftcall DonationCandidateType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

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

unint64_t DonationCandidateType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_222BB06A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = "picsRuntimeInSiriVocab";
  }

  else
  {
    v5 = "siriLearnedContact";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = "siriLearnedContact";
  }

  else
  {
    v8 = "picsRuntimeInSiriVocab";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_222C951FC();
  }

  return v10 & 1;
}

uint64_t sub_222BB0750()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BB07D0()
{
  *v0;
  sub_222C9452C();
}

uint64_t sub_222BB083C()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BB08B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222C94FDC();

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

void sub_222BB0918(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "siriLearnedContact";
  }

  else
  {
    v3 = "picsRuntimeInSiriVocab";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id sub_222BB0958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = sub_222C9448C();

    if (a4)
    {
LABEL_3:
      v7 = sub_222C9448C();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v13[0] = 0;
  v8 = [v4 initWithUserPhrasedName:v6 suggestedContactId:v7 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_222C9342C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

id sub_222BB0A6C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_222C9448C();

  v7[0] = 0;
  v2 = [v0 initWithSourceItemIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_222C9342C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_222BB0B38(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_222BB0B98(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_222BB0C10()
{
  result = qword_280FDEF30;
  if (!qword_280FDEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDEF30);
  }

  return result;
}

uint64_t ContactEntityUtteranceComparator.__allocating_init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:)(uint64_t a1, char a2, double a3)
{
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 16) = a3;
  *(result + 24) = a2;
  return result;
}

uint64_t ContactEntityUtteranceComparator.init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:)(uint64_t a1, char a2, double a3)
{
  *(v3 + 32) = a1;
  *(v3 + 16) = a3;
  *(v3 + 24) = a2;
  return v3;
}

BOOL sub_222BB0CF0(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = sub_222B417F4(*(a1 + *(v2 + 24)));
  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_222BB0D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = type metadata accessor for FeaturisedTurn(0);
  *&result = COERCE_DOUBLE(sub_222B41648(*(a1 + *(v10 + 24))));
  if (*&result == 0.0)
  {
    goto LABEL_10;
  }

  v12 = result;
  v13 = sub_222B41648(*(a2 + *(v10 + 24)));
  if (!v13)
  {
    *&result = COERCE_DOUBLE();
LABEL_10:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v14 = v13;
  v15 = sub_222B72040(v12);

  v16 = sub_222B860E8(v15, v7);

  v17 = sub_222B72040(v14);

  v18 = sub_222B860E8(v17, v16);

  v19 = v18[2];
  *&result = COERCE_DOUBLE();
  if (v19 != 1)
  {
    goto LABEL_10;
  }

  *&result = COERCE_DOUBLE(sub_222BB1F5C(a1, a2, 0));
  if (v20)
  {
    goto LABEL_10;
  }

  v21 = result;
  if (*&result >= 0.3)
  {
    if (*&result >= 0.5)
    {
      if (*&result >= 0.7)
      {
        if (*&result >= 0.85)
        {
          if (*&result >= 1.0)
          {
            if (*&result == 1.0)
            {
              if (qword_280FDF1F0 != -1)
              {
                swift_once();
              }

              v28 = &type metadata for PIMSConstraintMismatch;
              v29 = sub_222B77B4C();
              v25 = 0xD000000000000016;
              v26 = 0x8000000222CA9C80;
              v22 = 9;
            }

            else
            {
              if (qword_280FDF1F0 != -1)
              {
                swift_once();
              }

              v28 = &type metadata for PIMSConstraintMismatch;
              v29 = sub_222B77B4C();
              v25 = 0xD000000000000016;
              v26 = 0x8000000222CA9C80;
              v22 = 10;
            }
          }

          else
          {
            if (qword_280FDF1F0 != -1)
            {
              swift_once();
            }

            v28 = &type metadata for PIMSConstraintMismatch;
            v29 = sub_222B77B4C();
            v25 = 0xD000000000000016;
            v26 = 0x8000000222CA9C80;
            v22 = 8;
          }
        }

        else
        {
          if (qword_280FDF1F0 != -1)
          {
            swift_once();
          }

          v28 = &type metadata for PIMSConstraintMismatch;
          v29 = sub_222B77B4C();
          v25 = 0xD000000000000016;
          v26 = 0x8000000222CA9C80;
          v22 = 7;
        }
      }

      else
      {
        if (qword_280FDF1F0 != -1)
        {
          swift_once();
        }

        v28 = &type metadata for PIMSConstraintMismatch;
        v29 = sub_222B77B4C();
        v25 = 0xD000000000000016;
        v26 = 0x8000000222CA9C80;
        v22 = 6;
      }
    }

    else
    {
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v28 = &type metadata for PIMSConstraintMismatch;
      v29 = sub_222B77B4C();
      v25 = 0xD000000000000016;
      v26 = 0x8000000222CA9C80;
      v22 = 5;
    }
  }

  else
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v28 = &type metadata for PIMSConstraintMismatch;
    v29 = sub_222B77B4C();
    v25 = 0xD000000000000016;
    v26 = 0x8000000222CA9C80;
    v22 = 4;
  }

  v27 = v22;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v25);
  v23 = type metadata accessor for EntityUtteranceComparison();
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v8;
  *(v24 + 32) = v9;
  *(a3 + 24) = v23;
  *&result = COERCE_DOUBLE(sub_222BB23C8());
  *(a3 + 32) = *&result;
  *a3 = v24;
  return result;
}

unint64_t sub_222BB11EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_222C945FC() != a1 || v9 != a2)
  {
    v10 = sub_222C951FC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_222C9454C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_222BB12DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_222C9462C();
  }

  __break(1u);
  return result;
}

uint64_t ContactEntityUtteranceComparator.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t ContactEntityUtteranceComparator.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_222BB13A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v43 = MEMORY[0x277D84F90];
    sub_222B4CA70(0, v1, 0);
    v4 = v43;
    sub_222B78598();
    v5 = (a1 + 40);
    do
    {
      v41 = *(v5 - 1);
      v42 = *v5;
      v6 = sub_222C94BAC();
      v44 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        v10 = v6;
        sub_222B4CA70((v7 > 1), v8 + 1, 1);
        v6 = v10;
        v4 = v44;
      }

      *(v4 + 16) = v9;
      *(v4 + 8 * v8 + 32) = v6;
      v5 += 2;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x277D84F90];
LABEL_9:
    v37 = v9;
    result = sub_222B4CA30(0, v9, 0);
    v12 = 0;
    v13 = v2;
    v35 = v4;
    v36 = v4 + 32;
    while (v12 < *(v4 + 16))
    {
      v14 = *(v36 + 8 * v12);
      v15 = *(v14 + 16);

      if (v15)
      {
        v16 = 0;
        v17 = v14 + 40;
        v18 = v2;
        do
        {
          v19 = (v17 + 16 * v16);
          v20 = v16;
          while (1)
          {
            if (v20 >= *(v14 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v21 = *(v19 - 1);
            v22 = *v19;
            v16 = v20 + 1;

            v23 = sub_222BB11EC(92, 0xE100000000000000, v21, v22);
            if ((v24 & 1) == 0)
            {
              break;
            }

            v19 += 2;
            ++v20;
            if (v15 == v16)
            {
              goto LABEL_25;
            }
          }

          v25 = sub_222BB12DC(v23, v21, v22);
          v39 = v26;
          v40 = v25;
          v28 = v27;
          v38 = v29;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_222B4A758(0, *(v18 + 2) + 1, 1, v18);
          }

          v31 = *(v18 + 2);
          v30 = *(v18 + 3);
          if (v31 >= v30 >> 1)
          {
            v18 = sub_222B4A758((v30 > 1), v31 + 1, 1, v18);
          }

          *(v18 + 2) = v31 + 1;
          v32 = &v18[32 * v31];
          *(v32 + 4) = v40;
          *(v32 + 5) = v28;
          *(v32 + 6) = v39;
          *(v32 + 7) = v38;
          v17 = v14 + 40;
        }

        while (v15 - 1 != v20);
      }

      else
      {
        v18 = v2;
      }

LABEL_25:

      v34 = *(v13 + 2);
      v33 = *(v13 + 3);
      v4 = v35;
      if (v34 >= v33 >> 1)
      {
        result = sub_222B4CA30((v33 > 1), v34 + 1, 1);
      }

      ++v12;
      *(v13 + 2) = v34 + 1;
      *&v13[8 * v34 + 32] = v18;
      v2 = MEMORY[0x277D84F90];
      if (v12 == v37)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    return result;
  }

  v9 = *(MEMORY[0x277D84F90] + 16);
  if (v9)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_30:
  v13 = MEMORY[0x277D84F90];
LABEL_28:

  return v13;
}

uint64_t sub_222BB16C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v5 = sub_222B4282C(v4);
  if (!v5)
  {
    result = sub_222B73DD0(a1);
    v6 = 0;
LABEL_8:
    v7 = 0;
LABEL_9:
    v8 = 0;
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v6 = sub_222B42844(v4);
  if (!v6)
  {
    sub_222B73DD0(a1);

    v5 = 0;
    goto LABEL_8;
  }

  v7 = sub_222B4285C(v4);
  if (!v7)
  {
    sub_222B73DD0(a1);

    v5 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v8 = sub_222B417F4(v4);
  if (!v8)
  {
    sub_222B73DD0(a1);

    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v9 = sub_222BB13A4(v6);
  result = sub_222B73DD0(a1);
LABEL_11:
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  return result;
}

uint64_t sub_222BB17F8(char **a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 2);
  if (v6)
  {
    v7 = *&v5[8 * v6 + 24];
    v8 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_3;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = 0;
  if (__OFADD__(-1, 1))
  {
    goto LABEL_19;
  }

LABEL_3:
  v9 = *(a3 + 16);
  if ((v9 - 1) >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9 - 1;
  }

  if (v8 < -1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 < v10 + 1)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    v5 = sub_222B4AB44(0, v6 + 1, 1, v5);
    goto LABEL_24;
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = (a3 + 16 * v10 + 40);
  v14 = v10;
  while (v14 != -1)
  {
    v3 = v14;
    if (v14 > v10)
    {
      __break(1u);
      goto LABEL_28;
    }

    if (*(v13 - 1) != v11 || *v13 != v12)
    {
      v16 = sub_222C951FC();
      v14 = v3 - 1;
      v13 -= 2;
      if ((v16 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

LABEL_20:
  if (v6)
  {
    v3 = *&v5[8 * v6 + 24];
  }

  else
  {
    v3 = 0;
  }

LABEL_23:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v18 = *(v5 + 2);
  v17 = *(v5 + 3);
  if (v18 >= v17 >> 1)
  {
    v5 = sub_222B4AB44((v17 > 1), v18 + 1, 1, v5);
  }

  *(v5 + 2) = v18 + 1;
  *&v5[8 * v18 + 32] = v3;
  *a1 = v5;
  return result;
}

uint64_t sub_222BB1980(uint64_t *a1, char *a2, char *a3)
{
  v69 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F88, &qword_222C9BAD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - v7;
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(v9 + 16);
  if (v11 == *(v10 + 16))
  {
    v12 = *a1;
    v13 = *(*a1 + 16);
    if (v13 == *(a1[1] + 16))
    {
      v61 = a1;
      v14 = MEMORY[0x277D84F90];
      v70[0] = MEMORY[0x277D84F90];
      v63 = v11;
      if (v11)
      {
        v15 = (v9 + 40);
        do
        {
          v16 = *v15;
          *&v71 = *(v15 - 1);
          *(&v71 + 1) = v16;

          sub_222BB17F8(v70, &v71, v12);

          v15 += 2;
          --v11;
        }

        while (v11);
        v14 = v70[0];
        v11 = v63;
      }

      v17 = *(v14 + 2);
      v62 = v14 + 32;
      v18 = 32;
      while (v17)
      {
        v19 = *&v14[v18];
        v18 += 8;
        --v17;
        if (v19 >= v13)
        {

          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v20 = sub_222C9431C();
          __swift_project_value_buffer(v20, qword_280FE2340);
          v21 = sub_222C942FC();
          v22 = sub_222C94A4C();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            v24 = "[EntityUtteranceComparator] Could not map from postITN phonemes into preITN phonemes. Skipping entity-based comparison.";
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

      v28 = MEMORY[0x277D84F90];
      if (!v11)
      {
        goto LABEL_41;
      }

      v29 = 0;
      v59 = v14;
      v60 = v10 + 32;
      while (2)
      {
        v30 = v29;
        v66 = v28;
LABEL_24:
        if (v30 >= v11)
        {
LABEL_49:
          __break(1u);
        }

        else if (!__OFADD__(v30, 1))
        {
          if (v30 < *(v14 + 2))
          {
            v31 = *&v62[8 * v30];
            if ((v31 & 0x8000000000000000) == 0)
            {
              v32 = v61[4];
              if (v31 < *(v32 + 16))
              {
                v68 = v30 + 1;
                v33 = (v60 + 16 * v30);
                v34 = v33[1];
                v64 = *v33;
                v65 = v30;
                v35 = *(v32 + 8 * v31 + 32);
                v36 = *(v35 + 16);
                v67 = v34;

                v37 = (v35 + 56);
                v38 = -v36;
                v39 = -1;
                do
                {
                  if (v38 + v39 == -1)
                  {

                    v30 = v68;
                    v11 = v63;
                    v28 = v66;
                    v14 = v59;
                    if (v68 != v63)
                    {
                      goto LABEL_24;
                    }

                    goto LABEL_41;
                  }

                  if (++v39 >= *(v35 + 16))
                  {
                    __break(1u);
                    goto LABEL_49;
                  }

                  v40 = v37 + 4;
                  v41 = *(v37 - 1);
                  v42 = *v37;
                  v71 = *(v37 - 3);
                  v72 = v41;
                  v73 = v42;
                  v70[0] = a2;
                  v70[1] = v69;
                  v43 = sub_222C9369C();
                  (*(*(v43 - 8) + 56))(v8, 1, 1, v43);
                  sub_222BB24B8();
                  sub_222B78598();

                  sub_222C94BDC();
                  v45 = v44;
                  sub_222B4FCD4(v8, &qword_27D025F88, &qword_222C9BAD8);

                  v37 = v40;
                }

                while ((v45 & 1) != 0);

                v28 = v66;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v74 = v28;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_222B4CAB0(0, v28[2] + 1, 1);
                  v28 = v74;
                }

                v11 = v63;
                v14 = v59;
                v48 = v28[2];
                v47 = v28[3];
                if (v48 >= v47 >> 1)
                {
                  sub_222B4CAB0((v47 > 1), v48 + 1, 1);
                  v14 = v59;
                  v28 = v74;
                }

                v28[2] = v48 + 1;
                v49 = &v28[3 * v48];
                v50 = v64;
                v49[4] = v65;
                v49[5] = v50;
                v29 = v68;
                v49[6] = v67;
                if (v29 != v11)
                {
                  continue;
                }

LABEL_41:

                v51 = v28[2];
                if (!v51)
                {

                  return MEMORY[0x277D84F90];
                }

                *&v71 = MEMORY[0x277D84F90];
                sub_222B4C418(0, v51, 0);
                v26 = v71;
                v52 = v28 + 6;
                do
                {
                  v54 = *(v52 - 1);
                  v53 = *v52;
                  *&v71 = v26;
                  v55 = *(v26 + 16);
                  v56 = *(v26 + 24);

                  if (v55 >= v56 >> 1)
                  {
                    sub_222B4C418((v56 > 1), v55 + 1, 1);
                    v26 = v71;
                  }

                  *(v26 + 16) = v55 + 1;
                  v57 = v26 + 16 * v55;
                  *(v57 + 32) = v54;
                  *(v57 + 40) = v53;
                  v52 += 3;
                  --v51;
                }

                while (v51);

                return v26;
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        break;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_54:
    swift_once();
  }

  v25 = sub_222C9431C();
  __swift_project_value_buffer(v25, qword_280FE2340);
  v21 = sub_222C942FC();
  v22 = sub_222C94A4C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "[EntityUtteranceComparator] Utterance and phoneme lengths do not match up. Skipping entity-based comparison.";
LABEL_17:
    _os_log_impl(&dword_222B39000, v21, v22, v24, v23, 2u);
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

LABEL_18:

  return MEMORY[0x277D84F90];
}

unint64_t sub_222BB23C8()
{
  result = qword_27D025F78;
  if (!qword_27D025F78)
  {
    type metadata accessor for EntityUtteranceComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025F78);
  }

  return result;
}

unint64_t sub_222BB24B8()
{
  result = qword_27D025F90;
  if (!qword_27D025F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025F90);
  }

  return result;
}

id sub_222BB250C()
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (qword_27D0246E0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FA8, qword_222C9BAF0);
  v1 = sub_222C9470C();
  v8[0] = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch_error_];

  v3 = v8[0];
  if (!v2)
  {
    v4 = v3;
    v5 = sub_222C9342C();

    swift_willThrow();
    v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_222BB2620()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C9BAE0;
  *(v0 + 32) = *MEMORY[0x277CBD018];
  qword_27D025FA0 = v0;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_222BB26C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v36 = v4;
  v37 = v2;
  v35 = v8;
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      while (1)
      {
        if (!*(a1 + 16) || (v13 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v12 << 6))), v14 = *(a1 + 40), v15 = sub_222BBF5A4(), v16 = -1 << *(a1 + 32), v17 = v15 & ~v16, ((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0))
        {
LABEL_77:

          return 0;
        }

        v7 &= v7 - 1;
        v18 = ~v16;
        while (1)
        {
          v19 = *(*(a1 + 48) + v17);
          if (v19 <= 3)
          {
            break;
          }

          if (*(*(a1 + 48) + v17) > 5u)
          {
            if (v19 == 6)
            {
              v24 = 0xD000000000000013;
              v25 = 0x8000000222CA93E0;
              if (v13 > 3)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v24 = 0xD000000000000012;
              v25 = 0x8000000222CA9400;
              if (v13 > 3)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            if (v19 == 4)
            {
              v24 = 0x7972617262696CLL;
            }

            else
            {
              v24 = 0xD000000000000011;
            }

            if (v19 == 4)
            {
              v25 = 0xE700000000000000;
            }

            else
            {
              v25 = 0x8000000222CA93C0;
            }

            if (v13 > 3)
            {
              goto LABEL_42;
            }
          }

LABEL_29:
          if (v13 > 1)
          {
            if (v13 == 2)
            {
              v33 = 0x6574616E696D6F6ELL;
            }

            else
            {
              v33 = 0x6974636572726F63;
            }

            if (v13 == 2)
            {
              v27 = 0xE900000000000064;
            }

            else
            {
              v27 = 0xEA00000000006E6FLL;
            }

            if (v24 == v33)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v26 = 0x754D6E69616D6F64;
            v27 = 0xEB00000000636973;
            if (v13)
            {
              v26 = 0x656D7269666E6F63;
              v27 = 0xE900000000000064;
            }

            if (v24 == v26)
            {
              goto LABEL_65;
            }
          }

LABEL_66:
          v34 = sub_222C951FC();

          if (v34)
          {
            goto LABEL_75;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        v20 = 0x6974636572726F63;
        if (v19 == 2)
        {
          v20 = 0x6574616E696D6F6ELL;
        }

        v21 = 0xEA00000000006E6FLL;
        if (v19 == 2)
        {
          v21 = 0xE900000000000064;
        }

        v22 = 0x754D6E69616D6F64;
        if (*(*(a1 + 48) + v17))
        {
          v22 = 0x656D7269666E6F63;
        }

        v23 = 0xEB00000000636973;
        if (*(*(a1 + 48) + v17))
        {
          v23 = 0xE900000000000064;
        }

        if (*(*(a1 + 48) + v17) <= 1u)
        {
          v24 = v22;
        }

        else
        {
          v24 = v20;
        }

        if (*(*(a1 + 48) + v17) <= 1u)
        {
          v25 = v23;
        }

        else
        {
          v25 = v21;
        }

        if (v13 <= 3)
        {
          goto LABEL_29;
        }

LABEL_42:
        v28 = 0xD000000000000011;
        v29 = 0xD000000000000013;
        if (v13 != 6)
        {
          v29 = 0xD000000000000012;
        }

        v30 = 0x8000000222CA9400;
        if (v13 == 6)
        {
          v30 = 0x8000000222CA93E0;
        }

        if (v13 == 4)
        {
          v28 = 0x7972617262696CLL;
        }

        v31 = 0x8000000222CA93C0;
        if (v13 == 4)
        {
          v31 = 0xE700000000000000;
        }

        if (v13 <= 5)
        {
          v32 = v28;
        }

        else
        {
          v32 = v29;
        }

        if (v13 <= 5)
        {
          v27 = v31;
        }

        else
        {
          v27 = v30;
        }

        if (v24 != v32)
        {
          goto LABEL_66;
        }

LABEL_65:
        if (v25 != v27)
        {
          goto LABEL_66;
        }

LABEL_75:
        v11 = v12;
        v4 = v36;
        v2 = v37;
        v8 = v35;
        if (!v7)
        {
          goto LABEL_7;
        }

LABEL_6:
        v12 = v11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222BB2AB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v31 = v4;
  v32 = v2;
  v30 = v8;
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      while (1)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_48;
        }

        v13 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v12 << 6)));
        v14 = *(a1 + 40);
        sub_222C952FC();
        sub_222C9452C();

        v15 = sub_222C9534C();
        v16 = -1 << *(a1 + 32);
        v17 = v15 & ~v16;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
LABEL_48:

          return 0;
        }

        v7 &= v7 - 1;
        v18 = ~v16;
        while (1)
        {
          v19 = *(*(a1 + 48) + v17);
          if (v19 <= 1)
          {
            v20 = v19 == 0;
            v21 = *(*(a1 + 48) + v17) ? 0x68506E69616D6F64 : 0x654D6E69616D6F64;
            v22 = 0xEF6C6C6143656E6FLL;
            v23 = 0xEE00736567617373;
          }

          else
          {
            if (v19 == 2)
            {
              v21 = 0x656D7269666E6F63;
              v24 = 0xE900000000000064;
              if (v13 > 1)
              {
                goto LABEL_27;
              }

              goto LABEL_38;
            }

            v20 = v19 == 3;
            v21 = v19 == 3 ? 0x6574616E696D6F6ELL : 0x6974636572726F63;
            v22 = 0xEA00000000006E6FLL;
            v23 = 0xE900000000000064;
          }

          if (v20)
          {
            v24 = v23;
          }

          else
          {
            v24 = v22;
          }

          if (v13 > 1)
          {
LABEL_27:
            v25 = 0x6974636572726F63;
            if (v13 == 3)
            {
              v25 = 0x6574616E696D6F6ELL;
            }

            v26 = 0xEA00000000006E6FLL;
            if (v13 == 3)
            {
              v26 = 0xE900000000000064;
            }

            if (v13 == 2)
            {
              v27 = 0x656D7269666E6F63;
            }

            else
            {
              v27 = v25;
            }

            if (v13 == 2)
            {
              v28 = 0xE900000000000064;
            }

            else
            {
              v28 = v26;
            }

            goto LABEL_40;
          }

LABEL_38:
          v27 = 0x654D6E69616D6F64;
          v28 = 0xEE00736567617373;
          if (v13)
          {
            v27 = 0x68506E69616D6F64;
            v28 = 0xEF6C6C6143656E6FLL;
          }

LABEL_40:
          if (v21 == v27 && v24 == v28)
          {
            break;
          }

          v29 = sub_222C951FC();

          if (v29)
          {
            goto LABEL_46;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

LABEL_46:
        v11 = v12;
        v4 = v31;
        v2 = v32;
        v8 = v30;
        if (!v7)
        {
          goto LABEL_7;
        }

LABEL_6:
        v12 = v11;
      }
    }
  }

  __break(1u);
  return result;
}

void *PimsStoreRuntimeQueryWrapper.__allocating_init()()
{
  v0 = sub_222C9429C();
  v2 = v1;
  v3 = type metadata accessor for PIMSStoreCoreData();
  v4 = swift_allocObject();
  v5 = sub_222C769D4(v0, v2, 0);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
    sub_222C9403C();
    type metadata accessor for PimsStoreRuntimeQueryWrapper();
    v6 = swift_allocObject();
    v6[5] = v3;
    v6[6] = &protocol witness table for PIMSStoreCoreData;
    v6[2] = v4;
    type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
    v7 = swift_allocObject();
    type metadata accessor for SELFEventLogEmitters();
    v8 = swift_allocObject();
    sub_222B505F4(&v14, v8 + 16);
    result = v6;
    *(v7 + 16) = v8;
    v6[7] = v7;
  }

  else
  {
    swift_deallocPartialClassInstance();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v11 = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222B39000, v11, v12, "[PimsStoreRuntimeQueryWrapper]: Failed to initialise PIMS store", v13, 2u);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t *PimsStoreRuntimeQueryWrapper.__allocating_init(store:logTarget:)(uint64_t *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_222BB38D0(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t *PimsStoreRuntimeQueryWrapper.init(store:logTarget:)(uint64_t *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_222BB37F4(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t sub_222BB31D4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PlusMediaSuggestion();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = v2[5];
  v13 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v12);
  v14 = (*(v13 + 48))(a1, v12, v13);
  v15 = v14;
  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v17 = *(v14 + 16);

  v36 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    v33 = v16;
    v34 = v5;
    while (v18 < *(v15 + 16))
    {
      v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v21 = *(v6 + 72);
      sub_222B79B14(v15 + v20 + v21 * v18, v11);
      if (sub_222BB26C4(*&v11[*(v5 + 44)], v16) & 1) != 0 && (PlusMediaSuggestion.isNominated.getter())
      {
        sub_222B7D960(v11, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C630(0, *(v19 + 16) + 1, 1);
          v19 = v37;
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_222B4C630(v23 > 1, v24 + 1, 1);
          v19 = v37;
        }

        *(v19 + 16) = v24 + 1;
        sub_222B7D960(v35, v19 + v20 + v24 * v21);
        v16 = v33;
        v5 = v34;
      }

      else
      {
        sub_222B7D9D0(v11);
      }

      if (v36 == ++v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_18;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_17:

  if (qword_280FDFE78 != -1)
  {
    goto LABEL_23;
  }

LABEL_18:
  v25 = sub_222C9431C();
  __swift_project_value_buffer(v25, qword_280FE2340);
  swift_retain_n();

  v26 = sub_222C942FC();
  v27 = sub_222C94A3C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    v29 = *(v15 + 16);

    *(v28 + 4) = v29;

    *(v28 + 12) = 2048;
    v30 = *(v19 + 16);

    *(v28 + 14) = v30;

    _os_log_impl(&dword_222B39000, v26, v27, "[PimsStoreRuntimeQueryWrapper]: Found %ld results and %ld with matching tags.", v28, 0x16u);
    MEMORY[0x223DCA8C0](v28, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v19;
}

uint64_t sub_222BB3554(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_222C93A5C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_222C93A4C();
  sub_222C93A3C();
  MEMORY[0x223DC8590](v9);
  sub_222C9386C();
  sub_222C9381C();

  if (v17)
  {
    v10 = sub_222BB31D4(v17, a3);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);

    v12 = sub_222C942FC();
    v13 = sub_222C94A4C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_222B437C0(a1, a2, &v17);
      _os_log_impl(&dword_222B39000, v12, v13, "[PimsStoreRuntimeQueryWrapper]: unable to create USO for query from %s String", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x223DCA8C0](v15, -1, -1);
      MEMORY[0x223DCA8C0](v14, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t PimsStoreRuntimeQueryWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t PimsStoreRuntimeQueryWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void *sub_222BB37A4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_222BB37C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t *sub_222BB37F4(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v10 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v11 = swift_allocObject();
  sub_222B505F4(a2, v11 + 16);
  *(v10 + 16) = v11;
  a3[7] = v10;
  return a3;
}

uint64_t *sub_222BB38D0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PimsStoreRuntimeQueryWrapper();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  return sub_222BB37F4(v12, a2, v13, a4, a5);
}

uint64_t dispatch thunk of PimsStoreRuntimeQueryWrapper.queryWithLogging(query:suggestionTags:plusId:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

uint64_t sub_222BB3A40()
{
  type metadata accessor for MessagesAbandonmentClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FC0, &unk_222C9BC40);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDD6F0 = 91;
  unk_280FDD6F8 = 0xE100000000000000;
  return result;
}

uint64_t sub_222BB3AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 > 3 || v3 == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v5 = sub_222C9431C();
    __swift_project_value_buffer(v5, qword_280FE2340);
    v6 = sub_222C942FC();
    v7 = sub_222C94A3C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136315138;
      if (qword_280FDD6E8 != -1)
      {
        swift_once();
      }

      *(v8 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v27);
      _os_log_impl(&dword_222B39000, v6, v7, "%s Session has 0 or more than 3 turns, and so is out of scope of Messages Abandonment", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x223DCA8C0](v9, -1, -1);
      MEMORY[0x223DCA8C0](v8, -1, -1);
    }

    v10 = type metadata accessor for FeaturisedTurn(0);
    v11 = *(*(v10 - 8) + 56);
    v12 = v10;
    v13 = a2;
    goto LABEL_13;
  }

  if (v3 == 3)
  {
    v15 = a1;
    v16 = type metadata accessor for FeaturisedTurn(0);
    v26 = *(v16 - 8);
    v17 = *(v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + 2 * *(v26 + 72) + *(v16 + 24));

    sub_222B41D48(v18);
    v20 = v19;

    a1 = v15;
    if (v20)
    {

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v21 = sub_222C9431C();
      __swift_project_value_buffer(v21, qword_280FE2340);
      v22 = sub_222C942FC();
      v23 = sub_222C94A3C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v27 = v25;
        *v24 = 136315138;
        if (qword_280FDD6E8 != -1)
        {
          swift_once();
        }

        *(v24 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v27);
        _os_log_impl(&dword_222B39000, v22, v23, "%s Session has 3 turns, but the latter is not empty, and so session is out of scope of Messages Abandonment", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x223DCA8C0](v25, -1, -1);
        MEMORY[0x223DCA8C0](v24, -1, -1);
      }

      v11 = *(v26 + 56);
      v13 = a2;
      v12 = v16;
LABEL_13:

      return v11(v13, 1, 1, v12);
    }
  }

  return sub_222C434E4(a1, a2);
}

uint64_t sub_222BB3EEC(uint64_t a1)
{
  v2 = type metadata accessor for RuleResult();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222C98AE0;
  v10 = (v9 + v8);
  v11 = v6[14];
  *v10 = 0xD00000000000001CLL;
  v10[1] = 0x8000000222CAAC90;
  swift_storeEnumTagMultiPayload();
  v12 = (v10 + v7);
  *v12 = 0xD00000000000001DLL;
  v12[1] = 0x8000000222CA9AF0;
  sub_222B77FE8(a1);
  swift_storeEnumTagMultiPayload();
  sub_222BB4A28(v5, v10 + v7 + v6[14], type metadata accessor for RuleResult);
  v13 = (v10 + 2 * v7);
  v14 = v6[14];
  *v13 = 0xD00000000000001CLL;
  v13[1] = 0x8000000222CA9B40;
  sub_222C432CC(a1, (v13 + v14));
  v15 = v10 + 3 * v7;
  v16 = v6[14];
  *v15 = 0xD00000000000001BLL;
  *(v15 + 1) = 0x8000000222CA9B60;
  sub_222C3D810(a1, &v15[v16]);
  return v9;
}

void *sub_222BB410C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v59 - v4;
  v6 = type metadata accessor for FeaturisedTurn(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  sub_222BB3AD0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_222B6537C(v5);
    if (*(a1 + 16))
    {
LABEL_3:
      v14 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15 = sub_222C9360C();
      v17 = v16;
LABEL_7:
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v21 = sub_222C9431C();
      __swift_project_value_buffer(v21, qword_280FE2340);

      v22 = sub_222C942FC();
      v23 = sub_222C94A3C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v61 = v25;
        *v24 = 136315394;
        if (qword_280FDD6E8 != -1)
        {
          swift_once();
        }

        *(v24 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v61);
        *(v24 + 12) = 2080;
        v26 = sub_222B437C0(v15, v17, &v61);

        *(v24 + 14) = v26;
        _os_log_impl(&dword_222B39000, v22, v23, "%s Skipping conversation with id=%s with no or invalid dismissal features", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v25, -1, -1);
        MEMORY[0x223DCA8C0](v24, -1, -1);
      }

      else
      {
      }

      return MEMORY[0x277D84F90];
    }

LABEL_6:
    v17 = 0x8000000222CA9B80;
    v15 = 0xD000000000000014;
    goto LABEL_7;
  }

  sub_222BB4A28(v5, v13, type metadata accessor for FeaturisedTurn);
  v18 = *&v13[*(v6 + 24)];
  v19 = sub_222B41494(v18);
  if (v20)
  {
    sub_222B73DD0(v13);
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v60 = v19;
  v28 = sub_222BB3EEC(v13);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v29 = sub_222C9431C();
  v30 = __swift_project_value_buffer(v29, qword_280FE2340);
  sub_222B78534(v13, v11);

  v31 = sub_222C942FC();
  v32 = sub_222C94A3C();

  if (os_log_type_enabled(v31, v32))
  {
    *&v59 = v30;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v61 = v34;
    *v33 = 136315650;
    if (qword_280FDD6E8 != -1)
    {
      swift_once();
    }

    *(v33 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v61);
    *(v33 + 12) = 2080;
    sub_222C9367C();
    sub_222B9E5D0();
    v35 = sub_222C9517C();
    v37 = v36;
    sub_222B73DD0(v11);
    v38 = sub_222B437C0(v35, v37, &v61);

    *(v33 + 14) = v38;
    *(v33 + 22) = 2080;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
    v40 = MEMORY[0x223DC94D0](v28, v39);
    v42 = sub_222B437C0(v40, v41, &v61);

    *(v33 + 24) = v42;
    _os_log_impl(&dword_222B39000, v31, v32, "%s Rule Matrix for turnId=%s, rulematrix=%s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v34, -1, -1);
    MEMORY[0x223DCA8C0](v33, -1, -1);
  }

  else
  {

    sub_222B73DD0(v11);
  }

  v43 = sub_222C1EC00(v28);

  if (!v43)
  {
    goto LABEL_42;
  }

  v44 = sub_222B41B30(v18);
  v45 = v44 >> 62;
  if (!v44)
  {
    goto LABEL_27;
  }

  if (!v45)
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  if (sub_222C94C6C() != 1)
  {
LABEL_35:
    v52 = sub_222C942FC();
    LOBYTE(v47) = sub_222C94A3C();
    if (os_log_type_enabled(v52, v47))
    {
      v55 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v55 = 136315394;
      if (qword_280FDD6E8 == -1)
      {
LABEL_37:
        *(v55 + 4) = sub_222B437C0(qword_280FDD6F0, unk_280FDD6F8, &v61);
        *(v55 + 12) = 2048;
        if (v45)
        {
          v57 = sub_222C94C6C();
        }

        else
        {
          v57 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v55 + 14) = v57;

        _os_log_impl(&dword_222B39000, v52, v47, "%s message has %ld recipients, rejecting", v55, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x223DCA8C0](v53, -1, -1);
        MEMORY[0x223DCA8C0](v55, -1, -1);

        goto LABEL_42;
      }

LABEL_49:
      swift_once();
      goto LABEL_37;
    }

LABEL_42:
    sub_222B73DD0(v13);
    return MEMORY[0x277D84F90];
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
  v46 = swift_allocObject();
  v59 = xmmword_222C97C40;
  v47 = v46;
  *(v46 + 16) = xmmword_222C97C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v48 = sub_222C9367C();
  v49 = *(v48 - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v59;
  v54 = *(v49 + 16);
  v53 = (v49 + 16);
  v54(v52 + v51, v13, v48);
  if (!v44)
  {
LABEL_45:
    v56 = 0;
    goto LABEL_46;
  }

  v55 = v44 & 0xFFFFFFFFFFFFFF8;
  if (!v45)
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

  if (!sub_222C94C6C())
  {
LABEL_44:

    goto LABEL_45;
  }

LABEL_30:
  if ((v44 & 0xC000000000000001) != 0)
  {
    v56 = MEMORY[0x223DC9B30](0, v44);
    goto LABEL_33;
  }

  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_49;
  }

  v56 = *(v44 + 32);

LABEL_33:

LABEL_46:
  v47[7] = &type metadata for MessagesAbandonmentClassification;
  v47[8] = &protocol witness table for MessagesAbandonmentClassification;
  v58 = swift_allocObject();
  v47[4] = v58;
  v58[2] = v60;
  v58[3] = v52;
  v58[4] = MEMORY[0x277D84F90];
  v58[5] = v56;
  sub_222B73DD0(v13);
  return v47;
}

uint64_t sub_222BB4A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MessagesContactPartialRepetitionDefinition.__allocating_init()()
{
  v0 = swift_allocObject();
  MessagesContactPartialRepetitionDefinition.init()();
  return v0;
}

uint64_t MessagesContactPartialRepetitionDefinition.init()()
{
  v1 = v0;
  type metadata accessor for MessagesContactPartialRepetitionDefinition();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FC8, &unk_222C9BC60);
  v2 = sub_222C944EC();
  MEMORY[0x223DC9330](v2);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v0 + 16) = 91;
  *(v0 + 24) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  type metadata accessor for EntityPromptClassifier();
  v4 = swift_allocObject();
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD0, &unk_222C9BC70);
  *(v3 + 64) = &off_28360D250;
  *(v3 + 32) = v4;
  *(v1 + 32) = v3;
  return v1;
}

uint64_t sub_222BB4BF0()
{
  v0 = sub_222BAFDE0(&unk_283607BF8);
  result = sub_222BB6FDC(&unk_283607C18);
  qword_280FDBDF8 = v0;
  return result;
}

uint64_t sub_222BB4C30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD8, &qword_222CA5EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  if (qword_280FDBDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_280FDBDF8;
  v2 = type metadata accessor for EntityNodeComparator();
  v3 = swift_allocObject();
  *(v3 + 32) = v1;
  *(v3 + 16) = 0x3FE6666666666666;
  *(v3 + 24) = 0;
  *(v0 + 56) = v2;
  *(v0 + 64) = &protocol witness table for EntityNodeComparator;
  *(v0 + 32) = v3;

  return v0;
}

uint64_t sub_222BB4D04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  type metadata accessor for SuccessfulMessageClassifier();
  v1 = swift_allocObject();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FE0, &qword_222C9BC80);
  *(v0 + 64) = &off_28360D250;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_222BB4DAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_222B43E3C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v10;
    v5 = v11;
    result = v12;
    if (v8 == 1)
    {
      v6 = v9;
      v7 = 1;
    }

    else
    {

      v7 = 0;
      v6 = 0;
      v4 = 0;
      v5 = 0;
      result = 0;
    }

    *a2 = v7;
    a2[1] = v6;
    a2[2] = v4;
    a2[3] = v5;
    a2[4] = result;
  }

  else
  {
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

BOOL sub_222BB4E80(uint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_222B41F28(a1[2]);
  if (v4 & 1) == 0 && (v1 == 0xD000000000000013 ? (v6 = 0x8000000222CA87A0 == v2) : (v6 = 0), v6 || (v7 = v3, v8 = sub_222C951FC(), v3 = v7, (v8)))
  {
    return v3 == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222BB4F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for MessagesGroundTruth();
  *(a5 + v16[5]) = 1;
  *(a5 + v16[6]) = a2;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9);
}

uint64_t sub_222BB5064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v38 = a3;
  v44 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - v12;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v37 = v5;
  v40 = (v5 + 48);
  v41 = (v5 + 56);
  v46 = *a1;

  v45 = 0;
  while (1)
  {
    v25 = v45;
    v26 = *(v46 + 16);
    if (v45 == v26)
    {
      v27 = 1;
      v29 = v43;
      v28 = v44;
      v30 = v42;
      goto LABEL_15;
    }

    v29 = v43;
    v28 = v44;
    v30 = v42;
    if (v45 >= v26)
    {
      break;
    }

    sub_222BB6F14(v46 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v42, type metadata accessor for FeaturisedTurn);
    v27 = 0;
    ++v25;
LABEL_15:
    (*v41)(v30, v27, 1, v28);
    sub_222B5EC84(v30, v29);
    if ((*v40)(v29, 1, v28) == 1)
    {

      v35 = v38;
      *v38 = 0u;
      v35[1] = 0u;
      return result;
    }

    v45 = v25;
    v31 = v29;
    v32 = v39;
    sub_222B441A4(v31, v39, type metadata accessor for FeaturisedTurn);
    v33 = *(v32 + *(v28 + 28));

    sub_222BB6F7C(v32, type metadata accessor for FeaturisedTurn);

    v34 = v33;
    if (v33)
    {
      v16 = (v33 + 64);
      v17 = -1;
      while (1)
      {
        ++v17;
        v18 = *(v34 + 16);
        if (v17 == v18)
        {
          break;
        }

        if (v17 >= v18)
        {
          __break(1u);
          goto LABEL_22;
        }

        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v21 = *(v16 - 2);
        v22 = *(v16 - 1);
        v23 = *v16;
        if (v20 == v13 && v19 == v14)
        {
          v20 = v13;
LABEL_19:

          v47[0] = v20;
          v47[1] = v19;
          v47[2] = v21;
          v47[3] = v22;
          v47[4] = v23;
          extractContactReference(event:)(v47, v38);
        }

        v16 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

void *sub_222BB53E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_222B41660(*(a1 + 16));
  if (!result)
  {
    goto LABEL_6;
  }

  if (!result[2])
  {

LABEL_6:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v4 = result[5];
  v5 = result[6];
  v6 = result[7];
  v7 = result[8];
  v8 = result[9];

  if (v6)
  {

    v9 = v8;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v9 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
}

unint64_t sub_222BB54C4(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  result = sub_222B41B30(*(a1 + *(v2 + 24)));
  if (!result)
  {
    return result;
  }

  v4 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_222C94C6C();
    result = v6;
    if (v7 == 1)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DC9B30](0);
    goto LABEL_7;
  }

  if (*(v4 + 16))
  {
    v5 = *(result + 32);

LABEL_7:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_222BB5590(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FeaturisedSession(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16) >= 9uLL)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    sub_222BB6F14(a1, v11, type metadata accessor for FeaturisedSession);

    v13 = sub_222C942FC();
    v14 = sub_222C94A3C();

    if (!os_log_type_enabled(v13, v14))
    {
      sub_222BB6F7C(v11, type metadata accessor for FeaturisedSession);
      goto LABEL_20;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v27);
    *(v15 + 12) = 2048;
    v17 = *(*v11 + 16);
    sub_222BB6F7C(v11, type metadata accessor for FeaturisedSession);
    *(v15 + 14) = v17;
    _os_log_impl(&dword_222B39000, v13, v14, "%s Turn has %ld, over limit threshold. Skipping partial repetition ground truth generation", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223DCA8C0](v16, -1, -1);
    v18 = v15;
LABEL_18:
    MEMORY[0x223DCA8C0](v18, -1, -1);
LABEL_20:

    return 0;
  }

  if (a3 & 1) != 0 && (sub_222BB6040(a1))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);

    v13 = sub_222C942FC();
    v20 = sub_222C94A3C();

    if (!os_log_type_enabled(v13, v20))
    {
      goto LABEL_20;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v27);
    v23 = "%s Session is composite and contains out of scope elements. Skipping partial repetition ground truth generation";
    goto LABEL_17;
  }

  if (sub_222BB5998(a2))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);

    v13 = sub_222C942FC();
    v20 = sub_222C94A3C();

    if (!os_log_type_enabled(v13, v20))
    {
      goto LABEL_20;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v27);
    v23 = "%s Prompt selected in session. Skipping partial repetition ground truth generation";
LABEL_17:
    _os_log_impl(&dword_222B39000, v13, v20, v23, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x223DCA8C0](v22, -1, -1);
    v18 = v21;
    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_222BB5998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for EntityPromptClassification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v26 = &v26 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = a1 + 32;
    v16 = MEMORY[0x277D84F90];
    v27 = v11;
    do
    {
      sub_222B43E3C(v15, v29);
      sub_222B405A0(v29, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v17 = swift_dynamicCast();
      (*(v7 + 56))(v5, v17 ^ 1u, 1, v6);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        result = sub_222B4FCD4(v5, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222B441A4(v5, v11, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_222B49F90(0, v16[2] + 1, 1, v16);
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = sub_222B49F90(v18 > 1, v19 + 1, 1, v16);
        }

        v16[2] = v19 + 1;
        v20 = v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19;
        v11 = v27;
        result = sub_222B441A4(v27, v20, type metadata accessor for EntityPromptClassification);
      }

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v21 = 0;
  v22 = v16[2];
  v23 = v26;
  while (1)
  {
    v24 = v21;
    if (v22 == v21)
    {
      goto LABEL_17;
    }

    if (v21 >= v16[2])
    {
      break;
    }

    sub_222BB6F14(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21++, v23, type metadata accessor for EntityPromptClassification);
    v25 = *(v23 + 48);

    result = sub_222BB6F7C(v23, type metadata accessor for EntityPromptClassification);
    if (v25)
    {

LABEL_17:

      return v22 != v24;
    }
  }

  __break(1u);
  return result;
}

uint64_t MessagesContactPartialRepetitionDefinition.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t MessagesContactPartialRepetitionDefinition.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_222BB5DC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for MessagesGroundTruth();
  *(a5 + v16[5]) = 1;
  *(a5 + v16[6]) = v7;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9);
}

unint64_t sub_222BB5F44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  result = sub_222B41B30(*(a1 + *(v4 + 24)));
  if (!result)
  {
    goto LABEL_10;
  }

  v6 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v8 = result;
  v9 = sub_222C94C6C();
  result = v8;
  if (v9 != 1)
  {
LABEL_9:

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223DC9B30](0);
    goto LABEL_7;
  }

  if (*(v6 + 16))
  {
    v7 = *(result + 32);

LABEL_7:

LABEL_11:
    *a2 = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_222BB6040(uint64_t *a1)
{
  v60 = type metadata accessor for FeaturisedTurn(0);
  v55 = *(v60 - 8);
  v2 = *(v55 + 64);
  v3 = MEMORY[0x28223BE20](v60);
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v57 = &v50 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  v12 = *a1;
  v52 = *(*a1 + 16);
  if (v52)
  {
    v13 = 0;
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v59 = v12 + v56;
    v54 = v12;
    v53 = &v50 - v10;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        goto LABEL_62;
      }

      v14 = *(v55 + 72);
      sub_222BB6F14(v59 + v14 * v13, v11, type metadata accessor for FeaturisedTurn);
      v15 = *&v11[*(v60 + 24)];
      v16 = *(v15 + 16);
      if (v16)
      {
        break;
      }

LABEL_3:
      v11 = v53;
      sub_222BB6F7C(v53, type metadata accessor for FeaturisedTurn);
      ++v13;
      v12 = v54;
      if (v13 == v52)
      {
        goto LABEL_46;
      }
    }

    v17 = 0;
    v18 = v15 + 32;
    while (v17 < *(v15 + 16))
    {
      sub_222B43E3C(v18, v64);
      sub_222B405A0(v64, &v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      sub_222C93FCC();
      if (swift_dynamicCast())
      {

        sub_222BB6F7C(v53, type metadata accessor for FeaturisedTurn);
        v19 = v13 + 1;
        if (!__OFADD__(v13, 1))
        {
          if ((v19 & 0x8000000000000000) == 0)
          {
            if (*(v54 + 16) >= v19)
            {

              v20 = 0;
              v21 = MEMORY[0x277D84F90];
              do
              {
                sub_222BB6F14(v59 + v20 * v14, v9, type metadata accessor for FeaturisedTurn);
                v22 = *&v9[*(v60 + 24)];
                v23 = *(v22 + 16);
                if (!v23)
                {
LABEL_15:
                  sub_222BB6F7C(v9, type metadata accessor for FeaturisedTurn);
                  goto LABEL_16;
                }

                v24 = 0;
                v25 = v22 + 32;
                while (1)
                {
                  if (v24 >= *(v22 + 16))
                  {
                    __break(1u);
LABEL_53:

                    if (qword_280FDFE78 != -1)
                    {
                      swift_once();
                    }

                    v45 = sub_222C9431C();
                    __swift_project_value_buffer(v45, qword_280FE2340);
                    v46 = v51;

                    v34 = sub_222C942FC();
                    v47 = sub_222C94A3C();

                    if (os_log_type_enabled(v34, v47))
                    {
                      v48 = swift_slowAlloc();
                      v49 = swift_slowAlloc();
                      *&v62 = v49;
                      *v48 = 136315138;
                      *(v48 + 4) = sub_222B437C0(*(v46 + 16), *(v46 + 24), &v62);
                      _os_log_impl(&dword_222B39000, v34, v47, "%s Found payload before dismissal. Composite session is out of scope.", v48, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0Tm(v49);
                      MEMORY[0x223DCA8C0](v49, -1, -1);
                      MEMORY[0x223DCA8C0](v48, -1, -1);
                    }

                    else
                    {
LABEL_58:
                    }

                    sub_222B4FCD4(v64, &qword_27D024860, &unk_222C962F0);
                    return 1;
                  }

                  sub_222B43E3C(v25, v64);
                  sub_222B405A0(v64, &v62);
                  type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
                  if (swift_dynamicCast())
                  {
                    break;
                  }

                  ++v24;
                  v25 += 40;
                  if (v23 == v24)
                  {
                    goto LABEL_15;
                  }
                }

                sub_222B441A4(v9, v58, type metadata accessor for FeaturisedTurn);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v61[0] = v21;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_222B4C3D4(0, *(v21 + 16) + 1, 1);
                  v21 = v61[0];
                }

                v28 = *(v21 + 16);
                v27 = *(v21 + 24);
                if (v28 >= v27 >> 1)
                {
                  sub_222B4C3D4(v27 > 1, v28 + 1, 1);
                  v21 = v61[0];
                }

                *(v21 + 16) = v28 + 1;
                sub_222B441A4(v58, v21 + v56 + v28 * v14, type metadata accessor for FeaturisedTurn);
LABEL_16:
                ++v20;
              }

              while (v20 != v19);

              v29 = *(v21 + 16);
              if (v29)
              {
                v30 = 0;
                v60 = *(v60 + 24);
                v31 = v21 + v56;
                while (1)
                {
                  if (v30 >= *(v21 + 16))
                  {
                    goto LABEL_61;
                  }

                  v33 = v57;
                  sub_222BB6F14(v31 + v30 * v14, v57, type metadata accessor for FeaturisedTurn);
                  v34 = *(v33 + v60);

                  sub_222BB6F7C(v33, type metadata accessor for FeaturisedTurn);
                  isa = v34[2].isa;
                  if (isa)
                  {
                    v36 = 0;
                    v37 = &v34[4];
                    while (v36 < v34[2].isa)
                    {
                      sub_222B43E3C(v37, &v62);
                      sub_222B43E3C(&v62, v61);
                      type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
                      if (swift_dynamicCast())
                      {

                        sub_222B405A0(&v62, v64);
                        goto LABEL_41;
                      }

                      v36 = (v36 + 1);
                      __swift_destroy_boxed_opaque_existential_0Tm(&v62);
                      v37 += 40;
                      if (isa == v36)
                      {
                        goto LABEL_39;
                      }
                    }

                    __break(1u);
                    goto LABEL_58;
                  }

LABEL_39:

                  v65 = 0;
                  memset(v64, 0, sizeof(v64));
LABEL_41:
                  sub_222B43F34(v64, &v62);
                  if (!v63)
                  {
                    break;
                  }

                  type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    v32 = v64;
                    goto LABEL_31;
                  }

                  sub_222C93EFC();

                  if (v62 == 1)
                  {
                    goto LABEL_53;
                  }

                  sub_222B4FCD4(v64, &qword_27D024860, &unk_222C962F0);

LABEL_32:
                  if (++v30 == v29)
                  {
                    goto LABEL_50;
                  }
                }

                sub_222B4FCD4(v64, &qword_27D024860, &unk_222C962F0);
                v32 = &v62;
LABEL_31:
                sub_222B4FCD4(v32, &qword_27D024860, &unk_222C962F0);
                goto LABEL_32;
              }

LABEL_50:

              return 0;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      ++v17;
      v18 += 40;
      if (v16 == v17)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_46:
  if (qword_280FDFE78 != -1)
  {
LABEL_66:
    swift_once();
  }

  v38 = sub_222C9431C();
  __swift_project_value_buffer(v38, qword_280FE2340);
  v39 = v51;

  v40 = sub_222C942FC();
  v41 = sub_222C94A3C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v64[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_222B437C0(*(v39 + 16), *(v39 + 24), v64);
    _os_log_impl(&dword_222B39000, v40, v41, "%s isCompositeSessionOutOfScope: No dismissal turn - not checking for payload", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x223DCA8C0](v43, -1, -1);
    MEMORY[0x223DCA8C0](v42, -1, -1);
  }

  return 0;
}

uint64_t sub_222BB6938(uint64_t *a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v21 = v2;
    while (v12 < *(v10 + 16))
    {
      v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = *(v3 + 72);
      sub_222BB6F14(v10 + v14 + v15 * v12, v9, type metadata accessor for FeaturisedTurn);
      v16 = *&v9[*(v2 + 24)];
      if (sub_222B41D30(v16) && (, sub_222B417F4(v16)))
      {

        sub_222B441A4(v9, v22, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v13 + 16) + 1, 1);
          v13 = v23;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_222B4C3D4(v18 > 1, v19 + 1, 1);
          v13 = v23;
        }

        *(v13 + 16) = v19 + 1;
        result = sub_222B441A4(v22, v13 + v14 + v19 * v15, type metadata accessor for FeaturisedTurn);
        v2 = v21;
      }

      else
      {
        result = sub_222BB6F7C(v9, type metadata accessor for FeaturisedTurn);
      }

      if (v11 == ++v12)
      {
        return v13;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_222BB6B88(uint64_t a1, uint64_t a2)
{
  result = sub_222BB6C84(&qword_280FDBDE8, a2, type metadata accessor for MessagesContactPartialRepetitionDefinition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222BB6C84(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222BB6F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BB6F7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

SiriPrivateLearningInference::ContactSuggestionTag_optional __swiftcall ContactSuggestionTag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactSuggestionTag.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x654D6E69616D6F64;
  v3 = 0x656D7269666E6F63;
  v4 = 0x6574616E696D6F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6974636572726F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68506E69616D6F64;
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

unint64_t sub_222BB7160()
{
  result = qword_280FDF1D8;
  if (!qword_280FDF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDF1D8);
  }

  return result;
}

uint64_t sub_222BB71B4()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BB72BC()
{
  *v0;
  *v0;
  *v0;
  sub_222C9452C();
}

uint64_t sub_222BB73B0()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222BB74C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736567617373;
  v4 = 0x654D6E69616D6F64;
  v5 = 0x656D7269666E6F63;
  v6 = 0xE900000000000064;
  v7 = 0x6574616E696D6F6ELL;
  v8 = 0xE900000000000064;
  if (v2 != 3)
  {
    v7 = 0x6974636572726F63;
    v8 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1)
  {
    v4 = 0x68506E69616D6F64;
    v3 = 0xEF6C6C6143656E6FLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_222BB7660()
{
  result = qword_27D025FE8;
  if (!qword_27D025FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025FE8);
  }

  return result;
}

void *sub_222BB76B4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_222C94C2C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_222BB7DF8(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_222BB7734@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_222C94C2C();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 5;
  }

  else
  {
    result = sub_222BB7F28(result, *(a1 + 36), a1, &v7);
    v6 = v7;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_222BB77B0(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = sub_222C94D4C();
  swift_getObjectType();
  result = sub_222C94D4C();
  if (v5 == result)
  {
    v7 = sub_222C94D5C();
    swift_unknownObjectRelease();
    if (v7)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      sub_222C94F1C();
      swift_unknownObjectRelease();
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_222BB78A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_222C94C2C();
  if (v5 == 1 << *(a1 + 32))
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_222BB7E8C(&v8, v5, *(a1 + 36), 0, a1);
    *(a2 + 8) = v7;
    result = *&v8;
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t Conversation.getTimestamp()@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v32 = &v29 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_222C93BEC();
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[4];
  v13 = v9[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
LABEL_8:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_222C94D4C();
  if (v17 == sub_222C94D4C())
  {
    while (1)
    {
      v14 = sub_222C94D5C();
      swift_unknownObjectRelease();
      if (v14)
      {
        break;
      }

      sub_222C94F1C();
      Turn.getTimestamp()(v8);

      v15 = sub_222C935EC();
      v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
      sub_222BA2994(v8);
      if (v16 != 1)
      {
        break;
      }

      if (swift_isUniquelyReferenced_nonNull())
      {
        sub_222C94EEC();
        goto LABEL_8;
      }

      sub_222C94EFC();
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = sub_222C94D4C();
      if (v30 != sub_222C94D4C())
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    __break(1u);
  }

  v18 = v9[4];
  v19 = v9[5];
  swift_unknownObjectRetain();
  v20 = sub_222C94D4C();
  swift_getObjectType();
  result = sub_222C94D4C();
  if (v20 == result)
  {
    v22 = sub_222C94D5C();
    swift_unknownObjectRelease();
    if (v22)
    {
      swift_unknownObjectRelease();
      v23 = sub_222C935EC();
      (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
    }

    sub_222C94F1C();
    v24 = v32;
    Turn.getTimestamp()(v32);

    v25 = v31;
    sub_222B81ED0(v24, v31);
    v26 = sub_222C935EC();
    v27 = *(v26 - 8);
    result = (*(v27 + 48))(v25, 1, v26);
    if (result != 1)
    {
      v28 = v33;
      (*(v27 + 32))(v33, v25, v26);
      swift_unknownObjectRelease();
      sub_222BA2994(v24);
      (*(v27 + 56))(v28, 0, 1, v26);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Conversation.getConversationId()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_222C93BEC();
  v3 = sub_222BB77B0(v2);

  if (v3)
  {
    sub_222C941DC();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_222C9367C();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

void *sub_222BB7DF8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_222BB7E8C(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 16 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_222BB7F28@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_222BB805C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationPolicyAddDefaultTag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222BB80B8(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_222C9448C();
  v4 = [v2 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_222B9A614();
  *(v5 + 32) = 0x68506E69616D6F64;
  *(v5 + 40) = 0xEF6C6C6143656E6FLL;
  v6 = sub_222C949EC();
  [v4 setPredicate_];

  [v4 setFetchLimit_];
  v7 = [a1 destinationContext];
  sub_222B505A8(0, &qword_27D025FF0, 0x277CBE438);
  v8 = sub_222C94B2C();

  if (v8 >> 62)
  {
    result = sub_222C94C6C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v13 = objc_opt_self();
    v14 = sub_222C9448C();
    v15 = [a1 destinationContext];
    v16 = [v13 insertNewObjectForEntityForName:v14 inManagedObjectContext:v15];

    v17 = sub_222C9448C();
    v18 = sub_222C9448C();
    [v16 setValue:v17 forKey:v18];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_222C9BAE0;
    *(v19 + 32) = v16;

    return v19;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x223DC9B30](0, v8);
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_6:
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_222C9BAE0;
    *(v12 + 32) = v11;

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t ContactSuggestionStoreCandidateAdapter.__allocating_init(store:requiredTags:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = sub_222B63530(MEMORY[0x277D84F90]);
  sub_222B505F4(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t ContactSuggestionStoreCandidateAdapter.init(store:requiredTags:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 64) = sub_222B63530(MEMORY[0x277D84F90]);
  sub_222B505F4(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_222BB84FC(uint64_t a1)
{
  v3 = type metadata accessor for PlusContactSuggestion();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  swift_beginAccess();
  v31 = v1;
  v11 = v1[8];
  if (*(v11 + 16))
  {

    v12 = sub_222B8CCFC(a1);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      return v14;
    }
  }

  v15 = v31[5];
  v16 = v31[6];
  __swift_project_boxed_opaque_existential_1(v31 + 2, v15);
  v17 = *(v16 + 56);
  v30 = a1;
  result = v17(a1, v15, v16);
  v19 = result;
  v34 = *(result + 16);
  if (!v34)
  {
    v14 = MEMORY[0x277D84F90];
    v21 = v31;
LABEL_17:

    swift_beginAccess();
    v27 = v30;

    v28 = v21[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v21[8];
    v21[8] = 0x8000000000000000;
    sub_222BAA7DC(v14, v27, isUniquelyReferenced_nonNull_native);

    v21[8] = v35;
    swift_endAccess();
    return v14;
  }

  v20 = 0;
  v14 = MEMORY[0x277D84F90];
  v21 = v31;
  v32 = v8;
  v33 = v3;
  while (v20 < *(v19 + 16))
  {
    v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v23 = *(v4 + 72);
    sub_222BB8CF4(v19 + v22 + v23 * v20, v10);
    if (sub_222BB2AB8(*&v10[*(v3 + 36)], v21[7]))
    {
      sub_222BB8DB4(v10, v8);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v14;
      if ((v24 & 1) == 0)
      {
        sub_222B4C6E8(0, *(v14 + 16) + 1, 1);
        v21 = v31;
        v14 = v36;
      }

      v26 = *(v14 + 16);
      v25 = *(v14 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_222B4C6E8(v25 > 1, v26 + 1, 1);
        v21 = v31;
        v14 = v36;
      }

      *(v14 + 16) = v26 + 1;
      v8 = v32;
      result = sub_222BB8DB4(v32, v14 + v22 + v26 * v23);
      v3 = v33;
    }

    else
    {
      result = sub_222BB8D58(v10);
    }

    if (v34 == ++v20)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222BB8810(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v5 = *(v2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  sub_222BAA7DC(a2, a1, isUniquelyReferenced_nonNull_native);

  *(v2 + 64) = v8;
  return swift_endAccess();
}

uint64_t sub_222BB88B0()
{
  v1 = v0;
  v2 = type metadata accessor for PlusContactSuggestion();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = v0[8];
  v7 = *(v6 + 64);
  v27 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v26 = (v8 + 63) >> 6;

  v12 = 0;
  v28 = result;
LABEL_5:
  while (v10)
  {
LABEL_10:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(result + 56) + ((v12 << 9) | (8 * v14)));
    v16 = *(v15 + 16);
    if (v16)
    {
      v29 = v15 + ((*(v30 + 80) + 32) & ~*(v30 + 80));

      v17 = 0;
      while (v17 < *(v15 + 16))
      {
        sub_222BB8CF4(v29 + *(v30 + 72) * v17, v5);
        v19 = v1[5];
        v18 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
        if (((*(v18 + 24))(v5, v19, v18) & 1) == 0)
        {
          v20 = v1[5];
          v21 = v1[6];
          __swift_project_boxed_opaque_existential_1(v1 + 2, v20);
          if (((*(v21 + 8))(v5, v20, v21) & 1) == 0)
          {
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v22 = sub_222C9431C();
            __swift_project_value_buffer(v22, qword_280FE2340);
            v23 = sub_222C942FC();
            v24 = sub_222C94A4C();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_222B39000, v23, v24, "Failed to write updated candiates to the suggestion store", v25, 2u);
              MEMORY[0x223DCA8C0](v25, -1, -1);
            }
          }
        }

        ++v17;
        result = sub_222BB8D58(v5);
        if (v16 == v17)
        {

          result = v28;
          goto LABEL_5;
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v26)
    {
    }

    v10 = *(v27 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t *ContactSuggestionStoreCandidateAdapter.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t ContactSuggestionStoreCandidateAdapter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_222BB8C54(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  swift_beginAccess();

  v6 = *(v5 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + 64);
  *(v5 + 64) = 0x8000000000000000;
  sub_222BAA7DC(a2, v4, isUniquelyReferenced_nonNull_native);

  *(v5 + 64) = v9;
  return swift_endAccess();
}

uint64_t sub_222BB8CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusContactSuggestion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BB8D58(uint64_t a1)
{
  v2 = type metadata accessor for PlusContactSuggestion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BB8DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusContactSuggestion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_222BB8E1C()
{
  result = qword_27D025FF8;
  if (!qword_27D025FF8)
  {
    type metadata accessor for PlusContactSuggestion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025FF8);
  }

  return result;
}

uint64_t sub_222BB8F88(uint64_t a1)
{
  v2 = type metadata accessor for QuickHangupClassification();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  sub_222B43E3C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  if (swift_dynamicCast())
  {
    sub_222BB90A8(v5);
    return 1;
  }

  else
  {
    sub_222B43E3C(a1, v9);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = result;

      return v7;
    }
  }

  return result;
}

uint64_t sub_222BB90A8(uint64_t a1)
{
  v2 = type metadata accessor for QuickHangupClassification();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Double_optional __swiftcall String.scoreRatcliffObershelp(between:)(Swift::String between)
{
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  object = between._object;
  countAndFlagsBits = between._countAndFlagsBits;
  v7 = HIBYTE(between._object) & 0xF;
  if ((between._object & 0x2000000000000000) == 0)
  {
    v7 = between._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_11:
    LOBYTE(v10) = 0;
    goto LABEL_28;
  }

  if (v1 == between._countAndFlagsBits && v2 == between._object || (v8 = v1, v9 = v2, (sub_222C951FC() & 1) != 0))
  {
    LOBYTE(v10) = 0;
    goto LABEL_28;
  }

  v11 = sub_222C9453C();
  v10 = sub_222C9453C();
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = String.commonSequences(between:)(countAndFlagsBits, object, v8, v9);
  v14 = *(v13 + 16);
  if (v14)
  {
    v28 = MEMORY[0x277D84F90];
    sub_222B4C7F8(0, v14, 0);
    v15 = v28;
    v16 = (v13 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      v19 = sub_222C9453C();

      v21 = *(v28 + 16);
      v20 = *(v28 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_222B4C7F8((v20 > 1), v21 + 1, 1);
      }

      *(v28 + 16) = v21 + 1;
      *(v28 + 8 * v21 + 32) = v19;
      v16 += 2;
      --v14;
    }

    while (v14);

    v22 = *(v28 + 16);
    if (v22)
    {
LABEL_19:
      v23 = 0;
      v24 = 32;
      while (1)
      {
        v25 = *(v15 + v24);
        v26 = __OFADD__(v23, v25);
        v23 += v25;
        if (v26)
        {
          break;
        }

        v24 += 8;
        if (!--v22)
        {

          v27 = v23;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
      goto LABEL_19;
    }
  }

  v27 = 0.0;
LABEL_25:
  v3 = 2.0 / v12 * v27;
  LOBYTE(v10) = LOBYTE(v3);
LABEL_28:
  result.value = v3;
  result.is_nil = v10;
  return result;
}

uint64_t String.commonSequences(between:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = MEMORY[0x277D84F90];
  v11 = sub_222BB98E0();
  if (v11 < 1)
  {
    return v10;
  }

  v15 = v11;
  v16 = v12;
  v17 = v12 - v11;
  if (__OFSUB__(v12, v11))
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v13;
  v18 = sub_222C9457C();
  v14 = sub_222C9457C() >> 14;
  if (v14 < v18 >> 14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v98 = v15;
  v99 = v4;
  v96 = a1;
  v19 = sub_222C9462C();
  v5 = MEMORY[0x223DC92B0](v19);
  v93 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC0, &qword_222C96A98);
  inited = swift_initStackObject();
  v97 = xmmword_222C96900;
  *(inited + 16) = xmmword_222C96900;

  a1 = sub_222BB9D18(v17);
  v4 = v22;
  v17 = v23;
  v15 = v24;

  *(inited + 32) = a1;
  *(inited + 40) = v4;
  *(inited + 48) = v17;
  *(inited + 56) = v15;

  v25 = sub_222C9453C();
  v26 = __OFSUB__(v25, v16);
  v27 = v25 - v16;
  if (!v26)
  {
    v92 = v5;
    v28 = sub_222BB9BC0(v27, a3, a4);
    v5 = v29;
    v31 = v30;
    v16 = v32;

    v94 = v31;
    v95 = v28;
    *(inited + 64) = v28;
    *(inited + 72) = v5;
    *(inited + 80) = v31;
    *(inited + 88) = v16;
    v100 = MEMORY[0x277D84F90];
    sub_222B4C418(0, 2, 0);
    v33 = v100;
    v34 = *(inited + 32);
    v35 = *(inited + 40);
    v36 = *(inited + 48);
    v37 = *(inited + 56);

    v4 = MEMORY[0x223DC92B0](v34, v35, v36, v37);
    a1 = v38;

    v15 = v100[2];
    v14 = v100[3];
    v17 = v15 + 1;
    if (v15 < v14 >> 1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  sub_222B4C418((v14 > 1), v17, 1);
  v33 = v100;
LABEL_6:
  v33[2] = v17;
  v39 = &v33[2 * v15];
  v39[4] = v4;
  v39[5] = a1;

  v40 = MEMORY[0x223DC92B0](v95, v5, v94, v16);
  v42 = v41;

  v101 = v33;
  v44 = v33[2];
  v43 = v33[3];
  v45 = v44 + 1;
  if (v44 >= v43 >> 1)
  {
    sub_222B4C418((v43 > 1), v44 + 1, 1);
  }

  v33[2] = v45;
  v46 = &v33[2 * v44];
  v46[4] = v40;
  v46[5] = v42;
  v47 = swift_initStackObject();
  *(v47 + 16) = v97;
  v48 = v98;
  v49 = v99;
  v50 = v99 - v98;
  if (__OFSUB__(v99, v98))
  {
    __break(1u);
  }

  else
  {
    v51 = v47;

    v44 = v96;
    v50 = sub_222BB9D18(v50);
    v53 = v52;
    v45 = v54;
    v56 = v55;

    v51[4] = v50;
    v51[5] = v53;
    v51[6] = v45;
    v51[7] = v56;

    v57 = sub_222C9453C();
    v26 = __OFSUB__(v57, v99);
    v58 = v57 - v99;
    if (!v26)
    {
      v59 = sub_222BB9BC0(v58, v96, a2);
      v61 = v60;
      v49 = v62;
      v50 = v63;

      v98 = v61;
      v99 = v59;
      v51[8] = v59;
      v51[9] = v61;
      v51[10] = v49;
      v51[11] = v50;
      v101 = MEMORY[0x277D84F90];
      sub_222B4C418(0, 2, 0);
      v64 = v101;
      v65 = v51[4];
      v66 = v51[5];
      v67 = v51[6];
      v68 = v51[7];

      a2 = MEMORY[0x223DC92B0](v65, v66, v67, v68);
      v15 = v69;

      v44 = v101[2];
      v48 = v101[3];
      v45 = v44 + 1;
      if (v44 < v48 >> 1)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  sub_222B4C418((v48 > 1), v45, 1);
  v64 = v101;
LABEL_11:
  v64[2] = v45;
  v70 = &v64[2 * v44];
  v70[4] = a2;
  v70[5] = v15;

  v71 = MEMORY[0x223DC92B0](v99, v98, v49, v50);
  v73 = v72;

  v75 = v64[2];
  v74 = v64[3];
  if (v75 >= v74 >> 1)
  {
    sub_222B4C418((v74 > 1), v75 + 1, 1);
  }

  v64[2] = v75 + 1;
  v76 = &v64[2 * v75];
  v76[4] = v71;
  v76[5] = v73;
  result = sub_222B49E84(0, 1, 1, MEMORY[0x277D84F90]);
  v78 = result;
  v80 = *(result + 16);
  v79 = *(result + 24);
  if (v80 >= v79 >> 1)
  {
    result = sub_222B49E84((v79 > 1), v80 + 1, 1, result);
    v78 = result;
  }

  *(v78 + 16) = v80 + 1;
  v81 = v78 + 16 * v80;
  *(v81 + 32) = v92;
  *(v81 + 40) = v93;
  v102 = v78;
  if (!v33[2])
  {
    __break(1u);
    goto LABEL_29;
  }

  if (!v64[2])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v83 = v33[4];
  v82 = v33[5];
  v84 = v64[4];
  v85 = v64[5];

  v86 = String.commonSequences(between:)(v84, v85, v83, v82);

  result = sub_222B48F64(v86);
  if (v33[2] < 2uLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v88 = v33[6];
  v87 = v33[7];

  if (v64[2] >= 2uLL)
  {
    v89 = v64[6];
    v90 = v64[7];

    v91 = String.commonSequences(between:)(v89, v90, v88, v87);

    sub_222B48F64(v91);
    return v102;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_222BB98E0()
{
  v0 = sub_222C9453C();
  v1 = v0 + 1;
  if (__OFADD__(v0, 1))
  {
    goto LABEL_46;
  }

  if (v1 < 0)
  {
    goto LABEL_47;
  }

  if (v0 == -1)
  {
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = v0;
    v3 = sub_222C9478C();
    *(v3 + 16) = v1;
    bzero((v3 + 32), 8 * v2 + 8);
  }

  v4 = sub_222C9453C();
  if (__OFADD__(v4, 1))
  {
    goto LABEL_48;
  }

  v5 = sub_222BB9C7C(v3, v4 + 1);

  v31 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v6 = sub_222C9459C();
    if (!v7)
    {
      break;
    }

    v8 = v6;
    v9 = v7;
    v10 = 0;
    v32 = 0;
    v33 = 0;
    v11 = 0;
    v12 = v31 + 4;
    while (1)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = 0;
LABEL_13:
      v16 = v15;
      while (1)
      {
        v18 = v16;
        v19 = sub_222C9459C();
        if (!v20)
        {
          break;
        }

        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
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
          goto LABEL_45;
        }

        if (v8 == v19 && v9 == v20)
        {

LABEL_20:
          v21 = v31[2];
          if (v10 >= v21)
          {
            goto LABEL_40;
          }

          v22 = v12[v10];
          if (v18 >= *(v22 + 16))
          {
            goto LABEL_41;
          }

          v23 = *(v22 + 8 * v18 + 32);
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_42;
          }

          if (v14 >= v21)
          {
            goto LABEL_43;
          }

          v25 = v12[v14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v12[v14] = v25;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v25 = sub_222B64B70(v25);
          v12[v14] = v25;
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

LABEL_26:
          if (v15 >= *(v25 + 2))
          {
            goto LABEL_44;
          }

          *&v25[8 * v15 + 32] = v24;
          v27 = v11 < v24;
          if (v11 <= v24)
          {
            v11 = v24;
          }

          if (v27)
          {
            v28 = v15;
          }

          else
          {
            v28 = v33;
          }

          v29 = v32;
          if (v27)
          {
            v29 = v10 + 1;
          }

          v32 = v29;
          v33 = v28;
          goto LABEL_13;
        }

        v17 = sub_222C951FC();

        v16 = v18 + 1;
        if (v17)
        {
          goto LABEL_20;
        }
      }

      v8 = sub_222C9459C();
      v9 = v13;
      ++v10;
      if (!v13)
      {
        goto LABEL_38;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v31 = sub_222B64B84(v31);
  }

LABEL_37:
  v11 = 0;
LABEL_38:

  return v11;
}

unint64_t sub_222BB9BC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_222C9456C();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_222C9462C();
}

uint64_t sub_222BB9C7C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EE0, &qword_222C96C90);
    v4 = sub_222C9478C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_222BB9D18(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_222C9456C();

    return sub_222C9462C();
  }

  return result;
}

uint64_t sub_222BB9DB4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v21 = *a1;
  v22 = *(a1 + 1);
  v23 = v3;
  v4 = v22;
  if (v22)
  {

    v5 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_222B4B1F8(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_222B4B1F8((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[32 * v7];
    *(v8 + 4) = v2;
    *(v8 + 5) = v4;
    *(v8 + 6) = 0;
    *(v8 + 7) = 0;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  sub_222BBA208(&v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026018, &qword_222C9C060);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222C96900;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026020, &qword_222C9C068);
  v11 = swift_allocObject();
  *(v11 + 16) = 0x3FB999999999999ALL;
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_222B61940(&qword_27D026028, &qword_27D026020, &qword_222C9C068);
  *(v9 + 32) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026030, &qword_222C9C070);
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v9 + 96) = v12;
  *(v9 + 104) = sub_222B61940(&qword_27D026038, &qword_27D026030, &qword_222C9C070);
  *(v9 + 72) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026040, &qword_222C9C078);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C96900;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026048, &qword_222C9C080);
  v16 = swift_allocObject();
  *(v14 + 56) = v15;
  *(v14 + 64) = sub_222B61940(&qword_27D026050, &qword_27D026048, &qword_222C9C080);
  *(v14 + 32) = v16;
  v17 = sub_222BAF9C8(&unk_283607D20);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026058, &qword_222C9C088);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v14 + 96) = v18;
  *(v14 + 104) = sub_222B61940(&qword_27D026060, &qword_27D026058, &qword_222C9C088);
  *(v14 + 72) = v19;
  *(v1 + 16) = v9;
  *(v1 + 24) = v14;
  return v1;
}

uint64_t type metadata accessor for ContactSuggestionCandidateNominator()
{
  result = qword_27D026000;
  if (!qword_27D026000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}