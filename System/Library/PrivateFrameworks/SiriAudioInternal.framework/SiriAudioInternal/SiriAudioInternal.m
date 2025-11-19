uint64_t variable initialization expression of InternalSignalsManager.lock()
{
  sub_266265D38();
  sub_266265D28();
  v0 = sub_266265E98();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_266265E78();
}

unint64_t sub_26621B510()
{
  result = qword_280069598;
  if (!qword_280069598)
  {
    type metadata accessor for INMediaItemType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069598);
  }

  return result;
}

void *sub_26621B568@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26621B584()
{
  v1 = *v0;
  sub_266267158();
  MEMORY[0x266780330](v1);
  return sub_266267178();
}

uint64_t sub_26621B5F8()
{
  v1 = *v0;
  sub_266267158();
  MEMORY[0x266780330](v1);
  return sub_266267178();
}

void sub_26621B684(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26621B6DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695A8, &qword_266267D88);
  v0 = *(sub_266265BC8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266267D20;
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  sub_266265BA8();
  result = sub_266265BA8();
  qword_28006A4C0 = v3;
  return result;
}

uint64_t sub_26621BC00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D20, &qword_266267D80);
  v0 = sub_266266768();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266267D30;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D609A8], v0);
  v6(v5 + v2, *MEMORY[0x277D60998], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D609A0], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D60990], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277D60988], v0);
  v6(v5 + 5 * v2, *MEMORY[0x277D609C0], v0);
  v6(v5 + 6 * v2, *MEMORY[0x277D609B0], v0);
  result = (v6)(v5 + 7 * v2, *MEMORY[0x277D609B8], v0);
  qword_28006A4C8 = v4;
  return result;
}

uint64_t sub_26621BDF4()
{
  v0 = sub_266266778();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266266788();
  qword_28006A4D0 = result;
  return result;
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

uint64_t sub_26621BED0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void INLocalSearchProvider.search(for:requesterSharedUserID:bundleIdentifier:intent:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id), char *a8)
{
  v98 = a6;
  v99 = a2;
  v102 = a4;
  v103 = a5;
  v101 = a3;
  v11 = sub_266266988();
  v109 = *(v11 - 8);
  v12 = v109[8];
  v13 = MEMORY[0x28223BE20](v11);
  v97 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v90 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v93 = &v90 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v94 = &v90 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v92 = &v90 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v91 = &v90 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v107 = &v90 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v90 - v27;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v11, static Logger.default);
  swift_beginAccess();
  v30 = v109[2];
  v104 = v29;
  v105 = v30;
  v106 = (v109 + 2);
  v30(v28, v29, v11);
  v31 = a1;
  v32 = a1;
  v33 = sub_266266968();
  v34 = sub_266266D78();

  v35 = v34;
  v36 = os_log_type_enabled(v33, v34);
  v100 = v28;
  v96 = v31;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v110 = v32;
    v111[0] = v38;
    *v37 = 136315138;
    v39 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695B0, &qword_266267DC8);
    v40 = sub_266266A68();
    v41 = v11;
    v42 = a7;
    v43 = a8;
    v45 = sub_26621EAF0(v40, v44, v111);
    v46 = v43;
    v47 = v42;
    v11 = v41;
    v48 = v109;

    *(v37 + 4) = v45;
    _os_log_impl(&dword_266219000, v33, v35, "INLocalSearchProvider#search Request for local search with INMediaSearch: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266780880](v38, -1, -1);
    MEMORY[0x266780880](v37, -1, -1);

    v49 = v48[1];
    v49(v100, v11);
  }

  else
  {

    v49 = v109[1];
    v49(v100, v11);
    v47 = a7;
    v46 = a8;
  }

  if (sub_266220A70(v32, v102, v103))
  {
    sub_266220B70();
    v50 = sub_266266CC8();
    v105(v107, v104, v11);
    v51 = v50;
    v52 = sub_266266968();
    v53 = sub_266266D78();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&dword_266219000, v52, v53, "INLocalSearchProvider#search Request for local search with podcastShow type (or Podcasts app identifier), falling back with synthetic item: %@", v54, 0xCu);
      sub_266220BBC(v55);
      MEMORY[0x266780880](v55, -1, -1);
      MEMORY[0x266780880](v54, -1, -1);
    }

    v49(v107, v11);
    v57 = v51;
    v47(v51);

    return;
  }

  if (!v32)
  {
    sub_266220B70();
    v64 = sub_266266CA8();
    v105(v97, v104, v11);
    v65 = v64;
    v66 = sub_266266968();
    v67 = sub_266266D78();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      *(v68 + 4) = v65;
      *v69 = v65;
      v70 = v65;
      _os_log_impl(&dword_266219000, v66, v67, "INLocalSearchProvider#search Request for local search with nil INMediaSearch, falling back with synthetic item: %@", v68, 0xCu);
      sub_266220BBC(v69);
      MEMORY[0x266780880](v69, -1, -1);
      MEMORY[0x266780880](v68, -1, -1);
    }

    v49(v97, v11);
    v71 = v65;
    v47(v65);
    goto LABEL_19;
  }

  v58 = v96;
  if (sub_266266ED8())
  {
    v59 = v95;
    v105(v95, v104, v11);
    v60 = sub_266266968();
    v61 = sub_266266D58();
    if (!os_log_type_enabled(v60, v61))
    {
LABEL_15:

      v49(v59, v11);
      v47(0);

      return;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "INLocalSearchProvider#search SkipWholeLibraryFallbackForPlayThis internal signal present. Returning no results.";
LABEL_14:
    _os_log_impl(&dword_266219000, v60, v61, v63, v62, 2u);
    MEMORY[0x266780880](v62, -1, -1);
    goto LABEL_15;
  }

  if (!sub_26621CC94(v58))
  {
    v72 = [v58 mediaType];
    if (qword_2877D9778 == v72 || qword_2877D9780 == v72 || qword_2877D9788 == v72)
    {
      v59 = v93;
      v105(v93, v104, v11);
      v60 = sub_266266968();
      v61 = sub_266266D58();
      if (!os_log_type_enabled(v60, v61))
      {
        goto LABEL_15;
      }

      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "INLocalSearchProvider#search Specified type without search parameter, not searching locally and instead will prompt for value";
      goto LABEL_14;
    }

    sub_266220B70();
    [v58 mediaType];
    v73 = sub_266266CA8();
    v105(v94, v104, v11);
    v74 = v73;
    v75 = sub_266266968();
    v76 = sub_266266D78();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v108 = v11;
      v78 = v77;
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v74;
      *v79 = v74;
      v80 = v74;
      _os_log_impl(&dword_266219000, v75, v76, "INLocalSearchProvider#search Request for non-specific local INMediaSearch, falling back with synthetic item: %@", v78, 0xCu);
      sub_266220BBC(v79);
      MEMORY[0x266780880](v79, -1, -1);
      v11 = v108;
      MEMORY[0x266780880](v78, -1, -1);
    }

    v49(v94, v11);
    v71 = v74;
    v47(v74);

LABEL_19:
    return;
  }

  if (sub_266266E08())
  {
    v59 = v92;
    v105(v92, v104, v11);
    v60 = sub_266266968();
    v61 = sub_266266D78();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_15;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "INLocalSearchProvider#search Skipping actual local search as isPommesResponse=true";
    goto LABEL_14;
  }

  v107 = v46;
  v81 = v91;
  v105(v91, v104, v11);
  v82 = sub_266266968();
  v83 = sub_266266D58();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_266219000, v82, v83, "INLocalSearchProvider#search using actual local search (likely CoreSpotlight...", v84, 2u);
    MEMORY[0x266780880](v84, -1, -1);
  }

  v49(v81, v11);
  sub_266220C24(v108, v111);
  v108 = v111[4];
  v109 = __swift_project_boxed_opaque_existential_1(v111, v111[3]);
  v106 = sub_266266D28();
  v105 = sub_266266D38();
  sub_266266D18();
  v85 = [v58 genreNames];
  if (v85)
  {
    v86 = v85;
    v87 = v47;
    sub_266266BB8();
  }

  else
  {
    v87 = v47;
  }

  [v58 mediaType];
  v88 = swift_allocObject();
  v88[2] = v87;
  v88[3] = v107;
  v88[4] = v58;
  v89 = v58;

  sub_266266558();

  __swift_destroy_boxed_opaque_existential_1Tm(v111);
}

BOOL sub_26621CAD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_26621CB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_266220E78(a4, a5);
  }

  while ((sub_266266A38() & 1) == 0);
  return v10 != v11;
}

BOOL sub_26621CC94(void *a1)
{
  v2 = [a1 mediaName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_266266A58();
    v6 = v5;

    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7;
  }

  if (v8)
  {
    return 1;
  }

  v9 = [a1 artistName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_266266A58();
    v13 = v12;

    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14;
  }

  if (v15)
  {
    return 1;
  }

  v17 = [a1 genreNames];
  if (v17)
  {
    v18 = v17;
    v19 = sub_266266BB8();

    v20 = *(v19 + 16);

    if (v20)
    {
      return 1;
    }
  }

  v21 = [a1 moodNames];
  if (v21 && (v22 = v21, v23 = sub_266266BB8(), v22, v24 = *(v23 + 16), , v24))
  {
    return 1;
  }

  else
  {
    return [a1 mediaType] == 20;
  }
}

void sub_26621CE10(void *a1, void (*a2)(void *), uint64_t a3, char *a4)
{
  v220 = a4;
  v7 = sub_266265DD8();
  v231 = *(v7 - 8);
  v232 = v7;
  v8 = *(v231 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v226 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v227 = &v199 - v12;
  MEMORY[0x28223BE20](v11);
  v216 = &v199 - v13;
  v230 = sub_266266058();
  v14 = *(v230 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v230);
  v229 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v228 = &v199 - v18;
  v225 = sub_266266988();
  v19 = *(v225 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v225);
  v23 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v199 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  v34 = MEMORY[0x28223BE20](&v199 - v33);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = MEMORY[0x28223BE20](v35);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v199 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v51 = &v199 - v50;
  v233 = a1;
  if (a1)
  {
    if (v233[2])
    {
      v218 = v233[2];
      v211 = v46;
      v214 = v45;
      v207 = v44;
      v217 = v43;
      v208 = v42;
      v204 = v41;
      v209 = v40;
      v205 = v49;
      v206 = v48;
      v203 = v47;
      v219 = v19;
      v212 = a3;
      v213 = a2;
      v215 = (*(v231 + 80) + 32) & ~*(v231 + 80);
      v52 = v233 + v215;

      v53 = v228;
      sub_266265D78();
      v54 = *MEMORY[0x277D55648];
      v55 = v14[13];
      v56 = v229;
      v57 = v230;
      v223 = v14 + 13;
      v222 = v55;
      v55(v229, v54, v230);
      sub_266220E78(&qword_2800695D0, MEMORY[0x277D55650]);
      v58 = sub_266266A38();
      v59 = v14[1];
      v59(v56, v57);
      v224 = v14 + 1;
      v221 = v59;
      v59(v53, v57);
      if (v58)
      {
        v60 = v213;
        v61 = v219;
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v62 = v225;
        v63 = __swift_project_value_buffer(v225, static Logger.default);
        swift_beginAccess();
        (*(v61 + 16))(v26, v63, v62);
        v64 = sub_266266968();
        v65 = sub_266266D78();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_266219000, v64, v65, "INLocalSearchProvider#search Found playlist item as first in results", v66, 2u);
          v67 = v66;
          v61 = v219;
          MEMORY[0x266780880](v67, -1, -1);
        }

        (*(v61 + 8))(v26, v225);
        sub_266220B70();
        sub_266265D68();
        sub_266265DA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695D8, &qword_266267E40);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_266267DB0;
        *(v68 + 32) = sub_266265D68();
        *(v68 + 40) = v69;
        v70 = sub_266266C88();

        v60(v70);
LABEL_78:

        return;
      }

      v85 = v52;
      v201 = sub_266265D68();
      v202 = v86;
      v87 = v219;
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v88 = v225;
      v89 = __swift_project_value_buffer(v225, static Logger.default);
      swift_beginAccess();
      v90 = v87 + 16;
      v210 = *(v87 + 16);
      v210(v39, v89, v88);
      v91 = sub_266266968();
      v92 = sub_266266D78();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = v89;
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_266219000, v91, v92, "INLocalSearchProvider#search Evaluating what the title/artist/sort of INMediaItem should be from results and input", v94, 2u);
        v95 = v94;
        v89 = v93;
        MEMORY[0x266780880](v95, -1, -1);
      }

      v98 = *(v87 + 8);
      v97 = v87 + 8;
      v96 = v98;
      (v98)(v39, v88);
      v99 = v218 - 1;
      if (v218 == 1)
      {
        v100 = v216;
        v199 = sub_266265DA8();
        v200 = v101;
        v207 = sub_266265DC8();
        v208 = v102;
        v103 = v211;
        v210(v211, v89, v88);
        v104 = sub_266266968();
        v105 = sub_266266D78();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_266219000, v104, v105, "INLocalSearchProvider#search Using single-result title/artist", v106, 2u);
          MEMORY[0x266780880](v106, -1, -1);
        }

        (v96)(v103, v88);
        v107 = v232;
        goto LABEL_28;
      }

      v109 = v220;
      v110 = [v220 albumName];
      if (v110)
      {
        v220 = v96;

        v111 = sub_266265D88();
        v113 = v112;
        v207 = sub_266265DC8();
        v208 = v114;
        v210(v214, v89, v88);
        v115 = sub_266266968();
        v116 = sub_266266D78();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_266219000, v115, v116, "INLocalSearchProvider#search Using album from search request", v117, 2u);
          MEMORY[0x266780880](v117, -1, -1);
        }

        (v220)(v214, v88);
        v210(v217, v89, v88);
        v118 = sub_266266968();
        v119 = sub_266266D78();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_266219000, v118, v119, "INLocalSearchProvider#search Sorting by album, track", v120, 2u);
          MEMORY[0x266780880](v120, -1, -1);
        }

        (v220)(v217, v88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = sub_26624ABA8(v233);
        }

        v121 = v233[2];
        v235 = v233 + v215;
        v236 = v121;
        sub_26621F0D0(&v235);
        v200 = v113;
        v199 = v111;
        v108 = v216;
        v107 = v232;
        while (1)
        {
          v123 = v233[2];
          if (!v123)
          {
            break;
          }

          v137 = 0;
          v220 = v233 + v215;
          v219 = v231 + 16;
          LODWORD(v218) = *MEMORY[0x277D55640];
          v214 = (v231 + 8);
          v217 = (v231 + 32);
          v225 = MEMORY[0x277D84F90];
          v151 = v228;
          while (v137 < v233[2])
          {
            v152 = *(v231 + 72);
            (*(v231 + 16))(v108, &v220[v152 * v137], v107);
            sub_266265D78();
            v154 = v229;
            v153 = v230;
            v222(v229, v218, v230);
            v155 = v107;
            v156 = sub_266266048();
            v88 = v221;
            v221(v154, v153);
            v88(v151, v153);
            if (v156)
            {
              v157 = v123;
              v158 = *v217;
              (*v217)(v226, v108, v155);
              v159 = v225;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v235 = v159;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_266261BA4(0, *(v159 + 16) + 1, 1);
                v159 = v235;
              }

              v162 = *(v159 + 16);
              v161 = *(v159 + 24);
              if (v162 >= v161 >> 1)
              {
                sub_266261BA4(v161 > 1, v162 + 1, 1);
                v159 = v235;
              }

              *(v159 + 16) = v162 + 1;
              v225 = v159;
              v107 = v232;
              v158((v159 + v215 + v162 * v152), v226, v232);
              v108 = v216;
              v123 = v157;
            }

            else
            {
              (*v214)(v108, v155);
              v107 = v155;
            }

            if (v123 == ++v137)
            {
              goto LABEL_70;
            }
          }

          __break(1u);
LABEL_91:
          v188 = sub_2662670D8();

          if (v188)
          {
LABEL_92:
            v199 = sub_266265D88();
            v200 = v189;
            v207 = sub_266265DC8();
            v208 = v190;
            v210(v204, v107, v88);
            v191 = sub_266266968();
            v192 = sub_266266D78();
            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              *v193 = 0;
              _os_log_impl(&dword_266219000, v191, v192, "INLocalSearchProvider#search Matching album from results to trigger album response", v193, 2u);
              MEMORY[0x266780880](v193, -1, -1);
            }

            (v137)(v204, v88);
            v210(v205, v107, v88);
            v194 = sub_266266968();
            v195 = sub_266266D78();
            v196 = os_log_type_enabled(v194, v195);
            v107 = v232;
            if (v196)
            {
              v197 = swift_slowAlloc();
              *v197 = 0;
              _os_log_impl(&dword_266219000, v194, v195, "INLocalSearchProvider#search Sorting by album, track", v197, 2u);
              MEMORY[0x266780880](v197, -1, -1);
            }

            (v137)(v205, v88);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v233 = sub_26624ABA8(v233);
            }

            v198 = v233[2];
            v235 = v233 + v215;
            v236 = v198;
            sub_26621F0D0(&v235);
