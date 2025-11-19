uint64_t sub_222ABAAF8()
{
  v1 = *(v0 + 24);
  sub_222B02A58();
  return v3;
}

uint64_t sub_222ABAB60(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - v7;
  v9 = sub_222ABC074(a1);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 candidateForUniversalSuggestion];
  if (!v11)
  {

LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v12 = qword_27D01C548;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_222B02148();
  __swift_project_value_buffer(v14, qword_27D01DE58);
  v15 = v13;
  v16 = sub_222B02128();
  v17 = sub_222B028D8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315138;
    v20 = [v15 id];
    if (v20)
    {
      v21 = v20;
      sub_222B01898();

      v22 = sub_222B018D8();
      (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
    }

    else
    {
      v24 = sub_222B018D8();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    }

    v25 = sub_222B023D8();
    v27 = sub_222A230FC(v25, v26, &v30);

    *(v18 + 4) = v27;
    _os_log_impl(&dword_222A1C000, v16, v17, "Deleting universal suggestion candidate: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223DC7E30](v19, -1, -1);
    MEMORY[0x223DC7E30](v18, -1, -1);
  }

  [*(v2 + 24) deleteObject_];
  v23 = sub_222AB9F20();

  return v23 & 1;
}

void *sub_222ABAE54@<X0>(void *a1@<X8>)
{
  result = sub_222ABAE84();
  *a1 = result;
  return result;
}

void *sub_222ABAE84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE80, &unk_222B0C140);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v45 - v4;
  v6 = type metadata accessor for UniversalSuggestion(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v14 = [v12 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_222B06DF0;
  v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v17 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v18 = [v16 initWithKey:v17 ascending:1];

  *(v15 + 32) = v18;
  sub_222A250BC(0, &qword_280CB8448, 0x277CCAC98);
  v19 = sub_222B025D8();

  [v14 setSortDescriptors_];

  v20 = *(v0 + 24);
  type metadata accessor for UniversalSuggestionCoreDataRecord();
  v21 = sub_222B02A68();
  v33 = v21;
  v47 = v6;
  if (v21 >> 62)
  {
    v34 = sub_222B02DC8();
  }

  else
  {
    v34 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v47;
  v45 = v14;
  if (v34)
  {
    v36 = 0;
    v48 = v11;
    v49 = v33 & 0xC000000000000001;
    v46 = v7;
    v37 = (v7 + 48);
    v32 = MEMORY[0x277D84F90];
    v38 = v34;
    while (1)
    {
      if (v49)
      {
        v39 = MEMORY[0x223DC6F00](v36, v33);
      }

      else
      {
        if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v39 = *(v33 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      sub_222A90E4C(v5);

      if ((*v37)(v5, 1, v35) == 1)
      {
        sub_222A34F20(v5, &qword_27D01DE80, &unk_222B0C140);
      }

      else
      {
        sub_222AC253C(v5, v48, type metadata accessor for UniversalSuggestion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_222AA9B44(0, v32[2] + 1, 1, v32);
        }

        v43 = v32[2];
        v42 = v32[3];
        if (v43 >= v42 >> 1)
        {
          v32 = sub_222AA9B44(v42 > 1, v43 + 1, 1, v32);
        }

        v32[2] = v43 + 1;
        sub_222AC253C(v48, v32 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43, type metadata accessor for UniversalSuggestion);
        v35 = v47;
      }

      ++v36;
      if (v41 == v38)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    swift_once();
    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_27D01DE58);
    v23 = v35;
    v24 = sub_222B02128();
    v25 = sub_222B028E8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = v35;
      v51 = v27;
      *v26 = 136315138;
      v28 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v29 = sub_222B023D8();
      v31 = sub_222A230FC(v29, v30, &v51);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_222A1C000, v24, v25, "UniversalSuggestionsCoreData: Unresolved error in readAllSuggestions error=%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DC7E30](v27, -1, -1);
      MEMORY[0x223DC7E30](v26, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
LABEL_23:
  }

  return v32;
}

uint64_t sub_222ABB41C(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_222B02A58();
  return v5;
}

void *sub_222ABB474()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE88, &unk_222B0C150);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v45 - v4;
  v6 = type metadata accessor for UniversalRuntimeSuggestion(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v14 = [v12 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_222B06DF0;
  v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v17 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v18 = [v16 initWithKey:v17 ascending:1];

  *(v15 + 32) = v18;
  sub_222A250BC(0, &qword_280CB8448, 0x277CCAC98);
  v19 = sub_222B025D8();

  [v14 setSortDescriptors_];

  v20 = *(v0 + 24);
  type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
  v21 = sub_222B02A68();
  v33 = v21;
  v47 = v6;
  if (v21 >> 62)
  {
    v34 = sub_222B02DC8();
  }

  else
  {
    v34 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v47;
  v45 = v14;
  if (v34)
  {
    v36 = 0;
    v48 = v11;
    v49 = v33 & 0xC000000000000001;
    v46 = v7;
    v37 = (v7 + 48);
    v32 = MEMORY[0x277D84F90];
    v38 = v34;
    while (1)
    {
      if (v49)
      {
        v39 = MEMORY[0x223DC6F00](v36, v33);
      }

      else
      {
        if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v39 = *(v33 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      sub_222A90488(v5);

      if ((*v37)(v5, 1, v35) == 1)
      {
        sub_222A34F20(v5, &qword_27D01DE88, &unk_222B0C150);
      }

      else
      {
        sub_222AC253C(v5, v48, type metadata accessor for UniversalRuntimeSuggestion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_222AA9B6C(0, v32[2] + 1, 1, v32);
        }

        v43 = v32[2];
        v42 = v32[3];
        if (v43 >= v42 >> 1)
        {
          v32 = sub_222AA9B6C(v42 > 1, v43 + 1, 1, v32);
        }

        v32[2] = v43 + 1;
        sub_222AC253C(v48, v32 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43, type metadata accessor for UniversalRuntimeSuggestion);
        v35 = v47;
      }

      ++v36;
      if (v41 == v38)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    swift_once();
    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_27D01DE58);
    v23 = v35;
    v24 = sub_222B02128();
    v25 = sub_222B028E8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = v35;
      v51 = v27;
      *v26 = 136315138;
      v28 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v29 = sub_222B023D8();
      v31 = sub_222A230FC(v29, v30, &v51);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_222A1C000, v24, v25, "UniversalSuggestionsCoreData: Unresolved error in readAllSuggestions error=%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DC7E30](v27, -1, -1);
      MEMORY[0x223DC7E30](v26, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
LABEL_23:
  }

  return v32;
}

unint64_t sub_222ABBA0C(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v6 = [v4 initWithEntityName_];

  v29 = v3;
  v7 = sub_222A67AA8();
  if (!v8)
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_27D01DE58);
    v21 = sub_222B02128();
    v22 = sub_222B028E8();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_16;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "UniversalSuggestionsCoreData: Unable to extract name from key entity. Skipping suggestion search.";
    goto LABEL_15;
  }

  v9 = v7;
  v10 = v8;
  if (qword_27D01C548 != -1)
  {
    swift_once();
  }

  v11 = sub_222B02148();
  __swift_project_value_buffer(v11, qword_27D01DE58);

  v12 = sub_222B02128();
  v13 = sub_222B028D8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_222A230FC(v9, v10, &v29);
    _os_log_impl(&dword_222A1C000, v12, v13, "UniversalSuggestionsCoreData: Searching for universal suggestion with name==%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DC7E30](v15, -1, -1);
    MEMORY[0x223DC7E30](v14, -1, -1);
  }

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_222B05250;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_222A55E5C();
  *(v16 + 32) = v9;
  *(v16 + 40) = v10;
  v17 = sub_222B02888();
  [v6 setPredicate_];

  v18 = *(v2 + 24);
  type metadata accessor for UniversalSuggestionCoreDataRecord();
  result = sub_222B02A68();
  if (result >> 62)
  {
    v26 = result;
    if (sub_222B02DC8() > 1)
    {
      goto LABEL_13;
    }

    v25 = sub_222B02DC8();
    result = v26;
  }

  else
  {
    v25 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 > 1)
    {
LABEL_13:

      v21 = sub_222B02128();
      v22 = sub_222B028E8();
      if (!os_log_type_enabled(v21, v22))
      {
LABEL_16:

LABEL_17:
        return 0;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "More than one suggestion records have been found with the same key name. Skipping search.";
LABEL_15:
      _os_log_impl(&dword_222A1C000, v21, v22, v24, v23, 2u);
      MEMORY[0x223DC7E30](v23, -1, -1);
      goto LABEL_16;
    }
  }

  if (!v25)
  {

    goto LABEL_17;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x223DC6F00](0);
    goto LABEL_24;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(result + 32);
LABEL_24:
    v28 = v27;

    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_222ABBF6C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  return sub_222B02A58();
}

void sub_222ABBFE4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_222ABC074(a1);
  if (v3)
  {
    v4 = v3;
    sub_222A8FCD4(a2);
  }

  else
  {
    v5 = type metadata accessor for UniversalCandidate(0);
    (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

unint64_t sub_222ABC074(uint64_t a1)
{
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v10 = [v8 initWithEntityName_];

  if (qword_27D01C548 != -1)
  {
    swift_once();
  }

  v11 = sub_222B02148();
  v12 = __swift_project_value_buffer(v11, qword_27D01DE58);
  (*(v3 + 16))(v7, a1, v2);
  v35[1] = v12;
  v13 = sub_222B02128();
  v14 = sub_222B028D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35[0] = v10;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136315138;
    sub_222AC248C(&qword_280CB82F8, MEMORY[0x277CC95F0]);
    v18 = sub_222B02F38();
    v20 = v19;
    (*(v3 + 8))(v7, v2);
    v21 = sub_222A230FC(v18, v20, &v36);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_222A1C000, v13, v14, "UniversalSuggestionsCoreData: Searching for universal candidate with id==%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DC7E30](v17, -1, -1);
    v22 = v16;
    v10 = v35[0];
    MEMORY[0x223DC7E30](v22, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_222B05250;
  v24 = sub_222B01878();
  *(v23 + 56) = sub_222A250BC(0, &qword_27D01D438, 0x277CCAD78);
  *(v23 + 64) = sub_222AC24D4();
  *(v23 + 32) = v24;
  v25 = sub_222B02888();
  [v10 setPredicate_];

  v26 = *(v35[2] + 24);
  type metadata accessor for UniversalCandidateCoreDataRecord();
  result = sub_222B02A68();
  if (result >> 62)
  {
    v32 = result;
    if (sub_222B02DC8() > 1)
    {
      goto LABEL_8;
    }

    v28 = sub_222B02DC8();
    result = v32;
  }

  else
  {
    v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28 > 1)
    {
LABEL_8:

      v29 = sub_222B02128();
      v30 = sub_222B028E8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_222A1C000, v29, v30, "More than one candidate records have been found with the same id. Skipping search.", v31, 2u);
        MEMORY[0x223DC7E30](v31, -1, -1);
      }

      goto LABEL_19;
    }
  }

  if (!v28)
  {

LABEL_19:

    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x223DC6F00](0);
    goto LABEL_17;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(result + 32);
LABEL_17:
    v34 = v33;

    return v34;
  }

  __break(1u);
  return result;
}

uint64_t sub_222ABC688(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(v3 + 24);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_222B02A58();
}

void sub_222ABC6F0(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t *)@<X2>, void (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v11 = a1;
  v8 = a2(&v11);
  if (v8)
  {
    v9 = v8;
    a3();
  }

  else
  {
    v10 = a4();
    (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }
}

unint64_t sub_222ABC7A0(uint64_t *a1)
{
  v9 = *a1;
  v1 = sub_222A67AA8();
  if (v2)
  {
    v3 = sub_222ABC8BC(v1, v2);

    return v3;
  }

  else
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_27D01DE58);
    v6 = sub_222B02128();
    v7 = sub_222B028E8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_222A1C000, v6, v7, "UniversalSuggestionsCoreData: Unable to extract name from key entity. Skipping suggestion search.", v8, 2u);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    return 0;
  }
}

unint64_t sub_222ABC8BC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v8 = [v6 initWithEntityName_];

  if (qword_27D01C548 != -1)
  {
    swift_once();
  }

  v9 = sub_222B02148();
  __swift_project_value_buffer(v9, qword_27D01DE58);

  v10 = sub_222B02128();
  v11 = sub_222B028D8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_222A230FC(a1, a2, &v25);
    _os_log_impl(&dword_222A1C000, v10, v11, "UniversalSuggestionsCoreData: Searching for universal runtime suggestion with name==%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DC7E30](v13, -1, -1);
    MEMORY[0x223DC7E30](v12, -1, -1);
  }

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222B05250;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_222A55E5C();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = sub_222B02888();
  [v8 setPredicate_];

  v16 = *(v3 + 24);
  type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
  result = sub_222B02A68();
  if (result >> 62)
  {
    v22 = result;
    if (sub_222B02DC8() > 1)
    {
      goto LABEL_7;
    }

    v18 = sub_222B02DC8();
    result = v22;
  }

  else
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 > 1)
    {
LABEL_7:

      v19 = sub_222B02128();
      v20 = sub_222B028E8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_222A1C000, v19, v20, "More than one runtime suggestion records have been found with the same key name. Skipping search.", v21, 2u);
        MEMORY[0x223DC7E30](v21, -1, -1);
      }

      goto LABEL_18;
    }
  }

  if (!v18)
  {

LABEL_18:

    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x223DC6F00](0);
    goto LABEL_16;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(result + 32);
LABEL_16:
    v24 = v23;

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_222ABCD78(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 24);
  v5 = *a1;
  v6 = *a2;
  type metadata accessor for UniversalSuggestionCandidateDonationResult();
  return sub_222B02A58();
}

uint64_t sub_222ABCDF0@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v358 = a2;
  v335 = type metadata accessor for UniversalSuggestion(0);
  v7 = *(*(v335 - 8) + 64);
  MEMORY[0x28223BE20](v335, v8);
  v353 = &v311 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = type metadata accessor for UniversalSuggestionCandidate(0);
  v10 = *(*(v339 - 8) + 64);
  MEMORY[0x28223BE20](v339, v11);
  v327 = &v311 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = type metadata accessor for UniversalRuntimeSuggestion(0);
  v13 = *(*(v344 - 8) + 64);
  MEMORY[0x28223BE20](v344, v14);
  v345 = &v311 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = sub_222B018D8();
  v347 = *(v356 - 8);
  v16 = *(v347 + 64);
  MEMORY[0x28223BE20](v356, v17);
  v321 = &v311 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6A8, &unk_222B08A00);
  v19 = *(*(v337 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v337, v20);
  v325 = &v311 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v336 = &v311 - v24;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v25 = *(*(v355 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v355, v26);
  v320 = &v311 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v323 = &v311 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v329 = &v311 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v343 = &v311 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v319 = &v311 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v322 = &v311 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v330 = &v311 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v331 = &v311 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v318 = &v311 - v52;
  MEMORY[0x28223BE20](v51, v53);
  v354 = &v311 - v54;
  v334 = sub_222B01848();
  v351.n128_u64[0] = *(v334 - 8);
  v55 = *(v351.n128_u64[0] + 64);
  MEMORY[0x28223BE20](v334, v56);
  v333 = &v311 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEA0, &qword_222B0C310);
  v352 = *(v359 - 8);
  v58 = *(v352 + 64);
  MEMORY[0x28223BE20](v359, v59);
  v357 = (&v311 - v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEA8, qword_222B0C318);
  v62 = *(*(v61 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v61 - 8, v63);
  v363 = &v311 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v66);
  v68 = (&v311 - v67);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  v70 = *(*(v69 - 8) + 64);
  v72 = MEMORY[0x28223BE20](v69 - 8, v71);
  v326 = &v311 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v72, v74);
  v341 = &v311 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v324 = &v311 - v79;
  v81 = MEMORY[0x28223BE20](v78, v80);
  v350 = &v311 - v82;
  MEMORY[0x28223BE20](v81, v83);
  v85 = &v311 - v84;
  v360 = type metadata accessor for UniversalCandidate(0);
  v362 = *(v360 - 8);
  v86 = *(v362 + 64);
  v88 = MEMORY[0x28223BE20](v360, v87);
  v90 = &v311 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x28223BE20](v88, v91);
  v340 = &v311 - v93;
  v95 = MEMORY[0x28223BE20](v92, v94);
  v332 = &v311 - v96;
  v98 = MEMORY[0x28223BE20](v95, v97);
  v328 = &v311 - v99;
  v101 = MEMORY[0x28223BE20](v98, v100);
  v348 = &v311 - v102;
  v104 = MEMORY[0x28223BE20](v101, v103);
  v364 = &v311 - v105;
  MEMORY[0x28223BE20](v104, v106);
  v361 = (&v311 - v107);
  v108 = sub_222B01638();
  v109 = *(v108 - 8);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v108, v111);
  v113 = &v311 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *a1;
  v349 = *v358;
  *&v367 = v114;
  v115 = sub_222A67AA8();
  if (!v116)
  {
    if (qword_27D01C548 == -1)
    {
LABEL_14:
      v123 = sub_222B02148();
      __swift_project_value_buffer(v123, qword_27D01DE58);
      v124 = sub_222B02128();
      v125 = sub_222B028D8();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        _os_log_impl(&dword_222A1C000, v124, v125, "UniversalSuggestionsCoreData: Unable to extract name from key entity. Skipping suggestion donation.", v126, 2u);
        MEMORY[0x223DC7E30](v126, -1, -1);
      }

      type metadata accessor for UniversalSuggestionCandidateDonationResult();

      return swift_storeEnumTagMultiPayload();
    }

