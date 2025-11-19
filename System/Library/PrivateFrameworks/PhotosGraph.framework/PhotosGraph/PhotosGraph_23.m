uint64_t ExtendedTokenCollectionGenerator.generatePersonExtendedTokens(for:using:isTrip:)(void *a1, uint64_t a2, int a3)
{
  v56 = a1;
  v4 = v3;
  v59 = a3;
  v60 = sub_22F7402E0();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v60);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v10 = sub_22F740B90();
  v58 = __swift_project_value_buffer(v10, qword_2810B4D00);
  v11 = sub_22F740B70();
  v12 = sub_22F7415C0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22F0FC000, v11, v12, "generatePersonExtendedTokens for collection has started.", v13, 2u);
    MEMORY[0x2319033A0](v13, -1, -1);
  }

  v57 = v4;

  v14 = *(a2 + 16);
  if (v14)
  {
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v62 = v17;
    v63 = ObjCClassFromMetadata;
    v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v61 = *(v16 + 56);
    v64 = v16;
    v19 = (v16 - 8);
    v20 = MEMORY[0x277D84F90];
    v21 = v60;
    v17(v9, v18, v60);
    while (1)
    {
      sub_22F7402D0();
      v22 = sub_22F740DF0();

      v23 = [v63 localIdentifierWithUUID_];

      if (v23)
      {
        v24 = sub_22F740E20();
        v26 = v25;

        (*v19)(v9, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
        }

        v28 = *(v20 + 2);
        v27 = *(v20 + 3);
        if (v28 >= v27 >> 1)
        {
          v20 = sub_22F13E1A8((v27 > 1), v28 + 1, 1, v20);
        }

        *(v20 + 2) = v28 + 1;
        v29 = &v20[16 * v28];
        *(v29 + 4) = v24;
        *(v29 + 5) = v26;
        v21 = v60;
      }

      else
      {
        (*v19)(v9, v21);
      }

      v18 += v61;
      if (!--v14)
      {
        break;
      }

      v62(v9, v18, v21);
    }
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  sub_22F1515F8(v20);

  v30 = objc_opt_self();
  v31 = sub_22F741410();

  v32 = v57;
  v33 = [v30 personNodesForLocalIdentifiers:v31 inGraph:*(v57 + 16)];

  v34 = [objc_opt_self() personInMoment];
  v35 = v56;
  v36 = [objc_msgSend(v56 graph)];
  swift_unknownObjectRelease();
  v37 = [v36 concreteGraph];

  if (v37)
  {
    v38 = [v35 elementIdentifiers];
    v39 = [v37 adjacencyWithSources:v38 relation:v34];

    swift_unknownObjectRetain();
    v40 = [v39 transposed];
    swift_unknownObjectRelease();

    v41 = v40;
    swift_unknownObjectRetain_n();
    v42 = [v33 elementIdentifiers];
    v43 = [v41 subtractingSourcesWith_];
    swift_unknownObjectRelease_n();

    v65[0] = v43;
    v65[1] = v37;
    v44 = v43;
    swift_unknownObjectRetain();
    v45 = sub_22F2ADDA8(v65, v35, MEMORY[0x277D84F98]);
    v46 = v65[0];
    swift_unknownObjectRelease();

    sub_22F2B3AA4(v45, v32);

    v47 = [v33 isEmpty];
    v48 = objc_opt_self();
    v49 = &selRef_minimumCumulativeDistributionOfPersonWithTripFrequency;
    if ((v59 & 1) == 0)
    {
      v49 = &selRef_minimumCumulativeDistributionOfPersonFrequency;
    }

    if (!v47)
    {
      v49 = &selRef_minimumCumulativeDistributionOfPersonWithNamedPersonFrequency;
    }

    [v48 *v49];
    sub_22F1B22EC();
    v50 = sub_22F7405B0();

    v51 = sub_22F740B70();
    v52 = sub_22F7415C0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22F0FC000, v51, v52, "generatePersonExtendedTokens for collection complete.", v53, 2u);
      MEMORY[0x2319033A0](v53, -1, -1);
      v54 = v33;
    }

    else
    {
      v54 = v51;
      v51 = v33;
    }

    swift_unknownObjectRelease();

    return v50;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.generatePetExtendedTokens(for:momentNodes:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v6 = sub_22F740B90();
  __swift_project_value_buffer(v6, qword_2810B4D00);
  v7 = sub_22F740B70();
  v8 = sub_22F7415C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22F0FC000, v7, v8, "generatePetExtendedTokens for query tokens has started.", v9, 2u);
    MEMORY[0x2319033A0](v9, -1, -1);
  }

  sub_22F1534D0(v10);
  v11 = objc_opt_self();
  v12 = sub_22F741410();

  v13 = [v11 petNodesForLocalIdentifiers:v12 inGraph:*(v3 + 16)];

  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 momentOfPet];
  v17 = [objc_msgSend(v15 graph)];
  swift_unknownObjectRelease();
  v18 = [v17 concreteGraph];

  if (v18)
  {
    v19 = [v15 elementIdentifiers];
    v20 = [v18 adjacencyWithSources:v19 relation:v16];

    v26[0] = v20;
    v26[1] = v18;
    v21 = sub_22F2AF168(v26, a2, a1);
    v22 = sub_22F740B70();
    v23 = sub_22F7415C0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22F0FC000, v22, v23, "generatePetExtendedTokens for query tokens complete.", v24, 2u);
      MEMORY[0x2319033A0](v24, -1, -1);
    }

    swift_unknownObjectRelease();
    return v21;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.generatePetExtendedTokens(for:using:)(void (**a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v69 = a1;
  v79 = sub_22F740050();
  v77 = *(v79 - 8);
  v5 = *(v77 + 64);
  v6 = MEMORY[0x28223BE20](v79);
  v76 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v64 - v11;
  if (qword_2810A9418 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v13 = sub_22F740B90();
    v67 = __swift_project_value_buffer(v13, qword_2810B4D00);
    v14 = sub_22F740B70();
    v15 = sub_22F7415C0();
    v16 = os_log_type_enabled(v14, v15);
    v70 = v10;
    if (v16)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22F0FC000, v14, v15, "generatePetExtendedTokens for collection has started.", v17, 2u);
      MEMORY[0x2319033A0](v17, -1, -1);
    }

    v68 = v3;

    v18 = *(a2 + 16);
    if (v18)
    {
      sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = *(v77 + 16);
      v21 = a2 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v72 = *(v77 + 72);
      v73 = v20;
      v74 = v77 + 16;
      v75 = ObjCClassFromMetadata;
      v22 = (v77 + 8);
      v23 = MEMORY[0x277D84F90];
      v24 = v79;
      v20(v12, v21, v79);
      while (1)
      {
        sub_22F740040();
        v25 = sub_22F740DF0();

        v26 = [v75 localIdentifierWithUUID_];

        if (v26)
        {
          v27 = sub_22F740E20();
          v29 = v28;

          (*v22)(v12, v24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
          }

          v31 = *(v23 + 2);
          v30 = *(v23 + 3);
          if (v31 >= v30 >> 1)
          {
            v23 = sub_22F13E1A8((v30 > 1), v31 + 1, 1, v23);
          }

          *(v23 + 2) = v31 + 1;
          v32 = &v23[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          v24 = v79;
        }

        else
        {
          (*v22)(v12, v24);
        }

        v21 += v72;
        if (!--v18)
        {
          break;
        }

        v73(v12, v21, v24);
      }
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    sub_22F1515F8(v23);

    v33 = objc_opt_self();
    v34 = sub_22F741410();

    a2 = v71;
    v35 = [v33 petNodesForLocalIdentifiers:v34 inGraph:*(v71 + 16)];

    v36 = [objc_opt_self() petPresentInMoment];
    v37 = v69;
    v38 = [objc_msgSend(v69 graph)];
    swift_unknownObjectRelease();
    v39 = [v38 concreteGraph];

    if (!v39)
    {
      result = sub_22F741D40();
      __break(1u);
      return result;
    }

    v40 = [v37 elementIdentifiers];
    v41 = [v39 adjacencyWithSources:v40 relation:v36];

    swift_unknownObjectRetain();
    v42 = [v41 transposed];
    swift_unknownObjectRelease();

    v43 = v42;
    swift_unknownObjectRetain_n();
    v65 = v35;
    v44 = [v35 elementIdentifiers];
    v45 = [v43 subtractingSourcesWith_];
    swift_unknownObjectRelease_n();

    v78[0] = v45;
    v78[1] = v39;
    v66 = v45;
    v64 = v39;
    swift_unknownObjectRetain();
    v12 = sub_22F2AF168(v78, v37, MEMORY[0x277D84F98]);
    v46 = v78[0];
    swift_unknownObjectRelease();

    v75 = *(v12 + 2);
    if (!v75)
    {
      break;
    }

    v3 = 0;
    v73 = (v77 + 16);
    v74 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer;
    v69 = (v77 + 8);
    v72 = (v77 + 32);
    v47 = MEMORY[0x277D84F90];
    v48 = v79;
    v10 = v70;
    while (v3 < *(v12 + 2))
    {
      v49 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v50 = *(v77 + 72);
      (*(v77 + 16))(v10, &v12[v49 + v50 * v3], v48);
      v51 = *(a2 + v74);
      if (sub_22F7400E0())
      {
        v52 = v10;
        v53 = *v72;
        (*v72)(v76, v52, v48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78[0] = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146730(0, *(v47 + 16) + 1, 1);
          v47 = v78[0];
        }

        v56 = *(v47 + 16);
        v55 = *(v47 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_22F146730(v55 > 1, v56 + 1, 1);
          v47 = v78[0];
        }

        *(v47 + 16) = v56 + 1;
        v48 = v79;
        v53((v47 + v49 + v56 * v50), v76, v79);
        v10 = v70;
        a2 = v71;
      }

      else
      {
        (*v69)(v10, v48);
      }

      if (v75 == ++v3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  v47 = MEMORY[0x277D84F90];
LABEL_29:

  if (*(v47 + 16) > 5uLL)
  {
    sub_22F10AB40(v47, v47 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), 0, 0xBuLL);
    v58 = v57;

    v47 = v58;
  }

  v59 = v66;
  v60 = sub_22F740B70();
  v61 = sub_22F7415C0();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_22F0FC000, v60, v61, "generatePetExtendedTokens for collection complete.", v62, 2u);
    MEMORY[0x2319033A0](v62, -1, -1);
  }

  swift_unknownObjectRelease();

  return v47;
}

uint64_t sub_22F2ADA48(void **a1)
{
  v2 = *(sub_22F7402E0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F64A4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22F2B0358(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22F2ADAF0(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F64B8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22F2B0484(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22F2ADBA4()
{
  v0 = sub_22F740650();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F7402A0();
  v5 = sub_22F740630();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_22F7402A0();
  v7 = sub_22F740630();
  v6(v4, v0);
  if (((v5 ^ v7) & 1) == 0)
  {
    v5 = sub_22F740290();
    if (((v5 ^ sub_22F740290()) & 1) == 0)
    {
      v8 = sub_22F7402C0();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      v5 = v11 != 0;
      v12 = sub_22F7402C0();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != (v15 == 0))
      {
        v16 = sub_22F7402D0();
        v18 = v17;
        if (v16 == sub_22F7402D0() && v18 == v19)
        {
          LOBYTE(v5) = 0;
        }

        else
        {
          LOBYTE(v5) = sub_22F742040();
        }
      }
    }
  }

  return v5 & 1;
}

unint64_t sub_22F2ADDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = objc_allocWithZone(PGGraphPersonNodeCollection);
  v9 = [v7 sources];
  v10 = [v8 initWithGraph:v6 elementIdentifiers:v9];

  v11 = [v10 count];
  if (v11 < 1)
  {
    v19 = MEMORY[0x277D84F90];

    return sub_22F14EC5C(v19);
  }

  else
  {
    v22 = MEMORY[0x277D84F98];
    v12 = [*(v3 + 16) meNode];
    v20[2] = a3;
    v20[3] = MEMORY[0x28223BE20](v12);
    v20[4] = a2;
    v20[5] = &v22;
    v13 = swift_allocObject();
    v13[2] = sub_22F2B3C94;
    v13[3] = v20;
    v13[4] = v7;
    v13[5] = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_22F2B3CA0;
    *(v14 + 24) = v13;
    aBlock[4] = sub_22F15A9A4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F107F34;
    aBlock[3] = &block_descriptor_14_1;
    v15 = _Block_copy(aBlock);
    v16 = v7;
    swift_unknownObjectRetain();

    [v16 enumerateTargetsBySourceWith_];
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      return v22;
    }
  }

  return result;
}

void sub_22F2AE030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char **a7)
{
  v142 = a6;
  v136 = a5;
  v141 = a2;
  v10 = sub_22F7402E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v145 = v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_22F740650();
  v144 = *(v146 - 8);
  v14 = *(v144 + 64);
  v15 = MEMORY[0x28223BE20](v146);
  v140 = v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v143 = v124 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0890, &qword_22F770AA8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v139 = v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v137 = v124 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v147 = v124 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v124 - v26;
  v28 = sub_22F73FDA0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22F740270();
  v148 = *(v33 - 8);
  v149 = v33;
  v34 = *(v148 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v138 = v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v150 = (v124 - v37);
  v38 = [a1 firstNode];
  if (!v38)
  {
    goto LABEL_12;
  }

  v135 = v11;
  v151 = v38;
  v39 = [v38 localIdentifier];
  if (v39)
  {
    v40 = v39;
    v133 = v10;
    v134 = a7;
    v41 = sub_22F740E20();
    v43 = v42;
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v44 = [swift_getObjCClassFromMetadata() uuidFromLocalIdentifier_];

    if (v44)
    {
      v131 = sub_22F740E20();
      v132 = v45;

      if (*(a4 + 16))
      {
        v46 = sub_22F1229E8(v41, v43);
        v48 = v47;

        if (v48)
        {
          (*(v29 + 16))(v32, *(a4 + 56) + *(v29 + 72) * v46, v28);
          v49 = sub_22F73FD80();
          v50 = v149;
          v51 = v150;
          *v150 = v49;
          (*(v148 + 104))(v51, *MEMORY[0x277D3C2B8], v50);
          v52 = sub_22F73FD70();
          a1 = v132;
          if (v52)
          {
            v53 = v52;
            if (*(v52 + 16))
            {
              v54 = sub_22F1229E8(v131, v132);
              if (v55)
              {
                v56 = *(*(v53 + 56) + 8 * v54);

                v57 = *(v56 + 16);
                if (v57)
                {
                  v58 = sub_22F10B348(*(v56 + 16), 0);
                  v59 = sub_22F11A438(&v152, v58 + 4, v57, v56);
                  sub_22F0FF590();
                  if (v59 != v57)
                  {
                    __break(1u);
LABEL_12:
                    if (qword_2810A9418 != -1)
                    {
                      swift_once();
                    }

                    v60 = sub_22F740B90();
                    __swift_project_value_buffer(v60, qword_2810B4D00);
                    v61 = a1;
                    v151 = sub_22F740B70();
                    v62 = sub_22F7415C0();

                    if (os_log_type_enabled(v151, v62))
                    {
                      v63 = swift_slowAlloc();
                      v64 = swift_slowAlloc();
                      *v63 = 138412290;
                      v65 = [v61 elementIdentifiers];
                      *(v63 + 4) = v65;
                      *v64 = v65;
                      _os_log_impl(&dword_22F0FC000, v151, v62, "Couldn't fetch personNode for identifier %@.", v63, 0xCu);
                      sub_22F120ADC(v64, &qword_27DAB07D0, &qword_22F779400);
                      MEMORY[0x2319033A0](v64, -1, -1);
                      MEMORY[0x2319033A0](v63, -1, -1);
                    }

                    goto LABEL_28;
                  }
                }

                else
                {

                  v58 = MEMORY[0x277D84F90];
                }

                v152 = v58;

                sub_22F1AB0EC(&v152);

                (*(v29 + 8))(v32, v28);
                v81 = v152;
LABEL_38:
                v82 = [v151 name];
                if (v82)
                {
                  v83 = v82;
                  v129 = sub_22F740E20();
                  v128 = v84;
                }

                else
                {
                  v129 = 0;
                  v128 = 0xE000000000000000;
                }

                v85 = v147;
                v86 = [objc_opt_self() ageTypeFromAgeCategory_];
                v127 = [v151 isFavorite];
                v87 = [v151 isMeNode];
                v130 = v81;
                v126 = v87;
                if (v87)
                {
                  v88 = *MEMORY[0x277D3C5E8];
                  v89 = sub_22F740690();
                  v90 = *(v89 - 8);
                  v91 = *(v90 + 104);
                  v91(v27, v88, v89);
                  v92 = *(v90 + 56);
                  v92(v27, 0, 1, v89);
                  v91(v85, v88, v89);
                  v92(v85, 0, 1, v89);
                }

                else
                {
                  v93 = sub_22F740690();
                  v94 = *(*(v93 - 8) + 56);
                  v94(v27, 1, 1, v93);
                  v94(v85, 1, 1, v93);
                  if (v136)
                  {
                    v124[1] = v86;
                    v95 = v136;
                    v96 = [v95 relationshipEdgesToPersonNode:v151 matchingQuery:1];
                    sub_22F120634(0, &qword_2810A9030, off_27887B328);
                    sub_22F2B3CAC();
                    v97 = sub_22F741420();

                    sub_22F2AC130(v97);
                    v99 = v98;

                    if (*(v99 + 16))
                    {
                      v100 = objc_opt_self();
                      sub_22F1515F8(v99);

                      v101 = sub_22F741410();

                      v102 = [v100 reducedRelationshipNameForLabels_];

                      sub_22F740E20();
                      sub_22F740EA0();

                      v103 = v137;
                      sub_22F740680();
                      sub_22F120ADC(v27, &qword_27DAB0890, &qword_22F770AA8);
                      sub_22F1207AC(v103, v27, &qword_27DAB0890, &qword_22F770AA8);
                    }

                    else
                    {

                      v103 = v137;
                    }

                    v109 = [v95 storytellingRelationshipLabelsToPersonNode_];
                    sub_22F741420();

                    v110 = objc_opt_self();
                    v111 = sub_22F741410();

                    v112 = [v110 reducedRelationshipNameForLabels_];

                    sub_22F740E20();
                    sub_22F740EA0();

                    sub_22F740680();
                    sub_22F120ADC(v85, &qword_27DAB0890, &qword_22F770AA8);
                    sub_22F1207AC(v103, v85, &qword_27DAB0890, &qword_22F770AA8);
                    v108 = v103;
                    if (![v151 isMyChild])
                    {
                      [v151 isMyInferredChild];
                    }

                    v104 = v134;
                    v106 = v146;
                    v107 = v139;
                    v105 = v27;
                    goto LABEL_51;
                  }
                }

                v104 = v134;
                v105 = v27;
                v106 = v146;
                v107 = v139;
                v108 = v137;
LABEL_51:
                v125 = v105;
                sub_22F13BA9C(v105, v108, &qword_27DAB0890, &qword_22F770AA8);
                sub_22F13BA9C(v85, v107, &qword_27DAB0890, &qword_22F770AA8);
                v113 = v143;
                sub_22F740640();
                v114 = v148;
                v115 = v149;
                (*(v148 + 16))(v138, v150, v149);
                v116 = v144;
                v117 = v106;
                (*(v144 + 16))(v140, v113, v106);
                v118 = v145;
                sub_22F7402B0();
                v119 = [v142 collectionByIntersecting_];
                v120 = [v119 count];
                v121 = *v104;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v152 = *v104;
                *v104 = 0x8000000000000000;
                sub_22F131B1C(v118, isUniquelyReferenced_nonNull_native, v120);

                (*(v135 + 8))(v118, v133);
                (*(v116 + 8))(v113, v117);
                sub_22F120ADC(v147, &qword_27DAB0890, &qword_22F770AA8);
                sub_22F120ADC(v125, &qword_27DAB0890, &qword_22F770AA8);
                (*(v114 + 8))(v150, v115);
                v123 = *v104;
                *v104 = v152;

                return;
              }
            }
          }

          if (qword_2810A9418 != -1)
          {
            swift_once();
          }

          v76 = sub_22F740B90();
          __swift_project_value_buffer(v76, qword_2810B4D00);

          v77 = sub_22F740B70();
          v78 = sub_22F7415E0();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v152 = v80;
            *v79 = 136315138;
            *(v79 + 4) = sub_22F145F20(v131, a1, &v152);
            _os_log_impl(&dword_22F0FC000, v77, v78, "Person query token %s should have assetUUIDs associated with it!", v79, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v80);
            MEMORY[0x2319033A0](v80, -1, -1);
            MEMORY[0x2319033A0](v79, -1, -1);
          }

          (*(v29 + 8))(v32, v28);
LABEL_37:
          v81 = 0;
          goto LABEL_38;
        }
      }

      else
      {
      }

      (*(v148 + 104))(v150, *MEMORY[0x277D3C2B0], v149);
      goto LABEL_37;
    }

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v70 = sub_22F740B90();
    __swift_project_value_buffer(v70, qword_2810B4D00);

    v67 = sub_22F740B70();
    v71 = sub_22F7415E0();

    if (os_log_type_enabled(v67, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v152 = v73;
      *v72 = 136315138;
      v74 = sub_22F145F20(v41, v43, &v152);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_22F0FC000, v67, v71, "Could not convert personLocalIdentifier %s to personUUID.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x2319033A0](v73, -1, -1);
      MEMORY[0x2319033A0](v72, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v66 = sub_22F740B90();
    __swift_project_value_buffer(v66, qword_2810B4D00);
    v67 = sub_22F740B70();
    v68 = sub_22F7415C0();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_22F0FC000, v67, v68, "personLocalIdentifier is nil.", v69, 2u);
      MEMORY[0x2319033A0](v69, -1, -1);
    }
  }

LABEL_28:
  v75 = v151;
}

uint64_t sub_22F2AF168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v60);
  v59 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v58 = v54 - v14;
  MEMORY[0x28223BE20](v13);
  v57 = v54 - v15;
  v16 = sub_22F740050();
  v61 = *(v16 - 8);
  v62 = v16;
  v17 = *(v61 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v20 = *(a1 + 8);
  v22 = [v21 sourcesCount];
  if (v22 < 1)
  {
    return MEMORY[0x277D84F90];
  }

  v67 = MEMORY[0x277D84F98];
  MEMORY[0x28223BE20](v22);
  v54[-4] = a3;
  v54[-3] = a2;
  v54[-2] = &v67;
  v54[-1] = v8;
  v23 = swift_allocObject();
  v23[2] = sub_22F2B3C64;
  v23[3] = &v54[-6];
  v23[4] = v21;
  v23[5] = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_22F2B3C70;
  *(v24 + 24) = v23;
  v65 = sub_22F15A3B8;
  v66 = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107F34;
  v64 = &block_descriptor_21;
  v25 = _Block_copy(aBlock);
  v26 = v21;
  swift_unknownObjectRetain();

  [v26 enumerateTargetsBySourceWith_];
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v28 = v67;
    v29 = *(v67 + 16);
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v31 = sub_22F10B3AC(*(v67 + 16), 0);
      v32 = sub_22F11ACB4(aBlock, v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v29, v28);
      v55 = v65;
      v56 = v64;

      sub_22F0FF590();
      if (v32 != v29)
      {
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    aBlock[0] = v31;
    sub_22F2ADAF0(aBlock);
    v34 = aBlock[0];
    v35 = aBlock[0][2];
    if (v35)
    {
      aBlock[0] = v30;
      sub_22F146730(0, v35, 0);
      v33 = aBlock[0];
      v36 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v54[1] = v34;
      v37 = v34 + v36;
      v38 = *(v9 + 72);
      v39 = v62;
      v40 = (v61 + 32);
      v55 = (v61 + 16);
      v56 = v38;
      v41 = v57;
      do
      {
        v62 = v35;
        sub_22F13BA9C(v37, v41, &qword_27DAB0730, &unk_22F771740);
        v42 = v33;
        v43 = v40;
        v44 = v58;
        sub_22F13BA9C(v41, v58, &qword_27DAB0730, &unk_22F771740);
        v45 = v59;
        v46 = *(v60 + 48);
        v47 = *(v44 + v46);
        v48 = *v43;
        v49 = v44;
        v40 = v43;
        v33 = v42;
        v50 = v48;
        v48(v59, v49, v39);
        *(v45 + v46) = v47;
        (*v55)(v19, v45, v39);
        sub_22F120ADC(v45, &qword_27DAB0730, &unk_22F771740);
        sub_22F120ADC(v41, &qword_27DAB0730, &unk_22F771740);
        aBlock[0] = v33;
        v52 = v33[2];
        v51 = v33[3];
        if (v52 >= v51 >> 1)
        {
          sub_22F146730(v51 > 1, v52 + 1, 1);
          v33 = aBlock[0];
        }

        v33[2] = v52 + 1;
        v50(v33 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v52, v19, v39);
        v37 += v56;
        v35 = v62 - 1;
      }

      while (v62 != 1);
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }

    return v33;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_22F2AF744(void *a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), char **a6)
{
  v103 = a2;
  v104 = a5;
  v9 = sub_22F740050();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v102 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73FDA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22F740270();
  v106 = *(v18 - 8);
  v19 = *(v106 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v101 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v93 - v23;
  MEMORY[0x28223BE20](v22);
  v107 = (&v93 - v25);
  v26 = [a1 firstNode];
  if (!v26)
  {
    goto LABEL_13;
  }

  v97 = v10;
  v98 = v9;
  v99 = a6;
  v100 = a1;
  v105 = v26;
  v27 = [v26 localIdentifier];
  if (!v27)
  {
    sub_22F740E20();
    v27 = sub_22F740DF0();
  }

  v28 = sub_22F740E20();
  v30 = v29;
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v31 = [swift_getObjCClassFromMetadata() uuidFromLocalIdentifier_];

  if (!v31)
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v57 = sub_22F740B90();
    __swift_project_value_buffer(v57, qword_2810B4D00);
    v58 = sub_22F740B70();
    v59 = sub_22F7415E0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_22F0FC000, v58, v59, "Pet node local identifier could not convert to UUID.", v60, 2u);
      MEMORY[0x2319033A0](v60, -1, -1);
    }

    v53 = v105;
    goto LABEL_24;
  }

  v94 = sub_22F740E20();
  v33 = v32;

  v34 = *(a4 + 16);
  v35 = MEMORY[0x277D3C2B0];
  v96 = v33;
  if (!v34 || (v36 = sub_22F1229E8(v28, v30), (v37 & 1) == 0))
  {

    v54 = v106;
    (*(v106 + 104))(v107, *v35, v18);
    v95 = 0;
    v55 = v104;
    v56 = v35;
    goto LABEL_34;
  }

  (*(v14 + 16))(v17, *(a4 + 56) + *(v14 + 72) * v36, v13);
  v38 = sub_22F73FD80();
  v39 = v107;
  v107->isa = v38;
  (*(v106 + 104))(v39, *MEMORY[0x277D3C2B8], v18);
  v40 = sub_22F73FD70();
  if (!v40)
  {
    goto LABEL_28;
  }

  v41 = v40;
  if (!*(v40 + 16) || (v42 = sub_22F1229E8(v94, v33), (v43 & 1) == 0))
  {

LABEL_28:

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v61 = sub_22F740B90();
    __swift_project_value_buffer(v61, qword_2810B4D00);
    v62 = sub_22F740B70();
    v63 = sub_22F7415E0();
    v64 = os_log_type_enabled(v62, v63);
    v55 = v104;
    if (v64)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_22F0FC000, v62, v63, "Pet query token should have assetUUIDs associated with it!", v65, 2u);
      MEMORY[0x2319033A0](v65, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    v95 = 0;
    v54 = v106;
    goto LABEL_33;
  }

  v44 = *(*(v41 + 56) + 8 * v42);

  v45 = *(v44 + 16);
  if (!v45)
  {

    v46 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  v46 = sub_22F10B348(*(v44 + 16), 0);
  a1 = sub_22F11A438(&v108, v46 + 4, v45, v44);
  sub_22F0FF590();
  if (a1 == v45)
  {
LABEL_49:
    v108 = v46;

    sub_22F1AB0EC(&v108);

    (*(v14 + 8))(v17, v13);
    v95 = v108;
    v54 = v106;
    v55 = v104;
LABEL_33:
    v56 = MEMORY[0x277D3C2B0];
LABEL_34:
    v66 = [v55 collectionByIntersecting_];
    v103 = [v66 count];

    v67 = *(v54 + 16);
    v67(v24, v107, v18);
    LODWORD(v66) = (*(v54 + 88))(v24, v18);
    v68 = v55;
    v69 = *v56;
    v71 = *(v54 + 8);
    v70 = v54 + 8;
    v104 = v71;
    v71(v24, v18);
    if (v66 == v69)
    {
      v72 = [v68 count];
      if (v72 < 1)
      {

        if (qword_2810A9418 != -1)
        {
          swift_once();
        }

        v90 = sub_22F740B90();
        __swift_project_value_buffer(v90, qword_2810B4D00);
        v76 = sub_22F740B70();
        v91 = sub_22F7415C0();
        if (!os_log_type_enabled(v76, v91))
        {
          goto LABEL_47;
        }

        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_22F0FC000, v76, v91, "No moment nodes found.", v92, 2u);
        v81 = v92;
        goto LABEL_46;
      }

      v73 = v103 / v72;
      if (v73 < 0.75)
      {

        if (qword_2810A9418 != -1)
        {
          swift_once();
        }

        v74 = sub_22F740B90();
        __swift_project_value_buffer(v74, qword_2810B4D00);
        v75 = v100;
        v76 = sub_22F740B70();
        v77 = sub_22F7415F0();

        if (!os_log_type_enabled(v76, v77))
        {
          goto LABEL_47;
        }

        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138412546;
        v80 = [v75 elementIdentifiers];
        *(v78 + 4) = v80;
        *v79 = v80;
        *(v78 + 12) = 2048;
        *(v78 + 14) = v73;
        _os_log_impl(&dword_22F0FC000, v76, v77, "Not enough moments for pet %@! Only %f overlap.", v78, 0x16u);
        sub_22F120ADC(v79, &qword_27DAB07D0, &qword_22F779400);
        MEMORY[0x2319033A0](v79, -1, -1);
        v81 = v78;
LABEL_46:
        MEMORY[0x2319033A0](v81, -1, -1);
LABEL_47:

        v104(v107, v18);
        return;
      }
    }

    v82 = [v105 name];
    v93 = sub_22F740E20();

    [objc_opt_self() detectionTypeFromPetSpecies_];
    [v105 isFavorite];
    v83 = v107;
    v106 = v70;
    v84 = [v100 ownerNodes];
    [v84 containsMeNode];

    v67(v101, v83, v18);
    v85 = v102;
    sub_22F740030();
    v86 = v99;
    v87 = *v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *v86;
    *v86 = 0x8000000000000000;
    sub_22F131CC0(v103, v85, isUniquelyReferenced_nonNull_native);

    (*(v97 + 8))(v85, v98);
    v104(v83, v18);
    v89 = *v86;
    *v86 = v108;

    return;
  }

  __break(1u);
LABEL_13:
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v47 = sub_22F740B90();
  __swift_project_value_buffer(v47, qword_2810B4D00);
  v48 = a1;
  v107 = sub_22F740B70();
  v49 = sub_22F7415C0();

  if (os_log_type_enabled(v107, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    v52 = [v48 elementIdentifiers];
    *(v50 + 4) = v52;
    *v51 = v52;
    _os_log_impl(&dword_22F0FC000, v107, v49, "Couldn't fetch petNode for identifier %@.", v50, 0xCu);
    sub_22F120ADC(v51, &qword_27DAB07D0, &qword_22F779400);
    MEMORY[0x2319033A0](v51, -1, -1);
    MEMORY[0x2319033A0](v50, -1, -1);
  }

  v53 = v107;
LABEL_24:
}

uint64_t sub_22F2B0358(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22F742000();
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
        sub_22F7402E0();
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22F7402E0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F2B0CD8(v8, v9, a1, v4);
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
    return sub_22F2B05C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F2B0484(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F2B1894(v8, v9, a1, v4);
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
    return sub_22F2B08D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F2B05C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F7402E0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_22F7402D0();
      v28 = v27;
      if (v26 == sub_22F7402D0() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_22F742040();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F2B08D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v45 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v45 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  result = MEMORY[0x28223BE20](v16);
  v56 = &v45 - v21;
  v47 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v20 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v57 = -v23;
    v58 = v22;
    v25 = a1 - a3;
    v46 = v23;
    v26 = v22 + v23 * a3;
    v52 = v18;
    v53 = v8;
LABEL_6:
    v50 = v24;
    v51 = a3;
    v48 = v26;
    v49 = v25;
    v27 = v56;
    while (1)
    {
      sub_22F13BA9C(v26, v27, &qword_27DAB0730, &unk_22F771740);
      sub_22F13BA9C(v24, v18, &qword_27DAB0730, &unk_22F771740);
      v28 = *(v8 + 48);
      v29 = *(v27 + v28);
      v30 = *&v18[v28];
      if (v29 == v30)
      {
        v31 = v27;
        v32 = v54;
        sub_22F13BA9C(v31, v54, &qword_27DAB0730, &unk_22F771740);
        v61 = sub_22F740040();
        v60 = v33;
        v34 = sub_22F740050();
        v35 = *(*(v34 - 8) + 8);
        v35(v32, v34);
        v36 = v55;
        sub_22F13BA9C(v18, v55, &qword_27DAB0730, &unk_22F771740);
        v37 = sub_22F740040();
        v39 = v38;
        v40 = v34;
        v41 = v60;
        v35(v36, v40);
        if (v37 == v61 && v39 == v41)
        {

          v18 = v52;
          sub_22F120ADC(v52, &qword_27DAB0730, &unk_22F771740);
          result = sub_22F120ADC(v56, &qword_27DAB0730, &unk_22F771740);
          v8 = v53;
LABEL_5:
          a3 = v51 + 1;
          v24 = v50 + v46;
          v25 = v49 - 1;
          v26 = v48 + v46;
          if (v51 + 1 == v47)
          {
            return result;
          }

          goto LABEL_6;
        }

        v42 = sub_22F742040();

        v18 = v52;
        v8 = v53;
        v27 = v56;
      }

      else
      {
        v42 = v30 < v29;
      }

      sub_22F120ADC(v18, &qword_27DAB0730, &unk_22F771740);
      result = sub_22F120ADC(v27, &qword_27DAB0730, &unk_22F771740);
      if ((v42 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      v43 = v59;
      sub_22F1207AC(v26, v59, &qword_27DAB0730, &unk_22F771740);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22F1207AC(v43, v24, &qword_27DAB0730, &unk_22F771740);
      v24 += v57;
      v26 += v57;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F2B0CD8(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_22F7402E0();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_22F2B27F0(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22F3F5F98(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_22F3F5F0C(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_22F3F5F98(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_22F7402D0();
      v38 = v37;
      v39 = sub_22F7402D0();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_22F742040();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_22F7402D0();
        v53 = v52;
        if (v51 == sub_22F7402D0() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_22F742040();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_22F13D970((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_22F2B27F0(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22F3F5F98(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_22F3F5F0C(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_22F7402D0();
    v70 = v69;
    if (v5 == sub_22F7402D0() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_22F742040();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_22F2B1894(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v176 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  v189 = *(v9 - 8);
  v10 = *(v189 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v198 = &v168 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v192 = &v168 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v191 = &v168 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v168 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v168 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v182 = &v168 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v181 = &v168 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v184 = &v168 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v171 = &v168 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v170 = &v168 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  result = MEMORY[0x28223BE20](v35);
  v190 = a3;
  v41 = *(a3 + 8);
  if (v41 < 1)
  {
    v178 = MEMORY[0x277D84F90];
LABEL_117:
    a3 = *v176;
    if (!*v176)
    {
      goto LABEL_155;
    }

    v5 = v178;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_119:
      v201 = v5;
      v164 = *(v5 + 2);
      if (v164 >= 2)
      {
        while (*v190)
        {
          v165 = *&v5[16 * v164];
          v166 = *&v5[16 * v164 + 24];
          sub_22F2B2E8C(&(*v190)[*(v189 + 72) * v165], &(*v190)[*(v189 + 72) * *&v5[16 * v164 + 16]], &(*v190)[*(v189 + 72) * v166], a3);
          if (v6)
          {
          }

          if (v166 < v165)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_22F3F5F98(v5);
          }

          if (v164 - 2 >= *(v5 + 2))
          {
            goto LABEL_143;
          }

          v167 = &v5[16 * v164];
          *v167 = v165;
          *(v167 + 1) = v166;
          v201 = v5;
          result = sub_22F3F5F0C(v164 - 1);
          v5 = v201;
          v164 = *(v201 + 2);
          if (v164 <= 1)
          {
          }
        }

        goto LABEL_153;
      }
    }

LABEL_149:
    result = sub_22F3F5F98(v5);
    v5 = result;
    goto LABEL_119;
  }

  v172 = &v168 - v37;
  v173 = v40;
  v183 = v39;
  v42 = 0;
  v178 = MEMORY[0x277D84F90];
  v175 = a4;
  v195 = result;
  v169 = v38;
  v193 = v20;
  v194 = v23;
  v43 = a4;
  while (1)
  {
    v44 = v42;
    v45 = v42 + 1;
    if (v42 + 1 >= v41)
    {
      v64 = v195;
    }

    else
    {
      v186 = v41;
      v174 = v6;
      v46 = *v190;
      v47 = *(v189 + 72);
      v48 = v172;
      sub_22F13BA9C(&(*v190)[v47 * v45], v172, &qword_27DAB0730, &unk_22F771740);
      v177 = v42;
      v196 = v47;
      v49 = v173;
      sub_22F13BA9C(&v46[v47 * v42], v173, &qword_27DAB0730, &unk_22F771740);
      v50 = *(v195 + 48);
      v51 = *(v48 + v50);
      v52 = *(v49 + v50);
      v53 = v42 + 1;
      if (v51 == v52)
      {
        v188 = v42 + 1;
        v54 = v48;
        v55 = v170;
        sub_22F13BA9C(v54, v170, &qword_27DAB0730, &unk_22F771740);
        v200 = sub_22F740040();
        v57 = v56;
        v58 = sub_22F740050();
        v59 = *(*(v58 - 8) + 8);
        v59(v55, v58);
        v60 = v171;
        sub_22F13BA9C(v49, v171, &qword_27DAB0730, &unk_22F771740);
        v61 = sub_22F740040();
        v63 = v62;
        v59(v60, v58);
        if (v61 == v200 && v63 == v57)
        {

          LODWORD(v187) = 0;
        }

        else
        {
          LODWORD(v187) = sub_22F742040();
        }

        v20 = v193;
        v49 = v173;
        v48 = v172;
        v53 = v188;
      }

      else
      {
        LODWORD(v187) = v52 < v51;
      }

      sub_22F120ADC(v49, &qword_27DAB0730, &unk_22F771740);
      result = sub_22F120ADC(v48, &qword_27DAB0730, &unk_22F771740);
      v65 = v177 + 2;
      v66 = v196 * (v177 + 2);
      v67 = &v46[v66];
      v68 = v196 * v53;
      v69 = &v46[v196 * v53];
      v70 = v183;
      a3 = v184;
      do
      {
        v73 = v65;
        v5 = v53;
        v75 = v68;
        v74 = v66;
        v200 = v65;
        if (v65 >= v186)
        {
          break;
        }

        v197 = v53;
        v199 = v66;
        sub_22F13BA9C(v67, a3, &qword_27DAB0730, &unk_22F771740);
        sub_22F13BA9C(v69, v70, &qword_27DAB0730, &unk_22F771740);
        v76 = *(v195 + 48);
        v77 = *(a3 + v76);
        v78 = *(v70 + v76);
        if (v77 == v78)
        {
          v79 = v181;
          sub_22F13BA9C(a3, v181, &qword_27DAB0730, &unk_22F771740);
          v188 = sub_22F740040();
          v185 = v80;
          v81 = sub_22F740050();
          v82 = *(*(v81 - 8) + 8);
          v82(v79, v81);
          v83 = v182;
          sub_22F13BA9C(v70, v182, &qword_27DAB0730, &unk_22F771740);
          v84 = sub_22F740040();
          v86 = v85;
          v82(v83, v81);
          if (v84 != v188)
          {
            goto LABEL_21;
          }

          if (v86 == v185)
          {

            v71 = 0;
          }

          else
          {
LABEL_21:
            v71 = sub_22F742040();
          }

          v20 = v193;
          v70 = v183;
          a3 = v184;
        }

        else
        {
          v71 = v78 < v77;
        }

        sub_22F120ADC(v70, &qword_27DAB0730, &unk_22F771740);
        result = sub_22F120ADC(a3, &qword_27DAB0730, &unk_22F771740);
        v72 = v187 ^ v71;
        v74 = v199;
        v73 = v200;
        v65 = v200 + 1;
        v5 = v197;
        v67 += v196;
        v69 += v196;
        v53 = (v197 + 1);
        v68 = v75 + v196;
        v66 = v199 + v196;
      }

      while ((v72 & 1) == 0);
      v6 = v174;
      if (v187)
      {
        v44 = v177;
        v87 = v169;
        if (v73 < v177)
        {
          goto LABEL_146;
        }

        v64 = v195;
        if (v177 >= v73)
        {
          v45 = v73;
          v23 = v194;
        }

        else
        {
          v88 = v177;
          v89 = v177 * v196;
          do
          {
            if (v88 != v5)
            {
              a3 = v6;
              v91 = *v190;
              if (!*v190)
              {
                goto LABEL_152;
              }

              v92 = v74;
              sub_22F1207AC(&v91[v89], v87, &qword_27DAB0730, &unk_22F771740);
              if (v89 < v75 || &v91[v89] >= &v91[v92])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v89 != v75)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_22F1207AC(v87, &v91[v75], &qword_27DAB0730, &unk_22F771740);
              v6 = a3;
              v74 = v92;
            }

            ++v88;
            v75 -= v196;
            v74 -= v196;
            v89 += v196;
          }

          while (v88 < v5--);
          v45 = v200;
          v23 = v194;
          v64 = v195;
          v20 = v193;
          v44 = v177;
        }

        v43 = v175;
      }

      else
      {
        v45 = v73;
        v43 = v175;
        v23 = v194;
        v64 = v195;
        v44 = v177;
      }
    }

    v93 = v190[1];
    if (v45 >= v93)
    {
      v42 = v45;
      goto LABEL_66;
    }

    v188 = v45;
    if (__OFSUB__(v45, v44))
    {
      goto LABEL_145;
    }

    if (v45 - v44 >= v43)
    {
      v42 = v188;
      goto LABEL_66;
    }

    if (__OFADD__(v44, v43))
    {
      goto LABEL_147;
    }

    if (v44 + v43 >= v93)
    {
      v94 = v93;
    }

    else
    {
      v94 = v44 + v43;
    }

    v5 = &qword_27DAB0730;
    if (v94 < v44)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v42 = v188;
    if (v188 == v94)
    {
      goto LABEL_66;
    }

    v95 = v44;
    v96 = v64;
    v174 = v6;
    v97 = *v190;
    v98 = *(v189 + 72);
    v99 = &(*v190)[v98 * (v188 - 1)];
    v196 = -v98;
    v177 = v95;
    a3 = v95 - v188;
    v197 = v97;
    v179 = v98;
    v100 = &v97[v188 * v98];
    v180 = v94;
LABEL_51:
    v185 = v100;
    v186 = a3;
    v187 = v99;
LABEL_52:
    sub_22F13BA9C(v100, v23, &qword_27DAB0730, &unk_22F771740);
    sub_22F13BA9C(v99, v20, &qword_27DAB0730, &unk_22F771740);
    v101 = *(v96 + 48);
    v102 = *&v23[v101];
    v103 = *&v20[v101];
    if (v102 != v103)
    {
      break;
    }

    v104 = v191;
    sub_22F13BA9C(v23, v191, &qword_27DAB0730, &unk_22F771740);
    v105 = sub_22F740040();
    v199 = v106;
    v200 = v105;
    v107 = sub_22F740050();
    v108 = v20;
    v109 = *(*(v107 - 8) + 8);
    v109(v104, v107);
    v110 = v192;
    sub_22F13BA9C(v108, v192, &qword_27DAB0730, &unk_22F771740);
    v111 = sub_22F740040();
    v113 = v112;
    v114 = v110;
    v115 = v199;
    v109(v114, v107);
    if (v111 != v200 || v113 != v115)
    {
      v116 = sub_22F742040();

      v23 = v194;
      v96 = v195;
      v20 = v193;
      goto LABEL_57;
    }

    v20 = v193;
    sub_22F120ADC(v193, &qword_27DAB0730, &unk_22F771740);
    v23 = v194;
    sub_22F120ADC(v194, &qword_27DAB0730, &unk_22F771740);
    v96 = v195;
LABEL_50:
    v99 = v187 + v179;
    a3 = v186 - 1;
    v100 = v185 + v179;
    if (++v188 != v180)
    {
      goto LABEL_51;
    }

    v42 = v180;
    v6 = v174;
    v44 = v177;
LABEL_66:
    v5 = v178;
    if (v42 < v44)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v5 + 2) + 1, 1, v5);
      v5 = result;
    }

    a3 = *(v5 + 2);
    v119 = *(v5 + 3);
    v120 = a3 + 1;
    if (a3 >= v119 >> 1)
    {
      result = sub_22F13D970((v119 > 1), a3 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 2) = v120;
    v121 = &v5[16 * a3];
    *(v121 + 4) = v44;
    *(v121 + 5) = v42;
    v122 = *v176;
    if (!*v176)
    {
      goto LABEL_154;
    }

    if (a3)
    {
      while (2)
      {
        v123 = v120 - 1;
        if (v120 >= 4)
        {
          v128 = &v5[16 * v120 + 32];
          v129 = *(v128 - 64);
          v130 = *(v128 - 56);
          v134 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          if (v134)
          {
            goto LABEL_131;
          }

          v133 = *(v128 - 48);
          v132 = *(v128 - 40);
          v134 = __OFSUB__(v132, v133);
          v126 = v132 - v133;
          v127 = v134;
          if (v134)
          {
            goto LABEL_132;
          }

          v135 = &v5[16 * v120];
          v137 = *v135;
          v136 = *(v135 + 1);
          v134 = __OFSUB__(v136, v137);
          v138 = v136 - v137;
          if (v134)
          {
            goto LABEL_134;
          }

          v134 = __OFADD__(v126, v138);
          v139 = v126 + v138;
          if (v134)
          {
            goto LABEL_137;
          }

          if (v139 >= v131)
          {
            v157 = &v5[16 * v123 + 32];
            v159 = *v157;
            v158 = *(v157 + 1);
            v134 = __OFSUB__(v158, v159);
            v160 = v158 - v159;
            if (v134)
            {
              goto LABEL_141;
            }

            if (v126 < v160)
            {
              v123 = v120 - 2;
            }
          }

          else
          {
LABEL_86:
            if (v127)
            {
              goto LABEL_133;
            }

            v140 = &v5[16 * v120];
            v142 = *v140;
            v141 = *(v140 + 1);
            v143 = __OFSUB__(v141, v142);
            v144 = v141 - v142;
            v145 = v143;
            if (v143)
            {
              goto LABEL_136;
            }

            v146 = &v5[16 * v123 + 32];
            v148 = *v146;
            v147 = *(v146 + 1);
            v134 = __OFSUB__(v147, v148);
            v149 = v147 - v148;
            if (v134)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v144, v149))
            {
              goto LABEL_140;
            }

            if (v144 + v149 < v126)
            {
              goto LABEL_100;
            }

            if (v126 < v149)
            {
              v123 = v120 - 2;
            }
          }
        }

        else
        {
          if (v120 == 3)
          {
            v124 = *(v5 + 4);
            v125 = *(v5 + 5);
            v134 = __OFSUB__(v125, v124);
            v126 = v125 - v124;
            v127 = v134;
            goto LABEL_86;
          }

          v150 = &v5[16 * v120];
          v152 = *v150;
          v151 = *(v150 + 1);
          v134 = __OFSUB__(v151, v152);
          v144 = v151 - v152;
          v145 = v134;
LABEL_100:
          if (v145)
          {
            goto LABEL_135;
          }

          v153 = &v5[16 * v123];
          v155 = *(v153 + 4);
          v154 = *(v153 + 5);
          v134 = __OFSUB__(v154, v155);
          v156 = v154 - v155;
          if (v134)
          {
            goto LABEL_138;
          }

          if (v156 < v144)
          {
            break;
          }
        }

        a3 = v123 - 1;
        if (v123 - 1 >= v120)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v190)
        {
          goto LABEL_151;
        }

        v161 = *&v5[16 * a3 + 32];
        v162 = *&v5[16 * v123 + 40];
        sub_22F2B2E8C(&(*v190)[*(v189 + 72) * v161], &(*v190)[*(v189 + 72) * *&v5[16 * v123 + 32]], &(*v190)[*(v189 + 72) * v162], v122);
        if (v6)
        {
        }

        if (v162 < v161)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_22F3F5F98(v5);
        }

        if (a3 >= *(v5 + 2))
        {
          goto LABEL_130;
        }

        v163 = &v5[16 * a3];
        *(v163 + 4) = v161;
        *(v163 + 5) = v162;
        v201 = v5;
        result = sub_22F3F5F0C(v123);
        v5 = v201;
        v120 = *(v201 + 2);
        v23 = v194;
        if (v120 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v178 = v5;
    v41 = v190[1];
    v43 = v175;
    if (v42 >= v41)
    {
      goto LABEL_117;
    }
  }

  v116 = v103 < v102;
LABEL_57:
  sub_22F120ADC(v20, &qword_27DAB0730, &unk_22F771740);
  result = sub_22F120ADC(v23, &qword_27DAB0730, &unk_22F771740);
  if ((v116 & 1) == 0)
  {
    goto LABEL_50;
  }

  if (v197)
  {
    v117 = v198;
    sub_22F1207AC(v100, v198, &qword_27DAB0730, &unk_22F771740);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F1207AC(v117, v99, &qword_27DAB0730, &unk_22F771740);
    v99 += v196;
    v100 += v196;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_22F2B27F0(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_22F7402E0();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_22F7402D0();
            v53 = v52;
            if (v51 != sub_22F7402D0())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_22F742040();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_22F7402D0();
        v33 = v32;
        if (v31 == sub_22F7402D0() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_22F742040();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_22F3B666C(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_22F2B2E8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v80 = &v78 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v82 = &v78 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v78 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v88 = &v78 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v87 = &v78 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v78 - v24;
  result = MEMORY[0x28223BE20](v23);
  v28 = &v78 - v27;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_74;
  }

  v31 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_75;
  }

  v90 = a3;
  v32 = (a2 - a1) / v30;
  v97 = a1;
  v96 = a4;
  v93 = v8;
  if (v32 >= v31 / v30)
  {
    v34 = v31 / v30 * v30;
    if (a4 < a2 || a2 + v34 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = a4 + v34;
    if (v34 >= 1)
    {
      v52 = -v30;
      v53 = a4 + v34;
      v54 = v90;
      v55 = v82;
      v94 = v18;
      v91 = a4;
      v87 = -v30;
      do
      {
        v79 = v51;
        v56 = a2;
        a2 += v52;
        v92 = a2;
        v86 = v56;
        while (1)
        {
          if (v56 <= a1)
          {
            v97 = v56;
            v51 = v79;
            goto LABEL_71;
          }

          v89 = v54;
          v90 = v53;
          v85 = v51;
          v58 = v87;
          v88 = v53 + v87;
          sub_22F13BA9C(v53 + v87, v18, &qword_27DAB0730, &unk_22F771740);
          sub_22F13BA9C(a2, v55, &qword_27DAB0730, &unk_22F771740);
          v59 = *(v93 + 48);
          v60 = *&v18[v59];
          v61 = *(v55 + v59);
          if (v60 == v61)
          {
            v62 = v80;
            sub_22F13BA9C(v18, v80, &qword_27DAB0730, &unk_22F771740);
            v63 = sub_22F740040();
            v83 = v64;
            v84 = v63;
            v65 = sub_22F740050();
            v66 = *(*(v65 - 8) + 8);
            v66(v62, v65);
            v67 = v81;
            sub_22F13BA9C(v55, v81, &qword_27DAB0730, &unk_22F771740);
            v68 = sub_22F740040();
            v70 = v69;
            v71 = v67;
            v72 = v83;
            v66(v71, v65);
            if (v68 != v84)
            {
              goto LABEL_55;
            }

            if (v70 == v72)
            {

              v73 = 0;
            }

            else
            {
LABEL_55:
              v73 = sub_22F742040();
            }

            a4 = v91;
            a2 = v92;
            v74 = v82;
            v58 = v87;
          }

          else
          {
            v73 = v61 < v60;
            v74 = v55;
          }

          v75 = v89;
          v54 = v89 + v58;
          v55 = v74;
          sub_22F120ADC(v74, &qword_27DAB0730, &unk_22F771740);
          sub_22F120ADC(v94, &qword_27DAB0730, &unk_22F771740);
          if (v73)
          {
            break;
          }

          v76 = v88;
          v51 = v88;
          if (v75 < v90 || v54 >= v90)
          {
            v57 = v88;
            swift_arrayInitWithTakeFrontToBack();
            v51 = v57;
            v18 = v94;
          }

          else
          {
            v18 = v94;
            if (v75 != v90)
            {
              v77 = v88;
              swift_arrayInitWithTakeBackToFront();
              v51 = v77;
            }
          }

          v53 = v51;
          v56 = v86;
          if (v76 <= a4)
          {
            v97 = v86;
            goto LABEL_71;
          }
        }

        if (v75 < v86 || v54 >= v86)
        {
          swift_arrayInitWithTakeFrontToBack();
          v18 = v94;
        }

        else
        {
          v18 = v94;
          if (v75 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v53 = v90;
        v51 = v85;
        v52 = v87;
      }

      while (v90 > a4);
    }

    v97 = a2;
LABEL_71:
    v95 = v51;
  }

  else
  {
    v33 = v32 * v30;
    if (a4 < a1 || a1 + v33 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v89 = a4 + v33;
    v95 = a4 + v33;
    if (v33 >= 1 && a2 < v90)
    {
      v85 = v25;
      v86 = v30;
      v84 = v28;
      do
      {
        v94 = a1;
        sub_22F13BA9C(a2, v28, &qword_27DAB0730, &unk_22F771740);
        sub_22F13BA9C(a4, v25, &qword_27DAB0730, &unk_22F771740);
        v36 = *(v8 + 48);
        v37 = *&v28[v36];
        v38 = *&v25[v36];
        if (v37 == v38)
        {
          v91 = a4;
          v92 = a2;
          v39 = v87;
          sub_22F13BA9C(v28, v87, &qword_27DAB0730, &unk_22F771740);
          v40 = sub_22F740040();
          v42 = v41;
          v43 = sub_22F740050();
          v44 = *(*(v43 - 8) + 8);
          v44(v39, v43);
          v45 = v88;
          sub_22F13BA9C(v25, v88, &qword_27DAB0730, &unk_22F771740);
          v46 = sub_22F740040();
          v48 = v47;
          v44(v45, v43);
          if (v46 == v40 && v48 == v42)
          {

            v25 = v85;
            sub_22F120ADC(v85, &qword_27DAB0730, &unk_22F771740);
            v28 = v84;
            sub_22F120ADC(v84, &qword_27DAB0730, &unk_22F771740);
            a2 = v92;
            v8 = v93;
            a4 = v91;
            v30 = v86;
            goto LABEL_33;
          }

          v49 = sub_22F742040();

          a2 = v92;
          v8 = v93;
          a4 = v91;
          v25 = v85;
          v30 = v86;
          v28 = v84;
        }

        else
        {
          v49 = v38 < v37;
        }

        sub_22F120ADC(v25, &qword_27DAB0730, &unk_22F771740);
        sub_22F120ADC(v28, &qword_27DAB0730, &unk_22F771740);
        if (v49)
        {
          v50 = v94;
          if (v94 < a2 || v94 >= a2 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
          }

          else
          {
            if (v94 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }

          goto LABEL_40;
        }

LABEL_33:
        v50 = v94;
        if (v94 < a4 || v94 >= a4 + v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v94 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v96 = a4 + v30;
        a4 += v30;
LABEL_40:
        a1 = v50 + v30;
        v97 = a1;
      }

      while (a4 < v89 && a2 < v90);
    }
  }

  sub_22F3B6684(&v97, &v96, &v95);
  return 1;
}

unint64_t *sub_22F2B3718(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22F2B37B4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22F2B37B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v43 = a4;
  v32 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3148, &qword_22F782458);
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v30 - v6;
  v41 = sub_22F7402E0();
  v7 = *(*(v41 - 8) + 64);
  result = MEMORY[0x28223BE20](v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v44 = a3;
  v12 = *(a3 + 64);
  v33 = 0;
  v34 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v36 = v9 + 16;
  v37 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer;
  v40 = v9;
  v35 = v9 + 8;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v45 = (v15 - 1) & v15;
LABEL_11:
    v46 = v17 | (v11 << 6);
    v20 = v44;
    v21 = v40;
    v22 = v41;
    v23 = v46;
    v24 = *(v40 + 16);
    v25 = v38;
    v24(v38, v44[6] + *(v40 + 72) * v46, v41);
    v26 = *(v20[7] + 8 * v23);
    v27 = v39;
    v24(v39, v25, v22);
    *(v27 + *(v42 + 48)) = v26;
    v28 = *(v43 + v37);
    LOBYTE(v28) = sub_22F7400F0();
    sub_22F120ADC(v27, &qword_27DAB3148, &qword_22F782458);
    result = (*(v21 + 8))(v25, v22);
    v15 = v45;
    if (v28)
    {
      *(v32 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_22F1B0FA0(v32, v31, v33, v44);
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      return sub_22F1B0FA0(v32, v31, v33, v44);
    }

    v19 = *(v34 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v45 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2B3AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_22F2B3718(v14, v8, a1, a2);
      MEMORY[0x2319033A0](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_22F2B37B4((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F2B3CAC()
{
  result = qword_2810A9028;
  if (!qword_2810A9028)
  {
    sub_22F120634(255, &qword_2810A9030, off_27887B328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9028);
  }

  return result;
}

float sub_22F2B3D1C(void *a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v4 = *(v2 + OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID);

  v5 = [a1 uid];
  v6 = sub_22F740E20();
  v8 = v7;

  if (*(v4 + 16))
  {
    v9 = sub_22F1229E8(v6, v8);
    v11 = v10;

    v12 = 0.0;
    if (v11)
    {
      v12 = *(*(v4 + 56) + 4 * v9);
    }
  }

  else
  {

    v12 = 0.0;
  }

  return v12;
}

uint64_t sub_22F2B3DF0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

float sub_22F2B3E80(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  sub_22F1AED3C(a1, a2, a3);
  v9 = v8;
  swift_endAccess();
  return v9;
}

uint64_t sub_22F2B3F0C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F742040() & 1;
  }
}

float sub_22F2B3F64(void *a1, uint64_t a2, uint64_t a3)
{
  v75 = sub_22F740280();
  v6 = *(v75 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = 0;
  v76 = sub_22F740920();
  v9 = *(v76 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v62 - v13;
  v62[0] = a2;
  v62[1] = a3;
  sub_22F7408F0();
  v67 = v14;
  v15 = sub_22F740900();
  v16 = *(v15 + 16);
  v66 = v9;
  if (v16)
  {
    v65 = a1;
    v79 = MEMORY[0x277D84F90];
    sub_22F146454(0, v16, 0);
    v17 = v79;
    v77 = *MEMORY[0x277D0A978];
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v71 = v19;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v64 = v15;
    v21 = v15 + v20;
    v22 = *(v18 + 56);
    v69 = (v9 + 8);
    v70 = v22;
    v68 = (v18 - 8);
    v72 = v18;
    v24 = v73;
    v23 = v74;
    do
    {
      v78 = v16;
      v25 = v75;
      v71(v23, v21, v75);
      sub_22F7408E0();
      v26 = sub_22F740E20();
      v28 = v27;
      v29 = sub_22F7408B0();
      v31 = v30;
      v81 = v26;
      v82 = v28;

      MEMORY[0x231900B10](v29, v31);

      v32 = v81;
      v33 = v82;
      (*v69)(v24, v76);
      (*v68)(v23, v25);
      v79 = v17;
      v35 = *(v17 + 16);
      v34 = *(v17 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22F146454((v34 > 1), v35 + 1, 1);
        v17 = v79;
      }

      *(v17 + 16) = v35 + 1;
      v36 = v17 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      v21 += v70;
      v16 = v78 - 1;
    }

    while (v78 != 1);
    v75 = v17;

    a1 = v65;
  }

  else
  {

    v77 = *MEMORY[0x277D0A978];
    v75 = MEMORY[0x277D84F90];
  }

  v37 = sub_22F7408C0();
  v39 = 0x800000022F7985B0;
  v40 = 0xD000000000000012;
  if (v38)
  {
    v40 = v37;
  }

  v74 = v40;
  if (v38)
  {
    v39 = v38;
  }

  v78 = v39;
  v41 = [a1 tagIDs];
  v42 = sub_22F741420();

  v43 = 0;
  v44 = v42 + 56;
  v45 = v42;
  v46 = 1 << *(v42 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v42 + 56);
  v49 = (v46 + 63) >> 6;
  v50 = 1.0e-14;
  while (v48)
  {
    v51 = v43;
LABEL_20:
    v52 = (*(v45 + 48) + ((v51 << 10) | (16 * __clz(__rbit64(v48)))));
    v54 = *v52;
    v53 = v52[1];
    v48 &= v48 - 1;
    v81 = *v52;
    v82 = v53;
    v79 = sub_22F740E20();
    v80 = v55;
    sub_22F160DE4();

    v56 = sub_22F741910();

    if (v56)
    {
      if (sub_22F740FF0())
      {
        goto LABEL_31;
      }

      sub_22F740910();
      v57 = sub_22F740FF0();

      if (v57)
      {
        goto LABEL_31;
      }

      v58 = sub_22F740FF0();
      if (v58)
      {
        goto LABEL_31;
      }

      v81 = v54;
      v82 = v53;
      MEMORY[0x28223BE20](v58);
      v62[-2] = &v81;
      v59 = v63;
      v60 = sub_22F1C0E04(sub_22F1B1EA8, &v62[-4], v75);
      v63 = v59;

      if (v60)
      {
        v50 = 0.8;
      }

      v43 = v51;
    }

    else
    {

      v43 = v51;
    }
  }

  while (1)
  {
    v51 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v51 >= v49)
    {
      (*(v66 + 8))(v67, v76);

      return v50;
    }

    v48 = *(v44 + 8 * v51);
    ++v43;
    if (v48)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_31:

  (*(v66 + 8))(v67, v76);
  return 1.0;
}

void sub_22F2B459C(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v34 = sub_22F73EFE0();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  *&v6 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v33 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 tagIDs];
  v9 = sub_22F741420();

  v10 = 0;
  v11 = *(v9 + 56);
  v31[0] = v9 + 56;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v31[1] = *MEMORY[0x277D0A970];
  v32 = (v4 + 8);
  v37 = v9;
  while (v14)
  {
LABEL_10:
    v17 = (*(v9 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v14)))));
    v18 = *v17;
    v19 = v17[1];
    v14 &= v14 - 1;
    v42 = *v17;
    v43 = v19;
    v40 = sub_22F740E20();
    v41 = v20;
    sub_22F160DE4();

    v21 = sub_22F741910();

    if (v21)
    {
      v42 = v18;
      v43 = v19;
      v40 = sub_22F740E20();
      v41 = v22;
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_22F7418E0();

      v23 = sub_22F740EA0();
      v25 = v24;

      v42 = v35;
      v43 = v36;
      v26 = v33;
      sub_22F73EFD0();
      sub_22F7418D0();
      (*v32)(v26, v34);
      v27 = sub_22F740EA0();
      v29 = v28;

      v42 = v23;
      v43 = v25;
      v40 = v27;
      v41 = v29;
      if (sub_22F741910())
      {

LABEL_16:

        return;
      }

      v42 = v27;
      v43 = v29;
      v40 = v23;
      v41 = v25;
      v30 = sub_22F741910();

      v9 = v37;
      if (v30)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v9 = v37;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      goto LABEL_16;
    }

    v14 = *(v31[0] + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t sub_22F2B493C(char a1)
{
  result = 0x7465737341;
  switch(a1)
  {
    case 1:
      result = 0x6C6F437465737341;
      break;
    case 2:
      result = 0x6E6F73726550;
      break;
    case 3:
      result = 7628112;
      break;
    case 4:
      result = 0x6D75626C41;
      break;
    case 5:
      result = 0x656E656353;
      break;
    case 6:
      result = 0x687361486F6547;
      break;
    case 7:
      result = 0x73756C4365746144;
      break;
    case 8:
      result = 1885958740;
      break;
    case 9:
      result = 0x657469726F766146;
      break;
    case 10:
      result = 0x746163696C707544;
      break;
    case 11:
      result = 1701670728;
      break;
    case 12:
      result = 7954756;
      break;
    case 13:
      result = 0x7961646B656557;
      break;
    case 14:
      result = 0x68746E6F4DLL;
      break;
    case 15:
      result = 0x72657472617551;
      break;
    case 16:
      result = 1918985561;
      break;
    case 17:
      result = 2037672259;
      break;
    case 18:
      result = 0x6574617453;
      break;
    case 19:
      result = 0x7972746E756F43;
      break;
    case 20:
      result = 0x764563696C627550;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0xD000000000000016;
      break;
    case 23:
      result = 0x656D726F66726550;
      break;
    case 24:
      result = 0x7373656E69737542;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F2B4BB8()
{
  v1 = [v0 properties];
  sub_22F20B0E0();
  v2 = sub_22F740CA0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3170, &qword_22F770B68);
  v3 = sub_22F741DC0();
  v4 = v3;
  v5 = 0;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v26 = v3 + 64;
  v27 = v2;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v27 + 56) + 8 * v14);

      v19 = [v18 kgPropertyValue];
      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v20 = (v4[6] + 16 * v14);
      *v20 = v16;
      v20[1] = v17;
      *(v4[7] + 8 * v14) = v19;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v4[2] = v23;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v24 = sub_22F23ED7C(v4);

        return v24;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  swift_getErrorValue();
  sub_22F7420F0();
  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F2B4E04(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22F2B493C(*a1);
  v5 = v4;
  if (v3 == sub_22F2B493C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22F742040();
  }

  return v8 & 1;
}

uint64_t sub_22F2B4E8C()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F2B493C(v1);
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F2B4EF0()
{
  sub_22F2B493C(*v0);
  sub_22F740D60();
}

uint64_t sub_22F2B4F44()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F2B493C(v1);
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F2B4FA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22F2B5424();
  *a2 = result;
  return result;
}

unint64_t sub_22F2B4FD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22F2B493C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_22F2B50F8()
{
  v21 = sub_22F2B4BB8();
  v1 = *(v0 + OBJC_IVAR____TtC11PhotosGraph4Node_properties);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3170, &qword_22F770B68);
  result = sub_22F741DC0();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v22 = (result + 8);
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v12 = v9 | (v4 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v1 + 56) + 8 * v12);

      result = [v16 kgPropertyValue];
      *&v22[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      v17 = (v3[6] + 16 * v12);
      *v17 = v14;
      v17[1] = v15;
      *(v3[7] + 8 * v12) = result;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v21;
      }

      v11 = *(v1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_22F2B5380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Node();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F2B5424()
{
  v0 = sub_22F742080();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

id sub_22F2B5478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    sub_22F146454(0, v1, 0);
    v2 = a1;
    v3 = v26;
    v4 = 0x800000022F78E800;
    v5 = 0x800000022F78E7D0;
    v6 = 0x800000022F78E7B0;
    v7 = 32;
    do
    {
      v8 = 0xE500000000000000;
      v9 = 0x7465737341;
      switch(*(v2 + v7))
      {
        case 1:
          v8 = 0xEF6E6F697463656CLL;
          v9 = 0x6C6F437465737341;
          break;
        case 2:
          v8 = 0xE600000000000000;
          v9 = 0x6E6F73726550;
          break;
        case 3:
          v8 = 0xE300000000000000;
          v9 = 7628112;
          break;
        case 4:
          v9 = 0x6D75626C41;
          break;
        case 5:
          v9 = 0x656E656353;
          break;
        case 6:
          v8 = 0xE700000000000000;
          v9 = 0x687361486F6547;
          break;
        case 7:
          v8 = 0xEB00000000726574;
          v9 = 0x73756C4365746144;
          break;
        case 8:
          v8 = 0xE400000000000000;
          v9 = 1885958740;
          break;
        case 9:
          v8 = 0xE900000000000073;
          v9 = 0x657469726F766146;
          break;
        case 0xA:
          v8 = 0xEA00000000007365;
          v9 = 0x746163696C707544;
          break;
        case 0xB:
          v8 = 0xE400000000000000;
          v9 = 1701670728;
          break;
        case 0xC:
          v8 = 0xE300000000000000;
          v9 = 7954756;
          break;
        case 0xD:
          v8 = 0xE700000000000000;
          v9 = 0x7961646B656557;
          break;
        case 0xE:
          v9 = 0x68746E6F4DLL;
          break;
        case 0xF:
          v8 = 0xE700000000000000;
          v9 = 0x72657472617551;
          break;
        case 0x10:
          v8 = 0xE400000000000000;
          v9 = 1918985561;
          break;
        case 0x11:
          v8 = 0xE400000000000000;
          v9 = 2037672259;
          break;
        case 0x12:
          v9 = 0x6574617453;
          break;
        case 0x13:
          v8 = 0xE700000000000000;
          v9 = 0x7972746E756F43;
          break;
        case 0x14:
          v8 = 0xEB00000000746E65;
          v9 = 0x764563696C627550;
          break;
        case 0x15:
          v9 = 0xD000000000000013;
          v8 = v6;
          break;
        case 0x16:
          v9 = 0xD000000000000016;
          v8 = v5;
          break;
        case 0x17:
          v9 = 0x656D726F66726550;
          v8 = 0xE900000000000072;
          break;
        case 0x18:
          v8 = 0xE800000000000000;
          v9 = 0x7373656E69737542;
          break;
        case 0x19:
          v9 = 0xD000000000000010;
          v8 = v4;
          break;
        default:
          break;
      }

      v26 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        v22 = v5;
        v23 = v4;
        v21 = v6;
        sub_22F146454((v10 > 1), v11 + 1, 1);
        v6 = v21;
        v5 = v22;
        v4 = v23;
        v2 = a1;
        v3 = v26;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      ++v7;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v13 = sub_22F1515F8(v3);

  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
  v15 = sub_22F740C80();
  v16 = [v14 kgPropertiesWithMAProperties_];

  if (v16)
  {
    sub_22F20B0E0();
    v17 = sub_22F740CA0();

    v18 = type metadata accessor for Node();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC11PhotosGraph4Node_identifier] = 0;
    *&v19[OBJC_IVAR____TtC11PhotosGraph4Node_labels] = v13;
    *&v19[OBJC_IVAR____TtC11PhotosGraph4Node_properties] = v17;
    v25.receiver = v19;
    v25.super_class = v18;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  else
  {

    sub_22F2B5954();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_22F2B5954()
{
  result = qword_27DAB3178;
  if (!qword_27DAB3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3178);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Node.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Node.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F2B5AFC()
{
  result = qword_27DAB3180;
  if (!qword_27DAB3180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3188, qword_22F7824B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3180);
  }

  return result;
}

unint64_t sub_22F2B5B64()
{
  result = qword_27DAB3190;
  if (!qword_27DAB3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3190);
  }

  return result;
}

uint64_t sub_22F2B5BC0(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_22F3F6580(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_22F2B84C8(v10, a2, a3);
  *a1 = v7;
  return result;
}

id sub_22F2B5C8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v108 = a3;
  *&v107 = a2;
  v5 = sub_22F7406F0();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = (&v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_22F740B90();
  v105 = *(v126 - 1);
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v126);
  v10 = (&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2810A9BD0 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v11 = qword_2810B4E90;
    *&v12 = CACurrentMediaTime();
    sub_22F1B560C("Music Curation - Curating", 25, 2u, v12, 0, v11, &v117);
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x277D84F90];
    v100 = (v13 + 16);
    v14 = *a1;
    v120 = a1[1];
    v121 = v14;
    v115 = v120;
    v116 = v14;
    v15 = a1[3];
    v119 = a1[2];
    v17 = a1[4];
    v16 = a1[5];
    v118 = a1[6];
    v113 = v118;
    v114 = v119;
    sub_22F13BA9C(&v121, v110, &qword_27DAB31A0, &qword_22F782598);
    sub_22F13BA9C(&v120, v110, &qword_27DAB31A0, &qword_22F782598);
    sub_22F13BA9C(&v119, v110, &qword_27DAB31A0, &qword_22F782598);
    v97 = v15;

    v98 = v17;

    v106 = v16;

    sub_22F13BA9C(&v118, v110, &qword_27DAB31A0, &qword_22F782598);
    sub_22F1B3158(v10);
    v18 = sub_22F740B70();
    v19 = sub_22F7415C0();
    if (os_log_type_enabled(v18, v19))
    {
      v21 = v120;
      v20 = v121;
      v22 = v119;
      v103 = v118;
      v23 = swift_slowAlloc();
      *v23 = 134219008;
      *(v23 + 4) = *(v20 + 16);
      *(v23 + 12) = 2048;
      *(v23 + 14) = *(v21 + 16);
      *(v23 + 22) = 2048;
      *(v23 + 24) = *(v22 + 16);
      *(v23 + 32) = 2048;
      *(v23 + 34) = *(v106 + 16);
      *(v23 + 42) = 2048;
      *(v23 + 44) = *(v103 + 16);
      _os_log_impl(&dword_22F0FC000, v18, v19, "[MemoriesMusic] Curating songs from multiple slices - performer (%ld, topic (%ld), favorites (%ld), location (%ld), time: (%ld)", v23, 0x34u);
      MEMORY[0x2319033A0](v23, -1, -1);
    }

    (*(v105 + 8))(v10, v126);
    v24 = v108;
    v25 = *(v108 + OBJC_IVAR___PGMusicCuratorContext_configuration + 48);
    v123 = *(v108 + OBJC_IVAR___PGMusicCuratorContext_configuration + 32);
    v124 = v25;
    v125 = *(v108 + OBJC_IVAR___PGMusicCuratorContext_configuration + 64);
    v26 = *(v108 + OBJC_IVAR___PGMusicCuratorContext_configuration + 16);
    v122[0] = *(v108 + OBJC_IVAR___PGMusicCuratorContext_configuration);
    v122[1] = v26;
    v27 = *(v108 + OBJC_IVAR___PGMusicCuratorContext_configuration + 168);
    v28 = *(v108 + OBJC_IVAR___PGMusicCuratorContext_configuration + 296);
    v29 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
    swift_beginAccess();
    LODWORD(v29) = *(v24 + v29);
    v126 = swift_allocObject();
    v126[2] = MEMORY[0x277D84F90];
    LODWORD(v103) = v29;
    v105 = *&v122[0];
    if (v29)
    {
      v30 = *&v122[0];
    }

    else
    {
      v30 = *(&v122[0] + 1);
    }

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v31 = v107;
    v32 = *(v107 + OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword);
    a1 = *(v32 + 16);
    if (a1)
    {
      v94 = v30;
      v33 = sub_22F10B348(a1, 0);
      v95 = sub_22F120B3C(v110, v33 + 32, a1, v32);
      v30 = v110[2];
      i = v110[3];
      v31 = v110[4];

      sub_22F0FF590();
      if (v95 != a1)
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v31 = v107;
      v30 = v94;
    }

    a1 = v104;
    sub_22F7406E0();
    sub_22F7406C0();
    v10 = sub_22F7406D0();

    v33 = v10[2];
    if (v33)
    {
      break;
    }

    i = MEMORY[0x277D84F90];
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    __break(1u);
LABEL_83:
    swift_once();
  }

  i = sub_22F10B348(v10[2], 0);
  v10 = sub_22F11A438(v110, i + 4, v33, v10);
  sub_22F0FF590();
  if (v10 != v33)
  {
    goto LABEL_85;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_81;
  }

LABEL_13:
  if (v30)
  {
    v33 = OBJC_IVAR___PGMusicCurationFeatures_memorySubcategory;
    v35 = OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers;
    v36 = *(v31 + OBJC_IVAR___PGMusicCurationFeatures_memoryCategory) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      while (1)
      {
        while (1)
        {
          --v30;
          if (v36 != 16 && (*(v31 + v33) - 213) >= 2)
          {
            break;
          }

          v37 = *(v31 + v35);
          if (!v37 || !*(v37 + 16) || !*(v116 + 16))
          {
            break;
          }

          if ((sub_22F2B6A1C(&v116, 1uLL, v122, v13, v126, 0.0) & 1) == 0 || !v30)
          {
            goto LABEL_30;
          }
        }

        if (!*(v115 + 16))
        {
          goto LABEL_30;
        }

        if (!i[2])
        {
          break;
        }

        if ((sub_22F2B72CC(&v115, i, v122, v13, v108, 0.0) & 1) == 0 || !v30)
        {
          goto LABEL_30;
        }
      }
    }

    while ((sub_22F2B6A1C(&v115, 0, v122, v13, v126, 0.0) & 1) != 0 && v30);
  }

LABEL_30:

  v10 = v126;
  v30 = v105;
  if (!v103)
  {
    if ((v105 & 0x8000000000000000) == 0)
    {
      if (v105)
      {
        v38 = v105;
        do
        {
          v39 = sub_22F2B6A1C(&v113, 0, v122, v13, v10, v28);
          --v38;
        }

        while (((sub_22F2B6A1C(&v114, 0, v122, v13, v10, v27) | v39) & 1) != 0 && v38);
      }

      goto LABEL_36;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_36:
  (*(v101 + 8))(a1, v102);
  swift_endAccess();
  swift_endAccess();
  swift_endAccess();
  swift_endAccess();
  a1 = v100;
  swift_beginAccess();
  for (i = *a1; ; i = *(v13 + 16))
  {
    v40 = i[2];
    v41 = __OFSUB__(v30, v40);
    v42 = v30 - v40;
    if (v41)
    {
      goto LABEL_82;
    }

    if (v42 < 1 || !*(v115 + 16))
    {
      break;
    }

    swift_beginAccess();
    sub_22F2B6A1C(&v115, 0, v122, v13, v10, 0.0);
    swift_endAccess();
  }

  v43 = v114;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = v43;
  *&v111 = v43;
  v45 = v99;
  sub_22F2BBB24(v97, sub_22F2BB5A8, 0, isUniquelyReferenced_nonNull_native, &v111);

  v46 = v111;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = v46;
  sub_22F2BBB24(v98, sub_22F2BB5A8, 0, v47, &v111);
  v105 = v45;

  v48 = sub_22F2B7F74(v111);

  v49 = sub_22F2BBE48(v48);

  v51 = sub_22F2B7F74(v50);

  a1 = sub_22F2BBE48(v51);

  v33 = sub_22F39687C(v124, v49);
  if (v54)
  {
    v31 = v54;
    v30 = v53;
    v104 = v52;
    sub_22F742070();
    swift_unknownObjectRetain_n();
    v57 = swift_dynamicCastClass();
    if (!v57)
    {
      swift_unknownObjectRelease();
      v57 = MEMORY[0x277D84F90];
    }

    v58 = *(v57 + 16);

    if (!__OFSUB__(v31 >> 1, v30))
    {
      if (v58 != (v31 >> 1) - v30)
      {
        goto LABEL_90;
      }

      v56 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v56)
      {
        goto LABEL_50;
      }

      v56 = MEMORY[0x277D84F90];
      goto LABEL_49;
    }

    goto LABEL_87;
  }

  while (2)
  {
    sub_22F10AB68(v33, v52, v53, v54);
    v56 = v55;
LABEL_49:
    swift_unknownObjectRelease();
LABEL_50:
    v104 = v56;
    a1 = sub_22F39687C(*(&v124 + 1), a1);
    if (v61)
    {
      v30 = v61;
      v64 = v60;
      v65 = v59;
      v33 = sub_22F742070();
      swift_unknownObjectRetain_n();
      v66 = swift_dynamicCastClass();
      if (!v66)
      {
        swift_unknownObjectRelease();
        v66 = MEMORY[0x277D84F90];
      }

      v31 = *(v66 + 16);

      if (!__OFSUB__(v30 >> 1, v64))
      {
        if (v31 != (v30 >> 1) - v64)
        {
          goto LABEL_92;
        }

        v63 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v63)
        {
          goto LABEL_59;
        }

        v63 = MEMORY[0x277D84F90];
        goto LABEL_58;
      }

LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      swift_unknownObjectRelease();
      v54 = v31;
      v53 = v30;
      v52 = v104;
      continue;
    }

    break;
  }

  while (2)
  {
    sub_22F10AB68(a1, v59, v60, v61);
    v63 = v62;
LABEL_58:
    swift_unknownObjectRelease();
LABEL_59:
    v67 = v113;

    v69 = sub_22F2B7F74(v68);

    a1 = sub_22F39687C(v125, v69);
    v103 = v63;
    if ((v72 & 1) == 0)
    {
LABEL_60:
      sub_22F10AB68(a1, v70, v71, v72);
      v74 = v73;
      goto LABEL_67;
    }

    v33 = v67;
    v31 = v72;
    v30 = v71;
    v102 = v70;
    sub_22F742070();
    swift_unknownObjectRetain_n();
    v75 = swift_dynamicCastClass();
    if (!v75)
    {
      swift_unknownObjectRelease();
      v75 = MEMORY[0x277D84F90];
    }

    v76 = *(v75 + 16);

    if (__OFSUB__(v31 >> 1, v30))
    {
      goto LABEL_89;
    }

    if (v76 != (v31 >> 1) - v30)
    {
      swift_unknownObjectRelease();
      v72 = v31;
      v71 = v30;
      v70 = v102;
      v63 = v103;
      v67 = v33;
      goto LABEL_60;
    }

    v74 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v67 = v33;
    v63 = v103;
    if (!v74)
    {
      v74 = MEMORY[0x277D84F90];
LABEL_67:
      swift_unknownObjectRelease();
    }

    v102 = v74;
    v30 = v116;

    v78 = sub_22F2B7F74(v77);

    a1 = sub_22F39687C(*(&v123 + 1), v78);
    if ((v81 & 1) == 0)
    {
      goto LABEL_69;
    }

    v100 = v79;
    v101 = v67;
    v64 = v81;
    v84 = v80;
    v65 = sub_22F742070();
    swift_unknownObjectRetain_n();
    v85 = swift_dynamicCastClass();
    if (!v85)
    {
      swift_unknownObjectRelease();
      v85 = MEMORY[0x277D84F90];
    }

    v86 = *(v85 + 16);

    if (__OFSUB__(v64 >> 1, v84))
    {
      __break(1u);
LABEL_92:
      swift_unknownObjectRelease();
      v61 = v30;
      v60 = v64;
      v59 = v65;
      continue;
    }

    break;
  }

  if (v86 == (v64 >> 1) - v84)
  {
    v83 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v63 = v103;
    if (!v83)
    {
      v83 = MEMORY[0x277D84F90];
      goto LABEL_76;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v81 = v64;
    v80 = v84;
    v79 = v100;
    v63 = v103;
LABEL_69:
    sub_22F10AB68(a1, v79, v80, v81);
    v83 = v82;
LABEL_76:
    swift_unknownObjectRelease();
  }

  sub_22F2B82BC(v83, *(v107 + OBJC_IVAR___PGMusicCurationFeatures_location), *(v107 + OBJC_IVAR___PGMusicCurationFeatures_location + 8), &v111);
  v107 = v111;
  v87 = v112;
  v88 = type metadata accessor for MusicCuration();
  v89 = objc_allocWithZone(v88);
  *&v89[OBJC_IVAR___PGMusicCuration_curatorVersion] = 2;
  *&v89[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = i;
  *&v89[OBJC_IVAR___PGMusicCuration_musicForYou] = v104;
  *&v89[OBJC_IVAR___PGMusicCuration_musicForLocation] = v63;
  *&v89[OBJC_IVAR___PGMusicCuration_musicForTime] = v102;
  *&v89[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v83;
  v90 = &v89[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v90 = v107;
  *(v90 + 2) = v87;
  *&v89[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = MEMORY[0x277D84F90];
  v109.receiver = v89;
  v109.super_class = v88;

  v91 = objc_msgSendSuper2(&v109, sel_init);
  sub_22F1B2BBC(0);
  v92 = v105;
  sub_22F7416A0();

  if (v92)
  {
  }

  return v91;
}

uint64_t sub_22F2B6A1C(uint64_t *a1, unint64_t a2, uint64_t *a3, char *a4, uint64_t *a5, float a6)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v12 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  MEMORY[0x28223BE20](v18);
  v83 = &v73 - v19;
  MEMORY[0x28223BE20](v20);
  v86 = &v73 - v21;
  MEMORY[0x28223BE20](v22);
  v82 = &v73 - v23;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
  v24 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v73 - v25;
  v26 = type metadata accessor for Song();
  v84 = *(v26 - 8);
  v27 = *(v84 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = (&v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v32 = (&v73 - v31);
  v33 = *a3;
  swift_beginAccess();
  v34 = *(*(a4 + 2) + 16);
  v35 = __OFSUB__(v33, v34);
  v36 = v33 - v34;
  if (v35)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    a1 = sub_22F13E558(0, a1[2] + 1, 1, a1);
    v32[2] = a1;
    goto LABEL_28;
  }

  if (v36 >= 1)
  {
    v77 = v29;
    v78 = a4;
    v79 = v32;
    v37 = *a1;
    v38 = *a1 + 64;
    v39 = 1 << *(*a1 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(*a1 + 64);
    if (v41)
    {
      v76 = a2;
      v74 = a5;
      v75 = a1;
      v32 = 0;
      v42 = __clz(__rbit64(v41));
      a2 = (v41 - 1) & v41;
      v29 = ((v39 + 63) >> 6);
LABEL_11:
      v45 = *(v37 + 48);
      v46 = v83;
      v85 = *(v84 + 72);
      sub_22F15CAA0(v45 + v85 * v42, v83);
      v47 = v86;
      *(v46 + *(v87 + 48)) = *(*(v37 + 56) + 4 * v42);
      a5 = &qword_27DAB10F0;
      a1 = &qword_22F771540;
      sub_22F1207AC(v46, v47, &qword_27DAB10F0, &qword_22F771540);

      if (!a2)
      {
        goto LABEL_13;
      }

      do
      {
        while (1)
        {
          v33 = v32;
LABEL_16:
          v48 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          v49 = v48 | (v33 << 6);
          sub_22F15CAA0(*(v37 + 48) + v49 * v85, v14);
          v50 = *(*(v37 + 56) + 4 * v49);
          v51 = v87;
          *&v14[*(v87 + 48)] = v50;
          sub_22F1207AC(v14, v17, &qword_27DAB10F0, &qword_22F771540);
          v52 = *(v51 + 48);
          v53 = v86;
          if (*(v86 + v52) >= *&v17[v52])
          {
            break;
          }

          sub_22F120ADC(v86, &qword_27DAB10F0, &qword_22F771540);
          sub_22F1207AC(v17, v53, &qword_27DAB10F0, &qword_22F771540);
          v32 = v33;
          if (!a2)
          {
            goto LABEL_13;
          }
        }

        sub_22F120ADC(v17, &qword_27DAB10F0, &qword_22F771540);
        v32 = v33;
      }

      while (a2);
      while (1)
      {
LABEL_13:
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_41;
        }

        if (v33 >= v29)
        {
          break;
        }

        a2 = *(v38 + 8 * v33);
        v32 = (v32 + 1);
        if (a2)
        {
          goto LABEL_16;
        }
      }

      v54 = v82;
      sub_22F1207AC(v86, v82, &qword_27DAB10F0, &qword_22F771540);
      v55 = *(v54 + *(v87 + 48));
      v56 = v81;
      v57 = *(v81 + 48);
      v58 = v54;
      v59 = v80;
      sub_22F15CB04(v58, v80);
      *(v59 + v57) = v55;
      v60 = *(v59 + *(v56 + 48));
      v29 = v79;
      sub_22F15CB04(v59, v79);
      if (v60 < a6)
      {
        v33 = 0;
        goto LABEL_38;
      }

      v33 = v29[5];
      if (!v33)
      {
        goto LABEL_38;
      }

      a5 = v29[4];
      a2 = v74;
      v61 = swift_beginAccess();
      v62 = *(a2 + 16);
      v88[0] = a5;
      v88[1] = v33;
      MEMORY[0x28223BE20](v61);
      *(&v73 - 2) = v88;

      v63 = sub_22F1C0E04(sub_22F1D0468, (&v73 - 4), v62);

      if ((v63 & 1) != 0 && (v76 & 1) == 0)
      {
        goto LABEL_31;
      }

      sub_22F15CAA0(v29, v77);
      v32 = v78;
      swift_beginAccess();
      a1 = v32[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32[2] = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_28:
      v66 = a1[2];
      v65 = a1[3];
      if (v66 >= v65 >> 1)
      {
        a1 = sub_22F13E558(v65 > 1, v66 + 1, 1, a1);
      }

      a1[2] = v66 + 1;
      sub_22F15CB04(v77, a1 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + v66 * v85);
      v78[2] = a1;
      swift_endAccess();
      if ((v76 & 1) == 0)
      {
        swift_beginAccess();
        v67 = *(a2 + 16);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 16) = v67;
        if ((v68 & 1) == 0)
        {
          v67 = sub_22F13E1A8(0, *(v67 + 2) + 1, 1, v67);
          *(a2 + 16) = v67;
        }

        v70 = *(v67 + 2);
        v69 = *(v67 + 3);
        if (v70 >= v69 >> 1)
        {
          v67 = sub_22F13E1A8((v69 > 1), v70 + 1, 1, v67);
        }

        *(v67 + 2) = v70 + 1;
        v71 = &v67[16 * v70];
        *(v71 + 4) = a5;
        *(v71 + 5) = v33;
        *(a2 + 16) = v67;
        swift_endAccess();
        goto LABEL_37;
      }

LABEL_31:

LABEL_37:
      sub_22F2B7200(v29);
      v33 = 1;
LABEL_38:
      sub_22F15CBD8(v29);
      return v33;
    }

    v43 = 0;
    v29 = ((v39 + 63) >> 6);
    while ((v29 - 1) != v43)
    {
      v32 = (v43 + 1);
      v44 = *(v37 + 72 + 8 * v43);
      v41 -= 64;
      v43 = (v43 + 1);
      if (v44)
      {
        v76 = a2;
        v74 = a5;
        v75 = a1;
        a2 = (v44 - 1) & v44;
        v42 = __clz(__rbit64(v44)) - v41;
        goto LABEL_11;
      }
    }
  }

  return 0;
}

unint64_t sub_22F2B7160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_22F122B68(a1);
  if (v7)
  {
    v8 = result;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22F134CE8();
      v11 = v14;
    }

    v12 = *(v11 + 56) + 24 * v8;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    result = sub_22F3B9C70(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

unint64_t sub_22F2B7200(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_22F122A14(a1);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v15 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22F134678();
      v10 = v15;
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for Song();
    sub_22F15CBD8(v11 + *(*(v12 - 8) + 72) * v7);
    v13 = *(*(v10 + 56) + 4 * v7);
    sub_22F3B9A20(v7, v10);
    *v2 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13 | (((v6 & 1) == 0) << 32);
}

uint64_t sub_22F2B72CC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, float a6)
{
  v125 = a2;
  v126 = a5;
  v10 = sub_22F740B90();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v124 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v123 = &v112 - v15;
  MEMORY[0x28223BE20](v16);
  v122 = &v112 - v17;
  MEMORY[0x28223BE20](v18);
  v121 = &v112 - v19;
  v20 = type metadata accessor for Song();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v120 = (&v112 - v26);
  MEMORY[0x28223BE20](v27);
  v127 = (&v112 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14A8, &qword_22F771AC8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v112 - v34;
  v36 = *a3;
  swift_beginAccess();
  v37 = *(*(a4 + 16) + 16);
  v38 = __OFSUB__(v36, v37);
  v39 = v36 - v37;
  if (v38)
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    swift_once();
    v50 = v124;
    sub_22F1B3158(v124);
    v51 = a3;
    v52 = sub_22F740B70();
    v53 = sub_22F7415E0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = a3;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v57;
      *v55 = v57;
      _os_log_impl(&dword_22F0FC000, v52, v53, "[suggestSongWithMatchingKeywords] Error matching keyword songs: %@", v54, 0xCu);
      sub_22F120ADC(v55, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v55, -1, -1);
      MEMORY[0x2319033A0](v54, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v50, v10);
    return 0;
  }

  if (v39 < 1)
  {
    return 0;
  }

  v40 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v112 = v24;
  v115 = v21;
  v113 = a4;
  v114 = a1;
  v41 = 0;
  sub_22F2BB160(v40, a6);
  v43 = v42;
  v44 = *(v42 + 16);
  if (v44)
  {
    v116 = 0;
    v118 = v10;
    v119 = v11;
    v45 = sub_22F10B53C(v44, 0);
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540) - 8);
    sub_22F11BD84(v128, v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v44, v43);
    v117 = v47;
    v10 = v128[1];
    v11 = v128[2];
    a3 = v128[4];

    sub_22F0FF590();
    if (v117 == v44)
    {
      v10 = v118;
      v11 = v119;
      v41 = v116;
      goto LABEL_8;
    }

    goto LABEL_52;
  }

  v45 = MEMORY[0x277D84F90];
LABEL_8:
  v128[0] = v45;
  sub_22F2B5BC0(v128, sub_22F2B8C48, sub_22F2B861C);
  if (v41)
  {

    __break(1u);
    return result;
  }

  v48 = v127;
  v49 = v128[0];
  if (!v128[0][2])
  {

    if (qword_2810A9BD0 != -1)
    {
      swift_once();
    }

    v58 = v123;
    sub_22F1B3158(v123);
    v59 = v125;

    v60 = sub_22F740B70();
    v61 = sub_22F7415E0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v128[0] = v63;
      *v62 = 134218242;
      *(v62 + 4) = a6;
      *(v62 + 12) = 2080;
      v64 = MEMORY[0x231900D40](v59, MEMORY[0x277D837D0]);
      v66 = sub_22F145F20(v64, v65, v128);

      *(v62 + 14) = v66;
      _os_log_impl(&dword_22F0FC000, v60, v61, "[suggestSongWithMatchingKeywords] No matching keyword songs available above the threshold of %f for keywordsToMatch: %s", v62, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x2319033A0](v63, -1, -1);
      MEMORY[0x2319033A0](v62, -1, -1);
    }

    (*(v11 + 8))(v58, v10);
    return 0;
  }

  v67 = MusicCuratorContext.extractSongIdKeywordMappings()();
  v118 = v10;
  v119 = v11;

  v126 = sub_22F1515F8(v68);

  v11 = 0;
  v69 = v49[2];
  a3 = &qword_27DAB10F0;
  v10 = &qword_22F771540;
  if (v69)
  {
    goto LABEL_26;
  }

LABEL_29:
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  (*(*(v78 - 8) + 56))(v32, 1, 1, v78);
  v11 = v69;
  while (1)
  {
    sub_22F1207AC(v32, v35, &qword_27DAB14A8, &qword_22F771AC8);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
    if ((*(*(v79 - 8) + 48))(v35, 1, v79) == 1)
    {

      if (qword_2810A9BD0 != -1)
      {
        swift_once();
      }

      v80 = v122;
      sub_22F1B3158(v122);
      v81 = sub_22F740B70();
      v82 = sub_22F7415C0();
      v83 = os_log_type_enabled(v81, v82);
      v85 = v118;
      v84 = v119;
      if (v83)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_22F0FC000, v81, v82, "[suggestSongWithMatchingKeywords] WARNING: No additional matching songs found", v86, 2u);
        MEMORY[0x2319033A0](v86, -1, -1);
      }

      (v84[1])(v80, v85);
      return 0;
    }

    sub_22F15CB04(v35, v48);
    if (*(v67 + 16) && (v70 = sub_22F1229E8(*v48, v48[1]), (v71 & 1) != 0))
    {
      v72 = *(*(v67 + 56) + 8 * v70);
    }

    else
    {
      v72 = MEMORY[0x277D84F90];
    }

    v73 = sub_22F1515F8(v72);

    v74 = *(sub_22F1ABBB4(v126, v73) + 16);

    if (v74)
    {
      break;
    }

    v48 = v127;
    sub_22F15CBD8(v127);
    if (v11 == v69)
    {
      goto LABEL_29;
    }

LABEL_26:
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    if (v11 >= v49[2])
    {
      goto LABEL_51;
    }

    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
    v76 = *(v75 - 8);
    sub_22F13BA9C(v49 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v11++, v32, &qword_27DAB10F0, &qword_22F771540);
    v77 = v75;
    v48 = v127;
    (*(v76 + 56))(v32, 0, 1, v77);
  }

  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v88 = v121;
  sub_22F1B3158(v121);
  v89 = v127;
  v90 = v120;
  sub_22F15CAA0(v127, v120);
  v91 = v125;

  v92 = sub_22F740B70();
  v93 = sub_22F7415C0();

  v94 = os_log_type_enabled(v92, v93);
  v96 = v118;
  v95 = v119;
  if (v94)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v128[0] = v98;
    *v97 = 136315394;
    v99 = MEMORY[0x231900D40](v91, MEMORY[0x277D837D0]);
    v101 = sub_22F145F20(v99, v100, v128);

    *(v97 + 4) = v101;
    *(v97 + 12) = 2080;
    v102 = *v90;
    v103 = v90[1];

    sub_22F15CBD8(v90);
    v104 = sub_22F145F20(v102, v103, v128);

    *(v97 + 14) = v104;
    v89 = v127;
    _os_log_impl(&dword_22F0FC000, v92, v93, "[suggestSongWithMatchingKeywords] Found a matching song for keywords %s: %s", v97, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v98, -1, -1);
    MEMORY[0x2319033A0](v97, -1, -1);
  }

  else
  {

    sub_22F15CBD8(v90);
  }

  (v95[1])(v88, v96);
  v105 = v113;
  v106 = v112;
  sub_22F15CAA0(v89, v112);
  swift_beginAccess();
  v107 = *(v105 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v105 + 16) = v107;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v107 = sub_22F13E558(0, v107[2] + 1, 1, v107);
    *(v105 + 16) = v107;
  }

  v110 = v107[2];
  v109 = v107[3];
  if (v110 >= v109 >> 1)
  {
    v107 = sub_22F13E558(v109 > 1, v110 + 1, 1, v107);
  }

  v107[2] = v110 + 1;
  sub_22F15CB04(v106, v107 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v110);
  *(v105 + 16) = v107;
  swift_endAccess();
  v111 = v127;
  sub_22F2B7200(v127);
  sub_22F15CBD8(v111);
  return 1;
}

void *sub_22F2B7F74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = v29 - v7;
  v8 = type metadata accessor for Song();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = sub_22F10B53C(*(a1 + 16), 0);
    sub_22F11BD84(v33, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v13, a1);
    v29[2] = v33[3];
    v30 = v16;
    v29[1] = v33[4];

    sub_22F0FF590();
    if (v30 == v13)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v15 = v14;
LABEL_5:
  v33[0] = v15;
  sub_22F2B5BC0(v33, sub_22F2B959C, sub_22F2B8884);
  v17 = v33[0];
  v18 = v33[0][2];
  if (v18)
  {
    v33[0] = v14;
    sub_22F146514(0, v18, 0);
    v19 = v33[0];
    v20 = *(v3 + 80);
    v30 = v17;
    v21 = v17 + ((v20 + 32) & ~v20);
    v22 = *(v3 + 72);
    do
    {
      v23 = v31;
      sub_22F13BA9C(v21, v31, &qword_27DAB10F0, &qword_22F771540);
      v24 = v23;
      v25 = v32;
      sub_22F1207AC(v24, v32, &qword_27DAB10F0, &qword_22F771540);
      sub_22F15CB04(v25, v12);
      v33[0] = v19;
      v27 = v19[2];
      v26 = v19[3];
      if (v27 >= v26 >> 1)
      {
        sub_22F146514(v26 > 1, v27 + 1, 1);
        v19 = v33[0];
      }

      v19[2] = v27 + 1;
      sub_22F15CB04(v12, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27);
      v21 += v22;
      --v18;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t sub_22F2B82BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v6 = type metadata accessor for Song();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    v14 = MEMORY[0x277D84F90];
    do
    {
      sub_22F15CAA0(v12, v10);
      v16 = *(v10 + 4);
      v17 = *(v10 + 5);

      sub_22F15CBD8(v10);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_22F13E1A8(0, *(v14 + 2) + 1, 1, v14);
        }

        v19 = *(v14 + 2);
        v18 = *(v14 + 3);
        if (v19 >= v18 >> 1)
        {
          v14 = sub_22F13E1A8((v18 > 1), v19 + 1, 1, v14);
        }

        *(v14 + 2) = v19 + 1;
        v15 = &v14[16 * v19];
        *(v15 + 4) = v16;
        *(v15 + 5) = v17;
      }

      v12 += v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v20 = sub_22F1515F8(v14);

  if (*(v20 + 16) != 1)
  {
    goto LABEL_14;
  }

  v21 = sub_22F10B348(1, 0);
  v22 = sub_22F11A438(&v29, v21 + 4, 1, v20);
  sub_22F0FF590();
  if (v22 != 1)
  {
    __break(1u);
LABEL_14:

    v21 = MEMORY[0x277D84F90];
  }

  v24 = v27;
  v23 = v28;
  *a4 = v21;
  a4[1] = v24;
  a4[2] = v23;
}

uint64_t sub_22F2B84C8(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_22F742000();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
        v10 = sub_22F741200();
        *(v10 + 16) = v9;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_22F2B861C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    v22 = v20;
    v23 = v39;
    while (1)
    {
      sub_22F13BA9C(v21, v16, &qword_27DAB10F0, &qword_22F771540);
      sub_22F13BA9C(v19, v12, &qword_27DAB10F0, &qword_22F771540);
      v24 = *(v23 + 48);
      v25 = *&v16[v24];
      v26 = *&v12[v24];
      sub_22F120ADC(v12, &qword_27DAB10F0, &qword_22F771540);
      sub_22F120ADC(v16, &qword_27DAB10F0, &qword_22F771540);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_22F1207AC(v21, v38, &qword_27DAB10F0, &qword_22F771540);
      v23 = v39;
      swift_arrayInitWithTakeFrontToBack();
      sub_22F1207AC(v27, v19, &qword_27DAB10F0, &qword_22F771540);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F2B8884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v54 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = (&v40 - v12);
  MEMORY[0x28223BE20](v13);
  v50 = (&v40 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v42 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v52 = -v23;
    v53 = v22;
    v25 = a1 - a3;
    v41 = v23;
    v26 = v22 + v23 * a3;
    v48 = v17;
    v49 = v8;
    v47 = &v40 - v20;
LABEL_7:
    v45 = v24;
    v46 = a3;
    v43 = v26;
    v44 = v25;
    v27 = v24;
    while (1)
    {
      sub_22F13BA9C(v26, v21, &qword_27DAB10F0, &qword_22F771540);
      sub_22F13BA9C(v27, v17, &qword_27DAB10F0, &qword_22F771540);
      v28 = *(v8 + 48);
      v29 = *&v21[v28];
      v30 = *&v17[v28];
      if (v30 >= v29)
      {
        if (v29 < v30)
        {
          goto LABEL_5;
        }

        v31 = v50;
        sub_22F13BA9C(v21, v50, &qword_27DAB10F0, &qword_22F771540);
        v33 = *v31;
        v32 = v31[1];

        sub_22F15CBD8(v31);
        v34 = v51;
        sub_22F13BA9C(v17, v51, &qword_27DAB10F0, &qword_22F771540);
        v36 = *v34;
        v35 = v34[1];

        sub_22F15CBD8(v34);
        if (v33 == v36 && v32 == v35)
        {

          v17 = v48;
          v8 = v49;
          v21 = v47;
LABEL_5:
          sub_22F120ADC(v17, &qword_27DAB10F0, &qword_22F771540);
          sub_22F120ADC(v21, &qword_27DAB10F0, &qword_22F771540);
LABEL_6:
          a3 = v46 + 1;
          v24 = v45 + v41;
          v25 = v44 - 1;
          v26 = v43 + v41;
          if (v46 + 1 == v42)
          {
            return;
          }

          goto LABEL_7;
        }

        v37 = sub_22F742040();

        v17 = v48;
        sub_22F120ADC(v48, &qword_27DAB10F0, &qword_22F771540);
        v21 = v47;
        sub_22F120ADC(v47, &qword_27DAB10F0, &qword_22F771540);
        v8 = v49;
        if ((v37 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_22F120ADC(v17, &qword_27DAB10F0, &qword_22F771540);
        sub_22F120ADC(v21, &qword_27DAB10F0, &qword_22F771540);
      }

      if (!v53)
      {
        break;
      }

      v38 = v54;
      sub_22F1207AC(v26, v54, &qword_27DAB10F0, &qword_22F771540);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F1207AC(v38, v27, &qword_27DAB10F0, &qword_22F771540);
      v27 += v52;
      v26 += v52;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_22F2B8C48(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v112 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v121 = *(v8 - 8);
  v9 = *(v121 + 64);
  MEMORY[0x28223BE20](v8);
  v115 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v124 = &v109 - v12;
  MEMORY[0x28223BE20](v13);
  v126 = &v109 - v14;
  MEMORY[0x28223BE20](v15);
  v125 = &v109 - v16;
  v122 = a3;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_96:
    a3 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v104 = a4;
    }

    else
    {
LABEL_129:
      v104 = sub_22F3F5F98(a4);
    }

    v128 = v104;
    a4 = *(v104 + 2);
    if (a4 >= 2)
    {
      while (*v122)
      {
        v105 = *&v104[16 * a4];
        v106 = v104;
        v107 = *&v104[16 * a4 + 24];
        sub_22F2BA454(*v122 + *(v121 + 72) * v105, *v122 + *(v121 + 72) * *&v104[16 * a4 + 16], *v122 + *(v121 + 72) * v107, a3);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v107 < v105)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_22F3F5F98(v106);
        }

        if (a4 - 2 >= *(v106 + 2))
        {
          goto LABEL_123;
        }

        v108 = &v106[16 * a4];
        *v108 = v105;
        *(v108 + 1) = v107;
        v128 = v106;
        sub_22F3F5F0C(a4 - 1);
        v104 = v128;
        a4 = *(v128 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v109 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v20 = &qword_27DAB10F0;
  v127 = v8;
  while (1)
  {
    v21 = v18;
    v116 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v111 = v5;
      v22 = *v122;
      v120 = v22;
      v23 = *(v121 + 72);
      a3 = v22 + v23 * (v18 + 1);
      v24 = v125;
      sub_22F13BA9C(a3, v125, v20, &qword_22F771540);
      v25 = v22 + v23 * v18;
      v26 = v126;
      sub_22F13BA9C(v25, v126, v20, &qword_22F771540);
      v27 = *(v8 + 48);
      v28 = *(v24 + v27);
      v29 = *(v26 + v27);
      sub_22F120ADC(v26, v20, &qword_22F771540);
      sub_22F120ADC(v24, v20, &qword_22F771540);
      v110 = v18;
      a4 = v18 + 2;
      v123 = v23;
      v30 = v120 + v23 * (v18 + 2);
      while (v17 != a4)
      {
        v31 = v17;
        v32 = v125;
        sub_22F13BA9C(v30, v125, v20, &qword_22F771540);
        v33 = v126;
        sub_22F13BA9C(a3, v126, v20, &qword_22F771540);
        v34 = *(v127 + 48);
        v35 = *(v32 + v34);
        v36 = *(v33 + v34);
        sub_22F120ADC(v33, v20, &qword_22F771540);
        v37 = v32;
        v17 = v31;
        sub_22F120ADC(v37, v20, &qword_22F771540);
        ++a4;
        v30 += v123;
        a3 += v123;
        if (v28 < v29 == v35 >= v36)
        {
          v17 = a4 - 1;
          break;
        }
      }

      v5 = v111;
      v21 = v110;
      v8 = v127;
      if (v28 < v29)
      {
        if (v17 < v110)
        {
          goto LABEL_126;
        }

        if (v110 < v17)
        {
          a4 = v123 * (v17 - 1);
          v38 = v17 * v123;
          v39 = v17;
          v40 = v110;
          a3 = v110 * v123;
          do
          {
            if (v40 != --v39)
            {
              v41 = *v122;
              if (!*v122)
              {
                goto LABEL_132;
              }

              sub_22F1207AC(v41 + a3, v115, v20, &qword_22F771540);
              if (a3 < a4 || v41 + a3 >= v41 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22F1207AC(v115, v41 + a4, v20, &qword_22F771540);
            }

            ++v40;
            a4 -= v123;
            v38 -= v123;
            a3 += v123;
          }

          while (v40 < v39);
          v5 = v111;
          v8 = v127;
          v21 = v110;
        }
      }
    }

    v42 = v122[1];
    if (v17 < v42)
    {
      if (__OFSUB__(v17, v21))
      {
        goto LABEL_125;
      }

      if (v17 - v21 < v109)
      {
        if (__OFADD__(v21, v109))
        {
          goto LABEL_127;
        }

        if (v21 + v109 >= v42)
        {
          v43 = v122[1];
        }

        else
        {
          v43 = v21 + v109;
        }

        if (v43 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v17 != v43)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v116;
    }

    else
    {
      v19 = sub_22F13D970(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    a3 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_22F13D970((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = a3;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v21;
    *(v45 + 5) = v18;
    v46 = *v112;
    if (!*v112)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v47 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v48 = *(v19 + 4);
          v49 = *(v19 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_113;
          }

          v64 = &v19[16 * a3];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_116;
          }

          v70 = &v19[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_120;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = a3 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v19[16 * a3];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_115;
        }

        v77 = &v19[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v47 - 1;
        if (v47 - 1 >= a3)
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

        if (!*v122)
        {
          goto LABEL_131;
        }

        v85 = v19;
        a3 = *&v19[16 * a4 + 32];
        v86 = *&v19[16 * v47 + 40];
        sub_22F2BA454(*v122 + *(v121 + 72) * a3, *v122 + *(v121 + 72) * *&v19[16 * v47 + 32], *v122 + *(v121 + 72) * v86, v46);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v86 < a3)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v87 = v85;
        }

        else
        {
          v87 = sub_22F3F5F98(v85);
        }

        v8 = v127;
        if (a4 >= *(v87 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v87[16 * a4];
        *(v88 + 4) = a3;
        *(v88 + 5) = v86;
        v128 = v87;
        a4 = &v128;
        sub_22F3F5F0C(v47);
        v19 = v128;
        a3 = *(v128 + 2);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v19[16 * a3 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_111;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_112;
      }

      v59 = &v19[16 * a3];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_114;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_117;
      }

      if (v63 >= v55)
      {
        v81 = &v19[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v84)
        {
          v47 = a3 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = v122[1];
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v111 = v5;
  v89 = *v122;
  v90 = *(v121 + 72);
  v91 = *v122 + v90 * (v17 - 1);
  v92 = -v90;
  v110 = v21;
  v93 = v21 - v17;
  v123 = v89;
  v113 = v90;
  v114 = v43;
  a3 = v89 + v17 * v90;
LABEL_86:
  v119 = v91;
  v120 = v17;
  v117 = a3;
  v118 = v93;
  v94 = v91;
  v95 = v127;
  while (1)
  {
    a4 = v125;
    sub_22F13BA9C(a3, v125, v20, &qword_22F771540);
    v96 = v126;
    sub_22F13BA9C(v94, v126, v20, &qword_22F771540);
    v97 = *(v95 + 48);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97);
    sub_22F120ADC(v96, v20, &qword_22F771540);
    sub_22F120ADC(a4, v20, &qword_22F771540);
    if (v98 >= v99)
    {
LABEL_85:
      v17 = v120 + 1;
      v18 = v114;
      v91 = v119 + v113;
      v93 = v118 - 1;
      a3 = v117 + v113;
      if (v120 + 1 != v114)
      {
        goto LABEL_86;
      }

      v5 = v111;
      v8 = v127;
      v21 = v110;
      if (v114 < v110)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v123)
    {
      break;
    }

    v100 = v20;
    v101 = v124;
    sub_22F1207AC(a3, v124, v100, &qword_22F771540);
    v95 = v127;
    swift_arrayInitWithTakeFrontToBack();
    v102 = v101;
    v20 = v100;
    sub_22F1207AC(v102, v94, v100, &qword_22F771540);
    v94 += v92;
    a3 += v92;
    if (__CFADD__(v93++, 1))
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
}

void sub_22F2B959C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v162 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v172 = *(v8 - 8);
  v9 = *(v172 + 64);
  MEMORY[0x28223BE20](v8);
  v168 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v184 = &v155 - v12;
  MEMORY[0x28223BE20](v13);
  v178 = (&v155 - v14);
  MEMORY[0x28223BE20](v15);
  v177 = (&v155 - v16);
  MEMORY[0x28223BE20](v17);
  v179 = &v155 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v155 - v20;
  MEMORY[0x28223BE20](v22);
  v165 = (&v155 - v23);
  MEMORY[0x28223BE20](v24);
  v164 = (&v155 - v25);
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v175 = &v155 - v28;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  v159 = &v155 - v32;
  MEMORY[0x28223BE20](v33);
  v174 = a3;
  v39 = *(a3 + 8);
  if (v39 < 1)
  {
    v41 = MEMORY[0x277D84F90];
LABEL_121:
    a3 = *v162;
    if (!*v162)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_123:
      v151 = v5;
      v186 = v41;
      v152 = *(v41 + 2);
      if (v152 >= 2)
      {
        while (*v174)
        {
          v5 = *&v41[16 * v152];
          v153 = *&v41[16 * v152 + 24];
          sub_22F2BA954(*v174 + *(v172 + 72) * v5, *v174 + *(v172 + 72) * *&v41[16 * v152 + 16], *v174 + *(v172 + 72) * v153, a3);
          if (v151)
          {
            goto LABEL_131;
          }

          if (v153 < v5)
          {
            goto LABEL_147;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_22F3F5F98(v41);
          }

          if (v152 - 2 >= *(v41 + 2))
          {
            goto LABEL_148;
          }

          v154 = &v41[16 * v152];
          *v154 = v5;
          *(v154 + 1) = v153;
          v186 = v41;
          sub_22F3F5F0C(v152 - 1);
          v41 = v186;
          v152 = *(v186 + 2);
          if (v152 <= 1)
          {
            goto LABEL_131;
          }
        }

        goto LABEL_158;
      }

LABEL_131:

      return;
    }

LABEL_154:
    v41 = sub_22F3F5F98(v41);
    goto LABEL_123;
  }

  v158 = &v155 - v35;
  v156 = v37;
  v157 = v36;
  v40 = 0;
  v41 = MEMORY[0x277D84F90];
  v161 = a4;
  v181 = v34;
  v185 = v21;
  v176 = v38;
LABEL_4:
  v42 = v40;
  v43 = v40 + 1;
  v180 = v41;
  if (v40 + 1 >= v39)
  {
    goto LABEL_43;
  }

  v171 = v39;
  a3 = *v174;
  v44 = *(v172 + 72);
  v45 = v40 + 1;
  v46 = v158;
  sub_22F13BA9C(*v174 + v44 * v43, v158, &qword_27DAB10F0, &qword_22F771540);
  v182 = v44;
  v47 = a3 + v44 * v42;
  v48 = v159;
  sub_22F13BA9C(v47, v159, &qword_27DAB10F0, &qword_22F771540);
  v49 = *(v181 + 48);
  v50 = *(v46 + v49);
  v51 = *(v48 + v49);
  v160 = v5;
  v163 = v42;
  if (v51 >= v50)
  {
    if (v50 >= v51)
    {
      v52 = v46;
      v53 = v156;
      sub_22F13BA9C(v52, v156, &qword_27DAB10F0, &qword_22F771540);
      v54 = *v53;
      v55 = v53[1];

      sub_22F15CBD8(v53);
      v56 = v157;
      sub_22F13BA9C(v48, v157, &qword_27DAB10F0, &qword_22F771540);
      v57 = *v56;
      v58 = v56[1];

      sub_22F15CBD8(v56);
      v5 = v45;
      if (v54 == v57 && v55 == v58)
      {
        LODWORD(v173) = 0;
      }

      else
      {
        LODWORD(v173) = sub_22F742040();
      }

      v46 = v158;
    }

    else
    {
      LODWORD(v173) = 0;
      v5 = v43;
    }
  }

  else
  {
    LODWORD(v173) = 1;
    v5 = v43;
  }

  sub_22F120ADC(v48, &qword_27DAB10F0, &qword_22F771540);
  sub_22F120ADC(v46, &qword_27DAB10F0, &qword_22F771540);
  v59 = v163 + 2;
  v60 = v182 * (v163 + 2);
  v61 = a3 + v60;
  v62 = (v182 * v5);
  v63 = a3 + v182 * v5;
  do
  {
    v43 = v59;
    v65 = v5;
    v41 = v62;
    v66 = v60;
    if (v59 >= v171)
    {
      break;
    }

    v183 = v5;
    v67 = v175;
    sub_22F13BA9C(v61, v175, &qword_27DAB10F0, &qword_22F771540);
    v68 = v176;
    sub_22F13BA9C(v63, v176, &qword_27DAB10F0, &qword_22F771540);
    v69 = v68;
    v70 = *(v181 + 48);
    v71 = *(v67 + v70);
    v72 = *(v68 + v70);
    if (v72 < v71)
    {
      v64 = 1;
    }

    else
    {
      if (v71 >= v72)
      {
        v73 = v164;
        sub_22F13BA9C(v175, v164, &qword_27DAB10F0, &qword_22F771540);
        v74 = v73[1];
        v170 = *v73;

        sub_22F15CBD8(v73);
        v75 = v165;
        sub_22F13BA9C(v68, v165, &qword_27DAB10F0, &qword_22F771540);
        v76 = *v75;
        v77 = v75[1];

        sub_22F15CBD8(v75);
        if (v170 == v76 && v74 == v77)
        {
          v64 = 0;
        }

        else
        {
          v64 = sub_22F742040();
        }

        v65 = v183;

        v69 = v176;
        goto LABEL_17;
      }

      v64 = 0;
    }

    v65 = v183;
LABEL_17:
    a3 = &qword_27DAB10F0;
    sub_22F120ADC(v69, &qword_27DAB10F0, &qword_22F771540);
    sub_22F120ADC(v175, &qword_27DAB10F0, &qword_22F771540);
    v59 = v43 + 1;
    v61 += v182;
    v63 += v182;
    v5 = v65 + 1;
    v62 = &v41[v182];
    v60 = v66 + v182;
  }

  while (((v173 ^ v64) & 1) == 0);
  if (v173)
  {
    a4 = v161;
    if (v43 < v163)
    {
      goto LABEL_151;
    }

    v38 = v176;
    if (v163 >= v43)
    {
      v41 = v180;
      v21 = v185;
      v5 = v160;
      v42 = v163;
    }

    else
    {
      v78 = v43;
      a3 = v163 * v182;
      v79 = v163;
      do
      {
        if (v79 != v65)
        {
          v81 = *v174;
          if (!*v174)
          {
            goto LABEL_157;
          }

          sub_22F1207AC(v81 + a3, v168, &qword_27DAB10F0, &qword_22F771540);
          if (a3 < v41 || v81 + a3 >= v81 + v66)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a3 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22F1207AC(v168, &v41[v81], &qword_27DAB10F0, &qword_22F771540);
        }

        ++v79;
        v41 -= v182;
        v66 -= v182;
        a3 += v182;
      }

      while (v79 < v65--);
      v43 = v78;
      v41 = v180;
      v21 = v185;
      v38 = v176;
      v5 = v160;
      v42 = v163;
    }
  }

  else
  {
    a4 = v161;
    v41 = v180;
    v21 = v185;
    v5 = v160;
    v42 = v163;
    v38 = v176;
  }

LABEL_43:
  v82 = v174[1];
  v173 = v43;
  if (v43 >= v82)
  {
    goto LABEL_69;
  }

  if (__OFSUB__(v43, v42))
  {
    goto LABEL_150;
  }

  if (v43 - v42 >= a4)
  {
    goto LABEL_69;
  }

  if (__OFADD__(v42, a4))
  {
    goto LABEL_152;
  }

  if (v42 + a4 >= v82)
  {
    v83 = v82;
  }

  else
  {
    v83 = v42 + a4;
  }

  if (v83 < v42)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v173 == v83)
  {
    goto LABEL_69;
  }

  v160 = v5;
  v84 = *v174;
  v85 = *(v172 + 72);
  v86 = *v174 + v85 * (v173 - 1);
  v182 = -v85;
  v163 = v42;
  a3 = v42 - v173;
  v183 = v84;
  v166 = v85;
  v167 = v83;
  v87 = v84 + v173 * v85;
  v88 = v179;
  v89 = v181;
  while (2)
  {
    v169 = v87;
    v170 = a3;
    v171 = v86;
LABEL_57:
    sub_22F13BA9C(v87, v21, &qword_27DAB10F0, &qword_22F771540);
    sub_22F13BA9C(v86, v88, &qword_27DAB10F0, &qword_22F771540);
    v90 = *(v89 + 48);
    v91 = *&v21[v90];
    v92 = *(v88 + v90);
    if (v92 < v91)
    {
      sub_22F120ADC(v88, &qword_27DAB10F0, &qword_22F771540);
      sub_22F120ADC(v21, &qword_27DAB10F0, &qword_22F771540);
      goto LABEL_63;
    }

    if (v91 < v92)
    {
      goto LABEL_54;
    }

    v93 = v177;
    sub_22F13BA9C(v21, v177, &qword_27DAB10F0, &qword_22F771540);
    v95 = *v93;
    v94 = v93[1];

    sub_22F15CBD8(v93);
    v96 = v88;
    v97 = v178;
    sub_22F13BA9C(v96, v178, &qword_27DAB10F0, &qword_22F771540);
    v99 = *v97;
    v98 = v97[1];

    sub_22F15CBD8(v97);
    if (v95 == v99 && v94 == v98)
    {

      v41 = v180;
      v89 = v181;
      v88 = v179;
      v21 = v185;
LABEL_54:
      sub_22F120ADC(v88, &qword_27DAB10F0, &qword_22F771540);
      sub_22F120ADC(v21, &qword_27DAB10F0, &qword_22F771540);
LABEL_55:
      v86 = v171 + v166;
      a3 = v170 - 1;
      v87 = v169 + v166;
      if (++v173 != v167)
      {
        continue;
      }

      v173 = v167;
      v5 = v160;
      v38 = v176;
      v42 = v163;
LABEL_69:
      if (v173 < v42)
      {
        goto LABEL_149;
      }

      v103 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_22F13D970(0, *(v41 + 2) + 1, 1, v41);
      }

      a3 = *(v41 + 2);
      v104 = *(v41 + 3);
      v105 = a3 + 1;
      if (a3 >= v104 >> 1)
      {
        v150 = sub_22F13D970((v104 > 1), a3 + 1, 1, v41);
        v38 = v103;
        v41 = v150;
      }

      else
      {
        v38 = v103;
      }

      *(v41 + 2) = v105;
      v106 = &v41[16 * a3];
      v107 = v173;
      *(v106 + 4) = v42;
      *(v106 + 5) = v107;
      v108 = *v162;
      if (!*v162)
      {
        goto LABEL_159;
      }

      if (!a3)
      {
LABEL_3:
        v40 = v173;
        v39 = v174[1];
        a4 = v161;
        if (v173 >= v39)
        {
          goto LABEL_121;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v109 = v105 - 1;
        if (v105 >= 4)
        {
          break;
        }

        if (v105 == 3)
        {
          v110 = *(v41 + 4);
          v111 = *(v41 + 5);
          v120 = __OFSUB__(v111, v110);
          v112 = v111 - v110;
          v113 = v120;
LABEL_89:
          if (v113)
          {
            goto LABEL_138;
          }

          v126 = &v41[16 * v105];
          v128 = *v126;
          v127 = *(v126 + 1);
          v129 = __OFSUB__(v127, v128);
          v130 = v127 - v128;
          v131 = v129;
          if (v129)
          {
            goto LABEL_141;
          }

          v132 = &v41[16 * v109 + 32];
          v134 = *v132;
          v133 = *(v132 + 1);
          v120 = __OFSUB__(v133, v134);
          v135 = v133 - v134;
          if (v120)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v130, v135))
          {
            goto LABEL_145;
          }

          if (v130 + v135 >= v112)
          {
            if (v112 < v135)
            {
              v109 = v105 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        v136 = &v41[16 * v105];
        v138 = *v136;
        v137 = *(v136 + 1);
        v120 = __OFSUB__(v137, v138);
        v130 = v137 - v138;
        v131 = v120;
LABEL_103:
        if (v131)
        {
          goto LABEL_140;
        }

        v139 = &v41[16 * v109];
        v141 = *(v139 + 4);
        v140 = *(v139 + 5);
        v120 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v120)
        {
          goto LABEL_143;
        }

        if (v142 < v130)
        {
          goto LABEL_3;
        }

LABEL_110:
        a3 = v109 - 1;
        if (v109 - 1 >= v105)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*v174)
        {
          goto LABEL_156;
        }

        v147 = *&v41[16 * a3 + 32];
        v148 = *&v41[16 * v109 + 40];
        sub_22F2BA954(*v174 + *(v172 + 72) * v147, *v174 + *(v172 + 72) * *&v41[16 * v109 + 32], *v174 + *(v172 + 72) * v148, v108);
        if (v5)
        {
          goto LABEL_131;
        }

        if (v148 < v147)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_22F3F5F98(v41);
        }

        if (a3 >= *(v41 + 2))
        {
          goto LABEL_135;
        }

        v149 = &v41[16 * a3];
        *(v149 + 4) = v147;
        *(v149 + 5) = v148;
        v186 = v41;
        sub_22F3F5F0C(v109);
        v41 = v186;
        v105 = *(v186 + 2);
        v38 = v176;
        if (v105 <= 1)
        {
          goto LABEL_3;
        }
      }

      v114 = &v41[16 * v105 + 32];
      v115 = *(v114 - 64);
      v116 = *(v114 - 56);
      v120 = __OFSUB__(v116, v115);
      v117 = v116 - v115;
      if (v120)
      {
        goto LABEL_136;
      }

      v119 = *(v114 - 48);
      v118 = *(v114 - 40);
      v120 = __OFSUB__(v118, v119);
      v112 = v118 - v119;
      v113 = v120;
      if (v120)
      {
        goto LABEL_137;
      }

      v121 = &v41[16 * v105];
      v123 = *v121;
      v122 = *(v121 + 1);
      v120 = __OFSUB__(v122, v123);
      v124 = v122 - v123;
      if (v120)
      {
        goto LABEL_139;
      }

      v120 = __OFADD__(v112, v124);
      v125 = v112 + v124;
      if (v120)
      {
        goto LABEL_142;
      }

      if (v125 >= v117)
      {
        v143 = &v41[16 * v109 + 32];
        v145 = *v143;
        v144 = *(v143 + 1);
        v120 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v120)
        {
          goto LABEL_146;
        }

        if (v112 < v146)
        {
          v109 = v105 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_89;
    }

    break;
  }

  v100 = sub_22F742040();

  v88 = v179;
  sub_22F120ADC(v179, &qword_27DAB10F0, &qword_22F771540);
  sub_22F120ADC(v185, &qword_27DAB10F0, &qword_22F771540);
  v41 = v180;
  v89 = v181;
  if ((v100 & 1) == 0)
  {
    v21 = v185;
    goto LABEL_55;
  }

LABEL_63:
  if (v183)
  {
    v101 = v184;
    sub_22F1207AC(v87, v184, &qword_27DAB10F0, &qword_22F771540);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F1207AC(v101, v86, &qword_27DAB10F0, &qword_22F771540);
    v86 += v182;
    v87 += v182;
    v102 = __CFADD__(a3++, 1);
    v21 = v185;
    if (v102)
    {
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

void sub_22F2BA454(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v7 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v43 = v25;
      v44 = a4;
      do
      {
        v41 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v45 = v27;
        while (1)
        {
          v30 = v48;
          if (v27 <= a1)
          {
            v51 = v27;
            v49 = v41;
            goto LABEL_58;
          }

          v42 = v24;
          v48 += v25;
          v31 = v26 + v25;
          sub_22F13BA9C(v31, v11, &qword_27DAB10F0, &qword_22F771540);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v46;
          sub_22F13BA9C(v33, v46, &qword_27DAB10F0, &qword_22F771540);
          v36 = *(v47 + 48);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          v39 = v35;
          v11 = v34;
          sub_22F120ADC(v39, &qword_27DAB10F0, &qword_22F771540);
          sub_22F120ADC(v34, &qword_27DAB10F0, &qword_22F771540);
          if (v37 < v38)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v31;
            }
          }

          v26 = v24;
          v27 = v45;
          v29 = v31 > v44;
          v25 = v43;
          if (!v29)
          {
            a2 = v45;
            goto LABEL_57;
          }
        }

        if (v30 < v45 || v48 >= v45)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v43;
        }

        else
        {
          v25 = v43;
          a2 = v32;
          if (v30 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v42;
      }

      while (v26 > v44);
    }

LABEL_57:
    v51 = a2;
    v49 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < v48)
    {
      do
      {
        sub_22F13BA9C(a2, v11, &qword_27DAB10F0, &qword_22F771540);
        v20 = v46;
        sub_22F13BA9C(a4, v46, &qword_27DAB10F0, &qword_22F771540);
        v21 = *(v47 + 48);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_22F120ADC(v20, &qword_27DAB10F0, &qword_22F771540);
        sub_22F120ADC(v11, &qword_27DAB10F0, &qword_22F771540);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v51 = a1;
      }

      while (a4 < v18 && a2 < v48);
    }
  }

LABEL_58:
  sub_22F3B66F4(&v51, &v50, &v49);
}

void sub_22F2BA954(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v82 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v72 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v71 = (&v70 - v11);
  MEMORY[0x28223BE20](v12);
  v80 = &v70 - v13;
  MEMORY[0x28223BE20](v14);
  v79 = &v70 - v15;
  MEMORY[0x28223BE20](v16);
  v78 = (&v70 - v17);
  MEMORY[0x28223BE20](v18);
  v75 = &v70 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v70 - v24;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_83;
  }

  v28 = v82 - a2;
  if (v82 - a2 != 0x8000000000000000 || v27 != -1)
  {
    v29 = (a2 - a1) / v27;
    v85 = a1;
    v84 = a4;
    v73 = v7;
    v81 = v27;
    if (v29 < v28 / v27)
    {
      v30 = v29 * v27;
      if (a4 < a1 || a1 + v30 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v32 = a4 + v30;
      v83 = a4 + v30;
      if (v30 >= 1 && a2 < v82)
      {
        v80 = a4 + v30;
        while (1)
        {
          sub_22F13BA9C(a2, v25, &qword_27DAB10F0, &qword_22F771540);
          sub_22F13BA9C(a4, v22, &qword_27DAB10F0, &qword_22F771540);
          v34 = *(v7 + 48);
          v35 = *&v25[v34];
          v36 = *&v22[v34];
          if (v36 < v35)
          {
            sub_22F120ADC(v22, &qword_27DAB10F0, &qword_22F771540);
            sub_22F120ADC(v25, &qword_27DAB10F0, &qword_22F771540);
LABEL_23:
            v37 = v81;
            v38 = a2 + v81;
            if (a1 < a2 || a1 >= v38)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_37:
              v37 = v81;
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_37;
            }

            a2 = v38;
            goto LABEL_42;
          }

          if (v35 < v36)
          {
            goto LABEL_31;
          }

          v76 = a2;
          v77 = a4;
          v39 = v75;
          sub_22F13BA9C(v25, v75, &qword_27DAB10F0, &qword_22F771540);
          v41 = *v39;
          v40 = v39[1];

          sub_22F15CBD8(v39);
          v42 = v78;
          sub_22F13BA9C(v22, v78, &qword_27DAB10F0, &qword_22F771540);
          v43 = *v42;
          v44 = v42[1];

          sub_22F15CBD8(v42);
          if (v41 == v43 && v40 == v44)
          {
            break;
          }

          v46 = sub_22F742040();

          sub_22F120ADC(v22, &qword_27DAB10F0, &qword_22F771540);
          sub_22F120ADC(v25, &qword_27DAB10F0, &qword_22F771540);
          a2 = v76;
          a4 = v77;
          v7 = v73;
          v32 = v80;
          if (v46)
          {
            goto LABEL_23;
          }

LABEL_32:
          v37 = v81;
          v45 = a4 + v81;
          if (a1 < a4 || a1 >= v45)
          {
            swift_arrayInitWithTakeFrontToBack();
            goto LABEL_40;
          }

          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_40:
            v37 = v81;
          }

          v84 = v45;
          a4 = v45;
LABEL_42:
          a1 += v37;
          v85 = a1;
          if (a4 >= v32 || a2 >= v82)
          {
            goto LABEL_81;
          }
        }

        a2 = v76;
        a4 = v77;
        v7 = v73;
        v32 = v80;
LABEL_31:
        sub_22F120ADC(v22, &qword_27DAB10F0, &qword_22F771540);
        sub_22F120ADC(v25, &qword_27DAB10F0, &qword_22F771540);
        goto LABEL_32;
      }

      goto LABEL_81;
    }

    v31 = v28 / v27 * v27;
    if (a4 < a2 || a2 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_49:
        if (v31 < 1)
        {
          v49 = a4 + v31;
        }

        else
        {
          v47 = -v27;
          v48 = a4 + v31;
          v77 = a4;
          v49 = a4 + v31;
          v81 = -v27;
          while (2)
          {
            while (1)
            {
              v70 = v49;
              v50 = a2 + v47;
              v75 = a2;
              v76 = a2 + v47;
              while (1)
              {
                v53 = v82;
                if (a2 <= a1)
                {
                  v85 = a2;
                  v83 = v70;
                  goto LABEL_81;
                }

                v74 = v49;
                v78 = (v48 + v47);
                v54 = v79;
                v55 = v7;
                sub_22F13BA9C(v48 + v47, v79, &qword_27DAB10F0, &qword_22F771540);
                v56 = v80;
                sub_22F13BA9C(v50, v80, &qword_27DAB10F0, &qword_22F771540);
                v57 = *(v7 + 48);
                v58 = *(v54 + v57);
                v59 = *(v56 + v57);
                if (v59 >= v58)
                {
                  if (v58 >= v59)
                  {
                    v61 = v71;
                    sub_22F13BA9C(v79, v71, &qword_27DAB10F0, &qword_22F771540);
                    v62 = *v61;
                    v63 = v61[1];

                    sub_22F15CBD8(v61);
                    v64 = v72;
                    sub_22F13BA9C(v80, v72, &qword_27DAB10F0, &qword_22F771540);
                    v65 = *v64;
                    v66 = v64[1];

                    sub_22F15CBD8(v64);
                    if (v62 != v65)
                    {
                      goto LABEL_63;
                    }

                    if (v63 == v66)
                    {
                      v60 = 0;
                    }

                    else
                    {
LABEL_63:
                      v60 = sub_22F742040();
                    }

                    v47 = v81;

                    v50 = v76;
                    v55 = v73;
                  }

                  else
                  {
                    v60 = 0;
                    v47 = v81;
                  }
                }

                else
                {
                  v60 = 1;
                  v47 = v81;
                }

                v82 = v53 + v47;
                sub_22F120ADC(v80, &qword_27DAB10F0, &qword_22F771540);
                sub_22F120ADC(v79, &qword_27DAB10F0, &qword_22F771540);
                if (v60)
                {
                  break;
                }

                v67 = v78;
                v49 = v78;
                v7 = v55;
                if (v53 < v48 || v82 >= v48)
                {
                  swift_arrayInitWithTakeFrontToBack();
                  v51 = v77;
                }

                else
                {
                  v51 = v77;
                  if (v53 != v48)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v48 = v49;
                v52 = v67 > v51;
                v47 = v81;
                a2 = v75;
                if (!v52)
                {
                  goto LABEL_79;
                }
              }

              v7 = v55;
              if (v53 < v75 || v82 >= v75)
              {
                break;
              }

              v68 = v53 == v75;
              v69 = v77;
              v49 = v74;
              a2 = v50;
              if (!v68)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              if (v48 <= v69)
              {
                goto LABEL_79;
              }
            }

            a2 = v50;
            swift_arrayInitWithTakeFrontToBack();
            v49 = v74;
            if (v48 > v77)
            {
              continue;
            }

            break;
          }
        }

LABEL_79:
        v85 = a2;
        v83 = v49;
LABEL_81:
        sub_22F3B66F4(&v85, &v84, &v83);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v27 = v81;
    goto LABEL_49;
  }

LABEL_84:
  __break(1u);
}

void sub_22F2BB160(uint64_t a1, float a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_22F2BB520(v10, v6, v4, a2);
      MEMORY[0x2319033A0](v10, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_22F2BB2D4(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22F2BB2D4(unint64_t *a1, uint64_t a2, uint64_t a3, float a4)
{
  v25 = a2;
  v26 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Song();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v14 = 0;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v14 << 6);
    sub_22F15CAA0(*(a3 + 48) + *(v28 + 72) * v22, v13);
    v23 = *(*(a3 + 56) + 4 * v22);
    sub_22F15CAA0(v13, v9);
    *&v9[*(v6 + 48)] = v23;
    sub_22F120ADC(v9, &qword_27DAB10F0, &qword_22F771540);
    sub_22F15CBD8(v13);
    if (v23 >= a4)
    {
      *(v26 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22F1B1778(v26, v25, v27, a3);
        return;
      }
    }
  }

  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v18)
    {
      goto LABEL_15;
    }

    v21 = *(a3 + 64 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_22F2BB520(void *result, uint64_t a2, uint64_t a3, float a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22F2BB2D4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22F2BB5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548) + 48);
  v6 = *(a1 + v4);
  result = sub_22F15CAA0(a1, a2);
  *(a2 + v5) = v6;
  return result;
}

uint64_t sub_22F2BB620@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22F13A100(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_22F107D08(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_22F120ADC(v22, &qword_27DAB2148, &unk_22F778810);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F2BB780(uint64_t a1@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v41 - v5;
  v6 = type metadata accessor for Song();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14A8, &qword_22F771AC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = &v41 - v15;
  v19 = *v1;
  v18 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v45 = v21;
  v46 = a1;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    sub_22F15CAA0(*(v19 + 48) + *(v43 + 72) * v28, v9);
    v29 = *(*(v19 + 56) + 4 * v28);
    v30 = *(v44 + 48);
    v31 = v9;
    v32 = v44;
    sub_22F15CB04(v31, v17);
    *&v17[v30] = v29;
    (*(v3 + 56))(v17, 0, 1, v32);
    v26 = v23;
LABEL_11:
    *v1 = v19;
    v1[1] = v18;
    v1[2] = v45;
    v1[3] = v26;
    v1[4] = v27;
    v33 = v1[5];
    v34 = v1[6];
    sub_22F1207AC(v17, v13, &qword_27DAB14A8, &qword_22F771AC8);
    v35 = 1;
    v36 = (*(v3 + 48))(v13, 1, v32);
    v37 = v46;
    if (v36 != 1)
    {
      v38 = v13;
      v39 = v42;
      sub_22F1207AC(v38, v42, &qword_27DAB10F0, &qword_22F771540);
      v33(v39);
      sub_22F120ADC(v39, &qword_27DAB10F0, &qword_22F771540);
      v35 = 0;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
    (*(*(v40 - 8) + 56))(v37, v35, 1, v40);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v32 = v44;
        (*(v3 + 56))(&v41 - v15, 1, 1, v44, v16);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v18 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F2BBB24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v42 = type metadata accessor for Song();
  v44 = *(v42 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB31A8, &unk_22F7825A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v41 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v45 = a1;
  v46 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v47 = v18;
  v48 = 0;
  v49 = v21 & v19;
  v50 = a2;
  v51 = a3;

  v43 = a3;

  while (1)
  {
    sub_22F2BB780(v16);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
    if ((*(*(v23 - 8) + 48))(v16, 1, v23) == 1)
    {
      sub_22F0FF590();
    }

    v24 = *(v23 + 48);
    sub_22F15CB04(v16, v12);
    v25 = *&v16[v24];
    v26 = *a5;
    v28 = sub_22F122A14(v12);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_22F134678();
        v36 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v22 = *(v36[7] + 4 * v28);
      sub_22F15CBD8(v12);
      *(v36[7] + 4 * v28) = v22;
      a4 = 1;
    }

    else
    {
      sub_22F125F5C(v31, a4 & 1);
      v33 = *a5;
      v34 = sub_22F122A14(v12);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v28 = v34;
      v36 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      sub_22F15CB04(v12, v36[6] + *(v44 + 72) * v28);
      *(v36[7] + 4 * v28) = v25;
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void *sub_22F2BBE48(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = a1 + v22;
  v24 = *(v6 + 72);
  v11 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = sub_22F15CAA0(v10, v8);
    v14 = *(v8 + 5);
    if (v14)
    {
      v15 = *(v8 + 4);
      v25[0] = v15;
      v25[1] = v14;
      MEMORY[0x28223BE20](v13);
      *(&v22 - 2) = v25;

      if (sub_22F1C0E04(sub_22F15A388, (&v22 - 4), v11))
      {
        sub_22F15CBD8(v8);
      }

      else
      {
        sub_22F15CAA0(v8, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_22F13E558(0, v12[2] + 1, 1, v12);
        }

        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          v12 = sub_22F13E558(v16 > 1, v17 + 1, 1, v12);
        }

        v12[2] = v17 + 1;
        sub_22F15CB04(v23, v12 + v22 + v17 * v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_22F13E1A8(0, *(v11 + 2) + 1, 1, v11);
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        if (v19 >= v18 >> 1)
        {
          v11 = sub_22F13E1A8((v18 > 1), v19 + 1, 1, v11);
        }

        sub_22F15CBD8(v8);
        *(v11 + 2) = v19 + 1;
        v20 = &v11[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v14;
      }
    }

    else
    {
      sub_22F15CBD8(v8);
    }

    v10 += v24;
    --v9;
  }

  while (v9);

  return v12;
}

id FlexMusicCurationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlexMusicCurationManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FlexMusicCurationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F2BC31C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v77 = a4;
  v76 = a1;
  v7 = type metadata accessor for CollectionCuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  v21 = MEMORY[0x28223BE20](v18);
  v22 = &v65 - v19;
  v23 = *&a3[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions];
  if (v23 >> 62)
  {
    if (v23 < 0)
    {
      v62 = *&a3[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions];
    }

    v72 = &v65 - v19;
    v70 = v20;
    v63 = sub_22F741A00();
    v20 = v70;
    v22 = v72;
    if (v63)
    {
      goto LABEL_3;
    }

LABEL_17:
    sub_22F7416A0();
    if (!v4)
    {
      v64 = a3;
    }

    return;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_3:
  v74 = v4;
  v75 = a2;
  v71 = a3;
  v72 = v22;
  v73 = v8;
  v67 = v14;
  v70 = v20;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x2319016F0](0, v23, v21);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v24 = *(v23 + 32);
    swift_unknownObjectRetain();
  }

  v25 = [v24 uid];
  swift_unknownObjectRelease();
  v68 = sub_22F740E20();
  v27 = v26;

  v28 = sub_22F7416B0();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v31 = swift_allocObject();
  v69 = xmmword_22F771340;
  *(v31 + 16) = xmmword_22F771340;
  v32 = v75;
  *(v31 + 32) = v76;
  *(v31 + 40) = v32;
  sub_22F25F004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22F770DF0;
  *(v33 + 56) = MEMORY[0x277D837D0];
  *(v33 + 64) = sub_22F153470();
  strcpy((v33 + 32), "collectionId");
  *(v33 + 45) = 0;
  *(v33 + 46) = -5120;
  *(v33 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v33 + 104) = sub_22F25F050();
  *(v33 + 72) = v31;

  v34 = sub_22F741560();
  v35 = v74;
  v36 = sub_22F33E998();
  if (v35)
  {

    return;
  }

  v74 = v28;
  v66 = v30;
  v37 = v36;

  if (v37[2])
  {
    v38 = v73;
    v39 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    sub_22F25F0B4(v37 + v39, v17);

    v40 = v72;
    sub_22F25F118(v17, v72);
    v41 = v40;
    v42 = *(v40 + 40);
    if (v42)
    {
      v43 = v41[4];
      v44 = v41;

      FlexMusicCuration.replaceFirstSongInBestSongSuggestions(with:)(v43, v42);

      sub_22F25F17C(v44);
      return;
    }

    v76 = v27;
    v52 = *v41;
    v51 = v41[1];
    v54 = v41[2];
    v53 = v41[3];
    v55 = *(v70 + 28);

    v56 = v67;
    sub_22F73F680();
    *v56 = v52;
    v56[1] = v51;
    v56[2] = v54;
    v56[3] = v53;
    v57 = v76;
    v56[4] = v68;
    v56[5] = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C8, &unk_22F780230);
    v58 = *(v38 + 72);
    v59 = swift_allocObject();
    *(v59 + 16) = v69;
    sub_22F25F0B4(v56, v59 + v39);
    v60 = v66;
    MusicCache.write(collectionCurations:progressReporter:)(v59);
    sub_22F25F17C(v56);

    swift_setDeallocating();
    sub_22F25F17C(v59 + v39);
    swift_deallocClassInstance();
    sub_22F25F17C(v72);
  }

  else
  {

    v45 = v11 + *(v70 + 28);
    sub_22F73F680();
    v46 = v75;
    *v11 = v76;
    v11[1] = v46;
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v68;
    v11[5] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C8, &unk_22F780230);
    v47 = *(v73 + 72);
    v48 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v69;
    sub_22F25F0B4(v11, v49 + v48);

    v50 = v66;
    MusicCache.write(collectionCurations:progressReporter:)(v49);
    sub_22F25F17C(v11);

    swift_setDeallocating();
    sub_22F25F17C(v49 + v48);
    swift_deallocClassInstance();
  }

  v61 = v71;
}

uint64_t sub_22F2BC97C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v75 = type metadata accessor for Song();
  v72 = *(v75 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v75);
  v79 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v78 = (&v71 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v71 - v17);
  if (qword_2810A9AE0 != -1)
  {
    goto LABEL_54;
  }

  while (2)
  {
    v19 = qword_2810B4DF8;
    *&v20 = CACurrentMediaTime();
    sub_22F1B560C("Memory Appropriate Ranker", 25, 2u, v20, 0, v19, v87);
    v73 = a2 + OBJC_IVAR___PGMusicCuratorContext_configuration;
    v21 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 344);
    v22 = -1 << *(a1 + 32);
    v23 = ~v22;
    v24 = -v22;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a1 + 56);
    v81 = a1;
    v82 = a1 + 56;
    v83 = v23;
    v84 = 0;
    v85 = v26;
    v86 = 0;

    v27 = MEMORY[0x277D84F98];
    v74 = a1;
    while (1)
    {
      v28 = v77;
      sub_22F3D4140(v77);
      sub_22F16FDD4(v28, v18);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
      if ((*(*(v29 - 8) + 48))(v18, 1, v29) == 1)
      {
        sub_22F0FF590();
        sub_22F1B2BBC(0);
        sub_22F7416A0();

        if (v3)
        {
        }

        return v27;
      }

      v30 = *v18;
      sub_22F15CB04(v18 + *(v29 + 48), v12);
      v31 = &v12[*(v75 + 80)];
      v32 = v31[4];
      v33 = &v12[*(v75 + 84)];
      v34 = v33[4];
      if (v32 == 1 && v34 != 0)
      {
        break;
      }

      v36 = *v33;
      v37 = *v31;
      v38 = *(v73 + 356);
      v39 = *(v73 + 360);
      v40 = v79;
      sub_22F15CAA0(v12, v79);
      if (((v38 <= v37) & ~v32) != 0)
      {
        v41 = 1.0;
      }

      else
      {
        v41 = v21;
      }

      if (v39 > v36)
      {
        v42 = v21;
      }

      else
      {
        v42 = 0.0;
      }

      if ((v38 <= v37) & ~v32 | v34 & 1)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v27;
      a2 = v27;
      v45 = sub_22F122A14(v40);
      v47 = v27[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        goto LABEL_51;
      }

      a1 = v46;
      if (v27[3] >= v50)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = v45;
          sub_22F134678();
          v45 = v64;
          v63 = v80;
          if (a1)
          {
LABEL_32:
            *(v63[7] + 4 * v45) = v43;
            sub_22F15CBD8(v79);
            goto LABEL_43;
          }

          goto LABEL_37;
        }
      }

      else
      {
        sub_22F125F5C(v50, isUniquelyReferenced_nonNull_native);
        v45 = sub_22F122A14(v79);
        if ((a1 & 1) != (v51 & 1))
        {
          goto LABEL_55;
        }
      }

      v63 = v80;
      if (a1)
      {
        goto LABEL_32;
      }

LABEL_37:
      v63[(v45 >> 6) + 8] |= 1 << v45;
      a2 = v45;
      v65 = v79;
      sub_22F15CAA0(v79, v63[6] + *(v72 + 72) * v45);
      *(v63[7] + 4 * a2) = v43;
      sub_22F15CBD8(v65);
      v66 = v63[2];
      v49 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v49)
      {
        goto LABEL_52;
      }

LABEL_42:
      v63[2] = v67;
LABEL_43:
      a1 = v74;
      v69 = *(v74 + 16);
      sub_22F741680();
      if (v3)
      {

        sub_22F15CBD8(v12);
        sub_22F0FF590();

        return v27;
      }

      sub_22F15CBD8(v12);
      v27 = v63;
    }

    v52 = v78;
    sub_22F15CAA0(v12, v78);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v27;
    v54 = v52;
    a2 = v27;
    v55 = sub_22F122A14(v54);
    a1 = v55;
    v57 = v27[2];
    v58 = (v56 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      continue;
    }

    break;
  }

  v60 = v56;
  if (v27[3] >= v59)
  {
    if (v53)
    {
      v63 = v80;
      if (v56)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_22F134678();
      v63 = v80;
      if (v60)
      {
LABEL_35:
        *(v63[7] + 4 * a1) = v21;
        sub_22F15CBD8(v78);
        goto LABEL_43;
      }
    }

    goto LABEL_41;
  }

  sub_22F125F5C(v59, v53);
  v61 = sub_22F122A14(v78);
  if ((v60 & 1) == (v62 & 1))
  {
    a1 = v61;
    v63 = v80;
    if (v60)
    {
      goto LABEL_35;
    }

LABEL_41:
    v63[(a1 >> 6) + 8] |= 1 << a1;
    a2 = v78;
    sub_22F15CAA0(v78, v63[6] + *(v72 + 72) * a1);
    *(v63[7] + 4 * a1) = v21;
    sub_22F15CBD8(a2);
    v68 = v63[2];
    v49 = __OFADD__(v68, 1);
    v67 = v68 + 1;
    if (v49)
    {
      goto LABEL_53;
    }

    goto LABEL_42;
  }

LABEL_55:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t Song.init(_:)(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v322 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v330 = &v315 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v329 = &v315 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v315 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v315 - v13;
  memcpy(v652, v1, sizeof(v652));
  v15 = v1[14];
  v657 = v1[13];
  v658 = v15;
  v659 = v1[15];
  v16 = v1[10];
  *v654 = v1[9];
  *&v654[16] = v16;
  v17 = v1[11];
  v656 = v1[12];
  v655 = v17;
  v18 = v1[6];
  v653[4] = v1[5];
  v653[5] = v18;
  v19 = v1[7];
  v653[7] = v1[8];
  v653[6] = v19;
  v20 = v1[2];
  v653[0] = v1[1];
  v653[1] = v20;
  v21 = v1[3];
  v653[3] = v1[4];
  v653[2] = v21;
  v22 = 0.0;
  if (sub_22F1E1664(v653) == 1)
  {
    goto LABEL_2;
  }

  if (*&v654[16])
  {
    if (*&v654[8] == __PAIR128__(0xE800000000000000, 0x746963696C707865))
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_22F742040();
    }

    v24 = v23 & 1;
    if (v652[172])
    {
      v321 = v23 & 1;
      goto LABEL_11;
    }
  }

  else
  {
    v24 = 2;
    if (v652[172])
    {
LABEL_2:
      v321 = 2;
LABEL_11:
      v320 = 1;
      goto LABEL_13;
    }
  }

  v320 = 0;
  v321 = v24;
  v22 = (*&v652[168] * 0.001);
LABEL_13:
  if ([objc_opt_self() musicCurationShouldUseOldStylePreviewURL])
  {
    v627[12] = *&v652[208];
    v627[13] = *&v652[224];
    v627[14] = *&v652[240];
    v627[8] = *&v652[144];
    v627[9] = *&v652[160];
    v627[11] = *&v652[192];
    v627[10] = *&v652[176];
    v627[4] = *&v652[80];
    v627[5] = *&v652[96];
    v627[7] = *&v652[128];
    v627[6] = *&v652[112];
    v627[0] = *&v652[16];
    v627[1] = *&v652[32];
    v627[3] = *&v652[64];
    v627[2] = *&v652[48];
    if (sub_22F1E1664(v627) != 1 && *&v627[4] && *(*&v627[4] + 16))
    {
      v25 = *(*&v627[4] + 40);
      v318 = *(*&v627[4] + 32);
LABEL_22:

      goto LABEL_24;
    }
  }

  else
  {
    v627[12] = *&v652[208];
    v627[13] = *&v652[224];
    v627[14] = *&v652[240];
    v627[8] = *&v652[144];
    v627[9] = *&v652[160];
    v627[11] = *&v652[192];
    v627[10] = *&v652[176];
    v627[4] = *&v652[80];
    v627[5] = *&v652[96];
    v627[7] = *&v652[128];
    v627[6] = *&v652[112];
    v627[0] = *&v652[16];
    v627[1] = *&v652[32];
    v627[3] = *&v652[64];
    v627[2] = *&v652[48];
    if (sub_22F1E1664(v627) != 1)
    {
      v26 = *(&v627[3] + 1);
      if (!*(&v627[3] + 1))
      {
        v318 = 0;
        goto LABEL_24;
      }

      v318 = *&v627[3];
      goto LABEL_22;
    }
  }

  v318 = 0;
  v26 = 0;
LABEL_24:
  v317 = v26;
  v27 = sub_22F73F7C0();
  v28 = *(*(v27 - 8) + 56);
  v28(v14, 1, 1, v27);
  v649 = *&v652[208];
  v650 = *&v652[224];
  v651 = *&v652[240];
  v648[8] = *&v652[144];
  v648[9] = *&v652[160];
  v648[11] = *&v652[192];
  v648[10] = *&v652[176];
  v648[4] = *&v652[80];
  v648[5] = *&v652[96];
  v648[7] = *&v652[128];
  v648[6] = *&v652[112];
  v648[0] = *&v652[16];
  v648[1] = *&v652[32];
  v648[3] = *&v652[64];
  v648[2] = *&v652[48];
  if (sub_22F1E1664(v648) != 1 && *(&v649 + 1))
  {

    sub_22F73F6E0();
    sub_22F2C0884(v14);
    v28(v12, 0, 1, v27);
    sub_22F1207AC(v12, v14, &qword_27DAB0C90, &unk_22F785B70);
  }

  v324 = *&v652[280];
  v316 = *&v652[256];
  v319 = v14;
  if (*&v652[256] == 1 || *&v652[272] < 2uLL || !*(*&v652[272] + 16))
  {
    sub_22F2C0840(v627);
  }

  else
  {
    memcpy(v627, (*&v652[272] + 32), 0x162uLL);
    sub_22F191960(v627, &v572);
  }

  v644 = v627[2];
  v645 = v627[3];
  v646 = v627[4];
  v647 = v627[5];
  v642 = v627[0];
  v643 = v627[1];
  v29 = LODWORD(v627[7]) | (BYTE4(v627[7]) << 32);
  *&v370 = DWORD2(v627[8]) | (BYTE12(v627[8]) << 32);
  *&v371 = DWORD2(v627[11]) | (BYTE12(v627[11]) << 32);
  v640 = v627[13];
  v641 = BYTE4(v627[13]);
  v30 = BYTE5(v627[13]);
  v638 = *(&v627[13] + 6);
  v639 = HIWORD(v627[13]);
  *&v353 = *&v627[14];
  v636 = DWORD2(v627[14]);
  v637 = BYTE12(v627[14]);
  LODWORD(v367) = BYTE13(v627[14]);
  v634 = *(&v627[14] + 14);
  v635 = WORD3(v627[15]);
  v632 = v627[16];
  v633 = BYTE4(v627[16]);
  LODWORD(v365) = BYTE5(v627[16]);
  LODWORD(v368) = BYTE6(v627[16]);
  v31 = DWORD2(v627[17]) | (BYTE12(v627[17]) << 32);
  v631 = v627[22];
  v630 = v627[21];
  v629 = v627[20];
  v628 = v627[19];
  LODWORD(v369) = BYTE5(v627[7]);
  LODWORD(v362) = HIWORD(v627[8]);
  v361 = WORD3(v627[10]);
  LODWORD(v360) = HIWORD(v627[11]);
  LODWORD(v356) = BYTE13(v627[11]);
  v363 = *&v627[17];
  v364 = *(&v627[16] + 1);
  LODWORD(v357) = HIWORD(v627[17]);
  v328 = &v525;
  v349 = v627[6];
  v354 = HIDWORD(v29);
  v32 = WORD3(v627[7]);
  v346 = *(&v627[7] + 8);
  v359 = DWORD1(v370);
  LODWORD(v33) = BYTE13(v627[8]);
  v341 = *(&v627[10] + 8);
  v342 = v627[9];
  v347 = LODWORD(v627[10]) | (BYTE4(v627[10]) << 32);
  v351 = HIDWORD(v347);
  v34 = BYTE5(v627[10]);
  v35 = DWORD1(v371);
  v340 = v627[12];
  v345 = *(&v627[15] + 1);
  LODWORD(v350) = BYTE7(v627[16]);
  v358 = HIDWORD(v31);
  v36 = BYTE13(v627[17]);
  v334 = v627[18];
  v37 = sub_22F19193C(v627);
  LODWORD(v355) = v30;
  v366 = v29;
  if (v37 != 1)
  {
    BYTE4(v458) = v641;
    LODWORD(v458) = v640;
    WORD4(v442) = v639;
    *&v442 = v638;
    BYTE4(v454) = v637;
    LODWORD(v454) = v636;
    WORD4(v391) = v635;
    *&v391 = v634;
    BYTE4(v450) = v633;
    LODWORD(v450) = v632;
    LOWORD(v375) = v631;
    BYTE4(v559) = v641;
    LODWORD(v559) = v640;
    HIWORD(v559) = v639;
    *(&v559 + 6) = v638;
    v560[12] = v637;
    *&v560[8] = v636;
    *&v560[22] = v635;
    v421 = v644;
    v422 = v645;
    v423 = v646;
    v424 = v647;
    v419 = v642;
    v420 = v643;
    v374 = v630;
    v372 = v628;
    v373 = v629;
    v538 = v644;
    v539 = v645;
    v540 = v646;
    v541 = v647;
    v536 = v642;
    v537 = v643;
    *&v560[14] = v634;
    *&v560[32] = v632;
    v560[36] = v633;
    v571 = v631;
    v581 = v369 & 1;
    v586 = v33 & 1;
    v591 = v34 & 1;
    v596 = v356 & 1;
    v600 = v641;
    v599 = v640;
    v603 = v639;
    v602 = v638;
    v606 = v637;
    v605 = v636;
    v609 = v635;
    v608 = v634;
    v612 = v633;
    v611 = v632;
    v620 = v36 & 1;
    v542 = v349;
    LOBYTE(v544) = v354;
    v543 = v29;
    HIBYTE(v544) = v369;
    v545 = v32;
    v546 = v346;
    LOBYTE(v548) = v359;
    v547 = v370;
    HIBYTE(v548) = v33;
    v549 = v362;
    v550 = v342;
    LOBYTE(v552) = v351;
    v551 = v347;
    HIBYTE(v552) = v34;
    v553 = v361;
    v554 = v341;
    LOBYTE(v556) = v35;
    v555 = v371;
    HIBYTE(v556) = v356;
    v557 = v360;
    v558 = v340;
    BYTE5(v559) = v355;
    *v560 = v353;
    v560[13] = v367;
    *&v560[24] = v345;
    v560[37] = v365;
    v560[38] = v368;
    v561 = v350;
    v619 = v358;
    v618 = v31;
    v626 = v631;
    v563 = v31;
    *&v562 = v364;
    *(&v562 + 1) = v363;
    v564 = v358;
    v565 = v36;
    v566 = v357;
    v570 = v630;
    v569 = v629;
    v567 = v334;
    v568 = v628;
    v573 = v643;
    v572 = v642;
    v577 = v647;
    v576 = v646;
    v575 = v645;
    v574 = v644;
    v578 = v349;
    v580 = v354;
    v579 = v366;
    v583 = v346;
    v585 = v359;
    v584 = v370;
    v588 = v342;
    v590 = v351;
    v589 = v347;
    v593 = v341;
    v595 = v35;
    v594 = v371;
    v598 = v340;
    v601 = v355;
    v604 = v353;
    v607 = v367;
    v610 = v345;
    v613 = v365;
    v614 = v368;
    v616 = v364;
    v617 = v363;
    v625 = v630;
    v624 = v629;
    v622 = v334;
    v623 = v628;
    sub_22F18A748(&v536, &v499);
    sub_22F18A780(&v572);
    v399 = v538;
    v400 = v539;
    v401 = v540;
    v402 = v541;
    v397 = v536;
    v398 = v537;
    v38 = v563;
    v39 = v564;
    LODWORD(v29) = v366;
    v40 = v565;
    v501 = v538;
    v502 = v539;
    v503 = v540;
    v504 = v541;
    v499 = v536;
    v500 = v537;
    v505 = v542;
    v507 = v544;
    v506 = v543;
    v509 = v546;
    v511 = v548;
    v510 = v547;
    v513 = v550;
    v515 = v552;
    v514 = v551;
    v517 = v554;
    v519 = v556;
    v518 = v555;
    *&v523[31] = *&v560[31];
    *&v523[16] = *&v560[16];
    *v523 = *v560;
    v521 = v558;
    v522 = v559;
    LOBYTE(v30) = v355;
    v41 = v328;
    *v328 = v562;
    *(v41 + 20) = v39;
    *(v41 + 4) = v38;
    *(v41 + 21) = v40;
    v535 = v571;
    v534 = v570;
    v533 = v569;
    v531 = v567;
    v532 = v568;
    sub_22F18A748(&v536, &v462);
    sub_22F18A780(&v499);
  }

  v323 = &v488;
  v574 = v644;
  v575 = v645;
  v576 = v646;
  v577 = v647;
  v572 = v642;
  v573 = v643;
  v336 = *(&v349 + 1);
  v337 = v349;
  v578 = v349;
  v579 = v29;
  v580 = v354;
  v581 = v369;
  v343 = v32;
  v582 = v32;
  v348 = v346;
  v583 = v346;
  v338 = *(&v346 + 1);
  v584 = v370;
  v585 = v359;
  v586 = v33;
  v587 = v362;
  *&v349 = v342;
  v588 = v342;
  *&v342 = *(&v342 + 1);
  v42 = v347;
  v589 = v347;
  v590 = v351;
  v591 = v34;
  v592 = v361;
  v331 = *(&v341 + 1);
  v332 = v341;
  v593 = v341;
  v594 = v371;
  v595 = v35;
  v596 = v356;
  v597 = v360;
  *&v341 = v340;
  v598 = v340;
  *&v346 = *(&v340 + 1);
  v599 = v640;
  v600 = v641;
  v601 = v30;
  v602 = v638;
  v603 = v639;
  v604 = v353;
  v605 = v636;
  v606 = v637;
  v607 = v367;
  v609 = v635;
  v608 = v634;
  v610 = v345;
  v612 = v633;
  v611 = v632;
  v613 = v365;
  v614 = v368;
  v43 = v350;
  v615 = v350;
  v616 = v364;
  v617 = v363;
  v618 = v31;
  v44 = v30;
  v45 = v358;
  v619 = v358;
  v620 = v36;
  v621 = v357;
  *&v340 = v334;
  v626 = v631;
  v339 = *(&v334 + 1);
  v625 = v630;
  v624 = v629;
  v622 = v334;
  v623 = v628;
  v46 = sub_22F19193C(&v572);
  v47 = v44;
  v48 = v42;
  v49 = v34;
  v344 = v31;
  v50 = v36;
  v51 = v343;
  v52 = v43;
  v53 = v35;
  v54 = v45;
  v333 = v33;
  LODWORD(v334) = v34;
  LODWORD(v352) = v36;
  v335 = v35;
  if (v46 != 1)
  {
    BYTE4(v454) = v641;
    LODWORD(v454) = v640;
    WORD4(v391) = v639;
    *&v391 = v638;
    BYTE4(v450) = v637;
    LODWORD(v450) = v636;
    WORD4(v458) = v635;
    *&v458 = v634;
    v457 = v633;
    v456 = v632;
    LOWORD(v445) = v631;
    BYTE4(v522) = v641;
    LODWORD(v522) = v640;
    HIWORD(v522) = v639;
    *(&v522 + 6) = v638;
    v523[12] = v637;
    *&v523[8] = v636;
    *&v523[22] = v635;
    *&v523[14] = v634;
    *&v523[32] = v632;
    v523[36] = v633;
    v535 = v631;
    HIBYTE(v544) = v369 & 1;
    HIBYTE(v548) = v33 & 1;
    HIBYTE(v552) = v34 & 1;
    HIBYTE(v556) = v356 & 1;
    LODWORD(v559) = v640;
    BYTE4(v559) = v641;
    *(&v559 + 6) = v638;
    HIWORD(v559) = v639;
    *&v560[8] = v636;
    v560[12] = v637;
    *&v560[22] = v635;
    *&v560[14] = v634;
    v560[36] = v633;
    *&v560[32] = v632;
    v565 = v36 & 1;
    v399 = v644;
    v400 = v645;
    v401 = v646;
    v402 = v647;
    v397 = v642;
    v398 = v643;
    v55 = v630;
    v444 = v630;
    v56 = v628;
    v57 = v629;
    v443 = v629;
    v442 = v628;
    v501 = v644;
    v502 = v645;
    v503 = v646;
    v504 = v647;
    v499 = v642;
    v500 = v643;
    v59 = v336;
    v58 = v337;
    *&v505 = v337;
    *(&v505 + 1) = v336;
    v60 = v338;
    v61 = v339;
    v62 = v341;
    v63 = v354;
    LOBYTE(v507) = v354;
    v64 = v366;
    v506 = v366;
    HIBYTE(v507) = v369;
    v508 = v343;
    v65 = v348;
    *&v509 = v348;
    *(&v509 + 1) = v338;
    v66 = v359;
    LOBYTE(v511) = v359;
    v67 = v370;
    v510 = v370;
    HIBYTE(v511) = v33;
    v512 = v362;
    v33 = v349;
    *&v513 = v349;
    v68 = v342;
    *(&v513 + 1) = v342;
    v69 = v351;
    LOBYTE(v515) = v351;
    v514 = v42;
    HIBYTE(v515) = v49;
    v516 = v361;
    v71 = v331;
    v70 = v332;
    *&v517 = v332;
    *(&v517 + 1) = v331;
    LOBYTE(v519) = v53;
    v72 = v371;
    v518 = v371;
    HIBYTE(v519) = v356;
    v520 = v360;
    *&v521 = v341;
    v73 = v345;
    v74 = v346;
    *(&v521 + 1) = v346;
    BYTE5(v522) = v47;
    v75 = v353;
    *v523 = v353;
    v76 = v367;
    v523[13] = v367;
    *&v523[24] = v345;
    v77 = v365;
    v523[37] = v365;
    v78 = v368;
    v523[38] = v368;
    v524 = v52;
    v79 = v363;
    v80 = v364;
    v525 = v364;
    v526 = v363;
    v563 = v344;
    v564 = v358;
    v571 = v631;
    v81 = v328;
    *(v328 + 4) = v344;
    v81 += 2;
    *(v81 + 4) = v358;
    v529 = v352;
    v530 = v357;
    *&v531 = v340;
    *(&v531 + 1) = v61;
    v534 = v55;
    v533 = v57;
    v532 = v56;
    v537 = v398;
    v536 = v397;
    v541 = v402;
    v540 = v401;
    v539 = v400;
    v538 = v399;
    *&v542 = v58;
    *(&v542 + 1) = v59;
    LOBYTE(v544) = v63;
    v543 = v64;
    *&v546 = v65;
    *(&v546 + 1) = v60;
    LOBYTE(v548) = v66;
    v547 = v67;
    *&v550 = v33;
    *(&v550 + 1) = v68;
    LOBYTE(v552) = v69;
    v551 = v48;
    *&v554 = v70;
    *(&v554 + 1) = v71;
    LOBYTE(v556) = v335;
    v555 = v72;
    *&v558 = v62;
    *(&v558 + 1) = v74;
    BYTE5(v559) = v355;
    *v560 = v75;
    v560[13] = v76;
    *&v560[24] = v73;
    v560[37] = v77;
    v560[38] = v78;
    *&v562 = v80;
    *(&v562 + 1) = v79;
    *&v567 = v340;
    *(&v567 + 1) = v61;
    v570 = v444;
    v569 = v443;
    v568 = v442;
    sub_22F18A748(&v499, &v462);
    sub_22F18A780(&v536);
    v374 = v501;
    v375 = v502;
    v376 = v503;
    v377 = v504;
    v372 = v499;
    v373 = v500;
    v82 = *v81;
    v83 = *(v81 + 4);
    v84 = *(v328 + 21);
    v464 = v501;
    v465 = v502;
    v466 = v503;
    v467 = v504;
    v462 = v499;
    v463 = v500;
    v468 = v505;
    v470 = v507;
    v469 = v506;
    v472 = v509;
    v474 = v511;
    v473 = v510;
    v476 = v513;
    v478 = v515;
    v477 = v514;
    v480 = v517;
    v482 = v519;
    v481 = v518;
    *&v486[31] = *&v523[31];
    *&v486[16] = *&v523[16];
    *v486 = *v523;
    v484 = v521;
    v485 = v522;
    v85 = v323;
    *v323 = *v328;
    *(v85 + 20) = v83;
    *(v85 + 4) = v82;
    *(v85 + 21) = v84;
    v498 = v535;
    v497 = v534;
    v496 = v533;
    v494 = v531;
    v495 = v532;
    sub_22F18A748(&v499, &v419);
    sub_22F18A780(&v462);
    v51 = v343;
    v53 = v335;
    v47 = v355;
    v52 = v350;
    v54 = v358;
    v50 = v352;
    v48 = v347;
    LOBYTE(v33) = v333;
    v49 = v334;
  }

  *(&v559 + 6) = v638;
  *&v560[14] = v634;
  LODWORD(v559) = v640;
  BYTE4(v559) = v641;
  HIWORD(v559) = v639;
  *&v560[8] = v636;
  v560[12] = v637;
  *&v560[22] = v635;
  v560[36] = v633;
  *&v560[32] = v632;
  v571 = v631;
  v315 = &v433;
  v538 = v644;
  v539 = v645;
  v540 = v646;
  v541 = v647;
  v536 = v642;
  v537 = v643;
  *&v542 = v337;
  *(&v542 + 1) = v336;
  v543 = v366;
  LOBYTE(v544) = v354;
  HIBYTE(v544) = v369;
  v545 = v51;
  *&v546 = v348;
  *(&v546 + 1) = v338;
  v547 = v370;
  LOBYTE(v548) = v359;
  HIBYTE(v548) = v33;
  v549 = v362;
  *&v550 = v349;
  *(&v550 + 1) = v342;
  v551 = v48;
  v86 = v351;
  LOBYTE(v552) = v351;
  HIBYTE(v552) = v49;
  v553 = v361;
  v88 = v331;
  v87 = v332;
  *&v554 = v332;
  *(&v554 + 1) = v331;
  v89 = v371;
  v555 = v371;
  LOBYTE(v556) = v53;
  HIBYTE(v556) = v356;
  v557 = v360;
  *&v558 = v341;
  *(&v558 + 1) = v346;
  BYTE5(v559) = v47;
  v90 = v353;
  *v560 = v353;
  v91 = v367;
  v560[13] = v367;
  *&v560[24] = v345;
  v92 = v365;
  v560[37] = v365;
  v93 = v368;
  v560[38] = v368;
  v561 = v52;
  *&v562 = v364;
  *(&v562 + 1) = v363;
  v563 = v344;
  v564 = v54;
  v565 = v50;
  v566 = v357;
  *&v567 = v340;
  *(&v567 + 1) = v339;
  v570 = v630;
  v569 = v629;
  v568 = v628;
  v94 = sub_22F19193C(&v536);
  v95 = v89;
  v96 = v90;
  v97 = v92;
  v98 = v359;
  v99 = v86;
  v100 = v342;
  *&v371 = v89;
  LODWORD(v368) = v93;
  if (v94 == 1)
  {
    v101 = v87;
    v326 = 0;
    v325 = 1;
    v327 = 1;
    v328 = 0;
    v102 = v366;
    v103 = v354;
    v104 = v337;
    v105 = v343;
  }

  else
  {
    v106 = v91;
    v107 = v366;
    v108 = v354;
    if (v560[38])
    {
      v327 = 1;
      v328 = 0;
      v109 = v356;
      v110 = v369;
      v111 = v362;
      v112 = v361;
      v113 = v360;
      v114 = v349;
    }

    else
    {
      v109 = v356;
      v110 = v369;
      v111 = v362;
      v112 = v361;
      v114 = v349;
      if (BYTE5(v559))
      {
        v328 = 0;
        v115 = 1;
      }

      else
      {
        v328 = v558;
        v115 = DWORD1(v558) & 1;
      }

      v327 = v115;
      v113 = v360;
    }

    LODWORD(v450) = v640;
    BYTE4(v450) = v641;
    WORD4(v458) = v639;
    *&v458 = v638;
    v456 = v636;
    v457 = v637;
    v454 = v634;
    v455 = v635;
    v452 = v632;
    v453 = v633;
    LOWORD(v394) = v631;
    BYTE4(v485) = v641;
    LODWORD(v485) = v640;
    HIWORD(v485) = v639;
    *(&v485 + 6) = v638;
    v486[12] = v637;
    *&v486[8] = v636;
    *&v486[22] = v635;
    *&v486[14] = v634;
    *&v486[32] = v632;
    v486[36] = v633;
    v498 = v631;
    HIBYTE(v507) = v110 & 1;
    HIBYTE(v511) = v333 & 1;
    HIBYTE(v515) = v334 & 1;
    HIBYTE(v519) = v109 & 1;
    LODWORD(v522) = v640;
    BYTE4(v522) = v641;
    *(&v522 + 6) = v638;
    HIWORD(v522) = v639;
    *&v523[8] = v636;
    v523[12] = v637;
    *&v523[22] = v635;
    *&v523[14] = v634;
    v523[36] = v633;
    *&v523[32] = v632;
    v529 = v352 & 1;
    v374 = v644;
    v375 = v645;
    v376 = v646;
    v377 = v647;
    v372 = v642;
    v373 = v643;
    v116 = v630;
    v393 = v630;
    v117 = v628;
    v118 = v629;
    v391 = v628;
    v392 = v629;
    v464 = v644;
    v465 = v645;
    v466 = v646;
    v467 = v647;
    v462 = v642;
    v463 = v643;
    v119 = v336;
    v120 = v337;
    *&v468 = v337;
    *(&v468 + 1) = v336;
    LOBYTE(v470) = v354;
    v469 = v366;
    HIBYTE(v470) = v110;
    v471 = v343;
    v122 = v347;
    v121 = v348;
    *&v472 = v348;
    v123 = v338;
    *(&v472 + 1) = v338;
    LOBYTE(v474) = v359;
    v124 = v370;
    v473 = v370;
    HIBYTE(v474) = v333;
    v475 = v111;
    *&v476 = v114;
    v125 = v342;
    *(&v476 + 1) = v342;
    LOBYTE(v478) = v99;
    v477 = v347;
    HIBYTE(v478) = v334;
    v479 = v112;
    v126 = v331;
    v101 = v332;
    *&v480 = v332;
    *(&v480 + 1) = v331;
    v127 = v335;
    LOBYTE(v482) = v335;
    v481 = v89;
    HIBYTE(v482) = v109;
    v483 = v113;
    v129 = v344;
    v128 = v345;
    v527 = v344;
    v528 = v358;
    v535 = v631;
    v130 = v341;
    *&v484 = v341;
    v131 = v346;
    *(&v484 + 1) = v346;
    v132 = v99;
    v133 = v355;
    BYTE5(v485) = v355;
    *v486 = v96;
    v486[13] = v106;
    *&v486[24] = v345;
    v486[37] = v97;
    v134 = v368;
    v486[38] = v368;
    v487 = v350;
    LODWORD(v365) = v97;
    v136 = v363;
    v135 = v364;
    v488 = v364;
    v489 = v363;
    v137 = v323;
    *(v323 + 20) = v358;
    *(v137 + 4) = v129;
    v492 = v352;
    v493 = v357;
    *&v494 = v340;
    *(&v494 + 1) = v339;
    v497 = v116;
    v496 = v118;
    v495 = v117;
    v500 = v373;
    v499 = v372;
    v504 = v377;
    v503 = v376;
    v502 = v375;
    v501 = v374;
    *&v505 = v120;
    *(&v505 + 1) = v119;
    v103 = v108;
    LOBYTE(v507) = v108;
    v506 = v107;
    *&v509 = v121;
    *(&v509 + 1) = v123;
    LOBYTE(v511) = v98;
    v510 = v124;
    *&v513 = v114;
    v88 = v126;
    v100 = v125;
    *(&v513 + 1) = v125;
    LOBYTE(v515) = v132;
    v514 = v122;
    *&v517 = v101;
    *(&v517 + 1) = v126;
    LOBYTE(v519) = v127;
    v518 = v371;
    *&v521 = v130;
    *(&v521 + 1) = v131;
    BYTE5(v522) = v133;
    *v523 = v96;
    v523[13] = v106;
    *&v523[24] = v128;
    v523[37] = v365;
    v523[38] = v134;
    v525 = v135;
    v526 = v136;
    *&v531 = v340;
    *(&v531 + 1) = v339;
    v534 = v393;
    v533 = v392;
    v532 = v391;
    sub_22F18A748(&v462, &v419);
    sub_22F18A780(&v499);
    if (v134 & 1) != 0 || (v133)
    {
      v326 = 0;
      v325 = 1;
    }

    else
    {
      v325 = DWORD1(v346) & 1;
      v326 = v346;
    }

    v105 = v343;
    v104 = v337;
    v444 = v464;
    v445 = v465;
    v446 = v466;
    v447 = v467;
    v442 = v462;
    v443 = v463;
    v138 = *(v323 + 4);
    v139 = *(v323 + 20);
    v140 = *(v323 + 21);
    v421 = v464;
    v422 = v465;
    v423 = v466;
    v424 = v467;
    v419 = v462;
    v420 = v463;
    v425 = v468;
    WORD2(v426[0]) = v470;
    LODWORD(v426[0]) = v469;
    *(v426 + 8) = v472;
    WORD6(v426[1]) = v474;
    DWORD2(v426[1]) = v473;
    v427 = v476;
    WORD2(v428[0]) = v478;
    LODWORD(v428[0]) = v477;
    *(v428 + 8) = v480;
    WORD6(v428[1]) = v482;
    DWORD2(v428[1]) = v481;
    *&v431[31] = *&v486[31];
    *&v431[16] = *&v486[16];
    *v431 = *v486;
    v429 = v484;
    v430 = v485;
    v141 = v315;
    *v315 = *v323;
    *(v141 + 20) = v139;
    *(v141 + 4) = v138;
    *(v141 + 21) = v140;
    v441 = v498;
    v440 = v497;
    v439 = v496;
    v437 = v494;
    v438 = v495;
    sub_22F18A748(&v462, &v397);
    sub_22F18A780(&v419);
    v95 = v371;
    v98 = v359;
    v99 = v351;
    v102 = v366;
  }

  *(&v522 + 6) = v638;
  *&v523[14] = v634;
  LODWORD(v522) = v640;
  BYTE4(v522) = v641;
  HIWORD(v522) = v639;
  *&v523[8] = v636;
  v523[12] = v637;
  *&v523[22] = v635;
  v523[36] = v633;
  *&v523[32] = v632;
  v535 = v631;
  v323 = v411;
  v501 = v644;
  v502 = v645;
  v503 = v646;
  v504 = v647;
  v499 = v642;
  v500 = v643;
  *&v505 = v104;
  *(&v505 + 1) = v336;
  v506 = v102;
  LOBYTE(v507) = v103;
  v142 = v369;
  HIBYTE(v507) = v369;
  v508 = v105;
  *&v509 = v348;
  *(&v509 + 1) = v338;
  v510 = v370;
  LOBYTE(v511) = v98;
  HIBYTE(v511) = v333;
  v512 = v362;
  *&v513 = v349;
  *(&v513 + 1) = v100;
  v514 = v347;
  LOBYTE(v515) = v99;
  HIBYTE(v515) = v334;
  v516 = v361;
  *&v517 = v101;
  *(&v517 + 1) = v88;
  v518 = v95;
  LOBYTE(v519) = v335;
  v143 = v356;
  HIBYTE(v519) = v356;
  v520 = v360;
  *&v521 = v341;
  v144 = v345;
  *(&v521 + 1) = v346;
  BYTE5(v522) = v355;
  v145 = v353;
  *v523 = v353;
  v523[13] = v367;
  *&v523[24] = v345;
  v146 = v365;
  v523[37] = v365;
  v147 = v368;
  v523[38] = v368;
  v524 = v350;
  v525 = v364;
  v526 = v363;
  v148 = v344;
  v527 = v344;
  v528 = v358;
  v529 = v352;
  v530 = v357;
  *&v531 = v340;
  *(&v531 + 1) = v339;
  v534 = v630;
  v533 = v629;
  v532 = v628;
  if (sub_22F19193C(&v499) != 1)
  {
    v444 = v644;
    v445 = v645;
    v446 = v646;
    v447 = v647;
    v442 = v642;
    v443 = v643;
    v456 = v640;
    v457 = v641;
    v455 = v639;
    v454 = v638;
    v453 = v637;
    v452 = v636;
    v451 = v635;
    v450 = v634;
    v449 = v633;
    v448 = v632;
    v461 = v631;
    v460 = v630;
    v459 = v629;
    v458 = v628;
    v149 = v354;
    v150 = v342;
    v152 = v331;
    v151 = v332;
    LODWORD(v430) = v640;
    BYTE4(v430) = v641;
    *(&v430 + 6) = v638;
    HIWORD(v430) = v639;
    *&v431[8] = v636;
    v431[12] = v637;
    *&v431[22] = v635;
    *&v431[14] = v634;
    v431[36] = v633;
    *&v431[32] = v632;
    v441 = v631;
    HIBYTE(v470) = v369 & 1;
    HIBYTE(v474) = v333 & 1;
    HIBYTE(v478) = v334 & 1;
    HIBYTE(v482) = v356 & 1;
    LODWORD(v485) = v640;
    BYTE4(v485) = v641;
    *(&v485 + 6) = v638;
    HIWORD(v485) = v639;
    *&v486[8] = v636;
    v486[12] = v637;
    *&v486[22] = v635;
    *&v486[14] = v634;
    v486[36] = v633;
    *&v486[32] = v632;
    v153 = v352;
    v492 = v352 & 1;
    v421 = v644;
    v422 = v645;
    v423 = v646;
    v424 = v647;
    v419 = v642;
    v420 = v643;
    v155 = v336;
    v154 = v337;
    *&v425 = v337;
    *(&v425 + 1) = v336;
    LODWORD(v426[0]) = v366;
    BYTE4(v426[0]) = v354;
    BYTE5(v426[0]) = v369;
    WORD3(v426[0]) = v343;
    *(&v426[0] + 1) = v348;
    v156 = v338;
    *&v426[1] = v338;
    DWORD2(v426[1]) = v370;
    v157 = v357;
    v158 = v359;
    BYTE12(v426[1]) = v359;
    BYTE13(v426[1]) = v333;
    HIWORD(v426[1]) = v362;
    *&v427 = v349;
    *(&v427 + 1) = v342;
    v159 = v347;
    LODWORD(v428[0]) = v347;
    v160 = v351;
    BYTE4(v428[0]) = v351;
    BYTE5(v428[0]) = v334;
    WORD3(v428[0]) = v361;
    *(&v428[0] + 1) = v332;
    *&v428[1] = v331;
    DWORD2(v428[1]) = v371;
    v161 = v335;
    BYTE12(v428[1]) = v335;
    BYTE13(v428[1]) = v356;
    HIWORD(v428[1]) = v360;
    v162 = v341;
    *&v429 = v341;
    v144 = v345;
    v163 = v346;
    *(&v429 + 1) = v346;
    v164 = v355;
    BYTE5(v430) = v355;
    v145 = v353;
    *v431 = v353;
    v165 = v367;
    v431[13] = v367;
    *&v431[24] = v345;
    v146 = v365;
    v431[37] = v365;
    v147 = v368;
    v431[38] = v368;
    v432 = v350;
    v166 = v364;
    v433 = v364;
    v167 = v363;
    v434 = v363;
    v490 = v344;
    v168 = v358;
    v491 = v358;
    v498 = v631;
    v169 = v315;
    v170 = v315;
    *(v315 + 4) = v344;
    v170 += 2;
    *(v170 + 4) = v168;
    LODWORD(v352) = v153;
    v435[5] = v153;
    v436 = v157;
    *&v437 = v340;
    *(&v437 + 1) = v339;
    v440 = v630;
    v439 = v629;
    v438 = v628;
    v463 = v443;
    v462 = v442;
    v467 = v447;
    v466 = v446;
    v465 = v445;
    v464 = v444;
    *&v468 = v154;
    *(&v468 + 1) = v155;
    LOBYTE(v470) = v149;
    v469 = v366;
    *&v472 = v348;
    *(&v472 + 1) = v156;
    LOBYTE(v474) = v158;
    v473 = v370;
    *&v476 = v349;
    *(&v476 + 1) = v150;
    LOBYTE(v478) = v160;
    v477 = v159;
    *&v480 = v151;
    *(&v480 + 1) = v152;
    LOBYTE(v482) = v161;
    v481 = v371;
    *&v484 = v162;
    *(&v484 + 1) = v163;
    BYTE5(v485) = v164;
    *v486 = v145;
    LODWORD(v367) = v165;
    v486[13] = v165;
    *&v486[24] = v144;
    v486[37] = v146;
    v486[38] = v147;
    v488 = v166;
    v489 = v167;
    *&v494 = v340;
    *(&v494 + 1) = v339;
    v497 = v460;
    v496 = v459;
    v495 = v458;
    v143 = v356;
    v142 = v369;
    sub_22F18A748(&v419, &v397);
    sub_22F18A780(&v462);
    v393 = v421;
    v394 = v422;
    v395 = v423;
    v396 = v424;
    v391 = v419;
    v392 = v420;
    v171 = *v170;
    v172 = *(v170 + 4);
    v173 = *(v169 + 21);
    v399 = v421;
    v400 = v422;
    v401 = v423;
    v402 = v424;
    v397 = v419;
    v398 = v420;
    v403 = v425;
    WORD2(v404[0]) = WORD2(v426[0]);
    LODWORD(v404[0]) = v426[0];
    *(v404 + 8) = *(v426 + 8);
    WORD6(v404[1]) = WORD6(v426[1]);
    DWORD2(v404[1]) = DWORD2(v426[1]);
    v405 = v427;
    WORD2(v406[0]) = WORD2(v428[0]);
    LODWORD(v406[0]) = v428[0];
    *(v406 + 8) = *(v428 + 8);
    WORD6(v406[1]) = WORD6(v428[1]);
    DWORD2(v406[1]) = DWORD2(v428[1]);
    *&v409[31] = *&v431[31];
    *&v409[16] = *&v431[16];
    *v409 = *v431;
    v407 = v429;
    v408 = v430;
    v174 = v323;
    *v323 = *v169;
    *(v174 + 20) = v172;
    *(v174 + 4) = v171;
    *(v174 + 21) = v173;
    v418 = v441;
    v417 = v440;
    v416 = v439;
    v414 = v437;
    v415 = v438;
    sub_22F18A748(&v419, &v372);
    sub_22F18A780(&v397);
    v148 = v344;
  }

  *(&v485 + 6) = v638;
  *&v486[14] = v634;
  LODWORD(v485) = v640;
  BYTE4(v485) = v641;
  HIWORD(v485) = v639;
  *&v486[8] = v636;
  v486[12] = v637;
  *&v486[22] = v635;
  v486[36] = v633;
  *&v486[32] = v632;
  v498 = v631;
  v464 = v644;
  v465 = v645;
  v466 = v646;
  v467 = v647;
  v462 = v642;
  v463 = v643;
  *&v468 = v337;
  *(&v468 + 1) = v336;
  v469 = v366;
  LOBYTE(v470) = v354;
  LODWORD(v369) = v142;
  HIBYTE(v470) = v142;
  v471 = v343;
  *&v472 = v348;
  *(&v472 + 1) = v338;
  v473 = v370;
  LOBYTE(v474) = v359;
  HIBYTE(v474) = v333;
  v475 = v362;
  *&v476 = v349;
  *(&v476 + 1) = v342;
  v477 = v347;
  LOBYTE(v478) = v351;
  HIBYTE(v478) = v334;
  v479 = v361;
  *&v480 = v332;
  *(&v480 + 1) = v331;
  v481 = v371;
  LOBYTE(v482) = v335;
  v175 = v143;
  HIBYTE(v482) = v143;
  v483 = v360;
  *&v484 = v341;
  *(&v484 + 1) = v346;
  BYTE5(v485) = v355;
  *v486 = v145;
  v176 = v367;
  v486[13] = v367;
  *&v486[24] = v144;
  v486[37] = v146;
  v486[38] = v147;
  v487 = v350;
  v488 = v364;
  v489 = v363;
  v490 = v148;
  v491 = v358;
  v492 = v352;
  v493 = v357;
  *&v494 = v340;
  *(&v494 + 1) = v339;
  v497 = v630;
  v496 = v629;
  v495 = v628;
  if (sub_22F19193C(&v462) != 1)
  {
    v177 = v176;
    v178 = v144;
    v365 = v386;
    v356 = v435;
    v444 = v644;
    v445 = v645;
    v446 = v646;
    v447 = v647;
    v442 = v642;
    v443 = v643;
    v456 = v640;
    v457 = v641;
    v455 = v639;
    v454 = v638;
    v453 = v637;
    v452 = v636;
    v451 = v635;
    v450 = v634;
    v449 = v633;
    v448 = v632;
    v461 = v631;
    v460 = v630;
    v459 = v629;
    v458 = v628;
    v179 = v175;
    v181 = v363;
    v180 = v364;
    v182 = v349;
    WORD3(v404[0]) = v343;
    HIWORD(v404[1]) = v362;
    WORD3(v406[0]) = v361;
    HIWORD(v406[1]) = v360;
    v410 = v350;
    v413 = v357;
    LODWORD(v408) = v640;
    BYTE4(v408) = v641;
    *(&v408 + 6) = v638;
    HIWORD(v408) = v639;
    *&v409[8] = v636;
    v409[12] = v637;
    *&v409[22] = v635;
    *&v409[14] = v634;
    v409[36] = v633;
    *&v409[32] = v632;
    v418 = v631;
    *&v425 = v337;
    *&v403 = v337;
    *(&v403 + 1) = v336;
    *(&v425 + 1) = v336;
    BYTE4(v404[0]) = v354;
    BYTE4(v426[0]) = v354;
    LODWORD(v404[0]) = v366;
    LODWORD(v426[0]) = v366;
    BYTE5(v404[0]) = v369;
    BYTE5(v426[0]) = v369 & 1;
    *(&v404[0] + 1) = v348;
    *(&v426[0] + 1) = v348;
    v399 = v644;
    v400 = v645;
    v401 = v646;
    v402 = v647;
    v397 = v642;
    v398 = v643;
    *&v404[1] = v338;
    v183 = v370;
    DWORD2(v404[1]) = v370;
    v184 = v359;
    BYTE12(v404[1]) = v359;
    v186 = v333;
    v185 = v334;
    BYTE13(v404[1]) = v333;
    *&v405 = v349;
    v187 = v342;
    *(&v405 + 1) = v342;
    v188 = v347;
    LODWORD(v406[0]) = v347;
    v189 = v351;
    BYTE4(v406[0]) = v351;
    BYTE5(v406[0]) = v334;
    v191 = v331;
    v190 = v332;
    *(&v406[0] + 1) = v332;
    *&v406[1] = v331;
    v192 = v371;
    DWORD2(v406[1]) = v371;
    v193 = v335;
    BYTE12(v406[1]) = v335;
    BYTE13(v406[1]) = v179;
    v194 = v341;
    *&v407 = v341;
    v195 = v346;
    *(&v407 + 1) = v346;
    v196 = v355;
    BYTE5(v408) = v355;
    *v409 = v145;
    v409[13] = v177;
    *&v409[24] = v144;
    v409[37] = v146;
    v409[38] = v147;
    v411[0] = v364;
    v411[1] = v363;
    *&v426[1] = v338;
    v197 = v146;
    v198 = v323;
    v199 = v344;
    *(v323 + 4) = v344;
    v198 += 2;
    v200 = v358;
    *(v198 + 4) = v358;
    v201 = v352;
    v412 = v352;
    v202 = v340;
    *&v414 = v340;
    v203 = v181;
    v204 = v339;
    *(&v414 + 1) = v339;
    v417 = v630;
    v416 = v629;
    v415 = v628;
    v420 = v443;
    v419 = v442;
    v424 = v447;
    v423 = v446;
    v422 = v445;
    v421 = v444;
    BYTE12(v426[1]) = v184;
    DWORD2(v426[1]) = v183;
    BYTE13(v426[1]) = v186 & 1;
    *&v427 = v182;
    *(&v427 + 1) = v187;
    BYTE4(v428[0]) = v189;
    LODWORD(v428[0]) = v188;
    BYTE5(v428[0]) = v185 & 1;
    *(&v428[0] + 1) = v190;
    *&v428[1] = v191;
    BYTE12(v428[1]) = v193;
    DWORD2(v428[1]) = v192;
    BYTE13(v428[1]) = v179 & 1;
    *&v429 = v194;
    *(&v429 + 1) = v195;
    LODWORD(v430) = v456;
    BYTE4(v430) = v457;
    BYTE5(v430) = v196;
    *(&v430 + 6) = v454;
    HIWORD(v430) = v455;
    *v431 = v145;
    *&v431[8] = v452;
    v431[12] = v453;
    v431[13] = v177;
    *&v431[22] = v451;
    *&v431[14] = v450;
    *&v431[24] = v178;
    v431[36] = v449;
    *&v431[32] = v448;
    v431[37] = v197;
    v431[38] = v368;
    v433 = v180;
    v434 = v203;
    v205 = v356;
    *v356 = v199;
    *(v205 + 4) = v200;
    *(v205 + 5) = v201 & 1;
    *&v437 = v202;
    *(&v437 + 1) = v204;
    v441 = v461;
    v440 = v460;
    v439 = v459;
    v438 = v458;
    sub_22F18A748(&v397, &v372);
    sub_22F18A780(&v419);
    v393 = v399;
    v394 = v400;
    v395 = v401;
    v396 = v402;
    v391 = v397;
    v392 = v398;
    v206 = *v198;
    v207 = *(v198 + 4);
    v208 = *(v323 + 21);
    v374 = v399;
    v375 = v400;
    v376 = v401;
    v377 = v402;
    v372 = v397;
    v373 = v398;
    v378 = v403;
    WORD2(v379[0]) = WORD2(v404[0]);
    LODWORD(v379[0]) = v404[0];
    *(v379 + 8) = *(v404 + 8);
    WORD6(v379[1]) = WORD6(v404[1]);
    DWORD2(v379[1]) = DWORD2(v404[1]);
    v380 = v405;
    WORD2(v381[0]) = WORD2(v406[0]);
    LODWORD(v381[0]) = v406[0];
    *(v381 + 8) = *(v406 + 8);
    WORD6(v381[1]) = WORD6(v406[1]);
    DWORD2(v381[1]) = DWORD2(v406[1]);
    *&v385[15] = *&v409[31];
    v384 = *v409;
    *v385 = *&v409[16];
    v382 = v407;
    v383 = v408;
    v209 = v365;
    *v365 = *v323;
    *(v209 + 20) = v207;
    *(v209 + 4) = v206;
    *(v209 + 21) = v208;
    v390 = v418;
    v388 = v416;
    v389 = v417;
    *&v386[24] = v414;
    v387 = v415;
    sub_22F18A780(&v372);
  }

  LODWORD(v364) = 1056293519;
  LOBYTE(v391) = 0;
  LOBYTE(v458) = 0;
  v210 = 0.0;
  v211 = v316;
  if (v316 == 1)
  {
    goto LABEL_59;
  }

  if (v324 < 2)
  {
    v211 = 1;
LABEL_59:
    v361 = v211;
    v359 = 0;
    v360 = 0;
    v362 = 0;
    v363 = 0;
    v215 = 0;
    v212 = 0;
    goto LABEL_113;
  }

  v212 = *(v324 + 16);
  if (!v212)
  {
    v359 = 0;
    v360 = 0;
    v362 = 0;
    v363 = 0;
    v215 = 0;
    goto LABEL_61;
  }

  v213 = *(v324 + 48);
  v419 = *(v324 + 32);
  v420 = v213;
  v214 = *(v324 + 64);
  v422 = *(v324 + 80);
  v421 = v214;
  v423 = *(v324 + 96);
  if (v419 == 1)
  {
    v359 = 0;
    v360 = 0;
    v362 = 0;
    v363 = 0;
    v215 = 0;
    v212 = 0;
LABEL_61:
    v361 = 1;
    goto LABEL_113;
  }

  v216 = v422;
  if (v422)
  {
    v217 = *(v422 + 16);
    if (v217)
    {
      sub_22F1918D4(&v419, &v397);
      *&v397 = MEMORY[0x277D84F90];

      sub_22F1464D4(0, v217, 0);
      v218 = v397;
      *&v371 = v216;
      v219 = (v216 + 56);
      do
      {
        v220 = *(v219 - 6);
        v221 = *(v219 - 2);
        v222 = *(v219 - 2);
        v223 = *v219;
        *&v397 = v218;
        v225 = *(v218 + 16);
        v224 = *(v218 + 24);

        if (v225 >= v224 >> 1)
        {
          sub_22F1464D4((v224 > 1), v225 + 1, 1);
          v218 = v397;
        }

        *(v218 + 16) = v225 + 1;
        v226 = v218 + 24 * v225;
        *(v226 + 32) = v221;
        *(v226 + 40) = v220;
        *(v226 + 44) = v222;
        *(v226 + 48) = v223;
        v219 += 4;
        --v217;
      }

      while (v217);
      v366 = v218;
    }

    else
    {
      sub_22F1918D4(&v419, &v397);
      v366 = MEMORY[0x277D84F90];
    }

    v227 = *(&v422 + 1);
    v228 = v423;
  }

  else
  {
    v227 = *(&v422 + 1);
    v228 = v423;
    sub_22F1918D4(&v419, &v397);
    v366 = 0;
  }

  sub_22F1918D4(&v419, &v397);

  sub_22F18B0F4(v228);
  if (v227)
  {
    v229 = *(v227 + 16);
    if (v229)
    {
      *&v397 = MEMORY[0x277D84F90];
      sub_22F1464B4(0, v229, 0);
      v230 = v397;
      *&v371 = v227;
      v231 = (v227 + 48);
      do
      {
        v232 = *(v231 - 2);
        v233 = *(v231 - 2);
        v234 = *v231;
        *&v397 = v230;
        v236 = *(v230 + 16);
        v235 = *(v230 + 24);

        if (v236 >= v235 >> 1)
        {
          sub_22F1464B4((v235 > 1), v236 + 1, 1);
          v230 = v397;
        }

        *(v230 + 16) = v236 + 1;
        v237 = v230 + 24 * v236;
        *(v237 + 32) = v232;
        *(v237 + 40) = v233;
        *(v237 + 48) = v234;
        v231 += 3;
        --v229;
      }

      while (v229);
      v365 = v230;
    }

    else
    {

      v365 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v365 = 0;
  }

  v239 = *(&v423 + 1);
  v238 = v423;
  sub_22F1918D4(&v419, &v397);
  sub_22F13BB74(v238);

  sub_22F18B0F4(v238);
  if (v238)
  {

    v362 = v239;
    sub_22F18B0F4(v238);
  }

  else
  {
    v362 = 0;
  }

  v240 = v423;
  v241 = v419;
  sub_22F1918D4(&v419, &v397);

  sub_22F18B0F4(v240);
  v210 = 0.0;
  if (v241)
  {
    v242 = v238;
    v243 = *(v241 + 16);
    if (!v243)
    {

      v361 = 1;
LABEL_96:
      v238 = v242;
      goto LABEL_97;
    }

    if (v243 >= 8)
    {
      v244 = v243 & 0x7FFFFFFFFFFFFFF8;
      v245 = v241 + 48;
      v246 = v243 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v210 = (((((((v210 + COERCE_FLOAT(*(v245 - 16))) + COERCE_FLOAT(HIDWORD(*(v245 - 16)))) + COERCE_FLOAT(*(v245 - 8))) + COERCE_FLOAT(HIDWORD(*(v245 - 16)))) + COERCE_FLOAT(*v245)) + COERCE_FLOAT(HIDWORD(*v245))) + COERCE_FLOAT(*(v245 + 8))) + COERCE_FLOAT(HIDWORD(*v245));
        v245 += 32;
        v246 -= 8;
      }

      while (v246);
      if (v243 == v244)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v244 = 0;
    }

    v247 = v243 - v244;
    v248 = (v241 + 4 * v244 + 32);
    do
    {
      v249 = *v248++;
      v210 = v210 + v249;
      --v247;
    }

    while (v247);
LABEL_95:

    v361 = 0;
    v210 = v210 / v243;
    goto LABEL_96;
  }

  v361 = 1;
LABEL_97:
  v250 = v421;
  v251 = DWORD2(v421) | (BYTE12(v421) << 32);
  v252 = v423;
  if (v420)
  {
    v253 = *(v420 + 16);
    if (v253)
    {
      if (v253 >= 8)
      {
        v254 = v253 & 0x7FFFFFFFFFFFFFF8;
        v256 = v420 + 48;
        v255 = 0.0;
        v257 = v253 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v255 = (((((((v255 + COERCE_FLOAT(*(v256 - 16))) + COERCE_FLOAT(HIDWORD(*(v256 - 16)))) + COERCE_FLOAT(*(v256 - 8))) + COERCE_FLOAT(HIDWORD(*(v256 - 16)))) + COERCE_FLOAT(*v256)) + COERCE_FLOAT(HIDWORD(*v256))) + COERCE_FLOAT(*(v256 + 8))) + COERCE_FLOAT(HIDWORD(*v256));
          v256 += 32;
          v257 -= 8;
        }

        while (v257);
        if (v253 == v254)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v254 = 0;
        v255 = 0.0;
      }

      v258 = v253 - v254;
      v259 = (v420 + 4 * v254 + 32);
      do
      {
        v260 = *v259++;
        v255 = v255 + v260;
        --v258;
      }

      while (v258);
LABEL_106:
      *&v364 = v255 / v253;
    }
  }

  v363 = v238;

  sub_22F18B0F4(v252);
  v261 = v251 & 0x1FFFFFFFFLL;
  if (v250)
  {
    v262 = v250;
  }

  else
  {
    v262 = 0;
  }

  if (!v250)
  {
    v261 = 0;
  }

  v359 = v261;
  v360 = v262;
  v215 = v365;
  v212 = v366;
LABEL_113:
  v263 = *&v652[288];
  v365 = v215;
  v366 = v212;
  if (*&v652[288] >= 2uLL)
  {
    v264 = *(*&v652[288] + 16);
    v265 = MEMORY[0x277D84F90];
    if (v264)
    {
      *&v419 = MEMORY[0x277D84F90];
      sub_22F146494(0, v264, 0);
      v265 = v419;
      v266 = (v263 + 104);
      do
      {
        v267 = *(v266 - 8);
        v369 = *(v266 - 9);
        v268 = *(v266 - 7);
        v269 = *(v266 - 3);
        v370 = *(v266 - 2);
        v371 = v269;
        v270 = *(v266 - 2);
        v271 = *(v266 - 1);
        LODWORD(v368) = *v266;
        v273 = *(v265 + 16);
        v272 = *(v265 + 24);
        *&v419 = v265;
        v367 = v267;
        v274 = v265;

        v265 = v274;
        if (v273 >= v272 >> 1)
        {
          sub_22F146494((v272 > 1), v273 + 1, 1);
          v265 = v419;
        }

        *(v265 + 16) = v273 + 1;
        v275 = v265 + 80 * v273;
        v276 = v367;
        *(v275 + 32) = v369;
        *(v275 + 40) = v276;
        *(v275 + 48) = v268;
        v277 = v371;
        *(v275 + 72) = v370;
        *(v275 + 56) = v277;
        *(v275 + 88) = v270;
        *(v275 + 96) = v271;
        *(v275 + 104) = v368;
        v266 += 80;
        --v264;
      }

      while (v264);
    }

    *&v371 = v265;
  }

  else
  {
    *&v371 = 0;
  }

  v429 = *&v652[208];
  v430 = *&v652[224];
  *v431 = *&v652[240];
  v426[1] = *&v652[144];
  v427 = *&v652[160];
  v428[1] = *&v652[192];
  v428[0] = *&v652[176];
  v423 = *&v652[80];
  v424 = *&v652[96];
  v426[0] = *&v652[128];
  v425 = *&v652[112];
  v419 = *&v652[16];
  v420 = *&v652[32];
  v422 = *&v652[64];
  v421 = *&v652[48];
  if (sub_22F1E1664(&v419) == 1)
  {
    v278 = 0;
  }

  else
  {
    v278 = *&v426[0];
  }

  static MusicKitCatalogSong.unitag(withTag:namespace:fromUnitags:)(0x6972706F72707041, 0xEB00000000657461, 0xD000000000000015, 0x800000022F7986D0, v278, &v397);
  if (v398 == 1)
  {
    v369 = 1;
    *&v370 = 0;
  }

  else
  {
    v369 = DWORD1(v397) & 1;
    *&v370 = v397;
    sub_22F2C08EC(v397, *(&v397 + 1), v398);
  }

  static MusicKitCatalogSong.unitag(withTag:namespace:fromUnitags:)(0x6F72707041746F4ELL, 0xEE00657461697270, 0xD000000000000015, 0x800000022F7986D0, v278, &v442);

  if (v443 == 1)
  {
    v367 = 1;
    v368 = 0;
  }

  else
  {
    v367 = DWORD1(v442) & 1;
    v368 = v442;
    sub_22F2C08EC(v442, *(&v442 + 1), v443);
  }

  v407 = *&v652[208];
  v408 = *&v652[224];
  *v409 = *&v652[240];
  v404[1] = *&v652[144];
  v405 = *&v652[160];
  v406[1] = *&v652[192];
  v406[0] = *&v652[176];
  v401 = *&v652[80];
  v402 = *&v652[96];
  v404[0] = *&v652[128];
  v403 = *&v652[112];
  v397 = *&v652[16];
  v398 = *&v652[32];
  v400 = *&v652[64];
  v399 = *&v652[48];
  if (sub_22F1E1664(&v397) == 1)
  {
    LODWORD(v358) = 0;
    v355 = 0;
    v357 = 0;
    v279 = 0;
    v352 = 0u;
    v353 = 0u;
    LODWORD(v354) = 1;
  }

  else
  {
    v280 = *(&v404[0] + 1);
    v281 = *&v404[1];
    v282 = *&v652[40];
    v283 = *&v652[88];
    v284 = *&v652[96];
    v357 = *&v652[104];
    v279 = *&v652[112];
    LODWORD(v358) = *&v652[120];
    LODWORD(v354) = v652[124];
    v355 = *&v652[232];
    if (*&v652[40])
    {
      v285 = *&v652[56];
      v350 = *&v652[32];
      v351 = *&v652[48];

      *&v286 = v283;
      *(&v286 + 1) = v284;
      v352 = v286;
      *&v286 = v280;
      *(&v286 + 1) = v281;
      v353 = v286;
      goto LABEL_138;
    }

    *&v287 = v283;
    *(&v287 + 1) = v284;
    v352 = v287;
    *&v287 = v280;
    *(&v287 + 1) = v281;
    v353 = v287;
  }

  v382 = *&v652[208];
  v383 = *&v652[224];
  v384 = *&v652[240];
  v379[1] = *&v652[144];
  v380 = *&v652[160];
  v381[0] = *&v652[176];
  v381[1] = *&v652[192];
  v376 = *&v652[80];
  v377 = *&v652[96];
  v378 = *&v652[112];
  v379[0] = *&v652[128];
  v372 = *&v652[16];
  v373 = *&v652[32];
  v374 = *&v652[48];
  v375 = *&v652[64];
  if (sub_22F1E1664(&v372) == 1)
  {
    v356 = v279;
    v350 = 0;
    v351 = 0;
    v285 = 0;
    v282 = 0;
    goto LABEL_139;
  }

  v282 = 0;
  v350 = 0;
  v285 = *(&v374 + 1);
  v351 = v374;
LABEL_138:
  v356 = v279;

LABEL_139:
  v288 = *v652;
  v289 = *&v652[8];
  v290 = v319;
  sub_22F203FB4(v319, v329);

  v291 = v330;
  sub_22F73F680();
  sub_22F2C0884(v290);
  v292 = sub_22F73F690();
  (*(*(v292 - 8) + 56))(v291, 0, 1, v292);
  v382 = *&v652[208];
  v383 = *&v652[224];
  v384 = *&v652[240];
  v379[1] = *&v652[144];
  v380 = *&v652[160];
  v381[0] = *&v652[176];
  v381[1] = *&v652[192];
  v376 = *&v652[80];
  v377 = *&v652[96];
  v378 = *&v652[112];
  v379[0] = *&v652[128];
  v372 = *&v652[16];
  v373 = *&v652[32];
  v374 = *&v652[48];
  v375 = *&v652[64];
  if (sub_22F1E1664(&v372) == 1)
  {
    v293 = 0;
    v294 = 0;
    v295 = 2;
  }

  else
  {
    v295 = v383;
    v293 = *&v652[240];
    v294 = *&v652[248];
  }

  v296 = v362;
  sub_22F18C524(v652);
  v297 = v322;
  *v322 = v288;
  v297[1] = v289;
  v298 = v352;
  *(v297 + 1) = v353;
  *(v297 + 2) = v298;
  v299 = v356;
  v297[6] = v357;
  v297[7] = v299;
  v297[8] = v355;
  LOBYTE(v299) = v320;
  *(v297 + 72) = v321;
  *(v297 + 10) = v22;
  *(v297 + 88) = v299;
  *(v297 + 23) = v358;
  *(v297 + 96) = v354 & 1;
  v300 = v351;
  v297[13] = v350;
  v297[14] = v282;
  v297[15] = v300;
  v297[16] = v285;
  v301 = v317;
  v297[17] = v318;
  v297[18] = v301;
  v302 = type metadata accessor for Song();
  sub_22F1207AC(v329, v297 + v302[15], &qword_27DAB0C90, &unk_22F785B70);
  v303 = v297 + v302[26];
  v304 = v365;
  *v303 = v366;
  *(v303 + 1) = v304;
  *(v303 + 2) = v363;
  *(v303 + 3) = v296;
  v305 = v359;
  *(v303 + 4) = v360;
  v303[44] = BYTE4(v305);
  *(v303 + 10) = v305;
  result = sub_22F1207AC(v330, v297 + v302[16], &qword_27DAB0920, &qword_22F770B20);
  *(v297 + v302[17]) = v371;
  v307 = v297 + v302[18];
  *v307 = v364;
  v307[4] = 0;
  v308 = (v297 + v302[19]);
  *v308 = v210;
  *(v308 + 4) = v361;
  v309 = v297 + v302[20];
  v310 = v369;
  *v309 = v370;
  v309[4] = v310;
  v311 = v297 + v302[21];
  *v311 = v368;
  v311[4] = v367;
  v312 = v297 + v302[22];
  *v312 = v326;
  v312[4] = v325;
  v313 = v297 + v302[23];
  *v313 = v328;
  v313[4] = v327;
  *(v297 + v302[24]) = v295;
  v314 = (v297 + v302[25]);
  *v314 = v293;
  v314[1] = v294;
  return result;
}