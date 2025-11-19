void *sub_22800EF50(uint64_t a1, unint64_t a2)
{
  v77 = a2;
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v80 = v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v72 = v66 - v10;
  v79 = sub_22813713C();
  v71 = *(v79 - 8);
  v11 = *(v71 + 64);
  v13 = MEMORY[0x28223BE20](v79, v12);
  v78 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v81 = v66 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v70 = v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7D8, &qword_22813BD00);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = (v66 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = v66 - v29;
  v31 = sub_22813744C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C7E58 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v37 = __swift_project_value_buffer(v26, qword_2813C8B38);
    sub_227FCA9B0(v37, v30, &qword_27D81E768, &qword_22813BBD8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_227FCAC58(v30, &qword_27D81E768, &qword_22813BBD8);
      v38 = *(&v2->isa + *(type metadata accessor for GMSModelInfo(0) + 52));
      v26 = v72;
      if (!v38)
      {
        return 0;
      }

      if (!*(v38 + 16))
      {
LABEL_28:

        return 0;
      }
    }

    else
    {
      (*(v32 + 32))(v36, v30, v31);
      v39 = sub_22813743C();
      v26 = v72;
      if (!v39)
      {
        v39 = sub_227FE3C84(MEMORY[0x277D84F90]);
      }

      v38 = v39;
      (*(v32 + 8))(v36, v31);
      if (!*(v38 + 16))
      {
        goto LABEL_28;
      }
    }

    v40 = sub_22808C964(v69, v77);
    if ((v41 & 1) == 0)
    {
      goto LABEL_28;
    }

    v42 = (*(v38 + 56) + 16 * v40);
    v43 = *v42;
    v44 = v42[1];

    v84[0] = v43;
    v84[1] = v44;
    v66[1] = v44;
    sub_228137BDC();
    sub_228015AE8();
    sub_228015B3C();
    v2 = v84;
    v31 = sub_22813924C();
    (*(v21 + 8))(v25, v20);
    v76 = *(v31 + 16);
    if (!v76)
    {
      break;
    }

    v21 = 0;
    v82 = (v71 + 32);
    v68 = (v71 + 8);
    v73 = (v71 + 48);
    v74 = (v71 + 56);
    v32 = v31 + 56;
    v25 = MEMORY[0x277D84F90];
    *&v45 = 136315394;
    v67 = v45;
    v46 = v81;
    v75 = v31;
    while (v21 < *(v31 + 16))
    {
      v83 = v25;
      v47 = *(v32 - 24);
      v36 = *(v32 - 16);
      v48 = *(v32 - 8);
      v49 = *v32;

      MEMORY[0x22AAB18D0](v47, v36, v48, v49);
      sub_2281370DC();
      v20 = v80;
      sub_22813710C();
      v50 = sub_22813701C();
      v2 = (*(*(v50 - 8) + 48))(v20, 1, v50);
      sub_227FCAC58(v20, &qword_27D81E328, &qword_2281402C0);
      if (v2 == 1)
      {
        if (qword_2813C49A8 != -1)
        {
          swift_once();
        }

        v51 = sub_22813882C();
        __swift_project_value_buffer(v51, qword_2813C89F0);

        v20 = v77;

        v2 = sub_22813880C();
        v52 = sub_2281396EC();

        if (os_log_type_enabled(v2, v52))
        {
          v53 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v84[0] = v20;
          *v53 = v67;
          *(v53 + 4) = sub_227FCC340(v69, v77, v84);
          *(v53 + 12) = 2080;
          v54 = MEMORY[0x22AAB18D0](v47, v36, v48, v49);
          v56 = sub_227FCC340(v54, v55, v84);

          *(v53 + 14) = v56;
          _os_log_impl(&dword_227FC3000, v2, v52, "Unsupported language code in adapter metadata for %s: %s", v53, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v20, -1, -1);
          MEMORY[0x22AAB28A0](v53, -1, -1);
        }

        v46 = v81;
        v30 = v79;
        (*v68)(v81, v79);
        v57 = 1;
        v26 = v72;
      }

      else
      {
        v30 = v79;
        (*v82)(v26, v46, v79);
        v57 = 0;
      }

      (*v74)(v26, v57, 1, v30);

      if ((*v73)(v26, 1, v30) == 1)
      {
        sub_227FCAC58(v26, &qword_27D81E778, &qword_22813BC80);
        v25 = v83;
      }

      else
      {
        v2 = *v82;
        v58 = v70;
        (*v82)(v70, v26, v30);
        (v2)(v78, v58, v30);
        v25 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2281336A0(0, v25[2] + 1, 1, v25);
        }

        v20 = v25[2];
        v59 = v25[3];
        if (v20 >= v59 >> 1)
        {
          v25 = sub_2281336A0(v59 > 1, v20 + 1, 1, v25);
        }

        v25[2] = v20 + 1;
        (v2)(v25 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v20, v78, v30);
        v46 = v81;
      }

      ++v21;
      v32 += 32;
      v31 = v75;
      if (v76 == v21)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v25 = MEMORY[0x277D84F90];
LABEL_32:

  if (!v25[2])
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v61 = sub_22813882C();
    __swift_project_value_buffer(v61, qword_2813C89F0);

    v62 = sub_22813880C();
    v63 = sub_2281396EC();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v84[0] = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_227FCC340(v69, v77, v84);
      __swift_destroy_boxed_opaque_existential_1Tm_3(v65);
      MEMORY[0x22AAB28A0](v65, -1, -1);
      MEMORY[0x22AAB28A0](v64, -1, -1);
    }
  }

  return v25;
}

uint64_t GMSModelInfo.safetyRejectionPlaceholder.getter()
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  v1 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v2);
  v4 = &v43 - v3;
  v5 = sub_22813744C();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for GMSModelInfo(0);
  v16 = *(v15 + 20);
  v44 = v0;
  v17 = (v0 + v16);
  v18 = *v17;
  v19 = v17[1];
  sub_22813720C();
  v20 = sub_22801354C(v18);
  v22 = v21;
  if (v20 == sub_22813746C() && v22 == v23)
  {

    (*(v10 + 8))(v14, v9);
  }

  else
  {
    v25 = sub_2281399BC();

    (*(v10 + 8))(v14, v9);
    if ((v25 & 1) == 0)
    {
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v26 = sub_22813882C();
      __swift_project_value_buffer(v26, qword_2813C89F0);
      v27 = sub_22813880C();
      v28 = sub_2281396EC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        MEMORY[0x22AAB28A0](v29, -1, -1);
      }

      return 0;
    }
  }

  if (qword_2813C7E58 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v45, qword_2813C8B38);
  sub_227FCA9B0(v30, v4, &qword_27D81E768, &qword_22813BBD8);
  v31 = v46;
  if ((*(v46 + 48))(v4, 1, v5) != 1)
  {
    v35 = v43;
    (*(v31 + 32))(v43, v4, v5);
    v36 = sub_22813743C();
    if (!v36)
    {
      v36 = sub_227FE3C84(MEMORY[0x277D84F90]);
    }

    v33 = v36;
    (*(v31 + 8))(v35, v5);
    if (!*(v33 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_227FCAC58(v4, &qword_27D81E768, &qword_22813BBD8);
  v32 = *(v15 + 52);
  v33 = *(v44 + v32);
  if (v33)
  {
    v34 = *(v44 + v32);

    if (!*(v33 + 16))
    {
LABEL_23:

      return 0;
    }

LABEL_21:
    v37 = sub_22808C964(0xD00000000000001ALL, 0x80000002281449F0);
    if (v38)
    {
      v39 = (*(v33 + 56) + 16 * v37);
      v41 = *v39;
      v40 = v39[1];

      return v41;
    }

    goto LABEL_23;
  }

  return 0;
}

void *GMSModelInfo.supportedLanguagesForTopicSummaries.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v22 - v6;
  v8 = (v1 + *(type metadata accessor for GMSModelInfo(0) + 20));
  v9 = *v8;
  v10 = v8[1];
  sub_22813720C();
  v11 = sub_22801354C(v9);
  v13 = v12;
  if (v11 == sub_22813746C() && v13 == v14)
  {

    (*(v3 + 8))(v7, v2);
    return sub_22800EF50(0xD000000000000023, 0x8000000228144A10);
  }

  v16 = sub_2281399BC();

  (*(v3 + 8))(v7, v2);
  if (v16)
  {
    return sub_22800EF50(0xD000000000000023, 0x8000000228144A10);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v17 = sub_22813882C();
  __swift_project_value_buffer(v17, qword_2813C89F0);
  v18 = sub_22813880C();
  v19 = sub_2281396EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    MEMORY[0x22AAB28A0](v20, -1, -1);
  }

  return 0;
}

void static GMSModelInfo.prefetchModelInfo(for:onBehalfOfRequest:)(uint64_t a1, uint64_t a2)
{
  if (qword_2813C73E8 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  v2 = *(off_2813C73F0 + 2);
  MEMORY[0x28223BE20](a1, a2);
  os_unfair_lock_lock((v2 + 24));
  sub_2280138B4((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_228010174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46[1] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E780, &qword_22813BC88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v46 - v16;
  v18 = sub_228138CFC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a2, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_228138D0C();
  v20 = type metadata accessor for GMSModelInfo(0);
  v21 = (a2 + v20[5]);
  v23 = *v21;
  v22 = v21[1];

  sub_228138D2C();
  v24 = (a2 + v20[9]);
  v25 = *v24;
  v26 = v24[1];

  sub_228138D1C();
  v27 = (a2 + v20[6]);
  v28 = *v27;
  v29 = v27[1];

  sub_228138D8C();
  v30 = (a2 + v20[10]);
  v31 = *v30;
  v32 = v30[1];

  sub_228138D5C();
  v33 = (a2 + v20[7]);
  v34 = *v33;
  v35 = v33[1];

  sub_228138D7C();
  v36 = (a2 + v20[11]);
  v37 = *v36;
  v38 = v36[1];

  sub_228138D3C();
  v39 = (a2 + v20[8]);
  v40 = *v39;
  v41 = v39[1];

  sub_228138D9C();
  v42 = (a2 + v20[12]);
  v43 = *v42;
  v44 = v42[1];

  sub_228138D6C();
  sub_227FCA9B0(a3, v12, &qword_27D81E778, &qword_22813BC80);
  sub_228138D4C();
  sub_228138DAC();
  return sub_228138DBC();
}

uint64_t sub_228010430()
{
  type metadata accessor for GMSModelInfoCache();
  v0 = swift_allocObject();
  v1 = sub_227FE3A9C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E800, &unk_22813BDF0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  off_2813C73F0 = v0;
  return result;
}

uint64_t sub_2280104A8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v115 = a4;
  v113 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v114 = &v101 - v9;
  v10 = type metadata accessor for GMSModelInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  v118 = *(v119 - 8);
  v15 = v118[8];
  MEMORY[0x28223BE20](v119 - 8, v16);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v108 = *(v19 - 8);
  v20 = *(v108 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v107 = &v101 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v105 = *(v23 - 8);
  v106 = v23;
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v104 = &v101 - v26;
  v27 = type metadata accessor for ModelBundleIdentifier();
  v109 = *(v27 - 8);
  v28 = *(v109 + 64);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v112 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30, v31);
  v110 = &v101 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v101 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E798, &qword_22813BCA0);
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37 - 8, v39);
  v42 = (&v101 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v40, v43);
  v103 = (&v101 - v45);
  MEMORY[0x28223BE20](v44, v46);
  v121 = &v101 - v47;
  v116 = a2;
  sub_227FCAAE8(a2, v36, type metadata accessor for ModelBundleIdentifier);
  v111 = v27;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v102 = v19;
  v101 = v18;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v50 = v107;
      v49 = v108;
      (*(v108 + 32))(v107, v36, v19);
      v51 = sub_22813746C();
      v52 = v19;
      v53 = v51;
      v55 = v54;
      (*(v49 + 8))(v50, v52);
    }

    else
    {
      v53 = 0xD000000000000045;
      v55 = 0x8000000228144A90;
    }
  }

  else
  {
    v56 = a1;
    v58 = v105;
    v57 = v106;
    v59 = *(v105 + 32);
    v117 = v14;
    v60 = v42;
    v61 = v104;
    v59(v104, v36, v106);
    v53 = sub_22813746C();
    v55 = v62;
    v63 = v58;
    a1 = v56;
    v64 = v61;
    v42 = v60;
    v14 = v117;
    (*(v63 + 8))(v64, v57);
  }

  v117 = a1;
  v65 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_11;
  }

  v66 = sub_22808C964(v53, v55);
  v68 = v67;

  if ((v68 & 1) == 0)
  {
LABEL_11:
    v71 = v118[7];
    (v71)(v121, 1, 1, v119);
    goto LABEL_12;
  }

  v69 = v118;
  v70 = v121;
  sub_227FCAAE8(*(v65 + 56) + v118[9] * v66, v121, type metadata accessor for GMSModelInfoCache.CacheEntry);
  v71 = v69[7];
  v72 = v119;
  (v71)(v70, 0, 1, v119);
  v73 = v103;
  sub_227FCA9B0(v70, v103, &qword_27D81E798, &qword_22813BCA0);
  if ((v69[6])(v73, 1, v72) == 1)
  {
    sub_227FCAC58(v73, &qword_27D81E798, &qword_22813BCA0);
    return sub_227FCAC58(v121, &qword_27D81E798, &qword_22813BCA0);
  }

  v99 = v101;
  sub_227FCAAE8(v73, v101, type metadata accessor for GMSModelInfoCache.CacheEntry);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_228013E6C(v99, type metadata accessor for GMSModelInfoCache.CacheEntry);
    sub_228013E6C(v73, type metadata accessor for GMSModelInfoCache.CacheEntry);
    return sub_227FCAC58(v121, &qword_27D81E798, &qword_22813BCA0);
  }

  sub_227FC829C(v99, v14, type metadata accessor for GMSModelInfo);
  v100 = GMSModelInfo.isStale.getter();
  sub_228013E6C(v14, type metadata accessor for GMSModelInfo);
  sub_228013E6C(v73, type metadata accessor for GMSModelInfoCache.CacheEntry);
  if (!v100)
  {
    return sub_227FCAC58(v121, &qword_27D81E798, &qword_22813BCA0);
  }

LABEL_12:
  v103 = v71;
  v74 = sub_22813959C();
  v75 = v114;
  (*(*(v74 - 8) + 56))(v114, 1, 1, v74);
  v76 = v116;
  v77 = v110;
  sub_227FCAAE8(v116, v110, type metadata accessor for ModelBundleIdentifier);
  sub_228015A70(v113, v120);
  v78 = (*(v109 + 80) + 32) & ~*(v109 + 80);
  v79 = (v28 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  sub_227FC829C(v77, v80 + v78, type metadata accessor for ModelBundleIdentifier);
  sub_227FCF218(v120, v80 + v79);
  *(v80 + ((v79 + 47) & 0xFFFFFFFFFFFFFFF8)) = v115;

  v81 = sub_2280607B4(0, 0, v75, &unk_22813BCB0, v80);
  v82 = v112;
  sub_227FCAAE8(v76, v112, type metadata accessor for ModelBundleIdentifier);
  v83 = swift_getEnumCaseMultiPayload();
  if (v83)
  {
    if (v83 == 1)
    {
      v84 = v107;
      v85 = v108;
      v86 = v102;
      (*(v108 + 32))(v107, v82, v102);
      v87 = sub_22813746C();
      v89 = v88;
      (*(v85 + 8))(v84, v86);
    }

    else
    {
      v87 = 0xD000000000000045;
      v89 = 0x8000000228144A90;
    }
  }

  else
  {
    v91 = v105;
    v90 = v106;
    v92 = v42;
    v93 = v104;
    (*(v105 + 32))(v104, v82, v106);
    v87 = sub_22813746C();
    v89 = v94;
    v95 = v93;
    v42 = v92;
    (*(v91 + 8))(v95, v90);
  }

  v96 = v103;
  *v42 = v81;
  v97 = v119;
  swift_storeEnumTagMultiPayload();
  v96(v42, 0, 1, v97);
  sub_22802509C(v42, v87, v89);
  return sub_227FCAC58(v121, &qword_27D81E798, &qword_22813BCA0);
}

uint64_t sub_228010E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a1;
  v6[18] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v6[24] = v10;
  v11 = *(v10 - 8);
  v6[25] = v11;
  v12 = *(v11 + 64) + 15;
  v6[26] = swift_task_alloc();
  v13 = type metadata accessor for ModelBundleIdentifier();
  v6[27] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228010FBC, 0, 0);
}