LABEL_44:
    swift_once();
    goto LABEL_14;
  }

  v317 = v115;
  v342 = v116;
  v338 = v114;
  *&v367 = v114;
  v117 = sub_222ABBA0C(&v367);
  v346 = a3;
  if (!v117)
  {
    sub_222B018C8();
    v128 = v360;
    *&v90[*(v360 + 20)] = v349;
    *&v90[*(v128 + 24)] = 0x3FC999999999999ALL;
    *&v90[*(v128 + 28)] = 0;
    v129 = *(v4 + 24);

    v130 = sub_222A8F85C(v129);
    if (!v130)
    {
      sub_222AC1FC0(v90, type metadata accessor for UniversalCandidate);

      goto LABEL_152;
    }

    v131 = v130;
    v132 = v353;
    sub_222B018C8();
    v133 = v335;
    v134 = &v132[*(v335 + 20)];
    v135 = v317;
    v136 = v342;
    *v134 = v317;
    v134[1] = v136;
    *&v132[*(v133 + 24)] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222B06DF0;
    *(inited + 32) = v131;

    v138 = v131;

    swift_setDeallocating();
    v139 = *(inited + 16);
    swift_arrayDestroy();
    sub_222AC1FC0(v132, type metadata accessor for UniversalSuggestion);
    v140 = v345;
    sub_222B018C8();
    v141 = v344;
    (*(v362 + 56))(v140 + *(v344 + 24), 1, 1, v128);
    v142 = (v140 + *(v141 + 20));
    *v142 = v135;
    v142[1] = v136;
    *(v140 + *(v141 + 28)) = 1;
    type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
    v143 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v144 = sub_222B01878();
    [v143 setId_];

    v145 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    [v143 setQueryEntityName_];

    [v143 setTopCandidate_];
    [v138 setTopCandidateForUniversalRuntimeSuggestion_];
    [v143 setNeedsDisambiguation_];

    sub_222AC1FC0(v140, type metadata accessor for UniversalRuntimeSuggestion);
    LOBYTE(v145) = sub_222AB9F20();

    if ((v145 & 1) == 0)
    {
      sub_222AC1FC0(v90, type metadata accessor for UniversalCandidate);
      goto LABEL_152;
    }

    v146 = v346;
    sub_222AC253C(v90, v346 + *(v339 + 24), type metadata accessor for UniversalCandidate);
    *(v146 + 8) = v338;
    *v146 = 1;
    type metadata accessor for UniversalSuggestionCandidateDonationResult();
    swift_storeEnumTagMultiPayload();
  }

  v335 = v4;
  v353 = v117;
  v118 = [v353 candidates];
  v119 = MEMORY[0x277D84F90];
  if (v118)
  {
    v120 = v118;
    v369 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    sub_222B028B8();
    sub_222AC248C(&unk_280CB8318, MEMORY[0x277CC9178]);
    sub_222B02B48();
    if (v368)
    {
      v121 = MEMORY[0x277D84F90];
      v358 = v120;
      do
      {
        while (1)
        {
          sub_222A250AC(&v367, &v365);
          type metadata accessor for UniversalCandidateCoreDataRecord();
          if ((swift_dynamicCast() & 1) == 0 || !v366)
          {
            break;
          }

          MEMORY[0x223DC6810]();
          if (*((v369 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v369 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v122 = *((v369 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222B02648();
          }

          sub_222B02688();
          v121 = v369;
          sub_222B02B48();
          v120 = v358;
          if (!v368)
          {
            goto LABEL_23;
          }
        }

        sub_222B02B48();
      }

      while (v368);
      v120 = v358;
    }

LABEL_23:

    (*(v109 + 8))(v113, v108);
    if (v121 >> 62)
    {
      v147 = sub_222B02DC8();
      if (v147)
      {
LABEL_25:
        v148 = 0;
        v358 = v121 & 0xC000000000000001;
        v149 = v121 & 0xFFFFFFFFFFFFFF8;
        v150 = (v362 + 48);
        v119 = MEMORY[0x277D84F90];
        v151 = v68;
        while (1)
        {
          if (v358)
          {
            v153 = v121;
            v154 = MEMORY[0x223DC6F00](v148, v121);
          }

          else
          {
            if (v148 >= *(v149 + 16))
            {
              goto LABEL_43;
            }

            v153 = v121;
            v154 = *(v121 + 8 * v148 + 32);
          }

          v155 = v154;
          v156 = v148 + 1;
          if (__OFADD__(v148, 1))
          {
            break;
          }

          sub_222A8FCD4(v85);

          if ((*v150)(v85, 1, v360) == 1)
          {
            sub_222A34F20(v85, &qword_27D01D150, &qword_222B06930);
          }

          else
          {
            sub_222AC253C(v85, v361, type metadata accessor for UniversalCandidate);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v157 = v119;
            }

            else
            {
              v157 = sub_222AA9B1C(0, v119[2] + 1, 1, v119);
            }

            v159 = v157[2];
            v158 = v157[3];
            if (v159 >= v158 >> 1)
            {
              v157 = sub_222AA9B1C(v158 > 1, v159 + 1, 1, v157);
            }

            v157[2] = v159 + 1;
            v119 = v157;
            sub_222AC253C(v361, v157 + ((*(v362 + 80) + 32) & ~*(v362 + 80)) + *(v362 + 72) * v159, type metadata accessor for UniversalCandidate);
          }

          ++v148;
          v152 = v156 == v147;
          v121 = v153;
          v68 = v151;
          if (v152)
          {
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v147 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v147)
      {
        goto LABEL_25;
      }
    }

    v119 = MEMORY[0x277D84F90];
LABEL_47:
  }

  v160 = v335;
  v161 = v338;
  v162 = v119[2];
  v163 = v353;
  v164 = v359;
  v165 = v363;
  if (!v162)
  {

    v222 = v340;
    sub_222B018C8();
    v223 = v360;
    *&v222[*(v360 + 20)] = v349;
    *&v222[*(v223 + 24)] = 0x3FC999999999999ALL;
    *&v222[*(v223 + 28)] = 0;
    v224 = *(v160 + 24);

    v225 = sub_222A8F85C(v224);
    if (!v225)
    {
      sub_222AC1FC0(v222, type metadata accessor for UniversalCandidate);

      goto LABEL_152;
    }

    v226 = v225;
    [v163 addCandidatesObject_];
    v227 = v345;
    sub_222B018C8();
    v228 = v344;
    (*(v362 + 56))(v227 + *(v344 + 24), 1, 1, v223);
    v229 = (v227 + *(v228 + 20));
    v230 = v342;
    *v229 = v317;
    v229[1] = v230;
    *(v227 + *(v228 + 28)) = 1;
    type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
    v231 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v232 = sub_222B01878();
    [v231 setId_];

    v233 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    [v231 setQueryEntityName_];

    [v231 setTopCandidate_];
    [v226 setTopCandidateForUniversalRuntimeSuggestion_];
    [v231 setNeedsDisambiguation_];

    sub_222AC1FC0(v227, type metadata accessor for UniversalRuntimeSuggestion);
    LOBYTE(v233) = sub_222AB9F20();

    v234 = v346;
    if ((v233 & 1) == 0)
    {
      sub_222AC1FC0(v340, type metadata accessor for UniversalCandidate);
      type metadata accessor for UniversalSuggestionCandidateDonationResult();
      return swift_storeEnumTagMultiPayload();
    }

    sub_222AC253C(v340, v346 + *(v339 + 24), type metadata accessor for UniversalCandidate);
    *(v234 + 8) = v161;
    *v234 = 1;
    type metadata accessor for UniversalSuggestionCandidateDonationResult();
    swift_storeEnumTagMultiPayload();
  }

  v358 = v119;
  *&v367 = v338;
  v340 = sub_222ABC7A0(&v367);
  v166 = *(v362 + 56);
  v316 = 1;
  v313 = v362 + 56;
  v312 = v166;
  v167 = (v166)(v350, 1, 1, v360);
  v315 = 0;
  v168 = 0;
  v361 = (v352 + 56);
  v169 = (v352 + 48);
  v352 = v347 + 56;
  v314 = (v351.n128_u64[0] + 8);
  v170 = 0.0;
  v167.n128_u64[0] = 134218242;
  v351 = v167;
  while (1)
  {
    if (v168 == v162)
    {
      v171 = 1;
      v168 = v162;
    }

    else
    {
      if ((v168 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        swift_once();
        goto LABEL_111;
      }

      if (v168 >= *(v358 + 16))
      {
        goto LABEL_156;
      }

      v172 = v358 + ((*(v362 + 80) + 32) & ~*(v362 + 80)) + *(v362 + 72) * v168;
      v173 = v164[12];
      v174 = v357;
      *v357 = v168;
      sub_222AC1D9C(v172, v174 + v173, type metadata accessor for UniversalCandidate);
      sub_222AB959C(v174, v165, &qword_27D01DEA0, &qword_222B0C310);
      v171 = 0;
      ++v168;
    }

    (*v361)(v165, v171, 1, v164);
    sub_222AB959C(v165, v68, &qword_27D01DEA8, qword_222B0C318);
    if ((*v169)(v68, 1, v164) == 1)
    {
      break;
    }

    v161 = v162;
    v175 = *v68;
    sub_222AC253C(v68 + v164[12], v364, type metadata accessor for UniversalCandidate);
    v176 = [v163 candidates];
    if (v176 && (v177 = v176, v178 = [v176 objectAtIndex_], v177, sub_222B02BA8(), swift_unknownObjectRelease(), type metadata accessor for UniversalCandidateCoreDataRecord(), (swift_dynamicCast() & 1) != 0))
    {
      v311 = v365;
      *&v367 = *&v364[*(v360 + 20)];
      v192 = sub_222A67AA8();
      v194 = v193;
      *&v367 = v349;
      v195 = sub_222A67AA8();
      if (!v194)
      {
        if (!v196)
        {
          goto LABEL_80;
        }

LABEL_73:

        goto LABEL_74;
      }

      if (!v196)
      {
        goto LABEL_73;
      }

      if (v192 == v195 && v194 == v196)
      {

LABEL_80:
        v198 = v311;
        [v311 score];
        v203 = v202 + 0.2;
        if (v203 > 1.0)
        {
          v203 = 1.0;
        }

        [v198 setScore_];
        v204 = v324;
        sub_222A8FCD4(v324);
        v205 = v350;
        sub_222A34F20(v350, &qword_27D01D150, &qword_222B06930);
        sub_222AB959C(v204, v205, &qword_27D01D150, &qword_222B06930);
        goto LABEL_83;
      }

      v201 = sub_222B02F78();

      if (v201)
      {
        goto LABEL_80;
      }

LABEL_74:
      if (qword_27D01C538 != -1)
      {
        swift_once();
      }

      v197 = *&qword_27D01DE50;
      v198 = v311;
      [v311 score];
      v200 = v199 + -0.2;
      if (v197 > v200)
      {
        v200 = v197;
      }

      [v198 setScore_];
LABEL_83:
      v164 = v359;
      v165 = v363;
      v206 = v333;
      sub_222B01828();
      sub_222B01818();
      v208 = v207;
      (*v314)(v206, v334);
      [v198 setLastUpdated_];
      [v163 replaceObjectInCandidatesAtIndex:v175 withObject:v198];
      [v198 score];
      v210 = v198;
      if (v316)
      {
        v170 = v209;
        v211 = v315;
        v162 = v161;
        goto LABEL_89;
      }

      v162 = v161;
      if (v170 < v209)
      {
        [v210 score];
        v170 = v212;
        v211 = v315;
        if (!v315)
        {
          goto LABEL_90;
        }

        [v315 setTopCandidateForUniversalRuntimeSuggestion_];
LABEL_89:

LABEL_90:
        sub_222AC1FC0(v364, type metadata accessor for UniversalCandidate);
        v316 = 0;
        v315 = v210;
      }

      else
      {
        sub_222AC1FC0(v364, type metadata accessor for UniversalCandidate);

        v316 = 0;
      }
    }

    else
    {
      if (qword_27D01C548 != -1)
      {
        swift_once();
      }

      v179 = sub_222B02148();
      __swift_project_value_buffer(v179, qword_27D01DE58);
      v180 = v163;
      v181 = sub_222B02128();
      v182 = sub_222B028E8();

      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        *&v367 = v184;
        *v183 = v351.n128_u32[0];
        *(v183 + 4) = v175;
        *(v183 + 12) = 2080;
        v185 = [v180 id];
        if (v185)
        {
          v186 = v354;
          v187 = v185;
          sub_222B01898();

          v188 = 0;
        }

        else
        {
          v188 = 1;
          v186 = v354;
        }

        (*v352)(v186, v188, 1, v356);
        v189 = sub_222B023D8();
        v191 = sub_222A230FC(v189, v190, &v367);

        *(v183 + 14) = v191;
        _os_log_impl(&dword_222A1C000, v181, v182, "UniversalSuggestionsCoreData: Could not retrieve the candidate record at position %ld in suggestion record with ID %s", v183, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v184);
        MEMORY[0x223DC7E30](v184, -1, -1);
        MEMORY[0x223DC7E30](v183, -1, -1);

        sub_222AC1FC0(v364, type metadata accessor for UniversalCandidate);
        v163 = v353;
        v164 = v359;
      }

      else
      {

        sub_222AC1FC0(v364, type metadata accessor for UniversalCandidate);
      }

      v165 = v363;
      v162 = v161;
    }
  }

  v213 = v341;
  sub_222A34E48(v350, v341, &qword_27D01D150, &qword_222B06930);
  v214 = *(v362 + 48);
  v215 = v360;
  v362 += 48;
  if ((v214)(v213, 1, v360) != 1)
  {
    v235 = v213;
    v236 = v328;
    sub_222AC253C(v235, v328, type metadata accessor for UniversalCandidate);
    sub_222AC253C(v236, v348, type metadata accessor for UniversalCandidate);
    v218 = v346;
    v219 = v343;
    v164 = v315;
    if (!v315)
    {
      goto LABEL_147;
    }

    goto LABEL_103;
  }

  sub_222A34F20(v213, &qword_27D01D150, &qword_222B06930);
  v161 = v332;
  sub_222B018C8();
  *(v161 + v215[5]) = v349;
  *(v161 + v215[6]) = 0x3FC999999999999ALL;
  *(v161 + v215[7]) = 0;
  sub_222AC1D9C(v161, v348, type metadata accessor for UniversalCandidate);
  v216 = *(v335 + 24);

  v217 = sub_222A8F85C(v216);
  v218 = v346;
  v219 = v343;
  v164 = v315;
  if (v217)
  {
    v220 = v217;
    [v163 addCandidatesObject_];
    [v220 score];
    if (v316)
    {
      goto LABEL_97;
    }

    if (v170 < v221)
    {
      [v220 score];
      if (v164)
      {
        [v164 setTopCandidateForUniversalRuntimeSuggestion_];
LABEL_97:
      }

      sub_222AC1FC0(v161, type metadata accessor for UniversalCandidate);
LABEL_104:
      v237 = v220;
      v238 = v237;
      if (v340)
      {
        v239 = v340;

        v240 = [v238 id];
        if (v240)
        {
          v241 = v331;
          v242 = v240;
          sub_222B01898();

          v243 = 0;
          v244 = v356;
        }

        else
        {
          v243 = 1;
          v244 = v356;
          v241 = v331;
        }

        v267 = v330;
        v268 = *v352;
        (*v352)(v241, v243, 1, v244);
        v269 = [v239 topCandidate];
        v363 = v238;
        v364 = v239;
        v361 = v214;
        v359 = v220;
        if (v269)
        {
          v270 = v269;
          v271 = [v269 id];

          if (v271)
          {
            v272 = v322;
            sub_222B01898();

            v273 = 0;
          }

          else
          {
            v273 = 1;
            v272 = v322;
          }

          v268(v272, v273, 1, v244);
          sub_222AB959C(v272, v267, &unk_27D01DA50, &unk_222B04E20);
        }

        else
        {
          v268(v267, 1, 1, v244);
        }

        v275 = *(v337 + 48);
        v276 = v336;
        sub_222A34E48(v241, v336, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34E48(v267, v276 + v275, &unk_27D01DA50, &unk_222B04E20);
        v277 = *(v347 + 48);
        if (v277(v276, 1, v244) == 1)
        {
          sub_222A34F20(v267, &unk_27D01DA50, &unk_222B04E20);
          v278 = v336;
          sub_222A34F20(v241, &unk_27D01DA50, &unk_222B04E20);
          v279 = &off_2784BA000;
          if (v277(v278 + v275, 1, v244) == 1)
          {
            sub_222A34F20(v278, &unk_27D01DA50, &unk_222B04E20);
            v280 = v329;
            v281 = v364;
            goto LABEL_129;
          }

LABEL_127:
          sub_222A34F20(v278, &qword_27D01D6A8, &unk_222B08A00);
          v280 = v329;
          v281 = v364;
          goto LABEL_128;
        }

        v282 = v319;
        sub_222A34E48(v276, v319, &unk_27D01DA50, &unk_222B04E20);
        v279 = &off_2784BA000;
        if (v277(v276 + v275, 1, v244) == 1)
        {
          sub_222A34F20(v330, &unk_27D01DA50, &unk_222B04E20);
          v278 = v336;
          sub_222A34F20(v331, &unk_27D01DA50, &unk_222B04E20);
          (*(v347 + 8))(v282, v244);
          goto LABEL_127;
        }

        v289 = v347;
        v290 = v276 + v275;
        v291 = v321;
        (*(v347 + 32))(v321, v290, v244);
        sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0]);
        LODWORD(v358) = sub_222B02338();
        v292 = *(v289 + 8);
        v292(v291, v356);
        sub_222A34F20(v330, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34F20(v331, &unk_27D01DA50, &unk_222B04E20);
        v292(v282, v356);
        v219 = v343;
        v244 = v356;
        sub_222A34F20(v276, &unk_27D01DA50, &unk_222B04E20);
        v280 = v329;
        v281 = v364;
        if ((v358 & 1) == 0)
        {
LABEL_128:
          v283 = v363;
          [v281 setTopCandidate_];
          [v283 setTopCandidateForUniversalRuntimeSuggestion_];
          [v281 setNeedsDisambiguation_];
        }

LABEL_129:
        (*(v347 + 16))(v219, v348, v244);
        v268(v219, 0, 1, v244);
        v284 = [v281 v279[337]];
        if (v284)
        {
          v285 = v284;
          v286 = [v284 id];

          if (v286)
          {
            v287 = v323;
            sub_222B01898();

            v288 = 0;
          }

          else
          {
            v288 = 1;
            v287 = v323;
          }

          v268(v287, v288, 1, v244);
          sub_222AB959C(v287, v280, &unk_27D01DA50, &unk_222B04E20);
        }

        else
        {
          v268(v280, 1, 1, v244);
        }

        v293 = *(v337 + 48);
        v294 = v325;
        sub_222A34E48(v219, v325, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34E48(v280, v294 + v293, &unk_27D01DA50, &unk_222B04E20);
        if (v277(v294, 1, v244) == 1)
        {
          sub_222A34F20(v280, &unk_27D01DA50, &unk_222B04E20);
          sub_222A34F20(v219, &unk_27D01DA50, &unk_222B04E20);
          v295 = v277(v294 + v293, 1, v244);
          v163 = v353;
          v214 = v361;
          v255 = v359;
          if (v295 == 1)
          {
            sub_222A34F20(v294, &unk_27D01DA50, &unk_222B04E20);
            v296 = v346;
            v297 = v363;
            v298 = v364;
            goto LABEL_145;
          }

LABEL_142:
          sub_222A34F20(v294, &qword_27D01D6A8, &unk_222B08A00);
          v296 = v346;
          v297 = v363;
          v298 = v364;
          goto LABEL_143;
        }

        v299 = v320;
        sub_222A34E48(v294, v320, &unk_27D01DA50, &unk_222B04E20);
        if (v277(v294 + v293, 1, v244) == 1)
        {
          sub_222A34F20(v329, &unk_27D01DA50, &unk_222B04E20);
          sub_222A34F20(v219, &unk_27D01DA50, &unk_222B04E20);
          (*(v347 + 8))(v299, v244);
          v163 = v353;
          v214 = v361;
          v255 = v359;
          goto LABEL_142;
        }

        v300 = v347;
        v301 = v321;
        (*(v347 + 32))(v321, v294 + v293, v244);
        sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0]);
        LODWORD(v358) = sub_222B02338();
        v302 = v294;
        v303 = v244;
        v304 = *(v300 + 8);
        v304(v301, v303);
        sub_222A34F20(v329, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34F20(v219, &unk_27D01DA50, &unk_222B04E20);
        v304(v299, v303);
        sub_222A34F20(v302, &unk_27D01DA50, &unk_222B04E20);
        v296 = v346;
        v163 = v353;
        v214 = v361;
        v255 = v359;
        v297 = v363;
        v298 = v364;
        if (v358)
        {
LABEL_145:
          v248 = [v298 needsDisambiguation];

          v218 = v296;
        }

        else
        {
LABEL_143:

          v248 = 1;
          v218 = v296;
        }
      }

      else
      {
        v245 = v237;
        v246 = v345;
        sub_222B018C8();
        v247 = v344;
        v248 = 1;
        v312(v246 + *(v344 + 24), 1, 1, v215);
        v249 = (v246 + *(v247 + 20));
        v250 = v220;
        v251 = v342;
        *v249 = v317;
        v249[1] = v251;
        *(v246 + *(v247 + 28)) = 1;
        v252 = *(v335 + 24);
        type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
        v253 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
        v254 = sub_222B01878();
        [v253 setId_];

        v255 = v250;
        v256 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
        [v253 setQueryEntityName_];

        [v253 setTopCandidate_];
        [v245 setTopCandidateForUniversalRuntimeSuggestion_];
        [v253 setNeedsDisambiguation_];

        v218 = v346;
        sub_222AC1FC0(v246, type metadata accessor for UniversalRuntimeSuggestion);
      }

LABEL_148:
      v305 = sub_222AB9F20();

      if (v305)
      {
        v306 = v327;
        sub_222AC253C(v348, &v327[*(v339 + 24)], type metadata accessor for UniversalCandidate);
        *(v306 + 8) = v338;
        *v306 = v248;
        v307 = v326;
        sub_222AB959C(v350, v326, &qword_27D01D150, &qword_222B06930);
        (v214)(v307, 1, v360);

        sub_222A34F20(v307, &qword_27D01D150, &qword_222B06930);
        sub_222AC253C(v306, v218, type metadata accessor for UniversalSuggestionCandidate);
        type metadata accessor for UniversalSuggestionCandidateDonationResult();
        return swift_storeEnumTagMultiPayload();
      }

      v274 = v348;
LABEL_151:
      sub_222AC1FC0(v274, type metadata accessor for UniversalCandidate);
      sub_222A34F20(v350, &qword_27D01D150, &qword_222B06930);
      goto LABEL_152;
    }

    [v220 setTopCandidateForUniversalRuntimeSuggestion_];

    sub_222AC1FC0(v161, type metadata accessor for UniversalCandidate);
    if (!v164)
    {
LABEL_147:

      v255 = 0;
      v248 = 1;
      goto LABEL_148;
    }

LABEL_103:
    v220 = v164;
    goto LABEL_104;
  }

  if (qword_27D01C548 != -1)
  {
    goto LABEL_157;
  }

LABEL_111:
  v257 = sub_222B02148();
  __swift_project_value_buffer(v257, qword_27D01DE58);
  v258 = v163;
  v259 = sub_222B02128();
  v260 = sub_222B028E8();

  if (!os_log_type_enabled(v259, v260))
  {

    sub_222AC1FC0(v161, type metadata accessor for UniversalCandidate);
    v274 = v348;
    goto LABEL_151;
  }

  v261 = swift_slowAlloc();
  v262 = swift_slowAlloc();
  *&v367 = v262;
  *v261 = 136315138;
  v263 = [v258 id];
  if (v263)
  {
    v264 = v318;
    v265 = v263;
    sub_222B01898();

    v266 = 0;
  }

  else
  {
    v266 = 1;
    v264 = v318;
  }

  (*v352)(v264, v266, 1, v356);
  v308 = sub_222B023D8();
  v310 = sub_222A230FC(v308, v309, &v367);

  *(v261 + 4) = v310;
  _os_log_impl(&dword_222A1C000, v259, v260, "UniversalSuggestionsCoreData: Could not add candidate to suggestion record with ID %s", v261, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v262);
  MEMORY[0x223DC7E30](v262, -1, -1);
  MEMORY[0x223DC7E30](v261, -1, -1);

  sub_222AC1FC0(v332, type metadata accessor for UniversalCandidate);
  sub_222AC1FC0(v348, type metadata accessor for UniversalCandidate);
  sub_222A34F20(v350, &qword_27D01D150, &qword_222B06930);
LABEL_152:
  type metadata accessor for UniversalSuggestionCandidateDonationResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_222ABFA0C(uint64_t a1, char *a2)
{
  v3 = *(v2 + 24);
  v5 = *a2;
  sub_222B02A58();
  return v6;
}

uint64_t sub_222ABFA7C(uint64_t a1, unsigned __int8 *a2)
{
  v201 = sub_222B01848();
  v206 = *(v201 - 8);
  v5 = *(v206 + 8);
  MEMORY[0x28223BE20](v201, v6);
  v200 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_222B018D8();
  v205 = *(v210 - 8);
  v8 = *(v205 + 64);
  MEMORY[0x28223BE20](v210, v9);
  v196 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6A8, &unk_222B08A00);
  v11 = *(*(v204 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v204, v12);
  v187 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v207 = &v174 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v209 = &v174 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v186 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v174 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v189 = &v174 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v188 = &v174 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v195 = &v174 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v203 = &v174 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v202 = &v174 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v47 = &v174 - v46;
  v49 = MEMORY[0x28223BE20](v45, v48);
  v51 = &v174 - v50;
  MEMORY[0x28223BE20](v49, v52);
  v54 = &v174 - v53;
  v55 = sub_222B01638();
  v208 = *(v55 - 8);
  v56 = v208[8];
  MEMORY[0x28223BE20](v55, v57);
  v59 = &v174 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *a2;
  v61 = sub_222ABC074(a1);
  if (!v61)
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v66 = sub_222B02148();
    __swift_project_value_buffer(v66, qword_27D01DE58);
    v67 = sub_222B02128();
    v68 = sub_222B028D8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_222A1C000, v67, v68, "UniversalSuggestionsCoreData: Unable to find candidate record. Skipping feedback update.", v69, 2u);
      MEMORY[0x223DC7E30](v69, -1, -1);
    }

    goto LABEL_34;
  }

  v62 = v61;
  v63 = *(type metadata accessor for UniversalSuggestionSurfaced(0) + 20);
  v199 = a1;
  v64 = a1 + v63;
  if ((*(v64 + 8) & 1) == 0)
  {
    [v62 setLastSurfaced_];
  }

  if (v60 == 2)
  {
    v65 = sub_222AB9F20();

    return v65 & 1;
  }

  v70 = [v62 candidateForUniversalSuggestion];
  if (!v70)
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v87 = sub_222B02148();
    __swift_project_value_buffer(v87, qword_27D01DE58);
    v88 = sub_222B02128();
    v89 = sub_222B028D8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_222A1C000, v88, v89, "UniversalSuggestionsCoreData: Unable to find corresponding suggestion record. Skipping feedback update.", v90, 2u);
      MEMORY[0x223DC7E30](v90, -1, -1);
    }

    goto LABEL_34;
  }

  v175 = v28;
  v181 = v70;
  v71 = [v70 queryEntityName];
  if (!v71)
  {
    goto LABEL_24;
  }

  v197 = v60;
  v72 = v71;
  v73 = sub_222B02388();
  v179 = v2;
  v74 = v73;
  v178 = v62;
  v76 = v75;

  v77 = v197;
  v78 = sub_222ABC8BC(v74, v76);
  v62 = v178;

  if (!v78)
  {
LABEL_24:
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v83 = sub_222B02148();
    __swift_project_value_buffer(v83, qword_27D01DE58);
    v84 = sub_222B02128();
    v85 = sub_222B028D8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_222A1C000, v84, v85, "UniversalSuggestionsCoreData: Unable to find runtime suggestion record to update. Skipping feedback update.", v86, 2u);
      MEMORY[0x223DC7E30](v86, -1, -1);
    }