LABEL_57:
            v108 = v216;
          }

          else
          {
LABEL_81:
            v176 = v220;
            v177 = [v220 v123[179]];
            if (v177)
            {
              v178 = v177;
              v199 = sub_266266A58();
              v200 = v179;
            }

            else
            {
              v199 = 0;
              v200 = 0;
            }

            v100 = v216;
            v180 = [v176 artistName];
            v181 = v107;
            if (v180)
            {
              v182 = v180;
              v207 = sub_266266A58();
              v208 = v183;
            }

            else
            {
              v207 = 0;
              v208 = 0;
            }

            v107 = v232;
            v184 = v206;
            v210(v206, v181, v88);
            v185 = sub_266266968();
            v186 = sub_266266D78();
            if (os_log_type_enabled(v185, v186))
            {
              v187 = swift_slowAlloc();
              *v187 = 0;
              _os_log_impl(&dword_266219000, v185, v186, "INLocalSearchProvider#search Falling back on media name for title", v187, 2u);
              MEMORY[0x266780880](v187, -1, -1);
            }

            (v137)(v184, v88);
LABEL_28:
            v108 = v100;
          }
        }

        v225 = MEMORY[0x277D84F90];
LABEL_70:
        v163 = *(v225 + 16);
        if (v163)
        {
          v164 = v225 + v215;
          v165 = v231 + 16;
          v166 = *(v231 + 16);
          v231 = *(v231 + 72);
          v167 = (v165 - 8);
          v168 = MEMORY[0x277D84F90];
          do
          {
            v169 = v227;
            v166(v227, v164, v107);
            v170 = sub_266265D68();
            v172 = v171;
            (*v167)(v169, v107);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v168 = sub_2662616F4(0, *(v168 + 2) + 1, 1, v168);
            }

            v174 = *(v168 + 2);
            v173 = *(v168 + 3);
            if (v174 >= v173 >> 1)
            {
              v168 = sub_2662616F4((v173 > 1), v174 + 1, 1, v168);
            }

            *(v168 + 2) = v174 + 1;
            v175 = &v168[16 * v174];
            *(v175 + 4) = v170;
            *(v175 + 5) = v172;
            v107 = v232;
            v164 += v231;
            --v163;
          }

          while (v163);
        }

        sub_266220B70();
        v70 = sub_266266C88();

        v213(v70);
        goto LABEL_78;
      }

      v107 = v89;
      v122 = [v109 artistName];
      v123 = &off_279BCA000;
      if (v122)
      {

        v124 = [v109 mediaName];
        if (!v124)
        {
          v199 = sub_266265DC8();
          v200 = v145;
          v146 = v207;
          v210(v207, v107, v88);
          v147 = sub_266266968();
          v148 = sub_266266D78();
          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            *v149 = 0;
            _os_log_impl(&dword_266219000, v147, v148, "INLocalSearchProvider#search Using artist from search request", v149, 2u);
            MEMORY[0x266780880](v149, -1, -1);
          }

          (v96)(v146, v88);
          v207 = 0;
          v150 = &v234;
          goto LABEL_56;
        }
      }

      v219 = v97;
      v125 = [v109 genreNames];
      if (v125)
      {
        v126 = v125;
        v127 = v90;
        v128 = sub_266266BB8();

        v129 = *(v128 + 16);
        v90 = v127;
        v109 = v220;

        if (v129)
        {
          v199 = sub_266265D98();
          v200 = v130;
          v131 = v208;
          v210(v208, v107, v88);
          v132 = sub_266266968();
          v133 = sub_266266D78();
          v134 = os_log_type_enabled(v132, v133);
          v107 = v232;
          v100 = v216;
          if (v134)
          {
            v135 = swift_slowAlloc();
            *v135 = 0;
            _os_log_impl(&dword_266219000, v132, v133, "INLocalSearchProvider#search Using genre title/artist", v135, 2u);
            MEMORY[0x266780880](v135, -1, -1);
          }

          (v96)(v131, v88);
          v207 = 0;
          v208 = 0;
          goto LABEL_28;
        }
      }

      v136 = [v109 mediaName];
      if (v136)
      {
        v137 = v96;

        sub_266265D88();
        if (!v138)
        {
          goto LABEL_81;
        }

        v218 = v90;

        v139 = sub_266265D88();
        v141 = v140;
        v142 = &v85[*(v231 + 72) * v99];
        v143 = sub_266265D88();
        if (v141)
        {
          if (v144)
          {
            if (v139 == v143 && v141 == v144)
            {

              goto LABEL_92;
            }

            goto LABEL_91;
          }
        }

        else if (!v144)
        {
          goto LABEL_92;
        }

        goto LABEL_81;
      }

      v207 = 0;
      v208 = 0;
      v199 = 0;
      v150 = &v232;
