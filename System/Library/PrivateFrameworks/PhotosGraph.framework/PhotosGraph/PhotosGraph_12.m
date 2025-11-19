unint64_t sub_22F1D033C()
{
  result = qword_27DAB22F0;
  if (!qword_27DAB22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB22F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlexRegionLanguageScore(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlexRegionLanguageScore(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_22F1D0410()
{
  result = qword_27DAB2310;
  if (!qword_27DAB2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2310);
  }

  return result;
}

unint64_t sub_22F1D0488()
{
  v1 = 0x6C706D4920746F4ELL;
  v2 = 0x73676E6F53206F4ELL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *sub_22F1D05E4()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v54 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v12 = sub_22F1D0C98();
  if (!v0)
  {
    v13 = v12;
    v55 = v9;
    v56 = v6;
    v57 = v2;
    v54 = 0;
    v14 = v12[2];
    if (v14)
    {
      v62 = MEMORY[0x277D84F90];
      sub_22F146514(0, v14, 0);
      v15 = v62;
      v16 = v14 - 1;
      v17 = 4;
      v18 = v57;
      while (1)
      {
        memcpy(v61, &v13[v17], 0x128uLL);
        memcpy(v60, &v13[v17], sizeof(v60));
        sub_22F18C4EC(v61, &v59);
        Song.init(_:)(v60);
        v62 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_22F146514(v19 > 1, v20 + 1, 1);
          v18 = v57;
          v15 = v62;
        }

        *(v15 + 16) = v20 + 1;
        sub_22F15CB04(v11, v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + v18[9] * v20);
        if (!v16)
        {
          break;
        }

        --v16;
        v17 += 37;
      }
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    v21 = v55;
    v2 = v56;
    v22 = *(v15 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
      do
      {
        if (v23 >= *(v15 + 16))
        {
          __break(1u);
LABEL_41:
          swift_once();
LABEL_26:
          v39 = sub_22F740B90();
          __swift_project_value_buffer(v39, qword_2810B4D90);
          v2 = v24;
          v40 = sub_22F740B70();
          v41 = sub_22F7415D0();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v61[0] = v43;
            *v42 = 136315138;
            v44 = MusicCuration.description.getter();
            v46 = sub_22F145F20(v44, v45, v61);

            *(v42 + 4) = v46;
            _os_log_impl(&dword_22F0FC000, v40, v41, "[SpecificationBasedMusicCurator] musicCuration: %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v43);
            MEMORY[0x2319033A0](v43, -1, -1);
            MEMORY[0x2319033A0](v42, -1, -1);
          }

          return v2;
        }

        v25 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v26 = v57[9];
        sub_22F15CAA0(v15 + v25 + v26 * v23, v21);
        v27 = *(v21 + 72);
        if (v27 != 2 && (v27 & 1) != 0)
        {
          sub_22F15CBD8(v21);
        }

        else
        {
          sub_22F15CB04(v21, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61[0] = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F146514(0, v24[2] + 1, 1);
            v24 = v61[0];
          }

          v30 = v24[2];
          v29 = v24[3];
          if (v30 >= v29 >> 1)
          {
            sub_22F146514(v29 > 1, v30 + 1, 1);
            v24 = v61[0];
          }

          v24[2] = v30 + 1;
          v31 = v24 + v25 + v30 * v26;
          v2 = v56;
          sub_22F15CB04(v56, v31);
          v21 = v55;
        }

        ++v23;
      }

      while (v22 != v23);

      v32 = v24[2];
      if (v32)
      {
        if (v32 >= 0xA)
        {
          sub_22F10AB68(v24, v24 + v25, 0, 0x13uLL);
          v34 = v33;

          v24 = v34;
        }

        v35 = MEMORY[0x277D84F90];
        v36 = type metadata accessor for MusicCuration();
        v37 = objc_allocWithZone(v36);
        *&v37[OBJC_IVAR___PGMusicCuration_curatorVersion] = 2;
        *&v37[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v24;
        *&v37[OBJC_IVAR___PGMusicCuration_musicForYou] = v35;
        *&v37[OBJC_IVAR___PGMusicCuration_musicForLocation] = v35;
        *&v37[OBJC_IVAR___PGMusicCuration_musicForTime] = v35;
        *&v37[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v35;
        v38 = &v37[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
        *v38 = v35;
        *(v38 + 1) = 0;
        *(v38 + 2) = 0;
        *&v37[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v35;
        v58.receiver = v37;
        v58.super_class = v36;
        v24 = objc_msgSendSuper2(&v58, sel_init);
        if (qword_2810A9460 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_41;
      }

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v51 = sub_22F740B90();
      __swift_project_value_buffer(v51, qword_2810B4D90);
      v48 = sub_22F740B70();
      v49 = sub_22F7415E0();
      if (os_log_type_enabled(v48, v49))
      {
        v2 = swift_slowAlloc();
        *v2 = 0;
        v50 = "[SpecificationBasedMusicCurator] No clean songs within song search results";
        goto LABEL_37;
      }
    }

    else
    {

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v47 = sub_22F740B90();
      __swift_project_value_buffer(v47, qword_2810B4D90);
      v48 = sub_22F740B70();
      v49 = sub_22F7415E0();
      if (os_log_type_enabled(v48, v49))
      {
        v2 = swift_slowAlloc();
        *v2 = 0;
        v50 = "[SpecificationBasedMusicCurator] No songs found from search results";
LABEL_37:
        _os_log_impl(&dword_22F0FC000, v48, v49, v50, v2, 2u);
        MEMORY[0x2319033A0](v2, -1, -1);
      }
    }

    sub_22F1D2050();
    swift_allocError();
    *v52 = 3;
    swift_willThrow();
  }

  return v2;
}

void *sub_22F1D0C98()
{
  v2 = v1;
  v3 = v0;
  v32 = 0;
  v33 = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR___PGSpecificationBasedMusicCurator_curationSpecification);
  v5 = *(v0 + OBJC_IVAR___PGSpecificationBasedMusicCurator_curationSpecification);
  if (v5[2])
  {
    v6 = v5[5];
    v31[0] = v5[4];
    v31[1] = v6;
    swift_bridgeObjectRetain_n();
    MEMORY[0x231900B10](32, 0xE100000000000000);

    MEMORY[0x231900B10](v31[0], v6);
  }

  v7 = v4[1];
  if (v7[2])
  {
    v8 = v7[4];
    v9 = v7[5];

    MEMORY[0x231900B10](v8, v9);
  }

  v11 = v32;
  v10 = v33;
  if (sub_22F740F10() > 0)
  {
    v12 = 1;
    goto LABEL_12;
  }

  v13 = v4[2];
  if (v13[2])
  {
    v12 = 3;
LABEL_11:
    v11 = v13[4];
    v14 = v13[5];

    v10 = v14;
    goto LABEL_12;
  }

  v13 = v4[3];
  if (v13[2])
  {
    v12 = 4;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v15 = sub_22F740B90();
  __swift_project_value_buffer(v15, qword_2810B4D90);

  v16 = sub_22F740B70();
  v17 = sub_22F7415C0();
  if (os_log_type_enabled(v16, v17))
  {
    v34 = v3;
    v18 = v2;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_22F145F20(v11, v10, v31);
    _os_log_impl(&dword_22F0FC000, v16, v17, "[SpecificationBasedMusicCurator] Using legacy search term: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x2319033A0](v20, -1, -1);
    v21 = v19;
    v2 = v18;
    MEMORY[0x2319033A0](v21, -1, -1);
  }

  v22 = sub_22F1D10B0(v11, v10, v12);

  if (!v2)
  {

    v23 = sub_22F740B70();
    v24 = sub_22F7415D0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31[0] = v26;
      *v25 = 136315138;
      v27 = MEMORY[0x231900D40](v22, &type metadata for MusicKitCatalogSong);
      v29 = sub_22F145F20(v27, v28, v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22F0FC000, v23, v24, "[SpecificationBasedMusicCurator] legacySearchFoundSongs: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x2319033A0](v26, -1, -1);
      MEMORY[0x2319033A0](v25, -1, -1);
    }
  }

  return v22;
}

void *sub_22F1D10B0(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v8 = sub_22F740C00();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F740BF0();
  v12 = sub_22F22FB24(v11, 0);
  v13 = v4;
  if (!v4)
  {
    v14 = v12;
    v106 = 0;
    v15 = dispatch_group_create();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = v16 + 16;
    *(v16 + 24) = -1;
    dispatch_group_enter(v15);
    v119 = a1;
    if (a3 > 1u)
    {
      v105 = v16;
      if (a3 == 2)
      {
        v103 = v3;
        v39 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v115 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v116 = v39;
        v117 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v118 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v40 = objc_opt_self();
        sub_22F1D20B0(&v115, &v111);
        v41 = [v40 ignoreProgress];
        v42 = swift_allocObject();
        *(v42 + 16) = v16;
        *(v42 + 24) = v15;
        v43 = qword_2810A9440;

        v44 = v15;
        if (v43 != -1)
        {
          swift_once();
        }

        v104 = v16 + 16;
        v45 = sub_22F740B90();
        __swift_project_value_buffer(v45, qword_2810B4D48);

        v46 = sub_22F740B70();
        v47 = sub_22F7415C0();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v102 = v41;
          v49 = v48;
          v50 = v15;
          v51 = v14;
          v52 = swift_slowAlloc();
          *&v111 = v52;
          *v49 = 136315138;
          v53 = v119;
          *(v49 + 4) = sub_22F145F20(v119, a2, &v111);
          _os_log_impl(&dword_22F0FC000, v46, v47, "[MemoriesMusic] Search for songs by artist: '%s'", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          v54 = v52;
          v14 = v51;
          v15 = v50;
          v16 = v105;
          MEMORY[0x2319033A0](v54, -1, -1);
          v55 = v49;
          v41 = v102;
          MEMORY[0x2319033A0](v55, -1, -1);
        }

        else
        {

          v53 = v119;
        }

        v111 = v115;
        v112 = v116;
        v113 = v117;
        v114 = v118;

        sub_22F231A34(v53, a2, &v111, v14, sub_22F1D21DC, v42);

        sub_22F1D210C(&v115);
        v3 = v103;
        v17 = v104;
      }

      else if (a3 == 3)
      {
        v18 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v115 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v116 = v18;
        v117 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v118 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v19 = objc_opt_self();
        sub_22F1D20B0(&v115, &v111);
        v20 = [v19 ignoreProgress];
        v21 = swift_allocObject();
        *(v21 + 16) = v16;
        *(v21 + 24) = v15;
        v22 = qword_2810A9440;

        v23 = v15;
        if (v22 != -1)
        {
          swift_once();
        }

        v24 = sub_22F740B90();
        __swift_project_value_buffer(v24, qword_2810B4D48);

        v25 = sub_22F740B70();
        v26 = sub_22F7415C0();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v104 = v16 + 16;
          v103 = v15;
          v28 = v14;
          v29 = v27;
          v30 = v20;
          v31 = swift_slowAlloc();
          *&v111 = v31;
          *v29 = 136315138;
          v32 = v119;
          *(v29 + 4) = sub_22F145F20(v119, a2, &v111);
          _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] Search for songs with genre: '%s'", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          v33 = v31;
          v20 = v30;
          MEMORY[0x2319033A0](v33, -1, -1);
          v34 = v29;
          v14 = v28;
          v15 = v103;
          MEMORY[0x2319033A0](v34, -1, -1);
        }

        else
        {

          v32 = v119;
        }

        v111 = v115;
        v112 = v116;
        v113 = v117;
        v114 = v118;

        sub_22F233C0C(v32, a2, &v111, v14, sub_22F1D2268, v21);
LABEL_30:

        sub_22F1D210C(&v115);
        v16 = v105;
LABEL_31:
        sub_22F741620();
        swift_beginAccess();
        v79 = *(v16 + 24);
        if (v79 == 255)
        {
          sub_22F1D2050();
          v13 = swift_allocError();
          *v86 = 2;
          swift_willThrow();
LABEL_39:

          return v13;
        }

        v13 = *(v16 + 16);
        if (v79)
        {
          sub_22F1D2160(*(v16 + 16), *(v16 + 24));
          sub_22F1D2178(v13, 1);
          if (qword_2810A9460 != -1)
          {
            swift_once();
          }

          v80 = sub_22F740B90();
          __swift_project_value_buffer(v80, qword_2810B4D90);

          v81 = sub_22F740B70();
          v82 = sub_22F7415E0();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v103 = v15;
            v84 = v83;
            v85 = swift_slowAlloc();
            *&v111 = v85;
            *v84 = 136315138;
            *(v84 + 4) = sub_22F145F20(v119, a2, &v111);
            _os_log_impl(&dword_22F0FC000, v81, v82, "[SpecificationBasedMusicCurator] Failed search songs request for the search term '%s'", v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v85);
            MEMORY[0x2319033A0](v85, -1, -1);
            v15 = v103;
            MEMORY[0x2319033A0](v84, -1, -1);
          }

          swift_willThrow();
          sub_22F1D2184(v13, v79);
          goto LABEL_39;
        }

        v87 = v13[2];
        sub_22F1D2160(*(v16 + 16), *(v16 + 24));
        sub_22F1D2178(v13, 0);
        if (v87)
        {
          if (qword_2810A9460 != -1)
          {
            swift_once();
          }

          v88 = sub_22F740B90();
          __swift_project_value_buffer(v88, qword_2810B4D90);

          sub_22F1D2160(v13, v79);
          v89 = sub_22F740B70();
          v90 = sub_22F7415C0();

          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v104 = v14;
            v93 = v92;
            *&v111 = v92;
            *v91 = 134218242;
            *(v91 + 4) = v13[2];
            sub_22F1D2184(v13, v79);
            *(v91 + 12) = 2080;
            *(v91 + 14) = sub_22F145F20(v119, a2, &v111);
            _os_log_impl(&dword_22F0FC000, v89, v90, "[SpecificationBasedMusicCurator] Found %ld songs for the search term '%s'", v91, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v93);
            MEMORY[0x2319033A0](v93, -1, -1);
            v94 = v91;
LABEL_49:
            MEMORY[0x2319033A0](v94, -1, -1);

            sub_22F1D2184(v13, v79);

LABEL_52:

            return v13;
          }

          sub_22F1D2184(v13, v79);
        }

        else
        {
          if (qword_2810A9460 != -1)
          {
            swift_once();
          }

          v95 = sub_22F740B90();
          __swift_project_value_buffer(v95, qword_2810B4D90);

          v89 = sub_22F740B70();
          v96 = sub_22F7415E0();

          if (os_log_type_enabled(v89, v96))
          {
            v97 = swift_slowAlloc();
            v104 = v14;
            v98 = v97;
            v99 = swift_slowAlloc();
            *&v111 = v99;
            *v98 = 136315138;
            *(v98 + 4) = sub_22F145F20(v119, a2, &v111);
            _os_log_impl(&dword_22F0FC000, v89, v96, "[SpecificationBasedMusicCurator] Did not find any songs in the Music catalog for the search '%s'.", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v99);
            MEMORY[0x2319033A0](v99, -1, -1);
            v94 = v98;
            goto LABEL_49;
          }
        }

        sub_22F1D2184(v13, v79);

        goto LABEL_52;
      }

      v63 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v115 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v116 = v63;
      v117 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v118 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v64 = objc_opt_self();
      sub_22F1D20B0(&v115, &v111);
      v20 = [v64 ignoreProgress];
      v65 = swift_allocObject();
      *(v65 + 16) = v16;
      *(v65 + 24) = v15;
      v66 = qword_2810A9440;

      v67 = v15;
      if (v66 != -1)
      {
        swift_once();
      }

      v68 = sub_22F740B90();
      __swift_project_value_buffer(v68, qword_2810B4D48);

      v69 = sub_22F740B70();
      v70 = sub_22F7415C0();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v104 = v17;
        v103 = v15;
        v72 = v14;
        v73 = v71;
        v74 = v20;
        v75 = swift_slowAlloc();
        *&v111 = v75;
        *v73 = 136315138;
        v76 = v119;
        *(v73 + 4) = sub_22F145F20(v119, a2, &v111);
        _os_log_impl(&dword_22F0FC000, v69, v70, "[MemoriesMusic] Search for songs with mood: '%s'", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        v77 = v75;
        v20 = v74;
        MEMORY[0x2319033A0](v77, -1, -1);
        v78 = v73;
        v14 = v72;
        v15 = v103;
        MEMORY[0x2319033A0](v78, -1, -1);
      }

      else
      {

        v76 = v119;
      }

      v111 = v115;
      v112 = v116;
      v113 = v117;
      v114 = v118;

      sub_22F232404(v76, a2, &v111, v14, sub_22F1D2268, v65);
      goto LABEL_30;
    }

    if (a3)
    {
      v56 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v111 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v112 = v56;
      v58 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v57 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v113 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v114 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v107 = v58;
      v59 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v108 = v57;
      v109 = v59;
      v110 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v60 = objc_opt_self();
      sub_22F1D20B0(&v111, &v115);
      v61 = [v60 ignoreProgress];

      v62 = v15;
      sub_22F22FDFC(a1, a2, &v107, v61, v14, v16, v62);

      v115 = v107;
      v116 = v108;
      v117 = v109;
      v118 = v110;
      sub_22F1D210C(&v115);
      goto LABEL_31;
    }

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v35 = sub_22F740B90();
    __swift_project_value_buffer(v35, qword_2810B4D90);
    v36 = sub_22F740B70();
    v37 = sub_22F7415C0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22F0FC000, v36, v37, "[Warning-Music][SpecificationBasedMusicCurator] No curation to do since searchType is none. Expect curation to get done downstream.", v38, 2u);
      MEMORY[0x2319033A0](v38, -1, -1);
    }

    dispatch_group_leave(v15);

    return MEMORY[0x277D84F90];
  }

  return v13;
}

void sub_22F1D1EF4(void *a1, char a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = *(a3 + 24);
  a2 &= 1u;
  *(a3 + 24) = a2;
  sub_22F1D2184(v8, v9);
  sub_22F1D2178(a1, a2);
  dispatch_group_leave(a4);
}

unint64_t sub_22F1D2050()
{
  result = qword_27DAB2330;
  if (!qword_27DAB2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2330);
  }

  return result;
}

void sub_22F1D20A4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_22F1D2160(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_22F1D2178(result, a2 & 1);
  }

  return result;
}

id sub_22F1D2178(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_22F1D2184(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_22F1D20A4(a1, a2 & 1);
  }
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_22F1D2214()
{
  result = qword_27DAB2338;
  if (!qword_27DAB2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2338);
  }

  return result;
}

unint64_t sub_22F1D226C(unint64_t a1, unint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 0;
  if (v4)
  {
    v6 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v6) = 1;
    }

    v7 = 4 << v6;
    v8 = 15;
    do
    {
      v9 = v8 & 0xC;
      v10 = v8;
      if (v9 == v7)
      {
        v14 = v8;
        v10 = sub_22F1D244C(v8, a1, a2);
        v8 = v14;
      }

      v11 = v10 >> 16;
      if (v10 >> 16 >= v4)
      {
        __break(1u);
LABEL_27:
        __break(1u);
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v18 = v8;
        v13 = sub_22F740FC0();
        v8 = v18;
        if (v9 != v7)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v19[0] = a1;
          v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v12 = v19;
        }

        else
        {
          v12 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a1 & 0x1000000000000000) == 0)
          {
            v17 = v8;
            v12 = sub_22F741B80();
            v8 = v17;
          }
        }

        v13 = *(v12 + v11);
        if (v9 != v7)
        {
LABEL_19:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_20;
        }
      }

      v8 = sub_22F1D244C(v8, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_8:
        v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_9;
      }

LABEL_20:
      if (v4 <= v8 >> 16)
      {
        goto LABEL_27;
      }

      v8 = sub_22F740FA0();
LABEL_9:
      v5 ^= (v5 << 6) + (v5 >> 2) + v13 + 2654435769u;
    }

    while (4 * v4 != v8 >> 14);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22F1D244C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22F740FD0();
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
    v5 = MEMORY[0x231900B60](15, a1 >> 16);
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