uint64_t sub_228010FBC()
{
  v71 = v0;
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v3 = v0[18];
  v2 = v0[19];
  v4 = sub_22813882C();
  __swift_project_value_buffer(v4, qword_2813C89F0);
  sub_227FCAAE8(v3, v1, type metadata accessor for ModelBundleIdentifier);
  sub_228015A70(v2, (v0 + 2));
  v5 = sub_22813880C();
  v6 = sub_2281396BC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  if (!v7)
  {

    sub_228013E6C(v8, type metadata accessor for ModelBundleIdentifier);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v0 + 2);
    goto LABEL_12;
  }

  v9 = v0[31];
  v10 = v0[27];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v70[0] = v12;
  *v11 = 136446466;
  sub_227FCAAE8(v8, v9, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v18 = 0xD000000000000045;
      v20 = 0x8000000228144A90;
      goto LABEL_11;
    }

    v14 = v0[31];
    v15 = v0[22];
    v16 = v0[23];
    v17 = v0[21];
  }

  else
  {
    v14 = v0[31];
    v15 = v0[25];
    v16 = v0[26];
    v17 = v0[24];
  }

  (*(v15 + 32))(v16, v14, v17);
  v18 = sub_22813746C();
  v20 = v19;
  (*(v15 + 8))(v16, v17);
LABEL_11:
  sub_228013E6C(v0[32], type metadata accessor for ModelBundleIdentifier);
  v21 = sub_227FCC340(v18, v20, v70);

  *(v11 + 4) = v21;
  *(v11 + 12) = 2082;
  v22 = v0[5];
  v23 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v22);
  v24 = (*(v23 + 16))(v22, v23);
  v26 = v25;
  __swift_destroy_boxed_opaque_existential_1Tm_3(v0 + 2);
  v27 = sub_227FCC340(v24, v26, v70);

  *(v11 + 14) = v27;
  _os_log_impl(&dword_227FC3000, v5, v6, "Started prefetch of model info for modelIdentifier=%{public}s on behalf of requestIdentifier=%{public}s", v11, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAB28A0](v12, -1, -1);
  MEMORY[0x22AAB28A0](v11, -1, -1);

LABEL_12:
  v28 = v0[30];
  v30 = v0[19];
  v29 = v0[20];
  v32 = v0[17];
  v31 = v0[18];
  sub_227FCAAE8(v31, v28, type metadata accessor for ModelBundleIdentifier);
  sub_228015A70(v30, (v0 + 7));
  sub_22800D958(v28, v0 + 7, v32);
  v33 = *(v29 + 16);
  v34 = swift_task_alloc();
  *(v34 + 16) = v31;
  *(v34 + 24) = v32;
  os_unfair_lock_lock(v33 + 6);
  sub_228015C74(&v33[4]);
  os_unfair_lock_unlock(v33 + 6);
  v35 = v0[29];
  v37 = v0[18];
  v36 = v0[19];

  sub_227FCAAE8(v37, v35, type metadata accessor for ModelBundleIdentifier);
  sub_228015A70(v36, (v0 + 12));
  v38 = sub_22813880C();
  v39 = sub_2281396BC();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[29];
  if (!v40)
  {

    sub_228013E6C(v41, type metadata accessor for ModelBundleIdentifier);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v0 + 12);
    goto LABEL_21;
  }

  v43 = v0[27];
  v42 = v0[28];
  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v70[0] = v45;
  *v44 = 136446466;
  sub_227FCAAE8(v41, v42, type metadata accessor for ModelBundleIdentifier);
  v46 = swift_getEnumCaseMultiPayload();
  if (v46)
  {
    if (v46 != 1)
    {
      v51 = 0xD000000000000045;
      v53 = 0x8000000228144A90;
      goto LABEL_20;
    }

    v47 = v0[28];
    v49 = v0[22];
    v48 = v0[23];
    v50 = v0[21];
  }

  else
  {
    v47 = v0[28];
    v49 = v0[25];
    v48 = v0[26];
    v50 = v0[24];
  }

  (*(v49 + 32))(v48, v47, v50);
  v51 = sub_22813746C();
  v53 = v52;
  (*(v49 + 8))(v48, v50);
LABEL_20:
  sub_228013E6C(v0[29], type metadata accessor for ModelBundleIdentifier);
  v54 = sub_227FCC340(v51, v53, v70);

  *(v44 + 4) = v54;
  *(v44 + 12) = 2082;
  v55 = v0[15];
  v56 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v55);
  v57 = (*(v56 + 16))(v55, v56);
  v59 = v58;
  __swift_destroy_boxed_opaque_existential_1Tm_3(v0 + 12);
  v60 = sub_227FCC340(v57, v59, v70);

  *(v44 + 14) = v60;
  _os_log_impl(&dword_227FC3000, v38, v39, "Completed prefetch of model info for modelIdentifier=%{public}s on behalf of requestIdentifier=%{public}s", v44, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAB28A0](v45, -1, -1);
  MEMORY[0x22AAB28A0](v44, -1, -1);

LABEL_21:
  v62 = v0[31];
  v61 = v0[32];
  v64 = v0[29];
  v63 = v0[30];
  v65 = v0[28];
  v66 = v0[26];
  v67 = v0[23];

  v68 = v0[1];

  return v68();
}

uint64_t sub_228011668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v5[32] = v6;
  v7 = *(v6 - 8);
  v5[33] = v7;
  v8 = *(v7 + 64) + 15;
  v5[34] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v5[35] = v9;
  v10 = *(v9 - 8);
  v5[36] = v10;
  v11 = *(v10 + 64) + 15;
  v5[37] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v13 = sub_2281376EC();
  v5[39] = v13;
  v14 = *(v13 - 8);
  v5[40] = v14;
  v15 = *(v14 + 64) + 15;
  v5[41] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7F0, &qword_22813BD20);
  v5[42] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v18 = type metadata accessor for GMSModelInfo(0);
  v5[44] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E798, &qword_22813BCA0) - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v21 = type metadata accessor for ModelBundleIdentifier();
  v5[52] = v21;
  v22 = *(v21 - 8);
  v5[53] = v22;
  v5[54] = *(v22 + 64);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v23 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280119D8, 0, 0);
}

uint64_t sub_2280119D8()
{
  v134 = v0;
  if (qword_2813C48F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 408);
  v6 = *(v0 + 248);
  v7 = *(v0 + 224);
  v8 = *(v0 + 232);
  v9 = type metadata accessor for Signpost(0);
  *(v0 + 488) = __swift_project_value_buffer(v9, qword_2813C8840);
  sub_228015A70(v8, v0 + 16);
  sub_227FCAAE8(v7, v2, type metadata accessor for ModelBundleIdentifier);
  v10 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_227FCF218((v0 + 16), v11 + 16);
  sub_227FC829C(v2, v11 + v10, type metadata accessor for ModelBundleIdentifier);
  sub_22812F68C(sub_228015BA0, v1);

  v12 = *(v6 + 16);
  *(swift_task_alloc() + 16) = v7;
  os_unfair_lock_lock((v12 + 24));
  sub_228015C04((v12 + 16), v5);
  os_unfair_lock_unlock((v12 + 24));
  v14 = *(v0 + 400);
  v13 = *(v0 + 408);

  sub_227FCA9B0(v13, v14, &qword_27D81E798, &qword_22813BCA0);
  v15 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 448);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = sub_22813882C();
    __swift_project_value_buffer(v19, qword_2813C89F0);
    sub_227FCAAE8(v18, v16, type metadata accessor for ModelBundleIdentifier);
    sub_228015A70(v17, v0 + 56);
    v20 = sub_22813880C();
    v21 = sub_2281396BC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 448);
    if (!v22)
    {

      sub_228013E6C(v23, type metadata accessor for ModelBundleIdentifier);
      __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 56));
LABEL_23:
      v65 = *(v0 + 472);
      v66 = *(v0 + 384);
      v68 = *(v0 + 224);
      v67 = *(v0 + 232);
      sub_227FCAAE8(v68, v65, type metadata accessor for ModelBundleIdentifier);
      sub_228015A70(v67, v0 + 96);
      sub_22800D958(v65, (v0 + 96), v66);
      v69 = swift_task_alloc();
      *(v69 + 16) = v68;
      *(v69 + 24) = v66;
      os_unfair_lock_lock((v12 + 24));
      sub_228015C44(v12 + 16);
      os_unfair_lock_unlock((v12 + 24));
      v70 = *(v0 + 408);

      v71 = v70;
LABEL_33:
      sub_227FCAC58(v71, &qword_27D81E798, &qword_22813BCA0);
      goto LABEL_34;
    }

    v24 = *(v0 + 440);
    v25 = *(v0 + 416);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v133[0] = v27;
    *v26 = 136446466;
    sub_227FCAAE8(v23, v24, type metadata accessor for ModelBundleIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v55 = 0xD000000000000045;
        v57 = 0x8000000228144A90;
        goto LABEL_22;
      }

      v29 = *(v0 + 440);
      v130 = v27;
      v30 = *(v0 + 264);
      v31 = *(v0 + 272);
      v32 = *(v0 + 256);
    }

    else
    {
      v29 = *(v0 + 440);
      v130 = v27;
      v30 = *(v0 + 288);
      v31 = *(v0 + 296);
      v32 = *(v0 + 280);
    }

    (*(v30 + 32))(v31, v29, v32);
    v55 = sub_22813746C();
    v57 = v56;
    (*(v30 + 8))(v31, v32);
    v27 = v130;
LABEL_22:
    sub_228013E6C(*(v0 + 448), type metadata accessor for ModelBundleIdentifier);
    v58 = sub_227FCC340(v55, v57, v133);

    *(v26 + 4) = v58;
    *(v26 + 12) = 2082;
    v59 = *(v0 + 80);
    v60 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v59);
    v61 = (*(v60 + 16))(v59, v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 56));
    v64 = sub_227FCC340(v61, v63, v133);

    *(v26 + 14) = v64;
    _os_log_impl(&dword_227FC3000, v20, v21, "Fetching info not in cache\nfor modelIdentifier=%{public}s on behalf of requestIdentifier=%{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v27, -1, -1);
    MEMORY[0x22AAB28A0](v26, -1, -1);

    goto LABEL_23;
  }

  sub_227FCA9B0(*(v0 + 400), *(v0 + 392), &qword_27D81E798, &qword_22813BCA0);
  v33 = swift_getEnumCaseMultiPayload();
  v34 = *(v0 + 392);
  if (v33 == 1)
  {
    v35 = *(v0 + 376);
    v36 = *(v0 + 384);
    v37 = *(v0 + 312);
    v38 = *(v0 + 320);
    v39 = *(v0 + 304);
    v40 = *(v0 + 240);
    sub_227FC829C(v34, v35, type metadata accessor for GMSModelInfo);
    sub_227FCAAE8(v35, v36, type metadata accessor for GMSModelInfo);
    sub_227FCA9B0(v40, v39, &qword_27D81E330, &unk_22813A7E0);
    if ((*(v38 + 48))(v39, 1, v37) == 1)
    {
      sub_227FCAC58(*(v0 + 304), &qword_27D81E330, &unk_22813A7E0);
    }

    else
    {
      v48 = *(v0 + 384);
      (*(*(v0 + 320) + 32))(*(v0 + 328), *(v0 + 304), *(v0 + 312));
      if (sub_22800E7C0())
      {
        v49 = *(v0 + 368);
        v50 = *(v0 + 224);
        sub_227FCAAE8(*(v0 + 384), v49, type metadata accessor for GMSModelInfo);
        v51 = swift_task_alloc();
        *(v51 + 16) = v50;
        *(v51 + 24) = v49;
        os_unfair_lock_lock((v12 + 24));
        sub_228015C20(v12 + 16);
        os_unfair_lock_unlock((v12 + 24));
        v52 = *(v0 + 408);
        v54 = *(v0 + 368);
        v53 = *(v0 + 376);
        (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
        sub_228013E6C(v53, type metadata accessor for GMSModelInfo);
        sub_227FCAC58(v52, &qword_27D81E798, &qword_22813BCA0);

        sub_228013E6C(v54, type metadata accessor for GMSModelInfo);
LABEL_34:
        v92 = *(v0 + 480);
        v91 = *(v0 + 488);
        v94 = *(v0 + 464);
        v93 = *(v0 + 472);
        v95 = *(v0 + 448);
        v96 = *(v0 + 456);
        v120 = *(v0 + 440);
        v121 = *(v0 + 408);
        v97 = *(v0 + 384);
        v122 = *(v0 + 392);
        v123 = *(v0 + 376);
        v124 = *(v0 + 368);
        v125 = *(v0 + 360);
        v126 = *(v0 + 344);
        v127 = *(v0 + 328);
        v128 = *(v0 + 304);
        v129 = *(v0 + 296);
        v132 = *(v0 + 272);
        v98 = *(v0 + 216);
        sub_227FCAC58(*(v0 + 400), &qword_27D81E798, &qword_22813BCA0);
        sub_227FC829C(v97, v98, type metadata accessor for GMSModelInfo);
        sub_228131474(v92);
        sub_228013E6C(v92, type metadata accessor for SignpostToken);

        v99 = *(v0 + 8);

        return v99();
      }

      (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    }

    v72 = *(v0 + 384);
    if (!GMSModelInfo.isStale.getter())
    {
      v90 = *(v0 + 408);
      sub_228013E6C(*(v0 + 376), type metadata accessor for GMSModelInfo);
      v71 = v90;
      goto LABEL_33;
    }

    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 464);
    v75 = *(v0 + 224);
    v74 = *(v0 + 232);
    v76 = sub_22813882C();
    __swift_project_value_buffer(v76, qword_2813C89F0);
    sub_227FCAAE8(v75, v73, type metadata accessor for ModelBundleIdentifier);
    sub_228015A70(v74, v0 + 136);
    v77 = sub_22813880C();
    v78 = sub_2281396BC();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v0 + 464);
    if (!v79)
    {

      sub_228013E6C(v80, type metadata accessor for ModelBundleIdentifier);
      __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 136));
LABEL_42:
      v110 = *(v0 + 472);
      v111 = *(v0 + 360);
      v113 = *(v0 + 224);
      v112 = *(v0 + 232);
      sub_227FCAAE8(v113, v110, type metadata accessor for ModelBundleIdentifier);
      sub_228015A70(v112, v0 + 176);
      sub_22800D958(v110, (v0 + 176), v111);
      v114 = swift_task_alloc();
      *(v114 + 16) = v113;
      *(v114 + 24) = v111;
      os_unfair_lock_lock((v12 + 24));
      sub_228015C5C(v12 + 16);
      os_unfair_lock_unlock((v12 + 24));
      v115 = *(v0 + 408);
      v117 = *(v0 + 376);
      v116 = *(v0 + 384);
      v118 = *(v0 + 360);

      sub_228013E6C(v117, type metadata accessor for GMSModelInfo);
      sub_228013E6C(v116, type metadata accessor for GMSModelInfo);
      sub_227FCAC58(v115, &qword_27D81E798, &qword_22813BCA0);
      sub_227FC829C(v118, v116, type metadata accessor for GMSModelInfo);
      goto LABEL_34;
    }

    v81 = *(v0 + 456);
    v82 = *(v0 + 416);
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v133[0] = v84;
    *v83 = 136446466;
    sub_227FCAAE8(v80, v81, type metadata accessor for ModelBundleIdentifier);
    v85 = swift_getEnumCaseMultiPayload();
    if (v85)
    {
      if (v85 != 1)
      {
        v100 = 0xD000000000000045;
        v102 = 0x8000000228144A90;
        goto LABEL_41;
      }

      v86 = *(v0 + 456);
      v131 = v84;
      v87 = *(v0 + 264);
      v88 = *(v0 + 272);
      v89 = *(v0 + 256);
    }

    else
    {
      v86 = *(v0 + 456);
      v131 = v84;
      v87 = *(v0 + 288);
      v88 = *(v0 + 296);
      v89 = *(v0 + 280);
    }

    (*(v87 + 32))(v88, v86, v89);
    v100 = sub_22813746C();
    v102 = v101;
    (*(v87 + 8))(v88, v89);
    v84 = v131;