LABEL_34:
    v65 = 0;
    return v65 & 1;
  }

  v180 = v47;
  v79 = [v181 candidates];
  v80 = MEMORY[0x277D84F90];
  v174 = v78;
  if (v79)
  {
    v81 = v79;
    v215 = MEMORY[0x277D84F90];
    sub_222B028B8();
    sub_222AC248C(&unk_280CB8318, MEMORY[0x277CC9178]);
    sub_222B02B48();
    if (v214)
    {
      do
      {
        while (1)
        {
          sub_222A250AC(&v213, &v211);
          type metadata accessor for UniversalCandidateCoreDataRecord();
          if ((swift_dynamicCast() & 1) == 0 || !v212)
          {
            break;
          }

          MEMORY[0x223DC6810]();
          if (*((v215 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v215 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v82 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222B02648();
          }

          sub_222B02688();
          v80 = v215;
          sub_222B02B48();
          v62 = v178;
          if (!v214)
          {
            goto LABEL_37;
          }
        }

        sub_222B02B48();
      }

      while (v214);
      v62 = v178;
    }

LABEL_37:

    (v208[1])(v59, v55);
    v78 = v174;
    v77 = v197;
  }

  if (v80 >> 62)
  {
    result = sub_222B02DC8();
    if (result)
    {
      goto LABEL_40;
    }

LABEL_110:

    v93 = 0;
    goto LABEL_111;
  }

  result = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_110;
  }

LABEL_40:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v92 = result;
  v93 = 0;
  v94 = 0;
  v198 = v80 & 0xC000000000000001;
  v194 = (v205 + 56);
  v190 = (v205 + 16);
  v193 = (v205 + 48);
  v177 = (v205 + 32);
  v182 = (v205 + 8);
  v183 = (v206 + 8);
  LODWORD(v95) = 1;
  v96 = 0.0;
  v97 = &off_2784BA000;
  v185 = v51;
  v184 = v54;
  v192 = v80;
  v191 = result;
  do
  {
    if (!v198)
    {
      v98 = *(v80 + 8 * v94 + 32);
      if (!v77)
      {
        goto LABEL_51;
      }

LABEL_47:
      if (v77 != 1)
      {
        goto LABEL_81;
      }

      v206 = v93;
      v208 = v98;
      v99 = [v98 id];
      LODWORD(v205) = v95;
      if (v99)
      {
        v100 = v202;
        v101 = v99;
        sub_222B01898();

        v102 = 0;
      }

      else
      {
        v102 = 1;
        v100 = v202;
      }

      v119 = *v194;
      v120 = v210;
      (*v194)(v100, v102, 1, v210);
      v121 = v203;
      (*v190)();
      v119(v121, 0, 1, v120);
      v122 = *(v204 + 48);
      v123 = v207;
      sub_222A34E48(v100, v207, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34E48(v121, v123 + v122, &unk_27D01DA50, &unk_222B04E20);
      v124 = v100;
      v125 = *v193;
      if ((*v193)(v123, 1, v120) == 1)
      {
        sub_222A34F20(v121, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34F20(v124, &unk_27D01DA50, &unk_222B04E20);
        v126 = v125(v207 + v122, 1, v210);
        v77 = v197;
        v93 = v206;
        v80 = v192;
        v92 = v191;
        if (v126 == 1)
        {
          sub_222A34F20(v207, &unk_27D01DA50, &unk_222B04E20);
          v51 = v185;
          v54 = v184;
          v97 = &off_2784BA000;
          LOBYTE(v95) = v205;
          v98 = v208;
          goto LABEL_78;
        }
      }

      else
      {
        v127 = v207;
        v128 = v195;
        sub_222A34E48(v207, v195, &unk_27D01DA50, &unk_222B04E20);
        v129 = v125(v127 + v122, 1, v210);
        v93 = v206;
        if (v129 != 1)
        {
          v140 = v196;
          v141 = v210;
          (*v177)(v196, v127 + v122, v210);
          sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0]);
          v176 = sub_222B02338();
          v142 = *v182;
          (*v182)(v140, v141);
          sub_222A34F20(v203, &unk_27D01DA50, &unk_222B04E20);
          sub_222A34F20(v202, &unk_27D01DA50, &unk_222B04E20);
          v142(v128, v141);
          sub_222A34F20(v127, &unk_27D01DA50, &unk_222B04E20);
          v77 = v197;
          v51 = v185;
          v54 = v184;
          v80 = v192;
          v92 = v191;
          v97 = &off_2784BA000;
          LOBYTE(v95) = v205;
          v98 = v208;
          if (v176)
          {
LABEL_78:
            [v98 v97[327]];
            v132 = v143 + 0.2;
            if (v132 > 1.0)
            {
              v132 = 1.0;
            }

LABEL_80:
            [v98 setScore_];
            v144 = v200;
            sub_222B01828();
            sub_222B01818();
            v146 = v145;
            v147 = v144;
            v98 = v208;
            (*v183)(v147, v201);
            [v98 setLastUpdated_];
            goto LABEL_81;
          }

LABEL_67:
          if (qword_27D01C538 != -1)
          {
            swift_once();
          }

          v130 = *&qword_27D01DE50;
          [v98 score];
          v132 = v131 + -0.2;
LABEL_74:
          if (v130 > v132)
          {
            v132 = v130;
          }

          goto LABEL_80;
        }

        sub_222A34F20(v203, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34F20(v202, &unk_27D01DA50, &unk_222B04E20);
        (*v182)(v128, v210);
        v77 = v197;
        v80 = v192;
        v92 = v191;
      }

      sub_222A34F20(v207, &qword_27D01D6A8, &unk_222B08A00);
      v51 = v185;
      v54 = v184;
      v97 = &off_2784BA000;
      LOBYTE(v95) = v205;
      v98 = v208;
      goto LABEL_67;
    }

    v98 = MEMORY[0x223DC6F00](v94, v80);
    if (v77)
    {
      goto LABEL_47;
    }

LABEL_51:
    v206 = v93;
    v208 = v98;
    v103 = [v98 id];
    LODWORD(v205) = v95;
    if (v103)
    {
      v104 = v103;
      sub_222B01898();

      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    v106 = v199;
    v107 = *v194;
    v108 = v210;
    (*v194)(v54, v105, 1, v210);
    (*v190)(v51, v106, v108);
    v107(v51, 0, 1, v108);
    v109 = *(v204 + 48);
    v110 = v54;
    v111 = v54;
    v112 = v51;
    v113 = v209;
    sub_222A34E48(v110, v209, &unk_27D01DA50, &unk_222B04E20);
    sub_222A34E48(v112, v113 + v109, &unk_27D01DA50, &unk_222B04E20);
    v114 = *v193;
    if ((*v193)(v113, 1, v108) == 1)
    {
      sub_222A34F20(v112, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34F20(v111, &unk_27D01DA50, &unk_222B04E20);
      v115 = v114(v209 + v109, 1, v108);
      v93 = v206;
      v51 = v112;
      v54 = v111;
      v80 = v192;
      v92 = v191;
      if (v115 != 1)
      {
        goto LABEL_59;
      }

      sub_222A34F20(v209, &unk_27D01DA50, &unk_222B04E20);
      v77 = v197;
      v97 = &off_2784BA000;
      LOBYTE(v95) = v205;
      v98 = v208;
LABEL_71:
      if (qword_27D01C538 != -1)
      {
        swift_once();
      }

      v130 = *&qword_27D01DE50;
      [v98 v97[327]];
      v132 = v139 + -1.0;
      goto LABEL_74;
    }

    v116 = v209;
    v117 = v180;
    sub_222A34E48(v209, v180, &unk_27D01DA50, &unk_222B04E20);
    v118 = v114(v116 + v109, 1, v108);
    v93 = v206;
    if (v118 == 1)
    {
      v51 = v185;
      sub_222A34F20(v185, &unk_27D01DA50, &unk_222B04E20);
      v54 = v184;
      sub_222A34F20(v184, &unk_27D01DA50, &unk_222B04E20);
      (*v182)(v117, v210);
      v80 = v192;
      v92 = v191;
LABEL_59:
      sub_222A34F20(v209, &qword_27D01D6A8, &unk_222B08A00);
      v77 = v197;
      v97 = &off_2784BA000;
      LOBYTE(v95) = v205;
      v98 = v208;
      goto LABEL_81;
    }

    v133 = v210;
    v95 = v117;
    v134 = v196;
    (*v177)(v196, v209 + v109, v210);
    sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0]);
    v176 = sub_222B02338();
    v135 = *v182;
    (*v182)(v134, v133);
    v136 = v185;
    sub_222A34F20(v185, &unk_27D01DA50, &unk_222B04E20);
    v137 = v133;
    v138 = v184;
    sub_222A34F20(v184, &unk_27D01DA50, &unk_222B04E20);
    v135(v95, v137);
    v51 = v136;
    v54 = v138;
    sub_222A34F20(v209, &unk_27D01DA50, &unk_222B04E20);
    v77 = v197;
    v80 = v192;
    v92 = v191;
    v97 = &off_2784BA000;
    LOBYTE(v95) = v205;
    v98 = v208;
    if (v176)
    {
      goto LABEL_71;
    }

LABEL_81:
    [v98 v97[327]];
    v149 = v148;
    if (v95)
    {

      v96 = v149;
LABEL_43:
      v93 = v98;
      goto LABEL_44;
    }

    if (v96 < v148)
    {
      [v98 v97[327]];
      v96 = v150;
      if (v93)
      {
        [v93 setTopCandidateForUniversalRuntimeSuggestion_];
      }

      goto LABEL_43;
    }

    [v98 setTopCandidateForUniversalRuntimeSuggestion_];

LABEL_44:
    LODWORD(v95) = 0;
    ++v94;
  }

  while (v92 != v94);

  if (v93)
  {
    v151 = v93;
    v152 = [v151 id];
    v153 = v174;
    v206 = v93;
    if (v152)
    {
      v154 = v188;
      v155 = v152;
      sub_222B01898();

      v156 = 0;
      v157 = v187;
    }

    else
    {
      v156 = 1;
      v157 = v187;
      v154 = v188;
    }

    v158 = v189;
    v159 = v175;
    v160 = *v194;
    (*v194)(v154, v156, 1, v210);
    v161 = [v153 topCandidate];
    if (v161)
    {
      v162 = v161;
      v163 = [v161 id];

      if (v163)
      {
        sub_222B01898();

        v164 = 0;
      }

      else
      {
        v164 = 1;
      }

      v160(v159, v164, 1, v210);
      v158 = v189;
      sub_222AB959C(v159, v189, &unk_27D01DA50, &unk_222B04E20);
    }

    else
    {
      v160(v158, 1, 1, v210);
    }

    v165 = *(v204 + 48);
    sub_222A34E48(v154, v157, &unk_27D01DA50, &unk_222B04E20);
    sub_222A34E48(v158, v157 + v165, &unk_27D01DA50, &unk_222B04E20);
    v166 = v154;
    v167 = *v193;
    v168 = (*v193)(v157, 1, v210);
    v62 = v178;
    if (v168 == 1)
    {
      sub_222A34F20(v158, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34F20(v166, &unk_27D01DA50, &unk_222B04E20);
      if (v167(v157 + v165, 1, v210) == 1)
      {
        sub_222A34F20(v157, &unk_27D01DA50, &unk_222B04E20);
        v78 = v174;
        v93 = v206;
        if (!v197)
        {
          goto LABEL_104;
        }

LABEL_107:
        [v78 setNeedsDisambiguation_];
        goto LABEL_108;
      }

LABEL_103:
      sub_222A34F20(v157, &qword_27D01D6A8, &unk_222B08A00);
      v78 = v174;
      v93 = v206;
      goto LABEL_104;
    }

    v169 = v186;
    sub_222A34E48(v157, v186, &unk_27D01DA50, &unk_222B04E20);
    if (v167(v157 + v165, 1, v210) == 1)
    {
      sub_222A34F20(v189, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34F20(v188, &unk_27D01DA50, &unk_222B04E20);
      (*v182)(v169, v210);
      goto LABEL_103;
    }

    v170 = v196;
    v171 = v210;
    (*v177)(v196, v157 + v165, v210);
    sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0]);
    v172 = sub_222B02338();
    v173 = *v182;
    (*v182)(v170, v171);
    sub_222A34F20(v189, &unk_27D01DA50, &unk_222B04E20);
    sub_222A34F20(v188, &unk_27D01DA50, &unk_222B04E20);
    v173(v169, v171);
    sub_222A34F20(v157, &unk_27D01DA50, &unk_222B04E20);
    v78 = v174;
    v93 = v206;
    if (v197 && (v172 & 1) != 0)
    {
      goto LABEL_107;
    }

LABEL_104:
    [v78 setTopCandidate_];
    [v151 setTopCandidateForUniversalRuntimeSuggestion_];
    [v78 setNeedsDisambiguation_];
LABEL_108:
  }

  else
  {
    v62 = v178;
    v78 = v174;
  }

LABEL_111:
  v65 = sub_222AB9F20();

  return v65 & 1;
}

uint64_t sub_222AC1338@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v49 - v7;
  v9 = type metadata accessor for UniversalCandidate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE88, &unk_222B0C150);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for UniversalRuntimeSuggestion(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = *(v2 + 24);
  v53 = v2;
  v54 = v25;
  v51 = v25;
  sub_222B02A58();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_222A34F20(v18, &qword_27D01DE88, &unk_222B0C150);
    v27 = type metadata accessor for UniversalSuggestionCandidate(0);
    v28 = *(*(v27 - 8) + 56);
    v29 = v52;
  }

  else
  {
    v30 = v52;
    sub_222AC253C(v18, v24, type metadata accessor for UniversalRuntimeSuggestion);
    sub_222A34E48(&v24[*(v19 + 24)], v8, &qword_27D01D150, &qword_222B06930);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v42 = v8;
      v43 = v50;
      sub_222AC253C(v42, v50, type metadata accessor for UniversalCandidate);
      v44 = type metadata accessor for UniversalSuggestionCandidate(0);
      v45 = v30;
      sub_222AC253C(v43, v30 + *(v44 + 24), type metadata accessor for UniversalCandidate);
      v46 = v24[*(v19 + 28)];
      v47 = v51;

      sub_222AC1FC0(v24, type metadata accessor for UniversalRuntimeSuggestion);
      *(v45 + 8) = v47;
      *v45 = v46;
      v28 = *(*(v44 - 8) + 56);
      v29 = v45;
      v41 = 0;
      v27 = v44;
      return v28(v29, v41, 1, v27);
    }

    sub_222A34F20(v8, &qword_27D01D150, &qword_222B06930);
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v31 = sub_222B02148();
    __swift_project_value_buffer(v31, qword_27D01DE58);
    v32 = v51;

    v33 = sub_222B02128();
    v34 = sub_222B028D8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v57 = v36;
      *v35 = 136315138;
      v55 = v32;
      v55 = sub_222A67AA8();
      v56 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D690, &qword_222B0F0C0);
      v38 = sub_222B023D8();
      v40 = sub_222A230FC(v38, v39, &v57);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_222A1C000, v33, v34, "UniversalSuggestionsCoreData: No top suggestion candidate for the specified entity with name %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x223DC7E30](v36, -1, -1);
      MEMORY[0x223DC7E30](v35, -1, -1);
    }

    sub_222AC1FC0(v24, type metadata accessor for UniversalRuntimeSuggestion);
    v27 = type metadata accessor for UniversalSuggestionCandidate(0);
    v28 = *(*(v27 - 8) + 56);
    v29 = v30;
  }

  v41 = 1;
  return v28(v29, v41, 1, v27);
}

