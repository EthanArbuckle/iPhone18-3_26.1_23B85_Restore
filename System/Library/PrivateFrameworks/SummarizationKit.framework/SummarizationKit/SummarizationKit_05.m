uint64_t _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfigV018FactualConsistencyJ0V2eeoiySbAE_AEtFZ_0(void *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = *(a2 + 1);
  if (a2[16] != 1)
  {
    if (v5 == v6)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v6)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v5 == 1)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v5 != 2)
  {
    return 0;
  }

LABEL_13:
  if ((sub_228037C08(a1[3], *(a2 + 3)) & 1) == 0 || (sub_228037C08(a1[4], *(a2 + 4)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0) + 32);
  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t _s16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_228031578(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_22803CD74(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB0, &unk_22813D8F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v34 - v20;
  if (*a1 != *a2 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_2281399BC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v35 = v11;
  v34 = a3(0);
  v22 = *(v34 + 36);
  v23 = *(v17 + 48);
  sub_22803FFCC(a1 + v22, v21, &qword_27D81E998, &unk_228141680);
  sub_22803FFCC(a2 + v22, &v21[v23], &qword_27D81E998, &unk_228141680);
  v24 = *(v7 + 48);
  if (v24(v21, 1, v6) != 1)
  {
    sub_22803FFCC(v21, v16, &qword_27D81E998, &unk_228141680);
    if (v24(&v21[v23], 1, v6) != 1)
    {
      v29 = &v21[v23];
      v30 = v35;
      sub_228030960(v29, v35, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      if ((sub_228037F4C(*v16, *v30) & 1) != 0 && v16[8] == *(v30 + 8) && *(v16 + 3) == *(v30 + 12))
      {
        v31 = *(v6 + 28);
        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
        v32 = sub_22813926C();
        sub_22803E49C(v30, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_22803E49C(v16, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_228040034(v21, &qword_27D81E998, &unk_228141680);
        if (v32)
        {
          goto LABEL_8;
        }

LABEL_23:
        v26 = 0;
        return v26 & 1;
      }

      sub_22803E49C(v30, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      sub_22803E49C(v16, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      v27 = &qword_27D81E998;
      v28 = &unk_228141680;
LABEL_22:
      sub_228040034(v21, v27, v28);
      goto LABEL_23;
    }

    sub_22803E49C(v16, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
LABEL_15:
    v27 = &qword_27D81EAB0;
    v28 = &unk_22813D8F0;
    goto LABEL_22;
  }

  if (v24(&v21[v23], 1, v6) != 1)
  {
    goto LABEL_15;
  }

  sub_228040034(v21, &qword_27D81E998, &unk_228141680);
LABEL_8:
  if ((sub_22803A17C(a1[3], a2[3]) & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_2281399BC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v25 = *(v34 + 32);
  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
  v26 = sub_22813926C();
  return v26 & 1;
}

uint64_t _s16SummarizationKit54Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v3 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v79 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v80 = &v78 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAE0, &qword_22813D920);
  v11 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82, v12);
  v85 = &v78 - v13;
  v14 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = *(v89 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v81 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v86 = &v78 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAE8, &qword_22813D928);
  v22 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87, v23);
  v91 = &v78 - v24;
  v25 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = (&v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = (&v78 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v78 - v40;
  v88 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v42 = *(v88 + 20);
  v43 = *(v37 + 56);
  v92 = a1;
  sub_22803FFCC(a1 + v42, v41, &qword_27D81E4A8, &unk_22813DE00);
  sub_22803FFCC(v93 + v42, &v41[v43], &qword_27D81E4A8, &unk_22813DE00);
  v44 = *(v26 + 48);
  if (v44(v41, 1, v25) == 1)
  {
    if (v44(&v41[v43], 1, v25) == 1)
    {
      sub_228040034(v41, &qword_27D81E4A8, &unk_22813DE00);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_22803FFCC(v41, v35, &qword_27D81E4A8, &unk_22813DE00);
  if (v44(&v41[v43], 1, v25) == 1)
  {
    sub_22803E49C(v35, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
LABEL_6:
    v45 = &qword_27D81EAA8;
    v46 = &unk_2281425E0;
LABEL_7:
    v47 = v41;
LABEL_29:
    sub_228040034(v47, v45, v46);
    goto LABEL_30;
  }

  sub_228030960(&v41[v43], v30, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  if ((*v35 != *v30 || v35[1] != v30[1]) && (sub_2281399BC() & 1) == 0)
  {
    sub_22803E49C(v30, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    sub_22803E49C(v35, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    v45 = &qword_27D81E4A8;
    v46 = &unk_22813DE00;
    goto LABEL_7;
  }

  v48 = *(v25 + 20);
  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
  LOBYTE(v48) = sub_22813926C();
  sub_22803E49C(v30, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_22803E49C(v35, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228040034(v41, &qword_27D81E4A8, &unk_22813DE00);
  if ((v48 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  v49 = v88;
  v50 = *(v88 + 24);
  v51 = *(v87 + 48);
  v53 = v91;
  v52 = v92;
  sub_22803FFCC(v92 + v50, v91, &qword_27D81E8C8, &qword_22813C4D8);
  v54 = v93;
  sub_22803FFCC(v93 + v50, v53 + v51, &qword_27D81E8C8, &qword_22813C4D8);
  v55 = v90;
  v56 = *(v89 + 48);
  if (v56(v53, 1, v90) != 1)
  {
    v57 = v86;
    sub_22803FFCC(v53, v86, &qword_27D81E8C8, &qword_22813C4D8);
    if (v56(v53 + v51, 1, v55) != 1)
    {
      v58 = v81;
      sub_228030960(v53 + v51, v81, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v59 = *(v55 + 20);
      v60 = *(v57 + v59);
      v61 = *(v58 + v59);
      if (v60 == v61 || (v62 = *(v57 + v59), , , v63 = sub_228031578(v60, v61), , , (v63 & 1) != 0))
      {
        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
        v64 = sub_22813926C();
        sub_22803E49C(v58, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        sub_22803E49C(v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        sub_228040034(v53, &qword_27D81E8C8, &qword_22813C4D8);
        if ((v64 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      sub_22803E49C(v58, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      sub_22803E49C(v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v45 = &qword_27D81E8C8;
      v46 = &qword_22813C4D8;
      goto LABEL_18;
    }

    sub_22803E49C(v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
LABEL_17:
    v45 = &qword_27D81EAE8;
    v46 = &qword_22813D928;
LABEL_18:
    v47 = v53;
    goto LABEL_29;
  }

  if (v56(v53 + v51, 1, v55) != 1)
  {
    goto LABEL_17;
  }

  sub_228040034(v53, &qword_27D81E8C8, &qword_22813C4D8);
LABEL_22:
  v65 = *(v49 + 28);
  v66 = *(v82 + 48);
  v67 = v85;
  sub_22803FFCC(v52 + v65, v85, &qword_27D81E9A8, &unk_22813C6E0);
  v68 = v54 + v65;
  v69 = v67;
  sub_22803FFCC(v68, v67 + v66, &qword_27D81E9A8, &unk_22813C6E0);
  v70 = v84;
  v71 = *(v83 + 48);
  if (v71(v67, 1, v84) == 1)
  {
    if (v71(v67 + v66, 1, v70) == 1)
    {
      sub_228040034(v67, &qword_27D81E9A8, &unk_22813C6E0);
LABEL_33:
      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
      v73 = sub_22813926C();
      return v73 & 1;
    }

    goto LABEL_28;
  }

  v72 = v80;
  sub_22803FFCC(v69, v80, &qword_27D81E9A8, &unk_22813C6E0);
  if (v71(v69 + v66, 1, v70) == 1)
  {
    sub_22803E49C(v72, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
LABEL_28:
    v45 = &qword_27D81EAE0;
    v46 = &qword_22813D920;
    v47 = v69;
    goto LABEL_29;
  }

  v75 = v69 + v66;
  v76 = v79;
  sub_228030960(v75, v79, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  v77 = _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfigV2eeoiySbAC_ACtFZ_0(v72, v76);
  sub_22803E49C(v76, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  sub_22803E49C(v72, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  sub_228040034(v69, &qword_27D81E9A8, &unk_22813C6E0);
  if (v77)
  {
    goto LABEL_33;
  }

LABEL_30:
  v73 = 0;
  return v73 & 1;
}

uint64_t _s16SummarizationKit53Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v34 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = (&v32 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v32 - v18;
  v33 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  v20 = *(v33 + 24);
  v21 = *(v15 + 56);
  v35 = a1;
  sub_22803FFCC(a1 + v20, v19, &qword_27D81E4B0, &qword_22813AB20);
  sub_22803FFCC(a2 + v20, &v19[v21], &qword_27D81E4B0, &qword_22813AB20);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_228040034(v19, &qword_27D81E4B0, &qword_22813AB20);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_22803FFCC(v19, v13, &qword_27D81E4B0, &qword_22813AB20);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
LABEL_6:
    v23 = &qword_27D81EAA0;
    v24 = &unk_22813D8E0;
LABEL_7:
    sub_228040034(v19, v23, v24);
LABEL_16:
    v30 = 0;
    return v30 & 1;
  }

  v25 = v34;
  sub_228030960(&v19[v21], v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v26 = *v13 == *v25 && v13[1] == v25[1];
  if (!v26 && (sub_2281399BC() & 1) == 0)
  {
    sub_22803E49C(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v23 = &qword_27D81E4B0;
    v24 = &qword_22813AB20;
    goto LABEL_7;
  }

  v27 = *(v4 + 20);
  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
  v28 = sub_22813926C();
  sub_22803E49C(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_228040034(v19, &qword_27D81E4B0, &qword_22813AB20);
  if ((v28 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  if ((sub_22803999C(*v35, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = *(v33 + 20);
  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8]);
  v30 = sub_22813926C();
  return v30 & 1;
}

uint64_t sub_22803E084(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  v14 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  *(v1 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput) = 0;
  v18 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  *(v1 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix) = MEMORY[0x277D84F90];
  v28 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  *(v1 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe) = 0;
  v19 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803FFCC(a1 + v19, v12, &qword_27D81E8F0, &unk_22813C500);
  swift_beginAccess();
  sub_22803E3CC(v12, v1 + v13, &qword_27D81E8F0, &unk_22813C500);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803FFCC(a1 + v20, v7, &qword_27D81E8D0, &unk_22813C4E0);
  swift_beginAccess();
  sub_22803E3CC(v7, v1 + v15, &qword_27D81E8D0, &unk_22813C4E0);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + v21);
  swift_beginAccess();
  *(v1 + v17) = v21;
  v22 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  v23 = *(a1 + v22);
  swift_beginAccess();
  v24 = *(v1 + v18);
  *(v1 + v18) = v23;

  v25 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v25);
  v26 = v28;
  swift_beginAccess();
  *(v1 + v26) = a1;
  return v1;
}

uint64_t sub_22803E3CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22803E434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22803E49C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22803E57C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22803E5B4()
{
  result = qword_2813C5470;
  if (!qword_2813C5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5470);
  }

  return result;
}

uint64_t sub_22803E608(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22803E650()
{
  result = qword_2813C4D30;
  if (!qword_2813C4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4D30);
  }

  return result;
}

unint64_t sub_22803E6A4()
{
  result = qword_2813C8618;
  if (!qword_2813C8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8618);
  }

  return result;
}

unint64_t sub_22803E700()
{
  result = qword_2813C8600;
  if (!qword_2813C8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8600);
  }

  return result;
}

unint64_t sub_22803E788()
{
  result = qword_2813C8608;
  if (!qword_2813C8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8608);
  }

  return result;
}

unint64_t sub_22803E7E0()
{
  result = qword_2813C5468;
  if (!qword_2813C5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5468);
  }

  return result;
}

unint64_t sub_22803E838()
{
  result = qword_2813C5458;
  if (!qword_2813C5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5458);
  }

  return result;
}

unint64_t sub_22803E8C0()
{
  result = qword_2813C5460;
  if (!qword_2813C5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5460);
  }

  return result;
}

unint64_t sub_22803E918()
{
  result = qword_2813C4D28;
  if (!qword_2813C4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4D28);
  }

  return result;
}

unint64_t sub_22803E970()
{
  result = qword_2813C4D18;
  if (!qword_2813C4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4D18);
  }

  return result;
}

uint64_t sub_22803E9F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22803EA4C()
{
  result = qword_2813C4D20;
  if (!qword_2813C4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4D20);
  }

  return result;
}

uint64_t keypath_get_9Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22803F458()
{
  result = sub_228137D7C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_46Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_47Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_22803F7A0()
{
  sub_22803FAA8(319, &qword_2813C46A8);
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      sub_22803F970(319, qword_2813C5B90, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22803F8BC()
{
  sub_228137D7C();
  if (v0 <= 0x3F)
  {
    sub_22803F970(319, qword_2813C4C98, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22803F970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22803F9FC()
{
  sub_22803FAA8(319, &qword_2813C46E0);
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22803FAA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22813956C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22803FB30()
{
  sub_228137D7C();
  if (v0 <= 0x3F)
  {
    sub_22803F970(319, qword_2813C5A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22803F970(319, qword_2813C5260, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22803F970(319, qword_2813C4BD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22803FC9C()
{
  sub_22803F970(319, &qword_2813C46B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      sub_22803F970(319, qword_2813C5EC0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22803FDC0()
{
  sub_22803F970(319, &qword_2813C46C8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22803FE8C()
{
  sub_22803F970(319, qword_2813C55C8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22803F970(319, qword_2813C54F0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22803FFCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228040034(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SummarySafetyClassification.merge(_:)()
{
  v1 = v0;
  v2 = sub_228138DFC();
  v3 = sub_228138E0C();
  (*(*(v3 - 8) + 8))(v1, v3);
  if (v2)
  {
    sub_228138DFC();
  }

  return sub_228138DEC();
}

uint64_t SummarySafetyClassification.merging(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228138E0C();
  v4 = *(v3 - 8);
  (*(v4 + 16))(a1, v1, v3);
  v5 = sub_228138DFC();
  (*(v4 + 8))(a1, v3);
  if (v5)
  {
    sub_228138DFC();
  }

  return sub_228138DEC();
}

uint64_t sub_2280403DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_228138E6C();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_2281338C0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_2281338C0((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 16) = v17;
    v18 = v8 + 16 * v16;
    *(v18 + 32) = v21;
    *(v18 + 40) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t SKMailMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22813899C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SKMailMessage.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_228138E6C();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280406B0, 0, 0);
}

uint64_t sub_2280406B0()
{
  v121 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  sub_22813894C();
  v5 = sub_228041788();
  v7 = v6;
  (*(v3 + 8))(v1, v2);
  if (!v7)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = 12;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    v37 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228145F40, 23, sub_228041778);
    sub_227FDB3CC();
    swift_allocError();
    *v38 = 12;
    *(v38 + 8) = v37;
    swift_willThrow();
    goto LABEL_16;
  }

  v118 = v5;
  v8 = v0[19];
  v9 = v0[16];
  v10 = sub_2281388AC();
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;
  v12 = 0;
  v13 = sub_2280403DC(sub_228045458, v11, v10);
  v0[21] = v13;

  v14 = *(v13 + 16);
  if (v14 >= 5)
  {
    v14 = 5;
  }

  v0[10] = v13;
  v0[11] = v13 + 32;
  v0[12] = 0;
  v0[13] = (2 * v14) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB00, &qword_22813F970);
  sub_22804561C(&qword_2813C45D0, &qword_27D81EB00, &qword_22813F970);
  v116 = sub_22813925C();
  v16 = v15;
  v17 = sub_2281388AC();
  sub_22813894C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_88:
    v17 = sub_228133B70(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_228133B70(v18 > 1, v19 + 1, 1, v17);
  }

  v21 = v0[18];
  v20 = v0[19];
  v23 = v0[16];
  v22 = v0[17];
  v17[2] = v19 + 1;
  (*(v21 + 32))(v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v20, v22);

  v24 = sub_22813895C();
  if (!v25)
  {

    v39 = swift_allocObject();
    *(v39 + 16) = 13;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0;
    v40 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228145F40, 37, sub_228045C30);
    sub_227FDB3CC();
    swift_allocError();
    *v41 = 13;
    *(v41 + 8) = v40;
    swift_willThrow();

    goto LABEL_16;
  }

  v26 = v24;
  v27 = v25;
  v117 = v16;
  v29 = v0[15];
  v28 = v0[16];
  v30 = sub_22813893C();
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = *(v29 + 208);
  v115 = v29;
  v34 = sub_2280A7954(v30, v32, v29 + 160, v33);
  if (v12)
  {

LABEL_16:
    v48 = v0[19];
    v47 = v0[20];

    v49 = v0[1];

    return v49();
  }

  v16 = v34;
  v108 = v33;
  v109 = v26;
  v112 = v27;
  v42 = v0[16];
  v114 = v35;

  v43 = sub_2281388BC();

  v44 = sub_228041BC0(v43, v118, v7, sub_228045C74);
  v113 = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  v111 = v16;
  *(inited + 32) = v16;
  *(inited + 40) = v114;
  *(inited + 48) = v44;
  v110 = v44;
  *(inited + 56) = v113;

  sub_2280A8554(inited, (v29 + 160));
  v51 = v0[15];
  swift_setDeallocating();
  swift_arrayDestroy();
  if (sub_2280454D4(v51))
  {
    v52 = objc_opt_self();

    v53 = v44;
    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v54 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v54 = &qword_2813C76F8;
    }

    v59 = *(*v54 + 392);
    v60 = *(*v54 + 400);
    v62 = *(*v54 + 408);
    v61 = *(*v54 + 416);
    v105 = *(*v54 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    v57 = v116;
    if (byte_2813C4638 == 1)
    {
      v62(v119, v105);

      v60 = LOBYTE(v119[0]);
    }

    else
    {
    }

    if (v60)
    {
      v55 = 4;
    }

    else
    {
      v55 = 3;
    }

    v56 = v118;
    v16 = v111;
    v58 = v112;
  }

  else
  {
    v55 = 1;
    v56 = v118;
    v57 = v116;
    v58 = v112;
    v53 = v110;
  }

  v63 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v63 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {
    strcpy(v119, "Sender: ");
    BYTE1(v119[1]) = 0;
    WORD1(v119[1]) = 0;
    HIDWORD(v119[1]) = -402653184;
    MEMORY[0x22AAB1970]();
    v64 = v119[1];
    v103 = v119[0];
  }

  else
  {
    v103 = 0;
    v64 = 0xE000000000000000;
  }

  v106 = v64;
  v65 = HIBYTE(v117) & 0xF;
  if ((v117 & 0x2000000000000000) == 0)
  {
    v65 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (v65)
  {
    strcpy(v119, "Recipients: ");
    BYTE5(v119[1]) = 0;
    HIWORD(v119[1]) = -5120;
    MEMORY[0x22AAB1970](v57);
    v67 = v119[0];
    v66 = v119[1];
  }

  else
  {
    v67 = 0;
    v66 = 0xE000000000000000;
  }

  v104 = v66;
  v68 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v68 = v109 & 0xFFFFFFFFFFFFLL;
  }

  if (v68)
  {
    strcpy(v119, "Subject: ");
    WORD1(v119[1]) = 0;
    HIDWORD(v119[1]) = -385875968;
    MEMORY[0x22AAB1970]();
    v17 = v119[0];
    v69 = v119[1];
  }

  else
  {
    v17 = 0;
    v69 = 0xE000000000000000;
  }

  v119[0] = 0x203A79646F42;
  v119[1] = 0xE600000000000000;
  MEMORY[0x22AAB1970](v16, v114);
  v71 = v119[0];
  v70 = v119[1];
  if (v55 > 2u)
  {

    if (v55 == 3)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_22813B030;
      *(v12 + 32) = v17;
      *(v12 + 40) = v69;
      v73 = 2;
      *(v12 + 48) = v71;
      *(v12 + 56) = v70;
    }

    else
    {

      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_22813A4B0;
      *(v12 + 32) = v16;
      *(v12 + 40) = v114;

      v73 = 1;
    }
  }

  else
  {

    v72 = swift_allocObject();
    if (v55 == 1)
    {
      v12 = v72;
      *(v72 + 16) = xmmword_22813B480;
      *(v72 + 32) = v103;
      *(v72 + 40) = v106;
      *(v72 + 48) = v67;
      *(v72 + 56) = v104;
    }

    else
    {
      v12 = v72;
      *(v72 + 16) = xmmword_22813B480;
      *(v72 + 32) = v103;
      *(v72 + 40) = v106;
      *(v72 + 48) = v17;
      *(v72 + 56) = v69;
    }

    *(v72 + 64) = v71;
    *(v72 + 72) = v70;
    v73 = 3;
  }

  v74 = HIBYTE(v113) & 0xF;
  if ((v113 & 0x2000000000000000) == 0)
  {
    v74 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (v74)
  {
    v119[0] = 10;
    v119[1] = 0xE100000000000000;
    MEMORY[0x22AAB1970](v53);
    v7 = v119[1];
    v107 = v119[0];
    v73 = *(v12 + 16);
  }

  else
  {
    v107 = 0;
    v7 = 0xE000000000000000;
  }

  v75 = 0;
  v76 = v12 + 40;
  v77 = MEMORY[0x277D84F90];
LABEL_68:
  v78 = (v76 + 16 * v75);
  while (v73 != v75)
  {
    if (v75 >= v73)
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v16 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_87;
    }

    v12 = *(v78 - 1);
    v17 = *v78;
    v79 = (*v78 >> 56) & 0xF;
    if ((*v78 & 0x2000000000000000) == 0)
    {
      v79 = v12 & 0xFFFFFFFFFFFFLL;
    }

    v78 += 2;
    ++v75;
    if (v79)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119[0] = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_228043AD4(0, *(v77 + 16) + 1, 1);
        v77 = v119[0];
      }

      v82 = *(v77 + 16);
      v81 = *(v77 + 24);
      v83 = v82 + 1;
      if (v82 >= v81 >> 1)
      {
        sub_228043AD4((v81 > 1), v82 + 1, 1);
        v83 = v82 + 1;
        v77 = v119[0];
      }

      *(v77 + 16) = v83;
      v84 = v77 + 16 * v82;
      *(v84 + 32) = v12;
      *(v84 + 40) = v17;
      v75 = v16;
      goto LABEL_68;
    }
  }

  v0[14] = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
  v85 = sub_22813925C();
  v87 = v86;

  v119[0] = v85;
  v119[1] = v87;

  MEMORY[0x22AAB1970](v107, v7);

  v89 = v119[0];
  v88 = v119[1];
  v0[22] = v119[1];
  if (v108)
  {
    v90 = sub_22813936C();

    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v108 + 16));
    v92 = MEMORY[0x277D84A28];
    v120 = MEMORY[0x277D84A28];
    v119[0] = v90;

    sub_228044A14(v119, KeyPath, (v108 + 24), sub_227FEB404);
    os_unfair_lock_unlock((v108 + 16));

    v93 = sub_22813936C();

    v94 = swift_getKeyPath();
    os_unfair_lock_lock((v108 + 16));
    v120 = v92;
    v119[0] = v93;

    sub_228044A14(v119, v94, (v108 + 24), sub_227FEB404);
    os_unfair_lock_unlock((v108 + 16));

    v95 = sub_22813936C();

    v96 = swift_getKeyPath();
    os_unfair_lock_lock((v108 + 16));
    v120 = v92;
    v119[0] = v95;

    sub_228044A14(v119, v96, (v108 + 24), sub_227FEB404);
    os_unfair_lock_unlock((v108 + 16));

    v97 = sub_22813936C();

    v98 = swift_getKeyPath();
    os_unfair_lock_lock((v108 + 16));
    v120 = v92;
    v119[0] = v97;

    sub_228044A14(v119, v98, (v108 + 24), sub_227FEB404);
    os_unfair_lock_unlock((v108 + 16));

    v99 = sub_22813936C();

    v100 = swift_getKeyPath();
    os_unfair_lock_lock((v108 + 16));
    v120 = v92;
    v119[0] = v99;

    sub_228044A14(v119, v100, (v108 + 24), sub_227FEB404);
    os_unfair_lock_unlock((v108 + 16));
  }

  else
  {
  }

  v101 = swift_task_alloc();
  v0[23] = v101;
  *v101 = v0;
  v101[1] = sub_22804153C;
  v102 = v0[15];

  return sub_2280D89D0(v89, v88, v115 + 160, 0);
}

uint64_t sub_22804153C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 184);
  v8 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v9 = sub_2280416FC;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v9 = sub_228041670;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_228041670()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];

  v5 = v0[1];
  v7 = v0[25];
  v6 = v0[26];

  return v5(v6, v7);
}

uint64_t sub_2280416FC()
{
  v1 = v0[21];
  v2 = v0[22];

  v3 = v0[24];
  v5 = v0[19];
  v4 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_228041788()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0 - 8, v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - v7;
  result = sub_228138E5C();
  if (!v10)
  {
LABEL_6:
    sub_228138E2C();
    v12 = sub_228138E3C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) != 1)
    {
      sub_228045760(v8, v5);
      v16 = (*(v13 + 88))(v5, v12);
      if (v16 == *MEMORY[0x277D4B3A8] || v16 == *MEMORY[0x277D4B3A0] || v16 == *MEMORY[0x277D4B3B0])
      {
        (*(v13 + 96))(v5, v12);
        v14 = *v5;
        v15 = v5[1];
        goto LABEL_12;
      }

      (*(v13 + 8))(v5, v12);
    }

    v14 = 0;
    v15 = 0xE000000000000000;
LABEL_12:
    sub_2280457D0(v8, &qword_27D81EB50, &qword_22813DAA0);
    v17 = HIBYTE(v15) & 0xF;
    result = v14;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {

      return 0;
    }

    return result;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_228041998()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0 - 8, v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - v7;
  result = sub_228138E5C();
  if (!v10)
  {
LABEL_6:
    sub_228138E2C();
    v12 = sub_228138E3C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) != 1)
    {
      sub_228045760(v8, v5);
      v16 = (*(v13 + 88))(v5, v12);
      if (v16 == *MEMORY[0x277D4B3A8] || v16 == *MEMORY[0x277D4B3A0] || v16 == *MEMORY[0x277D4B3B0])
      {
        (*(v13 + 96))(v5, v12);
        v14 = *v5;
        v15 = v5[1];
        goto LABEL_12;
      }

      (*(v13 + 8))(v5, v12);
    }

    v14 = 0;
    v15 = 0xE000000000000000;
LABEL_12:
    sub_2280457D0(v8, &qword_27D81EB50, &qword_22813DAA0);
    v17 = HIBYTE(v15) & 0xF;
    result = v14;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {

      return 0;
    }

    return result;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_228041BC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void *))
{
  v99 = a4;
  v107 = sub_228136CDC();
  v7 = *(v107 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v107, v9);
  v106 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22813804C();
  v98 = *(v113 - 8);
  v11 = *(v98 + 64);
  v13 = MEMORY[0x28223BE20](v113, v12);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v112 = &v91 - v17;
  v111 = sub_22813889C();
  v114 = *(v111 - 8);
  v18 = *(v114 + 64);
  MEMORY[0x28223BE20](v111, v19);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v91 - v25;
  v27 = sub_22813713C();
  v109 = *(v27 - 8);
  v110 = v27;
  v28 = *(v109 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v108 = (&v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_22813716C();
  v103 = *(v31 - 8);
  v104 = v31;
  v32 = *(v103 + 64);
  MEMORY[0x28223BE20](v31, v33);
  v102 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22813701C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v91 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + 16);
  if (!v41)
  {
    return 0;
  }

  v95 = a1;
  v105 = v15;
  v96 = v40;
  v42 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v100 = v36;
  v101 = v35;
  v93 = a3;
  v92 = a2;
  v94 = v7;
  if (byte_2813C4629)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v43 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v43 = &qword_2813C76F8;
  }

  v44 = *(*v43 + 1600);
  v45 = *(*v43 + 1608);
  v46 = *(*v43 + 1616);
  v47 = *(*v43 + 1624);
  v97 = *(*v43 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v46(&v115, v97);

    v45 = v115;
    v49 = v100;
    v48 = v101;
    if (!v115)
    {
      return 0;
    }
  }

  else
  {

    v49 = v100;
    v48 = v101;
    if (!v45)
    {
      return 0;
    }
  }

  v50 = v26;
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v51 = v102;
  sub_228139B6C();
  v52 = v108;
  sub_22813715C();
  (*(v103 + 8))(v51, v104);
  sub_22813710C();
  (*(v109 + 8))(v52, v110);
  if ((*(v49 + 48))(v50, 1, v48) == 1)
  {

    sub_2280457D0(v50, &qword_27D81E328, &qword_2281402C0);
    return 0;
  }

  v53 = v96;
  (*(v49 + 32))(v96, v50, v48);
  v115 = sub_228136FFC();
  v116 = v54;
  MEMORY[0x28223BE20](v115, v54);
  *(&v91 - 2) = &v115;
  v55 = sub_2280B866C(v99, (&v91 - 4), v45);

  if ((v55 & 1) == 0)
  {
    (*(v49 + 8))(v53, v48);
    return 0;
  }

  v110 = *(v114 + 16);
  v56 = v95 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
  v57 = *(v114 + 72);
  v58 = (v98 + 8);
  v114 += 16;
  v108 = (v114 - 8);
  v109 = v57;
  v103 = v94 + 8;
  v104 = MEMORY[0x277D84F90];
  v59 = v105;
  v60 = v111;
  v110(v21, v56, v111);
  while (1)
  {
    v61 = v112;
    sub_22813887C();
    sub_22813802C();
    v62 = sub_22813803C();
    v63 = *v58;
    v64 = v21;
    v65 = v113;
    (*v58)(v59, v113);
    v63(v61, v65);
    if (v62)
    {
      v66 = sub_22813888C();
      v21 = v64;
      if (v67)
      {
        v68 = v66;
        v69 = v67;
        v115 = v66;
        v116 = v67;
        v70 = v106;
        sub_228136C8C();
        sub_227FDB420();
        v71 = sub_2281397AC();
        v73 = v72;
        (*v103)(v70, v107);

        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = v71 & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          v115 = 34;
          v116 = 0xE100000000000000;
          MEMORY[0x22AAB1970](v68, v69);

          MEMORY[0x22AAB1970](34, 0xE100000000000000);
          v75 = v115;
          v76 = v116;
          (*v108)(v21, v111);
          v77 = v104;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_2281338C0(0, *(v77 + 2) + 1, 1, v77);
          }

          v79 = *(v77 + 2);
          v78 = *(v77 + 3);
          if (v79 >= v78 >> 1)
          {
            v77 = sub_2281338C0((v78 > 1), v79 + 1, 1, v77);
          }

          *(v77 + 2) = v79 + 1;
          v104 = v77;
          v80 = &v77[16 * v79];
          *(v80 + 4) = v75;
          *(v80 + 5) = v76;
          v59 = v105;
          v60 = v111;
        }

        else
        {
          v60 = v111;
          (*v108)(v21, v111);

          v59 = v105;
        }
      }

      else
      {
        v60 = v111;
        (*v108)(v64, v111);
      }
    }

    else
    {
      (*v108)(v64, v60);
      v21 = v64;
    }

    v56 += v109;
    if (!--v41)
    {
      break;
    }

    v110(v21, v56, v60);
  }

  if (!*(v104 + 16))
  {

    (*(v100 + 8))(v96, v101);
    return 0;
  }

  v115 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
  v81 = sub_22813925C();
  v83 = v82;

  if (v93)
  {
    v84 = v92;
  }

  else
  {
    v84 = 0;
  }

  if (v93)
  {
    v85 = v93;
  }

  else
  {
    v85 = 0xE000000000000000;
  }

  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = v84 & 0xFFFFFFFFFFFFLL;
  }

  v88 = v100;
  v87 = v101;
  if (v86)
  {
    v115 = 0;
    v116 = 0xE000000000000000;

    sub_22813988C();

    v115 = v84;
    v116 = v85;
    MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228145FC0);
  }

  else
  {

    v115 = 0;
    v116 = 0xE000000000000000;
    sub_22813988C();

    v115 = 0xD000000000000019;
    v116 = 0x8000000228145FE0;
  }

  MEMORY[0x22AAB1970](v81, v83);

  MEMORY[0x22AAB1970](46, 0xE100000000000000);
  v90 = v115;
  (*(v88 + 8))(v96, v87);
  return v90;
}

uint64_t sub_22804278C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void *))
{
  v99 = a4;
  v107 = sub_228136CDC();
  v7 = *(v107 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v107, v9);
  v106 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22813804C();
  v98 = *(v113 - 8);
  v11 = *(v98 + 64);
  v13 = MEMORY[0x28223BE20](v113, v12);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v112 = &v91 - v17;
  v111 = sub_22813889C();
  v114 = *(v111 - 8);
  v18 = *(v114 + 64);
  MEMORY[0x28223BE20](v111, v19);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v91 - v25;
  v27 = sub_22813713C();
  v109 = *(v27 - 8);
  v110 = v27;
  v28 = *(v109 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v108 = (&v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_22813716C();
  v103 = *(v31 - 8);
  v104 = v31;
  v32 = *(v103 + 64);
  MEMORY[0x28223BE20](v31, v33);
  v102 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22813701C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v91 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + 16);
  if (!v41)
  {
    return 0;
  }

  v95 = a1;
  v105 = v15;
  v96 = v40;
  v42 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v100 = v36;
  v101 = v35;
  v93 = a3;
  v92 = a2;
  v94 = v7;
  if (byte_2813C4629)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v43 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v43 = &qword_2813C76F8;
  }

  v44 = *(*v43 + 1600);
  v45 = *(*v43 + 1608);
  v46 = *(*v43 + 1616);
  v47 = *(*v43 + 1624);
  v97 = *(*v43 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v46(&v115, v97);

    v45 = v115;
    v49 = v100;
    v48 = v101;
    if (!v115)
    {
      return 0;
    }
  }

  else
  {

    v49 = v100;
    v48 = v101;
    if (!v45)
    {
      return 0;
    }
  }

  v50 = v26;
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v51 = v102;
  sub_228139B6C();
  v52 = v108;
  sub_22813715C();
  (*(v103 + 8))(v51, v104);
  sub_22813710C();
  (*(v109 + 8))(v52, v110);
  if ((*(v49 + 48))(v50, 1, v48) == 1)
  {

    sub_2280457D0(v50, &qword_27D81E328, &qword_2281402C0);
    return 0;
  }

  v53 = v96;
  (*(v49 + 32))(v96, v50, v48);
  v115 = sub_228136FFC();
  v116 = v54;
  MEMORY[0x28223BE20](v115, v54);
  *(&v91 - 2) = &v115;
  v55 = sub_2280B866C(v99, (&v91 - 4), v45);

  if ((v55 & 1) == 0)
  {
    (*(v49 + 8))(v53, v48);
    return 0;
  }

  v110 = *(v114 + 16);
  v56 = v95 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
  v57 = *(v114 + 72);
  v58 = (v98 + 8);
  v114 += 16;
  v108 = (v114 - 8);
  v109 = v57;
  v103 = v94 + 8;
  v104 = MEMORY[0x277D84F90];
  v59 = v105;
  v60 = v111;
  v110(v21, v56, v111);
  while (1)
  {
    v61 = v112;
    sub_22813887C();
    sub_22813802C();
    v62 = sub_22813803C();
    v63 = *v58;
    v64 = v21;
    v65 = v113;
    (*v58)(v59, v113);
    v63(v61, v65);
    if (v62)
    {
      v66 = sub_22813888C();
      v21 = v64;
      if (v67)
      {
        v68 = v66;
        v69 = v67;
        v115 = v66;
        v116 = v67;
        v70 = v106;
        sub_228136C8C();
        sub_227FDB420();
        v71 = sub_2281397AC();
        v73 = v72;
        (*v103)(v70, v107);

        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = v71 & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          v115 = 34;
          v116 = 0xE100000000000000;
          MEMORY[0x22AAB1970](v68, v69);

          MEMORY[0x22AAB1970](34, 0xE100000000000000);
          v75 = v115;
          v76 = v116;
          (*v108)(v21, v111);
          v77 = v104;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_2281338C0(0, *(v77 + 2) + 1, 1, v77);
          }

          v79 = *(v77 + 2);
          v78 = *(v77 + 3);
          if (v79 >= v78 >> 1)
          {
            v77 = sub_2281338C0((v78 > 1), v79 + 1, 1, v77);
          }

          *(v77 + 2) = v79 + 1;
          v104 = v77;
          v80 = &v77[16 * v79];
          *(v80 + 4) = v75;
          *(v80 + 5) = v76;
          v59 = v105;
          v60 = v111;
        }

        else
        {
          v60 = v111;
          (*v108)(v21, v111);

          v59 = v105;
        }
      }

      else
      {
        v60 = v111;
        (*v108)(v64, v111);
      }
    }

    else
    {
      (*v108)(v64, v60);
      v21 = v64;
    }

    v56 += v109;
    if (!--v41)
    {
      break;
    }

    v110(v21, v56, v60);
  }

  if (!*(v104 + 16))
  {

    (*(v100 + 8))(v96, v101);
    return 0;
  }

  v115 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
  v81 = sub_22813925C();
  v83 = v82;

  if (v93)
  {
    v84 = v92;
  }

  else
  {
    v84 = 0;
  }

  if (v93)
  {
    v85 = v93;
  }

  else
  {
    v85 = 0xE000000000000000;
  }

  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = v84 & 0xFFFFFFFFFFFFLL;
  }

  v88 = v100;
  v87 = v101;
  if (v86)
  {
    v115 = 0;
    v116 = 0xE000000000000000;

    sub_22813988C();

    v115 = v84;
    v116 = v85;
    MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228145FC0);
  }

  else
  {

    v115 = 0;
    v116 = 0xE000000000000000;
    sub_22813988C();

    v115 = 0xD000000000000019;
    v116 = 0x8000000228145FE0;
  }

  MEMORY[0x22AAB1970](v81, v83);

  MEMORY[0x22AAB1970](46, 0xE100000000000000);
  v90 = v115;
  (*(v88 + 8))(v96, v87);
  return v90;
}

Swift::String __swiftcall SKMailMessage.preprocessForLanguageCheck()()
{
  v0 = sub_22813895C();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = sub_22813893C();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v9 = sub_2280433F4(inited);
  v11 = v10;
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_2280433F4(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
      v13 = sub_22813925C();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228043AD4(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_228043AD4((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_228043584(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
      v13 = sub_22813925C();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228043AD4(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_228043AD4((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_228043714(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280437A8;

  return SKMailMessage.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280437A8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2280439EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D08((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

char *sub_228043AB4(char *a1, int64_t a2, char a3)
{
  result = sub_228043D80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043AD4(char *a1, int64_t a2, char a3)
{
  result = sub_228043E90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043AF4(char *a1, int64_t a2, char a3)
{
  result = sub_228043F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_228043B14(size_t a1, int64_t a2, char a3)
{
  result = sub_2280445E4(a1, a2, a3, *v3, &qword_27D81EB18, &qword_22813DA60, MEMORY[0x277CC9740]);
  *v3 = result;
  return result;
}

size_t sub_228043B58(size_t a1, int64_t a2, char a3)
{
  result = sub_227FCCB58(a1, a2, a3, *v3, &qword_27D81EB98, &qword_22813DAE8, &qword_27D81EBA0, &qword_22813DAF0);
  *v3 = result;
  return result;
}

size_t sub_228043B98(size_t a1, int64_t a2, char a3)
{
  result = sub_2280445E4(a1, a2, a3, *v3, &qword_27D81EB48, &unk_22813DA90, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_228043BDC(void *a1, int64_t a2, char a3)
{
  result = sub_2280440A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043BFC(char *a1, int64_t a2, char a3)
{
  result = sub_2280441D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043C1C(char *a1, int64_t a2, char a3)
{
  result = sub_2280442D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043C3C(char *a1, int64_t a2, char a3)
{
  result = sub_2280443F8(a1, a2, a3, *v3, &qword_27D81EB68, &qword_22813DAB8);
  *v3 = result;
  return result;
}

char *sub_228043C6C(char *a1, int64_t a2, char a3)
{
  result = sub_2280443F8(a1, a2, a3, *v3, &qword_27D81EB70, &qword_22813DAC0);
  *v3 = result;
  return result;
}

char *sub_228043C9C(char *a1, int64_t a2, char a3)
{
  result = sub_2280444F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_228043CBC(size_t a1, int64_t a2, char a3)
{
  result = sub_2280445E4(a1, a2, a3, *v3, &qword_27D81EB60, &qword_22813DAB0, MEMORY[0x277CC8C40]);
  *v3 = result;
  return result;
}

char *sub_228043D00(char *a1, int64_t a2, char a3)
{
  result = sub_2280447C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_228043D20(size_t a1, int64_t a2, char a3)
{
  result = sub_227FCCB58(a1, a2, a3, *v3, &qword_27D81EB38, &unk_22813DA80, &qword_27D81EB40, &qword_228142EC0);
  *v3 = result;
  return result;
}

char *sub_228043D60(char *a1, int64_t a2, char a3)
{
  result = sub_2280448F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA8, &qword_22813DAF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

char *sub_228043E90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

char *sub_228043F9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB28, &qword_22813DA70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

void *sub_2280440A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB20, &qword_22813DA68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2280441D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB88, &qword_22813DAD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

char *sub_2280442D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB80, &qword_22813DAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2280443F8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v13 = _swift_stdlib_malloc_size_1(v12);
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
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_2280444F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB78, &qword_22813DAC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

size_t sub_2280445E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
  result = _swift_stdlib_malloc_size_1(v17);
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

char *sub_2280447C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB58, &qword_22813DAA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

char *sub_2280448F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

uint64_t sub_228044A14(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, void))
{
  if (*(a1 + 24))
  {
    sub_227FE5EAC(a1, v18);
    v7 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a3;
    v9 = v19;
    v10 = __swift_mutable_project_boxed_opaque_existential_0(v18, v19);
    v11 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v10, v10);
    v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);

    sub_228045234(v13, a2, isUniquelyReferenced_nonNull_native, &v17, v9, a4);
    __swift_destroy_boxed_opaque_existential_0(v18);

    *a3 = v17;
  }

  else
  {
    sub_2280457D0(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027400(a2, v18);

    return sub_2280457D0(v18, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228044BA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 24))
  {
    sub_227FE5EAC(a1, v9);
    v5 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *a3;

    sub_228044E30(v9, a2, isUniquelyReferenced_nonNull_native, &v8);

    *a3 = v8;
  }

  else
  {
    sub_2280457D0(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027400(a2, v9);

    return sub_2280457D0(v9, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228044D4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(_OWORD *, uint64_t *, uint64_t, uint64_t *, uint64_t))
{
  if (*(a1 + 24))
  {
    sub_227FE5EAC(a1, v13);
    v9 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a3;

    a5(v13, a2, isUniquelyReferenced_nonNull_native, &v12, a4);

    *a3 = v12;
  }

  else
  {
    sub_2280457D0(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027400(a2, v13);

    return sub_2280457D0(v13, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228044E30(uint64_t *a1, uint64_t a2, char a3, void *a4)
{
  v8 = a1[3];
  v9 = __swift_mutable_project_boxed_opaque_existential_0(a1, v8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v9, v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  sub_228045830(v12, a2, a3, a4, v8);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

_OWORD *sub_228044F24(_OWORD *a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(uint64_t, void))
{
  v10 = *a4;
  v11 = a5(a2, *a4);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_22801D03C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2280196BC(v16, a3 & 1);
    v11 = a5(a2, *a4);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281399EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *a4;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_227FE5EAC(a1, v22);
  }

  else
  {
    sub_2280451CC(v11, a2, a1, v21);
  }
}

_OWORD *sub_228045078(_OWORD *a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(uint64_t, void))
{
  v10 = *a4;
  v11 = a5(a2, *a4);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_22801D03C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2280196BC(v16, a3 & 1);
    v11 = a5(a2, *a4);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281399EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *a4;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_227FE5EAC(a1, v22);
  }

  else
  {
    sub_2280451CC(v11, a2, a1, v21);
  }
}

_OWORD *sub_2280451CC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_228045234(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, void))
{
  v33 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v13 = *a4;
  v15 = a6(a2, *a4);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_227FE5EAC(v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_22801D03C();
    goto LABEL_7;
  }

  sub_2280196BC(v18, a3 & 1);
  v24 = a6(a2, *a4);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = v33;
  v27 = __swift_mutable_project_boxed_opaque_existential_0(v32, v33);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v27, v27);
  v30 = v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_228045A48(v15, a2, v30, v21, a5);

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_228045458@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_228041788();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t objectdestroyTm_4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280454D4(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (*(v1 + 16) >= 2uLL)
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v3 = sub_22813882C();
    __swift_project_value_buffer(v3, qword_2813C8A20);
    sub_228045B14(a1, v9);
    v4 = sub_22813880C();
    v5 = sub_2281396DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      v7 = *(v10 + 16);
      sub_228045B70(v9);
      *(v6 + 4) = v7;
      _os_log_impl(&dword_227FC3000, v4, v5, "Expect only one summarization style. Received %ld.", v6, 0xCu);
      MEMORY[0x22AAB28A0](v6, -1, -1);
    }

    else
    {
      sub_228045B70(v9);
    }
  }

  return sub_22803C5FC(v1, &unk_283B5B308) & 1;
}

uint64_t sub_22804561C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for SKMailMessage()
{
  result = qword_2813C7AA0;
  if (!qword_2813C7AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280456D8()
{
  result = sub_22813899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228045760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280457D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_228045830(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v31 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v11 = *a4;
  v13 = sub_227FEB40C(a2, *a4);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v11 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *a4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_227FE5EAC(v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_22801D03C();
    goto LABEL_7;
  }

  sub_2280196BC(v16, a3 & 1);
  v22 = sub_227FEB40C(a2, *a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = v31;
  v25 = __swift_mutable_project_boxed_opaque_existential_0(v30, v31);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25, v25);
  v28 = v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  sub_228045A48(v13, a2, v28, v19, a5);
  __swift_destroy_boxed_opaque_existential_0(v30);
}

_OWORD *sub_228045A48(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v16 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(&v15, (a4[7] + 32 * a1));
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_228045BC4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2281399BC() & 1;
  }
}

void *sub_228045C90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [v2 rangeAtIndex_];
  v6 = v5;
  sub_22813967C();
  if (v7)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v8 = sub_22813882C();
    __swift_project_value_buffer(v8, qword_2813C89F0);
    v9 = sub_22813880C();
    v10 = sub_2281396EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_227FC3000, v9, v10, "Unexpected failure converting match range to string range.", v11, 2u);
      MEMORY[0x22AAB28A0](v11, -1, -1);
    }

    v12 = sub_22813927C();
    v13 = [v12 substringWithRange_];

    v14 = sub_2281392AC();
    v16 = v15;

    a2[3] = MEMORY[0x277D837D0];
    result = sub_227FDB420();
    a2[4] = result;
    *a2 = v14;
    a2[1] = v16;
  }

  else
  {
    v18 = sub_22813948C();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    a2[3] = MEMORY[0x277D83E40];
    a2[4] = sub_228045E64();
    result = swift_allocObject();
    *a2 = result;
    result[2] = v18;
    result[3] = v20;
    result[4] = v22;
    result[5] = v24;
  }

  return result;
}

unint64_t sub_228045E64()
{
  result = qword_2813C4718;
  if (!qword_2813C4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4718);
  }

  return result;
}

uint64_t sub_228045EB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6709621;
    }

    else
    {
      v4 = 1752457584;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
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
      v4 = 0x656C646E7562;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE300000000000000;
  v8 = 6709621;
  if (a2 != 2)
  {
    v8 = 1752457584;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x656C646E7562;
    v6 = 0xE600000000000000;
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
    v11 = sub_2281399BC();
  }

  return v11 & 1;
}

uint64_t sub_228045FD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656761;
  v3 = 0x7373654D6C69616DLL;
  v4 = a1;
  if (a1 > 2u)
  {
    v9 = 0x80000002281438E0;
    v10 = 0xD000000000000011;
    if (a1 == 4)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x8000000228143900;
    }

    if (a1 == 3)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v10;
    }

    if (v4 == 3)
    {
      v8 = 0x80000002281438C0;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v5 = 0x6163696669746F6ELL;
    v6 = 0xEC0000006E6F6974;
    if (a1 != 1)
    {
      v5 = 0x7373654D74786574;
      v6 = 0xEB00000000656761;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x7373654D6C69616DLL;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEB00000000656761;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v11 = 0xD000000000000012;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (a2 == 4)
      {
        v2 = 0x80000002281438E0;
      }

      else
      {
        v2 = 0x8000000228143900;
      }

      if (v7 != v11)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0xD000000000000011;
    v2 = 0x80000002281438C0;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEC0000006E6F6974;
      if (v7 != 0x6163696669746F6ELL)
      {
        goto LABEL_38;
      }
    }

    else if (v7 != 0x7373654D74786574)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v7 != v3)
  {
LABEL_38:
    v12 = sub_2281399BC();
    goto LABEL_39;
  }

LABEL_35:
  if (v8 != v2)
  {
    goto LABEL_38;
  }

  v12 = 1;
LABEL_39:

  return v12 & 1;
}

uint64_t sub_2280461C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656E694C706F74;
    }

    else
    {
      v3 = 0x6369706F74;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x736973706F6E7973;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F436C6175736976;
    v4 = 0xEE0073747065636ELL;
  }

  else
  {
    v3 = 0x6F546C6175736976;
    v4 = 0xED0000656E694C70;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656E694C706F74;
    }

    else
    {
      v9 = 0x6369706F74;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F436C6175736976;
    v6 = 0xEE0073747065636ELL;
    if (a2 != 3)
    {
      v5 = 0x6F546C6175736976;
      v6 = 0xED0000656E694C70;
    }

    if (a2 == 2)
    {
      v7 = 0x736973706F6E7973;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2281399BC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_228046378(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = result;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    for (i = v6; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v9 = sub_22813713C();
      v11 = *(v9 - 8);
      result = v9 - 8;
      v10 = v11;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i;
      result = sub_2280EB0D0(a2, &v22);
      if (v2)
      {

        return v7;
      }

      v13 = v23;
      if (v23)
      {
        break;
      }

      if (v6 == v3)
      {
        return v7;
      }
    }

    v14 = v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2281338C0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v15 = *(v7 + 16);
    v16 = *(v7 + 24);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v21 = v15 + 1;
      v19 = v7;
      v20 = *(v7 + 16);
      result = sub_2281338C0((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v17 = v21;
      v7 = result;
    }

    *(v7 + 16) = v17;
    v18 = v7 + 16 * v15;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
  }

  while (v6 != v3);
  return v7;
}

uint64_t sub_228046520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_228059D8C;

  return sub_2280465F4(a1, a2, a3, a4);
}

uint64_t sub_2280465F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22813713C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280466F4, 0, 0);
}

uint64_t sub_2280466F4()
{
  v1 = v0[6];
  (*(v0[8] + 56))(v0[10], 1, 1, v0[7]);
  v2 = SKMailMessage.preprocessForLanguageCheck()();
  v0[11] = v2._object;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v3 = sub_22813882C();
  v4 = __swift_project_value_buffer(v3, qword_2813C8A20);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_228046834;
  v6 = v0[10];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2280C5BB0(v9, v2._countAndFlagsBits, v2._object, v6, v7, v8, v4);
}

uint64_t sub_228046834()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_228046B98;
  }

  else
  {
    v4 = sub_228046964;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228046964()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[9];
      v10 = v0[2];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      v11[1] = sub_228046C28;
      v12 = v0[9];
      v13 = v0[3];
      v14 = v0[4];

      return sub_22804BFE0(v12, v13, v14);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[9];
  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228046B98()
{
  v1 = v0[13];
  v2 = v0[9];
  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v3 = v0[1];

  return v3();
}

uint64_t sub_228046C28()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_228046E20;
  }

  else
  {
    v6 = sub_228046D98;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_228046D98()
{
  v1 = v0[9];
  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v2 = v0[1];

  return v2();
}

uint64_t sub_228046E20()
{
  v1 = v0[2];
  v2 = sub_22813716C();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[15];
  v4 = v0[9];
  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v5 = v0[1];

  return v5();
}

uint64_t sub_228046EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22813713C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228046FEC, 0, 0);
}

uint64_t sub_228046FEC()
{
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v1 = sub_22813882C();
  v2 = __swift_project_value_buffer(v1, qword_2813C8A20);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22804710C;
  v4 = v0[11];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2280C5BB0(v9, v5, v6, v4, v7, v8, v2);
}

uint64_t sub_22804710C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_228047454;
  }

  else
  {
    v3 = sub_228047220;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228047220()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[10];
      v10 = v0[2];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      v11[1] = sub_2280474E4;
      v12 = v0[10];
      v13 = v0[3];
      v14 = v0[4];

      return sub_22804CDFC(v12, v13, v14);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228047454()
{
  v1 = v0[13];
  v2 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2280474E4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2280476DC;
  }

  else
  {
    v6 = sub_228047654;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_228047654()
{
  v1 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2280476DC()
{
  v1 = v0[2];
  v2 = sub_22813716C();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[15];
  v4 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2280477A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22813713C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280478A8, 0, 0);
}

uint64_t sub_2280478A8()
{
  v1 = v0[6];
  (*(v0[8] + 56))(v0[10], 1, 1, v0[7]);
  v2 = sub_2280A0AE8();
  v4 = v3;
  v0[11] = v3;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v5 = sub_22813882C();
  v6 = __swift_project_value_buffer(v5, qword_2813C8A20);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2280479E8;
  v8 = v0[10];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return sub_2280C5BB0(v11, v2, v4, v8, v9, v10, v6);
}

uint64_t sub_2280479E8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_228059DB0;
  }

  else
  {
    v4 = sub_228047B18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228047B18()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[9];
      v10 = v0[2];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      v11[1] = sub_228047D4C;
      v12 = v0[9];
      v13 = v0[3];
      v14 = v0[4];

      return sub_22804DC18(v12, v13, v14);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[9];
  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228047D4C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_228059D7C;
  }

  else
  {
    v6 = sub_228059E70;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_228047EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22813713C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228047FBC, 0, 0);
}

uint64_t sub_228047FBC()
{
  v1 = v0[6];
  (*(v0[8] + 56))(v0[10], 1, 1, v0[7]);
  v2 = sub_228138A6C();
  v0[11] = v3;
  if (qword_2813C49E0 != -1)
  {
    v14 = v2;
    v15 = v3;
    swift_once();
    v3 = v15;
    v2 = v14;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22813882C();
  v7 = __swift_project_value_buffer(v6, qword_2813C8A20);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_228048118;
  v9 = v0[10];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  return sub_2280C5BB0(v12, v5, v4, v9, v10, v11, v7);
}

uint64_t sub_228048118()
{
  v2 = *(*v1 + 96);
  *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_228059DB4;
  }

  else
  {
    v3 = sub_228048254;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228048254()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[9];
      v10 = v0[2];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      v11[1] = sub_228048488;
      v12 = v0[9];
      v13 = v0[3];
      v14 = v0[4];

      return sub_22804EA34(v12, v13, v14);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[9];
  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228048488()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_228059D80;
  }

  else
  {
    v6 = sub_228059E74;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2280485F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22813713C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280486F8, 0, 0);
}

uint64_t sub_2280486F8()
{
  v1 = v0[6];
  (*(v0[8] + 56))(v0[10], 1, 1, v0[7]);
  v2 = SKUserNotification.preprocessForLanguageCheck()();
  v0[11] = v2._object;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v3 = sub_22813882C();
  v4 = __swift_project_value_buffer(v3, qword_2813C8A20);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_228048838;
  v6 = v0[10];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2280C5BB0(v9, v2._countAndFlagsBits, v2._object, v6, v7, v8, v4);
}

uint64_t sub_228048838()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_228059DB8;
  }

  else
  {
    v4 = sub_228048968;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228048968()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[9];
      v10 = v0[2];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      v11[1] = sub_228048B9C;
      v12 = v0[9];
      v13 = v0[3];
      v14 = v0[4];

      return sub_22804F850(v12, v13, v14);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[9];
  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228048B9C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_228059D84;
  }

  else
  {
    v6 = sub_228059E78;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_228048D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_22813713C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228048E0C, 0, 0);
}

uint64_t sub_228048E0C()
{
  v1 = v0[7];
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  v0[2] = v1;
  v2 = SKMailMessageThread.preprocessForLanguageCheck()();
  v0[12] = v2._object;
  if (v3)
  {
    v4 = v0[10];
    sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v7 = sub_22813882C();
    v8 = __swift_project_value_buffer(v7, qword_2813C8A20);
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_228048FCC;
    v10 = v0[11];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];

    return sub_2280C5BB0(v13, v2._countAndFlagsBits, v2._object, v10, v11, v12, v8);
  }
}

uint64_t sub_228048FCC()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_228049330;
  }

  else
  {
    v4 = sub_2280490FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280490FC()
{
  v1 = v0[6];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[10];
      v10 = v0[3];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[15] = v11;
      *v11 = v0;
      v11[1] = sub_2280493C0;
      v12 = v0[10];
      v13 = v0[4];
      v14 = v0[5];

      return sub_22805066C(v12, v13, v14);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228049330()
{
  v1 = v0[14];
  v2 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2280493C0()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2280495B8;
  }

  else
  {
    v6 = sub_228049530;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_228049530()
{
  v1 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2280495B8()
{
  v1 = v0[3];
  v2 = sub_22813716C();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[16];
  v4 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v5 = v0[1];

  return v5();
}

uint64_t sub_228049684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_22813713C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228049784, 0, 0);
}

uint64_t sub_228049784()
{
  v1 = v0[7];
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  v0[2] = v1;
  v2 = SKTextMessageThread.preprocessForLanguageCheck()();
  v0[12] = v2._object;
  if (v3)
  {
    v4 = v0[10];
    sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v7 = sub_22813882C();
    v8 = __swift_project_value_buffer(v7, qword_2813C8A20);
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_228049944;
    v10 = v0[11];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];

    return sub_2280C5BB0(v13, v2._countAndFlagsBits, v2._object, v10, v11, v12, v8);
  }
}

uint64_t sub_228049944()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_228059D74;
  }

  else
  {
    v4 = sub_228049A74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228049A74()
{
  v1 = v0[6];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[10];
      v10 = v0[3];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[15] = v11;
      *v11 = v0;
      v11[1] = sub_228049CA8;
      v12 = v0[10];
      v13 = v0[4];
      v14 = v0[5];

      return sub_228051488(v12, v13, v14);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228049CA8()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_228059EA4;
  }

  else
  {
    v6 = sub_228059E68;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_228049E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_22813713C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228049F18, 0, 0);
}

uint64_t sub_228049F18()
{
  v1 = v0[7];
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  v0[2] = v1;
  v2 = SKUserNotificationThread.preprocessForLanguageCheck()();
  v0[12] = v2._object;
  if (v3)
  {
    v4 = v0[10];
    sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v7 = sub_22813882C();
    v8 = __swift_project_value_buffer(v7, qword_2813C8A20);
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_22804A0D8;
    v10 = v0[11];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];

    return sub_2280C5BB0(v13, v2._countAndFlagsBits, v2._object, v10, v11, v12, v8);
  }
}

uint64_t sub_22804A0D8()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_228059D78;
  }

  else
  {
    v4 = sub_22804A208;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22804A208()
{
  v1 = v0[6];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[10];
      v10 = v0[3];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[15] = v11;
      *v11 = v0;
      v11[1] = sub_22804A43C;
      v12 = v0[10];
      v13 = v0[4];
      v14 = v0[5];

      return sub_2280522A4(v12, v13, v14);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22804A43C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_228059EA8;
  }

  else
  {
    v6 = sub_228059E6C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22804A5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22813713C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22804A6AC, 0, 0);
}

uint64_t sub_22804A6AC()
{
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v1 = sub_22813882C();
  v2 = __swift_project_value_buffer(v1, qword_2813C8A20);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22804A7CC;
  v4 = v0[11];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2280C5BB0(v9, v5, v6, v4, v7, v8, v2);
}

uint64_t sub_22804A7CC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_228059DBC;
  }

  else
  {
    v3 = sub_22804A8E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22804A8E0()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[10];
      v10 = v0[2];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      v11[1] = sub_22804AB14;
      v12 = v0[10];
      v13 = v0[3];
      v14 = v0[4];

      return sub_2280530C0(v12, v13, v14);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[10];
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22804AB14()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_228059D88;
  }

  else
  {
    v6 = sub_228059E7C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t Summarizable.checkSupportedLanguage(modelBundleID:requestInfo:styles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22804AD2C, 0, 0);
}

uint64_t sub_22804AD2C()
{
  v1 = v0[9];
  v2 = sub_22813713C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_22804AE10;
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  return sub_22804B7E8(v10, v11, v8, v4, v9, v6, v7);
}

uint64_t sub_22804AE10()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[11] = v0;

  sub_228059C78(v3, &qword_27D81E778, &qword_22813BC80);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22804AF84, 0, 0);
  }

  else
  {
    v5 = v4[9];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_22804AF84()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_22804B000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_228059D9C;

  return Summarizable.checkSupportedLanguage(modelBundleID:requestInfo:styles:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22804B0D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_228136CDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22804B440(a1, a2);
  v10 = [objc_opt_self() sharedAssistant];
  v11 = sub_22813927C();

  v12 = [v10 stringFromString:v11 byApplyingSmartQuotes:1 smartDashes:1 quotesArray:0];

  v13 = sub_2281392AC();
  v15 = v14;

  v18[0] = v13;
  v18[1] = v15;
  sub_228136C8C();
  sub_227FDB420();
  v16 = sub_2281397AC();
  (*(v5 + 8))(v9, v4);

  return v16;
}

uint64_t sub_22804B28C(uint64_t a1, unint64_t a2)
{
  v4 = sub_228136CDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22804B614(a1, a2);
  v10 = [objc_opt_self() sharedAssistant];
  v11 = sub_22813927C();

  v12 = [v10 stringFromString:v11 byApplyingSmartQuotes:1 smartDashes:1 quotesArray:0];

  v13 = sub_2281392AC();
  v15 = v14;

  v18[0] = v13;
  v18[1] = v15;
  sub_228136C8C();
  sub_227FDB420();
  v16 = sub_2281397AC();
  (*(v5 + 8))(v9, v4);

  return v16;
}

uint64_t sub_22804B440(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  sub_22813945C();

  v5 = sub_22812BBD0(1uLL, v3, a2);
  v7 = v6;

  if (!((v5 ^ v7) >> 14) || (sub_22813978C(), , (sub_22813920C() & 1) == 0))
  {

    goto LABEL_9;
  }

  v8 = sub_22813921C();

  if (v8)
  {
LABEL_9:

LABEL_10:

    return v3;
  }

  v9 = sub_2281391FC();

  v10 = sub_22812BBD0(1uLL, v3, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x22AAB18D0](v10, v12, v14, v16);
  v19 = v18;

  MEMORY[0x22AAB1970](v17, v19);

  return v9;
}

uint64_t sub_22804B614(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  sub_22813945C();

  v5 = sub_22812BBD0(1uLL, v3, a2);
  v7 = v6;

  if (!((v5 ^ v7) >> 14) || (sub_22813978C(), , (sub_22813920C() & 1) == 0))
  {

    goto LABEL_9;
  }

  v8 = sub_22813921C();

  if (v8)
  {
LABEL_9:

LABEL_10:

    return v3;
  }

  v9 = sub_2281391FC();

  v10 = sub_22812BBD0(1uLL, v3, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x22AAB18D0](v10, v12, v14, v16);
  v19 = v18;

  MEMORY[0x22AAB1970](v17, v19);

  return v9;
}

uint64_t sub_22804B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_22813713C();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22804B8B4, 0, 0);
}

uint64_t sub_22804B8B4()
{
  v1 = v0[9];
  v2 = (*(v0[8] + 24))(v0[7]);
  v0[13] = v3;
  v4 = v2;
  v5 = v3;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v6 = sub_22813882C();
  v7 = __swift_project_value_buffer(v6, qword_2813C8A20);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_22804BA2C;
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[2];
  v12 = v0[3];

  return sub_2280C5BB0(v11, v4, v5, v9, v12, v10, v7);
}

uint64_t sub_22804BA2C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *v1;

  if (v0)
  {
    v6 = *(v2 + 96);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22804BB94, 0, 0);
  }
}

uint64_t sub_22804BB94()
{
  v1 = v0[6];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      v9 = v0[12];
      v10 = v0[2];
      sub_22813715C();
      v11 = swift_task_alloc();
      v0[15] = v11;
      *v11 = v0;
      v11[1] = sub_22804BD98;
      v12 = v0[12];
      v13 = v0[7];
      v14 = v0[8];
      v15 = v0[3];
      v16 = v0[4];

      return sub_228053EDC(v12, v15, v16, v13);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22804BD98()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *v1;
  v6[16] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22804BF40, 0, 0);
  }

  else
  {
    v7 = v6[12];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_22804BF40()
{
  v1 = v0[2];
  v2 = sub_22813716C();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[16];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22804BFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22813713C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[35] = v11;
  *v11 = v3;
  v11[1] = sub_22804C184;

  return sub_228054D04(a2, a3);
}

uint64_t sub_22804C184(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804C284, 0, 0);
}

uint64_t sub_22804C284()
{
  v127 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:
    v106 = v0[33];
    v105 = v0[34];
    v108 = v0[29];
    v107 = v0[30];
    v110 = v0[27];
    v109 = v0[28];
    v111 = v0[26];

    v104 = v0[1];
    goto LABEL_42;
  }

  v119 = *(v1 + 16);
  v114 = v0[36];
  if (!v119)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v117 = v0[32];
  v118 = (v117 + 8);
  v116 = v0 + 30;
  v113 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v117 + 16))(v0[34], v1 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v116;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v115 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v113;
      v1 = v114;
      v0 = v121;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v113;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v115 == v18)
    {

      v0 = v121;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v121;
      v1 = v114;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[34];
    v21 = v0[27];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[27];
    if (v25 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[26];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[26];
    if (v32 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v114;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v114;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v118)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v114;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v118)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v114;
    (*v118)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v119 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[33];
  v42 = v121[32];
  v43 = v121[31];
  v44 = v121[25];
  v45 = v121[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v121 + 2));
  sub_228004954(v44, (v121 + 7));
  sub_228004954(v44, (v121 + 12));
  sub_228004954(v44, (v121 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v121[33];
  if (v49)
  {
    v51 = v121[28];
    v52 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v123 = v120;
    *v52 = 136316674;
    v54 = v121[5];
    v53 = v121[6];
    __swift_project_boxed_opaque_existential_1(v121 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    v58 = sub_227FCC340(v55, v57, &v123);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v121[10];
    v59 = v121[11];
    __swift_project_boxed_opaque_existential_1(v121 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    v64 = sub_227FCC340(v61, v63, &v123);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v121[15];
    v65 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
    v70 = sub_227FCC340(v67, v69, &v123);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v121[20];
    v71 = v121[21];
    __swift_project_boxed_opaque_existential_1(v121 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v121[28];
    if (v75 == 1)
    {
      sub_228059C78(v121[28], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v121[28];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    (*(v121[32] + 8))(v121[33], v121[31]);
    v84 = sub_227FCC340(v78, v77, &v123);

    *(v52 + 40) = v84;
    *(v52 + 48) = 2082;
    v121[22] = type metadata accessor for SKMailMessage();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBE8, &qword_22813DCB0);
    v85 = sub_2281392EC();
    v87 = sub_227FCC340(v85, v86, &v123);

    *(v52 + 50) = v87;
    *(v52 + 58) = 2082;
    v81 = v121;
    v124 = MEMORY[0x277D84FA0];
    v88 = sub_228046378(v114, &v124);
    v125 = 91;
    v126 = 0xE100000000000000;
    v121[23] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v89 = sub_22813925C();
    v91 = v90;

    MEMORY[0x22AAB1970](v89, v91);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v92 = v125;
    v93 = v126;

    v94 = sub_227FCC340(v92, v93, &v123);

    *(v52 + 60) = v94;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v120, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v121[32];
    v80 = v121[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
  }

  v95 = v81[33];
  v96 = v81[34];
  v97 = v81[29];
  v98 = v81[30];
  v100 = v81[27];
  v99 = v81[28];
  v122 = v81[26];
  v101 = swift_allocObject();
  *(v101 + 16) = 17;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E9C);
  sub_227FDB3CC();
  swift_allocError();
  *v103 = 17;
  *(v103 + 8) = v102;
  swift_willThrow();

  v104 = v81[1];
LABEL_42:

  return v104();
}

uint64_t sub_22804CDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22813713C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[35] = v11;
  *v11 = v3;
  v11[1] = sub_22804CFA0;

  return sub_22805535C(a2, a3);
}

uint64_t sub_22804CFA0(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804D0A0, 0, 0);
}

uint64_t sub_22804D0A0()
{
  v127 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:
    v106 = v0[33];
    v105 = v0[34];
    v108 = v0[29];
    v107 = v0[30];
    v110 = v0[27];
    v109 = v0[28];
    v111 = v0[26];

    v104 = v0[1];
    goto LABEL_42;
  }

  v119 = *(v1 + 16);
  v114 = v0[36];
  if (!v119)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v117 = v0[32];
  v118 = (v117 + 8);
  v116 = v0 + 30;
  v113 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v117 + 16))(v0[34], v1 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v116;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v115 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v113;
      v1 = v114;
      v0 = v121;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v113;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v115 == v18)
    {

      v0 = v121;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v121;
      v1 = v114;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[34];
    v21 = v0[27];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[27];
    if (v25 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[26];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[26];
    if (v32 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v114;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v114;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v118)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v114;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v118)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v114;
    (*v118)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v119 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[33];
  v42 = v121[32];
  v43 = v121[31];
  v44 = v121[25];
  v45 = v121[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v121 + 2));
  sub_228004954(v44, (v121 + 7));
  sub_228004954(v44, (v121 + 12));
  sub_228004954(v44, (v121 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v121[33];
  if (v49)
  {
    v51 = v121[28];
    v52 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v123 = v120;
    *v52 = 136316674;
    v54 = v121[5];
    v53 = v121[6];
    __swift_project_boxed_opaque_existential_1(v121 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    v58 = sub_227FCC340(v55, v57, &v123);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v121[10];
    v59 = v121[11];
    __swift_project_boxed_opaque_existential_1(v121 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    v64 = sub_227FCC340(v61, v63, &v123);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v121[15];
    v65 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
    v70 = sub_227FCC340(v67, v69, &v123);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v121[20];
    v71 = v121[21];
    __swift_project_boxed_opaque_existential_1(v121 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v121[28];
    if (v75 == 1)
    {
      sub_228059C78(v121[28], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v121[28];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    (*(v121[32] + 8))(v121[33], v121[31]);
    v84 = sub_227FCC340(v78, v77, &v123);

    *(v52 + 40) = v84;
    *(v52 + 48) = 2082;
    v121[22] = &type metadata for SKTextChunk;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBF0, &qword_22813DCC8);
    v85 = sub_2281392EC();
    v87 = sub_227FCC340(v85, v86, &v123);

    *(v52 + 50) = v87;
    *(v52 + 58) = 2082;
    v81 = v121;
    v124 = MEMORY[0x277D84FA0];
    v88 = sub_228046378(v114, &v124);
    v125 = 91;
    v126 = 0xE100000000000000;
    v121[23] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v89 = sub_22813925C();
    v91 = v90;

    MEMORY[0x22AAB1970](v89, v91);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v92 = v125;
    v93 = v126;

    v94 = sub_227FCC340(v92, v93, &v123);

    *(v52 + 60) = v94;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v120, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v121[32];
    v80 = v121[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
  }

  v95 = v81[33];
  v96 = v81[34];
  v97 = v81[29];
  v98 = v81[30];
  v100 = v81[27];
  v99 = v81[28];
  v122 = v81[26];
  v101 = swift_allocObject();
  *(v101 + 16) = 17;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059EA0);
  sub_227FDB3CC();
  swift_allocError();
  *v103 = 17;
  *(v103 + 8) = v102;
  swift_willThrow();

  v104 = v81[1];
LABEL_42:

  return v104();
}

uint64_t sub_22804DC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22813713C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[35] = v11;
  *v11 = v3;
  v11[1] = sub_22804DDBC;

  return sub_228055A34(a2, a3);
}

uint64_t sub_22804DDBC(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804DEBC, 0, 0);
}

uint64_t sub_22804DEBC()
{
  v127 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:
    v106 = v0[33];
    v105 = v0[34];
    v108 = v0[29];
    v107 = v0[30];
    v110 = v0[27];
    v109 = v0[28];
    v111 = v0[26];

    v104 = v0[1];
    goto LABEL_42;
  }

  v119 = *(v1 + 16);
  v114 = v0[36];
  if (!v119)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v117 = v0[32];
  v118 = (v117 + 8);
  v116 = v0 + 30;
  v113 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v117 + 16))(v0[34], v1 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v116;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v115 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v113;
      v1 = v114;
      v0 = v121;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v113;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v115 == v18)
    {

      v0 = v121;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v121;
      v1 = v114;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[34];
    v21 = v0[27];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[27];
    if (v25 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[26];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[26];
    if (v32 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v114;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v114;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v118)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v114;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v118)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v114;
    (*v118)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v119 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[33];
  v42 = v121[32];
  v43 = v121[31];
  v44 = v121[25];
  v45 = v121[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v121 + 2));
  sub_228004954(v44, (v121 + 7));
  sub_228004954(v44, (v121 + 12));
  sub_228004954(v44, (v121 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v121[33];
  if (v49)
  {
    v51 = v121[28];
    v52 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v123 = v120;
    *v52 = 136316674;
    v54 = v121[5];
    v53 = v121[6];
    __swift_project_boxed_opaque_existential_1(v121 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    v58 = sub_227FCC340(v55, v57, &v123);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v121[10];
    v59 = v121[11];
    __swift_project_boxed_opaque_existential_1(v121 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    v64 = sub_227FCC340(v61, v63, &v123);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v121[15];
    v65 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
    v70 = sub_227FCC340(v67, v69, &v123);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v121[20];
    v71 = v121[21];
    __swift_project_boxed_opaque_existential_1(v121 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v121[28];
    if (v75 == 1)
    {
      sub_228059C78(v121[28], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v121[28];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    (*(v121[32] + 8))(v121[33], v121[31]);
    v84 = sub_227FCC340(v78, v77, &v123);

    *(v52 + 40) = v84;
    *(v52 + 48) = 2082;
    v121[22] = type metadata accessor for SKNoteMessage();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBB0, &qword_22813DB78);
    v85 = sub_2281392EC();
    v87 = sub_227FCC340(v85, v86, &v123);

    *(v52 + 50) = v87;
    *(v52 + 58) = 2082;
    v81 = v121;
    v124 = MEMORY[0x277D84FA0];
    v88 = sub_228046378(v114, &v124);
    v125 = 91;
    v126 = 0xE100000000000000;
    v121[23] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v89 = sub_22813925C();
    v91 = v90;

    MEMORY[0x22AAB1970](v89, v91);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v92 = v125;
    v93 = v126;

    v94 = sub_227FCC340(v92, v93, &v123);

    *(v52 + 60) = v94;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v120, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v121[32];
    v80 = v121[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
  }

  v95 = v81[33];
  v96 = v81[34];
  v97 = v81[29];
  v98 = v81[30];
  v100 = v81[27];
  v99 = v81[28];
  v122 = v81[26];
  v101 = swift_allocObject();
  *(v101 + 16) = 17;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059C08);
  sub_227FDB3CC();
  swift_allocError();
  *v103 = 17;
  *(v103 + 8) = v102;
  swift_willThrow();

  v104 = v81[1];
LABEL_42:

  return v104();
}

uint64_t sub_22804EA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22813713C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[35] = v11;
  *v11 = v3;
  v11[1] = sub_22804EBD8;

  return sub_22805608C(a2, a3);
}

uint64_t sub_22804EBD8(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804ECD8, 0, 0);
}

uint64_t sub_22804ECD8()
{
  v127 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:
    v106 = v0[33];
    v105 = v0[34];
    v108 = v0[29];
    v107 = v0[30];
    v110 = v0[27];
    v109 = v0[28];
    v111 = v0[26];

    v104 = v0[1];
    goto LABEL_42;
  }

  v119 = *(v1 + 16);
  v114 = v0[36];
  if (!v119)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v117 = v0[32];
  v118 = (v117 + 8);
  v116 = v0 + 30;
  v113 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v117 + 16))(v0[34], v1 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v116;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v115 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v113;
      v1 = v114;
      v0 = v121;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v113;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v115 == v18)
    {

      v0 = v121;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v121;
      v1 = v114;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[34];
    v21 = v0[27];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[27];
    if (v25 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[26];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[26];
    if (v32 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v114;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v114;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v118)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v114;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v118)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v114;
    (*v118)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v119 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[33];
  v42 = v121[32];
  v43 = v121[31];
  v44 = v121[25];
  v45 = v121[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v121 + 2));
  sub_228004954(v44, (v121 + 7));
  sub_228004954(v44, (v121 + 12));
  sub_228004954(v44, (v121 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v121[33];
  if (v49)
  {
    v51 = v121[28];
    v52 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v123 = v120;
    *v52 = 136316674;
    v54 = v121[5];
    v53 = v121[6];
    __swift_project_boxed_opaque_existential_1(v121 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    v58 = sub_227FCC340(v55, v57, &v123);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v121[10];
    v59 = v121[11];
    __swift_project_boxed_opaque_existential_1(v121 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    v64 = sub_227FCC340(v61, v63, &v123);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v121[15];
    v65 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
    v70 = sub_227FCC340(v67, v69, &v123);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v121[20];
    v71 = v121[21];
    __swift_project_boxed_opaque_existential_1(v121 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v121[28];
    if (v75 == 1)
    {
      sub_228059C78(v121[28], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v121[28];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    (*(v121[32] + 8))(v121[33], v121[31]);
    v84 = sub_227FCC340(v78, v77, &v123);

    *(v52 + 40) = v84;
    *(v52 + 48) = 2082;
    v121[22] = type metadata accessor for SKTextMessage();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBC8, &qword_22813DC10);
    v85 = sub_2281392EC();
    v87 = sub_227FCC340(v85, v86, &v123);

    *(v52 + 50) = v87;
    *(v52 + 58) = 2082;
    v81 = v121;
    v124 = MEMORY[0x277D84FA0];
    v88 = sub_228046378(v114, &v124);
    v125 = 91;
    v126 = 0xE100000000000000;
    v121[23] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v89 = sub_22813925C();
    v91 = v90;

    MEMORY[0x22AAB1970](v89, v91);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v92 = v125;
    v93 = v126;

    v94 = sub_227FCC340(v92, v93, &v123);

    *(v52 + 60) = v94;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v120, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v121[32];
    v80 = v121[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
  }

  v95 = v81[33];
  v96 = v81[34];
  v97 = v81[29];
  v98 = v81[30];
  v100 = v81[27];
  v99 = v81[28];
  v122 = v81[26];
  v101 = swift_allocObject();
  *(v101 + 16) = 17;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E8C);
  sub_227FDB3CC();
  swift_allocError();
  *v103 = 17;
  *(v103 + 8) = v102;
  swift_willThrow();

  v104 = v81[1];
LABEL_42:

  return v104();
}

uint64_t sub_22804F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22813713C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[35] = v11;
  *v11 = v3;
  v11[1] = sub_22804F9F4;

  return sub_2280566E4(a2, a3);
}

uint64_t sub_22804F9F4(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804FAF4, 0, 0);
}

uint64_t sub_22804FAF4()
{
  v127 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:
    v106 = v0[33];
    v105 = v0[34];
    v108 = v0[29];
    v107 = v0[30];
    v110 = v0[27];
    v109 = v0[28];
    v111 = v0[26];

    v104 = v0[1];
    goto LABEL_42;
  }

  v119 = *(v1 + 16);
  v114 = v0[36];
  if (!v119)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v117 = v0[32];
  v118 = (v117 + 8);
  v116 = v0 + 30;
  v113 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v117 + 16))(v0[34], v1 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v116;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v115 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v113;
      v1 = v114;
      v0 = v121;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v113;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v115 == v18)
    {

      v0 = v121;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v121;
      v1 = v114;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[34];
    v21 = v0[27];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[27];
    if (v25 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[26];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[26];
    if (v32 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v114;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v114;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v118)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v114;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v118)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v114;
    (*v118)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v119 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[33];
  v42 = v121[32];
  v43 = v121[31];
  v44 = v121[25];
  v45 = v121[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v121 + 2));
  sub_228004954(v44, (v121 + 7));
  sub_228004954(v44, (v121 + 12));
  sub_228004954(v44, (v121 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v121[33];
  if (v49)
  {
    v51 = v121[28];
    v52 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v123 = v120;
    *v52 = 136316674;
    v54 = v121[5];
    v53 = v121[6];
    __swift_project_boxed_opaque_existential_1(v121 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    v58 = sub_227FCC340(v55, v57, &v123);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v121[10];
    v59 = v121[11];
    __swift_project_boxed_opaque_existential_1(v121 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    v64 = sub_227FCC340(v61, v63, &v123);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v121[15];
    v65 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
    v70 = sub_227FCC340(v67, v69, &v123);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v121[20];
    v71 = v121[21];
    __swift_project_boxed_opaque_existential_1(v121 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v121[28];
    if (v75 == 1)
    {
      sub_228059C78(v121[28], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v121[28];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    (*(v121[32] + 8))(v121[33], v121[31]);
    v84 = sub_227FCC340(v78, v77, &v123);

    *(v52 + 40) = v84;
    *(v52 + 48) = 2082;
    v121[22] = type metadata accessor for SKUserNotification();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBE0, &qword_22813DC88);
    v85 = sub_2281392EC();
    v87 = sub_227FCC340(v85, v86, &v123);

    *(v52 + 50) = v87;
    *(v52 + 58) = 2082;
    v81 = v121;
    v124 = MEMORY[0x277D84FA0];
    v88 = sub_228046378(v114, &v124);
    v125 = 91;
    v126 = 0xE100000000000000;
    v121[23] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v89 = sub_22813925C();
    v91 = v90;

    MEMORY[0x22AAB1970](v89, v91);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v92 = v125;
    v93 = v126;

    v94 = sub_227FCC340(v92, v93, &v123);

    *(v52 + 60) = v94;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v120, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v121[32];
    v80 = v121[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
  }

  v95 = v81[33];
  v96 = v81[34];
  v97 = v81[29];
  v98 = v81[30];
  v100 = v81[27];
  v99 = v81[28];
  v122 = v81[26];
  v101 = swift_allocObject();
  *(v101 + 16) = 17;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E98);
  sub_227FDB3CC();
  swift_allocError();
  *v103 = 17;
  *(v103 + 8) = v102;
  swift_willThrow();

  v104 = v81[1];
LABEL_42:

  return v104();
}

uint64_t sub_22805066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22813713C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[35] = v11;
  *v11 = v3;
  v11[1] = sub_228050810;

  return sub_228056D3C(a2, a3);
}

uint64_t sub_228050810(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_228050910, 0, 0);
}

uint64_t sub_228050910()
{
  v127 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:
    v106 = v0[33];
    v105 = v0[34];
    v108 = v0[29];
    v107 = v0[30];
    v110 = v0[27];
    v109 = v0[28];
    v111 = v0[26];

    v104 = v0[1];
    goto LABEL_42;
  }

  v119 = *(v1 + 16);
  v114 = v0[36];
  if (!v119)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v117 = v0[32];
  v118 = (v117 + 8);
  v116 = v0 + 30;
  v113 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v117 + 16))(v0[34], v1 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v116;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v115 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v113;
      v1 = v114;
      v0 = v121;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v113;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v115 == v18)
    {

      v0 = v121;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v121;
      v1 = v114;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[34];
    v21 = v0[27];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[27];
    if (v25 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[26];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[26];
    if (v32 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v114;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v114;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v118)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v114;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v118)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v114;
    (*v118)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v119 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[33];
  v42 = v121[32];
  v43 = v121[31];
  v44 = v121[25];
  v45 = v121[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v121 + 2));
  sub_228004954(v44, (v121 + 7));
  sub_228004954(v44, (v121 + 12));
  sub_228004954(v44, (v121 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v121[33];
  if (v49)
  {
    v51 = v121[28];
    v52 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v123 = v120;
    *v52 = 136316674;
    v54 = v121[5];
    v53 = v121[6];
    __swift_project_boxed_opaque_existential_1(v121 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    v58 = sub_227FCC340(v55, v57, &v123);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v121[10];
    v59 = v121[11];
    __swift_project_boxed_opaque_existential_1(v121 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    v64 = sub_227FCC340(v61, v63, &v123);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v121[15];
    v65 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
    v70 = sub_227FCC340(v67, v69, &v123);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v121[20];
    v71 = v121[21];
    __swift_project_boxed_opaque_existential_1(v121 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v121[28];
    if (v75 == 1)
    {
      sub_228059C78(v121[28], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v121[28];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    (*(v121[32] + 8))(v121[33], v121[31]);
    v84 = sub_227FCC340(v78, v77, &v123);

    *(v52 + 40) = v84;
    *(v52 + 48) = 2082;
    v121[22] = &type metadata for SKMailMessageThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBD0, &qword_22813DC38);
    v85 = sub_2281392EC();
    v87 = sub_227FCC340(v85, v86, &v123);

    *(v52 + 50) = v87;
    *(v52 + 58) = 2082;
    v81 = v121;
    v124 = MEMORY[0x277D84FA0];
    v88 = sub_228046378(v114, &v124);
    v125 = 91;
    v126 = 0xE100000000000000;
    v121[23] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v89 = sub_22813925C();
    v91 = v90;

    MEMORY[0x22AAB1970](v89, v91);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v92 = v125;
    v93 = v126;

    v94 = sub_227FCC340(v92, v93, &v123);

    *(v52 + 60) = v94;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v120, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v121[32];
    v80 = v121[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
  }

  v95 = v81[33];
  v96 = v81[34];
  v97 = v81[29];
  v98 = v81[30];
  v100 = v81[27];
  v99 = v81[28];
  v122 = v81[26];
  v101 = swift_allocObject();
  *(v101 + 16) = 17;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E90);
  sub_227FDB3CC();
  swift_allocError();
  *v103 = 17;
  *(v103 + 8) = v102;
  swift_willThrow();

  v104 = v81[1];
LABEL_42:

  return v104();
}

uint64_t sub_228051488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22813713C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[35] = v11;
  *v11 = v3;
  v11[1] = sub_22805162C;

  return sub_228057394(a2, a3);
}

uint64_t sub_22805162C(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22805172C, 0, 0);
}

uint64_t sub_22805172C()
{
  v127 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:
    v106 = v0[33];
    v105 = v0[34];
    v108 = v0[29];
    v107 = v0[30];
    v110 = v0[27];
    v109 = v0[28];
    v111 = v0[26];

    v104 = v0[1];
    goto LABEL_42;
  }

  v119 = *(v1 + 16);
  v114 = v0[36];
  if (!v119)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v117 = v0[32];
  v118 = (v117 + 8);
  v116 = v0 + 30;
  v113 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v117 + 16))(v0[34], v1 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v116;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v115 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v113;
      v1 = v114;
      v0 = v121;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v113;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v115 == v18)
    {

      v0 = v121;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v121;
      v1 = v114;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[34];
    v21 = v0[27];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[27];
    if (v25 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[26];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[26];
    if (v32 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v114;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v114;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v118)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v114;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v118)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v114;
    (*v118)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v119 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[33];
  v42 = v121[32];
  v43 = v121[31];
  v44 = v121[25];
  v45 = v121[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v121 + 2));
  sub_228004954(v44, (v121 + 7));
  sub_228004954(v44, (v121 + 12));
  sub_228004954(v44, (v121 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v121[33];
  if (v49)
  {
    v51 = v121[28];
    v52 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v123 = v120;
    *v52 = 136316674;
    v54 = v121[5];
    v53 = v121[6];
    __swift_project_boxed_opaque_existential_1(v121 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    v58 = sub_227FCC340(v55, v57, &v123);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v121[10];
    v59 = v121[11];
    __swift_project_boxed_opaque_existential_1(v121 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    v64 = sub_227FCC340(v61, v63, &v123);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v121[15];
    v65 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
    v70 = sub_227FCC340(v67, v69, &v123);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v121[20];
    v71 = v121[21];
    __swift_project_boxed_opaque_existential_1(v121 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v121[28];
    if (v75 == 1)
    {
      sub_228059C78(v121[28], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v121[28];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    (*(v121[32] + 8))(v121[33], v121[31]);
    v84 = sub_227FCC340(v78, v77, &v123);

    *(v52 + 40) = v84;
    *(v52 + 48) = 2082;
    v121[22] = &type metadata for SKTextMessageThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBC0, &qword_22813DBE8);
    v85 = sub_2281392EC();
    v87 = sub_227FCC340(v85, v86, &v123);

    *(v52 + 50) = v87;
    *(v52 + 58) = 2082;
    v81 = v121;
    v124 = MEMORY[0x277D84FA0];
    v88 = sub_228046378(v114, &v124);
    v125 = 91;
    v126 = 0xE100000000000000;
    v121[23] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v89 = sub_22813925C();
    v91 = v90;

    MEMORY[0x22AAB1970](v89, v91);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v92 = v125;
    v93 = v126;

    v94 = sub_227FCC340(v92, v93, &v123);

    *(v52 + 60) = v94;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v120, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v121[32];
    v80 = v121[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
  }

  v95 = v81[33];
  v96 = v81[34];
  v97 = v81[29];
  v98 = v81[30];
  v100 = v81[27];
  v99 = v81[28];
  v122 = v81[26];
  v101 = swift_allocObject();
  *(v101 + 16) = 17;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E88);
  sub_227FDB3CC();
  swift_allocError();
  *v103 = 17;
  *(v103 + 8) = v102;
  swift_willThrow();

  v104 = v81[1];
LABEL_42:

  return v104();
}

uint64_t sub_2280522A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22813713C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[35] = v11;
  *v11 = v3;
  v11[1] = sub_228052448;

  return sub_2280579EC(a2, a3);
}

uint64_t sub_228052448(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_228052548, 0, 0);
}

uint64_t sub_228052548()
{
  v127 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:
    v106 = v0[33];
    v105 = v0[34];
    v108 = v0[29];
    v107 = v0[30];
    v110 = v0[27];
    v109 = v0[28];
    v111 = v0[26];

    v104 = v0[1];
    goto LABEL_42;
  }

  v119 = *(v1 + 16);
  v114 = v0[36];
  if (!v119)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v117 = v0[32];
  v118 = (v117 + 8);
  v116 = v0 + 30;
  v113 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v117 + 16))(v0[34], v1 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v116;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v115 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v113;
      v1 = v114;
      v0 = v121;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v113;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v115 == v18)
    {

      v0 = v121;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v121;
      v1 = v114;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[34];
    v21 = v0[27];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[27];
    if (v25 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[26];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[26];
    if (v32 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v114;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v114;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v118)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v114;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v118)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v114;
    (*v118)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v119 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[33];
  v42 = v121[32];
  v43 = v121[31];
  v44 = v121[25];
  v45 = v121[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v121 + 2));
  sub_228004954(v44, (v121 + 7));
  sub_228004954(v44, (v121 + 12));
  sub_228004954(v44, (v121 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v121[33];
  if (v49)
  {
    v51 = v121[28];
    v52 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v123 = v120;
    *v52 = 136316674;
    v54 = v121[5];
    v53 = v121[6];
    __swift_project_boxed_opaque_existential_1(v121 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    v58 = sub_227FCC340(v55, v57, &v123);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v121[10];
    v59 = v121[11];
    __swift_project_boxed_opaque_existential_1(v121 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    v64 = sub_227FCC340(v61, v63, &v123);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v121[15];
    v65 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
    v70 = sub_227FCC340(v67, v69, &v123);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v121[20];
    v71 = v121[21];
    __swift_project_boxed_opaque_existential_1(v121 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v121[28];
    if (v75 == 1)
    {
      sub_228059C78(v121[28], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v121[28];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    (*(v121[32] + 8))(v121[33], v121[31]);
    v84 = sub_227FCC340(v78, v77, &v123);

    *(v52 + 40) = v84;
    *(v52 + 48) = 2082;
    v121[22] = &type metadata for SKUserNotificationThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBB8, &qword_22813DBC0);
    v85 = sub_2281392EC();
    v87 = sub_227FCC340(v85, v86, &v123);

    *(v52 + 50) = v87;
    *(v52 + 58) = 2082;
    v81 = v121;
    v124 = MEMORY[0x277D84FA0];
    v88 = sub_228046378(v114, &v124);
    v125 = 91;
    v126 = 0xE100000000000000;
    v121[23] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v89 = sub_22813925C();
    v91 = v90;

    MEMORY[0x22AAB1970](v89, v91);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v92 = v125;
    v93 = v126;

    v94 = sub_227FCC340(v92, v93, &v123);

    *(v52 + 60) = v94;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v120, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v121[32];
    v80 = v121[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
  }

  v95 = v81[33];
  v96 = v81[34];
  v97 = v81[29];
  v98 = v81[30];
  v100 = v81[27];
  v99 = v81[28];
  v122 = v81[26];
  v101 = swift_allocObject();
  *(v101 + 16) = 17;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E84);
  sub_227FDB3CC();
  swift_allocError();
  *v103 = 17;
  *(v103 + 8) = v102;
  swift_willThrow();

  v104 = v81[1];
LABEL_42:

  return v104();
}

uint64_t sub_2280530C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22813713C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[35] = v11;
  *v11 = v3;
  v11[1] = sub_228053264;

  return sub_228058044(a2, a3);
}

uint64_t sub_228053264(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_228053364, 0, 0);
}

uint64_t sub_228053364()
{
  v127 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:
    v106 = v0[33];
    v105 = v0[34];
    v108 = v0[29];
    v107 = v0[30];
    v110 = v0[27];
    v109 = v0[28];
    v111 = v0[26];

    v104 = v0[1];
    goto LABEL_42;
  }

  v119 = *(v1 + 16);
  v114 = v0[36];
  if (!v119)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v117 = v0[32];
  v118 = (v117 + 8);
  v116 = v0 + 30;
  v113 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v117 + 16))(v0[34], v1 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v116;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v115 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v113;
      v1 = v114;
      v0 = v121;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v113;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v115 == v18)
    {

      v0 = v121;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v121;
      v1 = v114;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[34];
    v21 = v0[27];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[27];
    if (v25 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[26];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[26];
    if (v32 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v114;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v114;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v118)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v114;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v118)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v114;
    (*v118)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v119 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[33];
  v42 = v121[32];
  v43 = v121[31];
  v44 = v121[25];
  v45 = v121[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v121 + 2));
  sub_228004954(v44, (v121 + 7));
  sub_228004954(v44, (v121 + 12));
  sub_228004954(v44, (v121 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v121[33];
  if (v49)
  {
    v51 = v121[28];
    v52 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v123 = v120;
    *v52 = 136316674;
    v54 = v121[5];
    v53 = v121[6];
    __swift_project_boxed_opaque_existential_1(v121 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    v58 = sub_227FCC340(v55, v57, &v123);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v121[10];
    v59 = v121[11];
    __swift_project_boxed_opaque_existential_1(v121 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    v64 = sub_227FCC340(v61, v63, &v123);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v121[15];
    v65 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
    v70 = sub_227FCC340(v67, v69, &v123);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v121[20];
    v71 = v121[21];
    __swift_project_boxed_opaque_existential_1(v121 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v121[28];
    if (v75 == 1)
    {
      sub_228059C78(v121[28], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v121[28];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    (*(v121[32] + 8))(v121[33], v121[31]);
    v84 = sub_227FCC340(v78, v77, &v123);

    *(v52 + 40) = v84;
    *(v52 + 48) = 2082;
    v121[22] = &type metadata for SKText;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBD8, &qword_22813DC60);
    v85 = sub_2281392EC();
    v87 = sub_227FCC340(v85, v86, &v123);

    *(v52 + 50) = v87;
    *(v52 + 58) = 2082;
    v81 = v121;
    v124 = MEMORY[0x277D84FA0];
    v88 = sub_228046378(v114, &v124);
    v125 = 91;
    v126 = 0xE100000000000000;
    v121[23] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v89 = sub_22813925C();
    v91 = v90;

    MEMORY[0x22AAB1970](v89, v91);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v92 = v125;
    v93 = v126;

    v94 = sub_227FCC340(v92, v93, &v123);

    *(v52 + 60) = v94;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v120, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v121[32];
    v80 = v121[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v121 + 12);
  }

  v95 = v81[33];
  v96 = v81[34];
  v97 = v81[29];
  v98 = v81[30];
  v100 = v81[27];
  v99 = v81[28];
  v122 = v81[26];
  v101 = swift_allocObject();
  *(v101 + 16) = 17;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E94);
  sub_227FDB3CC();
  swift_allocError();
  *v103 = 17;
  *(v103 + 8) = v102;
  swift_willThrow();

  v104 = v81[1];
LABEL_42:

  return v104();
}

uint64_t sub_228053EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[24] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v10 = sub_22813713C();
  v4[32] = v10;
  v11 = *(v10 - 8);
  v4[33] = v11;
  v12 = *(v11 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v13 = swift_task_alloc();
  v4[36] = v13;
  *v13 = v4;
  v13[1] = sub_22805409C;

  return sub_22805869C(a2, a3, a4);
}