void static ImportantEntitiesTuning.evaluateImportantEntitiesInferenceAcrossParameters(withDetectionType:inGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:progressReporter:sendToCoreAnalytics:)(__int16 a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_22F741690();
  if (v6)
  {
    return;
  }

  if (a1 == 1)
  {
    v12 = _s11PhotosGraph23ImportantEntitiesTuningC46getChildrenPositiveAndNegativeLocalIdentifiers02inB004truehcdkL00njcdkL0ShySSG_AHtSo7PGGraphC_A2HtFZ_0(a2, a3, a4);
  }

  else
  {
    v12 = _s11PhotosGraph23ImportantEntitiesTuningC41getPetPositiveAndNegativeLocalIdentifiers02inB004truehcdkL00njcdkL0ShySSG_AHtSo7PGGraphC_A2HtFZ_0(a2, a3, a4);
  }

  v14 = v12;
  v15 = v13;
  sub_22F741690();
  v16 = objc_opt_self();
  v17 = v16;
  v18 = qword_22F7796B0[a1 == 1];
  v19 = &selRef_usersChildrenInferenceRecencyThresholdFromLatestMomentDateYears;
  if (a1 != 1)
  {
    v19 = &selRef_usersPetsInferenceRecencyThresholdFromLatestMomentDateYears;
  }

  v20 = *v19;
  if (a1 == 1)
  {
    v21 = 15;
  }

  else
  {
    v21 = 10;
  }

  v119 = v21;
  if (a1 == 1)
  {
    v22 = &selRef_usersChildrenInferenceMinimumLifespanYears;
  }

  else
  {
    v22 = &selRef_usersPetsInferenceMinimumLifespanYears;
  }

  v23 = 0x800000022F78F140;
  v24 = 0x7265666E49746570;
  if (a1 == 1)
  {
    v24 = 0xD000000000000011;
  }

  v135 = v24;
  if (a1 != 1)
  {
    v23 = 0xEC00000065636E65;
  }

  v118 = v23;
  [v16 v20];
  v26 = v25;
  [v17 *v22];
  v28 = v27 * 31557600.0;
  v29 = v26 * 31557600.0;
  *(&v144 + 1) = GEOLocationCoordinate2DMake;
  v145 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v142 = 1107296256;
  v143 = sub_22F1D3828;
  *&v144 = &block_descriptor_3;
  v30 = _Block_copy(&aBlock);
  v115 = objc_opt_self();
  v132 = [v115 progressReporterWithProgressBlock_];
  _Block_release(v30);

  type metadata accessor for ImportantEntitiesTuningEventFactory();
  v117 = a6;
  v31 = v15;
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = 0;
  type metadata accessor for ImportantEntitiesTuningSubject();
  v33 = swift_initStackObject();
  v116 = a1;
  *(v33 + 40) = a1;
  *(v33 + 16) = a2;
  *(v33 + 24) = v14;
  *(v33 + 32) = v31;
  type metadata accessor for ImportantEntitiesTuningParameter();
  v34 = v14;
  v35 = swift_initStackObject();
  *(v35 + 16) = 0xD000000000000010;
  *(v35 + 24) = 0x800000022F7912E0;
  *(v35 + 32) = v26 * 31557600.0;
  *(v35 + 40) = v28;
  *(v35 + 48) = v119;
  *(v35 + 56) = v18;
  *(v35 + 64) = xmmword_22F7796C0;
  type metadata accessor for ImportantEntitiesTuningEvaluator();
  v36 = swift_allocObject();
  v36[2] = v135;
  v36[3] = v118;
  v36[4] = 0xD000000000000010;
  v36[5] = 0x800000022F7912E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2340, &unk_22F7796D0);
  swift_initStackObject();
  v37 = a2;
  v121 = v34;

  v120 = v31;

  v38 = v132;
  v39 = sub_22F1D51B4(inited, v38);
  v114 = v37;
  v124 = inited;
  v128 = v38;
  v126 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1560, &qword_22F772170);
  swift_initStackObject();
  v136 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v40 = *(v39 + 16);
  if (v40 >> 62)
  {
    if (v40 < 0)
    {
      v108 = *(v39 + 16);
    }

    v41 = sub_22F741A00();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v41)
  {
    v130 = MEMORY[0x277D84F90];
    v51 = v135;
LABEL_38:

    sub_22F163B1C(v130, &v137);
    if (v117)
    {
      v53 = v139;
      v54 = v140;
      __swift_project_boxed_opaque_existential_1(&v137, v139);
      v55 = *((*(v54 + 8))(v53, v54) + 16);

      if (v55)
      {
        v56 = sub_22F740DF0();
        v57 = v139;
        v58 = v140;
        __swift_project_boxed_opaque_existential_1(&v137, v139);
        (*(v58 + 8))(v57, v58);
        sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
        v59 = sub_22F740C80();

        AnalyticsSendEvent();
      }
    }

    sub_22F7416A0();
    v60 = v121;

    sub_22F100260(&v137, &aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2348, &unk_22F7796E0);
    type metadata accessor for ImportantEntitiesTuningMetrics();
    swift_dynamicCast();
    sub_22F1D9CAC(v137);

    swift_setDeallocating();
    v61 = *(v124 + 16);

    v62 = 0.2;
    sub_22F741690();
    v63 = [objc_allocWithZone(PGRemoteConfiguration) init];
    v64 = @"com.apple.photos.importantentitiesinference.childrenInferenceSimulationParameters";
    v65 = sub_22F741160();
    v66 = [v63 arrayValueForKey:@"com.apple.photos.importantentitiesinference.childrenInferenceSimulationParameters" withFallbackValue:v65];

    v67 = sub_22F741180();
    v68 = v67;
    v69 = *(v67 + 16);
    if (v69)
    {
      v111 = v63;
      v70 = 0;
      v109 = 0.8 / v69;
      v122 = *(v67 + 16);
      while (v70 < *(v68 + 16))
      {
        sub_22F13A100(v67 + 32 + 32 * v70, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
        if (swift_dynamicCast())
        {
          v71 = v137;
          if (*(v137 + 16) && (v72 = sub_22F1229E8(1701667182, 0xE400000000000000), (v73 & 1) != 0) && (sub_22F13A100(*(v71 + 56) + 32 * v72, &aBlock), (swift_dynamicCast() & 1) != 0))
          {
            v74 = v137;
            *&v137 = v29;
            *(&v137 + 1) = v28;
            v138 = v119;
            v139 = v18;
            v140 = xmmword_22F7796C0;
            sub_22F1D3FDC(v71, &v137, &aBlock);

            v75 = aBlock;
            v76 = v142;
            v77 = v143;
            v131 = v144;
            v78 = v145;
            *(&v144 + 1) = GEOLocationCoordinate2DMake;
            v145 = 0;
            aBlock = MEMORY[0x277D85DD0];
            v142 = 1107296256;
            v143 = sub_22F1D3828;
            *&v144 = &block_descriptor_3;
            v79 = _Block_copy(&aBlock);
            v133 = [v115 progressReporterWithProgressBlock_];
            _Block_release(v79);

            v80 = swift_initStackObject();
            *(v80 + 16) = v114;
            *(v80 + 24) = 0;
            v81 = swift_initStackObject();
            *(v81 + 40) = v116;
            *(v81 + 16) = v114;
            *(v81 + 24) = v60;
            *(v81 + 32) = v120;
            v82 = swift_initStackObject();
            *(v82 + 16) = v74;
            *(v82 + 32) = v75;
            *(v82 + 40) = v76;
            *(v82 + 48) = v77;
            *(v82 + 56) = v131;
            v127 = v82;
            *(v82 + 72) = v78;
            v83 = swift_allocObject();
            *(v83 + 16) = v51;
            *(v83 + 24) = v118;
            *(v83 + 32) = v74;
            swift_initStackObject();
            v112 = v114;

            v84 = v133;
            v113 = v80;
            v85 = v80;
            v86 = v84;
            v87 = sub_22F1D51B4(v85, v84);
            swift_allocObject();
            v146 = MEMORY[0x277D84F90];
            swift_beginAccess();
            v88 = *(v87 + 16);
            if (v88 >> 62)
            {
              if (v88 < 0)
              {
                v107 = *(v87 + 16);
              }

              v89 = sub_22F741A00();
            }

            else
            {
              v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v134 = v86;

            if (v89)
            {
              v90 = 0;
              v123 = v88 & 0xFFFFFFFFFFFFFF8;
              v125 = v88 & 0xC000000000000001;
              while (1)
              {
                if (v125)
                {
                  v91 = v88;
                  MEMORY[0x2319016F0](v90, v88);
                  v93 = v90 + 1;
                  if (__OFADD__(v90, 1))
                  {
                    goto LABEL_90;
                  }
                }

                else
                {
                  if (v90 >= *(v123 + 16))
                  {
                    goto LABEL_91;
                  }

                  v91 = v88;
                  v92 = *(v88 + 8 * v90 + 32);

                  v93 = v90 + 1;
                  if (__OFADD__(v90, 1))
                  {
                    goto LABEL_90;
                  }
                }

                v94 = objc_autoreleasePoolPush();
                sub_22F165D18(v127);

                MEMORY[0x231900D00](v95);
                if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_22F7411C0();
                }

                sub_22F741220();
                v129 = v146;
                v96 = *(v87 + 16);
                if (v96 >> 62)
                {
                  if (v96 < 0)
                  {
                    v98 = *(v87 + 16);
                  }

                  sub_22F741A00();
                }

                else
                {
                  v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                sub_22F741690();

                objc_autoreleasePoolPop(v94);

                ++v90;
                v50 = v93 == v89;
                v60 = v121;
                v51 = v135;
                v88 = v91;
                if (v50)
                {
                  goto LABEL_74;
                }
              }
            }

            v129 = MEMORY[0x277D84F90];
LABEL_74:

            sub_22F163B1C(v129, &v137);
            if (v117)
            {
              v99 = v139;
              v100 = v140;
              __swift_project_boxed_opaque_existential_1(&v137, v139);
              v101 = *((*(v100 + 8))(v99, v100) + 16);

              if (v101)
              {
                v102 = sub_22F740DF0();
                v103 = v139;
                v104 = v140;
                __swift_project_boxed_opaque_existential_1(&v137, v139);
                (*(v104 + 8))(v103, v104);
                sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
                v105 = sub_22F740C80();

                AnalyticsSendEvent();
              }
            }

            sub_22F7416A0();

            sub_22F100260(&v137, &aBlock);
            swift_setDeallocating();
            swift_deallocClassInstance();

            swift_dynamicCast();
            sub_22F1D9CAC(v137);

            swift_setDeallocating();
            v106 = *(v113 + 16);

            v62 = v109 + v62;
            sub_22F741690();
            v68 = v67;
            v69 = v122;
          }

          else
          {

            v69 = v122;
          }
        }

        if (++v70 == v69)
        {

          v63 = v111;
          goto LABEL_83;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
    }

    else
    {

LABEL_83:

      sub_22F741690();
    }

    return;
  }

  v42 = 0;
  while ((v40 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2319016F0](v42, v40);
    v43 = v126;
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_84;
    }

LABEL_24:
    v46 = objc_autoreleasePoolPush();
    sub_22F165D18(v43);

    MEMORY[0x231900D00](v47);
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
    v130 = v136;
    v48 = *(v39 + 16);
    if (v48 >> 62)
    {
      if (v48 < 0)
      {
        v52 = *(v39 + 16);
      }

      sub_22F741A00();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_22F741690();

    objc_autoreleasePoolPop(v46);

    ++v42;
    v50 = v45 == v41;
    v51 = v135;
    if (v50)
    {
      goto LABEL_38;
    }
  }

  v43 = v126;
  if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  v44 = *(v40 + 8 * v42 + 32);

  v45 = v42 + 1;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_24;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

uint64_t sub_22F1D3828(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t static ImportantEntitiesTuning.evaluateImportantEntitiesInference(withDetectionType:inGraph:withParameter:andParameterName:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:coreAnalyticsEventName:)(unsigned __int16 a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a1;
  v14 = *a3;
  v15 = a3[1];
  v16 = a3[2];
  v55 = *(a3 + 3);
  v17 = a3[5];
  aBlock[4] = GEOLocationCoordinate2DMake;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F1D3828;
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);
  v59 = [objc_opt_self() progressReporterWithProgressBlock_];
  _Block_release(v18);

  type metadata accessor for ImportantEntitiesTuningEventFactory();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = 0;
  type metadata accessor for ImportantEntitiesTuningSubject();
  v20 = swift_initStackObject();
  *(v20 + 40) = a1;
  *(v20 + 16) = a2;
  *(v20 + 24) = a6;
  *(v20 + 32) = a7;
  v21 = a7;
  type metadata accessor for ImportantEntitiesTuningParameter();
  v22 = swift_initStackObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  *(v22 + 32) = v14;
  *(v22 + 40) = v15;
  *(v22 + 48) = v16;
  *(v22 + 56) = v55;
  *(v22 + 72) = v17;
  v23 = v13 == 1;
  if (v13 == 1)
  {
    v24 = 0xD000000000000011;
  }

  else
  {
    v24 = 0x7265666E49746570;
  }

  if (v23)
  {
    v25 = 0x800000022F78F140;
  }

  else
  {
    v25 = 0xEC00000065636E65;
  }

  type metadata accessor for ImportantEntitiesTuningEvaluator();
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v25;
  v26[4] = a4;
  v26[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2340, &unk_22F7796D0);
  swift_initStackObject();
  v27 = a2;
  swift_bridgeObjectRetain_n();
  v53 = v27;

  v28 = v21;

  v29 = v59;
  v30 = sub_22F1D51B4(inited, v29);
  if (v60)
  {
  }

  else
  {
    v52 = inited;
    v56 = v29;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1560, &qword_22F772170);
    swift_initStackObject();
    v64 = MEMORY[0x277D84F90];
    swift_beginAccess();
    v58 = v31;
    v32 = *(v31 + 16);
    if (v32 >> 62)
    {
      goto LABEL_36;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

    if (v33)
    {
      v34 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2319016F0](v34, v32);
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v35 = *(v32 + 8 * v34 + 32);

          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v33 = sub_22F741A00();
            goto LABEL_11;
          }
        }

        v37 = objc_autoreleasePoolPush();
        sub_22F165D18(v22);

        MEMORY[0x231900D00](v38);
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F7411C0();
        }

        sub_22F741220();
        v39 = v64;
        v40 = *(v58 + 16);
        if (v40 >> 62)
        {
          if (v40 < 0)
          {
            v42 = *(v58 + 16);
          }

          sub_22F741A00();
        }

        else
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_22F741690();

        objc_autoreleasePoolPop(v37);

        ++v34;
        if (v36 == v33)
        {
          goto LABEL_29;
        }
      }
    }

    v39 = MEMORY[0x277D84F90];
LABEL_29:

    sub_22F163B1C(v39, &v61);
    if (a9)
    {
      v43 = v62;
      v44 = v63;
      __swift_project_boxed_opaque_existential_1(&v61, v62);
      v45 = *((*(v44 + 8))(v43, v44) + 16);

      if (v45)
      {
        v46 = sub_22F740DF0();
        v47 = v62;
        v48 = v63;
        __swift_project_boxed_opaque_existential_1(&v61, v62);
        (*(v48 + 8))(v47, v48);
        sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
        v49 = sub_22F740C80();

        AnalyticsSendEvent();
      }
    }

    sub_22F7416A0();

    sub_22F100260(&v61, aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2348, &unk_22F7796E0);
    type metadata accessor for ImportantEntitiesTuningMetrics();
    swift_dynamicCast();
    v28 = v61;
    sub_22F1D9CAC(v61);

    swift_setDeallocating();
    v51 = *(v52 + 16);
  }

  return v28;
}

uint64_t sub_22F1D3FDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (*(result + 16))
  {
    result = sub_22F1229E8(0xD000000000000036, 0x800000022F791400);
    if (v11)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = *&v23 * 2629800.0;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000036, 0x800000022F791400);
    if (v12)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = v23 * 2629800.0;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000014, 0x800000022F791440);
    if (v13)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = *&v23 * 31557600.0;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000014, 0x800000022F791440);
    if (v14)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = v23 * 31557600.0;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000016, 0x800000022F791460);
    if (v15)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v7 = *&v23;
      }
    }
  }

  if (!*(v3 + 16))
  {
    goto LABEL_28;
  }

  result = sub_22F1229E8(0xD000000000000016, 0x800000022F791460);
  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_22F13A100(*(v3 + 56) + 32 * result, v24);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v7 = v23;
LABEL_28:
  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD00000000000002FLL, 0x800000022F791480);
    if (v17)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v8 = *&v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD00000000000002FLL, 0x800000022F791480);
    if (v18)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v8 = v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000031, 0x800000022F7914B0);
    if (v19)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = *&v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000031, 0x800000022F7914B0);
    if (v20)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD00000000000003FLL, 0x800000022F7914F0);
    if (v21)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v10 = *&v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD00000000000003FLL, 0x800000022F7914F0);
    if (v22)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v10 = v23;
      }
    }
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  return result;
}

void sub_22F1D4534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 localIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_22F740E20();
    v11 = v10;

    if (sub_22F15E910(v9, v11, a3))
    {

      sub_22F10BBDC(&v16, v9, v11);
    }

    if (sub_22F15E910(v9, v11, a5))
    {
      sub_22F10BBDC(&v16, v9, v11);
    }
  }

  else
  {
    if (qword_27DAAFD48 != -1)
    {
      swift_once();
    }

    v12 = sub_22F740B90();
    __swift_project_value_buffer(v12, qword_27DAD0E28);
    oslog = sub_22F740B70();
    v13 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22F0FC000, oslog, v13, "Error: Unable to find a local identifier for child node, skipping node in evaluation...", v14, 2u);
      MEMORY[0x2319033A0](v14, -1, -1);
    }
  }
}

uint64_t sub_22F1D4704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 localIdentifier];
  v8 = sub_22F740E20();
  v10 = v9;

  if (sub_22F15E910(v8, v10, a3))
  {

    sub_22F10BBDC(&v12, v8, v10);
  }

  if (sub_22F15E910(v8, v10, a5))
  {
    sub_22F10BBDC(&v12, v8, v10);
  }
}