uint64_t UniversalSuggestionsStoreCoreData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AC1904(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*v2 + 24);
  v5 = *a1;
  v6 = *a2;
  type metadata accessor for UniversalSuggestionCandidateDonationResult();
  return sub_222B02A58();
}

uint64_t sub_222AC197C(uint64_t a1, char *a2)
{
  v3 = *(*v2 + 24);
  v5 = *a2;
  sub_222B02A58();
  return v6;
}

uint64_t sub_222AC1A10()
{
  v1 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  return sub_222B02A58();
}

uint64_t sub_222AC1AAC()
{
  v1 = *(*v0 + 24);
  sub_222B02A58();
  return v3;
}

uint64_t sub_222AC1B14()
{
  v1 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE70, &qword_222B0C130);
  sub_222B02A58();
  return v3;
}

uint64_t UniversalSuggestionFeedbackAction.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

uint64_t UniversalSuggestionsStoreCoreDataWithMigrations.__allocating_init()()
{
  v0 = static Config.universalSuggestionsStoreFilePath.getter();
  v2 = v1;
  type metadata accessor for UniversalSuggestionsStoreCoreDataWithMigrations();
  swift_allocObject();
  return sub_222AB99B4(v0, v2, 1);
}

uint64_t sub_222AC1CD4()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01DE58);
  v1 = __swift_project_value_buffer(v0, qword_27D01DE58);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AC1D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222AC1E04@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = sub_222ABAB60(v3);
  *a1 = result & 1;
  return result;
}

void *sub_222AC1E48@<X0>(void *a1@<X8>)
{
  result = sub_222ABB474();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for UniversalSuggestionCandidateDonationResult()
{
  result = qword_280CB4FA8;
  if (!qword_280CB4FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222AC1FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222AC2048()
{
  result = qword_27D01DE90;
  if (!qword_27D01DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DE90);
  }

  return result;
}

void sub_222AC20EC()
{
  sub_222AC214C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_222AC214C()
{
  if (!qword_27D01DE98)
  {
    v0 = type metadata accessor for UniversalSuggestionCandidate(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27D01DE98);
    }
  }
}

uint64_t sub_222AC248C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_222AC24D4()
{
  result = qword_27D01D440;
  if (!qword_27D01D440)
  {
    sub_222A250BC(255, &qword_27D01D438, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D440);
  }

  return result;
}

uint64_t sub_222AC253C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222AC25A4@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *(v1 + 32);
  result = sub_222ABFA7C(v3, &v6);
  *a1 = result & 1;
  return result;
}

uint64_t sub_222AC25F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v3;
  return sub_222ABCDF0(&v6, &v5, a1);
}

id sub_222AC263C(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v72) = a3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = sub_222B02938();
  v71 = *(v3 - 8);
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v70 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222B01748();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v63 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v63 - v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
  [v24 setShouldInferMappingModelAutomatically_];
  [v24 setShouldMigrateStoreAutomatically_];
  if (qword_280CB51F0 != -1)
  {
    swift_once();
  }

  v25 = qword_280CB51F8;
  if (!qword_280CB51F8)
  {
    goto LABEL_14;
  }

  v67 = v3;
  v65 = v12;
  v26 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v27 = v25;
  v66 = "ionCoreDataRecord";
  v28 = v23;
  v29 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v68 = v27;
  v69 = [v26 initWithName:v29 managedObjectModel:v27];

  sub_222B01688();
  v30 = [objc_opt_self() defaultManager];
  sub_222B01708();
  v31 = sub_222B016A8();
  v73 = *(v74 + 8);
  v73(v20, v75);
  aBlock[0] = 0;
  v32 = [v30 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:aBlock];

  if (v32)
  {
    v33 = aBlock[0];
  }

  else
  {
    v34 = aBlock[0];
    v35 = sub_222B01628();

    swift_willThrow();
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v36 = sub_222B02148();
    __swift_project_value_buffer(v36, qword_27D01DE58);
    (*(v74 + 16))(v16, v23, v75);
    v37 = v35;
    v38 = sub_222B02128();
    v39 = sub_222B028E8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v40 = 136315394;
      sub_222AC248C(&qword_280CB8310, MEMORY[0x277CC9260]);
      v41 = sub_222B02F38();
      v43 = v42;
      v73(v16, v75);
      v44 = sub_222A230FC(v41, v43, aBlock);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v76 = v35;
      v45 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v46 = sub_222B023D8();
      v48 = sub_222A230FC(v46, v47, aBlock);

      *(v40 + 14) = v48;
      _os_log_impl(&dword_222A1C000, v38, v39, "UniversalSuggestionsCoreData: Unable to create the data directory, path=%s, error=%s", v40, 0x16u);
      v49 = v64;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v49, -1, -1);
      MEMORY[0x223DC7E30](v40, -1, -1);
    }

    else
    {

      v73(v16, v75);
    }
  }

  if (v72)
  {
    type metadata accessor for UniversalSuggestionsStoreCoreData();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass_];
    type metadata accessor for IncrementalMigrationManager();
    inited = swift_initStackObject();
    *(inited + 16) = v51;
    v53 = v70;
    sub_222B02928();
    sub_222A9E100(v28, v53, 0xD000000000000019, v66 | 0x8000000000000000);
    (*(v71 + 8))(v53, v67);
    swift_setDeallocating();
  }

  v54 = sub_222B016A8();
  [v24 setURL_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_222B06DF0;
  *(v55 + 32) = v24;
  sub_222A250BC(0, &qword_280CB8428, 0x277CBE4E0);
  v56 = v24;
  v57 = sub_222B025D8();

  v24 = v69;
  [v69 setPersistentStoreDescriptions_];

  v58 = swift_allocObject();
  v58[16] = 1;
  v59 = v58 + 16;
  aBlock[4] = sub_222AC3094;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4F798;
  aBlock[3] = &block_descriptor_55;
  v60 = _Block_copy(aBlock);

  [v24 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v60);

  v73(v28, v75);
  swift_beginAccess();
  LOBYTE(v56) = *v59;

  if ((v56 & 1) == 0)
  {
LABEL_14:

    v24 = 0;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t dispatch thunk of SiriUserFeedbackLearningTaskPerforming.run(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_222A34620;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_222AC3270(id *a1)
{
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 nsUUID];
  sub_222B01898();

  v9 = sub_222B01888();
  (*(v3 + 8))(v7, v2);
  return v9 & 1;
}

uint64_t static SiriOntologyUtils.className(of:)()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEB0, &qword_222B0C378);
  v0 = sub_222B023D8();
  v2 = v1;
  v3 = sub_222B02458();
  v4 = sub_222AAA4AC(v3, v0, v2);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x223DC6660](v4, v6, v8, v10);

  return v11;
}

uint64_t static SiriOntologyUtils.selectTopDialogAct(from:ranks:)(unint64_t a1, uint64_t a2)
{
  v4 = sub_222AC3810(a1, a2);
  if (v2)
  {
    return v3;
  }

  v5 = v4;
  v6 = [v4 userDialogActs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEB8, qword_222B0C380);
  v7 = sub_222B025F8();

  if (v7 >> 62)
  {
    result = sub_222B02DC8();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    sub_222B02C88();

    v9 = v5;
    v10 = [v5 description];
    v11 = sub_222B02388();
    v13 = v12;

    MEMORY[0x223DC66E0](v11, v13);

    v3 = 0xD000000000000023;
    sub_222AC3D70();
    swift_allocError();
    *v14 = 0xD000000000000023;
    v14[1] = 0x8000000222B14D60;
    swift_willThrow();

    return v3;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x223DC6F00](0, v7);

    return v15;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v3 = *(v7 + 32);
  swift_unknownObjectRetain();

  return v3;
}

unint64_t static SiriOntologyUtils.selectPrimaryTask(from:)()
{
  result = sub_222B01C88();
  if (v1)
  {
    return v0;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    sub_222AC3D70();
    v0 = swift_allocError();
    *v5 = 0x736B736174206F4ELL;
    v5[1] = 0xE800000000000000;
    swift_willThrow();
    return v0;
  }

  v3 = result;
  v4 = sub_222B02DC8();
  result = v3;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x223DC6F00](0, result);

    return v6;
  }

  else
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v0 = *(result + 32);

      return v0;
    }

    __break(1u);
  }

  return result;
}

void static SiriOntologyUtils.prettyPrintTask(_:)(uint64_t a1)
{
  v2 = sub_222AC3DC4(a1);
  if (!v1)
  {
    v3 = v2;
    if (sub_222B029E8())
    {
      sub_222B01C48();
    }

    else
    {
      sub_222AC3D70();
      swift_allocError();
      *v4 = 0x7061726720646142;
      v4[1] = 0xE900000000000068;
      swift_willThrow();
    }
  }
}

uint64_t sub_222AC3810(unint64_t a1, uint64_t a2)
{
  v73 = a1;
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DED0, &qword_222B0C3D8);
  v10 = *(*(v78 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v78, v11);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v74 = &v67 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v67 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v67 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  MEMORY[0x28223BE20](v27, v28);
  v72 = &v67 - v32;
  v33 = a2 + 64;
  v34 = 1 << *(a2 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a2 + 64);
  v80 = a2;
  if (v36)
  {
    v71 = v31;
    v67 = v30;
    v68 = v29;
    v69 = v9;
    v79 = v4;
    v37 = 0;
    v38 = __clz(__rbit64(v36));
    v39 = (v36 - 1) & v36;
    v40 = (v34 + 63) >> 6;
LABEL_9:
    v44 = v80;
    v45 = *(v80 + 48);
    v70 = v5;
    v46 = v5[2];
    v75 = v5[9];
    v76 = v46;
    v46(v21, v45 + v75 * v38, v79);
    *&v21[*(v78 + 48)] = *(*(v44 + 56) + 8 * v38);
    sub_222AC3FA4(v21, v25);

    v77 = v25;
    v48 = v74;
    v2 = v71;
    if (!v39)
    {
      goto LABEL_11;
    }

    do
    {
      while (1)
      {
        v49 = v37;
LABEL_14:
        v50 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v51 = v50 | (v49 << 6);
        v52 = v80;
        v76(v48, *(v80 + 48) + v51 * v75, v79);
        v53 = *(*(v52 + 56) + 8 * v51);
        v54 = v78;
        *(v48 + *(v78 + 48)) = v53;
        sub_222AC3FA4(v48, v2);
        v55 = *(v54 + 48);
        v25 = v77;
        if (*&v77[v55] >= *(v2 + v55))
        {
          break;
        }

        sub_222AC4014(v77);
        result = sub_222AC3FA4(v2, v25);
        v37 = v49;
        if (!v39)
        {
          goto LABEL_11;
        }
      }

      result = sub_222AC4014(v2);
      v37 = v49;
    }

    while (v39);
    while (1)
    {
LABEL_11:
      v49 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        return result;
      }

      if (v49 >= v40)
      {
        break;
      }

      v39 = *(v33 + 8 * v49);
      ++v37;
      if (v39)
      {
        goto LABEL_14;
      }
    }

    v56 = v67;
    sub_222AC3FA4(v25, v67);
    v57 = v72;
    sub_222AC3FA4(v56, v72);
    v58 = v68;
    sub_222AC407C(v57, v68);
    v60 = v69;
    v59 = v70;
    v61 = v79;
    v62 = (v70[4])(v69, v58, v79);
    MEMORY[0x28223BE20](v62, v63);
    *(&v67 - 2) = v60;
    v64 = sub_222AAB0F0(sub_222AC40EC, (&v67 - 4), v73);
    if (v64)
    {
      v2 = v64;
    }

    else
    {
      sub_222AC3D70();
      swift_allocError();
      *v65 = 0x6D20736573726150;
      v65[1] = 0xEF686374616D7369;
      swift_willThrow();
    }

    sub_222AC4014(v57);
    (v59[1])(v60, v61);
  }

  else
  {
    v41 = 0;
    v40 = (v34 + 63) >> 6;
    v42 = a2 + 72;
    while (v40 - 1 != v41)
    {
      v37 = v41 + 1;
      v43 = *(v42 + 8 * v41);
      v36 -= 64;
      ++v41;
      if (v43)
      {
        v71 = v31;
        v67 = v30;
        v68 = v29;
        v69 = v9;
        v79 = v4;
        v39 = (v43 - 1) & v43;
        v38 = __clz(__rbit64(v43)) - v36;
        goto LABEL_9;
      }
    }

    sub_222AC3D70();
    swift_allocError();
    *v66 = 0x736B6E6172206F4ELL;
    v66[1] = 0xE800000000000000;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_222AC3D70()
{
  result = qword_27D01DEC0;
  if (!qword_27D01DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DEC0);
  }

  return result;
}