LABEL_56:
      *(v150 - 32) = 0;
      v107 = v232;
      goto LABEL_57;
    }

    v77 = qword_280069528;

    if (v77 != -1)
    {
      swift_once();
    }

    v78 = v225;
    v79 = __swift_project_value_buffer(v225, static Logger.default);
    swift_beginAccess();
    (*(v19 + 16))(v23, v79, v78);
    v80 = sub_266266968();
    v81 = sub_266266D78();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v19;
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_266219000, v80, v81, "INLocalSearchProvider#search Results from search non-nil, but empty", v83, 2u);
      v84 = v83;
      v19 = v82;
      MEMORY[0x266780880](v84, -1, -1);
    }

    (*(v19 + 8))(v23, v78);
    a2(0);
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v71 = v225;
    v72 = __swift_project_value_buffer(v225, static Logger.default);
    swift_beginAccess();
    v73 = v19;
    (*(v19 + 16))(v51, v72, v71);
    v74 = sub_266266968();
    v75 = sub_266266D78();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_266219000, v74, v75, "INLocalSearchProvider#search Missing result from local search", v76, 2u);
      MEMORY[0x266780880](v76, -1, -1);
    }

    (*(v73 + 8))(v51, v71);
    a2(0);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26621EA20(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26621EA94(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26621EAF0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26621EAF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26621EBBC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_266220E18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26621EBBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26621ECC8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_266267068();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26621ECC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26621ED14(a1, a2);
  sub_26621EE44(&unk_2877D9730);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26621ED14(uint64_t a1, unint64_t a2)
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

  v6 = sub_266225AD8(v5, 0);
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

  result = sub_266267068();
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
        v10 = sub_266266AF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_266225AD8(v10, 0);
        result = sub_266267028();
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

uint64_t sub_26621EE44(uint64_t result)
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

  result = sub_26621EF30(result, v12, 1, v3);
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

char *sub_26621EF30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695C8, &qword_266267E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

_BYTE **sub_26621F024(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26621F05C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_26621F0D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2662670B8();
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
        sub_266265DD8();
        v6 = sub_266266BE8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_266265DD8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26621F558(v8, v9, a1, v4);
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
    return sub_26621F1FC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26621F1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_266265DD8();
  v9 = *(*(v8 - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v57 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v45 - v13;
  result = MEMORY[0x28223BE20](v12);
  v47 = a2;
  if (a3 != a2)
  {
    v17 = &v45 - v15;
    v18 = *a4;
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v21 = *(v19 + 56);
    v58 = v20;
    v59 = (v19 - 8);
    v52 = v19;
    v55 = (v19 + 16);
    v56 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v54 = -v21;
    v23 = a1 - a3;
    v46 = v21;
    v24 = v18 + v21 * a3;
LABEL_7:
    v50 = v22;
    v51 = a3;
    v48 = v24;
    v49 = v23;
    v27 = v22;
    while (1)
    {
      v28 = v58;
      v58(v17, v24, v8);
      v28(v60, v27, v8);
      sub_266265D88();
      v29 = v17;
      if (!v30)
      {
        goto LABEL_11;
      }

      sub_266265D88();
      if (!v31)
      {
        v25 = *v59;
LABEL_5:
        v26 = v25;
        v25(v60, v8);
        result = (v26)(v17, v8);
LABEL_6:
        a3 = v51 + 1;
        v22 = v50 + v46;
        v23 = v49 - 1;
        v24 = v48 + v46;
        if (v51 + 1 == v47)
        {
          return result;
        }

        goto LABEL_7;
      }

      v32 = sub_266265DB8();
      v29 = v17;
      if ((v33 & 1) == 0)
      {
        v53 = v32;
        v35 = v60;
        v36 = sub_266265DB8();
        v25 = *v59;
        if (v37)
        {
          v17 = v29;
          goto LABEL_5;
        }

        v38 = v36;
        v39 = *v59;
        v25(v35, v8);
        result = (v39)(v29, v8);
        v17 = v29;
        if (v38 >= v53)
        {
          goto LABEL_6;
        }
      }

      else
      {
LABEL_11:
        v34 = *v59;
        (*v59)(v60, v8);
        result = (v34)(v29, v8);
        v17 = v29;
      }

      if (!v56)
      {
        __break(1u);
        return result;
      }

      v40 = *v55;
      v41 = v17;
      v42 = v57;
      (*v55)(v57, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v43 = v42;
      v17 = v41;
      result = (v40)(v27, v43, v8);
      v27 += v54;
      v24 += v54;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_26621F558(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v153 = a1;
  v9 = sub_266265DD8();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v156 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v167 = &v147 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v164 = &v147 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v147 - v20;
  MEMORY[0x28223BE20](v19);
  result = MEMORY[0x28223BE20](&v147 - v22);
  v28 = a3[1];
  v161 = v25;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_119:
    v5 = *v153;
    if (!*v153)
    {
      goto LABEL_158;
    }

    a4 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v161;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a4;
LABEL_122:
      v174 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*a3)
        {
          v143 = *(result + 16 * a4);
          v144 = result;
          v145 = *(result + 16 * (a4 - 1) + 40);
          sub_266220150(*a3 + *(v9 + 72) * v143, *a3 + *(v9 + 72) * *(result + 16 * (a4 - 1) + 32), (*a3 + *(v9 + 72) * v145), v5);
          if (v6)
          {
          }

          if (v145 < v143)
          {
            goto LABEL_145;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v144 = sub_266220874(v144);
          }

          if (a4 - 2 >= *(v144 + 2))
          {
            goto LABEL_146;
          }

          v146 = &v144[16 * a4];
          *v146 = v143;
          *(v146 + 1) = v145;
          v174 = v144;
          sub_2662207E8(a4 - 1);
          result = v174;
          a4 = *(v174 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_156;
      }
    }

LABEL_152:
    result = sub_266220874(a4);
    goto LABEL_122;
  }

  v148 = &v147 - v24;
  v149 = result;
  v163 = v21;
  v172 = v27;
  v173 = v26;
  v147 = a4;
  v29 = 0;
  v170 = (v25 + 8);
  v171 = v25 + 16;
  v169 = (v25 + 32);
  v30 = MEMORY[0x277D84F90];
  v154 = a3;
  while (2)
  {
    v31 = v29 + 1;
    v152 = v30;
    if (v29 + 1 >= v28)
    {
      goto LABEL_41;
    }

    v159 = v28;
    v32 = *a3;
    v33 = *(v161 + 72);
    v162 = v29 + 1;
    v34 = *(v161 + 16);
    v35 = v148;
    v34(v148, v32 + v33 * v31, v9);
    v165 = v33;
    v36 = v149;
    v158 = v34;
    v34(v149, v32 + v33 * v29, v9);
    sub_266265D88();
    v150 = v6;
    if (!v37)
    {
      goto LABEL_8;
    }

    sub_266265D88();
    if (!v38)
    {
LABEL_11:
      LODWORD(v160) = 0;
      goto LABEL_12;
    }

    v39 = sub_266265DB8();
    if ((v40 & 1) == 0)
    {
      v42 = v39;
      v43 = sub_266265DB8();
      if ((v44 & 1) == 0)
      {
        v41 = v43 < v42;
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_8:
    v41 = 1;
LABEL_9:
    LODWORD(v160) = v41;
LABEL_12:
    v45 = *v170;
    (*v170)(v36, v9);
    v157 = v45;
    result = (v45)(v35, v9);
    v151 = v29;
    v46 = v29 + 2;
    v47 = v165 * (v29 + 2);
    v5 = v32 + v47;
    v48 = v162;
    v49 = v165 * v162;
    v50 = v32 + v165 * v162;
    do
    {
      v52 = v46;
      v55 = v48;
      a4 = v49;
      v53 = v47;
      if (v46 >= v159)
      {
        break;
      }

      v166 = v48;
      v168 = v47;
      v56 = v46;
      v57 = v158;
      v158(v163, v5, v9);
      v57(v164, v50, v9);
      sub_266265D88();
      if (v58)
      {

        sub_266265D88();
        v52 = v56;
        if (v59)
        {

          v60 = sub_266265DB8();
          v53 = v168;
          if (v61)
          {
            v51 = 1;
          }

          else
          {
            v62 = sub_266265DB8() < v60;
            v51 = (v63 & 1) == 0 && v62;
          }

          goto LABEL_15;
        }

        v51 = 0;
      }

      else
      {
        v51 = 1;
        v52 = v56;
      }

      v53 = v168;
LABEL_15:
      v6 = v170;
      v54 = v157;
      v157(v164, v9);
      result = (v54)(v163, v9);
      v46 = v52 + 1;
      v55 = v166;
      v5 += v165;
      v50 += v165;
      v48 = v166 + 1;
      v49 = a4 + v165;
      v47 = &v53[v165];
    }

    while (v160 == v51);
    a3 = v154;
    if (!v160)
    {
      goto LABEL_39;
    }

    v64 = v151;
    if (v52 < v151)
    {
      goto LABEL_149;
    }

    if (v151 >= v52)
    {
      v31 = v52;
      v30 = v152;
      v6 = v150;
      v29 = v151;
    }

    else
    {
      v5 = v151 * v165;
      do
      {
        if (v64 != v55)
        {
          v66 = *a3;
          if (!*a3)
          {
            goto LABEL_155;
          }

          v67 = v55;
          v168 = *v169;
          (v168)(v156, v66 + v5, v9);
          if (v5 < a4 || v66 + v5 >= &v53[v66])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v5 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = (v168)(v66 + a4, v156, v9);
          v55 = v67;
          a3 = v154;
        }

        ++v64;
        a4 -= v165;
        v53 -= v165;
        v5 += v165;
      }

      while (v64 < v55--);
LABEL_39:
      v31 = v52;
      v30 = v152;
      v6 = v150;
      v29 = v151;
    }

LABEL_41:
    v68 = a3[1];
    v162 = v31;
    if (v31 >= v68)
    {
      goto LABEL_66;
    }

    v111 = __OFSUB__(v31, v29);
    v69 = v31 - v29;
    if (v111)
    {
      goto LABEL_148;
    }

    if (v69 >= v147)
    {
LABEL_66:
      if (v162 < v29)
      {
        goto LABEL_147;
      }

      v95 = v30;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v30 = v95;
      }

      else
      {
        result = sub_26622096C(0, *(v95 + 16) + 1, 1, v95);
        v30 = result;
      }

      a4 = *(v30 + 16);
      v96 = *(v30 + 24);
      v97 = a4 + 1;
      if (a4 >= v96 >> 1)
      {
        result = sub_26622096C((v96 > 1), a4 + 1, 1, v30);
        v30 = result;
      }

      *(v30 + 16) = v97;
      v98 = v30 + 16 * a4;
      v99 = v162;
      *(v98 + 32) = v29;
      *(v98 + 40) = v99;
      v5 = *v153;
      if (!*v153)
      {
        goto LABEL_157;
      }

      if (!a4)
      {
LABEL_3:
        v28 = a3[1];
        v29 = v162;
        if (v162 >= v28)
        {
          goto LABEL_119;
        }

        continue;
      }

      while (1)
      {
        v100 = v97 - 1;
        if (v97 >= 4)
        {
          break;
        }

        if (v97 == 3)
        {
          v101 = *(v30 + 32);
          v102 = *(v30 + 40);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_86:
          if (v104)
          {
            goto LABEL_136;
          }

          v117 = (v30 + 16 * v97);
          v119 = *v117;
          v118 = v117[1];
          v120 = __OFSUB__(v118, v119);
          v121 = v118 - v119;
          v122 = v120;
          if (v120)
          {
            goto LABEL_139;
          }

          v123 = (v30 + 32 + 16 * v100);
          v125 = *v123;
          v124 = v123[1];
          v111 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v111)
          {
            goto LABEL_142;
          }

          if (__OFADD__(v121, v126))
          {
            goto LABEL_143;
          }

          if (v121 + v126 >= v103)
          {
            if (v103 < v126)
            {
              v100 = v97 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v127 = (v30 + 16 * v97);
        v129 = *v127;
        v128 = v127[1];
        v111 = __OFSUB__(v128, v129);
        v121 = v128 - v129;
        v122 = v111;
LABEL_100:
        if (v122)
        {
          goto LABEL_138;
        }

        v130 = v30 + 16 * v100;
        v132 = *(v130 + 32);
        v131 = *(v130 + 40);
        v111 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v111)
        {
          goto LABEL_141;
        }

        if (v133 < v121)
        {
          goto LABEL_3;
        }

LABEL_107:
        a4 = v100 - 1;
        if (v100 - 1 >= v97)
        {
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
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*a3)
        {
          goto LABEL_154;
        }

        v138 = v30;
        v139 = *(v30 + 32 + 16 * a4);
        v140 = *(v30 + 32 + 16 * v100 + 8);
        sub_266220150(*a3 + *(v161 + 72) * v139, *a3 + *(v161 + 72) * *(v30 + 32 + 16 * v100), (*a3 + *(v161 + 72) * v140), v5);
        if (v6)
        {
        }

        if (v140 < v139)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_266220874(v138);
        }

        if (a4 >= *(v138 + 2))
        {
          goto LABEL_133;
        }

        v141 = &v138[16 * a4];
        *(v141 + 4) = v139;
        *(v141 + 5) = v140;
        v174 = v138;
        result = sub_2662207E8(v100);
        v30 = v174;
        v97 = *(v174 + 16);
        if (v97 <= 1)
        {
          goto LABEL_3;
        }
      }

      v105 = v30 + 32 + 16 * v97;
      v106 = *(v105 - 64);
      v107 = *(v105 - 56);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_134;
      }

      v110 = *(v105 - 48);
      v109 = *(v105 - 40);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_135;
      }

      v112 = (v30 + 16 * v97);
      v114 = *v112;
      v113 = v112[1];
      v111 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v111)
      {
        goto LABEL_137;
      }

      v111 = __OFADD__(v103, v115);
      v116 = v103 + v115;
      if (v111)
      {
        goto LABEL_140;
      }

      if (v116 >= v108)
      {
        v134 = (v30 + 32 + 16 * v100);
        v136 = *v134;
        v135 = v134[1];
        v111 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v111)
        {
          goto LABEL_144;
        }

        if (v103 < v137)
        {
          v100 = v97 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

    break;
  }

  if (__OFADD__(v29, v147))
  {
    goto LABEL_150;
  }

  if (v29 + v147 >= v68)
  {
    v70 = v68;
  }

  else
  {
    v70 = (v29 + v147);
  }

  if (v70 < v29)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v71 = v162;
  if (v162 == v70)
  {
    goto LABEL_66;
  }

  v150 = v6;
  v72 = *a3;
  v73 = *(v161 + 72);
  v168 = *(v161 + 16);
  v74 = v72 + v73 * (v162 - 1);
  v165 = -v73;
  v151 = v29;
  v75 = v29 - v162;
  v166 = v72;
  v155 = v73;
  v5 = v72 + v162 * v73;
  v157 = v70;
LABEL_54:
  v162 = v71;
  v158 = v5;
  v159 = v75;
  v160 = v74;
  while (1)
  {
    v77 = v9;
    v78 = v172;
    v79 = v168;
    (v168)(v172, v5, v77, v30);
    v80 = v173;
    v81 = v77;
    (v79)(v173, v74, v77);
    sub_266265D88();
    if (!v82)
    {
      goto LABEL_58;
    }

    sub_266265D88();
    if (!v83)
    {
      a4 = v170;
      v76 = *v170;
LABEL_52:
      v9 = v81;
      v76(v173, v81);
      v76(v172, v81);
LABEL_53:
      v71 = v162 + 1;
      v74 = v160 + v155;
      v75 = v159 - 1;
      v5 = v158 + v155;
      if ((v162 + 1) == v157)
      {
        v162 = v157;
        v6 = v150;
        a3 = v154;
        v30 = v152;
        v29 = v151;
        goto LABEL_66;
      }

      goto LABEL_54;
    }

    v80 = v173;
    v84 = sub_266265DB8();
    v78 = v172;
    if ((v85 & 1) == 0)
    {
      v88 = v84;
      v89 = sub_266265DB8();
      a4 = v170;
      v76 = *v170;
      if (v90)
      {
        goto LABEL_52;
      }

      v91 = v89;
      v76(v173, v81);
      v92 = v78;
      v9 = v81;
      result = (v76)(v92, v81);
      if (v91 >= v88)
      {
        goto LABEL_53;
      }
    }

    else
    {
LABEL_58:
      v86 = *v170;
      (*v170)(v80, v81);
      v87 = v78;
      v9 = v81;
      result = (v86)(v87, v81);
    }

    if (!v166)
    {
      break;
    }

    a4 = *v169;
    v93 = v167;
    (*v169)(v167, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v74, v93, v9);
    v74 += v165;
    v5 += v165;
    if (__CFADD__(v75++, 1))
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
  return result;
}

uint64_t sub_266220150(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_266265DD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v71 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v60 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  result = MEMORY[0x28223BE20](v15);
  v20 = &v60 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_82;
  }

  v23 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_83;
  }

  v24 = (a2 - a1) / v22;
  v75 = a1;
  v74 = a4;
  v72 = v22;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_50:
        v44 = a4 + v26;
        if (v26 < 1)
        {
          goto LABEL_79;
        }

        v64 = (v9 + 8);
        v65 = (v9 + 16);
        v45 = -v22;
        v46 = a4 + v26;
        v66 = -v22;
        v67 = a4;
        while (1)
        {
          v61 = v44;
          v47 = a2;
          v48 = (a2 + v45);
          v68 = v47;
          v69 = v48;
          while (1)
          {
            if (v47 <= a1)
            {
              v75 = v47;
              v73 = v61;
              goto LABEL_80;
            }

            v49 = a3;
            v63 = v44;
            v50 = *v65;
            v72 = v46 + v45;
            v50(v70);
            (v50)(v71, v48, v8);
            sub_266265D88();
            if (!v51)
            {
              v55 = 1;
              v45 = v66;
              goto LABEL_65;
            }

            sub_266265D88();
            if (!v52)
            {
              goto LABEL_62;
            }

            v53 = sub_266265DB8();
            if ((v54 & 1) == 0)
            {
              v62 = v53;
              v56 = sub_266265DB8();
              if ((v57 & 1) == 0)
              {
                v55 = v56 < v62;
                goto LABEL_64;
              }

LABEL_62:
              v55 = 0;
              goto LABEL_64;
            }

            v55 = 1;
LABEL_64:
            v45 = v66;
LABEL_65:
            a3 += v45;
            v58 = *v64;
            (*v64)(v71, v8);
            v58(v70, v8);
            if (v55)
            {
              break;
            }

            v59 = v72;
            v44 = v72;
            v48 = v69;
            if (v49 < v46 || a3 >= v46)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v46 = v44;
            v47 = v68;
            if (v59 <= v67)
            {
              a2 = v68;
              goto LABEL_79;
            }
          }

          a2 = v69;
          if (v49 < v68 || a3 >= v68)
          {
            swift_arrayInitWithTakeFrontToBack();
            v44 = v63;
          }

          else
          {
            v44 = v63;
            if (v49 != v68)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          if (v46 <= v67)
          {
LABEL_79:
            v75 = a2;
            v73 = v44;
            goto LABEL_80;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v72;
    goto LABEL_50;
  }

  v25 = v24 * v22;
  if (a4 < a1 || a1 + v25 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v70 = a3;
  v71 = (a4 + v25);
  v73 = a4 + v25;
  if (v25 >= 1 && a2 < a3)
  {
    v28 = *(v9 + 16);
    v68 = v9 + 16;
    v69 = v28;
    v29 = (v9 + 8);
    while (1)
    {
      v30 = v69;
      v69(v20, a2, v8);
      v30(v17, a4, v8);
      sub_266265D88();
      if (!v31)
      {
LABEL_24:
        v35 = *v29;
        (*v29)(v17, v8);
        v35(v20, v8);
LABEL_25:
        v36 = v72;
        v37 = a2 + v72;
        if (a1 < a2 || a1 >= v37)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_30:
          v36 = v72;
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_30;
        }

        a2 = v37;
        goto LABEL_43;
      }

      sub_266265D88();
      if (!v32)
      {
        break;
      }

      v33 = sub_266265DB8();
      if (v34)
      {
        goto LABEL_24;
      }

      v67 = v33;
      v38 = a4;
      v40 = sub_266265DB8();
      v39 = *v29;
      if (v41)
      {
        v39(v17, v8);
        goto LABEL_35;
      }

      v43 = v40;
      v39(v17, v8);
      v39(v20, v8);
      a4 = v38;
      if (v43 < v67)
      {
        goto LABEL_25;
      }

LABEL_36:
      v36 = v72;
      v42 = a4 + v72;
      if (a1 < a4 || a1 >= v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_41;
      }

      if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_41:
        v36 = v72;
      }

      v74 = v42;
      a4 = v42;
LABEL_43:
      a1 += v36;
      v75 = a1;
      if (a4 >= v71 || a2 >= v70)
      {
        goto LABEL_80;
      }
    }

    v38 = a4;
    v39 = *v29;
    (*v29)(v17, v8);
LABEL_35:
    v39(v20, v8);
    a4 = v38;
    goto LABEL_36;
  }

LABEL_80:
  sub_266220888(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_2662207E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_266220874(v3);
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

uint64_t sub_266220888(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_266265DD8();
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

char *sub_26622096C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800695E0, &qword_266267E48);
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

uint64_t sub_266220A70(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_26621CC94(v5);

    if (v6)
    {
      return 0;
    }

    v7 = sub_266266D88();
    v8 = [v5 mediaType];
    v9 = v7;
  }

  else
  {
    v9 = sub_266266D88();
    v8 = 0;
  }

  v10 = *(v9 + 16);
  v11 = 32;
  while (v10)
  {
    v12 = *(v9 + v11);
    v11 += 8;
    --v10;
    if (v12 == v8)
    {
      goto LABEL_12;
    }
  }

  v13 = sub_266266278();
  if (!a3)
  {

    return 0;
  }

  if (v13 == a2 && v14 == a3)
  {
LABEL_12:

    return 1;
  }

  v16 = sub_2662670D8();

  return v16 & 1;
}

unint64_t sub_266220B70()
{
  result = qword_2800697A0;
  if (!qword_2800697A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800697A0);
  }

  return result;
}

uint64_t sub_266220BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069710, &qword_266267DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266220C24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_266220CCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_266220D78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266220DC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266220E18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_266220E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266220EC0()
{
  v0 = sub_266266F08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_266266A18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266266A08();
  sub_266266EF8();
  v10 = MEMORY[0x26677F180](0xD000000000000029, 0x8000000266268F70, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_2800695F0 = v10;
  return result;
}

id INUpdateMediaAffinityIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INUpdateMediaAffinityIntentHandler.init()()
{
  v0 = sub_2662662D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_266266528();
  v6 = sub_266266518();
  sub_2662662C8();
  v7 = sub_2662666A8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_266266698();
  [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v11 = sub_266266638();
  v12 = sub_266266628();
  v34 = v11;
  v35 = MEMORY[0x277D557B0];
  v33[0] = v12;
  v31 = sub_266266418();
  v32 = MEMORY[0x277D556E0];
  __swift_allocate_boxed_opaque_existential_1(v30);
  sub_266266408();
  v13 = sub_266266088();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_266266068();
  v17 = sub_2662668E8();
  v18 = sub_2662668D8();
  v34 = v17;
  v35 = MEMORY[0x277D5F680];
  v33[0] = v18;
  v31 = v5;
  v32 = MEMORY[0x277D55758];
  v30[0] = v6;
  v29[3] = v0;
  v29[4] = MEMORY[0x277D55698];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(v1 + 16))(boxed_opaque_existential_1, v4, v0);
  v28[3] = v7;
  v28[4] = MEMORY[0x277D557B8];
  v28[0] = v10;
  v27[4] = MEMORY[0x277D55660];
  v27[3] = v13;
  v27[0] = v16;
  v20 = type metadata accessor for INUpdateMediaAffinityIntentHandler();
  v21 = objc_allocWithZone(v20);
  sub_266220C24(v30, &v21[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider]);
  sub_266220C24(v29, &v21[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_nowPlayingProvider]);
  sub_266220C24(v28, &v21[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider]);
  sub_266220C24(v33, &v21[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_playbackController]);
  sub_266220C24(v27, &v21[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_accountProvider]);
  v22 = &v21[OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_suggestionsDonationProvider];
  *v22 = &type metadata for SuggestionsDonationProvider;
  *(v22 + 1) = &protocol witness table for SuggestionsDonationProvider;
  v26.receiver = v21;
  v26.super_class = v20;
  v23 = objc_msgSendSuper2(&v26, sel_init);
  (*(v1 + 8))(v4, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v23;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t INUpdateMediaAffinityIntentHandler.resolveMediaItems(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_266266968();
  v15 = sub_266266D78();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266219000, v14, v15, "INUpdateMediaAffinityIntentHandler#resolveMediaItems...", v16, 2u);
    MEMORY[0x266780880](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v17 = [a1 mediaSearch];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 mediaType];
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 == 0;
  v21 = *(v4 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_nowPlayingProvider + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_nowPlayingProvider), *(v4 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_nowPlayingProvider + 24));
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a1;
  *(v22 + 40) = v19;
  *(v22 + 48) = v20;

  v23 = a1;
  sub_2662663B8();
}

uint64_t sub_266221704(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v179 = a6;
  v181 = a5;
  v174 = a4;
  v183 = a3;
  v184 = a1;
  v186 = a2;
  v6 = sub_266266038();
  v178 = *(v6 - 8);
  v7 = *(v178 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v182 = (&v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v170 = &v169 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v173 = &v169 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v169 = &v169 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v169 - v16;
  v18 = sub_266266988();
  v187 = *(v18 - 8);
  v188 = v18;
  v19 = *(v187 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v177 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v175 = &v169 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v171 = &v169 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v172 = &v169 - v27;
  MEMORY[0x28223BE20](v26);
  v180 = &v169 - v28;
  v29 = sub_266266398();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v176 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v185 = &v169 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v169 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v169 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069700, qword_266268010);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v169 - v43;
  sub_266228524(v184, &v169 - v43, &unk_280069700, qword_266268010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v184 = v30;
    (*(v30 + 32))(v40, v44, v29);
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v45 = v188;
    v46 = __swift_project_value_buffer(v188, static Logger.default);
    swift_beginAccess();
    v47 = v187;
    v48 = v180;
    (*(v187 + 16))(v180, v46, v45);
    (*(v30 + 16))(v38, v40, v29);
    v49 = sub_266266968();
    v50 = sub_266266D68();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v191 = v182;
      *v51 = 136446210;
      sub_2662285EC(&unk_280069720, MEMORY[0x277D556C8]);
      v52 = sub_266267108();
      v53 = v40;
      v55 = v54;
      v56 = v38;
      v57 = *(v30 + 8);
      v57(v56, v29);
      v58 = sub_26621EAF0(v52, v55, &v191);
      v40 = v53;

      *(v51 + 4) = v58;
      _os_log_impl(&dword_266219000, v49, v50, "INUpdateMediaAffinityIntentHandler#resolveMediaItems resolveNowPlayingMediaItem nowPlaying item error: %{public}s", v51, 0xCu);
      v59 = v182;
      __swift_destroy_boxed_opaque_existential_1Tm(v182);
      MEMORY[0x266780880](v59, -1, -1);
      MEMORY[0x266780880](v51, -1, -1);

      (*(v187 + 8))(v48, v188);
    }

    else
    {

      v108 = v38;
      v57 = *(v30 + 8);
      v57(v108, v29);
      (*(v47 + 8))(v48, v45);
    }

    v109 = *(v30 + 104);
    v109(v185, *MEMORY[0x277D556C0], v29);
    sub_2662285EC(&qword_280069718, MEMORY[0x277D556C8]);
    sub_266266B78();
    sub_266266B78();
    if (v191 == v189 && v192 == v190)
    {
      v110 = 1;
    }

    else
    {
      v110 = sub_2662670D8();
    }

    v57(v185, v29);

    if (v110)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_266267E70;
      sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
      *(v111 + 32) = [swift_getObjCClassFromMetadata() unsupported];
      v186(v111);
    }

    else
    {
      v112 = v176;
      v109(v176, *MEMORY[0x277D556B8], v29);
      sub_266266B78();
      sub_266266B78();
      if (v191 == v189 && v192 == v190)
      {
        v57(v112, v29);

        v113 = v186;
      }

      else
      {
        v125 = sub_2662670D8();
        v57(v112, v29);

        v113 = v186;
        if ((v125 & 1) == 0)
        {
          return (v57)(v40, v29);
        }
      }

      sub_266266F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_266267E70;
      sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
      *(v126 + 32) = [swift_getObjCClassFromMetadata() unsupported];
      v113(v126);
    }

    return (v57)(v40, v29);
  }

  v60 = v178;
  (*(v178 + 32))(v17, v44, v6);
  v61 = v6;
  v62 = v17;
  v63 = v187;
  v64 = v60;
  v65 = v181;
  v66 = v182;
  v67 = v179;
  if (v179)
  {
LABEL_14:
    v88 = sub_266266008();
    if ((v89 & 1) == 0)
    {
      v114 = v88;
      v115 = v64;
      v185 = v6;
      sub_266265FF8();
      goto LABEL_30;
    }

    v185 = v62;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v90 = v188;
    v91 = __swift_project_value_buffer(v188, static Logger.default);
    swift_beginAccess();
    v92 = v175;
    (*(v63 + 16))(v175, v91, v90);
    v93 = v63;
    v94 = *(v64 + 16);
    v94(v66, v185, v6);
    v95 = sub_266266968();
    v96 = sub_266266D68();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = v61;
      v98 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v191 = v184;
      *v98 = 136315138;
      v94(v173, v66, v97);
      v99 = sub_266266A68();
      v101 = v100;
      v102 = *(v64 + 8);
      v102(v66, v97);
      v103 = sub_26621EAF0(v99, v101, &v191);

      *(v98 + 4) = v103;
      v104 = v102;
      _os_log_impl(&dword_266219000, v95, v96, "INUpdateMediaAffinityIntentHandler#resolveMediaItems missing songId from nowPlayingInfo: %s", v98, 0xCu);
      v105 = v184;
      __swift_destroy_boxed_opaque_existential_1Tm(v184);
      v106 = v186;
      MEMORY[0x266780880](v105, -1, -1);
      v107 = v98;
      v61 = v97;
      MEMORY[0x266780880](v107, -1, -1);

      (*(v93 + 8))(v175, v188);
    }

    else
    {

      v104 = *(v64 + 8);
      v104(v66, v61);
      (*(v93 + 8))(v92, v90);
      v106 = v186;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v165 = swift_allocObject();
    *(v165 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
    *(v165 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    v106(v165);

    return (v104)(v185, v61);
  }

  if (v181 != 2)
  {
    if (v181 == 3)
    {
      v68 = sub_266266028();
      v69 = v172;
      if (v70)
      {
        v71 = v6;
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v72 = v188;
        v73 = __swift_project_value_buffer(v188, static Logger.default);
        swift_beginAccess();
        (*(v63 + 16))(v69, v73, v72);
        v74 = *(v64 + 16);
        v75 = v169;
        v74(v169, v62, v71);
        v76 = sub_266266968();
        v77 = sub_266266D68();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v185 = v62;
          v79 = v78;
          v80 = swift_slowAlloc();
          v191 = v80;
          *v79 = 136315138;
          v74(v173, v75, v71);
          v81 = sub_266266A68();
          v83 = v82;
          v84 = *(v64 + 8);
          v84(v75, v71);
          v85 = sub_26621EAF0(v81, v83, &v191);
          v86 = v84;

          *(v79 + 4) = v85;
          _os_log_impl(&dword_266219000, v76, v77, "INUpdateMediaAffinityIntentHandler#resolveMediaItems missing artistId from nowPlayingInfo: %s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          MEMORY[0x266780880](v80, -1, -1);
          v87 = v79;
          v62 = v185;
          MEMORY[0x266780880](v87, -1, -1);

          (*(v187 + 8))(v172, v188);
        }

        else
        {

          v86 = *(v64 + 8);
          v86(v75, v71);
          (*(v63 + 8))(v69, v188);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v166 = swift_allocObject();
        *(v166 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
        *(v166 + 32) = [swift_getObjCClassFromMetadata() unsupported];
        v186(v166);

        return (v86)(v62, v71);
      }

      v114 = v68;
      v115 = v64;
      v185 = v6;
      sub_266265FC8();
LABEL_30:
      v117 = v116;
      v193 = v114;
      sub_2662670C8();
      if (v67)
      {
        v65 = 1;
      }

      v118 = v62;
      sub_266265FC8();
      v120 = v119;
      v121 = sub_266266A48();

      if (v117)
      {
        v122 = sub_266266A48();

        v123 = v177;
        if (v120)
        {
LABEL_34:
          v124 = sub_266266A48();

LABEL_41:
          v128 = v187;
          v129 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v121 title:v122 type:v65 artwork:0 artist:v124];

          if (qword_280069528 != -1)
          {
            swift_once();
          }

          v130 = v188;
          v131 = __swift_project_value_buffer(v188, static Logger.default);
          swift_beginAccess();
          (*(v128 + 16))(v123, v131, v130);
          v132 = v129;
          v133 = sub_266266968();
          v134 = sub_266266D78();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *v135 = 138412290;
            *(v135 + 4) = v132;
            *v136 = v132;
            v137 = v132;
            _os_log_impl(&dword_266219000, v133, v134, "INUpdateMediaAffinityIntentHandler#resolveMediaItems resolved mediaItem: %@", v135, 0xCu);
            sub_26622858C(v136, &qword_280069710, &qword_266267DC0);
            MEMORY[0x266780880](v136, -1, -1);
            MEMORY[0x266780880](v135, -1, -1);
          }

          (*(v128 + 8))(v123, v188);
          v138 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
          v139 = swift_allocObject();
          *(v139 + 16) = xmmword_266267E70;
          *(v139 + 32) = v132;
          sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
          v140 = v132;
          v141 = sub_266266B98();

          v142 = [v138 successesWithResolvedMediaItems_];

          sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
          v143 = sub_266266BB8();

          v186(v143);

          return (*(v115 + 8))(v118, v185);
        }
      }

      else
      {
        v122 = 0;
        v123 = v177;
        if (v120)
        {
          goto LABEL_34;
        }
      }

      v124 = 0;
      goto LABEL_41;
    }

    goto LABEL_14;
  }

  v144 = sub_266266018();
  if ((v145 & 1) == 0)
  {
    v114 = v144;
    v115 = v64;
    v185 = v6;
    sub_266265FE8();
    goto LABEL_30;
  }

  v185 = v62;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v146 = v188;
  v147 = __swift_project_value_buffer(v188, static Logger.default);
  swift_beginAccess();
  v148 = v171;
  (*(v63 + 16))(v171, v147, v146);
  v149 = v63;
  v150 = *(v64 + 16);
  v151 = v170;
  v150(v170, v185, v6);
  v152 = sub_266266968();
  v153 = sub_266266D68();
  if (os_log_type_enabled(v152, v153))
  {
    v154 = v61;
    v155 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v191 = v184;
    *v155 = 136315138;
    v156 = v151;
    v150(v173, v151, v154);
    v157 = sub_266266A68();
    v159 = v158;
    v160 = *(v64 + 8);
    v160(v156, v154);
    v161 = sub_26621EAF0(v157, v159, &v191);

    *(v155 + 4) = v161;
    _os_log_impl(&dword_266219000, v152, v153, "INUpdateMediaAffinityIntentHandler#resolveMediaItems missing albumId from nowPlayingInfo: %s", v155, 0xCu);
    v162 = v184;
    __swift_destroy_boxed_opaque_existential_1Tm(v184);
    v163 = v186;
    MEMORY[0x266780880](v162, -1, -1);
    v164 = v155;
    v61 = v154;
    MEMORY[0x266780880](v164, -1, -1);

    (*(v149 + 8))(v171, v188);
  }

  else
  {

    v167 = v151;
    v160 = *(v64 + 8);
    v160(v167, v61);
    (*(v149 + 8))(v148, v146);
    v163 = v186;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_266267E70;
  sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
  *(v168 + 32) = [swift_getObjCClassFromMetadata() unsupported];
  v163(v168);

  return (v160)(v185, v61);
}

void sub_266222D04(uint64_t a1, uint64_t a2)
{
  sub_266228130(0, &qword_2800696B8, 0x277CD42C8);
  v3 = sub_266266B98();
  (*(a2 + 16))(a2, v3);
}

void INUpdateMediaAffinityIntentHandler.handle(intent:completion:)(void *a1, void (*a2)(void), char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069628, &unk_266267E80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v157 = &v145 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v152 = &v145 - v11;
  v12 = sub_266266988();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v158 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v156 = &v145 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v153 = (&v145 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v145 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v154 = &v145 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v145 - v26;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v12, static Logger.default);
  swift_beginAccess();
  v29 = v13[2];
  v160 = v13 + 2;
  v161 = v28;
  v159 = v29;
  (v29)(v27, v28, v12);
  v30 = a1;
  v31 = sub_266266968();
  v32 = sub_266266D78();

  v33 = os_log_type_enabled(v31, v32);
  v155 = v23;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v150 = v32;
    v35 = v34;
    v149 = swift_slowAlloc();
    v162[0] = v149;
    *v35 = 136315138;
    v163 = [v30 affinityType];
    type metadata accessor for INMediaAffinityType(0);
    v36 = sub_266266A68();
    v38 = v30;
    v39 = sub_26621EAF0(v36, v37, v162);

    *(v35 + 4) = v39;
    v30 = v38;
    _os_log_impl(&dword_266219000, v31, v150, "INUpdateMediaAffinityIntentHandler#handle affinityType: %s", v35, 0xCu);
    v40 = v149;
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    MEMORY[0x266780880](v40, -1, -1);
    MEMORY[0x266780880](v35, -1, -1);
  }

  v41 = v13[1];
  v41(v27, v12);
  v42 = [v30 mediaSearch];
  v43 = v42;
  if (v42)
  {
    v44 = [v42 mediaType];

    v45 = v44 != 1;
  }

  else
  {
    v45 = 1;
  }

  v46 = [v30 affinityType];
  if (v46 - 1 > 1)
  {
    v57 = v158;
    (v159)(v158, v161, v12);
    v58 = sub_266266968();
    v59 = sub_266266D68();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v46;
      _os_log_impl(&dword_266219000, v58, v59, "INUpdateMediaAffinityIntentHandler#handle unknown affinityType: %ld)", v60, 0xCu);
      MEMORY[0x266780880](v60, -1, -1);
    }

    v41(v57, v12);
    v61 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v62 = sub_266266A48();
    v63 = [v61 initWithActivityType_];

    goto LABEL_55;
  }

  v47 = [v30 mediaItems];
  if (!v47)
  {
LABEL_52:
    v139 = v156;
    (v159)(v156, v161, v12);
    v140 = sub_266266968();
    v141 = sub_266266D68();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&dword_266219000, v140, v141, "INUpdateMediaAffinityIntentHandler#handle missing mediaItem", v142, 2u);
      MEMORY[0x266780880](v142, -1, -1);
    }

    v41(v139, v12);
    v143 = sub_266266398();
    v144 = v157;
    (*(*(v143 - 8) + 56))(v157, 1, 1, v143);
    v63 = sub_26622659C(v46, v144);
    sub_26622858C(v144, &qword_280069628, &unk_266267E80);
LABEL_55:
    v132 = [objc_allocWithZone(MEMORY[0x277CD42C0]) initWithCode:4 userActivity:v63];

    (a2)(v132);
    goto LABEL_56;
  }

  v48 = v47;
  v150 = v45;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v49 = sub_266266BB8();

  if (!(v49 >> 62))
  {
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

  if (!sub_266267078())
  {
LABEL_51:

    goto LABEL_52;
  }

LABEL_12:
  v147 = a3;
  if ((v49 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x266780220](0, v49);
  }

  else
  {
    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_59;
    }

    v50 = *(v49 + 32);
  }

  v51 = v50;
  v149 = v30;

  v158 = v51;
  v52 = [v51 identifier];
  if (v52)
  {
    v53 = v52;
    v54 = sub_266266A58();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0xE000000000000000;
  }

  v148 = v13;
  sub_266223DDC(v54, v56);
  if ((v64 & 1) == 0)
  {
    v156 = v46;
    v76 = sub_2662661F8();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    sub_2662661E8();
    v79 = v158;
    [v158 type];
    v80 = [v79 artist];
    if (v80)
    {
      v81 = v80;
      sub_266266A58();
    }

    v82 = sub_2662661D8();

    v83 = v154;
    (v159)(v154, v161, v12);
    v84 = v82;
    v85 = sub_266266968();
    v86 = sub_266266D48();

    v87 = os_log_type_enabled(v85, v86);
    v146 = a2;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v162[0] = v153;
      *v88 = 136315138;
      v89 = v84;
      v90 = [v89 description];
      v91 = sub_266266A58();
      v157 = v84;
      v93 = v92;

      v94 = sub_26621EAF0(v91, v93, v162);
      v84 = v157;

      *(v88 + 4) = v94;
      _os_log_impl(&dword_266219000, v85, v86, "INUpdateMediaAffinityIntentHandler#handle model object is %s", v88, 0xCu);
      v95 = v153;
      __swift_destroy_boxed_opaque_existential_1Tm(v153);
      MEMORY[0x266780880](v95, -1, -1);
      MEMORY[0x266780880](v88, -1, -1);

      v96 = v154;
    }

    else
    {

      v96 = v83;
    }

    v41(v96, v12);
    v97 = v156;
    v98 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v99 = (2 * (v97 == 1));
    v100 = sub_266266A48();
    v157 = [v98 initWithActivityType_];

    v101 = v155;
    (v159)(v155, v161, v12);
    a3 = v84;
    v102 = sub_266266968();
    v103 = sub_266266D68();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      LODWORD(v160) = v103;
      v105 = v104;
      v106 = swift_slowAlloc();
      v161 = v12;
      v162[0] = v106;
      v107 = v106;
      *v105 = 136315394;
      v163 = v99;
      type metadata accessor for FavoriteEntityChangeRequestAction(0);
      v108 = sub_266266A68();
      v159 = v99;
      v110 = sub_26621EAF0(v108, v109, v162);

      *(v105 + 4) = v110;
      *(v105 + 12) = 2080;
      v111 = a3;
      v112 = [v111 description];
      v113 = sub_266266A58();
      v115 = v114;

      v116 = sub_26621EAF0(v113, v115, v162);

      *(v105 + 14) = v116;
      _os_log_impl(&dword_266219000, v102, v160, "INUpdateMediaAffinityIntentHandler#handle sending favorite change request: %s for item: %s and identity: <nil>", v105, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v107, -1, -1);
      MEMORY[0x266780880](v105, -1, -1);

      v41(v155, v161);
    }

    else
    {

      v41(v101, v12);
    }

    v46 = v146;
    a2 = v151;
    v117 = *(v151 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider), *(a2 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider + 24));
    sub_2662666B8();
    if (v43)
    {
      v118 = v156 == 2;
    }

    else
    {
      v118 = 0;
    }

    v119 = !v118;
    LOBYTE(v12) = v119 | v150;
    if ((v119 | v150))
    {
      if (v156 == 1)
      {
        v120 = 0;
        v121 = 3;
LABEL_46:
        v124 = v149;
        sub_2662246B0(a3, 0, v121, v120 & 1);
        v125 = v152;
        sub_266266C38();
        v126 = sub_266266C58();
        (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
        v127 = swift_allocObject();
        v127[2] = 0;
        v127[3] = 0;
        v127[4] = a2;
        v127[5] = v124;
        v128 = v124;
        v129 = a2;
        sub_266224324(0, 0, v125, &unk_266267EA0, v127);

        v130 = objc_allocWithZone(MEMORY[0x277CD42C0]);
        v131 = v157;
        v132 = [v130 initWithCode:3 userActivity:v157];
        v46();

        goto LABEL_56;
      }

LABEL_45:
      v120 = v12 ^ 1;
      v121 = 1;
      goto LABEL_46;
    }

    v122 = *(a2 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider), *(a2 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider + 24));
    if (qword_2800694C8 == -1)
    {
LABEL_44:
      *(swift_allocObject() + 16) = a2;
      v123 = a2;
      sub_266266588();

      goto LABEL_45;
    }

LABEL_59:
    swift_once();
    goto LABEL_44;
  }

  v65 = v153;
  (v159)(v153, v161, v12);
  v66 = v158;
  v67 = sub_266266968();
  v68 = sub_266266D68();

  if (os_log_type_enabled(v67, v68))
  {
    v156 = v46;
    v161 = v12;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v163 = v70;
    *v69 = 136315138;
    v71 = [v66 identifier];
    if (v71)
    {
      v72 = v71;
      v73 = sub_266266A58();
      v75 = v74;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v162[0] = v73;
    v162[1] = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
    v133 = sub_266266A68();
    v135 = sub_26621EAF0(v133, v134, &v163);

    *(v69 + 4) = v135;
    _os_log_impl(&dword_266219000, v67, v68, "INUpdateMediaAffinityIntentHandler#handle failed to convert identifier: %s into Int64 entityId", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x266780880](v70, -1, -1);
    MEMORY[0x266780880](v69, -1, -1);

    v41(v153, v161);
    v46 = v156;
  }

  else
  {

    v41(v65, v12);
  }

  v136 = sub_266266398();
  v137 = v157;
  (*(*(v136 - 8) + 56))(v157, 1, 1, v136);
  v138 = sub_26622659C(v46, v137);
  sub_26622858C(v137, &qword_280069628, &unk_266267E80);
  v132 = [objc_allocWithZone(MEMORY[0x277CD42C0]) initWithCode:4 userActivity:v138];

  (a2)(v132);
LABEL_56:
}

uint64_t sub_266223DDC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_266267068();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_266225B9C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2662240DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2662240FC, 0, 0);
}

uint64_t sub_2662240FC()
{
  v1 = (v0[2] + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_suggestionsDonationProvider);
  v2 = *v1;
  v3 = v1[1];
  sub_266265D08();
  v4 = sub_266265CF8();
  if (v4)
  {
    sub_266265CE8();

    v4 = sub_2662668A8();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v0[4] = v6;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_266224214;
  v8 = v0[3];

  return sub_26622FBB0(v8, v4, v6, v2, v3);
}

uint64_t sub_266224214()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_266224324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_266228524(a3, v27 - v11, &unk_280069630, &qword_266268A00);
  v13 = sub_266266C58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26622858C(v12, &unk_280069630, &qword_266268A00);
  }

  else
  {
    sub_266266C48();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_266266C08();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_266266A88() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_26622858C(a3, &unk_280069630, &qword_266268A00);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26622858C(a3, &unk_280069630, &qword_266268A00);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2662246B0(void *a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v35 = a4;
  v34 = a2;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_266265D18())
  {
    sub_266265CD8();

    sub_266265CA8();
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_266266968();
  v15 = sub_266266D58();
  v16 = os_log_type_enabled(v14, v15);
  v33 = a3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v32 = v5;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    v36 = a3;
    v37[0] = v20;
    *v19 = 136315394;
    type metadata accessor for FavoriteEntityChangeRequestAction(0);
    v21 = sub_266266A68();
    v23 = sub_26621EAF0(v21, v22, v37);

    *(v19 + 4) = v23;
    *(v19 + 12) = 1024;
    *(v19 + 14) = v35 & 1;
    _os_log_impl(&dword_266219000, v14, v15, "INUpdateMediaAffinityIntentHandler#registerCorrection Registering correction/undo with %s, movedToNextTrack: %{BOOL}d", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266780880](v20, -1, -1);
    v24 = v19;
    a1 = v18;
    v5 = v32;
    MEMORY[0x266780880](v24, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  sub_266228524(v39, v37, &qword_2800696D0, &qword_266267FD8);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v25 = swift_allocObject();
    v26 = v34;
    *(v25 + 16) = v33;
    *(v25 + 24) = v5;
    *(v25 + 32) = a1;
    *(v25 + 40) = v26;
    *(v25 + 48) = v35 & 1;
    v27 = v26;
    v28 = v5;
    v29 = a1;
    sub_266265C98();

    sub_26622858C(v39, &qword_2800696D0, &qword_266267FD8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    sub_26622858C(v39, &qword_2800696D0, &qword_266267FD8);
    return sub_26622858C(v37, &qword_2800696D0, &qword_266267FD8);
  }
}

uint64_t sub_266224A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 120) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  v7 = sub_266266988();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266224B14, 0, 0);
}

uint64_t sub_266224B14()
{
  v44 = v0;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = __swift_project_value_buffer(v3, static Logger.default);
  swift_beginAccess();
  v42 = *(v2 + 16);
  v42(v1, v4, v3);
  v5 = sub_266266968();
  v6 = sub_266266D58();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  if (v7)
  {
    v11 = *(v0 + 56);
    v41 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v12 = 136315138;
    *(v0 + 40) = v11;
    type metadata accessor for FavoriteEntityChangeRequestAction(0);
    v14 = sub_266266A68();
    v40 = v8;
    v16 = v4;
    v17 = sub_26621EAF0(v14, v15, &v43);

    *(v12 + 4) = v17;
    v4 = v16;
    _os_log_impl(&dword_266219000, v5, v6, "INUpdateMediaAffinityIntentHandler#registerCorrection executing %s as a correction/undo", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266780880](v13, -1, -1);
    MEMORY[0x266780880](v12, -1, -1);

    v18 = *(v9 + 8);
    v18(v40, v41);
  }

  else
  {

    v18 = *(v9 + 8);
    v18(v8, v10);
  }

  v19 = *(v0 + 120);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = *(v0 + 56);
  v23 = (*(v0 + 64) + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider);
  v24 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_2662666B8();
  if (v19 == 1)
  {
    v42(*(v0 + 104), v4, *(v0 + 88));
    v25 = sub_266266968();
    v26 = sub_266266D58();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266219000, v25, v26, "INUpdateMediaAffinityIntentHandler#registerCorrection moving to previous track as a correction/undo", v27, 2u);
      MEMORY[0x266780880](v27, -1, -1);
    }

    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    v30 = *(v0 + 88);
    v31 = *(v0 + 64);

    v18(v28, v30);
    v32 = *(v31 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_playbackController + 32);
    __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_playbackController), *(v31 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_playbackController + 24));
    sub_2662668F8();
  }

  v33 = *(v0 + 104);
  v34 = *(v0 + 112);
  v35 = *(v0 + 48);
  *(v35 + 32) = 0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  v36 = *MEMORY[0x277D5BFD0];
  v37 = sub_266265CC8();
  (*(*(v37 - 8) + 104))(v35, v36, v37);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_266224ED4(uint64_t a1)
{
  v2 = sub_266266908();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = sub_266266988();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800696D8, &unk_266267FF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  sub_266228524(a1, &v46 - v17, &qword_2800696D8, &unk_266267FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v8, v18, v2);
    v19 = v8;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v20 = v9;
    v21 = __swift_project_value_buffer(v9, static Logger.default);
    swift_beginAccess();
    v22 = v50;
    v23 = v51;
    (*(v51 + 16))(v50, v21, v20);
    v24 = v49;
    (*(v3 + 16))(v49, v19, v2);
    v25 = sub_266266968();
    v26 = sub_266266D68();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v48 = v20;
      v28 = v2;
      v29 = v24;
      v30 = v27;
      v31 = swift_slowAlloc();
      v47 = v19;
      v32 = v31;
      v52 = v31;
      *v30 = 136446210;
      sub_2662285EC(&unk_2800696E0, MEMORY[0x277D5F6E0]);
      v33 = v28;
      v34 = sub_266267108();
      v36 = v35;
      v37 = *(v3 + 8);
      v37(v29, v33);
      v38 = sub_26621EAF0(v34, v36, &v52);

      *(v30 + 4) = v38;
      _os_log_impl(&dword_266219000, v25, v26, "INUpdateMediaAffinityIntentHandler#registerCorrection error sending previous track command %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266780880](v32, -1, -1);
      MEMORY[0x266780880](v30, -1, -1);

      (*(v51 + 8))(v50, v48);
      return (v37)(v47, v33);
    }

    else
    {

      v45 = *(v3 + 8);
      v45(v24, v2);
      (*(v23 + 8))(v22, v20);
      return (v45)(v19, v2);
    }
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v9, static Logger.default);
    swift_beginAccess();
    v41 = v51;
    (*(v51 + 16))(v14, v40, v9);
    v42 = sub_266266968();
    v43 = sub_266266D58();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_266219000, v42, v43, "INUpdateMediaAffinityIntentHandler#registerCorrection successfully moved to previous track", v44, 2u);
      MEMORY[0x266780880](v44, -1, -1);
    }

    return (*(v41 + 8))(v14, v9);
  }
}