LABEL_41:
    sub_228013E6C(*(v0 + 464), type metadata accessor for ModelBundleIdentifier);
    v103 = sub_227FCC340(v100, v102, v133);

    *(v83 + 4) = v103;
    *(v83 + 12) = 2082;
    v104 = *(v0 + 160);
    v105 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v104);
    v106 = (*(v105 + 16))(v104, v105);
    v108 = v107;
    __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 136));
    v109 = sub_227FCC340(v106, v108, v133);

    *(v83 + 14) = v109;
    _os_log_impl(&dword_227FC3000, v77, v78, "Refreshing stale model info for modelIdentifier=%{public}s on behalf of requestIdentifier=%{public}s", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v84, -1, -1);
    MEMORY[0x22AAB28A0](v83, -1, -1);

    goto LABEL_42;
  }

  v41 = *v34;
  *(v0 + 496) = *v34;
  v42 = *(MEMORY[0x277D857D0] + 4);
  v43 = swift_task_alloc();
  *(v0 + 504) = v43;
  *v43 = v0;
  v43[1] = sub_228012754;
  v44 = *(v0 + 344);
  v45 = *(v0 + 352);
  v46 = MEMORY[0x277D84A98];
  v47 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v44, v41, v45, v46, v47);
}

uint64_t sub_228012754()
{
  v1 = *(*v0 + 504);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_228012850, 0, 0);
}

uint64_t sub_228012850()
{
  v1 = v0[42];
  v2 = v0[43];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return swift_willThrowTypedImpl();
  }

  else
  {
    v4 = v0[62];
    v5 = v0[48];
    sub_227FCAC58(v0[51], &qword_27D81E798, &qword_22813BCA0);

    sub_227FC829C(v2, v5, type metadata accessor for GMSModelInfo);
    v6 = v0[60];
    v7 = v0[61];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[57];
    v14 = v0[56];
    v15 = v0[55];
    v11 = v0[48];
    v16 = v0[51];
    v17 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[43];
    v22 = v0[41];
    v23 = v0[38];
    v24 = v0[37];
    v25 = v0[34];
    v12 = v0[27];
    sub_227FCAC58(v0[50], &qword_27D81E798, &qword_22813BCA0);
    sub_227FC829C(v11, v12, type metadata accessor for GMSModelInfo);
    sub_228131474(v6);
    sub_228013E6C(v6, type metadata accessor for SignpostToken);

    v13 = v0[1];

    return v13();
  }
}

unint64_t sub_228012AB8(void *a1, uint64_t a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for ModelBundleIdentifier();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_22813988C();

  v33 = 0xD000000000000014;
  v34 = 0x80000002281441C0;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = (*(v18 + 16))(v19, v18);
  MEMORY[0x22AAB1970](v20);

  MEMORY[0x22AAB1970](0xD000000000000013, 0x8000000228144AE0);
  sub_227FCAAE8(v32, v17, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v31;
      (*(v31 + 32))(v7, v17, v3);
      v23 = sub_22813746C();
      v25 = v24;
      (*(v22 + 8))(v7, v3);
    }

    else
    {
      v25 = 0x8000000228144A90;
      v23 = 0xD000000000000045;
    }
  }

  else
  {
    v26 = v30;
    (*(v30 + 32))(v12, v17, v8);
    v23 = sub_22813746C();
    v25 = v27;
    (*(v26 + 8))(v12, v8);
  }

  MEMORY[0x22AAB1970](v23, v25);

  MEMORY[0x22AAB1970](93, 0xE100000000000000);
  return v33;
}

uint64_t sub_228012E10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for ModelBundleIdentifier();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227FCAAE8(a2, v20, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v9, v20, v4);
      v22 = sub_22813746C();
      v24 = v23;
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v24 = 0x8000000228144A90;
      v22 = 0xD000000000000045;
    }
  }

  else
  {
    (*(v11 + 32))(v15, v20, v10);
    v22 = sub_22813746C();
    v24 = v25;
    (*(v11 + 8))(v15, v10);
  }

  v26 = v37;
  v27 = *v36;
  if (*(*v36 + 16))
  {
    v28 = sub_22808C964(v22, v24);
    v30 = v29;

    if (v30)
    {
      v31 = *(v27 + 56);
      v32 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
      v33 = *(v32 - 8);
      sub_227FCAAE8(v31 + *(v33 + 72) * v28, v26, type metadata accessor for GMSModelInfoCache.CacheEntry);
      return (*(v33 + 56))(v26, 0, 1, v32);
    }
  }

  else
  {
  }

  v35 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  return (*(*(v35 - 8) + 56))(v26, 1, 1, v35);
}

uint64_t sub_2280131B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E798, &qword_22813BCA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v33 - v18;
  v20 = type metadata accessor for ModelBundleIdentifier();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227FCAAE8(a2, v24, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v34;
      (*(v34 + 32))(v13, v24, v9);
      v27 = sub_22813746C();
      v29 = v28;
      (*(v26 + 8))(v13, v9);
    }

    else
    {
      v29 = 0x8000000228144A90;
      v27 = 0xD000000000000045;
    }
  }

  else
  {
    (*(v15 + 32))(v19, v24, v14);
    v27 = sub_22813746C();
    v29 = v30;
    (*(v15 + 8))(v19, v14);
  }

  sub_227FCAAE8(v35, v8, type metadata accessor for GMSModelInfo);
  v31 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
  return sub_22802509C(v8, v27, v29);
}

uint64_t sub_228013514()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22801354C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E0, &qword_22813BD08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v25 - v5;
  v7 = sub_228136D0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7E8, &unk_22813BD10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v25 - v16;
  v18 = sub_228136EAC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228136E8C();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_227FCAC58(v17, &qword_27D81E7E8, &unk_22813BD10);
LABEL_8:

    return a1;
  }

  (*(v19 + 32))(v23, v17, v18);
  sub_228136CFC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v19 + 8))(v23, v18);
    sub_227FCAC58(v6, &qword_27D81E7E0, &qword_22813BD08);
    goto LABEL_8;
  }

  (*(v8 + 32))(v12, v6, v7);
  if (!sub_228136CEC())
  {
    (*(v8 + 8))(v12, v7);
    (*(v19 + 8))(v23, v18);
    goto LABEL_8;
  }

  a1 = sub_228136E6C();
  (*(v8 + 8))(v12, v7);
  (*(v19 + 8))(v23, v18);
  return a1;
}

void sub_228013914()
{
  sub_228138CFC();
  if (v0 <= 0x3F)
  {
    sub_2280139E4();
    if (v1 <= 0x3F)
    {
      sub_228013A34();
      if (v2 <= 0x3F)
      {
        sub_228136F8C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2280139E4()
{
  if (!qword_2813C46E8)
  {
    v0 = sub_22813977C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C46E8);
    }
  }
}

void sub_228013A34()
{
  if (!qword_2813C4710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E770, &qword_22813BC50);
    v0 = sub_22813977C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C4710);
    }
  }
}

uint64_t sub_228013B30(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228013B68()
{
  sub_228013BDC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GMSModelInfo(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_228013BDC()
{
  if (!qword_2813C4658)
  {
    type metadata accessor for GMSModelInfo(255);
    v0 = sub_2281395CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C4658);
    }
  }
}

uint64_t sub_228013C44(uint64_t a1)
{
  v4 = *(type metadata accessor for ModelBundleIdentifier() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_228013D78;

  return sub_228010E24(a1, v7, v8, v1 + v5, v1 + v6, v9);
}

uint64_t sub_228013D78()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_228013E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228013ECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v19 - v9;
  sub_227FCA9B0(a1, &v20, &qword_27D81E7C8, &qword_22813BCE8);
  if (AssociatedTypeWitness)
  {
    sub_227FCF218(&v20, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v20);
    sub_2281373BC();
    __swift_project_boxed_opaque_existential_1(&v20, AssociatedTypeWitness);
    v11 = swift_getAssociatedTypeWitness();
    v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v11, v13);
    sub_22813734C();
    v15 = sub_22813744C();
    v16 = swift_dynamicCast();
    v17 = *(v15 - 8);
    (*(v17 + 56))(v10, v16 ^ 1u, 1, v15);
    sub_227FCA9B0(v10, v7, &qword_27D81E768, &qword_22813BBD8);
    if ((*(v17 + 48))(v7, 1, v15) == 1)
    {
      sub_227FCAC58(v7, &qword_27D81E768, &qword_22813BBD8);
      v18 = 0;
    }

    else
    {
      v18 = sub_22813743C();
      (*(v17 + 8))(v7, v15);
    }

    sub_227FCAC58(v10, &qword_27D81E768, &qword_22813BBD8);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v23);
    return v18;
  }

  else
  {
    sub_227FCAC58(&v20, &qword_27D81E7C8, &qword_22813BCE8);
    return 0;
  }
}

uint64_t sub_2280143F4(uint64_t a1)
{
  v2 = sub_2281373AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227FCA9B0(a1, &v11, &qword_27D81E7C8, &qword_22813BCE8);
  if (AssociatedTypeWitness)
  {
    sub_227FCF218(&v11, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v11);
    sub_2281373BC();
    sub_22813733C();
    v8 = sub_22813739C();
    (*(v3 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v11);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v14);
    return v8;
  }

  else
  {
    sub_227FCAC58(&v11, &qword_27D81E7C8, &qword_22813BCE8);
    return 0;
  }
}

uint64_t sub_2280147C4(uint64_t a1)
{
  v2 = sub_2281374CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v149 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v148 - v9;
  v154 = sub_22813742C();
  v153 = *(v154 - 8);
  v11 = *(v153 + 64);
  v13 = MEMORY[0x28223BE20](v154, v12);
  v15 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v148 - v17;
  v151 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v152 = v15;
  v150 = v2;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v19 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v19 = &qword_2813C76F8;
  }

  v20 = *v19;
  v21 = sub_22813737C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v155 = v20;

  v24 = sub_22813736C();
  v25 = type metadata accessor for GMSModelInfo(0);
  v26 = (a1 + v25[5]);
  v28 = *v26;
  v27 = v26[1];
  v156 = v24;
  sub_22813735C();
  v148 = a1;
  sub_227FCA9B0(v166, v164, &qword_27D81E7A0, &qword_22813BCC0);
  if (v165)
  {
    sub_227FCA9B0(v164, v163, &qword_27D81E7A0, &qword_22813BCC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7A8, &qword_22813BCC8);
    v29 = v154;
    if (swift_dynamicCast())
    {
      (*(v153 + 32))(v152, v18, v29);
      sub_22813740C();
      v30 = v158;
      v31 = v25;
      if (v158)
      {
        v32 = v159;
        v33 = __swift_project_boxed_opaque_existential_1(v157, v158);
        *(&v161 + 1) = v30;
        v162 = *(v32 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
        (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v33, v30);
        __swift_destroy_boxed_opaque_existential_1Tm_3(v157);
      }

      else
      {
        sub_227FCAC58(v157, &qword_27D81E7C0, &qword_22813BCE0);
        v160 = 0u;
        v161 = 0u;
        v162 = 0;
      }

      v49 = v155;
      v50 = sub_228013ECC(&v160);
      sub_227FCAC58(&v160, &qword_27D81E7C8, &qword_22813BCE8);
      v51 = v25[13];
      v52 = v148;
      v53 = *(v148 + v51);

      *(v52 + v51) = v50;
      v54 = v152;
      sub_22813740C();
      if (*(&v161 + 1))
      {
        v55 = v162;
        __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
        v56 = *(*(v55 + 8) + 8);
        v57 = sub_22813738C();
        v59 = v58;
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v160);

        *v26 = v57;
        v26[1] = v59;
      }

      else
      {
        sub_227FCAC58(&v160, &qword_27D81E7C0, &qword_22813BCE0);
      }

      sub_2281373EC();
      v60 = v162;
      __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
      v61 = *(*(v60 + 8) + 8);
      v62 = sub_22813738C();
      v64 = v63;
      v65 = v148;
      v66 = (v148 + v31[7]);
      v67 = v66[1];

      *v66 = v62;
      v66[1] = v64;
      __swift_destroy_boxed_opaque_existential_1Tm_3(&v160);
      sub_22813741C();
      v68 = v162;
      __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
      v69 = *(*(v68 + 8) + 8);
      v70 = sub_22813738C();
      v72 = v71;
      v73 = (v65 + v31[6]);
      v74 = v73[1];

      *v73 = v70;
      v73[1] = v72;
      __swift_destroy_boxed_opaque_existential_1Tm_3(&v160);
      sub_2281373FC();
      v75 = *(&v161 + 1);
      if (*(&v161 + 1))
      {
        v76 = v162;
        __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
        v77 = *(*(v76 + 8) + 8);
        v75 = sub_22813738C();
        v79 = v78;
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v160);
      }

      else
      {
        sub_227FCAC58(&v160, &qword_27D81E7D0, &unk_22813BCF0);
        v79 = 0;
      }

      v80 = (v65 + v31[8]);
      v81 = v80[1];

      *v80 = v75;
      v80[1] = v79;
      v82 = *(v49 + 1880);
      v83 = *(v49 + 1888);
      v84 = *(v49 + 1896);
      v85 = *(v49 + 1904);
      v86 = *(v49 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      v87 = byte_2813C4638;
      if (byte_2813C4638 == 1)
      {
        v84(&v160, v86);

        if ((v160 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {

        if (!v83)
        {
LABEL_43:
          v117 = *(v49 + 1920);
          v118 = *(v49 + 1928);
          v119 = *(v49 + 1936);
          v120 = *(v49 + 1944);
          v121 = *(v49 + 2208);

          if (v87)
          {
            v119(&v160, v121);

            if ((v160 & 1) == 0)
            {
LABEL_45:

              (*(v153 + 8))(v54, v154);
              sub_227FCAC58(v166, &qword_27D81E7A0, &qword_22813BCC0);
LABEL_54:
              __swift_destroy_boxed_opaque_existential_1Tm_3(v163);
              return sub_227FCAC58(v164, &qword_27D81E7A0, &qword_22813BCC0);
            }
          }

          else
          {

            if (!v118)
            {
              goto LABEL_45;
            }
          }

          sub_2281373EC();
          v122 = v158;
          v123 = v159;
          v124 = __swift_project_boxed_opaque_existential_1(v157, v158);
          *(&v161 + 1) = v122;
          v162 = *(v123 + 8);
          v125 = __swift_allocate_boxed_opaque_existential_1(&v160);
          (*(*(v122 - 8) + 16))(v125, v124, v122);
          v126 = sub_2280143F4(&v160);
          v128 = v127;
          sub_227FCAC58(&v160, &qword_27D81E7C8, &qword_22813BCE8);
          __swift_destroy_boxed_opaque_existential_1Tm_3(v157);
          v129 = (v65 + v31[11]);
          v130 = v129[1];

          *v129 = v126;
          v129[1] = v128;
          sub_22813741C();
          v131 = v158;
          v132 = v159;
          v133 = __swift_project_boxed_opaque_existential_1(v157, v158);
          *(&v161 + 1) = v131;
          v162 = *(v132 + 8);
          v134 = __swift_allocate_boxed_opaque_existential_1(&v160);
          (*(*(v131 - 8) + 16))(v134, v133, v131);
          v135 = sub_2280143F4(&v160);
          v137 = v136;
          sub_227FCAC58(&v160, &qword_27D81E7C8, &qword_22813BCE8);
          __swift_destroy_boxed_opaque_existential_1Tm_3(v157);
          v138 = (v65 + v31[10]);
          v139 = v138[1];

          *v138 = v135;
          v138[1] = v137;
          sub_2281373FC();
          v140 = v158;
          if (v158)
          {
            v141 = v159;
            v142 = __swift_project_boxed_opaque_existential_1(v157, v158);
            *(&v161 + 1) = v140;
            v162 = *(v141 + 8);
            v143 = __swift_allocate_boxed_opaque_existential_1(&v160);
            (*(*(v140 - 8) + 16))(v143, v142, v140);
            __swift_destroy_boxed_opaque_existential_1Tm_3(v157);
          }

          else
          {
            sub_227FCAC58(v157, &qword_27D81E7D0, &unk_22813BCF0);
            v160 = 0u;
            v161 = 0u;
            v162 = 0;
          }

          v107 = sub_2280143F4(&v160);
          v111 = v145;

          (*(v153 + 8))(v54, v154);
          sub_227FCAC58(v166, &qword_27D81E7A0, &qword_22813BCC0);
          sub_227FCAC58(&v160, &qword_27D81E7C8, &qword_22813BCE8);
          v144 = (v65 + v31[12]);
LABEL_53:
          v146 = v144[1];

          *v144 = v107;
          v144[1] = v111;
          goto LABEL_54;
        }
      }

      sub_22813740C();
      v88 = v158;
      if (v158)
      {
        v89 = v159;
        v90 = __swift_project_boxed_opaque_existential_1(v157, v158);
        *(&v161 + 1) = v88;
        v162 = *(v89 + 8);
        v91 = __swift_allocate_boxed_opaque_existential_1(&v160);
        (*(*(v88 - 8) + 16))(v91, v90, v88);
        __swift_destroy_boxed_opaque_existential_1Tm_3(v157);
      }

      else
      {
        sub_227FCAC58(v157, &qword_27D81E7C0, &qword_22813BCE0);
        v160 = 0u;
        v161 = 0u;
        v162 = 0;
      }

      v112 = sub_2280143F4(&v160);
      v114 = v113;
      sub_227FCAC58(&v160, &qword_27D81E7C8, &qword_22813BCE8);
      v115 = (v65 + v31[9]);
      v116 = v115[1];

      *v115 = v112;
      v115[1] = v114;
      goto LABEL_43;
    }

    v35 = v150;
    if (swift_dynamicCast())
    {
      v36 = v3;
      v37 = *(v3 + 32);
      v38 = v149;
      v37(v149, v10, v35);
      sub_2281374AC();
      if (*(&v161 + 1))
      {
        v39 = v162;
        __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
        v40 = *(*(*(v39 + 8) + 8) + 8);
        v41 = sub_22813738C();
        v43 = v42;
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v160);

        *v26 = v41;
        v26[1] = v43;
      }

      else
      {
        sub_227FCAC58(&v160, &qword_27D81E7B0, &qword_22813BCD0);
      }

      sub_2281373EC();
      v92 = v162;
      __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
      v93 = *(*(*(v92 + 8) + 8) + 8);
      v94 = sub_22813738C();
      v96 = v95;
      v97 = v148;
      v98 = (v148 + v25[7]);
      v99 = v98[1];

      *v98 = v94;
      v98[1] = v96;
      __swift_destroy_boxed_opaque_existential_1Tm_3(&v160);
      sub_22813741C();
      v100 = v162;
      __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
      v101 = *(*(v100 + 8) + 8);
      v102 = sub_22813738C();
      v104 = v103;
      v105 = (v97 + v25[6]);
      v106 = v105[1];

      *v105 = v102;
      v105[1] = v104;
      __swift_destroy_boxed_opaque_existential_1Tm_3(&v160);
      sub_22813749C();
      v107 = *(&v161 + 1);
      if (*(&v161 + 1))
      {
        v108 = v162;
        __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
        v109 = *(*(v108 + 8) + 8);
        v107 = sub_22813738C();
        v111 = v110;

        (*(v36 + 8))(v38, v150);
        sub_227FCAC58(v166, &qword_27D81E7A0, &qword_22813BCC0);
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v160);
      }

      else
      {

        (*(v36 + 8))(v38, v150);
        sub_227FCAC58(v166, &qword_27D81E7A0, &qword_22813BCC0);
        sub_227FCAC58(&v160, &qword_27D81E7B8, &qword_22813BCD8);
        v111 = 0;
      }

      v144 = (v97 + v25[8]);
      goto LABEL_53;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_3(v163);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v44 = sub_22813882C();
  __swift_project_value_buffer(v44, qword_2813C89F0);

  v45 = sub_22813880C();
  v46 = sub_2281396EC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v163[0] = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_227FCC340(v28, v27, v163);
    _os_log_impl(&dword_227FC3000, v45, v46, "Unsupported bundle type for adapter identifier: %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v48);
    MEMORY[0x22AAB28A0](v48, -1, -1);
    MEMORY[0x22AAB28A0](v47, -1, -1);
  }

  sub_227FCAC58(v166, &qword_27D81E7A0, &qword_22813BCC0);
  return sub_227FCAC58(v164, &qword_27D81E7A0, &qword_22813BCC0);
}

uint64_t objectdestroy_16Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm_3((v2 + 16));
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AAB28A0);
  }

  return result;
}