id sub_222AC3DC4(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    return [v2 task];
  }

  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    result = (*(v5 + 8))(ObjectType, v5);
    if (result)
    {
      return result;
    }

    sub_222B02C88();
    v7 = 0xD000000000000020;
    v8 = 0x8000000222B14DF0;
  }

  else
  {
    sub_222B02C88();
    v8 = 0x8000000222B14DD0;
    v7 = 0xD00000000000001CLL;
  }

  MEMORY[0x223DC66E0](v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEB8, qword_222B0C380);
  sub_222B02D98();
  sub_222AC3D70();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_222AC3FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DED0, &qword_222B0C3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AC4014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DED0, &qword_222B0C3D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222AC407C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DED0, &qword_222B0C3D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AC4128(uint64_t a1)
{
  v2 = v1;
  v4 = sub_222B02098();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  sub_222AC569C(v8, v9, v10, v11);
  v12 = sub_222AC4558(a1, v8, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_222AC5270(v8, v9, v10, v11);
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v21 = *(v2 + 32);
  LOBYTE(v8) = *(v2 + 40);
  sub_222AC569C(v19, v20, v21, v8);
  LOBYTE(v9) = sub_222AC5390(v19, v20, v21, v8, v12, v14, v16, v18);
  sub_222AC5270(v19, v20, v21, v8);
  if ((v9 & 1) == 0)
  {
    if (qword_27D01C550 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_27D01DEE0);
    sub_222AC569C(v12, v14, v16, v18);
    v23 = sub_222B02128();
    v24 = sub_222B028D8();
    sub_222AC5270(v12, v14, v16, v18);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v24;
      v27 = v26;
      v50 = v26;
      *v25 = 136315138;
      v28 = sub_222AC4708(v12, v14, v16, v18);
      v30 = sub_222A230FC(v28, v29, &v50);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_222A1C000, v23, v46, "UserRejectsPhoneCallOrMessagesContactConfirmation state will be updated to %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DC7E30](v27, -1, -1);
      MEMORY[0x223DC7E30](v25, -1, -1);
    }
  }

  v31 = *(v2 + 16);
  v32 = *(v2 + 24);
  v33 = *(v2 + 32);
  *(v2 + 16) = v12;
  *(v2 + 24) = v14;
  *(v2 + 32) = v16;
  v34 = *(v2 + 40);
  *(v2 + 40) = v18;
  sub_222AC569C(v12, v14, v16, v18);
  sub_222AC569C(v12, v14, v16, v18);
  sub_222AC5270(v31, v32, v33, v34);
  if (v18 != 2)
  {
    sub_222AC5270(v12, v14, v16, v18);
    v36 = v12;
    v37 = v14;
    v38 = v16;
    v39 = v18;
LABEL_13:
    sub_222AC5270(v36, v37, v38, v39);
    return 0;
  }

  if (!v12)
  {
    v36 = v12;
    v37 = v14;
    v38 = v16;
    v39 = 2;
    goto LABEL_13;
  }

  if (v12 == 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v12;
  }

  v42 = v48;
  v41 = v49;
  v43 = v47;
  if (qword_280CB79E8 != -1)
  {
    swift_once();
  }

  v44 = sub_222B020C8();
  __swift_project_value_buffer(v44, qword_280CBC3F8);
  sub_222B02088();
  sub_222A6F5D4("events.filters.UserRejectsPhoneCallOrMessagesContactConfirmation", 64, 2);
  sub_222AC5270(v12, v14, v16, 2);
  (*(v42 + 8))(v43, v41);
  return v35;
}

void *sub_222AC4558(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  if (*(a1 + 24))
  {
    v9 = *(a1 + 16);
    if (*(a1 + 24) == 1)
    {
      sub_222A8B0A8(v9, 1u);
      a2 = sub_222AC4FFC(v9, a2, a3, a4, a5);
      v10 = v9;
      v11 = 1;
    }

    else
    {
      sub_222A8B0A8(v9, 2u);
      a2 = sub_222AC4CB0(v9, a2, a3, a4, a5);
      v10 = v9;
      v11 = 2;
    }

    sub_222A86648(v10, v11);
  }

  else
  {
    if (qword_27D01C550 != -1)
    {
      swift_once();
    }

    v12 = sub_222B02148();
    __swift_project_value_buffer(v12, qword_27D01DEE0);
    v13 = sub_222B02128();
    v14 = sub_222B028D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222A1C000, v13, v14, "UserRejectsPhoneCallOrMessagesContactConfirmation received a non Siri UI / Execution event", v15, 2u);
      MEMORY[0x223DC7E30](v15, -1, -1);
    }

    sub_222AC569C(a2, a3, a4, a5);
  }

  return a2;
}

unint64_t sub_222AC4708(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      return 0xD000000000000013;
    }

    sub_222B02C88();
    v5 = "rmationFinished(status: ";
    v6 = 0xD00000000000001ELL;
    goto LABEL_7;
  }

  if (a4 == 2)
  {
    sub_222B02C88();
    v5 = "tactConfirmation";
    v6 = 0xD000000000000028;
LABEL_7:
    MEMORY[0x223DC66E0](v6, v5 | 0x8000000000000000);
    sub_222B02D98();
    MEMORY[0x223DC66E0](41, 0xE100000000000000);
    return 0;
  }

  return 0xD000000000000015;
}

uint64_t sub_222AC4838()
{
  sub_222AC5270(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics54UserRejectsPhoneCallOrMessagesContactConfirmationState33_842018DD1D809979A546F22AAA28E775LLO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

void sub_222AC48C8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 32);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  v5 = *(v1 + 40);
  *(v1 + 40) = 3;
  sub_222AC5270(v2, v3, v4, v5);
}

uint64_t sub_222AC491C()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AC49C8()
{
  *v0;
  *v0;
  sub_222B02448();
}

uint64_t sub_222AC4A60()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AC4B08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222AC575C();
  *a2 = result;
  return result;
}

void sub_222AC4B38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64657463656A6572;
  if (v2 != 1)
  {
    v5 = 0x6D6E6F646E616261;
    v4 = 0xEB00000000746E65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465747065636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_222AC4BA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64657463656A6572;
  if (v2 != 1)
  {
    v5 = 0x6D6E6F646E616261;
    v4 = 0xEB00000000746E65;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6465747065636361;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x64657463656A6572;
  if (*a2 != 1)
  {
    v8 = 0x6D6E6F646E616261;
    v3 = 0xEB00000000746E65;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6465747065636361;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222B02F78();
  }

  return v11 & 1;
}

uint64_t sub_222AC4CB0(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v10 = [a1 eventBody];
  if (!v10)
  {
    if (qword_27D01C550 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_27D01DEE0);
    v14 = sub_222B02128();
    v15 = sub_222B028D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "UserRejectsPhoneCallOrMessagesContactConfirmation cannot unwrap execution store event body", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    sub_222AC569C(a2, a3, a4, a5);
    return a2;
  }

  v11 = v10;
  if (a5 - 2 < 2)
  {
    if (sub_222A862A4(v10) & 1) != 0 || (sub_222A864B4(v11))
    {
      v12 = [v11 taskStep];

      goto LABEL_6;
    }

    goto LABEL_31;
  }

  if (a5)
  {
    if (a2)
    {
      v20 = sub_222B02F78();

      if ((v20 & 1) == 0)
      {
LABEL_28:
        [a3 timestamp];
        v23 = v22;
        [a1 timestamp];
        v25 = v24;

        if (v25 - v23 <= 300.0)
        {
          v26 = a3;
          return a2;
        }

        return 0;
      }
    }

    else
    {
    }

    if ((sub_222A862A4(v11) & 1) != 0 || (sub_222A864B4(v11)) && [v11 taskStep] == 17)
    {

LABEL_27:
      v21 = a1;
      return a1;
    }

    goto LABEL_28;
  }

  v17 = [a2 eventBody];
  if (!v17)
  {
LABEL_31:

    return 0;
  }

  v18 = v17;
  if ((sub_222AA51DC(v11) & 1) == 0)
  {

    goto LABEL_31;
  }

  v12 = [v11 taskStep];

  if (v12 == 39)
  {
    v28 = a1;
    return 1;
  }

  if (v12 != 38)
  {
LABEL_6:
    if (v12 != 17)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v19 = a1;
  return 0;
}

uint64_t sub_222AC4FFC(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v10 = [a1 eventBody];
  if (!v10)
  {
    if (qword_27D01C550 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_27D01DEE0);
    v14 = sub_222B02128();
    v15 = sub_222B028D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "UserRejectsPhoneCallOrMessagesContactConfirmation cannot unwrap UI store event body", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    sub_222AC569C(a2, a3, a4, a5);
    return a2;
  }

  v11 = v10;
  if (a5 > 1u)
  {

    return 0;
  }

  if (!a5)
  {
    v12 = a2;
    if ([v11 isStarting])
    {

      return a2;
    }

    v20 = [v11 dismissalReason];
    sub_222B02388();

    LOBYTE(v20) = sub_222A86258();
    if (v20 - 1 < 0xC)
    {
      v21 = a1;
      return 2;
    }

    sub_222AC5270(a2, a3, a4, 0);
    return 0;
  }

  v18 = a3;
  v19 = [v11 isStarting];

  if (v19)
  {
    return a2;
  }

  v22 = a1;
  return a2;
}

void sub_222AC5270(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 == 2)
    {

      a1 = a3;
    }

    else
    {
      a1 = a2;
      if (a4 != 1)
      {
        return;
      }
    }
  }
}

uint64_t sub_222AC52C8()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01DEE0);
  v1 = __swift_project_value_buffer(v0, qword_27D01DEE0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_222AC5390(unsigned __int8 a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      if (!a8)
      {
        goto LABEL_50;
      }

      return 0;
    }

    if (a8 != 1)
    {
      return 0;
    }

    v14 = 0x6465747065636361;
    v15 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v16 = 0x64657463656A6572;
      }

      else
      {
        v16 = 0x6D6E6F646E616261;
      }

      if (v15 == 1)
      {
        v17 = 0xE800000000000000;
      }

      else
      {
        v17 = 0xEB00000000746E65;
      }

      v18 = a5;
      if (a5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = 0xE800000000000000;
      v16 = 0x6465747065636361;
      v18 = a5;
      if (a5)
      {
LABEL_27:
        if (v18 == 1)
        {
          v14 = 0x64657463656A6572;
        }

        else
        {
          v14 = 0x6D6E6F646E616261;
        }

        if (v18 == 1)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v19 = 0xEB00000000746E65;
        }

LABEL_46:
        if (v16 == v14 && v17 == v19)
        {
        }

        else
        {
          v22 = sub_222B02F78();

          if ((v22 & 1) == 0)
          {
            return 0;
          }
        }

LABEL_50:
        sub_222A6EEE8();
        return sub_222B02AE8() & 1;
      }
    }

    v19 = 0xE800000000000000;
    goto LABEL_46;
  }

  if (a4 != 2)
  {
    return a8 == 3 && !(a6 | a5 | a7);
  }

  if (a8 == 2)
  {
    v8 = 0x6465747065636361;
    v9 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v10 = 0x64657463656A6572;
      }

      else
      {
        v10 = 0x6D6E6F646E616261;
      }

      if (v9 == 1)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xEB00000000746E65;
      }

      v12 = a5;
      if (a5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      v10 = 0x6465747065636361;
      v12 = a5;
      if (a5)
      {
LABEL_15:
        v8 = 0x64657463656A6572;
        if (v12 == 1)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v8 = 0x6D6E6F646E616261;
          v13 = 0xEB00000000746E65;
        }

        goto LABEL_38;
      }
    }

    v13 = 0xE800000000000000;
LABEL_38:
    if (v10 == v8 && v11 == v13)
    {
    }

    else
    {
      v21 = sub_222B02F78();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    sub_222A6EEE8();
    if (sub_222B02AE8())
    {
      return sub_222B02AE8() & 1;
    }
  }

  return 0;
}

id sub_222AC569C(id result, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v6 = a2;
      result = a3;
    }

    else
    {
      result = a2;
      if (a4 != 1)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_222AC5708()
{
  result = qword_27D01DEF8;
  if (!qword_27D01DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DEF8);
  }

  return result;
}

uint64_t sub_222AC575C()
{
  v0 = sub_222B02E48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222AC57A8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D610, qword_222B08440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D610, qword_222B08440);
    sub_222AC6388(a2, v9);
    v16 = sub_222B018D8();
    (*(*(v16 - 8) + 8))(a2, v16);
    return sub_222A34F20(v9, &qword_27D01D610, qword_222B08440);
  }

  else
  {
    sub_222A2E290(a1, v14);
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    sub_222AE903C(v14, a2, isUniquelyReferenced_nonNull_native);
    v20 = sub_222B018D8();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_222AC59B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_222AE9224(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_222B018D8();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_222A26F40(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_222A2C238();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_222B018D8();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_222AE0128(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_222B018D8();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_222AC5B74(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_222A34F20(a1, &unk_27D01DA50, &unk_222B04E20);
    sub_222AC6510(a2, v9);
    (*(v11 + 8))(a2, v10);
    return sub_222A34F20(v9, &unk_27D01DA50, &unk_222B04E20);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_222AE941C(v15, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v11 + 8))(a2, v10);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_222AC5D64(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_222B018D8() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_222AC5E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_222AC5FA4(a2);
  if (*(v5 + 16) && (v6 = sub_222A26F40(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_222B018D8();
    v17 = *(v10 - 8);
    (*(v17 + 16))(a3, v9 + *(v17 + 72) * v8, v10);

    v11 = *(v17 + 56);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {

    v15 = sub_222B018D8();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a3;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_222AC5FA4(uint64_t a1)
{
  v2 = v1;
  v4 = swift_beginAccess();
  v6 = *(v1 + 24);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_222A26F40(a1);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    v10 = *(v2 + 16);
    MEMORY[0x28223BE20](v4, v5);
    v15[2] = a1;
    v9 = sub_222AC5D64(MEMORY[0x277D84F98], sub_222AC636C, v15, v11);
    swift_beginAccess();

    v12 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_222AE9E58(v9, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v16;
    swift_endAccess();
    return v9;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  return v9;
}

uint64_t sub_222AC60E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v26 - v12;
  v14 = sub_222B018D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v26 - v22;
  type metadata accessor for PLUSLoggingIdGenerator();
  static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(a3, a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_222A34F20(v13, &unk_27D01DA50, &unk_222B04E20);
  }

  (*(v15 + 32))(v23, v13, v14);
  v25 = *(v15 + 16);
  v25(v20, v23, v14);
  v25(v10, a2, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  sub_222AC5B74(v10, v20);
  return (*(v15 + 8))(v23, v14);
}

uint64_t sub_222AC6388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_222A26F40(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222A2BF34();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_222B018D8();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime();
    v22 = *(v15 - 8);
    sub_222A2E290(v14 + *(v22 + 72) * v8, a2);
    sub_222ADF594(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_222AC6510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_222A26F40(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222A2C4D4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_222B018D8();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_222ADFB4C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = sub_222B018D8();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp.__allocating_init(value:)(uint64_t a1)
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
    sub_222AA5C00(a1);
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

uint64_t ControlHomeIntentFeature.ControlHomeIntentZoneName.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DF08, &qword_222B0C668);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t INControlHomeIntentFeatureExtractor.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_222A446D4();
  v2 = *(v1 + 52);
  v3 = (*(v1 + 48) + 7) & 0x1FFFFFFF8;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222B05250;
  *(v4 + 32) = sub_222A250BC(0, &qword_27D01DF00, 0x277CD3B10);
  *(v0 + 16) = v4;
  return v0;
}

uint64_t INControlHomeIntentFeatureExtractor.init()()
{
  v1 = sub_222A446D4();
  v2 = *(v1 + 52);
  v3 = (*(v1 + 48) + 7) & 0x1FFFFFFF8;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222B05250;
  *(v4 + 32) = sub_222A250BC(0, &qword_27D01DF00, 0x277CD3B10);
  *(v0 + 16) = v4;
  return v0;
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp.init(value:)(uint64_t a1)
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
    sub_222AA5C00(a1);
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

uint64_t ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp.__deallocating_deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentZoneName.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentZoneName.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentZoneName.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222AC6E08(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222AC6E5C(uint64_t *a1, void (*a2)(void))
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

uint64_t ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DF08, &qword_222B0C668);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222AC7000(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AC7038(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses(0);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DF08, &qword_222B0C668);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

void *sub_222AC70AC(id *a1)
{
  v2 = sub_222B01848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222B015A8();
  v72 = *(v8 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [*a1 dateInterval];
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = v14;
  sub_222B01568();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_222B05250;
  v71 = v12;
  v18 = v17;
  sub_222B01588();
  v19 = type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + *(*v22 + 96), v7, v2);
  v18[7] = v19;
  v18[8] = sub_222AC79BC(&qword_27D01DF50, type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp);
  v18[4] = v22;
  v23 = [v13 intent];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24 || (v25 = [v24 filters]) == 0)
  {

    v28 = v71;
    goto LABEL_16;
  }

  v26 = v25;
  sub_222A250BC(0, &qword_27D01DF68, 0x277CD3CF8);
  v27 = sub_222B025F8();

  v28 = v71;
  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_45:

    goto LABEL_16;
  }

LABEL_44:
  if (!sub_222B02DC8())
  {
    goto LABEL_45;
  }

LABEL_6:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x223DC6F00](0, v27);
    goto LABEL_9;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v27 + 32);
LABEL_9:
    v30 = v29;

    v31 = [v30 group];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 spokenPhrase];

      v34 = sub_222B02388();
      v35 = v15;
      v37 = v36;

      v38 = type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentGroupName(0);
      v39 = swift_allocObject();
      *(v39 + 16) = v34;
      *(v39 + 24) = v37;
      v15 = v35;
      v40 = sub_222AA8FDC(1, 2, 1, v18);
      v74 = v38;
      v28 = v71;
      v75 = sub_222AC79BC(qword_27D01DF78, type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentGroupName);
      *&v73 = v39;
      v40[2] = 2;
      v18 = v40;
      sub_222A2577C(&v73, (v40 + 9));
    }

    v41 = [v30 zone];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 spokenPhrase];

      v44 = sub_222B02388();
      v46 = v45;

      v47 = type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentZoneName(0);
      v48 = swift_allocObject();
      *(v48 + 16) = v44;
      *(v48 + 24) = v46;
      v50 = v18[2];
      v49 = v18[3];
      if (v50 >= v49 >> 1)
      {
        v18 = sub_222AA8FDC((v49 > 1), v50 + 1, 1, v18);
      }

      v74 = v47;
      v75 = sub_222AC79BC(&qword_27D01DF70, type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentZoneName);
      *&v73 = v48;
      v18[2] = v50 + 1;
      sub_222A2577C(&v73, &v18[5 * v50 + 4]);
      v28 = v71;
      v15 = MEMORY[0x277D84F90];
    }

    else
    {
    }

LABEL_16:
    v51 = [v13 intentResponse];
    if (v51)
    {
      v52 = v51;
      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v54 = [v53 entityResponses];
        if (v54)
        {
          v55 = v54;
          v68 = v52;
          sub_222A250BC(0, &qword_27D01DF58, 0x277CD3CF0);
          v56 = sub_222B025F8();

          *&v73 = v15;
          v69 = v8;
          v70 = v18;
          if (v56 >> 62)
          {
            v27 = sub_222B02DC8();
          }

          else
          {
            v27 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v28 = 0;
          v8 = v56 & 0xC000000000000001;
          v23 = MEMORY[0x277D84F90];
          v13 = &off_2784BA000;
          while (v27 != v28)
          {
            if (v8)
            {
              v57 = MEMORY[0x223DC6F00](v28, v56);
            }

            else
            {
              if (v28 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v57 = *(v56 + 8 * v28 + 32);
            }

            v58 = v57;
            v18 = (v28 + 1);
            if (__OFADD__(v28, 1))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            v15 = [v57 entity];

            ++v28;
            if (v15)
            {
              MEMORY[0x223DC6810]();
              if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v59 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_222B02648();
              }

              sub_222B02688();
              v23 = v73;
              v28 = v18;
            }
          }

          if (v23 >> 62)
          {
            goto LABEL_49;
          }

          v61 = v69;
          v62 = v71;
          if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

LABEL_50:

          (*(v72 + 8))(v62, v61);
          return v70;
        }
      }
    }

    (*(v72 + 8))(v28, v8);
    return v18;
  }

  __break(1u);
LABEL_49:
  v67 = sub_222B02DC8();
  v61 = v69;
  v62 = v71;
  if (!v67)
  {
    goto LABEL_50;
  }

LABEL_38:
  v63 = type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses(0);
  v64 = swift_allocObject();
  *(v64 + 16) = v23;
  v66 = v70[2];
  v65 = v70[3];
  if (v66 >= v65 >> 1)
  {
    v70 = sub_222AA8FDC((v65 > 1), v66 + 1, 1, v70);
  }

  (*(v72 + 8))(v62, v61);
  v74 = v63;
  v75 = sub_222AC79BC(&qword_27D01DF60, type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses);
  *&v73 = v64;
  v18 = v70;
  v70[2] = v66 + 1;
  sub_222A2577C(&v73, &v18[5 * v66 + 4]);
  return v18;
}

uint64_t sub_222AC79BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222AC7A34()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222AC7A88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222AC7B04(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_222A83678, 0, 0);
}

uint64_t sub_222AC7B24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A34620;

  return sub_222AC7B04(a1);
}

uint64_t sub_222AC7BD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = sub_222AC7ADC(v3);
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return result;
}

uint64_t sub_222AC7C28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_222AC7C7C(uint64_t a1)
{
  result = sub_222AC81E8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_222B02B28();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222AC7D14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 33) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 17) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_222AC7ED4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 33) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_222AC81E8()
{
  result = qword_280CB4AA0;
  if (!qword_280CB4AA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280CB4AA0);
  }

  return result;
}