uint64_t sub_266225450(uint64_t a1)
{
  v2 = sub_266266988();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_266227BA8(a1);
  if (v8)
  {
    v9 = result;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v6, v10, v2);
    v11 = v9;
    v12 = sub_266266968();
    v13 = sub_266266D68();
    sub_2662280D0(v9, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = sub_266267108();
      v18 = sub_26621EAF0(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_266219000, v12, v13, "INUpdateMediaAffinityIntentHandler#handle error sending next track command %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x266780880](v15, -1, -1);
      MEMORY[0x266780880](v14, -1, -1);

      sub_2662280D0(v9, 1);
    }

    else
    {
      sub_2662280D0(v9, 1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

id INUpdateMediaAffinityIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INUpdateMediaAffinityIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MRCommandError.hashValue.getter()
{
  sub_266267158();
  MEMORY[0x266780330](0);
  return sub_266267178();
}

uint64_t sub_2662257DC()
{
  sub_266267158();
  MEMORY[0x266780330](0);
  return sub_266267178();
}

uint64_t sub_266225848()
{
  sub_266267158();
  MEMORY[0x266780330](0);
  return sub_266267178();
}

uint64_t sub_266225898()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2662258E8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662259E0;

  return v7(a1);
}

uint64_t sub_2662259E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_266225AD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695C8, &qword_266267E38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_266225B4C(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_266225B6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unsigned __int8 *sub_266225B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_266266B58();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_266226128();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_266267068();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_266226128()
{
  v0 = sub_266266B68();
  v4 = sub_2662261A8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2662261A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_266266AA8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_266266FC8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_266225AD8(v9, 0);
  v12 = sub_266226300(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_266266AA8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_266267068();
LABEL_4:

  return sub_266266AA8();
}

unint64_t sub_266226300(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_266226520(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_266266B28();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_266267068();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_266226520(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_266266B08();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_266226520(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_266266B38();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26677FCE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_26622659C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069628, &unk_266267E80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v21 - v5;
  v7 = sub_266266398();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v13 = sub_266266A48();
  v14 = [v12 initWithActivityType_];

  sub_266228524(a2, v6, &qword_280069628, &unk_266267E80);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26622858C(v6, &qword_280069628, &unk_266267E80);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800696F0, &qword_266268000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266267DB0;
    v21[1] = 0x726F727265;
    v21[2] = 0xE500000000000000;
    v16 = MEMORY[0x277D837D0];
    sub_266267008();
    v17 = sub_266266388();
    *(inited + 96) = v16;
    *(inited + 72) = v17;
    *(inited + 80) = v18;
    sub_26622D4B4(inited);
    swift_setDeallocating();
    sub_26622858C(inited + 32, &qword_2800696F8, &qword_266268008);
    v19 = sub_266266A28();

    [v14 setUserInfo_];

    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t sub_266226888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_266228640;

  return sub_2662240DC(a1, v4, v5, v7, v6);
}

unint64_t sub_266226954()
{
  result = qword_280069648;
  if (!qword_280069648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069648);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MRCommandError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MRCommandError(_WORD *result, int a2, int a3)
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

void sub_266226A98(void *a1, void *a2, void (**a3)(id, id))
{
  v151 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v150 = &v148 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069628, &unk_266267E80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v157 = &v148 - v10;
  v11 = sub_266266988();
  v12 = *(v11 - 1);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v159 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v148 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v148 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v152 = &v148 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v156 = &v148 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v148 - v26;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v11, static Logger.default);
  swift_beginAccess();
  v29 = v12[2];
  v161 = v12 + 2;
  v162 = v28;
  v160 = v29;
  v29(v27, v28, v11);
  v30 = a1;
  v31 = sub_266266968();
  v32 = sub_266266D78();

  v33 = os_log_type_enabled(v31, v32);
  v153 = v21;
  v154 = v18;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v158 = v12;
    v155 = a3;
    v35 = v34;
    v36 = swift_slowAlloc();
    v163[0] = v36;
    *v35 = 136315138;
    v164 = [v30 affinityType];
    type metadata accessor for INMediaAffinityType(0);
    v37 = sub_266266A68();
    v39 = sub_26621EAF0(v37, v38, v163);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_266219000, v31, v32, "INUpdateMediaAffinityIntentHandler#handle affinityType: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266780880](v36, -1, -1);
    v40 = v35;
    a3 = v155;
    v12 = v158;
    MEMORY[0x266780880](v40, -1, -1);
  }

  v41 = v12[1];
  (v41)(v27, v11);
  v42 = [v30 mediaSearch];
  v43 = v42;
  if (v42)
  {
    v44 = [v42 mediaType];

    v45 = v44 != 1;
  }

  else
  {
    v45 = 1;
  }

  v46 = [v30 affinityType];
  if ((v46 - 1) > 1)
  {
    v58 = v159;
    v160(v159, v162, v11);
    v59 = sub_266266968();
    v60 = sub_266266D68();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = v46;
      _os_log_impl(&dword_266219000, v59, v60, "INUpdateMediaAffinityIntentHandler#handle unknown affinityType: %ld)", v61, 0xCu);
      MEMORY[0x266780880](v61, -1, -1);
    }

    (v41)(v58, v11);
    v62 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v63 = sub_266266A48();
    v64 = [v62 initWithActivityType_];

    goto LABEL_55;
  }

  v47 = [v30 mediaItems];
  if (!v47)
  {
LABEL_52:
    v142 = v156;
    v160(v156, v162, v11);
    v143 = sub_266266968();
    v144 = sub_266266D68();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&dword_266219000, v143, v144, "INUpdateMediaAffinityIntentHandler#handle missing mediaItem", v145, 2u);
      MEMORY[0x266780880](v145, -1, -1);
    }

    (v41)(v142, v11);
    v146 = sub_266266398();
    v147 = v157;
    (*(*(v146 - 8) + 56))(v157, 1, 1, v146);
    v64 = sub_26622659C(v46, v147);
    sub_26622858C(v147, &qword_280069628, &unk_266267E80);
LABEL_55:
    v135 = [objc_allocWithZone(MEMORY[0x277CD42C0]) initWithCode:4 userActivity:v64];

    a3[2](a3, v135);
    goto LABEL_56;
  }

  v48 = v47;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v49 = sub_266266BB8();

  if (!(v49 >> 62))
  {
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

  if (!sub_266267078())
  {
LABEL_51:

    goto LABEL_52;
  }

LABEL_12:
  v158 = v12;
  v149 = v45;
  if ((v49 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x266780220](0, v49);
  }

  else
  {
    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_59;
    }

    v50 = *(v49 + 32);
  }

  v51 = v50;

  v52 = [v51 identifier];
  v159 = v41;
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    v55 = sub_266266A58();
    v57 = v56;

    v51 = v53;
    v41 = v159;
  }

  else
  {
    v55 = 0;
    v57 = 0xE000000000000000;
  }

  sub_266223DDC(v55, v57);
  if ((v65 & 1) == 0)
  {
    v155 = a3;
    v156 = v46;
    v77 = sub_2662661F8();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    sub_2662661E8();
    [v51 type];
    v157 = v51;
    v80 = [v51 artist];
    if (v80)
    {
      v81 = v80;
      sub_266266A58();
    }

    v152 = v30;
    v82 = sub_2662661D8();

    v83 = v153;
    v160(v153, v162, v11);
    v84 = v82;
    v85 = sub_266266968();
    v86 = sub_266266D48();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v163[0] = v148;
      *v87 = 136315138;
      v88 = v84;
      v89 = v11;
      v90 = [v88 description];
      v91 = sub_266266A58();
      v92 = v84;
      v94 = v93;

      v11 = v89;
      v95 = sub_26621EAF0(v91, v94, v163);
      v84 = v92;

      *(v87 + 4) = v95;
      _os_log_impl(&dword_266219000, v85, v86, "INUpdateMediaAffinityIntentHandler#handle model object is %s", v87, 0xCu);
      v96 = v148;
      __swift_destroy_boxed_opaque_existential_1Tm(v148);
      MEMORY[0x266780880](v96, -1, -1);
      MEMORY[0x266780880](v87, -1, -1);

      v97 = v153;
      v98 = v89;
    }

    else
    {

      v97 = v83;
      v98 = v11;
    }

    (v159)(v97, v98);
    v99 = v156;
    v100 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v101 = sub_266266A48();
    v153 = [v100 initWithActivityType_];

    v102 = v154;
    v160(v154, v162, v11);
    a3 = v84;
    v103 = sub_266266968();
    v104 = sub_266266D68();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      LODWORD(v161) = v104;
      v106 = v105;
      v107 = swift_slowAlloc();
      v163[0] = v107;
      *v106 = 136315394;
      v164 = (2 * (v99 == 1));
      type metadata accessor for FavoriteEntityChangeRequestAction(0);
      v108 = sub_266266A68();
      v110 = sub_26621EAF0(v108, v109, v163);
      v162 = v11;
      v111 = v110;

      *(v106 + 4) = v111;
      *(v106 + 12) = 2080;
      v112 = a3;
      v113 = [v112 description];
      v114 = sub_266266A58();
      v116 = v115;

      v117 = v114;
      v99 = v156;
      v118 = sub_26621EAF0(v117, v116, v163);

      *(v106 + 14) = v118;
      _os_log_impl(&dword_266219000, v103, v161, "INUpdateMediaAffinityIntentHandler#handle sending favorite change request: %s for item: %s and identity: <nil>", v106, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v107, -1, -1);
      MEMORY[0x266780880](v106, -1, -1);

      (v159)(v154, v162);
    }

    else
    {

      (v159)(v102, v11);
    }

    v41 = v155;
    v11 = v151;
    v119 = *(v151 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider + 32);
    __swift_project_boxed_opaque_existential_1((v151 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider), *(v151 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_favoriteEntityProvider + 24));
    sub_2662666B8();
    if (v43)
    {
      v120 = v99 == 2;
    }

    else
    {
      v120 = 0;
    }

    v121 = !v120;
    LOBYTE(v30) = v121 | v149;
    if ((v121 | v149))
    {
      if (v99 == 1)
      {
        v122 = 0;
        v123 = 3;
LABEL_46:
        v126 = v157;
        sub_2662246B0(a3, 0, v123, v122 & 1);
        v127 = v150;
        sub_266266C38();
        v128 = sub_266266C58();
        (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
        v129 = swift_allocObject();
        v129[2] = 0;
        v129[3] = 0;
        v130 = v152;
        v129[4] = v11;
        v129[5] = v130;
        v131 = v130;
        v132 = v11;
        sub_266224324(0, 0, v127, &unk_266267FB8, v129);

        v133 = objc_allocWithZone(MEMORY[0x277CD42C0]);
        v134 = v153;
        v135 = [v133 initWithCode:3 userActivity:v153];
        (*(v41 + 2))(v41, v135);

        goto LABEL_56;
      }

LABEL_45:
      v122 = v30 ^ 1;
      v123 = 1;
      goto LABEL_46;
    }

    v124 = *(v11 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider + 32);
    __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider), *(v11 + OBJC_IVAR____TtC17SiriAudioInternal34INUpdateMediaAffinityIntentHandler_mediaRemoteAPIProvider + 24));
    if (qword_2800694C8 == -1)
    {
LABEL_44:
      *(swift_allocObject() + 16) = v11;
      v125 = v11;
      sub_266266588();

      goto LABEL_45;
    }

LABEL_59:
    swift_once();
    goto LABEL_44;
  }

  v66 = v152;
  v160(v152, v162, v11);
  v67 = v51;
  v68 = sub_266266968();
  v69 = sub_266266D68();

  if (os_log_type_enabled(v68, v69))
  {
    v156 = v46;
    v162 = v11;
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v164 = v71;
    *v70 = 136315138;
    v72 = [v67 identifier];
    if (v72)
    {
      v73 = v72;
      v74 = sub_266266A58();
      v76 = v75;
    }

    else
    {
      v74 = 0;
      v76 = 0;
    }

    v163[0] = v74;
    v163[1] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
    v136 = sub_266266A68();
    v138 = sub_26621EAF0(v136, v137, &v164);

    *(v70 + 4) = v138;
    _os_log_impl(&dword_266219000, v68, v69, "INUpdateMediaAffinityIntentHandler#handle failed to convert identifier: %s into Int64 entityId", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x266780880](v71, -1, -1);
    MEMORY[0x266780880](v70, -1, -1);

    (v159)(v152, v162);
    v46 = v156;
  }

  else
  {

    (v41)(v66, v11);
  }

  v139 = sub_266266398();
  v140 = v157;
  (*(*(v139 - 8) + 56))(v157, 1, 1, v139);
  v141 = sub_26622659C(v46, v140);
  sub_26622858C(v140, &qword_280069628, &unk_266267E80);
  v135 = [objc_allocWithZone(MEMORY[0x277CD42C0]) initWithCode:4 userActivity:v141];

  a3[2](a3, v135);
LABEL_56:
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266227B30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266227B68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266227BA8(uint64_t a1)
{
  v47 = a1;
  v1 = sub_266266988();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v46 = v45 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v45 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v45 - v12;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v1, static Logger.default);
  swift_beginAccess();
  v15 = v2[2];
  v15(v13, v14, v1);
  v16 = sub_266266968();
  v17 = sub_266266D58();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45[1] = v2 + 2;
    v19 = v14;
    v20 = v6;
    v21 = v1;
    v22 = v15;
    v23 = v11;
    v24 = v2;
    v25 = v18;
    *v18 = 0;
    _os_log_impl(&dword_266219000, v16, v17, "INUpdateMediaAffinityIntentHandler#handleSendCommandResult handling statuses from affinity MRMediaRemoteCommand", v18, 2u);
    v26 = v25;
    v2 = v24;
    v11 = v23;
    v15 = v22;
    v1 = v21;
    v6 = v20;
    v14 = v19;
    MEMORY[0x266780880](v26, -1, -1);
  }

  v27 = v2[1];
  v27(v13, v1);
  if (!v47 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v48 = 0, sub_266228130(0, &qword_2800696C8, 0x277CCABB0), sub_266266BA8(), (v28 = v48) == 0))
  {
    v15(v6, v14, v1);
    v38 = sub_266266968();
    v39 = sub_266266D58();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266219000, v38, v39, "INUpdateMediaAffinityIntentHandler#handleSendCommandResult command statuses are nil, command failed", v40, 2u);
      MEMORY[0x266780880](v40, -1, -1);
    }

    v41 = v6;
    goto LABEL_20;
  }

  if (!(v48 >> 62))
  {
    result = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_22:

LABEL_23:
    v15(v11, v14, v1);
    v42 = sub_266266968();
    v43 = sub_266266D58();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_266219000, v42, v43, "INUpdateMediaAffinityIntentHandler#handleSendCommandResult command statuses are empty or non-zero, command failed", v44, 2u);
      MEMORY[0x266780880](v44, -1, -1);
    }

    v41 = v11;