uint64_t sub_22F1D47F0(void *a1)
{
  v2 = [a1 entityIdentifier];
  v3 = sub_22F740E20();
  v5 = v4;

  v23 = v3;
  v24 = v5;
  v25 = sub_22F740E20();
  v26 = v6;
  sub_22F160DE4();
  LOBYTE(v2) = sub_22F741910();

  if ((v2 & 1) == 0 && [a1 state] == 2)
  {
    v7 = [a1 additionalInfo];
    if (!v7)
    {
    }

    v8 = v7;
    v9 = sub_22F740CA0();

    v10 = *MEMORY[0x277D3C8B8];
    v11 = sub_22F740E20();
    if (*(v9 + 16))
    {
      v13 = sub_22F1229E8(v11, v12);
      v15 = v14;

      if (v15)
      {
        sub_22F13A100(*(v9 + 56) + 32 * v13, &v23);

        if (swift_dynamicCast())
        {
          v17 = v25;
          v16 = v26;
          v18 = *MEMORY[0x277D3C980];
          if (v17 == sub_22F740E20() && v16 == v19)
          {
          }

          else
          {
            sub_22F742040();
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
    }
  }

  v23 = v3;
  v24 = v5;
  v25 = sub_22F740E20();
  v26 = v20;
  v21 = sub_22F741910();

  if ((v21 & 1) == 0 && [a1 state] == 3)
  {
LABEL_12:
    swift_beginAccess();
    sub_22F10BBDC(&v25, v3, v5);
    swift_endAccess();
  }
}

void sub_22F1D4AD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22F1D4B54(void *a1)
{
  result = [a1 additionalInfo];
  if (result)
  {
    v3 = result;
    v4 = sub_22F740CA0();

    v5 = *MEMORY[0x277D3C9B0];
    v6 = sub_22F740E20();
    if (*(v4 + 16))
    {
      v8 = sub_22F1229E8(v6, v7);
      v10 = v9;

      if ((v10 & 1) == 0)
      {
      }

      sub_22F13A100(*(v4 + 56) + 32 * v8, &v37);

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      v11 = v35;
      v12 = v36;
      v13 = [a1 entityIdentifier];
      v34 = sub_22F740E20();
      v15 = v14;

      v37 = v35;
      v38 = v36;
      v35 = sub_22F740E20();
      v36 = v16;
      sub_22F160DE4();
      LOBYTE(v13) = sub_22F741910();

      if (v13 & 1) == 0 || (v37 = v34, v38 = v15, v35 = sub_22F740E20(), v36 = v17, v18 = sub_22F741910(), , (v18) || [a1 state] != 2)
      {
        v37 = v11;
        v38 = v12;
        v35 = sub_22F740E20();
        v36 = v30;
        v31 = sub_22F741910();

        if ((v31 & 1) == 0)
        {
        }

        v37 = v34;
        v38 = v15;
        v35 = sub_22F740E20();
        v36 = v32;
        v33 = sub_22F741910();

        if ((v33 & 1) != 0 || [a1 state] != 3)
        {
        }

        goto LABEL_21;
      }

      v19 = [a1 additionalInfo];
      if (!v19)
      {
      }

      v20 = v19;
      v21 = sub_22F740CA0();

      v22 = *MEMORY[0x277D3C8B8];
      v23 = sub_22F740E20();
      if (*(v21 + 16))
      {
        v25 = sub_22F1229E8(v23, v24);
        v27 = v26;

        if (v27)
        {
          sub_22F13A100(*(v21 + 56) + 32 * v25, &v37);

          if (swift_dynamicCast())
          {
            v28 = *MEMORY[0x277D3C8C0];
            if (v35 == sub_22F740E20() && v36 == v29)
            {
            }

            else
            {
              sub_22F742040();
            }

LABEL_21:
            swift_beginAccess();
            sub_22F10BBDC(&v35, v34, v15);
            swift_endAccess();
          }
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_22F1D4F9C(void *a1)
{
  v1 = [a1 localIdentifier];
  v2 = sub_22F740E20();
  v4 = v3;

  swift_beginAccess();
  sub_22F10BBDC(&v6, v2, v4);
  swift_endAccess();
}

id ImportantEntitiesTuning.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImportantEntitiesTuning.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportantEntitiesTuning();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ImportantEntitiesTuning.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportantEntitiesTuning();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F1D5108(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_22F1D5814(v14, a3, a4, a5);
  return sub_22F741BB0();
}

uint64_t sub_22F1D51B4(uint64_t a1, void *a2)
{
  *(v2 + 16) = MEMORY[0x277D84F90];
  v6 = (v2 + 16);
  if ((*(a1 + 24) & 1) == 0)
  {
    type metadata accessor for ImportantEntitiesTuningEvent();
    while (1)
    {
      *(a1 + 24) = 1;
      v9 = *(a1 + 16);
      *(swift_allocObject() + 16) = v9;
      v10 = v9;
      v11 = objc_autoreleasePoolPush();
      swift_beginAccess();

      MEMORY[0x231900D00](v12);
      if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      v13 = *v6;
      swift_endAccess();
      if (v13 >> 62)
      {
        sub_22F741A00();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = *v6;
      if (*v6 >> 62)
      {
        if (v15 < 0)
        {
          v16 = *v6;
        }

        if (__OFADD__(sub_22F741A00(), 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else if (__OFADD__(*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
      {
        goto LABEL_19;
      }

      sub_22F741690();
      if (v3)
      {
        break;
      }

      objc_autoreleasePoolPop(v11);

      if (*(a1 + 24))
      {
        goto LABEL_2;
      }
    }

    objc_autoreleasePoolPop(v11);

    v17 = v19;

    return v17;
  }

LABEL_2:

  swift_beginAccess();
  v7 = *v6;
  swift_bridgeObjectRetain_n();
  v20 = sub_22F36C43C(v7);
  sub_22F1D5108(&v20, sub_22F3F6724, type metadata accessor for ImportantEntitiesTuningEvent, sub_22F1D63EC, sub_22F1D5938);
  if (!v3)
  {

    v8 = *v6;
    *v6 = v20;

    sub_22F7416A0();
LABEL_20:

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F1D5494(void *a1, void *a2)
{
  v5 = v3;
  v6 = v2;
  *(v6 + 16) = MEMORY[0x277D84F90];
  v9 = (v6 + 16);
  v10 = a1[7];
  v11 = a1[3];
  while (2)
  {
    if (v10 >= *(v11 + 16))
    {

      swift_beginAccess();
      v16 = *v9;
      swift_bridgeObjectRetain_n();
      v20 = sub_22F36C494(v16);
      sub_22F1D5108(&v20, sub_22F3F6724, type metadata accessor for PGSharedLibrarySimulationEvent, sub_22F1D6BC8, sub_22F1D5B24);
      if (!v5)
      {

        v17 = *v9;
        *v9 = v20;

        sub_22F7416A0();

        return v6;
      }
    }

    else
    {
      swift_beginAccess();
      while (a1[6] < *(a1[5] + 16))
      {
        v19.isa = 0;
        isa = objc_autoreleasePoolPush();
        sub_22F332248(a1, &v19);
        if (v5)
        {
          goto LABEL_14;
        }

        v5 = 0;
        objc_autoreleasePoolPop(isa);
        isa = v19.isa;
        if (v19.isa)
        {
          v15 = objc_autoreleasePoolPush();
          sub_22F1D56E0(v6);
          objc_autoreleasePoolPop(v15);

          goto LABEL_4;
        }
      }

      a1[6] = 0;
      v12 = a1[7];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (!v13)
      {
        a1[7] = v14;
        sub_22F332774();
LABEL_4:
        v10 = a1[7];
        v11 = a1[3];
        continue;
      }

      __break(1u);
LABEL_14:
      objc_autoreleasePoolPop(isa);
      __break(1u);
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F1D56E0(uint64_t a1)
{
  swift_beginAccess();

  MEMORY[0x231900D00](v2);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();
  v3 = *(a1 + 16);
  swift_endAccess();
  if (v3 >> 62)
  {
    sub_22F741A00();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(a1 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v8 = *(a1 + 16);
    }

    result = sub_22F741A00();
    if (!__OFADD__(result, 1))
    {
      return sub_22F741690();
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFADD__(result, 1))
    {
      return sub_22F741690();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F1D5814(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_22F742000();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_22F741200();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_22F1D5938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_22F73F690();
  v8 = *(*(v34 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  v29 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v35 = *a4;
    v16 = v35 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v31 = v16;
    v32 = a3;
    v18 = *(v35 + 8 * a3);
    v30 = v17;
    v19 = v16;
    while (1)
    {
      v20 = *v19;

      sub_22F73F550();
      v21 = v33;
      sub_22F73F550();
      v22 = sub_22F73F5D0();
      v23 = *v15;
      v24 = v21;
      v25 = v34;
      (*v15)(v24, v34);
      v23(v14, v25);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v16 = v31 + 8;
        v17 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = *v19;
      *v19 = v19[1];
      v19[1] = v26;
      --v19;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F1D5B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v90 = &v77[-v12];
  MEMORY[0x28223BE20](v13);
  v92 = &v77[-v14];
  MEMORY[0x28223BE20](v15);
  v89 = &v77[-v16];
  v17 = sub_22F73F690();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v94 = &v77[-v22];
  v25 = MEMORY[0x28223BE20](v23);
  v96 = &v77[-v26];
  v78 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v99 = (v24 + 56);
    v93 = (v24 + 32);
    v86 = (v24 + 48);
    v88 = (v24 + 8);
    v91 = v27;
    v28 = (v27 + 8 * a3 - 8);
    v29 = a1 - a3;
    v25.n128_u64[0] = 136315138;
    v84 = v25;
    v87 = v20;
LABEL_5:
    v81 = a3;
    v30 = *(v91 + 8 * a3);
    v79 = v29;
    v31 = v29;
    v80 = v28;
    v32 = v85;
    while (1)
    {
      v33 = *v28;
      v34 = *(v30 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);

      v97 = v33;

      v35 = [v34 creationDate];
      v95 = v31;
      if (v35)
      {
        v36 = v89;
        v37 = v35;
        sub_22F73F640();

        v98 = *v99;
        v98(v36, 0, 1, v17);
        sub_22F15FCF0(v36);
      }

      else
      {
        v38 = v89;
        v98 = *v99;
        v98(v89, 1, 1, v17);
        sub_22F15FCF0(v38);
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v39 = sub_22F740B90();
        __swift_project_value_buffer(v39, qword_27DAD0E10);

        v40 = sub_22F740B70();
        v41 = sub_22F7415E0();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v100 = v83;
          *v42 = v84.n128_u32[0];
          sub_22F73F470();
          sub_22F1DAEAC();
          v43 = sub_22F742010();
          v45 = sub_22F145F20(v43, v44, &v100);

          *(v42 + 4) = v45;
          v32 = v85;
          _os_log_impl(&dword_22F0FC000, v40, v41, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v42, 0xCu);
          v46 = v83;
          __swift_destroy_boxed_opaque_existential_0(v83);
          MEMORY[0x2319033A0](v46, -1, -1);
          MEMORY[0x2319033A0](v42, -1, -1);
        }

        v20 = v87;
      }

      v47 = [v34 creationDate];
      if (v47)
      {
        v48 = v94;
        v49 = v47;
        sub_22F73F640();

        v50 = v92;
        v51 = *v93;
        (*v93)(v92, v48, v17);
        v98(v50, 0, 1, v17);
        v51(v96, v50, v17);
      }

      else
      {
        v52 = v92;
        v98(v92, 1, 1, v17);
        sub_22F73F650();
        if ((*v86)(v52, 1, v17) != 1)
        {
          sub_22F15FCF0(v92);
        }
      }

      v53 = *(v97 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
      v54 = [v53 creationDate];
      if (v54)
      {
        v55 = v90;
        v56 = v54;
        sub_22F73F640();

        v98(v55, 0, 1, v17);
        sub_22F15FCF0(v55);
      }

      else
      {
        v57 = v90;
        v98(v90, 1, 1, v17);
        sub_22F15FCF0(v57);
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v58 = sub_22F740B90();
        __swift_project_value_buffer(v58, qword_27DAD0E10);

        v59 = sub_22F740B70();
        v60 = sub_22F7415E0();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          LODWORD(v83) = v60;
          v62 = v61;
          v82 = swift_slowAlloc();
          v100 = v82;
          *v62 = v84.n128_u32[0];
          sub_22F73F470();
          sub_22F1DAEAC();
          v63 = sub_22F742010();
          v65 = sub_22F145F20(v63, v64, &v100);

          *(v62 + 4) = v65;
          v32 = v85;
          _os_log_impl(&dword_22F0FC000, v59, v83, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v62, 0xCu);
          v66 = v82;
          __swift_destroy_boxed_opaque_existential_0(v82);
          MEMORY[0x2319033A0](v66, -1, -1);
          MEMORY[0x2319033A0](v62, -1, -1);
        }

        v20 = v87;
      }

      v67 = [v53 creationDate];
      if (v67)
      {
        v68 = v94;
        v69 = v67;
        sub_22F73F640();

        v70 = *v93;
        (*v93)(v32, v68, v17);
        v98(v32, 0, 1, v17);
        v70(v20, v32, v17);
      }

      else
      {
        v98(v32, 1, 1, v17);
        sub_22F73F650();
        if ((*v86)(v32, 1, v17) != 1)
        {
          sub_22F15FCF0(v32);
        }
      }

      v71 = v96;
      v72 = sub_22F73F5D0();
      v73 = *v88;
      (*v88)(v20, v17);
      v73(v71, v17);

      v74 = v95;
      if ((v72 & 1) == 0)
      {
LABEL_4:
        a3 = v81 + 1;
        v28 = v80 + 1;
        v29 = v79 - 1;
        if (v81 + 1 == v78)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v91)
      {
        break;
      }

      v75 = *v28;
      v30 = v28[1];
      *v28 = v30;
      v28[1] = v75;
      --v28;
      v76 = __CFADD__(v74, 1);
      v31 = v74 + 1;
      if (v76)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F1D63EC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v107 = a1;
  v117 = sub_22F73F690();
  v9 = *(*(v117 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v117);
  v116 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v115 = &v102 - v14;
  v15 = a3[1];
  v108 = a3;
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_128;
    }

    a4 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = sub_22F3F5F98(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v98 = *(result + 16 * a4);
        v99 = result;
        v100 = *(result + 16 * (a4 - 1) + 40);
        sub_22F1D8268((*a3 + 8 * v98), (*a3 + 8 * *(result + 16 * (a4 - 1) + 32)), (*a3 + 8 * v100), v5);
        if (v6)
        {
        }

        if (v100 < v98)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_22F3F5F98(v99);
        }

        if (a4 - 2 >= *(v99 + 2))
        {
          goto LABEL_116;
        }

        v101 = &v99[16 * a4];
        *v101 = v98;
        *(v101 + 1) = v100;
        v118 = v99;
        sub_22F3F5F0C(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        a3 = v108;
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v16 = 0;
  v114 = (v13 + 8);
  v17 = MEMORY[0x277D84F90];
  v106 = a4;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v112 = v15;
      v104 = v17;
      v105 = v6;
      v19 = *a3;
      v20 = *(*a3 + 8 * v16);
      v111 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);

      v23 = v115;
      sub_22F73F550();
      v24 = v116;
      sub_22F73F550();
      LODWORD(v113) = sub_22F73F5D0();
      a3 = v18;
      v25 = *v114;
      v26 = v24;
      a4 = v117;
      (*v114)(v26, v117);
      v25(v23, a4);

      v103 = a3;
      v27 = a3 + 2;
      while (1)
      {
        v16 = v112;
        if (v112 == v27)
        {
          break;
        }

        v29 = *(v5 - 8);
        v28 = *v5;

        v30 = v115;
        sub_22F73F550();
        v31 = v116;
        sub_22F73F550();
        a4 = sub_22F73F5D0() & 1;
        v32 = v31;
        v33 = v117;
        a3 = v114;
        v25(v32, v117);
        v25(v30, v33);

        ++v27;
        v5 += 8;
        if ((v113 & 1) != a4)
        {
          v16 = (v27 - 1);
          break;
        }
      }

      v17 = v104;
      v6 = v105;
      v18 = v103;
      v34 = v111;
      if (v113)
      {
        if (v16 < v103)
        {
          goto LABEL_119;
        }

        a3 = v108;
        if (v103 < v16)
        {
          v35 = 8 * v16 - 8;
          v36 = v16;
          v37 = v103;
          a4 = v106;
          do
          {
            if (v37 != --v36)
            {
              v39 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v38 = *(v39 + v34);
              *(v39 + v34) = *(v39 + v35);
              *(v39 + v35) = v38;
            }

            v37 = (v37 + 1);
            v35 -= 8;
            v34 += 8;
          }

          while (v37 < v36);
          goto LABEL_20;
        }
      }

      else
      {
        a3 = v108;
      }

      a4 = v106;
    }

LABEL_20:
    v40 = a3[1];
    if (v16 < v40)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_118;
      }

      if (v16 - v18 < a4)
      {
        v41 = (v18 + a4);
        if (__OFADD__(v18, a4))
        {
          goto LABEL_120;
        }

        if (v41 >= v40)
        {
          v41 = a3[1];
        }

        if (v41 < v18)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v16 != v41)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v16 < v18)
    {
      goto LABEL_117;
    }

    v53 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v53;
    }

    else
    {
      result = sub_22F13D970(0, *(v53 + 16) + 1, 1, v53);
      v17 = result;
    }

    a4 = *(v17 + 16);
    v54 = *(v17 + 24);
    v5 = a4 + 1;
    if (a4 >= v54 >> 1)
    {
      result = sub_22F13D970((v54 > 1), a4 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = v5;
    v55 = v17 + 16 * a4;
    *(v55 + 32) = v18;
    *(v55 + 40) = v16;
    v56 = *v107;
    if (!*v107)
    {
      goto LABEL_127;
    }

    if (a4)
    {
      while (1)
      {
        v57 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v58 = *(v17 + 32);
          v59 = *(v17 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_57:
          if (v61)
          {
            goto LABEL_106;
          }

          v74 = (v17 + 16 * v5);
          v76 = *v74;
          v75 = v74[1];
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_109;
          }

          v80 = (v17 + 32 + 16 * v57);
          v82 = *v80;
          v81 = v80[1];
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_113;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v5 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v84 = (v17 + 16 * v5);
        v86 = *v84;
        v85 = v84[1];
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_71:
        if (v79)
        {
          goto LABEL_108;
        }

        v87 = v17 + 16 * v57;
        v89 = *(v87 + 32);
        v88 = *(v87 + 40);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_111;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_78:
        a4 = v57 - 1;
        if (v57 - 1 >= v5)
        {
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

        v95 = v17;
        v96 = *(v17 + 32 + 16 * a4);
        v5 = *(v17 + 32 + 16 * v57 + 8);
        sub_22F1D8268((*a3 + 8 * v96), (*a3 + 8 * *(v17 + 32 + 16 * v57)), (*a3 + 8 * v5), v56);
        if (v6)
        {
        }

        if (v5 < v96)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_22F3F5F98(v95);
        }

        if (a4 >= *(v95 + 2))
        {
          goto LABEL_103;
        }

        v97 = &v95[16 * a4];
        *(v97 + 4) = v96;
        *(v97 + 5) = v5;
        v118 = v95;
        result = sub_22F3F5F0C(v57);
        v17 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = v17 + 32 + 16 * v5;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_104;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_105;
      }

      v69 = (v17 + 16 * v5);
      v71 = *v69;
      v70 = v69[1];
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_107;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_110;
      }

      if (v73 >= v65)
      {
        v91 = (v17 + 32 + 16 * v57);
        v93 = *v91;
        v92 = v91[1];
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_114;
        }

        if (v60 < v94)
        {
          v57 = v5 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v15 = a3[1];
    a4 = v106;
    if (v16 >= v15)
    {
      goto LABEL_89;
    }
  }

  v104 = v17;
  v105 = v6;
  v113 = *a3;
  v42 = v113 + 8 * v16 - 8;
  v103 = v18;
  v43 = (v18 - v16);
  v109 = v41;
LABEL_30:
  v111 = v42;
  v112 = v16;
  v5 = *(v113 + 8 * v16);
  v110 = v43;
  v44 = v42;
  while (1)
  {
    v45 = *v44;

    a4 = v115;
    sub_22F73F550();
    v46 = v116;
    sub_22F73F550();
    v47 = sub_22F73F5D0();
    v48 = *v114;
    v49 = v46;
    v50 = v117;
    (*v114)(v49, v117);
    v48(a4, v50);

    if ((v47 & 1) == 0)
    {
LABEL_29:
      v16 = v112 + 1;
      v42 = v111 + 8;
      v43 = v110 - 1;
      if (v112 + 1 != v109)
      {
        goto LABEL_30;
      }

      v16 = v109;
      v17 = v104;
      v6 = v105;
      a3 = v108;
      v18 = v103;
      goto LABEL_37;
    }

    if (!v113)
    {
      break;
    }

    v51 = *v44;
    v5 = v44[1];
    *v44 = v5;
    v44[1] = v51;
    --v44;
    if (__CFADD__(v43++, 1))
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

void sub_22F1D6BC8(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v219 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v215 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v215 - v13;
  MEMORY[0x28223BE20](v15);
  v242 = &v215 - v16;
  MEMORY[0x28223BE20](v17);
  v239 = &v215 - v18;
  MEMORY[0x28223BE20](v19);
  v229 = &v215 - v20;
  MEMORY[0x28223BE20](v21);
  v225 = &v215 - v22;
  MEMORY[0x28223BE20](v23);
  v228 = &v215 - v24;
  MEMORY[0x28223BE20](v25);
  v224 = &v215 - v26;
  v27 = sub_22F73F690();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v215 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v247 = &v215 - v32;
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  v231 = &v215 - v35;
  MEMORY[0x28223BE20](v36);
  v216 = &v215 - v37;
  v41 = MEMORY[0x28223BE20](v38);
  v244 = &v215 - v42;
  v230 = a3;
  v43 = *(a3 + 8);
  if (v43 < 1)
  {
    v46 = MEMORY[0x277D84F90];
LABEL_132:
    a3 = *v219;
    if (!*v219)
    {
      goto LABEL_171;
    }

    a4 = v46;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v210 = a4;
LABEL_135:
      v251 = v210;
      a4 = *(v210 + 2);
      if (a4 >= 2)
      {
        while (*v230)
        {
          v211 = *&v210[16 * a4];
          v212 = v210;
          v213 = *&v210[16 * a4 + 24];
          sub_22F1D86B4((*v230 + 8 * v211), (*v230 + 8 * *&v210[16 * a4 + 16]), (*v230 + 8 * v213), a3);
          if (v5)
          {
            goto LABEL_143;
          }

          if (v213 < v211)
          {
            goto LABEL_158;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v212 = sub_22F3F5F98(v212);
          }

          if (a4 - 2 >= *(v212 + 2))
          {
            goto LABEL_159;
          }

          v214 = &v212[16 * a4];
          *v214 = v211;
          *(v214 + 1) = v213;
          v251 = v212;
          sub_22F3F5F0C(a4 - 1);
          v210 = v251;
          a4 = *(v251 + 2);
          if (a4 <= 1)
          {
            goto LABEL_143;
          }
        }

        goto LABEL_169;
      }

LABEL_143:

      return;
    }

LABEL_165:
    v210 = sub_22F3F5F98(a4);
    goto LABEL_135;
  }

  v44 = 0;
  v241 = (v39 + 8);
  v45 = (v39 + 56);
  v243 = (v39 + 32);
  v235 = (v39 + 48);
  v46 = MEMORY[0x277D84F90];
  v41.n128_u64[0] = 136315138;
  v233 = v41;
  v218 = a4;
  v237 = v14;
  v238 = v11;
  v234 = v27;
  v236 = v30;
  v223 = v40;
  v245 = (v39 + 56);
  while (1)
  {
    v47 = v44;
    v48 = v44 + 1;
    v220 = v44;
    if (v44 + 1 < v43)
    {
      v227 = v43;
      v217 = v46;
      v49 = *v230;
      v50 = *(*v230 + 8 * v48);
      v232 = v5;
      v221 = 8 * v44;
      v51 = (v49 + 8 * v44);
      v52 = *v51;
      a3 = (v51 + 2);

      v53 = v244;
      sub_22F16CC5C(v244);
      v54 = v216;
      sub_22F16CC5C(v216);
      LODWORD(v240) = sub_22F73F5D0();
      v55 = *v241;
      (*v241)(v54, v27);
      v226 = v55;
      v55(v53, v27);

      v56 = v220 + 2;
      v5 = v232;
      while (1)
      {
        v48 = v227;
        if (v227 == v56)
        {
          break;
        }

        v67 = *(a3 - 8);
        v68 = *a3;
        v69 = *(*a3 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);

        v70 = [v69 creationDate];
        v248 = v67;
        v232 = v5;
        v246 = v68;
        if (v70)
        {
          v71 = v224;
          v72 = v70;
          sub_22F73F640();

          v249 = *v245;
          v249(v71, 0, 1, v27);
          sub_22F15FCF0(v71);
        }

        else
        {
          v73 = v224;
          v249 = *v245;
          v249(v224, 1, 1, v27);
          sub_22F15FCF0(v73);
          if (qword_27DAAFD40 != -1)
          {
            swift_once();
          }

          v74 = sub_22F740B90();
          __swift_project_value_buffer(v74, qword_27DAD0E10);

          v75 = sub_22F740B70();
          v76 = sub_22F7415E0();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v250 = v78;
            *v77 = v233.n128_u32[0];
            LODWORD(v222) = v76;
            sub_22F73F470();
            sub_22F1DAEAC();
            v79 = sub_22F742010();
            v81 = sub_22F145F20(v79, v80, &v250);

            *(v77 + 4) = v81;
            v5 = v232;
            _os_log_impl(&dword_22F0FC000, v75, v222, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v78);
            v82 = v78;
            v27 = v234;
            MEMORY[0x2319033A0](v82, -1, -1);
            v83 = v77;
            v67 = v248;
            MEMORY[0x2319033A0](v83, -1, -1);
          }

          v30 = v236;
        }

        v84 = [v69 creationDate];
        if (v84)
        {
          v85 = v244;
          v86 = v84;
          sub_22F73F640();

          v87 = *v243;
          v88 = v228;
          (*v243)(v228, v85, v27);
          v249(v88, 0, 1, v27);
          v87(v231, v88, v27);
          v67 = v248;
        }

        else
        {
          v89 = v228;
          v249(v228, 1, 1, v27);
          sub_22F73F650();
          if ((*v235)(v89, 1, v27) != 1)
          {
            sub_22F15FCF0(v228);
          }
        }

        v90 = *(v67 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
        v91 = [v90 creationDate];
        if (v91)
        {
          v92 = v225;
          v93 = v91;
          sub_22F73F640();

          v249(v92, 0, 1, v27);
          sub_22F15FCF0(v92);
        }

        else
        {
          v94 = v225;
          v249(v225, 1, 1, v27);
          sub_22F15FCF0(v94);
          if (qword_27DAAFD40 != -1)
          {
            swift_once();
          }

          v95 = sub_22F740B90();
          __swift_project_value_buffer(v95, qword_27DAD0E10);

          v96 = sub_22F740B70();
          v97 = sub_22F7415E0();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v250 = v99;
            *v98 = v233.n128_u32[0];
            sub_22F73F470();
            sub_22F1DAEAC();
            v100 = sub_22F742010();
            v102 = sub_22F145F20(v100, v101, &v250);

            *(v98 + 4) = v102;
            v5 = v232;
            _os_log_impl(&dword_22F0FC000, v96, v97, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v99);
            MEMORY[0x2319033A0](v99, -1, -1);
            v103 = v98;
            v27 = v234;
            MEMORY[0x2319033A0](v103, -1, -1);
          }

          v30 = v236;
        }

        v104 = [v90 creationDate];
        v105 = v223;
        if (v104)
        {
          v57 = v244;
          v58 = v104;
          sub_22F73F640();

          v59 = *v243;
          v60 = a3;
          v61 = v56;
          v62 = v229;
          (*v243)(v229, v57, v27);
          v249(v62, 0, 1, v27);
          v63 = v62;
          v56 = v61;
          a3 = v60;
          v59(v105, v63, v27);
          v5 = v232;
        }

        else
        {
          v106 = v229;
          v249(v229, 1, 1, v27);
          sub_22F73F650();
          if ((*v235)(v106, 1, v27) != 1)
          {
            sub_22F15FCF0(v229);
          }
        }

        v64 = v231;
        v65 = sub_22F73F5D0();
        v66 = v226;
        v226(v105, v27);
        v66(v64, v27);

        ++v56;
        a3 += 8;
        if ((v240 ^ v65))
        {
          v48 = v56 - 1;
          break;
        }
      }

      a4 = v218;
      v46 = v217;
      v45 = v245;
      v47 = v220;
      v107 = v221;
      if (v240)
      {
        if (v48 < v220)
        {
          goto LABEL_162;
        }

        if (v220 < v48)
        {
          v108 = 8 * v48 - 8;
          v109 = v48;
          v110 = v220;
          do
          {
            if (v110 != --v109)
            {
              v111 = *v230;
              if (!*v230)
              {
                goto LABEL_168;
              }

              v112 = *(v111 + v107);
              *(v111 + v107) = *(v111 + v108);
              *(v111 + v108) = v112;
            }

            ++v110;
            v108 -= 8;
            v107 += 8;
          }

          while (v110 < v109);
        }
      }
    }

    v113 = v230[1];
    if (v48 < v113)
    {
      if (__OFSUB__(v48, v47))
      {
        goto LABEL_161;
      }

      if (v48 - v47 < a4)
      {
        break;
      }
    }

LABEL_79:
    if (v48 < v47)
    {
      goto LABEL_160;
    }

    v164 = v46;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v46 = v164;
    }

    else
    {
      v46 = sub_22F13D970(0, *(v164 + 2) + 1, 1, v164);
    }

    a3 = *(v46 + 2);
    v165 = *(v46 + 3);
    a4 = a3 + 1;
    if (a3 >= v165 >> 1)
    {
      v46 = sub_22F13D970((v165 > 1), a3 + 1, 1, v46);
    }

    *(v46 + 2) = a4;
    v166 = &v46[16 * a3];
    *(v166 + 4) = v220;
    *(v166 + 5) = v48;
    v227 = v48;
    v167 = *v219;
    if (!*v219)
    {
      goto LABEL_170;
    }

    if (a3)
    {
      while (1)
      {
        v168 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v169 = *(v46 + 4);
          v170 = *(v46 + 5);
          v179 = __OFSUB__(v170, v169);
          v171 = v170 - v169;
          v172 = v179;
LABEL_99:
          if (v172)
          {
            goto LABEL_149;
          }

          v185 = &v46[16 * a4];
          v187 = *v185;
          v186 = *(v185 + 1);
          v188 = __OFSUB__(v186, v187);
          v189 = v186 - v187;
          v190 = v188;
          if (v188)
          {
            goto LABEL_152;
          }

          v191 = &v46[16 * v168 + 32];
          v193 = *v191;
          v192 = *(v191 + 1);
          v179 = __OFSUB__(v192, v193);
          v194 = v192 - v193;
          if (v179)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v189, v194))
          {
            goto LABEL_156;
          }

          if (v189 + v194 >= v171)
          {
            if (v171 < v194)
            {
              v168 = a4 - 2;
            }

            goto LABEL_120;
          }

          goto LABEL_113;
        }

        v195 = &v46[16 * a4];
        v197 = *v195;
        v196 = *(v195 + 1);
        v179 = __OFSUB__(v196, v197);
        v189 = v196 - v197;
        v190 = v179;
LABEL_113:
        if (v190)
        {
          goto LABEL_151;
        }

        v198 = &v46[16 * v168];
        v200 = *(v198 + 4);
        v199 = *(v198 + 5);
        v179 = __OFSUB__(v199, v200);
        v201 = v199 - v200;
        if (v179)
        {
          goto LABEL_154;
        }

        if (v201 < v189)
        {
          goto LABEL_3;
        }

LABEL_120:
        a3 = v168 - 1;
        if (v168 - 1 >= a4)
        {
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
LABEL_153:
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
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*v230)
        {
          goto LABEL_167;
        }

        v206 = v46;
        a4 = *&v46[16 * a3 + 32];
        v207 = *&v46[16 * v168 + 40];
        sub_22F1D86B4((*v230 + 8 * a4), (*v230 + 8 * *&v46[16 * v168 + 32]), (*v230 + 8 * v207), v167);
        if (v5)
        {
          goto LABEL_143;
        }

        if (v207 < a4)
        {
          goto LABEL_145;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v208 = v206;
        }

        else
        {
          v208 = sub_22F3F5F98(v206);
        }

        v30 = v236;
        if (a3 >= *(v208 + 2))
        {
          goto LABEL_146;
        }

        v209 = &v208[16 * a3];
        *(v209 + 4) = a4;
        *(v209 + 5) = v207;
        v251 = v208;
        sub_22F3F5F0C(v168);
        v46 = v251;
        a4 = *(v251 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v173 = &v46[16 * a4 + 32];
      v174 = *(v173 - 64);
      v175 = *(v173 - 56);
      v179 = __OFSUB__(v175, v174);
      v176 = v175 - v174;
      if (v179)
      {
        goto LABEL_147;
      }

      v178 = *(v173 - 48);
      v177 = *(v173 - 40);
      v179 = __OFSUB__(v177, v178);
      v171 = v177 - v178;
      v172 = v179;
      if (v179)
      {
        goto LABEL_148;
      }

      v180 = &v46[16 * a4];
      v182 = *v180;
      v181 = *(v180 + 1);
      v179 = __OFSUB__(v181, v182);
      v183 = v181 - v182;
      if (v179)
      {
        goto LABEL_150;
      }

      v179 = __OFADD__(v171, v183);
      v184 = v171 + v183;
      if (v179)
      {
        goto LABEL_153;
      }

      if (v184 >= v176)
      {
        v202 = &v46[16 * v168 + 32];
        v204 = *v202;
        v203 = *(v202 + 1);
        v179 = __OFSUB__(v203, v204);
        v205 = v203 - v204;
        if (v179)
        {
          goto LABEL_157;
        }

        if (v171 < v205)
        {
          v168 = a4 - 2;
        }

        goto LABEL_120;
      }

      goto LABEL_99;
    }

LABEL_3:
    v43 = v230[1];
    v44 = v227;
    a4 = v218;
    if (v227 >= v43)
    {
      goto LABEL_132;
    }
  }

  v114 = v47 + a4;
  if (__OFADD__(v47, a4))
  {
    goto LABEL_163;
  }

  if (v114 >= v113)
  {
    v114 = v230[1];
  }

  if (v114 < v47)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (v48 == v114)
  {
    goto LABEL_79;
  }

  v217 = v46;
  v232 = v5;
  v240 = *v230;
  v115 = v240 + 8 * v48 - 8;
  v116 = v47 - v48;
  v221 = v114;
LABEL_50:
  v227 = v48;
  v117 = *(v240 + 8 * v48);
  v222 = v116;
  v118 = v116;
  v226 = v115;
  v119 = v115;
  while (1)
  {
    v246 = v118;
    v120 = *v119;
    v121 = *(v117 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);

    v122 = [v121 creationDate];
    v248 = v120;
    if (v122)
    {
      v123 = v239;
      v124 = v122;
      sub_22F73F640();

      v249 = *v45;
      v249(v123, 0, 1, v27);
      sub_22F15FCF0(v123);
    }

    else
    {
      v125 = v239;
      v249 = *v45;
      v249(v239, 1, 1, v27);
      sub_22F15FCF0(v125);
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v126 = sub_22F740B90();
      __swift_project_value_buffer(v126, qword_27DAD0E10);

      v127 = sub_22F740B70();
      v128 = sub_22F7415E0();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v250 = v130;
        *v129 = v233.n128_u32[0];
        sub_22F73F470();
        sub_22F1DAEAC();
        v131 = sub_22F742010();
        v133 = sub_22F145F20(v131, v132, &v250);

        *(v129 + 4) = v133;
        _os_log_impl(&dword_22F0FC000, v127, v128, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v130);
        MEMORY[0x2319033A0](v130, -1, -1);
        v134 = v129;
        v120 = v248;
        MEMORY[0x2319033A0](v134, -1, -1);
      }

      v27 = v234;
      v30 = v236;
    }

    v135 = [v121 creationDate];
    if (v135)
    {
      v136 = v244;
      v137 = v135;
      sub_22F73F640();

      v138 = v242;
      v139 = *v243;
      (*v243)(v242, v136, v27);
      v249(v138, 0, 1, v27);
      v139(v247, v138, v27);
      v120 = v248;
    }

    else
    {
      v140 = v242;
      v249(v242, 1, 1, v27);
      sub_22F73F650();
      if ((*v235)(v140, 1, v27) != 1)
      {
        sub_22F15FCF0(v242);
      }
    }

    v141 = *(v120 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
    v142 = [v141 creationDate];
    if (v142)
    {
      v143 = v237;
      v144 = v142;
      sub_22F73F640();

      v249(v143, 0, 1, v27);
      sub_22F15FCF0(v143);
    }

    else
    {
      v145 = v237;
      v249(v237, 1, 1, v27);
      sub_22F15FCF0(v145);
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v146 = sub_22F740B90();
      __swift_project_value_buffer(v146, qword_27DAD0E10);

      v147 = sub_22F740B70();
      v148 = sub_22F7415E0();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v250 = v150;
        *v149 = v233.n128_u32[0];
        sub_22F73F470();
        sub_22F1DAEAC();
        v151 = sub_22F742010();
        v153 = sub_22F145F20(v151, v152, &v250);

        *(v149 + 4) = v153;
        _os_log_impl(&dword_22F0FC000, v147, v148, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v150);
        MEMORY[0x2319033A0](v150, -1, -1);
        MEMORY[0x2319033A0](v149, -1, -1);
      }

      v27 = v234;
      v30 = v236;
    }

    v154 = [v141 creationDate];
    if (v154)
    {
      v155 = v244;
      v156 = v154;
      sub_22F73F640();

      v157 = *v243;
      v158 = v238;
      (*v243)(v238, v155, v27);
      v249(v158, 0, 1, v27);
      v157(v30, v158, v27);
    }

    else
    {
      v159 = v238;
      v249(v238, 1, 1, v27);
      sub_22F73F650();
      if ((*v235)(v159, 1, v27) != 1)
      {
        sub_22F15FCF0(v159);
      }
    }

    v160 = v247;
    a3 = sub_22F73F5D0();
    a4 = *v241;
    (*v241)(v30, v27);
    (a4)(v160, v27);

    if ((a3 & 1) == 0)
    {
      v45 = v245;
LABEL_49:
      v48 = v227 + 1;
      v115 = v226 + 8;
      v116 = v222 - 1;
      if (v227 + 1 == v221)
      {
        v48 = v221;
        v5 = v232;
        v46 = v217;
        v47 = v220;
        goto LABEL_79;
      }

      goto LABEL_50;
    }

    v161 = v246;
    if (!v240)
    {
      break;
    }

    v162 = *v119;
    v117 = v119[1];
    *v119 = v117;
    v119[1] = v162;
    --v119;
    v163 = __CFADD__(v161, 1);
    v118 = v161 + 1;
    v45 = v245;
    if (v163)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
}

uint64_t sub_22F1D8268(char *a1, char *a2, char *a3, char *a4)
{
  v51 = a4;
  v48 = sub_22F73F690();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v42 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v49 = a1;
    if (v51 != a2 || &a2[8 * v15] <= v51)
    {
      memmove(v51, a2, 8 * v15);
    }

    v50 = &v51[8 * v15];
    if (a3 - a2 >= 8 && a2 > v49)
    {
      v43 = (v7 + 8);
      do
      {
        v42 = a2;
        v29 = a2 - 8;
        a3 -= 8;
        v30 = v50;
        v44 = a2 - 8;
        while (1)
        {
          v31 = a3 + 8;
          v32 = *(v30 - 1);
          v30 -= 8;
          v33 = *v29;

          v34 = v46;
          sub_22F73F550();
          v35 = v47;
          sub_22F73F550();
          v45 = sub_22F73F5D0();
          v36 = *v43;
          v37 = v35;
          v38 = v48;
          (*v43)(v37, v48);
          v36(v34, v38);

          if (v45)
          {
            break;
          }

          if (v31 != v50)
          {
            *a3 = *v30;
          }

          a3 -= 8;
          v50 = v30;
          v29 = v44;
          if (v30 <= v51)
          {
            v50 = v30;
            a2 = v42;
            goto LABEL_38;
          }
        }

        v39 = v49;
        v40 = v44;
        if (v31 != v42)
        {
          *a3 = *v44;
        }

        if (v50 <= v51)
        {
          break;
        }

        a2 = v40;
      }

      while (v40 > v39);
      a2 = v40;
    }
  }

  else
  {
    v16 = a1;
    if (v51 != a1 || &a1[8 * v13] <= v51)
    {
      memmove(v51, a1, 8 * v13);
    }

    v50 = &v51[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v17 = (v7 + 8);
      while (1)
      {
        v49 = v16;
        v18 = *a2;
        v19 = *v51;

        v20 = v46;
        sub_22F73F550();
        v21 = a2;
        v22 = v47;
        sub_22F73F550();
        v23 = sub_22F73F5D0();
        v24 = *v17;
        v25 = v22;
        v26 = v48;
        (*v17)(v25, v48);
        v24(v20, v26);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v27 = v21;
        a2 = v21 + 8;
        v28 = v49;
        if (v49 != v21)
        {
          goto LABEL_16;
        }

LABEL_17:
        v16 = v28 + 8;
        if (v51 >= v50 || a2 >= a3)
        {
          goto LABEL_19;
        }
      }

      v27 = v51;
      v28 = v49;
      v51 += 8;
      a2 = v21;
      if (v49 == v27)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v28 = *v27;
      goto LABEL_17;
    }

LABEL_19:
    a2 = v16;
  }

LABEL_38:
  if (a2 != v51 || a2 >= &v51[(v50 - v51 + (v50 - v51 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v51, 8 * ((v50 - v51) / 8));
  }

  return 1;
}

uint64_t sub_22F1D86B4(char *a1, char *a2, char *a3, char *a4)
{
  v53 = a4;
  v51 = sub_22F73F690();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v44 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (v53 != a2 || &a2[8 * v15] <= v53)
    {
      memmove(v53, a2, 8 * v15);
    }

    v52 = &v53[8 * v15];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v45 = (v7 + 8);
      v48 = a1;
      do
      {
        v44 = a2;
        v28 = a2 - 8;
        v29 = a3 - 8;
        v30 = v52;
        v46 = a2 - 8;
        while (1)
        {
          v47 = v29;
          v31 = v29 + 8;
          v32 = *(v30 - 1);
          v30 -= 8;
          v33 = *v28;

          v34 = v49;
          sub_22F16CC5C(v49);
          v35 = v50;
          sub_22F16CC5C(v50);
          v36 = sub_22F73F5D0();
          v37 = *v45;
          v38 = v35;
          v39 = v51;
          (*v45)(v38, v51);
          v37(v34, v39);

          if (v36)
          {
            break;
          }

          v40 = v47;
          if (v31 != v52)
          {
            *v47 = *v30;
          }

          v29 = v40 - 8;
          v52 = v30;
          v28 = v46;
          if (v30 <= v53)
          {
            v52 = v30;
            a2 = v44;
            goto LABEL_39;
          }
        }

        a3 = v47;
        v41 = v48;
        v42 = v46;
        if (v31 != v44)
        {
          *v47 = *v46;
        }

        if (v52 <= v53)
        {
          break;
        }

        a2 = v42;
      }

      while (v42 > v41);
      a2 = v42;
    }
  }

  else
  {
    if (v53 != a1 || &a1[8 * v13] <= v53)
    {
      memmove(v53, a1, 8 * v13);
    }

    v52 = &v53[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = (v7 + 8);
      while (1)
      {
        v48 = a1;
        v17 = *a2;
        v18 = *v53;

        v19 = v49;
        sub_22F16CC5C(v49);
        v20 = v50;
        sub_22F16CC5C(v50);
        v21 = sub_22F73F5D0();
        v22 = *v16;
        v23 = v20;
        v24 = v51;
        (*v16)(v23, v51);
        v22(v19, v24);

        if ((v21 & 1) == 0)
        {
          break;
        }

        v25 = a2;
        v26 = v48;
        v27 = v48 == a2;
        a2 += 8;
        if (!v27)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v26 + 8;
        if (v53 >= v52 || a2 >= a3)
        {
          goto LABEL_20;
        }
      }

      v25 = v53;
      v26 = v48;
      v53 += 8;
      if (v48 == v25)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v26 = *v25;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_39:
  if (a2 != v53 || a2 >= &v53[(v52 - v53 + (v52 - v53 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v53, 8 * ((v52 - v53) / 8));
  }

  return 1;
}

uint64_t _s11PhotosGraph23ImportantEntitiesTuningC74truePositiveAndTrueNegativeUsersChildrenLocalIdentifiersFromChildQuestions16withPhotoLibraryShySSG_AFtSgSo07PHPhotoT0C_tFZ_0(void *a1)
{
  v1 = a1;
  v2 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v3 = [a1 librarySpecificFetchOptions];
  [v3 setWantsIncrementalChangeDetails_];
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  aBlock = 0x203D3D2065707974;
  v52 = 0xE800000000000000;
  v4 = sub_22F742010();
  MEMORY[0x231900B10](v4);

  v5 = sub_22F741560();

  [v3 setPredicate_];

  v6 = [objc_opt_self() fetchAnsweredYesOrNoQuestionsWithOptions:v3 validQuestionsOnly:1];
  if ([v6 count] < 1)
  {
    if (qword_27DAAFD48 != -1)
    {
      swift_once();
    }

    v18 = sub_22F740B90();
    __swift_project_value_buffer(v18, qword_27DAD0E28);
    v19 = sub_22F740B70();
    v20 = sub_22F7415C0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22F0FC000, v19, v20, "No child relationship Photos Challenge questions answered.", v21, 2u);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    return 0;
  }

  v48 = v3;
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84FA0];
  *(v7 + 16) = MEMORY[0x277D84FA0];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = (v9 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  v55 = sub_22F1DAFC8;
  v56 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_22F334418;
  v54 = &block_descriptor_48;
  v12 = _Block_copy(&aBlock);

  v47 = v6;
  [v6 enumerateObjectsUsingBlock_];
  _Block_release(v12);
  swift_beginAccess();
  v13 = *(v7 + 16);
  v14 = *(v13 + 16);
  v49 = v1;
  if (v14)
  {
    v15 = sub_22F10B348(v14, 0);
    v16 = sub_22F11A438(&aBlock, v15 + 4, v14, v13);
    v17 = aBlock;
    v2 = v52;

    sub_22F1534EC();
    if (v16 != v14)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v1 = v49;
    v2 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  }

  v22 = objc_opt_self();
  v23 = sub_22F741160();

  v24 = [v1 v2[317]];
  v25 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  v50 = [v22 fetchPersonsWithLocalIdentifiers:v23 options:v24];

  swift_beginAccess();
  v16 = *v10;
  v26 = *(*v10 + 16);
  if (v26)
  {
    v27 = sub_22F10B348(*(*v10 + 16), 0);
    v28 = sub_22F11A438(&aBlock, v27 + 4, v26, v16);
    v17 = v53;
    v2 = v54;

    sub_22F1534EC();
    if (v28 != v26)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v1 = v49;
    v2 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
    v25 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  }

  v29 = sub_22F741160();

  v30 = [v1 v2[317]];
  v17 = [v22 v25[364]];

  v31 = [v50 count];
  v32 = [v17 count];
  if (__OFADD__(v31, v32))
  {
    __break(1u);
    goto LABEL_28;
  }

  if (!&v32[v31])
  {
    if (qword_27DAAFD48 != -1)
    {
      swift_once();
    }

    v40 = sub_22F740B90();
    __swift_project_value_buffer(v40, qword_27DAD0E28);
    v41 = sub_22F740B70();
    v42 = sub_22F7415C0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22F0FC000, v41, v42, "Child relationship Photos Challenge questions are out of date, they don't match any existing persons in the database.", v43, 2u);
      MEMORY[0x2319033A0](v43, -1, -1);
    }

    return 0;
  }

  v16 = swift_allocObject();
  v33 = MEMORY[0x277D84FA0];
  *(v16 + 16) = MEMORY[0x277D84FA0];
  v55 = sub_22F1DAFF8;
  v56 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_22F1D4AD0;
  v54 = &block_descriptor_52;
  v34 = _Block_copy(&aBlock);

  [v50 enumerateObjectsUsingBlock_];
  _Block_release(v34);
  v2 = swift_allocObject();
  v2[2] = v33;
  v55 = sub_22F1DAFF8;
  v56 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_22F1D4AD0;
  v54 = &block_descriptor_56;
  v35 = _Block_copy(&aBlock);

  [v17 enumerateObjectsUsingBlock_];
  _Block_release(v35);
  if (qword_27DAAFD48 != -1)
  {
LABEL_30:
    swift_once();
  }

  v36 = sub_22F740B90();
  __swift_project_value_buffer(v36, qword_27DAD0E28);

  v37 = sub_22F740B70();
  v38 = sub_22F7415C0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134218240;
    swift_beginAccess();
    *(v39 + 4) = *(*(v16 + 16) + 16);

    *(v39 + 12) = 2048;
    swift_beginAccess();
    *(v39 + 14) = *(v2[2] + 2);

    _os_log_impl(&dword_22F0FC000, v37, v38, "Found that the user has %ld true positive user's children at the child age categories and %ld true negatives from Photos Challenge questions!", v39, 0x16u);
    MEMORY[0x2319033A0](v39, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v44 = *(v16 + 16);
  swift_beginAccess();
  v45 = v2[2];

  return v44;
}

uint64_t _s11PhotosGraph23ImportantEntitiesTuningC46getChildrenPositiveAndNegativeLocalIdentifiers02inB004truehcdkL00njcdkL0ShySSG_AHtSo7PGGraphC_A2HtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F771350;
  *(v6 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(v6 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v7 = objc_opt_self();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v8 = sub_22F741160();

  v9 = [v7 personNodesInAgeCategories:v8 includingMe:0 inGraph:a1];

  if (qword_27DAAFD48 != -1)
  {
    swift_once();
  }

  v10 = sub_22F740B90();
  __swift_project_value_buffer(v10, qword_27DAD0E28);
  v11 = v9;
  v12 = sub_22F740B70();
  v13 = sub_22F7415C0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = [v11 count];

    _os_log_impl(&dword_22F0FC000, v12, v13, "Found %ld person nodes in the baby and child age categories that will be considered in evaluation.", v14, 0xCu);
    MEMORY[0x2319033A0](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = &v27;
  v15[4] = a3;
  v15[5] = &v26;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22F1DAF28;
  *(v16 + 24) = v15;
  aBlock[4] = sub_22F1DAF34;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);

  [v11 enumerateUsingBlock:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {

    v20 = sub_22F740B70();
    v21 = sub_22F7415C0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218752;
      swift_beginAccess();
      *(v22 + 4) = *(v27 + 16);
      *(v22 + 12) = 2048;
      *(v22 + 14) = *(a2 + 16);

      *(v22 + 22) = 2048;
      swift_beginAccess();
      v23 = *(v26 + 16);
      *(v22 + 24) = v23;
      *(v22 + 32) = 2048;
      *(v22 + 34) = v23;
      _os_log_impl(&dword_22F0FC000, v20, v21, "In total, found %ld true positive child nodes out of %ld true positive child persons and %ld true negative child nodes out of %ld true negative child persons.", v22, 0x2Au);
      MEMORY[0x2319033A0](v22, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v24 = v27;
    swift_beginAccess();

    return v24;
  }

  return result;
}

uint64_t _s11PhotosGraph23ImportantEntitiesTuningC41getPetPositiveAndNegativeLocalIdentifiers02inB004truehcdkL00njcdkL0ShySSG_AHtSo7PGGraphC_A2HtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = MEMORY[0x277D84FA0];
  v24 = MEMORY[0x277D84FA0];
  sub_22F120634(0, &unk_2810A9010, off_27887B270);
  v6 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  if (qword_27DAAFD48 != -1)
  {
    swift_once();
  }

  v7 = sub_22F740B90();
  __swift_project_value_buffer(v7, qword_27DAD0E28);
  v8 = v6;
  v9 = sub_22F740B70();
  v10 = sub_22F7415C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = [v8 count];

    _os_log_impl(&dword_22F0FC000, v9, v10, "Found %ld pet nodes that will be considered in evaluation.", v11, 0xCu);
    MEMORY[0x2319033A0](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = &v24;
  v12[4] = a3;
  v12[5] = &v23;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22F1DAF7C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_22F1DAF34;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_40;
  v14 = _Block_copy(aBlock);

  [v8 enumerateUsingBlock:v14];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {

    v17 = sub_22F740B70();
    v18 = sub_22F7415C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218752;
      swift_beginAccess();
      *(v19 + 4) = *(v24 + 16);
      *(v19 + 12) = 2048;
      *(v19 + 14) = *(a2 + 16);

      *(v19 + 22) = 2048;
      swift_beginAccess();
      v20 = *(v23 + 16);
      *(v19 + 24) = v20;
      *(v19 + 32) = 2048;
      *(v19 + 34) = v20;
      _os_log_impl(&dword_22F0FC000, v17, v18, "In total, found %ld true positive pet nodes out of %ld true positive pet persons and %ld true negative pet nodes out of %ld true negative pet persons.", v19, 0x2Au);
      MEMORY[0x2319033A0](v19, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v21 = v24;
    swift_beginAccess();

    return v21;
  }

  return result;
}

void sub_22F1D9CAC(uint64_t a1)
{
  if (qword_27DAAFD48 != -1)
  {
    swift_once();
  }

  v2 = sub_22F740B90();
  __swift_project_value_buffer(v2, qword_27DAD0E28);

  v3 = sub_22F740B70();
  v4 = sub_22F7415C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22F145F20(*(a1 + 32), *(a1 + 40), &v24);
    _os_log_impl(&dword_22F0FC000, v3, v4, "--- %s Results ---", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2319033A0](v6, -1, -1);
    MEMORY[0x2319033A0](v5, -1, -1);
  }

  v7 = sub_22F740B70();
  v8 = sub_22F7415C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = *(a1 + 56);
    *(v9 + 4) = *(a1 + 48);
    v11 = *(a1 + 72);
    *(v9 + 14) = *(a1 + 64);
    *v9 = 134218752;
    *(v9 + 24) = v10;
    *(v9 + 12) = 2048;
    *(v9 + 22) = 2048;
    *(v9 + 32) = 2048;
    *(v9 + 34) = v11;

    _os_log_impl(&dword_22F0FC000, v7, v8, "\tTP: %ld TN: %ld FP: %ld FN: %ld", v9, 0x2Au);
    MEMORY[0x2319033A0](v9, -1, -1);
  }

  else
  {
  }

  v12 = 5136718;
  if (*(a1 + 88))
  {
    v13 = 0xE300000000000000;
    v14 = 5136718;
    if ((*(a1 + 104) & 1) == 0)
    {
LABEL_10:
      v15 = *(a1 + 96);
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_22F7413B0();
      v12 = v24;
      v16 = v25;
      goto LABEL_13;
    }
  }

  else
  {
    v17 = *(a1 + 80);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_22F7413B0();
    v14 = v24;
    v13 = v25;
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v16 = 0xE300000000000000;
LABEL_13:

  v18 = sub_22F740B70();
  v19 = sub_22F7415C0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136315394;
    v22 = sub_22F145F20(v14, v13, &v24);

    *(v20 + 4) = v22;
    *(v20 + 12) = 2080;
    v23 = sub_22F145F20(v12, v16, &v24);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_22F0FC000, v18, v19, "\tPrecision: %s Recall: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v21, -1, -1);
    MEMORY[0x2319033A0](v20, -1, -1);
  }

  else
  {
  }
}

void _s11PhotosGraph23ImportantEntitiesTuningC062truePositiveAndTrueNegativeUsersCurrentPetLocalIdentifiersFromM9Questions16withPhotoLibraryShySSG_AFtSgSo07PHPhotoT0C_tFZ_0(void *a1)
{
  v2 = [a1 librarySpecificFetchOptions];
  [v2 setWantsIncrementalChangeDetails_];
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  aBlock = 0x203D3D2065707974;
  v69 = 0xE800000000000000;
  v3 = sub_22F742010();
  MEMORY[0x231900B10](v3);

  v4 = sub_22F741560();

  [v2 setPredicate_];

  v5 = [objc_opt_self() fetchAnsweredYesOrNoQuestionsWithOptions:v2 validQuestionsOnly:1];
  v6 = &selRef_assetIsSafeForWidgetDisplay_;
  if ([v5 count] < 1)
  {
    goto LABEL_6;
  }

  v67 = v2;
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84FA0];
  *(v7 + 16) = MEMORY[0x277D84FA0];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v2 = (v9 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  v72 = sub_22F1DAF04;
  v73 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_22F334418;
  v71 = &block_descriptor_14;
  v11 = _Block_copy(&aBlock);

  v12 = v5;
  [v5 enumerateObjectsUsingBlock_];
  _Block_release(v11);
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_beginAccess();
  v14 = *(v7 + 16);

  v15 = sub_22F741410();

  v5 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v16 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (!v16)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = sub_22F741420();

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = sub_22F10B348(*(v17 + 16), 0);
    v20 = sub_22F11A438(&aBlock, v19 + 4, v18, v17);
    sub_22F1534EC();
    if (v20 != v18)
    {
      __break(1u);
LABEL_6:
      if (qword_27DAAFD48 != -1)
      {
        swift_once();
      }

      v21 = sub_22F740B90();
      __swift_project_value_buffer(v21, qword_27DAD0E28);
      v22 = sub_22F740B70();
      v23 = sub_22F7415C0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_22F0FC000, v22, v23, "No pet Photos Challenge questions answered.", v24, 2u);
        MEMORY[0x2319033A0](v24, -1, -1);
      }

      return;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v25 = *v2;

  v26 = sub_22F741410();

  v27 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (!v27)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v28 = sub_22F741420();

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = sub_22F10B348(*(v28 + 16), 0);
    v31 = sub_22F11A438(&aBlock, (v30 + 32), v29, v28);
    sub_22F1534EC();
    if (v31 == v29)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v30 = MEMORY[0x277D84F90];
LABEL_17:
  v32 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22F771EB0;
  *(v33 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v34 = sub_22F741160();

  [v32 setIncludedDetectionTypes_];

  v35 = objc_opt_self();
  v36 = sub_22F741160();

  v37 = v32;
  v38 = [v35 fetchPersonsWithLocalIdentifiers:v36 options:v37];

  v39 = v38;
  v40 = sub_22F741160();

  v41 = [v35 fetchPersonsWithLocalIdentifiers:v40 options:v37];

  v42 = [v39 count];
  v43 = [v41 count];
  if (__OFADD__(v42, v43))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (&v43[v42])
  {
    v64 = v12;
    v66 = v37;
    v6 = swift_allocObject();
    v44 = MEMORY[0x277D84FA0];
    v12 = v41;
    v6[2] = MEMORY[0x277D84FA0];
    v72 = sub_22F1DAF0C;
    v73 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_22F1D4AD0;
    v71 = &block_descriptor_18;
    v45 = _Block_copy(&aBlock);

    v65 = v39;
    [v39 enumerateObjectsUsingBlock_];
    _Block_release(v45);
    v30 = swift_allocObject();
    *(v30 + 16) = v44;
    v72 = sub_22F1DAFF8;
    v73 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_22F1D4AD0;
    v71 = &block_descriptor_22;
    v46 = _Block_copy(&aBlock);

    [v41 enumerateObjectsUsingBlock_];
    _Block_release(v46);
    if (qword_27DAAFD48 == -1)
    {
LABEL_20:
      v47 = sub_22F740B90();
      __swift_project_value_buffer(v47, qword_27DAD0E28);

      v48 = sub_22F740B70();
      v49 = sub_22F7415C0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock = v62;
        *v50 = 134218242;
        swift_beginAccess();
        *(v50 + 4) = *(v6[2] + 2);

        *(v50 + 12) = 2080;
        swift_beginAccess();
        v63 = v12;
        v51 = *(v30 + 16);

        v52 = sub_22F741430();
        v54 = v53;

        v55 = sub_22F145F20(v52, v54, &aBlock);

        *(v50 + 14) = v55;
        _os_log_impl(&dword_22F0FC000, v48, v49, "Found that the user has %ld true positive pets and %s true negative pets from Photos Challenge questions!", v50, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x2319033A0](v62, -1, -1);
        MEMORY[0x2319033A0](v50, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      v60 = v6[2];
      swift_beginAccess();
      v61 = *(v30 + 16);

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_20;
  }

  if (qword_27DAAFD48 != -1)
  {
    swift_once();
  }

  v56 = sub_22F740B90();
  __swift_project_value_buffer(v56, qword_27DAD0E28);
  v57 = sub_22F740B70();
  v58 = sub_22F7415C0();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_22F0FC000, v57, v58, "Pet Photos Challenge questions are out of date, they don't match any existing pet persons in the database.", v59, 2u);
    MEMORY[0x2319033A0](v59, -1, -1);
  }
}

uint64_t sub_22F1DABD0(void *a1, void *a2, uint64_t a3)
{
  result = sub_22F741690();
  if (!v3)
  {
    type metadata accessor for ImportantEntitiesTuning();
    v8 = _s11PhotosGraph23ImportantEntitiesTuningC74truePositiveAndTrueNegativeUsersChildrenLocalIdentifiersFromChildQuestions16withPhotoLibraryShySSG_AFtSgSo07PHPhotoT0C_tFZ_0(a2);
    if (v8)
    {
      static ImportantEntitiesTuning.evaluateImportantEntitiesInferenceAcrossParameters(withDetectionType:inGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:progressReporter:sendToCoreAnalytics:)(1, a1, v8, v9, a3, 1);
    }

    else
    {
      if (qword_27DAAFD48 != -1)
      {
        swift_once();
      }

      v10 = sub_22F740B90();
      __swift_project_value_buffer(v10, qword_27DAD0E28);
      v11 = sub_22F740B70();
      v12 = sub_22F7415C0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22F0FC000, v11, v12, "Skipping user's children inference.", v13, 2u);
        MEMORY[0x2319033A0](v13, -1, -1);
      }
    }

    sub_22F741690();
    _s11PhotosGraph23ImportantEntitiesTuningC062truePositiveAndTrueNegativeUsersCurrentPetLocalIdentifiersFromM9Questions16withPhotoLibraryShySSG_AFtSgSo07PHPhotoT0C_tFZ_0(a2);
    if (v14)
    {
      static ImportantEntitiesTuning.evaluateImportantEntitiesInferenceAcrossParameters(withDetectionType:inGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:progressReporter:sendToCoreAnalytics:)(2, a1, v14, v15, a3, 1);
    }

    else
    {
      if (qword_27DAAFD48 != -1)
      {
        swift_once();
      }

      v16 = sub_22F740B90();
      __swift_project_value_buffer(v16, qword_27DAD0E28);
      v17 = sub_22F740B70();
      v18 = sub_22F7415C0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22F0FC000, v17, v18, "Skipping user's pets inference.", v19, 2u);
        MEMORY[0x2319033A0](v19, -1, -1);
      }
    }

    return sub_22F741690();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F1DAEAC()
{
  result = qword_27DAB1620;
  if (!qword_27DAB1620)
  {
    sub_22F73F470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1620);
  }

  return result;
}

uint64_t sub_22F1DAF04(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22F1D47F0(a1);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1DAFC8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22F1D4B54(a1);
}

uint64_t sub_22F1DB024(uint64_t a1)
{
  v2 = sub_22F1DC9E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22F1DB060(uint64_t a1)
{
  v2 = sub_22F1DC9E0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22F1DB0D0(uint64_t a1)
{
  v2 = sub_22F1DCAE4();

  return MEMORY[0x28219CB78](a1, v2);
}

id PGUpNextComputer.__allocating_init(targets:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11PhotosGraph16PGUpNextComputer_targets] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PGUpNextComputer.init(targets:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11PhotosGraph16PGUpNextComputer_targets] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void PGUpNextComputer.enumerateSuggestions(with:featureWeightVectors:block:)(id *a1, unint64_t a2, uint64_t (*a3)(id, uint64_t, uint64_t, unint64_t *))
{
  v5 = v4;
  v6 = v3;
  v10 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  if (a2)
  {
    v26 = a1;
    if (a2 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v12 = MEMORY[0x277D84F90];
      if (!i)
      {
LABEL_19:
        a1 = v26;
        goto LABEL_20;
      }

      v32 = MEMORY[0x277D84F90];
      sub_22F1468DC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v25 = v10;
      v23 = v6;
      v24 = a3;
      v10 = 0;
      v12 = v32;
      v6 = a2 & 0xC000000000000001;
      while (1)
      {
        a3 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v6)
        {
          v13 = MEMORY[0x2319016F0](v10, a2);
        }

        else
        {
          if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v13 = *(a2 + 8 * v10 + 32);
        }

        v14 = v13;
        v28 = v13;
        sub_22F1DB468(&v28, &v27, &v29);
        if (v5)
        {

          return;
        }

        v5 = 0;

        v15 = v29;
        v16 = v30;
        v17 = v31;
        v32 = v12;
        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          v22 = v29;
          sub_22F1468DC((v18 > 1), v19 + 1, 1);
          v15 = v22;
          v12 = v32;
        }

        *(v12 + 16) = v19 + 1;
        v20 = v12 + 28 * v19;
        *(v20 + 32) = v15;
        *(v20 + 48) = v16;
        *(v20 + 56) = v17;
        ++v10;
        if (a3 == i)
        {
          a3 = v24;
          v6 = v23;
          v10 = v25;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    __break(1u);
  }

  else
  {
    v12 = 0;
LABEL_20:
    v21 = v10;
    sub_22F1DBDF4(a1, v12, v6, v21, a3);
  }
}

uint64_t sub_22F1DB468@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = [*a1 wrapper];
  sub_22F73FBC0();

  v12 = sub_22F73FD10();
  (*(v7 + 8))(v10, v6);
  if (*(v12 + 16) == 7)
  {
    v13 = *(v12 + 56);
    v17 = *(v12 + 32);
    v14 = *(v12 + 48);

    *a3 = v17;
    *(a3 + 16) = v14;
    *(a3 + 24) = v13;
  }

  else
  {

    sub_22F1DC974();
    v16 = swift_allocError();
    result = swift_willThrow();
    *a2 = v16;
  }

  return result;
}

id PGUpNextComputer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PGUpNextComputer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F1DB7D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v51 - v7;
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0x203A656C706F6550, 0xE800000000000000);
  v9 = [a1 personNodes];
  v10 = [v9 localIdentifiers];

  sub_22F741420();
  v11 = sub_22F741430();
  v13 = v12;

  MEMORY[0x231900B10](v11, v13);

  MEMORY[0x231900B10](0x3A73656E6563530ALL, 0xE900000000000020);
  v14 = [a1 sceneNodes];
  v15 = [v14 sceneNames];

  sub_22F741420();
  v16 = sub_22F741430();
  v18 = v17;

  MEMORY[0x231900B10](v16, v18);

  MEMORY[0x231900B10](0x676E696E61654D0ALL, 0xEB00000000203A73);
  v19 = [a1 meaningNodes];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 labels];

    sub_22F741420();
    v22 = sub_22F741430();
    v24 = v23;
  }

  else
  {
    v24 = 0xE400000000000000;
    v22 = 1701736270;
  }

  MEMORY[0x231900B10](v22, v24);

  MEMORY[0x231900B10](0x676E696E61654D0ALL, 0xEB00000000203A73);
  v25 = [a1 memoryFeatureNodes];
  v26 = 0xE400000000000000;
  if (v25)
  {
    v27 = v25;
    v28 = [v25 array];

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23E0, &qword_22F779828);
    v30 = sub_22F741180();

    v31 = MEMORY[0x231900D40](v30, v29);
    v33 = v32;
  }

  else
  {
    v31 = 1701736270;
    v33 = 0xE400000000000000;
  }

  MEMORY[0x231900B10](v31, v33);

  MEMORY[0x231900B10](0xD000000000000011, 0x800000022F7915C0);
  v34 = [a1 isTripMemory];
  v35 = v34 == 0;
  if (v34)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE500000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  MEMORY[0x231900B10](v36, v37);

  MEMORY[0x231900B10](0x6F697461636F4C0ALL, 0xEB00000000203A6ELL);
  v38 = [a1 representativeLocation];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 description];

    v41 = sub_22F740E20();
    v26 = v42;
  }

  else
  {
    v41 = 1701736270;
  }

  MEMORY[0x231900B10](v41, v26);

  MEMORY[0x231900B10](0x203A657461440ALL, 0xE700000000000000);
  v43 = [a1 representativeDate];
  if (v43)
  {
    v44 = v43;
    sub_22F73F640();

    v45 = sub_22F73F690();
    (*(*(v45 - 8) + 56))(v6, 0, 1, v45);
  }

  else
  {
    v45 = sub_22F73F690();
    (*(*(v45 - 8) + 56))(v6, 1, 1, v45);
  }

  v46 = 1701736270;
  sub_22F168438(v6, v8);
  sub_22F73F690();
  v47 = *(v45 - 8);
  if ((*(v47 + 48))(v8, 1, v45) == 1)
  {
    sub_22F15FCF0(v8);
    v48 = 0xE400000000000000;
  }

  else
  {
    v46 = sub_22F73F540();
    v48 = v49;
    (*(v47 + 8))(v8, v45);
  }

  MEMORY[0x231900B10](v46, v48);

  return v51[0];
}

uint64_t sub_22F1DBDF4(id *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(id, uint64_t, uint64_t, unint64_t *))
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + OBJC_IVAR____TtC11PhotosGraph16PGUpNextComputer_targets);
  if (v7 >> 62)
  {
    goto LABEL_71;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      *&v77 = MEMORY[0x277D84F90];
      sub_22F741BD0();
      if (v8 < 0)
      {
        __break(1u);
      }

      type metadata accessor for UpNext.MatchingResult();
      v10 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2319016F0](v10, v7);
        }

        else
        {
          v11 = *(v7 + 8 * v10 + 32);
          swift_unknownObjectRetain();
        }

        ++v10;
        static UpNext.MatchingResult.match(source:target:)(a1, v11);
        swift_unknownObjectRelease();
        sub_22F741BA0();
        v12 = *(v77 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
      }

      while (v8 != v10);
      v13 = v77;
      v9 = MEMORY[0x277D84F90];
      if (a2)
      {
LABEL_11:
        v14 = a2;
        v15 = *(a2 + 16);
        if (v15)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
      if (a2)
      {
        goto LABEL_11;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB12F0, &unk_22F7716F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22F779720;
    *(v14 + 32) = xmmword_22F779730;
    *(v14 + 48) = xmmword_22F779740;
    *(v14 + 64) = xmmword_22F779750;
    *(v14 + 80) = xmmword_22F779760;
    *(v14 + 96) = xmmword_22F779770;
    *(v14 + 112) = xmmword_22F779780;
    *(v14 + 128) = xmmword_22F779790;
    *(v14 + 144) = xmmword_22F7797A0;
    *(v14 + 160) = xmmword_22F7797B0;
    *(v14 + 176) = xmmword_22F7797C0;
    *(v14 + 192) = xmmword_22F779760;
    *(v14 + 208) = xmmword_22F7797D0;
    *(v14 + 224) = 0;
    v15 = *(v14 + 16);
    if (v15)
    {
LABEL_12:
      v76 = v9;

      sub_22F741BD0();
      v16 = (v14 + 56);
      do
      {
        v17 = *v16;
        v77 = *(v16 - 6);
        v78 = *(v16 - 1);
        v79 = v17;
        _s11PhotosGraph6UpNextO21ScoredMatchingResultsC5score08matchingG06source7weightsAEXDSayAC0F6ResultCG_So04PGUpdF4Info_pAC0F10DimensionsVtFZ_0(v13, a1, &v77);
        sub_22F741BA0();
        v18 = *(v76 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v16 += 7;
        --v15;
      }

      while (v15);

      v19 = v76;
      goto LABEL_18;
    }

LABEL_17:

    v19 = MEMORY[0x277D84F90];
LABEL_18:
    if (qword_2810A93F8 != -1)
    {
      swift_once();
    }

    v20 = sub_22F740B90();
    __swift_project_value_buffer(v20, qword_2810B4CC8);
    swift_unknownObjectRetain();
    v21 = sub_22F740B70();
    v22 = sub_22F7415D0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v77 = v24;
      *v23 = 136315138;
      swift_getObjectType();
      v25 = sub_22F1DB7D4(a1);
      v27 = sub_22F145F20(v25, v26, &v77);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_22F0FC000, v21, v22, "[UpNext] Source:\n%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2319033A0](v24, -1, -1);
      MEMORY[0x2319033A0](v23, -1, -1);
    }

    v7 = a4;
    a2 = 0;
    v28 = &off_27888E000;
    v67 = v19;
    do
    {
LABEL_57:
      if (a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_62:

        goto LABEL_63;
      }

      ++a2;

      v33 = v19;
      v68 = v19;
    }

    while (!v19);
    v29 = 0;
    v30 = v19 & 0xFFFFFFFFFFFFFF8;
    a1 = (v19 & 0xC000000000000001);
    v31 = v19 + 32;
    v61 = v19 >> 62;
    v62 = a2;
    v63 = v19 + 32;
    v64 = v19 & 0xC000000000000001;
    v65 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      goto LABEL_24;
    }

LABEL_26:
    if (v29 == *(v30 + 16))
    {
      goto LABEL_57;
    }

LABEL_27:
    if (!a1)
    {
      if (v29 >= *(v30 + 16))
      {
LABEL_69:
        __break(1u);
      }

      else
      {
        v69 = *(v31 + 8 * v29);

        v34 = __OFADD__(v29, 1);
        v35 = v29 + 1;
        if (!v34)
        {
          goto LABEL_30;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      v8 = sub_22F741A00();
      continue;
    }

    break;
  }

  v69 = MEMORY[0x2319016F0](v29, v33);
  v34 = __OFADD__(v29, 1);
  v35 = v29 + 1;
  if (v34)
  {
    goto LABEL_70;
  }

LABEL_30:
  LOBYTE(v76) = 0;
  v36 = *(v69 + 56);
  if (v36 >> 62)
  {
    if (v36 < 0)
    {
      v58 = *(v69 + 56);
    }

    v73 = sub_22F741A00();
    if (v73)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v73 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
LABEL_32:
      v66 = v35;
      v74 = v36 & 0xC000000000000001;
      v70 = v36 & 0xFFFFFFFFFFFFFF8;

      v37 = 0;
      a2 = v73;
      while (1)
      {
        if (v74)
        {
          v38 = MEMORY[0x2319016F0](v37, v36);
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v37 >= *(v70 + 16))
          {
            __break(1u);
            goto LABEL_69;
          }

          v40 = *(v36 + 8 * v37 + 32);

          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
LABEL_66:
            __break(1u);
            goto LABEL_62;
          }
        }

        v75 = v39;
        a1 = *(v38 + 16);

        v41 = sub_22F740B70();
        v42 = sub_22F7415D0();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *&v77 = v44;
          *v43 = 136315138;
          v45 = a1[2];
          swift_getObjectType();
          v46 = v36;
          v47 = swift_unknownObjectRetain();
          v48 = sub_22F1DB7D4(v47);
          v50 = v49;
          swift_unknownObjectRelease();
          v51 = v48;
          v36 = v46;
          a2 = v73;
          v52 = sub_22F145F20(v51, v50, &v77);
          v7 = a4;

          *(v43 + 4) = v52;
          v28 = &off_27888E000;
          _os_log_impl(&dword_22F0FC000, v41, v42, "[UpNext] Target:\n%s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          MEMORY[0x2319033A0](v44, -1, -1);
          MEMORY[0x2319033A0](v43, -1, -1);
        }

        v53 = [a1[2] v28[337]];
        v54 = UpNext.MatchingResult.debugInfo.getter();
        v56 = v55;
        if ([v7 containsIdentifier_])
        {

          if (v76)
          {
            goto LABEL_60;
          }
        }

        else
        {
          [v7 addIdentifier_];
          v57 = a5(v53, v54, v56, &v76);

          if (v57)
          {

            v30 = v65;
            v29 = v66;
            a1 = v64;
            if (v76 == 1)
            {
              goto LABEL_62;
            }

            v19 = v67;
            v33 = v68;
            a2 = v62;
            v31 = v63;
            if (!v61)
            {
              goto LABEL_26;
            }

LABEL_24:
            v32 = sub_22F741A00();
            v31 = v63;
            v33 = v68;
            if (v29 == v32)
            {
              goto LABEL_57;
            }

            goto LABEL_27;
          }

          if (v76 == 1)
          {
LABEL_60:

            goto LABEL_62;
          }
        }

        ++v37;
        if (v75 == a2)
        {

          goto LABEL_62;
        }
      }
    }
  }

LABEL_63:

  v60 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22F1DC68C(id *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  if (a2)
  {
    if (a2 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v10 = MEMORY[0x277D84F90];
      if (!i)
      {
        break;
      }

      v29 = MEMORY[0x277D84F90];
      sub_22F1468DC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v22 = a3;
      v23 = v8;
      v21 = a1;
      v11 = 0;
      v10 = v29;
      a1 = (a2 & 0xC000000000000001);
      while (1)
      {
        a3 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (a1)
        {
          v12 = MEMORY[0x2319016F0](v11, a2);
        }

        else
        {
          if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 8 * v11 + 32);
        }

        v13 = v12;
        v25 = v12;
        sub_22F1DB468(&v25, &v24, &v26);
        if (v4)
        {

          return;
        }

        v4 = 0;

        v14 = v26;
        v15 = v27;
        v16 = v28;
        v29 = v10;
        v8 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v8 >= v17 >> 1)
        {
          v20 = v26;
          sub_22F1468DC((v17 > 1), v8 + 1, 1);
          v14 = v20;
          v10 = v29;
        }

        *(v10 + 16) = v8 + 1;
        v18 = v10 + 28 * v8;
        *(v18 + 32) = v14;
        *(v18 + 48) = v15;
        *(v18 + 56) = v16;
        ++v11;
        if (a3 == i)
        {
          a1 = v21;
          a3 = v22;
          v8 = v23;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_19:
  v19 = v8;
  sub_22F1DBDF4(a1, v10, a3, v19, sub_22F1DC90C);
}

unint64_t sub_22F1DC8C0()
{
  result = qword_27DAB23C0;
  if (!qword_27DAB23C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB23C0);
  }

  return result;
}

uint64_t sub_22F1DC90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = sub_22F740DF0();
  v9 = (*(v7 + 16))(v7, a1, v8, a4);

  return v9;
}

unint64_t sub_22F1DC974()
{
  result = qword_27DAB23D8;
  if (!qword_27DAB23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB23D8);
  }

  return result;
}

unint64_t sub_22F1DC9E0()
{
  result = qword_27DAB23E8;
  if (!qword_27DAB23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB23E8);
  }

  return result;
}

unint64_t sub_22F1DCA38()
{
  result = qword_27DAB23F0;
  if (!qword_27DAB23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB23F0);
  }

  return result;
}

unint64_t sub_22F1DCA90()
{
  result = qword_27DAB23F8;
  if (!qword_27DAB23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB23F8);
  }

  return result;
}

unint64_t sub_22F1DCAE4()
{
  result = qword_27DAB2400;
  if (!qword_27DAB2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2400);
  }

  return result;
}

unint64_t sub_22F1DCB38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_22F741B00();

        v5 = 0xD000000000000024;
      }

      else
      {
        sub_22F741B00();

        v5 = 0xD000000000000023;
      }
    }

    else
    {
      sub_22F741B00();

      v5 = 0xD00000000000001FLL;
    }

    goto LABEL_11;
  }

  if (a3 == 3)
  {
    sub_22F741B00();

    v5 = 0xD00000000000001CLL;
    goto LABEL_11;
  }

  if (a3 == 4)
  {
    sub_22F741B00();

    v5 = 0xD00000000000001ALL;
LABEL_11:
    v7 = v5;
    MEMORY[0x231900B10](a1, a2);
    return v7;
  }

  return 0xD000000000000019;
}

uint64_t sub_22F1DCD64()
{
  v0 = sub_22F1515F8(&unk_2843D9A28);
  result = sub_22F1DF3B0(&unk_2843D9A48);
  qword_2810AA178 = v0;
  return result;
}

uint64_t static MaestroMusicMatrixGenerator.supportedLocaleIdentifiers.getter()
{
  if (qword_2810AA170 != -1)
  {
    swift_once();
  }
}

uint64_t static MaestroMusicMatrixGenerator.localeIdentifier()()
{
  v0 = sub_22F73F7C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F780();
  v5 = sub_22F73F6F0();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (qword_2810AA170 != -1)
  {
    swift_once();
  }

  if ((sub_22F15E910(v5, v7, qword_2810AA178) & 1) == 0)
  {

    return 0x53555F6E65;
  }

  return v5;
}

uint64_t static MaestroMusicMatrixGenerator.localeProjectDirectoryName(fromLocaleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a1 != 0x53555F6E65 || a2 != 0xE500000000000000)
  {
    sub_22F742040();
  }

  return 0x6A6F72706C2E6E65;
}

void static MaestroMusicMatrixGenerator.maestroSongs(schemaVersion:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v78 = a1;
  v79 = a2;
  v75 = a3;
  v3 = sub_22F73F470();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = v80[8];
  MEMORY[0x28223BE20](v3);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v71 - v7;
  MEMORY[0x28223BE20](v8);
  v76 = &v71 - v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v71 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v74 = sub_22F740B90();
  v24 = __swift_project_value_buffer(v74, qword_2810B4DC0);
  v25 = sub_22F740B70();
  v26 = sub_22F7415F0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] (MaestroMatrix) Checking for the presence of a MaestroSongs file...", v27, 2u);
    MEMORY[0x2319033A0](v27, -1, -1);
  }

  v28 = sub_22F1DE138();
  v30 = v29;
  type metadata accessor for CuratedSongLibrary();
  v31 = [objc_opt_self() ignoreProgress];
  v32 = v82;
  sub_22F36B1A8(v28, v30, v31, v20);
  v33 = v32;
  if (v32)
  {

    v34 = 0;
    v39 = sub_22F740B70();
    v40 = sub_22F7415E0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22F0FC000, v39, v40, "[MemoriesMusic] (MaestroMatrix) MaestroSongs not found. Loading fallback from bundle", v41, 2u);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

    v42 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v43 = sub_22F740DF0();
    v44 = [v42 initWithPath_];

    if (!v44)
    {
      sub_22F1DF1D0();
      swift_allocError();
      *v52 = 0xD00000000000002DLL;
      *(v52 + 8) = 0x800000022F791680;
      *(v52 + 16) = 0;
      swift_willThrow();
LABEL_22:

      return;
    }

    v45 = sub_22F740DF0();
    v46 = sub_22F740DF0();
    v47 = [v44 URLForResource:v45 withExtension:v46];

    if (v47)
    {
      v48 = v77;
      sub_22F73F430();

      v49 = v80;
      v50 = v80[2];
      v51 = v76;
    }

    else
    {
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v74, qword_2810B4D90);
      v53 = sub_22F740B70();
      v54 = sub_22F7415E0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v82 = 0;
        v57 = v56;
        v83 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_22F145F20(0xD000000000000011, 0x800000022F7916B0, &v83);
        _os_log_impl(&dword_22F0FC000, v53, v54, "[MemoriesMusic] (MaestroMatrix) Falling back to checking for old style MaestroSongs json file at path: %s.", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        v58 = v57;
        v34 = v82;
        MEMORY[0x2319033A0](v58, -1, -1);
        MEMORY[0x2319033A0](v55, -1, -1);
      }

      v59 = sub_22F740DF0();
      v60 = sub_22F740DF0();
      v61 = [v44 URLForResource:v59 withExtension:v60];

      if (!v61)
      {

        sub_22F1DF224();
        swift_allocError();
        *v70 = 0xD000000000000011;
        *(v70 + 8) = 0x800000022F7916B0;
        *(v70 + 16) = 2;
        swift_willThrow();
        return;
      }

      v48 = v73;
      sub_22F73F430();

      v49 = v80;
      v50 = v80[2];
      v51 = v72;
    }

    v62 = v81;
    v50(v51, v48, v81);
    v63 = v79;

    MaestroSongs.init(from:schemaVersion:)(v51, v78, v63, &v83);
    if (v34)
    {
      (v49[1])(v48, v62);

      goto LABEL_22;
    }

    (v49[1])(v48, v62);

    *v75 = v83;
  }

  else
  {
    v82 = v24;

    sub_22F73F410();
    sub_22F73F420();

    v36 = v80;
    v35 = v81;
    v37 = v80[1];
    v37(v17, v81);
    v37(v20, v35);
    (v36[2])(v14, v23, v35);
    v38 = v79;

    MaestroSongs.init(from:schemaVersion:)(v14, v78, v38, &v83);
    v64 = v83;
    v65 = sub_22F740B70();
    v66 = sub_22F7415F0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v37;
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_22F0FC000, v65, v66, "[MemoriesMusic] (MaestroMatrix) MaestroSongs file found", v68, 2u);
      v69 = v68;
      v37 = v67;
      MEMORY[0x2319033A0](v69, -1, -1);
    }

    v37(v23, v81);
    *v75 = v64;
  }
}

