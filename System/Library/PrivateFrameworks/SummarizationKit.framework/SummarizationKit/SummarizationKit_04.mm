uint64_t sub_2280236A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_2281379EC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v76 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v79 = &v74 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v75 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v77 = &v74 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v80 = &v74 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v74 - v31;
  sub_2281372AC();
  v33 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v34 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_2280247C4(v33 + v34, v32, &qword_27D81E8D0, &unk_22813C4E0);
  v35 = *(v8 + 48);
  v36 = v35(v32, 1, v7);
  sub_22802482C(v32, &qword_27D81E8D0, &unk_22813C4E0);
  if (v36 != 1)
  {
    v37 = v80;
    sub_2280247C4(v33 + v34, v80, &qword_27D81E8D0, &unk_22813C4E0);
    v38 = v35(v37, 1, v7);
    v78 = v7;
    if (v38 == 1)
    {
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0xE000000000000000;
      *(v18 + 3) = MEMORY[0x277D84F90];
      *(v18 + 4) = 0;
      *(v18 + 5) = 0xE000000000000000;
      v39 = &v18[*(v7 + 32)];
      sub_228137D6C();
      v40 = *(v7 + 36);
      v41 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
      (*(*(v41 - 8) + 56))(&v18[v40], 1, 1, v41);
      if (v35(v37, 1, v7) != 1)
      {
        sub_22802482C(v37, &qword_27D81E8D0, &unk_22813C4E0);
      }
    }

    else
    {
      sub_228024980(v37, v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    }

    v42 = *v18;
    sub_228024920(v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    v43 = v78;
    if (v42)
    {
      v44 = v33;
      v45 = v77;
      sub_2280247C4(v33 + v34, v77, &qword_27D81E8D0, &unk_22813C4E0);
      if (v35(v45, 1, v43) == 1)
      {
        v46 = v79;
        *v79 = 0;
        *(v46 + 1) = 0;
        *(v46 + 2) = 0xE000000000000000;
        *(v46 + 3) = MEMORY[0x277D84F90];
        *(v46 + 4) = 0;
        *(v46 + 5) = 0xE000000000000000;
        v47 = &v46[*(v43 + 32)];
        sub_228137D6C();
        v48 = *(v43 + 36);
        v49 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
        (*(*(v49 - 8) + 56))(&v46[v48], 1, 1, v49);
        if (v35(v45, 1, v43) != 1)
        {
          sub_22802482C(v45, &qword_27D81E8D0, &unk_22813C4E0);
        }
      }

      else
      {
        v46 = v79;
        sub_228024980(v45, v79, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
      }

      v51 = *(v46 + 1);
      v50 = *(v46 + 2);

      sub_228024920(v46, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);

      v52 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v52 = v51 & 0xFFFFFFFFFFFFLL;
      }

      v53 = v78;
      if (v52)
      {
        v54 = v75;
        sub_2280247C4(v44 + v34, v75, &qword_27D81E8D0, &unk_22813C4E0);
        if (v35(v54, 1, v53) == 1)
        {
          v55 = v76;
          *v76 = 0;
          *(v55 + 1) = 0;
          *(v55 + 2) = 0xE000000000000000;
          *(v55 + 3) = MEMORY[0x277D84F90];
          *(v55 + 4) = 0;
          *(v55 + 5) = 0xE000000000000000;
          v56 = &v55[*(v53 + 32)];
          sub_228137D6C();
          v57 = *(v53 + 36);
          v58 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
          (*(*(v58 - 8) + 56))(&v55[v57], 1, 1, v58);
          if (v35(v54, 1, v53) != 1)
          {
            sub_22802482C(v54, &qword_27D81E8D0, &unk_22813C4E0);
          }
        }

        else
        {
          v55 = v76;
          sub_228024980(v54, v76, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
        }

        v60 = *(v55 + 1);
        v59 = *(v55 + 2);

        sub_228024920(v55, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
        if (qword_2813C49E0 != -1)
        {
          swift_once();
        }

        v61 = sub_22813882C();
        __swift_project_value_buffer(v61, qword_2813C8A20);

        v62 = sub_22813880C();
        v63 = sub_2281396BC();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v83[0] = v65;
          *v64 = 136446210;
          *(v64 + 4) = sub_227FCC340(v60, v59, v83);
          _os_log_impl(&dword_227FC3000, v62, v63, "output deny list function: %{public}s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm_4(v65);
          MEMORY[0x22AAB28A0](v65, -1, -1);
          MEMORY[0x22AAB28A0](v64, -1, -1);
        }

        sub_228024208(v60, v59);

        __swift_destroy_boxed_opaque_existential_1Tm_4(v84);
        sub_227FCFAB8(v83, v84);
      }
    }
  }

  v66 = v85;
  v67 = v86;
  v68 = __swift_project_boxed_opaque_existential_1(v84, v85);
  v69 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v68, v68);
  v71 = &v74 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v72 + 16))(v71);
  MEMORY[0x22AAAFF80](v71, v66, *(v67 + 16));
  sub_228137A6C();
  return __swift_destroy_boxed_opaque_existential_1Tm_4(v84);
}

uint64_t sub_228023F34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000026 && 0x8000000228145800 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187CE8]();
  }

  else if (a1 == 0xD00000000000002ELL && 0x8000000228145830 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D28]();
  }

  else if (a1 == 0xD00000000000002FLL && 0x8000000228145860 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D30]();
  }

  else if (a1 == 0xD000000000000026 && 0x8000000228145890 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187CF0]();
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000002281458C0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D10]();
  }

  else if (a1 == 0xD000000000000029 && 0x80000002281458F0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D08]();
  }

  else if (a1 == 0xD000000000000035 && 0x8000000228145920 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D40]();
  }

  else
  {

    return sub_22813722C();
  }
}

uint64_t sub_228024208(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000027 && 0x8000000228145690 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D58]();
  }

  else if (a1 == 0xD00000000000002FLL && 0x80000002281456C0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D98]();
  }

  else if (a1 == 0xD000000000000030 && 0x80000002281456F0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187DA0]();
  }

  else if (a1 == 0xD000000000000027 && 0x8000000228145730 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D60]();
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000228145760 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D80]();
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000228145790 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187D78]();
  }

  else if (a1 == 0xD000000000000036 && 0x80000002281457C0 == a2 || (sub_2281399BC() & 1) != 0)
  {

    return MEMORY[0x282187DB0]();
  }

  else
  {

    return sub_2281372AC();
  }
}

uint64_t sub_2280244DC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  v27 = a1;
  sub_2280247C4(a1 + v16, v15, &qword_27D81E8C8, &qword_22813C4D8);
  v17 = *(v3 + 48);
  v18 = 1;
  v19 = v17(v15, 1, v2);
  sub_22802482C(v15, &qword_27D81E8C8, &qword_22813C4D8);
  if (v19 != 1)
  {
    sub_2280247C4(v27 + v16, v12, &qword_27D81E8C8, &qword_22813C4D8);
    if (v17(v12, 1, v2) == 1)
    {
      v20 = v28;
      sub_228137D6C();
      v21 = *(v2 + 20);
      if (qword_2813C5440 != -1)
      {
        swift_once();
      }

      *(v20 + v21) = qword_2813C5448;
      v22 = v17(v12, 1, v2);

      if (v22 != 1)
      {
        sub_22802482C(v12, &qword_27D81E8C8, &qword_22813C4D8);
      }
    }

    else
    {
      v20 = v28;
      sub_228024980(v12, v28, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    }

    v23 = *(v20 + *(v2 + 20));
    v24 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
    swift_beginAccess();
    v18 = *(v23 + v24);
    sub_228024920(v20, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  return v18;
}

uint64_t sub_2280247C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22802482C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280248CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_228024920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228024980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280249EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_227FCFAD4(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_22801B474(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_2280292BC(a1, &qword_27D81E830, &unk_22813C630);
    sub_228027284(a2, a3, v10);

    return sub_2280292BC(v10, &qword_27D81E830, &unk_22813C630);
  }

  return result;
}

uint64_t sub_228024ABC(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_227FCFAD4(a1, v15);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v6 = v16;
    v7 = __swift_mutable_project_boxed_opaque_existential_0(v15, v16);
    v8 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v7, v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10);
    sub_228028528(v10, a2, isUniquelyReferenced_nonNull_native, &v14, v6);
    __swift_destroy_boxed_opaque_existential_0(v15);
    result = sub_2280292BC(a2, &qword_27D81E5E8, &unk_22813C660);
    *v2 = v14;
  }

  else
  {
    sub_2280292BC(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027328(sub_22808CA18, &qword_27D81E5E8, &unk_22813C660, sub_22801CA00, v15);
    sub_2280292BC(a2, &qword_27D81E5E8, &unk_22813C660);
    return sub_2280292BC(v15, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228024C84(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_227FCFAD4(a1, v15);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v6 = v16;
    v7 = __swift_mutable_project_boxed_opaque_existential_0(v15, v16);
    v8 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v7, v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10);
    sub_228028758(v10, a2, isUniquelyReferenced_nonNull_native, &v14, v6);
    __swift_destroy_boxed_opaque_existential_0(v15);
    result = sub_2280292BC(a2, &qword_27D81E610, &unk_22813B450);
    *v2 = v14;
  }

  else
  {
    sub_2280292BC(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027328(sub_22808CE90, &qword_27D81E610, &unk_22813B450, sub_22801CE64, v15);
    sub_2280292BC(a2, &qword_27D81E610, &unk_22813B450);
    return sub_2280292BC(v15, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228024E4C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E8, &unk_22813BD10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_228136EAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_2280292BC(a1, &qword_27D81E7E8, &unk_22813BD10);
    v17 = *v2;
    v18 = sub_22808CE24(a2 & 1);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22801D1C0();
        v23 = v28;
      }

      (*(v12 + 32))(v10, *(v23 + 56) + *(v12 + 72) * v20, v11);
      sub_228027D20(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_2280292BC(v10, &qword_27D81E7E8, &unk_22813BD10);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v24 = *v2;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v2;
    result = sub_22801B8A0(v16, a2 & 1, v25);
    *v2 = v28;
  }

  return result;
}

uint64_t sub_22802509C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E798, &qword_22813BCA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_2280292BC(a1, &qword_27D81E798, &qword_22813BCA0);
    sub_2280274CC(a2, a3, v11);

    return sub_2280292BC(v11, &qword_27D81E798, &qword_22813BCA0);
  }

  else
  {
    sub_227FC8304(a1, v16, type metadata accessor for GMSModelInfoCache.CacheEntry);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22801BC18(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_228025270(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E950, &qword_22813C670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for SummarizationResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_2280292BC(a1, &qword_27D81E950, &qword_22813C670);
    v17 = *v3;
    v18 = sub_22808CFAC(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22801D9F0();
        v23 = v28;
      }

      sub_227FC8304(*(v23 + 56) + *(v12 + 72) * v20, v10, type metadata accessor for SummarizationResult);
      sub_2280280DC(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_2280292BC(v10, &qword_27D81E950, &qword_22813C670);
  }

  else
  {
    sub_227FC8304(a1, v16, type metadata accessor for SummarizationResult);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_22801BDF4(v16, a2, v25);
    *v3 = v28;
  }

  return result;
}

uint64_t sub_2280254C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E948, &qword_22813E1F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_2280292BC(a1, &qword_27D81E948, &qword_22813E1F0);
    v17 = *v3;
    v18 = sub_22808D0CC(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22801DC28();
        v23 = v28;
      }

      sub_227FC8304(*(v23 + 56) + *(v12 + 72) * v20, v10, type metadata accessor for PartialSummariesOperation.TaskResult);
      sub_228028368(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_2280292BC(v10, &qword_27D81E948, &qword_22813E1F0);
  }

  else
  {
    sub_227FC8304(a1, v16, type metadata accessor for PartialSummariesOperation.TaskResult);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_22801BF48(v16, a2, v25);
    *v3 = v28;
  }

  return result;
}

uint64_t SKAssetManager.__allocating_init()()
{
  v0 = swift_allocObject();
  SKAssetManager.init()();
  return v0;
}

uint64_t sub_22802577C()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_2280257F0()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

unint64_t sub_228025834()
{
  if (*v0)
  {
    result = 0xD000000000000024;
  }

  else
  {
    result = 0xD00000000000002CLL;
  }

  *v0;
  return result;
}

unint64_t SKAssetManager.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E8, &unk_22813BD10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v91 = &v80 - v5;
  v6 = sub_228136EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v80 - v14;
  *(v1 + 16) = 0xD00000000000001ALL;
  *(v1 + 24) = 0x8000000228145960;
  *(v1 + 32) = sub_228028BD0(&unk_283B5B1D0);
  *(v1 + 40) = sub_227FE4ED0(MEMORY[0x277D84F90]);
  v90 = v1 + 40;
  v16 = [objc_opt_self() sharedManager];
  v17 = *(v1 + 16);
  v18 = *(v1 + 24);

  v19 = sub_22813927C();

  v20 = [v16 retrieveAssetSet:v19 usages:0];

  if (v20)
  {
    v92 = v15;
    v88 = v12;
    v89 = v6;
    v81 = v1;
    v21 = *(v1 + 32);
    v22 = v21 + 56;
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v1 = v24 & *(v21 + 56);
    v25 = (v23 + 63) >> 6;
    v86 = (v7 + 56);
    v87 = (v7 + 16);
    v85 = (v7 + 8);
    v97 = v21;

    v26 = 0;
    v95 = "izationkit.ota.rules";
    v96 = "com.apple.summarizationkit";
    *&v27 = 136446210;
    v82 = v27;
    *&v27 = 136446466;
    v80 = v27;
    v93 = v20;
    v83 = v22;
    v84 = v25;
    while (v1)
    {
      v28 = v26;
LABEL_10:
      v29 = *(*(v97 + 48) + (__clz(__rbit64(v1)) | (v28 << 6)));
      v1 &= v1 - 1;
      if (v29)
      {
        v30 = 0xD000000000000024;
      }

      else
      {
        v30 = 0xD00000000000002CLL;
      }

      if (v29)
      {
        v31 = v96;
      }

      else
      {
        v31 = v95;
      }

      v98 = v30;
      v32 = sub_22813927C();
      v33 = [v20 assetNamed_];

      if (v33)
      {
        v34 = [v33 location];
        if (v34)
        {
          v94 = v33;
          v35 = v92;
          v36 = v34;
          sub_228136E5C();

          v37 = *v87;
          v38 = v91;
          v39 = v89;
          (*v87)(v91, v35, v89);
          (*v86)(v38, 0, 1, v39);
          swift_beginAccess();
          sub_228024E4C(v38, v29);
          swift_endAccess();
          if (qword_2813C49A8 != -1)
          {
            swift_once();
          }

          v40 = sub_22813882C();
          __swift_project_value_buffer(v40, qword_2813C89F0);
          v41 = v88;
          v37(v88, v35, v39);

          v42 = sub_22813880C();
          v43 = sub_2281396CC();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = v39;
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v99[0] = v46;
            *v45 = v80;
            v47 = sub_227FCC340(v98, v31 | 0x8000000000000000, v99);
            LODWORD(v98) = v43;
            v48 = v47;

            *(v45 + 4) = v48;
            *(v45 + 12) = 2082;
            sub_228029218(&qword_2813C8798, MEMORY[0x277CC9260]);
            v49 = sub_22813998C();
            v51 = v50;
            v52 = v41;
            v53 = *v85;
            (*v85)(v52, v44);
            v54 = sub_227FCC340(v49, v51, v99);

            *(v45 + 14) = v54;
            _os_log_impl(&dword_227FC3000, v42, v98, "Asset %{public}s is mapped to %{public}s", v45, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAB28A0](v46, -1, -1);
            MEMORY[0x22AAB28A0](v45, -1, -1);

            v53(v92, v44);
          }

          else
          {

            v70 = *v85;
            (*v85)(v41, v39);
            v70(v35, v39);
          }

          v26 = v28;
          v20 = v93;
          v22 = v83;
          v25 = v84;
        }

        else
        {
          if (qword_2813C49A8 != -1)
          {
            swift_once();
          }

          v62 = sub_22813882C();
          __swift_project_value_buffer(v62, qword_2813C89F0);

          v63 = sub_22813880C();
          v64 = sub_2281396DC();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v99[0] = v66;
            *v65 = v82;
            v67 = sub_227FCC340(v98, v31 | 0x8000000000000000, v99);
            v94 = v33;
            v68 = v67;

            *(v65 + 4) = v68;
            _os_log_impl(&dword_227FC3000, v63, v64, "Path for asset %{public}s is nil", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v66);
            MEMORY[0x22AAB28A0](v66, -1, -1);
            v69 = v65;
            v20 = v93;
            MEMORY[0x22AAB28A0](v69, -1, -1);
          }

          else
          {
          }

          v26 = v28;
        }
      }

      else
      {
        if (qword_2813C49A8 != -1)
        {
          swift_once();
        }

        v55 = sub_22813882C();
        __swift_project_value_buffer(v55, qword_2813C89F0);

        v56 = sub_22813880C();
        v57 = sub_2281396DC();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v99[0] = v59;
          *v58 = v82;
          v60 = sub_227FCC340(v98, v31 | 0x8000000000000000, v99);

          *(v58 + 4) = v60;
          _os_log_impl(&dword_227FC3000, v56, v57, "Asset %{public}s does not exist", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x22AAB28A0](v59, -1, -1);
          v61 = v58;
          v20 = v93;
          MEMORY[0x22AAB28A0](v61, -1, -1);
        }

        else
        {
        }

        v26 = v28;
      }
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v25)
      {

        return v81;
      }

      v1 = *(v22 + 8 * v28);
      ++v26;
      if (v1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  if (qword_2813C49A8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v71 = sub_22813882C();
  __swift_project_value_buffer(v71, qword_2813C89F0);

  v72 = sub_22813880C();
  v73 = sub_2281396DC();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v99[0] = v75;
    *v74 = 136446210;
    v76 = *(v1 + 16);
    v77 = *(v1 + 24);

    v78 = sub_227FCC340(v76, v77, v99);

    *(v74 + 4) = v78;
    _os_log_impl(&dword_227FC3000, v72, v73, "Asset set %{public}s does not exist", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x22AAB28A0](v75, -1, -1);
    MEMORY[0x22AAB28A0](v74, -1, -1);
  }

  return v1;
}

uint64_t sub_228026254@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v8 = sub_228136E3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v36[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_228136EAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v36[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(v4 + 40);
  if (*(v20 + 16) && (v21 = sub_22808CE24(a1 & 1), (v22 & 1) != 0))
  {
    (*(v15 + 16))(v19, *(v20 + 56) + *(v15 + 72) * v21, v14);
    v36[0] = a2;
    v36[1] = a3;
    (*(v9 + 104))(v13, *MEMORY[0x277CC91D8], v8);
    sub_227FDB420();
    v23 = v35;
    sub_228136E9C();
    (*(v9 + 8))(v13, v8);
    (*(v15 + 8))(v19, v14);
    v24 = v23;
    v25 = 0;
  }

  else
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v26 = sub_22813882C();
    __swift_project_value_buffer(v26, qword_2813C89F0);
    v27 = sub_22813880C();
    v28 = sub_2281396DC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136446210;
      if (a1)
      {
        v31 = 0xD000000000000024;
      }

      else
      {
        v31 = 0xD00000000000002CLL;
      }

      if (a1)
      {
        v32 = "com.apple.summarizationkit";
      }

      else
      {
        v32 = "izationkit.ota.rules";
      }

      v33 = sub_227FCC340(v31, v32 | 0x8000000000000000, v36);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_227FC3000, v27, v28, "Asset ID %{public}s is not registered", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAB28A0](v30, -1, -1);
      MEMORY[0x22AAB28A0](v29, -1, -1);
    }

    v25 = 1;
    v24 = v35;
  }

  return (*(v15 + 56))(v24, v25, 1, v14);
}