LABEL_20:
    v27(v41, v1);
    sub_2662280DC();
    return swift_allocError();
  }

  result = sub_266267078();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x266780220](0, v28);
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v30 = *(v28 + 32);
  }

  v31 = v30;

  v32 = [v31 integerValue];

  if (v32)
  {
    goto LABEL_23;
  }

  v33 = v46;
  v15(v46, v14, v1);
  v34 = v33;
  v35 = sub_266266968();
  v36 = sub_266266D58();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_266219000, v35, v36, "INUpdateMediaAffinityIntentHandler#handleSendCommandResult command succeeded", v37, 2u);
    MEMORY[0x266780880](v37, -1, -1);
  }

  v27(v34, v1);
  return 0;
}

void sub_2662280D0(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_2662280DC()
{
  result = qword_2800696C0;
  if (!qword_2800696C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800696C0);
  }

  return result;
}

uint64_t sub_266228130(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_266228178()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662281B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_266228640;

  return sub_2662258E8(a1, v5);
}

uint64_t sub_266228268(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_266228320;

  return sub_2662258E8(a1, v5);
}

uint64_t sub_266228320()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_266228414()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_26622845C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266228320;

  return sub_266224A3C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_266228524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26622858C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2662285EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ArtistNameParameterBuilder(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtistNameParameterBuilder(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Logger.audio.unsafeMutableAddressor()
{
  if (qword_2800694D0 != -1)
  {
    swift_once();
  }

  v0 = sub_266266988();

  return __swift_project_value_buffer(v0, static Logger.audio);
}

uint64_t sub_26622881C()
{
  v0 = sub_266266988();
  __swift_allocate_value_buffer(v0, static Logger.audio);
  __swift_project_value_buffer(v0, static Logger.audio);
  return sub_266266978();
}

uint64_t static Logger.audio.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800694D0 != -1)
  {
    swift_once();
  }

  v2 = sub_266266988();
  v3 = __swift_project_value_buffer(v2, static Logger.audio);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t INSearchForMediaIntentHandler.resolveMediaItems(for:with:)(void *a1, void (*a2)(uint64_t))
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 privateSearchForMediaIntentData];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v9;
  v11 = [v9 audioSearchResults];

  if (!v11)
  {
    goto LABEL_21;
  }

  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v12 = sub_266266BB8();

  if (v12 >> 62)
  {
    if (sub_266267078())
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800698C0, 0x277CD4040);
    *(v42 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    a2(v42);
    goto LABEL_22;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x266780220](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v13 = *(v12 + 32);
  }

  v11 = v13;

  v14 = [v11 privateMediaItemValueData];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 punchoutURI];

    if (v16)
    {
      v17 = sub_266266A58();
      v19 = v18;

      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        if (qword_280069528 == -1)
        {
LABEL_14:
          v21 = __swift_project_value_buffer(v4, static Logger.default);
          swift_beginAccess();
          (*(v5 + 16))(v8, v21, v4);
          v22 = v11;
          v23 = sub_266266968();
          v24 = sub_266266D58();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v45 = v25;
            v47 = swift_slowAlloc();
            v49[0] = v47;
            *v25 = 136315138;
            v26 = v22;
            v46 = v23;
            v27 = v26;
            v28 = [v26 description];
            v48 = v22;
            v29 = v28;
            v30 = sub_266266A58();
            v44 = v24;
            v31 = v30;
            v33 = v32;

            v34 = sub_26621EAF0(v31, v33, v49);

            v35 = v45;
            v36 = v46;
            *(v45 + 1) = v34;
            v22 = v48;
            _os_log_impl(&dword_266219000, v36, v44, "INSearchForMediaIntentHandler#resolveMediaItems resolving item: %s", v35, 0xCu);
            v37 = v47;
            __swift_destroy_boxed_opaque_existential_1Tm(v47);
            MEMORY[0x266780880](v37, -1, -1);
            MEMORY[0x266780880](v35, -1, -1);
          }

          else
          {
          }

          (*(v5 + 8))(v8, v4);
          v49[3] = sub_266228130(0, &unk_2800697A8, 0x277CD4030);
          v49[4] = MEMORY[0x277D557E8];
          v49[0] = a1;
          v39 = a1;
          sub_266266CE8();
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_266267E70;
          sub_266228130(0, &qword_2800698C0, 0x277CD4040);
          *(v40 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
          a2(v40);
        }

LABEL_27:
        swift_once();
        goto LABEL_14;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_266267E70;
  sub_266228130(0, &qword_2800698C0, 0x277CD4040);
  *(v38 + 32) = [swift_getObjCClassFromMetadata() unsupported];
  a2(v38);

LABEL_22:
}