void static MaestroMusicMatrixGenerator.maestroSongsInfo()(uint64_t *a1@<X8>)
{
  v73 = a1;
  v83 = sub_22F73F470();
  v78 = *(v83 - 8);
  v2 = v78[8];
  MEMORY[0x28223BE20](v83);
  v70 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v69 - v5;
  MEMORY[0x28223BE20](v6);
  v74 = &v69 - v7;
  MEMORY[0x28223BE20](v8);
  v75 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v76 = &v69 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  MEMORY[0x28223BE20](v18);
  v77 = &v69 - v19;
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v72 = sub_22F740B90();
  __swift_project_value_buffer(v72, qword_2810B4DC0);
  v20 = sub_22F740B70();
  v21 = sub_22F7415F0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22F0FC000, v20, v21, "[MemoriesMusic] (MaestroMatrix) Checking for the presence of a MaestroSongsInfo file...", v22, 2u);
    MEMORY[0x2319033A0](v22, -1, -1);
  }

  v23 = sub_22F1DE138();
  v25 = v24;
  type metadata accessor for CuratedSongLibrary();
  v26 = [objc_opt_self() ignoreProgress];
  sub_22F36B1A8(v23, v25, v26, v17);
  if (v1)
  {

    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22F0FC000, v32, v33, "[MemoriesMusic] (MaestroMatrix) MaestroSongsInfo not found. Loading fallback from bundle", v34, 2u);
      MEMORY[0x2319033A0](v34, -1, -1);
    }

    v35 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v36 = sub_22F740DF0();
    v37 = [v35 initWithPath_];

    if (!v37)
    {
      sub_22F1DF1D0();
      swift_allocError();
      *v45 = 0xD00000000000002DLL;
      *(v45 + 8) = 0x800000022F791680;
      *(v45 + 16) = 0;
      swift_willThrow();

      return;
    }

    v38 = sub_22F740DF0();
    v39 = sub_22F740DF0();
    v40 = [v37 URLForResource:v38 withExtension:v39];

    if (v40)
    {
      v41 = v75;
      sub_22F73F430();

      v42 = v78;
      v43 = v78[2];
      v44 = v74;
    }

    else
    {
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v72, qword_2810B4D90);
      v46 = sub_22F740B70();
      v47 = sub_22F7415E0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v79 = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_22F145F20(0xD000000000000011, 0x800000022F7916B0, &v79);
        _os_log_impl(&dword_22F0FC000, v46, v47, "[MemoriesMusic] (MaestroMatrix) Falling back to checking for old style MaestroSongsInfo in json file at path: %s.", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x2319033A0](v49, -1, -1);
        MEMORY[0x2319033A0](v48, -1, -1);
      }

      v50 = sub_22F740DF0();
      v51 = sub_22F740DF0();
      v52 = [v37 URLForResource:v50 withExtension:v51];

      if (!v52)
      {

        sub_22F1DF224();
        swift_allocError();
        *v67 = 0xD000000000000011;
        *(v67 + 8) = 0x800000022F7916B0;
        *(v67 + 16) = 2;
        swift_willThrow();
        return;
      }

      v41 = v71;
      sub_22F73F430();

      v42 = v78;
      v43 = v78[2];
      v44 = v70;
    }

    v53 = v83;
    v43(v44, v41, v83);
    MaestroSongsInfo.init(from:)(v44, &v79);
    (v42[1])(v41, v53);

    v55 = v79;
    v54 = v80;
    v56 = v81;
    v57 = v82;
  }

  else
  {

    sub_22F73F410();
    v27 = v77;
    sub_22F73F420();

    v28 = v78;
    v29 = v78[1];
    v30 = v83;
    v29(v14, v83);
    v29(v17, v30);
    v31 = v76;
    (v28[2])(v76, v27, v30);
    MaestroSongsInfo.init(from:)(v31, &v79);
    v55 = v79;
    v54 = v80;
    v57 = v82;
    v78 = v81;

    v58 = sub_22F740B70();
    v59 = sub_22F7415F0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      LODWORD(v75) = v59;
      v61 = v60;
      v62 = swift_slowAlloc();
      v76 = v55;
      v63 = v62;
      v79 = v62;
      *v61 = 136315138;

      v64 = sub_22F145F20(v78, v57, &v79);

      *(v61 + 4) = v64;
      _os_log_impl(&dword_22F0FC000, v58, v75, "[MemoriesMusic] (MaestroMatrix) MaestroSongsInfo file found with contentVersion: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      v65 = v63;
      v55 = v76;
      MEMORY[0x2319033A0](v65, -1, -1);
      MEMORY[0x2319033A0](v61, -1, -1);

      v66 = v77;
    }

    else
    {

      v66 = v27;
    }

    v29(v66, v83);
    v56 = v78;
  }

  v68 = v73;
  *v73 = v55;
  v68[1] = v54;
  v68[2] = v56;
  v68[3] = v57;
}