uint64_t sub_2280265D4(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228136C0C();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v51 = &v42 - v12;
  v52 = sub_228136C1C();
  v47 = *(v52 - 8);
  v13 = *(v47 + 64);
  v15 = MEMORY[0x28223BE20](v52, v14);
  v53 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v18 = sub_2281392DC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E8, &unk_22813BD10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v42 - v24;
  v26 = sub_228136EAC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v45 = a2;
  v50 = a3;
  sub_228026254(a1 & 1, a2, a3, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_2280292BC(v25, &qword_27D81E7E8, &unk_22813BD10);
    return 0;
  }

  else
  {
    (*(v27 + 32))(v31, v25, v26);
    v32 = sub_228136EBC();
    v43 = v27;
    v42 = v26;
    v33 = v32;
    v35 = v34;
    v37 = sub_227FC87CC(v32, v34);
    v38 = v33;
    v40 = v39;
    sub_227FC9210(v38, v35);
    sub_2281392CC();
    v41 = sub_2281392BC();
    sub_227FC9210(v37, v40);
    (*(v43 + 8))(v31, v42);
    return v41;
  }
}

void *SKAssetManager.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t SKAssetManager.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_228026EB4(uint64_t a1, unint64_t a2)
{
  v4 = sub_228026F00(a1, a2);
  sub_228027030(&unk_283B5AAE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_228026F00(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22802711C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2281398AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2281393EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22802711C(v10, 0);
        result = sub_22813985C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_228027030(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_228027190(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22802711C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E958, &qword_22813C678);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_228027190(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E958, &qword_22813C678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

double sub_228027284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22808C964(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22801C85C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_227FCFAD4((*(v12 + 56) + 32 * v9), a3);
    sub_228027638(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_228027328@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(void)@<X4>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = a1();
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v19 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v19;
    }

    sub_2280292BC(*(v17 + 48) + 48 * v14, a2, a3);
    sub_227FCFAD4((*(v17 + 56) + 32 * v14), a5);
    sub_228027998(v14, v17, a2, a3);
    *v9 = v17;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

double sub_228027400@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = sub_2280D3358(a1, *v2);
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v13 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22801D03C();
      v10 = v13;
    }

    v11 = *(*(v10 + 48) + 8 * v7);

    sub_227FCFAD4((*(v10 + 56) + 32 * v7), a2);
    sub_228027B6C(v7, v10);
    *v2 = v10;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2280274CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22808C964(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22801D760();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
    v22 = *(v15 - 8);
    sub_227FC8304(v14 + *(v22 + 72) * v9, a3, type metadata accessor for GMSModelInfoCache.CacheEntry);
    sub_228027EF0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_228027638(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_228139AAC();

      sub_22813923C();
      v14 = sub_228139AEC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2280277E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_228139AAC();

      sub_22813923C();
      v13 = sub_228139AEC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228027998(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_22813980C() + 1) & ~v7;
    do
    {
      sub_22802931C(*(a2 + 48) + 48 * v8, v28, a3, a4);
      v14 = *(a2 + 40);
      sub_228139AAC();
      MEMORY[0x22AAB2060](v29);
      v15 = sub_228139AEC();
      result = sub_2280292BC(v28, a3, a4);
      v16 = v15 & v11;
      if (v5 >= v12)
      {
        if (v16 < v12)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v12)
      {
        goto LABEL_10;
      }

      if (v5 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 48 * v5);
        v19 = (v17 + 48 * v8);
        if (v5 != v8 || v18 >= v19 + 3)
        {
          v20 = *v19;
          v21 = v19[2];
          v18[1] = v19[1];
          v18[2] = v21;
          *v18 = v20;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 32 * v5);
        v24 = (v22 + 32 * v8);
        if (v5 != v8 || v23 >= v24 + 2)
        {
          v13 = v24[1];
          *v23 = *v24;
          v23[1] = v13;
          v5 = v8;
        }
      }

LABEL_4:
      v8 = (v8 + 1) & v11;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228027B6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v23 = *(*(a2 + 48) + 8 * v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281391DC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 32 * v3);
          v19 = (v17 + 32 * v6);
          if (v3 != v6 || v18 >= v19 + 2)
          {
            v9 = v19[1];
            *v18 = *v19;
            v18[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_228027D20(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_228139AAC();
      MEMORY[0x22AAB2060](v10);
      result = sub_228139AEC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_228136EAC() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_228027EF0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_228139AAC();

      sub_22813923C();
      v13 = sub_228139AEC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for GMSModelInfoCache.CacheEntry(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2280280DC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_228139AAC();
      sub_22813923C();

      result = sub_228139AEC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for SummarizationResult() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_228028368(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_228139A9C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for PartialSummariesOperation.TaskResult(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_228028528(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v33 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v11 = *a4;
  v13 = sub_22808CA18(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *a4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_227FCFAD4(&v32, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_22801CA00();
    goto LABEL_7;
  }

  sub_228018B50(v16, a3 & 1);
  v22 = *a4;
  v23 = sub_22808CA18(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E8, &unk_22813C660);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22802931C(a2, v31, &qword_27D81E5E8, &unk_22813C660);
  v25 = v33;
  v26 = __swift_mutable_project_boxed_opaque_existential_0(&v32, v33);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v26, v26);
  v29 = v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  sub_228028988(v13, v31, v29, v19, a5);
  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

_OWORD *sub_228028758(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v33 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v11 = *a4;
  v13 = sub_22808CE90(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *a4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_227FCFAD4(&v32, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_22801CE64();
    goto LABEL_7;
  }

  sub_2280193C0(v16, a3 & 1);
  v22 = *a4;
  v23 = sub_22808CE90(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E610, &unk_22813B450);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22802931C(a2, v31, &qword_27D81E610, &unk_22813B450);
  v25 = v33;
  v26 = __swift_mutable_project_boxed_opaque_existential_0(&v32, v33);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v26, v26);
  v29 = v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  sub_228028988(v13, v31, v29, v19, a5);
  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

_OWORD *sub_228028988(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v18 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a4[6] + 48 * a1);
  v12 = a2[1];
  *v11 = *a2;
  v11[1] = v12;
  v11[2] = a2[2];
  result = sub_227FCFAD4(&v17, (a4[7] + 32 * a1));
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_228028A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E918, &qword_22813C628);
    v3 = sub_22813984C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_228139AAC();

      sub_22813923C();
      result = sub_228139AEC();
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
          result = sub_2281399BC();
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

uint64_t sub_228028BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E960, &unk_22813C680);
    v3 = sub_22813984C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_228139AAC();
      MEMORY[0x22AAB2060](v10);
      result = sub_228139AEC();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (v10 != *(v18 + v14))
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

uint64_t getEnumTagSinglePayload for SKAssetManager.SKRegisteredAssetID(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SKAssetManager.SKRegisteredAssetID(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_228028EA4()
{
  result = qword_2813C7888[0];
  if (!qword_2813C7888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813C7888);
  }

  return result;
}

uint64_t sub_228028EF8(uint64_t a1)
{
  v2 = sub_2281371AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E928, &qword_22813C650);
    v12 = sub_22813984C();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_228029218(&qword_27D81E930, MEMORY[0x277CC99D0]);
      v20 = sub_2281391DC();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_228029218(&qword_27D81E938, MEMORY[0x277CC99D0]);
          v27 = sub_22813926C();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_228029218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228029260(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280292BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22802931C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.input.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(v1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v9 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803FFCC(v8 + v9, v7, &qword_27D81E8F0, &unk_22813C500);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_228030960(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v12 = a1 + *(v10 + 32);
  sub_228137D6C();
  v13 = *(v10 + 36);
  v14 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_228040034(v7, &qword_27D81E8F0, &unk_22813C500);
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.gmsConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(v1 + *(v8 + 24), v7, &qword_27D81E8C8, &qword_22813C4D8);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_228030960(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  sub_228137D6C();
  v11 = *(v9 + 20);
  if (qword_2813C5440 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_2813C5448;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_228040034(v7, &qword_27D81E8C8, &qword_22813C4D8);
  }

  return result;
}

uint64_t sub_22802978C(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

BOOL sub_228029810(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v19 - v12;
  v14 = *(v4 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v15 = *a3;
  swift_beginAccess();
  sub_22803FFCC(v14 + v15, v13, a1, a2);
  v16 = a4(0);
  v17 = (*(*(v16 - 8) + 48))(v13, 1, v16) != 1;
  sub_228040034(v13, a1, a2);
  return v17;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.output.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(v1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v9 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803FFCC(v8 + v9, v7, &qword_27D81E8D0, &unk_22813C4E0);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_228030960(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v12 = a1 + *(v10 + 32);
  sub_228137D6C();
  v13 = *(v10 + 36);
  v14 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_228040034(v7, &qword_27D81E8D0, &unk_22813C4E0);
  }

  return result;
}

unint64_t Com_Apple_Summarizationkit_Proto_SummarizationStyle.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_228029B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E6A4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_228029B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v16 = *(a2 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_22803E084(v18);

    *(a2 + v15) = v22;
    v18 = v22;
  }

  sub_228030960(v14, v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  (*(v10 + 56))(v8, 0, 1, v9);
  v23 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803E3CC(v8, v18 + v23, &qword_27D81E8F0, &unk_22813C500);
  return swift_endAccess();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.input.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v20 - v7;
  v9 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_22803E084(v12);

    *(v2 + v9) = v16;
    v12 = v16;
  }

  sub_228030960(a1, v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  v17 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803E3CC(v8, v12 + v18, &qword_27D81E8F0, &unk_22813C500);
  return swift_endAccess();
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.input.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803FFCC(v16 + v17, v8, &qword_27D81E8F0, &unk_22813C500);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    *(v14 + 24) = MEMORY[0x277D84F90];
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    v19 = v14 + *(v9 + 32);
    sub_228137D6C();
    v20 = *(v9 + 36);
    v21 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E8F0, &unk_22813C500);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  return sub_22802A234;
}

void sub_22802A234(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22803E434(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_22803E084(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_228030960(v15, v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
    swift_beginAccess();
    sub_22803E3CC(v19, v7 + v20, &qword_27D81E8F0, &unk_22813C500);
    swift_endAccess();
    sub_22803E49C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_22803E084(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_228030960(v14, v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
    swift_beginAccess();
    sub_22803E3CC(v19, v24 + v33, &qword_27D81E8F0, &unk_22813C500);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

uint64_t sub_22802A4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v16 = *(a2 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_22803E084(v18);

    *(a2 + v15) = v22;
    v18 = v22;
  }

  sub_228030960(v14, v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  (*(v10 + 56))(v8, 0, 1, v9);
  v23 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803E3CC(v8, v18 + v23, &qword_27D81E8D0, &unk_22813C4E0);
  return swift_endAccess();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.output.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v20 - v7;
  v9 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_22803E084(v12);

    *(v2 + v9) = v16;
    v12 = v16;
  }

  sub_228030960(a1, v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  v17 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803E3CC(v8, v12 + v18, &qword_27D81E8D0, &unk_22813C4E0);
  return swift_endAccess();
}

uint64_t sub_22802A854@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  v3 = a1(0);
  v4 = a2 + *(v3 + 32);
  sub_228137D6C();
  v5 = *(v3 + 36);
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.output.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803FFCC(v16 + v17, v8, &qword_27D81E8D0, &unk_22813C4E0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    *(v14 + 24) = MEMORY[0x277D84F90];
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    v19 = v14 + *(v9 + 32);
    sub_228137D6C();
    v20 = *(v9 + 36);
    v21 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E8D0, &unk_22813C4E0);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  }

  return sub_22802ABB0;
}

void sub_22802ABB0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22803E434(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_22803E084(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_228030960(v15, v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
    swift_beginAccess();
    sub_22803E3CC(v19, v7 + v20, &qword_27D81E8D0, &unk_22813C4E0);
    swift_endAccess();
    sub_22803E49C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_22803E084(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_228030960(v14, v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
    swift_beginAccess();
    sub_22803E3CC(v19, v24 + v33, &qword_27D81E8D0, &unk_22813C4E0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

uint64_t sub_22802AE48(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v26 - v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v16 = *(v4 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_22803E084(v18);

    *(v9 + v15) = v22;
    v18 = v22;
  }

  v23 = a3(0);
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = *a4;
  swift_beginAccess();
  sub_22803E3CC(v14, v18 + v24, a1, a2);
  return swift_endAccess();
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.summarizeUnsafeInput.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_22802B058;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.finalGmsSafetyMatrix.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v2 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22802B0BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v4 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22802B128(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_22803E084(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  v13 = *(v7 + v12);
  *(v7 + v12) = v3;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.finalGmsSafetyMatrix.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_22803E084(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  v13 = *(v7 + v12);
  *(v7 + v12) = a1;
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.finalGmsSafetyMatrix.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_22802B348;
}

void sub_22802B348(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_22803E084(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    v17 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
    swift_beginAccess();
    v18 = *(v10 + v17);
    *(v10 + v17) = v3;

    v19 = *v4;
  }

  else
  {
    v20 = *(v6 + v5);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v5);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 88);
      v24 = *(v2 + 80);
      v25 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_22803E084(v22);

      *(v24 + v23) = v28;
      v22 = v28;
    }

    v29 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
    swift_beginAccess();
    v30 = *(v22 + v29);
    *(v22 + v29) = v3;
  }

  free(v2);
}

uint64_t sub_22802B4A0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_22803E084(v11);

    *(a2 + v8) = v15;
    v11 = v15;
  }

  v16 = *a5;
  result = swift_beginAccess();
  *(v11 + v16) = v7;
  return result;
}

uint64_t sub_22802B558(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_22803E084(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = a1 & 1;
  return result;
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.throwErrorIfFinalDecisionUnsafe.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_22802B6B0;
}

void sub_22802B6BC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_22803E084(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v7;

  free(v4);
}

unint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.SanitizerType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22802B7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E5B4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.denyListResourceFunctionName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.denyListResourceFunctionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.langCheckConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0) + 36);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E998, &unk_228141680);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 12) = 0;
    v17 = v14 + *(v9 + 28);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E998, &unk_228141680);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  return sub_22802BB58;
}

void sub_22802BB58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
    sub_228040034(v9 + v3, &qword_27D81E998, &unk_228141680);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E998, &unk_228141680);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.activeSanitizers.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.sanitizerLocale.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.sanitizerLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_22802BEB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = a1(0);
  sub_22803FFCC(v2 + *(v10 + 36), v9, &qword_27D81E998, &unk_228141680);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_228030960(v9, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  v13 = a2 + *(v11 + 28);
  sub_228137D6C();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_228040034(v9, &qword_27D81E998, &unk_228141680);
  }

  return result;
}

uint64_t sub_22802C024@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v16 - v9;
  v11 = a2(0);
  sub_22803FFCC(a1 + *(v11 + 36), v10, &qword_27D81E998, &unk_228141680);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v10, 1, v12) != 1)
  {
    return sub_228030960(v10, a3, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  *a3 = MEMORY[0x277D84F90];
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  v14 = a3 + *(v12 + 28);
  sub_228137D6C();
  result = (v13)(v10, 1, v12);
  if (result != 1)
  {
    return sub_228040034(v10, &qword_27D81E998, &unk_228141680);
  }

  return result;
}

uint64_t sub_22802C19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  v14 = *(a5(0) + 36);
  sub_228040034(a2 + v14, &qword_27D81E998, &unk_228141680);
  sub_228030960(v13, a2 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  return (*(v9 + 56))(a2 + v14, 0, 1, v8);
}

uint64_t sub_22802C2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  sub_228040034(v2 + v4, &qword_27D81E998, &unk_228141680);
  sub_228030960(a1, v2 + v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig.langCheckConfig.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0) + 36);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E998, &unk_228141680);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 12) = 0;
    v17 = v14 + *(v9 + 28);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E998, &unk_228141680);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  return sub_2280401D8;
}

BOOL sub_22802C5E8(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = a1(0);
  sub_22803FFCC(v1 + *(v8 + 36), v7, &qword_27D81E998, &unk_228141680);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
  sub_228040034(v7, &qword_27D81E998, &unk_228141680);
  return v10;
}

uint64_t sub_22802C704(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 36);
  sub_228040034(v1 + v2, &qword_27D81E998, &unk_228141680);
  v3 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t sub_22802C7F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22802C894(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.init()@<X0>(uint64_t a1@<X8>)
{
  sub_228137D6C();
  v2 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  if (qword_2813C5440 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_2813C5448;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.factualConsistencyConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  sub_22803FFCC(v1 + *(v8 + 20), v7, &qword_27D81E9A0, &unk_22813C6D0);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_228030960(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v11 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v11;
  v12 = a1 + *(v9 + 32);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_228040034(v7, &qword_27D81E9A0, &unk_22813C6D0);
  }

  return result;
}

uint64_t sub_22802CB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  sub_22803FFCC(a1 + *(v9 + 20), v8, &qword_27D81E9A0, &unk_22813C6D0);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_228030960(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = v12;
  v13 = a2 + *(v10 + 32);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_228040034(v8, &qword_27D81E9A0, &unk_22813C6D0);
  }

  return result;
}

uint64_t sub_22802CCC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  sub_228040034(a2 + v10, &qword_27D81E9A0, &unk_22813C6D0);
  sub_228030960(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.factualConsistencyConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  sub_228040034(v1 + v3, &qword_27D81E9A0, &unk_22813C6D0);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v2;
  v3 = a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0) + 32);
  return sub_228137D6C();
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.factualConsistencyConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E9A0, &unk_22813C6D0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    v17 = MEMORY[0x277D84F90];
    *(v14 + 24) = MEMORY[0x277D84F90];
    *(v14 + 32) = v17;
    v18 = v14 + *(v9 + 32);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E9A0, &unk_22813C6D0);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  return sub_22802D130;
}

void sub_22802D130(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
    sub_228040034(v9 + v3, &qword_27D81E9A0, &unk_22813C6D0);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E9A0, &unk_22813C6D0);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

void Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.modelType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.modelType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.fccRequiredStyles.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_22802D4B8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22802D524(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E650();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22802D570()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.init()@<X0>(uint64_t a1@<X8>)
{
  sub_228137D6C();
  v2 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  v3 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.useCaseID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(v1 + *(v8 + 20), v7, &qword_27D81E4A8, &unk_22813DE00);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_228030960(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v11 = a1 + *(v9 + 20);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_228040034(v7, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_22802D7B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v9 + 20), v8, &qword_27D81E4A8, &unk_22813DE00);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_228030960(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v12 = a2 + *(v10 + 20);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_228040034(v8, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_22802D918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 20);
  sub_228040034(a2 + v10, &qword_27D81E4A8, &unk_22813DE00);
  sub_228030960(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.useCaseID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 20);
  sub_228040034(v1 + v3, &qword_27D81E4A8, &unk_22813DE00);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.useCaseID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 20);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E4A8, &unk_22813DE00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v17 = v14 + *(v9 + 20);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E4A8, &unk_22813DE00);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  return sub_22802DD1C;
}

void sub_22802DD1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    sub_228040034(v9 + v3, &qword_27D81E4A8, &unk_22813DE00);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E4A8, &unk_22813DE00);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22802DEC0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v18 - v12;
  v14 = a3(0);
  sub_22803FFCC(v4 + *(v14 + 20), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_228040034(v13, a1, a2);
  return v16;
}

uint64_t sub_22802DFF8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_228040034(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_22802E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v9 + 24), v8, &qword_27D81E8C8, &qword_22813C4D8);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_228030960(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  sub_228137D6C();
  v12 = *(v10 + 20);
  if (qword_2813C5440 != -1)
  {
    swift_once();
  }

  *(a2 + v12) = qword_2813C5448;
  v13 = v11(v8, 1, v10);

  if (v13 != 1)
  {
    return sub_228040034(v8, &qword_27D81E8C8, &qword_22813C4D8);
  }

  return result;
}

uint64_t sub_22802E250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  sub_228040034(a2 + v10, &qword_27D81E8C8, &qword_22813C4D8);
  sub_228030960(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.gmsConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  sub_228040034(v1 + v3, &qword_27D81E8C8, &qword_22813C4D8);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.gmsConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E8C8, &qword_22813C4D8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_228137D6C();
    v17 = *(v9 + 20);
    if (qword_2813C5440 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_2813C5448;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_228040034(v8, &qword_27D81E8C8, &qword_22813C4D8);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  return sub_22802E694;
}

void sub_22802E694(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    sub_228040034(v9 + v3, &qword_27D81E8C8, &qword_22813C4D8);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E8C8, &qword_22813C4D8);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.internalConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(v1 + *(v8 + 28), v7, &qword_27D81E9A8, &unk_22813C6E0);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_228030960(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  }

  sub_228137D6C();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_228040034(v7, &qword_27D81E9A8, &unk_22813C6E0);
  }

  return result;
}

uint64_t sub_22802E9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v9 + 28), v8, &qword_27D81E9A8, &unk_22813C6E0);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_228030960(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  }

  sub_228137D6C();
  v12 = *(v10 + 20);
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_228040034(v8, &qword_27D81E9A8, &unk_22813C6E0);
  }

  return result;
}

uint64_t sub_22802EB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  sub_228040034(a2 + v10, &qword_27D81E9A8, &unk_22813C6E0);
  sub_228030960(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.internalConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  sub_228040034(v1 + v3, &qword_27D81E9A8, &unk_22813C6E0);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.internalConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E9A8, &unk_22813C6E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_228137D6C();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E9A8, &unk_22813C6E0);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  }

  return sub_22802EFA8;
}

void sub_22802EFA8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    sub_228040034(v9 + v3, &qword_27D81E9A8, &unk_22813C6E0);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E9A8, &unk_22813C6E0);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.hasInternalConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(v0 + *(v6 + 28), v5, &qword_27D81E9A8, &unk_22813C6E0);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_228040034(v5, &qword_27D81E9A8, &unk_22813C6E0);
  return v8;
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.clearInternalConfig()()
{
  v1 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  sub_228040034(v0 + v1, &qword_27D81E9A8, &unk_22813C6E0);
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_22802F294@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22802F300(uint64_t a1)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.init()@<X0>(uint64_t a1@<X8>)
{
  sub_228137D6C();
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v3 = v2[5];
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.clientID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  sub_22803FFCC(v1 + *(v8 + 24), v7, &qword_27D81E4B0, &qword_22813AB20);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_228030960(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v11 = a1 + *(v9 + 20);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_228040034(v7, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_22802F5FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  sub_22803FFCC(a1 + *(v9 + 24), v8, &qword_27D81E4B0, &qword_22813AB20);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_228030960(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v12 = a2 + *(v10 + 20);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_228040034(v8, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_22802F760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 24);
  sub_228040034(a2 + v10, &qword_27D81E4B0, &qword_22813AB20);
  sub_228030960(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.clientID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 24);
  sub_228040034(v1 + v3, &qword_27D81E4B0, &qword_22813AB20);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.clientID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 24);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E4B0, &qword_22813AB20);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v17 = v14 + *(v9 + 20);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E4B0, &qword_22813AB20);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  return sub_22802FB64;
}

void sub_22802FB64(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_228040034(v9 + v3, &qword_27D81E4B0, &qword_22813AB20);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E4B0, &qword_22813AB20);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22802FD08(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v18 - v12;
  v14 = a3(0);
  sub_22803FFCC(v4 + *(v14 + 24), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_228040034(v13, a1, a2);
  return v16;
}

uint64_t sub_22802FE40(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_228040034(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.useCaseConfigList.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  v3 = &a1[*(v2 + 20)];
  sub_228137D6C();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.clientConfigList.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0) + 24);
  return sub_228137D6C();
}

uint64_t sub_228030330()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C8628);
  __swift_project_value_buffer(v0, qword_2813C8628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TOP_LINE";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "TOPIC";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_2280305A4()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C52B8);
  __swift_project_value_buffer(v0, qword_2813C52B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "input";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "output";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "summarize_unsafe_input";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "final_gms_safety_matrix";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "throw_error_if_final_decision_unsafe";
  *(v16 + 8) = 36;
  *(v16 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_228030868()
{
  v0 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  result = (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput) = 0;
  *(v3 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe) = 0;
  qword_2813C5448 = v3;
  return result;
}

uint64_t sub_228030960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228030A08()
{
  sub_228040034(v0 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input, &qword_27D81E8F0, &unk_22813C500);
  sub_228040034(v0 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output, &qword_27D81E8D0, &unk_22813C4E0);
  v1 = *(v0 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_22803E084(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_228030B60(v11, a1, a2, a3);
}

uint64_t sub_228030B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_228030C94();
        }

        else if (result == 2)
        {
          sub_228030D70();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_228030ED8(a2, a1, a3, a4, &OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput);
            break;
          case 4:
            sub_228030E4C();
            break;
          case 5:
            sub_228030ED8(a2, a1, a3, a4, &OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe);
            break;
        }
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_228030C94()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  sub_22803E608(&qword_2813C5620, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228137E9C();
  return swift_endAccess();
}

uint64_t sub_228030D70()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  sub_22803E608(&qword_2813C5548, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  sub_228137E9C();
  return swift_endAccess();
}

uint64_t sub_228030E4C()
{
  swift_beginAccess();
  sub_228137E2C();
  return swift_endAccess();
}

uint64_t sub_228030ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_228137E0C();
  return swift_endAccess();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  result = sub_228030FCC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_228030FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_228031124(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22803134C(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
    swift_beginAccess();
    if (*(a1 + v10) == 1)
    {
      sub_228137F1C();
    }

    v11 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {

      sub_228137F0C();
    }

    v12 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
    result = swift_beginAccess();
    if (*(a1 + v12) == 1)
    {
      return sub_228137F1C();
    }
  }

  return result;
}

uint64_t sub_228031124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803FFCC(a1 + v16, v9, &qword_27D81E8F0, &unk_22813C500);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_228040034(v9, &qword_27D81E8F0, &unk_22813C500);
  }

  sub_228030960(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_22803E608(&qword_2813C5620, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228137F8C();
  return sub_22803E49C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
}

uint64_t sub_22803134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803FFCC(a1 + v16, v9, &qword_27D81E8D0, &unk_22813C4E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_228040034(v9, &qword_27D81E8D0, &unk_22813C4E0);
  }

  sub_228030960(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  sub_22803E608(&qword_2813C5548, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  sub_228137F8C();
  return sub_22803E49C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
}

uint64_t sub_228031578(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v72 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v71 = *(v72 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v72, v4);
  v66 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAF0, &qword_22813D930);
  v6 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69, v7);
  v73 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v67 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v14);
  v70 = &v65 - v15;
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v68 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAF8, &qword_22813D938);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v65 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v74 = (&v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v65 - v33;
  v35 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  v36 = a1 + v35;
  v37 = v75;
  sub_22803FFCC(v36, v34, &qword_27D81E8F0, &unk_22813C500);
  v38 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  v39 = *(v22 + 56);
  sub_22803FFCC(v34, v26, &qword_27D81E8F0, &unk_22813C500);
  sub_22803FFCC(v37 + v38, &v26[v39], &qword_27D81E8F0, &unk_22813C500);
  v40 = *(v17 + 48);
  if (v40(v26, 1, v16) == 1)
  {

    sub_228040034(v34, &qword_27D81E8F0, &unk_22813C500);
    v41 = a1;
    if (v40(&v26[v39], 1, v16) == 1)
    {
      sub_228040034(v26, &qword_27D81E8F0, &unk_22813C500);
      goto LABEL_8;
    }

LABEL_6:
    sub_228040034(v26, &qword_27D81EAF8, &qword_22813D938);
    goto LABEL_18;
  }

  v41 = a1;
  v42 = v74;
  sub_22803FFCC(v26, v74, &qword_27D81E8F0, &unk_22813C500);
  if (v40(&v26[v39], 1, v16) == 1)
  {

    sub_228040034(v34, &qword_27D81E8F0, &unk_22813C500);
    sub_22803E49C(v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    goto LABEL_6;
  }

  v43 = v68;
  sub_228030960(&v26[v39], v68, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

  v44 = sub_22803CD74(v42, v43, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_22803E49C(v43, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228040034(v34, &qword_27D81E8F0, &unk_22813C500);
  sub_22803E49C(v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228040034(v26, &qword_27D81E8F0, &unk_22813C500);
  if ((v44 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v45 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  v46 = v70;
  sub_22803FFCC(v41 + v45, v70, &qword_27D81E8D0, &unk_22813C4E0);
  v47 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  v48 = *(v69 + 48);
  v49 = v73;
  sub_22803FFCC(v46, v73, &qword_27D81E8D0, &unk_22813C4E0);
  sub_22803FFCC(v37 + v47, v49 + v48, &qword_27D81E8D0, &unk_22813C4E0);
  v50 = *(v71 + 48);
  v51 = v72;
  if (v50(v49, 1, v72) != 1)
  {
    v52 = v67;
    sub_22803FFCC(v49, v67, &qword_27D81E8D0, &unk_22813C4E0);
    if (v50(v49 + v48, 1, v51) == 1)
    {
      sub_228040034(v46, &qword_27D81E8D0, &unk_22813C4E0);
      sub_22803E49C(v52, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
      goto LABEL_13;
    }

    v53 = v49 + v48;
    v54 = v66;
    sub_228030960(v53, v66, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    v55 = sub_22803CD74(v52, v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    sub_22803E49C(v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    sub_228040034(v46, &qword_27D81E8D0, &unk_22813C4E0);
    sub_22803E49C(v52, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    sub_228040034(v49, &qword_27D81E8D0, &unk_22813C4E0);
    if (v55)
    {
      goto LABEL_15;
    }

LABEL_18:

    v63 = 0;
    return v63 & 1;
  }

  sub_228040034(v46, &qword_27D81E8D0, &unk_22813C4E0);
  if (v50(v49 + v48, 1, v51) != 1)
  {
LABEL_13:
    sub_228040034(v49, &qword_27D81EAF0, &qword_22813D930);
    goto LABEL_18;
  }

  sub_228040034(v49, &qword_27D81E8D0, &unk_22813C4E0);
LABEL_15:
  v56 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  LODWORD(v56) = *(v41 + v56);
  v57 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  if (v56 != *(v37 + v57))
  {
    goto LABEL_18;
  }

  v58 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  v59 = *(v41 + v58);
  v60 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  if ((sub_22803C5A0(v59, *(v37 + v60)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v61 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  swift_beginAccess();
  LOBYTE(v61) = *(v41 + v61);

  v62 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  swift_beginAccess();
  LOBYTE(v62) = *(v37 + v62);

  v63 = v61 ^ v62 ^ 1;
  return v63 & 1;
}

uint64_t sub_228031E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = *(a1 + 20);
  if (qword_2813C5440 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_2813C5448;
}

uint64_t sub_228031F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA98, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_228032024(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C52A8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228032090()
{
  sub_22803E608(&qword_2813C52A8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);

  return sub_228137EDC();
}

uint64_t sub_228032110()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5480);
  __swift_project_value_buffer(v0, qword_2813C5480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "offensive_vulgar_sensitive";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "text_moderation";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "text_sanitization";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "regional_sanitizer";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_228032448(uint64_t a1, uint64_t *a2)
{
  v3 = sub_228137FBC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22813C6B0;
  v7 = v19 + v6;
  v8 = v19 + v6 + v4[14];
  *(v19 + v6) = 1;
  *v8 = "use_deny_list";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v10 = sub_228137F9C();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v8, v9, v10);
  v12 = v7 + v5 + v4[14];
  *(v7 + v5) = 2;
  *v12 = "deny_list_resource_function_name";
  *(v12 + 8) = 32;
  *(v12 + 16) = 2;
  v11();
  v13 = (v7 + 2 * v5);
  v14 = v13 + v4[14];
  *v13 = 3;
  *v14 = "lang_check_config";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v11();
  v15 = (v7 + 3 * v5);
  v16 = v15 + v4[14];
  *v15 = 4;
  *v16 = "active_sanitizers";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v11();
  v17 = v7 + 4 * v5 + v4[14];
  *(v7 + 4 * v5) = 5;
  *v17 = "sanitizer_locale";
  *(v17 + 8) = 16;
  *(v17 + 16) = 2;
  v11();
  return sub_228137FAC();
}

uint64_t (*sub_2280327F0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_46;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_228032848(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280328E8(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C5620, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228032954()
{
  sub_22803E608(&qword_2813C5620, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

  return sub_228137EDC();
}

uint64_t sub_228032A30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x22AAB1970](a2, a3);
  *a4 = 0xD000000000000038;
  *a5 = 0x8000000228145A50;
  return result;
}

uint64_t sub_228032B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  result = sub_228137DCC();
  if (!v5)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }

        sub_228137E0C();
      }

      else
      {
        if (result == 3)
        {
          sub_228032C48(a1, v7, a2, a3, a4);
          goto LABEL_5;
        }

        if (result != 4)
        {
          if (result != 5)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_228137E7C();
          goto LABEL_5;
        }

        sub_22803E5B4();
        sub_228137DEC();
      }

LABEL_5:
      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_228032C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 36);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  sub_22803E608(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  return sub_228137E9C();
}

uint64_t sub_228032D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (*v5 != 1 || (result = sub_228137F1C(), !v6))
  {
    v13 = *(v5 + 16);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *(v5 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (result = sub_228137F6C(), !v6))
    {
      result = sub_228032E90(v5, a1, a2, a3, a4);
      if (!v6)
      {
        if (*(*(v5 + 24) + 16))
        {
          sub_22803E5B4();
          sub_228137EFC();
        }

        v15 = *(v5 + 40);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *(v5 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          sub_228137F6C();
        }

        v17 = v5 + *(a5(0) + 32);
        return sub_228137D5C();
      }
    }
  }

  return result;
}

uint64_t sub_228032E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v20[3] = a4;
  v20[0] = a2;
  v20[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a5(0);
  sub_22803FFCC(a1 + *(v18 + 36), v11, &qword_27D81E998, &unk_228141680);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_228040034(v11, &qword_27D81E998, &unk_228141680);
  }

  sub_228030960(v11, v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  sub_22803E608(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  sub_228137F8C();
  return sub_22803E49C(v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
}

uint64_t sub_228033128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  v4 = a2 + *(a1 + 32);
  sub_228137D6C();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t (*sub_2280331EC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_47;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_228033244(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280332E4(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C5548, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228033350()
{
  sub_22803E608(&qword_2813C5548, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);

  return sub_228137EDC();
}

uint64_t sub_228033418()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4C28);
  __swift_project_value_buffer(v0, qword_2813C4C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813A4B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "factual_consistency_config";
  *(v5 + 8) = 26;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_228137F9C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_228137DCC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22803361C();
    }
  }

  return result;
}

uint64_t sub_22803361C()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  sub_22803E608(&qword_2813C4CF0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228033728(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_228033728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  sub_22803FFCC(a1 + *(v16 + 20), v9, &qword_27D81E9A0, &unk_22813C6D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_228040034(v9, &qword_27D81E9A0, &unk_22813C6D0);
  }

  sub_228030960(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  sub_22803E608(&qword_2813C4CF0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  sub_228137F8C();
  return sub_22803E49C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
}

uint64_t sub_228033990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_228033A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA80, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_228033B18(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C4C18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228033B84()
{
  sub_22803E608(&qword_2813C4C18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);

  return sub_228137EDC();
}

uint64_t sub_228033C04()
{
  result = MEMORY[0x22AAB1970](0xD000000000000019, 0x8000000228145D70);
  qword_27D81E988 = 0xD00000000000003DLL;
  unk_27D81E990 = 0x8000000228145A90;
  return result;
}

uint64_t sub_228033CA4(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_228033D00()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4D00);
  __swift_project_value_buffer(v0, qword_2813C4D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_enabled";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_type";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fcc_enabled_styles";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fcc_required_styles";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          sub_22803E6A4();
          sub_228137DEC();
        }
      }

      else if (result == 1)
      {
        sub_228137E0C();
      }

      else if (result == 2)
      {
        sub_22803E650();
        sub_228137E1C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_228137F1C(), !v1))
  {
    v3 = v1;
    if (*(v0 + 8))
    {
      v6 = *(v0 + 8);
      v7 = *(v0 + 16);
      sub_22803E650();
      result = sub_228137F2C();
      if (v1)
      {
        return result;
      }

      v3 = 0;
    }

    if (*(*(v0 + 24) + 16))
    {
      sub_22803E6A4();
      v4 = v3;
      result = sub_228137EFC();
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v4 = v3;
    }

    if (!*(*(v0 + 32) + 16) || (sub_22803E6A4(), result = sub_228137EFC(), !v4))
    {
      v5 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0) + 32);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t sub_228034240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = v2;
  v3 = a2 + *(a1 + 32);
  return sub_228137D6C();
}

uint64_t sub_2280342A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_228034304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_228034378(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2280343EC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_49;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_228034444(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA78, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280344E4(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C4CF0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228034550()
{
  sub_22803E608(&qword_2813C4CF0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);

  return sub_228137EDC();
}

uint64_t sub_2280345D0()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4D40);
  __swift_project_value_buffer(v0, qword_2813C4D40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EMBEDDING";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ADAPTER";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_228034844()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C57C0);
  __swift_project_value_buffer(v0, qword_2813C57C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case_id";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gms_config";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "internal_config";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_228137DCC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_228034C9C();
        break;
      case 2:
        sub_228034BE8();
        break;
      case 1:
        sub_228034B34();
        break;
    }
  }

  return result;
}

uint64_t sub_228034B34()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 20);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  sub_22803E608(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return sub_228137E9C();
}

uint64_t sub_228034BE8()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  sub_22803E608(&qword_2813C52A8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  return sub_228137E9C();
}

uint64_t sub_228034C9C()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  sub_22803E608(&qword_2813C4C18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228034DD8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_228034FF4(v3, a1, a2, a3);
    sub_228035210(v3, a1, a2, a3);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_228034DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v16 + 20), v9, &qword_27D81E4A8, &unk_22813DE00);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_228040034(v9, &qword_27D81E4A8, &unk_22813DE00);
  }

  sub_228030960(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_22803E608(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228137F8C();
  return sub_22803E49C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
}

uint64_t sub_228034FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v16 + 24), v9, &qword_27D81E8C8, &qword_22813C4D8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_228040034(v9, &qword_27D81E8C8, &qword_22813C4D8);
  }

  sub_228030960(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  sub_22803E608(&qword_2813C52A8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  sub_228137F8C();
  return sub_22803E49C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
}

uint64_t sub_228035210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v16 + 28), v9, &qword_27D81E9A8, &unk_22813C6E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_228040034(v9, &qword_27D81E9A8, &unk_22813C6E0);
  }

  sub_228030960(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  sub_22803E608(&qword_2813C4C18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  sub_228137F8C();
  return sub_22803E49C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
}

uint64_t sub_228035478@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = a1[5];
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_22803559C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_228035604(uint64_t a1)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2280356C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA70, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_228035760(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C57B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280357CC()
{
  sub_22803E608(&qword_2813C57B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

  return sub_228137EDC();
}

uint64_t sub_228035868()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5A18);
  __swift_project_value_buffer(v0, qword_2813C5A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "client_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "use_case_config_list";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_228035B54();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
        sub_22803E608(&qword_2813C57B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_228035B54()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 24);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  sub_22803E608(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_228035D04(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
      sub_22803E608(&qword_2813C57B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
      sub_228137F7C();
    }

    v8 = v5 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 20);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_228035D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  sub_22803FFCC(a1 + *(v16 + 24), v9, &qword_27D81E4B0, &qword_22813AB20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_228040034(v9, &qword_27D81E4B0, &qword_22813AB20);
  }

  sub_228030960(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_22803E608(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_228137F8C();
  return sub_22803E49C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
}

uint64_t sub_228035F6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[*(a1 + 20)];
  sub_228137D6C();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_228036014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_228036088(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2280360FC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_51;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_228036154(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA68, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280361F4(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C5A08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228036260()
{
  sub_22803E608(&qword_2813C5A08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);

  return sub_228137EDC();
}

uint64_t sub_2280362FC()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5128);
  __swift_project_value_buffer(v0, qword_2813C5128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_config_list";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_2280364E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_228137E4C();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
        sub_22803E608(&qword_2813C5A08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_228137F4C(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0), sub_22803E608(&qword_2813C5A08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig), result = sub_228137F7C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0) + 24);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_228037FDC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0) + 24);
  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_228036884(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228139AAC();
  a1(0);
  sub_22803E608(a2, a3);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22803690C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 24);
  return sub_228137D6C();
}

uint64_t sub_228036958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280369CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_228036A40(uint64_t a1, uint64_t a2))()
{
  result = nullsub_52;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_228036A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA60, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_228036B38@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_228036BD4(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228036C40()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_228036C98()
{
  sub_22803E608(&qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  return sub_228137EDC();
}

uint64_t sub_228036D14()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_228036D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_228037FDC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_228036E20(uint64_t a1, uint64_t a2)
{
  v116 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v4 = *(v116 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v116, v6);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v118 = &v103 - v12;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB0, &unk_22813D8F0);
  v13 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114, v14);
  v128 = &v103 - v15;
  v121 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v123 = *(v121 - 8);
  v16 = *(v123 + 64);
  MEMORY[0x28223BE20](v121, v17);
  v119 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v127 = &v103 - v22;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC0, &qword_22813D900);
  v23 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120, v24);
  v26 = &v103 - v25;
  v124 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v27 = *(v124 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v124, v29);
  v122 = (&v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v115 = (&v103 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v103 - v38;
  v40 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  v41 = *(*(v40 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v126 = &v103 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v48 = &v103 - v47;
  v49 = *(a1 + 16);
  if (v49 != *(a2 + 16))
  {
LABEL_53:
    v98 = 0;
    return v98 & 1;
  }

  if (!v49 || a1 == a2)
  {
    v98 = 1;
    return v98 & 1;
  }

  v109 = v39;
  v105 = v8;
  v50 = 0;
  v51 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v113 = a1 + v51;
  v111 = a2 + v51;
  v110 = (v27 + 48);
  v108 = (v123 + 48);
  v104 = (v4 + 48);
  v112 = *(v46 + 72);
  v52 = v126;
  v107 = v40;
  v129 = &v103 - v47;
  v125 = v49;
  v117 = v26;
  v106 = v35;
  while (1)
  {
    v53 = v112 * v50;
    result = sub_22803E434(v113 + v112 * v50, v48, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    if (v50 == v125)
    {
      break;
    }

    v123 = v50;
    sub_22803E434(v111 + v53, v52, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    v55 = *(v40 + 20);
    v56 = *(v35 + 48);
    v57 = v109;
    sub_22803FFCC(&v48[v55], v109, &qword_27D81E4A8, &unk_22813DE00);
    sub_22803FFCC(v52 + v55, v57 + v56, &qword_27D81E4A8, &unk_22813DE00);
    v58 = *v110;
    v59 = v124;
    if ((*v110)(v57, 1, v124) == 1)
    {
      if (v58(v57 + v56, 1, v59) != 1)
      {
        goto LABEL_43;
      }

      sub_228040034(v57, &qword_27D81E4A8, &unk_22813DE00);
      v60 = v117;
      v61 = v123;
    }

    else
    {
      v62 = v115;
      sub_22803FFCC(v57, v115, &qword_27D81E4A8, &unk_22813DE00);
      if (v58(v57 + v56, 1, v59) == 1)
      {
        sub_22803E49C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
LABEL_43:
        v101 = &qword_27D81EAA8;
        v102 = &unk_2281425E0;
        goto LABEL_51;
      }

      v63 = v57 + v56;
      v64 = v122;
      sub_228030960(v63, v122, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      if ((*v62 != *v64 || v62[1] != v64[1]) && (sub_2281399BC() & 1) == 0)
      {
        sub_22803E49C(v122, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_22803E49C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        v101 = &qword_27D81E4A8;
        v102 = &unk_22813DE00;
        goto LABEL_51;
      }

      v65 = *(v59 + 20);
      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
      v66 = v122;
      v67 = sub_22813926C();
      sub_22803E49C(v66, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_22803E49C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_228040034(v57, &qword_27D81E4A8, &unk_22813DE00);
      v40 = v107;
      v60 = v117;
      v61 = v123;
      if ((v67 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v68 = *(v40 + 24);
    v69 = *(v120 + 48);
    sub_22803FFCC(&v129[v68], v60, &qword_27D81EAB8, &qword_2281416A0);
    sub_22803FFCC(v52 + v68, v60 + v69, &qword_27D81EAB8, &qword_2281416A0);
    v70 = *v108;
    v71 = v121;
    if ((*v108)(v60, 1, v121) == 1)
    {
      if (v70(v60 + v69, 1, v71) != 1)
      {
        goto LABEL_45;
      }

      sub_228040034(v60, &qword_27D81EAB8, &qword_2281416A0);
      v52 = v126;
      v35 = v106;
    }

    else
    {
      sub_22803FFCC(v60, v127, &qword_27D81EAB8, &qword_2281416A0);
      if (v70(v60 + v69, 1, v71) == 1)
      {
        sub_22803E49C(v127, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
LABEL_45:
        sub_228040034(v60, &qword_27D81EAC0, &qword_22813D900);
        v52 = v126;
        goto LABEL_52;
      }

      v72 = v119;
      sub_228030960(v60 + v69, v119, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      v73 = *(v71 + 20);
      v74 = *(v114 + 48);
      v75 = v128;
      sub_22803FFCC(v127 + v73, v128, &qword_27D81E998, &unk_228141680);
      sub_22803FFCC(v72 + v73, v75 + v74, &qword_27D81E998, &unk_228141680);
      v76 = *v104;
      v77 = v116;
      if ((*v104)(v75, 1, v116) == 1)
      {
        if (v76(v128 + v74, 1, v77) != 1)
        {
          goto LABEL_48;
        }

        sub_228040034(v128, &qword_27D81E998, &unk_228141680);
        v52 = v126;
        v57 = v117;
      }

      else
      {
        v78 = v128;
        v79 = v118;
        sub_22803FFCC(v128, v118, &qword_27D81E998, &unk_228141680);
        if (v76(v78 + v74, 1, v77) == 1)
        {
          sub_22803E49C(v79, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
LABEL_48:
          v99 = &qword_27D81EAB0;
          v100 = &unk_22813D8F0;
          goto LABEL_49;
        }

        v80 = v128 + v74;
        v81 = v105;
        sub_228030960(v80, v105, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        v82 = *v79;
        v83 = *v81;
        v84 = *(*v79 + 16);
        if (v84 != *(v83 + 16))
        {
          goto LABEL_41;
        }

        if (v84 && v82 != v83)
        {
          v85 = (v82 + 40);
          v86 = (v83 + 40);
          while (1)
          {
            v87 = *(v85 - 1) == *(v86 - 1) && *v85 == *v86;
            if (!v87 && (sub_2281399BC() & 1) == 0)
            {
              break;
            }

            v85 += 2;
            v86 += 2;
            if (!--v84)
            {
              goto LABEL_33;
            }
          }

LABEL_41:
          sub_22803E49C(v105, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          sub_22803E49C(v118, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          v99 = &qword_27D81E998;
          v100 = &unk_228141680;
LABEL_49:
          sub_228040034(v128, v99, v100);
          v52 = v126;
          v57 = v117;
LABEL_50:
          sub_22803E49C(v119, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
          sub_22803E49C(v127, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
          v101 = &qword_27D81EAB8;
          v102 = &qword_2281416A0;
LABEL_51:
          sub_228040034(v57, v101, v102);
LABEL_52:
          sub_22803E49C(v52, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
          sub_22803E49C(v129, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
          goto LABEL_53;
        }

LABEL_33:
        if (*(v118 + 8) != v105[8] || *(v118 + 12) != *(v105 + 3))
        {
          goto LABEL_41;
        }

        v88 = *(v116 + 28);
        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
        v89 = v118;
        v90 = v105;
        v91 = sub_22813926C();
        v92 = v128;
        sub_22803E49C(v90, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_22803E49C(v89, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_228040034(v92, &qword_27D81E998, &unk_228141680);
        v52 = v126;
        v57 = v117;
        if ((v91 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
      v93 = v127;
      v94 = v119;
      v95 = sub_22813926C();
      sub_22803E49C(v94, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      v96 = v93;
      v40 = v107;
      sub_22803E49C(v96, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      sub_228040034(v57, &qword_27D81EAB8, &qword_2281416A0);
      v35 = v106;
      if ((v95 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v97 = v129;
    v98 = sub_22813926C();
    sub_22803E49C(v52, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    sub_22803E49C(v97, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    if (v98)
    {
      v50 = v61 + 1;
      v48 = v129;
      if (v50 != v125)
      {
        continue;
      }
    }

    return v98 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_228037C08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_228037C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v13 = &v29 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
LABEL_23:
    v25 = 0;
    return v25 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v15 = 0;
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v30 = a1 + v16;
  v17 = a2 + v16;
  v18 = *(v11 + 72);
  while (1)
  {
    result = sub_22803E434(v30 + v18 * v15, v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
    if (v15 == v14)
    {
      break;
    }

    result = sub_22803E434(v17 + v18 * v15, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
    v20 = *v13;
    v21 = *v9;
    v22 = *(*v13 + 16);
    if (v22 != *(*v9 + 16))
    {
LABEL_22:
      sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
      sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
      goto LABEL_23;
    }

    if (v22)
    {
      v23 = v20 == v21;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v26 = (v20 + 40);
      v27 = (v21 + 40);
      while (v22)
      {
        result = *(v26 - 1);
        if (result != *(v27 - 1) || *v26 != *v27)
        {
          result = sub_2281399BC();
          if ((result & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v26 += 2;
        v27 += 2;
        if (!--v22)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    v24 = *(v4 + 20);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v25 = sub_22813926C();
    sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
    sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
    if ((v25 & 1) != 0 && ++v15 != v14)
    {
      continue;
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_228037F4C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_2281399BC() & 1) == 0)
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

uint64_t sub_228037FDC(uint64_t a1, uint64_t a2)
{
  v218 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v4 = *(v218 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v218, v6);
  v213 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v214 = (&v192 - v11);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAD8, &qword_22813D918);
  v12 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216, v13);
  v219 = &v192 - v14;
  v228 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v220 = *(v228 - 8);
  v15 = *(v220 + 64);
  MEMORY[0x28223BE20](v228, v16);
  v225 = &v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v226 = &v192 - v21;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAE0, &qword_22813D920);
  v22 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227, v23);
  v236 = &v192 - v24;
  v233 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v25 = *(v233 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v233, v27);
  v229 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v230 = &v192 - v32;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAE8, &qword_22813D928);
  v33 = *(*(v231 - 8) + 64);
  MEMORY[0x28223BE20](v231, v34);
  v238 = &v192 - v35;
  v239 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v36 = *(v239 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v239, v38);
  v232 = (&v192 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8, v42);
  v217 = (&v192 - v43);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v44 = *(*(v234 - 8) + 64);
  MEMORY[0x28223BE20](v234, v45);
  v47 = &v192 - v46;
  v240 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v235 = *(v240 - 1);
  v48 = *(v235 + 64);
  v50 = MEMORY[0x28223BE20](v240, v49);
  v52 = &v192 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v53);
  v55 = &v192 - v54;
  v224 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v56 = *(v224 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v224, v58);
  v222 = (&v192 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8, v62);
  v215 = (&v192 - v63);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  v64 = *(*(v223 - 8) + 64);
  MEMORY[0x28223BE20](v223, v65);
  v67 = &v192 - v66;
  v68 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  v69 = *(*(v68 - 8) + 64);
  v71 = MEMORY[0x28223BE20](v68, v70);
  v73 = MEMORY[0x28223BE20](v71, v72);
  v237 = &v192 - v76;
  v77 = *(a1 + 16);
  if (v77 != *(a2 + 16))
  {
LABEL_112:
    v189 = 0;
    return v189 & 1;
  }

  if (!v77 || a1 == a2)
  {
    v189 = 1;
    return v189 & 1;
  }

  v210 = v73;
  v78 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v79 = a1 + v78;
  v201 = a2 + v78;
  v200 = (v56 + 48);
  v207 = (v36 + 48);
  v80 = 0;
  v205 = (v25 + 48);
  v202 = (v220 + 48);
  v194 = (v4 + 48);
  v81 = *(v74 + 72);
  v212 = v47;
  v208 = v67;
  v82 = v237;
  v83 = v75;
  v84 = v55;
  v209 = v77;
  v197 = a1 + v78;
  v196 = v81;
  v221 = v75;
  v193 = v52;
  while (1)
  {
    v85 = v81 * v80;
    result = sub_22803E434(v79 + v81 * v80, v82, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
    if (v80 == v209)
    {
      goto LABEL_120;
    }

    v87 = v52;
    v206 = v80;
    sub_22803E434(v201 + v85, v83, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
    v88 = *(v210 + 24);
    v89 = *(v223 + 48);
    v90 = v208;
    sub_22803FFCC(v82 + v88, v208, &qword_27D81E4B0, &qword_22813AB20);
    sub_22803FFCC(v83 + v88, v90 + v89, &qword_27D81E4B0, &qword_22813AB20);
    v91 = *v200;
    v92 = v224;
    if ((*v200)(v90, 1, v224) == 1)
    {
      v93 = v91(v90 + v89, 1, v92);
      v83 = v221;
      if (v93 != 1)
      {
        goto LABEL_105;
      }

      result = sub_228040034(v90, &qword_27D81E4B0, &qword_22813AB20);
      v52 = v87;
      goto LABEL_14;
    }

    v94 = v215;
    sub_22803FFCC(v90, v215, &qword_27D81E4B0, &qword_22813AB20);
    if (v91(v90 + v89, 1, v92) == 1)
    {
      sub_22803E49C(v94, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v83 = v221;
LABEL_105:
      sub_228040034(v90, &qword_27D81EAA0, &unk_22813D8E0);
LABEL_111:
      sub_22803E49C(v83, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
      sub_22803E49C(v82, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
      goto LABEL_112;
    }

    v95 = v90 + v89;
    v96 = v222;
    sub_228030960(v95, v222, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v83 = v221;
    if ((*v94 != *v96 || v94[1] != v96[1]) && (sub_2281399BC() & 1) == 0)
    {
      sub_22803E49C(v222, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      sub_22803E49C(v94, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      sub_228040034(v90, &qword_27D81E4B0, &qword_22813AB20);
      goto LABEL_111;
    }

    v97 = v94;
    v98 = *(v92 + 20);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v99 = v222;
    v100 = sub_22813926C();
    sub_22803E49C(v99, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_22803E49C(v97, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    result = sub_228040034(v208, &qword_27D81E4B0, &qword_22813AB20);
    v52 = v193;
    if ((v100 & 1) == 0)
    {
      goto LABEL_111;
    }

LABEL_14:
    v101 = *v82;
    v102 = *(*v82 + 16);
    v220 = *v83;
    if (v102 != *(v220 + 16))
    {
      goto LABEL_111;
    }

    if (v102 && v101 != v220)
    {
      break;
    }

LABEL_92:
    v188 = *(v210 + 20);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v189 = sub_22813926C();
    sub_22803E49C(v83, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
    sub_22803E49C(v82, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
    if (v189)
    {
      v80 = v206 + 1;
      v79 = v197;
      v81 = v196;
      if (v206 + 1 != v209)
      {
        continue;
      }
    }

    return v189 & 1;
  }

  v103 = 0;
  v104 = (*(v235 + 80) + 32) & ~*(v235 + 80);
  v204 = v101 + v104;
  v203 = v220 + v104;
  v195 = v84;
  v199 = v101;
  v198 = v102;
  while (v103 < *(v101 + 16))
  {
    v105 = v103;
    v106 = *(v235 + 72) * v103;
    result = sub_22803E434(v204 + v106, v84, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    v107 = *(v220 + 16);
    v211 = v105;
    if (v105 >= v107)
    {
      goto LABEL_118;
    }

    sub_22803E434(v203 + v106, v52, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    v108 = v240[5];
    v109 = *(v234 + 48);
    v110 = v212;
    sub_22803FFCC(v84 + v108, v212, &qword_27D81E4A8, &unk_22813DE00);
    sub_22803FFCC(&v52[v108], v110 + v109, &qword_27D81E4A8, &unk_22813DE00);
    v111 = *v207;
    v112 = v239;
    if ((*v207)(v110, 1, v239) == 1)
    {
      if (v111(v110 + v109, 1, v112) != 1)
      {
        goto LABEL_99;
      }

      sub_228040034(v110, &qword_27D81E4A8, &unk_22813DE00);
      v113 = v233;
      v114 = v238;
    }

    else
    {
      v115 = v52;
      v116 = v233;
      v117 = v217;
      sub_22803FFCC(v110, v217, &qword_27D81E4A8, &unk_22813DE00);
      if (v111(v110 + v109, 1, v112) == 1)
      {
        sub_22803E49C(v117, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        v52 = v115;
        v84 = v195;
        v83 = v221;
LABEL_99:
        sub_228040034(v110, &qword_27D81EAA8, &unk_2281425E0);
        goto LABEL_110;
      }

      v118 = v110 + v109;
      v119 = v232;
      sub_228030960(v118, v232, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      if ((*v117 != *v119 || v117[1] != v119[1]) && (sub_2281399BC() & 1) == 0)
      {
        sub_22803E49C(v232, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_22803E49C(v117, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_228040034(v212, &qword_27D81E4A8, &unk_22813DE00);
        v52 = v115;
        v84 = v195;
        goto LABEL_109;
      }

      v120 = *(v239 + 20);
      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
      v121 = v232;
      v122 = sub_22813926C();
      sub_22803E49C(v121, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_22803E49C(v117, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_228040034(v212, &qword_27D81E4A8, &unk_22813DE00);
      v113 = v116;
      v52 = v115;
      v84 = v195;
      v83 = v221;
      v114 = v238;
      if ((v122 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    v123 = v240[6];
    v124 = *(v231 + 48);
    sub_22803FFCC(v84 + v123, v114, &qword_27D81E8C8, &qword_22813C4D8);
    sub_22803FFCC(&v52[v123], v114 + v124, &qword_27D81E8C8, &qword_22813C4D8);
    v125 = *v205;
    if ((*v205)(v114, 1, v113) == 1)
    {
      if (v125(v114 + v124, 1, v113) != 1)
      {
        goto LABEL_101;
      }

      sub_228040034(v114, &qword_27D81E8C8, &qword_22813C4D8);
    }

    else
    {
      v126 = v230;
      sub_22803FFCC(v114, v230, &qword_27D81E8C8, &qword_22813C4D8);
      if (v125(v114 + v124, 1, v113) == 1)
      {
        sub_22803E49C(v126, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
LABEL_101:
        v190 = &qword_27D81EAE8;
        v191 = &qword_22813D928;
LABEL_107:
        sub_228040034(v114, v190, v191);
LABEL_110:
        sub_22803E49C(v52, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        sub_22803E49C(v84, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v82 = v237;
        goto LABEL_111;
      }

      v127 = v229;
      sub_228030960(v114 + v124, v229, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v128 = *(v113 + 20);
      v129 = *(v126 + v128);
      v130 = *(v127 + v128);
      if (v129 != v130)
      {
        v131 = *(v126 + v128);

        v132 = sub_228031578(v129, v130);

        if ((v132 & 1) == 0)
        {
          sub_22803E49C(v229, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
          sub_22803E49C(v230, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
          v190 = &qword_27D81E8C8;
          v191 = &qword_22813C4D8;
          goto LABEL_107;
        }
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
      v133 = v84;
      v134 = v229;
      v135 = v230;
      v136 = sub_22813926C();
      sub_22803E49C(v134, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v137 = v135;
      v84 = v133;
      v138 = v238;
      sub_22803E49C(v137, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      sub_228040034(v138, &qword_27D81E8C8, &qword_22813C4D8);
      if ((v136 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    v139 = v240[7];
    v140 = *(v227 + 48);
    v141 = v84 + v139;
    v142 = v84;
    v143 = v236;
    sub_22803FFCC(v141, v236, &qword_27D81E9A8, &unk_22813C6E0);
    sub_22803FFCC(&v52[v139], v143 + v140, &qword_27D81E9A8, &unk_22813C6E0);
    v144 = *v202;
    v145 = v228;
    if ((*v202)(v143, 1, v228) == 1)
    {
      if (v144(v143 + v140, 1, v145) != 1)
      {
        goto LABEL_103;
      }

      sub_228040034(v143, &qword_27D81E9A8, &unk_22813C6E0);
      v84 = v142;
      v83 = v221;
    }

    else
    {
      v146 = v52;
      v147 = v226;
      sub_22803FFCC(v143, v226, &qword_27D81E9A8, &unk_22813C6E0);
      if (v144(v143 + v140, 1, v145) == 1)
      {
        sub_22803E49C(v147, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
        v52 = v146;
LABEL_103:
        sub_228040034(v143, &qword_27D81EAE0, &qword_22813D920);
        v84 = v142;
LABEL_109:
        v83 = v221;
        goto LABEL_110;
      }

      v148 = v225;
      sub_228030960(v143 + v140, v225, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
      v149 = *(v145 + 20);
      v150 = *(v216 + 48);
      v151 = v219;
      sub_22803FFCC(v147 + v149, v219, &qword_27D81E9A0, &unk_22813C6D0);
      v152 = v148 + v149;
      v153 = v151;
      sub_22803FFCC(v152, v151 + v150, &qword_27D81E9A0, &unk_22813C6D0);
      v154 = *v194;
      v155 = v218;
      if ((*v194)(v151, 1, v218) == 1)
      {
        v156 = v154(v151 + v150, 1, v155);
        v52 = v146;
        v157 = v142;
        if (v156 != 1)
        {
          goto LABEL_115;
        }

        sub_228040034(v151, &qword_27D81E9A0, &unk_22813C6D0);
        v158 = v226;
        v83 = v221;
        v84 = v157;
      }

      else
      {
        v159 = v214;
        sub_22803FFCC(v151, v214, &qword_27D81E9A0, &unk_22813C6D0);
        v160 = v154(v151 + v150, 1, v155);
        v52 = v146;
        if (v160 == 1)
        {
          sub_22803E49C(v159, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
          v157 = v142;
          v153 = v151;
LABEL_115:
          sub_228040034(v153, &qword_27D81EAD8, &qword_22813D918);
          v158 = v226;
          v83 = v221;
          v84 = v157;
LABEL_97:
          sub_22803E49C(v225, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
          sub_22803E49C(v158, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
          sub_228040034(v236, &qword_27D81E9A8, &unk_22813C6E0);
          goto LABEL_110;
        }

        v161 = v213;
        result = sub_228030960(v151 + v150, v213, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
        v162 = v159;
        v84 = v142;
        v83 = v221;
        if (*v159 != *v161)
        {
          goto LABEL_96;
        }

        v163 = v159[1];
        v164 = *(v161 + 1);
        if (v161[16] == 1)
        {
          if (v164)
          {
            if (v164 == 1)
            {
              if (v163 != 1)
              {
                goto LABEL_96;
              }
            }

            else if (v163 != 2)
            {
              goto LABEL_96;
            }
          }

          else if (v163)
          {
            goto LABEL_96;
          }
        }

        else if (v163 != v164)
        {
          goto LABEL_96;
        }

        v165 = v159[3];
        v166 = *(v161 + 3);
        v167 = *(v165 + 16);
        if (v167 != *(v166 + 16))
        {
          goto LABEL_96;
        }

        if (v167 && v165 != v166)
        {
          v168 = (v165 + 32);
          v169 = (v166 + 40);
          do
          {
            v171 = *v168;
            v168 += 2;
            v170 = v171;
            v172 = *(v169 - 1);
            if (*v169 == 1)
            {
              if (v172)
              {
                if (v172 == 1)
                {
                  if (v170 != 1)
                  {
                    goto LABEL_96;
                  }
                }

                else if (v170 != 2)
                {
                  goto LABEL_96;
                }
              }

              else if (v170)
              {
                goto LABEL_96;
              }
            }

            else if (v170 != v172)
            {
              goto LABEL_96;
            }

            v169 += 16;
          }

          while (--v167);
        }

        v173 = v159[4];
        v174 = *(v161 + 4);
        v175 = *(v173 + 16);
        if (v175 != *(v174 + 16))
        {
LABEL_96:
          sub_22803E49C(v161, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
          sub_22803E49C(v159, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
          sub_228040034(v219, &qword_27D81E9A0, &unk_22813C6D0);
          v158 = v226;
          goto LABEL_97;
        }

        if (v175)
        {
          v176 = v173 == v174;
        }

        else
        {
          v176 = 1;
        }

        if (!v176)
        {
          v183 = (v173 + 32);
          v184 = (v174 + 40);
          while (v175)
          {
            v186 = *v183;
            v183 += 2;
            v185 = v186;
            v187 = *(v184 - 1);
            if (*v184 == 1)
            {
              if (v187)
              {
                if (v187 == 1)
                {
                  if (v185 != 1)
                  {
                    goto LABEL_96;
                  }
                }

                else if (v185 != 2)
                {
                  goto LABEL_96;
                }
              }

              else if (v185)
              {
                goto LABEL_96;
              }
            }

            else if (v185 != v187)
            {
              goto LABEL_96;
            }

            v184 += 16;
            if (!--v175)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_119;
        }

LABEL_75:
        v177 = v161;
        v178 = *(v218 + 32);
        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
        v179 = sub_22813926C();
        sub_22803E49C(v177, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
        sub_22803E49C(v162, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
        sub_228040034(v219, &qword_27D81E9A0, &unk_22813C6D0);
        v158 = v226;
        if ((v179 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
      v180 = v225;
      v181 = sub_22813926C();
      sub_22803E49C(v180, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
      sub_22803E49C(v158, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
      sub_228040034(v236, &qword_27D81E9A8, &unk_22813C6E0);
      if ((v181 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v182 = sub_22813926C();
    sub_22803E49C(v52, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    result = sub_22803E49C(v84, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    v82 = v237;
    v101 = v199;
    if ((v182 & 1) == 0)
    {
      goto LABEL_111;
    }

    v103 = v211 + 1;
    if (v211 + 1 == v198)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
  return result;
}

uint64_t sub_22803999C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_22803E434(v16, v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        sub_22803E434(v17, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v19 = _s16SummarizationKit54Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfigV2eeoiySbAC_ACtFZ_0(v13, v9);
        sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_228039B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v62 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v57 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  v14 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63, v15);
  v17 = &v57 - v16;
  v66 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  v18 = *(*(v66 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v66, v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
    goto LABEL_23;
  }

  if (!v26 || a1 == a2)
  {
    v53 = 1;
    return v53 & 1;
  }

  v65 = &v57 - v25;
  v60 = v22;
  v61 = v4;
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = a1 + v27;
  v29 = a2 + v27;
  v30 = (v5 + 48);
  v58 = *(v24 + 72);
  v59 = v13;
  v31 = &qword_22813AB20;
  while (1)
  {
    v32 = v31;
    v33 = v17;
    v34 = v65;
    sub_22803E434(v28, v65, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
    v64 = v28;
    sub_22803E434(v29, v22, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
    v35 = *(v66 + 28);
    v36 = *(v63 + 48);
    v37 = v34 + v35;
    v17 = v33;
    v38 = v33;
    v31 = v32;
    sub_22803FFCC(v37, v38, &qword_27D81E4B0, v32);
    sub_22803FFCC(&v22[v35], &v17[v36], &qword_27D81E4B0, v32);
    v39 = *v30;
    v40 = v61;
    if ((*v30)(v17, 1, v61) != 1)
    {
      break;
    }

    v41 = v39(&v17[v36], 1, v40);
    v42 = v65;
    if (v41 != 1)
    {
      goto LABEL_20;
    }

    sub_228040034(v17, &qword_27D81E4B0, v32);
    v22 = v60;
LABEL_13:
    if (*v42 != *v22 || (sub_22803BD78(*(v42 + 1), *(v22 + 1)) & 1) == 0)
    {
      goto LABEL_22;
    }

    v52 = *(v66 + 24);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v53 = sub_22813926C();
    sub_22803E49C(v22, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
    sub_22803E49C(v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
    if (v53)
    {
      v29 += v58;
      v28 = v64 + v58;
      if (--v26)
      {
        continue;
      }
    }

    return v53 & 1;
  }

  v43 = v59;
  sub_22803FFCC(v17, v59, &qword_27D81E4B0, v32);
  if (v39(&v17[v36], 1, v40) == 1)
  {
    sub_22803E49C(v43, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v42 = v65;
LABEL_20:
    v54 = &qword_27D81EAA0;
    v55 = &unk_22813D8E0;
    goto LABEL_21;
  }

  v44 = &v17[v36];
  v45 = v62;
  sub_228030960(v44, v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v42 = v65;
  if (*v43 == *v45 && v43[1] == v45[1] || (sub_2281399BC() & 1) != 0)
  {
    v46 = *(v61 + 20);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v47 = v59;
    v48 = v30;
    v49 = v62;
    v50 = sub_22813926C();
    v51 = v49;
    v30 = v48;
    sub_22803E49C(v51, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_22803E49C(v47, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v31 = v32;
    sub_228040034(v17, &qword_27D81E4B0, v32);
    v22 = v60;
    if ((v50 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  sub_22803E49C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_22803E49C(v59, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v54 = &qword_27D81E4B0;
  v55 = &qword_22813AB20;
LABEL_21:
  sub_228040034(v17, v54, v55);
  v22 = v60;
LABEL_22:
  sub_22803E49C(v22, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
  sub_22803E49C(v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
LABEL_23:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_22803A17C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 <= 1)
        {
          if (v7)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5)
          {
            return 0;
          }
        }

        else if (v7 == 2)
        {
          if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v7 == 3)
        {
          if (v5 != 3)
          {
            return 0;
          }
        }

        else if (v5 != 4)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_22803A234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = (&v46 - v13);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAD0, &qword_22813D910);
  v15 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51, v16);
  v18 = &v46 - v17;
  v54 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  v19 = *(*(v54 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v54, v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v27 = (&v46 - v26);
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
    goto LABEL_36;
  }

  if (!v28 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v50 = v4;
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = a1 + v29;
  v55 = a2 + v29;
  v48 = v23;
  v49 = (v5 + 48);
  v47 = *(v25 + 72);
  v53 = (&v46 - v26);
  while (1)
  {
    sub_22803E434(v30, v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
    sub_22803E434(v55, v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
    v31 = *v27;
    v32 = *v23;
    if (v23[8] == 1)
    {
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          if (v31 != 2)
          {
            goto LABEL_35;
          }
        }

        else if (v31 != 3)
        {
          goto LABEL_35;
        }
      }

      else if (v32)
      {
        if (v31 != 1)
        {
          goto LABEL_35;
        }
      }

      else if (v31)
      {
        goto LABEL_35;
      }
    }

    else if (v31 != v32)
    {
      goto LABEL_35;
    }

    v52 = v30;
    v33 = v9;
    v34 = *(v54 + 24);
    v35 = *(v51 + 48);
    sub_22803FFCC(v53 + v34, v18, &qword_27D81EAC8, &qword_22813D908);
    sub_22803FFCC(&v23[v34], &v18[v35], &qword_27D81EAC8, &qword_22813D908);
    v36 = v50;
    v37 = *v49;
    if ((*v49)(v18, 1, v50) == 1)
    {
      v38 = v37(&v18[v35], 1, v36);
      v9 = v33;
      v27 = v53;
      v23 = v48;
      if (v38 != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_19;
    }

    sub_22803FFCC(v18, v14, &qword_27D81EAC8, &qword_22813D908);
    if (v37(&v18[v35], 1, v36) == 1)
    {
      break;
    }

    v9 = v33;
    sub_228030960(&v18[v35], v33, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    if (*v14 != *v33 || v14[1] != v33[1])
    {
      sub_22803E49C(v33, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      v23 = v48;
LABEL_31:
      sub_22803E49C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      v43 = &qword_27D81EAC8;
      v44 = &qword_22813D908;
      goto LABEL_34;
    }

    v39 = *(v50 + 24);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v40 = sub_22813926C();
    sub_22803E49C(v33, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    v27 = v53;
    v23 = v48;
    if ((v40 & 1) == 0)
    {
      goto LABEL_31;
    }

    sub_22803E49C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
LABEL_19:
    sub_228040034(v18, &qword_27D81EAC8, &qword_22813D908);
    v41 = *(v54 + 20);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v42 = sub_22813926C();
    sub_22803E49C(v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
    sub_22803E49C(v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
    if (v42)
    {
      v55 += v47;
      v30 = v52 + v47;
      if (--v28)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  sub_22803E49C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  v23 = v48;
LABEL_33:
  v43 = &qword_27D81EAD0;
  v44 = &qword_22813D910;
LABEL_34:
  sub_228040034(v18, v43, v44);
LABEL_35:
  sub_22803E49C(v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
  sub_22803E49C(v53, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
LABEL_36:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_22803A894(uint64_t a1, uint64_t a2)
{
  v189 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v4 = *(v189 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v189, v6);
  v191 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v192 = &v165 - v11;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB0, &unk_22813D8F0);
  v12 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182, v13);
  v190 = &v165 - v14;
  v197 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v15 = *(v197 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v197, v17);
  v195 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v203 = &v165 - v22;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC0, &qword_22813D900);
  v23 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196, v24);
  v26 = &v165 - v25;
  v199 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v27 = *(v199 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v199, v29);
  v198 = (&v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v205 = (&v165 - v34);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v35 = *(*(v201 - 8) + 64);
  MEMORY[0x28223BE20](v201, v36);
  v200 = &v165 - v37;
  v207 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  v202 = *(v207 - 8);
  v38 = *(v202 + 64);
  v40 = MEMORY[0x28223BE20](v207, v39);
  v42 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v165 - v44;
  v188 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v46 = *(v188 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v188, v48);
  v186 = (&v165 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8, v52);
  v181 = (&v165 - v53);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  v54 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187, v55);
  v194 = &v165 - v56;
  v57 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  v58 = *(*(v57 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v57, v59);
  v206 = (&v165 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = MEMORY[0x28223BE20](v60, v62);
  v204 = (&v165 - v65);
  v66 = *(a1 + 16);
  if (v66 != *(a2 + 16))
  {
LABEL_75:
    v156 = 0;
    return v156 & 1;
  }

  if (!v66 || a1 == a2)
  {
    v156 = 1;
    return v156 & 1;
  }

  v176 = v63;
  v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v68 = a1 + v67;
  v170 = a2 + v67;
  v169 = (v46 + 48);
  v69 = 0;
  v174 = (v15 + 48);
  v70 = (v27 + 48);
  v168 = (v4 + 48);
  v71 = *(v64 + 72);
  v72 = v204;
  v180 = v70;
  v175 = v66;
  v167 = v68;
  v184 = v45;
  v166 = v71;
  v183 = v42;
  while (1)
  {
    v73 = v71 * v69;
    result = sub_22803E434(v68 + v71 * v69, v72, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
    if (v69 == v175)
    {
      goto LABEL_80;
    }

    v171 = v69;
    v75 = v72;
    v76 = v206;
    sub_22803E434(v170 + v73, v206, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
    v77 = *(v176 + 24);
    v78 = *(v187 + 48);
    v79 = v75 + v77;
    v80 = v194;
    sub_22803FFCC(v79, v194, &qword_27D81E4B0, &qword_22813AB20);
    sub_22803FFCC(v76 + v77, v80 + v78, &qword_27D81E4B0, &qword_22813AB20);
    v81 = *v169;
    v82 = v188;
    if ((*v169)(v80, 1, v188) == 1)
    {
      v144 = v81(v80 + v78, 1, v82) == 1;
      v83 = v80;
      v84 = v199;
      if (!v144)
      {
        goto LABEL_66;
      }

      result = sub_228040034(v83, &qword_27D81E4B0, &qword_22813AB20);
      v85 = v183;
      v86 = v184;
      goto LABEL_15;
    }

    v87 = v181;
    sub_22803FFCC(v80, v181, &qword_27D81E4B0, &qword_22813AB20);
    v88 = v81(v80 + v78, 1, v82);
    v89 = v80;
    v84 = v199;
    if (v88 == 1)
    {
      v162 = v89;
      sub_22803E49C(v87, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v83 = v162;
LABEL_66:
      v163 = &qword_27D81EAA0;
      v164 = &unk_22813D8E0;
      goto LABEL_67;
    }

    v90 = v89 + v78;
    v91 = v186;
    sub_228030960(v90, v186, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    if ((*v87 != *v91 || v87[1] != v91[1]) && (sub_2281399BC() & 1) == 0)
    {
      sub_22803E49C(v186, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      sub_22803E49C(v87, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v163 = &qword_27D81E4B0;
      v164 = &qword_22813AB20;
      v83 = v194;
LABEL_67:
      sub_228040034(v83, v163, v164);
LABEL_74:
      sub_22803E49C(v206, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
      sub_22803E49C(v204, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
      goto LABEL_75;
    }

    v92 = *(v82 + 20);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v93 = v186;
    v94 = sub_22813926C();
    sub_22803E49C(v93, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_22803E49C(v87, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    result = sub_228040034(v194, &qword_27D81E4B0, &qword_22813AB20);
    v85 = v183;
    v86 = v184;
    v70 = v180;
    if ((v94 & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_15:
    v95 = *v204;
    v96 = *(*v204 + 16);
    v193 = *v206;
    if (v96 != *(v193 + 16))
    {
      goto LABEL_74;
    }

    if (v96 && v95 != v193)
    {
      break;
    }

LABEL_55:
    v153 = *(v176 + 20);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v154 = v204;
    v155 = v206;
    v156 = sub_22813926C();
    v157 = v155;
    v72 = v154;
    sub_22803E49C(v157, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
    sub_22803E49C(v154, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
    if (v156)
    {
      v69 = v171 + 1;
      v68 = v167;
      v71 = v166;
      if (v171 + 1 != v175)
      {
        continue;
      }
    }

    return v156 & 1;
  }

  v97 = 0;
  v98 = (*(v202 + 80) + 32) & ~*(v202 + 80);
  v178 = v95 + v98;
  v177 = v193 + v98;
  v179 = v26;
  v173 = v95;
  v172 = v96;
  while (v97 < *(v95 + 16))
  {
    v99 = *(v202 + 72) * v97;
    result = sub_22803E434(v178 + v99, v86, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    if (v97 >= *(v193 + 16))
    {
      goto LABEL_79;
    }

    sub_22803E434(v177 + v99, v85, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    v100 = *(v207 + 20);
    v101 = *(v201 + 48);
    v102 = v86 + v100;
    v103 = v85;
    v104 = v200;
    sub_22803FFCC(v102, v200, &qword_27D81E4A8, &unk_22813DE00);
    sub_22803FFCC(v103 + v100, v104 + v101, &qword_27D81E4A8, &unk_22813DE00);
    v105 = *v70;
    if ((*v70)(v104, 1, v84) == 1)
    {
      v106 = v105(v104 + v101, 1, v84);
      v107 = v104;
      v85 = v103;
      if (v106 != 1)
      {
        goto LABEL_61;
      }

      sub_228040034(v107, &qword_27D81E4A8, &unk_22813DE00);
      v108 = v179;
      v86 = v184;
    }

    else
    {
      sub_22803FFCC(v104, v205, &qword_27D81E4A8, &unk_22813DE00);
      v107 = v104;
      if (v105(v104 + v101, 1, v84) == 1)
      {
        sub_22803E49C(v205, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        v85 = v103;
LABEL_61:
        v160 = &qword_27D81EAA8;
        v161 = &unk_2281425E0;
        goto LABEL_62;
      }

      v109 = v104 + v101;
      v110 = v198;
      sub_228030960(v109, v198, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      v85 = v103;
      if ((*v205 != *v110 || v205[1] != v110[1]) && (sub_2281399BC() & 1) == 0)
      {
        sub_22803E49C(v198, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_22803E49C(v205, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        v160 = &qword_27D81E4A8;
        v161 = &unk_22813DE00;
LABEL_62:
        sub_228040034(v107, v160, v161);
        v86 = v184;
        goto LABEL_73;
      }

      v111 = *(v84 + 20);
      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
      v112 = v205;
      v113 = v198;
      v114 = sub_22813926C();
      v115 = v113;
      v116 = v112;
      v70 = v180;
      sub_22803E49C(v115, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_22803E49C(v116, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_228040034(v107, &qword_27D81E4A8, &unk_22813DE00);
      v108 = v179;
      v86 = v184;
      if ((v114 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v185 = v97;
    v117 = v84;
    v118 = *(v207 + 24);
    v119 = *(v196 + 48);
    v120 = v85;
    v121 = v108;
    sub_22803FFCC(v86 + v118, v108, &qword_27D81EAB8, &qword_2281416A0);
    sub_22803FFCC(v120 + v118, v121 + v119, &qword_27D81EAB8, &qword_2281416A0);
    v122 = *v174;
    v123 = v197;
    if ((*v174)(v121, 1, v197) == 1)
    {
      v26 = v121;
      if (v122(v121 + v119, 1, v123) != 1)
      {
        goto LABEL_64;
      }

      sub_228040034(v121, &qword_27D81EAB8, &qword_2281416A0);
      v85 = v183;
      v84 = v117;
      v124 = v185;
    }

    else
    {
      v125 = v203;
      sub_22803FFCC(v121, v203, &qword_27D81EAB8, &qword_2281416A0);
      v26 = v121;
      if (v122(v121 + v119, 1, v123) == 1)
      {
        sub_22803E49C(v125, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
LABEL_64:
        sub_228040034(v26, &qword_27D81EAC0, &qword_22813D900);
        v85 = v183;
        goto LABEL_73;
      }

      v126 = v121 + v119;
      v127 = v123;
      v128 = v195;
      sub_228030960(v126, v195, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      v129 = *(v127 + 20);
      v130 = *(v182 + 48);
      v131 = v190;
      sub_22803FFCC(v125 + v129, v190, &qword_27D81E998, &unk_228141680);
      sub_22803FFCC(v128 + v129, v131 + v130, &qword_27D81E998, &unk_228141680);
      v132 = *v168;
      v133 = v189;
      if ((*v168)(v131, 1, v189) == 1)
      {
        v144 = v132(v131 + v130, 1, v133) == 1;
        v70 = v180;
        v134 = v131;
        v85 = v183;
        v124 = v185;
        if (!v144)
        {
          goto LABEL_70;
        }

        sub_228040034(v134, &qword_27D81E998, &unk_228141680);
      }

      else
      {
        v135 = v192;
        sub_22803FFCC(v131, v192, &qword_27D81E998, &unk_228141680);
        v136 = v132(v131 + v130, 1, v133);
        v124 = v185;
        if (v136 == 1)
        {
          sub_22803E49C(v135, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          v134 = v131;
          v85 = v183;
          v26 = v179;
LABEL_70:
          v158 = &qword_27D81EAB0;
          v159 = &unk_22813D8F0;
          goto LABEL_71;
        }

        v137 = v131 + v130;
        v138 = v191;
        sub_228030960(v137, v191, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        v139 = *v135;
        v140 = *v138;
        v141 = *(*v135 + 16);
        v85 = v183;
        v26 = v179;
        if (v141 != *(v140 + 16))
        {
          goto LABEL_59;
        }

        if (v141 && v139 != v140)
        {
          v142 = (v139 + 40);
          v143 = (v140 + 40);
          while (1)
          {
            v144 = *(v142 - 1) == *(v143 - 1) && *v142 == *v143;
            if (!v144 && (sub_2281399BC() & 1) == 0)
            {
              break;
            }

            v142 += 2;
            v143 += 2;
            if (!--v141)
            {
              goto LABEL_49;
            }
          }

LABEL_59:
          sub_22803E49C(v191, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          sub_22803E49C(v192, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          v158 = &qword_27D81E998;
          v159 = &unk_228141680;
          v134 = v190;
LABEL_71:
          sub_228040034(v134, v158, v159);
          v149 = v203;
LABEL_72:
          sub_22803E49C(v195, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
          sub_22803E49C(v149, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
          sub_228040034(v26, &qword_27D81EAB8, &qword_2281416A0);
LABEL_73:
          sub_22803E49C(v85, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
          sub_22803E49C(v86, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
          goto LABEL_74;
        }

LABEL_49:
        if (*(v192 + 8) != *(v191 + 8) || *(v192 + 12) != *(v191 + 12))
        {
          goto LABEL_59;
        }

        v145 = *(v189 + 28);
        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
        v146 = v191;
        v147 = v192;
        v148 = sub_22813926C();
        sub_22803E49C(v146, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_22803E49C(v147, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_228040034(v190, &qword_27D81E998, &unk_228141680);
        v149 = v203;
        v70 = v180;
        if ((v148 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
      v150 = v195;
      v151 = sub_22813926C();
      sub_22803E49C(v150, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      sub_22803E49C(v203, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      sub_228040034(v26, &qword_27D81EAB8, &qword_2281416A0);
      v84 = v199;
      if ((v151 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v152 = sub_22813926C();
    sub_22803E49C(v85, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    result = sub_22803E49C(v86, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    v95 = v173;
    if ((v152 & 1) == 0)
    {
      goto LABEL_74;
    }

    v97 = v124 + 1;
    if (v97 == v172)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_22803BD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v53 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = (&v47 - v12);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v14 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54, v15);
  v17 = &v47 - v16;
  v58 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  v18 = *(*(v58 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v58, v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v26 = &v47 - v25;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
    goto LABEL_26;
  }

  if (!v27 || a1 == a2)
  {
    v43 = 1;
    return v43 & 1;
  }

  v49 = v17;
  v50 = v22;
  v55 = v4;
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v51 = &v47 - v25;
  v52 = (v5 + 48);
  v48 = *(v24 + 72);
  while (1)
  {
    result = sub_22803E434(v29, v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
    if (!v27)
    {
      __break(1u);
      return result;
    }

    v56 = v29;
    v57 = v27;
    sub_22803E434(v30, v22, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
    v32 = *(v58 + 24);
    v33 = *(v54 + 48);
    v34 = v49;
    sub_22803FFCC(&v26[v32], v49, &qword_27D81E4A8, &unk_22813DE00);
    sub_22803FFCC(&v22[v32], v34 + v33, &qword_27D81E4A8, &unk_22813DE00);
    v35 = *v52;
    v36 = v55;
    if ((*v52)(v34, 1, v55) == 1)
    {
      if (v35(v34 + v33, 1, v36) == 1)
      {
        sub_228040034(v34, &qword_27D81E4A8, &unk_22813DE00);
        v26 = v51;
        goto LABEL_14;
      }

      sub_22803E49C(v50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
      v46 = v51;
      v45 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch;
LABEL_22:
      sub_22803E49C(v46, v45);
      sub_228040034(v34, &qword_27D81EAA8, &unk_2281425E0);
      goto LABEL_26;
    }

    sub_22803FFCC(v34, v13, &qword_27D81E4A8, &unk_22813DE00);
    if (v35(v34 + v33, 1, v36) == 1)
    {
      sub_22803E49C(v50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
      sub_22803E49C(v51, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
      v45 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID;
      v46 = v13;
      goto LABEL_22;
    }

    v37 = v34 + v33;
    v38 = v53;
    sub_228030960(v37, v53, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    v26 = v51;
    if ((*v13 != *v38 || v13[1] != v38[1]) && (sub_2281399BC() & 1) == 0)
    {
      break;
    }

    v39 = *(v55 + 20);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v40 = v53;
    v41 = sub_22813926C();
    sub_22803E49C(v40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    sub_228040034(v34, &qword_27D81E4A8, &unk_22813DE00);
    if ((v41 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_14:
    v22 = v50;
    if (*v26 != *v50)
    {
      v44 = v50;
      goto LABEL_25;
    }

    v42 = *(v58 + 20);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
    v43 = sub_22813926C();
    sub_22803E49C(v22, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
    sub_22803E49C(v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
    if (v43)
    {
      v27 = v57 - 1;
      v30 += v48;
      v29 = v56 + v48;
      if (v57 != 1)
      {
        continue;
      }
    }

    return v43 & 1;
  }

  sub_22803E49C(v53, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228040034(v34, &qword_27D81E4A8, &unk_22813DE00);
LABEL_24:
  v44 = v50;
LABEL_25:
  sub_22803E49C(v44, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
  sub_22803E49C(v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
LABEL_26:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_22803C3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_22803E434(v16, v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        sub_22803E434(v17, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        v19 = static Com_Apple_Summarizationkit_Proto_Rule.== infix(_:_:)(v13, v9);
        sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_22803C5A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22803C5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v7 = 0x656E694C706F74;
        }

        else
        {
          v7 = 0x6369706F74;
        }

        if (*v3)
        {
          v8 = 0xE700000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE800000000000000;
        v7 = 0x736973706F6E7973;
      }

      else if (v6 == 3)
      {
        v7 = 0x6F436C6175736976;
        v8 = 0xEE0073747065636ELL;
      }

      else
      {
        v7 = 0x6F546C6175736976;
        v8 = 0xED0000656E694C70;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 0x656E694C706F74;
        }

        else
        {
          v11 = 0x6369706F74;
        }

        if (*v4)
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0xE500000000000000;
        }

        if (v7 != v11)
        {
LABEL_5:
          v5 = sub_2281399BC();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xE800000000000000;
        if (v7 != 0x736973706F6E7973)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xEE0073747065636ELL;
        if (v7 != 0x6F436C6175736976)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xED0000656E694C70;
        if (v7 != 0x6F546C6175736976)
        {
          goto LABEL_5;
        }
      }

      if (v8 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v27[0] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = (v27 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAD8, &qword_22813D918);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v27 - v18;
  v20 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  v21 = *(v15 + 56);
  v27[1] = a1;
  sub_22803FFCC(a1 + v20, v19, &qword_27D81E9A0, &unk_22813C6D0);
  sub_22803FFCC(a2 + v20, &v19[v21], &qword_27D81E9A0, &unk_22813C6D0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_228040034(v19, &qword_27D81E9A0, &unk_22813C6D0);
LABEL_9:
      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
      v23 = sub_22813926C();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_22803FFCC(v19, v13, &qword_27D81E9A0, &unk_22813C6D0);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
LABEL_6:
    sub_228040034(v19, &qword_27D81EAD8, &qword_22813D918);
    goto LABEL_7;
  }

  v24 = v27[0];
  sub_228030960(&v19[v21], v27[0], type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  v25 = _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfigV018FactualConsistencyJ0V2eeoiySbAE_AEtFZ_0(v13, v24);
  sub_22803E49C(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  sub_228040034(v19, &qword_27D81E9A0, &unk_22813C6D0);
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}