void INSearchForMediaIntentHandler.handle(intent:completion:)(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:4 userActivity:0];
  a2();
}

id INSearchForMediaIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INSearchForMediaIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INSearchForMediaIntentHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id INSearchForMediaIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INSearchForMediaIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2662291D0(void *a1, uint64_t a2)
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 privateSearchForMediaIntentData];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  v11 = [v9 audioSearchResults];

  if (!v11)
  {
    goto LABEL_20;
  }

  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v12 = sub_266266BB8();

  if (v12 >> 62)
  {
    if (sub_266267078())
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800698C0, 0x277CD4040);
    *(v39 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    v44 = sub_266266B98();
    (*(a2 + 16))(a2, v44);
    goto LABEL_21;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x266780220](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v13 = *(v12 + 32);
  }

  v11 = v13;

  v14 = [v11 privateMediaItemValueData];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 punchoutURI];

    if (v16)
    {
      v17 = sub_266266A58();
      v19 = v18;

      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        if (qword_280069528 == -1)
        {
LABEL_14:
          v21 = __swift_project_value_buffer(v4, static Logger.default);
          swift_beginAccess();
          (*(v5 + 16))(v8, v21, v4);
          v22 = v11;
          v23 = sub_266266968();
          v24 = sub_266266D58();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v42 = v25;
            v43 = swift_slowAlloc();
            v45[0] = v43;
            *v25 = 136315138;
            v26 = v22;
            v27 = [v26 description];
            v44 = v22;
            v28 = v27;
            v29 = sub_266266A58();
            HIDWORD(v41) = v24;
            v31 = v30;

            v32 = sub_26621EAF0(v29, v31, v45);

            v33 = v42;
            *(v42 + 1) = v32;
            v22 = v44;
            _os_log_impl(&dword_266219000, v23, BYTE4(v41), "INSearchForMediaIntentHandler#resolveMediaItems resolving item: %s", v33, 0xCu);
            v34 = v43;
            __swift_destroy_boxed_opaque_existential_1Tm(v43);
            MEMORY[0x266780880](v34, -1, -1);
            MEMORY[0x266780880](v33, -1, -1);
          }

          (*(v5 + 8))(v8, v4);
          v45[3] = sub_266228130(0, &unk_2800697A8, 0x277CD4030);
          v45[4] = MEMORY[0x277D557E8];
          v45[0] = a1;
          v35 = a1;
          sub_266266CE8();
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_266267E70;
          sub_266228130(0, &qword_2800698C0, 0x277CD4040);
          *(v36 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
          v37 = sub_266266B98();
          (*(a2 + 16))(a2, v37);

          return;
        }

LABEL_26:
        swift_once();
        goto LABEL_14;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_266267E70;
  sub_266228130(0, &qword_2800698C0, 0x277CD4040);
  *(v38 + 32) = [swift_getObjCClassFromMetadata() unsupported];
  v44 = sub_266266B98();
  (*(a2 + 16))(a2, v44);

LABEL_21:

  v40 = v44;
}

uint64_t sub_2662297C0()
{
  result = sub_26622D6E4(&unk_2877D98E0);
  qword_28006A4F0 = result;
  return result;
}

uint64_t static SuggestionsDonationProvider.donatePlayMediaIntentForSuggestions(intent:)(uint64_t a1)
{
  v1[28] = a1;
  v2 = sub_266266988();
  v1[29] = v2;
  v3 = *(v2 - 8);
  v1[30] = v3;
  v4 = *(v3 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v5 = sub_266266758();
  v1[33] = v5;
  v6 = *(v5 - 8);
  v1[34] = v6;
  v7 = *(v6 + 64) + 15;
  v1[35] = swift_task_alloc();
  v8 = sub_266266958();
  v1[36] = v8;
  v9 = *(v8 - 8);
  v1[37] = v9;
  v10 = *(v9 + 64) + 15;
  v1[38] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069820, &qword_266268108) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v12 = sub_266265B98();
  v1[40] = v12;
  v13 = *(v12 - 8);
  v1[41] = v13;
  v14 = *(v13 + 64) + 15;
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266229A00, 0, 0);
}

uint64_t sub_266229A00()
{
  if (!sub_266265D18())
  {
    goto LABEL_5;
  }

  sub_266265CE8();

  sub_2662668A8();
  v2 = v1;

  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[39];
  sub_266265B88();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_26622858C(v0[39], &qword_280069820, &qword_266268108);
LABEL_5:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v6 = v0[32];
    v7 = v0[29];
    v8 = v0[30];
    v9 = __swift_project_value_buffer(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_266266968();
    v11 = sub_266266D68();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[32];
    v14 = v0[29];
    v15 = v0[30];
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_266219000, v10, v11, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions Unable to get requestId. Not donating intent to SiriSuggestions", v16, 2u);
      MEMORY[0x266780880](v16, -1, -1);
    }

    (*(v15 + 8))(v13, v14);
    v17 = v0[42];
    v18 = v0[38];
    v19 = v0[39];
    v20 = v0[35];
    v22 = v0[31];
    v21 = v0[32];

    v23 = v0[1];

    return v23();
  }

  (*(v0[41] + 32))(v0[42], v0[39], v0[40]);
  v25 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
  v0[43] = v25;
  v26 = swift_task_alloc();
  v0[44] = v26;
  *v26 = v0;
  v26[1] = sub_266229D08;

  return (sub_26622F088)(v0 + 17, v25);
}

uint64_t sub_266229D08()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v6 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = sub_26622A3AC;
  }

  else
  {

    v4 = sub_266229E24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266229E24()
{
  v1 = *(v0 + 224);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v49 = *(v0 + 169);
    v47 = *(v0 + 144);
    v48 = *(v0 + 160);
    v45 = *(v0 + 168);
    v46 = *(v0 + 153);
    v43 = *(v0 + 152);
    v44 = *(v0 + 137);
    v42 = *(v0 + 136);
    sub_266266F38();
    if (qword_280069538 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v26 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 264);
    v28 = *(v0 + 272);
    v29 = *(v0 + 224);
    *(v0 + 424) = logObject;
    sub_266266948();
    sub_266266918();
    v30 = *(v24 + 8);
    *(v0 + 432) = v30;
    *(v0 + 440) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v23, v25);
    sub_2662666F8();
    sub_2662666E8();
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v31);
    *v26 = v29;
    (*(v28 + 104))(v26, *MEMORY[0x277D60918], v27);
    v33 = qword_2800694C0;
    v34 = v29;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = qword_28006A4D0;
    *(v0 + 80) = sub_266266778();
    *(v0 + 88) = sub_26622F800(&qword_280069828, MEMORY[0x277D60A20]);
    *(v0 + 56) = v35;
    *(v0 + 472) = v43;
    *(v0 + 96) = v42;
    *(v0 + 480) = v45;
    *(v0 + 97) = v44;
    *(v0 + 98) = *(v0 + 130);
    *(v0 + 102) = *(v0 + 134);
    *(v0 + 104) = v47;
    *(v0 + 112) = *(v0 + 472);
    *(v0 + 113) = v46;
    *(v0 + 114) = *(v0 + 170);
    *(v0 + 118) = *(v0 + 174);
    *(v0 + 120) = v48;
    *(v0 + 128) = *(v0 + 480);
    *(v0 + 129) = v49;

    v36 = sub_266236E3C();
    *(v0 + 448) = v36;
    v37 = *(MEMORY[0x277D60580] + 4);
    v38 = swift_task_alloc();
    *(v0 + 456) = v38;
    v13 = *(v32 + 8);
    *v38 = v0;
    v38[1] = sub_26622B32C;
    v8 = *(v0 + 280);
    v9 = v0 + 56;
    v14 = *(v0 + 336);
    v10 = v36;
    v11 = 1;
    v12 = v31;

    return MEMORY[0x2821C5FD8](v14, v8, v9, v10, v11, v12, v13);
  }

  v3 = v2;
  v4 = *(v0 + 224);
  v5 = [v3 mediaItems];
  if (!v5)
  {
LABEL_18:
    v17 = swift_task_alloc();
    *(v0 + 400) = v17;
    *(v17 + 16) = v3;
    v39 = *(MEMORY[0x277D85A40] + 4);
    v40 = swift_task_alloc();
    *(v0 + 408) = v40;
    *v40 = v0;
    v40[1] = sub_26622AC98;
    v20 = MEMORY[0x277D839B0];
    v21 = sub_26622F7E8;
    v22 = v0 + 473;
    goto LABEL_19;
  }

  v6 = v5;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v7 = sub_266266BB8();

  if (!(v7 >> 62))
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v14 = sub_266267078();
  if (!v14)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x266780220](0, v7);
    goto LABEL_8;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x2821C5FD8](v14, v8, v9, v10, v11, v12, v13);
  }

  v15 = *(v7 + 32);