uint64_t sub_228015A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_228015AE8()
{
  result = qword_2813C4728;
  if (!qword_2813C4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4728);
  }

  return result;
}

unint64_t sub_228015B3C()
{
  result = qword_2813C4830[0];
  if (!qword_2813C4830[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E7D8, &qword_22813BD00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813C4830);
  }

  return result;
}

unint64_t sub_228015BA0()
{
  v1 = *(type metadata accessor for ModelBundleIdentifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_228012AB8((v0 + 16), v2);
}

uint64_t sub_228015C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_228015CD4(uint64_t result, int a2, int a3)
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

uint64_t sub_228015D40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = a1;
  a3(a1, a2);

  v5 = sub_22813999C();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = swift_allocError();
    *v7 = v4;
    *(v7 + 8) = a2;
  }

  v8 = sub_228136E1C();

  v9 = [v8 localizedDescription];
  v10 = sub_2281392AC();

  return v10;
}

uint64_t sub_228015E2C(uint64_t a1)
{
  v2 = sub_227FE4858(MEMORY[0x277D84F90]);
  v3 = *(a1 + 64);
  *&v22[0] = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      sub_227FC81CC(*(a1 + 48) + 48 * v10, &v23, &qword_27D81E610, &unk_22813B450);
      sub_227FCC40C(*(a1 + 56) + 32 * v10, &v25);
      sub_2280178D8(v22, &v23, a1, &qword_27D81E868, &qword_22813BFE8, &qword_27D81E610, &unk_22813B450);
      v6 &= v6 - 1;
      sub_22801E5D8(&v23, &qword_27D81E868, &qword_22813BFE8);
      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);

      sub_22801E5D8(&v23, &qword_27D81E868, &qword_22813BFE8);

      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v11 = *&v22[0];
  if (*(*&v22[0] + 16) && (v12 = sub_22808C964(0x697263736544534ELL, 0xED00006E6F697470), (v13 & 1) != 0))
  {
    sub_227FCC40C(*(v11 + 56) + 32 * v12, &v23);
    sub_22801E5D8(&v23, &qword_27D81E830, &unk_22813C630);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    sub_22801E5D8(&v23, &qword_27D81E830, &unk_22813C630);
    v14 = *MEMORY[0x277CCA068];
    v15 = sub_2281392AC();
    v17 = sub_228017058(v15, v16, 3, a1);
    v19 = v18;

    if (v19)
    {
      *(&v24 + 1) = MEMORY[0x277D837D0];
      *&v23 = v17;
      *(&v23 + 1) = v19;
      sub_227FCF784(&v23, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22801B474(v22, 0x697263736544534ELL, 0xED00006E6F697470, isUniquelyReferenced_nonNull_native);
    }
  }

  return v11;
}

uint64_t sub_2280160DC(uint64_t a1)
{
  v2 = sub_227FE4858(MEMORY[0x277D84F90]);
  v3 = *(a1 + 64);
  *&v22[0] = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      sub_227FC81CC(*(a1 + 48) + 48 * v10, &v23, &qword_27D81E5E8, &unk_22813C660);
      sub_227FCC40C(*(a1 + 56) + 32 * v10, &v25);
      sub_2280178D8(v22, &v23, a1, &qword_27D81E828, &unk_22813BF90, &qword_27D81E5E8, &unk_22813C660);
      v6 &= v6 - 1;
      sub_22801E5D8(&v23, &qword_27D81E828, &unk_22813BF90);
      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);

      sub_22801E5D8(&v23, &qword_27D81E828, &unk_22813BF90);

      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v11 = *&v22[0];
  if (*(*&v22[0] + 16) && (v12 = sub_22808C964(0x697263736544534ELL, 0xED00006E6F697470), (v13 & 1) != 0))
  {
    sub_227FCC40C(*(v11 + 56) + 32 * v12, &v23);
    sub_22801E5D8(&v23, &qword_27D81E830, &unk_22813C630);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    sub_22801E5D8(&v23, &qword_27D81E830, &unk_22813C630);
    v14 = *MEMORY[0x277CCA068];
    v15 = sub_2281392AC();
    v17 = sub_22801760C(v15, v16, 3, a1);
    v19 = v18;

    if (v19)
    {
      *(&v24 + 1) = MEMORY[0x277D837D0];
      *&v23 = v17;
      *(&v23 + 1) = v19;
      sub_227FCF784(&v23, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22801B474(v22, 0x697263736544534ELL, 0xED00006E6F697470, isUniquelyReferenced_nonNull_native);
    }
  }

  return v11;
}

uint64_t sub_2280163B0()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](qword_22813C0E0[v1]);
  return sub_228139AEC();
}

uint64_t sub_228016438()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](qword_22813C0E0[v1]);
  return sub_228139AEC();
}

uint64_t sub_228016484@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22801E118(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2280164D0(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0xD00000000000001ALL;
      break;
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
    case 3:
      result = 0xD000000000000025;
      break;
    case 5:
    case 6:
      result = 0xD000000000000043;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      v1 = sub_22801E100(a1);
      sub_22813988C();

      v2 = 0xE400000000000000;
      v3 = 2036625250;
      v4 = 0xE500000000000000;
      v5 = 0x656C746974;
      if (v1 != 5)
      {
        v5 = 0x6E776F6E6B6E75;
        v4 = 0xE700000000000000;
      }

      v6 = 0xE600000000000000;
      v7 = 0x7265646E6573;
      if (v1 != 3)
      {
        v7 = 0x7463656A627573;
        v6 = 0xE700000000000000;
      }

      if (v1 <= 4u)
      {
        v5 = v7;
        v4 = v6;
      }

      v8 = 0xE800000000000000;
      v9 = 0x73746E656D656C65;
      if (v1 != 1)
      {
        v9 = 0x6E65697069636572;
        v8 = 0xEA00000000007374;
      }

      if (v1)
      {
        v3 = v9;
        v2 = v8;
      }

      if (v1 <= 2u)
      {
        v10 = v3;
      }

      else
      {
        v10 = v5;
      }

      if (v1 <= 2u)
      {
        v11 = v2;
      }

      else
      {
        v11 = v4;
      }

      MEMORY[0x22AAB1970](v10, v11);

      result = 0xD00000000000002ALL;
      break;
    case 15:
      result = 0xD000000000000024;
      break;
    case 16:
      result = 0xD00000000000003DLL;
      break;
    case 17:
    case 50:
      result = 0xD00000000000004DLL;
      break;
    case 18:
    case 34:
      result = 0xD000000000000036;
      break;
    case 19:
      result = 0xD000000000000021;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 22:
    case 30:
      result = 0xD000000000000046;
      break;
    case 23:
      result = 0xD00000000000004ALL;
      break;
    case 24:
    case 51:
      result = 0xD00000000000003ELL;
      break;
    case 25:
    case 31:
    case 55:
      result = 0xD000000000000034;
      break;
    case 26:
      result = 0xD000000000000022;
      break;
    case 27:
      result = 0xD000000000000031;
      break;
    case 28:
      result = 0xD000000000000059;
      break;
    case 29:
      result = 0xD00000000000005FLL;
      break;
    case 32:
      result = 0xD00000000000002CLL;
      break;
    case 33:
      result = 0xD00000000000002DLL;
      break;
    case 35:
    case 48:
      result = 0xD000000000000037;
      break;
    case 38:
      result = 0xD00000000000005CLL;
      break;
    case 39:
    case 45:
      result = 0xD000000000000038;
      break;
    case 40:
      result = 0xD000000000000031;
      break;
    case 41:
      result = 0xD000000000000031;
      break;
    case 42:
    case 43:
      result = 0xD000000000000032;
      break;
    case 46:
      result = 0xD000000000000049;
      break;
    case 47:
    case 58:
      result = 0xD000000000000047;
      break;
    case 49:
      result = 0xD000000000000053;
      break;
    case 52:
      result = 0xD00000000000003FLL;
      break;
    case 53:
      result = 0xD00000000000002BLL;
      break;
    case 54:
      result = 0xD000000000000039;
      break;
    case 56:
      result = 0xD000000000000055;
      break;
    case 57:
      result = 0xD000000000000061;
      break;
    case 59:
      result = 0xD000000000000019;
      break;
    case 60:
      result = 0xD000000000000017;
      break;
    default:
      result = sub_2281399AC();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_228016BB4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = sub_22801E6A0(a1, a2);
  if (a3)
  {
    return a3(a1);
  }

  return result;
}

unint64_t sub_228016BF8()
{
  sub_22813988C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E860, &unk_22813BFD8);
  v0 = sub_2281392EC();
  MEMORY[0x22AAB1970](v0);

  return 0xD00000000000001BLL;
}

unint64_t sub_228016CF4()
{
  result = qword_27D81E808;
  if (!qword_27D81E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E808);
  }

  return result;
}

unint64_t sub_228016D48(uint64_t a1)
{
  *(a1 + 8) = sub_228016D78();
  result = sub_228016DCC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_228016D78()
{
  result = qword_2813C83E0;
  if (!qword_2813C83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C83E0);
  }

  return result;
}

unint64_t sub_228016DCC()
{
  result = qword_27D81E810;
  if (!qword_27D81E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E810);
  }

  return result;
}

unint64_t sub_228016E20(uint64_t a1)
{
  *(a1 + 8) = sub_228016E50();
  result = sub_228016EA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_228016E50()
{
  result = qword_27D81E818;
  if (!qword_27D81E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E818);
  }

  return result;
}

unint64_t sub_228016EA4()
{
  result = qword_27D81E820;
  if (!qword_27D81E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E820);
  }

  return result;
}

uint64_t sub_228016EF8(uint64_t a1)
{
  v2 = sub_228016D78();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_228016F34(uint64_t a1)
{
  v2 = sub_228016D78();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_228016F78(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 2u)
  {
    v4 = 0xE800000000000000;
    v5 = 0x73746E656D656C65;
    if (a1 != 1)
    {
      v5 = 0x6E65697069636572;
      v4 = 0xEA00000000007374;
    }

    if (a1)
    {
      v2 = v5;
    }

    else
    {
      v2 = 2036625250;
    }

    if (v1)
    {
      v3 = v4;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = 0xE500000000000000;
      v2 = 0x656C746974;
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v2 = 0x7265646E6573;
    }

    else
    {
      v2 = 0x7463656A627573;
    }

    if (v1 == 3)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  return sub_22805F434(v2, v3, 0xD00000000000002DLL, 0x80000002281455B0, 3);
}

uint64_t sub_228017058(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E530, &unk_22813BFF0);
  v15 = sub_22801E9FC(&qword_27D81E538, &qword_27D81E530, &unk_22813BFF0);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CE90(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E610, &unk_22813B450);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E610, &unk_22813B450);
    return 0;
  }
}

uint64_t sub_2280171BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E890, qword_22813C060);
  v15 = sub_22801E9FC(&qword_27D81E898, &qword_27D81E890, qword_22813C060);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CE90(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E610, &unk_22813B450);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E610, &unk_22813B450);
    return 0;
  }
}

uint64_t sub_228017324(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E880, &unk_22813C020);
  v15 = sub_22801E9FC(&qword_27D81E888, &qword_27D81E880, &unk_22813C020);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CA18(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E848, &qword_22813BFB8);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    return 0;
  }
}

uint64_t sub_228017498(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F0, &unk_22813B420);
  v15 = sub_22801E9FC(&qword_2813C6E50, &qword_27D81E5F0, &unk_22813B420);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CA18(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    return 0;
  }
}

uint64_t sub_22801760C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
  v15 = sub_22801E9FC(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CA18(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    return 0;
  }
}