uint64_t sub_22F1DE138()
{
  v0 = sub_22F1ED6E0();
  v2 = v1;
  v3 = qword_2810AA170;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_22F15E910(v0, v2, qword_2810AA178);

  return v0;
}

void *sub_22F1DE30C()
{
  v118 = sub_22F73F7C0();
  v121 = *(v118 - 8);
  v1 = *(v121 + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22F73F470();
  v120 = *(v123 - 8);
  v3 = v120[8];
  v4 = MEMORY[0x28223BE20](v123);
  v111 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v107 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v113 = &v107 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v115 = &v107 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v107 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v107 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v107 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v107 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v107 - v25;
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v116 = v21;
  v110 = v18;
  v114 = v26;
  v112 = v8;
  v27 = sub_22F740B90();
  v119 = __swift_project_value_buffer(v27, qword_2810B4DC0);
  v28 = sub_22F740B70();
  v29 = sub_22F7415F0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22F0FC000, v28, v29, "[MemoriesMusic] (MaestroMatrix) Checking for the presence of a keywordsByAdamID file...", v30, 2u);
    MEMORY[0x2319033A0](v30, -1, -1);
  }

  v31 = sub_22F1DE138();
  v33 = v32;
  type metadata accessor for CuratedSongLibrary();
  v34 = objc_opt_self();
  v35 = [v34 ignoreProgress];
  sub_22F36B1A8(v31, v33, v35, v24);
  if (v0)
  {
    v116 = v0;

    v42 = 0;
    v43 = sub_22F740B70();
    v44 = sub_22F7415E0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22F0FC000, v43, v44, "[MemoriesMusic] (MaestroMatrix) keywordsByAdamID not found. Loading fallback from bundle", v45, 2u);
      MEMORY[0x2319033A0](v45, -1, -1);
    }

    v46 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v47 = sub_22F740DF0();
    v48 = [v46 initWithPath_];

    if (!v48)
    {
      sub_22F1DF1D0();
      swift_allocError();
      *v67 = 0xD00000000000002DLL;
      *(v67 + 8) = 0x800000022F791680;
      *(v67 + 16) = 0;
      swift_willThrow();

      return v42;
    }

    v114 = 0;
    v42 = v48;
    v49 = sub_22F740DF0();
    v50 = sub_22F740DF0();
    v51 = v117;
    sub_22F73F780();
    v52 = sub_22F73F6F0();
    v54 = v53;
    v55 = *(v121 + 8);
    v121 += 8;
    v55(v51, v118);
    if (qword_2810AA170 != -1)
    {
      swift_once();
    }

    v56 = qword_2810AA178;
    if ((sub_22F15E910(v52, v54, qword_2810AA178) & 1) == 0)
    {

      v54 = 0xE500000000000000;
      v52 = 0x53555F6E65;
    }

    if (v52 != 0x53555F6E65 || v54 != 0xE500000000000000)
    {
      sub_22F742040();
    }

    v57 = sub_22F740DF0();

    v58 = [v42 URLForResource:v49 withExtension:v50 subdirectory:v57];

    if (!v58)
    {
      sub_22F1DF224();
      swift_allocError();
      *v68 = 0xD000000000000014;
      *(v68 + 8) = 0x800000022F791660;
      *(v68 + 16) = 3;
      swift_willThrow();

      return v42;
    }

    v59 = v113;
    sub_22F73F430();

    v113 = v120[4];
    (v113)(v115, v59, v123);
    v60 = sub_22F740DF0();
    v61 = sub_22F740DF0();
    v62 = v117;
    sub_22F73F780();
    v63 = sub_22F73F6F0();
    v65 = v64;
    v55(v62, v118);
    if (sub_22F15E910(v63, v65, v56))
    {
      v66 = v42;
      if (v63 != 0x53555F6E65)
      {
LABEL_26:
        sub_22F742040();
LABEL_27:

        v69 = sub_22F740DF0();

        v70 = [v66 URLForResource:v60 withExtension:v61 subdirectory:v69];

        if (v70)
        {
          v71 = v111;
          sub_22F73F430();

          v72 = v112;
          v73 = v71;
          v74 = v123;
          (v113)(v112, v73, v123);
          v75 = v114;
          v76 = sub_22F73F480();
          if (v75)
          {

            v78 = v120[1];
            v78(v72, v74);
            v78(v115, v74);
          }

          else
          {
            v84 = v76;
            v85 = v77;
            v86 = sub_22F73F310();
            v87 = *(v86 + 48);
            v88 = *(v86 + 52);
            swift_allocObject();
            sub_22F73F300();
            sub_22F1DF35C();
            sub_22F73F2F0();
            v89 = v115;
            sub_22F133BF0(v84, v85);

            v42 = sub_22F337D24(v89, &v122);

            v98 = sub_22F740B70();
            v99 = sub_22F7415F0();
            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              *v100 = 0;
              _os_log_impl(&dword_22F0FC000, v98, v99, "[MemoriesMusic] (MaestroMatrix) keywordsByAdamID file used from bundle", v100, 2u);
              MEMORY[0x2319033A0](v100, -1, -1);
            }

            v101 = v120[1];
            v102 = v123;
            v101(v112, v123);
            v101(v89, v102);
          }
        }

        else
        {
          sub_22F1DF224();
          swift_allocError();
          *v79 = 0xD00000000000001ELL;
          *(v79 + 8) = 0x800000022F791640;
          *(v79 + 16) = 1;
          swift_willThrow();

          (v120[1])(v115, v123);
        }

        return v42;
      }
    }

    else
    {

      v65 = 0xE500000000000000;
      v66 = v42;
    }

    if (v65 == 0xE500000000000000)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v108 = v31;
  v36 = v24;
  v37 = v116;
  sub_22F73F410();
  sub_22F73F420();

  v38 = v120[1];
  v39 = v37;
  v40 = v123;
  v38(v39, v123);
  v109 = v38;
  v38(v36, v40);
  v41 = [v34 ignoreProgress];
  sub_22F36B1A8(v108, v33, v41, v15);

  v80 = v116;
  sub_22F73F410();
  v81 = v110;
  sub_22F73F420();

  v82 = v123;
  v83 = v109;
  v109(v80, v123);
  v83(v15, v82);
  v91 = sub_22F73F480();
  v93 = v92;
  v94 = sub_22F73F310();
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  swift_allocObject();
  sub_22F73F300();
  sub_22F1DF35C();
  sub_22F73F2F0();
  sub_22F133BF0(v91, v93);

  v97 = v114;
  v42 = sub_22F337D24(v114, &v122);

  v103 = sub_22F740B70();
  v104 = sub_22F7415F0();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&dword_22F0FC000, v103, v104, "[MemoriesMusic] (MaestroMatrix) keywordsByAdamID file found", v105, 2u);
    MEMORY[0x2319033A0](v105, -1, -1);
  }

  v106 = v123;
  v83(v81, v123);
  v83(v97, v106);
  return v42;
}