uint64_t sub_222AC8260(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 16);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_222B02B28();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222AC83A8, 0, 0);
}

uint64_t sub_222AC83A8()
{
  v1 = *(v0 + 32);
  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 0;
    v2 = v1[1];
    v30 = (*v1 + **v1);
    v3 = (*v1)[1];
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_222AC8690;
    v5 = *(v0 + 104);
LABEL_8:

    return v30(v5);
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(*(v0 + 24) + 36);
  *(v0 + 176) = v11;
  (*(v8 + 16))(v6, v1 + v11, v7);
  v12 = *(v10 + 48);
  *(v0 + 128) = v12;
  *(v0 + 136) = (v10 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v12(v6, 1, v9) != 1)
  {
    v20 = *(v0 + 96);
    v21 = *(v0 + 64);
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    v24 = *(v0 + 32);
    v25 = *(v23 + 32);
    *(v0 + 144) = v25;
    *(v0 + 152) = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v21, v20, v22);
    v26 = *v24;
    v27 = v24[1];
    v30 = (v26 + *v26);
    v28 = v26[1];
    v29 = swift_task_alloc();
    *(v0 + 160) = v29;
    *v29 = v0;
    v29[1] = sub_222AC89FC;
    v5 = *(v0 + 88);
    goto LABEL_8;
  }

  (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 88);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_222AC8690()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_222AC8C78;
  }

  else
  {
    v3 = sub_222AC87A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222AC87A4()
{
  (*(*(v0 + 80) + 40))(*(v0 + 32) + *(*(v0 + 24) + 36), *(v0 + 104), *(v0 + 72));
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = *(*(v0 + 24) + 36);
  *(v0 + 176) = v7;
  (*(v3 + 16))(v1, v6 + v7, v2);
  v8 = *(v5 + 48);
  *(v0 + 128) = v8;
  *(v0 + 136) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v1, 1, v4) == 1)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = *(v0 + 88);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 96);
    v17 = *(v0 + 64);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    v20 = *(v0 + 32);
    v21 = *(v19 + 32);
    *(v0 + 144) = v21;
    *(v0 + 152) = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v17, v16, v18);
    v22 = *v20;
    v23 = v20[1];
    v27 = (v22 + *v22);
    v24 = v22[1];
    v25 = swift_task_alloc();
    *(v0 + 160) = v25;
    *v25 = v0;
    v25[1] = sub_222AC89FC;
    v26 = *(v0 + 88);

    return v27(v26);
  }
}

uint64_t sub_222AC89FC()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_222AC8D14;
  }

  else
  {
    v3 = sub_222AC8B10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222AC8B10()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  if ((*(v0 + 128))(*(v0 + 88), 1, v2) == 1)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = *(v5 + 24);
    (*(v5 + 16))(v3);
    (*(v4 + 8))(v3, v2);
  }

  else
  {
    v7 = *(v0 + 152);
    (*(v0 + 144))(*(v0 + 56), *(v0 + 64), v2);
  }

  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = *(v0 + 16);
  (*(*(v0 + 80) + 40))(*(v0 + 32) + *(v0 + 176), *(v0 + 88), *(v0 + 72));
  v9(v12, v10, v11);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 88);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  (*(*(v0 + 48) + 56))(*(v0 + 16), 0, 1, *(v0 + 40));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_222AC8C78()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_222AC8D14()
{
  (*(v0[6] + 8))(v0[8], v0[5]);
  v1 = v0[21];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_222AC8DC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return sub_222AC8260(a1, a2);
}

uint64_t sub_222AC8E8C()
{
  v1 = *(v0 + 8);
  sub_222AC8238(*v0);
}

uint64_t SISchemaUUID.toNSUUIDSafely()@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 value];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222B01798();
    v7 = v6;

    sub_222A67044(v5, v7, a1);

    return sub_222A26530(v5, v7);
  }

  else
  {
    v9 = sub_222B018D8();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t PLUSUniversalSuggestionsInferenceLogger.__allocating_init()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  v3 = &type metadata for SiriAnalyticsSharedPLUSEventLogTarget;
  if (v2)
  {
    v3 = &type metadata for DisabledPLUSEventLogTarget;
  }

  v4 = &protocol witness table for DisabledPLUSEventLogTarget;
  if (!v2)
  {
    v4 = &protocol witness table for SiriAnalyticsSharedPLUSEventLogTarget;
  }

  v8 = v3;
  v9 = v4;
  type metadata accessor for PLUSUniversalSuggestionsInferenceLogger();
  v5 = swift_allocObject();
  sub_222A1E5A8(&v7, v5 + 16);
  return v5;
}

uint64_t PLUSUniversalSuggestionsInferenceLogger.__allocating_init(logTarget:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222A1E5A8(a1, v2 + 16);
  return v2;
}

void sub_222AC910C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v61 - v8;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = v61 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = v61 - v22;
  v24 = *(v11 + 16);
  v24(v20, a1, v10);
  sub_222A584E8(v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_222A264C8(v9);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v25 = sub_222B02148();
    __swift_project_value_buffer(v25, qword_280CBC458);
    v26 = sub_222B02128();
    v27 = sub_222B028E8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_222A1C000, v26, v27, "Could not generate a plus logging identifier for a SELF event donation", v28, 2u);
      MEMORY[0x223DC7E30](v28, -1, -1);
    }
  }

  else
  {
    v29 = *(v11 + 32);
    v29(v23, v9, v10);
    v61[0] = v23;
    v24(v16, v23, v10);
    v30 = type metadata accessor for PLUSSchemaEventConstructor();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v33 = swift_allocObject();
    v29((v33 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v16, v10);
    *(v33 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    v34 = sub_222AFF778(a2);
    if (v34)
    {
      v35 = v34;
      v36 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO35suggestionChangeDataCaptureMetadata10changeTypeSo0e10PLUSChangejkL0CSgSo0eojkN0V_tFZ_0(v62);
      if (v36)
      {
        v37 = v36;
        v38 = v61[1];
        v39 = sub_222A44DFC(v35, v36);
        if (v39)
        {
          v40 = v39;
          v41 = v38;
          v42 = *(v38 + 40);
          v43 = *(v38 + 48);
          __swift_project_boxed_opaque_existential_1((v41 + 16), v42);
          v44 = v61[0];
          PLUSEventLogTarget.emitMessage(_:isolatedStreamId:)(v40, v61[0], v42, v43);

          swift_setDeallocating();
          v45 = *(v11 + 8);
          v45(v33 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v10);
          v46 = *(*v33 + 48);
          v47 = *(*v33 + 52);
          swift_deallocClassInstance();
          v45(v44, v10);
          return;
        }

        v35 = v37;
      }
    }

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v48 = sub_222B02148();
    __swift_project_value_buffer(v48, qword_280CBC458);
    v49 = sub_222B02128();
    v50 = sub_222B028E8();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v61[0];
    if (v51)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_222A230FC(0xD00000000000004BLL, 0x8000000222B151C0, &v63);
      _os_log_impl(&dword_222A1C000, v49, v50, "PLUSUniversalSuggestionsInferenceLogger.%s:  failed to create PLUS SELF event templates", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x223DC7E30](v54, -1, -1);
      MEMORY[0x223DC7E30](v53, -1, -1);
      swift_setDeallocating();
      v55 = *(v11 + 8);
      v55(v33 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v10);
      v56 = *(*v33 + 48);
      v57 = *(*v33 + 52);
      swift_deallocClassInstance();

      v55(v52, v10);
    }

    else
    {

      swift_setDeallocating();
      v58 = *(v11 + 8);
      v58(v33 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v10);
      v59 = *(*v33 + 48);
      v60 = *(*v33 + 52);
      swift_deallocClassInstance();
      v58(v52, v10);
    }
  }
}

void sub_222AC96F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v73 = a3;
  v75 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v69 - v12;
  v14 = sub_222B018D8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v18 = MEMORY[0x28223BE20](v14, v17);
  v71 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v74 = &v69 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v69 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v69 - v28;
  v30 = v15[2];
  v72 = a1;
  v30(v26, a1, v14);
  v31 = v26;
  v32 = v15;
  sub_222A584E8(v31, v13);
  v33 = v15[6];
  if (v33(v13, 1, v14) == 1)
  {
    sub_222A264C8(v13);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v34 = sub_222B02148();
    __swift_project_value_buffer(v34, qword_280CBC458);
    v35 = sub_222B02128();
    v36 = sub_222B028E8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_222A1C000, v35, v36, "Could not generate a plus logging identifier for a SELF event donation", v37, 2u);
      MEMORY[0x223DC7E30](v37, -1, -1);
    }
  }

  else
  {
    v69 = v3;
    v70 = v32;
    v38 = v13;
    v39 = v32[4];
    v39(v29, v38, v14);
    type metadata accessor for PLUSLoggingIdGenerator();
    static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(v29, v75, v10);
    if (v33(v10, 1, v14) == 1)
    {
      v40 = v29;
      sub_222A264C8(v10);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v41 = sub_222B02148();
      __swift_project_value_buffer(v41, qword_280CBC458);
      v42 = sub_222B02128();
      v43 = sub_222B028E8();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v70;
      if (v44)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_222A1C000, v42, v43, "Could not generate a suggestion link id for a SELF event donation", v46, 2u);
        MEMORY[0x223DC7E30](v46, -1, -1);
      }

      (v45[1])(v40, v14);
    }

    else
    {
      v47 = v74;
      v39(v74, v10, v14);
      v48 = v71;
      v30(v71, v29, v14);
      v49 = type metadata accessor for PLUSSchemaEventConstructor();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      v52 = swift_allocObject();
      v39((v52 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v48, v14);
      v53 = v47;
      *(v52 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
      v54 = sub_222A44FF4(v72, v47, v73, 0);
      if (v54)
      {
        v55 = v54;
        v56 = v69[5];
        v57 = v69[6];
        __swift_project_boxed_opaque_existential_1(v69 + 2, v56);
        PLUSEventLogTarget.emitMessage(_:isolatedStreamId:)(v55, v29, v56, v57);
      }

      else
      {
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v58 = sub_222B02148();
        __swift_project_value_buffer(v58, qword_280CBC458);
        v59 = sub_222B02128();
        v60 = sub_222B028E8();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v76 = v62;
          *v61 = 136315138;
          *(v61 + 4) = sub_222A230FC(0xD00000000000004FLL, 0x8000000222B15210, &v76);
          _os_log_impl(&dword_222A1C000, v59, v60, "PLUSUniversalSuggestionsInferenceLogger.%s:  failed to create PLUS SELF event templates", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x223DC7E30](v62, -1, -1);
          MEMORY[0x223DC7E30](v61, -1, -1);
          swift_setDeallocating();
          v63 = v70[1];
          v63(v52 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v14);
          v64 = *(*v52 + 48);
          v65 = *(*v52 + 52);
          swift_deallocClassInstance();

          v63(v53, v14);
          v63(v29, v14);
          return;
        }
      }

      swift_setDeallocating();
      v66 = v70[1];
      v66(v52 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v14);
      v67 = *(*v52 + 48);
      v68 = *(*v52 + 52);
      swift_deallocClassInstance();
      v66(v53, v14);
      v66(v29, v14);
    }
  }
}

uint64_t PLUSUniversalSuggestionsInferenceLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222AC9F1C(void *a1)
{
  type metadata accessor for BiomeAsyncIterator();
  v2 = a1;
  v3 = sub_222ACB0DC(v2);

  return v3;
}

void sub_222AC9F60(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = sub_222AC9F1C(v4);

  *a2 = v6;
}

uint64_t sub_222AC9FA4()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](sub_222AC9FEC, 0, 0);
}

uint64_t sub_222AC9FEC()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = v0[1];

    return v2(0);
  }

  else if (sub_222B02788())
  {
    v4 = v0[3];
    *(v1 + 24) = 1;
    v5 = *(v4 + 16);
    sub_222A41E6C();
    sub_222B02728();
    sub_222A34DE0();
    swift_allocError();
    sub_222B02298();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v7 = v0[4];
    v8 = *(MEMORY[0x277D85A40] + 4);
    v9 = swift_task_alloc();
    v0[5] = v9;
    v10 = *(v7 + 80);
    v11 = sub_222B02B28();
    *v9 = v0;
    v9[1] = sub_222ACA1A0;
    v12 = v0[3];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_222ACB138, v12, v11);
  }
}

uint64_t sub_222ACA1A0()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_222ACA2B4;
  }

  else
  {
    v3 = sub_222A3396C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222ACA2CC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_222A41E6C();

  return v1;
}

uint64_t sub_222ACA30C()
{
  sub_222ACA2CC();

  return swift_deallocClassInstance();
}

uint64_t sub_222ACA358()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222ACA3C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_222A33E10;

  return sub_222AC9FA4();
}

uint64_t sub_222ACA45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  v14 = *(a5 + 80);
  v15 = type metadata accessor for BiomeAsyncIterator();
  *v13 = v6;
  v13[1] = sub_222A60014;

  return MEMORY[0x282200320](a1, a2, a3, v15, a6, v6 + 16);
}

uint64_t sub_222ACA544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  result = type metadata accessor for AsyncTimedSequence.Iterator();
  *(a4 + *(result + 36)) = a5;
  v12 = (a4 + *(result + 40));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t sub_222ACA60C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_222ACA630, 0, 0);
}

uint64_t sub_222ACA630()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = CFAbsoluteTimeGetCurrent();
  v4 = v1 + 16;
  v2 = *(v1 + 16);
  v3 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_222ACA734;
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return MEMORY[0x282200308](v10, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_222ACA734()
{
  v2 = *(*v1 + 48);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_222ACA864, 0, 0);
  }
}

uint64_t sub_222ACA864()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = CFAbsoluteTimeGetCurrent() - v1;
  if (*(v3 + *(v2 + 36)) >= v4)
  {
    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v5 = (*(v0 + 32) + *(*(v0 + 24) + 40));
    v6 = v5[1];
    v13 = (*v5 + **v5);
    v7 = (*v5)[1];
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *v8 = v0;
    v8[1] = sub_222ACA9C0;
    v9 = *(v0 + 16);
    v10.n128_f64[0] = v4;

    return v13(v9, v10);
  }
}

uint64_t sub_222ACA9C0()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_222ACAAB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return sub_222ACA60C(a1, a2);
}