uint64_t sub_228017770(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v15 = sub_22801E9FC(&qword_27D81E878, &qword_27D81E870, &qword_22813C008);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_22801E574(v12, v16);
  __swift_project_boxed_opaque_existential_1Tm(v12, v14);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v16[5] = DynamicType;
  if (*(a4 + 16) && (v9 = sub_22808CA18(v16), (v10 & 1) != 0))
  {
    sub_227FCC40C(*(a4 + 56) + 32 * v9, v17);
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCF784(v17, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    swift_dynamicCast();
    return v12[0];
  }

  else
  {
    sub_22801E5D8(v16, &qword_27D81E5E8, &unk_22813C660);
    return 0;
  }
}

uint64_t sub_2280178D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  sub_227FC81CC(a2, &v62, a4, a5);
  sub_22801E574(&v62, &v59);
  sub_22801E5D8(&v62, a6, a7);
  v12 = *(&v60 + 1);
  v13 = v61;
  __swift_project_boxed_opaque_existential_1Tm(&v59, *(&v60 + 1));
  v14 = (*(v13 + 24))(v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v64);
  sub_227FC81CC(a2, &v62, a4, a5);
  sub_227FCF784(v64, v57);
  sub_22801E5D8(&v62, a6, a7);
  sub_227FC81CC(a2, &v62, a4, a5);
  sub_22801E574(&v62, &v59);
  sub_22801E5D8(&v62, a6, a7);
  v17 = *(&v60 + 1);
  v18 = v61;
  __swift_project_boxed_opaque_existential_1Tm(&v59, *(&v60 + 1));
  v19 = (*(v18 + 32))(v17, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v64);
  v20 = *a1;
  if (!*(*a1 + 16) || (v21 = sub_22808C964(v14, v16), (v22 & 1) == 0))
  {
    v62 = 0u;
    v63 = 0u;
    sub_22801E5D8(&v62, &qword_27D81E830, &unk_22813C630);
    sub_227FCC40C(v57, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E838, &unk_22813BFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {

      sub_227FCC40C(v57, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E850, &qword_22813BFC0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        sub_22801E5D8(&v59, &qword_27D81E858, &unk_22813BFC8);
        goto LABEL_16;
      }

      sub_22801E4F8(&v59, &v62);
      if (v19 == 3)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v62);
LABEL_16:
        v36 = v58;
        v37 = __swift_project_boxed_opaque_existential_1Tm(v57, v58);
        *(&v63 + 1) = v36;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
        (*(*(v36 - 8) + 16))(boxed_opaque_existential_0, v37, v36);
        sub_2280249EC(&v62, v14, v16);
LABEL_21:
        v39 = v56;
        goto LABEL_22;
      }

      sub_228018158(&v62, v14, v16, v19, &v59);
      sub_227FC81CC(&v59, v55, &qword_27D81E830, &unk_22813C630);
      sub_2280249EC(v55, v14, v16);
      sub_22801E5D8(&v59, &qword_27D81E830, &unk_22813C630);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E840, &qword_22813BFB0);
      if (swift_dynamicCast())
      {
        v33 = v58;
        v34 = __swift_project_boxed_opaque_existential_1Tm(v57, v58);
        *(&v60 + 1) = v33;
        v35 = __swift_allocate_boxed_opaque_existential_0(&v59);
        (*(*(v33 - 8) + 16))(v35, v34, v33);
        sub_2280249EC(&v59, v14, v16);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E848, &qword_22813BFB8);
        if (swift_dynamicCast())
        {

          goto LABEL_16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E850, &qword_22813BFC0);
        if (swift_dynamicCast())
        {
          sub_22801E4F8(&v62, &v59);
          if (v19 == 3)
          {
            v42 = 1;
          }

          else
          {
            v42 = v19;
          }

          sub_228018158(&v59, v14, v16, v42, v55);
          sub_227FC81CC(v55, v54, &qword_27D81E830, &unk_22813C630);
          sub_2280249EC(v54, v14, v16);
          sub_22801E5D8(v55, &qword_27D81E830, &unk_22813C630);
          v40 = &v59;
          goto LABEL_20;
        }

        if (qword_2813C49A8 != -1)
        {
          swift_once();
        }

        v43 = sub_22813882C();
        __swift_project_value_buffer(v43, qword_2813C89F0);
        sub_227FCC40C(v57, &v62);

        v44 = sub_22813880C();
        v45 = sub_2281396DC();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v59 = v47;
          *v46 = 136446466;
          __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
          swift_getDynamicType();
          v48 = sub_228139B8C();
          v50 = v49;
          __swift_destroy_boxed_opaque_existential_0Tm(&v62);
          v51 = sub_227FCC340(v48, v50, &v59);

          *(v46 + 4) = v51;
          *(v46 + 12) = 2082;
          v52 = sub_227FCC340(v14, v16, &v59);

          *(v46 + 14) = v52;
          _os_log_impl(&dword_227FC3000, v44, v45, "Dropping value of type %{public}s for key %{public}s when converting ErrorContext to userInfo dictionary.", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v47, -1, -1);
          MEMORY[0x22AAB28A0](v46, -1, -1);

          goto LABEL_21;
        }
      }
    }

    v40 = &v62;
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    goto LABEL_21;
  }

  sub_227FCC40C(*(v20 + 56) + 32 * v21, &v62);
  sub_22801E5D8(&v62, &qword_27D81E830, &unk_22813C630);
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v23 = sub_22813882C();
  __swift_project_value_buffer(v23, qword_2813C89F0);
  sub_227FCC40C(v57, &v62);

  v24 = sub_22813880C();
  v25 = sub_2281396DC();

  if (!os_log_type_enabled(v24, v25))
  {

    v39 = &v62;
LABEL_22:
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    return __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *&v59 = v27;
  *v26 = 136446466;
  __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
  swift_getDynamicType();
  v28 = sub_228139B8C();
  v30 = v29;
  __swift_destroy_boxed_opaque_existential_0Tm(&v62);
  v31 = sub_227FCC340(v28, v30, &v59);

  *(v26 + 4) = v31;
  *(v26 + 12) = 2082;
  v32 = sub_227FCC340(v14, v16, &v59);

  *(v26 + 14) = v32;
  _os_log_impl(&dword_227FC3000, v24, v25, "Dropping value of type %{public}s for key %{public}s when converting ErrorContext to userInfo dictionary; this userInfoKey has already been used for a value of a different type.", v26, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAB28A0](v27, -1, -1);
  MEMORY[0x22AAB28A0](v26, -1, -1);

  return __swift_destroy_boxed_opaque_existential_0Tm(v57);
}

