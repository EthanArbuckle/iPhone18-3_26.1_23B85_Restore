double sub_22F2C0840(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 288) = 2;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 338) = 0u;
  return result;
}

uint64_t sub_22F2C0884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F2C08EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

id static PhotosMusicResources.bundle()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_22F740DF0();
  v2 = [v0 initWithPath_];

  if (!v2)
  {
    sub_22F1DF1D0();
    swift_allocError();
    *v3 = 0xD00000000000002DLL;
    *(v3 + 8) = 0x800000022F791680;
    *(v3 + 16) = 0;
    swift_willThrow();
  }

  return v2;
}

void static PhotosMusicResources.exportableAdamIDsURL()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_22F740DF0();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = sub_22F740DF0();
    v4 = sub_22F740DF0();
    v5 = [v2 URLForResource:v3 withExtension:v4];

    if (v5)
    {
      sub_22F73F430();
    }

    else
    {
      sub_22F1DF1D0();
      swift_allocError();
      *v7 = 0xD000000000000016;
      *(v7 + 8) = 0x800000022F798710;
      *(v7 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_22F1DF1D0();
    swift_allocError();
    *v6 = 0xD00000000000002DLL;
    *(v6 + 8) = 0x800000022F791680;
    *(v6 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_22F2C0BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F2C0BEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_22F2C0C50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v10 = sub_22F740B90();
  __swift_project_value_buffer(v10, qword_2810B4CE0);

  v11 = sub_22F740B70();
  v12 = sub_22F7415F0();

  if (os_log_type_enabled(v11, v12))
  {
    v34 = v7;
    v13 = swift_slowAlloc();
    v14 = v9;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v13 = 136315138;
    *(v13 + 4) = sub_22F145F20(a1, a2, &v36);
    _os_log_impl(&dword_22F0FC000, v11, v12, "Starting birthday grounding for person %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v16 = v15;
    v9 = v14;
    MEMORY[0x2319033A0](v16, -1, -1);
    v7 = v34;
    MEMORY[0x2319033A0](v13, -1, -1);
  }

  v17 = objc_opt_self();
  v18 = sub_22F740DF0();
  v35 = [v17 personNodesForLocalIdentifier:v18 inGraph:v8];

  v36 = v7;
  v37 = v8;
  v38 = v9;
  v19 = sub_22F2C109C(v35, a3);
  if (*(v19 + 2))
  {

    v20 = sub_22F740B70();
    v21 = sub_22F7415F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 134218242;
      *(v22 + 4) = *(v19 + 2);

      *(v22 + 12) = 2080;
      v24 = sub_22F741430();
      v26 = sub_22F145F20(v24, v25, &v36);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_22F0FC000, v20, v21, "Found %ld actual birthday moments = %s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2319033A0](v23, -1, -1);
      MEMORY[0x2319033A0](v22, -1, -1);

      goto LABEL_11;
    }
  }

  else
  {

    v36 = v7;
    v37 = v8;
    v38 = v9;
    v27 = sub_22F2C1AF0(v35, a3);

    v20 = sub_22F740B70();
    v28 = sub_22F7415F0();
    if (os_log_type_enabled(v20, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 134218242;
      *(v29 + 4) = *(v27 + 16);

      *(v29 + 12) = 2080;
      v31 = sub_22F741430();
      v33 = sub_22F145F20(v31, v32, &v36);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_22F0FC000, v20, v28, "Found %ld potential birthday moments = %s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2319033A0](v30, -1, -1);
      MEMORY[0x2319033A0](v29, -1, -1);

      goto LABEL_11;
    }
  }

LABEL_11:
  sub_22F7407A0();
}

char *sub_22F2C109C(void *a1, uint64_t a2)
{
  v101 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v96 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v96 - v12;
  v14 = sub_22F73F270();
  v105 = *(v14 - 8);
  v15 = *(v105 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v107 = &v96 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v96 - v21;
  MEMORY[0x28223BE20](v20);
  v104 = &v96 - v23;
  v99 = *(v2 + 8);
  v24 = [a1 birthdayMomentNodes];
  v25 = [v24 uuids];

  v100 = sub_22F741420();
  v26 = [a1 firstNode];
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v26;
  v28 = [v26 birthdayDateComponents];
  if (v28)
  {
    v29 = v28;
    sub_22F73F1B0();

    v30 = v27;
    v31 = v105;
    v32 = *(v105 + 32);
    v32(v11, v22, v14);
    v33 = *(v31 + 56);
    v33(v11, 0, 1, v14);
    v32(v13, v11, v14);
    v33(v13, 0, 1, v14);
    v34 = v31;
    v27 = v30;
    v35 = (*(v34 + 48))(v13, 1, v14);
  }

  else
  {
    v36 = *(v105 + 56);
    v37 = 1;
    v36(v11, 1, 1, v14);
    v38 = [v27 potentialBirthdayDateComponents];
    if (v38)
    {
      v39 = v38;
      sub_22F73F1B0();

      v37 = 0;
    }

    v36(v8, v37, 1, v14);
    sub_22F2030D4(v8, v13);
    v40 = *(v105 + 48);
    if (v40(v11, 1, v14) != 1)
    {
      sub_22F120ADC(v11, &qword_27DAB1EB8, &unk_22F77A2D0);
    }

    v35 = v40(v13, 1, v14);
  }

  if (v35 == 1)
  {

    sub_22F120ADC(v13, &qword_27DAB1EB8, &unk_22F77A2D0);
LABEL_11:
    v41 = v101;
    if (!v101)
    {
      return v100;
    }

    v42 = v100;

    v43 = sub_22F1ABBB4(v41, v42);

    return v43;
  }

  v102 = *(v105 + 32);
  v103 = v105 + 32;
  v102(v104, v13, v14);
  v44 = sub_22F73F1F0();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44;
  }

  v106 = v46;
  sub_22F120634(0, &qword_27DAB31B0, off_27887B498);
  v47 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v48 = [v47 years];

  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v49 = sub_22F741180();

  if (!(v49 >> 62))
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v98 = v27;
    if (v50)
    {
      goto LABEL_18;
    }

LABEL_38:

    v53 = MEMORY[0x277D84F90];
    v59 = *(MEMORY[0x277D84F90] + 16);
    if (!v59)
    {
LABEL_39:

      v69 = objc_opt_self();
      v70 = sub_22F741160();

      v71 = [v69 dateNodesForDateComponents:v70 inGraph:v99];

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v72 = sub_22F740B90();
      __swift_project_value_buffer(v72, qword_2810B4CE0);
      v73 = v71;
      v74 = sub_22F740B70();
      v75 = sub_22F7415F0();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v109 = v77;
        *v76 = 136315138;
        v78 = [v73 dateNames];
        v79 = MEMORY[0x277D837D0];
        v80 = v73;
        v81 = sub_22F741180();

        v82 = MEMORY[0x231900D40](v81, v79);
        v84 = v83;
        v73 = v80;

        v85 = sub_22F145F20(v82, v84, &v109);

        *(v76 + 4) = v85;
        _os_log_impl(&dword_22F0FC000, v74, v75, "Actual birthday dates = %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x2319033A0](v77, -1, -1);
        MEMORY[0x2319033A0](v76, -1, -1);
      }

      v87 = v100;
      v86 = v101;
      v88 = v98;
      v89 = [v73 momentNodes];
      v90 = [v89 uuids];

      v91 = sub_22F741420();
      v43 = sub_22F144608(v87, v91);
      if (v86)
      {

        v92 = sub_22F1ABBB4(v86, v43);

        v43 = v92;
      }

      v93 = sub_22F740B70();
      v94 = sub_22F7415F0();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 134217984;
        *(v95 + 4) = *(v43 + 16);

        _os_log_impl(&dword_22F0FC000, v93, v94, "Found %ld actual birthday moments", v95, 0xCu);
        MEMORY[0x2319033A0](v95, -1, -1);
      }

      else
      {

        v93 = v73;
      }

      (*(v105 + 8))(v104, v14);
      return v43;
    }

LABEL_29:
    v60 = (v53 + 32);
    v61 = (v105 + 16);
    v62 = MEMORY[0x277D84F90];
    do
    {
      v64 = *v60++;
      if (v64 >= v106)
      {
        v65 = *v61;
        v66 = v107;
        (*v61)(v107, v104, v14);
        sub_22F73F200();
        v65(v108, v66, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_22F13F8B0(0, *(v62 + 2) + 1, 1, v62);
        }

        v68 = *(v62 + 2);
        v67 = *(v62 + 3);
        if (v68 >= v67 >> 1)
        {
          v62 = sub_22F13F8B0(v67 > 1, v68 + 1, 1, v62);
        }

        v63 = v105;
        (*(v105 + 8))(v107, v14);
        *(v62 + 2) = v68 + 1;
        v102(&v62[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v68], v108, v14);
      }

      --v59;
    }

    while (v59);
    goto LABEL_39;
  }

  v50 = sub_22F741A00();
  v98 = v27;
  if (!v50)
  {
    goto LABEL_38;
  }

LABEL_18:
  v97 = v14;
  v109 = MEMORY[0x277D84F90];
  result = sub_22F146558(0, v50 & ~(v50 >> 63), 0);
  if ((v50 & 0x8000000000000000) == 0)
  {
    v52 = 0;
    v53 = v109;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x2319016F0](v52, v49);
      }

      else
      {
        v54 = *(v49 + 8 * v52 + 32);
      }

      v55 = v54;
      v56 = [v54 integerValue];

      v109 = v53;
      v58 = *(v53 + 16);
      v57 = *(v53 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_22F146558((v57 > 1), v58 + 1, 1);
        v53 = v109;
      }

      ++v52;
      *(v53 + 16) = v58 + 1;
      *(v53 + 8 * v58 + 32) = v56;
    }

    while (v50 != v52);

    v14 = v97;
    v59 = *(v53 + 16);
    if (!v59)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2C1AF0(void *a1, uint64_t a2)
{
  v15 = *v2;
  v4 = *(v2 + 2);
  v5 = [a1 firstNode];
  if (!v5)
  {
    return MEMORY[0x277D84FA0];
  }

  v6 = v5;
  v7 = sub_22F2C1C40(v5);
  if (v7)
  {
    v8 = v7;
    if ([v7 isEmpty])
    {
      v9 = MEMORY[0x277D84FA0];
      v10 = v6;
      v6 = v8;
    }

    else
    {
      v11 = [v8 momentNodes];
      v12 = [v11 uuids];

      v9 = sub_22F741420();
      if (a2)
      {

        v13 = sub_22F1ABBB4(a2, v9);

        v10 = v8;
        v9 = v13;
      }

      else
      {
        v10 = v8;
      }
    }
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  return v9;
}

char *sub_22F2C1C40(char *a1)
{
  v2 = v1;
  v191 = sub_22F73F870();
  v232 = *(v191 - 8);
  v4 = *(v232 + 8);
  MEMORY[0x28223BE20](v191);
  v190 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v189 = &v180 - v8;
  v195 = sub_22F73F090();
  v229 = *(v195 - 8);
  v9 = *(v229 + 8);
  MEMORY[0x28223BE20](v195);
  v215 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_22F73F990();
  v228 = *(v224 - 8);
  v11 = *(v228 + 8);
  MEMORY[0x28223BE20](v224);
  v223 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_22F73F9B0();
  v233 = *(v237 - 8);
  v13 = v233[8];
  MEMORY[0x28223BE20](v237);
  v15 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v208 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v187 = &v180 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v198 = &v180 - v23;
  MEMORY[0x28223BE20](v22);
  v206 = &v180 - v24;
  v234 = sub_22F73F690();
  v199 = *(v234 - 8);
  v25 = *(v199 + 64);
  v26 = MEMORY[0x28223BE20](v234);
  v207 = &v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v211 = &v180 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v212 = &v180 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v192 = &v180 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v197 = &v180 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v196 = &v180 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v205 = &v180 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v180 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v46 = &v180 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v180 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v180 - v50;
  v52 = sub_22F73F270();
  v53 = *(v52 - 8);
  v54 = v53[8];
  v55 = MEMORY[0x28223BE20](v52);
  v231 = &v180 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v59 = &v180 - v58;
  MEMORY[0x28223BE20](v57);
  v214 = &v180 - v60;
  v188 = *(v2 + 8);
  v236 = a1;
  v61 = [a1 birthdayDateComponents];
  v222 = v52;
  v194 = v53;
  if (v61)
  {
    v62 = v61;
    sub_22F73F1B0();

    v63 = v53[4];
    v63(v49, v59, v52);
    v64 = v53[7];
    v64(v49, 0, 1, v52);
    v63(v51, v49, v52);
    v64(v51, 0, 1, v52);
    v65 = v194;
    v66 = v194[6];
  }

  else
  {
    v67 = v53[7];
    v68 = 1;
    v67(v49, 1, 1, v52);
    v69 = [v236 potentialBirthdayDateComponents];
    if (v69)
    {
      v70 = v69;
      sub_22F73F1B0();

      v68 = 0;
    }

    v52 = v222;
    v67(v46, v68, 1, v222);
    sub_22F2030D4(v46, v51);
    v65 = v194;
    v66 = v194[6];
    if (v66(v49, 1, v52) != 1)
    {
      sub_22F120ADC(v49, &qword_27DAB1EB8, &unk_22F77A2D0);
    }
  }

  v71 = v234;
  if (v66(v51, 1, v52) == 1)
  {
    sub_22F120ADC(v51, &qword_27DAB1EB8, &unk_22F77A2D0);
    if (qword_2810A9400 != -1)
    {
      goto LABEL_80;
    }

    goto LABEL_9;
  }

  (v65[4])(v214, v51, v52);
  v83 = sub_22F73F1F0();
  if (v84)
  {
    v85 = 0;
  }

  else
  {
    v85 = v83;
  }

  v227 = v85;
  sub_22F120634(0, &qword_27DAB31B0, off_27887B498);
  v86 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v87 = [v86 years];

  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v88 = sub_22F741180();

  if (v88 >> 62)
  {
    v89 = sub_22F741A00();
  }

  else
  {
    v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v237;
  v235 = v41;
  v236 = v15;
  if (v89)
  {
    v238 = MEMORY[0x277D84F90];
    result = sub_22F146558(0, v89 & ~(v89 >> 63), 0);
    if (v89 < 0)
    {
      __break(1u);
      return result;
    }

    v92 = 0;
    v93 = v238;
    do
    {
      if ((v88 & 0xC000000000000001) != 0)
      {
        v94 = MEMORY[0x2319016F0](v92, v88);
      }

      else
      {
        v94 = *(v88 + 8 * v92 + 32);
      }

      v95 = v94;
      v96 = [v94 integerValue];

      v238 = v93;
      v98 = *(v93 + 16);
      v97 = *(v93 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_22F146558((v97 > 1), v98 + 1, 1);
        v93 = v238;
      }

      ++v92;
      *(v93 + 16) = v98 + 1;
      *(v93 + 8 * v98 + 32) = v96;
      v90 = v237;
      v41 = v235;
    }

    while (v89 != v92);

    v15 = v236;
    v71 = v234;
  }

  else
  {

    v93 = MEMORY[0x277D84F90];
  }

  v100 = *(v93 + 16);
  v101 = &OBJC_IVAR____TtC11PhotosGraph16SingleCollection_futureLookupResults;
  v102 = v222;
  if (!v100)
  {

LABEL_70:
    v163 = objc_opt_self();
    v164 = sub_22F741160();

    v165 = [v163 dateNodesForLocalDates:v164 inGraph:v188];

    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v166 = sub_22F740B90();
    __swift_project_value_buffer(v166, qword_2810B4CE0);
    v167 = v165;
    v168 = sub_22F740B70();
    v169 = sub_22F7415F0();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v238 = v171;
      *v170 = *(v101 + 110);
      v172 = [v167 dateNames];
      v173 = MEMORY[0x277D837D0];
      v174 = sub_22F741180();

      v175 = MEMORY[0x231900D40](v174, v173);
      v177 = v176;

      v178 = sub_22F145F20(v175, v177, &v238);

      *(v170 + 4) = v178;
      _os_log_impl(&dword_22F0FC000, v168, v169, "All potential birthday dates = %s", v170, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v171);
      MEMORY[0x2319033A0](v171, -1, -1);
      MEMORY[0x2319033A0](v170, -1, -1);
    }

    (v194[1])(v214, v222);
    return v167;
  }

  v103 = 0;
  v104 = v93 + 32;
  v200 = (v194 + 2);
  v105 = v233 + 1;
  v233 = (v199 + 48);
  v230 = (v199 + 32);
  v216 = (v199 + 16);
  v221 = *MEMORY[0x277CC9968];
  v220 = (v228 + 104);
  v219 = (v228 + 8);
  v225 = (v199 + 8);
  v186 = *MEMORY[0x277CC98E8];
  v185 = (v232 + 104);
  v184 = (v232 + 8);
  v183 = (v229 + 48);
  v181 = v229 + 32;
  v180 = (v229 + 8);
  v229 = MEMORY[0x277D84F90];
  v201 = (v194 + 1);
  *&v99 = 136315138;
  v182 = v99;
  v203 = v100;
  v234 = v105;
  v193 = v93;
  v202 = v93 + 32;
  while (v103 < *(v93 + 16))
  {
    if (*(v104 + 8 * v103) < v227)
    {
      goto LABEL_32;
    }

    (*v200)(v231, v214, v102);
    swift_beginAccess();
    sub_22F73F200();
    swift_endAccess();
    sub_22F740600();
    v113 = v206;
    sub_22F73F920();
    v114 = *v105;
    (*v105)(v15, v90);
    v115 = *v233;
    if ((*v233)(v113, 1, v71) != 1)
    {
      v228 = v115;
      v232 = v114;
      v119 = *v230;
      (*v230)(v41, v113, v71);
      v213 = *v216;
      v213(v205, v41, v71);
      v120 = v229;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_22F13E15C(0, *(v120 + 2) + 1, 1, v120);
      }

      v122 = *(v120 + 2);
      v121 = *(v120 + 3);
      if (v122 >= v121 >> 1)
      {
        v120 = sub_22F13E15C(v121 > 1, v122 + 1, 1, v120);
      }

      *(v120 + 2) = v122 + 1;
      v210 = (*(v199 + 80) + 32) & ~*(v199 + 80);
      v209 = *(v199 + 72);
      v119(&v120[v210 + v209 * v122], v205, v71);
      v123 = v236;
      sub_22F740600();
      v125 = v223;
      v124 = v224;
      v218 = *v220;
      v218(v223, v221, v224);
      v126 = v198;
      sub_22F73F940();
      v127 = v124;
      v128 = v126;
      v217 = *v219;
      v217(v125, v127);
      v90 = v237;
      v105 = v234;
      (v232)(v123, v237);
      v129 = (v228)(v128, 1, v71);
      v226 = v119;
      if (v129 == 1)
      {
        sub_22F120ADC(v128, &qword_27DAB0920, &qword_22F770B20);
        v102 = v222;
      }

      else
      {
        v130 = v196;
        v119(v196, v128, v71);
        v213(v197, v130, v71);
        v132 = *(v120 + 2);
        v131 = *(v120 + 3);
        if (v132 >= v131 >> 1)
        {
          v120 = sub_22F13E15C(v131 > 1, v132 + 1, 1, v120);
        }

        v102 = v222;
        (*v225)(v196, v71);
        *(v120 + 2) = v132 + 1;
        v119(&v120[v210 + v132 * v209], v197, v71);
      }

      v133 = v236;
      sub_22F740600();
      v134 = sub_22F73F880();
      v135 = v41;
      v136 = v232;
      (v232)(v133, v90);
      v229 = v120;
      if (v134)
      {
        (*v225)(v135, v71);
        (*v201)(v231, v102);
        v15 = v133;
        v104 = v202;
        v41 = v135;
        v93 = v193;
        v100 = v203;
        goto LABEL_32;
      }

      sub_22F740600();
      v137 = v190;
      v138 = v191;
      (*v185)(v190, v186, v191);
      v139 = v189;
      sub_22F73F810();
      (*v184)(v137, v138);
      v136(v133, v90);
      v140 = v195;
      if ((*v183)(v139, 1, v195) == 1)
      {
        v41 = v235;
        (*v225)(v235, v71);
        sub_22F120ADC(v139, &qword_27DAB40E0, &unk_22F779200);
        v102 = v222;
        (*v201)(v231, v222);
        v90 = v237;
        v15 = v133;
        v100 = v203;
        v104 = v202;
        v105 = v234;
        v93 = v193;
        goto LABEL_32;
      }

      (*v181)(v215, v139, v140);
      sub_22F740600();
      v142 = v223;
      v141 = v224;
      v218(v223, v221, v224);
      v143 = v187;
      sub_22F73F940();
      v217(v142, v141);
      v90 = v237;
      v136(v133, v237);
      v144 = v228;
      if ((v228)(v143, 1, v71) == 1)
      {
        v145 = v192;
        sub_22F73F060();
        v146 = v144(v143, 1, v71);
        v147 = v225;
        v93 = v193;
        if (v146 != 1)
        {
          sub_22F120ADC(v143, &qword_27DAB0920, &qword_22F770B20);
        }
      }

      else
      {
        v145 = v192;
        v226(v192, v143, v71);
        v147 = v225;
        v93 = v193;
      }

      v148 = v212;
      v213(v212, v145, v71);
      v149 = v211;
      sub_22F73F030();
      v204 = sub_22F2C3748(&qword_2810AC708, MEMORY[0x277CC9578]);
      v150 = sub_22F740DB0();
      v151 = *v147;
      while (1)
      {
        v151(v149, v71);
        if (v150)
        {
          v151(v148, v71);
          v151(v192, v71);
          (*v180)(v215, v195);
          v41 = v235;
          v151(v235, v71);
          goto LABEL_67;
        }

        v152 = v236;
        sub_22F740600();
        v153 = sub_22F73F950();
        v154 = v232;
        (v232)(v152, v90);
        if ((v153 & 1) == 0)
        {
          v213(v207, v148, v71);
          v155 = v229;
          v157 = *(v229 + 2);
          v156 = *(v229 + 3);
          if (v157 >= v156 >> 1)
          {
            v155 = sub_22F13E15C(v156 > 1, v157 + 1, 1, v229);
          }

          *(v155 + 2) = v157 + 1;
          v229 = v155;
          v226(&v155[v210 + v157 * v209], v207, v71);
        }

        v158 = v71;
        v159 = v236;
        sub_22F740600();
        v161 = v223;
        v160 = v224;
        v218(v223, v221, v224);
        v162 = v208;
        v148 = v212;
        sub_22F73F940();
        v217(v161, v160);
        v90 = v237;
        v154(v159, v237);
        v151(v148, v158);
        v71 = v158;
        if ((v228)(v162, 1, v158) == 1)
        {
          break;
        }

        v226(v148, v162, v158);
        v149 = v211;
        sub_22F73F030();
        v150 = sub_22F740DB0();
      }

      v151(v192, v158);
      (*v180)(v215, v195);
      v41 = v235;
      v151(v235, v158);
      sub_22F120ADC(v162, &qword_27DAB0920, &qword_22F770B20);
      goto LABEL_67;
    }

    sub_22F120ADC(v113, &qword_27DAB0920, &qword_22F770B20);
    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v116 = sub_22F740B90();
    __swift_project_value_buffer(v116, qword_2810B4CE0);
    v117 = sub_22F740B70();
    v118 = sub_22F7415F0();
    if (!os_log_type_enabled(v117, v118))
    {

LABEL_67:
      v102 = v222;
      (*v201)(v231, v222);
      goto LABEL_31;
    }

    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v238 = v107;
    *v106 = v182;
    sub_22F2C3748(&qword_27DAB31B8, MEMORY[0x277CC8990]);
    v108 = v222;
    v109 = sub_22F742010();
    v111 = sub_22F145F20(v109, v110, &v238);

    *(v106 + 4) = v111;
    _os_log_impl(&dword_22F0FC000, v117, v118, "Invalid birthday date for components: %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    v112 = v107;
    v41 = v235;
    MEMORY[0x2319033A0](v112, -1, -1);
    MEMORY[0x2319033A0](v106, -1, -1);

    v102 = v108;
    v90 = v237;
    (*v201)(v231, v102);
LABEL_31:
    v15 = v236;
    v100 = v203;
    v104 = v202;
    v105 = v234;
LABEL_32:
    if (++v103 == v100)
    {

      v101 = &OBJC_IVAR____TtC11PhotosGraph16SingleCollection_futureLookupResults;
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_80:
  swift_once();
LABEL_9:
  v72 = sub_22F740B90();
  __swift_project_value_buffer(v72, qword_2810B4CE0);
  v73 = v236;
  v74 = sub_22F740B70();
  v75 = sub_22F7415F0();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v238 = v77;
    *v76 = 136315138;
    v78 = [v73 localIdentifier];
    if (v78)
    {
      v79 = v78;
      v80 = sub_22F740E20();
      v82 = v81;
    }

    else
    {
      v82 = 0xE300000000000000;
      v80 = 7104878;
    }

    v179 = sub_22F145F20(v80, v82, &v238);

    *(v76 + 4) = v179;
    _os_log_impl(&dword_22F0FC000, v74, v75, "No birthday date components for personLocalIdentifier %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x2319033A0](v77, -1, -1);
    MEMORY[0x2319033A0](v76, -1, -1);
  }

  return 0;
}

uint64_t sub_22F2C3748(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22F2C37E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SongSourceEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F2C3840()
{
  v0 = *aSongsource_0;

  return v0;
}

uint64_t sub_22F2C3878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  v9[2] = a6;
  v9[3] = a7;
  v9[4] = a5;
  v9[5] = &v10;
  v9[6] = a1;
  v9[8] = a2;
  v9[9] = a3;
  v9[10] = a4;

  return sub_22F35F048(sub_22F2C3988, v9, a1);
}

uint64_t sub_22F2C38E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *a3;
  v17 = *(a4 + 16);
  result = sub_22F741680();
  if (v10)
  {
    return result & 1;
  }

  if (!__OFADD__(*a3, 1))
  {
    ++*a3;
    LOBYTE(result) = (*(a10 + 8))(a1, a6, a7, a8, a9);
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2C39D4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F6544(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_22F742000();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v12[2] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1400, &qword_22F771820);
      v7 = sub_22F741200();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_22F2C3B70(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_22F2C3B70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22F3F5F98(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22F2C4128((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[6];
        v14 += 6;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 4);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_22F13D970((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
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
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_22F2C4128((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (*(v31 + 16) >= v32)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_22F2C4128(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 6 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 6;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 6;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 6 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v6 - 2) < *(v13 - 2))
      {
        v21 = v6 - 6;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 6;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 6;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 6 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 4);
  }

  return 1;
}

char *sub_22F2C4354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("OrderedScoreRanker - primarySongUIDs", 36, 2u, 0, 1, qword_2810B4DD8, v33);
  v8 = (a3 - 1);
  if (a3 >= 1)
  {
    v9 = MEMORY[0x277D84F90];
    v34 = MEMORY[0x277D84F90];
    v10 = *(a1 + 16);
    if (v10)
    {
      v9 = sub_22F10B4B4(v10, 0);
      v11 = sub_22F11B390(v32, (v9 + 4), v10, a1);
      v8 = v32[1];
      v12 = v32[2];
      v4 = v32[3];
      v13 = v32[4];

      sub_22F0FF590();
      if (v11 != v10)
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = (a3 - 1);
      v5 = v3;
    }

    v32[0] = v9;
    v15 = v5;
    sub_22F2C39D4(v32);
    a1 = v5;
    if (v5)
    {
      goto LABEL_32;
    }

    v31 = a2;
    if (!v32[0][2])
    {

      v4 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v9 = v32[0][4];
    a3 = v32[0][5];

    swift_bridgeObjectRetain_n();

    v4 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = *(v4 + 2);
    v14 = *(v4 + 3);
    v13 = (v12 + 1);
    if (v12 < v14 >> 1)
    {
LABEL_10:
      *(v4 + 2) = v13;
      v16 = &v4[16 * v12];
      *(v16 + 4) = v9;
      *(v16 + 5) = a3;
      v34 = v4;
      sub_22F1248F8(v9, a3);

      a3 = v8;
LABEL_14:
      sub_22F741690();
      if (a1)
      {

        goto LABEL_27;
      }

      v17 = *(v31 + 16);
      if (v17 < a3)
      {
        a3 = *(v31 + 16);
      }

      if (!a3)
      {

        sub_22F7416A0();
        goto LABEL_27;
      }

      v18 = sub_22F10B4B4(v17, 0);
      v30 = sub_22F11B390(v32, (v18 + 4), v17, v31);
      v15 = v32[0];

      sub_22F0FF590();
      if (v30 == v17)
      {
        v32[0] = v18;
        v15 = 0;
        sub_22F2C39D4(v32);
        v19 = v32[0];
        if (v32[0][2] >= a3)
        {
          v32[0] = MEMORY[0x277D84F90];
          sub_22F146454(0, a3, 0);
          v20 = v32[0];
          v21 = v19 + 5;
          do
          {
            v22 = *(v21 - 1);
            v23 = *v21;
            v32[0] = v20;
            v25 = v20[2];
            v24 = v20[3];

            if (v25 >= v24 >> 1)
            {
              sub_22F146454((v24 > 1), v25 + 1, 1);
              v20 = v32[0];
            }

            v20[2] = v25 + 1;
            v26 = &v20[2 * v25];
            v26[4] = v22;
            v26[5] = v23;
            v21 += 3;
            --a3;
          }

          while (a3);

          sub_22F7416A0();
          sub_22F144A14(v20);
          v4 = v34;
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_32:
      for (i = a1; ; i = v15)
      {

        __break(1u);
      }
    }

LABEL_29:
    v4 = sub_22F13E1A8((v14 > 1), v13, 1, v4);
    goto LABEL_10;
  }

  sub_22F7416A0();
  if (!v3)
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_27:
  sub_22F1B2BBC(0);

  return v4;
}

uint64_t sub_22F2C47B0(void *a1, int64_t a2)
{
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("OrderedScoreRanker - secondarySongUIDs", 38, 2u, 0, 1, qword_2810B4DD8, v18);
  sub_22F741690();
  if (v2)
  {
    goto LABEL_4;
  }

  if (a2 < 1 || (v6 = a1[2]) == 0)
  {
    sub_22F7416A0();
    a1 = MEMORY[0x277D84F90];
LABEL_4:
    sub_22F1B2BBC(0);

    return a1;
  }

  if (v6 < a2)
  {
    a2 = a1[2];
  }

  v16 = sub_22F10B4B4(a1[2], 0);
  v19 = sub_22F11B390(&v17, (v16 + 4), v6, a1);
  v7 = v17;

  sub_22F0FF590();
  if (v19 == v6)
  {
    v17 = v16;
    v7 = 0;
    sub_22F2C39D4(&v17);
    v19 = 0;
    v8 = v17;
    if (v17[2] >= a2)
    {
      v17 = MEMORY[0x277D84F90];
      sub_22F146454(0, a2, 0);
      a1 = v17;
      v9 = v8 + 5;
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v17 = a1;
        v13 = a1[2];
        v12 = a1[3];

        if (v13 >= v12 >> 1)
        {
          sub_22F146454((v12 > 1), v13 + 1, 1);
          a1 = v17;
        }

        a1[2] = v13 + 1;
        v14 = &a1[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
        v9 += 3;
        --a2;
      }

      while (a2);

      v15 = v19;
      sub_22F7416A0();
      if (v15)
      {
      }

      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F2C4A4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F2C4AB4()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t CurationPlanner.__allocating_init(curationPlannerContext:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_22F740B80();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  *(v5 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_photoLibrary) = (*(v7 + 24))(v6, v7);
  sub_22F15C30C(a1, v5 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext);
  *(v5 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources) = MEMORY[0x277D84F90];
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

uint64_t CurationPlanner.init(curationPlannerContext:)(uint64_t *a1)
{
  sub_22F740B80();
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  *(v1 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_photoLibrary) = (*(v4 + 24))(v3, v4);
  sub_22F15C30C(a1, v1 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext);
  *(v1 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources) = MEMORY[0x277D84F90];
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t CurationPlanner.__allocating_init(for:graphManager:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = sub_22F2C4DB4;

  return sub_22F2C57F4(a1, a2);
}

uint64_t sub_22F2C4DB4(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t CurationPlanner.init(for:graphManager:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22F2C5E8C;

  return sub_22F2C57F4(a1, a2);
}

void sub_22F2C4F84(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2188, &qword_22F7789A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28[-1] - v5;
  static CurationPlanner.createSourceForItem(curationRecipe:curationPlannerContext:)(a1, v1 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext, &v29);
  if (v30)
  {
    sub_22F162700(&v29, v31);
    sub_22F15C30C(v31, &v29);
    v7 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources;
    swift_beginAccess();
    v8 = *(v1 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_22F13F944(0, v8[2] + 1, 1, v8);
      *(v1 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_22F13F944((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    sub_22F162700(&v29, &v8[5 * v11 + 4]);
    *(v1 + v7) = v8;
    swift_endAccess();
    v12 = v31;
    goto LABEL_11;
  }

  sub_22F120ADC(&v29, &qword_27DAB31D0, &qword_22F782770);
  sub_22F15C30C(a1, v31);
  sub_22F15C30C(a1, &v29);
  v13 = sub_22F740B70();
  v14 = sub_22F7415E0();
  if (!os_log_type_enabled(v13, v14))
  {

    __swift_destroy_boxed_opaque_existential_0(v31);
    v12 = &v29;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v12);
    return;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v28[0] = v16;
  *v15 = 136315394;
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v17 = sub_22F740740();
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_0(v31);
  v20 = sub_22F145F20(v17, v19, v28);

  *(v15 + 4) = v20;
  *(v15 + 12) = 2080;
  __swift_project_boxed_opaque_existential_1(&v29, v30);
  sub_22F740750();
  v21 = sub_22F740460();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v6, 1, v21) == 1)
  {
    sub_22F120ADC(v6, &qword_27DAB2188, &qword_22F7789A0);
    v23 = 0xE300000000000000;
    v24 = 7104878;
  }

  else
  {
    v24 = MEMORY[0x231900000]();
    v23 = v25;
    (*(v22 + 8))(v6, v21);
  }

  __swift_destroy_boxed_opaque_existential_0(&v29);
  v26 = sub_22F145F20(v24, v23, v28);

  *(v15 + 14) = v26;
  _os_log_impl(&dword_22F0FC000, v13, v14, "Unable to create source for item %s. Category: %s", v15, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x2319033A0](v16, -1, -1);
  MEMORY[0x2319033A0](v15, -1, -1);
}

uint64_t static CurationPlanner.createSourceForItem(curationRecipe:curationPlannerContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22F73FF30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB31D8, &qword_22F782778);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v25 - v13;
  v15 = sub_22F73FF50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB31E0, &qword_22F782780);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v14, 0, 1, v15);
    (*(v16 + 32))(v19, v14, v15);
    sub_22F73FF40();
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D3BFF8])
    {
      sub_22F15C30C(a1, v26);
      sub_22F15C30C(a2, v25);
      v22 = type metadata accessor for MagicSlotPeopleSource();
      swift_allocObject();
      v23 = MagicSlotPeopleSource.init(for:with:)(v26, v25);
      *(a3 + 24) = v22;
      *(a3 + 32) = &protocol witness table for CollectionSource;
      *a3 = v23;
      return (*(v16 + 8))(v19, v15);
    }

    else
    {
      result = sub_22F741D40();
      __break(1u);
    }
  }

  else
  {
    v21(v14, 1, 1, v15);
    result = sub_22F120ADC(v14, &qword_27DAB31D8, &qword_22F782778);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t CurationPlanner.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext));
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources);

  return v0;
}

uint64_t CurationPlanner.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext));
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F2C57F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22F73F690();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F2C58C4, 0, 0);
}

uint64_t sub_22F2C58C4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_22F740B80();
  v7 = [v4 photoLibrary];
  *(v5 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_photoLibrary) = v7;
  v8 = *(v3 + 16);
  v8(v1, v6, v2);
  if ([v4 isReady])
  {
    v9 = [*(v0 + 24) workingContext];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v26 = *(v0 + 16);
  v8(v10, v11, v12);
  v16 = [v14 photoLibrary];
  v17 = type metadata accessor for GraphCurationPlannerContext();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = GraphCurationPlannerContext.init(for:with:graphWorkingContext:)(v10, v16, v9);

  v21 = *(v13 + 8);
  v21(v11, v12);
  v22 = (v15 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext);
  v22[3] = v17;
  v22[4] = &protocol witness table for GraphCurationPlannerContext;
  *v22 = v20;
  v21(v26, v12);
  *(v15 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources) = MEMORY[0x277D84F90];

  v23 = *(v0 + 8);
  v24 = *(v0 + 32);

  return v23(v24);
}

uint64_t type metadata accessor for CurationPlanner()
{
  result = qword_2810ABA40;
  if (!qword_2810ABA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2C5B50()
{
  result = sub_22F740B90();
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

uint64_t dispatch thunk of CurationPlanner.__allocating_init(for:graphManager:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F2C5D6C;

  return v10(a1, a2);
}

uint64_t sub_22F2C5D6C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_22F2C5E90(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v6 = v5;
  v152 = a2;
  v151 = a1;
  isUniquelyReferenced_nonNull_native = sub_22F740AD0();
  v11 = *(isUniquelyReferenced_nonNull_native - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v14 = v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v15) = *(a3 + 3);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
LABEL_62:
    swift_once();
  }

  v16 = qword_2810A8E88;
  sub_22F740AC0();
  sub_22F740A90();
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v17 = v19;
  v19(v14, isUniquelyReferenced_nonNull_native);
  sub_22F741690();
  if (v6)
  {
    return;
  }

  v145 = v16;
  v143 = a4;
  v141 = v14;
  v147 = v18;
  v150 = 0;
  v146 = a5;
  v22 = sub_22F7416D0();
  v23 = v20;
  v24 = v21;
  if (v15)
  {
    v138 = v17;
    v139 = isUniquelyReferenced_nonNull_native;
    v148 = v20;
    v149 = v21;
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22F7727B0;
    v26 = MEMORY[0x277D837D0];
    *(v25 + 56) = MEMORY[0x277D837D0];
    v27 = sub_22F153470();
    *(v25 + 64) = v27;
    *(v25 + 32) = 1735290739;
    *(v25 + 40) = 0xE400000000000000;
    v137 = type metadata accessor for SongEntry();
    *(v25 + 96) = v137;
    v28 = sub_22F2C7660();
    v29 = v151;
    *(v25 + 72) = v151;
    *(v25 + 136) = v26;
    *(v25 + 144) = v27;
    v140 = v27;
    v136 = v28;
    *(v25 + 104) = v28;
    *(v25 + 112) = 0x43545565746164;
    *(v25 + 120) = 0xE700000000000000;
    v30 = v152;
    v31 = *(v152 + 16);
    if (v31)
    {
      v144 = v22;
      *&v156 = MEMORY[0x277D84F90];
      v32 = v29;
      sub_22F146454(0, v31, 0);
      v33 = v156;
      v34 = (v30 + 40);
      do
      {
        v36 = *(v34 - 1);
        v35 = *v34;
        *&v156 = v33;
        v38 = *(v33 + 16);
        v37 = *(v33 + 24);

        if (v38 >= v37 >> 1)
        {
          sub_22F146454((v37 > 1), v38 + 1, 1);
          v33 = v156;
        }

        *(v33 + 16) = v38 + 1;
        v39 = v33 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v35;
        v34 += 10;
        --v31;
      }

      while (v31);
      v22 = v144;
    }

    else
    {
      v41 = v29;
      v33 = MEMORY[0x277D84F90];
    }

    sub_22F25F004();
    *(v25 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    *(v25 + 184) = sub_22F2C76B8(&qword_2810A92D0);
    *(v25 + 152) = v33;
    v42 = sub_22F741560();
    v43 = v42;
    v44 = v161;
    v45 = v150;
    sub_22F2C7370(v42);
    if (v45)
    {

      return;
    }

    v72 = v22;

    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_22F770DF0;
    v74 = v140;
    *(v73 + 56) = MEMORY[0x277D837D0];
    *(v73 + 64) = v74;
    *(v73 + 32) = 1735290739;
    *(v73 + 40) = 0xE400000000000000;
    v75 = v136;
    *(v73 + 96) = v137;
    *(v73 + 104) = v75;
    *(v73 + 72) = v29;
    v76 = v29;
    v77 = sub_22F741560();
    swift_beginAccess();
    v78 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v79 = v77;

    v80 = sub_22F740DF0();

    v6 = [v78 initWithEntityName_];

    [v6 setPredicate_];
    v81 = *(v44 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    type metadata accessor for SongPlaybackInfoEntry();
    v128 = sub_22F7417B0();
    sub_22F7416A0();
    v24 = v149;
    v22 = v72;

    v46 = sub_22F1518C0(v128);

    v23 = v148;
    isUniquelyReferenced_nonNull_native = v139;
  }

  else
  {
    v40 = v150;
    sub_22F2C7370(0);
    if (v40)
    {

      return;
    }

    v138 = v17;
    v46 = MEMORY[0x277D84FA0];
  }

  v144 = v22;
  v149 = v24;
  v160 = v46;
  v15 = *(v152 + 16);
  v150 = 0;
  v148 = v23;
  v139 = isUniquelyReferenced_nonNull_native;
  if (!v15)
  {
    a5 = MEMORY[0x277D84F98];
LABEL_32:

    v161 = a5;
    v83 = sub_22F1534D0(v82);
    v84 = v83 + 56;
    v85 = 1 << *(v83 + 32);
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v87 = v86 & *(v83 + 56);
    v137 = (v85 + 63) >> 6;
    v142 = v83;

    v88 = v87;
    v11 = 0;
    v15 = 0;
    isUniquelyReferenced_nonNull_native = v149;
    v6 = v144;
    v14 = v147;
    a4 = v145;
    v140 = v84;
    while (1)
    {
      while (1)
      {
        if (v88)
        {
          v89 = v88;
          v61 = __OFADD__(v11++, 1);
          if (v61)
          {
            goto LABEL_64;
          }
        }

        else
        {
          do
          {
            v90 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v90 >= v137)
            {

              v126 = v150;
              sub_22F7416A0();
              if (v126)
              {
              }

              else
              {
                sub_22F741730();
                v127 = v141;
                sub_22F740AC0();
                sub_22F740A90();

                v138(v127, v139);
              }

              return;
            }

            v89 = *(v84 + 8 * v90);
            ++v15;
          }

          while (!v89);
          v15 = v90;
          v61 = __OFADD__(v11++, 1);
          if (v61)
          {
            goto LABEL_64;
          }
        }

        v88 = (v89 - 1) & v89;
        if (*(v161 + 16))
        {
          v91 = *(v142 + 48);
          v151 = (v89 - 1) & v89;
          v92 = (v91 + ((v15 << 10) | (16 * __clz(__rbit64(v89)))));
          v152 = v11;
          v93 = *v92;
          v94 = v92[1];

          a5 = sub_22F1229E8(v93, v94);
          v96 = v95;
          v11 = v152;

          v88 = v151;
          v84 = v140;
          if (v96)
          {
            break;
          }
        }
      }

      v97 = *(v161 + 56) + 80 * a5;
      v98 = *(v97 + 8);
      v129[1] = *v97;
      v99 = *(v97 + 16);
      v132 = *(v97 + 24);
      v100 = *(v97 + 40);
      v130 = *(v97 + 32);
      v131 = v100;
      v101 = *(v97 + 56);
      v129[2] = *(v97 + 48);
      v102 = *(v97 + 64);
      v133 = *(v97 + 72);
      v103 = *(v99 + 16);
      v136 = v101;
      v135 = v98;
      if (v103)
      {
        v129[0] = v15;
        *&v154[0] = MEMORY[0x277D84F90];

        v134 = v102;

        sub_22F146454(0, v103, 0);
        v104 = *&v154[0];
        v105 = 32;
        do
        {
          v106 = v99;
          v153 = *(v99 + v105);
          v107 = sub_22F742010();
          v109 = v108;
          *&v154[0] = v104;
          v111 = *(v104 + 16);
          v110 = *(v104 + 24);
          if (v111 >= v110 >> 1)
          {
            sub_22F146454((v110 > 1), v111 + 1, 1);
            v104 = *&v154[0];
          }

          *(v104 + 16) = v111 + 1;
          v112 = v104 + 16 * v111;
          *(v112 + 32) = v107;
          *(v112 + 40) = v109;
          v105 += 8;
          --v103;
          v99 = v106;
        }

        while (v103);

        v102 = v134;
        v15 = v129[0];
      }

      else
      {

        v104 = MEMORY[0x277D84F90];
      }

      *&v154[0] = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F2C76B8(&qword_2810A92E0);
      sub_22F740DA0();
      v134 = v113;

      *&v154[0] = v102;
      sub_22F740DA0();

      v114 = objc_opt_self();
      swift_beginAccess();

      v115 = sub_22F740DF0();

      v116 = v143;
      v117 = [v114 entityForName:v115 inManagedObjectContext:v143];

      if (!v117)
      {

        sub_22F162D98();
        swift_allocError();
        swift_willThrow();

        return;
      }

      v118 = [objc_allocWithZone(type metadata accessor for SongPlaybackInfoEntry()) initWithEntity:v117 insertIntoManagedObjectContext:v116];

      v119 = sub_22F740DF0();

      [v118 setDateUTC_];

      v120 = sub_22F740DF0();
      [v118 setHoursUTC_];

      v121 = sub_22F740DF0();
      [v118 setLastEndReason_];

      [v118 setPlayCount_];
      [v118 setSkipCount_];
      [v118 setPlayDurationInMilliseconds_];
      v122 = sub_22F740DF0();
      [v118 setDevices_];

      [v118 setIgnoreForRecommendations_];

      v123 = v118;
      sub_22F10C6A8(v154, v123);

      v124 = *(v142 + 16);
      v11 = v152;
      isUniquelyReferenced_nonNull_native = v149;
      a5 = v149;
      v125 = v150;
      sub_22F741680();
      v150 = v125;
      if (v125)
      {
        break;
      }

      v6 = v144;
      v14 = v147;
      a4 = v145;
      v84 = v140;
      v88 = v151;
    }

    return;
  }

  v14 = &v156;
  a4 = (v152 + 32);
  a5 = MEMORY[0x277D84F98];
  while (1)
  {
    v54 = a4[1];
    v156 = *a4;
    v157 = v54;
    v55 = a4[3];
    v158 = a4[2];
    *v159 = v55;
    *&v159[9] = *(a4 + 57);
    v11 = *(&v156 + 1);
    v56 = v156;
    sub_22F13A7E4(&v156, v154);
    sub_22F13A7E4(&v156, v154);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = a5;
    v57 = sub_22F1229E8(v56, v11);
    v59 = *(a5 + 16);
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v6 = v58;
    if (*(a5 + 24) >= v62)
    {
      break;
    }

    sub_22F1262D8(v62, isUniquelyReferenced_nonNull_native);
    v57 = sub_22F1229E8(v56, v11);
    if ((v6 & 1) != (v63 & 1))
    {
      goto LABEL_65;
    }

LABEL_25:
    if ((v6 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_18:
    a5 = v153;
    v47 = (*(v153 + 56) + 80 * v57);
    v154[0] = *v47;
    v48 = v47[1];
    v49 = v47[2];
    v50 = v47[3];
    *&v155[9] = *(v47 + 57);
    v154[2] = v49;
    *v155 = v50;
    v154[1] = v48;
    v52 = v158;
    v51 = *v159;
    v53 = v157;
    *(v47 + 57) = *&v159[9];
    v47[2] = v52;
    v47[3] = v51;
    v47[1] = v53;
    *v47 = v156;
    sub_22F2C760C(v154);
    sub_22F2C760C(&v156);
LABEL_19:
    a4 += 5;
    if (!--v15)
    {
      goto LABEL_32;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_25;
  }

  v71 = v57;
  sub_22F1348C8();
  v57 = v71;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_26:
  a5 = v153;
  *(v153 + 8 * (v57 >> 6) + 64) |= 1 << v57;
  v64 = (*(a5 + 48) + 16 * v57);
  *v64 = v56;
  v64[1] = v11;
  v65 = (*(a5 + 56) + 80 * v57);
  v66 = *&v159[9];
  v68 = v158;
  v67 = *v159;
  v65[1] = v157;
  v65[2] = v68;
  v65[3] = v67;
  *(v65 + 57) = v66;
  *v65 = v156;

  sub_22F2C760C(&v156);
  v69 = *(a5 + 16);
  v61 = __OFADD__(v69, 1);
  v70 = v69 + 1;
  if (!v61)
  {
    *(a5 + 16) = v70;
    goto LABEL_19;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_22F7420C0();
  __break(1u);
}

uint64_t MusicCache.readPlaybackInfo(forDateUTC:progressReporter:)()
{
  v2 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v4 = MEMORY[0x277D84F90];
  sub_22F7417A0();
  if (v1)
  {
  }

  return v4;
}

void sub_22F2C6FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  if (a2)
  {
    sub_22F25F004();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22F770DF0;
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_22F153470();
    *(v9 + 32) = 0x43545565746164;
    *(v9 + 40) = 0xE700000000000000;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 64) = v11;
    *(v9 + 72) = a1;
    *(v9 + 80) = a2;

    v12 = sub_22F741560();
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();
  v13 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v14 = sub_22F740DF0();

  v15 = [v13 initWithEntityName_];

  [v15 setPredicate_];
  v16 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for SongPlaybackInfoEntry();
  v17 = sub_22F7417B0();
  if (v5)
  {
  }

  else
  {
    v18 = v17;
    sub_22F7416A0();

    if (v18 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
    {
      v20 = 0;
      v36 = v18 & 0xC000000000000001;
      v21 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v36)
        {
          v22 = MEMORY[0x2319016F0](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v22 = *(v18 + 8 * v20 + 32);
        }

        v23 = v22;
        v24 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        SongPlaybackInfoEntry.playbackInfo()(&v35);
        if (v25)
        {

          goto LABEL_27;
        }

        v33 = *&v35.playCount;
        *v34 = v35.lastEndReason;
        *&v34[9] = *(&v35.lastEndReason._object + 1);
        dateUTC = v35.dateUTC;
        v32 = *&v35.hoursUTC._rawValue;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22F13E580(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = sub_22F13E580((v26 > 1), v27 + 1, 1, v21);
        }

        *(v21 + 2) = v27 + 1;
        v28 = &v21[80 * v27];
        *(v28 + 2) = dateUTC;
        *(v28 + 89) = *&v34[9];
        *(v28 + 4) = v33;
        *(v28 + 5) = *v34;
        *(v28 + 3) = v32;
        ++v20;
        if (v24 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_26:

    v29 = *a5;
    *a5 = v21;
LABEL_27:
  }
}

void sub_22F2C7370(uint64_t a1)
{
  sub_22F741690();
  if (!v2)
  {
    v4 = sub_22F7416B0();
    v6 = v5;
    swift_beginAccess();
    v7 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v8 = sub_22F740DF0();

    v9 = [v7 initWithEntityName_];

    [v9 setPredicate_];
    v10 = *(v1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    type metadata accessor for SongPlaybackInfoEntry();
    v11 = sub_22F7417B0();
    sub_22F7416A0();

    if (v11 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v18 = v4;
      v13 = v6;
      if (!i)
      {
        break;
      }

      v14 = 0;
      v6 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2319016F0](v14, v11);
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        v4 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        [v10 deleteObject_];
        if (v11 >> 62)
        {
          sub_22F741A00();
        }

        else
        {
          v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_22F741680();

        ++v14;
        if (v4 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_18:

    sub_22F7416A0();
  }
}

unint64_t sub_22F2C7660()
{
  result = qword_27DAB1E50;
  if (!qword_27DAB1E50)
  {
    type metadata accessor for SongEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1E50);
  }

  return result;
}

uint64_t sub_22F2C76B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22F2C780C(id a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v175 = &v158 - v15;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v176 = qword_2810B4E90;
  sub_22F1B560C("MusicCurator - extractMusicCurationFeaturesForMemory", 52, 2u, 0, 1, qword_2810B4E90, v181);
  v16 = [a1 photoLibrary];
  if (!v16)
  {
    sub_22F2C8DB0();
    swift_allocError();
    *v50 = 0;
    *(v50 + 8) = 3;
    swift_willThrow();
LABEL_69:
    sub_22F1B2BBC(0);

    return;
  }

  v17 = v16;
  v170 = v14;
  v171 = v10;
  v177 = a2;
  v173 = a3;
  v174 = v4;
  v18 = [v16 librarySpecificFetchOptions];
  [v18 setWantsIncrementalChangeDetails_];
  v19 = objc_opt_self();
  v178 = v18;
  v20 = [v19 fetchMomentsBackingMemory:a1 options:v18];
  v21 = [v20 fetchedObjects];

  if (!v21)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v51 = sub_22F740B90();
    __swift_project_value_buffer(v51, qword_2810B4D90);
    v52 = sub_22F740B70();
    v53 = sub_22F7415E0();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v178;
    if (v54)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_22F0FC000, v52, v53, "[MemoriesMusic] [FeatureExtraction] Extracted moments backing asset collection: NO", v56, 2u);
      MEMORY[0x2319033A0](v56, -1, -1);
    }

    sub_22F2C8DB0();
    swift_allocError();
    *v57 = a1;
    *(v57 + 8) = 0;
    swift_willThrow();
    v58 = a1;

    goto LABEL_69;
  }

  v161 = v9;
  sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
  v22 = v17;
  v23 = sub_22F741180();

  v24 = v22;
  v25 = [v22 librarySpecificFetchOptions];
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v26 = swift_allocObject();
  v164 = xmmword_22F771340;
  *(v26 + 16) = xmmword_22F771340;
  v27 = *MEMORY[0x277CD9AA8];
  *(v26 + 32) = sub_22F740E20();
  *(v26 + 40) = v28;
  v29 = sub_22F741160();

  [v25 setFetchPropertySets_];

  [v25 setWantsIncrementalChangeDetails_];
  v30 = objc_opt_self();
  v172 = v25;
  v31 = [v30 fetchAssetsInAssetCollection:a1 options:v25];
  v32 = [v31 fetchedObjects];

  if (!v32)
  {

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v59 = sub_22F740B90();
    __swift_project_value_buffer(v59, qword_2810B4D90);
    v60 = sub_22F740B70();
    v61 = sub_22F7415E0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_22F0FC000, v60, v61, "[MemoriesMusic] [FeatureExtraction] Extracted assets backing asset collection: NO", v62, 2u);
      MEMORY[0x2319033A0](v62, -1, -1);
    }

    sub_22F2C8DB0();
    swift_allocError();
    *v63 = a1;
    *(v63 + 8) = 1;
    swift_willThrow();
    v64 = a1;

    goto LABEL_69;
  }

  v179 = v23;
  sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v166 = sub_22F741180();

  v168 = a1;
  v33 = v177;
  v169 = v24;
  v162 = a4;
  if (v177)
  {
    v34 = v179 & 0xFFFFFFFFFFFFFF8;
    if (v179 >> 62)
    {
      v35 = sub_22F741A00();
    }

    else
    {
      v35 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v167 = v33;
    if (v35)
    {
      v36 = 0;
      v37 = v179 & 0xC000000000000001;
      v38 = MEMORY[0x277D84F90];
      do
      {
        v39 = v36;
        while (1)
        {
          if (v37)
          {
            v40 = MEMORY[0x2319016F0](v39, v179);
            v36 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v39 >= *(v34 + 16))
            {
              goto LABEL_91;
            }

            v40 = *(v179 + 8 * v39 + 32);
            v36 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }
          }

          v41 = v40;
          v42 = [v41 uuid];
          if (v42)
          {
            break;
          }

          ++v39;
          if (v36 == v35)
          {
            goto LABEL_39;
          }
        }

        v43 = v42;
        v44 = sub_22F740E20();
        v163 = v45;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_22F13E1A8(0, *(v38 + 2) + 1, 1, v38);
        }

        v47 = *(v38 + 2);
        v46 = *(v38 + 3);
        if (v47 >= v46 >> 1)
        {
          v38 = sub_22F13E1A8((v46 > 1), v47 + 1, 1, v38);
        }

        *(v38 + 2) = v47 + 1;
        v48 = &v38[16 * v47];
        v49 = v163;
        *(v48 + 4) = v44;
        *(v48 + 5) = v49;
      }

      while (v36 != v35);
    }

LABEL_39:
    v68 = objc_opt_self();
    v69 = sub_22F741160();

    v70 = v68;
    v71 = v167;
    v65 = [v70 momentNodesForArrayOfUUIDs:v69 inGraph:v167];

    v66 = v169;
    a1 = v168;
    v67 = v178;
  }

  else
  {
    v65 = 0;
    v66 = v24;
    v67 = v178;
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v72 = sub_22F740B90();
  v73 = __swift_project_value_buffer(v72, qword_2810B4D90);
  v74 = v65;
  v163 = v73;
  v75 = sub_22F740B70();
  v76 = sub_22F7415C0();
  v167 = v74;

  v77 = os_log_type_enabled(v75, v76);
  v78 = v177;
  v160 = v65;
  if (v77)
  {
    v79 = v65;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v180[0] = v81;
    *v80 = 136315138;
    if (v79)
    {
      v82 = 5457241;
    }

    else
    {
      v82 = 20302;
    }

    if (v79)
    {
      v83 = 0xE300000000000000;
    }

    else
    {
      v83 = 0xE200000000000000;
    }

    v84 = sub_22F145F20(v82, v83, v180);

    *(v80 + 4) = v84;
    _os_log_impl(&dword_22F0FC000, v75, v76, "[MemoriesMusic] [FeatureExtraction] Extracted moment nodes for moments: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    v85 = v81;
    v67 = v178;
    MEMORY[0x2319033A0](v85, -1, -1);
    MEMORY[0x2319033A0](v80, -1, -1);
  }

  sub_22F1B560C("MusicCurator - extractMusicCurationFeaturesForMemory - memoryNode", 65, 2u, 0, 1, v176, v182);
  if (!v78)
  {
    goto LABEL_57;
  }

  v35 = v78;
  v78 = [a1 graphMemoryIdentifier];
  if (!v78)
  {

    goto LABEL_57;
  }

  v86 = sub_22F740E20();
  v88 = v87;
  v89 = objc_opt_self();
  inited = swift_initStackObject();
  *(inited + 16) = v164;
  *(inited + 32) = v86;
  *(inited + 40) = v88;

  sub_22F1515F8(inited);
  swift_setDeallocating();
  sub_22F1DF3B0(inited + 32);
  v91 = sub_22F741410();

  v92 = [v89 memoryNodesWithUniqueIdentifiers:v91 inGraph:v35];

  v93 = [v92 anyNode];
  if (v93)
  {

    sub_22F14F6D8(MEMORY[0x277D84F90]);
    v94 = [v168 creationDate];
    if (v94)
    {
      v95 = v94;

      v96 = v175;
      sub_22F73F640();

      v97 = objc_allocWithZone(PGTriggeredMemory);
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      sub_22F73F090();
      sub_22F11FA28(&qword_2810A8EC8, &qword_2810A8ED0, 0x277CCABB0);
      v98 = v93;
      v99 = sub_22F740C80();

      v100 = sub_22F73F5B0();
      v101 = [v97 initWithMemoryNode:v98 validityIntervalByTriggerType:v99 creationDate:v100];

      (*(v171 + 8))(v96, v161);
      v78 = [objc_allocWithZone(PGEnrichedMemory) initWithTriggeredMemory_];

LABEL_55:
      a1 = v168;
LABEL_57:
      sub_22F1B2BBC(0);
      swift_unknownObjectRetain();
      v102 = sub_22F740B70();
      v103 = sub_22F7415C0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v180[0] = v105;
        *v104 = 136315138;
        if (v78)
        {
          v106 = 5457241;
        }

        else
        {
          v106 = 20302;
        }

        if (v78)
        {
          v107 = 0xE300000000000000;
        }

        else
        {
          v107 = 0xE200000000000000;
        }

        v108 = sub_22F145F20(v106, v107, v180);

        *(v104 + 4) = v108;
        _os_log_impl(&dword_22F0FC000, v102, v103, "[MemoriesMusic] [FeatureExtraction] Extracted memory node from memory: %s", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x2319033A0](v105, -1, -1);
        MEMORY[0x2319033A0](v104, -1, -1);
      }

      v109 = v174;
      v110 = v173;
      v111 = [a1 category];
      v112 = [a1 subcategory];
      sub_22F3EC34C(v111, v112, v78, v160, v177, v179, v166, v110);
      if (!v109)
      {

        sub_22F7416A0();

        swift_unknownObjectRelease();

        sub_22F1B2BBC(0);

        return;
      }

      swift_unknownObjectRelease();

      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_99;
  }

  v113 = [v168 photosGraphProperties];
  if (!v113)
  {
    goto LABEL_86;
  }

  v114 = v113;
  v115 = sub_22F740CA0();

  v116 = sub_22F740E20();
  if (!*(v115 + 16))
  {

    goto LABEL_85;
  }

  v118 = sub_22F1229E8(v116, v117);
  v120 = v119;

  if ((v120 & 1) == 0)
  {
LABEL_85:

LABEL_87:
    v138 = sub_22F740B70();
    v139 = sub_22F7415E0();
    v140 = os_log_type_enabled(v138, v139);
    v141 = v168;
    if (v140)
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&dword_22F0FC000, v138, v139, "[MemoriesMusic] [FeatureExtraction] Encoded features from Memory PhotosGraphProperties: NO", v142, 2u);
      MEMORY[0x2319033A0](v142, -1, -1);
    }

    sub_22F2C8DB0();
    swift_allocError();
    *v143 = v141;
    *(v143 + 8) = 2;
    swift_willThrow();
    v144 = v141;

LABEL_68:

    goto LABEL_69;
  }

  sub_22F13A100(*(v115 + 56) + 32 * v118, v180);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_86:

    goto LABEL_87;
  }

  v176 = v78;
  v121 = v183;
  v122 = *(v183 + 2);
  v123 = MEMORY[0x277D84F90];
  v175 = v183;
  if (v122)
  {
    v165 = v35;
    v180[0] = MEMORY[0x277D84F90];
    sub_22F741BD0();
    v124 = (v121 + 32);
    do
    {
      v125 = *v124++;

      sub_22F2143F8(v126);
      v127 = objc_allocWithZone(PGFeature);
      v128 = sub_22F740C80();

      [v127 initWithEncodedFeature_];

      sub_22F741BA0();
      v129 = *(v180[0] + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      --v122;
    }

    while (v122);
    v123 = v180[0];
    v35 = v165;
  }

  sub_22F151E24(v123);

  v130 = [v168 photosGraphProperties];
  if (!v130)
  {
    goto LABEL_94;
  }

  v131 = v130;
  v132 = sub_22F740CA0();

  v133 = sub_22F740E20();
  if (!*(v132 + 16))
  {
LABEL_92:

    goto LABEL_93;
  }

  v135 = sub_22F1229E8(v133, v134);
  v137 = v136;

  if ((v137 & 1) == 0)
  {
LABEL_93:

    goto LABEL_94;
  }

  sub_22F13A100(*(v132 + 56) + 32 * v135, v180);

  if (swift_dynamicCast())
  {
    LODWORD(v164) = v183;
    goto LABEL_95;
  }

LABEL_94:
  LODWORD(v164) = 0;
LABEL_95:
  v145 = v168;
  v159 = [v168 category];
  sub_22F120634(0, &qword_27DAB06F0, off_27887A8D0);
  sub_22F11FA28(&unk_27DAB1270, &qword_27DAB06F0, off_27887A8D0);
  v146 = v35;
  v147 = sub_22F741410();
  v148 = [objc_opt_self() featureNodeCollectionWithFeatures:v147 inGraph:v146];

  v165 = v146;
  sub_22F14F6D8(MEMORY[0x277D84F90]);
  v149 = [v145 creationDate];
  if (v149)
  {
    v150 = v149;

    v151 = v170;
    sub_22F73F640();

    v152 = objc_allocWithZone(PGTriggeredMemory);
    sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
    sub_22F73F090();
    sub_22F11FA28(&qword_2810A8EC8, &qword_2810A8ED0, 0x277CCABB0);
    v153 = sub_22F740C80();

    v154 = sub_22F73F5B0();
    LOBYTE(v157) = v164;
    v155 = v176;
    v156 = [v152 initWithMemoryCategory:v159 memoryCategorySubcategory:0 memoryMomentNodes:v167 memoryFeatureNodes:v148 validityIntervalByTriggerType:v153 creationDate:v154 uniqueMemoryIdentifier:v176 generatedWithFallbackRequirements:v157];

    (*(v171 + 8))(v151, v161);
    v78 = [objc_allocWithZone(PGEnrichedMemory) initWithTriggeredMemory_];

    goto LABEL_55;
  }

LABEL_99:

  __break(1u);
}

unint64_t sub_22F2C8DB0()
{
  result = qword_27DAB31E8;
  if (!qword_27DAB31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB31E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph12MusicCuratorC0cD32FeatureExtractionFromMemoryError33_F260D489A0EF6525E9EAF7AA47C80346LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_22F2C8E20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F2C8E68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22F2C8EAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22F2C8EE4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F6544(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22F2C8F80(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22F2C8F80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1400, &qword_22F771820);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F2C9188(v7, v8, a1, v4);
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
    return sub_22F2C9088(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F2C9088(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 40);
      v12 = *(v10 + 16);
      if (v11 >= v12)
      {
        if (v12 < v11 || ((result = *v10, *v10 == *(v10 + 24)) ? (v13 = *(v10 + 8) == *(v10 + 32)) : (v13 = 0), v13 || (result = sub_22F742040(), (result & 1) == 0)))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      v15 = *(v10 + 24);
      v14 = *(v10 + 32);
      v16 = *(v10 + 40);
      v17 = *(v10 + 16);
      *(v10 + 24) = *v10;
      *(v10 + 40) = v17;
      *v10 = v15;
      *(v10 + 8) = v14;
      *(v10 + 16) = v16;
      v10 -= 24;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F2C9188(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v104 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_113:
    v104 = *v104;
    if (!v104)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_115;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = *v6 + 24 * v8;
      v13 = *(v12 + 16);
      v14 = *v6 + 24 * v10;
      v15 = *(v14 + 16);
      if (v13 >= v15)
      {
        if (v15 < v13 || ((result = *v14, *v14 == *v12) ? (v17 = *(v14 + 8) == *(v12 + 8)) : (v17 = 0), v17))
        {
          v16 = 0;
        }

        else
        {
          result = sub_22F742040();
          v16 = result;
        }
      }

      else
      {
        v16 = 1;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v18 = v11 + 24 * v10 + 32;
        do
        {
          v19 = *(v18 + 32);
          v20 = *(v18 + 8);
          if (v19 < v20)
          {
            if ((v16 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else if (v20 < v19 || ((result = *(v18 - 8), result == *(v18 + 16)) ? (v21 = *v18 == *(v18 + 24)) : (v21 = 0), v21))
          {
            if (v16)
            {
              goto LABEL_30;
            }
          }

          else
          {
            result = sub_22F742040();
            if ((v16 ^ result))
            {
              goto LABEL_29;
            }
          }

          ++v8;
          v18 += 24;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_29:
      if (v16)
      {
LABEL_30:
        if (v8 < v10)
        {
          goto LABEL_144;
        }

        if (v10 < v8)
        {
          v22 = 24 * v8 - 8;
          v23 = 24 * v10;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v26 = *v6;
              if (!*v6)
              {
                goto LABEL_148;
              }

              v27 = (v26 + v23);
              v28 = (v26 + v22);
              v29 = *v27;
              v30 = v27[1];
              v31 = *(v27 + 4);
              v32 = *v28;
              *v27 = *(v28 - 1);
              v27[2] = v32;
              *(v28 - 2) = v29;
              *(v28 - 1) = v30;
              *v28 = v31;
            }

            ++v25;
            v22 -= 24;
            v23 += 24;
          }

          while (v25 < v24);
        }
      }
    }

LABEL_37:
    v33 = v6[1];
    if (v8 < v33)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_141;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_62:
    if (v8 < v10)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v48 = *(v9 + 2);
    v47 = *(v9 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_22F13D970((v47 > 1), v48 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v49;
    v50 = &v9[16 * v48];
    *(v50 + 4) = v10;
    *(v50 + 5) = v8;
    v51 = *v104;
    if (!*v104)
    {
      goto LABEL_150;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v9 + 4);
          v54 = *(v9 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_82:
          if (v56)
          {
            goto LABEL_128;
          }

          v69 = &v9[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_131;
          }

          v75 = &v9[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_135;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v79 = &v9[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_96:
        if (v74)
        {
          goto LABEL_130;
        }

        v82 = &v9[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_133;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_103:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
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
          goto LABEL_143;
        }

        if (!*v6)
        {
          goto LABEL_147;
        }

        v91 = *&v9[16 * v90 + 32];
        v92 = *&v9[16 * v52 + 40];
        sub_22F2C97E4((*v6 + 24 * v91), (*v6 + 24 * *&v9[16 * v52 + 32]), *v6 + 24 * v92, v51);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v90 >= *(v9 + 2))
        {
          goto LABEL_125;
        }

        v93 = &v9[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_22F3F5F0C(v52);
        v49 = *(v9 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v9[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_126;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_127;
      }

      v64 = &v9[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_129;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_132;
      }

      if (v68 >= v60)
      {
        v86 = &v9[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_136;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_113;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_142;
  }

  v102 = v5;
  if (v10 + a4 >= v33)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    result = sub_22F3F5F98(v9);
    v9 = result;
LABEL_115:
    v94 = v9 + 16;
    v95 = *(v9 + 2);
    if (v95 >= 2)
    {
      while (1)
      {
        v96 = *v6;
        if (!*v6)
        {
          goto LABEL_149;
        }

        v97 = &v9[16 * v95];
        v6 = *v97;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_22F2C97E4((v96 + 24 * *v97), (v96 + 24 * *v98), v96 + 24 * v99, v104);
        if (v5)
        {
        }

        if (v99 < v6)
        {
          goto LABEL_137;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_138;
        }

        *v97 = v6;
        *(v97 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_139;
        }

        v95 = *v94 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        v6 = a3;
        if (v95 <= 1)
        {
        }
      }
    }
  }

  if (v8 == v5)
  {
LABEL_61:
    v5 = v102;
    goto LABEL_62;
  }

  v34 = *v6;
  v35 = *v6 + 24 * v8 - 24;
  v101 = v10;
  v36 = v10 - v8;
LABEL_48:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = *(v38 + 40);
    v40 = *(v38 + 16);
    if (v39 >= v40)
    {
      if (v40 < v39 || ((result = *v38, *v38 == *(v38 + 24)) ? (v41 = *(v38 + 8) == *(v38 + 32)) : (v41 = 0), v41 || (result = sub_22F742040(), (result & 1) == 0)))
      {
LABEL_47:
        ++v8;
        v35 += 24;
        --v36;
        if (v8 != v5)
        {
          goto LABEL_48;
        }

        v8 = v5;
        v6 = a3;
        v10 = v101;
        goto LABEL_61;
      }
    }

    if (!v34)
    {
      break;
    }

    v43 = *(v38 + 24);
    v42 = *(v38 + 32);
    v44 = *(v38 + 40);
    v45 = *(v38 + 16);
    *(v38 + 24) = *v38;
    *(v38 + 40) = v45;
    *v38 = v43;
    *(v38 + 8) = v42;
    *(v38 + 16) = v44;
    v38 -= 24;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_47;
    }
  }

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
  return result;
}

uint64_t sub_22F2C97E4(float *__src, float *__dst, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    v22 = 6 * v11;
    if (a4 != __dst || &__dst[v22] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
      v5 = a3;
    }

    v14 = &v4[v22];
    if (v10 < 24 || v6 <= v7)
    {
      v34 = v6;
    }

    else
    {
      v39 = v4;
LABEL_28:
      v24 = 0;
      v25 = v14;
      v38 = v6 - 6;
      do
      {
        v14 = &v25[v24];
        v26 = (v5 + v24);
        v27 = v5 + v24 - 24;
        v28 = *&v25[v24 - 8];
        v29 = *(v6 - 2);
        if (v28 < v29 || v29 >= v28 && (*(v6 - 3) == *(v14 - 3) ? (v30 = *(v6 - 2) == *(v14 - 2)) : (v30 = 0), !v30 && (v31 = v5, v32 = sub_22F742040(), v5 = v31, v4 = v39, (v32 & 1) != 0)))
        {
          v34 = (v6 - 6);
          if (v26 != v6)
          {
            v35 = *v38;
            *(v27 + 16) = *(v6 - 1);
            *v27 = v35;
          }

          if (v14 <= v4 || (v5 = v27, v6 -= 6, v38 <= v7))
          {
            v14 = &v25[v24];
            goto LABEL_47;
          }

          goto LABEL_28;
        }

        if (v26 != v14)
        {
          v33 = *(v14 - 24);
          *(v27 + 16) = *(v14 - 1);
          *v27 = v33;
        }

        v24 -= 24;
        v14 = &v25[v24];
      }

      while (&v25[v24] > v4);
      v34 = v6;
    }
  }

  else
  {
    v12 = 6 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12 * 4);
      v5 = a3;
    }

    v14 = &v4[v12];
    if (v8 >= 24 && v6 < v5)
    {
      while (1)
      {
        v15 = v6[4];
        v16 = v4[4];
        if (v15 < v16)
        {
          break;
        }

        if (v16 >= v15)
        {
          v19 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
          if (!v19)
          {
            v20 = v5;
            v21 = sub_22F742040();
            v5 = v20;
            if (v21)
            {
              break;
            }
          }
        }

        v17 = v4;
        v19 = v7 == v4;
        v4 += 6;
        if (!v19)
        {
          goto LABEL_9;
        }

LABEL_10:
        v7 += 6;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_44;
        }
      }

      v17 = v6;
      v19 = v7 == v6;
      v6 += 6;
      if (v19)
      {
        goto LABEL_10;
      }

LABEL_9:
      v18 = *v17;
      *(v7 + 2) = *(v17 + 2);
      *v7 = v18;
      goto LABEL_10;
    }

LABEL_44:
    v34 = v7;
  }

LABEL_47:
  v36 = 6 * ((v14 - v4) / 24);
  if (v34 != v4 || v34 >= &v4[v36])
  {
    memmove(v34, v4, v36 * 4);
  }

  return 1;
}

uint64_t sub_22F2C9ACC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_22F10B4B4(*(a1 + 16), 0);
    v4 = sub_22F11B390(&v25, (v3 + 4), v2, a1);

    sub_22F0FF590();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v25 = v3;
  v5 = 0;
  sub_22F2C8EE4(&v25);
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v25;
  v10 = v8 & *(a1 + 64);
  v11 = (v7 + 63) >> 6;
  v12 = 0.0;
  if (v10)
  {
    while (1)
    {
      v13 = v6;
LABEL_13:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v12 + *(*(a1 + 56) + ((v13 << 8) | (4 * v14)));
      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);

      __break(1u);
      return result;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(a1 + 64 + 8 * v13);
    ++v6;
    if (v10)
    {
      v6 = v13;
      goto LABEL_13;
    }
  }

  v15 = 0.0;
  sub_22F39251C(0.0, 1.0);
  v17 = v9[2];
  if (v17)
  {
    v18 = 0;
    v5 = 0;
    v19 = 0;
    v20 = v12 * v16;
    v21 = (v9 + 6);
    while (v18 < v9[2])
    {
      if (v15 <= v20)
      {
        ++v18;
        v22 = *v21;
        v19 = *(v21 - 2);
        v23 = *(v21 - 1);

        v15 = v15 + v22;
        v21 += 6;
        v5 = v23;
        if (v17 != v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v19 = 0;
LABEL_22:

  return v19;
}

uint64_t sub_22F2C9CF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5, unint64_t a6)
{
  v7 = v6;
  v42 = a6;
  v38 = a2;
  v12 = sub_22F73FC60();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9AB0 != -1)
  {
LABEL_41:
    swift_once();
  }

  sub_22F1B560C("RandomizedScoreRanker - primarySongUIDs", 39, 2u, 0, 1, qword_2810B4DD8, v44);
  if (*(a1 + 16) >= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = *(a1 + 16);
  }

  if (v17 < 1)
  {
    sub_22F7416A0();
    if (v7)
    {
LABEL_35:
      sub_22F1B2BBC(0);
    }

    else
    {
      sub_22F1B2BBC(0);

      return MEMORY[0x277D84F90];
    }
  }

  v18 = sub_22F1D226C(a4, a5);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v19 = __OFSUB__(0, v18);
    result = -v18;
    if (!v19)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_9:
  v36 = v13;
  v37 = v12;
  v41 = v7;
  sub_22F73FC50();

  v40 = 0;
  v13 = 0;
  v43 = MEMORY[0x277D84F90];
  v12 = qword_2810B4D90;
  do
  {
    while (1)
    {
      if (v13 >= v17)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_40;
      }

      v21 = sub_22F2C9ACC(a1);
      if (!v22)
      {
        break;
      }

      v24 = v22;
      v39 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_22F13E1A8(0, *(v43 + 2) + 1, 1, v43);
      }

      a3 = *(v43 + 2);
      v25 = *(v43 + 3);
      v26 = v39;
      if (a3 >= v25 >> 1)
      {
        v43 = sub_22F13E1A8((v25 > 1), a3 + 1, 1, v43);
        v26 = v39;
      }

      v27 = v43;
      *(v43 + 2) = a3 + 1;
      v28 = &v27[16 * a3];
      *(v28 + 4) = v26;
      *(v28 + 5) = v24;
      if ((v40 & 1) == 0)
      {

        a1 = v38;

        v26 = v39;
      }

      v29 = sub_22F1229E8(v26, v24);
      if (v30)
      {
        a3 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1350D0();
          a1 = v45;
        }

        v32 = *(*(a1 + 48) + 16 * a3 + 8);

        sub_22F3B9E10(a3, a1);
      }

      v33 = v41;
      a4 = v42;
      sub_22F741680();
      a5 = v33;
      if (v33)
      {
        (*(v36 + 8))(v16, v37);

        goto LABEL_33;
      }

      v41 = 0;
      v40 = 1;
      ++v13;
      if (v7 == v17)
      {
        goto LABEL_31;
      }
    }

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D90);
    a5 = sub_22F740B70();
    a4 = sub_22F7415E0();
    if (os_log_type_enabled(a5, a4))
    {
      a3 = swift_slowAlloc();
      *a3 = 0;
      _os_log_impl(&dword_22F0FC000, a5, a4, "[MemoriesMusic] (FlexMusicCurator) Failed to identify weighted random song selection during best song selection.", a3, 2u);
      MEMORY[0x2319033A0](a3, -1, -1);
    }

    ++v13;
  }

  while (v7 != v17);
LABEL_31:

  v34 = v41;
  sub_22F7416A0();
  if (v34)
  {
    (*(v36 + 8))(v16, v37);
LABEL_33:

    goto LABEL_35;
  }

  (*(v36 + 8))(v16, v37);
  sub_22F1B2BBC(0);

  return v43;
}

char *sub_22F2CA1A4(uint64_t a1, char *a2, uint64_t a3, NSObject *a4, NSObject *a5)
{
  v6 = v5;
  v36 = a5;
  v11 = sub_22F73FC60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v37 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9AB0 != -1)
  {
LABEL_39:
    swift_once();
  }

  sub_22F1B560C("RandomizedScoreRanker - secondarySongUIDs", 41, 2u, 0, 1, qword_2810B4DD8, v38);
  v15 = *(a1 + 16);
  if (v15 >= a2)
  {
    v15 = a2;
  }

  v35 = v15;
  if (v15 < 1)
  {
    sub_22F7416A0();
    if (v6)
    {
LABEL_34:
      sub_22F1B2BBC(0);
    }

    else
    {
      sub_22F1B2BBC(0);

      return MEMORY[0x277D84F90];
    }

    return a2;
  }

  v16 = sub_22F1D226C(a3, a4);
  if ((v16 & 0x8000000000000000) == 0)
  {
LABEL_8:
    v33 = v12;
    v34 = v11;
    sub_22F73FC50();
    v12 = a1;

    v19 = 0;
    a2 = MEMORY[0x277D84F90];
    v20 = v35;
    do
    {
      if (v19 >= v20)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      a1 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_38;
      }

      v21 = sub_22F2C9ACC(v12);
      if (v22)
      {
        v23 = v21;
        a3 = v22;

        v24 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_22F13E1A8(0, *(a2 + 2) + 1, 1, a2);
        }

        v26 = *(a2 + 2);
        v25 = *(a2 + 3);
        v11 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          a2 = sub_22F13E1A8((v25 > 1), v26 + 1, 1, a2);
        }

        *(a2 + 2) = v11;
        v27 = &a2[16 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = a3;
        v28 = sub_22F1229E8(v23, a3);
        if (v29)
        {
          v11 = v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v12;
          v6 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F1350D0();
            v12 = v39;
          }

          v31 = *(*(v12 + 48) + 16 * v11 + 8);

          sub_22F3B9E10(v11, v12);
        }

        else
        {

          v6 = v24;
        }

        v20 = v35;
        a4 = v36;
        sub_22F741680();
        if (v6)
        {
          (*(v33 + 8))(v37, v34);

LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
        if (qword_2810A9460 != -1)
        {
          swift_once();
        }

        v32 = sub_22F740B90();
        __swift_project_value_buffer(v32, qword_2810B4D90);
        a4 = sub_22F740B70();
        a3 = sub_22F7415E0();
        if (os_log_type_enabled(a4, a3))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_22F0FC000, a4, a3, "[MemoriesMusic] (FlexMusicCurator) Failed to identify weighted random during secondary song selection.", v11, 2u);
          MEMORY[0x2319033A0](v11, -1, -1);
        }
      }

      ++v19;
    }

    while (a1 != v20);

    sub_22F7416A0();
    if (v6)
    {
      (*(v33 + 8))(v37, v34);
      goto LABEL_33;
    }

    (*(v33 + 8))(v37, v34);
    sub_22F1B2BBC(0);

    return a2;
  }

  v17 = __OFSUB__(0, v16);
  result = -v16;
  if (!v17)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static MusicKitClient.FetchOptions.all(musicKitSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0x101010101010101;
  *(a3 + 16) = 0x101010101010101;
  *a3 = 0x101010101010101;
  *(a3 + 24) = xmmword_22F782930;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
}

uint64_t static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x10101010101;
  *(a3 + 8) = 0;
  *(a3 + 9) = 16843009;
  *(a3 + 13) = 256;
  *(a3 + 15) = 1;
  *(a3 + 16) = 0;
  *(a3 + 19) = 0;
  *(a3 + 23) = 1;
  *(a3 + 24) = xmmword_22F782940;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
}

uint64_t static MusicKitClient.FetchOptions.nonPersonalizedMemoriesCuration(musicKitSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x10101010101;
  *(a3 + 8) = 0;
  *(a3 + 9) = 16843009;
  *(a3 + 13) = 256;
  *(a3 + 15) = 1;
  *(a3 + 16) = xmmword_22F782950;
  *(a3 + 32) = 9;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
}

uint64_t static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x101000100010101;
  *(a3 + 8) = 1;
  *(a3 + 10) = 0;
  *(a3 + 11) = 0x101010101010101;
  *(a3 + 19) = 257;
  *(a3 + 23) = 0;
  *(a3 + 24) = xmmword_22F782960;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
}

uint64_t static MusicKitClient.FetchOptions.augmentedCurationAndDisplay(musicKitSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x101010101010101;
  *(a3 + 8) = 1;
  *(a3 + 10) = 0x101010101010101;
  *(a3 + 16) = 0x101010101010101;
  *(a3 + 24) = xmmword_22F782960;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
}

uint64_t static MusicKitClient.FetchOptions.identity(musicKitSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 257;
  *(a3 + 2) = 1;
  *(a3 + 11) = 0;
  *(a3 + 3) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = xmmword_22F782960;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
}

uint64_t sub_22F2CA7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F2CA810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s12FetchOptionsV26FlexMLAnalysisFetchOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s12FetchOptionsV26FlexMLAnalysisFetchOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s12FetchOptionsV25AudioAnalysisFetchOptionsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s12FetchOptionsV25AudioAnalysisFetchOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t static MusicForYouCacher.cacheMusic(forMomentsInPhotoLibrary:forceCaching:progressReporter:completionHandler:)(void *a1, int a2, void *a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v70 = a4;
  LODWORD(v67) = a2;
  v8 = sub_22F740C00();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v18 = sub_22F7416E0();
  v20 = v19;
  v71 = v21;
  v69 = v22;
  v23 = sub_22F1A26E0(a1);
  v63 = v11;
  v61 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v13;
  v64 = a3;
  v24 = v68;
  v65 = a5;
  v66 = v18;
  v25 = v20;
  v26 = v23;
  v27 = objc_allocWithZone(type metadata accessor for MusicBag());
  v28 = v26;
  v29 = sub_22F1ED5B0(v26);

  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEB00000000756F59, v17);
  v30 = sub_22F2CCB40(v17, v29, v66);
  v60 = v29;
  v59 = v17;
  v31 = v25;
  if (((v30 | v67) & 1) == 0)
  {
    sub_22F7416A0();
    v34 = v66;
    v70(1, 0);

LABEL_6:
    v56 = v59;
    return sub_22F120ADC(v56, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v32 = v28;
  sub_22F2CD024(v28, v60, v25);
  v34 = v66;
  v35 = v65;
  if (!*(v33 + 16))
  {

    sub_22F7416A0();
    v70(1, 0);

    goto LABEL_6;
  }

  v36 = v63;
  v37 = v33;
  sub_22F740BD0();

  v67 = v37;
  v63 = sub_22F22FB24(v36, v37);
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEB00000000756F59, v72);
  v39 = v61;
  sub_22F13BA9C(v59, v61, &qword_27DAB1DA0, &unk_22F7771B0);
  v40 = v62[80];
  v62 = v31;
  v41 = (v40 + 24) & ~v40;
  v58 = (v14 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = v32;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v24;
  sub_22F1207AC(v39, v46 + v41, &qword_27DAB1DA0, &unk_22F7771B0);
  v47 = v57;
  *(v46 + v58) = v57;
  *(v46 + v42) = v67;
  v49 = v69;
  v48 = v70;
  *(v46 + v43) = v69;
  *(v46 + v44) = v63;
  v50 = v64;
  *(v46 + v45) = v64;
  v51 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v51 = v48;
  v51[1] = v35;
  v52 = v47;
  v53 = v49;

  v54 = v50;

  v55 = v71;
  sub_22F229248(v72, v71, sub_22F2CD8FC, v46);

  v74[0] = v72[0];
  v74[1] = v72[1];
  v74[2] = v72[2];
  v75 = v73;
  sub_22F1D210C(v74);
  v56 = v59;
  return sub_22F120ADC(v56, &qword_27DAB1DA0, &unk_22F7771B0);
}

void sub_22F2CB144(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void *), uint64_t a11)
{
  object = a1;
  v163 = a8;
  countAndFlagsBits = a7;
  v160 = a6;
  v168 = a5;
  v172 = a4;
  LODWORD(v167) = a2;
  v165 = a11;
  v166 = a10;
  v161 = a9;
  v11 = type metadata accessor for Song();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F740AD0();
  v170 = *(v16 - 8);
  v171 = v16;
  v17 = *(v170 + 8);
  MEMORY[0x28223BE20](v16);
  v169 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v150 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v164 = (&v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v31 = &v150 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v150 - v33;
  v35 = type metadata accessor for CacherStatus(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  if (v167)
  {
    sub_22F13BA9C(v172, v22, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v36 + 48))(v22, 1, v35) == 1)
    {
      sub_22F120ADC(v22, &qword_27DAB1DA0, &unk_22F7771B0);
      v42 = sub_22F73F690();
      v43 = v164;
      (*(*(v42 - 8) + 56))(v164, 1, 1, v42);
    }

    else
    {
      v43 = v164;
      sub_22F13BA9C(&v22[*(v35 + 20)], v164, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2CE854(v22, type metadata accessor for CacherStatus);
    }

    v45 = v169;
    v46 = *(v35 + 24);
    sub_22F73F680();
    v47 = sub_22F73F690();
    (*(*(v47 - 8) + 56))(&v39[v46], 0, 1, v47);
    *v39 = xmmword_22F782A30;
    sub_22F1207AC(v43, &v39[*(v35 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    v49 = v170;
    v48 = v171;
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v50 = *(v49 + 1);
    v51 = v50(v45, v48);
    v52 = *(v168 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v51);
    *(&v150 - 4) = 0x726F46636973756DLL;
    *(&v150 - 3) = 0xEB00000000756F59;
    *(&v150 - 2) = v53;
    *(&v150 - 1) = v39;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v50(v45, v48);
    sub_22F7416A0();
    v166(0, object);
    v71 = v39;
    goto LABEL_91;
  }

  v158 = (&v150 - v41);
  sub_22F73F680();
  v44 = sub_22F73F690();
  v167 = *(*(v44 - 8) + 56);
  v167(v34, 0, 1, v44);
  sub_22F13BA9C(v172, v25, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v36 + 48))(v25, 1, v35) == 1)
  {
    sub_22F120ADC(v25, &qword_27DAB1DA0, &unk_22F7771B0);
    v167(v31, 1, 1, v44);
  }

  else
  {
    sub_22F13BA9C(&v25[*(v35 + 24)], v31, &qword_27DAB0920, &qword_22F770B20);
    sub_22F2CE854(v25, type metadata accessor for CacherStatus);
  }

  v54 = v158;
  v155 = xmmword_22F782A30;
  *v158 = xmmword_22F782A30;
  sub_22F1207AC(v34, v54 + *(v35 + 20), &qword_27DAB0920, &qword_22F770B20);
  sub_22F1207AC(v31, v54 + *(v35 + 24), &qword_27DAB0920, &qword_22F770B20);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  v55 = qword_2810A8E88;
  v56 = v169;
  sub_22F740AC0();
  v167 = v55;
  sub_22F740A90();
  v57 = v170 + 8;
  v164 = *(v170 + 1);
  v58 = (v164)(v56, v171);
  v59 = v168;
  v60 = *(v168 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v58);
  *(&v150 - 4) = 0x726F46636973756DLL;
  *(&v150 - 3) = 0xEB00000000756F59;
  *(&v150 - 2) = v59;
  *(&v150 - 1) = v54;
  sub_22F7417A0();
  v172 = 0;
  v154 = v60;
  sub_22F741730();
  sub_22F740AC0();
  sub_22F740A90();
  v170 = v57;
  (v164)(v56, v171);
  v63 = v160;
  v180 = v160;
  v64 = object[2];

  if (v64)
  {
    v153 = sub_22F7416B0();
    v151 = v65;
    v66 = MEMORY[0x277D84F90];
    if (v64 != 1)
    {
      *v175 = MEMORY[0x277D84F90];
      sub_22F146A6C(0, v64 - 1, 0);
      v67 = *v175;
      v68 = *(*v175 + 16);
      for (i = 1; i != v64; ++i)
      {
        *v175 = v67;
        v70 = *(v67 + 24);
        if (v68 >= v70 >> 1)
        {
          sub_22F146A6C((v70 > 1), v68 + 1, 1);
          v67 = *v175;
        }

        *(v67 + 16) = v68 + 1;
        *(v67 + 8 * v68++ + 32) = i / v64;
      }

      v66 = MEMORY[0x277D84F90];
    }

    v73 = sub_22F7416C0();

    v177[0] = object;
    v177[1] = 0;
    v177[2] = v73;
    v177[3] = 0;
    LOBYTE(v177[4]) = 0;
    sub_22F1D2178(object, 0);
    sub_22F227010(v175);
    v75 = *&v175[8];
    if (*&v175[8])
    {
      v76 = *v175;
      v77 = *&v175[24];
      v78 = *&v175[32];
      v79 = *&v175[40];
      *&v74 = 134218498;
      v152 = v74;
      while (1)
      {
        v156 = v78;
        v157 = v76;
        v80 = *(v78 + 16);
        v160 = v79;
        if (v80)
        {
          object = v77;
          v179[0] = v66;
          sub_22F146514(0, v80, 0);
          v66 = v179[0];
          v81 = (v78 + 32);
          do
          {
            memcpy(v175, v81, sizeof(v175));
            memcpy(v174, v81, sizeof(v174));
            sub_22F18C4EC(v175, &v173);
            Song.init(_:)(v174);
            v179[0] = v66;
            v83 = *(v66 + 16);
            v82 = *(v66 + 24);
            if (v83 >= v82 >> 1)
            {
              sub_22F146514(v82 > 1, v83 + 1, 1);
              v66 = v179[0];
            }

            *(v66 + 16) = v83 + 1;
            sub_22F294B10(v15, v66 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v83, type metadata accessor for Song);
            v81 += 296;
            --v80;
          }

          while (v80);
          v84 = v171;
          v79 = v160;
        }

        else
        {
          v84 = v171;
        }

        v85 = *(v163 + 16);
        sub_22F1E3F74(v174);
        memcpy(v175, v174, 0x121uLL);
        v86 = sub_22F1EDAB8(v175) == 1;
        v87 = v157;
        if (v86)
        {
          GEOLocationCoordinate2DMake(v175);

          memcpy(&v173, v174, 0x121uLL);
          v172 = *GEOLocationCoordinate2DMake(&v173);
          v176 = v172;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
          swift_willThrowTypedImpl();

          goto LABEL_23;
        }

        GEOLocationCoordinate2DMake(v175);
        memcpy(&v173, v174, 0x121uLL);
        v88 = GEOLocationCoordinate2DMake(&v173);
        memcpy(v178, v88, 0x120uLL);
        v89._countAndFlagsBits = v87;
        v89._object = v75;
        v90 = MusicBagContents.personalMixName(for:)(v89);
        countAndFlagsBits = v90.value._countAndFlagsBits;
        memcpy(v179, v178, 0x120uLL);
        sub_22F162EC8(v179);
        object = v90.value._object;
        if (!v90.value._object)
        {

          sub_22F2CE800();
          v172 = swift_allocError();
          swift_willThrow();

          goto LABEL_81;
        }

        sub_22F164408(v87, v75);

        swift_bridgeObjectRelease_n();

        sub_22F741740();
        v91 = v169;
        sub_22F740AC0();
        sub_22F740A90();
        (v164)(v91, v84);
        v92 = v172;
        sub_22F741690();
        v172 = v92;
        if (v92)
        {

          goto LABEL_84;
        }

        v93 = sub_22F7416E0();
        v95 = v94;
        v97 = v96;
        v99 = v98;
        MEMORY[0x28223BE20](v93);
        v100 = object;
        *(&v150 - 14) = countAndFlagsBits;
        *(&v150 - 13) = v100;
        *(&v150 - 11) = 0;
        *(&v150 - 10) = 0;
        *(&v150 - 12) = v168;
        *(&v150 - 9) = v155;
        v157 = v101;
        *(&v150 - 7) = v101;
        *(&v150 - 6) = v66;
        *(&v150 - 10) = 16777472;
        *(&v150 - 4) = v95;
        *(&v150 - 3) = v102;
        *(&v150 - 2) = v103;
        v104 = v172;
        sub_22F7417A0();
        v172 = v104;
        if (v104)
        {
          break;
        }

        sub_22F741730();
        v105 = v169;
        sub_22F740AC0();
        sub_22F740A90();

        (v164)(v105, v171);
        if (qword_2810A9478 != -1)
        {
          swift_once();
        }

        v106 = sub_22F740B90();
        __swift_project_value_buffer(v106, qword_2810B4DC0);

        v107 = object;

        v108 = sub_22F740B70();
        v109 = sub_22F7415C0();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v178[0] = v111;
          *v110 = v152;
          v112 = *(v66 + 16);

          *(v110 + 4) = v112;

          *(v110 + 12) = 2080;
          v113 = sub_22F145F20(countAndFlagsBits, v107, v178);

          *(v110 + 14) = v113;
          *(v110 + 22) = 2080;
          *(v110 + 24) = sub_22F145F20(0x726F46636973756DLL, 0xEB00000000756F59, v178);
          _os_log_impl(&dword_22F0FC000, v108, v109, "Saving %ld of type %s with category %s", v110, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v111, -1, -1);
          MEMORY[0x2319033A0](v110, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        sub_22F227010(v175);
        v76 = *v175;
        v75 = *&v175[8];
        v77 = *&v175[24];
        v78 = *&v175[32];
        v79 = *&v175[40];
        v66 = MEMORY[0x277D84F90];
        if (!*&v175[8])
        {
          goto LABEL_44;
        }
      }

LABEL_84:

      goto LABEL_23;
    }

LABEL_44:

    v114 = v172;
    sub_22F7416A0();
    v172 = v114;
    if (v114)
    {
      sub_22F2CE854(v158, type metadata accessor for CacherStatus);

      goto LABEL_24;
    }

    v120 = v180;
    if (*(v180 + 2))
    {
      v121 = v180 + 56;
      v122 = 1 << v180[32];
      v123 = -1;
      if (v122 < 64)
      {
        v123 = ~(-1 << v122);
      }

      v124 = v123 & *(v180 + 7);
      v125 = (v122 + 63) >> 6;

      v126 = 0;
      v170 = MEMORY[0x277D84F90];
      v171 = v120;
LABEL_55:
      v127 = v126;
      while (v124)
      {
        v126 = v127;
LABEL_62:
        v128 = (*(v120 + 6) + ((v126 << 10) | (16 * __clz(__rbit64(v124)))));
        v129 = *v128;
        v130 = v128[1];
        v131 = *(*(v163 + 16) + OBJC_IVAR___PGMusicBag_atomicMusicBagContents);
        v132 = *(v131 + 312);

        [v132 lock];
        swift_beginAccess();
        memmove(v175, (v131 + 16), 0x121uLL);
        if (sub_22F1EDB8C(v175) == 1)
        {
          memcpy(v174, (v131 + 16), 0x121uLL);
          sub_22F120ADC(v174, &qword_27DAB2458, &qword_22F782A80);
          MusicBag.fetchMusicBagContents()(&v173);
          v172 = v133;
          if (v133)
          {
            v178[0] = v172;
            sub_22F1EDBA0(v178);
            memcpy(v179, v178, 0x121uLL);
            GEOLocationCoordinate2DMake(v179);
            memcpy((v131 + 16), v179, 0x121uLL);
            v172 = 0;
          }

          else
          {
            sub_22F1EDAA8(&v173);
            memcpy(v179, &v173, 0x121uLL);
            GEOLocationCoordinate2DMake(v179);
            memcpy((v131 + 16), v179, 0x121uLL);
          }
        }

        memcpy(&v173, (v131 + 16), 0x121uLL);
        memmove(v174, (v131 + 16), 0x121uLL);
        if (sub_22F1EDB8C(v174) == 1)
        {
          __break(1u);
          return;
        }

        memcpy(v178, &v173, 0x121uLL);
        swift_endAccess();
        v134 = *(v131 + 312);
        sub_22F13BA9C(v178, v177, &qword_27DAB2448, &unk_22F788C80);
        [v134 unlock];

        memcpy(v179, v174, 0x121uLL);
        if (sub_22F1EDAB8(v179) == 1)
        {
          GEOLocationCoordinate2DMake(v179);

          memcpy(v177, v174, 0x121uLL);
          v172 = *GEOLocationCoordinate2DMake(v177);
          v176 = v172;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
          swift_willThrowTypedImpl();

          sub_22F2CE854(v158, type metadata accessor for CacherStatus);

          goto LABEL_14;
        }

        GEOLocationCoordinate2DMake(v179);
        if (qword_2810AB5D8 != -1)
        {
          swift_once();
        }

        v124 &= v124 - 1;
        if (!*(off_2810AB5E0 + 2) || (sub_22F1229E8(v129, v130), (v135 & 1) == 0))
        {
          memcpy(v177, v174, 0x121uLL);
          v136 = GEOLocationCoordinate2DMake(v177);
          v137 = *v136;
          if (*(*v136 + 16))
          {
            v138 = sub_22F1229E8(v129, v130);
            if (v139)
            {
              v140 = (*(v137 + 56) + 16 * v138);
              v142 = *v140;
              v141 = v140[1];

              sub_22F120ADC(&v173, &qword_27DAB2458, &qword_22F782A80);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v170 = sub_22F13E1A8(0, *(v170 + 2) + 1, 1, v170);
              }

              v120 = v171;
              v144 = *(v170 + 2);
              v143 = *(v170 + 3);
              if (v144 >= v143 >> 1)
              {
                v170 = sub_22F13E1A8((v143 > 1), v144 + 1, 1, v170);
              }

              v145 = v170;
              *(v170 + 2) = v144 + 1;
              v146 = &v145[16 * v144];
              *(v146 + 4) = v142;
              *(v146 + 5) = v141;
              goto LABEL_55;
            }
          }
        }

        sub_22F120ADC(&v173, &qword_27DAB2458, &qword_22F782A80);
        v127 = v126;
        v120 = v171;
      }

      while (1)
      {
        v126 = v127 + 1;
        if (__OFADD__(v127, 1))
        {
          __break(1u);
          goto LABEL_94;
        }

        if (v126 >= v125)
        {
          break;
        }

        v124 = *&v121[8 * v126];
        ++v127;
        if (v124)
        {
          goto LABEL_62;
        }
      }

      v147 = sub_22F1515F8(v170);

      v148 = v151;
      v149 = v172;
      sub_22F2CE2C8(v168, v147);
      v172 = v149;
      if (v149)
      {
        sub_22F2CE854(v158, type metadata accessor for CacherStatus);

        goto LABEL_24;
      }
    }

    else
    {

      v148 = v151;
    }

    v166(1, 0);
  }

  else
  {
    v72 = v172;
    sub_22F2CE2C8(v59, v63);
    v172 = v72;
    if (v72)
    {
LABEL_23:
      sub_22F2CE854(v158, type metadata accessor for CacherStatus);
LABEL_24:

LABEL_14:
      v61 = v172;
      v62 = v172;
      v166(0, v61);

      return;
    }

    v115 = v172;
    sub_22F7416A0();
    v172 = v115;
    if (v115)
    {
LABEL_81:
      sub_22F2CE854(v158, type metadata accessor for CacherStatus);
      goto LABEL_14;
    }

    if (qword_2810A9478 != -1)
    {
LABEL_94:
      swift_once();
    }

    v116 = sub_22F740B90();
    __swift_project_value_buffer(v116, qword_2810B4DC0);
    v117 = sub_22F740B70();
    v118 = sub_22F7415E0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_22F0FC000, v117, v118, "No songs found in the recommended playlist", v119, 2u);
      MEMORY[0x2319033A0](v119, -1, -1);
    }

    v166(1, 0);
  }

  v71 = v158;
LABEL_91:
  sub_22F2CE854(v71, type metadata accessor for CacherStatus);
}

id MusicForYouCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForYouCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForYouCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F2CCB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_22F73F690();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for CacherStatus(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v16, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = &qword_27DAB1DA0;
    v23 = &unk_22F7771B0;
    v24 = v16;
LABEL_5:
    sub_22F120ADC(v24, v22, v23);
    LOBYTE(v27) = 1;
    return v27 & 1;
  }

  sub_22F294B10(v16, v21, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v21[*(v17 + 20)], v7, &qword_27DAB0920, &qword_22F770B20);
  v26 = v40;
  v25 = v41;
  if ((*(v40 + 48))(v7, 1, v41) == 1)
  {
    sub_22F2CE854(v21, type metadata accessor for CacherStatus);
    v22 = &qword_27DAB0920;
    v23 = &qword_22F770B20;
    v24 = v7;
    goto LABEL_5;
  }

  v29 = v39;
  (*(v26 + 32))(v39, v7, v25);
  sub_22F1E3F74(v45);
  memcpy(v46, v45, 0x121uLL);
  if (sub_22F1EDAB8(v46) == 1)
  {
    GEOLocationCoordinate2DMake(v46);
    memcpy(v43, v45, 0x121uLL);
    v27 = *GEOLocationCoordinate2DMake(v43);
    v44 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v26 + 8))(v29, v25);
    sub_22F2CE854(v21, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake(v46);
    sub_22F120ADC(v45, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v43, v45, 0x121uLL);
    v30 = GEOLocationCoordinate2DMake(v43);
    v27 = v36;
    sub_22F73F680();
    sub_22F73F590();
    v32 = v31;
    v33 = v29;
    v34 = *(v26 + 8);
    v34(v27, v25);
    LOBYTE(v27) = v37;
    v35 = v42;
    sub_22F7416A0();
    if (!v35)
    {
      LOBYTE(v27) = *(v30 + 8) < v32;
    }

    v34(v33, v25);
    sub_22F2CE854(v21, type metadata accessor for CacherStatus);
  }

  return v27 & 1;
}

void sub_22F2CD024(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = a1;
  v71 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - v7;
  object = sub_22F73F690();
  v73 = *(object - 1);
  v10 = *(v73 + 64);
  MEMORY[0x28223BE20](object);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SongSource();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MusicBag.personalMixNames()();
  if (!v3)
  {
    v64 = v12;
    v65 = v13;
    v19 = v18;
    v20 = v73;
    v66 = v8;
    v67 = v14;
    v68 = v17;
    v21 = MusicBag.personalMixIdentifers()();
    v69 = 0;
    v22 = v21;
    v85 = v21;
    sub_22F1E3F74(v82);
    memcpy(v83, v82, 0x121uLL);
    memcpy(v84, v82, 0x121uLL);
    if (sub_22F1EDAB8(v84) == 1)
    {
      GEOLocationCoordinate2DMake(v84);

      memcpy(v80, v83, 0x121uLL);
      v81 = *GEOLocationCoordinate2DMake(v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
      swift_willThrowTypedImpl();
      return;
    }

    countAndFlagsBits = v19;
    v61 = v22;
    v63 = a2;
    GEOLocationCoordinate2DMake(v84);
    memcpy(v80, v83, 0x121uLL);
    v24 = *GEOLocationCoordinate2DMake(v80);

    v26 = sub_22F144294(v25);
    if (qword_2810AB5D8 != -1)
    {
      goto LABEL_38;
    }

LABEL_6:

    v28 = sub_22F1E8F80(v27, v26);

    v79[0] = v28;
    sub_22F1E7F04(&unk_2843DD3A0);
    sub_22F1DF3B0(&unk_2843DD3C0);
    sub_22F120ADC(v83, &qword_27DAB2448, &unk_22F788C80);
    v72 = v79[0];
    v29 = countAndFlagsBits;
    v30 = *(countAndFlagsBits + 16);
    v31 = v20;
    countAndFlagsBits = object;
    if (v30)
    {
      v32 = sub_22F10B348(v30, 0);
      v33 = v29;
      v34 = v32;
      v35 = sub_22F11A438(v79, v32 + 4, v30, v33);
      sub_22F1534EC();
      if (v35 == v30)
      {
LABEL_10:
        sub_22F25F004();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_22F770DF0;
        *(v36 + 56) = MEMORY[0x277D837D0];
        *(v36 + 64) = sub_22F153470();
        *(v36 + 32) = 0x696669746E656469;
        *(v36 + 40) = 0xEA00000000007265;
        *(v36 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
        *(v36 + 104) = sub_22F25F050();
        *(v36 + 72) = v34;

        object = sub_22F741560();
        v37 = v69;
        v38 = sub_22F1935BC();
        v69 = v37;
        if (v37)
        {

          return;
        }

        v20 = v38;
        v61 = countAndFlagsBits;

        v39 = v67;
        v26 = v68;
        v70 = *(v20 + 16);
        if (!v70)
        {
LABEL_35:

          return;
        }

        v40 = 0;
        v71 = v72 + 7;
        v59 = (v31 + 32);
        v60 = (v31 + 48);
        v73 = v31 + 8;
        v62 = v20;
        while (1)
        {
          if (v40 >= *(v20 + 16))
          {
            __break(1u);
LABEL_38:
            swift_once();
            goto LABEL_6;
          }

          sub_22F1684A8(v20 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v40, v26);
          v41 = *v26;
          v42 = v26[1];

          sub_22F1E3F74(v78);
          memcpy(v79, v78, 0x121uLL);
          if (sub_22F1EDAB8(v79) == 1)
          {
            GEOLocationCoordinate2DMake(v79);

            memcpy(v76, v78, 0x121uLL);
            v77 = *GEOLocationCoordinate2DMake(v76);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
            swift_willThrowTypedImpl();
            sub_22F2CE854(v68, type metadata accessor for SongSource);
            return;
          }

          GEOLocationCoordinate2DMake(v79);
          memcpy(v76, v78, 0x121uLL);
          v43 = GEOLocationCoordinate2DMake(v76);
          memcpy(v74, v43, sizeof(v74));
          v44._countAndFlagsBits = v41;
          v44._object = v42;
          v45 = MusicBagContents.personalMixIdentifier(for:)(v44);
          countAndFlagsBits = v45.value._countAndFlagsBits;
          object = v45.value._object;
          memcpy(v75, v74, sizeof(v75));
          sub_22F162EC8(v75);
          if (v45.value._object)
          {
            if (v72[2])
            {
              v46 = v72;
              v47 = v72[5];
              sub_22F742170();
              sub_22F740D60();
              v48 = sub_22F7421D0();
              v49 = -1 << *(v46 + 32);
              v50 = v48 & ~v49;
              if ((*(v71 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
              {
                v51 = ~v49;
                while (1)
                {
                  v52 = (v72[6] + 16 * v50);
                  v53 = *v52 == v41 && v52[1] == v42;
                  if (v53 || (sub_22F742040() & 1) != 0)
                  {
                    break;
                  }

                  v50 = (v50 + 1) & v51;
                  if (((*(v71 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
                  {
                    goto LABEL_28;
                  }
                }

                sub_22F164408(v45.value._countAndFlagsBits, v45.value._object);

                goto LABEL_34;
              }
            }

LABEL_28:

            v54 = v66;
            v26 = v68;
            sub_22F13BA9C(v68 + *(v65 + 20), v66, &qword_27DAB0920, &qword_22F770B20);
            v55 = v61;
            if ((*v60)(v54, 1, v61) != 1)
            {
              v56 = v64;
              (*v59)(v64, v54, v55);
              sub_22F73F600();
              if (v57 > -604800.0)
              {
                sub_22F164408(v45.value._countAndFlagsBits, v45.value._object);
              }

              (*v73)(v56, v55);
LABEL_34:
              v26 = v68;
              sub_22F2CE854(v68, type metadata accessor for SongSource);
              goto LABEL_15;
            }

            sub_22F2CE854(v26, type metadata accessor for SongSource);

            sub_22F120ADC(v54, &qword_27DAB0920, &qword_22F770B20);
          }

          else
          {
            v26 = v68;
            sub_22F2CE854(v68, type metadata accessor for SongSource);
          }

LABEL_15:
          ++v40;
          v39 = v67;
          v20 = v62;
          if (v40 == v70)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
    }

    v34 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }
}

uint64_t sub_22F2CD924(void *a1, int a2, void *a3, uint64_t a4, void (**a5)(void, void, void))
{
  v59 = a4;
  v9 = sub_22F740C00();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v62 = swift_allocObject();
  *(v62 + 16) = a5;
  _Block_copy(a5);
  v63 = sub_22F7416E0();
  v20 = v19;
  v60 = v22;
  v61 = v21;
  v23 = sub_22F1A26E0(a1);
  v56 = v12;
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a3;
  v55 = v14;
  v58 = v20;
  v24 = v23;
  v25 = objc_allocWithZone(type metadata accessor for MusicBag());
  v26 = v24;
  v27 = sub_22F1ED5B0(v24);

  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEB00000000756F59, v18);
  v53 = v26;
  v28 = sub_22F2CCB40(v18, v27, v63);
  if (((v28 | a2) & 1) == 0)
  {
    sub_22F7416A0();
    v31 = v53;
    a5[2](a5, 1, 0);

LABEL_8:
    sub_22F120ADC(v18, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  sub_22F2CD024(v53, v27, v58);
  if (!*(v30 + 16))
  {

    sub_22F7416A0();
    a5[2](a5, 1, 0);

    goto LABEL_8;
  }

  v32 = v56;
  v33 = v30;
  sub_22F740BD0();

  v56 = v33;
  v52 = sub_22F22FB24(v32, v33);
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEB00000000756F59, v64);
  v34 = v54;
  sub_22F13BA9C(v18, v54, &qword_27DAB1DA0, &unk_22F7771B0);
  v35 = v55[80];
  v55 = v27;
  v36 = (v35 + 24) & ~v35;
  v51 = (v15 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = v59;
  sub_22F1207AC(v34, v41 + v36, &qword_27DAB1DA0, &unk_22F7771B0);
  v42 = v53;
  *(v41 + v51) = v53;
  *(v41 + v37) = v56;
  v43 = v60;
  *(v41 + v38) = v60;
  *(v41 + v39) = v52;
  v44 = v57;
  *(v41 + v40) = v57;
  v45 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  v46 = v62;
  *v45 = sub_22F1E088C;
  v45[1] = v46;
  v47 = v42;
  v48 = v43;

  v49 = v44;

  v50 = v61;
  sub_22F229248(v64, v61, sub_22F2CE8B4, v41);

  v66[0] = v64[0];
  v66[1] = v64[1];
  v66[2] = v64[2];
  v67 = v65;
  sub_22F1D210C(v66);
  sub_22F120ADC(v18, &qword_27DAB1DA0, &unk_22F7771B0);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for CacherStatus(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v23 = v4;
    v7 = *(v5 + 8);

    v8 = *(v6 + 20);
    v9 = sub_22F73F690();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }

    v12 = *(v6 + 24);
    v4 = v23;
    if (!v11(v5 + v12, 1, v9))
    {
      (*(v10 + 8))(v5 + v12, v9);
    }
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;

  v19 = *(v0 + v14);

  v20 = *(v0 + v16);

  v21 = *(v0 + v18 + 8);

  return MEMORY[0x2821FE8E8](v0, v18 + 16, v2 | 7);
}

void sub_22F2CE1C8(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_22F2CB144(a1, a2 & 1, *(v2 + 16), (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_22F2CE2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v53 = sub_22F740AD0();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    if (v8 != 1)
    {
      v49 = v5;
      v51 = v2;
      *&v57 = MEMORY[0x277D84F90];
      sub_22F146A6C(0, v8 - 1, 0);
      v9 = v57;
      v10 = *(v57 + 16);
      for (i = 1; i != v8; ++i)
      {
        v12 = *(a2 + 16);
        *&v57 = v9;
        v13 = *(v9 + 24);
        if (v10 >= v13 >> 1)
        {
          sub_22F146A6C((v13 > 1), v10 + 1, 1);
          v9 = v57;
        }

        *(v9 + 16) = v10 + 1;
        *(v9 + 8 * v10++ + 32) = i / v12;
      }

      v3 = v51;
      v5 = v49;
    }

    v14 = sub_22F7416C0();

    v15 = -1 << *(a2 + 32);
    v16 = ~v15;
    v17 = *(a2 + 56);
    v18 = -v15;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    *&v57 = a2;
    *(&v57 + 1) = a2 + 56;
    v58 = v16;
    *v59 = v19 & v17;
    *&v59[8] = v14;
    *&v59[16] = 0;
    v59[24] = 0;
    v49 = OBJC_IVAR___PGMusicCache_managedObjectContext;

    sub_22F226E88(v20);
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v25 = (v5 + 8);
      v48 = xmmword_22F782A30;
      v47 = v25;
      while (1)
      {
        sub_22F741740();
        if (qword_2810A8E80 != -1)
        {
          swift_once();
        }

        v26 = v52;
        sub_22F740AC0();
        sub_22F740A90();
        v27 = *v25;
        (*v25)(v26, v53);
        sub_22F741690();
        if (v3)
        {
          break;
        }

        v28 = sub_22F7416E0();
        v30 = v29;
        v32 = v31;
        v51 = v24;
        v34 = v33;
        v35 = *(v50 + v49);
        MEMORY[0x28223BE20](v28);
        *(&v46 - 14) = v36;
        *(&v46 - 13) = v23;
        *(&v46 - 11) = 0;
        *(&v46 - 10) = 0;
        *(&v46 - 12) = v37;
        *(&v46 - 9) = v48;
        *(&v46 - 7) = v38;
        *(&v46 - 6) = MEMORY[0x277D84F90];
        *(&v46 - 10) = 16777472;
        *(&v46 - 4) = v30;
        *(&v46 - 3) = v39;
        *(&v46 - 2) = v40;
        sub_22F7417A0();

        sub_22F741730();
        v41 = v52;
        sub_22F740AC0();
        sub_22F740A90();

        v42 = v41;
        v25 = v47;
        v43 = v27(v42, v53);
        sub_22F226E88(v43);
        v24 = v44;
        v3 = 0;
        v23 = v45;
        if (!v45)
        {
          goto LABEL_17;
        }
      }

      v54 = v57;
      v55 = v58;
      v56[0] = *v59;
      *(v56 + 9) = *&v59[9];
      sub_22F120ADC(&v54, qword_27DAB31F8, &unk_22F782A88);
    }

    else
    {
LABEL_17:
      v54 = v57;
      v55 = v58;
      v56[0] = *v59;
      *(v56 + 9) = *&v59[9];
      sub_22F120ADC(&v54, qword_27DAB31F8, &unk_22F782A88);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22F2CE800()
{
  result = qword_27DAB31F0;
  if (!qword_27DAB31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB31F0);
  }

  return result;
}

uint64_t sub_22F2CE854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22F2CE8B8()
{
  v0 = sub_22F73F7C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_22F73F6E0();
  v6 = sub_22F73F730();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  v7 = sub_22F740DF0();
  [v5 setDateFormat_];

  qword_2810A9170 = v5;
}

id static NSDateFormatter.yearMonthDay.getter()
{
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v1 = qword_2810A9170;

  return v1;
}

uint64_t PGTuningExperiment.__allocating_init<>(withEventFactory:withProgressReporter:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  PGTuningExperiment.init<>(withEventFactory:withProgressReporter:)(a1, a2);
  return v4;
}

uint64_t *PGTuningExperiment.init<>(withEventFactory:withProgressReporter:)(uint64_t a1, void *a2)
{
  v4 = v3;
  v41 = a2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = sub_22F741860();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = *(v7 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v2[2] = sub_22F740C60();
  v34 = v2 + 2;
  v17 = *(v6 + 104);
  v18 = *(v17 + 24);
  v42 = v2;
  v39 = *(v6 + 88);
  v40 = a1;
  v37 = v18;
  v38 = v17;
  v18();
  v36 = v12[6];
  if (v36(v11, 1, v7) == 1)
  {
LABEL_5:
    (*(v32 + 8))(v11, v33);
    v23 = v34;
    v24 = swift_beginAccess();
    v43[4] = *v23;
    MEMORY[0x28223BE20](v24);
    v25 = v38;
    v26 = v39;
    *(&v32 - 4) = v7;
    *(&v32 - 3) = v26;
    *(&v32 - 2) = v25;
    sub_22F741280();

    swift_getWitnessTable();
    v27 = sub_22F7410A0();

    v28 = *v23;
    *v23 = v27;

    v29 = v41;
    sub_22F7416A0();
    (*(*(v26 - 8) + 8))(v40, v26);
    if (v4)
    {
      v30 = v42;
    }

    else
    {

      return v42;
    }
  }

  else
  {
    v19 = v12 + 4;
    v35 = v12[4];
    v20 = (v12 + 1);
    while (1)
    {
      v21 = v19;
      v35(v16, v11, v7);
      v22 = objc_autoreleasePoolPush();
      sub_22F2CEF0C(v42, v16, v41, v43);
      if (v4)
      {
        break;
      }

      v4 = 0;
      objc_autoreleasePoolPop(v22);
      (*v20)(v16, v7);
      (v37)(v39, v38);
      v19 = v21;
      if (v36(v11, 1, v7) == 1)
      {
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v22);

    v30 = v42;

    (*(*(v39 - 8) + 8))(v40);
    (*v20)(v16, v7);
  }

  return v30;
}

uint64_t sub_22F2CEF0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(*(*(*a1 + 80) - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v15[-v9], v8);
  swift_beginAccess();
  sub_22F741280();
  sub_22F741240();
  swift_endAccess();
  swift_beginAccess();
  v11 = a1[2];

  sub_22F741230();

  swift_beginAccess();
  v12 = a1[2];

  v13 = sub_22F741230();

  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_22F741690();
    if (v4)
    {
      *a4 = v4;
    }
  }

  return result;
}

uint64_t sub_22F2CF0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v17[1] = a2;
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 8);
  v13(a3, AssociatedConformanceWitness);
  v13(a3, AssociatedConformanceWitness);
  v14 = sub_22F73F5D0();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v11, v4);
  return v14 & 1;
}

uint64_t sub_22F2CF254(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_22F2CF0BC(a1, a2, v2[2]) & 1;
}

uint64_t sub_22F2CF278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *v12;
  v15 = *(v14 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(v14 + 96);
  v28[1] = AssociatedTypeWitness;
  v28[2] = v17;
  v28[3] = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for PGTuningContextNone();
  v28[0] = PGTuningContextNone.__allocating_init()();
  sub_22F2CF3B0(a1, a2, a3, v28, a4, a5, a6, a7, a9, a8, a10, v18, a11, a12);
}

uint64_t sub_22F2CF3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v15;
  v17 = v14;
  v59 = a8;
  v63 = a7;
  v50 = a6;
  v49[1] = a5;
  v65 = a4;
  v49[2] = a3;
  v57 = a1;
  v58 = a2;
  v51 = a9;
  v62 = a14;
  v18 = *(*v14 + 80);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v61 = a11;
  MEMORY[0x28223BE20](a1);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = v21;
  MEMORY[0x28223BE20](v23);
  v66 = v49 - v24;
  v25 = *(a12 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v29 = v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v31;
  v56 = v30;
  swift_getAssociatedTypeWitness();
  v32 = sub_22F7411F0();
  v71 = v32;
  v52 = v25;
  v33 = *(v25 + 16);
  v34 = v65;
  v64 = v29;
  v65 = a12;
  v33(v29, v34, a12);
  v70 = 0;
  swift_beginAccess();
  v60 = v17;
  v35 = v17[2];

  if (sub_22F741230())
  {
    v36 = 0;
    v54 = (v19 + 16);
    v53 = (v19 + 8);
    while (1)
    {
      v37 = sub_22F741210();
      sub_22F7411B0();
      if (v37)
      {
        (*(v19 + 16))(v66, v35 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v36, v18);
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_22F741B30();
        if (v49[0] != 8)
        {
          __break(1u);
          return result;
        }

        *&v67 = result;
        v37 = result;
        (*v54)(v66, &v67, v18);
        swift_unknownObjectRelease();
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_11:
          __break(1u);
LABEL_12:

          objc_autoreleasePoolPop(v37);
          (*v53)(v22, v18);
          v40 = v52;
          goto LABEL_18;
        }
      }

      (*(v19 + 32))(v22, v66, v18);
      v37 = objc_autoreleasePoolPush();
      sub_22F2CF958(v57, v58, v22, v64, &v71, v63, &v70, v60, v59, v55, v61, v65, v56, v62, &v67);
      if (v16)
      {
        goto LABEL_12;
      }

      v16 = 0;
      objc_autoreleasePoolPop(v37);
      (*v53)(v22, v18);
      ++v36;
      if (v38 == sub_22F741230())
      {
        v32 = v71;
        break;
      }
    }
  }

  v41 = v51;
  v40 = v52;

  (*(v62 + 24))(&v67, v32, v61);
  if (v50)
  {
    v42 = v68;
    v43 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, v68);
    v44 = *((*(v43 + 8))(v42, v43) + 16);

    if (v44)
    {
      v45 = sub_22F740DF0();
      v46 = v68;
      v47 = v69;
      __swift_project_boxed_opaque_existential_1(&v67, v68);
      (*(v47 + 8))(v46, v47);
      sub_22F2CFD00();
      v48 = sub_22F740C80();

      AnalyticsSendEvent();
    }
  }

  sub_22F7416A0();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(&v67);
LABEL_18:
    (*(v40 + 8))(v64, v65);
  }

  else
  {
    sub_22F100260(&v67, v41);
    (*(v40 + 8))(v64, v65);
  }
}

uint64_t sub_22F2CF958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v49 = a6;
  v46 = a8;
  v47 = a7;
  v44 = a1;
  v45 = a5;
  v41 = a4;
  v42 = a2;
  v43 = a3;
  v48 = *a8;
  v16 = *(a12 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](a1);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v21 = *(v40 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v39 - v26;
  (*(v16 + 16))(v19, a4, a12, v25);
  v39 = a13;
  v28 = v43;
  (*(a13 + 72))(v42, v43, v19, a10, a13);
  (*(v16 + 8))(v19, a12);
  v29 = AssociatedTypeWitness;
  v30 = v40;
  (*(v40 + 16))(v23, v27, v29);
  sub_22F741280();
  sub_22F741240();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v47;
  (*(AssociatedConformanceWitness + 40))(v28, v27, a12, AssociatedConformanceWitness);
  v33 = *v32;
  v34 = v46;
  swift_beginAccess();
  v35 = v34[2];
  v36 = *(v48 + 80);

  sub_22F741230();

  v37 = v50;
  sub_22F741690();
  if (v37)
  {
    result = (*(v30 + 8))(v27, v29);
    *a15 = v37;
  }

  else
  {
    result = (*(v30 + 8))(v27, v29);
    if (__OFADD__(*v32, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v32;
    }
  }

  return result;
}

uint64_t PGTuningExperiment.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PGTuningExperiment.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_22F2CFD00()
{
  result = qword_2810A8EC0;
  if (!qword_2810A8EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8EC0);
  }

  return result;
}

void *sub_22F2CFE8C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32B8, &qword_22F782B40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_22F740400();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v35 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v29 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = (a3 + 32);
  v18 = (v14 + 48);
  v32 = v14;
  v34 = (v14 + 32);
  v19 = MEMORY[0x277D84F90];
  v30 = v10;
  v31 = a1;
  v29 = (v14 + 48);
  while (1)
  {
    v20 = *v17++;
    v37 = v20;
    a1(&v37);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_22F120ADC(v9, &qword_27DAB32B8, &qword_22F782B40);
    }

    else
    {
      v21 = v33;
      v22 = *v34;
      (*v34)(v33, v9, v10);
      v22(v35, v21, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22F13E8E8(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      v25 = v32;
      if (v24 >= v23 >> 1)
      {
        v27 = sub_22F13E8E8(v23 > 1, v24 + 1, 1, v19);
        v25 = v32;
        v19 = v27;
      }

      v19[2] = v24 + 1;
      v26 = v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24;
      v10 = v30;
      v22(v26, v35, v30);
      a1 = v31;
      v18 = v29;
    }

    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_22F2D0160(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = *v6;

    a1(&v12, &v13);
    if (v3)
    {
      break;
    }

    v8 = v12;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22F13EB2C(0, v7[2] + 1, 1, v7);
      }

      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        v7 = sub_22F13EB2C((v9 > 1), v10 + 1, 1, v7);
      }

      v7[2] = v10 + 1;
      v7[v10 + 4] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_22F2D029C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v13[0] = *(i - 1);
      v13[1] = v8;

      a1(&v12, v13);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        MEMORY[0x231900D00](v9);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F7411C0();
        }

        sub_22F741220();
        v4 = v14;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *SearchEntityAccumulator.mePersonEntity.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity);
  v2 = v1;
  return v1;
}

id SearchEntityAccumulator.__allocating_init(with:graphLocaleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  v9 = MEMORY[0x277D84F90];
  *&v7[v8] = sub_22F14FCDC(MEMORY[0x277D84F90]);
  *&v7[OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity] = 0;
  v10 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
  *&v7[v10] = sub_22F14FCF0(v9);
  v11 = OBJC_IVAR___PGSearchEntityAccumulator_logger;
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v12 = sub_22F740B90();
  v13 = __swift_project_value_buffer(v12, qword_2810B4CE0);
  (*(*(v12 - 8) + 16))(&v7[v11], v13, v12);
  *&v7[OBJC_IVAR___PGSearchEntityAccumulator_synonymsByCategoryMask] = a1;
  v14 = &v7[OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier];
  *v14 = a2;
  *(v14 + 1) = a3;
  v16.receiver = v7;
  v16.super_class = v3;
  return objc_msgSendSuper2(&v16, sel_init);
}

id SearchEntityAccumulator.init(with:graphLocaleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  v9 = MEMORY[0x277D84F90];
  *&v3[v8] = sub_22F14FCDC(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity] = 0;
  v10 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
  *&v3[v10] = sub_22F14FCF0(v9);
  v11 = OBJC_IVAR___PGSearchEntityAccumulator_logger;
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v12 = sub_22F740B90();
  v13 = __swift_project_value_buffer(v12, qword_2810B4CE0);
  (*(*(v12 - 8) + 16))(&v3[v11], v13, v12);
  *&v3[OBJC_IVAR___PGSearchEntityAccumulator_synonymsByCategoryMask] = a1;
  v14 = &v3[OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier];
  *v14 = a2;
  *(v14 + 1) = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

id SearchEntityAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchEntityAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SearchEntityAccumulator.accumulatePublicEvents(in:for:dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v14 = sub_22F2D0DDC(v13);

  LOBYTE(v13) = sub_22F2D40D0();
  v15 = sub_22F73F090();
  v16 = *(v15 - 8);
  v17 = v16;
  if (v13)
  {
    (*(v16 + 16))(v12, a4, v15);
    (*(v17 + 56))(v12, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v12, 1, 1, v15);
  }

  type metadata accessor for GraphSearchEntity();
  sub_22F2D4D78(a1, v14, v12, *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier), *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8));
  v19 = v18;

  v20 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  v21 = *(v5 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v5 + v20);
  v23 = v37;
  *(v5 + v20) = 0x8000000000000000;
  v24 = sub_22F1229E8(v36, a3);
  v26 = v23[2];
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    __break(1u);
LABEL_13:
    v34 = v24;
    sub_22F136D68();
    v24 = v34;
    v23 = v37;
    goto LABEL_9;
  }

  LOBYTE(a4) = v25;
  if (v23[3] < v29)
  {
    sub_22F12A2D0(v29, isUniquelyReferenced_nonNull_native);
    v23 = v37;
    v24 = sub_22F1229E8(v36, a3);
    if ((a4 & 1) == (v30 & 1))
    {
      goto LABEL_9;
    }

    v24 = sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(v5 + v20) = v23;
  if ((a4 & 1) == 0)
  {
    v31 = v24;
    sub_22F1534CC(v24, v36, a3, MEMORY[0x277D84F90], v23);

    v24 = v31;
  }

  v32 = v23[7] + 8 * v24;
  sub_22F145844(v19);
  swift_endAccess();
  return sub_22F120ADC(v12, &qword_27DAB40E0, &unk_22F779200);
}

unint64_t sub_22F2D0DDC(void *a1)
{
  v2 = [a1 integerValue];
  v3 = *(v1 + OBJC_IVAR___PGSearchEntityAccumulator_synonymsByCategoryMask);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = v4;
  if (*(v3 + 16) && (v6 = sub_22F122BD4(v4), (v7 & 1) != 0))
  {
    v8 = *(*(v3 + 56) + 8 * v6);

    return v8;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];

    return sub_22F14FCC8(v10);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchEntityAccumulator.accumulateTrip(trip:for:)(Swift::String trip, Swift::String a2)
{
  v37 = a2;
  v3 = v2;
  object = trip._object;
  countAndFlagsBits = trip._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &countAndFlagsBits - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v10 = sub_22F2D0DDC(v9);

  v11 = type metadata accessor for GraphSearchEntity();
  v12 = sub_22F73F090();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = *(v3 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier);
  v14 = *(v3 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  *(inited + 32) = countAndFlagsBits;
  v16 = inited + 32;
  *(inited + 40) = object;
  v39 = v10;
  v40 = 1610;
  v41 = v11;
  v42 = v13;
  v43 = v14;
  v44 = v8;

  v17 = sub_22F2D029C(sub_22F2D42E4, v38, inited);

  v18 = v37._countAndFlagsBits;
  swift_setDeallocating();
  sub_22F1DF3B0(v16);
  v19 = v8;
  v20 = v37._object;
  sub_22F120ADC(v19, &qword_27DAB40E0, &unk_22F779200);
  v21 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  v22 = *(v3 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v3 + v21);
  v24 = v45;
  *(v3 + v21) = 0x8000000000000000;
  v25 = sub_22F1229E8(v18, v20);
  v27 = v24[2];
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v14) = v26;
  if (v24[3] < v30)
  {
    sub_22F12A2D0(v30, isUniquelyReferenced_nonNull_native);
    v24 = v45;
    v25 = sub_22F1229E8(v18, v20);
    if ((v14 & 1) == (v31 & 1))
    {
      goto LABEL_6;
    }

    v25 = sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_10:
    v34 = v18;
    v35 = v25;
    sub_22F136D68();
    v25 = v35;
    v18 = v34;
    v24 = v45;
    *(v3 + v21) = v45;
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v3 + v21) = v24;
  if ((v14 & 1) == 0)
  {
LABEL_7:
    v32 = v25;
    sub_22F1534CC(v25, v18, v20, MEMORY[0x277D84F90], v24);

    v25 = v32;
  }

LABEL_8:
  v33 = v24[7] + 8 * v25;
  sub_22F145844(v17);
  swift_endAccess();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchEntityAccumulator.accumulateMeanings(meanings:for:)(Swift::OpaquePointer meanings, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v7 = &qword_27DAB40E0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v13 = sub_22F2D0DDC(v12);

  v14 = sub_22F73F090();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = sub_22F2D5A54(meanings._rawValue, v13, v11, *(v3 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier), *(v3 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8));

  sub_22F120ADC(v11, &qword_27DAB40E0, &unk_22F779200);
  v16 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  v17 = *(v3 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v3 + v16);
  v19 = v31;
  *(v3 + v16) = 0x8000000000000000;
  v20 = sub_22F1229E8(countAndFlagsBits, object);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
LABEL_10:
    v29 = v20;
    sub_22F136D68();
    v20 = v29;
    v19 = v31;
    goto LABEL_6;
  }

  LOBYTE(v7) = v21;
  if (v19[3] < v25)
  {
    sub_22F12A2D0(v25, isUniquelyReferenced_nonNull_native);
    v19 = v31;
    v20 = sub_22F1229E8(countAndFlagsBits, object);
    if ((v7 & 1) == (v26 & 1))
    {
      goto LABEL_6;
    }

    v20 = sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  *(v3 + v16) = v19;
  if ((v7 & 1) == 0)
  {
    v27 = v20;
    sub_22F1534CC(v20, countAndFlagsBits, object, MEMORY[0x277D84F90], v19);

    v20 = v27;
  }

  v28 = v19[7] + 8 * v20;
  sub_22F145844(v15);
  swift_endAccess();
}

uint64_t sub_22F2D1840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, void *))
{
  v40 = a6;
  v9 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v18 = sub_22F2D0DDC(v17);

  v19 = type metadata accessor for GraphSearchEntity();
  v20 = sub_22F73F090();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v22 = *(v9 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier);
  v21 = *(v9 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8);
  v42 = v18;
  v43 = a5;
  v44 = v19;
  v45 = v22;
  v46 = v21;
  v47 = v16;
  v23 = sub_22F2D029C(v40, v41, a1);

  sub_22F120ADC(v16, &qword_27DAB40E0, &unk_22F779200);
  v24 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  v25 = *(v9 + v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v9 + v24);
  v27 = v48;
  *(v9 + v24) = 0x8000000000000000;
  v28 = sub_22F1229E8(a2, a3);
  v30 = v27[2];
  v31 = (v29 & 1) == 0;
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (v32)
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(a5) = v29;
  if (v27[3] < v33)
  {
    sub_22F12A2D0(v33, isUniquelyReferenced_nonNull_native);
    v27 = v48;
    v28 = sub_22F1229E8(a2, a3);
    if ((a5 & 1) == (v34 & 1))
    {
      goto LABEL_6;
    }

    v28 = sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_10:
    v38 = v28;
    sub_22F136D68();
    v28 = v38;
    v27 = v48;
    *(v9 + v24) = v48;
    if (a5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v9 + v24) = v27;
  if ((a5 & 1) == 0)
  {
LABEL_7:
    v35 = v28;
    sub_22F1534CC(v28, a2, a3, MEMORY[0x277D84F90], v27);

    v28 = v35;
  }

LABEL_8:
  v36 = v27[7] + 8 * v28;
  sub_22F145844(v23);
  return swift_endAccess();
}

uint64_t SearchEntityAccumulator.accumulateHomeAndWork(with:for:dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  v14 = sub_22F2D40D0();
  v15 = sub_22F73F090();
  v16 = *(v15 - 8);
  v17 = v16;
  if (v14)
  {
    (*(v16 + 16))(v13, a4, v15);
    (*(v17 + 56))(v13, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v13, 1, 1, v15);
  }

  type metadata accessor for GraphSearchEntity();
  v18 = sub_22F2D5198(a1, v13, *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier), *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8));
  v19 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  v20 = *(v5 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v5 + v19);
  v22 = v35;
  *(v5 + v19) = 0x8000000000000000;
  v23 = sub_22F1229E8(a2, a3);
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
LABEL_13:
    v33 = v23;
    sub_22F136D68();
    v23 = v33;
    v22 = v35;
    goto LABEL_9;
  }

  LOBYTE(v15) = v24;
  if (v22[3] < v28)
  {
    sub_22F12A2D0(v28, isUniquelyReferenced_nonNull_native);
    v22 = v35;
    v23 = sub_22F1229E8(a2, a3);
    if ((v15 & 1) == (v29 & 1))
    {
      goto LABEL_9;
    }

    v23 = sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(v5 + v19) = v22;
  if ((v15 & 1) == 0)
  {
    v30 = v23;
    sub_22F1534CC(v23, a2, a3, MEMORY[0x277D84F90], v22);

    v23 = v30;
  }

  v31 = v22[7] + 8 * v23;
  sub_22F145844(v18);
  swift_endAccess();
  return sub_22F120ADC(v13, &qword_27DAB40E0, &unk_22F779200);
}

uint64_t SearchEntityAccumulator.accumulateLocationContinents(with:for:dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_22F2D40D0();
  v14 = sub_22F73F090();
  v15 = *(v14 - 8);
  v16 = v15;
  if (v13)
  {
    (*(v15 + 16))(v12, a4, v14);
    (*(v16 + 56))(v12, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v12, 1, 1, v14);
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v18 = sub_22F2D0DDC(v17);

  v19 = type metadata accessor for GraphSearchEntity();
  v21 = *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier);
  v20 = *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8);
  MEMORY[0x28223BE20](v19);
  *(&v41 - 6) = v18;
  *(&v41 - 5) = 1007;
  *(&v41 - 4) = v22;
  *(&v41 - 3) = v23;
  *(&v41 - 2) = v24;
  *(&v41 - 1) = v12;
  v25 = sub_22F2D029C(sub_22F2D4D58, (&v41 - 8), a1);

  v26 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  v27 = *(v5 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v5 + v26);
  v29 = v42;
  *(v5 + v26) = 0x8000000000000000;
  v30 = sub_22F1229E8(v41, a3);
  v32 = v29[2];
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v17) = v31;
  if (v29[3] < v35)
  {
    sub_22F12A2D0(v35, isUniquelyReferenced_nonNull_native);
    v29 = v42;
    v30 = sub_22F1229E8(v41, a3);
    if ((v17 & 1) == (v36 & 1))
    {
      goto LABEL_9;
    }

    v30 = sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    v40 = v30;
    sub_22F136D68();
    v30 = v40;
    v29 = v42;
    *(v5 + v26) = v42;
    if (v17)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(v5 + v26) = v29;
  if ((v17 & 1) == 0)
  {
LABEL_10:
    v37 = v30;
    sub_22F1534CC(v30, v41, a3, MEMORY[0x277D84F90], v29);

    v30 = v37;
  }

LABEL_11:
  v38 = v29[7] + 8 * v30;
  sub_22F145844(v25);
  swift_endAccess();
  return sub_22F120ADC(v12, &qword_27DAB40E0, &unk_22F779200);
}

uint64_t SearchEntityAccumulator.accumulateLocationSubcontinents(with:for:dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_22F2D40D0();
  v14 = sub_22F73F090();
  v15 = *(v14 - 8);
  v16 = v15;
  if (v13)
  {
    (*(v15 + 16))(v12, a4, v14);
    (*(v16 + 56))(v12, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v12, 1, 1, v14);
  }

  v17 = type metadata accessor for GraphSearchEntity();
  v18 = sub_22F14FCC8(MEMORY[0x277D84F90]);
  v19 = v18;
  v21 = *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier);
  v20 = *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8);
  MEMORY[0x28223BE20](v18);
  *(&v41 - 6) = v22;
  *(&v41 - 5) = 1008;
  *(&v41 - 4) = v17;
  *(&v41 - 3) = v23;
  *(&v41 - 2) = v24;
  *(&v41 - 1) = v12;
  v25 = sub_22F2D029C(sub_22F2D4D58, (&v41 - 8), a1);

  v26 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  v27 = *(v5 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v5 + v26);
  v29 = v42;
  *(v5 + v26) = 0x8000000000000000;
  v30 = sub_22F1229E8(v41, a3);
  v32 = v29[2];
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v31;
  if (v29[3] < v35)
  {
    sub_22F12A2D0(v35, isUniquelyReferenced_nonNull_native);
    v29 = v42;
    v30 = sub_22F1229E8(v41, a3);
    if ((v19 & 1) == (v36 & 1))
    {
      goto LABEL_9;
    }

    v30 = sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    v40 = v30;
    sub_22F136D68();
    v30 = v40;
    v29 = v42;
    *(v5 + v26) = v42;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(v5 + v26) = v29;
  if ((v19 & 1) == 0)
  {
LABEL_10:
    v37 = v30;
    sub_22F1534CC(v30, v41, a3, MEMORY[0x277D84F90], v29);

    v30 = v37;
  }

LABEL_11:
  v38 = v29[7] + 8 * v30;
  sub_22F145844(v25);
  swift_endAccess();
  return sub_22F120ADC(v12, &qword_27DAB40E0, &unk_22F779200);
}

uint64_t sub_22F2D25EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, char *))
{
  v9 = sub_22F73F090();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F741180();
  v15 = sub_22F740E20();
  v17 = v16;
  sub_22F73F020();
  v18 = a1;
  a7(v14, v15, v17, v13);
  (*(v10 + 8))(v13, v9);

  return 1;
}

uint64_t sub_22F2D27F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_22F741180();
  v9 = sub_22F740E20();
  v11 = v10;
  v12 = a1;
  a6(v8, v9, v11);

  return 1;
}

uint64_t SearchEntityAccumulator.accumulatePersonAndPetRelationships(from:progressReporter:)(void *a1)
{
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v4 = qword_2810B4DF0;
  *&v5 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityAccumulator.accumulatePersonAndPetRelationships", 59, 2u, v5, 0, v4, v21);
  sub_22F741690();
  if (!v2)
  {
    v6 = OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity;
    v7 = *(v1 + OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity);
    *(v1 + OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity) = 0;

    v8 = sub_22F14FCF0(MEMORY[0x277D84F90]);
    v9 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = v8;

    v11 = [a1 meNode];
    if (v11)
    {
      v12 = v11;
      v13 = sub_22F20C630(v11);
      v14 = *(v1 + v6);
      *(v1 + v6) = v13;

      v15 = sub_22F7416B0();
      v17 = v16;
      sub_22F2D2AF8(a1);
      sub_22F2D45A8(v12);
    }

    else
    {
      v17 = sub_22F740B70();
      v18 = sub_22F7415C0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22F0FC000, v17, v18, "No ME node so no device owner relationships", v19, 2u);
        MEMORY[0x2319033A0](v19, -1, -1);
      }
    }
  }

  sub_22F1B2BBC(0);
}

uint64_t sub_22F2D2AF8(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810B4DF0;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityAccumulator.accumulatePersonRelationships", 53, 2u, v7, 0, v6, v69);
  sub_22F741690();
  if (v2)
  {
    goto LABEL_4;
  }

  if (!*(v1 + OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity))
  {
    sub_22F2D4C5C();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 2;
    swift_willThrow();
LABEL_4:
    sub_22F1B2BBC(0);
  }

  v64 = ObjectType;
  v9 = sub_22F7416D0();
  v61 = v11;
  v62 = v10;
  [objc_opt_self() relationshipTagMinConfidenceThreshold];
  v13 = [objc_opt_self() personWithTagWithConfidence_];
  sub_22F120634(0, &qword_2810A8F10, off_27887B248);
  v14 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v15 = v13;
  v16 = [v14 graph];
  v17 = [v16 graphReference];
  swift_unknownObjectRelease();
  v18 = [v17 concreteGraph];

  if (v18)
  {
    v19 = [v14 elementIdentifiers];
    v20 = [v18 adjacencyWithSources:v19 relation:v15];

    swift_unknownObjectRetain();
    v21 = [v20 transposed];
    swift_unknownObjectRelease();

    sub_22F7416A0();
    v58 = v15;
    v59 = v14;
    v68 = MEMORY[0x277D84F90];
    v23 = objc_autoreleasePoolPush();
    v24 = v62;
    sub_22F2D3378(v21, v18, v3, v62, &v68, v64);
    v25 = v21;
    objc_autoreleasePoolPop(v23);
    sub_22F7416A0();
    v26 = v68;
    if (v68 >> 62)
    {
LABEL_40:
      v65 = v26 & 0xFFFFFFFFFFFFFF8;
      v27 = sub_22F741A00();
    }

    else
    {
      v65 = v68 & 0xFFFFFFFFFFFFFF8;
      v27 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v25;
    v56 = v9;
    v60 = v26;
    if (!v27)
    {
      v57 = MEMORY[0x277D84F98];
LABEL_37:
      v50 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
      swift_beginAccess();

      v51 = *(v3 + v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = *(v3 + v50);
      *(v3 + v50) = 0x8000000000000000;
      sub_22F2D4320(v57, sub_22F2D4084, 0, isUniquelyReferenced_nonNull_native, &v66);

      *(v3 + v50) = v66;
      swift_endAccess();

      sub_22F7416A0();

      swift_unknownObjectRelease();
      goto LABEL_4;
    }

    v25 = 0;
    v57 = MEMORY[0x277D84F98];
    v63 = v26 & 0xC000000000000001;
    while (2)
    {
      v24 = v25;
      while (1)
      {
        if (v63)
        {
          v28 = MEMORY[0x2319016F0](v24, v26);
        }

        else
        {
          if (v24 >= *(v65 + 16))
          {
            goto LABEL_39;
          }

          v28 = *(v26 + 8 * v24 + 32);
        }

        v29 = v28;
        v25 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v30 = (*&v28[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_personEntity] + OBJC_IVAR___PGGraphSearchEntity_identifier);
        v9 = v30[1];
        if (v9)
        {
          break;
        }

        v31 = sub_22F740B70();
        v9 = sub_22F7415E0();
        if (os_log_type_enabled(v31, v9))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_22F0FC000, v31, v9, "nil identifier for Person SearchEntity", v32, 2u);
          v33 = v32;
          v26 = v60;
          MEMORY[0x2319033A0](v33, -1, -1);
        }

        ++v24;
        if (v25 == v27)
        {
          v24 = v62;
          goto LABEL_37;
        }
      }

      v54 = *v30;

      v53 = v29;
      v16 = v57;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v57;
      v35 = sub_22F1229E8(v54, v9);
      v37 = *(v57 + 16);
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v41 = v36;
      if (*(v57 + 24) >= v40)
      {
        if ((v34 & 1) == 0)
        {
          v46 = v35;
          sub_22F136D7C();
          v35 = v46;
          v26 = v60;
          v24 = v62;
          if (v41)
          {
            goto LABEL_29;
          }

LABEL_31:
          v16 = v67;
          v67[(v35 >> 6) + 8] |= 1 << v35;
          v47 = (v16[6] + 16 * v35);
          *v47 = v54;
          v47[1] = v9;
          *(v16[7] + 8 * v35) = v53;

          v48 = v16[2];
          v39 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (!v39)
          {
            v57 = v16;
            v16[2] = v49;
LABEL_33:
            if (v25 != v27)
            {
              continue;
            }

            goto LABEL_37;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_22F12A2E4(v40, v34);
        v35 = sub_22F1229E8(v54, v9);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_44;
        }
      }

      break;
    }

    v24 = v62;
    if (v41)
    {
LABEL_29:
      v43 = v35;

      v57 = v67;
      v44 = v67[7];
      v45 = *(v44 + 8 * v43);
      *(v44 + 8 * v43) = v53;

      v26 = v60;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

LABEL_43:
  sub_22F741D40();
  __break(1u);
  objc_autoreleasePoolPop(v16);
  __break(1u);
LABEL_44:
  sub_22F7420C0();
  __break(1u);

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_22F2D3378(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v8 = swift_allocObject();
  v8[2] = sub_22F2D4CD8;
  v8[3] = v13;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22F2D4CE4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_22F15A3B8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107F34;
  aBlock[3] = &block_descriptor_22_0;
  v10 = _Block_copy(aBlock);
  v11 = a1;
  swift_unknownObjectRetain();

  [v11 enumerateTargetsBySourceWith_];
  _Block_release(v10);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_22F2D350C(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = [a1 firstNode];
  if (v12)
  {
    v13 = v12;
    v29 = MEMORY[0x277D84F98];
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = v13;
    v14[4] = &v29;
    v14[5] = a5;
    v14[6] = a7;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_22F2D4CF0;
    *(v15 + 24) = v14;
    aBlock[4] = sub_22F2D4D54;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F107E24;
    aBlock[3] = &block_descriptor_32;
    v16 = _Block_copy(aBlock);
    v17 = a4;
    v18 = v13;
    a5;

    [a2 enumerateNodesUsingBlock_];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      sub_22F741690();
      v20 = sub_22F20C630(v18);
      v21 = v29;
      v22 = type metadata accessor for RelatedPersonEntityDescriptor();
      v23 = objc_allocWithZone(v22);
      *&v23[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_personEntity] = v20;
      *&v23[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_confidenceByRelationType] = v21;
      v27.receiver = v23;
      v27.super_class = v22;

      objc_msgSendSuper2(&v27, sel_init);
      MEMORY[0x231900D00]();
      if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_4:
        sub_22F741220();

        return;
      }
    }

    sub_22F7411C0();
    goto LABEL_4;
  }

  oslog = sub_22F740B70();
  v24 = sub_22F7415E0();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22F0FC000, oslog, v24, "Not a person node or missing uuid", v25, 2u);
    MEMORY[0x2319033A0](v25, -1, -1);
  }
}

void sub_22F2D3858(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [a4 edgesTowardNode_];
    sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
    sub_22F11FA28(&unk_27DAB37F0, &unk_27DAB0680, 0x277D22C10);
    v12 = sub_22F741420();

    if ((v12 & 0xC000000000000001) != 0)
    {
      if (sub_22F741A00() == 1)
      {
LABEL_4:
        v26 = sub_22F15AAB8(v12);

        if (v26)
        {
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            v14 = v13;
            v15 = sub_22F2D4D00([v9 tag]);
            [v14 confidence];
            v17 = v16;
            v18 = *a5;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v27 = *a5;
            *a5 = 0x8000000000000000;
            sub_22F131E5C(v15, isUniquelyReferenced_nonNull_native, v17);
            v20 = *a5;
            *a5 = v27;

            sub_22F741690();
LABEL_16:

            goto LABEL_17;
          }
        }

        v26 = sub_22F740B70();
        v23 = sub_22F7415E0();
        if (!os_log_type_enabled(v26, v23))
        {
          goto LABEL_16;
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = "Not a relationship tag edge between person node and relationship tag node";
LABEL_15:
        _os_log_impl(&dword_22F0FC000, v26, v23, v25, v24, 2u);
        MEMORY[0x2319033A0](v24, -1, -1);
        goto LABEL_16;
      }
    }

    else if (*(v12 + 16) == 1)
    {
      goto LABEL_4;
    }

    v26 = sub_22F740B70();
    v23 = sub_22F7415E0();
    if (!os_log_type_enabled(v26, v23))
    {
      goto LABEL_16;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "More than one edge between person node and relationship tag node";
    goto LABEL_15;
  }

  v26 = sub_22F740B70();
  v21 = sub_22F7415E0();
  if (os_log_type_enabled(v26, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22F0FC000, v26, v21, "Not a person relationship tag node", v22, 2u);
    MEMORY[0x2319033A0](v22, -1, -1);
  }

LABEL_17:
}

uint64_t sub_22F2D3BEC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v19 = 0;
  v9 = [a1 collection];
  v10 = [v9 ownedPetNodes];

  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = &v19;
  v11[6] = v10;
  v11[7] = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22F2D4CB0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_22F250854;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_22;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a4;
  v16 = v10;

  [v16 enumerateNodesUsingBlock_];

  _Block_release(v13);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22F2D3DB0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    v24 = sub_22F740B70();
    v18 = sub_22F7415E0();
    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22F0FC000, v24, v18, "Non-pet node encountered when expecting a PetNode", v19, 2u);
      MEMORY[0x2319033A0](v19, -1, -1);
    }

    goto LABEL_12;
  }

  v12 = v11;
  v24 = a1;
  v13 = [v12 petSpecies];
  if (v13 >= 3)
  {
    v20 = sub_22F740B70();
    v21 = sub_22F7415E0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22F0FC000, v20, v21, "Unknown pet relation type", v22, 2u);
      MEMORY[0x2319033A0](v22, -1, -1);
    }

LABEL_12:

    return;
  }

  v14 = sub_22F14FD04(*(&off_27887E898 + v13));
  v15 = sub_22F20C84C(v12);
  v16 = type metadata accessor for RelatedPersonEntityDescriptor();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_personEntity] = v15;
  *&v17[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_confidenceByRelationType] = v14;
  v25.receiver = v17;
  v25.super_class = v16;
  objc_msgSendSuper2(&v25, sel_init);
  MEMORY[0x231900D00]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();
  if (__OFADD__(*a6, 1))
  {
    __break(1u);
  }

  else
  {
    [a7 count];
    sub_22F741680();

    if (!__OFADD__(*a6, 1))
    {
      ++*a6;
      return;
    }
  }

  __break(1u);
}