uint64_t sub_222ACAB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v13 = *(a5 + 16);
  v12 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v6[5] = v17;
  v18 = *(MEMORY[0x277D856F8] + 4);
  v19 = swift_task_alloc();
  v6[6] = v19;
  *v19 = v6;
  v19[1] = sub_222ACACB0;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v17);
}

uint64_t sub_222ACACB0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_222ACADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8, v16);
  v18 = &v20 - v17;
  (*(v8 + 16))(v12, v4, v7);
  sub_222B02798();
  sub_222ACA544(v18, *(v4 + *(a1 + 40)), *(v4 + *(a1 + 40) + 8), a3, *(v4 + *(a1 + 36)));
}

uint64_t sub_222ACAF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_222ACADE4(a1, a2, a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t sub_222ACAFB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_222ACB06C(void *a1)
{
  v3 = *(*v1 + 80);
  _s17AsyncAwaitAdapterCMa();
  v4 = sub_222A426B8();
  *(v1 + 16) = v4;
  *(v1 + 24) = 0;
  [a1 subscribe_];
  return v1;
}

uint64_t sub_222ACB0DC(void *a1)
{
  v3 = *(v1 + 80);
  type metadata accessor for BiomeAsyncIterator();
  swift_allocObject();
  return sub_222ACB06C(a1);
}

unint64_t sub_222ACB15C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_222AC81E8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222ACB1EC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_222ACB338(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_222ACB524(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_222AC81E8();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222ACB5C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_222ACB764(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v21 = a2 & 0x7FFFFFFF;
          v21[1] = 0;
        }

        else
        {
          *v21 = (a2 - 1);
        }
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

uint64_t PluginHandle.instance.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_222ACB990()
{
  v1 = sub_222B01748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + 32) bundleURL];
  sub_222B01718();

  v8 = sub_222B01698();
  (*(v2 + 8))(v6, v1);
  return v8;
}

void *PluginHandle.__allocating_init(instance:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *PluginHandle.init(instance:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t PluginHandle.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PluginHandle.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_222ACBBC4(unint64_t a1, unint64_t *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_34:
    v4 = sub_222B02DC8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v32 = v3;
      v33 = v3 & 0xC000000000000001;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      v7 = &off_2784BA000;
      v30 = v3 & 0xFFFFFFFFFFFFFF8;
      v31 = v4;
      do
      {
        if (v33)
        {
          v10 = MEMORY[0x223DC6F00](v5, v3);
          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_31;
          }

          v10 = *(v3 + 8 * v5 + 32);
          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        v12 = v3;
        v13 = v10;
        v14 = [v10 v7[412]];
        if (!v14)
        {

LABEL_24:
          v3 = v12;
          goto LABEL_6;
        }

        v15 = v14;
        v34 = v13;
        if (([v14 hasStringPayload] & 1) == 0 && !objc_msgSend(v15, sel_hasIntegerPayload))
        {

          goto LABEL_24;
        }

        v16 = [v15 index];
        v17 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3 = *a2;
        v35 = *a2;
        v19 = a2;
        *a2 = 0x8000000000000000;
        v21 = sub_222A270C0(v16);
        v22 = *(v3 + 16);
        v23 = (v20 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_32;
        }

        a2 = v20;
        if (*(v3 + 24) >= v24)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v3 = v35;
            if ((v20 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            sub_222A2C4AC();
            v3 = v35;
            if ((a2 & 1) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          sub_222A28C1C(v24, isUniquelyReferenced_nonNull_native);
          v25 = sub_222A270C0(v16);
          if ((a2 & 1) != (v26 & 1))
          {
            sub_222B030B8();
            __break(1u);
            return;
          }

          v21 = v25;
          v3 = v35;
          if ((a2 & 1) == 0)
          {
LABEL_21:
            *(v3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
            *(*(v3 + 48) + 8 * v21) = v16;
            *(*(v3 + 56) + 8 * v21) = v15;
            v27 = *(v3 + 16);
            v28 = __OFADD__(v27, 1);
            v29 = v27 + 1;
            if (v28)
            {
              goto LABEL_33;
            }

            *(v3 + 16) = v29;
            goto LABEL_5;
          }
        }

        v8 = *(v3 + 56);
        v9 = *(v8 + 8 * v21);
        *(v8 + 8 * v21) = v15;

LABEL_5:
        a2 = v19;
        *v19 = v3;

        v4 = v31;
        v3 = v32;
        v6 = v30;
        v7 = &off_2784BA000;
LABEL_6:
        ++v5;
      }

      while (v11 != v4);
    }
  }
}

unint64_t sub_222ACBE70(unint64_t a1)
{
  v1 = a1;
  v28 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v3 = 0;
    v4 = 0;
    v25 = i;
    v26 = v1 & 0xC000000000000001;
    v23 = v1 + 32;
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v26)
      {
        v5 = MEMORY[0x223DC6F00](v3, v1);
      }

      else
      {
        if (v3 >= *(v24 + 16))
        {
          goto LABEL_33;
        }

        v5 = *(v23 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [v5 linkedUsoNodeDatas];
      if (v8)
      {
        v9 = v8;
        sub_222A250BC(0, &qword_27D01E198, 0x277D5B290);
        v10 = sub_222B025F8();

        v27 = v4;
        if (v10 >> 62)
        {
          v11 = sub_222B02DC8();
          v12 = v1;
          if (v11)
          {
LABEL_13:
            v13 = 0;
            while (1)
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                v14 = MEMORY[0x223DC6F00](v13, v10);
              }

              else
              {
                if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_31;
                }

                v14 = *(v10 + 8 * v13 + 32);
              }

              v15 = v14;
              v1 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                break;
              }

              if ([v14 hasIntegerPayload] & 1) != 0 || (objc_msgSend(v15, sel_hasStringPayload))
              {

                v16 = [v15 index];
                v17 = v28;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_222AE93F0(v15, v16, isUniquelyReferenced_nonNull_native);
                v28 = v17;
                goto LABEL_26;
              }

              ++v13;
              if (v1 == v11)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_31:
            __break(1u);
            break;
          }
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v12 = v1;
          if (v11)
          {
            goto LABEL_13;
          }
        }

LABEL_25:

LABEL_26:
        v1 = v12;
        i = v25;
        v4 = v27;
      }

      v19 = [v6 linkedUsoGraphNodeDatas];
      if (v19)
      {
        v20 = v19;
        sub_222A250BC(0, &qword_27D01E190, 0x277D5B268);
        v21 = sub_222B025F8();

        sub_222ACBBC4(v21, &v28);
      }

      if (v3 == i)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  return MEMORY[0x277D84F98];
}

size_t sub_222ACC144(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_222B01AB8();
  v111 = *(v6 - 8);
  v7 = *(v111 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v112 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v108 = &v93 - v12;
  v13 = sub_222B01EE8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v99 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_222B01F18();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v97 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_222B01F28();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v101 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_222B01B38();
  v110 = *(v25 - 8);
  v26 = *(v110 + 64);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v113 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v102 = &v93 - v31;
  v32 = sub_222B01B78();
  v95 = *(v32 - 1);
  v33 = *(v95 + 64);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_222ACBE70(a2);
  sub_222B01B68();
  v96 = a1;
  v38 = [a1 nodes];
  v98 = v36;
  if (v38)
  {
    v39 = v38;
    v109 = v37;
    sub_222A250BC(0, &qword_27D01E188, 0x277D5B288);
    v40 = sub_222B025F8();

    v41 = v40;
    v42 = v40 & 0xFFFFFFFFFFFFFF8;
    v43 = v40 >> 62;
    if (v43)
    {
      goto LABEL_37;
    }

    v44 = *(v42 + 16);
    if (v44)
    {
      while (1)
      {
        v45 = v41;
        v115[0] = MEMORY[0x277D84F90];
        result = sub_222A23CEC(0, v44 & ~(v44 >> 63), 0);
        if (v44 < 0)
        {
          break;
        }

        v47 = v115[0];
        v94 = v3;
        v100 = v6;
        v93 = v32;
        v105 = v44;
        if (v43)
        {
          v41 = sub_222B02DC8();
          v48 = v45;
        }

        else
        {
          v48 = v45;
          v41 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v49 = v25;
        v6 = 0;
        v103 = v25;
        v104 = v48 & 0xC000000000000001;
        v43 = v109;
        v32 = (v110 + 32);
        v106 = v48;
        v107 = v41 & ~(v41 >> 63);
        v3 = v102;
        while (v107 != v6)
        {
          v25 = v49;
          if (v104)
          {
            v50 = MEMORY[0x223DC6F00](v6);
          }

          else
          {
            v50 = *(v48 + 8 * v6 + 32);
          }

          v51 = v50;
          sub_222B01B28();
          if ([v51 hasUsoVerbElementId])
          {
            [v51 usoVerbElementId];
            sub_222B01F38();
            sub_222B01B08();
          }

          if ([v51 hasUsoElementId])
          {
            [v51 usoElementId];
            sub_222B01AD8();
          }

          if ([v51 hasEntityLabel])
          {
            v52 = [v51 entityLabel];
            if (v52)
            {
              v53 = v52;
              sub_222B02388();

              v3 = v102;
              v25 = v103;
              sub_222B01AC8();
            }
          }

          if ([v51 hasVerbLabel])
          {
            v54 = [v51 verbLabel];
            if (v54)
            {
              v55 = v54;
              sub_222B02388();

              v3 = v102;
              v25 = v103;
              sub_222B01B18();
            }
          }

          if (*(v43 + 16))
          {
            v56 = sub_222A270C0(v6);
            if (v57)
            {
              v58 = *(*(v43 + 56) + 8 * v56);
              if ([v58 hasStringPayload] && (v59 = objc_msgSend(v58, sel_stringPayload)) != 0)
              {
                v60 = v59;
                sub_222B02388();

                v3 = v102;
                sub_222B01F08();
                sub_222B01AE8();
              }

              else if ([v58 hasIntegerPayload])
              {
                [v58 integerPayload];
                sub_222B01EF8();
                sub_222B01AF8();
              }

              v25 = v103;
            }
          }

          v61 = *v32;
          v49 = v25;
          (*v32)(v3, v113, v25);

          v115[0] = v47;
          v62 = v3;
          v64 = *(v47 + 16);
          v63 = *(v47 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_222A23CEC(v63 > 1, v64 + 1, 1);
            v49 = v25;
            v47 = v115[0];
          }

          ++v6;
          *(v47 + 16) = v64 + 1;
          v41 = v61(v47 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v64, v62, v49);
          v48 = v106;
          v3 = v62;
          v43 = v109;
          if (v105 == v6)
          {

            v3 = v94;
            v6 = v100;
            v32 = v93;
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_37:
        v65 = v41;
        v44 = sub_222B02DC8();
        v41 = v65;
        if (!v44)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

LABEL_38:

LABEL_39:
    v36 = v98;
    sub_222B01B58();
  }

  else
  {
  }

  v66 = [v96 edges];
  if (v66)
  {
    v67 = v66;
    sub_222A250BC(0, &qword_27D01E180, 0x277D5B230);
    v68 = sub_222B025F8();

    if (v68 >> 62)
    {
      v69 = sub_222B02DC8();
      if (v69)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v69)
      {
LABEL_43:
        v116 = MEMORY[0x277D84F90];
        result = sub_222A23CA8(0, v69 & ~(v69 >> 63), 0);
        if (v69 < 0)
        {
LABEL_66:
          __break(1u);
          return result;
        }

        v93 = v32;
        v94 = v3;
        v70 = 0;
        v110 = v68 & 0xC000000000000001;
        v71 = v116;
        v72 = (v111 + 32);
        v113 = v69;
        v100 = v6;
        v109 = v68;
        v107 = v111 + 32;
        do
        {
          if (v110)
          {
            v73 = MEMORY[0x223DC6F00](v70, v68);
          }

          else
          {
            v73 = *(v68 + 8 * v70 + 32);
          }

          v74 = v73;
          sub_222B01AA8();
          [v74 fromIndex];
          sub_222B01A98();
          [v74 toIndex];
          sub_222B01A88();
          if ([v74 hasLabel])
          {
            v75 = [v74 label];
            if (v75)
            {
              v76 = v75;
              [v75 usoElementId];
              v77 = sub_222B01A78();
              sub_222B01BB8();
              v77(v115, 0);
              [v76 enumeration];
              v78 = sub_222B01A78();
              sub_222B01BA8();
              v78(v115, 0);
              if ([v76 hasBaseEdgeLabel])
              {
                v79 = [v76 baseEdgeLabel];
                if (v79)
                {
                  v80 = v79;
                  v81 = [v79 value];

                  if (v81)
                  {
                    v106 = sub_222B02388();

                    v82 = sub_222B01A78();
                    v83 = sub_222B01B98();
                    sub_222B01B88();
                    v83(v114, 0);
                    v82(v115, 0);
                  }
                }
              }

              v6 = v100;
              v68 = v109;
              v72 = v107;
            }
          }

          v84 = *v72;
          v85 = v108;
          (*v72)(v108, v112, v6);

          v116 = v71;
          v87 = *(v71 + 16);
          v86 = *(v71 + 24);
          if (v87 >= v86 >> 1)
          {
            sub_222A23CA8(v86 > 1, v87 + 1, 1);
            v85 = v108;
            v71 = v116;
          }

          ++v70;
          *(v71 + 16) = v87 + 1;
          v84((v71 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v87), v85, v6);
        }

        while (v113 != v70);

        v3 = v94;
        v32 = v93;
        goto LABEL_61;
      }
    }

LABEL_61:
    v36 = v98;
    sub_222B01B48();
  }

  sub_222B01C68();
  v88 = sub_222B01CA8();
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  swift_allocObject();
  sub_222B01C98();
  v91 = sub_222B01BC8();
  if (v3)
  {
    (*(v95 + 8))(v36, v32);
  }

  else
  {
    v92 = v91;
    (*(v95 + 8))(v36, v32);

    return v92;
  }
}

uint64_t sub_222ACCD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return AnyAsyncSequence.init<A>(_:)(v9, AssociatedTypeWitness, a1, a2, a3);
}

uint64_t AnyAsyncSequence.makeAsyncIterator()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t AnyAsyncSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  return sub_222ACD0B4(a1, a2, a3, a4, sub_222ACD07C, a5);
}

{
  return sub_222ACD0B4(a1, a2, a3, a4, sub_222ACD424, a5);
}

uint64_t sub_222ACCE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v23 - v19;
  (*(v7 + 16))(v10, a1, a3);
  sub_222B02798();
  (*(v12 + 16))(v17, v20, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_222A83200(v17, v24, AssociatedTypeWitness, AssociatedConformanceWitness, a4);
  return (*(v12 + 8))(v20, AssociatedTypeWitness);
}

uint64_t sub_222ACD0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v14 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  result = (*(v12 + 32))(&v15[v14], a1, a3);
  *a6 = a5;
  a6[1] = v15;
  return result;
}

uint64_t sub_222ACD194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v23 - v19;
  (*(v7 + 16))(v10, a1, a3);
  sub_222B02558();
  (*(v12 + 16))(v17, v20, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_222A83480(v17, v24, AssociatedTypeWitness, AssociatedConformanceWitness, a4);
  return (*(v12 + 8))(v20, AssociatedTypeWitness);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_222ACD4A0()
{
  AnyAsyncSequence.makeAsyncIterator()();
  v1 = *(v0 + 8);
}

uint64_t sub_222ACD4CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MTToggleAlarmIntentFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000013;
  *(result + 24) = 0x8000000222B15310;
  return result;
}

uint64_t MTToggleAlarmIntentFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000222B15310;
  return result;
}

void *sub_222ACD584(id *a1)
{
  v2 = *a1;
  v3 = [*a1 intent];
  v4 = sub_222A816E4();
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (v4 == v7 && v5 == v6)
  {
  }

  else
  {
    v9 = sub_222B02F78();

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v10 = [v3 parametersByName];
  if (!v10)
  {
LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v12 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_222B05260;
  v14 = type metadata accessor for MTToggleAlarmEventFeature.EventType(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v6;
  *(v13 + 56) = v14;
  *(v13 + 64) = sub_222ACD988(&qword_27D01E1A0, type metadata accessor for MTToggleAlarmEventFeature.EventType);
  *(v13 + 32) = v15;

  v16 = [v2 _donatedBySiri];
  v17 = type metadata accessor for MTToggleAlarmEventFeature.DonatedBySiri(0);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v13 + 96) = v17;
  *(v13 + 104) = sub_222ACD988(&qword_27D01E1A8, type metadata accessor for MTToggleAlarmEventFeature.DonatedBySiri);
  v19 = v13;
  *(v13 + 72) = v18;
  if (!*(v12 + 16) || (v20 = sub_222A26EC8(0x6D72616C61, 0xE500000000000000), (v21 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_222A25344(*(v12 + 56) + 32 * v20, &v30);

  sub_222ACDCE0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    return v19;
  }

  v22 = v33;
  v23 = [v33 displayString];
  v24 = sub_222B02388();
  v26 = v25;

  v27 = type metadata accessor for MTToggleAlarmEventFeature.AlarmName(0);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v28 + 24) = v26;
  v19 = sub_222AA8FDC(1, 3, 1, v19);

  v31 = v27;
  v32 = sub_222ACD988(&qword_27D01E1B8, type metadata accessor for MTToggleAlarmEventFeature.AlarmName);
  *&v30 = v28;
  v19[2] = 3;
  sub_222A2577C(&v30, (v19 + 14));
  return v19;
}

uint64_t MTToggleAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MTToggleAlarmEventFeature.AlarmName.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MTToggleAlarmEventFeature.DonatedBySiri.init(value:)(char a1)
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

uint64_t sub_222ACD988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MTToggleAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
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

uint64_t sub_222ACDADC(char *a1)
{
  v1 = *a1;
  type metadata accessor for MTToggleAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222ACDB14(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for MTToggleAlarmEventFeature.DonatedBySiri(0);
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

uint64_t MTToggleAlarmEventFeature.AlarmName.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MTToggleAlarmEventFeature.AlarmName.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MTToggleAlarmEventFeature.AlarmName.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222ACDC14(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222ACDC68(uint64_t *a1, void (*a2)(void))
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

unint64_t sub_222ACDCE0()
{
  result = qword_27D01E1B0;
  if (!qword_27D01E1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01E1B0);
  }

  return result;
}

uint64_t SELFRequestID.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *(*v5 + 96);
  v7 = sub_222B018D8();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

{
  v2 = v1;
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  v12 = swift_allocObject();
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_222A264C8(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E1F0, &qword_222B0D028);
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

uint64_t SELFRequestID.init(value:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = sub_222B018D8();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v4 + 48))(a1, 1, v3) == 1)
  {
    sub_222A264C8(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E1F0, &qword_222B0D028);
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

uint64_t SELFRequestID.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SELFRequestID.__deallocating_deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_222ACE35C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v74 = &v70 - v5;
  v6 = sub_222B018D8();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v71 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v72 = &v70 - v13;
  v76 = v14;
  v77 = a1 >> 62;
  v75 = v12;
  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_48:
    v16 = sub_222B02DC8();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = a1 & 0xC000000000000001;
  v73 = a1 + 32;

  v17 = 0;
  v18 = &off_2784BA000;
  v78 = v16;
  while (v16 != v17)
  {
    if (v79)
    {
      v22 = MEMORY[0x223DC6F00](v17, a1);
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v22 = *(a1 + 8 * v17 + 32);
    }

    v20 = v22;
    if ([v22 v18[94]] == 6)
    {
      v23 = [v20 payload];
      if (v23)
      {
        v24 = v23;
        v25 = sub_222B01798();
        v27 = v26;

        v28 = sub_222B01788();
        sub_222A26530(v25, v27);
      }

      else
      {
        v28 = 0;
      }

      v30 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

      v29 = [v30 event];
      v18 = &off_2784BA000;
      if (!v29)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v29 = v20;
    }

    v31 = sub_222ACEAA8();
    [v29 v18[94]];
    v32 = sub_222B02A28();
    if (!v32 || v31 != v32)
    {
      goto LABEL_4;
    }

    v33 = [v29 payload];
    if (v33)
    {
      v34 = v33;
      v35 = sub_222B01798();
      v36 = v15;
      v37 = a1;
      v39 = v38;

      v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v41 = sub_222B01788();
      v42 = v39;
      a1 = v37;
      v15 = v36;
      v16 = v78;
      sub_222A26530(v35, v42);
      v43 = v40;
      v18 = &off_2784BA000;
    }

    else
    {
      v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v41 = 0;
    }

    v19 = [v43 initWithData_];

    if (!v19)
    {
LABEL_4:
      v19 = v29;
LABEL_5:

      v20 = v19;
      goto LABEL_6;
    }

    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (!v44)
    {

      v20 = v29;
      goto LABEL_5;
    }

    v45 = v44;

    v46 = [v45 eventMetadata];
    if (v46)
    {
      v47 = [v46 requestId];

      if (v47)
      {
        v16 = v17;
        break;
      }

      goto LABEL_7;
    }

LABEL_6:

LABEL_7:
    if (__OFADD__(v17++, 1))
    {
      goto LABEL_47;
    }
  }

  if (v77)
  {
    if (v16 == sub_222B02DC8())
    {
      goto LABEL_42;
    }

LABEL_32:
    if (v79)
    {
      v48 = MEMORY[0x223DC6F00](v16, a1);
    }

    else
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v48 = *(v73 + 8 * v16);
    }

    v17 = v48;
    v49 = sub_222A66E6C();
    v50 = v76;
    if (v49)
    {
      v51 = v49;
      v52 = [v49 eventMetadata];

      if (v52)
      {
        v53 = [v52 requestId];

        if (v53)
        {

          v54 = [v53 value];
          v55 = v75;
          if (v54)
          {
            v56 = v54;
            v57 = sub_222B01798();
            v59 = v58;

            v60 = v74;
            sub_222A67044(v57, v59, v74);
            sub_222A26530(v57, v59);
            if ((*(v50 + 48))(v60, 1, v55) != 1)
            {
              v61 = v50;
              v62 = *(v50 + 32);
              v63 = v72;
              v62(v72, v60, v55);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
              v64 = swift_allocObject();
              *(v64 + 16) = xmmword_222B05250;
              v65 = v71;
              (*(v61 + 16))(v71, v63, v55);
              v66 = type metadata accessor for SELFRequestID();
              v67 = *(v66 + 48);
              v68 = *(v66 + 52);
              v69 = swift_allocObject();
              v62((v69 + *(*v69 + 96)), v65, v55);
              *(v64 + 56) = v66;
              *(v64 + 64) = sub_222ACEAF4();
              *(v64 + 32) = v69;

              (*(v61 + 8))(v63, v55);
              return;
            }
          }

          else
          {

            v60 = v74;
            (*(v50 + 56))(v74, 1, 1, v55);
          }

          sub_222A264C8(v60);
          return;
        }

        goto LABEL_52;
      }
    }

LABEL_51:

LABEL_52:
    __break(1u);
    return;
  }

  if (v16 != *(v15 + 16))
  {
    goto LABEL_32;
  }

LABEL_42:
}

uint64_t type metadata accessor for SELFRequestID()
{
  result = qword_280CB7570;
  if (!qword_280CB7570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222ACEAA8()
{
  result = qword_280CB4B00;
  if (!qword_280CB4B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB4B00);
  }

  return result;
}

unint64_t sub_222ACEAF4()
{
  result = qword_280CB7580;
  if (!qword_280CB7580)
  {
    type metadata accessor for SELFRequestID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB7580);
  }

  return result;
}

uint64_t sub_222ACEB4C(char a1)
{
  v1 = 0xD00000000000001BLL;
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0xD000000000000031;
    }

    else
    {
      v1 = 0xD00000000000002BLL;
    }

    if (a1 == 1)
    {
      v2 = "sPhoneCallOrMessagesContact";
    }

    else
    {
      v2 = "cs13SELFRequestID";
    }
  }

  else
  {
    v2 = "CallOrMessagesConfirmation";
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E1F8, &qword_222B0D0C0);
  v5 = sub_222B023D8();
  v6 = v3;

  MEMORY[0x223DC66E0](46, 0xE100000000000000);

  MEMORY[0x223DC66E0](v1, v2 | 0x8000000000000000);

  MEMORY[0x223DC66E0](v5, v6);
}

BOOL static PrivateLearningPluginRunContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t PrivateLearningPluginRunContext.description.getter()
{
  v1 = *v0;
  if (v1 == 3)
  {
    return 0x616E65746E69614DLL;
  }

  MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
  sub_222ACEB4C(v1);
  MEMORY[0x223DC66E0](93, 0xE100000000000000);
  return 0;
}

uint64_t static PrivateLearningPluginError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78();
  }
}

uint64_t PrivateLearningPluginError.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_222ACEDB4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78();
  }
}