void sub_228018158(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v14 = sub_228136C4C();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_228136C3C();
    v41 = sub_228136C2C();
    v43 = v42;

    v50 = MEMORY[0x277CC9318];
    *&v49 = v41;
    *(&v49 + 1) = v43;
LABEL_14:
    sub_227FCF784(&v49, a5);
    goto LABEL_15;
  }

  if (a4 != 1)
  {
    sub_22801E574(a1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E850, &qword_22813BFC0);
    v32 = sub_2281392EC();
    v50 = MEMORY[0x277D837D0];
    *&v49 = v32;
    *(&v49 + 1) = v33;
    goto LABEL_14;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v10 = sub_228136C4C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_228136C3C();
  v34 = sub_228136C2C();
  v36 = v35;

  v37 = objc_opt_self();
  v38 = sub_228136EEC();
  v48[0] = 0;
  v39 = [v37 JSONObjectWithData:v38 options:0 error:v48];

  v40 = v48[0];
  if (v39)
  {
    sub_2281397DC();
    sub_227FC9210(v34, v36);
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v45 = v40;
  v46 = sub_228136E2C();

  swift_willThrow();
  sub_227FC9210(v34, v36);
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v17 = sub_22813882C();
  __swift_project_value_buffer(v17, qword_2813C89F0);
  sub_22801E574(a1, v48);

  v18 = v46;
  v19 = sub_22813880C();
  v20 = sub_2281396DC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v49 = v23;
    *v21 = 136446722;
    v47 = a3;
    v24 = a5;
    v25 = a2;
    __swift_project_boxed_opaque_existential_1Tm(v48, v48[3]);
    swift_getDynamicType();
    v26 = sub_228139B8C();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    v29 = sub_227FCC340(v26, v28, &v49);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2082;
    v30 = v25;
    a5 = v24;
    *(v21 + 14) = sub_227FCC340(v30, v47, &v49);
    *(v21 + 22) = 2112;
    v31 = sub_228136E1C();
    *(v21 + 24) = v31;
    *v22 = v31;
    _os_log_impl(&dword_227FC3000, v19, v20, "Dropping value of type %{public}s for key %{public}s when converting ErrorContext to userInfo dictionary; an error occurred while converting the value to a JSON object: %@", v21, 0x20u);
    sub_22801E5D8(v22, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v23, -1, -1);
    MEMORY[0x22AAB28A0](v21, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  *a5 = 0u;
  a5[1] = 0u;
LABEL_15:
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2280185D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E440, &unk_22813AAB0);
  v40 = a2;
  result = sub_22813992C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_228018898(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E378, &unk_22813A9F0);
  v36 = a2;
  result = sub_22813992C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_227FCF784(v25, v37);
      }

      else
      {
        sub_227FCC40C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_227FCF784(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_228018B74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3B8, &qword_22813AA28);
  v35 = a2;
  result = sub_22813992C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 16 * v24);
      v27 = v26[1];
      v36 = *v26;
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_228139AAC();
      sub_22813923C();

      result = sub_228139AEC();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = (*(v8 + 56) + 16 * v19);
      *v20 = v36;
      v20[1] = v27;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_228018E78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B8, &qword_22813AB28);
  v38 = a2;
  result = sub_22813992C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_228019118(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4C0, &qword_22813AB30);
  v38 = a2;
  result = sub_22813992C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2280193E4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  v9 = *v6;
  if (*(*v6 + 24) > a1)
  {
    v10 = *(*v6 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_22813992C();
  v12 = result;
  if (*(v9 + 16))
  {
    v40 = v7;
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
    v19 = result + 64;
    while (v17)
    {
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v27 = v24 | (v13 << 6);
      v28 = (*(v9 + 48) + 48 * v27);
      if (a2)
      {
        v29 = *v28;
        v30 = v28[1];
        v46 = v28[2];
        v44 = v29;
        v45 = v30;
        sub_227FCF784((*(v9 + 56) + 32 * v27), v43);
      }

      else
      {
        sub_227FC81CC(v28, &v44, a5, a6);
        sub_227FCC40C(*(v9 + 56) + 32 * v27, v43);
      }

      v31 = *(v12 + 40);
      sub_228139AAC();
      MEMORY[0x22AAB2060](*(&v46 + 1));
      result = sub_228139AEC();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 48 * v20);
      v22 = v44;
      v23 = v46;
      v21[1] = v45;
      v21[2] = v23;
      *v21 = v22;
      result = sub_227FCF784(v43, (*(v12 + 56) + 32 * v20));
      ++*(v12 + 16);
    }

    v25 = v13;
    while (1)
    {
      v13 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v26 = v14[v13];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v17 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v9 + 32);
    v7 = v40;
    if (v39 >= 64)
    {
      bzero((v9 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v7 = v12;
  return result;
}

uint64_t sub_2280196BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
  v34 = a2;
  result = sub_22813992C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v36 = v22;
      v23 = (v21 + 32 * v20);
      if (v34)
      {
        sub_227FCF784(v23, v35);
      }

      else
      {
        sub_227FCC40C(v23, v35);
      }

      v24 = *(v8 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281391DC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_227FCF784(v35, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22801997C(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = sub_228136EAC();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46, v8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E438, &qword_22813AAA8);
  v44 = a2;
  result = sub_22813992C();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v20 = (v6 + 32);
    v21 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = *(*(v10 + 48) + v26);
      v29 = *(v43 + 72);
      v30 = v27 + v29 * v26;
      if (v44)
      {
        (*v20)(v45, v30, v46);
      }

      else
      {
        (*v41)(v45, v30, v46);
      }

      v31 = *(v13 + 40);
      sub_228139AAC();
      MEMORY[0x22AAB2060](v28);
      result = sub_228139AEC();
      v32 = -1 << *(v13 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v13 + 48) + v22) = v28;
      result = (*v20)(*(v13 + 56) + v29 * v22, v45, v46);
      ++*(v13 + 16);
      v10 = v42;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_228019CE0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v44 = &v41 - v9;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E498, &unk_22813C050);
  v43 = a2;
  result = sub_22813992C();
  v13 = result;
  if (*(v10 + 16))
  {
    v41 = v2;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v42 + 72);
      v28 = *(v10 + 48) + v27 * v26;
      if (v43)
      {
        sub_22801E994(v28, v44, &qword_27D81E4A0, &unk_22813AB10);
        v29 = *(v10 + 56) + 24 * v26;
        v30 = *v29;
        v45 = *(v29 + 8);
      }

      else
      {
        sub_227FC81CC(v28, v44, &qword_27D81E4A0, &unk_22813AB10);
        v31 = *(v10 + 56) + 24 * v26;
        v30 = *v31;
        v45 = *(v31 + 8);
      }

      v32 = *(v13 + 40);
      sub_228139AAC();
      sub_227FC8030(v46);
      result = sub_228139AEC();
      v33 = -1 << *(v13 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_22801E994(v44, *(v13 + 48) + v27 * v21, &qword_27D81E4A0, &unk_22813AB10);
      v22 = *(v13 + 56) + 24 * v21;
      *v22 = v30;
      *(v22 + 8) = v45;
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v10 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_22801A094(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E468, &unk_22813C040);
  v38 = a2;
  result = sub_22813992C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_228139AAC();
      sub_22801E940();
      sub_2281391EC();
      result = sub_228139AEC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22801A38C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3C0, &qword_22813AA30);
  v38 = a2;
  result = sub_22813992C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22801A62C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v54 = a6;
  v9 = v6;
  v12 = a3(0);
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v53 = &v48 - v15;
  v16 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v17 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = a2;
  result = sub_22813992C();
  v19 = result;
  if (*(v16 + 16))
  {
    v49 = v9;
    v50 = v16;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v26 = result + 64;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v32 = v29 | (v20 << 6);
      v33 = *(v16 + 56);
      v34 = (*(v16 + 48) + 16 * v32);
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v51 + 72);
      v38 = v33 + v37 * v32;
      if (v52)
      {
        sub_22801E8D8(v38, v53, v54);
      }

      else
      {
        sub_22801E870(v38, v53, v54);
      }

      v39 = *(v19 + 40);
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v40 = -1 << *(v19 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v26 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v26 + 8 * v42);
          if (v46 != -1)
          {
            v27 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v41) & ~*(v26 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v28 = (*(v19 + 48) + 16 * v27);
      *v28 = v36;
      v28[1] = v35;
      result = sub_22801E8D8(v53, *(v19 + 56) + v37 * v27, v54);
      ++*(v19 + 16);
      v16 = v50;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v49;
      goto LABEL_36;
    }

    v47 = 1 << *(v16 + 32);
    v9 = v49;
    if (v47 >= 64)
    {
      bzero(v21, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v47;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v9 = v19;
  return result;
}

uint64_t sub_22801A96C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SummarizationResult();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E428, &unk_22813C030);
  v41 = a2;
  result = sub_22813992C();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_18:
      v28 = v25 | (v14 << 6);
      v29 = *(*(v10 + 48) + v28);
      v30 = *(v40 + 72);
      v31 = *(v10 + 56) + v30 * v28;
      if (v41)
      {
        sub_22801E8D8(v31, v42, type metadata accessor for SummarizationResult);
      }

      else
      {
        sub_22801E870(v31, v42, type metadata accessor for SummarizationResult);
      }

      v32 = *(v13 + 40);
      sub_228139AAC();
      sub_22813923C();

      result = sub_228139AEC();
      v21 = -1 << *(v13 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v20 + 8 * (v22 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v21) >> 6;
        while (++v23 != v34 || (v33 & 1) == 0)
        {
          v35 = v23 == v34;
          if (v23 == v34)
          {
            v23 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v23);
          if (v36 != -1)
          {
            v24 = __clz(__rbit64(~v36)) + (v23 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v20 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v13 + 48) + v24) = v29;
      result = sub_22801E8D8(v42, *(v13 + 56) + v30 * v24, type metadata accessor for SummarizationResult);
      ++*(v13 + 16);
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v18 = (v27 - 1) & v27;
        goto LABEL_18;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_37;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_22801AD78(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E400, &qword_22813AA70);
  v42 = a2;
  result = sub_22813992C();
  v14 = result;
  if (*(v11 + 16))
  {
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v11 + 48) + 8 * v26);
      v28 = *(v41 + 72);
      v29 = *(v11 + 56) + v28 * v26;
      if (v42)
      {
        sub_22801E8D8(v29, v10, type metadata accessor for PartialSummariesOperation.TaskResult);
      }

      else
      {
        sub_22801E870(v29, v10, type metadata accessor for PartialSummariesOperation.TaskResult);
      }

      v30 = *(v14 + 40);
      result = sub_228139A9C();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v27;
      result = sub_22801E8D8(v10, *(v14 + 56) + v28 * v22, type metadata accessor for PartialSummariesOperation.TaskResult);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v11 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22801B0C0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v44 = &v41 - v9;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D0, &unk_22813AA40);
  v43 = a2;
  result = sub_22813992C();
  v13 = result;
  if (*(v10 + 16))
  {
    v41 = v2;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v42 + 72);
      v28 = *(v10 + 48) + v27 * v26;
      if (v43)
      {
        sub_22801E994(v28, v44, &qword_27D81E3D8, &unk_22813C640);
        v29 = *(v10 + 56) + 24 * v26;
        v30 = *v29;
        v45 = *(v29 + 8);
      }

      else
      {
        sub_227FC81CC(v28, v44, &qword_27D81E3D8, &unk_22813C640);
        v31 = *(v10 + 56) + 24 * v26;
        v30 = *v31;
        v45 = *(v31 + 8);
      }

      v32 = *(v13 + 40);
      sub_228139AAC();
      sub_228025718(v46);
      result = sub_228139AEC();
      v33 = -1 << *(v13 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_22801E994(v44, *(v13 + 48) + v27 * v21, &qword_27D81E3D8, &unk_22813C640);
      v22 = *(v13 + 56) + 24 * v21;
      *v22 = v30;
      *(v22 + 8) = v45;
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v10 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

_OWORD *sub_22801B474(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22808C964(a2, a3);
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
      sub_22801C85C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_228018898(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22808C964(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2281399EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_227FCF784(a1, v23);
  }

  else
  {
    sub_22801C2AC(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_22801B5C4(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22808CA2C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_228018B74(v16, a4 & 1);
      v20 = *v5;
      result = sub_22808CA2C(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2281399EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22801CA24();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_22801B724(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22808C964(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_228019118(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22808C964(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2281399EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22801CCF4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_22801B8A0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22808CE24(a2 & 1);
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
      sub_22801D1C0();
      goto LABEL_7;
    }

    sub_22801997C(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_22808CE24(a2 & 1);
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
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_228136EAC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_22801C360(v10, a2 & 1, a1, v16);
}

uint64_t sub_22801BA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v6 = v5;
  v34 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v33 - v14;
  v16 = *v5;
  v18 = sub_227FC7F80(a4);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a5 & 1) == 0)
  {
    if (v23 >= v21 && (a5 & 1) == 0)
    {
      sub_22801DE84(&qword_27D81E4A0, &unk_22813AB10, &qword_27D81E498, &unk_22813C050);
      goto LABEL_7;
    }

    sub_228019CE0(v21, a5 & 1);
    v30 = *v6;
    v31 = sub_227FC7F80(a4);
    if ((v22 & 1) == (v32 & 1))
    {
      v18 = v31;
      v24 = *v6;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_227FC81CC(a4, v15, &qword_27D81E4A0, &unk_22813AB10);
      return sub_22801C60C(v18, v15, a1, a2, v34, v24, &qword_27D81E4A0, &unk_22813AB10);
    }

LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v6;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = (v24[7] + 24 * v18);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = v34;
}

uint64_t sub_22801BC18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22808C964(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
      return sub_22801E638(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for GMSModelInfoCache.CacheEntry);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22801D79C(type metadata accessor for GMSModelInfoCache.CacheEntry, &qword_27D81E4D0, &qword_22813AB40, type metadata accessor for GMSModelInfoCache.CacheEntry);
    goto LABEL_7;
  }

  sub_22801A62C(v15, a4 & 1, type metadata accessor for GMSModelInfoCache.CacheEntry, &qword_27D81E4D0, &qword_22813AB40, type metadata accessor for GMSModelInfoCache.CacheEntry);
  v22 = *v5;
  v23 = sub_22808C964(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22801C410(v12, a2, a3, a1, v18);
}

uint64_t sub_22801BDF4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22808CFAC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

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
      v18 = type metadata accessor for SummarizationResult();
      return sub_22801E638(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for SummarizationResult);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22801D9F0();
    goto LABEL_7;
  }

  sub_22801A96C(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_22808CFAC(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_22801C4BC(v10, a2, a1, v16);
}

uint64_t sub_22801BF48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22808D0CC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

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
      v18 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
      return sub_22801E638(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for PartialSummariesOperation.TaskResult);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22801DC28();
    goto LABEL_7;
  }

  sub_22801AD78(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_22808D0CC(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_22801C564(v10, a2, a1, v16);
}

uint64_t sub_22801C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v6 = v5;
  v34 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v33 - v14;
  v16 = *v5;
  v18 = sub_22808D108(a4);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a5 & 1) == 0)
  {
    if (v23 >= v21 && (a5 & 1) == 0)
    {
      sub_22801DE84(&qword_27D81E3D8, &unk_22813C640, &qword_27D81E3D0, &unk_22813AA40);
      goto LABEL_7;
    }

    sub_22801B0C0(v21, a5 & 1);
    v30 = *v6;
    v31 = sub_22808D108(a4);
    if ((v22 & 1) == (v32 & 1))
    {
      v18 = v31;
      v24 = *v6;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_227FC81CC(a4, v15, &qword_27D81E3D8, &unk_22813C640);
      return sub_22801C60C(v18, v15, a1, a2, v34, v24, &qword_27D81E3D8, &unk_22813C640);
    }

LABEL_15:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v6;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = (v24[7] + 24 * v18);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = v34;
}

_OWORD *sub_22801C2AC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_227FCF784(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_22801C318(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_22801C360(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = sub_228136EAC();
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

uint64_t sub_22801C410(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
  result = sub_22801E8D8(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for GMSModelInfoCache.CacheEntry);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_22801C4BC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for SummarizationResult();
  result = sub_22801E8D8(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for SummarizationResult);
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

uint64_t sub_22801C564(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  result = sub_22801E8D8(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for PartialSummariesOperation.TaskResult);
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

uint64_t sub_22801C60C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v16 = a6[6];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  result = sub_22801E994(a2, v16 + *(*(v17 - 8) + 72) * a1, a7, a8);
  v19 = (a6[7] + 24 * a1);
  *v19 = a3;
  v19[1] = a4;
  v19[2] = a5;
  v20 = a6[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v22;
  }

  return result;
}

void *sub_22801C6E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E440, &unk_22813AAB0);
  v2 = *v0;
  v3 = sub_22813991C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_22801C85C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E378, &unk_22813A9F0);
  v2 = *v0;
  v3 = sub_22813991C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_227FCC40C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_227FCF784(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_22801CA24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3B8, &qword_22813AA28);
  v2 = *v0;
  v3 = sub_22813991C();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_22801CB8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B8, &qword_22813AB28);
  v2 = *v0;
  v3 = sub_22813991C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_22801CCF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4C0, &qword_22813AB30);
  v2 = *v0;
  v3 = sub_22813991C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_22801CE88(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v4;
  v9 = sub_22813991C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v28 = v7;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = 48 * v23;
        sub_227FC81CC(*(v8 + 48) + 48 * v23, v30, a3, a4);
        v23 *= 32;
        sub_227FCC40C(*(v8 + 56) + v23, v29);
        v25 = (*(v10 + 48) + v24);
        v26 = v30[0];
        v27 = v30[2];
        v25[1] = v30[1];
        v25[2] = v27;
        *v25 = v26;
        result = sub_227FCF784(v29, (*(v10 + 56) + v23));
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v7 = v28;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v10;
  }

  return result;
}

void *sub_22801D03C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
  v2 = *v0;
  v3 = sub_22813991C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_227FCC40C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_227FCF784(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_22801D1C0()
{
  v1 = v0;
  v31 = sub_228136EAC();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31, v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E438, &qword_22813AAA8);
  v5 = *v0;
  v6 = sub_22813991C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v5 + 16);
    v32 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v5 + 64;
    for (i = v33 + 32; v14; result = (*(v21 + 32))(*(v25 + 56) + v22, v24, v23))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = v33;
      v22 = *(v33 + 72) * v19;
      v24 = v30;
      v23 = v31;
      (*(v33 + 16))(v30, *(v5 + 56) + v22, v31);
      v25 = v32;
      *(*(v32 + 48) + v19) = v20;
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

        v1 = v26;
        v7 = v32;
        goto LABEL_18;
      }

      v18 = *(v27 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22801D44C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E468, &unk_22813C040);
  v2 = *v0;
  v3 = sub_22813991C();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_22801D5F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3C0, &qword_22813AA30);
  v2 = *v0;
  v3 = sub_22813991C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_22801D79C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v43 = a4;
  v7 = v4;
  v8 = a1(0);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v41 = &v40 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v4;
  v13 = sub_22813991C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v40 = v7;
    result = (v13 + 64);
    v16 = v12 + 64;
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 64 + 8 * v17)
    {
      result = memmove(result, (v12 + 64), 8 * v17);
    }

    v19 = 0;
    v20 = *(v12 + 16);
    v44 = v14;
    *(v14 + 16) = v20;
    v21 = 1 << *(v12 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v12 + 64);
    v24 = (v21 + 63) >> 6;
    if (v23)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v45 = (v23 - 1) & v23;
LABEL_17:
        v28 = v25 | (v19 << 6);
        v29 = 16 * v28;
        v30 = *(v12 + 56);
        v31 = (*(v12 + 48) + 16 * v28);
        v32 = v12;
        v33 = *v31;
        v34 = v31[1];
        v35 = v41;
        v36 = *(v42 + 72) * v28;
        v37 = v43;
        sub_22801E870(v30 + v36, v41, v43);
        v38 = v44;
        v39 = (*(v44 + 48) + v29);
        *v39 = v33;
        v39[1] = v34;
        v12 = v32;
        sub_22801E8D8(v35, *(v38 + 56) + v36, v37);

        v23 = v45;
      }

      while (v45);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v40;
        v14 = v44;
        goto LABEL_21;
      }

      v27 = *(v16 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v45 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }

  return result;
}

void *sub_22801D9F0()
{
  v1 = v0;
  v2 = type metadata accessor for SummarizationResult();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E428, &unk_22813C030);
  v6 = *v0;
  v7 = sub_22813991C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v27 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v30 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = *(*(v6 + 48) + v22);
        v24 = v28;
        v25 = *(v29 + 72) * v22;
        sub_22801E870(*(v6 + 56) + v25, v28, type metadata accessor for SummarizationResult);
        v26 = v30;
        *(*(v30 + 48) + v22) = v23;
        result = sub_22801E8D8(v24, *(v26 + 56) + v25, type metadata accessor for SummarizationResult);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v27;
        v8 = v30;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_22801DC28()
{
  v1 = v0;
  v2 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E400, &qword_22813AA70);
  v6 = *v0;
  v7 = sub_22813991C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v27 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v30 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = *(*(v6 + 48) + 8 * v22);
        v24 = v28;
        v25 = *(v29 + 72) * v22;
        sub_22801E870(*(v6 + 56) + v25, v28, type metadata accessor for PartialSummariesOperation.TaskResult);
        v26 = v30;
        *(*(v30 + 48) + 8 * v22) = v23;
        result = sub_22801E8D8(v24, *(v26 + 56) + v25, type metadata accessor for PartialSummariesOperation.TaskResult);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v27;
        v8 = v30;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_22801DE84(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v46 = a1;
  v47 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v44 = &v40 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_22813991C();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    v40 = v7;
    v41 = (v12 + 64);
    if (v14 != v12 || result >= v12 + 64 + 8 * v16)
    {
      result = memmove(result, v41, 8 * v16);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v48 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v42 = v23;
    v43 = v12;
    v24 = v44;
    if (v22)
    {
      do
      {
        v25 = __clz(__rbit64(v22));
        v49 = (v22 - 1) & v22;
LABEL_17:
        v28 = v25 | (v18 << 6);
        v29 = v46;
        v30 = *(v45 + 72) * v28;
        v31 = v47;
        sub_227FC81CC(*(v12 + 48) + v30, v24, v46, v47);
        v32 = 24 * v28;
        v33 = (*(v12 + 56) + 24 * v28);
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[2];
        v37 = v48;
        sub_22801E994(v24, *(v48 + 48) + v30, v29, v31);
        v38 = *(v37 + 56);
        v12 = v43;
        v39 = (v38 + v32);
        *v39 = v34;
        v39[1] = v35;
        v39[2] = v36;

        v23 = v42;
        v22 = v49;
      }

      while (v49);
    }

    v26 = v18;
    while (1)
    {
      v18 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v40;
        v14 = v48;
        goto LABEL_21;
      }

      v27 = *(v41 + v18);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v49 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }

  return result;
}

uint64_t sub_22801E100(char a1)
{
  if ((a1 - 9) >= 6u)
  {
    return 6;
  }

  else
  {
    return (a1 - 9);
  }
}

uint64_t sub_22801E118(uint64_t result)
{
  if (result <= 1999)
  {
    if (result > 505)
    {
      if (result <= 1004)
      {
        if (result > 1001)
        {
          if (result == 1002)
          {
            return 17;
          }

          if (result == 1003)
          {
            return 18;
          }

          return 19;
        }

        switch(result)
        {
          case 506:
            return 14;
          case 1000:
            return 15;
          case 1001:
            return 16;
        }
      }

      else
      {
        if (result <= 1007)
        {
          if (result == 1005)
          {
            return 20;
          }

          if (result == 1006)
          {
            return 21;
          }

          return 22;
        }

        if (result <= 1009)
        {
          if (result == 1008)
          {
            return 23;
          }

          else
          {
            return 24;
          }
        }

        if (result == 1010)
        {
          return 25;
        }

        if (result == 1011)
        {
          return 26;
        }
      }
    }

    else if (result <= 9)
    {
      if (result > 2)
      {
        if (result == 3 || result == 5 || result == 6)
        {
          return result;
        }
      }

      else if (result <= 2)
      {
        return result;
      }
    }

    else
    {
      if (result > 501)
      {
        if (result > 503)
        {
          if (result == 504)
          {
            return 12;
          }

          else
          {
            return 13;
          }
        }

        else if (result == 502)
        {
          return 10;
        }

        else
        {
          return 11;
        }
      }

      switch(result)
      {
        case 10:
          return 7;
        case 20:
          return 8;
        case 501:
          return 9;
      }
    }

    return 61;
  }

  if (result > 2299)
  {
    if (result > 2501)
    {
      if (result <= 2503)
      {
        if (result == 2502)
        {
          return 57;
        }

        else
        {
          return 58;
        }
      }

      if (result == 2504)
      {
        return 59;
      }

      if (result == 2505)
      {
        return 60;
      }
    }

    else
    {
      if (result > 2499)
      {
        if (result == 2500)
        {
          return 55;
        }

        else
        {
          return 56;
        }
      }

      if (result == 2300)
      {
        return 53;
      }

      if (result == 2301)
      {
        return 54;
      }
    }

    return 61;
  }

  switch(result)
  {
    case 2000:
      result = 27;
      break;
    case 2001:
      result = 28;
      break;
    case 2002:
      result = 29;
      break;
    case 2003:
      result = 30;
      break;
    case 2004:
      result = 31;
      break;
    case 2005:
      result = 32;
      break;
    case 2006:
      result = 33;
      break;
    case 2007:
      result = 34;
      break;
    case 2008:
      result = 35;
      break;
    case 2011:
      result = 38;
      break;
    case 2012:
      result = 39;
      break;
    case 2013:
      result = 40;
      break;
    case 2014:
      result = 41;
      break;
    case 2015:
      result = 42;
      break;
    case 2016:
      result = 43;
      break;
    case 2018:
      result = 45;
      break;
    case 2019:
      result = 46;
      break;
    case 2020:
      result = 47;
      break;
    case 2021:
      result = 48;
      break;
    case 2022:
      result = 49;
      break;
    case 2023:
      result = 50;
      break;
    case 2200:
      result = 51;
      break;
    case 2201:
      result = 52;
      break;
    default:
      return 61;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22801E4F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22801E574(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22801E5D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22801E638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_22801E6A0(uint64_t a1, char a2)
{
  v3 = sub_2280164D0(a2);
  v5 = v4;
  v6 = *MEMORY[0x277CCA068];
  v7 = sub_2281392AC();
  v9 = v8;
  *(&v15 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
  v16 = sub_22801E9FC(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
  *&v14 = v7;
  *(&v14 + 1) = v9;
  LOBYTE(v15) = 3;
  sub_22801E574(&v14, v17);
  __swift_project_boxed_opaque_existential_1Tm(&v14, *(&v15 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm(&v14);
  v18 = DynamicType;
  *(&v15 + 1) = MEMORY[0x277D837D0];
  *&v14 = v3;
  *(&v14 + 1) = v5;
  sub_228024ABC(&v14, v17);
  if ((a2 - 9) <= 5u)
  {
    v11 = sub_22801E100(a2);
    if (v11 != 6)
    {
      sub_228016F78(v11);
    }
  }

  *(&v15 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v16 = sub_22801E9FC(&qword_27D81E878, &qword_27D81E870, &qword_22813C008);
  *&v14 = 0xD00000000000001ELL;
  *(&v14 + 1) = 0x8000000228145590;
  LOBYTE(v15) = 3;
  sub_22801E574(&v14, v17);
  __swift_project_boxed_opaque_existential_1Tm(&v14, *(&v15 + 1));
  v12 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm(&v14);
  v18 = v12;
  v14 = 0u;
  v15 = 0u;
  return sub_228024ABC(&v14, v17);
}

uint64_t sub_22801E870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22801E8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22801E940()
{
  result = qword_2813C60E0;
  if (!qword_2813C60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C60E0);
  }

  return result;
}

uint64_t sub_22801E994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22801E9FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for SummarizationError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC4)
  {
    goto LABEL_17;
  }

  if (a2 + 60 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 60) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 60;
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

      return (*a1 | (v4 << 8)) - 60;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 60;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3D;
  v8 = v6 - 61;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummarizationError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 60 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 60) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC4)
  {
    v4 = 0;
  }

  if (a2 > 0xC3)
  {
    v5 = ((a2 - 196) >> 8) + 1;
    *result = a2 + 60;
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
    *result = a2 + 60;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22801EBB8()
{
  result = qword_27D81E8A0;
  if (!qword_27D81E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E8A0);
  }

  return result;
}

uint64_t sub_22801EC14()
{
  sub_228139AAC();
  MEMORY[0x22AAB2060](0);
  return sub_228139AEC();
}

uint64_t sub_22801EC80()
{
  sub_228139AAC();
  MEMORY[0x22AAB2060](0);
  return sub_228139AEC();
}

void *sub_22801ECE8()
{
  result = sub_227FE5398(MEMORY[0x277D84F90]);
  dword_27D81E8A8 = 0;
  off_27D81E8B0 = result;
  return result;
}

uint64_t sub_22801ED18()
{
  v0 = [objc_opt_self() processInfo];
  if (qword_2813C4630 != -1)
  {
    v7 = v0;
    swift_once();
    v0 = v7;
  }

  if (byte_2813C4638 != 1)
  {

    return 2;
  }

  if (qword_2813C4620 != -1)
  {
    v8 = v0;
    swift_once();
    v0 = v8;
  }

  v1 = byte_2813C4629;

  if ((v1 & 1) == 0)
  {
    return 2;
  }

  if (qword_27D81E280 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27D81E8A8);
  v2 = off_27D81E8B0;
  if (*(off_27D81E8B0 + 2) && (v3 = sub_22808DA18(), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + v3);
  }

  else
  {
    v5 = 2;
  }

  os_unfair_lock_unlock(&dword_27D81E8A8);
  return v5;
}

uint64_t getEnumTagSinglePayload for FeatureFlag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FeatureFlag(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_22801EF60()
{
  result = qword_27D81E8B8;
  if (!qword_27D81E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E8B8);
  }

  return result;
}

uint64_t type metadata accessor for SummarizationResult()
{
  result = qword_2813C83C0;
  if (!qword_2813C83C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22801F028()
{
  sub_22801F13C(319, qword_2813C7DF0, type metadata accessor for GMSModelInfo);
  if (v0 <= 0x3F)
  {
    sub_22801F13C(319, &qword_2813C4810, MEMORY[0x277D0DBB0]);
    if (v1 <= 0x3F)
    {
      sub_22801F13C(319, &qword_2813C8700, MEMORY[0x277D71C38]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22801F13C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22813977C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16SummarizationKit16StringSanitizing_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_22801F1EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_22801F234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22801F2B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_228136FCC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = sub_228137AEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E718, &qword_22813BB00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v32 - v13;
  v15 = sub_228137B6C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_228137BAC();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v16 + 104))(v20, *MEMORY[0x277D0E5C0], v15);
  sub_228137AAC();
  sub_228137B3C();
  v22 = sub_228137B4C();
  (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F8, &qword_22813C510);
  a2[3] = v23;
  a2[4] = sub_2280248CC(&qword_2813C6EE0, &qword_27D81E8F8, &qword_22813C510);
  v24 = __swift_allocate_boxed_opaque_existential_1(a2) + *(v23 + 36);
  sub_228137BBC();
  v26 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(*(v25 + 8) + 8))(v26);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 24))(v27, v28);
  v30 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  (*(*(v29 + 8) + 24))(v30);
  return sub_228137B5C();
}

uint64_t sub_22801F614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v107 = a4;
  v108 = a3;
  v97 = a2;
  v5 = sub_228136FCC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v102 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E718, &qword_22813BB00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v99 = &v94 - v12;
  v13 = sub_228137B6C();
  v95 = *(v13 - 8);
  v96 = v13;
  v14 = *(v95 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v98 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_228137BAC();
  v100 = *(v17 - 8);
  v101 = v17;
  v18 = *(v100 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v106 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v94 - v24;
  v104 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v26 = *(v104 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v104, v28);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E900, &qword_22813C518);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = &v94 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E908, &qword_22813C520);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v40 = &v94 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E910, &qword_22813C528);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8, v43);
  v45 = &v94 - v44;
  v46 = sub_228137B4C();
  v110 = *(v46 - 8);
  v111 = v46;
  v47 = *(v110 + 64);
  MEMORY[0x28223BE20](v46, v48);
  v50 = &v94 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_228137AEC();
  (*(*(v51 - 8) + 56))(v45, 1, 1, v51);
  v52 = sub_2281379AC();
  (*(*(v52 - 8) + 56))(v40, 1, 1, v52);
  v53 = sub_2281379FC();
  (*(*(v53 - 8) + 56))(v35, 1, 1, v53);
  v109 = v50;
  sub_228137B2C();
  v54 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v105 = v25;
  v103 = v26;
  if (byte_2813C4629 == 1)
  {
    v55 = a1;
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v56 = &off_27D81EDB0;
  }

  else
  {
    v55 = a1;
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v56 = &qword_2813C76F8;
  }

  v57 = *(*v56 + 752);
  v58 = *(*v56 + 760);
  v59 = *(*v56 + 768);
  v60 = *(*v56 + 776);
  v61 = *(*v56 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v59(v112, v61);

    if ((v112[0] & 1) == 0)
    {
LABEL_14:
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v62 = sub_22813882C();
      __swift_project_value_buffer(v62, qword_2813C8A20);
      v63 = sub_22813880C();
      v64 = sub_2281396DC();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_227FC3000, v63, v64, "Input deny list has been disabled by internal override.", v65, 2u);
        MEMORY[0x22AAB28A0](v65, -1, -1);
      }

LABEL_26:
      sub_22801F2B8(v108, v107);
      return (*(v110 + 8))(v109, v111);
    }
  }

  else
  {

    if (!v58)
    {
      goto LABEL_14;
    }
  }

  v66 = v55;
  v67 = *(v55 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v68 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  v69 = v105;
  sub_2280247C4(v67 + v68, v105, &qword_27D81E8F0, &unk_22813C500);
  v70 = v104;
  v71 = *(v103 + 48);
  if (v71(v69, 1, v104) == 1)
  {
    *v30 = 0;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0xE000000000000000;
    *(v30 + 3) = MEMORY[0x277D84F90];
    *(v30 + 4) = 0;
    *(v30 + 5) = 0xE000000000000000;
    v72 = &v30[*(v70 + 32)];
    sub_228137D6C();
    v73 = *(v70 + 36);
    v74 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v74 - 8) + 56))(&v30[v73], 1, 1, v74);
    if (v71(v69, 1, v70) != 1)
    {
      sub_22802482C(v69, &qword_27D81E8F0, &unk_22813C500);
    }
  }

  else
  {
    sub_228024980(v69, v30, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  v75 = *v30;
  sub_228024920(v30, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  if ((v75 & 1) == 0)
  {
    goto LABEL_26;
  }

  v76 = v106;
  sub_2280200E8(v66, v106);
  v78 = v100;
  v77 = v101;
  v79 = v98;
  (*(v100 + 16))(v98, v76, v101);
  (*(v78 + 56))(v79, 0, 1, v77);
  (*(v95 + 104))(v79, *MEMORY[0x277D0E5C0], v96);
  v80 = v110;
  v81 = v99;
  v82 = v111;
  (*(v110 + 16))(v99, v109, v111);
  (*(v80 + 56))(v81, 0, 1, v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F8, &qword_22813C510);
  v84 = v107;
  v107[3] = v83;
  v84[4] = sub_2280248CC(&qword_2813C6EE0, &qword_27D81E8F8, &qword_22813C510);
  v85 = __swift_allocate_boxed_opaque_existential_1(v84) + *(v83 + 36);
  sub_228137BBC();
  v86 = v108;
  v88 = v108[3];
  v87 = v108[4];
  __swift_project_boxed_opaque_existential_1(v108, v88);
  (*(*(v87 + 8) + 8))(v88);
  v89 = v86[3];
  v90 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v89);
  (*(v90 + 24))(v89, v90);
  v92 = v86[3];
  v91 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v92);
  (*(*(v91 + 8) + 24))(v92);
  sub_228137B5C();
  (*(v78 + 8))(v106, v77);
  return (*(v110 + 8))(v109, v111);
}

uint64_t sub_2280200E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_2281379CC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v76 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v79 = &v74 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v75 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v77 = &v74 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v80 = &v74 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v74 - v31;
  sub_22813722C();
  v33 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v34 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_2280247C4(v33 + v34, v32, &qword_27D81E8F0, &unk_22813C500);
  v35 = *(v8 + 48);
  v36 = v35(v32, 1, v7);
  sub_22802482C(v32, &qword_27D81E8F0, &unk_22813C500);
  if (v36 != 1)
  {
    v37 = v80;
    sub_2280247C4(v33 + v34, v80, &qword_27D81E8F0, &unk_22813C500);
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
        sub_22802482C(v37, &qword_27D81E8F0, &unk_22813C500);
      }
    }

    else
    {
      sub_228024980(v37, v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    }

    v42 = *v18;
    sub_228024920(v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    v43 = v78;
    if (v42)
    {
      v44 = v33;
      v45 = v77;
      sub_2280247C4(v33 + v34, v77, &qword_27D81E8F0, &unk_22813C500);
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
          sub_22802482C(v45, &qword_27D81E8F0, &unk_22813C500);
        }
      }

      else
      {
        v46 = v79;
        sub_228024980(v45, v79, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
      }

      v51 = *(v46 + 1);
      v50 = *(v46 + 2);

      sub_228024920(v46, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

      v52 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v52 = v51 & 0xFFFFFFFFFFFFLL;
      }

      v53 = v78;
      if (v52)
      {
        v54 = v75;
        sub_2280247C4(v44 + v34, v75, &qword_27D81E8F0, &unk_22813C500);
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
            sub_22802482C(v54, &qword_27D81E8F0, &unk_22813C500);
          }
        }

        else
        {
          v55 = v76;
          sub_228024980(v54, v76, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
        }

        v60 = *(v55 + 1);
        v59 = *(v55 + 2);

        sub_228024920(v55, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
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
          _os_log_impl(&dword_227FC3000, v62, v63, "input deny list function: %{public}s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm_4(v65);
          MEMORY[0x22AAB28A0](v65, -1, -1);
          MEMORY[0x22AAB28A0](v64, -1, -1);
        }

        sub_228023F34(v60, v59);

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
  MEMORY[0x22AAAFF60](v71, v66, *(v67 + 16));
  sub_228137B9C();
  return __swift_destroy_boxed_opaque_existential_1Tm_4(v84);
}

void sub_228020974(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v67[1] = a4;
  v68 = a3;
  v77 = a2;
  v78 = a1;
  v81 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v67[0] = v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v67 - v14;
  v69 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69, v17);
  v76 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v70 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v67 - v25;
  v27 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v72 = v15;
  v73 = v26;
  v75 = v5;
  v71 = v19;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v28 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v28 = &qword_2813C76F8;
  }

  v29 = *(*v28 + 712);
  v30 = *(*v28 + 720);
  v31 = *(*v28 + 728);
  v32 = *(*v28 + 736);
  v33 = *(*v28 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v31(&v79, v33);

    if ((v79 & 1) == 0)
    {
LABEL_14:
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v34 = sub_22813882C();
      __swift_project_value_buffer(v34, qword_2813C8A20);
      v35 = sub_22813880C();
      v36 = sub_2281396DC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_227FC3000, v35, v36, "Model safety has been disabled by internal override.", v37, 2u);
        MEMORY[0x22AAB28A0](v37, -1, -1);
      }

      sub_22801F2B8(v78, v81);
      return;
    }
  }

  else
  {

    if (!v30)
    {
      goto LABEL_14;
    }
  }

  sub_2280247C4(v77, &v79, &qword_27D81E8E0, &unk_22813C4F0);
  if (v80)
  {
    sub_227FCFAB8(&v79, v81);
  }

  else
  {
    sub_22802482C(&v79, &qword_27D81E8E0, &unk_22813C4F0);
    v38 = v75;
    v39 = *v75;
    v40 = v78;
    v42 = v78[3];
    v41 = v78[4];
    __swift_project_boxed_opaque_existential_1(v78, v42);
    v43 = (*(*(v41 + 8) + 16))(v42);
    v45 = v44;
    v47 = v40[3];
    v46 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v47);
    v48 = (*(*(v46 + 8) + 8))(v47);
    v49 = v76;
    sub_22805DD40(v43, v45, v48, v50, v76);
    if (v6)
    {

      if (v38[1])
      {
        sub_22801F2B8(v78, v81);
      }
    }

    else
    {

      v51 = v72;
      sub_2280247C4(v49 + *(v69 + 24), v72, &qword_27D81E8C8, &qword_22813C4D8);
      v53 = v74 + 48;
      v52 = *(v74 + 48);
      v54 = v71;
      if (v52(v51, 1, v71) == 1)
      {
        v74 = v53;
        v55 = v70;
        sub_228137D6C();
        v56 = *(v54 + 20);
        v57 = v73;
        if (qword_2813C5440 != -1)
        {
          swift_once();
        }

        v58 = qword_2813C5448;

        sub_228024920(v76, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        *(v55 + v56) = v58;
        if (v52(v51, 1, v54) != 1)
        {
          sub_22802482C(v51, &qword_27D81E8C8, &qword_22813C4D8);
        }
      }

      else
      {
        sub_228024920(v49, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v55 = v70;
        sub_228024980(v51, v70, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        v57 = v73;
      }

      sub_228024980(v55, v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      if (v38[1])
      {
        goto LABEL_35;
      }

      v59 = *(v57 + *(v54 + 20));
      v60 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
      swift_beginAccess();
      v61 = v59 + v60;
      v62 = v67[0];
      sub_2280247C4(v61, v67[0], &qword_27D81E8F0, &unk_22813C500);
      v63 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
      LODWORD(v59) = (*(*(v63 - 8) + 48))(v62, 1, v63);
      sub_22802482C(v62, &qword_27D81E8F0, &unk_22813C500);
      if (v59 != 1)
      {
LABEL_35:
        v68(v57);
      }

      else
      {
        v64 = swift_allocObject();
        *(v64 + 16) = 32;
        *(v64 + 24) = 0;
        *(v64 + 32) = 0;
        v65 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228145610, 168, sub_2280249E8);
        sub_227FDB3CC();
        swift_allocError();
        *v66 = 32;
        *(v66 + 8) = v65;
        swift_willThrow();
      }

      sub_228024920(v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    }
  }
}

uint64_t sub_2280211E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v86 = a3;
  v82 = a2;
  v89 = a4;
  v5 = sub_228136FCC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v90 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E718, &qword_22813BB00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v88 = &v76 - v12;
  v13 = sub_228137B6C();
  v84 = *(v13 - 8);
  v85 = v13;
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v87 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E900, &qword_22813C518);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v80 = &v76 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E908, &qword_22813C520);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v79 = &v76 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E910, &qword_22813C528);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v76 - v28;
  v83 = sub_228137B4C();
  v81 = *(v83 - 8);
  v30 = *(v81 + 64);
  MEMORY[0x28223BE20](v83, v31);
  v91 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v37 = &v76 - v36;
  v38 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v76 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_228137AEC();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44, v47);
  v49 = &v76 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v51 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_2280247C4(v50 + v51, v37, &qword_27D81E8F0, &unk_22813C500);
  v52 = *(v39 + 48);
  if (v52(v37, 1, v38) == 1)
  {
    *v43 = 0;
    *(v43 + 1) = 0;
    *(v43 + 2) = 0xE000000000000000;
    *(v43 + 3) = MEMORY[0x277D84F90];
    *(v43 + 4) = 0;
    *(v43 + 5) = 0xE000000000000000;
    v53 = &v43[*(v38 + 32)];
    sub_228137D6C();
    v54 = *(v38 + 36);
    v55 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v55 - 8) + 56))(&v43[v54], 1, 1, v55);
    if (v52(v37, 1, v38) != 1)
    {
      sub_22802482C(v37, &qword_27D81E8F0, &unk_22813C500);
    }
  }

  else
  {
    sub_228024980(v37, v43, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  v56 = *(v43 + 3);

  sub_228024920(v43, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228021A60(v56);

  v78 = v49;
  sub_228137AAC();
  v76 = v44;
  v77 = v45;
  (*(v45 + 16))(v29, v49, v44);
  (*(v45 + 56))(v29, 0, 1, v44);
  v57 = sub_2281379AC();
  (*(*(v57 - 8) + 56))(v79, 1, 1, v57);
  v58 = sub_2281379FC();
  (*(*(v58 - 8) + 56))(v80, 1, 1, v58);
  v59 = v91;
  sub_228137B2C();
  v60 = sub_228137BAC();
  v61 = v87;
  (*(*(v60 - 8) + 56))(v87, 1, 1, v60);
  (*(v84 + 104))(v61, *MEMORY[0x277D0E5C0], v85);
  v62 = v81;
  v63 = v88;
  v64 = v83;
  (*(v81 + 16))(v88, v59, v83);
  (*(v62 + 56))(v63, 0, 1, v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F8, &qword_22813C510);
  v66 = v89;
  v89[3] = v65;
  v66[4] = sub_2280248CC(&qword_2813C6EE0, &qword_27D81E8F8, &qword_22813C510);
  v67 = __swift_allocate_boxed_opaque_existential_1(v66) + *(v65 + 36);
  sub_228137BBC();
  v68 = v86;
  v70 = v86[3];
  v69 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v70);
  (*(*(v69 + 8) + 8))(v70);
  v71 = v68[3];
  v72 = v68[4];
  __swift_project_boxed_opaque_existential_1(v68, v71);
  (*(v72 + 24))(v71, v72);
  v74 = v68[3];
  v73 = v68[4];
  __swift_project_boxed_opaque_existential_1(v68, v74);
  (*(*(v73 + 8) + 24))(v74);
  sub_228137B5C();
  (*(v62 + 8))(v91, v64);
  return (*(v77 + 8))(v78, v76);
}

void *sub_228021A60(uint64_t a1)
{
  v2 = sub_228137ADC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (a1 + 40);
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      if (*v13 == 1)
      {
        v16 = *(v13 - 1);
        if (v16 <= 1)
        {
          if (!v16)
          {
            goto LABEL_5;
          }

          sub_228137ABC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_228133B48(0, v14[2] + 1, 1, v14);
          }

          v19 = v14[2];
          v21 = v14[3];
          v20 = v19 + 1;
          if (v19 >= v21 >> 1)
          {
            v14 = sub_228133B48(v21 > 1, v19 + 1, 1, v14);
          }

          v15 = v11;
        }

        else
        {
          if (v16 == 2 || v16 != 3)
          {
            goto LABEL_5;
          }

          sub_228137ACC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_228133B48(0, v14[2] + 1, 1, v14);
          }

          v19 = v14[2];
          v18 = v14[3];
          v20 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            v14 = sub_228133B48(v18 > 1, v19 + 1, 1, v14);
          }

          v15 = v8;
        }

        v14[2] = v20;
        (*(v3 + 32))(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v15, v2);
      }

