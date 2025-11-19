uint64_t sub_2702C81B8()
{
  v1 = *v0;
  sub_2702DA74C();
  MEMORY[0x27439D1C0](v1);
  return sub_2702DA76C();
}

uint64_t sub_2702C822C()
{
  v1 = *v0;
  sub_2702DA74C();
  MEMORY[0x27439D1C0](v1);
  return sub_2702DA76C();
}

uint64_t sub_2702C8270()
{
  if (*v0)
  {
    result = 0x6F6C66664F746F6ELL;
  }

  else
  {
    result = 0x6564616F6C66666FLL;
  }

  *v0;
  return result;
}

unint64_t sub_2702C82B8(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v88 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD658, &qword_2702DAE40);
  v96 = *(v90 - 8);
  v7 = *(v96 + 8);
  v8 = MEMORY[0x28223BE20](v90);
  v91 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v89 = &v83[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v83[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD660, &qword_2702DAE48);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v83[-v19];
  v21 = type metadata accessor for PushHeuristics.COSEntry(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v83[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_2702DA4BC();
  v95 = *(v26 - 8);
  v27 = *(v95 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = *a1;
  v97 = &v83[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2702DA4AC();
  v30 = *v4;
  v31 = *(*v4 + 16);
  v92 = v29;
  if (v31 && (v32 = sub_2702CE94C(v29), (v33 & 1) != 0))
  {
    v34 = *(*(v30 + 56) + 8 * v32);
  }

  else
  {
    v34 = sub_2702D7B80(MEMORY[0x277D84F90]);
  }

  v93 = v18;
  v94 = v4;
  v35 = *(v34 + 16);
  v84 = a2;
  if (v35 && (v36 = sub_2702CE94C(a2 & 1), (v37 & 1) != 0))
  {
    sub_2702D2F24(*(v34 + 56) + *(v22 + 72) * v36, v20, type metadata accessor for PushHeuristics.COSEntry);

    v38 = *(v22 + 56);
    v86 = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v87 = v38;
    v38(v20, 0, 1, v21);
    sub_2702D2F8C(v20, v25, type metadata accessor for PushHeuristics.COSEntry);
  }

  else
  {

    v39 = *(v22 + 56);
    v86 = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v87 = v39;
    v39(v20, 1, 1, v21);
    v40 = *(v21 + 20);
    sub_2702DA4AC();
    v41 = v95;
    (*(v95 + 16))(v25, &v25[v40], v26);
    v42 = type metadata accessor for RunningAverageEMA();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    v45 = swift_allocObject();
    *(v45 + 16) = 0x4000000000000000;
    *(v45 + 32) = 0;
    *(v45 + 40) = 1;
    v46 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime;
    v47 = *(v41 + 56);
    v47(v45 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime, 1, 1, v26);
    *(v45 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_useEventRateNormalization) = 0;
    *(v45 + 24) = 0x3FF0000000000000;
    *(v45 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_timeUnit) = 0x40AC200000000000;
    *(v45 + 32) = 0;
    *(v45 + 40) = 1;
    v48 = v85;
    v47(v85, 1, 1, v26);
    swift_beginAccess();
    sub_2702D37E0(v48, v45 + v46);
    swift_endAccess();
    *&v25[*(v21 + 24)] = v45;
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      sub_2702D38B8(v20, &qword_2807CD660, &qword_2702DAE48);
    }
  }

  v49 = *&v25[*(v21 + 24)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
  v50 = *(v96 + 9);
  v51 = (v96[80] + 32) & ~v96[80];
  v52 = swift_allocObject() + v51;
  v85 = v21;
  v53 = v90;
  v54 = *(v90 + 48);
  v55 = v95;
  v56 = *(v95 + 16);
  v96 = v25;
  v56(v52, v97, v26);
  *(v52 + v54) = v88;
  v57 = *(v53 + 48);
  v58 = &qword_2807CD658;
  v59 = v89;
  sub_2702D3850(v52, v89, &qword_2807CD658, &qword_2702DAE40);
  swift_setDeallocating();
  sub_2702D38B8(v52, &qword_2807CD658, &qword_2702DAE40);
  swift_deallocClassInstance();
  v60 = *&v59[v57];
  v61 = *(v53 + 48);
  v62 = v91;
  (*(v55 + 32))(v91, v59, v26);
  *(v62 + v61) = v60;
  sub_2702D3CA0(v62, v60);
  sub_2702D38B8(v62, &qword_2807CD658, &qword_2702DAE40);
  v63 = v85;
  (*(v55 + 24))(&v96[*(v85 + 5)], v97, v26);
  v64 = v93;
  sub_2702D2F24(v96, v93, type metadata accessor for PushHeuristics.COSEntry);
  v87(v64, 0, 1, v63);
  v65 = v94;
  v66 = *v94;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v65;
  v68 = v98;
  v69 = v92;
  v70 = sub_2702CE94C(v92);
  v72 = v68[2];
  v73 = (v71 & 1) == 0;
  v74 = __OFADD__(v72, v73);
  v75 = v72 + v73;
  if (v74)
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v63) = v71;
  if (v68[3] < v75)
  {
    sub_2702CF034(v75, isUniquelyReferenced_nonNull_native, &qword_2807CD670, &unk_2702DB200);
    v68 = v98;
    v70 = sub_2702CE94C(v69);
    LOBYTE(v61) = v84;
    v58 = v95;
    if ((v63 & 1) == (v76 & 1))
    {
      goto LABEL_15;
    }

    v70 = sub_2702DA72C();
    __break(1u);
  }

  LOBYTE(v61) = v84;
  v58 = v95;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v82 = v70;
    sub_2702D09B4(&qword_2807CD670, &unk_2702DB200);
    v70 = v82;
    v68 = v98;
    *v65 = v98;
    if (v63)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_15:
  *v65 = v68;
  if (v63)
  {
LABEL_18:
    v81 = v68[7] + 8 * v70;
    sub_2702C8AC4(v64, v61 & 1);
    (v58[1])(v97, v26);
    return sub_2702D2FF4(v96, type metadata accessor for PushHeuristics.COSEntry);
  }

LABEL_16:
  v77 = v70;
  result = sub_2702D7B80(MEMORY[0x277D84F90]);
  v68[(v77 >> 6) + 8] |= 1 << v77;
  *(v68[6] + v77) = v69;
  *(v68[7] + 8 * v77) = result;
  v79 = v68[2];
  v74 = __OFADD__(v79, 1);
  v80 = v79 + 1;
  if (!v74)
  {
    v70 = v77;
    v68[2] = v80;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_2702C8AC4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD660, &qword_2702DAE48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v24 - v7;
  v9 = type metadata accessor for PushHeuristics.COSEntry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2702D38B8(a1, &qword_2807CD660, &qword_2702DAE48);
    v14 = *v2;
    v15 = sub_2702CE94C(a2 & 1);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2702D0B00(type metadata accessor for PushHeuristics.COSEntry, &qword_2807CD678, &qword_2702DAE60, type metadata accessor for PushHeuristics.COSEntry);
        v20 = v25;
      }

      sub_2702D2F8C(*(v20 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for PushHeuristics.COSEntry);
      sub_2702CFEC4(v17, v20, type metadata accessor for PushHeuristics.COSEntry);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2702D38B8(v8, &qword_2807CD660, &qword_2702DAE48);
  }

  else
  {
    sub_2702D2F8C(a1, v13, type metadata accessor for PushHeuristics.COSEntry);
    v21 = *v2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    result = sub_2702D009C(v13, a2 & 1, v22);
    *v2 = v25;
  }

  return result;
}

uint64_t sub_2702C8D64(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD638, &qword_2702DAE20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2702D38B8(a1, &qword_2807CD638, &qword_2702DAE20);
    v15 = *v2;
    v16 = sub_2702CE94C(a2 & 1);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2702D0B00(type metadata accessor for PushHeuristics.DisconnectionInfo, &qword_2807CD688, &qword_2702DAE70, type metadata accessor for PushHeuristics.DisconnectionInfo);
        v21 = v26;
      }

      sub_2702D2F8C(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for PushHeuristics.DisconnectionInfo);
      sub_2702CFEC4(v18, v21, type metadata accessor for PushHeuristics.DisconnectionInfo);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2702D38B8(v9, &qword_2807CD638, &qword_2702DAE20);
  }

  else
  {
    sub_2702D2F8C(a1, v14, type metadata accessor for PushHeuristics.DisconnectionInfo);
    v22 = *v2;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;
    result = sub_2702D0524(v14, a2 & 1, v23);
    *v2 = v26;
  }

  return result;
}

uint64_t sub_2702C9004(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_2702DA4BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2702D38B8(a1, &qword_2807CD5C0, &unk_2702DACB0);
    v15 = *v2;
    v16 = sub_2702CE94C(a2 & 1);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2702D0E88();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_2702CFEC4(v18, v21, MEMORY[0x277CC9578]);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2702D38B8(v9, &qword_2807CD5C0, &unk_2702DACB0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v2;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;
    result = sub_2702D06F0(v14, a2 & 1, v23);
    *v2 = v26;
  }

  return result;
}

unint64_t sub_2702C9268(char *a1)
{
  v2 = v1;
  v3 = *v1;
  result = sub_2702CE94C(*a1);
  if (v5)
  {
    v6 = result;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2702D0858();
      v9 = v11;
    }

    v10 = *(*(v9 + 56) + 8 * v6);

    result = sub_2702CFD30(v6, v9);
    *v2 = v9;
  }

  return result;
}

uint64_t sub_2702C92EC()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v15 - v2;
  v4 = sub_2702DA4BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 123;
  v18 = 0xE100000000000000;
  v9 = v0 + *(type metadata accessor for PushHeuristics.DisconnectionInfo(0) + 20);
  v10 = *(v9 + 8);
  if (v10 != 255)
  {
    v11 = *v9;
    sub_2702CE4D8(*v9, *(v9 + 8));
    sub_2702CE4EC(v11, v10);
    v12 = sub_2702C9560(v11, v10);
    MEMORY[0x27439D000](v12);

    sub_2702CE4FC(v11, v10);
  }

  sub_2702D3850(v0, v3, &qword_2807CD5C0, &unk_2702DACB0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2702D38B8(v3, &qword_2807CD5C0, &unk_2702DACB0);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v15 = 32;
    v16 = 0xE100000000000000;
    sub_2702CE480();
    v13 = sub_2702DA6FC();
    MEMORY[0x27439D000](v13);

    MEMORY[0x27439D000](v15, v16);

    (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x27439D000](125, 0xE100000000000000);
  return v17;
}

uint64_t sub_2702C9560(void *a1, char a2)
{
  if (!a2)
  {
    v5 = 0;
    sub_2702DA68C();
    MEMORY[0x27439D000](0xD000000000000013, 0x80000002702DBB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5F8, &qword_2702DADE0);
    sub_2702DA6AC();
    sub_2702CE510(a1, 0);
    return v5;
  }

  if (a2 == 1)
  {
    sub_2702DA68C();

    v5 = 0xD000000000000015;
    v3 = sub_2702DA6FC();
    MEMORY[0x27439D000](v3);

    return v5;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_2702C96A8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_2702D7D58(MEMORY[0x277D84F90]);
  *(v1 + 24) = sub_2702D7D6C(v2);
  *(v1 + 40) = 1;
  sub_2702DA4DC();
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = sub_2702DA4CC();
  v4 = sub_2702DA5CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2702D949C(0x292874696E69, 0xE600000000000000, &v16);
    _os_log_impl(&dword_2702C7000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x27439D570](v6, -1, -1);
    MEMORY[0x27439D570](v5, -1, -1);
  }

  v7 = MEMORY[0x277D84F90];
  *(v1 + 32) = sub_2702D7E7C(MEMORY[0x277D84F90]);
  *(v1 + 41) = *(v1 + 40);
  v8 = sub_2702D8054(v7);
  v9 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory) = v8;
  swift_beginAccess();
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + v9);
  *(v1 + v9) = 0x8000000000000000;
  sub_2702D03B4(v7, 0, isUniquelyReferenced_nonNull_native);
  *(v1 + v9) = v14;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v1 + v9);
  *(v1 + v9) = 0x8000000000000000;
  sub_2702D03B4(v7, 1, v12);
  *(v1 + v9) = v15;
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_excessiveFailuresTimestamp) = sub_2702D8170(v7);
  return v1;
}