uint64_t PrivateLearningPluginRunScenario.description.getter()
{
  v1 = "sPhoneCallOrMessagesContact";
  v2 = 0xD000000000000031;
  if (*v0 != 1)
  {
    v2 = 0xD00000000000002BLL;
    v1 = "cs13SELFRequestID";
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = "CallOrMessagesConfirmation";
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E1F8, &qword_222B0D0C0);
  v6 = sub_222B023D8();

  MEMORY[0x223DC66E0](46, 0xE100000000000000);

  MEMORY[0x223DC66E0](v3, v4 | 0x8000000000000000);

  return v6;
}

uint64_t PrivateLearningPluginRunScenario.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

uint64_t sub_222ACEF74()
{
  v1 = *v0;
  if (v1 == 3)
  {
    return 0x616E65746E69614DLL;
  }

  MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
  sub_222ACEB4C(v1);
  MEMORY[0x223DC66E0](93, 0xE100000000000000);
  return 0;
}

BOOL sub_222ACF010(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t _s28SiriPrivateLearningAnalytics0bC12PluginResultO2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *a1 == *a2 && v3 == v4;
    if (!v5 && (sub_222B02F78() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    swift_bridgeObjectRelease_n();
  }

  return 1;
}

unint64_t sub_222ACF0BC()
{
  result = qword_27D01E200;
  if (!qword_27D01E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E200);
  }

  return result;
}

uint64_t sub_222ACF110(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222ACF160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_222ACF1B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PrivateLearningPluginRunContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrivateLearningPluginRunContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_222ACF350(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_222ACF364(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void *sub_222ACF3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v68 = a3;
  v5 = sub_222B01748();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v66 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v66 - v16;
  if (a2)
  {
    sub_222B016B8();
    v18 = sub_222B01698();
    v20 = v19;
    v66 = *(v6 + 8);
    v66(v17, v5);
    LOBYTE(v18) = sub_222A97538(v18, v20, a2);

    if ((v18 & 1) == 0)
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v33 = sub_222B02148();
      __swift_project_value_buffer(v33, qword_280CBC458);
      (*(v6 + 16))(v14, a1, v5);
      v34 = sub_222B02128();
      v35 = sub_222B028D8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v69 = v37;
        *v36 = 136315138;
        sub_222A470A4();
        v38 = sub_222B02F38();
        v40 = v39;
        v66(v14, v5);
        v41 = sub_222A230FC(v38, v40, &v69);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_222A1C000, v34, v35, "PluginLoader skipping plugin bundle (not allowed), path=%s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x223DC7E30](v37, -1, -1);
        MEMORY[0x223DC7E30](v36, -1, -1);
      }

      else
      {

        v66(v14, v5);
      }

      goto LABEL_36;
    }
  }

  sub_222B01738();
  v21 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v22 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v23 = [v21 initWithPath_];

  if (!v23)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v42 = sub_222B02148();
    __swift_project_value_buffer(v42, qword_280CBC458);
    v43 = v67;
    (*(v6 + 16))(v67, a1, v5);
    v23 = sub_222B02128();
    v44 = sub_222B028E8();
    if (!os_log_type_enabled(v23, v44))
    {

      (*(v6 + 8))(v43, v5);
LABEL_36:
      result = 0;
      goto LABEL_37;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v69 = v46;
    *v45 = 136315138;
    v47 = sub_222B01738();
    v49 = v48;
    (*(v6 + 8))(v43, v5);
    v50 = sub_222A230FC(v47, v49, &v69);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_222A1C000, v23, v44, "PluginLoader failed init Bundle at %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x223DC7E30](v46, -1, -1);
    MEMORY[0x223DC7E30](v45, -1, -1);
LABEL_35:

    goto LABEL_36;
  }

  v24 = [v23 bundleURL];
  sub_222B01718();

  v25 = sub_222B01698();
  v27 = v26;
  (*(v6 + 8))(v17, v5);
  if (![v23 load])
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v51 = sub_222B02148();
    __swift_project_value_buffer(v51, qword_280CBC458);

    v52 = sub_222B02128();
    v53 = sub_222B028E8();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_33;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v69 = v55;
    *v54 = 136315138;
    v56 = sub_222A230FC(v25, v27, &v69);

    *(v54 + 4) = v56;
    v57 = "PluginLoader failed to load %s";
    goto LABEL_27;
  }

  if (![v23 principalClass])
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v58 = sub_222B02148();
    __swift_project_value_buffer(v58, qword_280CBC458);

    v52 = sub_222B02128();
    v53 = sub_222B028E8();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_33;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v69 = v55;
    *v54 = 136315138;
    v59 = sub_222A230FC(v25, v27, &v69);

    *(v54 + 4) = v59;
    v57 = "PluginLoader couldn't find the principal class in %s";
LABEL_27:
    _os_log_impl(&dword_222A1C000, v52, v53, v57, v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x223DC7E30](v55, -1, -1);
    v60 = v54;
LABEL_28:
    MEMORY[0x223DC7E30](v60, -1, -1);
LABEL_34:

    goto LABEL_35;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v29 = swift_conformsToProtocol2();
  if (!v29 || !ObjCClassMetadata)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v61 = sub_222B02148();
    __swift_project_value_buffer(v61, qword_280CBC458);

    v52 = sub_222B02128();
    v62 = sub_222B028E8();

    if (os_log_type_enabled(v52, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69 = v64;
      *v63 = 136315394;
      *(v63 + 4) = sub_222A230FC(0xD000000000000015, 0x8000000222B15560, &v69);
      *(v63 + 12) = 2080;
      v65 = sub_222A230FC(v25, v27, &v69);

      *(v63 + 14) = v65;
      _os_log_impl(&dword_222A1C000, v52, v62, "PluginLoader found principal class which doesn't conform to %s in %s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v64, -1, -1);
      v60 = v63;
      goto LABEL_28;
    }

LABEL_33:

    goto LABEL_34;
  }

  v30 = v29;

  v31 = (*(v30 + 8))(ObjCClassMetadata, v30);
  type metadata accessor for PluginHandle();
  result = swift_allocObject();
  result[2] = v31;
  result[3] = v30;
  result[4] = v23;
LABEL_37:
  *v68 = result;
  return result;
}

void *sub_222ACFCD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v90 = a3;
  v91 = a2;
  v93[1] = *MEMORY[0x277D85DE8];
  v4 = sub_222B01748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v88 = &v87 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v87 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v89 = &v87 - v19;
  v92 = 0;
  v20 = [objc_opt_self() defaultManager];
  sub_222B01738();
  v21 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v22 = [v20 fileExistsAtPath:v21 isDirectory:&v92];

  if (v22 && v92 == 1)
  {
    v23 = v90;
    sub_222B016E8();
    v24 = v89;
    sub_222B016F8();
    v25 = v17;
    v26 = v4;
    v27 = v24;
    v87 = *(v5 + 8);
    v87(v25, v26);
    v28 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v29 = sub_222B016A8();
    v30 = [v28 initWithURL_];

    if (v30)
    {
      if ([v30 load])
      {
        v31 = [v30 principalClass];
        v32 = v91;
        if (v31)
        {
          ObjCClassMetadata = swift_getObjCClassMetadata();
          v34 = swift_conformsToProtocol2();
          if (v34 && ObjCClassMetadata)
          {
            v35 = v34;
            v36 = (*(v34 + 8))(ObjCClassMetadata, v34);
            v87(v27, v26);
            type metadata accessor for PluginHandle();
            result = swift_allocObject();
            result[2] = v36;
            result[3] = v35;
            result[4] = v30;
            goto LABEL_15;
          }

          if (qword_280CBA628 != -1)
          {
            swift_once();
          }

          v81 = sub_222B02148();
          __swift_project_value_buffer(v81, qword_280CBC458);

          v82 = sub_222B02128();
          v83 = sub_222B028E8();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v93[0] = v85;
            *v84 = 136315394;
            *(v84 + 4) = sub_222A230FC(0xD000000000000015, 0x8000000222B15560, v93);
            *(v84 + 12) = 2080;
            *(v84 + 14) = sub_222A230FC(v32, v23, v93);
            _os_log_impl(&dword_222A1C000, v82, v83, "PluginLoader.load() found principal class which doesn't conform to %s in %s", v84, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DC7E30](v85, -1, -1);
            MEMORY[0x223DC7E30](v84, -1, -1);
          }

          sub_222AD0B08();
          swift_allocError();
          *v86 = v32;
          *(v86 + 8) = v23;
          *(v86 + 16) = 2;
          swift_willThrow();

          v80 = v89;
LABEL_33:
          result = (v87)(v80, v26);
          goto LABEL_15;
        }

        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v73 = sub_222B02148();
        __swift_project_value_buffer(v73, qword_280CBC458);

        v74 = sub_222B02128();
        v75 = sub_222B028E8();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v93[0] = v77;
          *v76 = 136315138;
          *(v76 + 4) = sub_222A230FC(v32, v90, v93);
          _os_log_impl(&dword_222A1C000, v74, v75, "PluginLoader.load() couldn't find the principal class in %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          v78 = v77;
          v23 = v90;
          MEMORY[0x223DC7E30](v78, -1, -1);
          MEMORY[0x223DC7E30](v76, -1, -1);
        }

        sub_222AD0B08();
        swift_allocError();
        *v79 = v32;
        *(v79 + 8) = v23;
        *(v79 + 16) = 1;
      }

      else
      {
        v64 = v91;
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v65 = sub_222B02148();
        __swift_project_value_buffer(v65, qword_280CBC458);

        v66 = sub_222B02128();
        v67 = sub_222B028E8();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v93[0] = v69;
          *v68 = 136315138;
          *(v68 + 4) = sub_222A230FC(v64, v90, v93);
          _os_log_impl(&dword_222A1C000, v66, v67, "PluginLoader.load() failed to load %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          v70 = v69;
          v23 = v90;
          MEMORY[0x223DC7E30](v70, -1, -1);
          MEMORY[0x223DC7E30](v68, -1, -1);
        }

        sub_222AD0B08();
        swift_allocError();
        *v71 = v64;
        *(v71 + 8) = v23;
        *(v71 + 16) = 0;
      }

      swift_willThrow();

      v80 = v27;
      goto LABEL_33;
    }

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v50 = sub_222B02148();
    __swift_project_value_buffer(v50, qword_280CBC458);
    v51 = v88;
    (*(v5 + 16))(v88, v27, v26);
    v52 = sub_222B02128();
    v53 = v26;
    v54 = sub_222B028E8();
    if (os_log_type_enabled(v52, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v51;
      v57 = swift_slowAlloc();
      v93[0] = v57;
      *v55 = 136315138;
      sub_222A470A4();
      v58 = sub_222B02F38();
      v60 = v59;
      v61 = v56;
      v62 = v87;
      v87(v61, v53);
      v63 = sub_222A230FC(v58, v60, v93);
      v23 = v90;

      *(v55 + 4) = v63;
      v27 = v89;
      _os_log_impl(&dword_222A1C000, v52, v54, "PluginLoader.load() failed init Bundle at %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x223DC7E30](v57, -1, -1);
      MEMORY[0x223DC7E30](v55, -1, -1);
    }

    else
    {

      v62 = v87;
      v87(v51, v53);
    }

    sub_222AD0B08();
    swift_allocError();
    *v72 = v91;
    *(v72 + 8) = v23;
    *(v72 + 16) = 0;
    swift_willThrow();

    result = v62(v27, v53);
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v38 = sub_222B02148();
    __swift_project_value_buffer(v38, qword_280CBC458);
    v39 = v4;
    (*(v5 + 16))(v10, a1, v4);
    v40 = sub_222B02128();
    v41 = sub_222B028E8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v93[0] = v43;
      *v42 = 136315138;
      sub_222A470A4();
      v44 = sub_222B02F38();
      v46 = v45;
      (*(v5 + 8))(v10, v39);
      v47 = sub_222A230FC(v44, v46, v93);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_222A1C000, v40, v41, "PluginLoader.load(): %s is not a directory", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x223DC7E30](v43, -1, -1);
      MEMORY[0x223DC7E30](v42, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    sub_222AD0B08();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = 0;
    *(v48 + 16) = 3;
    result = swift_willThrow();
  }

LABEL_15:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}