LABEL_5:
      v13 += 16;
      if (!--v12)
      {
        return v14;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_228021CA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v33 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v4;
  sub_22805DD40(a1, a2, a3, v33, v17);
  sub_2280247C4(&v17[*(v13 + 24)], v12, &qword_27D81E8C8, &qword_22813C4D8);
  v25 = *(v19 + 48);
  if (v25(v12, 1, v18) == 1)
  {
    sub_228137D6C();
    v26 = *(v18 + 20);
    if (qword_2813C5440 != -1)
    {
      swift_once();
    }

    v27 = qword_2813C5448;

    sub_228024920(v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    *&v23[v26] = v27;
    if (v25(v12, 1, v18) != 1)
    {
      sub_22802482C(v12, &qword_27D81E8C8, &qword_22813C4D8);
    }
  }

  else
  {
    sub_228024920(v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    sub_228024980(v12, v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  v28 = *&v23[*(v18 + 20)];
  v29 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  v30 = *(v28 + v29);
  sub_228024920(v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  return v30;
}

void sub_228021FA8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v203 = a2;
  v4 = sub_228136FCC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v180 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228137A7C();
  v197 = *(v8 - 8);
  v198 = v8;
  v9 = *(v197 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v174 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_228137A9C();
  v179 = *(v199 - 8);
  v12 = *(v179 + 64);
  MEMORY[0x28223BE20](v199, v13);
  v186 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v191 = *(v187 - 8);
  v15 = *(v191 + 64);
  v17 = MEMORY[0x28223BE20](v187, v16);
  v173 = &v170 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v178 = &v170 - v20;
  v21 = sub_228137A1C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v190 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v31 = &v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v185 = &v170 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v175 = &v170 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8, v39);
  v183 = &v170 - v40;
  v181 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v41 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181, v42);
  v192 = (&v170 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v189 = *(v44 - 8);
  v45 = *(v189 + 64);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v182 = &v170 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v170 - v50;
  v52 = sub_228137AEC();
  v53 = *(*(v52 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v52 - 8, v54);
  v177 = &v170 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8, v60);
  v196 = &v170 - v61;
  v194 = sub_228137A3C();
  v193 = *(v194 - 8);
  v62 = *(v193 + 64);
  MEMORY[0x28223BE20](v194, v63);
  v195 = &v170 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v184 = v44;
  v208 = byte_2813C4629;
  v200 = v22;
  v201 = v21;
  v188 = v51;
  v172 = v31;
  v65 = a1;
  if (byte_2813C4629 == 1)
  {
    v66 = v2;
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v67 = &off_27D81EDB0;
  }

  else
  {
    v66 = v2;
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v67 = &qword_2813C76F8;
  }

  v68 = *(*v67 + 712);
  v69 = *(*v67 + 720);
  v70 = *(*v67 + 728);
  v71 = *(*v67 + 736);
  v72 = *(*v67 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v176 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v70(&v207, v72);

    if ((v207 & 1) == 0)
    {
LABEL_14:
      v73 = v201;
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v74 = sub_22813882C();
      __swift_project_value_buffer(v74, qword_2813C8A20);
      v75 = sub_22813880C();
      v76 = sub_2281396DC();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_227FC3000, v75, v76, "Model safety has been disabled by internal override.", v77, 2u);
        MEMORY[0x22AAB28A0](v77, -1, -1);
      }

      v78 = v203;
      v203[3] = v199;
      v78[4] = &off_2813C8678;
      __swift_allocate_boxed_opaque_existential_1(v78);
      v79 = v195;
      (*(v197 + 56))(v195, 1, 1, v198);
      (*(v193 + 104))(v79, *MEMORY[0x277D0E578], v194);
      sub_228137AAC();
      v80 = v196;
      sub_228137A0C();
      (*(v200 + 56))(v80, 0, 1, v73);
      sub_228137A8C();
      return;
    }
  }

  else
  {

    if ((v69 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v81 = v202;
  sub_2280247C4(v202 + 56, &v205, &qword_27D81E8E0, &unk_22813C4F0);
  if (v206)
  {
    sub_227FCFAB8(&v205, &v207);
    sub_227FCFAB8(&v207, v203);
    return;
  }

  sub_22802482C(&v205, &qword_27D81E8E0, &unk_22813C4F0);
  v82 = *v81;
  v83 = a1;
  v85 = a1[3];
  v84 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v85);
  v86 = (*(*(v84 + 8) + 16))(v85);
  v88 = v87;
  v90 = a1[3];
  v89 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  v91 = (*(*(v89 + 8) + 8))(v90);
  v92 = v192;
  sub_22805DD40(v86, v88, v91, v93, v192);
  if (!v66)
  {
    v171 = v83;

    v97 = v183;
    sub_2280247C4(v92 + *(v181 + 24), v183, &qword_27D81E8C8, &qword_22813C4D8);
    v98 = v189 + 48;
    v99 = *(v189 + 48);
    v100 = v184;
    if (v99(v97, 1, v184) == 1)
    {
      v189 = v98;
      v101 = v182;
      sub_228137D6C();
      v102 = *(v100 + 20);
      v103 = v188;
      v104 = v202;
      if (qword_2813C5440 != -1)
      {
        swift_once();
      }

      v105 = qword_2813C5448;

      sub_228024920(v192, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
      *(v101 + v102) = v105;
      if (v99(v97, 1, v100) != 1)
      {
        sub_22802482C(v97, &qword_27D81E8C8, &qword_22813C4D8);
      }
    }

    else
    {
      sub_228024920(v92, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
      v101 = v182;
      sub_228024980(v97, v182, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v103 = v188;
      v104 = v202;
    }

    sub_228024980(v101, v103, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    if ((*(v104 + 8) & 1) == 0)
    {
      v106 = *(v103 + *(v100 + 20));
      v107 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
      swift_beginAccess();
      v108 = v106 + v107;
      v109 = v175;
      sub_2280247C4(v108, v175, &qword_27D81E8D0, &unk_22813C4E0);
      LODWORD(v106) = (*(v191 + 48))(v109, 1, v187);
      sub_22802482C(v109, &qword_27D81E8D0, &unk_22813C4E0);
      if (v106 == 1)
      {
        v110 = swift_allocObject();
        *(v110 + 16) = 33;
        *(v110 + 24) = 0;
        *(v110 + 32) = 0;
        v111 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228145610, 294, sub_2280247B8);
        sub_227FDB3CC();
        swift_allocError();
        *v112 = 33;
        *(v112 + 8) = v111;
        swift_willThrow();
        sub_228024920(v103, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        return;
      }
    }

    v113 = *(v103 + *(v100 + 20));
    v114 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
    swift_beginAccess();
    v189 = v113;
    v115 = v113 + v114;
    v116 = v185;
    sub_2280247C4(v115, v185, &qword_27D81E8D0, &unk_22813C4E0);
    v117 = v191 + 48;
    v118 = *(v191 + 48);
    v119 = v187;
    if (v118(v116, 1, v187) == 1)
    {
      v120 = v178;
      *v178 = 0;
      v120[1] = 0;
      v120[2] = 0xE000000000000000;
      v120[3] = MEMORY[0x277D84F90];
      v120[4] = 0;
      v120[5] = 0xE000000000000000;
      v121 = v120 + *(v119 + 32);
      sub_228137D6C();
      v122 = *(v119 + 36);
      v123 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
      v124 = v120 + v122;
      v125 = v185;
      (*(*(v123 - 8) + 56))(v124, 1, 1, v123);
      v126 = v119;
      v127 = v120;
      if (v118(v125, 1, v126) != 1)
      {
        sub_22802482C(v125, &qword_27D81E8D0, &unk_22813C4E0);
      }
    }

    else
    {
      v127 = v178;
      sub_228024980(v116, v178, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    }

    v128 = *(v127 + 3);

    sub_228024920(v127, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    sub_228021A60(v128);

    sub_228137AAC();
    sub_228137A0C();

    v191 = v117;
    v192 = v118;
    if (v208)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v129 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v129 = &qword_2813C76F8;
    }

    v130 = *(*v129 + 792);
    v131 = *(*v129 + 800);
    v132 = *(*v129 + 808);
    v133 = *(*v129 + 816);
    v134 = *(*v129 + 2208);

    if (v176)
    {
      v132(&v209, v134);

      v136 = v200;
      v135 = v201;
      if ((v209 & 1) == 0)
      {
LABEL_48:
        v137 = v171;
        if (qword_2813C49E0 != -1)
        {
          swift_once();
        }

        v138 = sub_22813882C();
        __swift_project_value_buffer(v138, qword_2813C8A20);
        v139 = sub_22813880C();
        v140 = sub_2281396DC();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          *v141 = 0;
          _os_log_impl(&dword_227FC3000, v139, v140, "Output deny list has been disabled by internal override.", v141, 2u);
          MEMORY[0x22AAB28A0](v141, -1, -1);
        }

        goto LABEL_60;
      }
    }

    else
    {

      v136 = v200;
      v135 = v201;
      if (!v131)
      {
        goto LABEL_48;
      }
    }

    v142 = v189 + v114;
    v143 = v172;
    sub_2280247C4(v142, v172, &qword_27D81E8D0, &unk_22813C4E0);
    v144 = v187;
    v145 = v192;
    v146 = v192(v143, 1, v187);
    v137 = v171;
    if (v146 == 1)
    {
      v147 = v173;
      *v173 = 0;
      *(v147 + 1) = 0;
      *(v147 + 2) = 0xE000000000000000;
      *(v147 + 3) = MEMORY[0x277D84F90];
      *(v147 + 4) = 0;
      *(v147 + 5) = 0xE000000000000000;
      v148 = &v147[*(v144 + 32)];
      sub_228137D6C();
      v149 = *(v144 + 36);
      v150 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
      (*(*(v150 - 8) + 56))(&v147[v149], 1, 1, v150);
      if (v145(v143, 1, v144) != 1)
      {
        sub_22802482C(v143, &qword_27D81E8D0, &unk_22813C4E0);
      }
    }

    else
    {
      v147 = v173;
      sub_228024980(v143, v173, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    }

    v151 = *v147;
    sub_228024920(v147, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    v135 = v201;
    if (v151)
    {
      v152 = v174;
      sub_2280236A8(v188, v174);
      v153 = v197;
      v154 = v195;
      v155 = v152;
      v156 = v198;
      (*(v197 + 16))(v195, v155, v198);
      (*(v153 + 56))(v154, 0, 1, v156);
      (*(v193 + 104))(v154, *MEMORY[0x277D0E578], v194);
      v157 = v196;
      (*(v136 + 16))(v196, v190, v135);
      (*(v136 + 56))(v157, 0, 1, v135);
      sub_228137A8C();
      (*(v153 + 8))(v174, v156);
LABEL_61:
      v160 = v136;
      v161 = v137[3];
      v162 = v137[4];
      __swift_project_boxed_opaque_existential_1(v137, v161);
      v204 = (*(*(v162 + 8) + 8))(v161);
      v163 = v137[3];
      v164 = v137[4];
      __swift_project_boxed_opaque_existential_1(v137, v163);
      (*(v164 + 24))(v163, v164);
      v166 = v137[3];
      v165 = v137[4];
      __swift_project_boxed_opaque_existential_1(v137, v166);
      (*(*(v165 + 8) + 24))(v166);
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8E8, &qword_22813F0E0);
      v168 = v203;
      v203[3] = v167;
      v168[4] = sub_2280248CC(qword_2813C6EE8, &qword_27D81E8E8, &qword_22813F0E0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v168);
      sub_228137A2C();
      (*(v160 + 8))(v190, v201);
      sub_228024920(v188, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      (*(v179 + 32))(boxed_opaque_existential_1 + *(v167 + 36), v186, v199);
      return;
    }

LABEL_60:
    v158 = v195;
    (*(v197 + 56))(v195, 1, 1, v198);
    (*(v193 + 104))(v158, *MEMORY[0x277D0E578], v194);
    v159 = v196;
    (*(v136 + 16))(v196, v190, v135);
    (*(v136 + 56))(v159, 0, 1, v135);
    sub_228137A8C();
    goto LABEL_61;
  }

  if (*(v202 + 8))
  {
    v94 = v203;
    v203[3] = v199;
    v94[4] = &off_2813C8678;
    __swift_allocate_boxed_opaque_existential_1(v94);
    v95 = v195;
    (*(v197 + 56))(v195, 1, 1, v198);
    (*(v193 + 104))(v95, *MEMORY[0x277D0E578], v194);
    sub_228137AAC();
    v96 = v196;
    sub_228137A0C();
    (*(v200 + 56))(v96, 0, 1, v201);
    sub_228137A8C();
  }
}