unint64_t sub_22F1DF1D0()
{
  result = qword_27DAB2410;
  if (!qword_27DAB2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2410);
  }

  return result;
}

unint64_t sub_22F1DF224()
{
  result = qword_27DAB2418;
  if (!qword_27DAB2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2418);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph27MaestroMusicMatrixGeneratorV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_22F1DF2A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F1DF2EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_22F1DF330(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22F1DF35C()
{
  result = qword_2810A9E18;
  if (!qword_2810A9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9E18);
  }

  return result;
}

uint64_t sub_22F1DF418(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 uid];
  v12 = sub_22F740E20();
  v14 = v13;

  RecentlyUsedSongs.subscript.getter(v12, v14, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_22F15FCF0(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_22F73F590();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22F1DF618()
{
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F7917F0);
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F791810);
  sub_22F7413E0();
  return 0;
}

uint64_t sub_22F1DF704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  swift_beginAccess();
  v12 = *(a3 + v11);
  if (!*(v12 + 16))
  {
    return swift_endAccess();
  }

  v13 = sub_22F1229E8(a1, a2);
  if ((v14 & 1) == 0)
  {
    return swift_endAccess();
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  result = swift_endAccess();
  v17 = *(v15 + 16);
  if (v17)
  {
    (*(v7 + 16))(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v17 - 1), v6, 1.0);
    sub_22F73F590();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

float sub_22F1DF8BC(void *a1, uint64_t a2)
{
  v3 = [a1 uid];
  v4 = sub_22F740E20();
  v6 = v5;

  sub_22F1DF704(v4, v6, a2);
  v8 = v7;

  return v8;
}

void static MemoryDisplayMetadataCacheManager.evictExpiredSongs(with:progressReporter:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22F1A26E0(a1);
  _s11PhotosGraph33MemoryDisplayMetadataCacheManagerC17evictExpiredSongs4from16progressReporter17completionHandleryAA05MusicF0C_So010MAProgressM0CySb_s5Error_pSgtctFZ_0(v7, a2, a3, a4);
}

uint64_t sub_22F1DFB54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (a1)
  {
    MusicCache.evictSongsForMemoryDisplay(before:progressReporter:)(a4);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return a6(v7);
}

void sub_22F1DFC0C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id MemoryDisplayMetadataCacheManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MemoryDisplayMetadataCacheManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MemoryDisplayMetadataCacheManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11PhotosGraph33MemoryDisplayMetadataCacheManagerC17evictExpiredSongs4from16progressReporter17completionHandleryAA05MusicF0C_So010MAProgressM0CySb_s5Error_pSgtctFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v5 = type metadata accessor for Song();
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22F73F690();
  v61 = *(v9 - 1);
  v62 = v9;
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = v50 - v12;
  sub_22F73F5F0();
  v14 = sub_22F7416D0();
  v57 = v16;
  v58 = v15;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F770DF0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_22F153470();
  *(v17 + 32) = 0x7461446568636163;
  *(v17 + 40) = 0xE900000000000065;
  v18 = sub_22F73F5B0();
  *(v17 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v17 + 104) = sub_22F15FD58();
  *(v17 + 72) = v18;
  v19 = sub_22F741560();
  v20 = a1;
  v21 = sub_22F2DA3D8(v19);
  v52 = v10;
  v53 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  v55 = v20;

  v22 = *(v21 + 16);
  if (v22)
  {
    v51 = v13;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22F146454(0, v22, 0);
    v23 = aBlock[0];
    v24 = *(v56 + 80);
    v50[1] = v21;
    v25 = v21 + ((v24 + 32) & ~v24);
    v26 = *(v56 + 72);
    do
    {
      sub_22F15CAA0(v25, v8);
      v28 = *v8;
      v27 = v8[1];

      sub_22F15CBD8(v8);
      aBlock[0] = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22F146454((v29 > 1), v30 + 1, 1);
        v23 = aBlock[0];
      }

      *(v23 + 16) = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      v25 += v26;
      --v22;
    }

    while (v22);

    v33 = v61;
    v32 = v62;
    v13 = v51;
  }

  else
  {

    v33 = v61;
    v32 = v62;
  }

  v62 = objc_opt_self();
  v34 = sub_22F741160();

  v35 = v53;
  (*(v33 + 16))(v53, v13, v32);
  v36 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v37 = (v52 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v55;
  *(v38 + 16) = v55;
  (*(v33 + 32))(v38 + v36, v35, v32);
  v40 = v57;
  *(v38 + v37) = v57;
  v41 = (v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8));
  v42 = v60;
  *v41 = v59;
  v41[1] = v42;
  aBlock[4] = sub_22F1E0A6C;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F1DFC0C;
  aBlock[3] = &block_descriptor_11;
  v43 = _Block_copy(aBlock);
  v44 = v39;
  v45 = v40;

  v46 = v34;
  v47 = v34;
  v48 = v58;
  [v62 removeSongsCachedForPhotosWithAdamIDs:v47 progressReporter:v58 completionHandler:v43];
  _Block_release(v43);

  return (*(v33 + 8))(v13, v32);
}