uint64_t sub_2702C98EC(unsigned __int8 *a1)
{
  v2 = v1;
  v86 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD600, &qword_2702DADE8);
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v72 = (&v67 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD608, &unk_2702DADF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v67 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v67 - v16;
  v18 = sub_2702DA4BC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v82 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v71 = *a1;
  v25 = v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 8);
    ObjectType = swift_getObjectType();
    (*(v26 + 8))(ObjectType, v26);
    swift_unknownObjectRelease();
    (*(v19 + 56))(v17, 0, 1, v18);
    (*(v19 + 32))(v24, v17, v18);
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    sub_2702DA4AC();
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_2702D38B8(v17, &qword_2807CD5C0, &unk_2702DACB0);
    }
  }

  v28 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  swift_beginAccess();
  if (!*(*(v2 + v28) + 16))
  {
    goto LABEL_39;
  }

  sub_2702CE94C(v71);
  if ((v29 & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = *(v2 + v28);
  if (!*(v30 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v31 = sub_2702CE94C(v71);
  if ((v32 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v69 = v28;
  v80 = v18;
  v81 = v24;
  v68 = v2;
  v33 = *(*(v30 + 56) + 8 * v31);
  v28 = *(v33 + 16);
  v77 = (v79 + 48);
  v78 = (v79 + 56);
  v76 = (v19 + 16);
  v70 = v19;
  v74 = "hresholdOverMonitoredWindow(_:)";
  v75 = (v19 + 8);
  v73 = *MEMORY[0x277CBF028];

  v34 = 0;
  v24 = -1;
  v18 = v82;
  do
  {
    v79 = v24;
    if (v34 != v28)
    {
      if (v34 < *(v33 + 16))
      {
        v37 = *(type metadata accessor for PushTelemetry(0) - 8);
        v38 = v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34;
        v39 = *(v4 + 48);
        v40 = v72;
        *v72 = v34;
        sub_2702D2F24(v38, v40 + v39, type metadata accessor for PushTelemetry);
        sub_2702CE9B4(v40, v11, &qword_2807CD600, &qword_2702DADE8);
        v36 = 0;
        ++v34;
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_42;
    }

    v36 = 1;
    v34 = v28;
LABEL_16:
    (*v78)(v11, v36, 1, v4);
    sub_2702CE9B4(v11, v13, &qword_2807CD608, &unk_2702DADF0);
    if ((*v77)(v13, 1, v4) == 1)
    {
      break;
    }

    v2 = v33;
    v41 = v11;
    v24 = *v13;
    v42 = v4;
    v43 = *(v4 + 48);
    v44 = v80;
    (*v76)(v18, v13 + v43, v80);
    sub_2702D2FF4(v13 + v43, type metadata accessor for PushTelemetry);
    sub_2702DA47C();
    v46 = v45;
    (*v75)(v18, v44);
    keyExistsAndHasValidFormat[0] = 0;
    v47 = sub_2702DA55C();
    AppIntegerValue = CFPreferencesGetAppIntegerValue(v47, v73, keyExistsAndHasValidFormat);

    v35 = keyExistsAndHasValidFormat[0] ? AppIntegerValue : 1800.0;
    v4 = v42;
    v11 = v41;
    v33 = v2;
  }

  while (v46 > v35);

  v4 = v68;
  v18 = v80;
  v24 = v81;
  v19 = v70;
  v49 = v69;
  v2 = v79;
  if (v79 < 0)
  {
    goto LABEL_39;
  }

  swift_beginAccess();
  v50 = *(v4 + v49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = *(v4 + v49);
  v52 = v83;
  *(v4 + v49) = 0x8000000000000000;
  v28 = sub_2702CE94C(v71);
  v54 = *(v52 + 16);
  v55 = (v53 & 1) == 0;
  v56 = v54 + v55;
  if (__OFADD__(v54, v55))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LOBYTE(v24) = v53;
  if (*(v52 + 24) < v56)
  {
    sub_2702CF034(v56, isUniquelyReferenced_nonNull_native, &qword_2807CD610, &qword_2702DB1F0);
    v57 = sub_2702CE94C(v71);
    if ((v24 & 1) != (v58 & 1))
    {
      result = sub_2702DA72C();
      __break(1u);
      return result;
    }

    v28 = v57;
    if (v24)
    {
      goto LABEL_27;
    }

LABEL_49:
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_48;
  }

  if ((v53 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_27:
  while (2)
  {
    v24 = v83;
    v59 = *(*(v83 + 56) + 8 * v28);
    v84 = v59;
    v60 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v61 = v59[2];
    if (v61 < v60)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (__OFSUB__(0, v60))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      sub_2702D09B4(&qword_2807CD610, &qword_2702DB1F0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v62 = v61 - v60;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  if (v63 && v62 <= v59[3] >> 1)
  {
    sub_2702D2DB4(0, v60, 0);
    goto LABEL_37;
  }

  if (v61 <= v62)
  {
    v64 = v61 - v60;
  }

  else
  {
    v64 = v61;
  }

  v59 = sub_2702CE520(v63, v64, 1, v59);
  v84 = v59;
  sub_2702D2DB4(0, v60, 0);
  if (v59)
  {
LABEL_37:
    *(*(v24 + 56) + 8 * v28) = v59;
  }

  else
  {
    sub_2702CFD30(v28, v24);
  }

  v19 = v70;
  *(v4 + v69) = v24;
  swift_endAccess();
  v24 = v81;
LABEL_39:
  result = (*(v19 + 8))(v24, v18);
  v66 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2702CA148(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PushTelemetry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v31[0] = *a1;
  sub_2702C98EC(v31);
  v12 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  result = swift_beginAccess();
  if (!*(*(v3 + v12) + 16))
  {
    return result;
  }

  result = sub_2702CE94C(v11);
  if ((v14 & 1) == 0)
  {
    return result;
  }

  sub_2702D2F24(a2, v10, type metadata accessor for PushTelemetry);
  swift_beginAccess();
  v15 = *(v3 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v3 + v12);
  v17 = v30;
  *(v3 + v12) = 0x8000000000000000;
  v19 = sub_2702CE94C(v11);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
  }

  else
  {
    v23 = v18;
    if (v17[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_2702D09B4(&qword_2807CD610, &qword_2702DB1F0);
        if ((v23 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_2702CF034(v22, isUniquelyReferenced_nonNull_native, &qword_2807CD610, &qword_2702DB1F0);
      v24 = sub_2702CE94C(v11);
      if ((v23 & 1) != (v25 & 1))
      {
LABEL_19:
        result = sub_2702DA72C();
        __break(1u);
        return result;
      }

      v19 = v24;
      if ((v23 & 1) == 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    v17 = *(v30[7] + 8 * v19);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }
  }

  v17 = sub_2702CE520(0, v17[2] + 1, 1, v17);
LABEL_11:
  v27 = v17[2];
  v26 = v17[3];
  if (v27 >= v26 >> 1)
  {
    v17 = sub_2702CE520(v26 > 1, v27 + 1, 1, v17);
  }

  v17[2] = v27 + 1;
  sub_2702D2F8C(v10, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, type metadata accessor for PushTelemetry);
  v28 = v30;
  *(v30[7] + 8 * v19) = v17;
  *(v3 + v12) = v28;
  return swift_endAccess();
}

BOOL sub_2702CA408(unsigned __int8 *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v21[0] = *a1;
  sub_2702C98EC(v21);
  v3 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  swift_beginAccess();
  if (!*(*(v1 + v3) + 16))
  {
    goto LABEL_8;
  }

  sub_2702CE94C(v2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(v1 + v3);
  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v6 = sub_2702CE94C(v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = *(*(*(v5 + 56) + 8 * v6) + 16);
  keyExistsAndHasValidFormat[0] = 0;
  v9 = sub_2702DA55C();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v9, *MEMORY[0x277CBF028], keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat[0])
  {
    if ((AppIntegerValue & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_8:
      result = 0;
      goto LABEL_19;
    }
  }

  else
  {
    AppIntegerValue = 4;
  }

  v12 = sub_2702DA4CC();
  v13 = sub_2702DA5DC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *keyExistsAndHasValidFormat = v15;
    *v14 = 136315906;
    if (v2)
    {
      v16 = 0x72666E4969666977;
    }

    else
    {
      v16 = 0x72616C756C6C6563;
    }

    if (v2)
    {
      v17 = 0xE900000000000061;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    v18 = sub_2702D949C(v16, v17, keyExistsAndHasValidFormat);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2702D949C(0xD00000000000002FLL, 0x80000002702DBB60, keyExistsAndHasValidFormat);
    *(v14 + 22) = 2048;
    *(v14 + 24) = v8;
    *(v14 + 32) = 2048;
    *(v14 + 34) = AppIntegerValue;
    _os_log_impl(&dword_2702C7000, v12, v13, "interface:%s %s failureCount:%ld threshold:%lu", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x27439D570](v15, -1, -1);
    MEMORY[0x27439D570](v14, -1, -1);
  }

  result = v8 >= AppIntegerValue;
LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2702CA6A4(char *a1)
{
  v44 = type metadata accessor for PushTelemetry(0);
  v42 = *(v44 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD600, &qword_2702DADE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = (&v41 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD608, &unk_2702DADF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v41 - v15);
  v17 = *a1;
  v52 = 0;
  v53 = 0xE000000000000000;
  v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v19 = sub_2702DA55C();
  v47 = v18;
  [v18 setDateFormat_];

  v20 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  result = swift_beginAccess();
  v22 = *(v1 + v20);
  if (!*(v22 + 16))
  {
    goto LABEL_16;
  }

  result = sub_2702CE94C(v17);
  if (v23)
  {
    v24 = *(*(v22 + 56) + 8 * result);
    v25 = *(v24 + 16);
    v45 = (v7 + 48);
    v46 = (v7 + 56);
    v43 = v24;

    v26 = 0;
    while (1)
    {
      if (v26 == v25)
      {
        v35 = 1;
        v26 = v25;
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          break;
        }

        if (v26 >= *(v43 + 16))
        {
          goto LABEL_15;
        }

        v36 = v41;
        v37 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v26;
        v38 = *(v6 + 48);
        *v41 = v26;
        sub_2702D2F24(v37, v36 + v38, type metadata accessor for PushTelemetry);
        sub_2702CE9B4(v36, v14, &qword_2807CD600, &qword_2702DADE8);
        v35 = 0;
        ++v26;
      }

      (*v46)(v14, v35, 1, v6);
      sub_2702CE9B4(v14, v16, &qword_2807CD608, &unk_2702DADF0);
      if ((*v45)(v16, 1, v6) == 1)
      {

        return v52;
      }

      v39 = v14;
      v40 = *v16;
      sub_2702D2F8C(v16 + *(v6 + 48), v5, type metadata accessor for PushTelemetry);
      if (v40 >= 1)
      {
        MEMORY[0x27439D000](8236, 0xE200000000000000);
      }

      v27 = sub_2702DA48C();
      v28 = [v47 stringFromDate_];

      v29 = sub_2702DA56C();
      v31 = v30;

      v32 = &v5[*(v44 + 20)];
      v33 = *v32;
      LOBYTE(v32) = v32[8];
      v48 = v33;
      v49 = v32;
      v50 = PushTelemetryEvent.description.getter();
      v51 = v34;
      MEMORY[0x27439D000](0x2074612820, 0xE500000000000000);
      MEMORY[0x27439D000](v29, v31);

      MEMORY[0x27439D000](41, 0xE100000000000000);
      MEMORY[0x27439D000](v50, v51);

      result = sub_2702D2FF4(v5, type metadata accessor for PushTelemetry);
      v14 = v39;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2702CAB50(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD638, &qword_2702DAE20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v141 = v137 - v8;
  v140 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v9 = *(v140 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v140);
  v139 = v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for PushTelemetry(0);
  v154 = *(v157 - 8);
  v12 = *(v154 + 64);
  v13 = MEMORY[0x28223BE20](v157);
  v137[5] = v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v137 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v137[6] = v137 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v137 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v137 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v137 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v155 = v137 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = v137 - v31;
  v156 = *a1;
  v161 = a2;

  sub_2702D10F4(&v161);
  v33 = v161;
  v153 = v161[2];
  if (v153)
  {
    v148 = 0;
    v137[2] = v28;
    v137[4] = v25;
    v137[3] = v22;
    v137[1] = v17;
    v149 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_log;
    v143 = *(v154 + 80);
    v142 = (v143 + 32) & ~v143;
    v151 = v161 + v142;
    v34 = swift_beginAccess();
    v36 = 0;
    v37 = 0xE900000000000061;
    v38 = v156;
    if (v156)
    {
      v39 = 0x72666E4969666977;
    }

    else
    {
      v39 = 0x72616C756C6C6563;
    }

    if (!v156)
    {
      v37 = 0xE800000000000000;
    }

    v146 = v39;
    v147 = v37;
    v138 = (v9 + 56);
    *&v35 = 136315394;
    v145 = v35;
    v150 = v3;
    v40 = v155;
    v144 = v32;
    v152 = v33;
    while (1)
    {
      if (v36 >= v33[2])
      {
        __break(1u);

        __break(1u);
        return result;
      }

      sub_2702D2F24(&v151[*(v154 + 72) * v36], v32, type metadata accessor for PushTelemetry);
      if (*(*(v3 + 24) + 16))
      {
        sub_2702CE94C(v38);
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      v43 = &v32[*(v157 + 20)];
      if ((v43[8] & 0xC0) != 0x80)
      {
        sub_2702D2F24(v32, v40, type metadata accessor for PushTelemetry);
        v44 = sub_2702DA4CC();
        v45 = sub_2702DA5FC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v160 = v47;
          *v46 = v145;
          v48 = sub_2702D949C(v146, v147, &v160);

          *(v46 + 4) = v48;
          *(v46 + 12) = 2080;
          v49 = v155 + *(v157 + 20);
          v158 = *v49;
          v159 = *(v49 + 8);
          sub_2702D3748(v158, v159);
          v50 = PushTelemetryEvent.description.getter();
          v52 = v51;
          sub_2702D3768(v158, v159);
          sub_2702D2FF4(v155, type metadata accessor for PushTelemetry);
          v53 = sub_2702D949C(v50, v52, &v160);
          v40 = v155;

          *(v46 + 14) = v53;
          _os_log_impl(&dword_2702C7000, v44, v45, "processing interface=%s %s", v46, 0x16u);
          swift_arrayDestroy();
          v54 = v47;
          v32 = v144;
          MEMORY[0x27439D570](v54, -1, -1);
          v55 = v46;
          v3 = v150;
          MEMORY[0x27439D570](v55, -1, -1);
        }

        else
        {

          sub_2702D2FF4(v40, type metadata accessor for PushTelemetry);
        }
      }

      v56 = *v43;
      v57 = v43[8];
      v58 = v57 >> 5;
      if (v57 >> 5 > 2)
      {
        if (v58 - 4 >= 2)
        {
          if (v58 != 3)
          {
            v38 = v156;
            sub_2702CC0A4(1, v3, v156);
            v33 = v152;
            LOBYTE(v158) = v38;
            sub_2702CBCAC(&v158, v3);
            if (v56 | v57 ^ 0xC0)
            {
              *(v3 + 41) = 1;
            }

            else
            {
              *(v3 + 41) = 0;
            }

            LOBYTE(v158) = v38;
            v101 = type metadata accessor for PushTelemetryHandler();
            v102 = *(v101 + 48);
            v103 = *(v101 + 52);
            swift_allocObject();
            v104 = sub_2702D669C(&v158);
            swift_beginAccess();

            v105 = *(v3 + 24);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v160 = *(v3 + 24);
            *(v3 + 24) = 0x8000000000000000;
            sub_2702D0268(v104, v38, isUniquelyReferenced_nonNull_native);
            *(v3 + 24) = v160;
            swift_endAccess();

            v40 = v155;
            goto LABEL_10;
          }

          if ((v42 & 1) == 0)
          {

            v108 = v32;
            v109 = &v161;
LABEL_75:
            v112 = *(v109 - 32);
            sub_2702D2F24(v108, v112, type metadata accessor for PushTelemetry);

            v113 = sub_2702DA4CC();
            v114 = sub_2702DA5EC();

            if (!os_log_type_enabled(v113, v114))
            {
              goto LABEL_93;
            }

            v115 = swift_slowAlloc();
            v116 = v3;
            v117 = swift_slowAlloc();
            v160 = v117;
            *v115 = 136315650;
            v118 = sub_2702D949C(v146, v147, &v160);

            *(v115 + 4) = v118;
            *(v115 + 12) = 2080;
            if (*(v116 + 41))
            {
              v119 = 0x6F6C66664F746F6ELL;
            }

            else
            {
              v119 = 0x6564616F6C66666FLL;
            }

            if (*(v116 + 41))
            {
              v120 = 0xEC00000064656461;
            }

            else
            {
              v120 = 0xE900000000000064;
            }

            v121 = sub_2702D949C(v119, v120, &v160);

            *(v115 + 14) = v121;
            *(v115 + 22) = 2080;
            v122 = v112 + *(v157 + 20);
            v158 = *v122;
            v159 = *(v122 + 8);
            sub_2702D3748(v158, v159);
            v123 = PushTelemetryEvent.description.getter();
            v125 = v124;
            sub_2702D3768(v158, v159);
            sub_2702D2FF4(v112, type metadata accessor for PushTelemetry);
            v126 = sub_2702D949C(v123, v125, &v160);

            *(v115 + 24) = v126;
            _os_log_impl(&dword_2702C7000, v113, v114, "Telemetry handler does not exist for interface %s in %s state, discarding event: %s", v115, 0x20u);
LABEL_92:
            swift_arrayDestroy();
            MEMORY[0x27439D570](v117, -1, -1);
            MEMORY[0x27439D570](v115, -1, -1);

            return sub_2702D2FF4(v32, type metadata accessor for PushTelemetry);
          }

          v38 = v156;
          if (*(v3 + 41) == 1)
          {

            v110 = v32;
            v111 = &v165;
LABEL_84:
            v112 = *(v111 - 32);
            sub_2702D2F24(v110, v112, type metadata accessor for PushTelemetry);

            v113 = sub_2702DA4CC();
            v127 = sub_2702DA5EC();

            if (os_log_type_enabled(v113, v127))
            {
              v115 = swift_slowAlloc();
              v128 = v3;
              v117 = swift_slowAlloc();
              v160 = v117;
              *v115 = v145;
              v129 = v112 + *(v157 + 20);
              v158 = *v129;
              v159 = *(v129 + 8);
              sub_2702D3748(v158, v159);
              v130 = PushTelemetryEvent.description.getter();
              v132 = v131;
              sub_2702D3768(v158, v159);
              sub_2702D2FF4(v112, type metadata accessor for PushTelemetry);
              v133 = sub_2702D949C(v130, v132, &v160);

              *(v115 + 4) = v133;
              *(v115 + 12) = 2080;
              if (*(v128 + 41))
              {
                v134 = 0x6F6C66664F746F6ELL;
              }

              else
              {
                v134 = 0x6564616F6C66666FLL;
              }

              if (*(v128 + 41))
              {
                v135 = 0xEC00000064656461;
              }

              else
              {
                v135 = 0xE900000000000064;
              }

              v136 = sub_2702D949C(v134, v135, &v160);

              *(v115 + 14) = v136;
              _os_log_impl(&dword_2702C7000, v113, v127, "received %s in %s state, discarding event", v115, 0x16u);
              goto LABEL_92;
            }

LABEL_93:

            sub_2702D2FF4(v112, type metadata accessor for PushTelemetry);
            return sub_2702D2FF4(v32, type metadata accessor for PushTelemetry);
          }

          v72 = *(v3 + 24);
          if (*(v72 + 16))
          {
            goto LABEL_48;
          }

          goto LABEL_9;
        }

        if ((v42 & 1) == 0)
        {

          v108 = v32;
          v109 = &v164;
          goto LABEL_75;
        }
      }

      else
      {
        if (!v58)
        {
          if ((v42 & 1) == 0)
          {

            v108 = v32;
            v109 = &v162;
            goto LABEL_75;
          }

          v38 = v156;
          if ((*(v3 + 41) & 1) == 0)
          {
            LOBYTE(v158) = v156;
            sub_2702CA148(&v158, v32);
          }

          v73 = *(v3 + 24);
          if (*(v73 + 16))
          {
            v74 = sub_2702CE94C(v38);
            if (v75)
            {
              v76 = *(*(v73 + 56) + 8 * v74);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD618, &qword_2702DAE00);
              v77 = v142;
              v78 = swift_allocObject();
              sub_2702D2F24(v32, v78 + v77, type metadata accessor for PushTelemetry);

              v79 = v148;
              sub_2702D6DF0(v78 + v77, v76);
              v148 = v79;
              swift_setDeallocating();
              sub_2702D2FF4(v78 + v77, type metadata accessor for PushTelemetry);
              swift_deallocClassInstance();
              v40 = v155;
            }
          }

          sub_2702CC310(v3, v38);
          *(v3 + 41) = *(v3 + 40);
          goto LABEL_9;
        }

        if (v58 == 1)
        {
          if (v42)
          {
            v59 = v156;
            if (*(*(v150 + 24) + 16) && (sub_2702CE94C(v156), (v60 & 1) != 0))
            {
              LOBYTE(v160) = v59;
              v61 = v150;
              v62 = *(v150 + 41);
              swift_beginAccess();
              sub_2702CE4EC(v56, v57 & 0x1F);
              sub_2702C82B8(&v160, v62, 0);
              swift_endAccess();
              swift_beginAccess();
              v63 = *(v61 + 24);
              v64 = sub_2702CE94C(v59);
              if (v65)
              {
                v66 = v64;
                v67 = v150;
                v68 = *(v150 + 24);
                v69 = swift_isUniquelyReferenced_nonNull_native();
                v70 = *(v67 + 24);
                v160 = v70;
                *(v67 + 24) = 0x8000000000000000;
                if (!v69)
                {
                  sub_2702D0858();
                  v70 = v160;
                }

                v71 = *(*(v70 + 56) + 8 * v66);

                sub_2702CFD30(v66, v70);
                *(v67 + 24) = v70;
              }

              swift_endAccess();
              v40 = v155;
LABEL_54:
              v59 = v156;
            }

            else
            {
              sub_2702CE4EC(v56, v57 & 0x1F);
            }

            v86 = v150;
            if ((*(v150 + 41) & 1) == 0)
            {
              v87 = sub_2702DA4BC();
              v88 = *(v87 - 8);
              v89 = v139;
              (*(v88 + 16))(v139, v32, v87);
              (*(v88 + 56))(v89, 0, 1, v87);
              v90 = v140;
              v91 = v89 + *(v140 + 20);
              *v91 = v56;
              *(v91 + 8) = v57 & 0x1F;
              v92 = v141;
              sub_2702D2F24(v89, v141, type metadata accessor for PushHeuristics.DisconnectionInfo);
              (*v138)(v92, 0, 1, v90);
              swift_beginAccess();
              sub_2702CE4EC(v56, v57 & 0x1F);
              sub_2702C8D64(v92, v59);
              swift_endAccess();
              v158 = v56;
              v159 = v57 & 0x1F;
              if (sub_2702D3054(&v158))
              {
                LOBYTE(v158) = v59;
                sub_2702CA148(&v158, v32);
              }

              sub_2702D2FF4(v89, type metadata accessor for PushHeuristics.DisconnectionInfo);
              v40 = v155;
            }

            swift_beginAccess();
            v93 = *(v86 + 24);
            v94 = sub_2702CE94C(v59);
            v3 = v86;
            v33 = v152;
            if (v95)
            {
              v96 = v94;
              v97 = *(v3 + 24);
              v98 = swift_isUniquelyReferenced_nonNull_native();
              v99 = *(v3 + 24);
              v160 = v99;
              *(v3 + 24) = 0x8000000000000000;
              if (!v98)
              {
                sub_2702D0858();
                v99 = v160;
              }

              v100 = *(*(v99 + 56) + 8 * v96);

              sub_2702CFD30(v96, v99);
              *(v3 + 24) = v99;
            }

            swift_endAccess();
            v38 = v156;
            sub_2702CC310(v3, v156);
            sub_2702D3768(v56, v57);
            *(v3 + 41) = *(v3 + 40);
            goto LABEL_10;
          }

          sub_2702CE4EC(*v43, v57 & 0x1F);
          goto LABEL_54;
        }

        if ((v42 & 1) == 0)
        {

          v108 = v32;
          v109 = &v163;
          goto LABEL_75;
        }

        if ((*(v3 + 41) & 1) == 0)
        {

          v110 = v32;
          v111 = &v166;
          goto LABEL_84;
        }
      }

      v72 = *(v3 + 24);
      if (*(v72 + 16))
      {
        v38 = v156;
LABEL_48:
        v80 = sub_2702CE94C(v38);
        if (v81)
        {
          v82 = *(*(v72 + 56) + 8 * v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD618, &qword_2702DAE00);
          v83 = v142;
          v84 = swift_allocObject();
          sub_2702D2F24(v32, v84 + v83, type metadata accessor for PushTelemetry);

          v85 = v148;
          sub_2702D6DF0(v84 + v83, v82);
          v148 = v85;
          swift_setDeallocating();
          sub_2702D2FF4(v84 + v83, type metadata accessor for PushTelemetry);
          swift_deallocClassInstance();
          v40 = v155;
        }

        goto LABEL_9;
      }

      v38 = v156;
LABEL_9:
      v33 = v152;
LABEL_10:
      ++v36;
      v34 = sub_2702D2FF4(v32, type metadata accessor for PushTelemetry);
      if (v153 == v36)
      {
      }
    }
  }
}

uint64_t sub_2702CBCAC(char *a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD638, &qword_2702DAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  v11 = sub_2702DA4BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v36 = *(v34 - 8);
  v16 = *(v36 + 64);
  v17 = MEMORY[0x28223BE20](v34);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = *a1;
  keyExistsAndHasValidFormat[0] = 0;
  v23 = sub_2702DA55C();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v23, *MEMORY[0x277CBF028], keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat[0])
  {
    v25 = AppIntegerValue;
  }

  else
  {
    v25 = 7200.0;
  }

  result = swift_beginAccess();
  v27 = *(a2 + 32);
  if (!*(v27 + 16) || (result = sub_2702CE94C(v22), (v28 & 1) == 0))
  {
LABEL_10:
    v33 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_2702D2F24(*(v27 + 56) + *(v36 + 72) * result, v19, type metadata accessor for PushHeuristics.DisconnectionInfo);
  sub_2702D2F8C(v19, v21, type metadata accessor for PushHeuristics.DisconnectionInfo);
  sub_2702DA4AC();
  sub_2702D3850(v21, v10, &qword_2807CD5C0, &unk_2702DACB0);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result != 1)
  {
    sub_2702DA47C();
    v30 = v29;
    v31 = *(v12 + 8);
    v31(v15, v11);
    v31(v10, v11);
    if (v25 < v30)
    {
      v32 = v35;
      (*(v36 + 56))(v35, 1, 1, v34);
      swift_beginAccess();
      sub_2702C8D64(v32, v22);
      swift_endAccess();
    }

    result = sub_2702D2FF4(v21, type metadata accessor for PushHeuristics.DisconnectionInfo);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2702CC0A4(char a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  if (*(*(a2 + 24) + 16))
  {
    v7 = a3 & 1;
    result = sub_2702CE94C(a3 & 1);
    if (v8)
    {
      if (a1)
      {

        v9 = sub_2702DA4CC();
        v10 = sub_2702DA5EC();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v20[0] = v12;
          *v11 = 136315394;
          if (a3)
          {
            v13 = 0x72666E4969666977;
          }

          else
          {
            v13 = 0x72616C756C6C6563;
          }

          if (a3)
          {
            v14 = 0xE900000000000061;
          }

          else
          {
            v14 = 0xE800000000000000;
          }

          v15 = sub_2702D949C(v13, v14, v20);

          *(v11 + 4) = v15;
          *(v11 + 12) = 2080;
          if (*(a2 + 41))
          {
            v16 = 0x6F6C66664F746F6ELL;
          }

          else
          {
            v16 = 0x6564616F6C66666FLL;
          }

          if (*(a2 + 41))
          {
            v17 = 0xEC00000064656461;
          }

          else
          {
            v17 = 0xE900000000000064;
          }

          v18 = sub_2702D949C(v16, v17, v20);

          *(v11 + 14) = v18;
          _os_log_impl(&dword_2702C7000, v9, v10, "Error: Telemetry handler already exists for interface %s in %s state", v11, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x27439D570](v12, -1, -1);
          MEMORY[0x27439D570](v11, -1, -1);
        }
      }

      v21 = v7;
      v19 = *(a2 + 41);
      swift_beginAccess();
      sub_2702C82B8(&v21, v19, 0);
      swift_endAccess();
      v21 = v7;
      swift_beginAccess();
      sub_2702C9268(&v21);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_2702CC310(uint64_t a1, char a2)
{
  v4 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - v11;
  if (*(a1 + 41))
  {
    return;
  }

  v13 = v10;
  swift_beginAccess();
  v14 = *(a1 + 32);
  if (!*(v14 + 16))
  {
    goto LABEL_9;
  }

  v15 = sub_2702CE94C(a2 & 1);
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2702D2F24(*(v14 + 56) + *(v5 + 72) * v15, v9, type metadata accessor for PushHeuristics.DisconnectionInfo);
  sub_2702D2F8C(v9, v12, type metadata accessor for PushHeuristics.DisconnectionInfo);
  v17 = &v12[*(v13 + 20)];
  if (v17[8])
  {
    sub_2702D2FF4(v12, type metadata accessor for PushHeuristics.DisconnectionInfo);
LABEL_9:
    v21 = 0;
    v22 = 0;
    v23 = 0xE000000000000000;
    v24 = 6;
    goto LABEL_10;
  }

  v52[0] = *v17;
  v18 = v52[0];
  LOBYTE(v52[1]) = 0;
  sub_2702CE4D8(v52[0], 0);
  v19 = sub_2702D336C(v52);
  if (v19 & 1) == 0 || (v20)
  {
    sub_2702D2FF4(v12, type metadata accessor for PushHeuristics.DisconnectionInfo);
    sub_2702CE4FC(v18, 0);
    goto LABEL_9;
  }

  v47 = HIDWORD(v19);
  strcpy(v52, "error code: ");
  BYTE5(v52[1]) = 0;
  HIWORD(v52[1]) = -5120;
  v51 = HIDWORD(v19);
  v48 = sub_2702DA6FC();
  MEMORY[0x27439D000](v48);

  sub_2702CE4FC(v18, 0);
  v22 = v52[0];
  v23 = v52[1];
  sub_2702D2FF4(v12, type metadata accessor for PushHeuristics.DisconnectionInfo);
  if (v47 > -69997)
  {
    switch(v47)
    {
      case 0xFFFEEE94:
        v21 = 1;
        v24 = 3;
        break;
      case 0xFFFEEE95:
        v21 = 1;
        v24 = 4;
        break;
      case 0xFFFEEE96:
        v21 = 1;
        v24 = 5;
        break;
      default:
        goto LABEL_59;
    }
  }

  else
  {
    switch(v47)
    {
      case 0xFFFEEE91:
        v24 = 0;
        v21 = 1;
        break;
      case 0xFFFEEE92:
        v24 = 1;
        v21 = 1;
        break;
      case 0xFFFEEE93:
        v21 = 1;
        v24 = 2;
        break;
      default:
        goto LABEL_59;
    }
  }

LABEL_10:
  LOBYTE(v52[0]) = a2 & 1;
  if (!sub_2702CA408(v52))
  {
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_59:

    return;
  }

  LOBYTE(v52[0]) = a2 & 1;
  v25 = sub_2702CA6A4(v52);
  v27 = v26;
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_2702DA68C();

  v52[0] = 0xD00000000000001BLL;
  v52[1] = 0x80000002702DBD20;
  MEMORY[0x27439D000](v25, v27);

  MEMORY[0x27439D000](93, 0xE100000000000000);
  v22 = v52[0];
  v23 = v52[1];
  v24 = 6;
LABEL_13:

  v28 = sub_2702DA4CC();
  v29 = sub_2702DA5EC();

  if (os_log_type_enabled(v28, v29))
  {
    v50 = v22;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52[0] = v31;
    *v30 = 136315650;
    if (a2)
    {
      v32 = 0x72666E4969666977;
    }

    else
    {
      v32 = 0x72616C756C6C6563;
    }

    if (a2)
    {
      v33 = 0xE900000000000061;
    }

    else
    {
      v33 = 0xE800000000000000;
    }

    v34 = sub_2702D949C(v32, v33, v52);

    *(v30 + 4) = v34;
    v35 = &unk_2702DB920;
    *(v30 + 12) = 2080;
    v36 = "RxPktDropExceeded";
    v37 = 0xD000000000000011;
    if (v24 == 5)
    {
      v38 = 0xD000000000000011;
    }

    else
    {
      v38 = 0xD000000000000018;
    }

    if (v24 != 5)
    {
      v36 = "TxPktDropExceeded";
    }

    v39 = "RxQueueDelayExceeded";
    v40 = 0xD000000000000014;
    if (v24 == 3)
    {
      v37 = 0xD000000000000014;
    }

    else
    {
      v39 = "TxQueueDelayExceeded";
    }

    if (v24 <= 4)
    {
      v36 = v39;
    }

    else
    {
      v37 = v38;
    }

    v41 = "IPv4FragmentationFailure";
    if (v24 == 1)
    {
      v40 = 0xD000000000000018;
    }

    else
    {
      v41 = "IPv6FragmentationFailure";
    }

    if (v24)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xD000000000000018;
    }

    if (v24)
    {
      v35 = v41;
    }

    if (v24 <= 2)
    {
      v43 = v42;
    }

    else
    {
      v43 = v37;
    }

    if (v24 <= 2)
    {
      v44 = v35;
    }

    else
    {
      v44 = v36;
    }

    v45 = sub_2702D949C(v43, v44 | 0x8000000000000000, v52);

    *(v30 + 14) = v45;
    *(v30 + 22) = 2080;
    v46 = sub_2702D949C(v50, v23, v52);

    *(v30 + 24) = v46;
    _os_log_impl(&dword_2702C7000, v28, v29, "Reporting diagnostics for interface %s: %s due to %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x27439D570](v31, -1, -1);
    MEMORY[0x27439D570](v30, -1, -1);
  }

  else
  {
  }

  if (qword_2807CD580 != -1)
  {
    swift_once();
  }

  sub_2702D5630(v24);
}

BOOL sub_2702CC944(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x27439D1A0](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_2702CC9F0(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v165 = a2;
  v174 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v163 = &v152[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v164 = &v152[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v157 = &v152[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v160 = &v152[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v152[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v152[-v18];
  v20 = sub_2702DA4BC();
  v21 = *(v20 - 8);
  v166 = v20;
  v167 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v159 = &v152[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v161 = &v152[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v152[-v28];
  MEMORY[0x28223BE20](v27);
  v158 = &v152[-v30];
  v31 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v152[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v162 = &v152[-v37];
  v168 = *a1;
  keyExistsAndHasValidFormat[0] = 0;
  v38 = sub_2702DA55C();
  v39 = *MEMORY[0x277CBF028];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v38, *MEMORY[0x277CBF028], keyExistsAndHasValidFormat);

  if (!keyExistsAndHasValidFormat[0] || AppBooleanValue)
  {
    keyExistsAndHasValidFormat[0] = 0;
    v41 = sub_2702DA55C();
    AppIntegerValue = CFPreferencesGetAppIntegerValue(v41, v39, keyExistsAndHasValidFormat);

    if (keyExistsAndHasValidFormat[0])
    {
      v43 = AppIntegerValue;
    }

    else
    {
      v43 = 7200.0;
    }

    swift_beginAccess();
    v44 = *(v3 + 32);
    if (!*(v44 + 16))
    {
      goto LABEL_31;
    }

    v45 = sub_2702CE94C(v168);
    if ((v46 & 1) == 0)
    {
      goto LABEL_31;
    }

    sub_2702D2F24(*(v44 + 56) + *(v32 + 72) * v45, v36, type metadata accessor for PushHeuristics.DisconnectionInfo);
    v47 = v162;
    sub_2702D2F8C(v36, v162, type metadata accessor for PushHeuristics.DisconnectionInfo);
    v48 = &v47[*(v31 + 20)];
    if (v48[8] == 255)
    {
      v64 = v47;
    }

    else
    {
      v156 = v48[8];
      v49 = *v48;
      sub_2702D3850(v47, v19, &qword_2807CD5C0, &unk_2702DACB0);
      v50 = v166;
      v51 = v167;
      v52 = *(v167 + 48);
      if (v52(v19, 1, v166) == 1)
      {
        sub_2702D2FF4(v47, type metadata accessor for PushHeuristics.DisconnectionInfo);
        sub_2702D38B8(v19, &qword_2807CD5C0, &unk_2702DACB0);
        goto LABEL_31;
      }

      v155 = *(v51 + 32);
      v155(v158, v19, v50);
      v171 = v49;
      v65 = v156;
      LOBYTE(v172) = v156;
      sub_2702CE4D8(v49, v156);
      v67 = sub_2702D336C(&v171);
      if (v67)
      {
        v153 = v66;
        v154 = v49;
        v68 = v3 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v69 = *(v68 + 8);
          ObjectType = swift_getObjectType();
          (*(v69 + 8))(ObjectType, v69);
          swift_unknownObjectRelease();
          v72 = v166;
          v71 = v167;
          (*(v167 + 56))(v17, 0, 1, v166);
          v155(v29, v17, v72);
          v73 = v71;
        }

        else
        {
          v72 = v166;
          v73 = v167;
          (*(v167 + 56))(v17, 1, 1, v166);
          sub_2702DA4AC();
          if (v52(v17, 1, v72) != 1)
          {
            sub_2702D38B8(v17, &qword_2807CD5C0, &unk_2702DACB0);
          }
        }

        v74 = v158;
        sub_2702DA47C();
        v76 = v75;
        v77 = *(v73 + 8);
        v77(v29, v72);
        if (v76 <= v43)
        {
          v171 = 0;
          v172 = 0xE000000000000000;
          sub_2702DA68C();
          MEMORY[0x27439D000](0xD000000000000027, 0x80000002702DBC80);
          if (v153)
          {
            v136 = -1;
          }

          else
          {
            v136 = HIDWORD(v67);
          }

          LODWORD(v169) = v136;
          v137 = sub_2702DA6FC();
          MEMORY[0x27439D000](v137);

          MEMORY[0x27439D000](0xD000000000000013, 0x80000002702DBCB0);
          sub_2702CE480();
          v138 = sub_2702DA6FC();
          MEMORY[0x27439D000](v138);

          v139 = v72;
          v140 = v74;
          v62 = v171;
          v61 = v172;
          v141 = sub_2702DA4CC();
          v142 = sub_2702DA5EC();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v171 = v144;
            *v143 = 136315394;
            *(v143 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, &v171);
            *(v143 + 12) = 2080;
            if (v168)
            {
              v145 = 0x72666E4969666977;
            }

            else
            {
              v145 = 0x72616C756C6C6563;
            }

            if (v168)
            {
              v146 = 0xE900000000000061;
            }

            else
            {
              v146 = 0xE800000000000000;
            }

            v147 = sub_2702D949C(v145, v146, &v171);

            *(v143 + 14) = v147;
            _os_log_impl(&dword_2702C7000, v141, v142, "%s interface=%s regression", v143, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x27439D570](v144, -1, -1);
            MEMORY[0x27439D570](v143, -1, -1);
            sub_2702CE4FC(v154, v156);

            v148 = v158;
            v149 = v166;
          }

          else
          {
            sub_2702CE4FC(v154, v156);

            v148 = v140;
            v149 = v139;
          }

          v77(v148, v149);
          sub_2702D2FF4(v162, type metadata accessor for PushHeuristics.DisconnectionInfo);
          goto LABEL_84;
        }

        sub_2702CE4FC(v154, v156);
        v77(v74, v72);
      }

      else
      {
        sub_2702CE4FC(v49, v65);
        (*(v51 + 8))(v158, v166);
      }

      v64 = v162;
    }

    sub_2702D2FF4(v64, type metadata accessor for PushHeuristics.DisconnectionInfo);
LABEL_31:
    v78 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_excessiveFailuresTimestamp;
    swift_beginAccess();
    v79 = *(v3 + v78);
    v81 = v166;
    v80 = v167;
    LODWORD(v82) = v168;
    if (!*(v79 + 16) || (v83 = sub_2702CE94C(v168), (v84 & 1) == 0))
    {
LABEL_39:
      LOBYTE(v169) = v82;
      if (sub_2702CA408(&v169))
      {
        LOBYTE(v169) = v82;
        v97 = sub_2702CA6A4(&v169);
        v99 = v98;
        v100 = sub_2702DA4CC();
        v101 = sub_2702DA5EC();
        v102 = os_log_type_enabled(v100, v101);
        v162 = v97;
        if (v102)
        {
          v103 = swift_slowAlloc();
          v161 = v99;
          v104 = v97;
          v105 = v103;
          v106 = swift_slowAlloc();
          v169 = v106;
          *v105 = 136315650;
          *(v105 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, &v169);
          *(v105 + 12) = 2080;
          if (v82)
          {
            v107 = 0x72666E4969666977;
          }

          else
          {
            v107 = 0x72616C756C6C6563;
          }

          if (v82)
          {
            v82 = 0xE900000000000061;
          }

          else
          {
            v82 = 0xE800000000000000;
          }

          v108 = sub_2702D949C(v107, v82, &v169);
          LOBYTE(v82) = v168;

          *(v105 + 14) = v108;
          *(v105 + 22) = 2080;
          v109 = v104;
          v99 = v161;
          *(v105 + 24) = sub_2702D949C(v109, v161, &v169);
          _os_log_impl(&dword_2702C7000, v100, v101, "%s interface=%s had too-many failures: %s", v105, 0x20u);
          swift_arrayDestroy();
          v110 = v106;
          v81 = v166;
          MEMORY[0x27439D570](v110, -1, -1);
          MEMORY[0x27439D570](v105, -1, -1);
        }

        v111 = v164;
        v112 = v3 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v113 = *(v112 + 8);
          v114 = swift_getObjectType();
          v115 = v163;
          (*(v113 + 8))(v114, v113);
          swift_unknownObjectRelease();
          v116 = v167;
          v117 = *(v167 + 56);
          v117(v115, 0, 1, v81);
          (*(v116 + 32))(v111, v115, v81);
        }

        else
        {
          v125 = v167;
          v117 = *(v167 + 56);
          v126 = v163;
          v117(v163, 1, 1, v81);
          sub_2702DA4AC();
          if ((*(v125 + 48))(v126, 1, v81) != 1)
          {
            sub_2702D38B8(v126, &qword_2807CD5C0, &unk_2702DACB0);
          }
        }

        v60 = 1;
        v117(v111, 0, 1, v81);
        swift_beginAccess();
        sub_2702C9004(v111, v82);
        swift_endAccess();
        v169 = 0;
        v170 = 0xE000000000000000;
        sub_2702DA68C();

        v169 = 0xD00000000000001BLL;
        v170 = 0x80000002702DBC10;
        MEMORY[0x27439D000](v162, v99);

        MEMORY[0x27439D000](93, 0xE100000000000000);
        v62 = v169;
        v61 = v170;
        v63 = 2;
      }

      else
      {
        v118 = sub_2702DA4CC();
        v119 = sub_2702DA5FC();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v169 = v121;
          *v120 = 136315394;
          *(v120 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, &v169);
          *(v120 + 12) = 2080;
          if (v82)
          {
            v122 = 0x72666E4969666977;
          }

          else
          {
            v122 = 0x72616C756C6C6563;
          }

          if (v82)
          {
            v123 = 0xE900000000000061;
          }

          else
          {
            v123 = 0xE800000000000000;
          }

          v124 = sub_2702D949C(v122, v123, &v169);

          *(v120 + 14) = v124;
          _os_log_impl(&dword_2702C7000, v118, v119, "%s interface=%s offload-recommended", v120, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x27439D570](v121, -1, -1);
          MEMORY[0x27439D570](v120, -1, -1);
        }

        v60 = 0;
        v62 = 0;
        v63 = 3;
        v61 = 0xE000000000000000;
      }

      goto LABEL_85;
    }

    v85 = v161;
    (*(v80 + 16))(v161, *(v79 + 56) + *(v80 + 72) * v83, v81);
    v86 = v3 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v87 = *(v86 + 8);
      v88 = swift_getObjectType();
      v89 = v160;
      (*(v87 + 8))(v88, v87);
      swift_unknownObjectRelease();
      v90 = *(v80 + 56);
      v90(v89, 0, 1, v81);
      v91 = v159;
      (*(v80 + 32))(v159, v89, v81);
    }

    else
    {
      v90 = *(v80 + 56);
      v92 = v160;
      v90(v160, 1, 1, v81);
      v91 = v159;
      sub_2702DA4AC();
      if ((*(v80 + 48))(v92, 1, v81) != 1)
      {
        sub_2702D38B8(v92, &qword_2807CD5C0, &unk_2702DACB0);
      }
    }

    sub_2702DA47C();
    v94 = v93;
    v95 = *(v80 + 8);
    v95(v91, v81);
    if (v94 > v43)
    {
      v96 = v157;
      v90(v157, 1, 1, v81);
      swift_beginAccess();
      sub_2702C9004(v96, v82);
      swift_endAccess();
      v95(v85, v81);
      goto LABEL_39;
    }

    v169 = 0;
    v170 = 0xE000000000000000;
    sub_2702DA68C();
    MEMORY[0x27439D000](0xD000000000000040, 0x80000002702DBC30);
    sub_2702CE480();
    v127 = sub_2702DA6FC();
    MEMORY[0x27439D000](v127);

    v128 = v81;
    v62 = v169;
    v61 = v170;
    v129 = sub_2702DA4CC();
    v130 = sub_2702DA5EC();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v169 = v132;
      *v131 = 136315394;
      *(v131 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, &v169);
      *(v131 + 12) = 2080;
      if (v168)
      {
        v133 = 0x72666E4969666977;
      }

      else
      {
        v133 = 0x72616C756C6C6563;
      }

      if (v168)
      {
        v134 = 0xE900000000000061;
      }

      else
      {
        v134 = 0xE800000000000000;
      }

      v135 = sub_2702D949C(v133, v134, &v169);

      *(v131 + 14) = v135;
      _os_log_impl(&dword_2702C7000, v129, v130, "%s interface=%s excessive failures latched", v131, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x27439D570](v132, -1, -1);
      MEMORY[0x27439D570](v131, -1, -1);

      v95(v161, v166);
    }

    else
    {

      v95(v85, v128);
    }

LABEL_84:
    v60 = 1;
    v63 = 1;
    goto LABEL_85;
  }

  v53 = sub_2702DA4CC();
  v54 = sub_2702DA5FC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *keyExistsAndHasValidFormat = v56;
    *v55 = 136315394;
    *(v55 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, keyExistsAndHasValidFormat);
    *(v55 + 12) = 2080;
    if (v168)
    {
      v57 = 0x72666E4969666977;
    }

    else
    {
      v57 = 0x72616C756C6C6563;
    }

    if (v168)
    {
      v58 = 0xE900000000000061;
    }

    else
    {
      v58 = 0xE800000000000000;
    }

    v59 = sub_2702D949C(v57, v58, keyExistsAndHasValidFormat);

    *(v55 + 14) = v59;
    _os_log_impl(&dword_2702C7000, v53, v54, "%s interface=%s heuristics not enabled", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x27439D570](v56, -1, -1);
    MEMORY[0x27439D570](v55, -1, -1);
  }

  v60 = 0;
  v61 = 0x80000002702DBCD0;
  v62 = 0xD000000000000016;
  v63 = 3;
LABEL_85:
  v150 = v165;
  *v165 = v60;
  *(v150 + 1) = v62;
  *(v150 + 2) = v61;
  v150[24] = v63;
  v151 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2702CDD7C()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_log;
  v5 = sub_2702DA4EC();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_2702D2EFC(&v0[OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider]);
  v6 = *&v0[OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory];

  v7 = *&v0[OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_excessiveFailuresTimestamp];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2702CDE88()
{
  result = sub_2702DA4EC();
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

uint64_t getEnumTagSinglePayload for PushHeuristics.OffloadState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushHeuristics.OffloadState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2702CE0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 <= 2)
    {
      return 0;
    }

    else
    {
      return v10 ^ 0xFF;
    }
  }
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

uint64_t sub_2702CE1F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = ~a2;
  }

  return result;
}

void sub_2702CE2DC()
{
  sub_2702CE360();
  if (v0 <= 0x3F)
  {
    sub_2702CE3B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2702CE360()
{
  if (!qword_2807CD5D8)
  {
    sub_2702DA4BC();
    v0 = sub_2702DA60C();
    if (!v1)
    {
      atomic_store(v0, &qword_2807CD5D8);
    }
  }
}

void sub_2702CE3B8()
{
  if (!qword_2807CD5E0)
  {
    v0 = sub_2702DA60C();
    if (!v1)
    {
      atomic_store(v0, &qword_2807CD5E0);
    }
  }
}

unint64_t sub_2702CE42C()
{
  result = qword_2807CD5E8;
  if (!qword_2807CD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD5E8);
  }

  return result;
}

unint64_t sub_2702CE480()
{
  result = qword_2807CD5F0;
  if (!qword_2807CD5F0)
  {
    sub_2702DA4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD5F0);
  }

  return result;
}

void sub_2702CE4D8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    sub_2702CE4EC(a1, a2);
  }
}

void sub_2702CE4EC(uint64_t a1, char a2)
{
  if (!a2)
  {
    JUMPOUT(0x27439D480);
  }
}

void sub_2702CE4FC(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_2702CE510(a1, a2);
  }
}

void sub_2702CE510(id a1, char a2)
{
  if (!a2)
  {
  }
}

size_t sub_2702CE520(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD618, &qword_2702DAE00);
  v10 = *(type metadata accessor for PushTelemetry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PushTelemetry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2702CE6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD650, &qword_2702DAE38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_2702CE814(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD690, &qword_2702DAE78);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2702CE918@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2702CE94C(char a1)
{
  v3 = *(v1 + 40);
  sub_2702DA74C();
  MEMORY[0x27439D1C0](a1 & 1);
  v4 = sub_2702DA76C();
  return sub_2702CEB44(a1 & 1, v4);
}

uint64_t sub_2702CE9B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2702CEA1C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2702DA74C();
  MEMORY[0x27439D1C0](a1);
  v4 = sub_2702DA76C();

  return sub_2702CEBB4(a1, v4);
}

unint64_t sub_2702CEA88(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2702DA62C();

  return sub_2702CEC24(a1, v5);
}

unint64_t sub_2702CEACC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2702DA74C();
  sub_2702DA58C();
  v6 = sub_2702DA76C();

  return sub_2702CECEC(a1, a2, v6);
}

unint64_t sub_2702CEB44(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2702CEBB4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2702CEC24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2702D3980(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x27439D0A0](v9, a1);
      sub_2702D39DC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2702CECEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2702DA70C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2702CEDA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD640, &qword_2702DAE28);
  v33 = a2;
  result = sub_2702DA6CC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2702DA74C();
      MEMORY[0x27439D1C0](v21);
      result = sub_2702DA76C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2702CF034(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_2702DA6CC();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_2702DA74C();
      MEMORY[0x27439D1C0](v23);
      result = sub_2702DA76C();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2702CF2BC(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v46 = a6;
  v9 = v6;
  v43 = *(a3(0) - 8);
  v12 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v45 = &v42 - v13;
  v14 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v15 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v44 = a2;
  result = sub_2702DA6CC();
  v17 = result;
  if (*(v14 + 16))
  {
    v42 = v9;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = result + 64;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v29 = v26 | (v18 << 6);
      v30 = *(*(v14 + 48) + v29);
      v31 = *(v43 + 72);
      v32 = *(v14 + 56) + v31 * v29;
      if (v44)
      {
        sub_2702D2F8C(v32, v45, v46);
      }

      else
      {
        sub_2702D2F24(v32, v45, v46);
      }

      v33 = *(v17 + 40);
      sub_2702DA74C();
      MEMORY[0x27439D1C0](v30);
      result = sub_2702DA76C();
      v34 = -1 << *(v17 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v24 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v24 + 8 * v36);
          if (v40 != -1)
          {
            v25 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v35) & ~*(v24 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v17 + 48) + v25) = v30;
      result = sub_2702D2F8C(v45, *(v17 + 56) + v31 * v25, v46);
      ++*(v17 + 16);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v28 = v19[v18];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v9 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v14 + 32);
    v9 = v42;
    if (v41 >= 64)
    {
      bzero((v14 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v41;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v9 = v17;
  return result;
}

uint64_t sub_2702CF5E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD648, &qword_2702DAE30);
  v33 = a2;
  result = sub_2702DA6CC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2702DA74C();
      MEMORY[0x27439D1C0](v21);
      result = sub_2702DA76C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2702CF870(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_2702DA4BC();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD630, &qword_2702DAE18);
  v43 = a2;
  result = sub_2702DA6CC();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + v25);
      v28 = *(v42 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_2702DA74C();
      MEMORY[0x27439D1C0](v27);
      result = sub_2702DA76C();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v9 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2702CFBD4(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_2702D2F8C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2702CFC80(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = sub_2702DA4BC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2702CFD30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2702DA61C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_2702DA74C();
      MEMORY[0x27439D1C0](v10);
      result = sub_2702DA76C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2702CFEC4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_2702DA61C() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + v7);
      sub_2702DA74C();
      MEMORY[0x27439D1C0](v12);
      result = sub_2702DA76C();
      v13 = result & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v13 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + v4);
      v16 = (v14 + v7);
      if (v4 != v7 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

uint64_t sub_2702D009C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2702CE94C(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for PushHeuristics.COSEntry(0);
        return sub_2702D3918(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for PushHeuristics.COSEntry);
      }

      return sub_2702CFBD4(v10, a2 & 1, a1, v16, type metadata accessor for PushHeuristics.COSEntry, type metadata accessor for PushHeuristics.COSEntry);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2702D0B00(type metadata accessor for PushHeuristics.COSEntry, &qword_2807CD678, &qword_2702DAE60, type metadata accessor for PushHeuristics.COSEntry);
      goto LABEL_7;
    }

    sub_2702CF2BC(v13, a3 & 1, type metadata accessor for PushHeuristics.COSEntry, &qword_2807CD678, &qword_2702DAE60, type metadata accessor for PushHeuristics.COSEntry);
    v20 = *v4;
    v21 = sub_2702CE94C(a2 & 1);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_2702CFBD4(v10, a2 & 1, a1, v16, type metadata accessor for PushHeuristics.COSEntry, type metadata accessor for PushHeuristics.COSEntry);
    }
  }

  result = sub_2702DA72C();
  __break(1u);
  return result;
}

unint64_t sub_2702D0268(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_2702CE94C(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2702CEDA4(v14, a3 & 1);
      v18 = *v4;
      result = sub_2702CE94C(v8);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_2702DA72C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2702D0858();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = v8;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_2702D03B4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_2702CE94C(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2702CF034(v14, a3 & 1, &qword_2807CD610, &qword_2702DB1F0);
      v18 = *v4;
      result = sub_2702CE94C(v8);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_2702DA72C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2702D09B4(&qword_2807CD610, &qword_2702DB1F0);
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = v8;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_2702D0524(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2702CE94C(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
        return sub_2702D3918(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for PushHeuristics.DisconnectionInfo);
      }

      return sub_2702CFBD4(v10, a2 & 1, a1, v16, type metadata accessor for PushHeuristics.DisconnectionInfo, type metadata accessor for PushHeuristics.DisconnectionInfo);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2702D0B00(type metadata accessor for PushHeuristics.DisconnectionInfo, &qword_2807CD688, &qword_2702DAE70, type metadata accessor for PushHeuristics.DisconnectionInfo);
      goto LABEL_7;
    }

    sub_2702CF2BC(v13, a3 & 1, type metadata accessor for PushHeuristics.DisconnectionInfo, &qword_2807CD688, &qword_2702DAE70, type metadata accessor for PushHeuristics.DisconnectionInfo);
    v20 = *v4;
    v21 = sub_2702CE94C(a2 & 1);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_2702CFBD4(v10, a2 & 1, a1, v16, type metadata accessor for PushHeuristics.DisconnectionInfo, type metadata accessor for PushHeuristics.DisconnectionInfo);
    }
  }

  result = sub_2702DA72C();
  __break(1u);
  return result;
}

uint64_t sub_2702D06F0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2702CE94C(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2702D0E88();
      goto LABEL_7;
    }

    sub_2702CF870(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_2702CE94C(a2 & 1);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2702DA72C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2702DA4BC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_2702CFC80(v10, a2 & 1, a1, v16);
}

void *sub_2702D0858()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD640, &qword_2702DAE28);
  v2 = *v0;
  v3 = sub_2702DA6BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2702D09B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2702DA6BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2702D0B00(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v35 = *(a1(0) - 8);
  v8 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v34 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_2702DA6BC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v33 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = *(*(v10 + 48) + v26);
        v28 = v34;
        v29 = *(v35 + 72) * v26;
        v30 = v36;
        sub_2702D2F24(*(v10 + 56) + v29, v34, v36);
        v31 = v37;
        *(*(v37 + 48) + v26) = v27;
        result = sub_2702D2F8C(v28, *(v31 + 56) + v29, v30);
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v33;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v10 + 64 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_2702D0D2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD648, &qword_2702DAE30);
  v2 = *v0;
  v3 = sub_2702DA6BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2702D0E88()
{
  v1 = v0;
  v30 = sub_2702DA4BC();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD630, &qword_2702DAE18);
  v4 = *v0;
  v5 = sub_2702DA6BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2702D10F4(void **a1)
{
  v2 = *(type metadata accessor for PushTelemetry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2702D2BC8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2702D119C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2702D119C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2702DA6EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PushTelemetry(0);
        v6 = sub_2702DA5BC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PushTelemetry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2702D1504(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2702D12C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2702D12C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for PushTelemetry(0);
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_2702D2F24(v24, v18, type metadata accessor for PushTelemetry);
      sub_2702D2F24(v21, v14, type metadata accessor for PushTelemetry);
      v25 = sub_2702DA49C();
      sub_2702D2FF4(v14, type metadata accessor for PushTelemetry);
      result = sub_2702D2FF4(v18, type metadata accessor for PushTelemetry);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_2702D2F8C(v24, v11, type metadata accessor for PushTelemetry);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2702D2F8C(v11, v21, type metadata accessor for PushTelemetry);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2702D1504(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v101 = a1;
  v113 = type metadata accessor for PushTelemetry(0);
  v109 = *(v113 - 8);
  v9 = *(v109 + 64);
  v10 = MEMORY[0x28223BE20](v113);
  v103 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v112 = &v98 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v98 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v98 - v18;
  v111 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v101;
    if (!*v101)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_2702D2368(a4);
    }

    v114 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v111)
      {
        v94 = *(result + 16 * a4);
        v95 = result;
        v96 = *(result + 16 * (a4 - 1) + 40);
        sub_2702D1DF0(*v111 + *(v109 + 72) * v94, *v111 + *(v109 + 72) * *(result + 16 * (a4 - 1) + 32), *v111 + *(v109 + 72) * v96, v5);
        if (v6)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_2702D2368(v95);
        }

        if (a4 - 2 >= *(v95 + 2))
        {
          goto LABEL_123;
        }

        v97 = &v95[16 * a4];
        *v97 = v94;
        *(v97 + 1) = v96;
        v114 = v95;
        sub_2702D22DC(a4 - 1);
        result = v114;
        a4 = *(v114 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v100 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v104 = v22;
    if (v24 >= v20)
    {
      v30 = v24;
    }

    else
    {
      v25 = *(v109 + 72);
      v5 = *v111 + v25 * v24;
      v107 = *v111;
      v26 = v107;
      sub_2702D2F24(v107 + v25 * v24, v19, type metadata accessor for PushTelemetry);
      sub_2702D2F24(v26 + v25 * v23, v16, type metadata accessor for PushTelemetry);
      LODWORD(v108) = sub_2702DA49C();
      sub_2702D2FF4(v16, type metadata accessor for PushTelemetry);
      result = sub_2702D2FF4(v19, type metadata accessor for PushTelemetry);
      v99 = v23;
      v27 = v23 + 2;
      v110 = v25;
      v28 = v107 + v25 * (v23 + 2);
      while (v20 != v27)
      {
        sub_2702D2F24(v28, v19, type metadata accessor for PushTelemetry);
        sub_2702D2F24(v5, v16, type metadata accessor for PushTelemetry);
        v29 = sub_2702DA49C() & 1;
        sub_2702D2FF4(v16, type metadata accessor for PushTelemetry);
        result = sub_2702D2FF4(v19, type metadata accessor for PushTelemetry);
        ++v27;
        v28 += v110;
        v5 += v110;
        if ((v108 & 1) != v29)
        {
          v30 = v27 - 1;
          goto LABEL_11;
        }
      }

      v30 = v20;
LABEL_11:
      v23 = v99;
      a4 = v100;
      if (v108)
      {
        if (v30 < v99)
        {
          goto LABEL_126;
        }

        if (v99 < v30)
        {
          v98 = v6;
          v31 = v110 * (v30 - 1);
          v32 = v30 * v110;
          v108 = v30;
          v33 = v30;
          v34 = v99;
          v35 = v99 * v110;
          do
          {
            if (v34 != --v33)
            {
              v36 = *v111;
              if (!*v111)
              {
                goto LABEL_132;
              }

              v5 = v36 + v35;
              sub_2702D2F8C(v36 + v35, v103, type metadata accessor for PushTelemetry);
              if (v35 < v31 || v5 >= v36 + v32)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v35 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2702D2F8C(v103, v36 + v31, type metadata accessor for PushTelemetry);
            }

            ++v34;
            v31 -= v110;
            v32 -= v110;
            v35 += v110;
          }

          while (v34 < v33);
          v6 = v98;
          v23 = v99;
          a4 = v100;
          v30 = v108;
        }
      }
    }

    v37 = v111[1];
    if (v30 < v37)
    {
      if (__OFSUB__(v30, v23))
      {
        goto LABEL_125;
      }

      if (v30 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v37)
        {
          v38 = v111[1];
        }

        else
        {
          v38 = v23 + a4;
        }

        if (v38 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v30 != v38)
        {
          break;
        }
      }
    }

    v39 = v30;
    if (v30 < v23)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v104;
    }

    else
    {
      result = sub_2702CE814(0, *(v104 + 2) + 1, 1, v104);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v40 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v40 >> 1)
    {
      result = sub_2702CE814((v40 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v41 = &v22[16 * a4];
    *(v41 + 4) = v23;
    *(v41 + 5) = v39;
    v42 = *v101;
    if (!*v101)
    {
      goto LABEL_134;
    }

    v105 = v39;
    if (a4)
    {
      while (1)
      {
        v43 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v44 = *(v22 + 4);
          v45 = *(v22 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_54:
          if (v47)
          {
            goto LABEL_113;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_116;
          }

          v66 = &v22[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_120;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v70 = &v22[16 * v5];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_68:
        if (v65)
        {
          goto LABEL_115;
        }

        v73 = &v22[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_118;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v43 - 1;
        if (v43 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v111)
        {
          goto LABEL_131;
        }

        v81 = v22;
        v82 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v43 + 40];
        sub_2702D1DF0(*v111 + *(v109 + 72) * v82, *v111 + *(v109 + 72) * *&v22[16 * v43 + 32], *v111 + *(v109 + 72) * v5, v42);
        if (v6)
        {
        }

        if (v5 < v82)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_2702D2368(v81);
        }

        if (a4 >= *(v81 + 2))
        {
          goto LABEL_110;
        }

        v83 = &v81[16 * a4];
        *(v83 + 4) = v82;
        *(v83 + 5) = v5;
        v114 = v81;
        result = sub_2702D22DC(v43);
        v22 = v114;
        v5 = *(v114 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v22[16 * v5 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_111;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_112;
      }

      v55 = &v22[16 * v5];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_114;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_117;
      }

      if (v59 >= v51)
      {
        v77 = &v22[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_121;
        }

        if (v46 < v80)
        {
          v43 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v20 = v111[1];
    v21 = v105;
    a4 = v100;
    if (v105 >= v20)
    {
      goto LABEL_96;
    }
  }

  v98 = v6;
  v99 = v23;
  v84 = *v111;
  v85 = *(v109 + 72);
  v86 = *v111 + v85 * (v30 - 1);
  v87 = -v85;
  v88 = v23 - v30;
  v102 = v85;
  v5 = v84 + v30 * v85;
  v105 = v38;
LABEL_86:
  v107 = v88;
  v108 = v30;
  v106 = v5;
  v89 = v88;
  v110 = v86;
  v90 = v86;
  while (1)
  {
    a4 = type metadata accessor for PushTelemetry;
    sub_2702D2F24(v5, v19, type metadata accessor for PushTelemetry);
    sub_2702D2F24(v90, v16, type metadata accessor for PushTelemetry);
    v91 = sub_2702DA49C();
    sub_2702D2FF4(v16, type metadata accessor for PushTelemetry);
    result = sub_2702D2FF4(v19, type metadata accessor for PushTelemetry);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v30 = v108 + 1;
      v86 = v110 + v102;
      v88 = v107 - 1;
      v39 = v105;
      v5 = v106 + v102;
      if (v108 + 1 != v105)
      {
        goto LABEL_86;
      }

      v6 = v98;
      v23 = v99;
      if (v105 < v99)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v84)
    {
      break;
    }

    a4 = type metadata accessor for PushTelemetry;
    v92 = v112;
    sub_2702D2F8C(v5, v112, type metadata accessor for PushTelemetry);
    swift_arrayInitWithTakeFrontToBack();
    sub_2702D2F8C(v92, v90, type metadata accessor for PushTelemetry);
    v90 += v87;
    v5 += v87;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_2702D1DF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v41 = type metadata accessor for PushTelemetry(0);
  v8 = *(*(v41 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v42 = &v35 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v46 = a1;
  v45 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v25 = a4 + v18;
    }

    else
    {
      v23 = -v14;
      v24 = a4 + v18;
      v25 = a4 + v18;
      v38 = a1;
      v39 = a4;
      v37 = -v14;
      do
      {
        v35 = v25;
        v26 = a2 + v23;
        v40 = a2;
        v41 = a2 + v23;
        while (1)
        {
          if (a2 <= a1)
          {
            v46 = a2;
            v44 = v35;
            goto LABEL_59;
          }

          v36 = v25;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_2702D2F24(v29, v42, type metadata accessor for PushTelemetry);
          v31 = v26;
          v32 = v43;
          sub_2702D2F24(v31, v43, type metadata accessor for PushTelemetry);
          v33 = sub_2702DA49C();
          sub_2702D2FF4(v32, type metadata accessor for PushTelemetry);
          sub_2702D2FF4(v30, type metadata accessor for PushTelemetry);
          if (v33)
          {
            break;
          }

          v25 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v34 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          a2 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v25 = v36;
        }

        else
        {
          v34 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v25 = v36;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_57:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v17;
    v44 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v42;
        sub_2702D2F24(a2, v42, type metadata accessor for PushTelemetry);
        v21 = v43;
        sub_2702D2F24(a4, v43, type metadata accessor for PushTelemetry);
        v22 = sub_2702DA49C();
        sub_2702D2FF4(v21, type metadata accessor for PushTelemetry);
        sub_2702D2FF4(v20, type metadata accessor for PushTelemetry);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v46 = a1;
      }

      while (a4 < v40 && a2 < a3);
    }
  }

LABEL_59:
  sub_2702D237C(&v46, &v45, &v44);
  return 1;
}

uint64_t sub_2702D22DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2702D2368(v3);
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

uint64_t sub_2702D237C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PushTelemetry(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2702D2460(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x27439D1A0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_2702D2770(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2702D2548(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD680, &qword_2702DAE68);
  result = sub_2702DA65C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x27439D1A0](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2702D2770(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2702D2548(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2702D2894();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2702D29D4(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x27439D1A0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2702DA71C();
  __break(1u);
  return result;
}

void *sub_2702D2894()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD680, &qword_2702DAE68);
  v2 = *v0;
  v3 = sub_2702DA64C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2702D29D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD680, &qword_2702DAE68);
  result = sub_2702DA65C();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      result = MEMORY[0x27439D1A0](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

size_t sub_2702D2BDC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD618, &qword_2702DAE00);
  v10 = *(type metadata accessor for PushTelemetry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PushTelemetry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2702D2DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for PushTelemetry(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2702D2F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2702D2F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2702D2FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_2702D3054(unint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v9 = sub_2702D317C(&unk_28803C2B0, &qword_2807CD680, &qword_2702DAE68);
  LOBYTE(keyExistsAndHasValidFormat) = 0;
  v3 = sub_2702DA55C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);

  if (!keyExistsAndHasValidFormat || AppBooleanValue)
  {
    sub_2702D2460(&keyExistsAndHasValidFormat, 35);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (HIDWORD(v1))
      {
        __break(1u);
      }

      v5 = sub_2702CC944(v1, v9);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2702D317C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2702DA66C();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    v9 = *(v5 + 40);
    v10 = ~(-1 << *(v5 + 32));
    while (1)
    {
      v14 = *(v8 + 4 * v6);
      result = MEMORY[0x27439D1A0](v9, v14, 4);
      v16 = result & v10;
      v17 = (result & v10) >> 6;
      v18 = *(v7 + 8 * v17);
      v19 = 1 << (result & v10);
      v20 = *(v5 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + 4 * v16) != v14)
        {
          v16 = (v16 + 1) & v10;
          v17 = v16 >> 6;
          v18 = *(v7 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v17) = v19 | v18;
        *(v20 + 4 * v16) = v14;
        v11 = *(v5 + 16);
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v13;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

BOOL sub_2702D329C(unsigned int a1)
{
  v2 = sub_2702D317C(&unk_28803C2E0, &qword_2807CD628, &qword_2702DAE10);
  if (*(v2 + 16) && (v3 = v2, v4 = MEMORY[0x27439D1A0](*(v2 + 40), a1, 4), v5 = v3, v6 = v3 + 56, v7 = -1 << *(v3 + 32), v8 = v4 & ~v7, ((*(v3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(v5 + 48) + 4 * v8);
      v11 = v10 == a1;
      if (v10 == a1)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_2702D336C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD620, &qword_2702DAE08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v30 - v4;
  v6 = sub_2702DA50C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = v30 - v12;
  if (*(a1 + 8))
  {
    goto LABEL_2;
  }

  v16 = *a1;
  v30[0] = v16;
  MEMORY[0x27439D480](v16);
  MEMORY[0x27439D480](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5F8, &qword_2702DADE0);
  v17 = swift_dynamicCast();
  v18 = *(v7 + 56);
  if (v17)
  {
    v18(v5, 0, 1, v6);
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    if ((*(v7 + 88))(v11, v6) == *MEMORY[0x277CD8FB0])
    {
      (*(v7 + 96))(v11, v6);
      v19 = *v11;
      v15 = sub_2702DA4FC();
      v14 = sub_2702D329C(v15);
      sub_2702CE510(v16, 0);
      (*(v7 + 8))(v13, v6);
      return v14 | (v15 << 32);
    }

    v20 = *(v7 + 8);
    v20(v13, v6);
    v20(v11, v6);
  }

  else
  {
    v18(v5, 1, 1, v6);
    sub_2702D38B8(v5, &qword_2807CD620, &qword_2702DAE08);
  }

  v21 = sub_2702DA46C();
  v22 = [v21 domain];
  v23 = sub_2702DA56C();
  v25 = v24;

  v26 = *MEMORY[0x277CCA5B8];
  if (v23 == sub_2702DA56C() && v25 == v27)
  {
  }

  else
  {
    v28 = sub_2702DA70C();

    if ((v28 & 1) == 0)
    {

      sub_2702CE510(v16, 0);
LABEL_2:
      v14 = 0;
      v15 = 0;
      return v14 | (v15 << 32);
    }
  }

  result = [v21 code];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    if (result <= 0x7FFFFFFF)
    {
      v14 = sub_2702D329C(result);

      sub_2702CE510(v16, 0);
      return v14 | (v15 << 32);
    }
  }

  __break(1u);
  return result;
}

void sub_2702D3748(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 5 == 1)
  {
    sub_2702CE4EC(a1, a2 & 0x1F);
  }

  else if (!(a2 >> 5))
  {
    JUMPOUT(0x27439D480);
  }
}

void sub_2702D3768(id a1, unsigned __int8 a2)
{
  if (a2 >> 5 == 1)
  {
    sub_2702CE510(a1, a2 & 0x1F);
  }

  else if (!(a2 >> 5))
  {
  }
}

uint64_t sub_2702D37A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2702D37E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2702D3850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2702D38B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2702D3918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2702D3A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2702DA4BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2702D3B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2702DA4BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2702D3C18()
{
  result = sub_2702DA4BC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RunningAverageEMA();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2702D3CA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_2702DA4BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v25[-v14];
  v16 = a2;
  if (*(v2 + 40) == 1)
  {
    *(v2 + 32) = v16;
    *(v2 + 40) = 0;
    (*(v6 + 16))(&v25[-v14], a1, v5);
    (*(v6 + 56))(v15, 0, 1, v5);
    v17 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime;
    swift_beginAccess();
    sub_2702D37E0(v15, v2 + v17);
    return swift_endAccess();
  }

  else
  {
    v19 = *(v2 + 32);
    v20 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime;
    swift_beginAccess();
    sub_2702D4158(v2 + v20, v13);
    if ((*(v6 + 48))(v13, 1, v5) == 1)
    {
      return sub_2702D41C8(v13);
    }

    else
    {
      (*(v6 + 32))(v9, v13, v5);
      sub_2702DA47C();
      v22 = v21 / *(v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_timeUnit);
      (*(v6 + 16))(v15, a1, v5);
      (*(v6 + 56))(v15, 0, 1, v5);
      swift_beginAccess();
      sub_2702D37E0(v15, v2 + v20);
      swift_endAccess();
      if (*(v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_useEventRateNormalization) == 1)
      {
        v23 = 1.0;
        if (v22 > 1.0)
        {
          v23 = v22;
        }

        v16 = v16 / v23;
      }

      v24 = pow(1.0 - *(v2 + 24), v22);
      result = (*(v6 + 8))(v9, v5);
      *(v2 + 32) = v16 * (1.0 - v24) + v19 * (1.0 - (1.0 - v24));
      *(v2 + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_2702D3FE8()
{
  sub_2702D41C8(v0 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RunningAverageEMA()
{
  result = qword_2807CD6C0;
  if (!qword_2807CD6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2702D40A0()
{
  sub_2702CE360();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2702D4158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2702D41C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2702D4230()
{
  v0 = type metadata accessor for ULPNHeuristicsDiagnostics();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2702D4270();
  qword_2807CE1E0 = result;
  return result;
}

uint64_t sub_2702D4270()
{
  v1 = v0;
  v2 = sub_2702DA4EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSuccessfulReportTimestamp;
  v8 = sub_2702DA4BC();
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v9(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSnapshotFailureTimestamp, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_minimumSuccessReportInterval) = 0x40AC200000000000;
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_minimumSnapshotFailureRetryInterval) = 0x4082C00000000000;
  v10 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_diagnosticReporter) = v10;
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_isDiagnosticsEnabled) = 1;
  v11 = [objc_opt_self() processInfo];
  v12 = [v11 processName];

  v13 = sub_2702DA56C();
  v15 = v14;

  v17[0] = 0x6C7070612E6D6F63;
  v17[1] = 0xEA00000000002E65;
  MEMORY[0x27439D000](v13, v15);

  sub_2702DA4DC();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_log, v6, v2);
  sub_2702D5070();
  return v1;
}

uint64_t sub_2702D44D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD728, &unk_2702DAFC0);
    v2 = sub_2702DA6DC();
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
    sub_2702D660C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2702D6668(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2702D6668(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2702D6668(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2702DA62C();
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
    result = sub_2702D6668(v33, (*(v2 + 56) + 32 * v10));
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

void sub_2702D47A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  if (a1)
  {
    v8 = sub_2702D4D04(a1);
    if (v8)
    {
      v9 = v8;
      v10 = *MEMORY[0x277D6B198];
      v11 = sub_2702DA56C();
      if (*(v9 + 16))
      {
        v13 = sub_2702CEACC(v11, v12);
        v15 = v14;

        if (v15)
        {
          sub_2702D660C(*(v9 + 56) + 32 * v13, v44);

          if (swift_dynamicCast())
          {
            if (v43)
            {
              sub_2702DA4AC();
              v16 = sub_2702DA4BC();
              (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
              v17 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSuccessfulReportTimestamp;
              swift_beginAccess();
              sub_2702D37E0(v7, a2 + v17);
              swift_endAccess();

              v18 = sub_2702DA4CC();
              v19 = sub_2702DA5DC();

              if (os_log_type_enabled(v18, v19))
              {
                v20 = swift_slowAlloc();
                v42 = swift_slowAlloc();
                v44[0] = v42;
                *v20 = 136315138;
                sub_2702D4158(a2 + v17, v7);
                v21 = sub_2702D540C(v7);
                v23 = v22;
                sub_2702D38B8(v7, &qword_2807CD5C0, &unk_2702DACB0);
                v24 = sub_2702D949C(v21, v23, v44);

                *(v20 + 4) = v24;
                _os_log_impl(&dword_2702C7000, v18, v19, "Diagnostic response successful at %s", v20, 0xCu);
                v25 = v42;
                __swift_destroy_boxed_opaque_existential_0(v42);
                MEMORY[0x27439D570](v25, -1, -1);
                MEMORY[0x27439D570](v20, -1, -1);
              }
            }

            else
            {
              v37 = sub_2702DA4CC();
              v38 = sub_2702DA5EC();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                *v39 = 0;
                _os_log_impl(&dword_2702C7000, v37, v38, "Diagnostic response indicated failure", v39, 2u);
                MEMORY[0x27439D570](v39, -1, -1);
              }

              sub_2702DA4AC();
              v40 = sub_2702DA4BC();
              (*(*(v40 - 8) + 56))(v7, 0, 1, v40);
              v41 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSnapshotFailureTimestamp;
              swift_beginAccess();
              sub_2702D37E0(v7, a2 + v41);
              swift_endAccess();
            }
          }

          goto LABEL_17;
        }
      }

      else
      {
      }
    }

LABEL_17:
    v29 = sub_2702DA54C();
    v31 = v30;
    v32 = sub_2702DA4CC();
    v33 = sub_2702DA5DC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v34 = 136315138;
      v36 = sub_2702D949C(v29, v31, v44);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_2702C7000, v32, v33, "Diagnostic response received: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x27439D570](v35, -1, -1);
      MEMORY[0x27439D570](v34, -1, -1);
    }

    else
    {
    }

    return;
  }

  v42 = sub_2702DA4CC();
  v26 = sub_2702DA5DC();
  if (os_log_type_enabled(v42, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2702C7000, v42, v26, "Diagnostic snapshot completed with no response data", v27, 2u);
    MEMORY[0x27439D570](v27, -1, -1);
  }

  v28 = v42;
}

unint64_t sub_2702D4D04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD718, &qword_2702DAFB0);
    v2 = sub_2702DA6DC();
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
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_2702D3980(*(a1 + 48) + 40 * v14, v29);
        sub_2702D660C(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_2702D3980(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2702D660C(v27 + 8, v22);
        sub_2702D38B8(v26, &qword_2807CD720, &qword_2702DAFB8);
        v23 = v20;
        sub_2702D6668(v22, v24);
        v15 = v23;
        sub_2702D6668(v24, v25);
        sub_2702D6668(v25, &v23);
        result = sub_2702CEACC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_2702D6668(&v23, v12);
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
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_2702D6668(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_2702D38B8(v26, &qword_2807CD720, &qword_2702DAFB8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2702D4FE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_2702DA53C();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

void sub_2702D5070()
{
  v9 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v1 = sub_2702DA55C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    *(v0 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_isDiagnosticsEnabled) = AppBooleanValue != 0;
    v3 = sub_2702DA4CC();
    v4 = sub_2702DA5DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = AppBooleanValue != 0;
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v5;
      _os_log_impl(&dword_2702C7000, v3, v4, "Updated diagnostics enabled state from preferences: %{BOOL}d", v6, 8u);
      MEMORY[0x27439D570](v6, -1, -1);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2702D51B0()
{
  v1 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_log;
  v2 = sub_2702DA4EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2702D38B8(v0 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSuccessfulReportTimestamp, &qword_2807CD5C0, &unk_2702DACB0);
  sub_2702D38B8(v0 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSnapshotFailureTimestamp, &qword_2807CD5C0, &unk_2702DACB0);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ULPNHeuristicsDiagnostics()
{
  result = qword_2807CD708;
  if (!qword_2807CD708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2702D52F8()
{
  v0 = sub_2702DA4EC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2702CE360();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void *sub_2702D53EC(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_2702D540C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_2702DA4BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2702D4158(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2702D38B8(v5, &qword_2807CD5C0, &unk_2702DACB0);
    return 0x726576654ELL;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v12 setDateStyle_];
    [v12 setTimeStyle_];
    v13 = sub_2702DA48C();
    v14 = [v12 stringFromDate_];

    v15 = sub_2702DA56C();
    (*(v7 + 8))(v10, v6);
    return v15;
  }
}

void sub_2702D5630(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v107 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v107 - v12;
  v14 = sub_2702DA4BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v107 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v107 - v23;
  if (*(v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_isDiagnosticsEnabled) != 1)
  {
    v110 = sub_2702DA4CC();
    v27 = sub_2702DA5DC();
    if (os_log_type_enabled(v110, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_2702D949C(0x6974736972756548, 0xEA00000000007363, aBlock);
      *(v28 + 12) = 2080;
      v30 = &unk_2702DB920;
      v31 = "RxPktDropExceeded";
      v32 = 0xD000000000000011;
      if (a1 == 5)
      {
        v33 = 0xD000000000000011;
      }

      else
      {
        v33 = 0xD000000000000018;
      }

      if (a1 != 5)
      {
        v31 = "TxPktDropExceeded";
      }

      v34 = "RxQueueDelayExceeded";
      v35 = 0xD000000000000014;
      if (a1 == 3)
      {
        v32 = 0xD000000000000014;
      }

      else
      {
        v34 = "TxQueueDelayExceeded";
      }

      if (a1 <= 4u)
      {
        v31 = v34;
      }

      else
      {
        v32 = v33;
      }

      v36 = "IPv4FragmentationFailure";
      if (a1 == 1)
      {
        v35 = 0xD000000000000018;
      }

      else
      {
        v36 = "IPv6FragmentationFailure";
      }

      if (a1)
      {
        v37 = v35;
      }

      else
      {
        v37 = 0xD000000000000018;
      }

      if (a1)
      {
        v30 = v36;
      }

      if (a1 <= 2u)
      {
        v38 = v37;
      }

      else
      {
        v38 = v32;
      }

      if (a1 <= 2u)
      {
        v39 = v30;
      }

      else
      {
        v39 = v31;
      }

      v40 = sub_2702D949C(v38, v39 | 0x8000000000000000, aBlock);

      *(v28 + 14) = v40;
      _os_log_impl(&dword_2702C7000, v110, v27, "Diagnostics disabled, not reporting event: %s/%s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x27439D570](v29, -1, -1);
      MEMORY[0x27439D570](v28, -1, -1);
    }

    else
    {
      v49 = v110;
    }

    return;
  }

  LODWORD(v110) = a1;
  v108 = v8;
  v25 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSuccessfulReportTimestamp;
  swift_beginAccess();
  sub_2702D4158(v2 + v25, v13);
  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) == 1)
  {
    sub_2702D38B8(v13, &qword_2807CD5C0, &unk_2702DACB0);
    goto LABEL_41;
  }

  v109 = v2;
  (*(v15 + 32))(v24, v13, v14);
  sub_2702DA4AC();
  sub_2702DA47C();
  v42 = v41;
  v43 = v15;
  v44 = *(v15 + 8);
  v44(v22, v14);
  if (v42 < 3600.0)
  {
    v45 = v42 / 60.0;
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v45 > -9.22337204e18)
    {
      if (v45 < 9.22337204e18)
      {

        v46 = sub_2702DA4CC();
        v47 = sub_2702DA5DC();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 134218240;
          *(v48 + 4) = v45;
          *(v48 + 12) = 2048;
          *(v48 + 14) = 60;

          _os_log_impl(&dword_2702C7000, v46, v47, "Skipping diagnostic report - last successful report was %ld minutes ago (minimum interval: %ld minutes)", v48, 0x16u);
          MEMORY[0x27439D570](v48, -1, -1);
        }

        else
        {
        }

        v44(v24, v14);
        return;
      }

      goto LABEL_104;
    }

    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v44(v24, v14);
  v15 = v43;
  v2 = v109;
LABEL_41:
  v50 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSnapshotFailureTimestamp;
  swift_beginAccess();
  v107[0] = v50;
  sub_2702D4158(v2 + v50, v11);
  if (v26(v11, 1, v14) == 1)
  {
    sub_2702D38B8(v11, &qword_2807CD5C0, &unk_2702DACB0);
    goto LABEL_50;
  }

  (*(v15 + 32))(v19, v11, v14);
  sub_2702DA4AC();
  sub_2702DA47C();
  v52 = v51;
  v53 = *(v15 + 8);
  v53(v22, v14);
  if (v52 < 600.0)
  {
    v54 = v52 / 60.0;
    if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v54 > -9.22337204e18)
      {
        if (v54 < 9.22337204e18)
        {

          v55 = sub_2702DA4CC();
          v56 = sub_2702DA5DC();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 134218240;
            *(v57 + 4) = v54;
            *(v57 + 12) = 2048;
            *(v57 + 14) = 10;

            _os_log_impl(&dword_2702C7000, v55, v56, "Skipping diagnostic report - last snapshot failure was %ld minutes ago (minimum retry interval: %ld minutes)", v57, 0x16u);
            MEMORY[0x27439D570](v57, -1, -1);
          }

          else
          {
          }

          v53(v19, v14);
          return;
        }

LABEL_107:
        __break(1u);
        return;
      }

LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v53(v19, v14);
LABEL_50:
  v107[1] = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_log;
  v58 = sub_2702DA4CC();
  v59 = sub_2702DA5DC();
  if (os_log_type_enabled(v58, v59))
  {
    v109 = v2;
    v60 = v14;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136315394;
    *(v61 + 4) = sub_2702D949C(0x6974736972756548, 0xEA00000000007363, aBlock);
    *(v61 + 12) = 2080;
    v63 = &unk_2702DB920;
    v64 = "RxPktDropExceeded";
    v65 = 0xD000000000000011;
    if (v110 == 5)
    {
      v66 = 0xD000000000000011;
    }

    else
    {
      v66 = 0xD000000000000018;
    }

    if (v110 != 5)
    {
      v64 = "TxPktDropExceeded";
    }

    v67 = "RxQueueDelayExceeded";
    v68 = 0xD000000000000014;
    if (v110 == 3)
    {
      v65 = 0xD000000000000014;
    }

    else
    {
      v67 = "TxQueueDelayExceeded";
    }

    if (v110 <= 4u)
    {
      v64 = v67;
    }

    else
    {
      v65 = v66;
    }

    v69 = "IPv4FragmentationFailure";
    if (v110 == 1)
    {
      v68 = 0xD000000000000018;
    }

    else
    {
      v69 = "IPv6FragmentationFailure";
    }

    if (v110)
    {
      v70 = v68;
    }

    else
    {
      v70 = 0xD000000000000018;
    }

    if (v110)
    {
      v63 = v69;
    }

    if (v110 <= 2u)
    {
      v71 = v70;
    }

    else
    {
      v71 = v65;
    }

    if (v110 <= 2u)
    {
      v72 = v63;
    }

    else
    {
      v72 = v64;
    }

    v73 = sub_2702D949C(v71, v72 | 0x8000000000000000, aBlock);

    *(v61 + 14) = v73;
    _os_log_impl(&dword_2702C7000, v58, v59, "Reporting diagnostic event: %s/%s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x27439D570](v62, -1, -1);
    MEMORY[0x27439D570](v61, -1, -1);

    v14 = v60;
    v2 = v109;
  }

  else
  {
  }

  v74 = [objc_opt_self() processInfo];
  v75 = [v74 processName];

  if (!v75)
  {
    sub_2702DA56C();
    v75 = sub_2702DA55C();
  }

  v76 = *(v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_diagnosticReporter);
  v77 = sub_2702DA55C();
  v78 = sub_2702DA55C();
  v79 = sub_2702DA55C();

  v80 = [v76 signatureWithDomain:v77 type:v78 subType:v79 detectedProcess:v75 triggerThresholdValues:0];

  if (v80)
  {
    v109 = v14;
    v110 = v15;
    aBlock[0] = 0;
    v81 = v80;
    sub_2702DA52C();

    v82 = aBlock[0];
    if (!aBlock[0])
    {
      v89 = sub_2702DA4CC();
      v90 = sub_2702DA5EC();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        v92 = "failed to convert signature dictionary to Swift dictionary";
LABEL_95:
        _os_log_impl(&dword_2702C7000, v89, v90, v92, v91, 2u);
        MEMORY[0x27439D570](v91, -1, -1);
      }

LABEL_96:

      return;
    }

    v83 = sub_2702DA4CC();
    v84 = sub_2702DA5DC();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 134217984;
      *(v85 + 4) = *(v82 + 16);

      _os_log_impl(&dword_2702C7000, v83, v84, "Created signature dictionary with %ld entries", v85, 0xCu);
      MEMORY[0x27439D570](v85, -1, -1);
    }

    else
    {
    }

    v93 = v108;
    sub_2702D44D8(v82);

    v94 = sub_2702DA51C();

    aBlock[4] = sub_2702D65EC;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2702D4FE0;
    aBlock[3] = &block_descriptor;
    v95 = _Block_copy(aBlock);

    v96 = [v76 snapshotWithSignature:v94 duration:0 event:0 payload:v95 reply:0.0];
    _Block_release(v95);

    if (v96)
    {
      v89 = sub_2702DA4CC();
      v90 = sub_2702DA5DC();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        v92 = "Diagnostic snapshot request was successfully submitted";
        goto LABEL_95;
      }

      goto LABEL_96;
    }

    sub_2702DA4AC();
    (v110[7].isa)(v93, 0, 1, v109);
    v97 = v107[0];
    swift_beginAccess();
    sub_2702D37E0(v93, v2 + v97);
    swift_endAccess();

    v98 = sub_2702DA4CC();
    v99 = v2;
    v100 = sub_2702DA5EC();

    if (os_log_type_enabled(v98, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      aBlock[0] = v102;
      *v101 = 136315138;
      sub_2702D4158(v99 + v97, v93);
      v103 = sub_2702D540C(v93);
      v105 = v104;
      sub_2702D38B8(v93, &qword_2807CD5C0, &unk_2702DACB0);
      v106 = sub_2702D949C(v103, v105, aBlock);

      *(v101 + 4) = v106;
      _os_log_impl(&dword_2702C7000, v98, v100, "Failed to submit diagnostic snapshot request at %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x27439D570](v102, -1, -1);
      MEMORY[0x27439D570](v101, -1, -1);
    }
  }

  else
  {
    v86 = sub_2702DA4CC();
    v87 = sub_2702DA5EC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2702C7000, v86, v87, "failed to create signature dictionary", v88, 2u);
      MEMORY[0x27439D570](v88, -1, -1);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2702D660C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2702D6668(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2702D669C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v67 - v5;
  v6 = *a1;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 24) = sub_2702D834C(MEMORY[0x277D84F90]);
  v77 = (v1 + 24);
  *(v1 + 32) = v7;
  v8 = (v1 + 32);
  *(v1 + 40) = xmmword_2702DAFD0;
  sub_2702DA4DC();
  v9 = 0;
  v10 = 0;
  v68 = v1;
  *(v1 + 16) = v6;
  v72 = xmmword_2702DB020;
  v71 = xmmword_2702DB030;
  v74 = xmmword_2702DAFE0;
  v70 = xmmword_2702DB010;
  v69 = xmmword_2702DB000;
  v73 = xmmword_2702DAFF0;
  v75 = (v1 + 32);
  do
  {
    v13 = byte_28803C288[v10 + 32];
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        if (v13 == 3)
        {
          swift_beginAccess();
          v14 = *v8;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v8 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = sub_2702CE6F8(0, *(v14 + 2) + 1, 1, v14);
            *v8 = v14;
          }

          v17 = *(v14 + 2);
          v16 = *(v14 + 3);
          if (v17 >= v16 >> 1)
          {
            v14 = sub_2702CE6F8((v16 > 1), v17 + 1, 1, v14);
          }

          *(v14 + 2) = v17 + 1;
          v18 = &v14[40 * v17];
          v19 = 3;
        }

        else
        {
          swift_beginAccess();
          v14 = *v8;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          *v8 = v14;
          if ((v31 & 1) == 0)
          {
            v14 = sub_2702CE6F8(0, *(v14 + 2) + 1, 1, v14);
            *v8 = v14;
          }

          v33 = *(v14 + 2);
          v32 = *(v14 + 3);
          if (v33 >= v32 >> 1)
          {
            v14 = sub_2702CE6F8((v32 > 1), v33 + 1, 1, v14);
          }

          *(v14 + 2) = v33 + 1;
          v18 = &v14[40 * v33];
          v19 = 4;
        }

        v18[32] = v19;
        v34 = v73;
        *(v18 + 40) = v74;
        *(v18 + 56) = v34;
        *v8 = v14;
        swift_endAccess();
        v22 = 1;
        v30 = 0x404E000000000000;
        goto LABEL_30;
      }

      v22 = v9;
      swift_beginAccess();
      v20 = *v8;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v20;
      if ((v27 & 1) == 0)
      {
        v20 = sub_2702CE6F8(0, *(v20 + 2) + 1, 1, v20);
        *v8 = v20;
      }

      v29 = *(v20 + 2);
      v28 = *(v20 + 3);
      if (v29 >= v28 >> 1)
      {
        v20 = sub_2702CE6F8((v28 > 1), v29 + 1, 1, v20);
      }

      *(v20 + 2) = v29 + 1;
      v25 = &v20[40 * v29];
      v25[32] = 2;
      *(v25 + 40) = v74;
      v26 = v69;
LABEL_23:
      *(v25 + 56) = v26;
      *v8 = v20;
      swift_endAccess();
      v30 = 0x40AC200000000000;
LABEL_30:
      v35 = v30;
      goto LABEL_31;
    }

    if (!byte_28803C288[v10 + 32])
    {
      swift_beginAccess();
      v20 = *v8;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v20;
      if ((v21 & 1) == 0)
      {
        v20 = sub_2702CE6F8(0, *(v20 + 2) + 1, 1, v20);
        *v8 = v20;
      }

      v22 = v9;
      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      if (v24 >= v23 >> 1)
      {
        v20 = sub_2702CE6F8((v23 > 1), v24 + 1, 1, v20);
      }

      *(v20 + 2) = v24 + 1;
      v25 = &v20[40 * v24];
      v25[32] = 0;
      v26 = v71;
      *(v25 + 40) = v72;
      goto LABEL_23;
    }

    swift_beginAccess();
    v59 = *v8;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v59;
    if ((v60 & 1) == 0)
    {
      v59 = sub_2702CE6F8(0, *(v59 + 2) + 1, 1, v59);
      *v8 = v59;
    }

    v62 = *(v59 + 2);
    v61 = *(v59 + 3);
    if (v62 >= v61 >> 1)
    {
      v59 = sub_2702CE6F8((v61 > 1), v62 + 1, 1, v59);
    }

    *(v59 + 2) = v62 + 1;
    v63 = &v59[40 * v62];
    v63[32] = 1;
    *(v63 + 40) = v74;
    *(v63 + 56) = v70;
    *v8 = v59;
    swift_endAccess();
    v35 = 0x40AC200000000000;
    v22 = v9;
LABEL_31:
    v36 = type metadata accessor for RunningAverageEMA();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    *(v39 + 16) = 0x4000000000000000;
    *(v39 + 32) = 0;
    *(v39 + 40) = 1;
    v40 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime;
    v41 = sub_2702DA4BC();
    v42 = *(*(v41 - 8) + 56);
    v42(v39 + v40, 1, 1, v41);
    v9 = v22;
    *(v39 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_useEventRateNormalization) = v22 & 1;
    *(v39 + 24) = 0x3FF0000000000000;
    *(v39 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_timeUnit) = v35;
    *(v39 + 32) = 0;
    *(v39 + 40) = 1;
    v43 = v76;
    v42(v76, 1, 1, v41);
    swift_beginAccess();
    sub_2702D37E0(v43, v39 + v40);
    swift_endAccess();
    v44 = v77;
    swift_beginAccess();
    v45 = *v44;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *v44;
    v47 = v78;
    *v44 = 0x8000000000000000;
    v48 = sub_2702CEA1C(v13);
    v50 = v47[2];
    v51 = (v49 & 1) == 0;
    v52 = __OFADD__(v50, v51);
    v53 = v50 + v51;
    if (v52)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v54 = v49;
    if (v47[3] >= v53)
    {
      if ((v46 & 1) == 0)
      {
        v64 = v48;
        sub_2702D0D2C();
        v48 = v64;
      }
    }

    else
    {
      sub_2702CF5E0(v53, v46);
      v48 = sub_2702CEA1C(v13);
      if ((v54 & 1) != (v55 & 1))
      {
        goto LABEL_50;
      }
    }

    v8 = v75;
    v56 = v78;
    if (v54)
    {
      v11 = v78[7];
      v12 = *(v11 + 8 * v48);
      *(v11 + 8 * v48) = v39;
    }

    else
    {
      v78[(v48 >> 6) + 8] |= 1 << v48;
      *(v56[6] + v48) = v13;
      *(v56[7] + 8 * v48) = v39;
      v57 = v56[2];
      v52 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v52)
      {
        goto LABEL_48;
      }

      v56[2] = v58;
    }

    ++v10;
    *v77 = v56;
    swift_endAccess();
  }

  while (v10 != 5);
  v65 = *(*v77 + 16);
  swift_beginAccess();
  if (v65 == *(*v8 + 2))
  {
    return v68;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_2702DA72C();
  __break(1u);
  return result;
}

void sub_2702D6DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushTelemetry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD658, &qword_2702DAE40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v71 - v14;
  v16 = a1 + *(v4 + 20);
  v17 = *(v16 + 8) >> 5;
  if (v17 > 3)
  {
    v74 = *v16;
    if (v17 == 4)
    {
      swift_beginAccess();
      v52 = *(a2 + 24);
      if (*(v52 + 16))
      {
        v53 = sub_2702CEA1C(1u);
        if (v54)
        {
          v73 = *(*(v52 + 56) + 8 * v53);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
          v55 = *(v9 + 72);
          v56 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v57 = swift_allocObject() + v56;
          v71 = *(v8 + 48);
          v72 = sub_2702DA4BC();
          v58 = *(v72 - 8);
          (*(v58 + 16))(v57, a1, v72);
          *(v57 + v71) = 1;
          v71 = *(v8 + 48);
          sub_2702D3850(v57, v15, &qword_2807CD658, &qword_2702DAE40);
          swift_setDeallocating();

          sub_2702D851C(v57);
          swift_deallocClassInstance();
          v59 = *&v15[v71];
          v60 = *(v8 + 48);
          (*(v58 + 32))(v13, v15, v72);
          *&v13[v60] = v59;
          sub_2702D3CA0(v13, v59);

          sub_2702D851C(v13);
        }
      }

      if (v74 < 1)
      {
        return;
      }

      v39 = *(a2 + 24);
      if (!*(v39 + 16))
      {
        return;
      }

      v40 = sub_2702CEA1C(3u);
      if ((v61 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v17 != 5)
      {
LABEL_15:
        sub_2702D845C(a1, v7);
        v42 = sub_2702DA4CC();
        v43 = sub_2702DA5CC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v77 = v45;
          *v44 = 136315138;
          v46 = &v7[*(v4 + 20)];
          v47 = v46[8];
          v75 = *v46;
          v76 = v47;
          sub_2702D3748(v75, v47);
          v48 = PushTelemetryEvent.description.getter();
          v50 = v49;
          sub_2702D84C0(v7);
          sub_2702D3768(v75, v76);
          v51 = sub_2702D949C(v48, v50, &v77);

          *(v44 + 4) = v51;
          _os_log_impl(&dword_2702C7000, v42, v43, "Unhandled event: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x27439D570](v45, -1, -1);
          MEMORY[0x27439D570](v44, -1, -1);
        }

        else
        {

          sub_2702D84C0(v7);
        }

        return;
      }

      swift_beginAccess();
      v30 = *(a2 + 24);
      if (*(v30 + 16))
      {
        v31 = sub_2702CEA1C(2u);
        if (v32)
        {
          v73 = *(*(v30 + 56) + 8 * v31);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
          v33 = *(v9 + 72);
          v34 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v35 = swift_allocObject() + v34;
          v71 = *(v8 + 48);
          v72 = sub_2702DA4BC();
          v36 = *(v72 - 8);
          (*(v36 + 16))(v35, a1, v72);
          *(v35 + v71) = 1;
          v71 = *(v8 + 48);
          sub_2702D3850(v35, v15, &qword_2807CD658, &qword_2702DAE40);
          swift_setDeallocating();

          sub_2702D851C(v35);
          swift_deallocClassInstance();
          v37 = *&v15[v71];
          v38 = *(v8 + 48);
          (*(v36 + 32))(v13, v15, v72);
          *&v13[v38] = v37;
          sub_2702D3CA0(v13, v37);

          sub_2702D851C(v13);
        }
      }

      if (v74 < 1)
      {
        return;
      }

      v39 = *(a2 + 24);
      if (!*(v39 + 16))
      {
        return;
      }

      v40 = sub_2702CEA1C(4u);
      if ((v41 & 1) == 0)
      {
        return;
      }
    }

    v73 = *(*(v39 + 56) + 8 * v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
    v62 = *(v9 + 72);
    v63 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v64 = swift_allocObject() + v63;
    v65 = *(v8 + 48);
    v66 = sub_2702DA4BC();
    v67 = *(v66 - 8);
    (*(v67 + 16))(v64, a1, v66);
    *(v64 + v65) = v74;
    v68 = *(v8 + 48);
    sub_2702D3850(v64, v15, &qword_2807CD658, &qword_2702DAE40);
    swift_setDeallocating();

    sub_2702D851C(v64);
    swift_deallocClassInstance();
    v69 = *&v15[v68];
    v70 = *(v8 + 48);
    (*(v67 + 32))(v13, v15, v66);
    *&v13[v70] = v69;
    sub_2702D3CA0(v13, v69);
    goto LABEL_25;
  }

  if (v17 < 2)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v18 = *(a2 + 24);
  if (*(v18 + 16))
  {
    v19 = sub_2702CEA1C(0);
    if (v20)
    {
      v74 = *(*(v18 + 56) + 8 * v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
      v21 = *(v9 + 72);
      v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v23 = swift_allocObject() + v22;
      v24 = *(v8 + 48);
      v25 = sub_2702DA4BC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(v23, a1, v25);
      *(v23 + v24) = 1;
      v27 = *(v8 + 48);
      sub_2702D3850(v23, v15, &qword_2807CD658, &qword_2702DAE40);
      swift_setDeallocating();

      sub_2702D851C(v23);
      swift_deallocClassInstance();
      v28 = *&v15[v27];
      v29 = *(v8 + 48);
      (*(v26 + 32))(v13, v15, v25);
      *&v13[v29] = v28;
      sub_2702D3CA0(v13, v28);
LABEL_25:

      sub_2702D851C(v13);
    }
  }
}

uint64_t sub_2702D7654()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework20PushTelemetryHandler_log;
  v4 = sub_2702DA4EC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PushTelemetryHandler()
{
  result = qword_2807CD738;
  if (!qword_2807CD738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2702D7754()
{
  result = sub_2702DA4EC();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WeightedSumScorer(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WeightedSumScorer(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2702D7880(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[40])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2702D78C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushEvents(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushEvents(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2702D7A7C()
{
  result = qword_2807CD748;
  if (!qword_2807CD748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CD750, qword_2702DB128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD748);
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

unint64_t sub_2702D7B2C()
{
  result = qword_2807CD758;
  if (!qword_2807CD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD758);
  }

  return result;
}

unint64_t sub_2702D7B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD760, &unk_2702DB1D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD678, &qword_2702DAE60);
    v8 = sub_2702DA6DC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_2702D3850(v10, v6, &qword_2807CD760, &unk_2702DB1D0);
      v12 = *v6;
      result = sub_2702D3C9C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for PushHeuristics.COSEntry(0);
      result = sub_2702D8584(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for PushHeuristics.COSEntry);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2702D7D6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD640, &qword_2702DAE28);
  v3 = sub_2702DA6DC();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2702D3C9C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_2702D3C9C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2702D7E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD770, &qword_2702DB1F8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD688, &qword_2702DAE70);
    v8 = sub_2702DA6DC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_2702D3850(v10, v6, &qword_2807CD770, &qword_2702DB1F8);
      result = sub_2702D3C9C(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
      result = sub_2702D8584(&v6[v9], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for PushHeuristics.DisconnectionInfo);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2702D8068(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_2702DA6DC();
  LOBYTE(v6) = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_2702D3C9C(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 8);
    v17 = *v12;

    v10 = sub_2702D3C9C(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2702D8170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD768, &unk_2702DB1E0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD630, &qword_2702DAE18);
    v8 = sub_2702DA6DC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_2702D3850(v10, v6, &qword_2807CD768, &unk_2702DB1E0);
      result = sub_2702D3C9C(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2702DA4BC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2702D834C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD648, &qword_2702DAE30);
  v3 = sub_2702DA6DC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2702CEA1C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_2702CEA1C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2702D845C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushTelemetry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2702D84C0(uint64_t a1)
{
  v2 = type metadata accessor for PushTelemetry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2702D851C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD658, &qword_2702DAE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2702D8584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t PushTelemetryEvent.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    if (!v3)
    {
      v9 = 0xD000000000000019;
      if (v1)
      {
        MEMORY[0x27439D480](v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5F8, &qword_2702DADE0);
        sub_2702D88E8();
        if (swift_dynamicCast())
        {
          [v8 code];
          v6 = sub_2702DA6FC();
          MEMORY[0x27439D000](v6);

          MEMORY[0x27439D000](0x726F727265736E20, 0xEA0000000000203ALL);
        }
      }

      return v9;
    }

    if (v3 == 1)
    {
      sub_2702DA68C();

      v9 = 0xD000000000000017;
      v5 = PushDisconnectErrors.description.getter();
      MEMORY[0x27439D000](v5);

      MEMORY[0x27439D000](41, 0xE100000000000000);
      return v9;
    }

    result = 0xD00000000000001BLL;
    v9 = 0xD00000000000001BLL;
    if (v2)
    {
      return result;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD780, &unk_2702DB210);
    v7 = sub_2702DA57C();
    MEMORY[0x27439D000](v7);

    MEMORY[0x27439D000](32, 0xE100000000000000);

    return v9;
  }

  if (v2 >> 5 > 4)
  {
    if (v3 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001ALL;
    }
  }

  else
  {
    if (v3 == 3)
    {
      result = 0xD000000000000020;
      v9 = 0xD000000000000020;
      if (v2)
      {
        return result;
      }

      goto LABEL_16;
    }

    return 0xD000000000000010;
  }
}

unint64_t sub_2702D88E8()
{
  result = qword_2807CD788;
  if (!qword_2807CD788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807CD788);
  }

  return result;
}

__n128 OffloadAdviceResult.init(advice:reason:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t OffloadAdviceResult.reason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_2702D8C88(v2, v3, v4);
}

uint64_t InterfaceType.description.getter()
{
  if (*v0)
  {
    result = 0x72666E4969666977;
  }

  else
  {
    result = 0x72616C756C6C6563;
  }

  *v0;
  return result;
}