LABEL_8:
  v16 = v15;

  *(v0 + 368) = [v16 type];

  v17 = swift_task_alloc();
  *(v0 + 376) = v17;
  *(v17 + 16) = v3;
  v18 = *(MEMORY[0x277D85A40] + 4);
  v19 = swift_task_alloc();
  *(v0 + 384) = v19;
  *v19 = v0;
  v19[1] = sub_26622A5F8;
  v20 = MEMORY[0x277D839B0];
  v21 = sub_26622FBAC;
  v22 = v0 + 474;
LABEL_19:

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD00000000000001FLL, 0x8000000266269040, v21, v17, v20);
}

uint64_t sub_26622A3AC()
{
  v1 = *(v0 + 360);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_266266968();
  v8 = sub_266266D68();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_266219000, v7, v8, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions donating to SiriSuggestions: %@", v9, 0xCu);
    sub_26622858C(v10, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v10, -1, -1);
    MEMORY[0x266780880](v9, -1, -1);
  }

  v14 = *(v0 + 328);
  v13 = *(v0 + 336);
  v15 = *(v0 + 320);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 232);

  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);
  v19 = *(v0 + 336);
  v20 = *(v0 + 304);
  v21 = *(v0 + 312);
  v22 = *(v0 + 280);
  v24 = *(v0 + 248);
  v23 = *(v0 + 256);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_26622A5F8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_26622AA44;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_26622A714;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26622A714()
{
  v27 = *(v0 + 474);
  v25 = *(v0 + 368);

  v26 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(v0 + 153);
  v21 = *(v0 + 136);
  v22 = *(v0 + 137);
  sub_266266F38();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 224);
  *(v0 + 424) = logObject;
  sub_266266948();
  sub_266266918();
  v8 = *(v2 + 8);
  *(v0 + 432) = v8;
  *(v0 + 440) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  sub_2662666F8();
  sub_2662666E8();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  *v4 = v7;
  (*(v6 + 104))(v4, *MEMORY[0x277D60918], v5);
  v11 = qword_2800694C0;
  v12 = v7;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_28006A4D0;
  *(v0 + 80) = sub_266266778();
  *(v0 + 88) = sub_26622F800(&qword_280069828, MEMORY[0x277D60A20]);
  *(v0 + 56) = v13;
  *(v0 + 472) = 0;
  *(v0 + 96) = v21;
  *(v0 + 480) = v23;
  *(v0 + 97) = v22;
  *(v0 + 98) = *(v0 + 130);
  *(v0 + 102) = *(v0 + 134);
  *(v0 + 104) = v25;
  *(v0 + 112) = 0;
  *(v0 + 113) = v24;
  *(v0 + 114) = *(v0 + 170);
  *(v0 + 118) = *(v0 + 174);
  *(v0 + 120) = v26;
  *(v0 + 128) = *(v0 + 480);
  *(v0 + 129) = v27;

  v14 = sub_266236E3C();
  *(v0 + 448) = v14;
  v15 = *(MEMORY[0x277D60580] + 4);
  v16 = swift_task_alloc();
  *(v0 + 456) = v16;
  v17 = *(v10 + 8);
  *v16 = v0;
  v16[1] = sub_26622B32C;
  v18 = *(v0 + 336);
  v19 = *(v0 + 280);

  return MEMORY[0x2821C5FD8](v18, v19, v0 + 56, v14, 1, v9, v17);
}

uint64_t sub_26622AA44()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 392);

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_266266968();
  v9 = sub_266266D68();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_266219000, v8, v9, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions donating to SiriSuggestions: %@", v10, 0xCu);
    sub_26622858C(v11, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v11, -1, -1);
    MEMORY[0x266780880](v10, -1, -1);
  }

  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 320);
  v18 = *(v0 + 240);
  v17 = *(v0 + 248);
  v19 = *(v0 + 232);

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);
  v20 = *(v0 + 336);
  v21 = *(v0 + 304);
  v22 = *(v0 + 312);
  v23 = *(v0 + 280);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_26622AC98()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v7 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = sub_26622B0D8;
  }

  else
  {
    v5 = *(v2 + 400);

    v4 = sub_26622ADB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26622ADB4()
{
  v26 = *(v0 + 473);

  v25 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(v0 + 153);
  v21 = *(v0 + 136);
  v22 = *(v0 + 137);
  sub_266266F38();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 224);
  *(v0 + 424) = logObject;
  sub_266266948();
  sub_266266918();
  v8 = *(v2 + 8);
  *(v0 + 432) = v8;
  *(v0 + 440) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  sub_2662666F8();
  sub_2662666E8();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  *v4 = v7;
  (*(v6 + 104))(v4, *MEMORY[0x277D60918], v5);
  v11 = qword_2800694C0;
  v12 = v7;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_28006A4D0;
  *(v0 + 80) = sub_266266778();
  *(v0 + 88) = sub_26622F800(&qword_280069828, MEMORY[0x277D60A20]);
  *(v0 + 56) = v13;
  *(v0 + 472) = 0;
  *(v0 + 96) = v21;
  *(v0 + 480) = v23;
  *(v0 + 97) = v22;
  *(v0 + 98) = *(v0 + 130);
  *(v0 + 102) = *(v0 + 134);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 113) = v24;
  *(v0 + 114) = *(v0 + 170);
  *(v0 + 118) = *(v0 + 174);
  *(v0 + 120) = v25;
  *(v0 + 128) = *(v0 + 480);
  *(v0 + 129) = v26;

  v14 = sub_266236E3C();
  *(v0 + 448) = v14;
  v15 = *(MEMORY[0x277D60580] + 4);
  v16 = swift_task_alloc();
  *(v0 + 456) = v16;
  v17 = *(v10 + 8);
  *v16 = v0;
  v16[1] = sub_26622B32C;
  v18 = *(v0 + 336);
  v19 = *(v0 + 280);

  return MEMORY[0x2821C5FD8](v18, v19, v0 + 56, v14, 1, v9, v17);
}

uint64_t sub_26622B0D8()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 416);

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_266266968();
  v9 = sub_266266D68();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_266219000, v8, v9, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions donating to SiriSuggestions: %@", v10, 0xCu);
    sub_26622858C(v11, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v11, -1, -1);
    MEMORY[0x266780880](v10, -1, -1);
  }

  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 320);
  v18 = *(v0 + 240);
  v17 = *(v0 + 248);
  v19 = *(v0 + 232);

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);
  v20 = *(v0 + 336);
  v21 = *(v0 + 304);
  v22 = *(v0 + 312);
  v23 = *(v0 + 280);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_26622B32C()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *(*v1 + 448);
  v5 = *(*v1 + 280);
  v6 = *(*v1 + 272);
  v7 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 464) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v9 = sub_26622B604;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
    v9 = sub_26622B4D4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26622B4D4()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v2(v7, v8);
  (*(v5 + 8))(v4, v6);
  v9 = v0[42];
  v10 = v0[38];
  v11 = v0[39];
  v12 = v0[35];
  v14 = v0[31];
  v13 = v0[32];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26622B604()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[38];
  v5 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v2(v4, v5);
  v6 = v0[58];
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[29];
  v10 = __swift_project_value_buffer(v9, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v7, v10, v9);
  v11 = v6;
  v12 = sub_266266968();
  v13 = sub_266266D68();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_266219000, v12, v13, "SuggestionsDonationProvider#donatePlayMediaIntentForSuggestions donating to SiriSuggestions: %@", v14, 0xCu);
    sub_26622858C(v15, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v15, -1, -1);
    MEMORY[0x266780880](v14, -1, -1);
  }

  v19 = v0[41];
  v18 = v0[42];
  v20 = v0[40];
  v22 = v0[30];
  v21 = v0[31];
  v23 = v0[29];

  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v18, v20);
  v24 = v0[42];
  v25 = v0[38];
  v26 = v0[39];
  v27 = v0[35];
  v29 = v0[31];
  v28 = v0[32];

  v30 = v0[1];

  return v30();
}

uint64_t sub_26622B8AC(uint64_t a1, void *a2)
{
  v26 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v24 - v5;
  v7 = sub_2662665F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_266266448();
  v24 = *(v12 - 8);
  v25 = v12;
  v13 = *(v24 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266266438();
  v28 = a2;
  v29 = a2;
  (*(v8 + 104))(v11, *MEMORY[0x277D557A8], v7);
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  sub_266266648();
  v17 = v16;
  (*(v8 + 8))(v11, v7);
  if (v17)
  {
    sub_266266A78();
  }

  v18 = v27;
  (*(v3 + 16))(v6, v26, v27);
  v19 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = v28;
  (*(v3 + 32))(v20 + v19, v6, v18);
  v22 = v21;
  sub_266266428();

  return (*(v24 + 8))(v15, v25);
}

uint64_t sub_26622BBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v82 = a3;
  v4 = sub_266265E58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v72 - v10;
  v12 = sub_266266988();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v83 = (v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v75 = v72 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v76 = v72 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (v72 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = v72 - v24;
  v26 = MEMORY[0x26677F410](a2);
  if (!v27)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v25, v39, v12);
    v40 = sub_266266968();
    v41 = sub_266266D58();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_266219000, v40, v41, "SuggestionsDonationService#supportsAffinityIntent returning false since there is no localBundleIdentifier", v42, 2u);
      MEMORY[0x266780880](v42, -1, -1);
    }

    (*(v13 + 8))(v25, v12);
    goto LABEL_25;
  }

  v28 = v27;
  v85 = v26;
  v73 = v11;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v74 = v5;
  v84 = v4;
  v29 = __swift_project_value_buffer(v12, static Logger.default);
  swift_beginAccess();
  v30 = *(v13 + 16);
  v78 = v13 + 16;
  v79 = v29;
  v77 = v30;
  v30(v23, v29, v12);

  v31 = sub_266266968();
  v32 = v13;
  v33 = sub_266266D58();

  v34 = os_log_type_enabled(v31, v33);
  v80 = v12;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v86 = v36;
    *v35 = 136315138;
    v37 = v85;
    *(v35 + 4) = sub_26621EAF0(v85, v28, &v86);
    _os_log_impl(&dword_266219000, v31, v33, "SuggestionsDonationService#supportsAffinityIntent for bundleID: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266780880](v36, -1, -1);
    MEMORY[0x266780880](v35, -1, -1);

    v38 = *(v32 + 8);
    v38(v23, v12);
  }

  else
  {

    v38 = *(v32 + 8);
    v38(v23, v12);
    v37 = v85;
  }

  v43 = sub_266266258();
  v86 = v37;
  v87 = v28;
  MEMORY[0x28223BE20](v43);
  v72[-2] = &v86;
  v44 = sub_266248E28(sub_26622F998, &v72[-4], v43);

  if (v44)
  {

    v45 = v83;
    v46 = v80;
    v77(v83, v79, v80);
    v47 = sub_266266968();
    v48 = sub_266266D58();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_266219000, v47, v48, "SuggestionsDonationService#supportsAffinityIntent returning true for first party app.", v49, 2u);
      MEMORY[0x266780880](v49, -1, -1);
    }

    v38(v45, v46);
    LOBYTE(v86) = 1;
    goto LABEL_26;
  }

  v72[0] = v38;
  v72[1] = v32;
  v50 = *(v81 + 16);
  v51 = v84;
  if (!v50)
  {
LABEL_22:

    v57 = v76;
    v58 = v80;
    v77(v76, v79, v80);
    v59 = sub_266266968();
    v60 = sub_266266D58();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_266219000, v59, v60, "SuggestionsDonationService#supportsAffinityIntent returning false since third party app was not found in installed apps.", v61, 2u);
      MEMORY[0x266780880](v61, -1, -1);
    }

    (v72[0])(v57, v58);
LABEL_25:
    LOBYTE(v86) = 0;
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8);
    return sub_266266C28();
  }

  v52 = *(v74 + 16);
  v83 = (v74 + 8);
  v53 = v81 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v54 = *(v74 + 72);
  while (1)
  {
    v52(v9, v53, v51);
    if (sub_266265E38() == v85 && v28 == v55)
    {
      break;
    }

    v56 = sub_2662670D8();

    if (v56)
    {
      goto LABEL_28;
    }

    v51 = v84;
    (*v83)(v9, v84);
    v53 += v54;
    if (!--v50)
    {
      goto LABEL_22;
    }
  }

LABEL_28:
  (*(v74 + 32))(v73, v9, v84);
  v63 = sub_266265E48();
  v86 = 0xD00000000000001BLL;
  v87 = 0x8000000266269080;
  MEMORY[0x28223BE20](v63);
  v72[-2] = &v86;
  v64 = sub_266248E28(sub_26622FB90, &v72[-4], v63);

  v65 = v75;
  v66 = v80;
  v77(v75, v79, v80);

  v67 = sub_266266968();
  v68 = sub_266266D58();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v86 = v70;
    *v69 = 67109378;
    *(v69 + 4) = v64 & 1;
    *(v69 + 8) = 2080;
    v71 = sub_26621EAF0(v85, v28, &v86);

    *(v69 + 10) = v71;
    _os_log_impl(&dword_266219000, v67, v68, "SuggestionsDonationService#supportsAffinityIntent returning: %{BOOL}d for third party app: %s.", v69, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x266780880](v70, -1, -1);
    MEMORY[0x266780880](v69, -1, -1);
  }

  else
  {
  }

  (v72[0])(v65, v66);
  LOBYTE(v86) = v64 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8);
  sub_266266C28();
  return (*v83)(v73, v84);
}

uint64_t static SuggestionsDonationProvider.donateIntentForEngagement(intent:currentRequestId:suggestionsAPIClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266228320;

  return (sub_26622D934)(a1, a2, a3, a4);
}

BOOL sub_26622C620(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_266267158();
  MEMORY[0x266780330](a1);
  v5 = sub_266267178();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_26622C6EC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8);
  v5 = *(v4 - 8);
  v29 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_266266968();
  v15 = sub_266266D48();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v7;
    v17 = a1;
    v18 = v4;
    v19 = a2;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_266219000, v14, v15, "SuggestionsDonationService#createExecutionParameters Creating execution parameters for Siri Suggestions", v16, 2u);
    v21 = v20;
    a2 = v19;
    v4 = v18;
    a1 = v17;
    v7 = v28;
    MEMORY[0x266780880](v21, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  (*(v5 + 16))(v7, a1, v4);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, v7, v4);
  aBlock[4] = sub_26622FA6C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26622D2C8;
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);

  v25 = [a2 performWithCompletion_];
  _Block_release(v24);
  return swift_unknownObjectRelease();
}

void sub_26622CA4C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069888, &qword_2662681E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - v19;
  v21 = sub_266265BF8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v78 = a2;
    v26 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8);
    sub_266266C18();
    return;
  }

  v69 = v25;
  v27 = v23;
  v70 = v13;
  v72 = v11;
  v73 = v7;
  v74 = a3;
  if (!a1 || (v28 = [a1 tracklist]) == 0)
  {
    v35 = *(v27 + 56);
    v76 = 1;
    v35(v20, 1, 1, v21);
    v71 = 0;
    v75 = 0;
    LODWORD(v69) = 1;
    v32 = v6;
    v36 = v72;
LABEL_11:
    v38 = 0x280069000uLL;
    sub_26622858C(v20, &qword_280069888, &qword_2662681E0);
    v39 = v73;
LABEL_12:
    v40 = v70;
    if (*(v38 + 1320) != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v32, static Logger.default);
    swift_beginAccess();
    (*(v39 + 16))(v40, v41, v32);
    v42 = sub_266266968();
    v43 = sub_266266D68();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v76;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_266219000, v42, v43, "SuggestionsDonationService#createExecutionParameters Unable to query currently playing song.", v46, 2u);
      MEMORY[0x266780880](v46, -1, -1);

      v47 = 2;
      (*(v39 + 8))(v40, v32);
    }

    else
    {

      (*(v39 + 8))(v40, v32);
      v47 = 2;
    }

    v48 = 2;
    v49 = v69;
    goto LABEL_18;
  }

  v29 = v28;
  v76 = [v28 shuffleType] != 0;
  v30 = [v29 globalItemCount];
  v31 = [v29 playingItemIndexPath];
  v32 = v6;
  v33 = v27;
  if (v31)
  {
    v34 = v31;
    sub_266265BE8();

    (*(v33 + 56))(v18, 0, 1, v21);
  }

  else
  {
    (*(v27 + 56))(v18, 1, 1, v21);
  }

  v36 = v72;
  sub_26622FB10(v18, v20);
  v37 = (*(v33 + 48))(v20, 1, v21);
  v75 = v30;
  v71 = v29;
  if (v37 == 1)
  {
    LODWORD(v69) = 0;
    goto LABEL_11;
  }

  (*(v33 + 32))(v69, v20, v21);
  v62 = [v29 items];
  v63 = sub_266265BD8();
  v64 = [v62 itemAtIndexPath_];

  v65 = [v64 metadataObject];
  if (!v65 || (v66 = [v65 song], v65, !v66))
  {
    (*(v33 + 8))(v69, v21);
    LODWORD(v69) = 0;
    v39 = v73;
    v38 = 0x280069000;
    goto LABEL_12;
  }

  v67 = [v66 isDisliked];
  v47 = [v66 isFavorite];

  v48 = v67;
  (*(v33 + 8))(v69, v21);
  v49 = 0;
  v39 = v73;
  v45 = v76;
  v38 = 0x280069000;