id sub_22F2D4084@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_22F2D40D0()
{
  v0 = sub_22F73F690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  sub_22F73F060();
  sub_22F73F550();
  v8 = sub_22F73F630();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);
  if (v8)
  {
    goto LABEL_4;
  }

  sub_22F73F060();
  sub_22F73F570();
  v10 = sub_22F73F630();
  v9(v4, v0);
  v9(v7, v0);
  if (v10 & 1) != 0 || (sub_22F73F030(), sub_22F73F550(), v11 = sub_22F73F630(), v9(v4, v0), v9(v7, v0), (v11))
  {
LABEL_4:
    v12 = 0;
  }

  else
  {
    sub_22F73F030();
    sub_22F73F570();
    v14 = sub_22F73F630();
    v9(v4, v0);
    v9(v7, v0);
    v12 = v14 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_22F2D4320(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_22F1229E8(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_22F136D7C();
      }
    }

    else
    {
      v31 = v50;
      sub_22F12A2E4(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_22F1229E8(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_22F0FF590();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F2D45A8(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  if (qword_2810A9AD0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v7 = qword_2810B4DF0;
  *&v8 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityAccumulator.accumulatePetRelationships", 50, 2u, v8, 0, v7, v56);
  sub_22F741690();
  if (v3)
  {
    goto LABEL_3;
  }

  if (!*&v4[OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity])
  {
    sub_22F2D4C5C();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 2;
    swift_willThrow();
LABEL_3:
    sub_22F1B2BBC(0);
  }

  v10 = sub_22F7416B0();
  v12 = v11;
  v57 = MEMORY[0x277D84F90];
  v13 = objc_autoreleasePoolPush();
  sub_22F2D3BEC(a1, v4, &v57, v10, ObjectType);
  v3 = 0;
  objc_autoreleasePoolPop(v13);
  sub_22F7416A0();
  v15 = v57;
  if (!(v57 >> 62))
  {
    v53 = v57 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v12;
    v50 = v10;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_38:
    v19 = MEMORY[0x277D84F98];
LABEL_39:
    v44 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
    swift_beginAccess();

    v45 = *&v4[v44];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *&v4[v44];
    *&v4[v44] = 0x8000000000000000;
    sub_22F2D4320(v19, sub_22F2D4084, 0, isUniquelyReferenced_nonNull_native, &v54);

    *&v4[v44] = v54;
    swift_endAccess();

    sub_22F7416A0();

    goto LABEL_3;
  }

  v53 = v57 & 0xFFFFFFFFFFFFFF8;
  v16 = sub_22F741A00();
  v49 = v12;
  v50 = v10;
  if (!v16)
  {
    goto LABEL_38;
  }

LABEL_9:
  v17 = v16;
  v18 = 0;
  v19 = MEMORY[0x277D84F98];
  v52 = v15 & 0xC000000000000001;
  while (2)
  {
    v51 = v19;
    v20 = v18;
    while (1)
    {
      if (v52)
      {
        v21 = MEMORY[0x2319016F0](v20, v15);
      }

      else
      {
        if (v20 >= *(v53 + 16))
        {
          goto LABEL_35;
        }

        v21 = *(v15 + 8 * v20 + 32);
      }

      a1 = v21;
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v22 = (*&v21[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_personEntity] + OBJC_IVAR___PGGraphSearchEntity_identifier);
      ObjectType = v22[1];
      if (ObjectType)
      {
        break;
      }

      v23 = sub_22F740B70();
      ObjectType = sub_22F7415C0();
      if (os_log_type_enabled(v23, ObjectType))
      {
        v3 = v17;
        v24 = v15;
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22F0FC000, v23, ObjectType, "nil petUUID", v25, 2u);
        v26 = v25;
        v15 = v24;
        v17 = v3;
        MEMORY[0x2319033A0](v26, -1, -1);
      }

      ++v20;
      if (v18 == v17)
      {
        v19 = v51;
        goto LABEL_39;
      }
    }

    v48 = v15;
    v27 = *v22;

    v47 = a1;
    v28 = v51;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v51;
    v30 = v27;
    a1 = sub_22F1229E8(v27, ObjectType);
    v32 = v51[2];
    v33 = (v31 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      objc_autoreleasePoolPop(v28);
      __break(1u);
      break;
    }

    v35 = v31;
    if (v51[3] >= v34)
    {
      if (v29)
      {
        v15 = v48;
        if ((v31 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v28 = &v55;
        sub_22F136D7C();
        v15 = v48;
        if ((v35 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_27;
    }

    sub_22F12A2E4(v34, v29);
    v28 = v55;
    v36 = sub_22F1229E8(v30, ObjectType);
    if ((v35 & 1) == (v37 & 1))
    {
      a1 = v36;
      v15 = v48;
      if ((v35 & 1) == 0)
      {
LABEL_29:
        v19 = v55;
        v55[(a1 >> 6) + 8] |= 1 << a1;
        v40 = (v19[6] + 16 * a1);
        *v40 = v30;
        v40[1] = ObjectType;
        *(v19[7] + 8 * a1) = v47;

        v41 = v19[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (!v42)
        {
          v19[2] = v43;
LABEL_31:
          v3 = 0;
          if (v18 != v17)
          {
            continue;
          }

          goto LABEL_39;
        }

        goto LABEL_41;
      }

LABEL_27:

      v19 = v55;
      v38 = v55[7];
      v39 = *(v38 + 8 * a1);
      *(v38 + 8 * a1) = v47;

      goto LABEL_31;
    }

    break;
  }

  sub_22F7420C0();
  __break(1u);

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SearchEntityAccumulator()
{
  result = qword_2810AA5E8;
  if (!qword_2810AA5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2D4B78()
{
  result = sub_22F740B90();
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