uint64_t sub_22F1E02E0(void *a1, uint64_t a2, const void *a3)
{
  v5 = type metadata accessor for Song();
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22F73F690();
  v59 = *(v9 - 1);
  v60 = v9;
  v10 = *(v59 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  _Block_copy(a3);
  sub_22F73F5F0();
  v15 = sub_22F7416D0();
  v57 = v17;
  v58 = v16;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22F770DF0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_22F153470();
  *(v18 + 32) = 0x7461446568636163;
  *(v18 + 40) = 0xE900000000000065;
  v19 = sub_22F73F5B0();
  *(v18 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v18 + 104) = sub_22F15FD58();
  *(v18 + 72) = v19;
  v20 = a1;
  v21 = sub_22F741560();
  v22 = sub_22F2DA3D8(v21);
  v51 = v10;
  v52 = v15;
  v53 = v20;
  v54 = v14;
  v23 = v22;

  v24 = *(v23 + 16);
  if (v24)
  {
    v49 = v13;
    aBlock[0] = MEMORY[0x277D84F90];
    v50 = v23;
    sub_22F146454(0, v24, 0);
    v25 = aBlock[0];
    v26 = v50 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v27 = *(v55 + 72);
    do
    {
      sub_22F15CAA0(v26, v8);
      v29 = *v8;
      v28 = v8[1];

      sub_22F15CBD8(v8);
      aBlock[0] = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22F146454((v30 > 1), v31 + 1, 1);
        v25 = aBlock[0];
      }

      *(v25 + 16) = v31 + 1;
      v32 = v25 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      v26 += v27;
      --v24;
    }

    while (v24);

    v34 = v59;
    v33 = v60;
    v13 = v49;
  }

  else
  {

    v34 = v59;
    v33 = v60;
  }

  v60 = objc_opt_self();
  v35 = sub_22F741160();

  v36 = v56;
  (*(v34 + 16))(v56, v13, v33);
  v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v38 = (v51 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v53;
  *(v39 + 16) = v53;
  (*(v34 + 32))(v39 + v37, v36, v33);
  v41 = v57;
  *(v39 + v38) = v57;
  v42 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  v43 = v54;
  *v42 = sub_22F1E088C;
  v42[1] = v43;
  aBlock[4] = sub_22F1E0894;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F1DFC0C;
  aBlock[3] = &block_descriptor_4;
  v44 = _Block_copy(aBlock);
  v45 = v40;
  v46 = v41;

  v47 = v58;
  [v60 removeSongsCachedForPhotosWithAdamIDs:v35 progressReporter:v58 completionHandler:v44];
  _Block_release(v44);

  (*(v34 + 8))(v13, v33);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = sub_22F73F690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_22F1E09A4(char a1, uint64_t a2)
{
  v5 = *(sub_22F73F690() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_22F1DFB54(a1, a2, v8, v2 + v6, v9, v11);
}

uint64_t MusicKitPlaylist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicKitPlaylist.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MusicKitPlaylist.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MusicKitPlaylist.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MusicKitPlaylist.songs.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_22F1E0BD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v47 = *a1;
  v5 = a1[3];
  v44 = a1[2];
  v7 = a1[5];
  v6 = a1[6];
  v8 = *a2;
  if (v6)
  {
    v45 = a1[5];
    v46 = a1[3];
    v9 = *(v6 + 16);

    if (v9)
    {
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      do
      {
        v12 = v9 - v10;
        v13 = (v6 + 48 + 296 * v10);
        while (1)
        {
          if (v10 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_31;
          }

          memcpy(__dst, v13 - 1, sizeof(__dst));
          v15 = v13[1];
          v14 = v13[2];
          v50[0] = *v13;
          v50[1] = v15;
          v50[2] = v14;
          v16 = v13[6];
          v18 = v13[3];
          v17 = v13[4];
          v50[5] = v13[5];
          v50[6] = v16;
          v50[3] = v18;
          v50[4] = v17;
          v19 = v13[10];
          v21 = v13[7];
          v20 = v13[8];
          v50[9] = v13[9];
          v51 = v19;
          v50[7] = v21;
          v50[8] = v20;
          v22 = v13[14];
          v24 = v13[11];
          v23 = v13[12];
          v54 = v13[13];
          v55 = v22;
          v52 = v24;
          v53 = v23;
          if (sub_22F1E1664(v50) != 1)
          {
            if (*(&v51 + 1))
            {
              break;
            }
          }

          v13 = (v13 + 296);
          ++v10;
          if (!--v12)
          {
            goto LABEL_17;
          }
        }

        v43 = a3;
        sub_22F18C4EC(__dst, v48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v11;
        v26 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468FC(0, *(v11 + 16) + 1, 1);
          v11 = v56;
        }

        v28 = *(v11 + 16);
        v27 = *(v11 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22F1468FC((v27 > 1), v28 + 1, 1);
          v11 = v56;
        }

        ++v10;
        *(v11 + 16) = v28 + 1;
        memcpy((v11 + 296 * v28 + 32), __dst, 0x128uLL);
        v4 = v26;
        a3 = v43;
      }

      while (v12 != 1);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

LABEL_17:

    v5 = v46;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v29 = sub_22F341C50(v8);
  if (*(v29 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
    v30 = sub_22F741DF0();
  }

  else
  {
    v30 = MEMORY[0x277D84F98];
  }

  __dst[0] = v30;
  sub_22F342C28(v29, sub_22F34303C, 0, 1, __dst);

  v31 = __dst[0];
  if (*(__dst[0] + 16) && (, v32 = sub_22F1229E8(v47, v4), v34 = v33, , (v34 & 1) != 0))
  {
    v35 = (*(v31 + 56) + 16 * v32);
    v37 = *v35;
    v36 = v35[1];

    *a3 = v37;
    a3[1] = v36;
    a3[2] = v44;
    a3[3] = v5;
    a3[4] = v11;
  }

  else
  {

    LOBYTE(v13) = sub_22F7415F0();
    if (qword_2810A8E30 != -1)
    {
LABEL_31:
      swift_once();
    }

    v39 = qword_2810A8E38;
    if (os_log_type_enabled(qword_2810A8E38, v13))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      __dst[0] = v41;
      *v40 = 136315138;

      v42 = sub_22F145F20(v47, v4, __dst);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_22F0FC000, v39, v13, "[MemoriesMusic] No identifier for playlist with id: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319033A0](v41, -1, -1);
      result = MEMORY[0x2319033A0](v40, -1, -1);
    }

    else
    {
    }

    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_22F1E1050@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v31 = a1[3];
  v6 = a1[4];
  v7 = *(v6 + 16);

  if (v7)
  {
    v9 = 0;
    v10 = v6 + 48;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = v7 - v9;
      v13 = (v10 + 296 * v9);
      while (1)
      {
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v13 - 1, sizeof(__dst));
        v15 = v13[1];
        v14 = v13[2];
        v34[0] = *v13;
        v34[1] = v15;
        v34[2] = v14;
        v16 = v13[6];
        v18 = v13[3];
        v17 = v13[4];
        v34[5] = v13[5];
        v34[6] = v16;
        v34[3] = v18;
        v34[4] = v17;
        v19 = v13[10];
        v21 = v13[7];
        v20 = v13[8];
        v34[9] = v13[9];
        v35 = v19;
        v34[7] = v21;
        v34[8] = v20;
        v22 = v13[14];
        v24 = v13[11];
        v23 = v13[12];
        v38 = v13[13];
        v39 = v22;
        v36 = v24;
        v37 = v23;
        result = sub_22F1E1664(v34);
        if (result != 1)
        {
          if (*(&v35 + 1))
          {
            break;
          }
        }

        v13 = (v13 + 296);
        ++v9;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      v30 = v5;
      v25 = v4;
      sub_22F18C4EC(__dst, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v11;
      v27 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F1468FC(0, *(v11 + 16) + 1, 1);
        v11 = v40;
      }

      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22F1468FC((v28 > 1), v29 + 1, 1);
        v11 = v40;
      }

      ++v9;
      *(v11 + 16) = v29 + 1;
      result = memcpy((v11 + 296 * v29 + 32), __dst, 0x128uLL);
      v3 = v27;
      v4 = v25;
      v5 = v30;
      v10 = v6 + 48;
    }

    while (v12 != 1);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

LABEL_15:

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v31;
  a2[4] = v11;
  return result;
}

unint64_t MusicKitPlaylist.description.getter()
{
  v1 = sub_22F740E80();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33[1] = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22F73EF50();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Song();
  v7 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v37 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  v13 = v0[4];
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_22F741B00();

  v42 = 0xD000000000000014;
  v43 = 0x800000022F7918A0;
  MEMORY[0x231900B10](v11, v12);
  MEMORY[0x231900B10](0x3D44495B202D20, 0xE700000000000000);
  MEMORY[0x231900B10](v9, v10);
  MEMORY[0x231900B10](592477, 0xE300000000000000);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v41 = MEMORY[0x277D84F90];
    sub_22F146454(0, v14, 0);
    v15 = v41;
    v16 = (v13 + 32);
    v34 = 0x800000022F7918C0;
    do
    {
      memcpy(v40, v16, sizeof(v40));
      memcpy(v39, v16, sizeof(v39));
      sub_22F18C4EC(v40, v38);
      sub_22F18C4EC(v40, v38);
      Song.init(_:)(v39);
      v17 = sub_22F73EFB0();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      sub_22F73EFA0();
      sub_22F73EF40();
      sub_22F73EF60();
      sub_22F1E15FC();
      v20 = sub_22F73EF90();
      v22 = v21;
      sub_22F740E70();
      v23 = sub_22F740E40();
      v25 = v24;
      sub_22F133BF0(v20, v22);

      if (!v25)
      {
        v23 = 0xD000000000000018;
        v25 = v34;
      }

      sub_22F18C524(v40);
      sub_22F15CBD8(v37);
      v41 = v15;
      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_22F146454((v26 > 1), v27 + 1, 1);
        v15 = v41;
      }

      *(v15 + 16) = v27 + 1;
      v28 = v15 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v16 += 296;
      --v14;
    }

    while (v14);
  }

  v40[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v29 = sub_22F740DA0();
  v31 = v30;

  MEMORY[0x231900B10](v29, v31);

  return v42;
}

unint64_t sub_22F1E15FC()
{
  result = qword_2810A99B8;
  if (!qword_2810A99B8)
  {
    type metadata accessor for Song();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A99B8);
  }

  return result;
}

uint64_t sub_22F1E1664(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F1E1688()
{
  v0 = sub_22F3D9AEC(&unk_2843D9AB8);
  result = swift_arrayDestroy();
  qword_2810B4ED8 = v0;
  return result;
}

void sub_22F1E16D4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v64 = a4;
  v60 = type metadata accessor for Song();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v60);
  v10 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - v16;
  v18 = *(a1 + 16);

  v63 = v18;
  if (!v18)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = *(v7 + 72);
  sub_22F15CAA0(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v13);
  if (!*(a2 + 16))
  {
LABEL_27:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_22F15CBD8(v13);
    return;
  }

  v61 = v7;
  v62 = a2;
  v20 = *(a2 + 32);
  sub_22F15CB04(v13, v17);
  sub_22F15CB04(v17, v10);
  v21 = *v64;
  v23 = sub_22F122A14(v10);
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_29;
  }

  v27 = v22;
  if (*(v21 + 24) >= v26)
  {
    if (a3)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22F134678();
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v28 = v64;
  sub_22F125F5C(v26, a3 & 1);
  v29 = *v28;
  v30 = sub_22F122A14(v10);
  if ((v27 & 1) == (v31 & 1))
  {
    v23 = v30;
    if ((v27 & 1) == 0)
    {
LABEL_14:
      v34 = *v64;
      *(*v64 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      sub_22F15CB04(v10, v34[6] + v23 * v19);
      *(v34[7] + 4 * v23) = v20;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_30;
      }

      v34[2] = v37;
      v38 = v62;
      v39 = v61;
      if (v63 != 1)
      {
        v40 = (v62 + 36);
        v41 = 1;
        while (v41 < *(a1 + 16))
        {
          v42 = *(v39 + 72);
          sub_22F15CAA0(a1 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + v42 * v41, v13);
          v43 = *(v38 + 16);
          if (v41 == v43)
          {
            goto LABEL_27;
          }

          if (v41 >= v43)
          {
            goto LABEL_31;
          }

          v44 = *v40;
          sub_22F15CB04(v13, v17);
          sub_22F15CB04(v17, v10);
          v45 = *v64;
          v46 = sub_22F122A14(v10);
          v48 = *(v45 + 16);
          v49 = (v47 & 1) == 0;
          v36 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v36)
          {
            goto LABEL_29;
          }

          v51 = v47;
          if (*(v45 + 24) < v50)
          {
            v52 = v64;
            sub_22F125F5C(v50, 1);
            v53 = *v52;
            v46 = sub_22F122A14(v10);
            if ((v51 & 1) != (v54 & 1))
            {
              goto LABEL_32;
            }
          }

          if (v51)
          {
            goto LABEL_11;
          }

          v55 = *v64;
          *(*v64 + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v56 = v46;
          sub_22F15CB04(v10, v55[6] + v46 * v42);
          *(v55[7] + 4 * v56) = v44;
          v57 = v55[2];
          v36 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v36)
          {
            goto LABEL_30;
          }

          ++v41;
          v55[2] = v58;
          ++v40;
          v38 = v62;
          v39 = v61;
          if (v63 == v41)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_28;
      }

LABEL_26:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

LABEL_11:
    v32 = swift_allocError();
    swift_willThrow();
    v67 = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_22F15CBD8(v10);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_22F7420C0();
  __break(1u);
LABEL_33:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
  sub_22F741C50();
  MEMORY[0x231900B10](39, 0xE100000000000000);
  sub_22F741D40();
  __break(1u);
}

void sub_22F1E1C24(void *a1, uint64_t a2, char a3, void *a4)
{
  v8 = a1[2];

  if (!v8 || !*(a2 + 16))
  {
    goto LABEL_24;
  }

  v10 = a1[4];
  v9 = a1[5];
  v45 = a1;
  v11 = *(a2 + 32);
  v12 = *a4;

  v13 = sub_22F1229E8(v10, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    sub_22F127068(v18, a3 & 1);
    v20 = *a4;
    v13 = sub_22F1229E8(v10, v9);
    if ((v19 & 1) == (v21 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = sub_22F7420C0();
    __break(1u);
  }

  if (a3)
  {
LABEL_8:
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v24 = v13;
  sub_22F1350D0();
  v13 = v24;
  if (v19)
  {
LABEL_9:
    v22 = swift_allocError();
    swift_willThrow();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_29;
  }

LABEL_12:
  v25 = *a4;
  *(*a4 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v26 = (v25[6] + 16 * v13);
  *v26 = v10;
  v26[1] = v9;
  *(v25[7] + 4 * v13) = v11;
  v27 = v25[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v17)
  {
    v25[2] = v28;
    v29 = v45[2];
    if (v29 != 1)
    {
      v19 = v45 + 7;
      v30 = (a2 + 36);
      v31 = 1;
      while (v31 < v29)
      {
        v32 = *(a2 + 16);
        if (v31 == v32)
        {
          goto LABEL_24;
        }

        if (v31 >= v32)
        {
          goto LABEL_28;
        }

        v10 = *(v19 - 1);
        v9 = *v19;
        v11 = *v30;
        v33 = *a4;

        v34 = sub_22F1229E8(v10, v9);
        v36 = v33[2];
        v37 = (v35 & 1) == 0;
        v17 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v17)
        {
          goto LABEL_25;
        }

        a3 = v35;
        if (v33[3] < v38)
        {
          sub_22F127068(v38, 1);
          v39 = *a4;
          v34 = sub_22F1229E8(v10, v9);
          if ((a3 & 1) != (v40 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a3)
        {
          goto LABEL_9;
        }

        v41 = *a4;
        *(*a4 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v42 = (v41[6] + 16 * v34);
        *v42 = v10;
        v42[1] = v9;
        *(v41[7] + 4 * v34) = v11;
        v43 = v41[2];
        v17 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v17)
        {
          goto LABEL_26;
        }

        ++v31;
        v41[2] = v44;
        v29 = v45[2];
        v19 += 2;
        ++v30;
        if (v31 == v29)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_27;
    }

LABEL_24:

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
  sub_22F741C50();
  MEMORY[0x231900B10](39, 0xE100000000000000);
  sub_22F741D40();
  __break(1u);
}

uint64_t sub_22F1E2034(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v9 = sub_22F741DF0();
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
  }

  v11 = v9;

  a5(a1, a2, 1, &v11);
  return v11;
}

uint64_t sub_22F1E2100(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22F73FC60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a2 + ((a1 + 2654435769) << 6) + ((a1 + 2654435769) >> 2) + 2654435769u) ^ (a1 + 2654435769);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = __OFSUB__(0, v9);
    v11 = -v9;
    if (!v10)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    __break(1u);
  }

LABEL_4:
  sub_22F73FC50();
  sub_22F39251C(0.75, 1.25);
  result = (*(v5 + 8))(v8, v4);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22F1E2264(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v82 = a4;
  v94 = a1;
  v8 = type metadata accessor for Song();
  v98 = *(v8 - 8);
  v9 = *(v98 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v80 - v12;
  MEMORY[0x28223BE20](v13);
  v83 = &v80 - v14;
  MEMORY[0x28223BE20](v15);
  v93 = &v80 - v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v84 = *(v19 - 8);
  v20 = *(v84 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - v21;
  if (qword_2810A9AF8 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v85 = v5;
    sub_22F1B560C("Personal Preference Ranker", 26, 2u, 0, 1, qword_2810B4E00, v97);
    v23 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword);

    v25 = sub_22F1534D0(v24);
    if (qword_2810AA3E8 != -1)
    {
      swift_once();
    }

    v26 = qword_2810B4ED8;

    v27 = sub_22F1ABBB4(v25, v26);

    v86 = *(v27 + 16);

    v28 = MEMORY[0x277D84F90];
    v92 = v22;
    sub_22F73FCF0();
    v29 = a3 + OBJC_IVAR___PGMusicCuratorContext_configuration;
    a3 = v28;
    v30 = *(v29 + 82);
    v81 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_consistentHash);
    v31 = v94 + 56;
    v32 = 1 << *(v94 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v22 = v33 & *(v94 + 56);
    v34 = (v32 + 63) >> 6;

    v5 = 0;
    v88 = v19;
    v35 = v93;
    if (v22)
    {
LABEL_11:
      while (1)
      {
        v37 = *(v98 + 72);
        a2 = v90;
        sub_22F15CAA0(*(v94 + 48) + v37 * (__clz(__rbit64(v22)) | (v5 << 6)), v90);
        sub_22F15CB04(a2, v35);
        v38 = *(v35 + 96);
        v95 = v37;
        if (v38)
        {
          break;
        }

        v49 = *(v35 + 92);
        if (v86)
        {
          v50 = a3;
          v89 = sub_22F73FD00();
          v52 = v51;
          v53 = *v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v52 = v53;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = sub_22F13DA74(0, *(v53 + 2) + 1, 1, v53);
            *v52 = v53;
          }

          v56 = *(v53 + 2);
          v55 = *(v53 + 3);
          if (v56 >= v55 >> 1)
          {
            v53 = sub_22F13DA74((v55 > 1), v56 + 1, 1, v53);
            *v52 = v53;
          }

          *(v53 + 2) = v56 + 1;
          *&v53[4 * v56 + 32] = v49;
          (v89)(v96, 0);
          v35 = v93;
          sub_22F15CAA0(v93, v87);
          a3 = v50;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22F13E558(0, v50[2] + 1, 1, v50);
          }

          v19 = v88;
          v47 = a3[2];
          v57 = a3[3];
          a2 = v47 + 1;
          if (v47 >= v57 >> 1)
          {
            a3 = sub_22F13E558(v57 > 1, v47 + 1, 1, a3);
          }

          v58 = &v100;
          goto LABEL_41;
        }

        if (v49 >= 0.0)
        {
          v89 = a3;
          v59 = sub_22F1D226C(*v35, *(v35 + 8));
          sub_22F1E2100(v81, v59);
          v61 = v60;
          v62 = sub_22F73FD00();
          v64 = v63;
          v65 = *v63;
          v66 = swift_isUniquelyReferenced_nonNull_native();
          *v64 = v65;
          v80 = v62;
          if ((v66 & 1) == 0)
          {
            v65 = sub_22F13DA74(0, *(v65 + 2) + 1, 1, v65);
            *v64 = v65;
          }

          v68 = *(v65 + 2);
          v67 = *(v65 + 3);
          if (v68 >= v67 >> 1)
          {
            v65 = sub_22F13DA74((v67 > 1), v68 + 1, 1, v65);
            *v64 = v65;
          }

          *(v65 + 2) = v68 + 1;
          *&v65[4 * v68 + 32] = v61;
          v80(v96, 0);
          v35 = v93;
          sub_22F15CAA0(v93, v83);
          a3 = v89;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22F13E558(0, a3[2] + 1, 1, a3);
          }

          v47 = a3[2];
          v69 = a3[3];
          a2 = v47 + 1;
          if (v47 >= v69 >> 1)
          {
            a3 = sub_22F13E558(v69 > 1, v47 + 1, 1, a3);
          }

          v58 = &v99;
LABEL_41:
          v48 = *(v58 - 32);
LABEL_42:
          a3[2] = a2;
          sub_22F15CB04(v48, a3 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + v47 * v95);
        }

        v22 &= v22 - 1;
        sub_22F15CBD8(v35);
        if (!v22)
        {
          goto LABEL_7;
        }
      }

      v89 = a3;
      v39 = sub_22F73FD00();
      v41 = v40;
      v42 = *v40;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      *v41 = v42;
      if ((v43 & 1) == 0)
      {
        v42 = sub_22F13DA74(0, *(v42 + 2) + 1, 1, v42);
        *v41 = v42;
      }

      v45 = *(v42 + 2);
      v44 = *(v42 + 3);
      if (v45 >= v44 >> 1)
      {
        v42 = sub_22F13DA74((v44 > 1), v45 + 1, 1, v42);
        *v41 = v42;
      }

      *(v42 + 2) = v45 + 1;
      *&v42[4 * v45 + 32] = v30;
      v39(v96, 0);
      v35 = v93;
      sub_22F15CAA0(v93, v91);
      a3 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_22F13E558(0, a3[2] + 1, 1, a3);
      }

      v19 = v88;
      v47 = a3[2];
      v46 = a3[3];
      a2 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        a3 = sub_22F13E558(v46 > 1, v47 + 1, 1, a3);
      }

      v48 = v91;
      goto LABEL_42;
    }

LABEL_7:
    v36 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      break;
    }

    __break(1u);
LABEL_55:
    swift_once();
  }

  if (v36 < v34)
  {
    v22 = *(v31 + 8 * v36);
    ++v5;
    if (v22)
    {
      v5 = v36;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v70 = v94;

  if (*(v70 + 16))
  {
    sub_22F1E2BE4();
    v71 = v92;
    sub_22F73FC40();
    v73 = v72;
    sub_22F73FC30();
    v75 = v74;
    sub_22F73FC20();
    v76 = v85;
    if (v73 < v75)
    {
      sub_22F73FC10();
    }

    v77 = sub_22F73FD10();
    v78 = sub_22F1E2034(a3, v77, &qword_27DAB0930, &qword_22F770B30, sub_22F1E16D4);

    sub_22F1B2BBC(0);
    sub_22F7416A0();
    (*(v84 + 8))(v71, v19);

    if (v76)
    {
    }
  }

  else
  {

    v78 = sub_22F14F2BC(MEMORY[0x277D84F90]);

    (*(v84 + 8))(v92, v19);
  }

  return v78;
}

unint64_t sub_22F1E2BE4()
{
  result = qword_2810A94F8;
  if (!qword_2810A94F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB23D0, &unk_22F779818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A94F8);
  }

  return result;
}

unint64_t sub_22F1E2C64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) || *(a3 + 16))
  {
    v6 = MEMORY[0x277D84F90];
    sub_22F14EE58(MEMORY[0x277D84F90]);

    sub_22F14EE58(v6);
    v7 = sub_22F1AFA40(a1, a2, a3);

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v8 = sub_22F740B90();
    __swift_project_value_buffer(v8, qword_2810B4D90);

    v9 = sub_22F740B70();
    v10 = sub_22F7415C0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      if (a1 >> 62)
      {
        v12 = sub_22F741A00();
      }

      else
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 4) = v12;

      *(v11 + 12) = 2048;
      if (v7 >> 62)
      {
        v13 = sub_22F741A00();
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 14) = v13;

      _os_log_impl(&dword_22F0FC000, v9, v10, "[Flex Filtered] Filtered %ld songs to %ld songs after removing unmatched regional songs", v11, 0x16u);
      MEMORY[0x2319033A0](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    return a1;
  }

  return v7;
}

void sub_22F1E2E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  sub_22F13A100(a1, v34);
  sub_22F1E3D20();
  if (swift_dynamicCast())
  {
    v18 = v33;
    sub_22F13A100(a2, v34);
    if (swift_dynamicCast())
    {
      v19 = v33;
      v20 = [v18 location];
      if (!v20)
      {

        return;
      }

      v21 = v20;
      v22 = [v19 location];
      if (!v22)
      {

        return;
      }

      v23 = v22;
      v24 = [v18 creationDate];
      if (v24)
      {
        v32 = v23;
        v25 = v24;
        sub_22F73F640();

        v31 = v5[4];
        v31(v17, v14, v4);
        v26 = [v19 creationDate];
        if (v26)
        {
          v27 = v26;
          sub_22F73F640();

          v31(v11, v8, v4);
          v28 = v32;
          [v21 distanceFromLocation_];
          sub_22F73F590();

          v29 = v5[1];
          v29(v11, v4);
          v29(v17, v4);
          return;
        }

        (v5[1])(v17, v4);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_22F1E319C()
{
  v96 = type metadata accessor for PublicEventTimeAndLocation();
  v95 = *(v96 - 8);
  v0 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v2 = &v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v88 - v4;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v94 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v88 - v11;
  MEMORY[0x28223BE20](v12);
  v105 = &v88 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - v15;
  MEMORY[0x28223BE20](v17);
  v107 = &v88 - v18;
  MEMORY[0x28223BE20](v19);
  v110 = &v88 - v20;
  v21 = objc_allocWithZone(MEMORY[0x277D3AC30]);
  v115 = sub_22F1E2E54;
  v116 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v112 = 1107296256;
  v113 = sub_22F386B70;
  v114 = &block_descriptor_5;
  v22 = _Block_copy(&aBlock);
  v23 = [v21 initWithDistanceBlock_];
  _Block_release(v22);

  if (!v23)
  {
    return MEMORY[0x277D84F98];
  }

  v24 = v23;
  [v24 setMaximumDistance_];
  [v24 setMinimumNumberOfObjects_];

  v103 = sub_22F1E3D20();
  v25 = sub_22F741160();
  v26 = [v24 performWithDataset:v25 progressBlock:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3D70, &qword_22F779C98);
  v27 = sub_22F741180();

  if (v27 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v29 = 0;
    v97 = v27 & 0xC000000000000001;
    v89 = v27 & 0xFFFFFFFFFFFFFF8;
    v88 = v27 + 32;
    v108 = (v7 + 32);
    v109 = (v7 + 8);
    v101 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F98];
    v102 = (v7 + 16);
    v92 = v2;
    v99 = v5;
    v2 = v107;
    v91 = v27;
    v90 = i;
    while (1)
    {
      while (1)
      {
        if (v97)
        {
          v30 = MEMORY[0x2319016F0](v29, v27);
        }

        else
        {
          if (v29 >= *(v89 + 16))
          {
            goto LABEL_51;
          }

          v30 = *(v88 + 8 * v29);
        }

        v104 = v30;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        v32 = [v104 objects];
        v33 = sub_22F741180();

        v7 = v33 >> 62 ? sub_22F741A00() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v7 >= 1)
        {
          break;
        }

        if (v29 == i)
        {
          goto LABEL_54;
        }
      }

      sub_22F73F570();
      sub_22F73F550();
      v34 = [v104 objects];
      v27 = sub_22F741180();

      v5 = v27 >> 62 ? sub_22F741A00() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
      v98 = v29;
      if (v5)
      {
        break;
      }

      v38 = 0.0;
      v39 = 0.0;
LABEL_34:

      v59 = [v104 objects];
      v60 = sub_22F741180();

      if (v60 >> 62)
      {
        v61 = sub_22F741A00();
      }

      else
      {
        v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = [v104 objects];
      v63 = sub_22F741180();

      if (v63 >> 62)
      {
        v64 = sub_22F741A00();
      }

      else
      {
        v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v65 = v39 / v61;

      v66 = *v102;
      v67 = v93;
      (*v102)(v93, v110, v6);
      v68 = v94;
      v66(v94, v107, v6);
      aBlock = 0;
      v112 = 0xE000000000000000;
      sub_22F7413B0();
      MEMORY[0x231900B10](124, 0xE100000000000000);
      sub_22F7413B0();
      MEMORY[0x231900B10](124, 0xE100000000000000);
      sub_22F1E3D6C();
      v69 = sub_22F742010();
      MEMORY[0x231900B10](v69);

      MEMORY[0x231900B10](124, 0xE100000000000000);
      v70 = sub_22F742010();
      MEMORY[0x231900B10](v70);

      v71 = v112;
      v72 = v99;
      v106 = aBlock;
      *v99 = aBlock;
      *(v72 + 1) = v71;
      v72[2] = v65;
      v72[3] = v38 / v64;
      v73 = v96;
      v66(v72 + *(v96 + 24), v67, v6);
      v66(v72 + v73[7], v68, v6);
      v74 = v73[8];

      sub_22F73F5A0();
      v75 = v72 + v73[9];
      sub_22F73F5A0();
      v76 = *v109;
      (*v109)(v68, v6);
      v76(v67, v6);
      v77 = v72;
      v78 = v92;
      sub_22F1E3DC4(v77, v92);
      v79 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_22F13ED90(0, v79[2] + 1, 1, v79);
      }

      v81 = v79[2];
      v80 = v79[3];
      if (v81 >= v80 >> 1)
      {
        v79 = sub_22F13ED90(v80 > 1, v81 + 1, 1, v79);
      }

      v79[2] = v81 + 1;
      v82 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v101 = v79;
      sub_22F1E3E28(v78, v79 + v82 + *(v95 + 72) * v81);
      v5 = v104;
      v83 = [v104 objects];
      v84 = sub_22F741180();

      v85 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v85;
      sub_22F1310A0(v84, v106, v71, isUniquelyReferenced_nonNull_native);

      v100 = aBlock;
      sub_22F1E3E8C(v99);
      v7 = v107;
      v76(v107, v6);
      v76(v110, v6);
      v2 = v7;
      v27 = v91;
      i = v90;
      v29 = v98;
      if (v98 == v90)
      {
        goto LABEL_54;
      }
    }

    if (v5 >= 1)
    {
      v36 = 0;
      v37 = v27 & 0xC000000000000001;
      v38 = 0.0;
      v39 = 0.0;
      v106 = v5;
      while (1)
      {
        if (v37)
        {
          v40 = MEMORY[0x2319016F0](v36, v27);
        }

        else
        {
          v40 = *(v27 + 8 * v36 + 32);
        }

        v41 = v40;
        v42 = [v40 v35[394]];
        if (v42)
        {
          v43 = v42;
          v44 = [v41 creationDate];
          if (v44)
          {
            v45 = v37;
            v46 = v6;
            v47 = v105;
            v48 = v44;
            sub_22F73F640();

            v49 = *v108;
            v50 = v47;
            v6 = v46;
            (*v108)(v16, v50, v46);
            [v43 coordinate];
            v52 = v51;
            [v43 coordinate];
            v54 = v53;
            if (sub_22F73F660() == 1)
            {
              v55 = v110;
              (*v109)(v110, v46);
              (*v102)(v55, v16, v46);
            }

            v39 = v39 + v52;
            v38 = v38 + v54;
            v56 = v107;
            v57 = sub_22F73F660();

            v58 = *v109;
            if (v57 == -1)
            {
              v58(v56, v6);
              v49(v56, v16, v6);
            }

            else
            {
              v58(v16, v6);
            }

            v35 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
            v37 = v45;
            v5 = v106;
            goto LABEL_21;
          }
        }

LABEL_21:
        if (v5 == ++v36)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v101 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F98];
LABEL_54:

  return v100;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F1E3D20()
{
  result = qword_2810A8EE0;
  if (!qword_2810A8EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8EE0);
  }

  return result;
}