LABEL_18:
  if (*(v38 + 1320) != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v32, static Logger.default);
  swift_beginAccess();
  (*(v39 + 16))(v36, v50, v32);
  v89 = 1;
  v86 = v49;
  v51 = sub_266266968();
  v52 = sub_266266D48();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = v48;
    v55 = swift_slowAlloc();
    v77 = v55;
    *v53 = 136315138;
    LOBYTE(v78) = v54;
    BYTE1(v78) = v47;
    *(&v78 + 2) = v90;
    HIWORD(v78) = v91;
    v79 = 0;
    v80 = v89;
    v81 = v45;
    v82 = v87;
    v83 = v88;
    v84 = v75;
    v85 = v86;
    v56 = sub_266266A68();
    v73 = v32;
    v76 = v45;
    v58 = v47;
    v59 = sub_26621EAF0(v56, v57, &v77);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_266219000, v51, v52, "SuggestionsDonationService#createExecutionParameters Created execution parameters: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v60 = v55;
    v48 = v54;
    MEMORY[0x266780880](v60, -1, -1);
    MEMORY[0x266780880](v53, -1, -1);

    LOBYTE(v45) = v76;
    (*(v39 + 8))(v36, v73);
  }

  else
  {

    (*(v39 + 8))(v36, v32);
    v58 = v47;
  }

  v61 = v71;
  LOBYTE(v78) = v48;
  BYTE1(v78) = v58;
  *(&v78 + 2) = v90;
  HIWORD(v78) = v91;
  v79 = 0;
  v80 = v89;
  v81 = v45;
  v82 = v87;
  v83 = v88;
  v84 = v75;
  v85 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8);
  sub_266266C28();
}

void sub_26622D2C8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_26622D354(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266228640;

  return static SuggestionsDonationProvider.donatePlayMediaIntentForSuggestions(intent:)(a1);
}

uint64_t sub_26622D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266228640;

  return (sub_26622D934)(a1, a2, a3, a4);
}

unint64_t sub_26622D4B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069898, qword_2662681F0);
    v3 = sub_266267098();
    v4 = a1 + 32;

    while (1)
    {
      sub_266228524(v4, v13, &qword_2800696F8, &qword_266268008);
      result = sub_2662352F0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26622FB80(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_26622D5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069838, &qword_266268190);
    v3 = sub_266267098();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_266235334(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_26622D6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069848, &qword_2662681A0);
    v3 = sub_266267018();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_266267158();
      MEMORY[0x266780330](v10);
      result = sub_266267178();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
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
        *(v18 + 8 * v14) = v10;
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

unint64_t sub_26622D820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069840, &qword_266268198);
    v3 = sub_266267098();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2662353BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_26622D934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_266266988();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v8 = sub_266266958();
  v4[29] = v8;
  v9 = *(v8 - 8);
  v4[30] = v9;
  v10 = *(v9 + 64) + 15;
  v4[31] = swift_task_alloc();
  v11 = sub_266266858();
  v4[32] = v11;
  v12 = *(v11 - 8);
  v4[33] = v12;
  v13 = *(v12 + 64) + 15;
  v4[34] = swift_task_alloc();
  v14 = sub_266265F58();
  v4[35] = v14;
  v15 = *(v14 - 8);
  v4[36] = v15;
  v16 = *(v15 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v17 = sub_266265F08();
  v4[39] = v17;
  v18 = *(v17 - 8);
  v4[40] = v18;
  v19 = *(v18 + 64) + 15;
  v4[41] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069820, &qword_266268108) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v21 = sub_266265B98();
  v4[43] = v21;
  v22 = *(v21 - 8);
  v4[44] = v22;
  v23 = *(v22 + 64) + 15;
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26622DC38, 0, 0);
}

uint64_t sub_26622DC38()
{
  v117 = v0;
  if (!*(v0 + 160))
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v6 = (v0 + 200);
    v16 = *(v0 + 200);
    v8 = (v0 + 184);
    v17 = *(v0 + 184);
    v10 = (v0 + 176);
    v18 = *(v0 + 176);
    v19 = __swift_project_value_buffer(v18, static Logger.default);
    swift_beginAccess();
    (*(v17 + 16))(v16, v19, v18);
    v12 = sub_266266968();
    v13 = sub_266266D68();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "SuggestionsDonationProvider#donateIntentForEngagement Unable to get requestId. Not donating engagement to SiriSuggestions";
    goto LABEL_11;
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 152);
  sub_266265B88();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26622858C(*(v0 + 336), &qword_280069820, &qword_266268108);
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v6 = (v0 + 208);
    v5 = *(v0 + 208);
    v8 = (v0 + 184);
    v7 = *(v0 + 184);
    v10 = (v0 + 176);
    v9 = *(v0 + 176);
    v11 = __swift_project_value_buffer(v9, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v5, v11, v9);
    v12 = sub_266266968();
    v13 = sub_266266D68();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "SuggestionsDonationProvider#donateIntentForEngagement Unable to convert requestId to UUID. Not donating engagement to SiriSuggestions";
LABEL_11:
    _os_log_impl(&dword_266219000, v12, v13, v15, v14, 2u);
    MEMORY[0x266780880](v14, -1, -1);
LABEL_12:

LABEL_13:
    v20 = *v6;
    v21 = *v10;
    v22 = *v8;
    v23 = *(v0 + 360);
    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    v28 = *(v0 + 272);
    v29 = *(v0 + 248);
    v31 = *(v0 + 216);
    v30 = *(v0 + 224);
    v113 = *(v0 + 208);
    v114 = *(v0 + 200);
    v115 = *(v0 + 192);
    (*(v22 + 8))(v20, v21);

    v32 = *(v0 + 8);

    return v32();
  }

  v34 = *(v0 + 144);
  (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 336), *(v0 + 344));
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (!v40)
    {
LABEL_50:
      v8 = (v0 + 352);
      v10 = (v0 + 344);
      v6 = (v0 + 360);
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v93 = *(v0 + 216);
      v94 = *(v0 + 176);
      v95 = *(v0 + 184);
      v96 = __swift_project_value_buffer(v94, static Logger.default);
      swift_beginAccess();
      (*(v95 + 16))(v93, v96, v94);
      v97 = sub_266266968();
      v98 = sub_266266D48();
      v99 = os_log_type_enabled(v97, v98);
      v100 = *(v0 + 216);
      v101 = *(v0 + 176);
      v102 = *(v0 + 184);
      if (v99)
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_266219000, v97, v98, "SuggestionsDonationProvider#donateIntentForEngagement Unable to match intent to a SiriSuggestion. Not donating an engagement", v103, 2u);
        MEMORY[0x266780880](v103, -1, -1);
      }

      (*(v102 + 8))(v100, v101);
      goto LABEL_13;
    }

    v41 = v40;
    v42 = *(v0 + 144);
    v43 = [v41 mediaItems];
    if (!v43)
    {
      goto LABEL_48;
    }

    v38 = v43;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v44 = sub_266266BB8();

    if (v44 >> 62)
    {
      if (sub_266267078())
      {
LABEL_25:
        if ((v44 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x266780220](0, v44);
        }

        else
        {
          if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_76;
          }

          v45 = *(v44 + 32);
        }

        v38 = v45;

        v46 = [v38 identifier];
        if (v46)
        {
          v47 = v46;
          sub_266266A58();

          v48 = sub_266265F68();
          v49 = *(v48 + 48);
          v50 = *(v48 + 52);
          swift_allocObject();
          if (sub_266265F78())
          {
            v52 = *(v0 + 320);
            v51 = *(v0 + 328);
            v54 = *(v0 + 304);
            v53 = *(v0 + 312);
            v55 = *(v0 + 296);
            v56 = *(v0 + 288);
            v57 = *(v0 + 280);
            sub_266265F18();
            sub_266265EF8();
            (*(v52 + 8))(v51, v53);
            (*(v56 + 104))(v55, *MEMORY[0x277D555F0], v57);
            sub_26622F800(&qword_280069830, MEMORY[0x277D55618]);
            sub_266266B78();
            sub_266266B78();
            v59 = *(v0 + 296);
            v58 = *(v0 + 304);
            v61 = *(v0 + 280);
            v60 = *(v0 + 288);
            if (*(v0 + 112) == *(v0 + 128) && *(v0 + 120) == *(v0 + 136))
            {
              v62 = *(v60 + 8);
              v62(*(v0 + 296), *(v0 + 280));
              v62(v58, v61);

LABEL_56:
              if (qword_280069550 != -1)
              {
                swift_once();
              }

              v108 = *(v0 + 144);
              v63 = sub_26624E0FC(word_28006A730);
              v65 = v109;

              goto LABEL_38;
            }

            v104 = *(v0 + 120);
            v105 = *(v0 + 136);
            v106 = sub_2662670D8();
            v107 = *(v60 + 8);
            v107(v59, v61);
            v107(v58, v61);

            if (v106)
            {
              goto LABEL_56;
            }
          }
        }

        if ([v38 type] != 20 && objc_msgSend(v38, sel_type) != 6)
        {
          if (qword_2800694D8 != -1)
          {
            swift_once();
          }

          if (!sub_26622C620([v38 type], qword_28006A4F0))
          {

            goto LABEL_49;
          }

          if (qword_280069558 != -1)
          {
            swift_once();
          }

          v110 = *(v0 + 144);
          v111 = word_28006A800;
LABEL_64:
          v63 = sub_26624E0FC(v111);
          v65 = v112;

          goto LABEL_38;
        }

        if (qword_280069560 == -1)
        {
LABEL_63:
          v110 = *(v0 + 144);
          v111 = word_28006A8D0;
          goto LABEL_64;
        }

LABEL_76:
        swift_once();
        goto LABEL_63;
      }
    }

    else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v38 = *(v0 + 144);

    goto LABEL_49;
  }

  v36 = v35;
  v37 = *(v0 + 144);
  if ([v36 affinityType] != 1)
  {
    if ([v36 affinityType] == 2)
    {
      if (qword_280069548 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 144);
      v39 = word_28006A660;
      goto LABEL_37;
    }

LABEL_48:
    v38 = *(v0 + 144);
LABEL_49:

    goto LABEL_50;
  }

  if (qword_280069540 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 144);
  v39 = word_28006A590;
LABEL_37:
  v63 = sub_26624E0FC(v39);
  v65 = v64;
LABEL_38:

  v66 = *(v0 + 272);

  sub_26622D820(MEMORY[0x277D84F90]);
  sub_266266848();
  sub_266266F38();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v68 = *(v0 + 240);
  v67 = *(v0 + 248);
  v69 = *(v0 + 232);
  *(v0 + 368) = logObject;
  sub_266266948();
  sub_266266918();
  v70 = *(v68 + 8);
  *(v0 + 376) = v70;
  *(v0 + 384) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v70(v67, v69);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v71 = *(v0 + 224);
  v72 = *(v0 + 176);
  v73 = *(v0 + 184);
  v74 = __swift_project_value_buffer(v72, static Logger.default);
  *(v0 + 392) = v74;
  swift_beginAccess();
  v75 = *(v73 + 16);
  *(v0 + 400) = v75;
  *(v0 + 408) = (v73 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v75(v71, v74, v72);

  v76 = sub_266266968();
  v77 = sub_266266D48();

  v78 = os_log_type_enabled(v76, v77);
  v79 = *(v0 + 224);
  v80 = *(v0 + 176);
  v81 = *(v0 + 184);
  if (v78)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v116 = v83;
    *v82 = 136315138;
    v84 = sub_26621EAF0(v63, v65, &v116);

    *(v82 + 4) = v84;
    _os_log_impl(&dword_266219000, v76, v77, "Submitting engagement for actionId: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x266780880](v83, -1, -1);
    MEMORY[0x266780880](v82, -1, -1);
  }

  else
  {
  }

  v85 = *(v81 + 8);
  v85(v79, v80);
  *(v0 + 416) = v85;
  v86 = *(v0 + 168);
  v87 = v86[3];
  v88 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v89 = *(MEMORY[0x277D60598] + 4);
  v90 = swift_task_alloc();
  *(v0 + 424) = v90;
  *v90 = v0;
  v90[1] = sub_26622E8F0;
  v91 = *(v0 + 360);
  v92 = *(v0 + 272);

  return MEMORY[0x2821C6008](v92, v91, v87, v88);
}

uint64_t sub_26622E8F0()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_26622EB8C;
  }

  else
  {
    v3 = sub_26622EA04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26622EA04()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[29];
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v2(v7, v8);
  (*(v5 + 8))(v4, v6);
  v9 = v0[42];
  v10 = v0[41];
  v12 = v0[37];
  v11 = v0[38];
  v13 = v0[34];
  v14 = v0[31];
  v16 = v0[27];
  v15 = v0[28];
  v19 = v0[26];
  v20 = v0[25];
  v21 = v0[24];
  (*(v0[44] + 8))(v0[45], v0[43]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_26622EB8C()
{
  v1 = v0[54];
  v37 = v0[50];
  v39 = v0[51];
  v2 = v0[48];
  v35 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[31];
  v6 = v0[29];
  v7 = v0[24];
  v8 = v0[22];
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v3(v5, v6);
  v37(v7, v35, v8);
  v9 = v1;
  v10 = sub_266266968();
  v11 = sub_266266D68();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[54];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_266219000, v10, v11, "SuggestionsDonationProvider#donateIntentForEngagement Error donating engagement to SiriSuggestions: %@", v13, 0xCu);
    sub_26622858C(v14, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v14, -1, -1);
    MEMORY[0x266780880](v13, -1, -1);
  }

  v17 = v0[54];
  v18 = v0[52];
  v20 = v0[33];
  v19 = v0[34];
  v21 = v0[32];
  v23 = v0[23];
  v22 = v0[24];
  v24 = v0[22];

  v18(v22, v24);
  (*(v20 + 8))(v19, v21);
  v25 = v0[42];
  v26 = v0[41];
  v28 = v0[37];
  v27 = v0[38];
  v29 = v0[34];
  v30 = v0[31];
  v32 = v0[27];
  v31 = v0[28];
  v36 = v0[26];
  v38 = v0[25];
  v40 = v0[24];
  (*(v0[44] + 8))(v0[45], v0[43]);

  v33 = v0[1];

  return v33();
}

unint64_t sub_26622EE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069890, &qword_2662681E8);
    v3 = sub_266267098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2662353BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_26622EF54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069858, &unk_2662681B0);
    v3 = sub_266267098();
    v4 = a1 + 32;

    while (1)
    {
      sub_266228524(v4, &v13, &qword_280069860, &qword_2662684F0);
      v5 = v13;
      v6 = v14;
      result = sub_2662353BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26622F9B8(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_26622F088(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_266266958();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26622F148, 0, 0);
}

uint64_t sub_26622F148()
{
  sub_266266F38();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v0[24] = logObject;
  sub_266266948();
  v27 = MEMORY[0x277D84F90];
  LOBYTE(v26) = 2;
  sub_266266918();
  v5 = *(v2 + 8);
  v0[25] = v5;
  v0[26] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v4);
  [v3 setTracklistRange_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069868, &unk_2662681C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266267DB0;
  v7 = *MEMORY[0x277CD5BB0];
  *(inited + 32) = sub_266266A58();
  *(inited + 40) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695D8, &qword_266267E40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2662680F0;
  v10 = *MEMORY[0x277CD5B60];
  *(v9 + 32) = sub_266266A58();
  *(v9 + 40) = v11;
  v12 = *MEMORY[0x277CD5B30];
  *(v9 + 48) = sub_266266A58();
  *(v9 + 56) = v13;
  v14 = *MEMORY[0x277CD5B38];
  *(v9 + 64) = sub_266266A58();
  *(v9 + 72) = v15;
  v16 = sub_266266B98();

  v17 = [objc_opt_self() propertySetWithProperties_];

  *(inited + 48) = v17;
  sub_26622EE50(inited);
  swift_setDeallocating();
  sub_26622858C(inited + 32, &qword_280069870, &qword_2662681D0);
  v18 = objc_allocWithZone(MEMORY[0x277CD6018]);
  sub_266228130(0, &qword_280069878, 0x277CD6018);
  v19 = sub_266266A28();

  v20 = [v18 initWithProperties:0 relationships:v19];
  v0[27] = v20;

  v21 = v20;
  [v3 setPlayingItemProperties_];
  [v3 setQueueItemProperties_];

  v22 = swift_task_alloc();
  v0[28] = v22;
  *(v22 + 16) = v3;
  v23 = *(MEMORY[0x277D85A40] + 4);
  v24 = swift_task_alloc();
  v0[29] = v24;
  *v24 = v0;
  v24[1] = sub_26622F4FC;

  return MEMORY[0x2822008A0](v0 + 9, 0, 0, 0xD000000000000020, 0x80000002662690C0, sub_26622F9D0, v22, &type metadata for AudioSuggestionsExecutionParameters);
}

uint64_t sub_26622F4FC()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_26622F714;
  }

  else
  {
    v3 = sub_26622F610;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}